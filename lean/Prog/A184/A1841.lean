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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A184100: One quarter the number of n X n toroidal 0..3 arrays with each element having the sum of its vertical neighbors equal to the sum of its horizontal neighbors.

The programs for A184100, there is no canonical definition to state claims against.
-/

/-! ## A184100.P14699684133375263987

`record[A184101(n+1)]`
-/

namespace A184100.P14699684133375263987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184100.P14699684133375263987

/-! ## A184100.P10374725759047183916

`A184101(∑[4*n]+1)`
-/

namespace A184100.P10374725759047183916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184101 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184100.P10374725759047183916

/-! ## A184100.P2859972351641862643

`record[ratio[A184101(A093178(n))]]`
-/

namespace A184100.P2859972351641862643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184101 (A093178 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184100.P2859972351641862643

/-! ## A184100.P13725118498216671472

`(A184101(A001844(n))^(1/2))²`
-/

namespace A184100.P13725118498216671472
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A184101 (A001844 n).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A184100.P13725118498216671472

/-!
# A184101: T(n,k) = One quarter the number of n X k toroidal 0..3 arrays with each element having the sum of its vertical neighbors equal to the sum of its horizontal neighbors.

The programs for A184101, there is no canonical definition to state claims against.
-/

/-! ## A184101.P9406513387617964171

`A318563(gcd(∑{digits}[n, #²], A022177(n)))`
-/

namespace A184101.P9406513387617964171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318563 (Int.gcd ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ) (A022177 n))

end

end A184101.P9406513387617964171

/-! ## A184101.P15879108919030563428

`A310654(A285118(n*a(n-1)))` with `a(0)=1`
-/

namespace A184101.P15879108919030563428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A310654 (A285118 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A184101.P15879108919030563428

/-! ## A184101.P14306361243907063208

`A318563(gcd(A019538(n+1), A023006(n)))`
-/

namespace A184101.P14306361243907063208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318563 (Int.gcd (A019538 (n + 1)) (A023006 n))

end

end A184101.P14306361243907063208

/-! ## A184101.P8948550981740964927

`A026567(and(A004247(n), A084297(n+1)))`
-/

namespace A184101.P8948550981740964927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026567 (Int.land (A004247 n) (A084297 (n + 1))).toNat

end

end A184101.P8948550981740964927

/-! ## A184101.P10976952023570887701

`A053698(A158790(n+1)%A255741(n+1))`
-/

namespace A184101.P10976952023570887701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (Int.tmod (A158790 (n + 1)) (A255741 (n + 1))).toNat

end

end A184101.P10976952023570887701

/-!
# A184102: n+floor(4*sqrt(n)); complement of A184103.

The programs for A184102, the canonical program `A184102.P8530137689368148133` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184102 has offset 1).

The definition of A184102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184102.P8530137689368148133

`floor((sqrt(n+1)+2)²)-4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184102

/-- `floor((sqrt(n+1)+2)²)-4` -/
def P8530137689368148133.Spec : Prop :=
  ∀ n, P8530137689368148133.a n = A184102 (n + 1)

theorem P8530137689368148133.correct : P8530137689368148133.Spec := by
  intro n
  simp only [A184102, Nat.add_sub_cancel]

end A184102

/-! ## A184102.P7735080135669930734

`Δ[a(n-1)+floor(4*sqrt(n)+n)]` with `a(0)=0`
-/

namespace A184102.P7735080135669930734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + ⌊4 * Real.sqrt (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A184102.P7735080135669930734

namespace A184102

/-- `Δ[a(n-1)+floor(4*sqrt(n)+n)]` -/
def P7735080135669930734.Spec : Prop :=
  ∀ n, P7735080135669930734.a n = A184102 (n + 1)

end A184102

/-! ## A184102.P10045589247255721397

`∑[abs(Δ[A184111(n+1)])]`
-/

namespace A184102.P10045589247255721397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184111 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184102.P10045589247255721397

namespace A184102

/-- `∑[abs(Δ[A184111(n+1)])]` -/
def P10045589247255721397.Spec : Prop :=
  ∀ n, P10045589247255721397.a n = A184102 (n + 1)

end A184102

/-! ## A184102.P14972457400732215662

`ceil(sqrt(A158057(n+1))+n)`
-/

namespace A184102.P14972457400732215662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A158057 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A184102.P14972457400732215662

namespace A184102

/-- `ceil(sqrt(A158057(n+1))+n)` -/
def P14972457400732215662.Spec : Prop :=
  ∀ n, P14972457400732215662.a n = A184102 (n + 1)

end A184102

/-! ## A184102.P15534749884789585402

`∑[A000961(Δ[A184111(n+1)])]`
-/

namespace A184102.P15534749884789585402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184111 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184102.P15534749884789585402

namespace A184102

/-- `∑[A000961(Δ[A184111(n+1)])]` -/
def P15534749884789585402.Spec : Prop :=
  ∀ n, P15534749884789585402.a n = A184102 (n + 1)

end A184102

/-! ## A184102.P13851904749335740158

`A023443(A184111(n+2))`
-/

namespace A184102.P13851904749335740158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184111 (n + 2)).toNat

end

end A184102.P13851904749335740158

namespace A184102

/-- `A023443(A184111(n+2))` -/
def P13851904749335740158.Spec : Prop :=
  ∀ n, P13851904749335740158.a n = A184102 (n + 1)

end A184102

/-! ## A184102.P14307211241855998958

`ceil(sqrt(A004768(2*n+1))+n)`
-/

namespace A184102.P14307211241855998958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004768 (2 * n + 1) : ℝ) + (n : ℝ)⌉

end

end A184102.P14307211241855998958

namespace A184102

/-- `ceil(sqrt(A004768(2*n+1))+n)` -/
def P14307211241855998958.Spec : Prop :=
  ∀ n, P14307211241855998958.a n = A184102 (n + 1)

end A184102

/-! ## A184102.P2263695097237670112

`∑[Δ[A000196(16*n)]+1]`
-/

namespace A184102.P2263695097237670112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (16 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184102.P2263695097237670112

namespace A184102

/-- `∑[Δ[A000196(16*n)]+1]` -/
def P2263695097237670112.Spec : Prop :=
  ∀ n, P2263695097237670112.a n = A184102 (n + 1)

end A184102

/-!
# A184103: a(n) = n-1+ceiling(n^2/16); complement of A184102.

The programs for A184103, the canonical program `A184103.P844193435752325120` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184103 has offset 1).

The definition of A184103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184103.P844193435752325120

`2*a(n-1)-a(n-2)+a(n-8)-2*a(n-9)+a(n-10)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=8, a(6)=10, a(7)=11, a(8)=14, a(9)=16`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184103

/-- `2*a(n-1)-a(n-2)+a(n-8)-2*a(n-9)+a(n-10)` -/
def P844193435752325120.Spec : Prop :=
  ∀ n, P844193435752325120.a n = A184103 (n + 1)

theorem P844193435752325120.correct : P844193435752325120.Spec := by
  intro n
  simp only [A184103, Nat.add_sub_cancel]

end A184103

/-! ## A184103.P6488851121537707480

`ceil(((n+1)/4)²+n)`
-/

namespace A184103.P6488851121537707480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 4) ^ 2 + (n : ℚ)⌉

end

end A184103.P6488851121537707480

namespace A184103

/-- `ceil(((n+1)/4)²+n)` -/
def P6488851121537707480.Spec : Prop :=
  ∀ n, P6488851121537707480.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P10604353274364749221

`record[ceil(((n-1)/4)²-n)]`
-/

namespace A184103.P10604353274364749221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - 1 : ℚ) / 4) ^ 2 - (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184103.P10604353274364749221

namespace A184103

/-- `record[ceil(((n-1)/4)²-n)]` -/
def P10604353274364749221.Spec : Prop :=
  ∀ n, P10604353274364749221.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P10068174085230329871

`floor(∑[∑[1/a(n-2)]])-1` with `a(0)=2, a(1)=-1`
-/

namespace A184103.P10068174085230329871
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2, -1] fun n f2 =>
  1 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - 1

end

end A184103.P10068174085230329871

namespace A184103

/-- `floor(∑[∑[1/a(n-2)]])-1` -/
def P10068174085230329871.Spec : Prop :=
  ∀ n, P10068174085230329871.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P11000567323096317363

`floor(∑[∑[a(n-2)^(-1)]])-1` with `a(0)=2, a(1)=-1`
-/

namespace A184103.P11000567323096317363
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2, -1] fun n f2 =>
  f2 (n - 2) ^ (-1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - 1

end

end A184103.P11000567323096317363

namespace A184103

/-- `floor(∑[∑[a(n-2)^(-1)]])-1` -/
def P11000567323096317363.Spec : Prop :=
  ∀ n, P11000567323096317363.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P5210897051030627614

`Δ[A175848(n)]+n`
-/

namespace A184103.P5210897051030627614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A184103.P5210897051030627614

namespace A184103

/-- `Δ[A175848(n)]+n` -/
def P5210897051030627614.Spec : Prop :=
  ∀ n, P5210897051030627614.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P6610507590470294285

`A184112(n+1)-1`
-/

namespace A184103.P6610507590470294285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184112 (n + 1) - 1

end

end A184103.P6610507590470294285

namespace A184103

/-- `A184112(n+1)-1` -/
def P6610507590470294285.Spec : Prop :=
  ∀ n, P6610507590470294285.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P8384630780742210704

`∑[A065033(A262672(n))]-1`
-/

namespace A184103.P8384630780742210704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A262672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A184103.P8384630780742210704

namespace A184103

/-- `∑[A065033(A262672(n))]-1` -/
def P8384630780742210704.Spec : Prop :=
  ∀ n, P8384630780742210704.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P12505106873587820238

`A034586(n+1)+A008726(n)-1`
-/

namespace A184103.P12505106873587820238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034586 (n + 1) + (A008726 n - 1)

end

end A184103.P12505106873587820238

namespace A184103

/-- `A034586(n+1)+A008726(n)-1` -/
def P12505106873587820238.Spec : Prop :=
  ∀ n, P12505106873587820238.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P493536535379386503

`∑[A008647(A007494(n))]+n`
-/

namespace A184103.P493536535379386503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A007494 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A184103.P493536535379386503

namespace A184103

/-- `∑[A008647(A007494(n))]+n` -/
def P493536535379386503.Spec : Prop :=
  ∀ n, P493536535379386503.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P458388385958732102

`∑[A008626(2*n)]+n`
-/

namespace A184103.P458388385958732102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008626 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A184103.P458388385958732102

namespace A184103

/-- `∑[A008626(2*n)]+n` -/
def P458388385958732102.Spec : Prop :=
  ∀ n, P458388385958732102.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P8167175829003458307

`floor((A184112(2*(n+1))+2*n+1)/4)`
-/

namespace A184103.P8167175829003458307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184112 (2 * (n + 1)) + (2 * n + 1 : ℤ) : ℚ) / 4⌋

end

end A184103.P8167175829003458307

namespace A184103

/-- `floor((A184112(2*(n+1))+2*n+1)/4)` -/
def P8167175829003458307.Spec : Prop :=
  ∀ n, P8167175829003458307.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P6191052552460080698

`A023443(A184112(n+1))`
-/

namespace A184103.P6191052552460080698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184112 (n + 1)).toNat

end

end A184103.P6191052552460080698

namespace A184103

/-- `A023443(A184112(n+1))` -/
def P6191052552460080698.Spec : Prop :=
  ∀ n, P6191052552460080698.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P1670442085197921962

`A001972(n)-A004526(A078529(n+1))`
-/

namespace A184103.P1670442085197921962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n - A004526 (A078529 (n + 1)).toNat

end

end A184103.P1670442085197921962

namespace A184103

/-- `A001972(n)-A004526(A078529(n+1))` -/
def P1670442085197921962.Spec : Prop :=
  ∀ n, P1670442085197921962.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P12255316641774269654

`A110654(A036406(n+1))+n`
-/

namespace A184103.P12255316641774269654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036406 (n + 1)).toNat + (n : ℤ)

end

end A184103.P12255316641774269654

namespace A184103

/-- `A110654(A036406(n+1))+n` -/
def P12255316641774269654.Spec : Prop :=
  ∀ n, P12255316641774269654.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P1100153331743495159

`A008624(A198442(n+1))+n`
-/

namespace A184103.P1100153331743495159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A198442 (n + 1)).toNat + (n : ℤ)

end

end A184103.P1100153331743495159

namespace A184103

/-- `A008624(A198442(n+1))+n` -/
def P1100153331743495159.Spec : Prop :=
  ∀ n, P1100153331743495159.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P327792103394196143

`A002265(A038716(2*n))+n+1`
-/

namespace A184103.P327792103394196143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A038716 (2 * n)).toNat + (n + 1 : ℤ)

end

end A184103.P327792103394196143

namespace A184103

/-- `A002265(A038716(2*n))+n+1` -/
def P327792103394196143.Spec : Prop :=
  ∀ n, P327792103394196143.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P12544014797527568979

`A008621(A038715(2*n+1))+n`
-/

namespace A184103.P12544014797527568979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A038715 (2 * n + 1)).toNat + (n : ℤ)

end

end A184103.P12544014797527568979

namespace A184103

/-- `A008621(A038715(2*n+1))+n` -/
def P12544014797527568979.Spec : Prop :=
  ∀ n, P12544014797527568979.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P15019564179770983172

`A110655(A004652(n+1))+n`
-/

namespace A184103.P15019564179770983172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A004652 (n + 1)).toNat + (n : ℤ)

end

end A184103.P15019564179770983172

namespace A184103

/-- `A110655(A004652(n+1))+n` -/
def P15019564179770983172.Spec : Prop :=
  ∀ n, P15019564179770983172.a n = A184103 (n + 1)

end A184103

/-! ## A184103.P13094668295098568440

`A110655(A008811(n+1))+n`
-/

namespace A184103.P13094668295098568440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A008811 (n + 1)).toNat + (n : ℤ)

end

end A184103.P13094668295098568440

namespace A184103

/-- `A110655(A008811(n+1))+n` -/
def P13094668295098568440.Spec : Prop :=
  ∀ n, P13094668295098568440.a n = A184103 (n + 1)

end A184103

/-!
# A184104: n+floor(5*sqrt(n)); complement of A184105.

The programs for A184104, the canonical program `A184104.P5306497180315038701` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184104 has offset 1).

The definition of A184104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184104.P5306497180315038701

`ceil(5/sqrt(acot(n+1))+n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184104

/-- `ceil(5/sqrt(acot(n+1))+n)` -/
def P5306497180315038701.Spec : Prop :=
  ∀ n, P5306497180315038701.a n = A184104 (n + 1)

theorem P5306497180315038701.correct : P5306497180315038701.Spec := by
  intro n
  simp only [A184104, Nat.add_sub_cancel]

end A184104

/-! ## A184104.P13218992816483607588

`floor(5*sqrt(n+1)+1+n)`
-/

namespace A184104.P13218992816483607588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * Real.sqrt (n + 1 : ℝ) + 1 + (n : ℝ)⌋

end

end A184104.P13218992816483607588

namespace A184104

/-- `floor(5*sqrt(n+1)+1+n)` -/
def P13218992816483607588.Spec : Prop :=
  ∀ n, P13218992816483607588.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P14482384547827305394

`floor(5/sqrt(acot(n+1)))+n+1`
-/

namespace A184104.P14482384547827305394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 / Real.sqrt (SequenceMachineLib.acot (n + 1 : ℝ))⌋ + (n + 1 : ℤ)

end

end A184104.P14482384547827305394

namespace A184104

/-- `floor(5/sqrt(acot(n+1)))+n+1` -/
def P14482384547827305394.Spec : Prop :=
  ∀ n, P14482384547827305394.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P9012121002536292387

`ceil(sqrt(A158060(n+1))+n)`
-/

namespace A184104.P9012121002536292387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A158060 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A184104.P9012121002536292387

namespace A184104

/-- `ceil(sqrt(A158060(n+1))+n)` -/
def P9012121002536292387.Spec : Prop :=
  ∀ n, P9012121002536292387.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P17547356438368358241

`comp[A184105(n+1)-1]+1`
-/

namespace A184104.P17547356438368358241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184105 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184104.P17547356438368358241

namespace A184104

/-- `comp[A184105(n+1)-1]+1` -/
def P17547356438368358241.Spec : Prop :=
  ∀ n, (P17547356438368358241.a n : ℤ) = A184104 (n + 1)

end A184104

/-! ## A184104.P2688074815976679333

`comp[A184115(n+1)-2]+1`
-/

namespace A184104.P2688074815976679333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184115 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184104.P2688074815976679333

namespace A184104

/-- `comp[A184115(n+1)-2]+1` -/
def P2688074815976679333.Spec : Prop :=
  ∀ n, (P2688074815976679333.a n : ℤ) = A184104 (n + 1)

end A184104

/-! ## A184104.P3160376338713703599

`floor(sqrt(sqrt(A157915(n+1))))+n+1`
-/

namespace A184104.P3160376338713703599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A157915 (n + 1) : ℝ))⌋ + (n + 1 : ℤ)

end

end A184104.P3160376338713703599

namespace A184104

/-- `floor(sqrt(sqrt(A157915(n+1))))+n+1` -/
def P3160376338713703599.Spec : Prop :=
  ∀ n, P3160376338713703599.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P854924034718926396

`A184114(n+2)-1`
-/

namespace A184104.P854924034718926396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184114 (n + 2) - 1

end

end A184104.P854924034718926396

namespace A184104

/-- `A184114(n+2)-1` -/
def P854924034718926396.Spec : Prop :=
  ∀ n, P854924034718926396.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P9655346871409415184

`∑[A184107(Δ[A184114(n+1)])]`
-/

namespace A184104.P9655346871409415184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184114 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184107 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184104.P9655346871409415184

namespace A184104

/-- `∑[A184107(Δ[A184114(n+1)])]` -/
def P9655346871409415184.Spec : Prop :=
  ∀ n, P9655346871409415184.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P7847311863271340764

`∑[A184160(Δ[A184114(n+1)])]`
-/

namespace A184104.P7847311863271340764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184114 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184104.P7847311863271340764

namespace A184104

/-- `∑[A184160(Δ[A184114(n+1)])]` -/
def P7847311863271340764.Spec : Prop :=
  ∀ n, P7847311863271340764.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P3860968999050448310

`A023443(A184114(n+2))`
-/

namespace A184104.P3860968999050448310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184114 (n + 2)).toNat

end

end A184104.P3860968999050448310

namespace A184104

/-- `A023443(A184114(n+2))` -/
def P3860968999050448310.Spec : Prop :=
  ∀ n, P3860968999050448310.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P12596139608179919823

`∑[Δ[A184114(n+1)]/A135517(2*n)]`
-/

namespace A184104.P12596139608179919823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184114 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A135517 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184104.P12596139608179919823

namespace A184104

/-- `∑[Δ[A184114(n+1)]/A135517(2*n)]` -/
def P12596139608179919823.Spec : Prop :=
  ∀ n, P12596139608179919823.a n = (A184104 (n + 1) : ℚ)

end A184104

/-! ## A184104.P11976587020287536538

`A202305(5*(n+1))+1+n`
-/

namespace A184104.P11976587020287536538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (5 * (n + 1)) + 1 + (n : ℤ)

end

end A184104.P11976587020287536538

namespace A184104

/-- `A202305(5*(n+1))+1+n` -/
def P11976587020287536538.Spec : Prop :=
  ∀ n, P11976587020287536538.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P14291173432363033784

`∑[A005496(Δ[A202305(5*n)])]`
-/

namespace A184104.P14291173432363033784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (5 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184104.P14291173432363033784

namespace A184104

/-- `∑[A005496(Δ[A202305(5*n)])]` -/
def P14291173432363033784.Spec : Prop :=
  ∀ n, P14291173432363033784.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P13353796108982824758

`∑[A124808(Δ[A202305(5*n)])]`
-/

namespace A184104.P13353796108982824758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (5 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124808 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184104.P13353796108982824758

namespace A184104

/-- `∑[A124808(Δ[A202305(5*n)])]` -/
def P13353796108982824758.Spec : Prop :=
  ∀ n, P13353796108982824758.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P3360926218931145997

`A202305(A008574(n+1)+n+1)+n+1`
-/

namespace A184104.P3360926218931145997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A008574 (n + 1) + (n + 1 : ℤ)).toNat + (n + 1 : ℤ)

end

end A184104.P3360926218931145997

namespace A184104

/-- `A202305(A008574(n+1)+n+1)+n+1` -/
def P3360926218931145997.Spec : Prop :=
  ∀ n, P3360926218931145997.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P15386547625251392166

`floor(sqrt(A008587(A008587(n+1))))+n+1`
-/

namespace A184104.P15386547625251392166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A008587 (A008587 (n + 1)).toNat) + (n + 1 : ℤ)

end

end A184104.P15386547625251392166

namespace A184104

/-- `floor(sqrt(A008587(A008587(n+1))))+n+1` -/
def P15386547625251392166.Spec : Prop :=
  ∀ n, P15386547625251392166.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P2566901063879866064

`∑[Δ[A000196(25*n)]+1]`
-/

namespace A184104.P2566901063879866064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (25 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184104.P2566901063879866064

namespace A184104

/-- `∑[Δ[A000196(25*n)]+1]` -/
def P2566901063879866064.Spec : Prop :=
  ∀ n, P2566901063879866064.a n = A184104 (n + 1)

end A184104

/-! ## A184104.P17145754107467870022

`A000196(25*(n+1))+1+n`
-/

namespace A184104.P17145754107467870022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (25 * (n + 1)) + 1 + (n : ℤ)

end

end A184104.P17145754107467870022

namespace A184104

/-- `A000196(25*(n+1))+1+n` -/
def P17145754107467870022.Spec : Prop :=
  ∀ n, P17145754107467870022.a n = A184104 (n + 1)

end A184104

/-!
# A184105: n-1+ceiling((n/5)^2); complement of A184104.

The programs for A184105, the canonical program `A184105.P17149026416023329419` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184105 has offset 1).

The definition of A184105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184105.P17149026416023329419

`ceil(((n+1)/5)²+n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184105

/-- `ceil(((n+1)/5)²+n)` -/
def P17149026416023329419.Spec : Prop :=
  ∀ n, P17149026416023329419.a n = A184105 (n + 1)

theorem P17149026416023329419.correct : P17149026416023329419.Spec := by
  intro n
  simp only [A184105, Nat.add_sub_cancel]

end A184105

/-! ## A184105.P1604362917365198687

`record[ceil(((n-1)/5)²-n)]`
-/

namespace A184105.P1604362917365198687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - 1 : ℚ) / 5) ^ 2 - (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184105.P1604362917365198687

namespace A184105

/-- `record[ceil(((n-1)/5)²-n)]` -/
def P1604362917365198687.Spec : Prop :=
  ∀ n, P1604362917365198687.a n = A184105 (n + 1)

end A184105

/-! ## A184105.P17889252857485645694

`round(acot(2)+((n+1)/5)²+n)`
-/

namespace A184105.P17889252857485645694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (2 : ℝ) + (((n + 1 : ℚ) / 5) ^ 2 : ℝ) + (n : ℝ))

end

end A184105.P17889252857485645694

namespace A184105

/-- `round(acot(2)+((n+1)/5)²+n)` -/
def P17889252857485645694.Spec : Prop :=
  ∀ n, P17889252857485645694.a n = A184105 (n + 1)

end A184105

/-! ## A184105.P12753929152551640575

`A184115(n+1)-1`
-/

namespace A184105.P12753929152551640575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184115 (n + 1) - 1

end

end A184105.P12753929152551640575

namespace A184105

/-- `A184115(n+1)-1` -/
def P12753929152551640575.Spec : Prop :=
  ∀ n, P12753929152551640575.a n = A184105 (n + 1)

end A184105

/-! ## A184105.P4130696666918743534

`A023443(A184115(n+1))`
-/

namespace A184105.P4130696666918743534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184115 (n + 1)).toNat

end

end A184105.P4130696666918743534

namespace A184105

/-- `A023443(A184115(n+1))` -/
def P4130696666918743534.Spec : Prop :=
  ∀ n, P4130696666918743534.a n = A184105 (n + 1)

end A184105

/-! ## A184105.P13145278789126595630

`A046667(2*A184115(n+1))`
-/

namespace A184105.P13145278789126595630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A184115 (n + 1)).toNat

end

end A184105.P13145278789126595630

namespace A184105

/-- `A046667(2*A184115(n+1))` -/
def P13145278789126595630.Spec : Prop :=
  ∀ n, P13145278789126595630.a n = A184105 (n + 1)

end A184105

/-!
# A184106: n+floor(6*sqrt(n)); complement of A184107.

The programs for A184106, the canonical program `A184106.P3792461560786630516` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184106 has offset 1).

The definition of A184106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184106.P3792461560786630516

`floor((sqrt(n+1)+3)²)-9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184106

/-- `floor((sqrt(n+1)+3)²)-9` -/
def P3792461560786630516.Spec : Prop :=
  ∀ n, P3792461560786630516.a n = A184106 (n + 1)

theorem P3792461560786630516.correct : P3792461560786630516.Spec := by
  intro n
  simp only [A184106, Nat.add_sub_cancel]

end A184106

/-! ## A184106.P9519170796727854559

`Δ[a(n-1)+floor(6*sqrt(n)+n)]` with `a(0)=1`
-/

namespace A184106.P9519170796727854559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + ⌊6 * Real.sqrt (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A184106.P9519170796727854559

namespace A184106

/-- `Δ[a(n-1)+floor(6*sqrt(n)+n)]` -/
def P9519170796727854559.Spec : Prop :=
  ∀ n, P9519170796727854559.a n = A184106 (n + 1)

end A184106

/-! ## A184106.P5199369803161923602

`ceil(sqrt(A158065(n+1))+n)`
-/

namespace A184106.P5199369803161923602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A158065 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A184106.P5199369803161923602

namespace A184106

/-- `ceil(sqrt(A158065(n+1))+n)` -/
def P5199369803161923602.Spec : Prop :=
  ∀ n, P5199369803161923602.a n = A184106 (n + 1)

end A184106

/-! ## A184106.P5885653045745413795

`eq[char[A184107(n+1)], A000007(n)]`
-/

namespace A184106.P5885653045745413795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184107 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A184106.P5885653045745413795

namespace A184106

/-- `eq[char[A184107(n+1)], A000007(n)]` -/
def P5885653045745413795.Spec : Prop :=
  ∀ n, (P5885653045745413795.a n : ℤ) = A184106 (n + 1)

end A184106

/-! ## A184106.P4238553379653233741

`floor(sqrt(A008458(A008458(n)+6))+n+1)`
-/

namespace A184106.P4238553379653233741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A008458 (A008458 n + 6).toNat : ℝ) + (n + 1 : ℝ)⌋

end

end A184106.P4238553379653233741

namespace A184106

/-- `floor(sqrt(A008458(A008458(n)+6))+n+1)` -/
def P4238553379653233741.Spec : Prop :=
  ∀ n, P4238553379653233741.a n = A184106 (n + 1)

end A184106

/-!
# A184107: n-1+ceiling((n/6)^2); complement of A184106.

The programs for A184107, the canonical program `A184107.P8490856186143552801` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184107 has offset 1).

The definition of A184107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184107.P8490856186143552801

`ceil(((n+1)/6)²+n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184107

/-- `ceil(((n+1)/6)²+n)` -/
def P8490856186143552801.Spec : Prop :=
  ∀ n, P8490856186143552801.a n = A184107 (n + 1)

theorem P8490856186143552801.correct : P8490856186143552801.Spec := by
  intro n
  simp only [A184107, Nat.add_sub_cancel]

end A184107

/-! ## A184107.P14719942899874657841

`floor((A016789(n)+∑[A008612(n)])/3)`
-/

namespace A184107.P14719942899874657841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A016789 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A184107.P14719942899874657841

namespace A184107

/-- `floor((A016789(n)+∑[A008612(n)])/3)` -/
def P14719942899874657841.Spec : Prop :=
  ∀ n, P14719942899874657841.a n = A184107 (n + 1)

end A184107

/-! ## A184107.P6013845333177228200

`A008620(A004526(n)+∑[A152467(n)])+n`
-/

namespace A184107.P6013845333177228200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A004526 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A184107.P6013845333177228200

namespace A184107

/-- `A008620(A004526(n)+∑[A152467(n)])+n` -/
def P6013845333177228200.Spec : Prop :=
  ∀ n, P6013845333177228200.a n = A184107 (n + 1)

end A184107

/-! ## A184107.P11774291647928387265

`A002264(∑[A008612(n)+3]-1)`
-/

namespace A184107.P11774291647928387265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A184107.P11774291647928387265

namespace A184107

/-- `A002264(∑[A008612(n)+3]-1)` -/
def P11774291647928387265.Spec : Prop :=
  ∀ n, P11774291647928387265.a n = A184107 (n + 1)

end A184107

/-! ## A184107.P1870625211093007463

`A002264(A016789(n)+∑[A008612(n)])`
-/

namespace A184107.P1870625211093007463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A016789 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184107.P1870625211093007463

namespace A184107

/-- `A002264(A016789(n)+∑[A008612(n)])` -/
def P1870625211093007463.Spec : Prop :=
  ∀ n, P1870625211093007463.a n = A184107 (n + 1)

end A184107

/-! ## A184107.P3817637157186028070

`A002264(A047480(n+1)+A001399(n))`
-/

namespace A184107.P3817637157186028070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A047480 (n + 1) + A001399 n).toNat

end

end A184107.P3817637157186028070

namespace A184107

/-- `A002264(A047480(n+1)+A001399(n))` -/
def P3817637157186028070.Spec : Prop :=
  ∀ n, P3817637157186028070.a n = A184107 (n + 1)

end A184107

/-! ## A184107.P10753761645834453796

`A008621(A287893(n))+n`
-/

namespace A184107.P10753761645834453796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A287893 n).toNat + (n : ℤ)

end

end A184107.P10753761645834453796

namespace A184107

/-- `A008621(A287893(n))+n` -/
def P10753761645834453796.Spec : Prop :=
  ∀ n, P10753761645834453796.a n = A184107 (n + 1)

end A184107

/-! ## A184107.P10470533159083061590

`A343609(A038715(2*n+1))+n+1`
-/

namespace A184107.P10470533159083061590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A038715 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A184107.P10470533159083061590

namespace A184107

/-- `A343609(A038715(2*n+1))+n+1` -/
def P10470533159083061590.Spec : Prop :=
  ∀ n, P10470533159083061590.a n = A184107 (n + 1)

end A184107

/-! ## A184107.P1232462972835199477

`A002265(A002264(A032765(n)))+n+1`
-/

namespace A184107.P1232462972835199477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002264 (A032765 n).toNat).toNat + (n + 1 : ℤ)

end

end A184107.P1232462972835199477

namespace A184107

/-- `A002265(A002264(A032765(n)))+n+1` -/
def P1232462972835199477.Spec : Prop :=
  ∀ n, P1232462972835199477.a n = A184107 (n + 1)

end A184107

/-!
# A184108: n + floor(3*sqrt(n-1)); complement of A184109.

The programs for A184108, the canonical program `A184108.P11727855880430995227` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184108 has offset 1).

The definition of A184108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184108.P11727855880430995227

`comp[ceil((n/3)²+n)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184108

/-- `comp[ceil((n/3)²+n)]` -/
def P11727855880430995227.Spec : Prop :=
  ∀ n, (P11727855880430995227.a n : ℤ) = A184108 (n + 1)

theorem P11727855880430995227.correct : P11727855880430995227.Spec := by
  intro n
  simp only [A184108, Nat.add_sub_cancel]

end A184108

/-! ## A184108.P8205394402538832889

`comp[A184017(n+1)]+1`
-/

namespace A184108.P8205394402538832889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184108.P8205394402538832889

namespace A184108

/-- `comp[A184017(n+1)]+1` -/
def P8205394402538832889.Spec : Prop :=
  ∀ n, (P8205394402538832889.a n : ℤ) = A184108 (n + 1)

end A184108

/-! ## A184108.P9635317504321470126

`A000027(n+1)+floor(3*sqrt(n))`
-/

namespace A184108.P9635317504321470126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ⌊3 * Real.sqrt (n : ℝ)⌋

end

end A184108.P9635317504321470126

namespace A184108

/-- `A000027(n+1)+floor(3*sqrt(n))` -/
def P9635317504321470126.Spec : Prop :=
  ∀ n, P9635317504321470126.a n = A184108 (n + 1)

end A184108

/-! ## A184108.P13882422791223621933

`A004526(comp[n+2-ceil(sqrt(36*n+1))+n])`
-/

namespace A184108.P13882422791223621933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ⌈Real.sqrt (36 * n + 1 : ℝ)⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A184108.P13882422791223621933

namespace A184108

/-- `A004526(comp[n+2-ceil(sqrt(36*n+1))+n])` -/
def P13882422791223621933.Spec : Prop :=
  ∀ n, P13882422791223621933.a n = A184108 (n + 1)

end A184108

/-! ## A184108.P4182189785887222052

`A278814(3*n)+n`
-/

namespace A184108.P4182189785887222052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (3 * n) + (n : ℤ)

end

end A184108.P4182189785887222052

namespace A184108

/-- `A278814(3*n)+n` -/
def P4182189785887222052.Spec : Prop :=
  ∀ n, P4182189785887222052.a n = A184108 (n + 1)

end A184108

/-! ## A184108.P11678487246253756620

`A202304(3*n)+1+n`
-/

namespace A184108.P11678487246253756620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (3 * n) + 1 + (n : ℤ)

end

end A184108.P11678487246253756620

namespace A184108

/-- `A202304(3*n)+1+n` -/
def P11678487246253756620.Spec : Prop :=
  ∀ n, P11678487246253756620.a n = A184108 (n + 1)

end A184108

/-! ## A184108.P16018482479369421395

`ceil(sqrt(A016777(3*n))+n)`
-/

namespace A184108.P16018482479369421395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016777 (3 * n) : ℝ) + (n : ℝ)⌉

end

end A184108.P16018482479369421395

namespace A184108

/-- `ceil(sqrt(A016777(3*n))+n)` -/
def P16018482479369421395.Spec : Prop :=
  ∀ n, P16018482479369421395.a n = A184108 (n + 1)

end A184108

/-! ## A184108.P16610767529192190976

`record[A202304(n)+A063942(n)]`
-/

namespace A184108.P16610767529192190976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 n + A063942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184108.P16610767529192190976

namespace A184108

/-- `record[A202304(n)+A063942(n)]` -/
def P16610767529192190976.Spec : Prop :=
  ∀ n, P16610767529192190976.a n = A184108 (n + 1)

end A184108

/-! ## A184108.P16257231886796069814

`record[A202304(n)+A122918(n)]`
-/

namespace A184108.P16257231886796069814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 n + A122918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184108.P16257231886796069814

namespace A184108

/-- `record[A202304(n)+A122918(n)]` -/
def P16257231886796069814.Spec : Prop :=
  ∀ n, P16257231886796069814.a n = A184108 (n + 1)

end A184108

/-! ## A184108.P9263567160522592139

`A101776(A047269(3*n+1))+n`
-/

namespace A184108.P9263567160522592139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A047269 (3 * n + 1)).toNat + (n : ℤ)

end

end A184108.P9263567160522592139

namespace A184108

/-- `A101776(A047269(3*n+1))+n` -/
def P9263567160522592139.Spec : Prop :=
  ∀ n, P9263567160522592139.a n = A184108 (n + 1)

end A184108

/-! ## A184108.P16703151549260579008

`A101776(A047273(3*n+1))+n`
-/

namespace A184108.P16703151549260579008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A047273 (3 * n + 1)).toNat + (n : ℤ)

end

end A184108.P16703151549260579008

namespace A184108

/-- `A101776(A047273(3*n+1))+n` -/
def P16703151549260579008.Spec : Prop :=
  ∀ n, P16703151549260579008.a n = A184108 (n + 1)

end A184108

/-! ## A184108.P10326094054882231669

`A101776(A047260(3*n+1))+n`
-/

namespace A184108.P10326094054882231669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A047260 (3 * n + 1)).toNat + (n : ℤ)

end

end A184108.P10326094054882231669

namespace A184108

/-- `A101776(A047260(3*n+1))+n` -/
def P10326094054882231669.Spec : Prop :=
  ∀ n, P10326094054882231669.a n = A184108 (n + 1)

end A184108

/-! ## A184108.P15063947087722315890

`A000196(9*n)+1+n`
-/

namespace A184108.P15063947087722315890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (9 * n) + 1 + (n : ℤ)

end

end A184108.P15063947087722315890

namespace A184108

/-- `A000196(9*n)+1+n` -/
def P15063947087722315890.Spec : Prop :=
  ∀ n, P15063947087722315890.a n = A184108 (n + 1)

end A184108

/-! ## A184108.P17195804267670157389

`A003059(9*n+1)+n`
-/

namespace A184108.P17195804267670157389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (9 * n + 1) + (n : ℤ)

end

end A184108.P17195804267670157389

namespace A184108

/-- `A003059(9*n+1)+n` -/
def P17195804267670157389.Spec : Prop :=
  ∀ n, P17195804267670157389.a n = A184108 (n + 1)

end A184108

/-! ## A184108.P2388676917413553114

`A000196(n/(1/3)²)+n+1`
-/

namespace A184108.P2388676917413553114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((n : ℚ) / ((1 : ℚ) / 3) ^ 2)).toNat + (n + 1 : ℤ)

end

end A184108.P2388676917413553114

namespace A184108

/-- `A000196(n/(1/3)²)+n+1` -/
def P2388676917413553114.Spec : Prop :=
  ∀ n, P2388676917413553114.a n = A184108 (n + 1)

end A184108

/-! ## A184108.P10443869054011295449

`A008619(A000267(9*n))+n`
-/

namespace A184108.P10443869054011295449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000267 (9 * n)).toNat + (n : ℤ)

end

end A184108.P10443869054011295449

namespace A184108

/-- `A008619(A000267(9*n))+n` -/
def P10443869054011295449.Spec : Prop :=
  ∀ n, P10443869054011295449.a n = A184108 (n + 1)

end A184108

/-!
# A184109: a(n) = n + ceiling(n^2/9); complement of A184108.

The programs for A184109, the canonical program `A184109.P14978417846056725597` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184109 has offset 1).

The definition of A184109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184109.P14978417846056725597

`ceil(∑[2*(n+5)]/9)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184109

/-- `ceil(∑[2*(n+5)]/9)` -/
def P14978417846056725597.Spec : Prop :=
  ∀ n, P14978417846056725597.a n = A184109 (n + 1)

theorem P14978417846056725597.correct : P14978417846056725597.Spec := by
  intro n
  simp only [A184109, Nat.add_sub_cancel]

end A184109

/-! ## A184109.P3619803186707816695

`ceil(record[((n-1)/3)²])+n+1`
-/

namespace A184109.P3619803186707816695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) / 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ + (n + 1 : ℤ)

end

end A184109.P3619803186707816695

namespace A184109

/-- `ceil(record[((n-1)/3)²])+n+1` -/
def P3619803186707816695.Spec : Prop :=
  ∀ n, P3619803186707816695.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P9133572462772584781

`record[ceil(((n-1)/3)²-(n-1))]`
-/

namespace A184109.P9133572462772584781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - 1 : ℚ) / 3) ^ 2 - ((n : ℤ) - 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184109.P9133572462772584781

namespace A184109

/-- `record[ceil(((n-1)/3)²-(n-1))]` -/
def P9133572462772584781.Spec : Prop :=
  ∀ n, P9133572462772584781.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P6746901796176339823

`A184017(n+1)+1`
-/

namespace A184109.P6746901796176339823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184017 (n + 1) + 1

end

end A184109.P6746901796176339823

namespace A184109

/-- `A184017(n+1)+1` -/
def P6746901796176339823.Spec : Prop :=
  ∀ n, P6746901796176339823.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P6448524358555475754

`A287893(n)+2+n`
-/

namespace A184109.P6448524358555475754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287893 n + 2 + (n : ℤ)

end

end A184109.P6448524358555475754

namespace A184109

/-- `A287893(n)+2+n` -/
def P6448524358555475754.Spec : Prop :=
  ∀ n, P6448524358555475754.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P8494997135241216640

`∑[Δ[A036407(n)]+1]`
-/

namespace A184109.P8494997135241216640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036407 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184109.P8494997135241216640

namespace A184109

/-- `∑[Δ[A036407(n)]+1]` -/
def P8494997135241216640.Spec : Prop :=
  ∀ n, P8494997135241216640.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P7114938999994720019

`A036407(n+1)+1+n`
-/

namespace A184109.P7114938999994720019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036407 (n + 1) + 1 + (n : ℤ)

end

end A184109.P7114938999994720019

namespace A184109

/-- `A036407(n+1)+1+n` -/
def P7114938999994720019.Spec : Prop :=
  ∀ n, P7114938999994720019.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P4096189536874491926

`ceil(A071619(n+1)/6)+n+1`
-/

namespace A184109.P4096189536874491926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071619 (n + 1) : ℚ) / 6⌉ + (n + 1 : ℤ)

end

end A184109.P4096189536874491926

namespace A184109

/-- `ceil(A071619(n+1)/6)+n+1` -/
def P4096189536874491926.Spec : Prop :=
  ∀ n, P4096189536874491926.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P6060886787138666303

`ceil((A033429(n+1)+A033429(n+1))/90)+n+1`
-/

namespace A184109.P6060886787138666303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033429 (n + 1) + A033429 (n + 1) : ℚ) / 90⌉ + (n + 1 : ℤ)

end

end A184109.P6060886787138666303

namespace A184109

/-- `ceil((A033429(n+1)+A033429(n+1))/90)+n+1` -/
def P6060886787138666303.Spec : Prop :=
  ∀ n, P6060886787138666303.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P356511584982932431

`∑[A016777(n+1)-A032793(A032793(n+2))]`
-/

namespace A184109.P356511584982932431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) - A032793 (A032793 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184109.P356511584982932431

namespace A184109

/-- `∑[A016777(n+1)-A032793(A032793(n+2))]` -/
def P356511584982932431.Spec : Prop :=
  ∀ n, P356511584982932431.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P7633878779219792233

`A184107(2*(n+1))-n`
-/

namespace A184109.P7633878779219792233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184107 (2 * (n + 1)) - (n : ℤ)

end

end A184109.P7633878779219792233

namespace A184109

/-- `A184107(2*(n+1))-n` -/
def P7633878779219792233.Spec : Prop :=
  ∀ n, P7633878779219792233.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P9440407529569218374

`∑[A002264(A171088(2*n+1))+1]`
-/

namespace A184109.P9440407529569218374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A171088 (2 * n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184109.P9440407529569218374

namespace A184109

/-- `∑[A002264(A171088(2*n+1))+1]` -/
def P9440407529569218374.Spec : Prop :=
  ∀ n, P9440407529569218374.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P13512419540264049952

`A020725(A184017(n+1))`
-/

namespace A184109.P13512419540264049952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A184017 (n + 1)).toNat

end

end A184109.P13512419540264049952

namespace A184109

/-- `A020725(A184017(n+1))` -/
def P13512419540264049952.Spec : Prop :=
  ∀ n, P13512419540264049952.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P8614612866679465185

`A004523(A089108(n+1))`
-/

namespace A184109.P8614612866679465185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A089108 (n + 1)).toNat

end

end A184109.P8614612866679465185

namespace A184109

/-- `A004523(A089108(n+1))` -/
def P8614612866679465185.Spec : Prop :=
  ∀ n, P8614612866679465185.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P2293582042816155048

`A004523(A186355(n+2))`
-/

namespace A184109.P2293582042816155048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A186355 (n + 2)).toNat

end

end A184109.P2293582042816155048

namespace A184109

/-- `A004523(A186355(n+2))` -/
def P2293582042816155048.Spec : Prop :=
  ∀ n, P2293582042816155048.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P17404945444921515750

`A004396(∑[A008620(n)]+n)+1`
-/

namespace A184109.P17404945444921515750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat + 1

end

end A184109.P17404945444921515750

namespace A184109

/-- `A004396(∑[A008620(n)]+n)+1` -/
def P17404945444921515750.Spec : Prop :=
  ∀ n, P17404945444921515750.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P12788957760878435744

`A004396(A001840(n+4)-4)+1`
-/

namespace A184109.P12788957760878435744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A001840 (n + 4) - 4).toNat + 1

end

end A184109.P12788957760878435744

namespace A184109

/-- `A004396(A001840(n+4)-4)+1` -/
def P12788957760878435744.Spec : Prop :=
  ∀ n, P12788957760878435744.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P10722964024026597194

`A004523(A001840(n+1)+n+2)`
-/

namespace A184109.P10722964024026597194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A001840 (n + 1) + (n + 2 : ℤ)).toNat

end

end A184109.P10722964024026597194

namespace A184109

/-- `A004523(A001840(n+1)+n+2)` -/
def P10722964024026597194.Spec : Prop :=
  ∀ n, P10722964024026597194.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P6376948634528443229

`A004523(A008748(n+2)+n+1)`
-/

namespace A184109.P6376948634528443229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A008748 (n + 2) + (n + 1 : ℤ)).toNat

end

end A184109.P6376948634528443229

namespace A184109

/-- `A004523(A008748(n+2)+n+1)` -/
def P6376948634528443229.Spec : Prop :=
  ∀ n, P6376948634528443229.a n = A184109 (n + 1)

end A184109

/-! ## A184109.P15273297176309391976

`A004523(A008731(2*n)+n+2)`
-/

namespace A184109.P15273297176309391976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A008731 (2 * n) + (n + 2 : ℤ)).toNat

end

end A184109.P15273297176309391976

namespace A184109

/-- `A004523(A008731(2*n)+n+2)` -/
def P15273297176309391976.Spec : Prop :=
  ∀ n, P15273297176309391976.a n = A184109 (n + 1)

end A184109

/-!
# A184110: n + floor(3*sqrt(n+1)).

The programs for A184110, the canonical program `A184110.P2716040439972428303` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184110 has offset 1).

The definition of A184110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184110.P2716040439972428303

`floor(3*sqrt(n+2)+1+n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184110

/-- `floor(3*sqrt(n+2)+1+n)` -/
def P2716040439972428303.Spec : Prop :=
  ∀ n, P2716040439972428303.a n = A184110 (n + 1)

theorem P2716040439972428303.correct : P2716040439972428303.Spec := by
  intro n
  simp only [A184110, Nat.add_sub_cancel]

end A184110

/-! ## A184110.P14991992666139488121

`A184016(n+2)-1`
-/

namespace A184110.P14991992666139488121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184016 (n + 2) - 1

end

end A184110.P14991992666139488121

namespace A184110

/-- `A184016(n+2)-1` -/
def P14991992666139488121.Spec : Prop :=
  ∀ n, P14991992666139488121.a n = A184110 (n + 1)

end A184110

/-! ## A184110.P682747666327821539

`A184108(n+3)-2`
-/

namespace A184110.P682747666327821539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184108 (n + 3) - 2

end

end A184110.P682747666327821539

namespace A184110

/-- `A184108(n+3)-2` -/
def P682747666327821539.Spec : Prop :=
  ∀ n, P682747666327821539.a n = A184110 (n + 1)

end A184110

/-! ## A184110.P6430932867546175390

`A023443(A184016(n+2))`
-/

namespace A184110.P6430932867546175390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184016 (n + 2)).toNat

end

end A184110.P6430932867546175390

namespace A184110

/-- `A023443(A184016(n+2))` -/
def P6430932867546175390.Spec : Prop :=
  ∀ n, P6430932867546175390.a n = A184110 (n + 1)

end A184110

/-! ## A184110.P6711729611279691228

`A004526(A184106(n+2)+n)`
-/

namespace A184110.P6711729611279691228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184106 (n + 2) + (n : ℤ)).toNat

end

end A184110.P6711729611279691228

namespace A184110

/-- `A004526(A184106(n+2)+n)` -/
def P6711729611279691228.Spec : Prop :=
  ∀ n, P6711729611279691228.a n = A184110 (n + 1)

end A184110

/-! ## A184110.P16100574905101452479

`A278814(3*(n+2))+n`
-/

namespace A184110.P16100574905101452479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (3 * (n + 2)) + (n : ℤ)

end

end A184110.P16100574905101452479

namespace A184110

/-- `A278814(3*(n+2))+n` -/
def P16100574905101452479.Spec : Prop :=
  ∀ n, P16100574905101452479.a n = A184110 (n + 1)

end A184110

/-! ## A184110.P5067392505543597427

`A202304(3*(n+2))+n+1`
-/

namespace A184110.P5067392505543597427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (3 * (n + 2)) + (n + 1 : ℤ)

end

end A184110.P5067392505543597427

namespace A184110

/-- `A202304(3*(n+2))+n+1` -/
def P5067392505543597427.Spec : Prop :=
  ∀ n, P5067392505543597427.a n = A184110 (n + 1)

end A184110

/-! ## A184110.P17634418737127402427

`A202304(A008585(n+2))+1+n`
-/

namespace A184110.P17634418737127402427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A008585 (n + 2)).toNat + 1 + (n : ℤ)

end

end A184110.P17634418737127402427

namespace A184110

/-- `A202304(A008585(n+2))+1+n` -/
def P17634418737127402427.Spec : Prop :=
  ∀ n, P17634418737127402427.a n = A184110 (n + 1)

end A184110

/-! ## A184110.P17303497160125495665

`A000196(9*(n+2))+n+1`
-/

namespace A184110.P17303497160125495665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (9 * (n + 2)) + (n + 1 : ℤ)

end

end A184110.P17303497160125495665

namespace A184110

/-- `A000196(9*(n+2))+n+1` -/
def P17303497160125495665.Spec : Prop :=
  ∀ n, P17303497160125495665.a n = A184110 (n + 1)

end A184110

/-! ## A184110.P9949979169590518610

`A003059(9*(n+2)+1)+n`
-/

namespace A184110.P9949979169590518610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (9 * (n + 2) + 1) + (n : ℤ)

end

end A184110.P9949979169590518610

namespace A184110

/-- `A003059(9*(n+2)+1)+n` -/
def P9949979169590518610.Spec : Prop :=
  ∀ n, P9949979169590518610.a n = A184110 (n + 1)

end A184110

/-! ## A184110.P9176986390970113910

`A000196(A008591(n+2))+1+n`
-/

namespace A184110.P9176986390970113910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008591 (n + 2)).toNat + 1 + (n : ℤ)

end

end A184110.P9176986390970113910

namespace A184110

/-- `A000196(A008591(n+2))+1+n` -/
def P9176986390970113910.Spec : Prop :=
  ∀ n, P9176986390970113910.a n = A184110 (n + 1)

end A184110

/-! ## A184110.P1311895156543528742

`A000196(A168103(n+2))+1+n`
-/

namespace A184110.P1311895156543528742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A168103 (n + 2)).toNat + 1 + (n : ℤ)

end

end A184110.P1311895156543528742

namespace A184110

/-- `A000196(A168103(n+2))+1+n` -/
def P1311895156543528742.Spec : Prop :=
  ∀ n, P1311895156543528742.a n = A184110 (n + 1)

end A184110

/-!
# A184111: a(n) = n + floor(4*sqrt(n-1)); complement of A184112.

The programs for A184111, the canonical program `A184111.P17256445191539769082` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184111 has offset 1).

The definition of A184111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184111.P17256445191539769082

`floor((sqrt(n)+2)²)-3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184111

/-- `floor((sqrt(n)+2)²)-3` -/
def P17256445191539769082.Spec : Prop :=
  ∀ n, P17256445191539769082.a n = A184111 (n + 1)

theorem P17256445191539769082.correct : P17256445191539769082.Spec := by
  intro n
  simp only [A184111, Nat.add_sub_cancel]

end A184111

/-! ## A184111.P17015554827734813316

`floor(4*sqrt(n%(n+1))+n+1)`
-/

namespace A184111.P17015554827734813316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * Real.sqrt ((n % (n + 1) : ℕ) : ℝ) + (n + 1 : ℝ)⌋

end

end A184111.P17015554827734813316

namespace A184111

/-- `floor(4*sqrt(n%(n+1))+n+1)` -/
def P17015554827734813316.Spec : Prop :=
  ∀ n, P17015554827734813316.a n = A184111 (n + 1)

end A184111

/-! ## A184111.P11400539088767400879

`ceil(sqrt(A158057(n))+n)`
-/

namespace A184111.P11400539088767400879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A158057 n : ℝ) + (n : ℝ)⌉

end

end A184111.P11400539088767400879

namespace A184111

/-- `ceil(sqrt(A158057(n))+n)` -/
def P11400539088767400879.Spec : Prop :=
  ∀ n, P11400539088767400879.a n = A184111 (n + 1)

end A184111

/-! ## A184111.P7480147189802956030

`comp[A184103(n+1)-Δ[n²]]`
-/

namespace A184111.P7480147189802956030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184103 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184111.P7480147189802956030

namespace A184111

/-- `comp[A184103(n+1)-Δ[n²]]` -/
def P7480147189802956030.Spec : Prop :=
  ∀ n, (P7480147189802956030.a n : ℤ) = A184111 (n + 1)

end A184111

/-! ## A184111.P13488449842573721805

`floor(4*sqrt(n)+n-or(-1, A000005(n+1)))`
-/

namespace A184111.P13488449842573721805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * Real.sqrt (n : ℝ) + (n : ℝ) - (Int.lor (-1) (A000005 (n + 1)) : ℝ)⌋

end

end A184111.P13488449842573721805

namespace A184111

/-- `floor(4*sqrt(n)+n-or(-1, A000005(n+1)))` -/
def P13488449842573721805.Spec : Prop :=
  ∀ n, P13488449842573721805.a n = A184111 (n + 1)

end A184111

/-! ## A184111.P6338258881627919930

`comp[A184112(n+1)-A004277(n+1)]`
-/

namespace A184111.P6338258881627919930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184112 (n + 1) - A004277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184111.P6338258881627919930

namespace A184111

/-- `comp[A184112(n+1)-A004277(n+1)]` -/
def P6338258881627919930.Spec : Prop :=
  ∀ n, (P6338258881627919930.a n : ℤ) = A184111 (n + 1)

end A184111

/-! ## A184111.P9153870430184117358

`ceil(sqrt(A017077(2*n))+n)`
-/

namespace A184111.P9153870430184117358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A017077 (2 * n) : ℝ) + (n : ℝ)⌉

end

end A184111.P9153870430184117358

namespace A184111

/-- `ceil(sqrt(A017077(2*n))+n)` -/
def P9153870430184117358.Spec : Prop :=
  ∀ n, P9153870430184117358.a n = A184111 (n + 1)

end A184111

/-! ## A184111.P3738998856540614311

`A028310(A000196(16*n)+n+1)`
-/

namespace A184111.P3738998856540614311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000196 (16 * n) + (n + 1 : ℤ)).toNat

end

end A184111.P3738998856540614311

namespace A184111

/-- `A028310(A000196(16*n)+n+1)` -/
def P3738998856540614311.Spec : Prop :=
  ∀ n, P3738998856540614311.a n = A184111 (n + 1)

end A184111

/-!
# A184112: a(n) = n + ceiling(n^2/16); complement of A184111.

The programs for A184112, the canonical program `A184112.P11403990679307809851` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184112 has offset 1).

The definition of A184112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184112.P11403990679307809851

`2*a(n-1)-a(n-2)+a(n-8)-2*a(n-9)+a(n-10)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=7, a(5)=9, a(6)=11, a(7)=12, a(8)=15, a(9)=17`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184112

/-- `2*a(n-1)-a(n-2)+a(n-8)-2*a(n-9)+a(n-10)` -/
def P11403990679307809851.Spec : Prop :=
  ∀ n, P11403990679307809851.a n = A184112 (n + 1)

theorem P11403990679307809851.correct : P11403990679307809851.Spec := by
  intro n
  simp only [A184112, Nat.add_sub_cancel]

end A184112

/-! ## A184112.P2618149026212945294

`ceil((n+1)*(n+17)/16)`
-/

namespace A184112.P2618149026212945294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * ((n + 17 : ℚ) / 16)⌉

end

end A184112.P2618149026212945294

namespace A184112

/-- `ceil((n+1)*(n+17)/16)` -/
def P2618149026212945294.Spec : Prop :=
  ∀ n, P2618149026212945294.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P9572923827013834934

`floor(∑[∑[1/a(n-2)]])` with `a(0)=2, a(1)=-1`
-/

namespace A184112.P9572923827013834934
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2, -1] fun n f2 =>
  1 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A184112.P9572923827013834934

namespace A184112

/-- `floor(∑[∑[1/a(n-2)]])` -/
def P9572923827013834934.Spec : Prop :=
  ∀ n, P9572923827013834934.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P7155392356459218634

`floor(∑[∑[a(n-2)^(-1)]])` with `a(0)=2, a(1)=-1`
-/

namespace A184112.P7155392356459218634
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2, -1] fun n f2 =>
  f2 (n - 2) ^ (-1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A184112.P7155392356459218634

namespace A184112

/-- `floor(∑[∑[a(n-2)^(-1)]])` -/
def P7155392356459218634.Spec : Prop :=
  ∀ n, P7155392356459218634.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P16421595232473832619

`record[ceil(((n-1)/4)²-(n-1))]`
-/

namespace A184112.P16421595232473832619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - 1 : ℚ) / 4) ^ 2 - ((n : ℤ) - 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184112.P16421595232473832619

namespace A184112

/-- `record[ceil(((n-1)/4)²-(n-1))]` -/
def P16421595232473832619.Spec : Prop :=
  ∀ n, P16421595232473832619.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P8200052672090166658

`ceil(((n+1)/4)²)+C(n+1, n)`
-/

namespace A184112.P8200052672090166658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 4) ^ 2⌉ + (Nat.choose (n + 1) n : ℤ)

end

end A184112.P8200052672090166658

namespace A184112

/-- `ceil(((n+1)/4)²)+C(n+1, n)` -/
def P8200052672090166658.Spec : Prop :=
  ∀ n, P8200052672090166658.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P1733825957992937435

`ceil(((n+1)/4)²)+(n+1)%(n+3)`
-/

namespace A184112.P1733825957992937435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 4) ^ 2⌉ + (((n + 1) % (n + 3) : ℕ) : ℤ)

end

end A184112.P1733825957992937435

namespace A184112

/-- `ceil(((n+1)/4)²)+(n+1)%(n+3)` -/
def P1733825957992937435.Spec : Prop :=
  ∀ n, P1733825957992937435.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P3939800664527853589

`ceil(((n+1)/4)²)+gcd(n, n+1)+n`
-/

namespace A184112.P3939800664527853589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 4) ^ 2⌉ + (Nat.gcd n (n + 1) + n : ℤ)

end

end A184112.P3939800664527853589

namespace A184112

/-- `ceil(((n+1)/4)²)+gcd(n, n+1)+n` -/
def P3939800664527853589.Spec : Prop :=
  ∀ n, P3939800664527853589.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P16765027205078572555

`A184103(n+1)+1`
-/

namespace A184112.P16765027205078572555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184103 (n + 1) + 1

end

end A184112.P16765027205078572555

namespace A184112

/-- `A184103(n+1)+1` -/
def P16765027205078572555.Spec : Prop :=
  ∀ n, P16765027205078572555.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P8397886612000396616

`Δ[A175848(n)]+1+n`
-/

namespace A184112.P8397886612000396616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A184112.P8397886612000396616

namespace A184112

/-- `Δ[A175848(n)]+1+n` -/
def P8397886612000396616.Spec : Prop :=
  ∀ n, P8397886612000396616.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P4908323019253223087

`∑[A065033(A262672(n))]`
-/

namespace A184112.P4908323019253223087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A262672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184112.P4908323019253223087

namespace A184112

/-- `∑[A065033(A262672(n))]` -/
def P4908323019253223087.Spec : Prop :=
  ∀ n, P4908323019253223087.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P1296917108327446802

`A034586(n+1)+A008726(n)`
-/

namespace A184112.P1296917108327446802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034586 (n + 1) + A008726 n

end

end A184112.P1296917108327446802

namespace A184112

/-- `A034586(n+1)+A008726(n)` -/
def P1296917108327446802.Spec : Prop :=
  ∀ n, P1296917108327446802.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P12150836316088683105

`∑[A008619(A028242(A084964(n)))]`
-/

namespace A184112.P12150836316088683105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A028242 (A084964 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184112.P12150836316088683105

namespace A184112

/-- `∑[A008619(A028242(A084964(n)))]` -/
def P12150836316088683105.Spec : Prop :=
  ∀ n, P12150836316088683105.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P5039144622073902444

`A110654(n+1)+∑[A110654(A110657(n+1))]`
-/

namespace A184112.P5039144622073902444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110657 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184112.P5039144622073902444

namespace A184112

/-- `A110654(n+1)+∑[A110654(A110657(n+1))]` -/
def P5039144622073902444.Spec : Prop :=
  ∀ n, P5039144622073902444.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P10401758094449679553

`∑[A008647(A007494(n))+1]`
-/

namespace A184112.P10401758094449679553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A007494 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184112.P10401758094449679553

namespace A184112

/-- `∑[A008647(A007494(n))+1]` -/
def P10401758094449679553.Spec : Prop :=
  ∀ n, P10401758094449679553.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P3262703110310911286

`∑[A008626(2*n)+1]`
-/

namespace A184112.P3262703110310911286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008626 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184112.P3262703110310911286

namespace A184112

/-- `∑[A008626(2*n)+1]` -/
def P3262703110310911286.Spec : Prop :=
  ∀ n, P3262703110310911286.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P14387275917270224110

`A008624(2*n)+∑[A008624(A028242(n+1))]`
-/

namespace A184112.P14387275917270224110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A028242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184112.P14387275917270224110

namespace A184112

/-- `A008624(2*n)+∑[A008624(A028242(n+1))]` -/
def P14387275917270224110.Spec : Prop :=
  ∀ n, P14387275917270224110.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P13336258916805707618

`A028310(comp[floor(4*sqrt(n))+n])+1`
-/

namespace A184112.P13336258916805707618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * Real.sqrt (n : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A184112.P13336258916805707618

namespace A184112

/-- `A028310(comp[floor(4*sqrt(n))+n])+1` -/
def P13336258916805707618.Spec : Prop :=
  ∀ n, P13336258916805707618.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P11845240927390209241

`A020725(A184103(n+1))`
-/

namespace A184112.P11845240927390209241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A184103 (n + 1)).toNat

end

end A184112.P11845240927390209241

namespace A184112

/-- `A020725(A184103(n+1))` -/
def P11845240927390209241.Spec : Prop :=
  ∀ n, P11845240927390209241.a n = A184112 (n + 1)

end A184112

/-! ## A184112.P5192197647175827963

`n+1+A110654(A036406(n+1))`
-/

namespace A184112.P5192197647175827963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A110654 (A036406 (n + 1)).toNat

end

end A184112.P5192197647175827963

namespace A184112

/-- `n+1+A110654(A036406(n+1))` -/
def P5192197647175827963.Spec : Prop :=
  ∀ n, P5192197647175827963.a n = A184112 (n + 1)

end A184112

/-!
# A184113: n + floor(4*sqrt(n+1)).

The programs for A184113, the canonical program `A184113.P8324623965267049490` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184113 has offset 1).

The definition of A184113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184113.P8324623965267049490

`floor((sqrt(n+2)+2)²)-5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184113

/-- `floor((sqrt(n+2)+2)²)-5` -/
def P8324623965267049490.Spec : Prop :=
  ∀ n, P8324623965267049490.a n = A184113 (n + 1)

theorem P8324623965267049490.correct : P8324623965267049490.Spec := by
  intro n
  simp only [A184113, Nat.add_sub_cancel]

end A184113

/-! ## A184113.P2686438271103485069

`abs(1-A184102(n+2))`
-/

namespace A184113.P2686438271103485069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A184102 (n + 2)|

end

end A184113.P2686438271103485069

namespace A184113

/-- `abs(1-A184102(n+2))` -/
def P2686438271103485069.Spec : Prop :=
  ∀ n, P2686438271103485069.a n = A184113 (n + 1)

end A184113

/-! ## A184113.P9625980896654417560

`Δ[∑[A184102(n+1)]-n]`
-/

namespace A184113.P9625980896654417560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184102 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A184113.P9625980896654417560

namespace A184113

/-- `Δ[∑[A184102(n+1)]-n]` -/
def P9625980896654417560.Spec : Prop :=
  ∀ n, P9625980896654417560.a n = A184113 (n + 1)

end A184113

/-! ## A184113.P2207342242639371650

`ceil(sqrt(A158057(n+2))+n)`
-/

namespace A184113.P2207342242639371650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A158057 (n + 2) : ℝ) + (n : ℝ)⌉

end

end A184113.P2207342242639371650

namespace A184113

/-- `ceil(sqrt(A158057(n+2))+n)` -/
def P2207342242639371650.Spec : Prop :=
  ∀ n, P2207342242639371650.a n = A184113 (n + 1)

end A184113

/-! ## A184113.P13546573833688488906

`A023443(A184102(n+2))`
-/

namespace A184113.P13546573833688488906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184102 (n + 2)).toNat

end

end A184113.P13546573833688488906

namespace A184113

/-- `A023443(A184102(n+2))` -/
def P13546573833688488906.Spec : Prop :=
  ∀ n, P13546573833688488906.a n = A184113 (n + 1)

end A184113

/-!
# A184114: n + floor(5*sqrt(n-1)); complement of A184115.

The programs for A184114, the canonical program `A184114.P5884195683975551575` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184114 has offset 1).

The definition of A184114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184114.P5884195683975551575

`floor(5*sqrt(n)+n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184114

/-- `floor(5*sqrt(n)+n+1)` -/
def P5884195683975551575.Spec : Prop :=
  ∀ n, P5884195683975551575.a n = A184114 (n + 1)

theorem P5884195683975551575.correct : P5884195683975551575.Spec := by
  intro n
  simp only [A184114, Nat.add_sub_cancel]

end A184114

/-! ## A184114.P17992995359397249946

`comp[A184105(n+1)]+1`
-/

namespace A184114.P17992995359397249946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184114.P17992995359397249946

namespace A184114

/-- `comp[A184105(n+1)]+1` -/
def P17992995359397249946.Spec : Prop :=
  ∀ n, (P17992995359397249946.a n : ℤ) = A184114 (n + 1)

end A184114

/-! ## A184114.P10010548591732605694

`comp[A184115(n+1)-1]+1`
-/

namespace A184114.P10010548591732605694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184115 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184114.P10010548591732605694

namespace A184114

/-- `comp[A184115(n+1)-1]+1` -/
def P10010548591732605694.Spec : Prop :=
  ∀ n, (P10010548591732605694.a n : ℤ) = A184114 (n + 1)

end A184114

/-! ## A184114.P18348555531789796163

`eq[0, char[ceil((n/5)²+n)]]`
-/

namespace A184114.P18348555531789796163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 5) ^ 2 + (n : ℚ)⌉

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184114.P18348555531789796163

namespace A184114

/-- `eq[0, char[ceil((n/5)²+n)]]` -/
def P18348555531789796163.Spec : Prop :=
  ∀ n, (P18348555531789796163.a n : ℤ) = A184114 (n + 1)

end A184114

/-! ## A184114.P3884831770954013891

`A202305(5*n)+1+n`
-/

namespace A184114.P3884831770954013891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (5 * n) + 1 + (n : ℤ)

end

end A184114.P3884831770954013891

namespace A184114

/-- `A202305(5*n)+1+n` -/
def P3884831770954013891.Spec : Prop :=
  ∀ n, P3884831770954013891.a n = A184114 (n + 1)

end A184114

/-! ## A184114.P11609445334719262570

`A202305(A008587(n))+n+1`
-/

namespace A184114.P11609445334719262570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A008587 n).toNat + (n + 1 : ℤ)

end

end A184114.P11609445334719262570

namespace A184114

/-- `A202305(A008587(n))+n+1` -/
def P11609445334719262570.Spec : Prop :=
  ∀ n, P11609445334719262570.a n = A184114 (n + 1)

end A184114

/-! ## A184114.P16271352152149603300

`A184104(n)+a(A108069(A161709(n)))` with `a(0)=1`
-/

namespace A184114.P16271352152149603300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184104 n + a (A108069 (A161709 n).toNat).toNat

end

end A184114.P16271352152149603300

namespace A184114

/-- `A184104(n)+a(A108069(A161709(n)))` -/
def P16271352152149603300.Spec : Prop :=
  ∀ n, P16271352152149603300.a n = A184114 (n + 1)

end A184114

/-! ## A184114.P6439475986406021213

`A000196(25*n)+1+n`
-/

namespace A184114.P6439475986406021213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (25 * n) + 1 + (n : ℤ)

end

end A184114.P6439475986406021213

namespace A184114

/-- `A000196(25*n)+1+n` -/
def P6439475986406021213.Spec : Prop :=
  ∀ n, P6439475986406021213.a n = A184114 (n + 1)

end A184114

/-!
# A184115: n + ceiling(n^2/25); complement of A184114.

The programs for A184115, the canonical program `A184115.P6544728818135109220` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184115 has offset 1).

The definition of A184115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184115.P6544728818135109220

`ceil(((n+1)/5)²+n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184115

/-- `ceil(((n+1)/5)²+n+1)` -/
def P6544728818135109220.Spec : Prop :=
  ∀ n, P6544728818135109220.a n = A184115 (n + 1)

theorem P6544728818135109220.correct : P6544728818135109220.Spec := by
  intro n
  simp only [A184115, Nat.add_sub_cancel]

end A184115

/-! ## A184115.P14933257428225391486

`record[ceil(((n-1)/5)²-(n-1))]`
-/

namespace A184115.P14933257428225391486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - 1 : ℚ) / 5) ^ 2 - ((n : ℤ) - 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184115.P14933257428225391486

namespace A184115

/-- `record[ceil(((n-1)/5)²-(n-1))]` -/
def P14933257428225391486.Spec : Prop :=
  ∀ n, P14933257428225391486.a n = A184115 (n + 1)

end A184115

/-! ## A184115.P6237832421108394492

`round(acot(2)+((n+1)/5)²+n+1)`
-/

namespace A184115.P6237832421108394492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (2 : ℝ) + (((n + 1 : ℚ) / 5) ^ 2 : ℝ) + (n + 1 : ℝ))

end

end A184115.P6237832421108394492

namespace A184115

/-- `round(acot(2)+((n+1)/5)²+n+1)` -/
def P6237832421108394492.Spec : Prop :=
  ∀ n, P6237832421108394492.a n = A184115 (n + 1)

end A184115

/-! ## A184115.P14014767845209790691

`A184105(n+1)+1`
-/

namespace A184115.P14014767845209790691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184105 (n + 1) + 1

end

end A184115.P14014767845209790691

namespace A184115

/-- `A184105(n+1)+1` -/
def P14014767845209790691.Spec : Prop :=
  ∀ n, P14014767845209790691.a n = A184115 (n + 1)

end A184115

/-! ## A184115.P16275033903757518997

`∑[A000027(Δ[ceil((n/5)²+n)])]`
-/

namespace A184115.P16275033903757518997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 5) ^ 2 + (n : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184115.P16275033903757518997

namespace A184115

/-- `∑[A000027(Δ[ceil((n/5)²+n)])]` -/
def P16275033903757518997.Spec : Prop :=
  ∀ n, P16275033903757518997.a n = A184115 (n + 1)

end A184115

/-! ## A184115.P10808992526028628857

`∑[A028310(Δ[ceil((n/5)²+n)])]`
-/

namespace A184115.P10808992526028628857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 5) ^ 2 + (n : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184115.P10808992526028628857

namespace A184115

/-- `∑[A028310(Δ[ceil((n/5)²+n)])]` -/
def P10808992526028628857.Spec : Prop :=
  ∀ n, P10808992526028628857.a n = A184115 (n + 1)

end A184115

/-! ## A184115.P12263685301796285893

`A020725(A184105(n+1))`
-/

namespace A184115.P12263685301796285893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A184105 (n + 1)).toNat

end

end A184115.P12263685301796285893

namespace A184115

/-- `A020725(A184105(n+1))` -/
def P12263685301796285893.Spec : Prop :=
  ∀ n, P12263685301796285893.a n = A184115 (n + 1)

end A184115

/-!
# A184116: a(n) = n + floor(5*sqrt(n + 1)).

The programs for A184116, the canonical program `A184116.P12625813620315209857` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184116 has offset 1).

The definition of A184116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184116.P12625813620315209857

`floor(5*sqrt(n+2)+n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184116

/-- `floor(5*sqrt(n+2)+n+1)` -/
def P12625813620315209857.Spec : Prop :=
  ∀ n, P12625813620315209857.a n = A184116 (n + 1)

theorem P12625813620315209857.correct : P12625813620315209857.Spec := by
  intro n
  simp only [A184116, Nat.add_sub_cancel]

end A184116

/-! ## A184116.P13487257720322433160

`A184104(n+2)-1`
-/

namespace A184116.P13487257720322433160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184104 (n + 2) - 1

end

end A184116.P13487257720322433160

namespace A184116

/-- `A184104(n+2)-1` -/
def P13487257720322433160.Spec : Prop :=
  ∀ n, P13487257720322433160.a n = A184116 (n + 1)

end A184116

/-! ## A184116.P3889839997750432554

`ceil(sqrt(A158060(n+2))+n)`
-/

namespace A184116.P3889839997750432554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A158060 (n + 2) : ℝ) + (n : ℝ)⌉

end

end A184116.P3889839997750432554

namespace A184116

/-- `ceil(sqrt(A158060(n+2))+n)` -/
def P3889839997750432554.Spec : Prop :=
  ∀ n, P3889839997750432554.a n = A184116 (n + 1)

end A184116

/-! ## A184116.P2165293589471263442

`A354348(A006530(n+2))+A184104(n+2)`
-/

namespace A184116.P2165293589471263442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354348 (A006530 (n + 2)).toNat + A184104 (n + 2)

end

end A184116.P2165293589471263442

namespace A184116

/-- `A354348(A006530(n+2))+A184104(n+2)` -/
def P2165293589471263442.Spec : Prop :=
  ∀ n, P2165293589471263442.a n = A184116 (n + 1)

end A184116

/-! ## A184116.P11803866379951271957

`A354348(A020639(n+2))+A184104(n+2)`
-/

namespace A184116.P11803866379951271957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354348 (A020639 (n + 2)).toNat + A184104 (n + 2)

end

end A184116.P11803866379951271957

namespace A184116

/-- `A354348(A020639(n+2))+A184104(n+2)` -/
def P11803866379951271957.Spec : Prop :=
  ∀ n, P11803866379951271957.a n = A184116 (n + 1)

end A184116

/-! ## A184116.P18089469128569484200

`A184114(n+3)-2`
-/

namespace A184116.P18089469128569484200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184114 (n + 3) - 2

end

end A184116.P18089469128569484200

namespace A184116

/-- `A184114(n+3)-2` -/
def P18089469128569484200.Spec : Prop :=
  ∀ n, P18089469128569484200.a n = A184116 (n + 1)

end A184116

/-! ## A184116.P11309130082938488086

`A023443(A184104(n+2))`
-/

namespace A184116.P11309130082938488086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184104 (n + 2)).toNat

end

end A184116.P11309130082938488086

namespace A184116

/-- `A023443(A184104(n+2))` -/
def P11309130082938488086.Spec : Prop :=
  ∀ n, P11309130082938488086.a n = A184116 (n + 1)

end A184116

/-! ## A184116.P17473609154660381910

`A202305(5*(n+2))+n+1`
-/

namespace A184116.P17473609154660381910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (5 * (n + 2)) + (n + 1 : ℤ)

end

end A184116.P17473609154660381910

namespace A184116

/-- `A202305(5*(n+2))+n+1` -/
def P17473609154660381910.Spec : Prop :=
  ∀ n, P17473609154660381910.a n = A184116 (n + 1)

end A184116

/-! ## A184116.P9139178946783059140

`A202305(A008587(n+2))+1+n`
-/

namespace A184116.P9139178946783059140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A008587 (n + 2)).toNat + 1 + (n : ℤ)

end

end A184116.P9139178946783059140

namespace A184116

/-- `A202305(A008587(n+2))+1+n` -/
def P9139178946783059140.Spec : Prop :=
  ∀ n, P9139178946783059140.a n = A184116 (n + 1)

end A184116

/-! ## A184116.P3762217303721185971

`A000196(25*(n+2))+n+1`
-/

namespace A184116.P3762217303721185971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (25 * (n + 2)) + (n + 1 : ℤ)

end

end A184116.P3762217303721185971

namespace A184116

/-- `A000196(25*(n+2))+n+1` -/
def P3762217303721185971.Spec : Prop :=
  ∀ n, P3762217303721185971.a n = A184116 (n + 1)

end A184116

/-! ## A184116.P1370600294977472416

`A000196(A008607(n+2))+1+n`
-/

namespace A184116.P1370600294977472416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008607 (n + 2)).toNat + 1 + (n : ℤ)

end

end A184116.P1370600294977472416

namespace A184116

/-- `A000196(A008607(n+2))+1+n` -/
def P1370600294977472416.Spec : Prop :=
  ∀ n, P1370600294977472416.a n = A184116 (n + 1)

end A184116

/-!
# A184117: Lower s-Wythoff sequence, where s(n) = 2n + 1.

The programs for A184117, the canonical program `A184117.P11570288483414038940` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184117 has offset 1).

The definition of A184117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184117.P14936135100859405176

`floor(2*sqrt(∑[n+1]))-1`
-/

namespace A184117.P14936135100859405176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋ - 1

end

end A184117.P14936135100859405176

namespace A184117

/-- `floor(2*sqrt(∑[n+1]))-1` -/
def P14936135100859405176.Spec : Prop :=
  ∀ n, P14936135100859405176.a n = A184117 (n + 1)

end A184117

/-! ## A184117.P14555669525612878192

`comp[floor(2*sqrt(∑[n%(n+1)]))+2*n]`
-/

namespace A184117.P14555669525612878192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)⌋ + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184117.P14555669525612878192

namespace A184117

/-- `comp[floor(2*sqrt(∑[n%(n+1)]))+2*n]` -/
def P14555669525612878192.Spec : Prop :=
  ∀ n, (P14555669525612878192.a n : ℤ) = A184117 (n + 1)

end A184117

/-! ## A184117.P953361426452667523

`comp[A001954(n)-1]`
-/

namespace A184117.P953361426452667523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184117.P953361426452667523

namespace A184117

/-- `comp[A001954(n)-1]` -/
def P953361426452667523.Spec : Prop :=
  ∀ n, (P953361426452667523.a n : ℤ) = A184117 (n + 1)

end A184117

/-! ## A184117.P1069408985093235793

`comp[comp[A001953(n)]-1]`
-/

namespace A184117.P1069408985093235793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184117.P1069408985093235793

namespace A184117

/-- `comp[comp[A001953(n)]-1]` -/
def P1069408985093235793.Spec : Prop :=
  ∀ n, (P1069408985093235793.a n : ℤ) = A184117 (n + 1)

end A184117

/-! ## A184117.P10607425602375904775

`comp[A184119(n+1)-2]`
-/

namespace A184117.P10607425602375904775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184117.P10607425602375904775

namespace A184117

/-- `comp[A184119(n+1)-2]` -/
def P10607425602375904775.Spec : Prop :=
  ∀ n, (P10607425602375904775.a n : ℤ) = A184117 (n + 1)

end A184117

/-! ## A184117.P8914990574164959910

`comp[A003152(2*n+1)-1]`
-/

namespace A184117.P8914990574164959910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184117.P8914990574164959910

namespace A184117

/-- `comp[A003152(2*n+1)-1]` -/
def P8914990574164959910.Spec : Prop :=
  ∀ n, (P8914990574164959910.a n : ℤ) = A184117 (n + 1)

end A184117

/-! ## A184117.P363555805873337017

`comp[(n+1)*A320926(n+1)]`
-/

namespace A184117.P363555805873337017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184117.P363555805873337017

namespace A184117

/-- `comp[(n+1)*A320926(n+1)]` -/
def P363555805873337017.Spec : Prop :=
  ∀ n, (P363555805873337017.a n : ℤ) = A184117 (n + 1)

end A184117

/-! ## A184117.P16969658478803355185

`abs(2-ceil(sqrt(A046092(n+1)+1)))`
-/

namespace A184117.P16969658478803355185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ⌈Real.sqrt (A046092 (n + 1) + 1 : ℝ)⌉|

end

end A184117.P16969658478803355185

namespace A184117

/-- `abs(2-ceil(sqrt(A046092(n+1)+1)))` -/
def P16969658478803355185.Spec : Prop :=
  ∀ n, P16969658478803355185.a n = A184117 (n + 1)

end A184117

/-! ## A184117.P8554911134303782769

`comp[A001953(A001953(n)+n)]`
-/

namespace A184117.P8554911134303782769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (A001953 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184117.P8554911134303782769

namespace A184117

/-- `comp[A001953(A001953(n)+n)]` -/
def P8554911134303782769.Spec : Prop :=
  ∀ n, (P8554911134303782769.a n : ℤ) = A184117 (n + 1)

end A184117

/-! ## A184117.P11570288483414038940

`A184118(n+1)%A144396(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A184117

/-- `A184118(n+1)%A144396(n+1)` -/
def P11570288483414038940.Spec : Prop :=
  ∀ n, P11570288483414038940.a n = A184117 (n + 1)

theorem P11570288483414038940.correct : P11570288483414038940.Spec := by
  intro n
  simp only [A184117, Nat.add_sub_cancel]

end A184117

/-! ## A184117.P16588047019877804457

`∪[A184922(n+1), A286666(n+1)]`
-/

namespace A184117.P16588047019877804457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184117.P16588047019877804457

namespace A184117

/-- `∪[A184922(n+1), A286666(n+1)]` -/
def P16588047019877804457.Spec : Prop :=
  ∀ n, (P16588047019877804457.a n : ℤ) = A184117 (n + 1)

end A184117

/-! ## A184117.P13096584420565879890

`∪[A190764(n+1), A286666(n+1)]`
-/

namespace A184117.P13096584420565879890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184117.P13096584420565879890

namespace A184117

/-- `∪[A190764(n+1), A286666(n+1)]` -/
def P13096584420565879890.Spec : Prop :=
  ∀ n, (P13096584420565879890.a n : ℤ) = A184117 (n + 1)

end A184117

/-! ## A184117.P15672235631367688965

`eq[A080764(n), A159684(n)]`
-/

namespace A184117.P15672235631367688965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184117.P15672235631367688965

namespace A184117

/-- `eq[A080764(n), A159684(n)]` -/
def P15672235631367688965.Spec : Prop :=
  ∀ n, (P15672235631367688965.a n : ℤ) = A184117 (n + 1)

end A184117

/-! ## A184117.P3561425640503595939

`A005206(A022342(A088462(n+1)+n+1))`
-/

namespace A184117.P3561425640503595939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A022342 (A088462 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A184117.P3561425640503595939

namespace A184117

/-- `A005206(A022342(A088462(n+1)+n+1))` -/
def P3561425640503595939.Spec : Prop :=
  ∀ n, P3561425640503595939.a n = A184117 (n + 1)

end A184117

/-! ## A184117.P1308558892824971719

`A023443(A001953(n+1))`
-/

namespace A184117.P1308558892824971719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001953 (n + 1)).toNat

end

end A184117.P1308558892824971719

namespace A184117

/-- `A023443(A001953(n+1))` -/
def P1308558892824971719.Spec : Prop :=
  ∀ n, P1308558892824971719.a n = A184117 (n + 1)

end A184117

/-! ## A184117.P7230945632200264809

`lt[1, Δ[A026252(A026249(n+1))²]]`
-/

namespace A184117.P7230945632200264809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (A026249 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184117.P7230945632200264809

namespace A184117

/-- `lt[1, Δ[A026252(A026249(n+1))²]]` -/
def P7230945632200264809.Spec : Prop :=
  ∀ n, (P7230945632200264809.a n : ℤ) = A184117 (n + 1)

end A184117

/-!
# A184118: Upper s(n)-Wythoff sequence, where s(n) = 2n + 1.

The programs for A184118, the canonical program `A184118.P8522173854330713538` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184118 has offset 1).

The definition of A184118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184118.P4723678429723659830

`floor(2*(sqrt(∑[n+1])+n+1))`
-/

namespace A184118.P4723678429723659830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n + 1 : ℝ))⌋

end

end A184118.P4723678429723659830

namespace A184118

/-- `floor(2*(sqrt(∑[n+1])+n+1))` -/
def P4723678429723659830.Spec : Prop :=
  ∀ n, P4723678429723659830.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P8522173854330713538

`∑[abs(Δ[A001954(n)])]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184118

/-- `∑[abs(Δ[A001954(n)])]` -/
def P8522173854330713538.Spec : Prop :=
  ∀ n, P8522173854330713538.a n = A184118 (n + 1)

theorem P8522173854330713538.correct : P8522173854330713538.Spec := by
  intro n
  simp only [A184118, Nat.add_sub_cancel]

end A184118

/-! ## A184118.P11589394090897714325

`A001954(n+1)-1`
-/

namespace A184118.P11589394090897714325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 (n + 1) - 1

end

end A184118.P11589394090897714325

namespace A184118

/-- `A001954(n+1)-1` -/
def P11589394090897714325.Spec : Prop :=
  ∀ n, P11589394090897714325.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P5651836731911858074

`∑[Δ[A001953(n)]+2]`
-/

namespace A184118.P5651836731911858074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184118.P5651836731911858074

namespace A184118

/-- `∑[Δ[A001953(n)]+2]` -/
def P5651836731911858074.Spec : Prop :=
  ∀ n, P5651836731911858074.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P18034684684461582204

`∑[A001030(n+1)+2]`
-/

namespace A184118.P18034684684461582204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184118.P18034684684461582204

namespace A184118

/-- `∑[A001030(n+1)+2]` -/
def P18034684684461582204.Spec : Prop :=
  ∀ n, P18034684684461582204.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P9760812171931810950

`∑[A004641(n+1)+3]`
-/

namespace A184118.P9760812171931810950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004641 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184118.P9760812171931810950

namespace A184118

/-- `∑[A004641(n+1)+3]` -/
def P9760812171931810950.Spec : Prop :=
  ∀ n, P9760812171931810950.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P5606048516767131310

`∑[4-A189687(n+1)]`
-/

namespace A184118.P5606048516767131310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A189687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184118.P5606048516767131310

namespace A184118

/-- `∑[4-A189687(n+1)]` -/
def P5606048516767131310.Spec : Prop :=
  ∀ n, P5606048516767131310.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P10776246522886491795

`∑[5-A279620(n+1)]`
-/

namespace A184118.P10776246522886491795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A279620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184118.P10776246522886491795

namespace A184118

/-- `∑[5-A279620(n+1)]` -/
def P10776246522886491795.Spec : Prop :=
  ∀ n, P10776246522886491795.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P16963354281804687669

`A001953(n+1)+2*(n+1)`
-/

namespace A184118.P16963354281804687669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (n + 1) + (2 * (n + 1) : ℤ)

end

end A184118.P16963354281804687669

namespace A184118

/-- `A001953(n+1)+2*(n+1)` -/
def P16963354281804687669.Spec : Prop :=
  ∀ n, P16963354281804687669.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P8235722973514936798

`A088462(n+1)+3*(n+1)`
-/

namespace A184118.P8235722973514936798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (n + 1) + (3 * (n + 1) : ℤ)

end

end A184118.P8235722973514936798

namespace A184118

/-- `A088462(n+1)+3*(n+1)` -/
def P8235722973514936798.Spec : Prop :=
  ∀ n, P8235722973514936798.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P7317164072890981573

`A184117(n+1)+2*n+3`
-/

namespace A184118.P7317164072890981573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184117 (n + 1) + (2 * n + 3 : ℤ)

end

end A184118.P7317164072890981573

namespace A184118

/-- `A184117(n+1)+2*n+3` -/
def P7317164072890981573.Spec : Prop :=
  ∀ n, P7317164072890981573.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P16193304848480438585

`4*(n+1)-A189688(n+1)`
-/

namespace A184118.P16193304848480438585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A189688 (n + 1)

end

end A184118.P16193304848480438585

namespace A184118

/-- `4*(n+1)-A189688(n+1)` -/
def P16193304848480438585.Spec : Prop :=
  ∀ n, P16193304848480438585.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P13218651750496238970

`A001030(n+1)+A001954(n)+1`
-/

namespace A184118.P13218651750496238970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (n + 1) + (A001954 n + 1)

end

end A184118.P13218651750496238970

namespace A184118

/-- `A001030(n+1)+A001954(n)+1` -/
def P13218651750496238970.Spec : Prop :=
  ∀ n, P13218651750496238970.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P5620634738103268900

`A184119(n+1)+A001030(n+1)`
-/

namespace A184118.P5620634738103268900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1) + A001030 (n + 1)

end

end A184118.P5620634738103268900

namespace A184118

/-- `A184119(n+1)+A001030(n+1)` -/
def P5620634738103268900.Spec : Prop :=
  ∀ n, P5620634738103268900.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P13047255592862763421

`A184119(n+2)-2`
-/

namespace A184118.P13047255592862763421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 2) - 2

end

end A184118.P13047255592862763421

namespace A184118

/-- `A184119(n+2)-2` -/
def P13047255592862763421.Spec : Prop :=
  ∀ n, P13047255592862763421.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P2681137306055992101

`A086377(n+2)+n`
-/

namespace A184118.P2681137306055992101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 2) + (n : ℤ)

end

end A184118.P2681137306055992101

namespace A184118

/-- `A086377(n+2)+n` -/
def P2681137306055992101.Spec : Prop :=
  ∀ n, P2681137306055992101.a n = A184118 (n + 1)

end A184118

/-! ## A184118.P1168455721338482244

`∑[A189572(n+2)+3]`
-/

namespace A184118.P1168455721338482244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189572 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184118.P1168455721338482244

namespace A184118

/-- `∑[A189572(n+2)+3]` -/
def P1168455721338482244.Spec : Prop :=
  ∀ n, P1168455721338482244.a n = A184118 (n + 1)

end A184118

/-!
# A184119: Upper s(n)-Wythoff sequence, where s(n) = 2n - 1; complement of A136119.

The programs for A184119, the canonical program `A184119.P9188677157218110840` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184119 has offset 1).

The definition of A184119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184119.P3422231306621572097

`floor(2*(sqrt(∑[n])+n+1))`
-/

namespace A184119.P3422231306621572097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n + 1 : ℝ))⌋

end

end A184119.P3422231306621572097

namespace A184119

/-- `floor(2*(sqrt(∑[n])+n+1))` -/
def P3422231306621572097.Spec : Prop :=
  ∀ n, P3422231306621572097.a n = A184119 (n + 1)

end A184119

/-! ## A184119.P9920124807120511352

`comp[n%2*ceil(n/sqrt(2))]`
-/

namespace A184119.P9920124807120511352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * ⌈(n : ℝ) / Real.sqrt (2 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184119.P9920124807120511352

namespace A184119

/-- `comp[n%2*ceil(n/sqrt(2))]` -/
def P9920124807120511352.Spec : Prop :=
  ∀ n, (P9920124807120511352.a n : ℤ) = A184119 (n + 1)

end A184119

/-! ## A184119.P9188677157218110840

`A001954(n)+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184119

/-- `A001954(n)+1` -/
def P9188677157218110840.Spec : Prop :=
  ∀ n, P9188677157218110840.a n = A184119 (n + 1)

theorem P9188677157218110840.correct : P9188677157218110840.Spec := by
  intro n
  simp only [A184119, Nat.add_sub_cancel]

end A184119

/-! ## A184119.P1080582644306894602

`A080652(n+1)+n`
-/

namespace A184119.P1080582644306894602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1) + (n : ℤ)

end

end A184119.P1080582644306894602

namespace A184119

/-- `A080652(n+1)+n` -/
def P1080582644306894602.Spec : Prop :=
  ∀ n, P1080582644306894602.a n = A184119 (n + 1)

end A184119

/-! ## A184119.P12314043247227071967

`A086377(n+1)+1+n`
-/

namespace A184119.P12314043247227071967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1) + 1 + (n : ℤ)

end

end A184119.P12314043247227071967

namespace A184119

/-- `A086377(n+1)+1+n` -/
def P12314043247227071967.Spec : Prop :=
  ∀ n, P12314043247227071967.a n = A184119 (n + 1)

end A184119

/-! ## A184119.P6431765958543672454

`A001953(n)+2*(n+1)`
-/

namespace A184119.P6431765958543672454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n + (2 * (n + 1) : ℤ)

end

end A184119.P6431765958543672454

namespace A184119

/-- `A001953(n)+2*(n+1)` -/
def P6431765958543672454.Spec : Prop :=
  ∀ n, P6431765958543672454.a n = A184119 (n + 1)

end A184119

/-! ## A184119.P6401862781976395425

`A136119(n+1)+Δ[n²]`
-/

namespace A184119.P6401862781976395425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A184119.P6401862781976395425

namespace A184119

/-- `A136119(n+1)+Δ[n²]` -/
def P6401862781976395425.Spec : Prop :=
  ∀ n, P6401862781976395425.a n = A184119 (n + 1)

end A184119

/-! ## A184119.P13470219147727816257

`∑[A189572(n+1)+2]+n`
-/

namespace A184119.P13470219147727816257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189572 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A184119.P13470219147727816257

namespace A184119

/-- `∑[A189572(n+1)+2]+n` -/
def P13470219147727816257.Spec : Prop :=
  ∀ n, P13470219147727816257.a n = A184119 (n + 1)

end A184119

/-! ## A184119.P13411183869004335099

`a(n-1)+A001030(n)+2` with `a(0)=2`
-/

namespace A184119.P13411183869004335099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A001030 n + 2)

end

end A184119.P13411183869004335099

namespace A184119

/-- `a(n-1)+A001030(n)+2` -/
def P13411183869004335099.Spec : Prop :=
  ∀ n, P13411183869004335099.a n = A184119 (n + 1)

end A184119

/-! ## A184119.P14584475267492785280

`A004277(n+1)+A001953(n)`
-/

namespace A184119.P14584475267492785280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + A001953 n

end

end A184119.P14584475267492785280

namespace A184119

/-- `A004277(n+1)+A001953(n)` -/
def P14584475267492785280.Spec : Prop :=
  ∀ n, P14584475267492785280.a n = A184119 (n + 1)

end A184119

/-! ## A184119.P3148042393454870833

`A189574(n+1)+A016789(n)`
-/

namespace A184119.P3148042393454870833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (n + 1) + A016789 n

end

end A184119.P3148042393454870833

namespace A184119

/-- `A189574(n+1)+A016789(n)` -/
def P3148042393454870833.Spec : Prop :=
  ∀ n, P3148042393454870833.a n = A184119 (n + 1)

end A184119

/-! ## A184119.P9155713146951689951

`A184118(n+1)-A001030(n+1)`
-/

namespace A184119.P9155713146951689951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184118 (n + 1) - A001030 (n + 1)

end

end A184119.P9155713146951689951

namespace A184119

/-- `A184118(n+1)-A001030(n+1)` -/
def P9155713146951689951.Spec : Prop :=
  ∀ n, P9155713146951689951.a n = A184119 (n + 1)

end A184119

/-! ## A184119.P9509492046525999820

`A184922(n+1)+A184922(n+1)-A341239(n+1)`
-/

namespace A184119.P9509492046525999820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) + (A184922 (n + 1) - A341239 (n + 1))

end

end A184119.P9509492046525999820

namespace A184119

/-- `A184922(n+1)+A184922(n+1)-A341239(n+1)` -/
def P9509492046525999820.Spec : Prop :=
  ∀ n, P9509492046525999820.a n = A184119 (n + 1)

end A184119

/-! ## A184119.P9515099069999464390

`A064437(n+2)-1+n`
-/

namespace A184119.P9515099069999464390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 2) - 1 + (n : ℤ)

end

end A184119.P9515099069999464390

namespace A184119

/-- `A064437(n+2)-1+n` -/
def P9515099069999464390.Spec : Prop :=
  ∀ n, P9515099069999464390.a n = A184119 (n + 1)

end A184119

/-!
# A184122: Number of nX2 0..3 arrays with rows and columns in nondecreasing order.

The programs for A184122, there is no canonical definition to state claims against.
-/

/-! ## A184122.P15750502751871201379

`A184129(∑[n+1]+2)`
-/

namespace A184122.P15750502751871201379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184122.P15750502751871201379

/-! ## A184122.P4293377090841485688

`record[A184129(A130270(n+1)+2)]`
-/

namespace A184122.P4293377090841485688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184122.P4293377090841485688

/-! ## A184122.P6176039789167991925

`record[A184129(A133263(val(n+1, 2)+1))]`
-/

namespace A184122.P6176039789167991925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184122.P6176039789167991925

/-! ## A184122.P17924837842168183966

`record[A184129(Δ[A003453(n+5)])]`
-/

namespace A184122.P17924837842168183966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184122.P17924837842168183966

/-! ## A184122.P5739473668139447390

`record[A184129(A085179(n+1)+2)]`
-/

namespace A184122.P5739473668139447390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (A085179 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184122.P5739473668139447390

/-!
# A184123: Number of n X 3 0..3 arrays with rows and columns in nondecreasing order.

The programs for A184123, there is no canonical definition to state claims against.
-/

/-! ## A184123.P2536213171576139378

`A184129(∑[n+2]+4)`
-/

namespace A184123.P2536213171576139378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184123.P2536213171576139378

/-! ## A184123.P17663933896735416712

`A184129(A167614(n+1))+A025443(n)`
-/

namespace A184123.P17663933896735416712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (A167614 (n + 1)).toNat + A025443 n

end

end A184123.P17663933896735416712

/-! ## A184123.P12029584143121506566

`A184129(A167614(n+1))+A025469(n)`
-/

namespace A184123.P12029584143121506566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (A167614 (n + 1)).toNat + A025469 n

end

end A184123.P12029584143121506566

/-! ## A184123.P12972963090619017153

`lcm(A033999(n), A184129(A167614(n+1)))`
-/

namespace A184123.P12972963090619017153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A184129 (A167614 (n + 1)).toNat)

end

end A184123.P12972963090619017153

/-! ## A184123.P6041046545247362554

`A184129(A167614(n+1))%A251500(n+1)`
-/

namespace A184123.P6041046545247362554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184129 (A167614 (n + 1)).toNat) (A251500 (n + 1))

end

end A184123.P6041046545247362554

/-!
# A184124: Number of nX4 0..3 arrays with rows and columns in nondecreasing order.

The programs for A184124, there is no canonical definition to state claims against.
-/

/-! ## A184124.P12056539061477704540

`A184129(A052905(n)+9)`
-/

namespace A184124.P12056539061477704540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (A052905 n + 9).toNat

end

end A184124.P12056539061477704540

/-! ## A184124.P8915823693221659357

`A184129(A055999(n)+10)`
-/

namespace A184124.P8915823693221659357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (A055999 n + 10).toNat

end

end A184124.P8915823693221659357

/-! ## A184124.P5663315947716631217

`A184129(A167614(n+2)+1)`
-/

namespace A184124.P5663315947716631217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (A167614 (n + 2) + 1).toNat

end

end A184124.P5663315947716631217

/-! ## A184124.P10260909219406046881

`A184129(A000124(n+3)+3)`
-/

namespace A184124.P10260909219406046881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (A000124 (n + 3) + 3).toNat

end

end A184124.P10260909219406046881

/-! ## A184124.P2654389936145067038

`A184129(Δ[A023545(n+1)-n²])`
-/

namespace A184124.P2654389936145067038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (f1 (n + 1) - f1 n).toNat

end

end A184124.P2654389936145067038

/-!
# A184125: Number of nX5 0..3 arrays with rows and columns in nondecreasing order.

The programs for A184125, there is no canonical definition to state claims against.
-/

/-! ## A184125.P15219405040867571507

`A184129(A374005(n+1))`
-/

namespace A184125.P15219405040867571507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (A374005 (n + 1)).toNat

end

end A184125.P15219405040867571507

/-! ## A184125.P1006188801676604063

`A184129(Δ[A023545(n+1)])`
-/

namespace A184125.P1006188801676604063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (f1 (n + 1) - f1 n).toNat

end

end A184125.P1006188801676604063

/-!
# A184126: Number of nX6 0..3 arrays with rows and columns in nondecreasing order.

The programs for A184126, there is no canonical definition to state claims against.
-/

/-! ## A184126.P1148235482242044498

`A184129(A374007(n+1))`
-/

namespace A184126.P1148235482242044498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (A374007 (n + 1)).toNat

end

end A184126.P1148235482242044498

/-! ## A184126.P2142752800687945771

`A184129(Δ[Δ[A006504(n+1)]])`
-/

namespace A184126.P2142752800687945771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (f1 (n + 1) - f1 n).toNat

end

end A184126.P2142752800687945771

/-! ## A184126.P16092598604972713491

`A184129(Δ[A023545(n+2)]-1)`
-/

namespace A184126.P16092598604972713491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (f1 (n + 1) - f1 n - 1).toNat

end

end A184126.P16092598604972713491

/-!
# A184127: 

The programs for A184127, there is no canonical definition to state claims against.
-/

/-! ## A184127.P2132339253734326842

`A184129(A167499(n+5)+2)`
-/

namespace A184127.P2132339253734326842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (A167499 (n + 5) + 2).toNat

end

end A184127.P2132339253734326842

/-! ## A184127.P13968691859813389108

`A184129(eq[10, A185782(n+1)])`
-/

namespace A184127.P13968691859813389108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184127.P13968691859813389108

/-!
# A184130: Number of n X 2 0..2 arrays with rows and columns in nondecreasing order.

The programs for A184130, there is no canonical definition to state claims against.
-/

/-! ## A184130.P5611196504963232326

`A184137(∑[n+1]+2)`
-/

namespace A184130.P5611196504963232326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184130.P5611196504963232326

/-! ## A184130.P12064125306164718154

`record[A184137(Δ[A003453(n+5)])]`
-/

namespace A184130.P12064125306164718154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184130.P12064125306164718154

/-! ## A184130.P7964688503687981571

`A184137(A000096(n+1))%A254183(n+1)`
-/

namespace A184130.P7964688503687981571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184137 (A000096 (n + 1)).toNat) (A254183 (n + 1))

end

end A184130.P7964688503687981571

/-! ## A184130.P14240381102515295555

`A006519(2*n+1)*A184137(A000096(n+1))`
-/

namespace A184130.P14240381102515295555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A184137 (A000096 (n + 1)).toNat

end

end A184130.P14240381102515295555

/-! ## A184130.P10603105223893387243

`record[A184137(A129502(n+1)+2)]`
-/

namespace A184130.P10603105223893387243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A129502 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184130.P10603105223893387243

/-!
# A184131: Number of nX3 0..2 arrays with rows and columns in nondecreasing order.

The programs for A184131, there is no canonical definition to state claims against.
-/

/-! ## A184131.P10710668220109349346

`A184137(∑[n+2]+4)`
-/

namespace A184131.P10710668220109349346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184131.P10710668220109349346

/-! ## A184131.P11057138496194061809

`A264668(n)+A184137(A167614(n+1))`
-/

namespace A184131.P11057138496194061809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A184137 (A167614 (n + 1)).toNat

end

end A184131.P11057138496194061809

/-! ## A184131.P12777681397198779266

`lcm(A033999(n), A184137(A167614(n+1)))`
-/

namespace A184131.P12777681397198779266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A184137 (A167614 (n + 1)).toNat)

end

end A184131.P12777681397198779266

/-! ## A184131.P7598253384220874576

`or(A000038(n), A184137(A167614(n+1)))`
-/

namespace A184131.P7598253384220874576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A184137 (A167614 (n + 1)).toNat)

end

end A184131.P7598253384220874576

/-! ## A184131.P3759394257988098825

`A184137(A167614(n+1))%A232278(n+1)`
-/

namespace A184131.P3759394257988098825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184137 (A167614 (n + 1)).toNat) (A232278 (n + 1))

end

end A184131.P3759394257988098825

/-!
# A184132: Number of nX4 0..2 arrays with rows and columns in nondecreasing order.

The programs for A184132, there is no canonical definition to state claims against.
-/

/-! ## A184132.P17270322908190866197

`A184137(A374004(n+1))`
-/

namespace A184132.P17270322908190866197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A374004 (n + 1)).toNat

end

end A184132.P17270322908190866197

/-! ## A184132.P9179894194207086188

`A184137(A141214(n)+7)`
-/

namespace A184132.P9179894194207086188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A141214 n + 7).toNat

end

end A184132.P9179894194207086188

/-! ## A184132.P10249194207974716817

`A184137(A052905(n)+9)`
-/

namespace A184132.P10249194207974716817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A052905 n + 9).toNat

end

end A184132.P10249194207974716817

/-! ## A184132.P7739333017035589758

`A184137(A167614(n+2)+1)`
-/

namespace A184132.P7739333017035589758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A167614 (n + 2) + 1).toNat

end

end A184132.P7739333017035589758

/-! ## A184132.P12801158460839522118

`A184137(A000217(n+3)+4)`
-/

namespace A184132.P12801158460839522118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A000217 (n + 3) + 4).toNat

end

end A184132.P12801158460839522118

/-!
# A184133: Number of nX5 0..2 arrays with rows and columns in nondecreasing order.

The programs for A184133, there is no canonical definition to state claims against.
-/

/-! ## A184133.P5312647680913494672

`A184137(A374005(n+1))`
-/

namespace A184133.P5312647680913494672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A374005 (n + 1)).toNat

end

end A184133.P5312647680913494672

/-! ## A184133.P17292072304201835455

`A184137(A167499(n+3))`
-/

namespace A184133.P17292072304201835455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A167499 (n + 3)).toNat

end

end A184133.P17292072304201835455

/-! ## A184133.P544927909976599502

`A184137(A056000(n)+15)`
-/

namespace A184133.P544927909976599502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A056000 n + 15).toNat

end

end A184133.P544927909976599502

/-! ## A184133.P10540318185364715329

`A184137(A051936(n+4)+14)`
-/

namespace A184133.P10540318185364715329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A051936 (n + 4) + 14).toNat

end

end A184133.P10540318185364715329

/-! ## A184133.P8522320281547258160

`A184137(eq[6, A131818(n+1)])`
-/

namespace A184133.P8522320281547258160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184133.P8522320281547258160

/-!
# A184134: Number of nX6 0..2 arrays with rows and columns in nondecreasing order.

The programs for A184134, there is no canonical definition to state claims against.
-/

/-! ## A184134.P2778993883139746570

`A184137(A374007(n+1))`
-/

namespace A184134.P2778993883139746570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A374007 (n + 1)).toNat

end

end A184134.P2778993883139746570

/-! ## A184134.P2734140918781147527

`A184137(eq[7, A131818(n+1)])`
-/

namespace A184134.P2734140918781147527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184134.P2734140918781147527

/-! ## A184134.P14683544236322400351

`A184137(A052905(n+3))`
-/

namespace A184134.P14683544236322400351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A052905 (n + 3)).toNat

end

end A184134.P14683544236322400351

/-! ## A184134.P13749027368878689840

`A184137(eq[3, A219347(n)])`
-/

namespace A184134.P13749027368878689840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184134.P13749027368878689840

/-! ## A184134.P17216823523993215789

`A184137(eq[5, A193592(n)])`
-/

namespace A184134.P17216823523993215789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184134.P17216823523993215789

/-!
# A184135: Number of nX7 0..2 arrays with rows and columns in nondecreasing order.

The programs for A184135, there is no canonical definition to state claims against.
-/

/-! ## A184135.P12567249323132137430

`A184137(A374008(n+1))`
-/

namespace A184135.P12567249323132137430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A374008 (n + 1)).toNat

end

end A184135.P12567249323132137430

/-! ## A184135.P12624827518779914827

`A184137(A056119(n)+28)`
-/

namespace A184135.P12624827518779914827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A056119 n + 28).toNat

end

end A184135.P12624827518779914827

/-! ## A184135.P11346557343753847462

`A184137(eq[8, A131818(n+1)])`
-/

namespace A184135.P11346557343753847462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184135.P11346557343753847462

/-! ## A184135.P6839996852931903109

`A184137(eq[4, A219347(n)])`
-/

namespace A184135.P6839996852931903109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184135.P6839996852931903109

/-! ## A184135.P5862913901416101144

`A184137(eq[6, A193592(n)])`
-/

namespace A184135.P5862913901416101144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184135.P5862913901416101144

/-!
# A184136: Number of n X 8 0..2 arrays with rows and columns in nondecreasing order.

The programs for A184136, there is no canonical definition to state claims against.
-/

/-! ## A184136.P6674292529489998712

`A184137(A374009(n+1))`
-/

namespace A184136.P6674292529489998712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (A374009 (n + 1)).toNat

end

end A184136.P6674292529489998712

/-! ## A184136.P7871062595550354287

`A184137(eq[9, A131818(n+1)])`
-/

namespace A184136.P7871062595550354287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184136.P7871062595550354287

/-! ## A184136.P16763961674314489751

`A184137(eq[5, A219347(n)])`
-/

namespace A184136.P16763961674314489751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184136.P16763961674314489751

/-! ## A184136.P5268548898923809494

`A184137(eq[7, A193592(n)])`
-/

namespace A184136.P5268548898923809494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184136.P5268548898923809494

/-!
# A184138: Number of n X 3 binary arrays with rows and columns in nondecreasing order.

The programs for A184138, the canonical program `A184138.P16659584735667142756` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184138 has offset 1).

The definition of A184138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184138.P16659584735667142756

`A145129(n+1)-∑[∑[A000124(n)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184138

/-- `A145129(n+1)-∑[∑[A000124(n)]]` -/
def P16659584735667142756.Spec : Prop :=
  ∀ n, P16659584735667142756.a n = A184138 (n + 1)

theorem P16659584735667142756.correct : P16659584735667142756.Spec := by
  intro n
  simp only [A184138, Nat.add_sub_cancel]

end A184138

/-! ## A184138.P4212553333709417473

`A000217(n+2)+A000580(n+7)-A000332(n+2)`
-/

namespace A184138.P4212553333709417473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) + (A000580 (n + 7) - A000332 (n + 2))

end

end A184138.P4212553333709417473

namespace A184138

/-- `A000217(n+2)+A000580(n+7)-A000332(n+2)` -/
def P4212553333709417473.Spec : Prop :=
  ∀ n, P4212553333709417473.a n = A184138 (n + 1)

end A184138

/-! ## A184138.P14447792733134711414

`A145129(n+1)-record[A006522(n)]`
-/

namespace A184138.P14447792733134711414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145129 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184138.P14447792733134711414

namespace A184138

/-- `A145129(n+1)-record[A006522(n)]` -/
def P14447792733134711414.Spec : Prop :=
  ∀ n, P14447792733134711414.a n = A184138 (n + 1)

end A184138

/-! ## A184138.P7921043750147845308

`A145129(n+1)-A185507(A000124(n))`
-/

namespace A184138.P7921043750147845308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145129 (n + 1) - A185507 (A000124 n).toNat

end

end A184138.P7921043750147845308

namespace A184138

/-- `A145129(n+1)-A185507(A000124(n))` -/
def P7921043750147845308.Spec : Prop :=
  ∀ n, P7921043750147845308.a n = A184138 (n + 1)

end A184138

/-! ## A184138.P4074744749984073069

`record[A145129(A004736(n+1))-A185507(n+1)]`
-/

namespace A184138.P4074744749984073069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145129 (A004736 (n + 1)).toNat - A185507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184138.P4074744749984073069

namespace A184138

/-- `record[A145129(A004736(n+1))-A185507(n+1)]` -/
def P4074744749984073069.Spec : Prop :=
  ∀ n, P4074744749984073069.a n = A184138 (n + 1)

end A184138

/-!
# A184139: Number of nX4 binary arrays with rows and columns in nondecreasing order.

The programs for A184139, there is no canonical definition to state claims against.
-/

/-! ## A184139.P16537911134418669743

`A180985(A374004(n+1))`
-/

namespace A184139.P16537911134418669743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (A374004 (n + 1)).toNat

end

end A184139.P16537911134418669743

/-! ## A184139.P11002701180127314686

`A180985(A052905(n)+9)`
-/

namespace A184139.P11002701180127314686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (A052905 n + 9).toNat

end

end A184139.P11002701180127314686

/-! ## A184139.P17080353054840430300

`A180985(A055999(n)+10)`
-/

namespace A184139.P17080353054840430300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (A055999 n + 10).toNat

end

end A184139.P17080353054840430300

/-! ## A184139.P10440118870878313947

`A180985(Δ[A008778(n)]+6)`
-/

namespace A184139.P10440118870878313947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (f1 (n + 1) - f1 n + 6).toNat

end

end A184139.P10440118870878313947

/-! ## A184139.P15234358712445704084

`A180985(A167614(n+2)+1)`
-/

namespace A184139.P15234358712445704084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (A167614 (n + 2) + 1).toNat

end

end A184139.P15234358712445704084

/-!
# A184140: Number of nX5 binary arrays with rows and columns in nondecreasing order.

The programs for A184140, there is no canonical definition to state claims against.
-/

/-! ## A184140.P10802807455698543950

`A180985(A374005(n+1))`
-/

namespace A184140.P10802807455698543950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (A374005 (n + 1)).toNat

end

end A184140.P10802807455698543950

/-! ## A184140.P2324052650305338483

`A180985(A000124(n+5)-(n+1))`
-/

namespace A184140.P2324052650305338483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A184140.P2324052650305338483

/-! ## A184140.P18262450499665731303

`A180985(eq[2, A092921(n)])`
-/

namespace A184140.P18262450499665731303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184140.P18262450499665731303

/-! ## A184140.P17073202720700775997

`A180985(eq[4, A193592(n)])`
-/

namespace A184140.P17073202720700775997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184140.P17073202720700775997

/-! ## A184140.P18126241276564687876

`A180985(eq[8, A209439(n)])`
-/

namespace A184140.P18126241276564687876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184140.P18126241276564687876

/-!
# A184141: Number of nX6 binary arrays with rows and columns in nondecreasing order.

The programs for A184141, there is no canonical definition to state claims against.
-/

/-! ## A184141.P3764167354173935138

`A180985(A374007(n+1))`
-/

namespace A184141.P3764167354173935138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (A374007 (n + 1)).toNat

end

end A184141.P3764167354173935138

/-! ## A184141.P8266520185330978093

`A180985(A000124(n+5)+5)`
-/

namespace A184141.P8266520185330978093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (A000124 (n + 5) + 5).toNat

end

end A184141.P8266520185330978093

/-! ## A184141.P2415159995831199286

`A180985(A052905(n+3))`
-/

namespace A184141.P2415159995831199286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (A052905 (n + 3)).toNat

end

end A184141.P2415159995831199286

/-! ## A184141.P8126666776381170609

`A180985(eq[3, A219347(n)])`
-/

namespace A184141.P8126666776381170609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184141.P8126666776381170609

/-! ## A184141.P10908109259396834708

`A180985(Δ[A023545(n+2)]-1)`
-/

namespace A184141.P10908109259396834708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (f1 (n + 1) - f1 n - 1).toNat

end

end A184141.P10908109259396834708

/-!
# A184142: Number of nX7 binary arrays with rows and columns in nondecreasing order.

The programs for A184142, there is no canonical definition to state claims against.
-/

/-! ## A184142.P17472346362226486835

`A180985(A374008(n+1))`
-/

namespace A184142.P17472346362226486835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (A374008 (n + 1)).toNat

end

end A184142.P17472346362226486835

/-! ## A184142.P5455335884983683830

`A180985(eq[11, A066657(n)])`
-/

namespace A184142.P5455335884983683830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184142.P5455335884983683830

/-! ## A184142.P15138747709576735701

`A180985(A055999(n+4))`
-/

namespace A184142.P15138747709576735701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (A055999 (n + 4)).toNat

end

end A184142.P15138747709576735701

/-! ## A184142.P2041844252538486923

`A180985(eq[4, A219347(n)])`
-/

namespace A184142.P2041844252538486923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184142.P2041844252538486923

/-! ## A184142.P11466134679087014816

`A180985(eq[6, A193592(n)])`
-/

namespace A184142.P11466134679087014816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184142.P11466134679087014816

/-!
# A184143: Number of nX8 binary arrays with rows and columns in nondecreasing order.

The programs for A184143, there is no canonical definition to state claims against.
-/

/-! ## A184143.P292712927634887291

`A180985(A374009(n+1))`
-/

namespace A184143.P292712927634887291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (A374009 (n + 1)).toNat

end

end A184143.P292712927634887291

/-! ## A184143.P7101695760801105905

`A180985(eq[13, A066657(n)])`
-/

namespace A184143.P7101695760801105905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184143.P7101695760801105905

/-! ## A184143.P13633159251333420610

`A180985(eq[9, A131818(n+1)])`
-/

namespace A184143.P13633159251333420610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184143.P13633159251333420610

/-! ## A184143.P8209784966221856149

`A180985(eq[5, A219347(n)])`
-/

namespace A184143.P8209784966221856149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184143.P8209784966221856149

/-! ## A184143.P12632720547178020623

`A180985(eq[7, A193592(n)])`
-/

namespace A184143.P12632720547178020623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184143.P12632720547178020623

/-!
# A184144: 

The programs for A184144, there is no canonical definition to state claims against.
-/

/-! ## A184144.P5779867301140665617

`A184153((n+1)²+n²)`
-/

namespace A184144.P5779867301140665617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184153 ((n + 1) ^ 2 + n ^ 2)

end

end A184144.P5779867301140665617

/-!
# A184145: 1/4 the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having at least two equal elements connected horizontally or vertically.

The programs for A184145, there is no canonical definition to state claims against.
-/

/-! ## A184145.P3849046553612085584

`9*a(n-1)+28*a(n-2)` with `a(0)=43, a(1)=499`
-/

namespace A184145.P3849046553612085584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [43, 499] fun n a =>
  9 * a (n - 1) + 28 * a (n - 2)

end

end A184145.P3849046553612085584

/-! ## A184145.P17202643768188812623

`A184153(∑[n]+1)`
-/

namespace A184145.P17202643768188812623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184153 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184145.P17202643768188812623

/-! ## A184145.P13480585999204735956

`or(1, A184153(A000124(n)))`
-/

namespace A184145.P13480585999204735956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184153 (A000124 n).toNat)

end

end A184145.P13480585999204735956

/-! ## A184145.P33343389829209279

`record[root(A184153(n+1), A173075(n))]`
-/

namespace A184145.P33343389829209279
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184153 (n + 1) : ℝ) ^ (1 / (A173075 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184145.P33343389829209279

/-! ## A184145.P9397010668587330587

`record[root(A184153(n+1), A193635(n))]`
-/

namespace A184145.P9397010668587330587
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184153 (n + 1) : ℝ) ^ (1 / (A193635 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184145.P9397010668587330587

/-!
# A184146: 1/4 the number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having at least two equal elements connected horizontally or vertically.

The programs for A184146, there is no canonical definition to state claims against.
-/

/-! ## A184146.P3963184214111514786

`A184153(∑[n+1]+2)`
-/

namespace A184146.P3963184214111514786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184153 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184146.P3963184214111514786

/-! ## A184146.P15531358360025603738

`or(1, A184153(A000096(n)+3))`
-/

namespace A184146.P15531358360025603738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184153 (A000096 n + 3).toNat)

end

end A184146.P15531358360025603738

/-! ## A184146.P9736846912635797702

`record[root(A184153(n+2), A193635(n))]`
-/

namespace A184146.P9736846912635797702
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184153 (n + 2) : ℝ) ^ (1 / (A193635 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184146.P9736846912635797702

/-! ## A184146.P17170429791807778801

`A146466(n+1)*A184153(A000096(n)+3)`
-/

namespace A184146.P17170429791807778801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146466 (n + 1) * A184153 (A000096 n + 3).toNat

end

end A184146.P17170429791807778801

/-! ## A184146.P595241550434954748

`A184153(A000096(n+1))/A146466(n+2)`
-/

namespace A184146.P595241550434954748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184153 (A000096 (n + 1)).toNat : ℚ) / (A146466 (n + 2) : ℚ)

end

end A184146.P595241550434954748

/-!
# A184147: 1/4 the number of (n+1)X4 0..3 arrays with every 2X2 subblock having at least two equal elements connected horizontally or vertically.

The programs for A184147, there is no canonical definition to state claims against.
-/

/-! ## A184147.P9213520240453306733

`A184153(∑[n+2]+4)`
-/

namespace A184147.P9213520240453306733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184153 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184147.P9213520240453306733

/-! ## A184147.P3010370912433032995

`or(1, A184153(A167614(n+1)))`
-/

namespace A184147.P3010370912433032995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184153 (A167614 (n + 1)).toNat)

end

end A184147.P3010370912433032995

/-! ## A184147.P40113379079172413

`A184153(A167614(n+1))+A025443(n)`
-/

namespace A184147.P40113379079172413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184153 (A167614 (n + 1)).toNat + A025443 n

end

end A184147.P40113379079172413

/-! ## A184147.P15322154168287656998

`A184153(A167614(n+1))+A025466(n)`
-/

namespace A184147.P15322154168287656998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184153 (A167614 (n + 1)).toNat + A025466 n

end

end A184147.P15322154168287656998

/-! ## A184147.P7753205569653573824

`A184153(A167614(n+1))+A034449(n+1)`
-/

namespace A184147.P7753205569653573824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184153 (A167614 (n + 1)).toNat + A034449 (n + 1)

end

end A184147.P7753205569653573824

/-!
# A184148: 1/4 the number of (n+1) X 5 0..3 arrays with every 2 X 2 subblock having at least two equal elements connected horizontally or vertically.

The programs for A184148, there is no canonical definition to state claims against.
-/

/-! ## A184148.P3780940828825850135

`A184153(A141214(n)+7)`
-/

namespace A184148.P3780940828825850135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184153 (A141214 n + 7).toNat

end

end A184148.P3780940828825850135

/-!
# A184152: 

The programs for A184152, there is no canonical definition to state claims against.
-/

/-! ## A184152.P7609471944016429056

`A184153(A000217(n+7)+8)`
-/

namespace A184152.P7609471944016429056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184153 (A000217 (n + 7) + 8).toNat

end

end A184152.P7609471944016429056

/-!
# A184154: Triangle read by rows: T(n,k) is the number of leaves at level k>=1 of the rooted tree having Matula-Goebel number n (n>=2).

The programs for A184154, there is no canonical definition to state claims against.
-/

/-! ## A184154.P15516388020584437263

`A193238(A001316(n)*A050770(n))`
-/

namespace A184154.P15516388020584437263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A001316 n * A050770 n).toNat

end

end A184154.P15516388020584437263

/-! ## A184154.P2757464075409754470

`A035232(A052179(n)*A275198(2*(n+2)))`
-/

namespace A184154.P2757464075409754470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (A052179 n * A275198 (2 * (n + 2))).toNat

end

end A184154.P2757464075409754470

/-! ## A184154.P5528924450062539610

`A248639(or(A168331(n+1), A248642(n+1)))`
-/

namespace A184154.P5528924450062539610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 (Int.lor (A168331 (n + 1)) (A248642 (n + 1))).toNat

end

end A184154.P5528924450062539610

/-! ## A184154.P15942691826779098940

`A282450(n)%p?[A282426(A282429(n+1))]`
-/

namespace A184154.P15942691826779098940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282426 (A282429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282450 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A184154.P15942691826779098940

/-! ## A184154.P15037167572786241272

`A378373(A339556(n+1))`
-/

namespace A184154.P15037167572786241272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378373 (A339556 (n + 1)).toNat

end

end A184154.P15037167572786241272

/-!
# A184155: The Matula-Goebel number of rooted trees having all leaves at the same level.

The programs for A184155, there is no canonical definition to state claims against.
-/

/-! ## A184155.P6756663979544780353

`eq[2, sqrt(a(A184159(n)))]` with `a(0)=4`
-/

namespace A184155.P6756663979544780353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f2 =>
  Real.sqrt (f2 (A184159 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A184155.P6756663979544780353

/-! ## A184155.P15850798104834226775

`eq[0, A184159(n+1)]+1`
-/

namespace A184155.P15850798104834226775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184159 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184155.P15850798104834226775

/-! ## A184155.P917337508181415931

`eq[2, A000032(a(A184159(n)))]` with `a(0)=0`
-/

namespace A184155.P917337508181415931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A184159 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184155.P917337508181415931

/-! ## A184155.P5405690105784112923

`eq[2, A000010(a(A184159(n)))]` with `a(0)=3`
-/

namespace A184155.P5405690105784112923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A184159 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184155.P5405690105784112923

/-! ## A184155.P2911939090549098985

`eq[2, A007318(a(A184159(n)))]` with `a(0)=4`
-/

namespace A184155.P2911939090549098985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A184159 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184155.P2911939090549098985

/-!
# A184156: The Wiener polarity index of the rooted tree with Matula-Goebel number n.

The programs for A184156, there is no canonical definition to state claims against.
-/

/-! ## A184156.P17641857072990776003

`A196050(n+1)+A196054(n+1)-A196053(n+1)`
-/

namespace A184156.P17641857072990776003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + (A196054 (n + 1) - A196053 (n + 1))

end

end A184156.P17641857072990776003

/-! ## A184156.P8377253700762142114

`A196054(n+1)-(A198332(n+1)+A196050(n+1))`
-/

namespace A184156.P8377253700762142114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196054 (n + 1) - (A198332 (n + 1) + A196050 (n + 1))

end

end A184156.P8377253700762142114

/-!
# A184157: The sum of the even distances in the rooted tree with Matula-Goebel number n.

The programs for A184157, there is no canonical definition to state claims against.
-/

/-! ## A184157.P9093812483511339008

`A196051(n+1)-A184158(n+1)`
-/

namespace A184157.P9093812483511339008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196051 (n + 1) - A184158 (n + 1)

end

end A184157.P9093812483511339008

/-!
# A184158: The sum of the odd distances in the rooted tree with Matula-Goebel number n.

The programs for A184158, there is no canonical definition to state claims against.
-/

/-! ## A184158.P18254995420624014012

`A196051(n+1)-A184157(n+1)`
-/

namespace A184158.P18254995420624014012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196051 (n + 1) - A184157 (n + 1)

end

end A184158.P18254995420624014012

/-!
# A184159: The difference between the levels of the highest and lowest leaves in the rooted tree with Matula-Goebel number n.

The programs for A184159, there is no canonical definition to state claims against.
-/

/-! ## A184159.P2666781958445149407

`A109082(n+1)-A184166(n+1)`
-/

namespace A184159.P2666781958445149407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (n + 1) - A184166 (n + 1)

end

end A184159.P2666781958445149407

/-! ## A184159.P12259195483302710043

`A358552(n+1)-(A184166(n+1)+1)`
-/

namespace A184159.P12259195483302710043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (n + 1) - (A184166 (n + 1) + 1)

end

end A184159.P12259195483302710043

/-! ## A184159.P17175266045107157368

`A196058(A001750(n+1))-4-A184166(n+1)`
-/

namespace A184159.P17175266045107157368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196058 (A001750 (n + 1)).toNat - 4 - A184166 (n + 1)

end

end A184159.P17175266045107157368

/-! ## A184159.P264509386342331967

`A196058(A008593(n+1))-4-A184166(n+1)`
-/

namespace A184159.P264509386342331967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196058 (A008593 (n + 1)).toNat - 4 - A184166 (n + 1)

end

end A184159.P264509386342331967

/-! ## A184159.P11929933578949275056

`A109301(A348066(n+1))-A184166(n+1)`
-/

namespace A184159.P11929933578949275056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109301 (A348066 (n + 1)).toNat - A184166 (n + 1)

end

end A184159.P11929933578949275056

/-!
# A184160: Number of root subtrees in the rooted tree with Matula-Goebel number n.

The programs for A184160, there is no canonical definition to state claims against.
-/

/-! ## A184160.P7117170743654703572

`A184161(2*(n+1))-(A184161(n+1)+1)`
-/

namespace A184160.P7117170743654703572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (2 * (n + 1)) - (A184161 (n + 1) + 1)

end

end A184160.P7117170743654703572

/-! ## A184160.P9127747194814481108

`A184161(2*n+2)%(A184161(n+1)+1)`
-/

namespace A184160.P9127747194814481108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184161 (2 * n + 2)) (A184161 (n + 1) + 1)

end

end A184160.P9127747194814481108

/-! ## A184160.P514508090053452976

`A184161(2*(n+1))-A020725(A184161(n+1))`
-/

namespace A184160.P514508090053452976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (2 * (n + 1)) - A020725 (A184161 (n + 1)).toNat

end

end A184160.P514508090053452976

/-! ## A184160.P17507973688966735763

`A257537(2*(n+1))-A257537(n+1)`
-/

namespace A184160.P17507973688966735763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257537 (2 * (n + 1)) - A257537 (n + 1)

end

end A184160.P17507973688966735763

/-! ## A184160.P10380262206031940038

`A257537(A000040(n+1))-(A184161(n+1)-A061775(n+1))`
-/

namespace A184160.P10380262206031940038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257537 (A000040 (n + 1)).toNat - (A184161 (n + 1) - A061775 (n + 1))

end

end A184160.P10380262206031940038

/-!
# A184161: Number of subtrees in the rooted tree with Matula-Goebel number n.

The programs for A184161, there is no canonical definition to state claims against.
-/

/-! ## A184161.P11873760742441532051

`A257537(n+1)+A061775(n+1)`
-/

namespace A184161.P11873760742441532051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257537 (n + 1) + A061775 (n + 1)

end

end A184161.P11873760742441532051

/-! ## A184161.P5613436164578744265

`A196050(n+1)+A257537(n+1)+1`
-/

namespace A184161.P5613436164578744265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + (A257537 (n + 1) + 1)

end

end A184161.P5613436164578744265

/-! ## A184161.P6875953089385048697

`A257537(n+1)+∑{e}[A324922(n+1), #]+1`
-/

namespace A184161.P6875953089385048697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257537 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1 : ℕ) : ℤ)

end

end A184161.P6875953089385048697

/-! ## A184161.P4351251706438374560

`A257537(n+1)+A196050(Δ[A002378(n)])`
-/

namespace A184161.P4351251706438374560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257537 (n + 1) + A196050 (f1 (n + 1) - f1 n).toNat

end

end A184161.P4351251706438374560

/-! ## A184161.P209738374752616980

`A257537(n+1)+A196050(Δ[A007504(n)])`
-/

namespace A184161.P209738374752616980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257537 (n + 1) + A196050 (f1 (n + 1) - f1 n).toNat

end

end A184161.P209738374752616980

/-! ## A184161.P11839620384804067041

`A257537(n+1)+A196050(Δ[A027688(n)])`
-/

namespace A184161.P11839620384804067041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257537 (n + 1) + A196050 (f1 (n + 1) - f1 n).toNat

end

end A184161.P11839620384804067041

/-! ## A184161.P1422070972757128182

`A257537(n+1)+A196050(Δ[A027689(n)])`
-/

namespace A184161.P1422070972757128182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257537 (n + 1) + A196050 (f1 (n + 1) - f1 n).toNat

end

end A184161.P1422070972757128182

/-! ## A184161.P9632682288615542518

`A257537(n+1)+A196050(A000040(n+1))`
-/

namespace A184161.P9632682288615542518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257537 (n + 1) + A196050 (A000040 (n + 1)).toNat

end

end A184161.P9632682288615542518

/-! ## A184161.P16181935530016815788

`A257537(n+1)+A005496(A196050(n+1))`
-/

namespace A184161.P16181935530016815788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257537 (n + 1) + A005496 (A196050 (n + 1)).toNat

end

end A184161.P16181935530016815788

/-! ## A184161.P15796557153910354598

`A257537(n+1)+A001222(A324922(n+1))+1`
-/

namespace A184161.P15796557153910354598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257537 (n + 1) + (A001222 (A324922 (n + 1)).toNat + 1)

end

end A184161.P15796557153910354598

/-!
# A184163: a(0)=1, a(1)=1, a(n)=a(n-1)^a(n-2)+1.

The programs for A184163, the canonical program `A184163.P5975103329446108134` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184163 has offset 0).

The definition of A184163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)^a(n-2)` (program `A184163.P5975103329446108134`, by `A184163.P5975103329446108134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184163.P5975103329446108134

`1+a(n-1)^a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184163

/-- `1+a(n-1)^a(n-2)` -/
def P5975103329446108134.Spec : Prop :=
  ∀ n, (P5975103329446108134.a n : ℤ) = A184163 n

theorem P5975103329446108134.correct : P5975103329446108134.Spec := by
  intro n
  simp only [A184163]

end A184163

/-! ## A184163.P9756909557344583056

`A117383(A107475(n))`
-/

namespace A184163.P9756909557344583056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117383 (A107475 n).toNat

end

end A184163.P9756909557344583056

namespace A184163

/-- `A117383(A107475(n))` -/
def P9756909557344583056.Spec : Prop :=
  ∀ n, P9756909557344583056.a n = A184163 n

end A184163

/-!
# A184164: List of numbers that are not the number of subtrees of some tree.

The programs for A184164, there is no canonical definition to state claims against.
-/

/-! ## A184164.P13073516601895607723

`∩[A344406(n+1), A050759(n+2)]`
-/

namespace A184164.P13073516601895607723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050759 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184164.P13073516601895607723

/-! ## A184164.P4843668724502976441

`A344406(A348553(n)%A335676(n+4))`
-/

namespace A184164.P4843668724502976441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344406 (Int.tmod (A348553 n) (A335676 (n + 4))).toNat

end

end A184164.P4843668724502976441

/-! ## A184164.P17245306791645699698

`A344406(lcm(A003557(n+1), A348553(n)))`
-/

namespace A184164.P17245306791645699698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344406 (Int.lcm (A003557 (n + 1)) (A348553 n))

end

end A184164.P17245306791645699698

/-! ## A184164.P8900918321203069348

`A344406(A351831(n+1)+1)`
-/

namespace A184164.P8900918321203069348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344406 (A351831 (n + 1) + 1).toNat

end

end A184164.P8900918321203069348

/-! ## A184164.P12460076537303837552

`∩[A023804(n+1), A344406(n+1)]`
-/

namespace A184164.P12460076537303837552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184164.P12460076537303837552

/-!
# A184165: Number of independent (vertex) subsets in the rooted tree with Matula-Goebel number n.

The programs for A184165, there is no canonical definition to state claims against.
-/

/-! ## A184165.P17929144562680101979

`A228731(n+1)+A228732(n+1)`
-/

namespace A184165.P17929144562680101979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (n + 1) + A228732 (n + 1)

end

end A184165.P17929144562680101979

/-! ## A184165.P14648278373060188807

`A228732(A003963(n+1))+A228732(n+1)`
-/

namespace A184165.P14648278373060188807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (A003963 (n + 1)).toNat + A228732 (n + 1)

end

end A184165.P14648278373060188807

/-! ## A184165.P3074740302497824006

`A228732(A000040(n+1))`
-/

namespace A184165.P3074740302497824006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (A000040 (n + 1)).toNat

end

end A184165.P3074740302497824006

/-! ## A184165.P14096050797544907165

`A228732(A008578(n+2))`
-/

namespace A184165.P14096050797544907165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (A008578 (n + 2)).toNat

end

end A184165.P14096050797544907165

/-! ## A184165.P7000115130178360486

`A228732(A182986(n+2))`
-/

namespace A184165.P7000115130178360486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (A182986 (n + 2)).toNat

end

end A184165.P7000115130178360486

/-! ## A184165.P8314581532500650901

`A228732(record[A006530(n+2)])`
-/

namespace A184165.P8314581532500650901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184165.P8314581532500650901

/-! ## A184165.P1340804039570522631

`A228732(record[A014963(n+2)])`
-/

namespace A184165.P1340804039570522631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184165.P1340804039570522631

/-! ## A184165.P9135836241292373001

`A228732(record[A020639(n+2)])`
-/

namespace A184165.P9135836241292373001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184165.P9135836241292373001

/-! ## A184165.P4074281361644779657

`A228732(record[A253236(n+2)])`
-/

namespace A184165.P4074281361644779657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184165.P4074281361644779657

/-! ## A184165.P14577915411741529052

`A228731(n+1)+A228731(record[A051698(n)])`
-/

namespace A184165.P14577915411741529052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (n + 1) + A228731 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184165.P14577915411741529052

/-! ## A184165.P9021362298569018420

`A228731(A000040(n+1))+A228731(n+1)`
-/

namespace A184165.P9021362298569018420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A000040 (n + 1)).toNat + A228731 (n + 1)

end

end A184165.P9021362298569018420

/-! ## A184165.P15710333919142039438

`A228731(A006005(n+1))+A228731(n+1)`
-/

namespace A184165.P15710333919142039438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A006005 (n + 1)).toNat + A228731 (n + 1)

end

end A184165.P15710333919142039438

/-! ## A184165.P6527436912631273398

`A228731(n+1)+A228731(A318871(n+1))`
-/

namespace A184165.P6527436912631273398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (n + 1) + A228731 (A318871 (n + 1)).toNat

end

end A184165.P6527436912631273398

/-! ## A184165.P14527622307052604881

`A228731(n+1)+A228731(A008578(n+2))`
-/

namespace A184165.P14527622307052604881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (n + 1) + A228731 (A008578 (n + 2)).toNat

end

end A184165.P14527622307052604881

/-! ## A184165.P7312432177959211467

`A228731(n+1)+A228731(record[A006530(n+2)])`
-/

namespace A184165.P7312432177959211467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (n + 1) + A228731 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184165.P7312432177959211467

/-! ## A184165.P2229185629613331638

`A228731(n+1)+A228731(record[A014963(n+2)])`
-/

namespace A184165.P2229185629613331638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (n + 1) + A228731 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184165.P2229185629613331638

/-! ## A184165.P1251745824815397081

`A228731(n+1)+A228731(record[A020639(n+2)])`
-/

namespace A184165.P1251745824815397081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (n + 1) + A228731 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184165.P1251745824815397081

/-! ## A184165.P12229485996897032811

`A228731(A040976(n+1)+2)+A228731(n+1)`
-/

namespace A184165.P12229485996897032811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A040976 (n + 1) + 2).toNat + A228731 (n + 1)

end

end A184165.P12229485996897032811

/-! ## A184165.P7056206755237471412

`A228732(lt[A036696(n)/4+1, A020639(n+1)]+1)`
-/

namespace A184165.P7056206755237471412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036696 n : ℚ) / 4 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1)

end

end A184165.P7056206755237471412

/-! ## A184165.P13785793896050483037

`A228731(A100484(n+1))+A228731(n+1)`
-/

namespace A184165.P13785793896050483037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A100484 (n + 1)).toNat + A228731 (n + 1)

end

end A184165.P13785793896050483037

/-!
# A184166: The level of the lowest leaf of the rooted tree with Matula-Goebel number n.

The programs for A184166, there is no canonical definition to state claims against.
-/

/-! ## A184166.P6974919138963673290

`A109082(n+1)-A184159(n+1)`
-/

namespace A184166.P6974919138963673290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (n + 1) - A184159 (n + 1)

end

end A184166.P6974919138963673290

/-! ## A184166.P6118650715549288201

`A358552(n+1)-(A184159(n+1)+1)`
-/

namespace A184166.P6118650715549288201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (n + 1) - (A184159 (n + 1) + 1)

end

end A184166.P6118650715549288201

/-! ## A184166.P17291756745729058488

`A196058(A001750(n+1))-4-A184159(n+1)`
-/

namespace A184166.P17291756745729058488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196058 (A001750 (n + 1)).toNat - 4 - A184159 (n + 1)

end

end A184166.P17291756745729058488

/-! ## A184166.P16833638564355336379

`A196058(A008593(n+1))-4-A184159(n+1)`
-/

namespace A184166.P16833638564355336379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196058 (A008593 (n + 1)).toNat - 4 - A184159 (n + 1)

end

end A184166.P16833638564355336379

/-! ## A184166.P95744331152964364

`A109082(n+1)+A057428(n)*A184159(n+1)`
-/

namespace A184166.P95744331152964364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (n + 1) + A057428 n * A184159 (n + 1)

end

end A184166.P95744331152964364

/-! ## A184166.P10397862147136906521

`A196058((n+1)²)/2-A184159(n+1)`
-/

namespace A184166.P10397862147136906521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196058 ((n + 1) ^ 2) : ℚ) / 2 - (A184159 (n + 1) : ℚ)

end

end A184166.P10397862147136906521

/-! ## A184166.P17699117208271129132

`A109301(A348066(n+1))-A184159(n+1)`
-/

namespace A184166.P17699117208271129132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109301 (A348066 (n + 1)).toNat - A184159 (n + 1)

end

end A184166.P17699117208271129132

/-! ## A184166.P12024242689041509528

`A004526(A196058((n+1)²))-A184159(n+1)`
-/

namespace A184166.P12024242689041509528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A196058 ((n + 1) ^ 2)).toNat - A184159 (n + 1)

end

end A184166.P12024242689041509528

/-! ## A184166.P10852159991835929888

`A184168(n+1)+1-A184168(2*(n+1))`
-/

namespace A184166.P10852159991835929888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184168 (n + 1) + (1 - A184168 (2 * (n + 1)))

end

end A184166.P10852159991835929888

/-! ## A184166.P6715063510991350846

`A184159(2*(n+1))+char[A028242(n)+1]-A184159(n+1)`
-/

namespace A184166.P6715063510991350846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184159 (2 * (n + 1)) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A184159 (n + 1)

end

end A184166.P6715063510991350846

/-!
# A184167: Irregular triangle read by rows: T(n,k) is the number of vertices having escape distance k>=0 in the rooted tree having Matula-Goebel number n.

The programs for A184167, there is no canonical definition to state claims against.
-/

/-! ## A184167.P11018358083777888771

`A099563(A006530(8*A257503(n+1)))`
-/

namespace A184167.P11018358083777888771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A006530 (8 * A257503 (n + 1)).toNat).toNat

end

end A184167.P11018358083777888771

/-! ## A184167.P8117499738197872061

`A302041(A059801(n+1)%A287564(3*n+5))`
-/

namespace A184167.P8117499738197872061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302041 (Int.tmod (A059801 (n + 1)) (A287564 (3 * n + 5))).toNat

end

end A184167.P8117499738197872061

/-! ## A184167.P11102004865068246110

`A090822(A327069(n+4)+A278657(n))`
-/

namespace A184167.P11102004865068246110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A327069 (n + 4) + A278657 n).toNat

end

end A184167.P11102004865068246110

/-! ## A184167.P998378914416383950

`A287170(or(A014411(n+1), A343050(n+1)))`
-/

namespace A184167.P998378914416383950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (Int.lor (A014411 (n + 1)) (A343050 (n + 1))).toNat

end

end A184167.P998378914416383950

/-! ## A184167.P12530025500491031005

`gcd(A001221(A269386(3*n+2)), A143112(n+1))`
-/

namespace A184167.P12530025500491031005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A269386 (3 * n + 2)).toNat) (A143112 (n + 1))

end

end A184167.P12530025500491031005

/-!
# A184168: Sum of escape distances of all vertices in the rooted tree having Matula-Goebel number n.

The programs for A184168, there is no canonical definition to state claims against.
-/

/-! ## A184168.P11732749376873297538

`A343006(A334504(n+1))+A324923(n+1)`
-/

namespace A184168.P11732749376873297538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343006 (A334504 (n + 1)).toNat + A324923 (n + 1)

end

end A184168.P11732749376873297538

/-!
# A184169: Maximum escape distance over the vertices of the rooted tree having Matula-Goebel number n.

The programs for A184169, there is no canonical definition to state claims against.
-/

/-! ## A184169.P177985256813439127

`A317713(n+1)-A093320(A000040(n+1))`
-/

namespace A184169.P177985256813439127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317713 (n + 1) - A093320 (A000040 (n + 1)).toNat

end

end A184169.P177985256813439127

/-! ## A184169.P17324272651586333656

`A184166(A242474(n+1))+char[9]`
-/

namespace A184169.P17324272651586333656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184166 (A242474 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184169.P17324272651586333656

/-! ## A184169.P4295574818264557624

`A184166(A199344(n)*A211095(n))`
-/

namespace A184169.P4295574818264557624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184166 (A199344 n * A211095 n).toNat

end

end A184169.P4295574818264557624

/-! ## A184169.P5956178544975610029

`A184166(n+1)+A025468(A309372(n))`
-/

namespace A184169.P5956178544975610029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184166 (n + 1) + A025468 (A309372 n).toNat

end

end A184169.P5956178544975610029

/-! ## A184169.P5805910836194798491

`A184166(or(A067310(n), A242474(n+1)))`
-/

namespace A184169.P5805910836194798491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184166 (Int.lor (A067310 n) (A242474 (n + 1))).toNat

end

end A184169.P5805910836194798491

/-!
# A184170: Number of vertices that have largest escape distance in the rooted tree having Matula-Goebel number n.

The programs for A184170, there is no canonical definition to state claims against.
-/

/-! ## A184170.P7158774087041975036

`A184167(∑[A184169(n+1)+1])`
-/

namespace A184170.P7158774087041975036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184169 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184167 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184170.P7158774087041975036

/-! ## A184170.P6343369935275183150

`or(A288173(A165305(n+1)), A353372(n+1))`
-/

namespace A184170.P6343369935275183150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A288173 (A165305 (n + 1)).toNat) (A353372 (n + 1))

end

end A184170.P6343369935275183150

/-! ## A184170.P7325826105329503407

`A257079(A014574(n+1)*A325967(n+1))`
-/

namespace A184170.P7325826105329503407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 (A014574 (n + 1) * A325967 (n + 1)).toNat

end

end A184170.P7325826105329503407

/-! ## A184170.P1892724518324357456

`A237271(n^A257992(n+1))`
-/

namespace A184170.P1892724518324357456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A257992 (n + 1) : ℤ))).toNat

end

end A184170.P1892724518324357456

/-! ## A184170.P11312963009810911477

`A327407(7*A260739(n+1))`
-/

namespace A184170.P11312963009810911477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327407 (7 * A260739 (n + 1)).toNat

end

end A184170.P11312963009810911477

/-!
# A184171: Number of partitions of n into an even number of distinct primes.

The programs for A184171, there is no canonical definition to state claims against.
-/

/-! ## A184171.P5371600426402950661

`A184172(n)+A046675(n)`
-/

namespace A184171.P5371600426402950661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 n + A046675 n

end

end A184171.P5371600426402950661

/-! ## A184171.P16529338072016543519

`A000586(n)-A184172(n)`
-/

namespace A184171.P16529338072016543519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A184172 n

end

end A184171.P16529338072016543519

/-! ## A184171.P12954134259743289938

`(A046675(n)+A000586(n))/2`
-/

namespace A184171.P12954134259743289938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046675 n + A000586 n : ℚ) / 2

end

end A184171.P12954134259743289938

/-! ## A184171.P4530956679850185870

`A000586(n)-A024937(A004442(n+1))`
-/

namespace A184171.P4530956679850185870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A024937 (A004442 (n + 1)).toNat

end

end A184171.P4530956679850185870

/-! ## A184171.P11446842560873666292

`A024937(xor(1, n)+1)`
-/

namespace A184171.P11446842560873666292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (Nat.xor 1 n + 1)

end

end A184171.P11446842560873666292

/-! ## A184171.P10423186894283351317

`A024937(A004442(n)+1)`
-/

namespace A184171.P10423186894283351317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (A004442 n + 1).toNat

end

end A184171.P10423186894283351317

/-! ## A184171.P8251520156534458287

`A024937(A014681(n+1))`
-/

namespace A184171.P8251520156534458287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (A014681 (n + 1)).toNat

end

end A184171.P8251520156534458287

/-! ## A184171.P2975421797395273768

`A024937(A103889(n+1))`
-/

namespace A184171.P2975421797395273768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (A103889 (n + 1)).toNat

end

end A184171.P2975421797395273768

/-! ## A184171.P13396716216187915949

`A024937(A065190(n+2)-1)`
-/

namespace A184171.P13396716216187915949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (A065190 (n + 2) - 1).toNat

end

end A184171.P13396716216187915949

/-! ## A184171.P11051450897325247615

`A339383(n+1)-A184172(n+1)`
-/

namespace A184171.P11051450897325247615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339383 (n + 1) - A184172 (n + 1)

end

end A184171.P11051450897325247615

/-! ## A184171.P9755561313678001997

`A024939(abs(n-A010673(n)))`
-/

namespace A184171.P9755561313678001997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024939 |(n : ℤ) - A010673 n|.toNat

end

end A184171.P9755561313678001997

/-! ## A184171.P6059832609803124690

`A024937(n)+A024939(n)-A184172(n)`
-/

namespace A184171.P6059832609803124690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 n + (A024939 n - A184172 n)

end

end A184171.P6059832609803124690

/-! ## A184171.P7975428601770441316

`A024939(A004442(3*n)%A004442(2*n))`
-/

namespace A184171.P7975428601770441316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024939 (Int.tmod (A004442 (3 * n)) (A004442 (2 * n))).toNat

end

end A184171.P7975428601770441316

/-! ## A184171.P14340165422108097047

`A036497(n+1)-(A339382(n+1)+A184172(n+1))`
-/

namespace A184171.P14340165422108097047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 (n + 1) - (A339382 (n + 1) + A184172 (n + 1))

end

end A184171.P14340165422108097047

/-! ## A184171.P6048427584444002990

`A004526(A046675(n)+A000586(n))`
-/

namespace A184171.P6048427584444002990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A046675 n + A000586 n).toNat

end

end A184171.P6048427584444002990

/-! ## A184171.P9777741288503101352

`A000586(n)-A004526(A000586(n)-A046675(n))`
-/

namespace A184171.P9777741288503101352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A004526 (A000586 n - A046675 n).toNat

end

end A184171.P9777741288503101352

/-!
# A184172: Number of partitions of n into an odd number of distinct primes.

The programs for A184172, there is no canonical definition to state claims against.
-/

/-! ## A184172.P5147745297716167272

`A000586(n)-A184171(n)`
-/

namespace A184172.P5147745297716167272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A184171 n

end

end A184172.P5147745297716167272

/-! ## A184172.P8598099841808637056

`A184171(n)-A046675(n)`
-/

namespace A184172.P8598099841808637056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 n - A046675 n

end

end A184172.P8598099841808637056

/-! ## A184172.P4101467017339832732

`(A000586(n)-A046675(n))/2`
-/

namespace A184172.P4101467017339832732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000586 n - A046675 n : ℚ) / 2

end

end A184172.P4101467017339832732

/-! ## A184172.P8547805355039179050

`A024937(xor(1, n+1))`
-/

namespace A184172.P8547805355039179050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (Nat.xor 1 (n + 1))

end

end A184172.P8547805355039179050

/-! ## A184172.P10337974101718778613

`A024937(A004442(n+1))`
-/

namespace A184172.P10337974101718778613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (A004442 (n + 1)).toNat

end

end A184172.P10337974101718778613

/-! ## A184172.P625205970313592341

`A024937(A014681(n)+1)`
-/

namespace A184172.P625205970313592341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (A014681 n + 1).toNat

end

end A184172.P625205970313592341

/-! ## A184172.P10908679071004266844

`A024937(A065190(n+1))`
-/

namespace A184172.P10908679071004266844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (A065190 (n + 1)).toNat

end

end A184172.P10908679071004266844

/-! ## A184172.P12977574338727600483

`A184171(xor(1, A014681(n)))`
-/

namespace A184172.P12977574338727600483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (Int.xor 1 (A014681 n)).toNat

end

end A184172.P12977574338727600483

/-! ## A184172.P16161044258784949542

`A024937(A103889(n+2)-1)`
-/

namespace A184172.P16161044258784949542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (A103889 (n + 2) - 1).toNat

end

end A184172.P16161044258784949542

/-! ## A184172.P7231874427292943958

`A024937(Δ[n²]-A004442(n))`
-/

namespace A184172.P7231874427292943958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A004442 n).toNat

end

end A184172.P7231874427292943958

/-! ## A184172.P5664911031582827278

`A024939(abs(A010673(n+1)-n))`
-/

namespace A184172.P5664911031582827278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024939 |A010673 (n + 1) - (n : ℤ)|.toNat

end

end A184172.P5664911031582827278

/-! ## A184172.P15078671324672702251

`A339382(n+1)-A184171(n+1)`
-/

namespace A184172.P15078671324672702251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339382 (n + 1) - A184171 (n + 1)

end

end A184172.P15078671324672702251

/-! ## A184172.P2713898405497219727

`A004526(A000586(n)-A046675(n))`
-/

namespace A184172.P2713898405497219727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000586 n - A046675 n).toNat

end

end A184172.P2713898405497219727

/-!
# A184173: Triangle read by rows: T(n,k) is the sum of the k X k minors in the n X n Pascal matrix (0<=k<=n; the empty 0 X 0 minor is defined to be 1).

The programs for A184173, there is no canonical definition to state claims against.
-/

/-! ## A184173.P15648009663183833038

`A141689(n+1)-A098490(A219987(n)²)²*A193330(n)`
-/

namespace A184173.P15648009663183833038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (n + 1) - A098490 (A219987 n ^ 2).toNat ^ 2 * A193330 n

end

end A184173.P15648009663183833038

/-! ## A184173.P17292748777759206579

`A141689(n+1)-A299905(A008554(n+1))`
-/

namespace A184173.P17292748777759206579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (n + 1) - A299905 (A008554 (n + 1)).toNat

end

end A184173.P17292748777759206579

/-! ## A184173.P121959908657333816

`A132016(A046802(n))`
-/

namespace A184173.P121959908657333816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (A046802 n).toNat

end

end A184173.P121959908657333816

/-! ## A184173.P12656921441789840477

`A180199(A058669(n))`
-/

namespace A184173.P12656921441789840477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180199 (A058669 n).toNat

end

end A184173.P12656921441789840477

/-! ## A184173.P3259111012656943427

`A338466(A022166(n))`
-/

namespace A184173.P3259111012656943427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A022166 n).toNat

end

end A184173.P3259111012656943427

/-!
# A184174: Triangle read by rows: T(n,k) is the number of partitions of the set {1,2,...,n} having k adjacent blocks of size 2, i.e., blocks of the form (i,i+1) (0 <= k <= floor(n/2)).

The programs for A184174, there is no canonical definition to state claims against.
-/

/-! ## A184174.P3378197023498600901

`A267742(∑[A327359(n)!])`
-/

namespace A184174.P3378197023498600901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A327359 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184174.P3378197023498600901

/-! ## A184174.P10993055544737471134

`A267742(∑[A036997(n+1)!])`
-/

namespace A184174.P10993055544737471134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A036997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184174.P10993055544737471134

/-! ## A184174.P10859246502200161339

`A267742(∑[A124778(3*n+2)])`
-/

namespace A184174.P10859246502200161339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184174.P10859246502200161339

/-! ## A184174.P15055597819474345785

`A267742(lt[A035055(n), A085946(n+1)])`
-/

namespace A184174.P15055597819474345785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A184174.P15055597819474345785

/-!
# A184175: Number of set partitions of {1,2,...,n} having no blocks of the form {i, i+1}.

The programs for A184175, there is no canonical definition to state claims against.
-/

/-! ## A184175.P13107577447827798830

`A184174(∑[A110654(n)])`
-/

namespace A184175.P13107577447827798830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184174 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184175.P13107577447827798830

/-! ## A184175.P18329192617745026362

`A184174(Δ[A173196(n)])`
-/

namespace A184175.P18329192617745026362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184174 (f1 (n + 1) - f1 n).toNat

end

end A184175.P18329192617745026362

/-! ## A184175.P8455632107293889939

`A184174(A002620(n+1))`
-/

namespace A184175.P8455632107293889939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184174 (A002620 (n + 1)).toNat

end

end A184175.P8455632107293889939

/-! ## A184175.P15130843626746903869

`A184174(A076921(n+1))`
-/

namespace A184175.P15130843626746903869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184174 (A076921 (n + 1)).toNat

end

end A184175.P15130843626746903869

/-! ## A184175.P12316359354093193018

`A184174(A182531(n+1))`
-/

namespace A184175.P12316359354093193018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184174 (A182531 (n + 1)).toNat

end

end A184175.P12316359354093193018

/-! ## A184175.P4442699877228474144

`A184174(A008619(n)*A065033(n))`
-/

namespace A184175.P4442699877228474144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184174 (A008619 n * A065033 n).toNat

end

end A184175.P4442699877228474144

/-! ## A184175.P6946914464206589977

`A184174(A008619(n)*A110654(n))`
-/

namespace A184175.P6946914464206589977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184174 (A008619 n * A110654 n).toNat

end

end A184175.P6946914464206589977

/-! ## A184175.P17403392771508138994

`A184174(A173196(n+1)-A173196(n))`
-/

namespace A184175.P17403392771508138994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184174 (A173196 (n + 1) - A173196 n).toNat

end

end A184175.P17403392771508138994

/-! ## A184175.P8101681905776750761

`A184174(A065033(n+1)*A065033(n))`
-/

namespace A184175.P8101681905776750761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184174 (A065033 (n + 1) * A065033 n).toNat

end

end A184175.P8101681905776750761

/-! ## A184175.P4321578866991392914

`A184174(A110654(n+1)*A110654(n))`
-/

namespace A184175.P4321578866991392914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184174 (A110654 (n + 1) * A110654 n).toNat

end

end A184175.P4321578866991392914

/-!
# A184177: Number of set partitions of {1,2,...,n} having no blocks of the form {i,i+1,i+2}.

The programs for A184177, there is no canonical definition to state claims against.
-/

/-! ## A184177.P12366211264558821677

`A184176(A001840(n))`
-/

namespace A184177.P12366211264558821677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184176 (A001840 n).toNat

end

end A184177.P12366211264558821677

/-! ## A184177.P11126636857165945103

`A184176(A002264(∑[n+1]))`
-/

namespace A184177.P11126636857165945103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184176 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A184177.P11126636857165945103

/-! ## A184177.P9900389338572747095

`A184176(∑[A112689(2*n)])`
-/

namespace A184177.P9900389338572747095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184176 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184177.P9900389338572747095

/-! ## A184177.P5973599297636348346

`A184176(∑[n-A002264(2*n)])`
-/

namespace A184177.P5973599297636348346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184176 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184177.P5973599297636348346

/-! ## A184177.P529311889773779382

`A184176(∑[A110654(A004396(n))])`
-/

namespace A184177.P529311889773779382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184176 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184177.P529311889773779382

/-!
# A184181: Number of permutations of {1,2,...,n} whose shortest block is of length 1. A block of a permutation is a maximal sequence of consecutive integers which appear in consecutive positions. For example, the permutation 5412367 has 4 blocks: 5, 4, 123, and 67. Its shortest block has length 1.

The programs for A184181, there is no canonical definition to state claims against.
-/

/-! ## A184181.P14908974168358910427

`n!-A180564(n)`
-/

namespace A184181.P14908974168358910427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A180564 n

end

end A184181.P14908974168358910427

/-! ## A184181.P3143571035271938365

`A000142(n)-A180564(n)`
-/

namespace A184181.P3143571035271938365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A180564 n

end

end A184181.P3143571035271938365

/-! ## A184181.P7462848855617218340

`n!-A180196(A000217(n))`
-/

namespace A184181.P7462848855617218340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A180196 (A000217 n).toNat

end

end A184181.P7462848855617218340

/-! ## A184181.P6886469159890917198

`A000142(n)-A180196(A000217(n))`
-/

namespace A184181.P6886469159890917198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A180196 (A000217 n).toNat

end

end A184181.P6886469159890917198

/-!
# A184182: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} whose longest block is of length k (0<=k<=n).

The programs for A184182, there is no canonical definition to state claims against.
-/

/-! ## A184182.P9916876998603963117

`and(A234300(A146205(n+3)), A321964(n))`
-/

namespace A184182.P9916876998603963117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A234300 (A146205 (n + 3)).toNat) (A321964 n)

end

end A184182.P9916876998603963117

/-! ## A184182.P9558226097260046717

`and(A038922(A048988(3*n+4)), A321964(n))`
-/

namespace A184182.P9558226097260046717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038922 (A048988 (3 * n + 4)).toNat) (A321964 n)

end

end A184182.P9558226097260046717

/-! ## A184182.P1154203438136275630

`and(A048988(A181821(3*n+4)), A321964(n))`
-/

namespace A184182.P1154203438136275630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048988 (A181821 (3 * n + 4)).toNat) (A321964 n)

end

end A184182.P1154203438136275630

/-!
# A184184: Triangle read by rows: T(n,k) is the number of permutations of [n] having k adjacent cycles (0 <= k <= n). An adjacent cycle is a cycle of the form (i, i+1, i+2, ...) (including 1-element cycles).

The programs for A184184, there is no canonical definition to state claims against.
-/

/-! ## A184184.P1144676381650134530

`A056556(C(round(n²/12), A025581(n)))`
-/

namespace A184184.P1144676381650134530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (Nat.choose (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)).toNat (A025581 n).toNat)

end

end A184184.P1144676381650134530

/-! ## A184184.P11871233020865821085

`A167772(n)-A005369(A047749(n))`
-/

namespace A184184.P11871233020865821085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167772 n - A005369 (A047749 n).toNat

end

end A184184.P11871233020865821085

/-! ## A184184.P14899597277808655351

`A000120(C(A023894(n), A365004(n)))`
-/

namespace A184184.P14899597277808655351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A023894 n).toNat (A365004 n).toNat)

end

end A184184.P14899597277808655351

/-! ## A184184.P5773812488295546905

`A062323(n)-A082858(A044917(n+1))`
-/

namespace A184184.P5773812488295546905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062323 n - A082858 (A044917 (n + 1)).toNat

end

end A184184.P5773812488295546905

/-! ## A184184.P16944439482414723849

`A339846(A350396(n+1)+A002605(n))`
-/

namespace A184184.P16944439482414723849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (A350396 (n + 1) + A002605 n).toNat

end

end A184184.P16944439482414723849

/-!
# A184185: Number of permutations of {1,2,...,n} having no cycles of the form (i, i+1, i+2, ..., i+j-1) (j >= 1).

The programs for A184185, the canonical program `A184185.P14475022280884470343` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184185 has offset 0).

The definition of A184185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184185.P14475022280884470343

`(n+2)*a(n-1)-2*(n-1)*a(n-2)+(n-2)*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184185

/-- `(n+2)*a(n-1)-2*(n-1)*a(n-2)+(n-2)*a(n-3)` -/
def P14475022280884470343.Spec : Prop :=
  ∀ n, P14475022280884470343.a n = A184185 n

theorem P14475022280884470343.correct : P14475022280884470343.Spec := by
  intro n
  simp only [A184185]

end A184185

/-! ## A184185.P3596503798531066641

`∑[A302978(n+2)]-1`
-/

namespace A184185.P3596503798531066641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302978 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A184185.P3596503798531066641

namespace A184185

/-- `∑[A302978(n+2)]-1` -/
def P3596503798531066641.Spec : Prop :=
  ∀ n, P3596503798531066641.a n = A184185 n

end A184185

/-! ## A184185.P2982454025616023476

`∑[A302978(A065475(n+1))]`
-/

namespace A184185.P2982454025616023476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302978 (A065475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184185.P2982454025616023476

namespace A184185

/-- `∑[A302978(A065475(n+1))]` -/
def P2982454025616023476.Spec : Prop :=
  ∀ n, P2982454025616023476.a n = A184185 n

end A184185

/-! ## A184185.P7762341888267521848

`∑[A302978(A184985(n+2))]`
-/

namespace A184185.P7762341888267521848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302978 (A184985 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184185.P7762341888267521848

namespace A184185

/-- `∑[A302978(A184985(n+2))]` -/
def P7762341888267521848.Spec : Prop :=
  ∀ n, P7762341888267521848.a n = A184185 n

end A184185

/-! ## A184185.P11188385446142616937

`∑[A302978(n+2)^A178334(n)]`
-/

namespace A184185.P11188385446142616937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302978 (n + 2) : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184185.P11188385446142616937

namespace A184185

/-- `∑[A302978(n+2)^A178334(n)]` -/
def P11188385446142616937.Spec : Prop :=
  ∀ n, P11188385446142616937.a n = (A184185 n : ℚ)

end A184185

/-! ## A184185.P16769046536394807987

`A105812(A000010(n+3))+∑[A302978(n+2)]`
-/

namespace A184185.P16769046536394807987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302978 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A000010 (n + 3)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184185.P16769046536394807987

namespace A184185

/-- `A105812(A000010(n+3))+∑[A302978(n+2)]` -/
def P16769046536394807987.Spec : Prop :=
  ∀ n, P16769046536394807987.a n = A184185 n

end A184185

/-!
# A184188: Half the number of (n+1)X(n+1) binary arrays with no 2X2 subblock containing exactly one 1.

The programs for A184188, there is no canonical definition to state claims against.
-/

/-! ## A184188.P5901695142248975552

`A184197(∑[4*n]+1)`
-/

namespace A184188.P5901695142248975552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184188.P5901695142248975552

/-! ## A184188.P8922113097801587104

`record[gcd(A003987(n), A184197(n+1))]`
-/

namespace A184188.P8922113097801587104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A184197 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184188.P8922113097801587104

/-! ## A184188.P4782676065476071767

`A209545(n+1)-1`
-/

namespace A184188.P4782676065476071767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209545 (n + 1) - 1

end

end A184188.P4782676065476071767

/-! ## A184188.P6800689031114352138

`A259516(n+1)/2`
-/

namespace A184188.P6800689031114352138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259516 (n + 1) : ℚ) / 2

end

end A184188.P6800689031114352138

/-! ## A184188.P11511058293070737429

`A209553(A001844(n))-1`
-/

namespace A184188.P11511058293070737429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (A001844 n).toNat - 1

end

end A184188.P11511058293070737429

/-!
# A184189: Half the number of (n+1) X 2 binary arrays with no 2 X 2 subblock containing exactly one 1.

The programs for A184189, the canonical program `A184189.P8778254792380230007` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184189 has offset 1).

The definition of A184189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184189.P16890232464206821774

`A209546(n+1)-1`
-/

namespace A184189.P16890232464206821774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209546 (n + 1) - 1

end

end A184189.P16890232464206821774

namespace A184189

/-- `A209546(n+1)-1` -/
def P16890232464206821774.Spec : Prop :=
  ∀ n, P16890232464206821774.a n = A184189 (n + 1)

end A184189

/-! ## A184189.P14598360089252722850

`A316441(A063908(n+1))+A209546(n+1)`
-/

namespace A184189.P14598360089252722850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A063908 (n + 1)).toNat + A209546 (n + 1)

end

end A184189.P14598360089252722850

namespace A184189

/-- `A316441(A063908(n+1))+A209546(n+1)` -/
def P14598360089252722850.Spec : Prop :=
  ∀ n, P14598360089252722850.a n = A184189 (n + 1)

end A184189

/-! ## A184189.P8778254792380230007

`4*a(n-1)-2*a(n-2)-2*a(n-3)` with `a(0)=6, a(1)=19, a(2)=60`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184189

/-- `4*a(n-1)-2*a(n-2)-2*a(n-3)` -/
def P8778254792380230007.Spec : Prop :=
  ∀ n, P8778254792380230007.a n = A184189 (n + 1)

theorem P8778254792380230007.correct : P8778254792380230007.Spec := by
  intro n
  simp only [A184189, Nat.add_sub_cancel]

end A184189

/-! ## A184189.P10943227790982195215

`A259517(n+1)/2`
-/

namespace A184189.P10943227790982195215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259517 (n + 1) : ℚ) / 2

end

end A184189.P10943227790982195215

namespace A184189

/-- `A259517(n+1)/2` -/
def P10943227790982195215.Spec : Prop :=
  ∀ n, P10943227790982195215.a n = (A184189 (n + 1) : ℚ)

end A184189

/-! ## A184189.P5560945691705258678

`Δ[Δ[A302146(n+3)]/2]`
-/

namespace A184189.P5560945691705258678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302146 (n + 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A184189.P5560945691705258678

namespace A184189

/-- `Δ[Δ[A302146(n+3)]/2]` -/
def P5560945691705258678.Spec : Prop :=
  ∀ n, P5560945691705258678.a n = (A184189 (n + 1) : ℚ)

end A184189

/-!
# A184190: Half the number of (n+1) X 3 binary arrays with no 2 X 2 subblock containing exactly one 1.

The programs for A184190, there is no canonical definition to state claims against.
-/

/-! ## A184190.P15466390931634593753

`A209547(n+1)-1`
-/

namespace A184190.P15466390931634593753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209547 (n + 1) - 1

end

end A184190.P15466390931634593753

/-! ## A184190.P18201121714632961938

`A309873(Δ[A033583(n)])+A209547(n+1)`
-/

namespace A184190.P18201121714632961938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (f1 (n + 1) - f1 n).toNat + A209547 (n + 1)

end

end A184190.P18201121714632961938

/-! ## A184190.P17808585588302902286

`A289741(A045798(n+1))+A209547(n+1)`
-/

namespace A184190.P17808585588302902286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (A045798 (n + 1)).toNat + A209547 (n + 1)

end

end A184190.P17808585588302902286

/-! ## A184190.P16248831076946379018

`A289741(A045803(n+1))+A209547(n+1)`
-/

namespace A184190.P16248831076946379018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (A045803 (n + 1)).toNat + A209547 (n + 1)

end

end A184190.P16248831076946379018

/-! ## A184190.P2101597286604136753

`A289741(A045805(n+1))+A209547(n+1)`
-/

namespace A184190.P2101597286604136753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (A045805 (n + 1)).toNat + A209547 (n + 1)

end

end A184190.P2101597286604136753

/-! ## A184190.P12299684567073599958

`A289741(A045807(n+1))+A209547(n+1)`
-/

namespace A184190.P12299684567073599958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (A045807 (n + 1)).toNat + A209547 (n + 1)

end

end A184190.P12299684567073599958

/-! ## A184190.P18330793789216576463

`A289741(A045809(n+1))+A209547(n+1)`
-/

namespace A184190.P18330793789216576463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (A045809 (n + 1)).toNat + A209547 (n + 1)

end

end A184190.P18330793789216576463

/-! ## A184190.P4961447402302764479

`A259518(n+1)/2`
-/

namespace A184190.P4961447402302764479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259518 (n + 1) : ℚ) / 2

end

end A184190.P4961447402302764479

/-!
# A184191: Half the number of (n+1)X4 binary arrays with no 2X2 subblock containing exactly one 1.

The programs for A184191, there is no canonical definition to state claims against.
-/

/-! ## A184191.P7838738544698735765

`A209548(n+1)-1`
-/

namespace A184191.P7838738544698735765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209548 (n + 1) - 1

end

end A184191.P7838738544698735765

/-! ## A184191.P4553815763452628615

`A280193(A045798(n+1))+A209548(n+1)`
-/

namespace A184191.P4553815763452628615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A045798 (n + 1)).toNat + A209548 (n + 1)

end

end A184191.P4553815763452628615

/-! ## A184191.P8986746956387824043

`A280193(A045803(n+1))+A209548(n+1)`
-/

namespace A184191.P8986746956387824043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A045803 (n + 1)).toNat + A209548 (n + 1)

end

end A184191.P8986746956387824043

/-! ## A184191.P9298706059297220650

`A280193(A045805(n+1))+A209548(n+1)`
-/

namespace A184191.P9298706059297220650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A045805 (n + 1)).toNat + A209548 (n + 1)

end

end A184191.P9298706059297220650

/-! ## A184191.P8341465524068661353

`A280193(A045807(n+1))+A209548(n+1)`
-/

namespace A184191.P8341465524068661353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A045807 (n + 1)).toNat + A209548 (n + 1)

end

end A184191.P8341465524068661353

/-! ## A184191.P2274800292700776039

`A280193(A045809(n+1))+A209548(n+1)`
-/

namespace A184191.P2274800292700776039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A045809 (n + 1)).toNat + A209548 (n + 1)

end

end A184191.P2274800292700776039

/-! ## A184191.P7875708992057530155

`A259519(n+1)/2`
-/

namespace A184191.P7875708992057530155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259519 (n + 1) : ℚ) / 2

end

end A184191.P7875708992057530155

/-! ## A184191.P17303714947212194937

`(A259519(n+1)+1)%A209548(n+1)`
-/

namespace A184191.P17303714947212194937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259519 (n + 1) + 1) (A209548 (n + 1))

end

end A184191.P17303714947212194937

/-! ## A184191.P15982465266758437788

`A332823(A332822(n+1))+A209548(n+1)`
-/

namespace A184191.P15982465266758437788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A332822 (n + 1)).toNat + A209548 (n + 1)

end

end A184191.P15982465266758437788

/-!
# A184192: Half the number of (n+1)X5 binary arrays with no 2X2 subblock containing exactly one 1.

The programs for A184192, there is no canonical definition to state claims against.
-/

/-! ## A184192.P2575239651946660682

`A209549(n+1)-1`
-/

namespace A184192.P2575239651946660682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209549 (n + 1) - 1

end

end A184192.P2575239651946660682

/-! ## A184192.P4083871719211259958

`A259520(n+1)/2`
-/

namespace A184192.P4083871719211259958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259520 (n + 1) : ℚ) / 2

end

end A184192.P4083871719211259958

/-! ## A184192.P13390417733164986354

`A184197(A141214(n)+7)`
-/

namespace A184192.P13390417733164986354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (A141214 n + 7).toNat

end

end A184192.P13390417733164986354

/-! ## A184192.P10462690209126961453

`A184197(A052905(n)+9)`
-/

namespace A184192.P10462690209126961453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (A052905 n + 9).toNat

end

end A184192.P10462690209126961453

/-! ## A184192.P8140953911224469669

`A184197(A167614(n+2)+1)`
-/

namespace A184192.P8140953911224469669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (A167614 (n + 2) + 1).toNat

end

end A184192.P8140953911224469669

/-!
# A184193: Half the number of (n+1)X6 binary arrays with no 2X2 subblock containing exactly one 1.

The programs for A184193, there is no canonical definition to state claims against.
-/

/-! ## A184193.P4758466752765194541

`A209550(n+1)-1`
-/

namespace A184193.P4758466752765194541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209550 (n + 1) - 1

end

end A184193.P4758466752765194541

/-! ## A184193.P6387084925964554824

`A259521(n+1)/2`
-/

namespace A184193.P6387084925964554824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259521 (n + 1) : ℚ) / 2

end

end A184193.P6387084925964554824

/-! ## A184193.P5431751167249027229

`A291914(A000040(n+1))+A209550(n+1)`
-/

namespace A184193.P5431751167249027229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A000040 (n + 1)).toNat + A209550 (n + 1)

end

end A184193.P5431751167249027229

/-! ## A184193.P4558731091928297225

`A184197(A167499(n+3))`
-/

namespace A184193.P4558731091928297225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (A167499 (n + 3)).toNat

end

end A184193.P4558731091928297225

/-!
# A184194: Half the number of (n+1)X7 binary arrays with no 2X2 subblock containing exactly one 1.

The programs for A184194, there is no canonical definition to state claims against.
-/

/-! ## A184194.P3226355879465371121

`A209551(n+1)-1`
-/

namespace A184194.P3226355879465371121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209551 (n + 1) - 1

end

end A184194.P3226355879465371121

/-! ## A184194.P7392887554211378380

`A259522(n+1)/2`
-/

namespace A184194.P7392887554211378380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259522 (n + 1) : ℚ) / 2

end

end A184194.P7392887554211378380

/-! ## A184194.P2662313963546811285

`A280193(or(1, n))+A209551(n+1)`
-/

namespace A184194.P2662313963546811285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (Nat.lor 1 n) + A209551 (n + 1)

end

end A184194.P2662313963546811285

/-! ## A184194.P6064852924687051114

`A280193(6*n+1)+A209551(n+1)`
-/

namespace A184194.P6064852924687051114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (6 * n + 1) + A209551 (n + 1)

end

end A184194.P6064852924687051114

/-! ## A184194.P17400878553984248991

`abs(A280193(A098985(n))+A209551(n+1))`
-/

namespace A184194.P17400878553984248991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280193 (A098985 n).toNat + A209551 (n + 1)|

end

end A184194.P17400878553984248991

/-!
# A184195: Half the number of (n+1)X8 binary arrays with no 2X2 subblock containing exactly one 1.

The programs for A184195, there is no canonical definition to state claims against.
-/

/-! ## A184195.P8207725235250525860

`A209552(n+1)-1`
-/

namespace A184195.P8207725235250525860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209552 (n + 1) - 1

end

end A184195.P8207725235250525860

/-! ## A184195.P9006531274542529092

`A259523(n+1)/2`
-/

namespace A184195.P9006531274542529092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259523 (n + 1) : ℚ) / 2

end

end A184195.P9006531274542529092

/-! ## A184195.P10386654252691512697

`record[A209552(A324346(n))-1]`
-/

namespace A184195.P10386654252691512697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209552 (A324346 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184195.P10386654252691512697

/-! ## A184195.P16746337254634622780

`record[A209552(A324347(n))-1]`
-/

namespace A184195.P16746337254634622780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209552 (A324347 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184195.P16746337254634622780

/-! ## A184195.P3070241793246429506

`(A259523(n+1)+1)%A209552(n+1)`
-/

namespace A184195.P3070241793246429506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259523 (n + 1) + 1) (A209552 (n + 1))

end

end A184195.P3070241793246429506

/-! ## A184195.P4402195028508458031

`A295303(A066694(n+1))+A209552(n+1)`
-/

namespace A184195.P4402195028508458031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (A066694 (n + 1)).toNat + A209552 (n + 1)

end

end A184195.P4402195028508458031

/-!
# A184196: Half the number of (n+1)X9 binary arrays with no 2X2 subblock containing exactly one 1.

The programs for A184196, there is no canonical definition to state claims against.
-/

/-! ## A184196.P17649005139192810375

`A184197(A374009(n+1))`
-/

namespace A184196.P17649005139192810375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (A374009 (n + 1)).toNat

end

end A184196.P17649005139192810375

/-! ## A184196.P3729251341305773087

`A184197(eq[7, A193592(n)])`
-/

namespace A184196.P3729251341305773087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184196.P3729251341305773087

/-! ## A184196.P3658544258408110577

`A259524(eq[7, A193592(n)])/2`
-/

namespace A184196.P3658544258408110577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A184196.P3658544258408110577

/-!
# A184197: T(n,k)=Half the number of (n+1)X(k+1) binary arrays with no 2X2 subblock containing exactly one 1.

The programs for A184197, there is no canonical definition to state claims against.
-/

/-! ## A184197.P11867847277683166271

`A209553(n+1)-1`
-/

namespace A184197.P11867847277683166271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209553 (n + 1) - 1

end

end A184197.P11867847277683166271

/-! ## A184197.P425320723654684453

`A259524(n+1)/2`
-/

namespace A184197.P425320723654684453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259524 (n + 1) : ℚ) / 2

end

end A184197.P425320723654684453

/-! ## A184197.P6767614509895291366

`A280193(2*n+1)+A209553(n+1)`
-/

namespace A184197.P6767614509895291366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A209553 (n + 1)

end

end A184197.P6767614509895291366

/-! ## A184197.P4134152666588585230

`A289741(A045798(n+1))+A209553(n+1)`
-/

namespace A184197.P4134152666588585230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (A045798 (n + 1)).toNat + A209553 (n + 1)

end

end A184197.P4134152666588585230

/-! ## A184197.P14330036332170084669

`A289741(A045803(n+1))+A209553(n+1)`
-/

namespace A184197.P14330036332170084669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (A045803 (n + 1)).toNat + A209553 (n + 1)

end

end A184197.P14330036332170084669

/-! ## A184197.P17477989230150694210

`A289741(A045805(n+1))+A209553(n+1)`
-/

namespace A184197.P17477989230150694210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (A045805 (n + 1)).toNat + A209553 (n + 1)

end

end A184197.P17477989230150694210

/-! ## A184197.P13269563576422217400

`A289741(A045807(n+1))+A209553(n+1)`
-/

namespace A184197.P13269563576422217400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (A045807 (n + 1)).toNat + A209553 (n + 1)

end

end A184197.P13269563576422217400

/-! ## A184197.P14476479528008629485

`A289741(A045809(n+1))+A209553(n+1)`
-/

namespace A184197.P14476479528008629485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (A045809 (n + 1)).toNat + A209553 (n + 1)

end

end A184197.P14476479528008629485

/-!
# A184198: Number of partitions of n into an even number of primes.

The programs for A184198, there is no canonical definition to state claims against.
-/

/-! ## A184198.P2730522302854940246

`(A000607(n)+A048165(n))/2`
-/

namespace A184198.P2730522302854940246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000607 n + A048165 n : ℚ) / 2

end

end A184198.P2730522302854940246

/-! ## A184198.P7113160443266012461

`A184199(A014681(xor(1, n)))`
-/

namespace A184198.P7113160443266012461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184199 (A014681 (Nat.xor 1 n)).toNat

end

end A184198.P7113160443266012461

/-! ## A184198.P18224999222275880007

`A184199(n)+A048165(n)`
-/

namespace A184198.P18224999222275880007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184199 n + A048165 n

end

end A184198.P18224999222275880007

/-! ## A184198.P3073885058469075065

`A000607(n)-A184199(n)`
-/

namespace A184198.P3073885058469075065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - A184199 n

end

end A184198.P3073885058469075065

/-! ## A184198.P17494436951162449317

`A184199(A014681(A004442(n)))`
-/

namespace A184198.P17494436951162449317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184199 (A014681 (A004442 n).toNat).toNat

end

end A184198.P17494436951162449317

/-! ## A184198.P6551266438211857062

`A046676(n)-(A192541(n)+A184199(n))`
-/

namespace A184198.P6551266438211857062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - (A192541 n + A184199 n)

end

end A184198.P6551266438211857062

/-! ## A184198.P13159328781647823475

`A014682(A048165(n)+A000607(n))`
-/

namespace A184198.P13159328781647823475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A048165 n + A000607 n).toNat

end

end A184198.P13159328781647823475

/-! ## A184198.P7412596140287632979

`A000607(n)-A014682(A000607(n)-A048165(n))`
-/

namespace A184198.P7412596140287632979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - A014682 (A000607 n - A048165 n).toNat

end

end A184198.P7412596140287632979

/-! ## A184198.P4006615027762896542

`A048165(n)+A004525(A000607(n)-A048165(n))`
-/

namespace A184198.P4006615027762896542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048165 n + A004525 (A000607 n - A048165 n).toNat

end

end A184198.P4006615027762896542

/-! ## A184198.P14900681325943817794

`A048165(n)+A025480(A000607(n)-A048165(n))`
-/

namespace A184198.P14900681325943817794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048165 n + A025480 (A000607 n - A048165 n).toNat

end

end A184198.P14900681325943817794

/-!
# A184199: Number of partitions of n into an odd number of primes.

The programs for A184199, there is no canonical definition to state claims against.
-/

/-! ## A184199.P17342452105130609487

`(A000607(n)-A048165(n))/2`
-/

namespace A184199.P17342452105130609487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000607 n - A048165 n : ℚ) / 2

end

end A184199.P17342452105130609487

/-! ## A184199.P12438994028695894030

`A000607(n)-A184198(n)`
-/

namespace A184199.P12438994028695894030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - A184198 n

end

end A184199.P12438994028695894030

/-! ## A184199.P13922479892382907263

`A184198(n)-A048165(n)`
-/

namespace A184199.P13922479892382907263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 n - A048165 n

end

end A184199.P13922479892382907263

/-! ## A184199.P2258657305077830725

`A184198(xor(1, A014681(n)))`
-/

namespace A184199.P2258657305077830725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 (Int.xor 1 (A014681 n)).toNat

end

end A184199.P2258657305077830725

/-! ## A184199.P9604295506795921269

`A184198(abs(2-A038608(n)))`
-/

namespace A184199.P9604295506795921269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 |2 - A038608 n|.toNat

end

end A184199.P9604295506795921269

/-! ## A184199.P12999433283746275637

`A000607(n)-A014682(A048165(n)+A000607(n))`
-/

namespace A184199.P12999433283746275637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - A014682 (A048165 n + A000607 n).toNat

end

end A184199.P12999433283746275637

/-! ## A184199.P9333459628039506971

`A014682(A000607(n)-A048165(n))`
-/

namespace A184199.P9333459628039506971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000607 n - A048165 n).toNat

end

end A184199.P9333459628039506971

/-! ## A184199.P14740277604959291187

`A004525(A000607(n)-A048165(n))`
-/

namespace A184199.P14740277604959291187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000607 n - A048165 n).toNat

end

end A184199.P14740277604959291187

/-! ## A184199.P10366496881489041235

`A004526(A000607(n)-A048165(n))`
-/

namespace A184199.P10366496881489041235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000607 n - A048165 n).toNat

end

end A184199.P10366496881489041235

/-! ## A184199.P263024370121565181

`A025480(A000607(n)-A048165(n))`
-/

namespace A184199.P263024370121565181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000607 n - A048165 n).toNat

end

end A184199.P263024370121565181

