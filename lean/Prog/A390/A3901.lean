import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A390101: Irregular triangle read by rows: T(n, k) is the minimum positive x such that (n mod x) = k.

The programs for A390101, there is no canonical definition to state claims against.
-/

/-! ## A390101.P3900794483514829692

`A055089(A202692(2*n+5)%A059242(n+1))`
-/

namespace A390101.P3900794483514829692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (Int.tmod (A202692 (2 * n + 5)) (A059242 (n + 1))).toNat

end

end A390101.P3900794483514829692

/-!
# A390102: G.f. A(x) satisfies A(x) = 1 + x/(1-x^2)^3 * A(x)^2.

The programs for A390102, there is no canonical definition to state claims against.
-/

/-! ## A390102.P8534772430446683202

`A141204(A108600(n))`
-/

namespace A390102.P8534772430446683202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A108600 n).toNat

end

end A390102.P8534772430446683202

/-! ## A390102.P7197579307401423342

`A141204(A129777(n))`
-/

namespace A390102.P7197579307401423342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A129777 n).toNat

end

end A390102.P7197579307401423342

/-! ## A390102.P837647470559860073

`A100196(A171151(n)-A305089(n+1))`
-/

namespace A390102.P837647470559860073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A171151 n - A305089 (n + 1)).toNat

end

end A390102.P837647470559860073

/-!
# A390103: G.f. A(x) satisfies A(x) = 1 + x/(1-x^3)^2 * A(x)^2.

The programs for A390103, there is no canonical definition to state claims against.
-/

/-! ## A390103.P5253899360402383386

`A330557(A149400(n))`
-/

namespace A390103.P5253899360402383386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330557 (A149400 n).toNat

end

end A390103.P5253899360402383386

/-! ## A390103.P5122181296605328644

`A305759(2^n-n)`
-/

namespace A390103.P5122181296605328644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305759 (2 ^ n - n)

end

end A390103.P5122181296605328644

/-! ## A390103.P15988192529118742522

`A089221(A294281(n))`
-/

namespace A390103.P15988192529118742522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089221 (A294281 n).toNat

end

end A390103.P15988192529118742522

/-!
# A390105: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-2*x/(1-x)) ).

The programs for A390105, there is no canonical definition to state claims against.
-/

/-! ## A390105.P8127521932716283295

`A235485(A051442(n)-A130153(n+1))`
-/

namespace A390105.P8127521932716283295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235485 (A051442 n - A130153 (n + 1)).toNat

end

end A390105.P8127521932716283295

/-!
# A390111: a(n) is the total number of vertices of degree 1 in Catalan word grid graphs with n parts.

The programs for A390111, the canonical program `A390111.P6313739216418206930` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390111 has offset 2).

The definition of A390111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390111.P6313739216418206930

`A189176(n+1)+A000108(n+2)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A390111

/-- `A189176(n+1)+A000108(n+2)` -/
def P6313739216418206930.Spec : Prop :=
  ∀ n, P6313739216418206930.a n = A390111 (n + 2)

theorem P6313739216418206930.correct : P6313739216418206930.Spec := by
  intro n
  simp only [A390111, Nat.add_sub_cancel]

end A390111

/-! ## A390111.P12186096951576155763

`A029609(n+1)-A037955(2*n+3)`
-/

namespace A390111.P12186096951576155763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029609 (n + 1) - A037955 (2 * n + 3)

end

end A390111.P12186096951576155763

namespace A390111

/-- `A029609(n+1)-A037955(2*n+3)` -/
def P12186096951576155763.Spec : Prop :=
  ∀ n, P12186096951576155763.a n = A390111 (n + 2)

end A390111

/-! ## A390111.P5541409373208948596

`A051960(n+1)-(A262768(n+1)+A000984(n))`
-/

namespace A390111.P5541409373208948596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051960 (n + 1) - (A262768 (n + 1) + A000984 n)

end

end A390111.P5541409373208948596

namespace A390111

/-- `A051960(n+1)-(A262768(n+1)+A000984(n))` -/
def P5541409373208948596.Spec : Prop :=
  ∀ n, P5541409373208948596.a n = A390111 (n + 2)

end A390111

/-! ## A390111.P15112326727318363152

`A008586(A138364(2*n+1))-A265610(n+1)`
-/

namespace A390111.P15112326727318363152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A138364 (2 * n + 1)).toNat - A265610 (n + 1)

end

end A390111.P15112326727318363152

namespace A390111

/-- `A008586(A138364(2*n+1))-A265610(n+1)` -/
def P15112326727318363152.Spec : Prop :=
  ∀ n, P15112326727318363152.a n = A390111 (n + 2)

end A390111

/-!
# A390114: a(n) is the index where n appears for first time in the list of first differences of the numbers with middle divisors.

The programs for A390114, there is no canonical definition to state claims against.
-/

/-! ## A390114.P5439040722415345036

`A348110(A280295(n+1))`
-/

namespace A390114.P5439040722415345036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348110 (A280295 (n + 1)).toNat

end

end A390114.P5439040722415345036

/-! ## A390114.P15990573875573601208

`A348110(A282198(n+1))`
-/

namespace A390114.P15990573875573601208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348110 (A282198 (n + 1)).toNat

end

end A390114.P15990573875573601208

/-!
# A390115: a(n) is the total number of vertices of degree 2 in Catalan word grid graphs with n parts.

The programs for A390115, the canonical program `A390115.P15101073239205051047` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390115 has offset 2).

The definition of A390115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390115.P15101073239205051047

`A246574(n+1)+A002057(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A390115

/-- `A246574(n+1)+A002057(n)` -/
def P15101073239205051047.Spec : Prop :=
  ∀ n, P15101073239205051047.a n = A390115 (n + 2)

theorem P15101073239205051047.correct : P15101073239205051047.Spec := by
  intro n
  simp only [A390115, Nat.add_sub_cancel]

end A390115

/-! ## A390115.P634126595929855321

`A246574(n+1)+A099376(n+1)`
-/

namespace A390115.P634126595929855321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246574 (n + 1) + A099376 (n + 1)

end

end A390115.P634126595929855321

namespace A390115

/-- `A246574(n+1)+A099376(n+1)` -/
def P634126595929855321.Spec : Prop :=
  ∀ n, P634126595929855321.a n = A390115 (n + 2)

end A390115

/-! ## A390115.P12411694120030382396

`A285681(A289786(n))`
-/

namespace A390115.P12411694120030382396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285681 (A289786 n).toNat

end

end A390115.P12411694120030382396

namespace A390115

/-- `A285681(A289786(n))` -/
def P12411694120030382396.Spec : Prop :=
  ∀ n, P12411694120030382396.a n = A390115 (n + 2)

end A390115

/-!
# A390117: Least integer m > 1 such that m*n + 1 is a prime.

The programs for A390117, there is no canonical definition to state claims against.
-/

/-! ## A390117.P6524242750556156097

`A214123(n+2)+1`
-/

namespace A390117.P6524242750556156097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214123 (n + 2) + 1

end

end A390117.P6524242750556156097

/-! ## A390117.P829439707330355145

`A000010(A379743(n+2))/(n+1)`
-/

namespace A390117.P829439707330355145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A379743 (n + 2)).toNat : ℚ) / (n + 1 : ℚ)

end

end A390117.P829439707330355145

/-! ## A390117.P1724419097705164175

`A307907(A213820(n+2))`
-/

namespace A390117.P1724419097705164175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307907 (A213820 (n + 2)).toNat

end

end A390117.P1724419097705164175

/-! ## A390117.P7421655689794638942

`A036450(A157728(n+6))`
-/

namespace A390117.P7421655689794638942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (A157728 (n + 6)).toNat

end

end A390117.P7421655689794638942

/-! ## A390117.P18289063033834713375

`A356069(lt[A018819(n), A094683(n)])`
-/

namespace A390117.P18289063033834713375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356069 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390117.P18289063033834713375

/-!
# A390121: Irregular triangular array read by rows: T(n,k) is the number of compatible pairs (f,g) of functions from [n] into [n] such that the integer partition induced by f and g is the k-th partition in the canonical (reverse lexicographic) ordering of the partitions, n>=0, 1<=k<=A000041(n).

The programs for A390121, there is no canonical definition to state claims against.
-/

/-! ## A390121.P6598625616260302780

`A028310(A049009(n)*A078760(n))`
-/

namespace A390121.P6598625616260302780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A049009 n * A078760 n).toNat

end

end A390121.P6598625616260302780

/-!
# A390122: Number of directed cycles in the n X n grid graph, reduced for symmetry (with rotations, reflections, and translations not counted as distinct).

The programs for A390122, there is no canonical definition to state claims against.
-/

/-! ## A390122.P15134830813508166103

`xor(A078644(3*n+1), A383508(A244508(2*n)))`
-/

namespace A390122.P15134830813508166103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A078644 (3 * n + 1)) (A383508 (A244508 (2 * n)).toNat)

end

end A390122.P15134830813508166103

/-!
# A390124: The number of free polygems with n cells.

The programs for A390124, there is no canonical definition to state claims against.
-/

/-! ## A390124.P14712796340975718025

`A178381(n)*A383112(A124016(n+1))`
-/

namespace A390124.P14712796340975718025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 n * A383112 (A124016 (n + 1)).toNat

end

end A390124.P14712796340975718025

/-! ## A390124.P830905012240841209

`A070098(A051038(n+4)+A045743(n+2))`
-/

namespace A390124.P830905012240841209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (A051038 (n + 4) + A045743 (n + 2)).toNat

end

end A390124.P830905012240841209

/-!
# A390126: Powers k^m, m = 2..3, of squarefree composite k.

The programs for A390126, the canonical program `A390126.P4203344648687792492` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390126 has offset 1).

The definition of A390126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390126.P4203344648687792492

`∪[A177492(n+1), A177493(n+1)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A390126

/-- `∪[A177492(n+1), A177493(n+1)]` -/
def P4203344648687792492.Spec : Prop :=
  ∀ n, (P4203344648687792492.a n : ℤ) = A390126 (n + 1)

theorem P4203344648687792492.correct : P4203344648687792492.Spec := by
  intro n
  simp only [A390126, Nat.add_sub_cancel]

end A390126

/-! ## A390126.P17578880534008793954

`∩[A303606(n+1), A338325(n+1)]`
-/

namespace A390126.P17578880534008793954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390126.P17578880534008793954

namespace A390126

/-- `∩[A303606(n+1), A338325(n+1)]` -/
def P17578880534008793954.Spec : Prop :=
  ∀ n, (P17578880534008793954.a n : ℤ) = A390126 (n + 1)

end A390126

/-! ## A390126.P11104790098392968946

`∩[A338325(n+1), A390823(n+1)]`
-/

namespace A390126.P11104790098392968946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390126.P11104790098392968946

namespace A390126

/-- `∩[A338325(n+1), A390823(n+1)]` -/
def P11104790098392968946.Spec : Prop :=
  ∀ n, (P11104790098392968946.a n : ℤ) = A390126 (n + 1)

end A390126

/-! ## A390126.P7536537327283659047

`∩[A338325(n+1), A395414(n+1)]`
-/

namespace A390126.P7536537327283659047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390126.P7536537327283659047

namespace A390126

/-- `∩[A338325(n+1), A395414(n+1)]` -/
def P7536537327283659047.Spec : Prop :=
  ∀ n, (P7536537327283659047.a n : ℤ) = A390126 (n + 1)

end A390126

/-! ## A390126.P801380176012514173

`∩[A067341(n+1), A338325(n+1)]`
-/

namespace A390126.P801380176012514173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390126.P801380176012514173

namespace A390126

/-- `∩[A067341(n+1), A338325(n+1)]` -/
def P801380176012514173.Spec : Prop :=
  ∀ n, (P801380176012514173.a n : ℤ) = A390126 (n + 1)

end A390126

/-! ## A390126.P9484768436532745636

`filter[A338325(n+1), A354353(#)]`
-/

namespace A390126.P9484768436532745636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A390126.P9484768436532745636

namespace A390126

/-- `filter[A338325(n+1), A354353(#)]` -/
def P9484768436532745636.Spec : Prop :=
  ∀ n, P9484768436532745636.a n = A390126 (n + 1)

end A390126

/-! ## A390126.P10266020223855370216

`∩[A110893(n+1), A338325(n+1)]`
-/

namespace A390126.P10266020223855370216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390126.P10266020223855370216

namespace A390126

/-- `∩[A110893(n+1), A338325(n+1)]` -/
def P10266020223855370216.Spec : Prop :=
  ∀ n, (P10266020223855370216.a n : ℤ) = A390126 (n + 1)

end A390126

/-!
# A390127: Powers k^m, m >= 4, of squarefree composite k.

The programs for A390127, there is no canonical definition to state claims against.
-/

/-! ## A390127.P7306332588255789935

`∩[A076468(n+1), A388304(n+1)]`
-/

namespace A390127.P7306332588255789935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390127.P7306332588255789935

/-! ## A390127.P7559865504768722336

`∩[A372841(n+1), A388304(n+1)]`
-/

namespace A390127.P7559865504768722336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390127.P7559865504768722336

/-! ## A390127.P18083259408980151107

`∩[A036967(n+1), A388304(n+1)]`
-/

namespace A390127.P18083259408980151107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390127.P18083259408980151107

/-! ## A390127.P7301218666256745386

`∩[A372841(n+1), A390540(n+1)]`
-/

namespace A390127.P7301218666256745386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390127.P7301218666256745386

/-! ## A390127.P16592717345620079895

`∩[A036967(n+1), A303606(n+1)]`
-/

namespace A390127.P16592717345620079895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390127.P16592717345620079895

/-! ## A390127.P18127154205489468263

`∩[A076468(n+1), A303606(n+1)]`
-/

namespace A390127.P18127154205489468263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390127.P18127154205489468263

/-! ## A390127.P17389616934295180375

`∩[A303606(n+1), A372841(n+1)]`
-/

namespace A390127.P17389616934295180375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390127.P17389616934295180375

/-!
# A390128: Biquadratefree numbers that are neither cubefree nor squareful.

The programs for A390128, the canonical program `A390128.P3065140226531891146` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390128 has offset 1).

The definition of A390128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390128.P3065140226531891146

`filter[A375072(n+1), A389905(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A390128

/-- `filter[A375072(n+1), A389905(#)]` -/
def P3065140226531891146.Spec : Prop :=
  ∀ n, P3065140226531891146.a n = A390128 (n + 1)

theorem P3065140226531891146.correct : P3065140226531891146.Spec := by
  intro n
  simp only [A390128, Nat.add_sub_cancel]

end A390128

/-! ## A390128.P13812264979446360517

`filter[A391497(n+1), A389905(#)]`
-/

namespace A390128.P13812264979446360517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A390128.P13812264979446360517

namespace A390128

/-- `filter[A391497(n+1), A389905(#)]` -/
def P13812264979446360517.Spec : Prop :=
  ∀ n, P13812264979446360517.a n = A390128 (n + 1)

end A390128

/-! ## A390128.P12410592510472679342

`∩[A046099(n+1), A392537(n+1)]`
-/

namespace A390128.P12410592510472679342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390128.P12410592510472679342

namespace A390128

/-- `∩[A046099(n+1), A392537(n+1)]` -/
def P12410592510472679342.Spec : Prop :=
  ∀ n, (P12410592510472679342.a n : ℤ) = A390128 (n + 1)

end A390128

/-! ## A390128.P12025652330835300984

`∩[A060476(n+1), A392537(n+1)]`
-/

namespace A390128.P12025652330835300984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390128.P12025652330835300984

namespace A390128

/-- `∩[A060476(n+1), A392537(n+1)]` -/
def P12025652330835300984.Spec : Prop :=
  ∀ n, (P12025652330835300984.a n : ℤ) = A390128 (n + 1)

end A390128

/-! ## A390128.P12580521393269000489

`∩[A074451(n+1), A392537(n+1)]`
-/

namespace A390128.P12580521393269000489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390128.P12580521393269000489

namespace A390128

/-- `∩[A074451(n+1), A392537(n+1)]` -/
def P12580521393269000489.Spec : Prop :=
  ∀ n, (P12580521393269000489.a n : ℤ) = A390128 (n + 1)

end A390128

/-! ## A390128.P528220771272725325

`∩[A176297(n+1), A392537(n+1)]`
-/

namespace A390128.P528220771272725325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390128.P528220771272725325

namespace A390128

/-- `∩[A176297(n+1), A392537(n+1)]` -/
def P528220771272725325.Spec : Prop :=
  ∀ n, (P528220771272725325.a n : ℤ) = A390128 (n + 1)

end A390128

/-! ## A390128.P7493037670859986297

`∩[A295661(n+1), A392537(n+1)]`
-/

namespace A390128.P7493037670859986297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390128.P7493037670859986297

namespace A390128

/-- `∩[A295661(n+1), A392537(n+1)]` -/
def P7493037670859986297.Spec : Prop :=
  ∀ n, (P7493037670859986297.a n : ℤ) = A390128 (n + 1)

end A390128

/-! ## A390128.P16947731504794128749

`∩[A317616(n+1), A375072(n+1)]`
-/

namespace A390128.P16947731504794128749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390128.P16947731504794128749

namespace A390128

/-- `∩[A317616(n+1), A375072(n+1)]` -/
def P16947731504794128749.Spec : Prop :=
  ∀ n, (P16947731504794128749.a n : ℤ) = A390128 (n + 1)

end A390128

/-! ## A390128.P12740923873453593318

`∩[A046100(n+1), A391319(n+1)]`
-/

namespace A390128.P12740923873453593318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390128.P12740923873453593318

namespace A390128

/-- `∩[A046100(n+1), A391319(n+1)]` -/
def P12740923873453593318.Spec : Prop :=
  ∀ n, (P12740923873453593318.a n : ℤ) = A390128 (n + 1)

end A390128

/-! ## A390128.P5797684909978970815

`filter[A391319(n+1), A307430(#)]`
-/

namespace A390128.P5797684909978970815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A390128.P5797684909978970815

namespace A390128

/-- `filter[A391319(n+1), A307430(#)]` -/
def P5797684909978970815.Spec : Prop :=
  ∀ n, P5797684909978970815.a n = A390128 (n + 1)

end A390128

/-! ## A390128.P17437749419084922897

`filter[A392537(n+1), A381955(#)]`
-/

namespace A390128.P17437749419084922897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A390128.P17437749419084922897

namespace A390128

/-- `filter[A392537(n+1), A381955(#)]` -/
def P17437749419084922897.Spec : Prop :=
  ∀ n, P17437749419084922897.a n = A390128 (n + 1)

end A390128

/-!
# A390129: The number of layers of vertices that ever have chips in a certain chip-firing game that starts with 2^n chips and is described in the comments.

The programs for A390129, there is no canonical definition to state claims against.
-/

/-! ## A390129.P7387711694625712853

`A352226(2^n)+1`
-/

namespace A390129.P7387711694625712853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (2 ^ n) + 1

end

end A390129.P7387711694625712853

/-! ## A390129.P14124062485107486848

`A161205(A209357(n+1))`
-/

namespace A390129.P14124062485107486848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A209357 (n + 1)).toNat

end

end A390129.P14124062485107486848

/-! ## A390129.P17322319956118719577

`A003005(A000045(n+3))-1`
-/

namespace A390129.P17322319956118719577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003005 (A000045 (n + 3)).toNat - 1

end

end A390129.P17322319956118719577

/-! ## A390129.P8265261100537293522

`A368887(A000045(n+4)-A182172(n))`
-/

namespace A390129.P8265261100537293522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368887 (A000045 (n + 4) - A182172 n).toNat

end

end A390129.P8265261100537293522

/-! ## A390129.P15055153678311232020

`A368887(xor(A000045(n+4), A182172(n)))`
-/

namespace A390129.P15055153678311232020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368887 (Int.xor (A000045 (n + 4)) (A182172 n)).toNat

end

end A390129.P15055153678311232020

/-!
# A390130: Number of 4-partitions of the fan graph F_{1,n} where every triangle uses exactly 2 parts.

The programs for A390130, there is no canonical definition to state claims against.
-/

/-! ## A390130.P10564683684665949303

`A298120(A108870(n))`
-/

namespace A390130.P10564683684665949303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298120 (A108870 n).toNat

end

end A390130.P10564683684665949303

/-!
# A390131: Number of proper 5-partitions of the fan graph on n vertices such that every triangle uses exactly 2 colors.

The programs for A390131, there is no canonical definition to state claims against.
-/

/-! ## A390131.P427127394692667440

`A124739(A112306(n+1))`
-/

namespace A390131.P427127394692667440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124739 (A112306 (n + 1)).toNat

end

end A390131.P427127394692667440

/-!
# A390132: G.f. A(x) satisfies A(x) = 1 + x/(1+x^2)^2 * A(x)^2.

The programs for A390132, there is no canonical definition to state claims against.
-/

/-! ## A390132.P13387147683134257356

`A304231(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A390132.P13387147683134257356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  A304231 (a (n - 1)).toNat

end

end A390132.P13387147683134257356

/-! ## A390132.P976787624295435729

`A005041(∑[A000166(n)])`
-/

namespace A390132.P976787624295435729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390132.P976787624295435729

/-! ## A390132.P4507792585067772056

`A242441(A214002(n+1))`
-/

namespace A390132.P4507792585067772056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242441 (A214002 (n + 1)).toNat

end

end A390132.P4507792585067772056

/-! ## A390132.P10547313099626768371

`A338521(A265857(n+1))`
-/

namespace A390132.P10547313099626768371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338521 (A265857 (n + 1)).toNat

end

end A390132.P10547313099626768371

/-!
# A390133: G.f. A(x) satisfies A(x) = 1 + x/(1+x^2)^3 * A(x)^2.

The programs for A390133, there is no canonical definition to state claims against.
-/

/-! ## A390133.P6709243844999149029

`A122805(A098407(n))`
-/

namespace A390133.P6709243844999149029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122805 (A098407 n).toNat

end

end A390133.P6709243844999149029

/-! ## A390133.P6843440953658150

`A303378(A070765(n+2))`
-/

namespace A390133.P6843440953658150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303378 (A070765 (n + 2)).toNat

end

end A390133.P6843440953658150

/-! ## A390133.P15318135966355981919

`A232990(A007097(n))+A002995(n)`
-/

namespace A390133.P15318135966355981919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232990 (A007097 n).toNat + A002995 n

end

end A390133.P15318135966355981919

/-! ## A390133.P5882048550727647523

`A108392(A185030(n))-A045763(n+1)`
-/

namespace A390133.P5882048550727647523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108392 (A185030 n).toNat - A045763 (n + 1)

end

end A390133.P5882048550727647523

/-! ## A390133.P4140166632496858118

`lcm(A002995(n), A349163(A378980(3*(n+1))))`
-/

namespace A390133.P4140166632496858118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002995 n) (A349163 (A378980 (3 * (n + 1))).toNat)

end

end A390133.P4140166632496858118

/-!
# A390135: G.f. A(x) satisfies A(x) = 1 + x/(1+x^3)^3 * A(x)^2.

The programs for A390135, there is no canonical definition to state claims against.
-/

/-! ## A390135.P11787758347187371579

`A178210(A360810(n+1))`
-/

namespace A390135.P11787758347187371579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A360810 (n + 1)).toNat

end

end A390135.P11787758347187371579

/-!
# A390136: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x/(1+x)) ).

The programs for A390136, there is no canonical definition to state claims against.
-/

/-! ## A390136.P18118183607679520239

`A243954(n+1)/(n+1)`
-/

namespace A390136.P18118183607679520239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243954 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A390136.P18118183607679520239

/-!
# A390137: Expansion of 1/((1-5*x) * sqrt(1+4*x)).

The programs for A390137, there is no canonical definition to state claims against.
-/

/-! ## A390137.P16503320988515313399

`A169633(A041571(n))`
-/

namespace A390137.P16503320988515313399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169633 (A041571 n).toNat

end

end A390137.P16503320988515313399

/-!
# A390138: a(n) is the largest integer k such that there is an integer m with exactly n nonunitary prime factors and m + A005117(i) is squarefree for 1 <= i <= k.

The programs for A390138, there is no canonical definition to state claims against.
-/

/-! ## A390138.P9621411665792967388

`A013928(A390241(n))`
-/

namespace A390138.P9621411665792967388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A390241 n).toNat

end

end A390138.P9621411665792967388

/-!
# A390140: Centered truncated cube numbers: a(n) = (46*n^3 - 69*n^2 + 29*n - 3)/3.

The programs for A390140, the canonical program `A390140.P8946685385162124716` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390140 has offset 1).

The definition of A390140 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(46*(n+1)^3-69*(n+1)²+29*(n+1)-3)/3` (program `A390140.P7806592582672074501`, by `A390140.P7806592582672074501.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390140.P9609206854009128323

`(2*(n+1)-1)*(23*(n+1)²-23*(n+1)+3)/3`
-/

namespace A390140.P9609206854009128323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) * (((23 * (n + 1) ^ 2 : ℤ) - (23 * (n + 1) : ℤ) + 3 : ℚ) / 3)

end

end A390140.P9609206854009128323

namespace A390140

/-- `(2*(n+1)-1)*(23*(n+1)²-23*(n+1)+3)/3` -/
def P9609206854009128323.Spec : Prop :=
  ∀ n, P9609206854009128323.a n = (A390140 (n + 1) : ℚ)

theorem P9609206854009128323.correct : P9609206854009128323.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A390140, Nat.add_sub_cancel, A390140.P9609206854009128323.a, A390140.P8946685385162124716.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A390140, Nat.add_sub_cancel, A390140.P9609206854009128323.a, A390140.P8946685385162124716.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A390140

/-! ## A390140.P7806592582672074501

`(46*(n+1)^3-69*(n+1)²+29*(n+1)-3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390140.P7806592582672074501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((46 * (n + 1) ^ 3 : ℤ) - (69 * (n + 1) ^ 2 : ℤ) + (29 * (n + 1) : ℤ) - 3 : ℚ) / 3

end

end A390140.P7806592582672074501

namespace A390140

/-- `(46*(n+1)^3-69*(n+1)²+29*(n+1)-3)/3` -/
def P7806592582672074501.Spec : Prop :=
  ∀ n, P7806592582672074501.a n = (A390140 (n + 1) : ℚ)

theorem P7806592582672074501.correct : P7806592582672074501.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A390140, Nat.add_sub_cancel, A390140.P7806592582672074501.a, A390140.P8946685385162124716.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A390140, Nat.add_sub_cancel, A390140.P7806592582672074501.a, A390140.P8946685385162124716.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A390140

/-! ## A390140.P8946685385162124716

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=49, a(2)=235, a(3)=651`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390140

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8946685385162124716.Spec : Prop :=
  ∀ n, P8946685385162124716.a n = A390140 (n + 1)

theorem P8946685385162124716.correct : P8946685385162124716.Spec := by
  intro n
  simp only [A390140, Nat.add_sub_cancel]

end A390140

/-! ## A390140.P2097182461977580571

`∑[A005911(n)]`
-/

namespace A390140.P2097182461977580571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390140.P2097182461977580571

namespace A390140

/-- `∑[A005911(n)]` -/
def P2097182461977580571.Spec : Prop :=
  ∀ n, P2097182461977580571.a n = A390140 (n + 1)

end A390140

/-! ## A390140.P2522578276214760585

`∑[A158632(n)]+n`
-/

namespace A390140.P2522578276214760585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A390140.P2522578276214760585

namespace A390140

/-- `∑[A158632(n)]+n` -/
def P2522578276214760585.Spec : Prop :=
  ∀ n, P2522578276214760585.a n = A390140 (n + 1)

end A390140

/-! ## A390140.P18260916392852788800

`A100146(n+1)+A007588(n)`
-/

namespace A390140.P18260916392852788800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100146 (n + 1) + A007588 n

end

end A390140.P18260916392852788800

namespace A390140

/-- `A100146(n+1)+A007588(n)` -/
def P18260916392852788800.Spec : Prop :=
  ∀ n, P18260916392852788800.a n = A390140 (n + 1)

end A390140

/-! ## A390140.P14073474933466172693

`A193250(n+1)-A006331(n)`
-/

namespace A390140.P14073474933466172693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193250 (n + 1) - A006331 n

end

end A390140.P14073474933466172693

namespace A390140

/-- `A193250(n+1)-A006331(n)` -/
def P14073474933466172693.Spec : Prop :=
  ∀ n, P14073474933466172693.a n = A390140 (n + 1)

end A390140

/-! ## A390140.P3003845239601791777

`A005917(n+1)+A193228(n+1)-A005894(n)`
-/

namespace A390140.P3003845239601791777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1) + (A193228 (n + 1) - A005894 n)

end

end A390140.P3003845239601791777

namespace A390140

/-- `A005917(n+1)+A193228(n+1)-A005894(n)` -/
def P3003845239601791777.Spec : Prop :=
  ∀ n, P3003845239601791777.a n = A390140 (n + 1)

end A390140

/-!
# A390142: The number of tiles composed of n equilateral squares and triangles.

The programs for A390142, there is no canonical definition to state claims against.
-/

/-! ## A390142.P9158796164244767834

`A302497(A002605(n)+1)`
-/

namespace A390142.P9158796164244767834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (A002605 n + 1).toNat

end

end A390142.P9158796164244767834

/-! ## A390142.P11418204495479972277

`A302602(A049958(n+1))`
-/

namespace A390142.P11418204495479972277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302602 (A049958 (n + 1)).toNat

end

end A390142.P11418204495479972277

/-!
# A390147: Expansion of g^2/(1 - x^2*g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A390147, there is no canonical definition to state claims against.
-/

/-! ## A390147.P15895393292794132833

`A391080(n)-A071842(A023998(n))`
-/

namespace A390147.P15895393292794132833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391080 n - A071842 (A023998 n).toNat

end

end A390147.P15895393292794132833

/-!
# A390149: Number of rhombus tilings of a triangular shape formed by n*(n+1)/2 adjacent hexagons.

The programs for A390149, there is no canonical definition to state claims against.
-/

/-! ## A390149.P17059456177358999346

`A032742(A125861(n)+A002110(n))`
-/

namespace A390149.P17059456177358999346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A125861 n + A002110 n).toNat

end

end A390149.P17059456177358999346

/-!
# A390153: Denominator of average duration of the game "Tug of Luck" played with n coins.

The programs for A390153, there is no canonical definition to state claims against.
-/

/-! ## A390153.P15373109135098858781

`A172307(A084264(n))`
-/

namespace A390153.P15373109135098858781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172307 (A084264 n).toNat

end

end A390153.P15373109135098858781

/-! ## A390153.P5629583954932018899

`∩[A029746(n), A263883(n)]`
-/

namespace A390153.P5629583954932018899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263883 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390153.P5629583954932018899

/-!
# A390155: Numbers of the form (3*m)^k - 1, where m >= 1 and k >= 2.

The programs for A390155, there is no canonical definition to state claims against.
-/

/-! ## A390155.P17187359030011050768

`A353238(n+1)-1`
-/

namespace A390155.P17187359030011050768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1) - 1

end

end A390155.P17187359030011050768

/-! ## A390155.P7880951002889373828

`∩[A045542(n+1), A017257(n)]`
-/

namespace A390155.P7880951002889373828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390155.P7880951002889373828

/-! ## A390155.P10596031289636565375

`∩[A045542(n+1), A305496(n+1)]`
-/

namespace A390155.P10596031289636565375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390155.P10596031289636565375

/-! ## A390155.P14146754189756530517

`∩[A026231(n+1), A045542(n+1)]`
-/

namespace A390155.P14146754189756530517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390155.P14146754189756530517

/-! ## A390155.P4094082785681676950

`A066182(A353238(n+1))`
-/

namespace A390155.P4094082785681676950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A353238 (n + 1)).toNat

end

end A390155.P4094082785681676950

/-! ## A390155.P1110750886866903453

`∩[A045542(n+1), A253195(n+1)]`
-/

namespace A390155.P1110750886866903453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390155.P1110750886866903453

/-! ## A390155.P13716419024090830607

`∩[A045542(n+1), A016789(n)]`
-/

namespace A390155.P13716419024090830607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390155.P13716419024090830607

/-! ## A390155.P2870782655470328996

`∩[A045542(n+1), A061570(n+1)]`
-/

namespace A390155.P2870782655470328996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390155.P2870782655470328996

/-! ## A390155.P10138447786733121586

`∩[A045542(n+1), A180486(n+1)]`
-/

namespace A390155.P10138447786733121586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390155.P10138447786733121586

/-!
# A390156: Numbers of the form (3*m + 1)^k - 1, where m >= 1 and k >= 2.

The programs for A390156, there is no canonical definition to state claims against.
-/

/-! ## A390156.P11903351190196942586

`lt[A083552(A002491(n+1)), A175070(n+1)]`
-/

namespace A390156.P11903351190196942586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083552 (A002491 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390156.P11903351190196942586

/-!
# A390157: Numbers of the form (3*m + 2)^k - 1, where m >= 0 and k >= 2, that are not of the form (3*m' + 1)^k' - 1 for any m' >= 1 and k' >= 2.

The programs for A390157, there is no canonical definition to state claims against.
-/

/-! ## A390157.P8910876280632819522

`eq[A179773(n+1), A318952(n+1)]`
-/

namespace A390157.P8910876280632819522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390157.P8910876280632819522

/-! ## A390157.P8646057132665713931

`eq[A058959(A045778(n+1)), A195017(n+1)]`
-/

namespace A390157.P8646057132665713931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058959 (A045778 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390157.P8646057132665713931

/-!
# A390161: Triangle read by rows: T(n,k) = ceiling(binomial(n, k) * 2^k / (2*n + 1)).

The programs for A390161, there is no canonical definition to state claims against.
-/

/-! ## A390161.P2749543279725632824

`A193736(n)+A063524(A115981(n))`
-/

namespace A390161.P2749543279725632824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193736 n + A063524 (A115981 n).toNat

end

end A390161.P2749543279725632824

/-!
# A390162: Number of nonisomorphic semigroups with n elements satisfying the equation xyz = xz.

The programs for A390162, there is no canonical definition to state claims against.
-/

/-! ## A390162.P12331549044853461096

`A335376(A306319(n))`
-/

namespace A390162.P12331549044853461096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335376 (A306319 n).toNat

end

end A390162.P12331549044853461096

/-! ## A390162.P2829583003698996665

`A338331(A319066(n))`
-/

namespace A390162.P2829583003698996665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (A319066 n).toNat

end

end A390162.P2829583003698996665

/-! ## A390162.P10193631249736359201

`A368728(A323429(n))`
-/

namespace A390162.P10193631249736359201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (A323429 n).toNat

end

end A390162.P10193631249736359201

/-! ## A390162.P14784405886589996099

`A326977(A290148(n+1)+A004526(n))`
-/

namespace A390162.P14784405886589996099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326977 (A290148 (n + 1) + A004526 n).toNat

end

end A390162.P14784405886589996099

/-!
# A390163: Number of nonisomorphic semigroups with n elements satisfying the equation xyz = xy.

The programs for A390163, there is no canonical definition to state claims against.
-/

/-! ## A390163.P6619905737204911291

`A375502(A042555(n))`
-/

namespace A390163.P6619905737204911291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375502 (A042555 n).toNat

end

end A390163.P6619905737204911291

/-!
# A390164: Number of nonisomorphic magmas with n elements satisfying the equation (xy)z = xy.

The programs for A390164, there is no canonical definition to state claims against.
-/

/-! ## A390164.P12789017020338945632

`filter[A165545(n), A075439(#)]`
-/

namespace A390164.P12789017020338945632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075439 (f1 j).toNat = 1) n)

end

end A390164.P12789017020338945632

/-!
# A390165: Number of labeled semigroups with n elements satisfying the equation xyz = xy.

The programs for A390165, there is no canonical definition to state claims against.
-/

/-! ## A390165.P687319250535036520

`A385178(A165433(n+1))`
-/

namespace A390165.P687319250535036520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385178 (A165433 (n + 1)).toNat

end

end A390165.P687319250535036520

/-!
# A390166: Number of edge-weighted n-regular multigraphs on 2 unlabeled vertices with total edge weight n.

The programs for A390166, there is no canonical definition to state claims against.
-/

/-! ## A390166.P4872801859770697360

`A390167(∑[4*n])`
-/

namespace A390166.P4872801859770697360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390167 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A390166.P4872801859770697360

/-! ## A390166.P2543873213942161854

`A183992(A000678(n+1))`
-/

namespace A390166.P2543873213942161854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183992 (A000678 (n + 1)).toNat

end

end A390166.P2543873213942161854

/-! ## A390166.P739066915727240641

`A183992(A032175(n+1))`
-/

namespace A390166.P739066915727240641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183992 (A032175 (n + 1)).toNat

end

end A390166.P739066915727240641

/-!
# A390169: G.f. A(x) satisfies A(x) = 1 + x/(1+x^2) * A(x)^3.

The programs for A390169, there is no canonical definition to state claims against.
-/

/-! ## A390169.P17331070311439750052

`A057907(A149048(n))`
-/

namespace A390169.P17331070311439750052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057907 (A149048 n).toNat

end

end A390169.P17331070311439750052

/-! ## A390169.P11592925326707503188

`A001462(A141200(n+1)²)`
-/

namespace A390169.P11592925326707503188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A141200 (n + 1) ^ 2).toNat

end

end A390169.P11592925326707503188

/-!
# A390170: G.f. A(x) satisfies A(x) = 1 + x/(1+x^2)^2 * A(x)^3.

The programs for A390170, there is no canonical definition to state claims against.
-/

/-! ## A390170.P10119372330823609151

`A194986(A238639(n+1))`
-/

namespace A390170.P10119372330823609151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (A238639 (n + 1)).toNat

end

end A390170.P10119372330823609151

/-! ## A390170.P17510110522126420714

`A051742((n+1)^n+1)`
-/

namespace A390170.P17510110522126420714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 ((n + 1) ^ n + 1)

end

end A390170.P17510110522126420714

/-!
# A390172: G.f. A(x) satisfies A(x) = 1 + x/(1+x^3)^2 * A(x)^3.

The programs for A390172, there is no canonical definition to state claims against.
-/

/-! ## A390172.P10738225707898330765

`filter[A389944(n), A050073(#)]`
-/

namespace A390172.P10738225707898330765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A050073 (f1 j).toNat = 1) n)

end

end A390172.P10738225707898330765

/-! ## A390172.P1859818976361763985

`filter[A389944(n), A070909(#)]`
-/

namespace A390172.P1859818976361763985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070909 (f1 j).toNat = 1) n)

end

end A390172.P1859818976361763985

/-! ## A390172.P11655335431641272896

`filter[A389944(n), A071024(#)]`
-/

namespace A390172.P11655335431641272896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071024 (f1 j).toNat = 1) n)

end

end A390172.P11655335431641272896

/-!
# A390173: Smallest integer k with exactly n distinct prime factors such that the sum of those primes equals the sum of the exponents in its prime factorization.

The programs for A390173, there is no canonical definition to state claims against.
-/

/-! ## A390173.P4997777104451970628

`A002110(n+1)*2^(A007504(n+1)-(n+1))`
-/

namespace A390173.P4997777104451970628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) * (2 : ℚ) ^ (A007504 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A390173.P4997777104451970628

/-! ## A390173.P9725936923419608205

`∏[A299795(n+1)]`
-/

namespace A390173.P9725936923419608205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A390173.P9725936923419608205

/-!
# A390180: Powers k^m, m > 1, such that k is in A303946 and A053669(k) < A006530(k).

The programs for A390180, there is no canonical definition to state claims against.
-/

/-! ## A390180.P2124493933989492916

`∪[A389341(n+1), A389678(n+1)]`
-/

namespace A390180.P2124493933989492916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390180.P2124493933989492916

/-! ## A390180.P17051498683071734302

`∩[A380456(n+1), A389864(n+1)]`
-/

namespace A390180.P17051498683071734302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390180.P17051498683071734302

/-! ## A390180.P14157336278584165973

`∩[A359280(n+1), A380456(n+1)]`
-/

namespace A390180.P14157336278584165973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390180.P14157336278584165973

/-! ## A390180.P10477540633378813711

`∩[A369417(n+1), A389864(n+1)]`
-/

namespace A390180.P10477540633378813711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390180.P10477540633378813711

/-! ## A390180.P14972177150412059194

`∩[A380456(n+1), A389752(n+1)]`
-/

namespace A390180.P14972177150412059194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390180.P14972177150412059194

/-!
# A390181: Numbers not able to be represented in the form c*p^2+b for p prime, c >= 1 and 0 <= b < p.

The programs for A390181, there is no canonical definition to state claims against.
-/

/-! ## A390181.P15877672593000625144

`record[(n+1)%A133907(n+1)]`
-/

namespace A390181.P15877672593000625144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A133907 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390181.P15877672593000625144

/-! ## A390181.P18146274754393375287

`∑[A187818(A000930(n))]`
-/

namespace A390181.P18146274754393375287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187818 (A000930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390181.P18146274754393375287

/-! ## A390181.P12273694277243583330

`A117386(A002964(n+1))`
-/

namespace A390181.P12273694277243583330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117386 (A002964 (n + 1)).toNat

end

end A390181.P12273694277243583330

/-! ## A390181.P13781641179605777033

`eq[A075866(n), A079813(n+1)]`
-/

namespace A390181.P13781641179605777033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390181.P13781641179605777033

/-! ## A390181.P18110166453687514275

`∩[A030051(n+1), A052499(n)]`
-/

namespace A390181.P18110166453687514275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390181.P18110166453687514275

/-!
# A390186: Numbers k such that |s(k) - k| < |s(s(k)) - s(k)|, where s(k) is the sum of the proper divisors of k.

The programs for A390186, there is no canonical definition to state claims against.
-/

/-! ## A390186.P5007331483310424701

`eq[A039951(n+1), A082076(A020639(n+1))]`
-/

namespace A390186.P5007331483310424701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082076 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390186.P5007331483310424701

/-!
# A390187: Minimum number of distinct consecutive sums of a permutation of [n].

The programs for A390187, there is no canonical definition to state claims against.
-/

/-! ## A390187.P17410914863328671513

`A305821(A001519(n))+A029899(n)`
-/

namespace A390187.P17410914863328671513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305821 (A001519 n).toNat + A029899 n

end

end A390187.P17410914863328671513

/-! ## A390187.P15395961697124391352

`A305821(A029855(n+5))+A029899(n)`
-/

namespace A390187.P15395961697124391352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305821 (A029855 (n + 5)).toNat + A029899 n

end

end A390187.P15395961697124391352

/-!
# A390188: Numbers of the form p^q with odd primes p != q.

The programs for A390188, there is no canonical definition to state claims against.
-/

/-! ## A390188.P4506579823912462960

`∩[A062307(n+1), A088248(n+1)]`
-/

namespace A390188.P4506579823912462960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390188.P4506579823912462960

/-! ## A390188.P9489193749965961723

`∩[A088248(n+1), A114130(n+1)]`
-/

namespace A390188.P9489193749965961723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390188.P9489193749965961723

/-! ## A390188.P5134654544868372611

`∩[A114130(n+1), A369118(n+1)]`
-/

namespace A390188.P5134654544868372611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390188.P5134654544868372611

/-! ## A390188.P3613089892942132418

`∩[A114130(n+1), A381824(n+1)]`
-/

namespace A390188.P3613089892942132418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390188.P3613089892942132418

/-! ## A390188.P11934220149633949652

`∩[A114130(n+1), A381825(n+1)]`
-/

namespace A390188.P11934220149633949652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390188.P11934220149633949652

/-!
# A390190: a(n) is the number of square tiles in ring n (n >= 0) symmetric about a vertex of the hyperbolic regular tiling with Schläfli symbol {4,5}.

The programs for A390190, the canonical program `A390190.P6998578419688527072` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390190 has offset 0).

The definition of A390190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390190.P6998578419688527072

`4*a(n-1)-a(n-2)` with `a(0)=5, a(1)=25`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390190

/-- `4*a(n-1)-a(n-2)` -/
def P6998578419688527072.Spec : Prop :=
  ∀ n, P6998578419688527072.a n = A390190 n

theorem P6998578419688527072.correct : P6998578419688527072.Spec := by
  intro n
  simp only [A390190]

end A390190

/-! ## A390190.P11253259761346664988

`5*A001834(n)`
-/

namespace A390190.P11253259761346664988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001834 n

end

end A390190.P11253259761346664988

namespace A390190

/-- `5*A001834(n)` -/
def P11253259761346664988.Spec : Prop :=
  ∀ n, P11253259761346664988.a n = A390190 n

end A390190

/-! ## A390190.P8856970822294118045

`Δ[5*A001075(n)]`
-/

namespace A390190.P8856970822294118045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A390190.P8856970822294118045

namespace A390190

/-- `Δ[5*A001075(n)]` -/
def P8856970822294118045.Spec : Prop :=
  ∀ n, P8856970822294118045.a n = A390190 n

end A390190

/-! ## A390190.P15818210288860071778

`Δ[5*A092184(n)]`
-/

namespace A390190.P15818210288860071778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A092184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A390190.P15818210288860071778

namespace A390190

/-- `Δ[5*A092184(n)]` -/
def P15818210288860071778.Spec : Prop :=
  ∀ n, P15818210288860071778.a n = A390190 n

end A390190

/-! ## A390190.P3239832576202100350

`Δ[5*A121401(n)]`
-/

namespace A390190.P3239832576202100350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A121401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A390190.P3239832576202100350

namespace A390190

/-- `Δ[5*A121401(n)]` -/
def P3239832576202100350.Spec : Prop :=
  ∀ n, P3239832576202100350.a n = A390190 n

end A390190

/-! ## A390190.P10656024535064883800

`5*A108412(2*n)`
-/

namespace A390190.P10656024535064883800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A108412 (2 * n)

end

end A390190.P10656024535064883800

namespace A390190

/-- `5*A108412(2*n)` -/
def P10656024535064883800.Spec : Prop :=
  ∀ n, P10656024535064883800.a n = A390190 n

end A390190

/-! ## A390190.P4662456137289300731

`5*A002531(2*n+1)`
-/

namespace A390190.P4662456137289300731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A002531 (2 * n + 1)

end

end A390190.P4662456137289300731

namespace A390190

/-- `5*A002531(2*n+1)` -/
def P4662456137289300731.Spec : Prop :=
  ∀ n, P4662456137289300731.a n = A390190 n

end A390190

/-! ## A390190.P13655997038067680419

`5*A082630(2*n+1)`
-/

namespace A390190.P13655997038067680419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A082630 (2 * n + 1)

end

end A390190.P13655997038067680419

namespace A390190

/-- `5*A082630(2*n+1)` -/
def P13655997038067680419.Spec : Prop :=
  ∀ n, P13655997038067680419.a n = A390190 n

end A390190

/-! ## A390190.P12329344794193033013

`5*A143643(2*n+1)`
-/

namespace A390190.P12329344794193033013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A143643 (2 * n + 1)

end

end A390190.P12329344794193033013

namespace A390190

/-- `5*A143643(2*n+1)` -/
def P12329344794193033013.Spec : Prop :=
  ∀ n, P12329344794193033013.a n = A390190 n

end A390190

/-! ## A390190.P12847653527018330070

`A082841(n+1)-2*A003500(n)`
-/

namespace A390190.P12847653527018330070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 (n + 1) - 2 * A003500 n

end

end A390190.P12847653527018330070

namespace A390190

/-- `A082841(n+1)-2*A003500(n)` -/
def P12847653527018330070.Spec : Prop :=
  ∀ n, P12847653527018330070.a n = A390190 n

end A390190

/-! ## A390190.P13778355683489801194

`A082841(n+1)-A321119(2*n)`
-/

namespace A390190.P13778355683489801194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 (n + 1) - A321119 (2 * n)

end

end A390190.P13778355683489801194

namespace A390190

/-- `A082841(n+1)-A321119(2*n)` -/
def P13778355683489801194.Spec : Prop :=
  ∀ n, P13778355683489801194.a n = A390190 n

end A390190

/-! ## A390190.P16476015315803323673

`A001834(n+1)+A005320(n)+A005320(n)`
-/

namespace A390190.P16476015315803323673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 (n + 1) + (A005320 n + A005320 n)

end

end A390190.P16476015315803323673

namespace A390190

/-- `A001834(n+1)+A005320(n)+A005320(n)` -/
def P16476015315803323673.Spec : Prop :=
  ∀ n, P16476015315803323673.a n = A390190 n

end A390190

/-! ## A390190.P13622130151346211036

`A144720(n+1)+A055845(n)+A054485(n)`
-/

namespace A390190.P13622130151346211036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144720 (n + 1) + (A055845 n + A054485 n)

end

end A390190.P13622130151346211036

namespace A390190

/-- `A144720(n+1)+A055845(n)+A054485(n)` -/
def P13622130151346211036.Spec : Prop :=
  ∀ n, P13622130151346211036.a n = A390190 n

end A390190

/-! ## A390190.P9243997924562589885

`A001352(n+1)+A001834(n)-A003500(n)`
-/

namespace A390190.P9243997924562589885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001352 (n + 1) + (A001834 n - A003500 n)

end

end A390190.P9243997924562589885

namespace A390190

/-- `A001352(n+1)+A001834(n)-A003500(n)` -/
def P9243997924562589885.Spec : Prop :=
  ∀ n, P9243997924562589885.a n = A390190 n

end A390190

/-! ## A390190.P8105687361299616931

`5*A173299(2*n+1)`
-/

namespace A390190.P8105687361299616931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A173299 (2 * n + 1)

end

end A390190.P8105687361299616931

namespace A390190

/-- `5*A173299(2*n+1)` -/
def P8105687361299616931.Spec : Prop :=
  ∀ n, P8105687361299616931.a n = A390190 n

end A390190

/-!
# A390191: Number of asymmetric polyominoes in {4,5} tessellation of the hyperbolic plane.

The programs for A390191, there is no canonical definition to state claims against.
-/

/-! ## A390191.P15431868252887659946

`A303936(A000667(n))-A004277(n)`
-/

namespace A390191.P15431868252887659946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303936 (A000667 n).toNat - A004277 n

end

end A390191.P15431868252887659946

/-! ## A390191.P919595533046102425

`A333233(n)-A000005(A001147(n))`
-/

namespace A390191.P919595533046102425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333233 n - A000005 (A001147 n).toNat

end

end A390191.P919595533046102425

/-! ## A390191.P15926092512270811849

`A030307(A364734(n))-A028421(n)`
-/

namespace A390191.P15926092512270811849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030307 (A364734 n).toNat - A028421 n

end

end A390191.P15926092512270811849

/-!
# A390192: Number of symmetric polyominoes in {4,5} tessellation of the hyperbolic plane.

The programs for A390192, there is no canonical definition to state claims against.
-/

/-! ## A390192.P10337318504529546597

`A119611(n+1)-A390191(n+1)`
-/

namespace A390192.P10337318504529546597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119611 (n + 1) - A390191 (n + 1)

end

end A390192.P10337318504529546597

/-! ## A390192.P17367381255999099569

`A358521(A274174(n))-A325695(n)`
-/

namespace A390192.P17367381255999099569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358521 (A274174 n).toNat - A325695 n

end

end A390192.P17367381255999099569

/-! ## A390192.P13691360611372914149

`xor(A337683(A337717(n)), A337716(n))`
-/

namespace A390192.P13691360611372914149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A337683 (A337717 n).toNat) (A337716 n)

end

end A390192.P13691360611372914149

/-! ## A390192.P7465569888117790408

`A114994(A089259(n)%A363373(3*(n+1)))`
-/

namespace A390192.P7465569888117790408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 (Int.tmod (A089259 n) (A363373 (3 * (n + 1)))).toNat

end

end A390192.P7465569888117790408

/-!
# A390193: Number of achiral polyominoes in {4,5} tessellation of the hyperbolic plane.

The programs for A390193, there is no canonical definition to state claims against.
-/

/-! ## A390193.P11803652186068847896

`A119611(n+1)-A390194(n+1)`
-/

namespace A390193.P11803652186068847896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119611 (n + 1) - A390194 (n + 1)

end

end A390193.P11803652186068847896

/-!
# A390194: Number of chiral polyominoes in {4,5} tessellation of the hyperbolic plane.

The programs for A390194, there is no canonical definition to state claims against.
-/

/-! ## A390194.P17451045736410031573

`A090620(A150765(n))`
-/

namespace A390194.P17451045736410031573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A150765 n).toNat

end

end A390194.P17451045736410031573

/-! ## A390194.P723381526506120071

`A054900(A007163(n+1))`
-/

namespace A390194.P723381526506120071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A007163 (n + 1)).toNat

end

end A390194.P723381526506120071

/-! ## A390194.P8736763924787588748

`A070106(A149480(n+1))`
-/

namespace A390194.P8736763924787588748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (A149480 (n + 1)).toNat

end

end A390194.P8736763924787588748

/-!
# A390195: a(n) is the number of n-celled treelike polyominoes in the {4,5} tessellation of the hyperbolic plane.

The programs for A390195, there is no canonical definition to state claims against.
-/

/-! ## A390195.P1210428332964945244

`A026834(A150207(n))`
-/

namespace A390195.P1210428332964945244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A150207 n).toNat

end

end A390195.P1210428332964945244

/-! ## A390195.P5646542540870461190

`A191795(A165137(n))`
-/

namespace A390195.P5646542540870461190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191795 (A165137 n).toNat

end

end A390195.P5646542540870461190

/-! ## A390195.P14232188742460851782

`A108141(A300042(n))`
-/

namespace A390195.P14232188742460851782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A300042 n).toNat

end

end A390195.P14232188742460851782

/-!
# A390196: a(n) is the number of n-celled snake polyominoes in the {4,5} tessellation of the hyperbolic plane.

The programs for A390196, there is no canonical definition to state claims against.
-/

/-! ## A390196.P8126569914540798892

`A371587(A155020(n))`
-/

namespace A390196.P8126569914540798892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A155020 n).toNat

end

end A390196.P8126569914540798892

/-! ## A390196.P16034840806447248761

`A359634(A006535(n+1))`
-/

namespace A390196.P16034840806447248761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359634 (A006535 (n + 1)).toNat

end

end A390196.P16034840806447248761

/-!
# A390197: a(n) is the number of n-celled polyominoes with holes in the {4,5} tessellation of the hyperbolic plane.

The programs for A390197, there is no canonical definition to state claims against.
-/

/-! ## A390197.P17813259559289078622

`A210716(A109543(n))`
-/

namespace A390197.P17813259559289078622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (A109543 n).toNat

end

end A390197.P17813259559289078622

/-! ## A390197.P5484917767200768188

`A305925(A036424(n))`
-/

namespace A390197.P5484917767200768188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305925 (A036424 n).toNat

end

end A390197.P5484917767200768188

/-! ## A390197.P17576178059572425403

`A305925(A036633(n))`
-/

namespace A390197.P17576178059572425403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305925 (A036633 n).toNat

end

end A390197.P17576178059572425403

/-! ## A390197.P6612906658112987470

`A305925(A036640(n))`
-/

namespace A390197.P6612906658112987470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305925 (A036640 n).toNat

end

end A390197.P6612906658112987470

/-! ## A390197.P1166826867546879006

`A305925(A036647(n))`
-/

namespace A390197.P1166826867546879006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305925 (A036647 n).toNat

end

end A390197.P1166826867546879006

/-!
# A390198: a(n) is the number of n-celled snake polyominoes with holes in the {4,5} tessellation of the hyperbolic plane.

The programs for A390198, there is no canonical definition to state claims against.
-/

/-! ## A390198.P16396214925960551026

`A026816(lt[A357645(3*n+1), A001462(n+1)])`
-/

namespace A390198.P16396214925960551026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357645 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390198.P16396214925960551026

/-!
# A390199: a(n) is the number of concave n-celled polyominoes in the {4,5} tessellation of the hyperbolic plane.

The programs for A390199, there is no canonical definition to state claims against.
-/

/-! ## A390199.P17169773515801332579

`A130575(C(n, 6))`
-/

namespace A390199.P17169773515801332579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130575 (Nat.choose n 6)

end

end A390199.P17169773515801332579

/-! ## A390199.P6420652323321809677

`A327990(C(n+2, 8))`
-/

namespace A390199.P6420652323321809677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327990 (Nat.choose (n + 2) 8)

end

end A390199.P6420652323321809677

/-! ## A390199.P11882415152595659305

`A130575(A000579(n))`
-/

namespace A390199.P11882415152595659305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130575 (A000579 n).toNat

end

end A390199.P11882415152595659305

/-! ## A390199.P2926483991440131974

`A089860(A137746(n))`
-/

namespace A390199.P2926483991440131974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089860 (A137746 n).toNat

end

end A390199.P2926483991440131974

/-! ## A390199.P18507528631501869

`A239689(A035055(n))`
-/

namespace A390199.P18507528631501869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239689 (A035055 n).toNat

end

end A390199.P18507528631501869

