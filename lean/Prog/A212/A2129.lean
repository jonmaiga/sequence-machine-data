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
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A212900: Number of (w,x,y,z) with all terms in {0,...,n} and distinct consecutive gap sizes.

The programs for A212900, there is no canonical definition to state claims against.
-/

/-! ## A212900.P11194742829874203365

`A342853(3*n+2)+A206918(n)`
-/

namespace A212900.P11194742829874203365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342853 (3 * n + 2) + A206918 n

end

end A212900.P11194742829874203365

/-!
# A212901: Number of (w,x,y,z) with all terms in {0,...,n} and equal consecutive gap sizes.

The programs for A212901, the canonical program `A212901.P6868556655339861268` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212901 has offset 0).

The definition of A212901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212901.P6868556655339861268

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=26, a(4)=45, a(5)=66`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212901

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P6868556655339861268.Spec : Prop :=
  ∀ n, P6868556655339861268.a n = A212901 n

theorem P6868556655339861268.correct : P6868556655339861268.Spec := by
  intro n
  simp only [A212901]

end A212901

/-! ## A212901.P2807777802078743318

`A317298(n)+A032765(n)`
-/

namespace A212901.P2807777802078743318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317298 n + A032765 n

end

end A212901.P2807777802078743318

namespace A212901

/-- `A317298(n)+A032765(n)` -/
def P2807777802078743318.Spec : Prop :=
  ∀ n, P2807777802078743318.a n = A212901 n

end A212901

/-! ## A212901.P12076051080642736646

`A183859(n+1)+A077221(n)`
-/

namespace A212901.P12076051080642736646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + A077221 n

end

end A212901.P12076051080642736646

namespace A212901

/-- `A183859(n+1)+A077221(n)` -/
def P12076051080642736646.Spec : Prop :=
  ∀ n, P12076051080642736646.a n = A212901 n

end A212901

/-! ## A212901.P14740086066734827872

`∑[A047225(n+1)+A047223(n+1)]`
-/

namespace A212901.P14740086066734827872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047225 (n + 1) + A047223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212901.P14740086066734827872

namespace A212901

/-- `∑[A047225(n+1)+A047223(n+1)]` -/
def P14740086066734827872.Spec : Prop :=
  ∀ n, P14740086066734827872.a n = A212901 n

end A212901

/-! ## A212901.P14047825024863787118

`∑[A047239(n+1)+A047217(n+1)]`
-/

namespace A212901.P14047825024863787118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 1) + A047217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212901.P14047825024863787118

namespace A212901

/-- `∑[A047239(n+1)+A047217(n+1)]` -/
def P14047825024863787118.Spec : Prop :=
  ∀ n, P14047825024863787118.a n = A212901 n

end A212901

/-! ## A212901.P6591435179826424198

`∑[A063205(n+1)]-A007310(n+1)`
-/

namespace A212901.P6591435179826424198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007310 (n + 1)

end

end A212901.P6591435179826424198

namespace A212901

/-- `∑[A063205(n+1)]-A007310(n+1)` -/
def P6591435179826424198.Spec : Prop :=
  ∀ n, P6591435179826424198.a n = A212901 n

end A212901

/-! ## A212901.P17946116976028566751

`A008810(n+1)+∑[2*A042948(n)]`
-/

namespace A212901.P17946116976028566751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212901.P17946116976028566751

namespace A212901

/-- `A008810(n+1)+∑[2*A042948(n)]` -/
def P17946116976028566751.Spec : Prop :=
  ∀ n, P17946116976028566751.a n = A212901 n

end A212901

/-! ## A212901.P16964382838321929511

`∑[A004273(∑[A220128(n)])]`
-/

namespace A212901.P16964382838321929511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212901.P16964382838321929511

namespace A212901

/-- `∑[A004273(∑[A220128(n)])]` -/
def P16964382838321929511.Spec : Prop :=
  ∀ n, P16964382838321929511.a n = A212901 n

end A212901

/-! ## A212901.P4192618809126537291

`∑[A168056(∑[A072996(n)])]`
-/

namespace A212901.P4192618809126537291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212901.P4192618809126537291

namespace A212901

/-- `∑[A168056(∑[A072996(n)])]` -/
def P4192618809126537291.Spec : Prop :=
  ∀ n, P4192618809126537291.a n = A212901 n

end A212901

/-!
# A212902: Number of (w,x,y,z) with all terms in {0,...,n} and |w-x|<|x-y|<|y-z|.

The programs for A212902, there is no canonical definition to state claims against.
-/

/-! ## A212902.P814535019099945332

`A212903(n)-A212679(n+1)`
-/

namespace A212902.P814535019099945332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212903 n - A212679 (n + 1)

end

end A212902.P814535019099945332

/-! ## A212902.P14247940486499904748

`A059995(A009859(n²))`
-/

namespace A212902.P14247940486499904748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A009859 (n ^ 2)).toNat

end

end A212902.P14247940486499904748

/-!
# A212903: Number of (w,x,y,z) with all terms in {0,...,n} and |w-x|<=|x-y|<=|y-z|.

The programs for A212903, there is no canonical definition to state claims against.
-/

/-! ## A212903.P16180708867894555937

`A212902(n)+A212679(n+1)`
-/

namespace A212903.P16180708867894555937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212902 n + A212679 (n + 1)

end

end A212903.P16180708867894555937

/-! ## A212903.P12586433741527108821

`A212682(n+1)+A212902(n)-A212681(n+1)`
-/

namespace A212903.P12586433741527108821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212682 (n + 1) + (A212902 n - A212681 (n + 1))

end

end A212903.P12586433741527108821

/-!
# A212904: Number of (w,x,y,z) with all terms in {0,...,n} and |w-x|+|x-y+|y-z|=n.

The programs for A212904, there is no canonical definition to state claims against.
-/

/-! ## A212904.P17893148934940795833

`A328596(2^n+n²+n)`
-/

namespace A212904.P17893148934940795833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (2 ^ n + n ^ 2 + n)

end

end A212904.P17893148934940795833

/-!
# A212905: Number of (w,x,y,z) with all terms in {0,...,n} and |w-x|+|x-y+|y-z|=2n.

The programs for A212905, the canonical program `A212905.P11159810601554210294` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212905 has offset 0).

The definition of A212905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212905.P11159810601554210294

`2*A213483(n)-A005893(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A212905

/-- `2*A213483(n)-A005893(n)` -/
def P11159810601554210294.Spec : Prop :=
  ∀ n, P11159810601554210294.a n = A212905 n

theorem P11159810601554210294.correct : P11159810601554210294.Spec := by
  intro n
  simp only [A212905]

end A212905

/-! ## A212905.P12039844348223113738

`n-2+A008486(n)+A008805(n)+A002623(n)`
-/

namespace A212905.P12039844348223113738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 + (A008486 n + (A008805 n + A002623 n))

end

end A212905.P12039844348223113738

namespace A212905

/-- `n-2+A008486(n)+A008805(n)+A002623(n)` -/
def P12039844348223113738.Spec : Prop :=
  ∀ n, P12039844348223113738.a n = A212905 n

end A212905

/-! ## A212905.P7815723690316532842

`2*A006918(n+1)+A008574(n)-2`
-/

namespace A212905.P7815723690316532842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006918 (n + 1) + (A008574 n - 2)

end

end A212905.P7815723690316532842

namespace A212905

/-- `2*A006918(n+1)+A008574(n)-2` -/
def P7815723690316532842.Spec : Prop :=
  ∀ n, P7815723690316532842.a n = A212905 n

end A212905

/-! ## A212905.P5506751976748917498

`∑[A110660(n+2)]+A008574(n)-2`
-/

namespace A212905.P5506751976748917498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A008574 n - 2)

end

end A212905.P5506751976748917498

namespace A212905

/-- `∑[A110660(n+2)]+A008574(n)-2` -/
def P5506751976748917498.Spec : Prop :=
  ∀ n, P5506751976748917498.a n = A212905 n

end A212905

/-! ## A212905.P13294608578548586305

`A065190(4*n+1)-2+A008805(n)+A002623(n)`
-/

namespace A212905.P13294608578548586305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (4 * n + 1) - 2 + (A008805 n + A002623 n)

end

end A212905.P13294608578548586305

namespace A212905

/-- `A065190(4*n+1)-2+A008805(n)+A002623(n)` -/
def P13294608578548586305.Spec : Prop :=
  ∀ n, P13294608578548586305.a n = A212905 n

end A212905

/-! ## A212905.P4589594695284494304

`A004275(∑[A008805(n)])+4*n`
-/

namespace A212905.P4589594695284494304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (4 * n : ℤ)

end

end A212905.P4589594695284494304

namespace A212905

/-- `A004275(∑[A008805(n)])+4*n` -/
def P4589594695284494304.Spec : Prop :=
  ∀ n, P4589594695284494304.a n = A212905 n

end A212905

/-! ## A212905.P14372625207849245344

`A008586(n)+A004275(∑[A008805(n)])`
-/

namespace A212905.P14372625207849245344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A004275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212905.P14372625207849245344

namespace A212905

/-- `A008586(n)+A004275(∑[A008805(n)])` -/
def P14372625207849245344.Spec : Prop :=
  ∀ n, P14372625207849245344.a n = A212905 n

end A212905

/-! ## A212905.P15267262884231729902

`A004273(2*n)+A004273(A006918(n+1))`
-/

namespace A212905.P15267262884231729902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * n) + A004273 (A006918 (n + 1)).toNat

end

end A212905.P15267262884231729902

namespace A212905

/-- `A004273(2*n)+A004273(A006918(n+1))` -/
def P15267262884231729902.Spec : Prop :=
  ∀ n, P15267262884231729902.a n = A212905 n

end A212905

/-! ## A212905.P5118611068035093310

`A004275(A213483(n)-n²)`
-/

namespace A212905.P5118611068035093310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A213483 n - (n ^ 2 : ℤ)).toNat

end

end A212905.P5118611068035093310

namespace A212905

/-- `A004275(A213483(n)-n²)` -/
def P5118611068035093310.Spec : Prop :=
  ∀ n, P5118611068035093310.a n = A212905 n

end A212905

/-! ## A212905.P4431932456519816992

`A004275(record[A029256(n)]+2*n)`
-/

namespace A212905.P4431932456519816992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n : ℤ)).toNat

end

end A212905.P4431932456519816992

namespace A212905

/-- `A004275(record[A029256(n)]+2*n)` -/
def P4431932456519816992.Spec : Prop :=
  ∀ n, P4431932456519816992.a n = A212905 n

end A212905

/-!
# A212906: Triangle T(n,k) of orders of degree-n irreducible polynomials over GF(3) listed in ascending order.

The programs for A212906, there is no canonical definition to state claims against.
-/

/-! ## A212906.P1803441267768705116

`A212737(∑[n+2])`
-/

namespace A212906.P1803441267768705116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212906.P1803441267768705116

/-! ## A212906.P17521945302782117043

`and(-1, A212737(A000096(n+1)))`
-/

namespace A212906.P17521945302782117043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A212737 (A000096 (n + 1)).toNat)

end

end A212906.P17521945302782117043

/-! ## A212906.P5632688855337198097

`A212737(A000096(n+1))%A000291(n)`
-/

namespace A212906.P5632688855337198097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212737 (A000096 (n + 1)).toNat) (A000291 n)

end

end A212906.P5632688855337198097

/-! ## A212906.P7657574028817536129

`gcd(A000038(n), A212737(A000096(n+1)))`
-/

namespace A212906.P7657574028817536129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A212737 (A000096 (n + 1)).toNat)

end

end A212906.P7657574028817536129

/-! ## A212906.P8888352264938755816

`char[A163336(n)]*A212737(A000096(n+1))`
-/

namespace A212906.P8888352264938755816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212737 (A000096 (n + 1)).toNat

end

end A212906.P8888352264938755816

/-! ## A212906.P5889775473602132065

`A212737(A000096(n+1))+A000007(n+1)`
-/

namespace A212906.P5889775473602132065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A212906.P5889775473602132065

/-! ## A212906.P1578997564792872896

`A007318(C(2, n))*A212737(A000096(n+1))`
-/

namespace A212906.P1578997564792872896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A212737 (A000096 (n + 1)).toNat

end

end A212906.P1578997564792872896

/-! ## A212906.P16502671280789336013

`(A024000(n)+n)*A212737(A000096(n+1))`
-/

namespace A212906.P16502671280789336013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024000 n + (n : ℤ)) * A212737 (A000096 (n + 1)).toNat

end

end A212906.P16502671280789336013

/-! ## A212906.P1754587256636342756

`A212737(A000096(n+1))^A007318(C(n, n²))`
-/

namespace A212906.P1754587256636342756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212737 (A000096 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose n (n ^ 2)) : ℤ)

end

end A212906.P1754587256636342756

/-! ## A212906.P4919356848785057843

`A212737(A000096(n+1))+A008683(9*(n+1))`
-/

namespace A212906.P4919356848785057843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A000096 (n + 1)).toNat + A008683 (9 * (n + 1))

end

end A212906.P4919356848785057843

/-! ## A212906.P9141511871408520072

`A000041(C(2, n+2))*A212737(A000096(n+1))`
-/

namespace A212906.P9141511871408520072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A212737 (A000096 (n + 1)).toNat

end

end A212906.P9141511871408520072

/-! ## A212906.P1205556347939057517

`C(A212737(A000096(n+1)), A000040(n+1)%2)`
-/

namespace A212906.P1205556347939057517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212737 (A000096 (n + 1)).toNat).toNat (Int.tmod (A000040 (n + 1)) 2).toNat

end

end A212906.P1205556347939057517

/-! ## A212906.P4734713596054383757

`A014963(55*(n+1))*A212737(A000096(n+1))`
-/

namespace A212906.P4734713596054383757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (55 * (n + 1)) * A212737 (A000096 (n + 1)).toNat

end

end A212906.P4734713596054383757

/-! ## A212906.P15894448941048753559

`A000203(gcd(n, n+1))*A212737(A000096(n+1))`
-/

namespace A212906.P15894448941048753559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A212737 (A000096 (n + 1)).toNat

end

end A212906.P15894448941048753559

/-! ## A212906.P7227132429696282718

`A000010(ceil(2/(n+1)))*A212737(A000096(n+1))`
-/

namespace A212906.P7227132429696282718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈2 / (n + 1 : ℚ)⌉.toNat * A212737 (A000096 (n + 1)).toNat

end

end A212906.P7227132429696282718

/-! ## A212906.P4473955048873658765

`A001221(A051698(n))*A212737(A000096(n+1))`
-/

namespace A212906.P4473955048873658765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A051698 n).toNat * A212737 (A000096 (n + 1)).toNat

end

end A212906.P4473955048873658765

/-! ## A212906.P10039675110235315501

`A001222(A145473(n+1))*A212737(A000096(n+1))`
-/

namespace A212906.P10039675110235315501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A145473 (n + 1)).toNat * A212737 (A000096 (n + 1)).toNat

end

end A212906.P10039675110235315501

/-!
# A212907: Expansion of x^(-1/3) * psi(x^3) * c(x) / 3 in powers of x where psi() is a Ramanujan theta function and c() is a cubic AGM theta function.

The programs for A212907, there is no canonical definition to state claims against.
-/

/-! ## A212907.P4898318735860073427

`A213627(3*n+2)/6`
-/

namespace A212907.P4898318735860073427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213627 (3 * n + 2) : ℚ) / 6

end

end A212907.P4898318735860073427

/-! ## A212907.P10766504224186963900

`A290943(3*n+2)/6`
-/

namespace A212907.P10766504224186963900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290943 (3 * n + 2) : ℚ) / 6

end

end A212907.P10766504224186963900

/-! ## A212907.P10109210661562821018

`A263452(4*n+1)`
-/

namespace A212907.P10109210661562821018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263452 (4 * n + 1)

end

end A212907.P10109210661562821018

/-! ## A212907.P12774277302419636674

`A005886(9*n+6)/24`
-/

namespace A212907.P12774277302419636674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005886 (9 * n + 6) : ℚ) / 24

end

end A212907.P12774277302419636674

/-! ## A212907.P13637271047349132748

`A005869(A017233(n))/12`
-/

namespace A212907.P13637271047349132748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005869 (A017233 n).toNat : ℚ) / 12

end

end A212907.P13637271047349132748

/-! ## A212907.P2528782721045733622

`A298931(12*n+7)`
-/

namespace A212907.P2528782721045733622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298931 (12 * n + 7)

end

end A212907.P2528782721045733622

/-! ## A212907.P11925482157059097994

`A045827(A350052(n))`
-/

namespace A212907.P11925482157059097994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045827 (A350052 n).toNat

end

end A212907.P11925482157059097994

/-! ## A212907.P13428199765666028525

`A045827(A017557(2*n+1)+2)`
-/

namespace A212907.P13428199765666028525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045827 (A017557 (2 * n + 1) + 2).toNat

end

end A212907.P13428199765666028525

/-!
# A212908: Numbers n such that A212813(n) = 3.

The programs for A212908, there is no canonical definition to state claims against.
-/

/-! ## A212908.P8070071281162910674

`eq[3, A212813(n+1)]+1`
-/

namespace A212908.P8070071281162910674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A212908.P8070071281162910674

/-! ## A212908.P2036045330837813741

`eq[1, A212813(A028310(n))-2]`
-/

namespace A212908.P2036045330837813741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212908.P2036045330837813741

/-! ## A212908.P2178397666552667308

`eq[3, A212813(A000038(n)+n)]`
-/

namespace A212908.P2178397666552667308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212908.P2178397666552667308

/-! ## A212908.P1928407296334669395

`eq[3, A212813(xor(n, A000038(n)))]`
-/

namespace A212908.P1928407296334669395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212908.P1928407296334669395

/-! ## A212908.P14186892145632413592

`eq[3, A212813(A008619(A004275(n)))]`
-/

namespace A212908.P14186892145632413592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212908.P14186892145632413592

/-! ## A212908.P17910639759434324008

`eq[3, A212813(A065033(2*n))]`
-/

namespace A212908.P17910639759434324008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212908.P17910639759434324008

/-! ## A212908.P472065981474014936

`eq[3, A212813(A233583(n+1))]`
-/

namespace A212908.P472065981474014936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212908.P472065981474014936

/-!
# A212909: Numbers n such that A212813(n) = 4.

The programs for A212909, there is no canonical definition to state claims against.
-/

/-! ## A212909.P1900890035622917404

`eq[4, A212813(n+1)]+1`
-/

namespace A212909.P1900890035622917404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A212909.P1900890035622917404

/-! ## A212909.P4535902369207806593

`eq[2, A212813(A028310(n))-2]`
-/

namespace A212909.P4535902369207806593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212909.P4535902369207806593

/-! ## A212909.P7966918300168310805

`eq[4, A212813(A000038(n)+n)]`
-/

namespace A212909.P7966918300168310805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212909.P7966918300168310805

/-! ## A212909.P11507097058202864140

`eq[4, A212813(xor(n, A000038(n)))]`
-/

namespace A212909.P11507097058202864140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212909.P11507097058202864140

/-! ## A212909.P9602612695526178599

`eq[4, A212813(A138153(n+1))]`
-/

namespace A212909.P9602612695526178599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212909.P9602612695526178599

/-! ## A212909.P2820180672225872549

`eq[4, A212813(A065033(2*n))]`
-/

namespace A212909.P2820180672225872549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212909.P2820180672225872549

/-! ## A212909.P6615475582085475326

`eq[4, A212813(A233583(n+1))]`
-/

namespace A212909.P6615475582085475326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212909.P6615475582085475326

/-!
# A212910: G.f. satisfies: A(x) = x^2 - x + Series_Reversion(x - x*A(x)).

The programs for A212910, there is no canonical definition to state claims against.
-/

/-! ## A212910.P17144392213311353443

`A322337(or(6, ∑[2*n]))`
-/

namespace A212910.P17144392213311353443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322337 (Nat.lor 6 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A212910.P17144392213311353443

/-! ## A212910.P12730650056260453555

`A171727(A148735(n))`
-/

namespace A212910.P12730650056260453555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171727 (A148735 n).toNat

end

end A212910.P12730650056260453555

/-! ## A212910.P18444416231524244212

`A135304(A302180(n))`
-/

namespace A212910.P18444416231524244212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A302180 n).toNat

end

end A212910.P18444416231524244212

/-!
# A212912: Numbers k such that 3^(m+3) == 9 (mod m) where m = (k-1)^2 - 1.

The programs for A212912, there is no canonical definition to state claims against.
-/

/-! ## A212912.P16276178790711860411

`p?[A131209(A105107(n+1)-2)]`
-/

namespace A212912.P16276178790711860411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A105107 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212912.P16276178790711860411

/-! ## A212912.P1689536306009908140

`p?[A131209(eq[2, A105193(n+2)])]`
-/

namespace A212912.P1689536306009908140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105193 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212912.P1689536306009908140

/-! ## A212912.P13691812432860830279

`p?[A131209(eq[2, A105193(n)]-2)]`
-/

namespace A212912.P13691812432860830279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105193 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212912.P13691812432860830279

/-!
# A212913: E.g.f. satisfies: A(x) = exp( Integral 1 + x*A(x)^2 dx ), where the constant of integration is zero.

The programs for A212913, there is no canonical definition to state claims against.
-/

/-! ## A212913.P2313604246474949776

`A008620(A272644(n+2)+A002793(n))`
-/

namespace A212913.P2313604246474949776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A272644 (n + 2) + A002793 n).toNat

end

end A212913.P2313604246474949776

/-! ## A212913.P10303953873348905840

`xor(A058276(A209406(n+1)), A253950(n+1))`
-/

namespace A212913.P10303953873348905840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058276 (A209406 (n + 1)).toNat) (A253950 (n + 1))

end

end A212913.P10303953873348905840

/-! ## A212913.P545666520726743306

`A253950(n+1)+A010879(A165878(3*n+2))`
-/

namespace A212913.P545666520726743306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253950 (n + 1) + A010879 (A165878 (3 * n + 2)).toNat

end

end A212913.P545666520726743306

/-!
# A212914: E.g.f. satisfies: A(x) = exp( Integral 1 + x*A(x)^3 dx ), where the constant of integration is zero.

The programs for A212914, there is no canonical definition to state claims against.
-/

/-! ## A212914.P7861697446645665056

`A034887(A137971(n))`
-/

namespace A212914.P7861697446645665056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A137971 n).toNat

end

end A212914.P7861697446645665056

/-! ## A212914.P13995383587656599070

`A087866(A072597(n)+1)`
-/

namespace A212914.P13995383587656599070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087866 (A072597 n + 1).toNat

end

end A212914.P13995383587656599070

/-!
# A212915: Number of standard Young tableaux of n cells and height <= 9.

The programs for A212915, there is no canonical definition to state claims against.
-/

/-! ## A212915.P3969344957952047572

`A182172(eq[10, A193739(n)])`
-/

namespace A212915.P3969344957952047572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212915.P3969344957952047572

/-! ## A212915.P17746173062820276446

`A182172(eq[10, A195663(n)])`
-/

namespace A212915.P17746173062820276446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212915.P17746173062820276446

/-! ## A212915.P5733251842611945328

`A182172(eq[19, A099375(n)])`
-/

namespace A212915.P5733251842611945328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212915.P5733251842611945328

/-! ## A212915.P2762365672663544770

`A182172(eq[10, A004736(n+1)])`
-/

namespace A212915.P2762365672663544770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212915.P2762365672663544770

/-! ## A212915.P15677917506769064600

`A182172(A000217(n+9)+n)`
-/

namespace A212915.P15677917506769064600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A000217 (n + 9) + (n : ℤ)).toNat

end

end A212915.P15677917506769064600

/-!
# A212916: Number of standard Young tableaux of n cells and height <= 10.

The programs for A212916, there is no canonical definition to state claims against.
-/

/-! ## A212916.P15264792938245004613

`A182172(eq[10, A025581(n)])`
-/

namespace A212916.P15264792938245004613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212916.P15264792938245004613

/-! ## A212916.P13441694176199345128

`A182172(A000217(n+11)-11)`
-/

namespace A212916.P13441694176199345128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A000217 (n + 11) - 11).toNat

end

end A212916.P13441694176199345128

/-! ## A212916.P17633473777342996937

`A324692(A014378(n))+A000085(n)`
-/

namespace A212916.P17633473777342996937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (A014378 n).toNat + A000085 n

end

end A212916.P17633473777342996937

/-! ## A212916.P14751066430448148286

`A000085(n)-A010059(A022179(n))`
-/

namespace A212916.P14751066430448148286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A010059 (A022179 n).toNat

end

end A212916.P14751066430448148286

/-! ## A212916.P14264067710426726529

`A000085(n)-A085982(A022184(n))`
-/

namespace A212916.P14264067710426726529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A085982 (A022184 n).toNat

end

end A212916.P14264067710426726529

/-!
# A212917: E.g.f. satisfies: A(x) = exp( x/(1 - x*A(x)^3) ).

The programs for A212917, there is no canonical definition to state claims against.
-/

/-! ## A212917.P11905816500140920510

`A336838(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A212917.P11905816500140920510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A336838 (a (n - 1) ^ 2).toNat

end

end A212917.P11905816500140920510

/-!
# A212918: Numbers whose sum of prime factors (counted with multiplicity) is a pentagonal number (A000326).

The programs for A212918, there is no canonical definition to state claims against.
-/

/-! ## A212918.P9396262145679399633

`eq[1, A191795(A001414(n+1))]+1`
-/

namespace A212918.P9396262145679399633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191795 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A212918.P9396262145679399633

/-!
# A212920: Carmichael numbers divisible by 1729.

The programs for A212920, there is no canonical definition to state claims against.
-/

/-! ## A212920.P5674915742644588243

`∩[A138129(2*n+1), A002997(n+2)]`
-/

namespace A212920.P5674915742644588243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138129 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212920.P5674915742644588243

/-! ## A212920.P15287305219341450711

`∩[A002997(n+1), A138129(A004611(n+1))]`
-/

namespace A212920.P15287305219341450711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138129 (A004611 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212920.P15287305219341450711

/-!
# A212922: G.f. satisfies: A(x) = x^2/(1-x) + Series_Reversion(x - x*A(x)).

The programs for A212922, there is no canonical definition to state claims against.
-/

/-! ## A212922.P2780566066482480125

`record[A083253(a(n-1)+n)]` with `a(0)=1, a(1)=0`
-/

namespace A212922.P2780566066482480125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A083253 (f1 (n - 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212922.P2780566066482480125

/-! ## A212922.P16147966435678581267

`A083253(a(n-1)+n+1)` with `a(0)=1, a(1)=2`
-/

namespace A212922.P16147966435678581267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A083253 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A212922.P16147966435678581267

/-!
# A212923: G.f. satisfies: A(x) = x^2 + Series_Reversion(x - x*A(x)).

The programs for A212923, there is no canonical definition to state claims against.
-/

/-! ## A212923.P5146431697346624494

`A240869(A008137(n)-1)+1`
-/

namespace A212923.P5146431697346624494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240869 (A008137 n - 1).toNat + 1

end

end A212923.P5146431697346624494

/-! ## A212923.P16368403915378940069

`A008620(A238312(n)+A026945(n))`
-/

namespace A212923.P16368403915378940069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A238312 n + A026945 n).toNat

end

end A212923.P16368403915378940069

/-!
# A212924: 

The programs for A212924, there is no canonical definition to state claims against.
-/

/-! ## A212924.P7377251874399963899

`A212930((n+1)²+n²)`
-/

namespace A212924.P7377251874399963899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212930 ((n + 1) ^ 2 + n ^ 2)

end

end A212924.P7377251874399963899

/-!
# A212925: Number of n X 3 0..2 arrays with no column j greater than column j-1 in all rows.

The programs for A212925, the canonical program `A212925.P1129986413003617259` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212925 has offset 1).

The definition of A212925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212925.P1129986413003617259

`27^(n+1)-2*9^(n+1)+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212925

/-- `27^(n+1)-2*9^(n+1)+1` -/
def P1129986413003617259.Spec : Prop :=
  ∀ n, P1129986413003617259.a n = A212925 (n + 1)

theorem P1129986413003617259.correct : P1129986413003617259.Spec := by
  intro n
  simp only [A212925, Nat.add_sub_cancel]

end A212925

/-! ## A212925.P7241603043871249917

`(A059410(n+1)-1)*A024023(n+1)`
-/

namespace A212925.P7241603043871249917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059410 (n + 1) - 1) * A024023 (n + 1)

end

end A212925.P7241603043871249917

namespace A212925

/-- `(A059410(n+1)-1)*A024023(n+1)` -/
def P7241603043871249917.Spec : Prop :=
  ∀ n, P7241603043871249917.a n = A212925 (n + 1)

end A212925

/-! ## A212925.P15551673228077806827

`(A024101(n+1)-A000244(n+1))*A024023(n+1)`
-/

namespace A212925.P15551673228077806827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024101 (n + 1) - A000244 (n + 1)) * A024023 (n + 1)

end

end A212925.P15551673228077806827

namespace A212925

/-- `(A024101(n+1)-A000244(n+1))*A024023(n+1)` -/
def P15551673228077806827.Spec : Prop :=
  ∀ n, P15551673228077806827.a n = A212925 (n + 1)

end A212925

/-! ## A212925.P12881560742315036490

`(A001019(n+1)-A034472(n+1))*A024023(n+1)`
-/

namespace A212925.P12881560742315036490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001019 (n + 1) - A034472 (n + 1)) * A024023 (n + 1)

end

end A212925.P12881560742315036490

namespace A212925

/-- `(A001019(n+1)-A034472(n+1))*A024023(n+1)` -/
def P12881560742315036490.Spec : Prop :=
  ∀ n, P12881560742315036490.a n = A212925 (n + 1)

end A212925

/-! ## A212925.P12817932897540278181

`(A058481(2*(n+1))-A024023(n+1))*A024023(n+1)`
-/

namespace A212925.P12817932897540278181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058481 (2 * (n + 1)) - A024023 (n + 1)) * A024023 (n + 1)

end

end A212925.P12817932897540278181

namespace A212925

/-- `(A058481(2*(n+1))-A024023(n+1))*A024023(n+1)` -/
def P12817932897540278181.Spec : Prop :=
  ∀ n, P12817932897540278181.a n = A212925 (n + 1)

end A212925

/-!
# A212926: Number of n X 4 0..3 arrays with no column j greater than column j-1 in all rows.

The programs for A212926, there is no canonical definition to state claims against.
-/

/-! ## A212926.P5697078910086446161

`A212930(A141214(n+1))`
-/

namespace A212926.P5697078910086446161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212930 (A141214 (n + 1)).toNat

end

end A212926.P5697078910086446161

/-! ## A212926.P12484660511118015757

`A212930(A000124(n+3)+n)`
-/

namespace A212926.P12484660511118015757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212930 (A000124 (n + 3) + (n : ℤ)).toNat

end

end A212926.P12484660511118015757

/-!
# A212928: 

The programs for A212928, there is no canonical definition to state claims against.
-/

/-! ## A212928.P11424314985765617555

`A212930(A056119(n)+16)`
-/

namespace A212928.P11424314985765617555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212930 (A056119 n + 16).toNat

end

end A212928.P11424314985765617555

/-!
# A212931: Number of 2Xn 0..n-1 arrays with no column j greater than column j-1 in all rows.

The programs for A212931, there is no canonical definition to state claims against.
-/

/-! ## A212931.P12235910026089497858

`A212930(∑[n+1]+2)`
-/

namespace A212931.P12235910026089497858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212930 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A212931.P12235910026089497858

/-! ## A212931.P15010027558141869048

`record[gcd(A097230(n), A212930(n+1))]`
-/

namespace A212931.P15010027558141869048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A212930 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212931.P15010027558141869048

/-! ## A212931.P1715643221602917500

`record[A212930(A133263(∑{e}[n, #]))]`
-/

namespace A212931.P1715643221602917500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212930 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212931.P1715643221602917500

/-!
# A212932: Number of 3 X n 0..n-1 arrays with no column j greater than column j-1 in all rows.

The programs for A212932, there is no canonical definition to state claims against.
-/

/-! ## A212932.P5690960518546685990

`A212930(∑[n+2]+4)`
-/

namespace A212932.P5690960518546685990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212930 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A212932.P5690960518546685990

/-!
# A212933: Number of 4Xn 0..n-1 arrays with no column j greater than column j-1 in all rows.

The programs for A212933, there is no canonical definition to state claims against.
-/

/-! ## A212933.P13358228444792880671

`A212930(A141214(n)+7)`
-/

namespace A212933.P13358228444792880671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212930 (A141214 n + 7).toNat

end

end A212933.P13358228444792880671

/-! ## A212933.P8186448516969509338

`A212930(A052905(n)+9)`
-/

namespace A212933.P8186448516969509338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212930 (A052905 n + 9).toNat

end

end A212933.P8186448516969509338

/-!
# A212936: 

The programs for A212936, there is no canonical definition to state claims against.
-/

/-! ## A212936.P3505272903856931764

`A212930(A000124(n+7)-(n+1))`
-/

namespace A212936.P3505272903856931764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212930 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A212936.P3505272903856931764

/-!
# A212937: 

The programs for A212937, there is no canonical definition to state claims against.
-/

/-! ## A212937.P12426260814459960483

`A212943((n+1)²+n²)`
-/

namespace A212937.P12426260814459960483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212943 ((n + 1) ^ 2 + n ^ 2)

end

end A212937.P12426260814459960483

/-!
# A212938: Number of n X 3 0..2 arrays with no column j greater than or equal to than column j-1 in all rows.

The programs for A212938, the canonical program `A212938.P6957581557272449249` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212938 has offset 1).

The definition of A212938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212938.P6957581557272449249

`10^(n+1)-2*18^(n+1)+27^(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212938

/-- `10^(n+1)-2*18^(n+1)+27^(n+1)` -/
def P6957581557272449249.Spec : Prop :=
  ∀ n, P6957581557272449249.a n = A212938 (n + 1)

theorem P6957581557272449249.correct : P6957581557272449249.Spec := by
  intro n
  simp only [A212938, Nat.add_sub_cancel]

end A212938

/-! ## A212938.P604916478503868328

`A212943(∑[n+3]+1)`
-/

namespace A212938.P604916478503868328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212943 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212938.P604916478503868328

namespace A212938

/-- `A212943(∑[n+3]+1)` -/
def P604916478503868328.Spec : Prop :=
  ∀ n, P604916478503868328.a n = A212938 (n + 1)

end A212938

/-! ## A212938.P5554988601726165047

`record[gcd(A212943(n+1), A261780(n+2))]`
-/

namespace A212938.P5554988601726165047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212943 (n + 1)) (A261780 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212938.P5554988601726165047

namespace A212938

/-- `record[gcd(A212943(n+1), A261780(n+2))]` -/
def P5554988601726165047.Spec : Prop :=
  ∀ n, (P5554988601726165047.a n : ℤ) = A212938 (n + 1)

end A212938

/-!
# A212939: Number of nX4 0..3 arrays with no column j greater than or equal to than column j-1 in all rows.

The programs for A212939, there is no canonical definition to state claims against.
-/

/-! ## A212939.P14635423403688467277

`100^(n+1)-3*160^(n+1)+256^(n+1)-35^(n+1)+2*80^(n+1)`
-/

namespace A212939.P14635423403688467277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (100 ^ (n + 1) : ℤ) - (3 * 160 ^ (n + 1) : ℤ) + (256 ^ (n + 1) : ℤ) - (35 ^ (n + 1) : ℤ) + (2 * 80 ^ (n + 1) : ℤ)

end

end A212939.P14635423403688467277

/-! ## A212939.P11469928347633824934

`A212943(A141214(n+1))`
-/

namespace A212939.P11469928347633824934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212943 (A141214 (n + 1)).toNat

end

end A212939.P11469928347633824934

/-! ## A212939.P8103531234128977164

`A212943(A055998(n+2))`
-/

namespace A212939.P8103531234128977164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212943 (A055998 (n + 2)).toNat

end

end A212939.P8103531234128977164

/-! ## A212939.P10745117328134940344

`record[A212943(A055998(A154958(n)))]`
-/

namespace A212939.P10745117328134940344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212943 (A055998 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212939.P10745117328134940344

/-!
# A212941: 

The programs for A212941, there is no canonical definition to state claims against.
-/

/-! ## A212941.P15232697600352124711

`A212943(A056119(n)+16)`
-/

namespace A212941.P15232697600352124711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212943 (A056119 n + 16).toNat

end

end A212941.P15232697600352124711

/-!
# A212943: T(n,k)=Number of nXk 0..k-1 arrays with no column j greater than or equal to than column j-1 in all rows.

The programs for A212943, there is no canonical definition to state claims against.
-/

/-! ## A212943.P1023739048009302672

`or(A102190(A231601(n)), A174790(n))`
-/

namespace A212943.P1023739048009302672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102190 (A231601 n).toNat) (A174790 n)

end

end A212943.P1023739048009302672

/-! ## A212943.P12967529696593399985

`A185373(A343671(n)+A130561(n+1))`
-/

namespace A212943.P12967529696593399985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185373 (A343671 n + A130561 (n + 1)).toNat

end

end A212943.P12967529696593399985

/-! ## A212943.P18197538758463340620

`A170824(A170877(3*n)+A170840(n))`
-/

namespace A212943.P18197538758463340620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (A170877 (3 * n) + A170840 n).toNat

end

end A212943.P18197538758463340620

/-! ## A212943.P12777766943591695828

`A229527(A212855(n+1)%A229524(n+1))`
-/

namespace A212943.P12777766943591695828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229527 (Int.tmod (A212855 (n + 1)) (A229524 (n + 1))).toNat

end

end A212943.P12777766943591695828

/-! ## A212943.P9695405499933546162

`and(A174588(n), A261195(A005105(3*n+2)))`
-/

namespace A212943.P9695405499933546162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174588 n) (A261195 (A005105 (3 * n + 2)).toNat)

end

end A212943.P9695405499933546162

/-!
# A212944: Number of 2Xn 0..n-1 arrays with no column j greater than or equal to than column j-1 in all rows.

The programs for A212944, there is no canonical definition to state claims against.
-/

/-! ## A212944.P9827961870984310163

`record[ratio[A212943(n+1)]]`
-/

namespace A212944.P9827961870984310163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212943 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212944.P9827961870984310163

/-! ## A212944.P13567686665220461497

`A212943(∑[n+1]+2)`
-/

namespace A212944.P13567686665220461497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212943 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A212944.P13567686665220461497

/-! ## A212944.P14692616908614806027

`record[A212943(A254052(n+1)+1)]`
-/

namespace A212944.P14692616908614806027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212943 (A254052 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212944.P14692616908614806027

/-! ## A212944.P6767854776652257169

`record[root(A212943(n+1), A287216(n))]`
-/

namespace A212944.P6767854776652257169
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A212943 (n + 1) : ℝ) ^ (1 / (A287216 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212944.P6767854776652257169

/-! ## A212944.P18240786810586731321

`record[gcd(A124926(n), A212943(n+1))]`
-/

namespace A212944.P18240786810586731321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124926 n) (A212943 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212944.P18240786810586731321

/-!
# A212945: Number of 3Xn 0..n-1 arrays with no column j greater than or equal to than column j-1 in all rows.

The programs for A212945, there is no canonical definition to state claims against.
-/

/-! ## A212945.P1186918631131248598

`A212943(∑[n+2]+4)`
-/

namespace A212945.P1186918631131248598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212943 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A212945.P1186918631131248598

/-! ## A212945.P17554641325405186790

`record[gcd(A124926(n), A212943(n+2))]`
-/

namespace A212945.P17554641325405186790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124926 n) (A212943 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212945.P17554641325405186790

/-!
# A212946: Number of 4Xn 0..n-1 arrays with no column j greater than or equal to than column j-1 in all rows.

The programs for A212946, there is no canonical definition to state claims against.
-/

/-! ## A212946.P3045354571320426072

`A212943(A055998(n+1)+7)`
-/

namespace A212946.P3045354571320426072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212943 (A055998 (n + 1) + 7).toNat

end

end A212946.P3045354571320426072

/-!
# A212947: 

The programs for A212947, there is no canonical definition to state claims against.
-/

/-! ## A212947.P253235414679289655

`A212943(A161680(n+6)-n)`
-/

namespace A212947.P253235414679289655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212943 (A161680 (n + 6) - (n : ℤ)).toNat

end

end A212947.P253235414679289655

/-!
# A212950: Amounts (in cents) of Canadian coins in denominations suggested by Shallit.

The programs for A212950, there is no canonical definition to state claims against.
-/

/-! ## A212950.P14495396602508158370

`∪[A250555(n+1), A101655(n)]`
-/

namespace A212950.P14495396602508158370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101655 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212950.P14495396602508158370

/-! ## A212950.P18175851516230717988

`∪[A072082(n+1), A250555(n+1)]`
-/

namespace A212950.P18175851516230717988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212950.P18175851516230717988

/-!
# A212951: Amounts (in hundredths of a Euro) of coins in denominations suggested by Shallit.

The programs for A212951, there is no canonical definition to state claims against.
-/

/-! ## A212951.P4720511426995667853

`∪[A038491(n), A051109(n)]`
-/

namespace A212951.P4720511426995667853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212951.P4720511426995667853

/-! ## A212951.P12879392697618848725

`eq[A057536(n), A337337(n+1)]`
-/

namespace A212951.P12879392697618848725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057536 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212951.P12879392697618848725

/-! ## A212951.P6008295298316148356

`∪[A020237(n+1), A051109(n)]`
-/

namespace A212951.P6008295298316148356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212951.P6008295298316148356

/-! ## A212951.P5173713231396926459

`∪[A020265(n+1), A051109(n)]`
-/

namespace A212951.P5173713231396926459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212951.P5173713231396926459

/-!
# A212953: Minimal order of degree-n irreducible polynomials over GF(2).

The programs for A212953, there is no canonical definition to state claims against.
-/

/-! ## A212953.P12691383536678719633

`A059912(∑[A059499(n+1)]-A059499(n+1)+1)`
-/

namespace A212953.P12691383536678719633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059912 (∑ j ∈ Finset.range (n + 1), f1 j - A059499 (n + 1) + 1).toNat

end

end A212953.P12691383536678719633

/-! ## A212953.P5237046601378199503

`2*A114894(n+1)-1`
-/

namespace A212953.P5237046601378199503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114894 (n + 1) - 1

end

end A212953.P5237046601378199503

/-! ## A212953.P11834583868168531027

`A008683(A007918(n))+2*A114894(n+1)`
-/

namespace A212953.P11834583868168531027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 2 * A114894 (n + 1)

end

end A212953.P11834583868168531027

/-! ## A212953.P1731392406676184730

`A008683(A002496(n+1))+2*A114894(n+1)`
-/

namespace A212953.P1731392406676184730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002496 (n + 1)).toNat + 2 * A114894 (n + 1)

end

end A212953.P1731392406676184730

/-! ## A212953.P5710348394523829401

`A008683(A003629(n+1))+2*A114894(n+1)`
-/

namespace A212953.P5710348394523829401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A003629 (n + 1)).toNat + 2 * A114894 (n + 1)

end

end A212953.P5710348394523829401

/-!
# A212954: Array of Ramsey numbers R(n,k) (n >= 1, k >= 1) read by antidiagonals.

The programs for A212954, there is no canonical definition to state claims against.
-/

/-! ## A212954.P5742519505345456198

`A056811(7*A173881(n))`
-/

namespace A212954.P5742519505345456198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (7 * A173881 n).toNat

end

end A212954.P5742519505345456198

/-! ## A212954.P11063902601722596473

`A048766(A063909(A001263(n+1)))`
-/

namespace A212954.P11063902601722596473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A063909 (A001263 (n + 1)).toNat).toNat

end

end A212954.P11063902601722596473

/-! ## A212954.P5666135998777867954

`A007318(n)-A193759(A334549(n))`
-/

namespace A212954.P5666135998777867954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A193759 (A334549 n).toNat

end

end A212954.P5666135998777867954

/-! ## A212954.P1592119161794969801

`A007318(n)-A307598(A270061(n))`
-/

namespace A212954.P1592119161794969801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A307598 (A270061 n).toNat

end

end A212954.P1592119161794969801

/-! ## A212954.P6959399323939165436

`A140473(A028326(n)%A055623(n+1))`
-/

namespace A212954.P6959399323939165436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140473 (Int.tmod (A028326 n) (A055623 (n + 1))).toNat

end

end A212954.P6959399323939165436

/-!
# A212957: A(n,k) is the number of moduli m such that the multiplicative order of k mod m equals n; square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A212957, there is no canonical definition to state claims against.
-/

/-! ## A212957.P3702642906620235582

`A340862(A004736(n+1)^A215745(n+1))`
-/

namespace A212957.P3702642906620235582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340862 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A215745 (n + 1) : ℤ))).toNat

end

end A212957.P3702642906620235582

/-! ## A212957.P3031133000430956224

`A235875(A190088(n+1))`
-/

namespace A212957.P3031133000430956224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (A190088 (n + 1)).toNat

end

end A212957.P3031133000430956224

/-! ## A212957.P10909736377386239418

`A351014(A281765(n+1))+char[∑[n+1]]`
-/

namespace A212957.P10909736377386239418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A281765 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A212957.P10909736377386239418

/-! ## A212957.P17455194846977294863

`A001221(A089504(n+1)-(1-char[∑[n-1]]))`
-/

namespace A212957.P17455194846977294863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A089504 (n + 1) - (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))).toNat

end

end A212957.P17455194846977294863

/-! ## A212957.P3238601745050600406

`A351014(A007095(n)*A089840(n))`
-/

namespace A212957.P3238601745050600406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A007095 n * A089840 n).toNat

end

end A212957.P3238601745050600406

/-!
# A212959: Number of (w,x,y) such that w,x,y are all in {0,...,n} and |w-x| = |x-y|.

The programs for A212959, the canonical program `A212959.P16860923990420999479` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212959 has offset 0).

The definition of A212959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212959.P4745864696274395706

`(6*n²+8*n+3+(-1)^n)/4`
-/

namespace A212959.P4745864696274395706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n ^ 2 + 8 * n + 3 : ℤ) + (-1) ^ n : ℚ) / 4

end

end A212959.P4745864696274395706

namespace A212959

/-- `(6*n²+8*n+3+(-1)^n)/4` -/
def P4745864696274395706.Spec : Prop :=
  ∀ n, P4745864696274395706.a n = (A212959 n : ℚ)

theorem P4745864696274395706.correct : P4745864696274395706.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A212959, Nat.add_sub_cancel, A212959.P4745864696274395706.a, A212959.P16860923990420999479.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A212959, Nat.add_sub_cancel, A212959.P4745864696274395706.a, A212959.P16860923990420999479.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212959

/-! ## A212959.P16860923990420999479

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=20`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212959

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P16860923990420999479.Spec : Prop :=
  ∀ n, P16860923990420999479.a n = A212959 n

theorem P16860923990420999479.correct : P16860923990420999479.Spec := by
  intro n
  simp only [A212959]

end A212959

/-! ## A212959.P15312776043503745795

`2*A069905(3*(n+1)+2)-3*(n+1)`
-/

namespace A212959.P15312776043503745795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069905 (3 * (n + 1) + 2) - (3 * (n + 1) : ℤ)

end

end A212959.P15312776043503745795

namespace A212959

/-- `2*A069905(3*(n+1)+2)-3*(n+1)` -/
def P15312776043503745795.Spec : Prop :=
  ∀ n, P15312776043503745795.a n = A212959 n

end A212959

/-! ## A212959.P5508720375611740337

`∑[or(1, 3*n)]`
-/

namespace A212959.P5508720375611740337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212959.P5508720375611740337

namespace A212959

/-- `∑[or(1, 3*n)]` -/
def P5508720375611740337.Spec : Prop :=
  ∀ n, (P5508720375611740337.a n : ℤ) = A212959 n

end A212959

/-! ## A212959.P12303451858519968057

`∑[or(1, n)+n+n]`
-/

namespace A212959.P12303451858519968057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212959.P12303451858519968057

namespace A212959

/-- `∑[or(1, n)+n+n]` -/
def P12303451858519968057.Spec : Prop :=
  ∀ n, (P12303451858519968057.a n : ℤ) = A212959 n

end A212959

/-! ## A212959.P3326575514633992686

`∑[and(3*n, -2)+1]`
-/

namespace A212959.P3326575514633992686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212959.P3326575514633992686

namespace A212959

/-- `∑[and(3*n, -2)+1]` -/
def P3326575514633992686.Spec : Prop :=
  ∀ n, P3326575514633992686.a n = A212959 n

end A212959

/-! ## A212959.P5555932114996714724

`∑[Δ[n²]+and(n, -2)]`
-/

namespace A212959.P5555932114996714724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212959.P5555932114996714724

namespace A212959

/-- `∑[Δ[n²]+and(n, -2)]` -/
def P5555932114996714724.Spec : Prop :=
  ∀ n, P5555932114996714724.a n = A212959 n

end A212959

/-! ## A212959.P10480872069927180095

`∑[a(n-2)+6]` with `a(0)=1, a(1)=3`
-/

namespace A212959.P10480872069927180095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212959.P10480872069927180095

namespace A212959

/-- `∑[a(n-2)+6]` -/
def P10480872069927180095.Spec : Prop :=
  ∀ n, (P10480872069927180095.a n : ℤ) = A212959 n

end A212959

/-! ## A212959.P7334746026630063593

`∑[xor(1, and(3*n, -2))]`
-/

namespace A212959.P7334746026630063593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (3 * n : ℤ) (-2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212959.P7334746026630063593

namespace A212959

/-- `∑[xor(1, and(3*n, -2))]` -/
def P7334746026630063593.Spec : Prop :=
  ∀ n, P7334746026630063593.a n = A212959 n

end A212959

/-! ## A212959.P1475804318156060651

`∑[log2(gcd(2, n))+3*n]`
-/

namespace A212959.P1475804318156060651
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + (3 * n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212959.P1475804318156060651

namespace A212959

/-- `∑[log2(gcd(2, n))+3*n]` -/
def P1475804318156060651.Spec : Prop :=
  ∀ n, P1475804318156060651.a n = (A212959 n : ℝ)

end A212959

/-! ## A212959.P6054480115190059672

`∑[∑[6-a(n-1)]]` with `a(0)=1, a(1)=2`
-/

namespace A212959.P6054480115190059672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212959.P6054480115190059672

namespace A212959

/-- `∑[∑[6-a(n-1)]]` -/
def P6054480115190059672.Spec : Prop :=
  ∀ n, P6054480115190059672.a n = A212959 n

end A212959

/-! ## A212959.P17117301635280625006

`∑[(n+1)%2+3*n]`
-/

namespace A212959.P17117301635280625006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212959.P17117301635280625006

namespace A212959

/-- `∑[(n+1)%2+3*n]` -/
def P17117301635280625006.Spec : Prop :=
  ∀ n, (P17117301635280625006.a n : ℤ) = A212959 n

end A212959

/-! ## A212959.P7862262951066891394

`∑[and(n, -2)]+(n+1)²`
-/

namespace A212959.P7862262951066891394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A212959.P7862262951066891394

namespace A212959

/-- `∑[and(n, -2)]+(n+1)²` -/
def P7862262951066891394.Spec : Prop :=
  ∀ n, P7862262951066891394.a n = A212959 n

end A212959

/-! ## A212959.P6301331517931803019

`∑[lt[xor(2, n+1), n]+n]`
-/

namespace A212959.P6301331517931803019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212959.P6301331517931803019

namespace A212959

/-- `∑[lt[xor(2, n+1), n]+n]` -/
def P6301331517931803019.Spec : Prop :=
  ∀ n, (P6301331517931803019.a n : ℤ) = A212959 n

end A212959

/-! ## A212959.P1395005658172575100

`∑[∑[∑[ogf((1+2x+3x^2)/(1+x))]]]`
-/

namespace A212959.P1395005658172575100
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212959.P1395005658172575100

namespace A212959

/-- `∑[∑[∑[ogf((1+2x+3x^2)/(1+x))]]]` -/
def P1395005658172575100.Spec : Prop :=
  ∀ n, P1395005658172575100.a n = A212959 n

end A212959

/-! ## A212959.P12003595532034988324

`ogf((1+2x+3x^2)/(1-2x+2x^3-x^4))`
-/

namespace A212959.P12003595532034988324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -2, 0, 2, -1] n

end

end A212959.P12003595532034988324

namespace A212959

/-- `ogf((1+2x+3x^2)/(1-2x+2x^3-x^4))` -/
def P12003595532034988324.Spec : Prop :=
  ∀ n, P12003595532034988324.a n = A212959 n

end A212959

/-! ## A212959.P6317810941529735146

`or(1, a(n-1))+3*n` with `a(0)=1`
-/

namespace A212959.P6317810941529735146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (a (n - 1)) + 3 * n

end

end A212959.P6317810941529735146

namespace A212959

/-- `or(1, a(n-1))+3*n` -/
def P6317810941529735146.Spec : Prop :=
  ∀ n, (P6317810941529735146.a n : ℤ) = A212959 n

end A212959

/-! ## A212959.P11992710879590471241

`∑[n-and(1, n)]+(n+1)²`
-/

namespace A212959.P11992710879590471241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A212959.P11992710879590471241

namespace A212959

/-- `∑[n-and(1, n)]+(n+1)²` -/
def P11992710879590471241.Spec : Prop :=
  ∀ n, P11992710879590471241.a n = A212959 n

end A212959

/-! ## A212959.P11092306037549926664

`6*n+a(n-2)-2` with `a(0)=1, a(1)=4`
-/

namespace A212959.P11092306037549926664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (6 * n : ℤ) + (a (n - 2) - 2)

end

end A212959.P11092306037549926664

namespace A212959

/-- `6*n+a(n-2)-2` -/
def P11092306037549926664.Spec : Prop :=
  ∀ n, P11092306037549926664.a n = A212959 n

end A212959

/-!
# A212960: Number of (w,x,y) with all terms in {0,...,n} and |w-x| != |x-y|.

The programs for A212960, the canonical program `A212960.P4156547848861829353` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212960 has offset 0).

The definition of A212960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212960.P18078959170913006460

`(4*n^3+6*n²+4*n+1-(-1)^n)/4`
-/

namespace A212960.P18078959170913006460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 3 + 6 * n ^ 2 + 4 * n + 1 : ℤ) - (-1) ^ n : ℚ) / 4

end

end A212960.P18078959170913006460

namespace A212960

/-- `(4*n^3+6*n²+4*n+1-(-1)^n)/4` -/
def P18078959170913006460.Spec : Prop :=
  ∀ n, P18078959170913006460.a n = (A212960 n : ℚ)

theorem P18078959170913006460.correct : P18078959170913006460.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A212960, Nat.add_sub_cancel, A212960.P18078959170913006460.a, A212960.P4156547848861829353.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A212960, Nat.add_sub_cancel, A212960.P18078959170913006460.a, A212960.P4156547848861829353.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212960

/-! ## A212960.P4156547848861829353

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=4, a(2)=16, a(3)=44, a(4)=92`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212960

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P4156547848861829353.Spec : Prop :=
  ∀ n, P4156547848861829353.a n = A212960 n

theorem P4156547848861829353.correct : P4156547848861829353.Spec := by
  intro n
  simp only [A212960]

end A212960

/-! ## A212960.P9764986625795270630

`∑[∑[record[lcm(3, n)+n]]]`
-/

namespace A212960.P9764986625795270630
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212960.P9764986625795270630

namespace A212960

/-- `∑[∑[record[lcm(3, n)+n]]]` -/
def P9764986625795270630.Spec : Prop :=
  ∀ n, (P9764986625795270630.a n : ℤ) = A212960 n

end A212960

/-! ## A212960.P5597683995211372499

`∑[n%2+3*n²]`
-/

namespace A212960.P5597683995211372499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 3 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212960.P5597683995211372499

namespace A212960

/-- `∑[n%2+3*n²]` -/
def P5597683995211372499.Spec : Prop :=
  ∀ n, (P5597683995211372499.a n : ℤ) = A212960 n

end A212960

/-! ## A212960.P5856263131176081822

`lcm(2, Δ[floor((n²/2)²)])`
-/

namespace A212960.P5856263131176081822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℚ) / 2) ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (n + 1) - f1 n)

end

end A212960.P5856263131176081822

namespace A212960

/-- `lcm(2, Δ[floor((n²/2)²)])` -/
def P5856263131176081822.Spec : Prop :=
  ∀ n, (P5856263131176081822.a n : ℤ) = A212960 n

end A212960

/-! ## A212960.P13248129386566456776

`round((Δ[C(n², 2)]+n)/2)`
-/

namespace A212960.P13248129386566456776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ) : ℚ) / 2)

end

end A212960.P13248129386566456776

namespace A212960

/-- `round((Δ[C(n², 2)]+n)/2)` -/
def P13248129386566456776.Spec : Prop :=
  ∀ n, P13248129386566456776.a n = A212960 n

end A212960

/-! ## A212960.P337172741845886032

`∑[∑[∑[floor(a(n-2))]]]` with `a(0)=0, a(1)=4, a(2)=4, a(3)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A212960.P337172741845886032
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 4, 8] fun n f3 =>
  f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212960.P337172741845886032

namespace A212960

/-- `∑[∑[∑[floor(a(n-2))]]]` -/
def P337172741845886032.Spec : Prop :=
  ∀ n, (P337172741845886032.a n : ℤ) = A212960 n

end A212960

/-! ## A212960.P10021307879140002241

`floor(xor(1, ∑[6*n²+1])/2)`
-/

namespace A212960.P10021307879140002241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋

end

end A212960.P10021307879140002241

namespace A212960

/-- `floor(xor(1, ∑[6*n²+1])/2)` -/
def P10021307879140002241.Spec : Prop :=
  ∀ n, P10021307879140002241.a n = A212960 n

end A212960

/-! ## A212960.P3764572757307220615

`ceil((Δ[C(n², 2)]-n)/2)+n`
-/

namespace A212960.P3764572757307220615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) : ℚ) / 2⌉ + (n : ℤ)

end

end A212960.P3764572757307220615

namespace A212960

/-- `ceil((Δ[C(n², 2)]-n)/2)+n` -/
def P3764572757307220615.Spec : Prop :=
  ∀ n, P3764572757307220615.a n = A212960 n

end A212960

/-! ## A212960.P10490662788494551252

`∑[4*∑[a(n-2)+3]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A212960.P10490662788494551252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  f2 (n - 2) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212960.P10490662788494551252

namespace A212960

/-- `∑[4*∑[a(n-2)+3]]` -/
def P10490662788494551252.Spec : Prop :=
  ∀ n, (P10490662788494551252.a n : ℤ) = A212960 n

end A212960

/-! ## A212960.P10846709980130282976

`2*(n^3+n)-a(n-1)` with `a(0)=0`
-/

namespace A212960.P10846709980130282976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * (n ^ 3 + n) : ℤ) - a (n - 1)

end

end A212960.P10846709980130282976

namespace A212960

/-- `2*(n^3+n)-a(n-1)` -/
def P10846709980130282976.Spec : Prop :=
  ∀ n, P10846709980130282976.a n = A212960 n

end A212960

/-! ## A212960.P4687995618548653869

`∑[and(1, n)]+(2*n+1)*∑[n]`
-/

namespace A212960.P4687995618548653869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A212960.P4687995618548653869

namespace A212960

/-- `∑[and(1, n)]+(2*n+1)*∑[n]` -/
def P4687995618548653869.Spec : Prop :=
  ∀ n, (P4687995618548653869.a n : ℤ) = A212960 n

end A212960

/-! ## A212960.P18271845336383513332

`4*∑[ogf((x+x^2+x^3)/(1-2x+2x^3-x^4))]`
-/

namespace A212960.P18271845336383513332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, -2, 0, 2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212960.P18271845336383513332

namespace A212960

/-- `4*∑[ogf((x+x^2+x^3)/(1-2x+2x^3-x^4))]` -/
def P18271845336383513332.Spec : Prop :=
  ∀ n, P18271845336383513332.a n = A212960 n

end A212960

/-! ## A212960.P12360833842744037081

`floor(lcm(2*n+1, ∑[n])+(n+1)/2)`
-/

namespace A212960.P12360833842744037081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (n + 1 : ℚ) / 2⌋

end

end A212960.P12360833842744037081

namespace A212960

/-- `floor(lcm(2*n+1, ∑[n])+(n+1)/2)` -/
def P12360833842744037081.Spec : Prop :=
  ∀ n, P12360833842744037081.a n = A212960 n

end A212960

/-! ## A212960.P8409145979415249894

`2*n-(a(n-1)-2*n*n²)` with `a(0)=0`
-/

namespace A212960.P8409145979415249894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - (a (n - 1) - (2 * (n * n ^ 2) : ℤ))

end

end A212960.P8409145979415249894

namespace A212960

/-- `2*n-(a(n-1)-2*n*n²)` -/
def P8409145979415249894.Spec : Prop :=
  ∀ n, P8409145979415249894.a n = A212960 n

end A212960

/-! ## A212960.P2062424050217865688

`4*A019298(n)`
-/

namespace A212960.P2062424050217865688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A019298 n

end

end A212960.P2062424050217865688

namespace A212960

/-- `4*A019298(n)` -/
def P2062424050217865688.Spec : Prop :=
  ∀ n, P2062424050217865688.a n = A212960 n

end A212960

/-! ## A212960.P6092926161262632613

`∑[4*A077043(n)]`
-/

namespace A212960.P6092926161262632613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A077043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212960.P6092926161262632613

namespace A212960

/-- `∑[4*A077043(n)]` -/
def P6092926161262632613.Spec : Prop :=
  ∀ n, P6092926161262632613.a n = A212960 n

end A212960

/-! ## A212960.P12031974024171397329

`Δ[4*A011863(n)]`
-/

namespace A212960.P12031974024171397329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A011863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212960.P12031974024171397329

namespace A212960

/-- `Δ[4*A011863(n)]` -/
def P12031974024171397329.Spec : Prop :=
  ∀ n, P12031974024171397329.a n = A212960 n

end A212960

/-! ## A212960.P11379363958303199094

`2*(A212684(n)+n)`
-/

namespace A212960.P11379363958303199094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212684 n + (n : ℤ))

end

end A212960.P11379363958303199094

namespace A212960

/-- `2*(A212684(n)+n)` -/
def P11379363958303199094.Spec : Prop :=
  ∀ n, P11379363958303199094.a n = A212960 n

end A212960

/-! ## A212960.P16344778833556450524

`floor(A212133(n+1)/2)`
-/

namespace A212960.P16344778833556450524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212133 (n + 1) : ℚ) / 2⌋

end

end A212960.P16344778833556450524

namespace A212960

/-- `floor(A212133(n+1)/2)` -/
def P16344778833556450524.Spec : Prop :=
  ∀ n, P16344778833556450524.a n = A212960 n

end A212960

/-!
# A212962: Expansion of x*(3+x-x^3)/((1-3*x-x^2)*(1-x)*(1+x)).

The programs for A212962, the canonical program `A212962.P10778215303560945935` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212962 has offset 0).

The definition of A212962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3x+x^2-x^4)/(1-3x-2x^2+3x^3+x^4))` (program `A212962.P10778215303560945935`, by `A212962.P10778215303560945935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212962.P10778215303560945935

`ogf((3x+x^2-x^4)/(1-3x-2x^2+3x^3+x^4))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212962

/-- `ogf((3x+x^2-x^4)/(1-3x-2x^2+3x^3+x^4))` -/
def P10778215303560945935.Spec : Prop :=
  ∀ n, P10778215303560945935.a n = A212962 n

theorem P10778215303560945935.correct : P10778215303560945935.Spec := by
  intro n
  simp only [A212962]

end A212962

/-! ## A212962.P160029048643165813

`A006497(n)-floor(A001254(n)/A005248(n))`
-/

namespace A212962.P160029048643165813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 n - ⌊(A001254 n : ℚ) / (A005248 n : ℚ)⌋

end

end A212962.P160029048643165813

namespace A212962

/-- `A006497(n)-floor(A001254(n)/A005248(n))` -/
def P160029048643165813.Spec : Prop :=
  ∀ n, P160029048643165813.a n = A212962 n

end A212962

/-! ## A212962.P10305264925142329111

`A006497(n)-floor(A000032(n)²/A005248(n))`
-/

namespace A212962.P10305264925142329111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 n - ⌊(A000032 n ^ 2 : ℚ) / (A005248 n : ℚ)⌋

end

end A212962.P10305264925142329111

namespace A212962

/-- `A006497(n)-floor(A000032(n)²/A005248(n))` -/
def P10305264925142329111.Spec : Prop :=
  ∀ n, P10305264925142329111.a n = A212962 n

end A212962

/-! ## A212962.P5093526484405563838

`A006497(n)-(A129589(n+1)+A005409(n+1))%4`
-/

namespace A212962.P5093526484405563838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 n - Int.tmod (A129589 (n + 1) + A005409 (n + 1)) 4

end

end A212962.P5093526484405563838

namespace A212962

/-- `A006497(n)-(A129589(n+1)+A005409(n+1))%4` -/
def P5093526484405563838.Spec : Prop :=
  ∀ n, P5093526484405563838.a n = A212962 n

end A212962

/-! ## A212962.P8883999916968220062

`floor(sqrt(A057076(n)-2))`
-/

namespace A212962.P8883999916968220062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A057076 n - 2)

end

end A212962.P8883999916968220062

namespace A212962

/-- `floor(sqrt(A057076(n)-2))` -/
def P8883999916968220062.Spec : Prop :=
  ∀ n, P8883999916968220062.a n = A212962 n

end A212962

/-! ## A212962.P10679699002640354319

`floor(acot(A282703(n))*A282703(2*n))`
-/

namespace A212962.P10679699002640354319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A282703 n : ℝ) * (A282703 (2 * n) : ℝ)⌋

end

end A212962.P10679699002640354319

namespace A212962

/-- `floor(acot(A282703(n))*A282703(2*n))` -/
def P10679699002640354319.Spec : Prop :=
  ∀ n, P10679699002640354319.a n = A212962 n

end A212962

/-! ## A212962.P6077512276448401424

`floor(sqrt(A018186(4*n+1)%A018186(4*n)))`
-/

namespace A212962.P6077512276448401424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A018186 (4 * n + 1)) (A018186 (4 * n)))

end

end A212962.P6077512276448401424

namespace A212962

/-- `floor(sqrt(A018186(4*n+1)%A018186(4*n)))` -/
def P6077512276448401424.Spec : Prop :=
  ∀ n, P6077512276448401424.a n = A212962 n

end A212962

/-!
# A212963: a(n) = number of ordered triples (w,x,y) such that w,x,y are all in {0,...,n} and the numbers |w-x|, |x-y|, |y-w| are distinct.

The programs for A212963, the canonical program `A212963.P16109579863696699242` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212963 has offset 0).

The definition of A212963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212963.P16109579863696699242

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=12, a(4)=36`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212963

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P16109579863696699242.Spec : Prop :=
  ∀ n, P16109579863696699242.a n = A212963 n

theorem P16109579863696699242.correct : P16109579863696699242.Spec := by
  intro n
  simp only [A212963]

end A212963

/-! ## A212963.P4126398340092163380

`∑[3*and(-2, (1-n)²)]`
-/

namespace A212963.P4126398340092163380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (-2) ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212963.P4126398340092163380

namespace A212963

/-- `∑[3*and(-2, (1-n)²)]` -/
def P4126398340092163380.Spec : Prop :=
  ∀ n, P4126398340092163380.a n = A212963 n

end A212963

/-! ## A212963.P10146044197045494622

`∑[6*floor((1-n)²/2)]`
-/

namespace A212963.P10146044197045494622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊((1 - (n : ℤ)) ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212963.P10146044197045494622

namespace A212963

/-- `∑[6*floor((1-n)²/2)]` -/
def P10146044197045494622.Spec : Prop :=
  ∀ n, P10146044197045494622.a n = A212963 n

end A212963

/-! ## A212963.P8786248630325279580

`12*C(n, 3)-a(n-1)` with `a(0)=0`
-/

namespace A212963.P8786248630325279580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (12 * Nat.choose n 3 : ℤ) - a (n - 1)

end

end A212963.P8786248630325279580

namespace A212963

/-- `12*C(n, 3)-a(n-1)` -/
def P8786248630325279580.Spec : Prop :=
  ∀ n, P8786248630325279580.a n = A212963 n

end A212963

/-! ## A212963.P1042861870839304157

`3*∑[or(1, (1-n)²)-1]`
-/

namespace A212963.P1042861870839304157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((1 - (n : ℤ)) ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212963.P1042861870839304157

namespace A212963

/-- `3*∑[or(1, (1-n)²)-1]` -/
def P1042861870839304157.Spec : Prop :=
  ∀ n, P1042861870839304157.a n = A212963 n

end A212963

/-! ## A212963.P9624540759087561652

`3*∑[n²-lt[n, xor(2, n)]]`
-/

namespace A212963.P9624540759087561652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (SequenceMachineLib.nth (fun j => f2 j < f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212963.P9624540759087561652

namespace A212963

/-- `3*∑[n²-lt[n, xor(2, n)]]` -/
def P9624540759087561652.Spec : Prop :=
  ∀ n, P9624540759087561652.a n = A212963 n

end A212963

/-! ## A212963.P1613456379666509822

`3*∑[(1-n)²-log2(gcd(2, n))]`
-/

namespace A212963.P1613456379666509822
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212963.P1613456379666509822

namespace A212963

/-- `3*∑[(1-n)²-log2(gcd(2, n))]` -/
def P1613456379666509822.Spec : Prop :=
  ∀ n, P1613456379666509822.a n = (A212963 n : ℝ)

end A212963

/-! ## A212963.P15873391360101308646

`3*∑[4-∑[a(n-2)-4]]` with `a(0)=4, a(1)=0`
-/

namespace A212963.P15873391360101308646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f2 =>
  f2 (n - 2) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212963.P15873391360101308646

namespace A212963

/-- `3*∑[4-∑[a(n-2)-4]]` -/
def P15873391360101308646.Spec : Prop :=
  ∀ n, P15873391360101308646.a n = A212963 n

end A212963

/-! ## A212963.P10153993742682503417

`3*∑[ogf(4x^3/(1-2x+2x^3-x^4))]`
-/

namespace A212963.P10153993742682503417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 4] [1, -2, 0, 2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212963.P10153993742682503417

namespace A212963

/-- `3*∑[ogf(4x^3/(1-2x+2x^3-x^4))]` -/
def P10153993742682503417.Spec : Prop :=
  ∀ n, P10153993742682503417.a n = A212963 n

end A212963

/-! ## A212963.P11435682128483334634

`a(n-2)+6*(n-2)*(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A212963.P11435682128483334634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + 6 * (((n : ℤ) - 2) * ((n : ℤ) - 1))

end

end A212963.P11435682128483334634

namespace A212963

/-- `a(n-2)+6*(n-2)*(n-1)` -/
def P11435682128483334634.Spec : Prop :=
  ∀ n, P11435682128483334634.a n = A212963 n

end A212963

/-! ## A212963.P7811618183999617585

`2*n*(n-1)*(n-2)-a(n-1)` with `a(0)=0`
-/

namespace A212963.P7811618183999617585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) * (((n : ℤ) - 1) * ((n : ℤ) - 2)) - a (n - 1)

end

end A212963.P7811618183999617585

namespace A212963

/-- `2*n*(n-1)*(n-2)-a(n-1)` -/
def P7811618183999617585.Spec : Prop :=
  ∀ n, P7811618183999617585.a n = A212963 n

end A212963

/-! ## A212963.P18287573824485352620

`6*A212964(n)`
-/

namespace A212963.P18287573824485352620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A212964 n

end

end A212963.P18287573824485352620

namespace A212963

/-- `6*A212964(n)` -/
def P18287573824485352620.Spec : Prop :=
  ∀ n, P18287573824485352620.a n = A212963 n

end A212963

/-! ## A212963.P3338315380774308634

`3*∑[A137932(n)]`
-/

namespace A212963.P3338315380774308634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212963.P3338315380774308634

namespace A212963

/-- `3*∑[A137932(n)]` -/
def P3338315380774308634.Spec : Prop :=
  ∀ n, P3338315380774308634.a n = A212963 n

end A212963

/-! ## A212963.P13523987793964288564

`6*∑[A000982(n)-n]`
-/

namespace A212963.P13523987793964288564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212963.P13523987793964288564

namespace A212963

/-- `6*∑[A000982(n)-n]` -/
def P13523987793964288564.Spec : Prop :=
  ∀ n, P13523987793964288564.a n = A212963 n

end A212963

/-! ## A212963.P10536243099368119696

`12*∑[A002620(abs(1-n))]`
-/

namespace A212963.P10536243099368119696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212963.P10536243099368119696

namespace A212963

/-- `12*∑[A002620(abs(1-n))]` -/
def P10536243099368119696.Spec : Prop :=
  ∀ n, P10536243099368119696.a n = A212963 n

end A212963

/-! ## A212963.P2284903572707219752

`6*∑[∑[n]-A032766(n)]`
-/

namespace A212963.P2284903572707219752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212963.P2284903572707219752

namespace A212963

/-- `6*∑[∑[n]-A032766(n)]` -/
def P2284903572707219752.Spec : Prop :=
  ∀ n, P2284903572707219752.a n = A212963 n

end A212963

/-! ## A212963.P16873688104952201648

`A011379(n)-A195015(n)`
-/

namespace A212963.P16873688104952201648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n - A195015 n

end

end A212963.P16873688104952201648

namespace A212963

/-- `A011379(n)-A195015(n)` -/
def P16873688104952201648.Spec : Prop :=
  ∀ n, P16873688104952201648.a n = A212963 n

end A212963

/-! ## A212963.P10591293572840250769

`A152618(n)-A097063(n)`
-/

namespace A212963.P10591293572840250769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152618 n - A097063 n

end

end A212963.P10591293572840250769

namespace A212963

/-- `A152618(n)-A097063(n)` -/
def P10591293572840250769.Spec : Prop :=
  ∀ n, P10591293572840250769.a n = A212963 n

end A212963

/-! ## A212963.P8912443233572630371

`A085490(n)-A195142(n)`
-/

namespace A212963.P8912443233572630371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 n - A195142 n

end

end A212963.P8912443233572630371

namespace A212963

/-- `A085490(n)-A195142(n)` -/
def P8912443233572630371.Spec : Prop :=
  ∀ n, P8912443233572630371.a n = A212963 n

end A212963

/-! ## A212963.P6195059714287797485

`2*(∑[A319127(n+1)]-A319127(n+1))`
-/

namespace A212963.P6195059714287797485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A319127 (n + 1))

end

end A212963.P6195059714287797485

namespace A212963

/-- `2*(∑[A319127(n+1)]-A319127(n+1))` -/
def P6195059714287797485.Spec : Prop :=
  ∀ n, P6195059714287797485.a n = A212963 n

end A212963

/-!
# A212964: Number of (w,x,y) with all terms in {0,...,n} and |w-x| < |x-y| < |y-w|.

The programs for A212964, the canonical program `A212964.P6932297142561232612` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212964 has offset 0).

The definition of A212964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212964.P6932297142561232612

`(2*n-1)*(2*n²-2*n-3)/24-(-1)^n/8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212964

/-- `(2*n-1)*(2*n²-2*n-3)/24-(-1)^n/8` -/
def P6932297142561232612.Spec : Prop :=
  ∀ n, P6932297142561232612.a n = (A212964 n : ℚ)

end A212964

/-! ## A212964.P10137267871528539189

`∑[and(-2, (1-n)²)]/2`
-/

namespace A212964.P10137267871528539189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A212964.P10137267871528539189

namespace A212964

/-- `∑[and(-2, (1-n)²)]/2` -/
def P10137267871528539189.Spec : Prop :=
  ∀ n, P10137267871528539189.a n = (A212964 n : ℚ)

end A212964

/-! ## A212964.P11003252043304155321

`∑[n²-comp[or(2, n)]]/2`
-/

namespace A212964.P11003252043304155321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A212964.P11003252043304155321

namespace A212964

/-- `∑[n²-comp[or(2, n)]]/2` -/
def P11003252043304155321.Spec : Prop :=
  ∀ n, P11003252043304155321.a n = (A212964 n : ℚ)

end A212964

/-! ## A212964.P4891676353642053419

`∑[or(1, (1-n)²)-1]/2`
-/

namespace A212964.P4891676353642053419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((1 - (n : ℤ)) ^ 2) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A212964.P4891676353642053419

namespace A212964

/-- `∑[or(1, (1-n)²)-1]/2` -/
def P4891676353642053419.Spec : Prop :=
  ∀ n, P4891676353642053419.a n = (A212964 n : ℚ)

end A212964

/-! ## A212964.P18264690307744523381

`floor(∑[∑[a(n-2)+2]])` with `a(0)=0, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A212964.P18264690307744523381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212964.P18264690307744523381

namespace A212964

/-- `floor(∑[∑[a(n-2)+2]])` -/
def P18264690307744523381.Spec : Prop :=
  ∀ n, (P18264690307744523381.a n : ℤ) = A212964 n

end A212964

/-! ## A212964.P9772387855857440491

`∑[xor((1-n)², char[2*n])]/2`
-/

namespace A212964.P9772387855857440491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((1 - (n : ℤ)) ^ 2) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A212964.P9772387855857440491

namespace A212964

/-- `∑[xor((1-n)², char[2*n])]/2` -/
def P9772387855857440491.Spec : Prop :=
  ∀ n, P9772387855857440491.a n = (A212964 n : ℚ)

end A212964

/-! ## A212964.P15440317486409102487

`2*∑[∑[a(n-2)+1]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A212964.P15440317486409102487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212964.P15440317486409102487

namespace A212964

/-- `2*∑[∑[a(n-2)+1]]` -/
def P15440317486409102487.Spec : Prop :=
  ∀ n, (P15440317486409102487.a n : ℤ) = A212964 n

end A212964

/-! ## A212964.P2712904326291029691

`∑[∑[a(n-2)+4]]/2` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A212964.P2712904326291029691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A212964.P2712904326291029691

namespace A212964

/-- `∑[∑[a(n-2)+4]]/2` -/
def P2712904326291029691.Spec : Prop :=
  ∀ n, P2712904326291029691.a n = (A212964 n : ℚ)

end A212964

/-! ## A212964.P1449097925344887688

`2*∑[n-(2-a(n-2))]` with `a(0)=0, a(1)=0`
-/

namespace A212964.P1449097925344887688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (n : ℤ) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212964.P1449097925344887688

namespace A212964

/-- `2*∑[n-(2-a(n-2))]` -/
def P1449097925344887688.Spec : Prop :=
  ∀ n, P1449097925344887688.a n = A212964 n

end A212964

/-! ## A212964.P16912522877497407447

`floor(∑[2-∑[a(n-2)-2]])` with `a(0)=2, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A212964.P16912522877497407447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  f2 (n - 2) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212964.P16912522877497407447

namespace A212964

/-- `floor(∑[2-∑[a(n-2)-2]])` -/
def P16912522877497407447.Spec : Prop :=
  ∀ n, P16912522877497407447.a n = A212964 n

end A212964

/-! ## A212964.P6210000304642054672

`floor(a(n-1)+(1-n)²/2)` with `a(0)=0`
-/

namespace A212964.P6210000304642054672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((1 - (n : ℤ)) ^ 2 : ℚ) / 2⌋

end

end A212964.P6210000304642054672

namespace A212964

/-- `floor(a(n-1)+(1-n)²/2)` -/
def P6210000304642054672.Spec : Prop :=
  ∀ n, P6210000304642054672.a n = A212964 n

end A212964

/-! ## A212964.P8261223016517985153

`∑[(1-n)²-and(1, n+1)]/2`
-/

namespace A212964.P8261223016517985153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A212964.P8261223016517985153

namespace A212964

/-- `∑[(1-n)²-and(1, n+1)]/2` -/
def P8261223016517985153.Spec : Prop :=
  ∀ n, P8261223016517985153.a n = (A212964 n : ℚ)

end A212964

/-! ## A212964.P3898309331563906884

`lcm(2, ∑[floor((n-1)*(n-1)/2)])`
-/

namespace A212964.P3898309331563906884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 1 : ℚ) / 2)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212964.P3898309331563906884

namespace A212964

/-- `lcm(2, ∑[floor((n-1)*(n-1)/2)])` -/
def P3898309331563906884.Spec : Prop :=
  ∀ n, (P3898309331563906884.a n : ℤ) = A212964 n

end A212964

/-! ## A212964.P13495846683322545984

`A212963(n)/6`
-/

namespace A212964.P13495846683322545984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212963 n : ℚ) / 6

end

end A212964.P13495846683322545984

namespace A212964

/-- `A212963(n)/6` -/
def P13495846683322545984.Spec : Prop :=
  ∀ n, P13495846683322545984.a n = (A212964 n : ℚ)

end A212964

/-! ## A212964.P10688451161400325565

`∑[A137932(n)/2]`
-/

namespace A212964.P10688451161400325565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137932 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212964.P10688451161400325565

namespace A212964

/-- `∑[A137932(n)/2]` -/
def P10688451161400325565.Spec : Prop :=
  ∀ n, P10688451161400325565.a n = (A212964 n : ℚ)

end A212964

/-! ## A212964.P14978312325826042203

`∑[A000982(n)-n]`
-/

namespace A212964.P14978312325826042203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212964.P14978312325826042203

namespace A212964

/-- `∑[A000982(n)-n]` -/
def P14978312325826042203.Spec : Prop :=
  ∀ n, P14978312325826042203.a n = A212964 n

end A212964

/-! ## A212964.P16888163891534600877

`∑[A007590(abs(1-n))]`
-/

namespace A212964.P16888163891534600877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212964.P16888163891534600877

namespace A212964

/-- `∑[A007590(abs(1-n))]` -/
def P16888163891534600877.Spec : Prop :=
  ∀ n, P16888163891534600877.a n = A212964 n

end A212964

/-! ## A212964.P17313816247320624021

`∑[A061925(n)-(n+1)]`
-/

namespace A212964.P17313816247320624021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212964.P17313816247320624021

namespace A212964

/-- `∑[A061925(n)-(n+1)]` -/
def P17313816247320624021.Spec : Prop :=
  ∀ n, P17313816247320624021.a n = A212964 n

end A212964

/-! ## A212964.P13263529484748625848

`2*(A088795(n+1)-(n+1))`
-/

namespace A212964.P13263529484748625848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088795 (n + 1) - (n + 1 : ℤ))

end

end A212964.P13263529484748625848

namespace A212964

/-- `2*(A088795(n+1)-(n+1))` -/
def P13263529484748625848.Spec : Prop :=
  ∀ n, P13263529484748625848.a n = A212964 n

end A212964

/-! ## A212964.P13466548132824537370

`A100705(n)%A007904(n)`
-/

namespace A212964.P13466548132824537370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100705 n) (A007904 n)

end

end A212964.P13466548132824537370

namespace A212964

/-- `A100705(n)%A007904(n)` -/
def P13466548132824537370.Spec : Prop :=
  ∀ n, P13466548132824537370.a n = A212964 n

end A212964

/-!
# A212965: Number of triples (w,x,y) with all terms in {0,...,n} and such that w = max(w,x,y) - min(w,x,y).

The programs for A212965, the canonical program `A212965.P15082766301879811929` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212965 has offset 0).

The definition of A212965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212965.P360324470770168450

`(14*n*(n+1)+(2*n+1)*(-1)^n+7)/8`
-/

namespace A212965.P360324470770168450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * n * (n + 1) : ℤ) + (2 * n + 1 : ℤ) * (-1) ^ n + 7 : ℚ) / 8

end

end A212965.P360324470770168450

namespace A212965

/-- `(14*n*(n+1)+(2*n+1)*(-1)^n+7)/8` -/
def P360324470770168450.Spec : Prop :=
  ∀ n, P360324470770168450.a n = (A212965 n : ℚ)

theorem P360324470770168450.correct : P360324470770168450.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A212965, Nat.add_sub_cancel, A212965.P360324470770168450.a, A212965.P15082766301879811929.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A212965, Nat.add_sub_cancel, A212965.P360324470770168450.a, A212965.P15082766301879811929.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212965

/-! ## A212965.P15082766301879811929

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=21, a(4)=37`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212965

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P15082766301879811929.Spec : Prop :=
  ∀ n, P15082766301879811929.a n = A212965 n

theorem P15082766301879811929.correct : P15082766301879811929.Spec := by
  intro n
  simp only [A212965]

end A212965

/-! ## A212965.P1980615776311336093

`∑[n*(gcd(2, n)+2)]+1`
-/

namespace A212965.P1980615776311336093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.gcd 2 n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A212965.P1980615776311336093

namespace A212965

/-- `∑[n*(gcd(2, n)+2)]+1` -/
def P1980615776311336093.Spec : Prop :=
  ∀ n, (P1980615776311336093.a n : ℤ) = A212965 n

end A212965

/-! ## A212965.P11429081568868095279

`∑[n*(4-n%2)]+1`
-/

namespace A212965.P11429081568868095279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (4 - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A212965.P11429081568868095279

namespace A212965

/-- `∑[n*(4-n%2)]+1` -/
def P11429081568868095279.Spec : Prop :=
  ∀ n, P11429081568868095279.a n = A212965 n

end A212965

/-! ## A212965.P3810797971865828419

`∑[n*(4-and(1, n))]+1`
-/

namespace A212965.P3810797971865828419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (4 - (Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A212965.P3810797971865828419

namespace A212965

/-- `∑[n*(4-and(1, n))]+1` -/
def P3810797971865828419.Spec : Prop :=
  ∀ n, P3810797971865828419.a n = A212965 n

end A212965

/-! ## A212965.P11508807821972080815

`1-∑[n*(and(1, n)-4)]`
-/

namespace A212965.P11508807821972080815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.land 1 n : ℤ) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212965.P11508807821972080815

namespace A212965

/-- `1-∑[n*(and(1, n)-4)]` -/
def P11508807821972080815.Spec : Prop :=
  ∀ n, P11508807821972080815.a n = A212965 n

end A212965

/-! ## A212965.P1060874593826366591

`A014255(n)+n²`
-/

namespace A212965.P1060874593826366591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n + (n ^ 2 : ℤ)

end

end A212965.P1060874593826366591

namespace A212965

/-- `A014255(n)+n²` -/
def P1060874593826366591.Spec : Prop :=
  ∀ n, P1060874593826366591.a n = A212965 n

end A212965

/-! ## A212965.P12754301570409854032

`A247643(n)+∑[n]`
-/

namespace A212965.P12754301570409854032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247643 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212965.P12754301570409854032

namespace A212965

/-- `A247643(n)+∑[n]` -/
def P12754301570409854032.Spec : Prop :=
  ∀ n, P12754301570409854032.a n = A212965 n

end A212965

/-! ## A212965.P9988709040106667108

`A032438(n)+(n+1)²`
-/

namespace A212965.P9988709040106667108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 n + ((n + 1) ^ 2 : ℤ)

end

end A212965.P9988709040106667108

namespace A212965

/-- `A032438(n)+(n+1)²` -/
def P9988709040106667108.Spec : Prop :=
  ∀ n, P9988709040106667108.a n = A212965 n

end A212965

/-! ## A212965.P15574144633271953025

`A239767(n)+∑[n+1]`
-/

namespace A212965.P15574144633271953025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239767 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212965.P15574144633271953025

namespace A212965

/-- `A239767(n)+∑[n+1]` -/
def P15574144633271953025.Spec : Prop :=
  ∀ n, P15574144633271953025.a n = A212965 n

end A212965

/-! ## A212965.P10611326285291903179

`∑[A257088(n)+2*n]`
-/

namespace A212965.P10611326285291903179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212965.P10611326285291903179

namespace A212965

/-- `∑[A257088(n)+2*n]` -/
def P10611326285291903179.Spec : Prop :=
  ∀ n, P10611326285291903179.a n = A212965 n

end A212965

/-! ## A212965.P2140490224587056680

`A257083(n)+n²+n`
-/

namespace A212965.P2140490224587056680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n + (n ^ 2 + n : ℤ)

end

end A212965.P2140490224587056680

namespace A212965

/-- `A257083(n)+n²+n` -/
def P2140490224587056680.Spec : Prop :=
  ∀ n, P2140490224587056680.a n = A212965 n

end A212965

/-! ## A212965.P14034152705429432891

`(n+1)^3-A213498(n)`
-/

namespace A212965.P14034152705429432891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213498 n

end

end A212965.P14034152705429432891

namespace A212965

/-- `(n+1)^3-A213498(n)` -/
def P14034152705429432891.Spec : Prop :=
  ∀ n, P14034152705429432891.a n = A212965 n

end A212965

/-! ## A212965.P2309578857233754758

`∑[A114752(n+1)]+n²`
-/

namespace A212965.P2309578857233754758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A212965.P2309578857233754758

namespace A212965

/-- `∑[A114752(n+1)]+n²` -/
def P2309578857233754758.Spec : Prop :=
  ∀ n, P2309578857233754758.a n = A212965 n

end A212965

/-! ## A212965.P8432057199990440657

`∑[A004277(n)+n*gcd(2, n)]`
-/

namespace A212965.P8432057199990440657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (n * Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212965.P8432057199990440657

namespace A212965

/-- `∑[A004277(n)+n*gcd(2, n)]` -/
def P8432057199990440657.Spec : Prop :=
  ∀ n, P8432057199990440657.a n = A212965 n

end A212965

/-! ## A212965.P5258331707397586637

`round((A047346(n+1)+1)²/7)`
-/

namespace A212965.P5258331707397586637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A047346 (n + 1) + 1) ^ 2 : ℚ) / 7)

end

end A212965.P5258331707397586637

namespace A212965

/-- `round((A047346(n+1)+1)²/7)` -/
def P5258331707397586637.Spec : Prop :=
  ∀ n, P5258331707397586637.a n = A212965 n

end A212965

/-! ## A212965.P16190176554319842089

`round((A032766(n)+2+n+n)²/7)`
-/

namespace A212965.P16190176554319842089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A032766 n + 2 + (n : ℤ) + (n : ℤ)) ^ 2 : ℚ) / 7)

end

end A212965.P16190176554319842089

namespace A212965

/-- `round((A032766(n)+2+n+n)²/7)` -/
def P16190176554319842089.Spec : Prop :=
  ∀ n, P16190176554319842089.a n = A212965 n

end A212965

/-! ## A212965.P1017109515828110858

`A212959(n)+A008794(n)`
-/

namespace A212965.P1017109515828110858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n + A008794 n

end

end A212965.P1017109515828110858

namespace A212965

/-- `A212959(n)+A008794(n)` -/
def P1017109515828110858.Spec : Prop :=
  ∀ n, P1017109515828110858.a n = A212965 n

end A212965

/-! ## A212965.P8062922886120229468

`A393677(n)+A135276(n)`
-/

namespace A212965.P8062922886120229468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393677 n + A135276 n

end

end A212965.P8062922886120229468

namespace A212965

/-- `A393677(n)+A135276(n)` -/
def P8062922886120229468.Spec : Prop :=
  ∀ n, P8062922886120229468.a n = A212965 n

end A212965

/-! ## A212965.P17280384162502558750

`A005891(n)-A152749(n)`
-/

namespace A212965.P17280384162502558750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n - A152749 n

end

end A212965.P17280384162502558750

namespace A212965

/-- `A005891(n)-A152749(n)` -/
def P17280384162502558750.Spec : Prop :=
  ∀ n, P17280384162502558750.a n = A212965 n

end A212965

/-!
# A212966: Number of (w,x,y) with all terms in {0,...,n} and 2*w=range{w,x,y}.

The programs for A212966, the canonical program `A212966.P4497714432616586426` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212966 has offset 0).

The definition of A212966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212966.P4497714432616586426

`a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=8, a(4)=10, a(5)=12, a(6)=23, a(7)=25`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212966

/-- `a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` -/
def P4497714432616586426.Spec : Prop :=
  ∀ n, P4497714432616586426.a n = A212966 n

theorem P4497714432616586426.correct : P4497714432616586426.Spec := by
  intro n
  simp only [A212966]

end A212966

/-! ## A212966.P8325355597738947429

`∑[A109613(n)+A038608(A004396(n))]`
-/

namespace A212966.P8325355597738947429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A038608 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212966.P8325355597738947429

namespace A212966

/-- `∑[A109613(n)+A038608(A004396(n))]` -/
def P8325355597738947429.Spec : Prop :=
  ∀ n, P8325355597738947429.a n = A212966 n

end A212966

/-! ## A212966.P14105928578201708393

`A000982(comp[4*n])-A000982(n)`
-/

namespace A212966.P14105928578201708393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A000982 n

end

end A212966.P14105928578201708393

namespace A212966

/-- `A000982(comp[4*n])-A000982(n)` -/
def P14105928578201708393.Spec : Prop :=
  ∀ n, P14105928578201708393.a n = A212966 n

end A212966

/-! ## A212966.P8590414009730711177

`A061925(Δ[A071619(n)])-A061925(n)`
-/

namespace A212966.P8590414009730711177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 (f1 (n + 1) - f1 n).toNat - A061925 n

end

end A212966.P8590414009730711177

namespace A212966

/-- `A061925(Δ[A071619(n)])-A061925(n)` -/
def P8590414009730711177.Spec : Prop :=
  ∀ n, P8590414009730711177.a n = A212966 n

end A212966

/-! ## A212966.P2216087912672364147

`A008619(n)-∑[A168223(2*n)]`
-/

namespace A212966.P2216087912672364147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168223 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212966.P2216087912672364147

namespace A212966

/-- `A008619(n)-∑[A168223(2*n)]` -/
def P2216087912672364147.Spec : Prop :=
  ∀ n, P2216087912672364147.a n = A212966 n

end A212966

/-! ## A212966.P14061828525850047061

`A174738(∑[gcd(5, n%3)])+A008619(n)`
-/

namespace A212966.P14061828525850047061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (∑ j ∈ Finset.range (n + 1), f1 j) + A008619 n

end

end A212966.P14061828525850047061

namespace A212966

/-- `A174738(∑[gcd(5, n%3)])+A008619(n)` -/
def P14061828525850047061.Spec : Prop :=
  ∀ n, P14061828525850047061.a n = A212966 n

end A212966

/-! ## A212966.P15628557613176918704

`A004525(A004396(2*n+1)²-n²)`
-/

namespace A212966.P15628557613176918704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 (2 * n + 1) ^ 2 - (n ^ 2 : ℤ)).toNat

end

end A212966.P15628557613176918704

namespace A212966

/-- `A004525(A004396(2*n+1)²-n²)` -/
def P15628557613176918704.Spec : Prop :=
  ∀ n, P15628557613176918704.a n = A212966 n

end A212966

/-!
# A212967: Number of (w,x,y) with all terms in {0,...,n} and w < range{w,x,y}.

The programs for A212967, the canonical program `A212967.P17330647537761317883` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212967 has offset 0).

The definition of A212967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212967.P17330647537761317883

`(n+1)*(10*n*(n+2)-3*(-1)^n+3)/24`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212967

/-- `(n+1)*(10*n*(n+2)-3*(-1)^n+3)/24` -/
def P17330647537761317883.Spec : Prop :=
  ∀ n, P17330647537761317883.a n = (A212967 n : ℚ)

end A212967

/-! ## A212967.P16713273470489741747

`∑[∑[lcm(2, n)+n]]`
-/

namespace A212967.P16713273470489741747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212967.P16713273470489741747

namespace A212967

/-- `∑[∑[lcm(2, n)+n]]` -/
def P16713273470489741747.Spec : Prop :=
  ∀ n, (P16713273470489741747.a n : ℤ) = A212967 n

end A212967

/-! ## A212967.P12663894340338136401

`∑[∑[n*(n%2+2)]]`
-/

namespace A212967.P12663894340338136401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2 + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212967.P12663894340338136401

namespace A212967

/-- `∑[∑[n*(n%2+2)]]` -/
def P12663894340338136401.Spec : Prop :=
  ∀ n, (P12663894340338136401.a n : ℤ) = A212967 n

end A212967

/-! ## A212967.P8594082839419653854

`∑[∑[n*(4-gcd(2, n))]]`
-/

namespace A212967.P8594082839419653854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (4 - (Nat.gcd 2 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212967.P8594082839419653854

namespace A212967

/-- `∑[∑[n*(4-gcd(2, n))]]` -/
def P8594082839419653854.Spec : Prop :=
  ∀ n, P8594082839419653854.a n = A212967 n

end A212967

/-! ## A212967.P3625708940365155084

`∑[∑[n*(and(1, n)+2)]]`
-/

namespace A212967.P3625708940365155084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212967.P3625708940365155084

namespace A212967

/-- `∑[∑[n*(and(1, n)+2)]]` -/
def P3625708940365155084.Spec : Prop :=
  ∀ n, (P3625708940365155084.a n : ℤ) = A212967 n

end A212967

/-! ## A212967.P16502131003434258759

`∑[A036666(n+1)]`
-/

namespace A212967.P16502131003434258759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212967.P16502131003434258759

namespace A212967

/-- `∑[A036666(n+1)]` -/
def P16502131003434258759.Spec : Prop :=
  ∀ n, P16502131003434258759.a n = A212967 n

end A212967

/-! ## A212967.P6521571740886844306

`∑[A273365(n)/2]`
-/

namespace A212967.P6521571740886844306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273365 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212967.P6521571740886844306

namespace A212967

/-- `∑[A273365(n)/2]` -/
def P6521571740886844306.Spec : Prop :=
  ∀ n, P6521571740886844306.a n = (A212967 n : ℚ)

end A212967

/-! ## A212967.P13426149828862801770

`∑[A298950(n+1)-1]`
-/

namespace A212967.P13426149828862801770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212967.P13426149828862801770

namespace A212967

/-- `∑[A298950(n+1)-1]` -/
def P13426149828862801770.Spec : Prop :=
  ∀ n, P13426149828862801770.a n = A212967 n

end A212967

/-! ## A212967.P15664147455460231519

`∑[A213498(n)]-∑[n]²`
-/

namespace A212967.P15664147455460231519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213498 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A212967.P15664147455460231519

namespace A212967

/-- `∑[A213498(n)]-∑[n]²` -/
def P15664147455460231519.Spec : Prop :=
  ∀ n, P15664147455460231519.a n = A212967 n

end A212967

/-! ## A212967.P4414712465238395379

`(n+1)^3-A212968(n)`
-/

namespace A212967.P4414712465238395379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A212968 n

end

end A212967.P4414712465238395379

namespace A212967

/-- `(n+1)^3-A212968(n)` -/
def P4414712465238395379.Spec : Prop :=
  ∀ n, P4414712465238395379.a n = A212967 n

end A212967

/-! ## A212967.P10827734335083075645

`A212981(n)+A001318(n)`
-/

namespace A212967.P10827734335083075645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212981 n + A001318 n

end

end A212967.P10827734335083075645

namespace A212967

/-- `A212981(n)+A001318(n)` -/
def P10827734335083075645.Spec : Prop :=
  ∀ n, P10827734335083075645.a n = A212967 n

end A212967

/-! ## A212967.P14257972894121071918

`A342397(n)+A109900(n)`
-/

namespace A212967.P14257972894121071918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342397 n + A109900 n

end

end A212967.P14257972894121071918

namespace A212967

/-- `A342397(n)+A109900(n)` -/
def P14257972894121071918.Spec : Prop :=
  ∀ n, P14257972894121071918.a n = A212967 n

end A212967

/-! ## A212967.P12104803477187688635

`A055232(n)-A005993(n)`
-/

namespace A212967.P12104803477187688635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055232 n - A005993 n

end

end A212967.P12104803477187688635

namespace A212967

/-- `A055232(n)-A005993(n)` -/
def P12104803477187688635.Spec : Prop :=
  ∀ n, P12104803477187688635.a n = A212967 n

end A212967

/-! ## A212967.P6822820471116308858

`A212968(n)-A059329(n)`
-/

namespace A212967.P6822820471116308858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212968 n - A059329 n

end

end A212967.P6822820471116308858

namespace A212967

/-- `A212968(n)-A059329(n)` -/
def P6822820471116308858.Spec : Prop :=
  ∀ n, P6822820471116308858.a n = A212967 n

end A212967

/-! ## A212967.P29038178987890847

`A212970(n)+A002620(n+1)`
-/

namespace A212967.P29038178987890847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212970 n + A002620 (n + 1)

end

end A212967.P29038178987890847

namespace A212967

/-- `A212970(n)+A002620(n+1)` -/
def P29038178987890847.Spec : Prop :=
  ∀ n, P29038178987890847.a n = A212967 n

end A212967

/-! ## A212967.P15251945538899957630

`A272459(n+1)+A093353(n)`
-/

namespace A212967.P15251945538899957630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272459 (n + 1) + A093353 n

end

end A212967.P15251945538899957630

namespace A212967

/-- `A272459(n+1)+A093353(n)` -/
def P15251945538899957630.Spec : Prop :=
  ∀ n, P15251945538899957630.a n = A212967 n

end A212967

/-! ## A212967.P13659851037206216694

`A064412(n+1)-A008804(n)`
-/

namespace A212967.P13659851037206216694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (n + 1) - A008804 n

end

end A212967.P13659851037206216694

namespace A212967

/-- `A064412(n+1)-A008804(n)` -/
def P13659851037206216694.Spec : Prop :=
  ∀ n, P13659851037206216694.a n = A212967 n

end A212967

/-! ## A212967.P11032287970371270686

`A317614(n+1)-A030533(n)`
-/

namespace A212967.P11032287970371270686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) - A030533 n

end

end A212967.P11032287970371270686

namespace A212967

/-- `A317614(n+1)-A030533(n)` -/
def P11032287970371270686.Spec : Prop :=
  ∀ n, P11032287970371270686.a n = A212967 n

end A212967

/-! ## A212967.P11319305287871791524

`A162148(n)-A272459(n+1)`
-/

namespace A212967.P11319305287871791524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n - A272459 (n + 1)

end

end A212967.P11319305287871791524

namespace A212967

/-- `A162148(n)-A272459(n+1)` -/
def P11319305287871791524.Spec : Prop :=
  ∀ n, P11319305287871791524.a n = A212967 n

end A212967

/-! ## A212967.P14322799789892363995

`A000292(n)+2*A109900(n)`
-/

namespace A212967.P14322799789892363995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + 2 * A109900 n

end

end A212967.P14322799789892363995

namespace A212967

/-- `A000292(n)+2*A109900(n)` -/
def P14322799789892363995.Spec : Prop :=
  ∀ n, P14322799789892363995.a n = A212967 n

end A212967

/-!
# A212968: Number of (w,x,y) with all terms in {0,...,n} and w>=range{w,x,y}.

The programs for A212968, the canonical program `A212968.P12994650612008474634` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212968 has offset 0).

The definition of A212968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212968.P12994650612008474634

`(n+1)*(14*n*(n+2)+3*(-1)^n+21)/24`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212968

/-- `(n+1)*(14*n*(n+2)+3*(-1)^n+21)/24` -/
def P12994650612008474634.Spec : Prop :=
  ∀ n, P12994650612008474634.a n = (A212968 n : ℚ)

end A212968

/-! ## A212968.P8202266087652063699

`∑[∑[n*(gcd(2, n)+2)]+1]`
-/

namespace A212968.P8202266087652063699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.gcd 2 n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212968.P8202266087652063699

namespace A212968

/-- `∑[∑[n*(gcd(2, n)+2)]+1]` -/
def P8202266087652063699.Spec : Prop :=
  ∀ n, (P8202266087652063699.a n : ℤ) = A212968 n

end A212968

/-! ## A212968.P1541030940734949152

`∑[∑[n*(4-n%2)]+1]`
-/

namespace A212968.P1541030940734949152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (4 - ((n % 2 : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212968.P1541030940734949152

namespace A212968

/-- `∑[∑[n*(4-n%2)]+1]` -/
def P1541030940734949152.Spec : Prop :=
  ∀ n, P1541030940734949152.a n = A212968 n

end A212968

/-! ## A212968.P17627415683150594335

`∑[1-∑[n*(and(1, n)-4)]]`
-/

namespace A212968.P17627415683150594335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.land 1 n : ℤ) - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212968.P17627415683150594335

namespace A212968

/-- `∑[1-∑[n*(and(1, n)-4)]]` -/
def P17627415683150594335.Spec : Prop :=
  ∀ n, P17627415683150594335.a n = A212968 n

end A212968

/-! ## A212968.P9462032304258690735

`∑[A212965(n)]`
-/

namespace A212968.P9462032304258690735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212968.P9462032304258690735

namespace A212968

/-- `∑[A212965(n)]` -/
def P9462032304258690735.Spec : Prop :=
  ∀ n, P9462032304258690735.a n = A212968 n

end A212968

/-! ## A212968.P5211438002832745028

`∑[A014255(n)+n²]`
-/

namespace A212968.P5211438002832745028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212968.P5211438002832745028

namespace A212968

/-- `∑[A014255(n)+n²]` -/
def P5211438002832745028.Spec : Prop :=
  ∀ n, P5211438002832745028.a n = A212968 n

end A212968

/-! ## A212968.P1365802634687257238

`(n+1)^3-A212967(n)`
-/

namespace A212968.P1365802634687257238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A212967 n

end

end A212968.P1365802634687257238

namespace A212968

/-- `(n+1)^3-A212967(n)` -/
def P1365802634687257238.Spec : Prop :=
  ∀ n, P1365802634687257238.a n = A212968 n

end A212968

/-! ## A212968.P6960693575230492331

`∑[A032438(n)+(n+1)²]`
-/

namespace A212968.P6960693575230492331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212968.P6960693575230492331

namespace A212968

/-- `∑[A032438(n)+(n+1)²]` -/
def P6960693575230492331.Spec : Prop :=
  ∀ n, P6960693575230492331.a n = A212968 n

end A212968

/-! ## A212968.P7070073383897762357

`A128624(n+1)+∑[n²]`
-/

namespace A212968.P7070073383897762357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128624 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212968.P7070073383897762357

namespace A212968

/-- `A128624(n+1)+∑[n²]` -/
def P7070073383897762357.Spec : Prop :=
  ∀ n, P7070073383897762357.a n = A212968 n

end A212968

/-! ## A212968.P11826227595199123759

`A212967(n)+A059329(n)`
-/

namespace A212968.P11826227595199123759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212967 n + A059329 n

end

end A212968.P11826227595199123759

namespace A212968

/-- `A212967(n)+A059329(n)` -/
def P11826227595199123759.Spec : Prop :=
  ∀ n, P11826227595199123759.a n = A212968 n

end A212968

/-! ## A212968.P14234972596986816

`A182260(n+1)+A005993(n)`
-/

namespace A212968.P14234972596986816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182260 (n + 1) + A005993 n

end

end A212968.P14234972596986816

namespace A212968

/-- `A182260(n+1)+A005993(n)` -/
def P14234972596986816.Spec : Prop :=
  ∀ n, P14234972596986816.a n = A212968 n

end A212968

/-! ## A212968.P6878460634911055078

`A212981(n)+A049778(n+1)`
-/

namespace A212968.P6878460634911055078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212981 n + A049778 (n + 1)

end

end A212968.P6878460634911055078

namespace A212968

/-- `A212981(n)+A049778(n+1)` -/
def P6878460634911055078.Spec : Prop :=
  ∀ n, P6878460634911055078.a n = A212968 n

end A212968

/-! ## A212968.P3303630757147492716

`A226141(n+1)+A212760(n)`
-/

namespace A212968.P3303630757147492716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226141 (n + 1) + A212760 n

end

end A212968.P3303630757147492716

namespace A212968

/-- `A226141(n+1)+A212760(n)` -/
def P3303630757147492716.Spec : Prop :=
  ∀ n, P3303630757147492716.a n = A212968 n

end A212968

/-! ## A212968.P212072575467581701

`A272459(n+1)+A000292(n+1)`
-/

namespace A212968.P212072575467581701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272459 (n + 1) + A000292 (n + 1)

end

end A212968.P212072575467581701

namespace A212968

/-- `A272459(n+1)+A000292(n+1)` -/
def P212072575467581701.Spec : Prop :=
  ∀ n, P212072575467581701.a n = A212968 n

end A212968

/-! ## A212968.P16912823708417304713

`A203552(n+1)-A323724(n+1)/2`
-/

namespace A212968.P16912823708417304713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203552 (n + 1) : ℚ) - (A323724 (n + 1) : ℚ) / 2

end

end A212968.P16912823708417304713

namespace A212968

/-- `A203552(n+1)-A323724(n+1)/2` -/
def P16912823708417304713.Spec : Prop :=
  ∀ n, P16912823708417304713.a n = (A212968 n : ℚ)

end A212968

/-! ## A212968.P17265421382984178274

`A212578(n+1)+∑[∑[n]]`
-/

namespace A212968.P17265421382984178274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212968.P17265421382984178274

namespace A212968

/-- `A212578(n+1)+∑[∑[n]]` -/
def P17265421382984178274.Spec : Prop :=
  ∀ n, P17265421382984178274.a n = A212968 n

end A212968

/-! ## A212968.P7169346806791444458

`A004126(n+1)-2*A342397(n)`
-/

namespace A212968.P7169346806791444458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004126 (n + 1) - 2 * A342397 n

end

end A212968.P7169346806791444458

namespace A212968

/-- `A004126(n+1)-2*A342397(n)` -/
def P7169346806791444458.Spec : Prop :=
  ∀ n, P7169346806791444458.a n = A212968 n

end A212968

/-! ## A212968.P5861613653073903906

`A199771(n+1)+A000330(n)-A142150(n+1)`
-/

namespace A212968.P5861613653073903906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199771 (n + 1) + (A000330 n - A142150 (n + 1))

end

end A212968.P5861613653073903906

namespace A212968

/-- `A199771(n+1)+A000330(n)-A142150(n+1)` -/
def P5861613653073903906.Spec : Prop :=
  ∀ n, P5861613653073903906.a n = A212968 n

end A212968

/-!
# A212969: Number of (w,x,y) with all terms in {0,...,n} and w != x and x > range(w,x,y).

The programs for A212969, the canonical program `A212969.P7426317978988481171` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212969 has offset 0).

The definition of A212969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212969.P7426317978988481171

`(n-1)*(2*n*(7*n-2)-3*(-1)^n+3)/24`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212969

/-- `(n-1)*(2*n*(7*n-2)-3*(-1)^n+3)/24` -/
def P7426317978988481171.Spec : Prop :=
  ∀ n, P7426317978988481171.a n = (A212969 n : ℚ)

end A212969

/-! ## A212969.P8656274096927552501

`A212683(n)+A006584(n)`
-/

namespace A212969.P8656274096927552501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212683 n + A006584 n

end

end A212969.P8656274096927552501

namespace A212969

/-- `A212683(n)+A006584(n)` -/
def P8656274096927552501.Spec : Prop :=
  ∀ n, P8656274096927552501.a n = A212969 n

end A212969

/-! ## A212969.P2942885425095269039

`Δ[A212564(n)]-C(n, 2)`
-/

namespace A212969.P2942885425095269039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.choose n 2 : ℤ)

end

end A212969.P2942885425095269039

namespace A212969

/-- `Δ[A212564(n)]-C(n, 2)` -/
def P2942885425095269039.Spec : Prop :=
  ∀ n, P2942885425095269039.a n = A212969 n

end A212969

/-! ## A212969.P1777885725186392257

`A061349(n)-Δ[A212561(n)]`
-/

namespace A212969.P1777885725186392257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061349 n - (f1 (n + 1) - f1 n)

end

end A212969.P1777885725186392257

namespace A212969

/-- `A061349(n)-Δ[A212561(n)]` -/
def P1777885725186392257.Spec : Prop :=
  ∀ n, P1777885725186392257.a n = A212969 n

end A212969

/-! ## A212969.P938840092751370657

`Δ[A212564(n)]-A161680(n)`
-/

namespace A212969.P938840092751370657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A161680 n

end

end A212969.P938840092751370657

namespace A212969

/-- `Δ[A212564(n)]-A161680(n)` -/
def P938840092751370657.Spec : Prop :=
  ∀ n, P938840092751370657.a n = A212969 n

end A212969

/-! ## A212969.P17846609506432484051

`A280186(n+1)+A212683(n)`
-/

namespace A212969.P17846609506432484051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 (n + 1) + A212683 n

end

end A212969.P17846609506432484051

namespace A212969

/-- `A280186(n+1)+A212683(n)` -/
def P17846609506432484051.Spec : Prop :=
  ∀ n, P17846609506432484051.a n = A212969 n

end A212969

/-! ## A212969.P172393709017732853

`A212561(n)+A060422(A004273(n))`
-/

namespace A212969.P172393709017732853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212561 n + A060422 (A004273 n).toNat

end

end A212969.P172393709017732853

namespace A212969

/-- `A212561(n)+A060422(A004273(n))` -/
def P172393709017732853.Spec : Prop :=
  ∀ n, P172393709017732853.a n = A212969 n

end A212969

/-! ## A212969.P3118496703246286652

`A011894(2*n)-A280186(n)`
-/

namespace A212969.P3118496703246286652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 (2 * n) - A280186 n

end

end A212969.P3118496703246286652

namespace A212969

/-- `A011894(2*n)-A280186(n)` -/
def P3118496703246286652.Spec : Prop :=
  ∀ n, P3118496703246286652.a n = A212969 n

end A212969

/-! ## A212969.P8897553958036463118

`A280186(2*n)-A280186(n)`
-/

namespace A212969.P8897553958036463118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 (2 * n) - A280186 n

end

end A212969.P8897553958036463118

namespace A212969

/-- `A280186(2*n)-A280186(n)` -/
def P8897553958036463118.Spec : Prop :=
  ∀ n, P8897553958036463118.a n = A212969 n

end A212969

/-! ## A212969.P15400699488153105776

`A006584(A289207(2*n+1))-A006584(A289207(n+1))`
-/

namespace A212969.P15400699488153105776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006584 (A289207 (2 * n + 1)).toNat - A006584 (A289207 (n + 1)).toNat

end

end A212969.P15400699488153105776

namespace A212969

/-- `A006584(A289207(2*n+1))-A006584(A289207(n+1))` -/
def P15400699488153105776.Spec : Prop :=
  ∀ n, P15400699488153105776.a n = A212969 n

end A212969

/-!
# A212970: Number of (w,x,y) with all terms in {0,...,n} and w != x and x < range(w,x,y).

The programs for A212970, the canonical program `A212970.P6634832491212668552` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212970 has offset 0).

The definition of A212970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212970.P12294889966289472824

`n*∑[∑[n%2+1/3]]`
-/

namespace A212970.P12294889966289472824
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℚ) + (1 : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212970.P12294889966289472824

namespace A212970

/-- `n*∑[∑[n%2+1/3]]` -/
def P12294889966289472824.Spec : Prop :=
  ∀ n, P12294889966289472824.a n = (A212970 n : ℚ)

end A212970

/-! ## A212970.P6634832491212668552

`∑[∑[lcm(2, n)+n-and(1, n)]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212970

/-- `∑[∑[lcm(2, n)+n-and(1, n)]]` -/
def P6634832491212668552.Spec : Prop :=
  ∀ n, P6634832491212668552.a n = A212970 n

theorem P6634832491212668552.correct : P6634832491212668552.Spec := by
  intro n
  simp only [A212970]

end A212970

/-! ## A212970.P16279534242745001265

`n*∑[∑[gcd(2, n+1)²/3]]`
-/

namespace A212970.P16279534242745001265
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) ^ 2 : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212970.P16279534242745001265

namespace A212970

/-- `n*∑[∑[gcd(2, n+1)²/3]]` -/
def P16279534242745001265.Spec : Prop :=
  ∀ n, P16279534242745001265.a n = (A212970 n : ℚ)

end A212970

/-! ## A212970.P9230906745501359363

`n/3*∑[a(n-2)+5]` with `a(0)=1, a(1)=5`
-/

namespace A212970.P9230906745501359363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A212970.P9230906745501359363

namespace A212970

/-- `n/3*∑[a(n-2)+5]` -/
def P9230906745501359363.Spec : Prop :=
  ∀ n, P9230906745501359363.a n = (A212970 n : ℚ)

end A212970

/-! ## A212970.P2604294028895305055

`n/3*∑[∑[5-a(n-1)]]` with `a(0)=1`
-/

namespace A212970.P2604294028895305055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  5 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A212970.P2604294028895305055

namespace A212970

/-- `n/3*∑[∑[5-a(n-1)]]` -/
def P2604294028895305055.Spec : Prop :=
  ∀ n, P2604294028895305055.a n = (A212970 n : ℚ)

end A212970

/-! ## A212970.P1407406881223896497

`∑[∑[2*n+(n-1)*and(1, n)]]`
-/

namespace A212970.P1407406881223896497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - 1) * (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212970.P1407406881223896497

namespace A212970

/-- `∑[∑[2*n+(n-1)*and(1, n)]]` -/
def P1407406881223896497.Spec : Prop :=
  ∀ n, P1407406881223896497.a n = A212970 n

end A212970

/-! ## A212970.P2145385243174605807

`∑[∑[gcd(n, or(1, n))+2*n-1]]`
-/

namespace A212970.P2145385243174605807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (Nat.lor 1 n) + 2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212970.P2145385243174605807

namespace A212970

/-- `∑[∑[gcd(n, or(1, n))+2*n-1]]` -/
def P2145385243174605807.Spec : Prop :=
  ∀ n, P2145385243174605807.a n = A212970 n

end A212970

/-! ## A212970.P18311535206697631972

`n/3*∑[∑[∑[ogf((1+4x)/(1+x))]]]`
-/

namespace A212970.P18311535206697631972
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A212970.P18311535206697631972

namespace A212970

/-- `n/3*∑[∑[∑[ogf((1+4x)/(1+x))]]]` -/
def P18311535206697631972.Spec : Prop :=
  ∀ n, P18311535206697631972.a n = (A212970 n : ℚ)

end A212970

/-! ## A212970.P3700305164484830250

`∑[2*A210977(n)]`
-/

namespace A212970.P3700305164484830250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212970.P3700305164484830250

namespace A212970

/-- `∑[2*A210977(n)]` -/
def P3700305164484830250.Spec : Prop :=
  ∀ n, P3700305164484830250.a n = A212970 n

end A212970

/-! ## A212970.P11906647454538036735

`A212578(n)+n²`
-/

namespace A212970.P11906647454538036735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 n + (n ^ 2 : ℤ)

end

end A212970.P11906647454538036735

namespace A212970

/-- `A212578(n)+n²` -/
def P11906647454538036735.Spec : Prop :=
  ∀ n, P11906647454538036735.a n = A212970 n

end A212970

/-! ## A212970.P2348192043582434056

`A361275(n)+A108766(n)`
-/

namespace A212970.P2348192043582434056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361275 n + A108766 n

end

end A212970.P2348192043582434056

namespace A212970

/-- `A361275(n)+A108766(n)` -/
def P2348192043582434056.Spec : Prop :=
  ∀ n, P2348192043582434056.a n = A212970 n

end A212970

/-! ## A212970.P13758124482949851871

`A027444(n)-A061349(n)`
-/

namespace A212970.P13758124482949851871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n - A061349 n

end

end A212970.P13758124482949851871

namespace A212970

/-- `A027444(n)-A061349(n)` -/
def P13758124482949851871.Spec : Prop :=
  ∀ n, P13758124482949851871.a n = A212970 n

end A212970

/-! ## A212970.P9463334614124681742

`A212980(n+1)+A001318(n)`
-/

namespace A212970.P9463334614124681742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212980 (n + 1) + A001318 n

end

end A212970.P9463334614124681742

namespace A212970

/-- `A212980(n+1)+A001318(n)` -/
def P9463334614124681742.Spec : Prop :=
  ∀ n, P9463334614124681742.a n = A212970 n

end A212970

/-! ## A212970.P3756924833217600161

`2*(A173196(n)+A109900(n))`
-/

namespace A212970.P3756924833217600161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A173196 n + A109900 n)

end

end A212970.P3756924833217600161

namespace A212970

/-- `2*(A173196(n)+A109900(n))` -/
def P3756924833217600161.Spec : Prop :=
  ∀ n, P3756924833217600161.a n = A212970 n

end A212970

/-! ## A212970.P12764301961284637791

`2*(A000330(n)-A034828(n))`
-/

namespace A212970.P12764301961284637791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000330 n - A034828 n)

end

end A212970.P12764301961284637791

namespace A212970

/-- `2*(A000330(n)-A034828(n))` -/
def P12764301961284637791.Spec : Prop :=
  ∀ n, P12764301961284637791.a n = A212970 n

end A212970

/-! ## A212970.P11333972578105547146

`A006331(n)-n*A002620(n)`
-/

namespace A212970.P11333972578105547146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n - (n : ℤ) * A002620 n

end

end A212970.P11333972578105547146

namespace A212970

/-- `A006331(n)-n*A002620(n)` -/
def P11333972578105547146.Spec : Prop :=
  ∀ n, P11333972578105547146.a n = A212970 n

end A212970

/-! ## A212970.P14780908867906618075

`∑[A005449(n)-A004526(n)²]`
-/

namespace A212970.P14780908867906618075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212970.P14780908867906618075

namespace A212970

/-- `∑[A005449(n)-A004526(n)²]` -/
def P14780908867906618075.Spec : Prop :=
  ∀ n, P14780908867906618075.a n = A212970 n

end A212970

/-! ## A212970.P15729213386352755958

`A006002(n)-∑[A004526(n)²]`
-/

namespace A212970.P15729213386352755958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212970.P15729213386352755958

namespace A212970

/-- `A006002(n)-∑[A004526(n)²]` -/
def P15729213386352755958.Spec : Prop :=
  ∀ n, P15729213386352755958.a n = A212970 n

end A212970

/-! ## A212970.P14508455332423509523

`∑[2*(A002620(n)+A001318(n))]`
-/

namespace A212970.P14508455332423509523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002620 n + A001318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212970.P14508455332423509523

namespace A212970

/-- `∑[2*(A002620(n)+A001318(n))]` -/
def P14508455332423509523.Spec : Prop :=
  ∀ n, P14508455332423509523.a n = A212970 n

end A212970

/-! ## A212970.P15375142026968085406

`A272459(n+1)+A008794(n+1)`
-/

namespace A212970.P15375142026968085406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272459 (n + 1) + A008794 (n + 1)

end

end A212970.P15375142026968085406

namespace A212970

/-- `A272459(n+1)+A008794(n+1)` -/
def P15375142026968085406.Spec : Prop :=
  ∀ n, P15375142026968085406.a n = A212970 n

end A212970

/-!
# A212971: Number of triples (w,x,y) with all terms in {0,...,n} and w < floor((x+y)/3).

The programs for A212971, the canonical program `A212971.P6573840531130706726` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212971 has offset 0).

The definition of A212971 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212974, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212971.P8530192605865869508

`(n+1)^3-A212972(n)`
-/

namespace A212971.P8530192605865869508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A212972 n

end

end A212971.P8530192605865869508

namespace A212971

/-- `(n+1)^3-A212972(n)` -/
def P8530192605865869508.Spec : Prop :=
  ∀ n, P8530192605865869508.a n = A212971 n

end A212971

/-! ## A212971.P6573840531130706726

`A045991(n+1)-A212974(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212971

/-- `A045991(n+1)-A212974(n)` -/
def P6573840531130706726.Spec : Prop :=
  ∀ n, P6573840531130706726.a n = A212971 n

theorem P6573840531130706726.correct : P6573840531130706726.Spec := by
  intro n
  simp only [A212971]

end A212971

/-! ## A212971.P12321457993348621237

`∑[floor((1/6-n)²)]`
-/

namespace A212971.P12321457993348621237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 6 - (n : ℚ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212971.P12321457993348621237

namespace A212971

/-- `∑[floor((1/6-n)²)]` -/
def P12321457993348621237.Spec : Prop :=
  ∀ n, P12321457993348621237.a n = A212971 n

end A212971

/-! ## A212971.P9600342753047145038

`floor((lcm(n+1, n²)-n)/3)`
-/

namespace A212971.P9600342753047145038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm (n + 1) (n ^ 2) : ℤ) - (n : ℤ) : ℚ) / 3⌋

end

end A212971.P9600342753047145038

namespace A212971

/-- `floor((lcm(n+1, n²)-n)/3)` -/
def P9600342753047145038.Spec : Prop :=
  ∀ n, P9600342753047145038.a n = A212971 n

end A212971

/-! ## A212971.P10245445106069829182

`ceil((n-1)/3*record[(n-1)²])`
-/

namespace A212971.P10245445106069829182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / 3 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌉

end

end A212971.P10245445106069829182

namespace A212971

/-- `ceil((n-1)/3*record[(n-1)²])` -/
def P10245445106069829182.Spec : Prop :=
  ∀ n, P10245445106069829182.a n = A212971 n

end A212971

/-! ## A212971.P7794331028009455110

`round((n-1)/3*record[(n-1)²])`
-/

namespace A212971.P7794331028009455110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ))

end

end A212971.P7794331028009455110

namespace A212971

/-- `round((n-1)/3*record[(n-1)²])` -/
def P7794331028009455110.Spec : Prop :=
  ∀ n, P7794331028009455110.a n = A212971 n

end A212971

/-! ## A212971.P14115569376294134994

`ceil(∑[n²]-C(n+2, 2)/3)`
-/

namespace A212971.P14115569376294134994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (Nat.choose (n + 2) 2 : ℚ) / 3⌉

end

end A212971.P14115569376294134994

namespace A212971

/-- `ceil(∑[n²]-C(n+2, 2)/3)` -/
def P14115569376294134994.Spec : Prop :=
  ∀ n, P14115569376294134994.a n = A212971 n

end A212971

/-! ## A212971.P9776553791493507400

`floor(a(n-1)-n/3)+n²` with `a(0)=0`
-/

namespace A212971.P9776553791493507400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) - (n : ℚ) / 3⌋ + (n ^ 2 : ℤ)

end

end A212971.P9776553791493507400

namespace A212971

/-- `floor(a(n-1)-n/3)+n²` -/
def P9776553791493507400.Spec : Prop :=
  ∀ n, P9776553791493507400.a n = A212971 n

end A212971

/-! ## A212971.P11239840432107979126

`floor(a(n-1)-(n/3-n²))` with `a(0)=0`
-/

namespace A212971.P11239840432107979126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) - ((n : ℚ) / 3 - (n ^ 2 : ℚ))⌋

end

end A212971.P11239840432107979126

namespace A212971

/-- `floor(a(n-1)-(n/3-n²))` -/
def P11239840432107979126.Spec : Prop :=
  ∀ n, P11239840432107979126.a n = A212971 n

end A212971

/-! ## A212971.P16059580414527093832

`a(n-1)+floor(n*(n-1/3))` with `a(0)=0`
-/

namespace A212971.P16059580414527093832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℚ) * ((n : ℚ) - (1 : ℚ) / 3)⌋

end

end A212971.P16059580414527093832

namespace A212971

/-- `a(n-1)+floor(n*(n-1/3))` -/
def P16059580414527093832.Spec : Prop :=
  ∀ n, P16059580414527093832.a n = A212971 n

end A212971

/-! ## A212971.P11740886613772500205

`floor(n*n-(n/3-a(n-1)))` with `a(0)=0`
-/

namespace A212971.P11740886613772500205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n * n : ℚ) - ((n : ℚ) / 3 - (a (n - 1) : ℚ))⌋

end

end A212971.P11740886613772500205

namespace A212971

/-- `floor(n*n-(n/3-a(n-1)))` -/
def P11740886613772500205.Spec : Prop :=
  ∀ n, P11740886613772500205.a n = A212971 n

end A212971

/-! ## A212971.P1858162737657449681

`floor(∑[2*n]*Δ[acot(n)+n]*n/3)`
-/

namespace A212971.P1858162737657449681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ) + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) * (f2 (n + 1) - f2 n) * ((n : ℚ) / 3 : ℝ)⌋

end

end A212971.P1858162737657449681

namespace A212971

/-- `floor(∑[2*n]*Δ[acot(n)+n]*n/3)` -/
def P1858162737657449681.Spec : Prop :=
  ∀ n, P1858162737657449681.a n = A212971 n

end A212971

/-! ## A212971.P6214342186851261931

`round(((2*(n+1)+2)*C(n, 2)+n)/3)`
-/

namespace A212971.P6214342186851261931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * (n + 1) + 2) * Nat.choose n 2 + n : ℚ) / 3)

end

end A212971.P6214342186851261931

namespace A212971

/-- `round(((2*(n+1)+2)*C(n, 2)+n)/3)` -/
def P6214342186851261931.Spec : Prop :=
  ∀ n, P6214342186851261931.a n = A212971 n

end A212971

/-! ## A212971.P9697768221939190824

`∑[n²]-A001840(n)`
-/

namespace A212971.P9697768221939190824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001840 n

end

end A212971.P9697768221939190824

namespace A212971

/-- `∑[n²]-A001840(n)` -/
def P9697768221939190824.Spec : Prop :=
  ∀ n, P9697768221939190824.a n = A212971 n

end A212971

/-! ## A212971.P790553213485130879

`A212973(n)-(n+1)²`
-/

namespace A212971.P790553213485130879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212973 n - ((n + 1) ^ 2 : ℤ)

end

end A212971.P790553213485130879

namespace A212971

/-- `A212973(n)-(n+1)²` -/
def P790553213485130879.Spec : Prop :=
  ∀ n, P790553213485130879.a n = A212971 n

end A212971

/-! ## A212971.P9047342785100139391

`∑[A331943(n+1)]-(n+1)²`
-/

namespace A212971.P9047342785100139391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A212971.P9047342785100139391

namespace A212971

/-- `∑[A331943(n+1)]-(n+1)²` -/
def P9047342785100139391.Spec : Prop :=
  ∀ n, P9047342785100139391.a n = A212971 n

end A212971

/-! ## A212971.P11279701375548433475

`round((∑[1-A004767(n)]+(n+1)^3)/3)`
-/

namespace A212971.P11279701375548433475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 3 : ℤ) : ℤ) : ℚ) / 3)

end

end A212971.P11279701375548433475

namespace A212971

/-- `round((∑[1-A004767(n)]+(n+1)^3)/3)` -/
def P11279701375548433475.Spec : Prop :=
  ∀ n, P11279701375548433475.a n = A212971 n

end A212971

/-! ## A212971.P14530686664758828860

`A084990(n)-A071619(n)`
-/

namespace A212971.P14530686664758828860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 n - A071619 n

end

end A212971.P14530686664758828860

namespace A212971

/-- `A084990(n)-A071619(n)` -/
def P14530686664758828860.Spec : Prop :=
  ∀ n, P14530686664758828860.a n = A212971 n

end A212971

/-! ## A212971.P17272302006037881806

`A101986(n)-A397975(n)`
-/

namespace A212971.P17272302006037881806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n - A397975 n

end

end A212971.P17272302006037881806

namespace A212971

/-- `A101986(n)-A397975(n)` -/
def P17272302006037881806.Spec : Prop :=
  ∀ n, P17272302006037881806.a n = A212971 n

end A212971

/-! ## A212971.P4489392261235571013

`A167875(n)-A143978(n+1)`
-/

namespace A212971.P4489392261235571013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n - A143978 (n + 1)

end

end A212971.P4489392261235571013

namespace A212971

/-- `A167875(n)-A143978(n+1)` -/
def P4489392261235571013.Spec : Prop :=
  ∀ n, P4489392261235571013.a n = A212971 n

end A212971

/-!
# A212972: Number of triples (w,x,y) with all terms in {0,...,n} and w >= floor((x+y)/3).

The programs for A212972, the canonical program `A212972.P15305657758278643221` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212972 has offset 0).

The definition of A212972 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212971, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212972.P15305657758278643221

`(n+1)^3-A212971(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A212972

/-- `(n+1)^3-A212971(n)` -/
def P15305657758278643221.Spec : Prop :=
  ∀ n, P15305657758278643221.a n = A212972 n

theorem P15305657758278643221.correct : P15305657758278643221.Spec := by
  intro n
  simp only [A212972]

end A212972

/-! ## A212972.P12522262265892236018

`A011379(n+1)-A212973(n)`
-/

namespace A212972.P12522262265892236018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 (n + 1) - A212973 n

end

end A212972.P12522262265892236018

namespace A212972

/-- `A011379(n+1)-A212973(n)` -/
def P12522262265892236018.Spec : Prop :=
  ∀ n, P12522262265892236018.a n = A212972 n

end A212972

/-! ## A212972.P10509496113300603754

`∑[∑[∑[floor(a(n-3))]]]` with `a(0)=1, a(1)=5, a(2)=3, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A212972.P10509496113300603754
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 3, 4] fun n f3 =>
  f3 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212972.P10509496113300603754

namespace A212972

/-- `∑[∑[∑[floor(a(n-3))]]]` -/
def P10509496113300603754.Spec : Prop :=
  ∀ n, (P10509496113300603754.a n : ℤ) = A212972 n

end A212972

/-! ## A212972.P3756701407821248581

`∑[round(4*∑[3*n+1]/3)]`
-/

namespace A212972.P3756701407821248581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((4 * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212972.P3756701407821248581

namespace A212972

/-- `∑[round(4*∑[3*n+1]/3)]` -/
def P3756701407821248581.Spec : Prop :=
  ∀ n, P3756701407821248581.a n = A212972 n

end A212972

/-! ## A212972.P2541850037333109296

`(n+1)²+A212974(n)`
-/

namespace A212972.P2541850037333109296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A212974 n

end

end A212972.P2541850037333109296

namespace A212972

/-- `(n+1)²+A212974(n)` -/
def P2541850037333109296.Spec : Prop :=
  ∀ n, P2541850037333109296.a n = A212972 n

end A212972

/-! ## A212972.P4134686566896671602

`floor(4/3*∑[∑[A016777(n)]])`
-/

namespace A212972.P4134686566896671602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A212972.P4134686566896671602

namespace A212972

/-- `floor(4/3*∑[∑[A016777(n)]])` -/
def P4134686566896671602.Spec : Prop :=
  ∀ n, P4134686566896671602.a n = A212972 n

end A212972

/-! ## A212972.P12480365098448267659

`A143978(n+1)+∑[∑[4*n]]`
-/

namespace A212972.P12480365098448267659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143978 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212972.P12480365098448267659

namespace A212972

/-- `A143978(n+1)+∑[∑[4*n]]` -/
def P12480365098448267659.Spec : Prop :=
  ∀ n, P12480365098448267659.a n = A212972 n

end A212972

/-! ## A212972.P16458799366111051004

`A002412(n+1)+A001840(n)`
-/

namespace A212972.P16458799366111051004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (n + 1) + A001840 n

end

end A212972.P16458799366111051004

namespace A212972

/-- `A002412(n+1)+A001840(n)` -/
def P16458799366111051004.Spec : Prop :=
  ∀ n, P16458799366111051004.a n = A212972 n

end A212972

/-! ## A212972.P13328971225399546468

`A210440(n)+A143978(n+1)`
-/

namespace A212972.P13328971225399546468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n + A143978 (n + 1)

end

end A212972.P13328971225399546468

namespace A212972

/-- `A210440(n)+A143978(n+1)` -/
def P13328971225399546468.Spec : Prop :=
  ∀ n, P13328971225399546468.a n = A212972 n

end A212972

/-! ## A212972.P14219181576823949321

`A131423(n+1)-A000212(n)`
-/

namespace A212972.P14219181576823949321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131423 (n + 1) - A000212 n

end

end A212972.P14219181576823949321

namespace A212972

/-- `A131423(n+1)-A000212(n)` -/
def P14219181576823949321.Spec : Prop :=
  ∀ n, P14219181576823949321.a n = A212972 n

end A212972

/-! ## A212972.P1710674510279982593

`∑[∑[A016825(n)]]-A007980(n)`
-/

namespace A212972.P1710674510279982593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007980 n

end

end A212972.P1710674510279982593

namespace A212972

/-- `∑[∑[A016825(n)]]-A007980(n)` -/
def P1710674510279982593.Spec : Prop :=
  ∀ n, P1710674510279982593.a n = A212972 n

end A212972

/-! ## A212972.P15263509290694003635

`A001840(n)+∑[A000217(2*n+1)]`
-/

namespace A212972.P15263509290694003635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212972.P15263509290694003635

namespace A212972

/-- `A001840(n)+∑[A000217(2*n+1)]` -/
def P15263509290694003635.Spec : Prop :=
  ∀ n, P15263509290694003635.a n = A212972 n

end A212972

/-! ## A212972.P7866631367317274834

`A212973(n)+A212974(n)-A212971(n)`
-/

namespace A212972.P7866631367317274834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212973 n + (A212974 n - A212971 n)

end

end A212972.P7866631367317274834

namespace A212972

/-- `A212973(n)+A212974(n)-A212971(n)` -/
def P7866631367317274834.Spec : Prop :=
  ∀ n, P7866631367317274834.a n = A212972 n

end A212972

/-! ## A212972.P7013725672267701122

`A000292(n+1)+A055232(n)-A001399(n)`
-/

namespace A212972.P7013725672267701122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A055232 n - A001399 n)

end

end A212972.P7013725672267701122

namespace A212972

/-- `A000292(n+1)+A055232(n)-A001399(n)` -/
def P7013725672267701122.Spec : Prop :=
  ∀ n, P7013725672267701122.a n = A212972 n

end A212972

/-! ## A212972.P14346744456826686031

`floor(4/3*A002411(n+1))`
-/

namespace A212972.P14346744456826686031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 3 * (A002411 (n + 1) : ℚ)⌋

end

end A212972.P14346744456826686031

namespace A212972

/-- `floor(4/3*A002411(n+1))` -/
def P14346744456826686031.Spec : Prop :=
  ∀ n, P14346744456826686031.a n = A212972 n

end A212972

/-! ## A212972.P8523169923587747057

`floor(∑[(n+1)*(A016921(2*n+1)+1)]/6)`
-/

namespace A212972.P8523169923587747057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A016921 (2 * n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6⌋

end

end A212972.P8523169923587747057

namespace A212972

/-- `floor(∑[(n+1)*(A016921(2*n+1)+1)]/6)` -/
def P8523169923587747057.Spec : Prop :=
  ∀ n, P8523169923587747057.a n = A212972 n

end A212972

/-! ## A212972.P5587391659582707

`A002623(2*n)+A001840(n)`
-/

namespace A212972.P5587391659582707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (2 * n) + A001840 n

end

end A212972.P5587391659582707

namespace A212972

/-- `A002623(2*n)+A001840(n)` -/
def P5587391659582707.Spec : Prop :=
  ∀ n, P5587391659582707.a n = A212972 n

end A212972

/-! ## A212972.P2131442337731682582

`A030533(2*n+1)+A001840(2*n)`
-/

namespace A212972.P2131442337731682582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030533 (2 * n + 1) + A001840 (2 * n)

end

end A212972.P2131442337731682582

namespace A212972

/-- `A030533(2*n+1)+A001840(2*n)` -/
def P2131442337731682582.Spec : Prop :=
  ∀ n, P2131442337731682582.a n = A212972 n

end A212972

/-! ## A212972.P15607802124306556715

`A005993(2*n+1)-A001399(2*n)`
-/

namespace A212972.P15607802124306556715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 (2 * n + 1) - A001399 (2 * n)

end

end A212972.P15607802124306556715

namespace A212972

/-- `A005993(2*n+1)-A001399(2*n)` -/
def P15607802124306556715.Spec : Prop :=
  ∀ n, P15607802124306556715.a n = A212972 n

end A212972

/-!
# A212973: Number of triples (w,x,y) with all terms in {0,...,n} and w <= floor((x+y)/3).

The programs for A212973, the canonical program `A212973.P18418775507560985600` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212973 has offset 0).

The definition of A212973 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212974, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212973.P18418775507560985600

`(n+1)^3-A212974(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212973

/-- `(n+1)^3-A212974(n)` -/
def P18418775507560985600.Spec : Prop :=
  ∀ n, P18418775507560985600.a n = A212973 n

theorem P18418775507560985600.correct : P18418775507560985600.Spec := by
  intro n
  simp only [A212973]

end A212973

/-! ## A212973.P13923203694883727867

`A011379(n+1)-A212972(n)`
-/

namespace A212973.P13923203694883727867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 (n + 1) - A212972 n

end

end A212973.P13923203694883727867

namespace A212973

/-- `A011379(n+1)-A212972(n)` -/
def P13923203694883727867.Spec : Prop :=
  ∀ n, P13923203694883727867.a n = A212973 n

end A212973

/-! ## A212973.P2912020106002059158

`∑[round((5/6+n)²)]`
-/

namespace A212973.P2912020106002059158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((5 : ℚ) / 6 + (n : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212973.P2912020106002059158

namespace A212973

/-- `∑[round((5/6+n)²)]` -/
def P2912020106002059158.Spec : Prop :=
  ∀ n, P2912020106002059158.a n = A212973 n

end A212973

/-! ## A212973.P4879295465281076941

`ceil(lcm(n+2, (n+1)²)/3)`
-/

namespace A212973.P4879295465281076941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm (n + 2) ((n + 1) ^ 2) : ℚ) / 3⌉

end

end A212973.P4879295465281076941

namespace A212973

/-- `ceil(lcm(n+2, (n+1)²)/3)` -/
def P4879295465281076941.Spec : Prop :=
  ∀ n, P4879295465281076941.a n = A212973 n

end A212973

/-! ## A212973.P9150950889366489817

`abs(∑[∑[a(n-3)+6]])` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A212973.P9150950889366489817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n f2 =>
  f2 (n - 3) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212973.P9150950889366489817

namespace A212973

/-- `abs(∑[∑[a(n-3)+6]])` -/
def P9150950889366489817.Spec : Prop :=
  ∀ n, (P9150950889366489817.a n : ℤ) = A212973 n

end A212973

/-! ## A212973.P8733884492890870736

`floor(∑[∑[a(n-3)+6]])` with `a(0)=1, a(1)=2, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A212973.P8733884492890870736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n f2 =>
  f2 (n - 3) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212973.P8733884492890870736

namespace A212973

/-- `floor(∑[∑[a(n-3)+6]])` -/
def P8733884492890870736.Spec : Prop :=
  ∀ n, (P8733884492890870736.a n : ℤ) = A212973 n

end A212973

/-! ## A212973.P6815656418639503628

`ceil(∑[∑[a(n-3)+6]])` with `a(0)=1, a(1)=2, a(2)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A212973.P6815656418639503628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n f2 =>
  f2 (n - 3) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212973.P6815656418639503628

namespace A212973

/-- `ceil(∑[∑[a(n-3)+6]])` -/
def P6815656418639503628.Spec : Prop :=
  ∀ n, (P6815656418639503628.a n : ℤ) = A212973 n

end A212973

/-! ## A212973.P7566629421046442560

`ceil((n+2)/3*record[(n-1)²])`
-/

namespace A212973.P7566629421046442560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / 3 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌉

end

end A212973.P7566629421046442560

namespace A212973

/-- `ceil((n+2)/3*record[(n-1)²])` -/
def P7566629421046442560.Spec : Prop :=
  ∀ n, P7566629421046442560.a n = A212973 n

end A212973

/-! ## A212973.P2019071426098729051

`round((n+2)/3*record[(n-1)²])`
-/

namespace A212973.P2019071426098729051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / 3 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ))

end

end A212973.P2019071426098729051

namespace A212973

/-- `round((n+2)/3*record[(n-1)²])` -/
def P2019071426098729051.Spec : Prop :=
  ∀ n, P2019071426098729051.a n = A212973 n

end A212973

/-! ## A212973.P6565927112215343138

`a(n-1)+round((5/6+n)²)` with `a(0)=1`
-/

namespace A212973.P6565927112215343138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway (((5 : ℚ) / 6 + (n : ℚ)) ^ 2)

end

end A212973.P6565927112215343138

namespace A212973

/-- `a(n-1)+round((5/6+n)²)` -/
def P6565927112215343138.Spec : Prop :=
  ∀ n, P6565927112215343138.a n = A212973 n

end A212973

/-! ## A212973.P485877995957797306

`ceil(2*(n+1)*C(n+2, 2)/3)`
-/

namespace A212973.P485877995957797306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * (n + 1) : ℚ) * ((Nat.choose (n + 2) 2 : ℚ) / 3)⌉

end

end A212973.P485877995957797306

namespace A212973

/-- `ceil(2*(n+1)*C(n+2, 2)/3)` -/
def P485877995957797306.Spec : Prop :=
  ∀ n, P485877995957797306.a n = A212973 n

end A212973

/-! ## A212973.P2950155203704350436

`round(2*(n+1)*C(n+2, 2)/3)`
-/

namespace A212973.P2950155203704350436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) * ((Nat.choose (n + 2) 2 : ℚ) / 3))

end

end A212973.P2950155203704350436

namespace A212973

/-- `round(2*(n+1)*C(n+2, 2)/3)` -/
def P2950155203704350436.Spec : Prop :=
  ∀ n, P2950155203704350436.a n = A212973 n

end A212973

/-! ## A212973.P1897601990920459708

`floor((n+1)²+a(n-1)-n/3)` with `a(0)=1`
-/

namespace A212973.P1897601990920459708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n + 1) ^ 2 : ℚ) + ((a (n - 1) : ℚ) - (n : ℚ) / 3)⌋

end

end A212973.P1897601990920459708

namespace A212973

/-- `floor((n+1)²+a(n-1)-n/3)` -/
def P1897601990920459708.Spec : Prop :=
  ∀ n, P1897601990920459708.a n = A212973 n

end A212973

/-! ## A212973.P14944097822165647087

`A212971(n)+(n+1)²`
-/

namespace A212973.P14944097822165647087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212971 n + ((n + 1) ^ 2 : ℤ)

end

end A212973.P14944097822165647087

namespace A212973

/-- `A212971(n)+(n+1)²` -/
def P14944097822165647087.Spec : Prop :=
  ∀ n, P14944097822165647087.a n = A212973 n

end A212973

/-! ## A212973.P12762094872490857680

`∑[(n+1)²]-A001840(n)`
-/

namespace A212973.P12762094872490857680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001840 n

end

end A212973.P12762094872490857680

namespace A212973

/-- `∑[(n+1)²]-A001840(n)` -/
def P12762094872490857680.Spec : Prop :=
  ∀ n, P12762094872490857680.a n = A212973 n

end A212973

/-! ## A212973.P1180628295765059303

`2*∑[A331943(n+1)/2]`
-/

namespace A212973.P1180628295765059303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331943 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212973.P1180628295765059303

namespace A212973

/-- `2*∑[A331943(n+1)/2]` -/
def P1180628295765059303.Spec : Prop :=
  ∀ n, P1180628295765059303.a n = (A212973 n : ℚ)

end A212973

/-! ## A212973.P7492423513586301208

`round(2/3*∑[∑[A016777(n)]])`
-/

namespace A212973.P7492423513586301208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A212973.P7492423513586301208

namespace A212973

/-- `round(2/3*∑[∑[A016777(n)]])` -/
def P7492423513586301208.Spec : Prop :=
  ∀ n, P7492423513586301208.a n = A212973 n

end A212973

/-! ## A212973.P308896403636688452

`∑[A032793(n+1)]+∑[n²]`
-/

namespace A212973.P308896403636688452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A212973.P308896403636688452

namespace A212973

/-- `∑[A032793(n+1)]+∑[n²]` -/
def P308896403636688452.Spec : Prop :=
  ∀ n, P308896403636688452.a n = A212973 n

end A212973

/-! ## A212973.P6708427550693447851

`round((n+2)*(A005563(n)+1)/3)`
-/

namespace A212973.P6708427550693447851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 2 : ℤ) * (A005563 n + 1) : ℚ) / 3)

end

end A212973.P6708427550693447851

namespace A212973

/-- `round((n+2)*(A005563(n)+1)/3)` -/
def P6708427550693447851.Spec : Prop :=
  ∀ n, P6708427550693447851.a n = A212973 n

end A212973

/-! ## A212973.P16807731771249381197

`ceil(2*(n+1)*A000217(n+1)/3)`
-/

namespace A212973.P16807731771249381197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * (n + 1) : ℚ) * ((A000217 (n + 1) : ℚ) / 3)⌉

end

end A212973.P16807731771249381197

namespace A212973

/-- `ceil(2*(n+1)*A000217(n+1)/3)` -/
def P16807731771249381197.Spec : Prop :=
  ∀ n, P16807731771249381197.a n = A212973 n

end A212973

/-!
# A212974: Number of (w,x,y) with all terms in {0,...,n} and w>floor((x+y)/3).

The programs for A212974, the canonical program `A212974.P9392321981005571644` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212974 has offset 0).

The definition of A212974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212974.P9392321981005571644

`∑[ceil((2/3+n)*2*n)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212974

/-- `∑[ceil((2/3+n)*2*n)]` -/
def P9392321981005571644.Spec : Prop :=
  ∀ n, P9392321981005571644.a n = A212974 n

theorem P9392321981005571644.correct : P9392321981005571644.Spec := by
  intro n
  simp only [A212974]

end A212974

/-! ## A212974.P14642342700348916310

`floor(lcm((n+1)², comp[2*n])/3)`
-/

namespace A212974.P14642342700348916310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm ((n + 1) ^ 2) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 3⌋

end

end A212974.P14642342700348916310

namespace A212974

/-- `floor(lcm((n+1)², comp[2*n])/3)` -/
def P14642342700348916310.Spec : Prop :=
  ∀ n, P14642342700348916310.a n = A212974 n

end A212974

/-! ## A212974.P1014099831103246585

`round((n+1)²/3*record[xor(1, n)])`
-/

namespace A212974.P1014099831103246585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / 3 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ))

end

end A212974.P1014099831103246585

namespace A212974

/-- `round((n+1)²/3*record[xor(1, n)])` -/
def P1014099831103246585.Spec : Prop :=
  ∀ n, P1014099831103246585.a n = A212974 n

end A212974

/-! ## A212974.P2047863412570998072

`round((2*n+1)/3*record[(n-1)²])`
-/

namespace A212974.P2047863412570998072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / 3 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ))

end

end A212974.P2047863412570998072

namespace A212974

/-- `round((2*n+1)/3*record[(n-1)²])` -/
def P2047863412570998072.Spec : Prop :=
  ∀ n, P2047863412570998072.a n = A212974 n

end A212974

/-! ## A212974.P1399762490579622645

`A212972(n)-(n+1)²`
-/

namespace A212974.P1399762490579622645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212972 n - ((n + 1) ^ 2 : ℤ)

end

end A212974.P1399762490579622645

namespace A212974

/-- `A212972(n)-(n+1)²` -/
def P1399762490579622645.Spec : Prop :=
  ∀ n, P1399762490579622645.a n = A212974 n

end A212974

/-! ## A212974.P1579610447093963121

`(n+1)^3-A212973(n)`
-/

namespace A212974.P1579610447093963121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A212973 n

end

end A212974.P1579610447093963121

namespace A212974

/-- `(n+1)^3-A212973(n)` -/
def P1579610447093963121.Spec : Prop :=
  ∀ n, P1579610447093963121.a n = A212974 n

end A212974

/-! ## A212974.P10430820326709684011

`∑[A000217(2*n)]+∑[round((n+1)/3)]`
-/

namespace A212974.P10430820326709684011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A212974.P10430820326709684011

namespace A212974

/-- `∑[A000217(2*n)]+∑[round((n+1)/3)]` -/
def P10430820326709684011.Spec : Prop :=
  ∀ n, P10430820326709684011.a n = A212974 n

end A212974

/-! ## A212974.P12251008132163797386

`floor((n*A000217(2*(n+1))+n+1)/3)`
-/

namespace A212974.P12251008132163797386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * A000217 (2 * (n + 1)) + (n + 1 : ℤ) : ℚ) / 3⌋

end

end A212974.P12251008132163797386

namespace A212974

/-- `floor((n*A000217(2*(n+1))+n+1)/3)` -/
def P12251008132163797386.Spec : Prop :=
  ∀ n, P12251008132163797386.a n = A212974 n

end A212974

/-! ## A212974.P9958508279303549569

`A016061(n)+A001840(n)`
-/

namespace A212974.P9958508279303549569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n + A001840 n

end

end A212974.P9958508279303549569

namespace A212974

/-- `A016061(n)+A001840(n)` -/
def P9958508279303549569.Spec : Prop :=
  ∀ n, P9958508279303549569.a n = A212974 n

end A212974

/-! ## A212974.P787544919871321823

`A320259(n)+A006331(n)`
-/

namespace A212974.P787544919871321823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320259 n + A006331 n

end

end A212974.P787544919871321823

namespace A212974

/-- `A320259(n)+A006331(n)` -/
def P787544919871321823.Spec : Prop :=
  ∀ n, P787544919871321823.a n = A212974 n

end A212974

/-! ## A212974.P13161741476772045074

`A210440(n)-A000212(n)`
-/

namespace A212974.P13161741476772045074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n - A000212 n

end

end A212974.P13161741476772045074

namespace A212974

/-- `A210440(n)-A000212(n)` -/
def P13161741476772045074.Spec : Prop :=
  ∀ n, P13161741476772045074.a n = A212974 n

end A212974

/-! ## A212974.P7171016379773759628

`A213397(n)-A212984(n)`
-/

namespace A212974.P7171016379773759628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213397 n - A212984 n

end

end A212974.P7171016379773759628

namespace A212974

/-- `A213397(n)-A212984(n)` -/
def P7171016379773759628.Spec : Prop :=
  ∀ n, P7171016379773759628.a n = A212974 n

end A212974

/-! ## A212974.P11303910165728392855

`A056640(n+1)-A281333(n)`
-/

namespace A212974.P11303910165728392855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056640 (n + 1) - A281333 n

end

end A212974.P11303910165728392855

namespace A212974

/-- `A056640(n+1)-A281333(n)` -/
def P11303910165728392855.Spec : Prop :=
  ∀ n, P11303910165728392855.a n = A212974 n

end A212974

/-! ## A212974.P17506334025882842160

`∑[∑[A008574(n)]]-A007980(n)`
-/

namespace A212974.P17506334025882842160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007980 n

end

end A212974.P17506334025882842160

namespace A212974

/-- `∑[∑[A008574(n)]]-A007980(n)` -/
def P17506334025882842160.Spec : Prop :=
  ∀ n, P17506334025882842160.a n = A212974 n

end A212974

/-! ## A212974.P15981134263681479102

`A071619(n)+∑[A005893(n)-1]`
-/

namespace A212974.P15981134263681479102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212974.P15981134263681479102

namespace A212974

/-- `A071619(n)+∑[A005893(n)-1]` -/
def P15981134263681479102.Spec : Prop :=
  ∀ n, P15981134263681479102.a n = A212974 n

end A212974

/-! ## A212974.P7053992728587180995

`A001840(n)+∑[A000217(2*n)]`
-/

namespace A212974.P7053992728587180995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212974.P7053992728587180995

namespace A212974

/-- `A001840(n)+∑[A000217(2*n)]` -/
def P7053992728587180995.Spec : Prop :=
  ∀ n, P7053992728587180995.a n = A212974 n

end A212974

/-! ## A212974.P1500267588140290434

`A131423(n+1)-A238705(n+1)`
-/

namespace A212974.P1500267588140290434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131423 (n + 1) - A238705 (n + 1)

end

end A212974.P1500267588140290434

namespace A212974

/-- `A131423(n+1)-A238705(n+1)` -/
def P1500267588140290434.Spec : Prop :=
  ∀ n, P1500267588140290434.a n = A212974 n

end A212974

/-! ## A212974.P883193261357961061

`A001840(n)+A002412(n)+A002378(n)`
-/

namespace A212974.P883193261357961061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + (A002412 n + A002378 n)

end

end A212974.P883193261357961061

namespace A212974

/-- `A001840(n)+A002412(n)+A002378(n)` -/
def P883193261357961061.Spec : Prop :=
  ∀ n, P883193261357961061.a n = A212974 n

end A212974

/-! ## A212974.P8175269884901731401

`A171218(n)+A213388(n)-A212973(n)`
-/

namespace A212974.P8175269884901731401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171218 n + (A213388 n - A212973 n)

end

end A212974.P8175269884901731401

namespace A212974

/-- `A171218(n)+A213388(n)-A212973(n)` -/
def P8175269884901731401.Spec : Prop :=
  ∀ n, P8175269884901731401.a n = A212974 n

end A212974

/-! ## A212974.P9502376542231790956

`A212959(n)+A212960(n)-A212973(n)`
-/

namespace A212974.P9502376542231790956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n + (A212960 n - A212973 n)

end

end A212974.P9502376542231790956

namespace A212974

/-- `A212959(n)+A212960(n)-A212973(n)` -/
def P9502376542231790956.Spec : Prop :=
  ∀ n, P9502376542231790956.a n = A212974 n

end A212974

/-!
# A212975: Number of (w,x,y) with all terms in {0,...,n} and even range.

The programs for A212975, the canonical program `A212975.P2864187627613384234` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212975 has offset 0).

The definition of A212975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212975.P2864187627613384234

`(n+1)*(2*n*(n+2)+3*(-1)^n+1)/4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212975

/-- `(n+1)*(2*n*(n+2)+3*(-1)^n+1)/4` -/
def P2864187627613384234.Spec : Prop :=
  ∀ n, P2864187627613384234.a n = (A212975 n : ℚ)

end A212975

/-! ## A212975.P10506915951260268226

`lcm(n+1, xor(1, lcm(n, n+2)))`
-/

namespace A212975.P10506915951260268226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.xor 1 (Nat.lcm n (n + 2)))

end

end A212975.P10506915951260268226

namespace A212975

/-- `lcm(n+1, xor(1, lcm(n, n+2)))` -/
def P10506915951260268226.Spec : Prop :=
  ∀ n, (P10506915951260268226.a n : ℤ) = A212975 n

end A212975

/-! ## A212975.P7196575210954092996

`abs((n+1)*or(1, ∑[-or(1, n)]))`
-/

namespace A212975.P7196575210954092996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A212975.P7196575210954092996

namespace A212975

/-- `abs((n+1)*or(1, ∑[-or(1, n)]))` -/
def P7196575210954092996.Spec : Prop :=
  ∀ n, P7196575210954092996.a n = A212975 n

end A212975

/-! ## A212975.P10063427482399445915

`-((n+1)*or(1, ∑[-or(1, n)]))`
-/

namespace A212975.P10063427482399445915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A212975.P10063427482399445915

namespace A212975

/-- `-((n+1)*or(1, ∑[-or(1, n)]))` -/
def P10063427482399445915.Spec : Prop :=
  ∀ n, P10063427482399445915.a n = A212975 n

end A212975

/-! ## A212975.P3093176066139169382

`(n+1)*∑[a(n-2)+2]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A212975.P3093176066139169382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212975.P3093176066139169382

namespace A212975

/-- `(n+1)*∑[a(n-2)+2]` -/
def P3093176066139169382.Spec : Prop :=
  ∀ n, (P3093176066139169382.a n : ℤ) = A212975 n

end A212975

/-! ## A212975.P15218723642864771667

`(n+1)*(n²+n-a(n-1)/n)` with `a(0)=1`
-/

namespace A212975.P15218723642864771667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * ((n ^ 2 + n : ℚ) - a (n - 1) / (n : ℚ))

end

end A212975.P15218723642864771667

namespace A212975

/-- `(n+1)*(n²+n-a(n-1)/n)` -/
def P15218723642864771667.Spec : Prop :=
  ∀ n, P15218723642864771667.a n = (A212975 n : ℚ)

end A212975

/-! ## A212975.P17906079484805058258

`(n+1)^3-A212976(n)`
-/

namespace A212975.P17906079484805058258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A212976 n

end

end A212975.P17906079484805058258

namespace A212975

/-- `(n+1)^3-A212976(n)` -/
def P17906079484805058258.Spec : Prop :=
  ∀ n, P17906079484805058258.a n = A212975 n

end A212975

/-! ## A212975.P8738883230028594415

`(n+1)*(A097063(n)+n)`
-/

namespace A212975.P8738883230028594415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A097063 n + (n : ℤ))

end

end A212975.P8738883230028594415

namespace A212975

/-- `(n+1)*(A097063(n)+n)` -/
def P8738883230028594415.Spec : Prop :=
  ∀ n, P8738883230028594415.a n = A212975 n

end A212975

/-! ## A212975.P16976352677700302346

`A004652(n+1)*2*(n+1)-(n+1)`
-/

namespace A212975.P16976352677700302346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (n + 1) * (2 * (n + 1) : ℤ) - (n + 1 : ℤ)

end

end A212975.P16976352677700302346

namespace A212975

/-- `A004652(n+1)*2*(n+1)-(n+1)` -/
def P16976352677700302346.Spec : Prop :=
  ∀ n, P16976352677700302346.a n = A212975 n

end A212975

/-! ## A212975.P16008306696658115334

`A174239(n)+n*A084265(n)`
-/

namespace A212975.P16008306696658115334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174239 n + (n : ℤ) * A084265 n

end

end A212975.P16008306696658115334

namespace A212975

/-- `A174239(n)+n*A084265(n)` -/
def P16008306696658115334.Spec : Prop :=
  ∀ n, P16008306696658115334.a n = A212975 n

end A212975

/-! ## A212975.P8048244349934267341

`A180857(n+1)-A238411(n+1)`
-/

namespace A212975.P8048244349934267341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180857 (n + 1) - A238411 (n + 1)

end

end A212975.P8048244349934267341

namespace A212975

/-- `A180857(n+1)-A238411(n+1)` -/
def P8048244349934267341.Spec : Prop :=
  ∀ n, P8048244349934267341.a n = A212975 n

end A212975

/-! ## A212975.P11450423805159401992

`2*A317614(n+1)-A074149(n+1)`
-/

namespace A212975.P11450423805159401992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317614 (n + 1) - A074149 (n + 1)

end

end A212975.P11450423805159401992

namespace A212975

/-- `2*A317614(n+1)-A074149(n+1)` -/
def P11450423805159401992.Spec : Prop :=
  ∀ n, P11450423805159401992.a n = A212975 n

end A212975

/-! ## A212975.P13636766826601615100

`2*A213389(n+1)-(n+1)`
-/

namespace A212975.P13636766826601615100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213389 (n + 1) - (n + 1 : ℤ)

end

end A212975.P13636766826601615100

namespace A212975

/-- `2*A213389(n+1)-(n+1)` -/
def P13636766826601615100.Spec : Prop :=
  ∀ n, P13636766826601615100.a n = A212975 n

end A212975

/-! ## A212975.P2079620798554906366

`A212570(n+1)-A212686(n+1)`
-/

namespace A212975.P2079620798554906366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212570 (n + 1) - A212686 (n + 1)

end

end A212975.P2079620798554906366

namespace A212975

/-- `A212570(n+1)-A212686(n+1)` -/
def P2079620798554906366.Spec : Prop :=
  ∀ n, P2079620798554906366.a n = A212975 n

end A212975

/-! ## A212975.P15528198796489281855

`A246695(n)+A246695(n)-A257088(n+1)`
-/

namespace A212975.P15528198796489281855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 n + (A246695 n - A257088 (n + 1))

end

end A212975.P15528198796489281855

namespace A212975

/-- `A246695(n)+A246695(n)-A257088(n+1)` -/
def P15528198796489281855.Spec : Prop :=
  ∀ n, P15528198796489281855.a n = A212975 n

end A212975

/-! ## A212975.P16825057987608929798

`A045975(A000982(n+1))`
-/

namespace A212975.P16825057987608929798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045975 (A000982 (n + 1)).toNat

end

end A212975.P16825057987608929798

namespace A212975

/-- `A045975(A000982(n+1))` -/
def P16825057987608929798.Spec : Prop :=
  ∀ n, P16825057987608929798.a n = A212975 n

end A212975

/-! ## A212975.P5708774930854468216

`(n+1)*A267458(A061925(n+1))`
-/

namespace A212975.P5708774930854468216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A267458 (A061925 (n + 1)).toNat

end

end A212975.P5708774930854468216

namespace A212975

/-- `(n+1)*A267458(A061925(n+1))` -/
def P5708774930854468216.Spec : Prop :=
  ∀ n, P5708774930854468216.a n = A212975 n

end A212975

/-! ## A212975.P9715550155468894127

`A076922(A093005(n+1))`
-/

namespace A212975.P9715550155468894127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076922 (A093005 (n + 1)).toNat

end

end A212975.P9715550155468894127

namespace A212975

/-- `A076922(A093005(n+1))` -/
def P9715550155468894127.Spec : Prop :=
  ∀ n, P9715550155468894127.a n = A212975 n

end A212975

/-! ## A212975.P5956494379825486454

`(n+1)*A121496((n+1)²)`
-/

namespace A212975.P5956494379825486454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A121496 ((n + 1) ^ 2)

end

end A212975.P5956494379825486454

namespace A212975

/-- `(n+1)*A121496((n+1)²)` -/
def P5956494379825486454.Spec : Prop :=
  ∀ n, P5956494379825486454.a n = A212975 n

end A212975

/-! ## A212975.P16336394753922542336

`(n+1)*A129756(A085046(n+1))`
-/

namespace A212975.P16336394753922542336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A129756 (A085046 (n + 1)).toNat

end

end A212975.P16336394753922542336

namespace A212975

/-- `(n+1)*A129756(A085046(n+1))` -/
def P16336394753922542336.Spec : Prop :=
  ∀ n, P16336394753922542336.a n = A212975 n

end A212975

/-!
# A212976: Number of (w,x,y) with all terms in {0,...,n} and odd range.

The programs for A212976, the canonical program `A212976.P5868100420314305912` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212976 has offset 0).

The definition of A212976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212976.P5868100420314305912

`∑[6*ceil(n/2)²]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212976

/-- `∑[6*ceil(n/2)²]` -/
def P5868100420314305912.Spec : Prop :=
  ∀ n, P5868100420314305912.a n = A212976 n

theorem P5868100420314305912.correct : P5868100420314305912.Spec := by
  intro n
  simp only [A212976]

end A212976

/-! ## A212976.P10942506616233400778

`6*∑[∑[n%2]²]`
-/

namespace A212976.P10942506616233400778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212976.P10942506616233400778

namespace A212976

/-- `6*∑[∑[n%2]²]` -/
def P10942506616233400778.Spec : Prop :=
  ∀ n, (P10942506616233400778.a n : ℤ) = A212976 n

end A212976

/-! ## A212976.P13960228731071836827

`6*∑[∑[and(1, n)]²]`
-/

namespace A212976.P13960228731071836827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212976.P13960228731071836827

namespace A212976

/-- `6*∑[∑[and(1, n)]²]` -/
def P13960228731071836827.Spec : Prop :=
  ∀ n, (P13960228731071836827.a n : ℤ) = A212976 n

end A212976

/-! ## A212976.P995533875453681300

`6*∑[∑[and(1, n)]^2]`
-/

namespace A212976.P995533875453681300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212976.P995533875453681300

namespace A212976

/-- `6*∑[∑[and(1, n)]^2]` -/
def P995533875453681300.Spec : Prop :=
  ∀ n, (P995533875453681300.a n : ℤ) = A212976 n

end A212976

/-! ## A212976.P17838834115272540077

`(n+1)*xor(1, ∑[or(1, n)])`
-/

namespace A212976.P17838834115272540077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212976.P17838834115272540077

namespace A212976

/-- `(n+1)*xor(1, ∑[or(1, n)])` -/
def P17838834115272540077.Spec : Prop :=
  ∀ n, (P17838834115272540077.a n : ℤ) = A212976 n

end A212976

/-! ## A212976.P17865455228004046460

`6*∑[∑[1-a(n-1)]²]` with `a(0)=0`
-/

namespace A212976.P17865455228004046460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212976.P17865455228004046460

namespace A212976

/-- `6*∑[∑[1-a(n-1)]²]` -/
def P17865455228004046460.Spec : Prop :=
  ∀ n, P17865455228004046460.a n = A212976 n

end A212976

/-! ## A212976.P11313364025167846044

`∑[∑[6-a(n-1)]²]/6` with `a(0)=0`
-/

namespace A212976.P11313364025167846044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6

end

end A212976.P11313364025167846044

namespace A212976

/-- `∑[∑[6-a(n-1)]²]/6` -/
def P11313364025167846044.Spec : Prop :=
  ∀ n, P11313364025167846044.a n = (A212976 n : ℚ)

end A212976

/-! ## A212976.P2377277957644977683

`6*∑[∑[∑[ogf(x/(1+x))]]²]`
-/

namespace A212976.P2377277957644977683
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212976.P2377277957644977683

namespace A212976

/-- `6*∑[∑[∑[ogf(x/(1+x))]]²]` -/
def P2377277957644977683.Spec : Prop :=
  ∀ n, P2377277957644977683.a n = A212976 n

end A212976

/-! ## A212976.P16626196217060294530

`(n+1)*∑[a(n-2)+2]` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A212976.P16626196217060294530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212976.P16626196217060294530

namespace A212976

/-- `(n+1)*∑[a(n-2)+2]` -/
def P16626196217060294530.Spec : Prop :=
  ∀ n, (P16626196217060294530.a n : ℤ) = A212976 n

end A212976

/-! ## A212976.P12979728205661821189

`6*∑[A008794(n+1)]`
-/

namespace A212976.P12979728205661821189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212976.P12979728205661821189

namespace A212976

/-- `6*∑[A008794(n+1)]` -/
def P12979728205661821189.Spec : Prop :=
  ∀ n, P12979728205661821189.a n = A212976 n

end A212976

/-! ## A212976.P16349477840727148897

`3*(A168388(n+1)-1)`
-/

namespace A212976.P16349477840727148897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A168388 (n + 1) - 1)

end

end A212976.P16349477840727148897

namespace A212976

/-- `3*(A168388(n+1)-1)` -/
def P16349477840727148897.Spec : Prop :=
  ∀ n, P16349477840727148897.a n = A212976 n

end A212976

/-! ## A212976.P8822814101836302626

`(n+1)^3-A212975(n)`
-/

namespace A212976.P8822814101836302626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A212975 n

end

end A212976.P8822814101836302626

namespace A212976

/-- `(n+1)^3-A212975(n)` -/
def P8822814101836302626.Spec : Prop :=
  ∀ n, P8822814101836302626.a n = A212976 n

end A212976

/-! ## A212976.P2390199979584613841

`(n+1)*(A236283(n+1)-1)`
-/

namespace A212976.P2390199979584613841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A236283 (n + 1) - 1)

end

end A212976.P2390199979584613841

namespace A212976

/-- `(n+1)*(A236283(n+1)-1)` -/
def P2390199979584613841.Spec : Prop :=
  ∀ n, P2390199979584613841.a n = A212976 n

end A212976

/-! ## A212976.P7252122986905444119

`(n+1)*(A178218(n+1)-(n+1))`
-/

namespace A212976.P7252122986905444119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A178218 (n + 1) - (n + 1 : ℤ))

end

end A212976.P7252122986905444119

namespace A212976

/-- `(n+1)*(A178218(n+1)-(n+1))` -/
def P7252122986905444119.Spec : Prop :=
  ∀ n, P7252122986905444119.a n = A212976 n

end A212976

/-! ## A212976.P6595142252827119021

`(n+1)*abs(A028242(n)-∑[n+1])`
-/

namespace A212976.P6595142252827119021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |A028242 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A212976.P6595142252827119021

namespace A212976

/-- `(n+1)*abs(A028242(n)-∑[n+1])` -/
def P6595142252827119021.Spec : Prop :=
  ∀ n, P6595142252827119021.a n = A212976 n

end A212976

/-! ## A212976.P6454903057241127153

`∪[A061804(n), A300758(n)]`
-/

namespace A212976.P6454903057241127153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212976.P6454903057241127153

namespace A212976

/-- `∪[A061804(n), A300758(n)]` -/
def P6454903057241127153.Spec : Prop :=
  ∀ n, (P6454903057241127153.a n : ℤ) = A212976 n

end A212976

/-! ## A212976.P11151673565416790546

`A246697(n)-A319556(n+1)`
-/

namespace A212976.P11151673565416790546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246697 n - A319556 (n + 1)

end

end A212976.P11151673565416790546

namespace A212976

/-- `A246697(n)-A319556(n+1)` -/
def P11151673565416790546.Spec : Prop :=
  ∀ n, P11151673565416790546.a n = A212976 n

end A212976

/-! ## A212976.P10891061046998203574

`A342362(n)-A352116(n+1)`
-/

namespace A212976.P10891061046998203574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342362 n - A352116 (n + 1)

end

end A212976.P10891061046998203574

namespace A212976

/-- `A342362(n)-A352116(n+1)` -/
def P10891061046998203574.Spec : Prop :=
  ∀ n, P10891061046998203574.a n = A212976 n

end A212976

/-! ## A212976.P15365560701500671259

`A074149(n+1)-A193356(n+1)`
-/

namespace A212976.P15365560701500671259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 1) - A193356 (n + 1)

end

end A212976.P15365560701500671259

namespace A212976

/-- `A074149(n+1)-A193356(n+1)` -/
def P15365560701500671259.Spec : Prop :=
  ∀ n, P15365560701500671259.a n = A212976 n

end A212976

/-! ## A212976.P12659794986473005562

`A138179(n+1)-A183207(n+1)`
-/

namespace A212976.P12659794986473005562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138179 (n + 1) - A183207 (n + 1)

end

end A212976.P12659794986473005562

namespace A212976

/-- `A138179(n+1)-A183207(n+1)` -/
def P12659794986473005562.Spec : Prop :=
  ∀ n, P12659794986473005562.a n = A212976 n

end A212976

/-!
# A212977: Number of (w,x,y) with all terms in {0,...,n} and n/2 < w+x+y <= n.

The programs for A212977, the canonical program `A212977.P17578249698588708687` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212977 has offset 0).

The definition of A212977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212977.P17578249698588708687

`C(n+3, 3)-A058187(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A212977

/-- `C(n+3, 3)-A058187(n)` -/
def P17578249698588708687.Spec : Prop :=
  ∀ n, P17578249698588708687.a n = A212977 n

theorem P17578249698588708687.correct : P17578249698588708687.Spec := by
  intro n
  simp only [A212977]

end A212977

/-! ## A212977.P2238683552185182697

`∪[A255211(n), A255687(n)]`
-/

namespace A212977.P2238683552185182697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255211 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255687 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212977.P2238683552185182697

namespace A212977

/-- `∪[A255211(n), A255687(n)]` -/
def P2238683552185182697.Spec : Prop :=
  ∀ n, (P2238683552185182697.a n : ℤ) = A212977 n

end A212977

/-! ## A212977.P11362202631481263068

`sqrt(A001249(n))-A058187(n)`
-/

namespace A212977.P11362202631481263068
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001249 n : ℝ) - (A058187 n : ℝ)

end

end A212977.P11362202631481263068

namespace A212977

/-- `sqrt(A001249(n))-A058187(n)` -/
def P11362202631481263068.Spec : Prop :=
  ∀ n, P11362202631481263068.a n = (A212977 n : ℝ)

end A212977

/-! ## A212977.P8583411891401343506

`A000292(n+1)-A058187(n)`
-/

namespace A212977.P8583411891401343506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - A058187 n

end

end A212977.P8583411891401343506

namespace A212977

/-- `A000292(n+1)-A058187(n)` -/
def P8583411891401343506.Spec : Prop :=
  ∀ n, P8583411891401343506.a n = A212977 n

end A212977

/-! ## A212977.P6647484725399262278

`∑[A000217(n+1)]-A058187(n)`
-/

namespace A212977.P6647484725399262278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A058187 n

end

end A212977.P6647484725399262278

namespace A212977

/-- `∑[A000217(n+1)]-A058187(n)` -/
def P6647484725399262278.Spec : Prop :=
  ∀ n, P6647484725399262278.a n = A212977 n

end A212977

/-! ## A212977.P2884025795483859608

`A064694(n+1)-A087811(n+1)`
-/

namespace A212977.P2884025795483859608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064694 (n + 1) - A087811 (n + 1)

end

end A212977.P2884025795483859608

namespace A212977

/-- `A064694(n+1)-A087811(n+1)` -/
def P2884025795483859608.Spec : Prop :=
  ∀ n, P2884025795483859608.a n = A212977 n

end A212977

/-! ## A212977.P2609130600795777776

`A294172(n+1)-A079824(n+1)`
-/

namespace A212977.P2609130600795777776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294172 (n + 1) - A079824 (n + 1)

end

end A212977.P2609130600795777776

namespace A212977

/-- `A294172(n+1)-A079824(n+1)` -/
def P2609130600795777776.Spec : Prop :=
  ∀ n, P2609130600795777776.a n = A212977 n

end A212977

/-! ## A212977.P5615866015743429126

`∑[∑[n+1]]-A000292(A008619(n))`
-/

namespace A212977.P5615866015743429126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000292 (A008619 n).toNat

end

end A212977.P5615866015743429126

namespace A212977

/-- `∑[∑[n+1]]-A000292(A008619(n))` -/
def P5615866015743429126.Spec : Prop :=
  ∀ n, P5615866015743429126.a n = A212977 n

end A212977

/-! ## A212977.P2797648850671406313

`∑[∑[n+1]-A000217(A027656(n))]`
-/

namespace A212977.P2797648850671406313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A000217 (A027656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212977.P2797648850671406313

namespace A212977

/-- `∑[∑[n+1]-A000217(A027656(n))]` -/
def P2797648850671406313.Spec : Prop :=
  ∀ n, P2797648850671406313.a n = A212977 n

end A212977

/-! ## A212977.P9500727126483481699

`A000292(n+1)-A000292(floor(n/2)+1)`
-/

namespace A212977.P9500727126483481699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - A000292 (⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A212977.P9500727126483481699

namespace A212977

/-- `A000292(n+1)-A000292(floor(n/2)+1)` -/
def P9500727126483481699.Spec : Prop :=
  ∀ n, P9500727126483481699.a n = A212977 n

end A212977

/-! ## A212977.P1226972546136452375

`A283551(n+1)+A000124(n)-A058187(n)`
-/

namespace A212977.P1226972546136452375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283551 (n + 1) + (A000124 n - A058187 n)

end

end A212977.P1226972546136452375

namespace A212977

/-- `A283551(n+1)+A000124(n)-A058187(n)` -/
def P1226972546136452375.Spec : Prop :=
  ∀ n, P1226972546136452375.a n = A212977 n

end A212977

/-! ## A212977.P1046100190982388030

`A016061(n+1)-(A058187(n)+A006002(n+1))`
-/

namespace A212977.P1046100190982388030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 (n + 1) - (A058187 n + A006002 (n + 1))

end

end A212977.P1046100190982388030

namespace A212977

/-- `A016061(n+1)-(A058187(n)+A006002(n+1))` -/
def P1046100190982388030.Spec : Prop :=
  ∀ n, P1046100190982388030.a n = A212977 n

end A212977

/-! ## A212977.P7815148338840205638

`A000292(n+1)+A096338(n)-A096338(n+1)`
-/

namespace A212977.P7815148338840205638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A096338 n - A096338 (n + 1))

end

end A212977.P7815148338840205638

namespace A212977

/-- `A000292(n+1)+A096338(n)-A096338(n+1)` -/
def P7815148338840205638.Spec : Prop :=
  ∀ n, P7815148338840205638.a n = A212977 n

end A212977

/-! ## A212977.P13947608776939900650

`A008804(2*n)-A058187(n)`
-/

namespace A212977.P13947608776939900650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * n) - A058187 n

end

end A212977.P13947608776939900650

namespace A212977

/-- `A008804(2*n)-A058187(n)` -/
def P13947608776939900650.Spec : Prop :=
  ∀ n, P13947608776939900650.a n = A212977 n

end A212977

/-! ## A212977.P216847512768005277

`A058187(2*n)-A058187(n)`
-/

namespace A212977.P216847512768005277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (2 * n) - A058187 n

end

end A212977.P216847512768005277

namespace A212977

/-- `A058187(2*n)-A058187(n)` -/
def P216847512768005277.Spec : Prop :=
  ∀ n, P216847512768005277.a n = A212977 n

end A212977

/-! ## A212977.P12902825535238145717

`A000292(n+1)-A190718(2*n)`
-/

namespace A212977.P12902825535238145717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - A190718 (2 * n)

end

end A212977.P12902825535238145717

namespace A212977

/-- `A000292(n+1)-A190718(2*n)` -/
def P12902825535238145717.Spec : Prop :=
  ∀ n, P12902825535238145717.a n = A212977 n

end A212977

/-! ## A212977.P2045886371694162690

`A008804(2*n)-A008804(A052928(n))`
-/

namespace A212977.P2045886371694162690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * n) - A008804 (A052928 n).toNat

end

end A212977.P2045886371694162690

namespace A212977

/-- `A008804(2*n)-A008804(A052928(n))` -/
def P2045886371694162690.Spec : Prop :=
  ∀ n, P2045886371694162690.a n = A212977 n

end A212977

/-! ## A212977.P868625193306973895

`A005232(2*n+1)-A005232(A109613(n))`
-/

namespace A212977.P868625193306973895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (2 * n + 1) - A005232 (A109613 n).toNat

end

end A212977.P868625193306973895

namespace A212977

/-- `A005232(2*n+1)-A005232(A109613(n))` -/
def P868625193306973895.Spec : Prop :=
  ∀ n, P868625193306973895.a n = A212977 n

end A212977

/-! ## A212977.P8753462999122425645

`A008804(2*n)-A008804(A122461(2*n))`
-/

namespace A212977.P8753462999122425645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * n) - A008804 (A122461 (2 * n)).toNat

end

end A212977.P8753462999122425645

namespace A212977

/-- `A008804(2*n)-A008804(A122461(2*n))` -/
def P8753462999122425645.Spec : Prop :=
  ∀ n, P8753462999122425645.a n = A212977 n

end A212977

/-! ## A212977.P13779279639600681604

`A005232(2*n+1)-A005232(A129756(2*n))`
-/

namespace A212977.P13779279639600681604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (2 * n + 1) - A005232 (A129756 (2 * n)).toNat

end

end A212977.P13779279639600681604

namespace A212977

/-- `A005232(2*n+1)-A005232(A129756(2*n))` -/
def P13779279639600681604.Spec : Prop :=
  ∀ n, P13779279639600681604.a n = A212977 n

end A212977

/-!
# A212978: Number of (w,x,y) with all terms in {0,...,n} and range = 2*n-w-x.

The programs for A212978, the canonical program `A212978.P17583256328494453819` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212978 has offset 0).

The definition of A212978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212978.P17583256328494453819

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=20, a(4)=32`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212978

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P17583256328494453819.Spec : Prop :=
  ∀ n, P17583256328494453819.a n = A212978 n

theorem P17583256328494453819.correct : P17583256328494453819.Spec := by
  intro n
  simp only [A212978]

end A212978

/-! ## A212978.P7535699724419733949

`ceil(∑[8*n/3+1])`
-/

namespace A212978.P7535699724419733949
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((n : ℚ) / 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A212978.P7535699724419733949

namespace A212978

/-- `ceil(∑[8*n/3+1])` -/
def P7535699724419733949.Spec : Prop :=
  ∀ n, P7535699724419733949.a n = A212978 n

end A212978

/-! ## A212978.P2613416564303754945

`∑[ceil(or(2, 8*n)/3)]`
-/

namespace A212978.P2613416564303754945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 2 (8 * n) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212978.P2613416564303754945

namespace A212978

/-- `∑[ceil(or(2, 8*n)/3)]` -/
def P2613416564303754945.Spec : Prop :=
  ∀ n, P2613416564303754945.a n = A212978 n

end A212978

/-! ## A212978.P15598605757938921877

`∑[ceil(xor(2, 8*n)/3)]`
-/

namespace A212978.P15598605757938921877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 2 (8 * n) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212978.P15598605757938921877

namespace A212978

/-- `∑[ceil(xor(2, 8*n)/3)]` -/
def P15598605757938921877.Spec : Prop :=
  ∀ n, P15598605757938921877.a n = A212978 n

end A212978

/-! ## A212978.P12684959827194591339

`∑[floor(or(4, 8*n)/3)]`
-/

namespace A212978.P12684959827194591339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 4 (8 * n) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212978.P12684959827194591339

namespace A212978

/-- `∑[floor(or(4, 8*n)/3)]` -/
def P12684959827194591339.Spec : Prop :=
  ∀ n, P12684959827194591339.a n = A212978 n

end A212978

/-! ## A212978.P12607237071259863779

`∑[a(n-3)+8]` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A212978.P12607237071259863779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212978.P12607237071259863779

namespace A212978

/-- `∑[a(n-3)+8]` -/
def P12607237071259863779.Spec : Prop :=
  ∀ n, (P12607237071259863779.a n : ℤ) = A212978 n

end A212978

/-! ## A212978.P12971896584418522627

`round(C(4*(n+1), 2)/6)`
-/

namespace A212978.P12971896584418522627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (4 * (n + 1)) 2 : ℚ) / 6)

end

end A212978.P12971896584418522627

namespace A212978

/-- `round(C(4*(n+1), 2)/6)` -/
def P12971896584418522627.Spec : Prop :=
  ∀ n, P12971896584418522627.a n = A212978 n

end A212978

/-! ## A212978.P14686392265290871152

`∑[∑[abs(a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A212978.P14686392265290871152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212978.P14686392265290871152

namespace A212978

/-- `∑[∑[abs(a(n-3))]]` -/
def P14686392265290871152.Spec : Prop :=
  ∀ n, (P14686392265290871152.a n : ℤ) = A212978 n

end A212978

/-! ## A212978.P3470031255733641454

`∑[∑[or(2, a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A212978.P3470031255733641454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2] fun n f2 =>
  Nat.lor 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212978.P3470031255733641454

namespace A212978

/-- `∑[∑[or(2, a(n-3))]]` -/
def P3470031255733641454.Spec : Prop :=
  ∀ n, (P3470031255733641454.a n : ℤ) = A212978 n

end A212978

/-! ## A212978.P8960398083574785934

`∑[∑[dr(a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A212978.P8960398083574785934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 3] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212978.P8960398083574785934

namespace A212978

/-- `∑[∑[dr(a(n-3))]]` -/
def P8960398083574785934.Spec : Prop :=
  ∀ n, (P8960398083574785934.a n : ℤ) = A212978 n

end A212978

/-! ## A212978.P301200383814494800

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A212978.P301200383814494800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212978.P301200383814494800

namespace A212978

/-- `∑[∑[floor(a(n-3))]]` -/
def P301200383814494800.Spec : Prop :=
  ∀ n, (P301200383814494800.a n : ℤ) = A212978 n

end A212978

/-! ## A212978.P7043650068356967716

`∑[∑[ceil(a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A212978.P7043650068356967716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212978.P7043650068356967716

namespace A212978

/-- `∑[∑[ceil(a(n-3))]]` -/
def P7043650068356967716.Spec : Prop :=
  ∀ n, (P7043650068356967716.a n : ℤ) = A212978 n

end A212978

/-! ## A212978.P12408412044768842881

`∑[∑[round(a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A212978.P12408412044768842881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212978.P12408412044768842881

namespace A212978

/-- `∑[∑[round(a(n-3))]]` -/
def P12408412044768842881.Spec : Prop :=
  ∀ n, (P12408412044768842881.a n : ℤ) = A212978 n

end A212978

/-! ## A212978.P18406345697710330421

`∑[∑[(n+1)²%3]+2*n]`
-/

namespace A212978.P18406345697710330421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212978.P18406345697710330421

namespace A212978

/-- `∑[∑[(n+1)²%3]+2*n]` -/
def P18406345697710330421.Spec : Prop :=
  ∀ n, (P18406345697710330421.a n : ℤ) = A212978 n

end A212978

/-! ## A212978.P617617018266781682

`∑[round(4/(3*acot(2*n)))]+n`
-/

namespace A212978.P617617018266781682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 / (3 * SequenceMachineLib.acot (2 * n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A212978.P617617018266781682

namespace A212978

/-- `∑[round(4/(3*acot(2*n)))]+n` -/
def P617617018266781682.Spec : Prop :=
  ∀ n, P617617018266781682.a n = A212978 n

end A212978

/-! ## A212978.P6513726654622422620

`∑[∑[∑[ogf((1+3x+2x^2+2x^3)/(1+x+x^2))]]]`
-/

namespace A212978.P6513726654622422620
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2, 2] [1, 1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212978.P6513726654622422620

namespace A212978

/-- `∑[∑[∑[ogf((1+3x+2x^2+2x^3)/(1+x+x^2))]]]` -/
def P6513726654622422620.Spec : Prop :=
  ∀ n, P6513726654622422620.a n = A212978 n

end A212978

/-! ## A212978.P8678579619801233803

`floor(n*(a(n-1)/(n+1)+4))` with `a(0)=1, a(1)=5`
-/

namespace A212978.P8678579619801233803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌊(n : ℚ) * ((a (n - 1) : ℚ) / (n + 1 : ℚ) + 4)⌋

end

end A212978.P8678579619801233803

namespace A212978

/-- `floor(n*(a(n-1)/(n+1)+4))` -/
def P8678579619801233803.Spec : Prop :=
  ∀ n, P8678579619801233803.a n = A212978 n

end A212978

/-! ## A212978.P14211841394244754594

`A008577(n)+n`
-/

namespace A212978.P14211841394244754594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008577 n + (n : ℤ)

end

end A212978.P14211841394244754594

namespace A212978

/-- `A008577(n)+n` -/
def P14211841394244754594.Spec : Prop :=
  ∀ n, P14211841394244754594.a n = A212978 n

end A212978

/-! ## A212978.P3192356246736939865

`∑[A047408(n+1)]`
-/

namespace A212978.P3192356246736939865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212978.P3192356246736939865

namespace A212978

/-- `∑[A047408(n+1)]` -/
def P3192356246736939865.Spec : Prop :=
  ∀ n, P3192356246736939865.a n = A212978 n

end A212978

/-! ## A212978.P17781384658624448263

`A365418(n)-n²`
-/

namespace A212978.P17781384658624448263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365418 n - (n ^ 2 : ℤ)

end

end A212978.P17781384658624448263

namespace A212978

/-- `A365418(n)-n²` -/
def P17781384658624448263.Spec : Prop :=
  ∀ n, P17781384658624448263.a n = A212978 n

end A212978

/-!
# A212979: Number of (w,x,y) with all terms in {0,...,n} and range=average.

The programs for A212979, the canonical program `A212979.P15688986192476150994` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212979 has offset 0).

The definition of A212979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212979.P15688986192476150994

`3*∑[A250120(n)-A301291(n)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A212979

/-- `3*∑[A250120(n)-A301291(n)]+1` -/
def P15688986192476150994.Spec : Prop :=
  ∀ n, P15688986192476150994.a n = A212979 n

theorem P15688986192476150994.correct : P15688986192476150994.Spec := by
  intro n
  simp only [A212979]

end A212979

/-! ## A212979.P8948091948936520686

`A016777(A211536(n)-A211535(n))`
-/

namespace A212979.P8948091948936520686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A211536 n - A211535 n).toNat

end

end A212979.P8948091948936520686

namespace A212979

/-- `A016777(A211536(n)-A211535(n))` -/
def P8948091948936520686.Spec : Prop :=
  ∀ n, P8948091948936520686.a n = A212979 n

end A212979

/-! ## A212979.P9672450224080744917

`A016777(∑[A250120(n)-A301291(n)])`
-/

namespace A212979.P9672450224080744917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A301291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212979.P9672450224080744917

namespace A212979

/-- `A016777(∑[A250120(n)-A301291(n)])` -/
def P9672450224080744917.Spec : Prop :=
  ∀ n, P9672450224080744917.a n = A212979 n

end A212979

/-! ## A212979.P13460100493747489920

`A016777(∑[A250120(n)%A301291(n)])`
-/

namespace A212979.P13460100493747489920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250120 n) (A301291 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212979.P13460100493747489920

namespace A212979

/-- `A016777(∑[A250120(n)%A301291(n)])` -/
def P13460100493747489920.Spec : Prop :=
  ∀ n, P13460100493747489920.a n = A212979 n

end A212979

/-! ## A212979.P12415376937462737622

`A008585(∑[A250120(n)-A301291(n)])+1`
-/

namespace A212979.P12415376937462737622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A301291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A212979.P12415376937462737622

namespace A212979

/-- `A008585(∑[A250120(n)-A301291(n)])+1` -/
def P12415376937462737622.Spec : Prop :=
  ∀ n, P12415376937462737622.a n = A212979 n

end A212979

/-! ## A212979.P12467034948844856200

`A008619(6*∑[A250120(n)-A301291(n)])`
-/

namespace A212979.P12467034948844856200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A301291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (6 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A212979.P12467034948844856200

namespace A212979

/-- `A008619(6*∑[A250120(n)-A301291(n)])` -/
def P12467034948844856200.Spec : Prop :=
  ∀ n, P12467034948844856200.a n = A212979 n

end A212979

/-! ## A212979.P1155951322198455481

`A052938(6*∑[A250120(n)-A301291(n)])`
-/

namespace A212979.P1155951322198455481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A301291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (6 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A212979.P1155951322198455481

namespace A212979

/-- `A052938(6*∑[A250120(n)-A301291(n)])` -/
def P1155951322198455481.Spec : Prop :=
  ∀ n, P1155951322198455481.a n = A212979 n

end A212979

/-! ## A212979.P3734836690387356067

`A008611(9*∑[A250120(n)-A301291(n)])`
-/

namespace A212979.P3734836690387356067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A301291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (9 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A212979.P3734836690387356067

namespace A212979

/-- `A008611(9*∑[A250120(n)-A301291(n)])` -/
def P3734836690387356067.Spec : Prop :=
  ∀ n, P3734836690387356067.a n = A212979 n

end A212979

/-!
# A212980: Number of (w,x,y) with all terms in {0,...,n} and w

The programs for A212980, the canonical program `A212980.P9862635923025762000` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212980 has offset 1).

The definition of A212980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212980.P9862635923025762000

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=17, a(4)=37`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212980

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P9862635923025762000.Spec : Prop :=
  ∀ n, P9862635923025762000.a n = A212980 (n + 1)

theorem P9862635923025762000.correct : P9862635923025762000.Spec := by
  intro n
  simp only [A212980, Nat.add_sub_cancel]

end A212980

/-! ## A212980.P3159319381925120557

`A212981(n)-A002620(n+1)`
-/

namespace A212980.P3159319381925120557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212981 n - A002620 (n + 1)

end

end A212980.P3159319381925120557

namespace A212980

/-- `A212981(n)-A002620(n+1)` -/
def P3159319381925120557.Spec : Prop :=
  ∀ n, P3159319381925120557.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P15434488669166341333

`∑[floor(5*(n/2)²)]`
-/

namespace A212980.P15434488669166341333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212980.P15434488669166341333

namespace A212980

/-- `∑[floor(5*(n/2)²)]` -/
def P15434488669166341333.Spec : Prop :=
  ∀ n, P15434488669166341333.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P6664718516518908968

`∑[and(5*n², -2)]/4`
-/

namespace A212980.P6664718516518908968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * n ^ 2 : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A212980.P6664718516518908968

namespace A212980

/-- `∑[and(5*n², -2)]/4` -/
def P6664718516518908968.Spec : Prop :=
  ∀ n, P6664718516518908968.a n = (A212980 (n + 1) : ℚ)

end A212980

/-! ## A212980.P13194376478092104371

`floor(∑[∑[a(n-2)+5]])` with `a(0)=0, a(1)=1, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A212980.P13194376478092104371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f2 =>
  f2 (n - 2) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212980.P13194376478092104371

namespace A212980

/-- `floor(∑[∑[a(n-2)+5]])` -/
def P13194376478092104371.Spec : Prop :=
  ∀ n, (P13194376478092104371.a n : ℤ) = A212980 (n + 1)

end A212980

/-! ## A212980.P4889287620419379251

`floor(∑[∑[∑[5-a(n-1)]]])` with `a(0)=0, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A212980.P4889287620419379251
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f3 =>
  5 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212980.P4889287620419379251

namespace A212980

/-- `floor(∑[∑[∑[5-a(n-1)]]])` -/
def P4889287620419379251.Spec : Prop :=
  ∀ n, P4889287620419379251.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P724848041885480155

`floor(a(n-1)+5*(n/2)²)` with `a(0)=0`
-/

namespace A212980.P724848041885480155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + 5 * ((n : ℚ) / 2) ^ 2⌋

end

end A212980.P724848041885480155

namespace A212980

/-- `floor(a(n-1)+5*(n/2)²)` -/
def P724848041885480155.Spec : Prop :=
  ∀ n, P724848041885480155.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P15550254203374704206

`∑[∑[a(n-2)+5]]-∑[n]` with `a(0)=0, a(1)=2`
-/

namespace A212980.P15550254203374704206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 2) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A212980.P15550254203374704206

namespace A212980

/-- `∑[∑[a(n-2)+5]]-∑[n]` -/
def P15550254203374704206.Spec : Prop :=
  ∀ n, P15550254203374704206.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P13048193721275302522

`a(n-1)+floor(n*(n/4+n))` with `a(0)=0`
-/

namespace A212980.P13048193721275302522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℚ) * ((n : ℚ) / 4 + (n : ℚ))⌋

end

end A212980.P13048193721275302522

namespace A212980

/-- `a(n-1)+floor(n*(n/4+n))` -/
def P13048193721275302522.Spec : Prop :=
  ∀ n, P13048193721275302522.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P18041676965761655583

`abs(∑[A249547(n)-n])`
-/

namespace A212980.P18041676965761655583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A212980.P18041676965761655583

namespace A212980

/-- `abs(∑[A249547(n)-n])` -/
def P18041676965761655583.Spec : Prop :=
  ∀ n, P18041676965761655583.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P5976128014607222407

`A173196(n)+∑[n²]`
-/

namespace A212980.P5976128014607222407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212980.P5976128014607222407

namespace A212980

/-- `A173196(n)+∑[n²]` -/
def P5976128014607222407.Spec : Prop :=
  ∀ n, P5976128014607222407.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P9038865227842748503

`A045947(n)+∑[∑[n]]`
-/

namespace A212980.P9038865227842748503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212980.P9038865227842748503

namespace A212980

/-- `A045947(n)+∑[∑[n]]` -/
def P9038865227842748503.Spec : Prop :=
  ∀ n, P9038865227842748503.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P3142904279733250510

`A212983(n)-(n+1)²`
-/

namespace A212980.P3142904279733250510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212983 n - ((n + 1) ^ 2 : ℤ)

end

end A212980.P3142904279733250510

namespace A212980

/-- `A212983(n)-(n+1)²` -/
def P3142904279733250510.Spec : Prop :=
  ∀ n, P3142904279733250510.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P12856142015788539107

`A002717(n)+∑[C(n, 2)]`
-/

namespace A212980.P12856142015788539107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212980.P12856142015788539107

namespace A212980

/-- `A002717(n)+∑[C(n, 2)]` -/
def P12856142015788539107.Spec : Prop :=
  ∀ n, P12856142015788539107.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P8658007475611937093

`∑[n²]+∑[A002620(n)]`
-/

namespace A212980.P8658007475611937093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A212980.P8658007475611937093

namespace A212980

/-- `∑[n²]+∑[A002620(n)]` -/
def P8658007475611937093.Spec : Prop :=
  ∀ n, P8658007475611937093.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P8572490528084934966

`A032527(n)+a(n-1)` with `a(0)=0`
-/

namespace A212980.P8572490528084934966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A032527 n + a (n - 1)

end

end A212980.P8572490528084934966

namespace A212980

/-- `A032527(n)+a(n-1)` -/
def P8572490528084934966.Spec : Prop :=
  ∀ n, P8572490528084934966.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P580799909935644571

`A004068(n)-a(n-1)` with `a(0)=0`
-/

namespace A212980.P580799909935644571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004068 n - a (n - 1)

end

end A212980.P580799909935644571

namespace A212980

/-- `A004068(n)-a(n-1)` -/
def P580799909935644571.Spec : Prop :=
  ∀ n, P580799909935644571.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P9418823615497341692

`A212247(n)+A007590(n)`
-/

namespace A212980.P9418823615497341692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212247 n + A007590 n

end

end A212980.P9418823615497341692

namespace A212980

/-- `A212247(n)+A007590(n)` -/
def P9418823615497341692.Spec : Prop :=
  ∀ n, P9418823615497341692.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P888729531417375438

`A212068(n)+A077043(n)`
-/

namespace A212980.P888729531417375438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212068 n + A077043 n

end

end A212980.P888729531417375438

namespace A212980

/-- `A212068(n)+A077043(n)` -/
def P888729531417375438.Spec : Prop :=
  ∀ n, P888729531417375438.a n = A212980 (n + 1)

end A212980

/-! ## A212980.P3551462707666210115

`A006331(n)-A019298(n)`
-/

namespace A212980.P3551462707666210115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n - A019298 n

end

end A212980.P3551462707666210115

namespace A212980

/-- `A006331(n)-A019298(n)` -/
def P3551462707666210115.Spec : Prop :=
  ∀ n, P3551462707666210115.a n = A212980 (n + 1)

end A212980

/-!
# A212981: Number of (w,x,y) with all terms in {0,...,n} and w <= x + y and x < y.

The programs for A212981, the canonical program `A212981.P9324900164348882484` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212981 has offset 0).

The definition of A212981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212981.P9963778126505234073

`(20*n^3+42*n²+28*n+3*(1-(-1)^n))/48`
-/

namespace A212981.P9963778126505234073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((20 * n ^ 3 + 42 * n ^ 2 + 28 * n : ℤ) + 3 * (1 - (-1) ^ n) : ℚ) / 48

end

end A212981.P9963778126505234073

namespace A212981

/-- `(20*n^3+42*n²+28*n+3*(1-(-1)^n))/48` -/
def P9963778126505234073.Spec : Prop :=
  ∀ n, P9963778126505234073.a n = (A212981 n : ℚ)

theorem P9963778126505234073.correct : P9963778126505234073.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A212981, Nat.add_sub_cancel, A212981.P9963778126505234073.a, A212981.P9324900164348882484.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A212981, Nat.add_sub_cancel, A212981.P9963778126505234073.a, A212981.P9324900164348882484.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212981

/-! ## A212981.P9324900164348882484

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=21, a(4)=43`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212981

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P9324900164348882484.Spec : Prop :=
  ∀ n, P9324900164348882484.a n = A212981 n

theorem P9324900164348882484.correct : P9324900164348882484.Spec := by
  intro n
  simp only [A212981]

end A212981

/-! ## A212981.P7354803503786183138

`∑[∑[∑[n%2]]]+∑[n²]`
-/

namespace A212981.P7354803503786183138
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f4 j

end

end A212981.P7354803503786183138

namespace A212981

/-- `∑[∑[∑[n%2]]]+∑[n²]` -/
def P7354803503786183138.Spec : Prop :=
  ∀ n, (P7354803503786183138.a n : ℤ) = A212981 n

end A212981

/-! ## A212981.P8264847849096031570

`∑[∑[a(n-2)+5]]` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A212981.P8264847849096031570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4] fun n f2 =>
  f2 (n - 2) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212981.P8264847849096031570

namespace A212981

/-- `∑[∑[a(n-2)+5]]` -/
def P8264847849096031570.Spec : Prop :=
  ∀ n, (P8264847849096031570.a n : ℤ) = A212981 n

end A212981

/-! ## A212981.P15004773285119863450

`∑[∑[∑[5-a(n-1)]]]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A212981.P15004773285119863450
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f3 =>
  5 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212981.P15004773285119863450

namespace A212981

/-- `∑[∑[∑[5-a(n-1)]]]` -/
def P15004773285119863450.Spec : Prop :=
  ∀ n, P15004773285119863450.a n = A212981 n

end A212981

/-! ## A212981.P13040661691721874099

`∑[A115006(n)-n]`
-/

namespace A212981.P13040661691721874099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115006 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212981.P13040661691721874099

namespace A212981

/-- `∑[A115006(n)-n]` -/
def P13040661691721874099.Spec : Prop :=
  ∀ n, P13040661691721874099.a n = A212981 n

end A212981

/-! ## A212981.P17464746693230989564

`A212982(n)-∑[n]`
-/

namespace A212981.P17464746693230989564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212982 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212981.P17464746693230989564

namespace A212981

/-- `A212982(n)-∑[n]` -/
def P17464746693230989564.Spec : Prop :=
  ∀ n, P17464746693230989564.a n = A212981 n

end A212981

/-! ## A212981.P13520037713515735023

`A019298(n)+∑[∑[n]]`
-/

namespace A212981.P13520037713515735023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212981.P13520037713515735023

namespace A212981

/-- `A019298(n)+∑[∑[n]]` -/
def P13520037713515735023.Spec : Prop :=
  ∀ n, P13520037713515735023.a n = A212981 n

end A212981

/-! ## A212981.P340936184659660982

`A203551(n)-a(n-1)` with `a(0)=0`
-/

namespace A212981.P340936184659660982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A203551 n - a (n - 1)

end

end A212981.P340936184659660982

namespace A212981

/-- `A203551(n)-a(n-1)` -/
def P340936184659660982.Spec : Prop :=
  ∀ n, P340936184659660982.a n = A212981 n

end A212981

/-! ## A212981.P16078329172591138106

`∑[A002620(n+1)+n²]`
-/

namespace A212981.P16078329172591138106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212981.P16078329172591138106

namespace A212981

/-- `∑[A002620(n+1)+n²]` -/
def P16078329172591138106.Spec : Prop :=
  ∀ n, P16078329172591138106.a n = A212981 n

end A212981

/-! ## A212981.P3346157408145479379

`A173196(n+1)+∑[n²]`
-/

namespace A212981.P3346157408145479379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212981.P3346157408145479379

namespace A212981

/-- `A173196(n+1)+∑[n²]` -/
def P3346157408145479379.Spec : Prop :=
  ∀ n, P3346157408145479379.a n = A212981 n

end A212981

/-! ## A212981.P6982015474646115969

`∑[A249547(n)]-floor((n/2)²)`
-/

namespace A212981.P6982015474646115969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A212981.P6982015474646115969

namespace A212981

/-- `∑[A249547(n)]-floor((n/2)²)` -/
def P6982015474646115969.Spec : Prop :=
  ∀ n, P6982015474646115969.a n = A212981 n

end A212981

/-! ## A212981.P11971518417952555187

`A002413(n)-a(n-1)+n` with `a(0)=0`
-/

namespace A212981.P11971518417952555187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002413 n - a (n - 1) + (n : ℤ)

end

end A212981.P11971518417952555187

namespace A212981

/-- `A002413(n)-a(n-1)+n` -/
def P11971518417952555187.Spec : Prop :=
  ∀ n, P11971518417952555187.a n = A212981 n

end A212981

/-! ## A212981.P5284729177041048417

`∑[A032527(n+1)]-(n+1)²`
-/

namespace A212981.P5284729177041048417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A212981.P5284729177041048417

namespace A212981

/-- `∑[A032527(n+1)]-(n+1)²` -/
def P5284729177041048417.Spec : Prop :=
  ∀ n, P5284729177041048417.a n = A212981 n

end A212981

/-! ## A212981.P11332555560011744217

`A131941(n)+A002717(n)`
-/

namespace A212981.P11332555560011744217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n + A002717 n

end

end A212981.P11332555560011744217

namespace A212981

/-- `A131941(n)+A002717(n)` -/
def P11332555560011744217.Spec : Prop :=
  ∀ n, P11332555560011744217.a n = A212981 n

end A212981

/-! ## A212981.P2235382979116474078

`A212247(n)+A006578(n)`
-/

namespace A212981.P2235382979116474078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212247 n + A006578 n

end

end A212981.P2235382979116474078

namespace A212981

/-- `A212247(n)+A006578(n)` -/
def P2235382979116474078.Spec : Prop :=
  ∀ n, P2235382979116474078.a n = A212981 n

end A212981

/-! ## A212981.P6320698024027391488

`A342397(n)+A034828(n)`
-/

namespace A212981.P6320698024027391488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342397 n + A034828 n

end

end A212981.P6320698024027391488

namespace A212981

/-- `A342397(n)+A034828(n)` -/
def P6320698024027391488.Spec : Prop :=
  ∀ n, P6320698024027391488.a n = A212981 n

end A212981

/-! ## A212981.P2330996109442661956

`A016061(n)-A002717(n)`
-/

namespace A212981.P2330996109442661956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n - A002717 n

end

end A212981.P2330996109442661956

namespace A212981

/-- `A016061(n)-A002717(n)` -/
def P2330996109442661956.Spec : Prop :=
  ∀ n, P2330996109442661956.a n = A212981 n

end A212981

/-! ## A212981.P5291963563384073327

`A027480(n)-A005744(n)`
-/

namespace A212981.P5291963563384073327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n - A005744 n

end

end A212981.P5291963563384073327

namespace A212981

/-- `A027480(n)-A005744(n)` -/
def P5291963563384073327.Spec : Prop :=
  ∀ n, P5291963563384073327.a n = A212981 n

end A212981

/-!
# A212982: Number of (w,x,y) with all terms in {0,...,n} and w

The programs for A212982, the canonical program `A212982.P10408608130143443580` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212982 has offset 0).

The definition of A212982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212982.P16418792084672253531

`(20*n^3+66*n²+52*n-3*(-1)^n+3)/48`
-/

namespace A212982.P16418792084672253531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((20 * n ^ 3 + 66 * n ^ 2 + 52 * n : ℤ) - 3 * (-1) ^ n + 3 : ℚ) / 48

end

end A212982.P16418792084672253531

namespace A212982

/-- `(20*n^3+66*n²+52*n-3*(-1)^n+3)/48` -/
def P16418792084672253531.Spec : Prop :=
  ∀ n, P16418792084672253531.a n = (A212982 n : ℚ)

theorem P16418792084672253531.correct : P16418792084672253531.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A212982, Nat.add_sub_cancel, A212982.P16418792084672253531.a, A212982.P10408608130143443580.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A212982, Nat.add_sub_cancel, A212982.P16418792084672253531.a, A212982.P10408608130143443580.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212982

/-! ## A212982.P10408608130143443580

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=11, a(3)=27, a(4)=53`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212982

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P10408608130143443580.Spec : Prop :=
  ∀ n, P10408608130143443580.a n = A212982 n

theorem P10408608130143443580.correct : P10408608130143443580.Spec := by
  intro n
  simp only [A212982]

end A212982

/-! ## A212982.P9295347155797646763

`∑[∑[a(n-2)+5]]` with `a(0)=0, a(1)=3`
-/

namespace A212982.P9295347155797646763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 2) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212982.P9295347155797646763

namespace A212982

/-- `∑[∑[a(n-2)+5]]` -/
def P9295347155797646763.Spec : Prop :=
  ∀ n, (P9295347155797646763.a n : ℤ) = A212982 n

end A212982

/-! ## A212982.P4561198533702279727

`∑[∑[∑[5-a(n-1)]]]` with `a(0)=0, a(1)=3`
-/

namespace A212982.P4561198533702279727
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f3 =>
  5 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212982.P4561198533702279727

namespace A212982

/-- `∑[∑[∑[5-a(n-1)]]]` -/
def P4561198533702279727.Spec : Prop :=
  ∀ n, P4561198533702279727.a n = A212982 n

end A212982

/-! ## A212982.P4595530742663819187

`∑[A115006(n)]`
-/

namespace A212982.P4595530742663819187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212982.P4595530742663819187

namespace A212982

/-- `∑[A115006(n)]` -/
def P4595530742663819187.Spec : Prop :=
  ∀ n, P4595530742663819187.a n = A212982 n

end A212982

/-! ## A212982.P16570921904044048420

`A212981(n)+∑[n]`
-/

namespace A212982.P16570921904044048420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212981 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212982.P16570921904044048420

namespace A212982

/-- `A212981(n)+∑[n]` -/
def P16570921904044048420.Spec : Prop :=
  ∀ n, P16570921904044048420.a n = A212982 n

end A212982

/-! ## A212982.P6440615989232535050

`∑[∑[A047218(n+1)]]`
-/

namespace A212982.P6440615989232535050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047218 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212982.P6440615989232535050

namespace A212982

/-- `∑[∑[A047218(n+1)]]` -/
def P6440615989232535050.Spec : Prop :=
  ∀ n, P6440615989232535050.a n = A212982 n

end A212982

/-! ## A212982.P13928164613196300891

`A162147(n)-a(n-1)` with `a(0)=0`
-/

namespace A212982.P13928164613196300891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A162147 n - a (n - 1)

end

end A212982.P13928164613196300891

namespace A212982

/-- `A162147(n)-a(n-1)` -/
def P13928164613196300891.Spec : Prop :=
  ∀ n, P13928164613196300891.a n = A212982 n

end A212982

/-! ## A212982.P16499299008398508372

`A045947(n+1)+∑[∑[n]]`
-/

namespace A212982.P16499299008398508372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212982.P16499299008398508372

namespace A212982

/-- `A045947(n+1)+∑[∑[n]]` -/
def P16499299008398508372.Spec : Prop :=
  ∀ n, P16499299008398508372.a n = A212982 n

end A212982

/-! ## A212982.P14432533727184236178

`A005475(n)+a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A212982.P14432533727184236178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A005475 n + a (n - 2)

end

end A212982.P14432533727184236178

namespace A212982

/-- `A005475(n)+a(n-2)` -/
def P14432533727184236178.Spec : Prop :=
  ∀ n, P14432533727184236178.a n = A212982 n

end A212982

/-! ## A212982.P9710636727408894244

`∑[A032527(n+1)-(n+1)]`
-/

namespace A212982.P9710636727408894244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212982.P9710636727408894244

namespace A212982

/-- `∑[A032527(n+1)-(n+1)]` -/
def P9710636727408894244.Spec : Prop :=
  ∀ n, P9710636727408894244.a n = A212982 n

end A212982

/-! ## A212982.P3942684482078272554

`(n+1)^3-A274248(n+1)`
-/

namespace A212982.P3942684482078272554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A274248 (n + 1)

end

end A212982.P3942684482078272554

namespace A212982

/-- `(n+1)^3-A274248(n+1)` -/
def P3942684482078272554.Spec : Prop :=
  ∀ n, P3942684482078272554.a n = A212982 n

end A212982

/-! ## A212982.P6431805542855563990

`∑[∑[3*n+1]]-A002623(n)`
-/

namespace A212982.P6431805542855563990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002623 n

end

end A212982.P6431805542855563990

namespace A212982

/-- `∑[∑[3*n+1]]-A002623(n)` -/
def P6431805542855563990.Spec : Prop :=
  ∀ n, P6431805542855563990.a n = A212982 n

end A212982

/-! ## A212982.P7814530581425981909

`∑[∑[n]+∑[A007494(n)]-1]+n+1`
-/

namespace A212982.P7814530581425981909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f3 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A212982.P7814530581425981909

namespace A212982

/-- `∑[∑[n]+∑[A007494(n)]-1]+n+1` -/
def P7814530581425981909.Spec : Prop :=
  ∀ n, P7814530581425981909.a n = A212982 n

end A212982

/-! ## A212982.P7283323754020383021

`∑[A249547(n)+ceil(n/2)-1]+n+1`
-/

namespace A212982.P7283323754020383021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n + (⌈(n : ℚ) / 2⌉ - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A212982.P7283323754020383021

namespace A212982

/-- `∑[A249547(n)+ceil(n/2)-1]+n+1` -/
def P7283323754020383021.Spec : Prop :=
  ∀ n, P7283323754020383021.a n = A212982 n

end A212982

/-! ## A212982.P6503871775789594694

`A249547(n)+A212247(n)`
-/

namespace A212982.P6503871775789594694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n + A212247 n

end

end A212982.P6503871775789594694

namespace A212982

/-- `A249547(n)+A212247(n)` -/
def P6503871775789594694.Spec : Prop :=
  ∀ n, P6503871775789594694.a n = A212982 n

end A212982

/-! ## A212982.P2028298834996541076

`A016061(n)-A045947(n)`
-/

namespace A212982.P2028298834996541076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n - A045947 n

end

end A212982.P2028298834996541076

namespace A212982

/-- `A016061(n)-A045947(n)` -/
def P2028298834996541076.Spec : Prop :=
  ∀ n, P2028298834996541076.a n = A212982 n

end A212982

/-! ## A212982.P11068702263189182290

`A027480(n)-A173196(n)`
-/

namespace A212982.P11068702263189182290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n - A173196 n

end

end A212982.P11068702263189182290

namespace A212982

/-- `A027480(n)-A173196(n)` -/
def P11068702263189182290.Spec : Prop :=
  ∀ n, P11068702263189182290.a n = A212982 n

end A212982

/-!
# A212983: Number of (w,x,y) with all terms in {0,...,n} and w<=x+y and x<=y.

The programs for A212983, the canonical program `A212983.P11760441436443292071` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212983 has offset 0).

The definition of A212983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212983.P11760441436443292071

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=15, a(3)=33, a(4)=62`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212983

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P11760441436443292071.Spec : Prop :=
  ∀ n, P11760441436443292071.a n = A212983 n

theorem P11760441436443292071.correct : P11760441436443292071.Spec := by
  intro n
  simp only [A212983]

end A212983

/-! ## A212983.P8139570670007204617

`A212982(n)+A002620(n+2)`
-/

namespace A212983.P8139570670007204617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212982 n + A002620 (n + 2)

end

end A212983.P8139570670007204617

namespace A212983

/-- `A212982(n)+A002620(n+2)` -/
def P8139570670007204617.Spec : Prop :=
  ∀ n, P8139570670007204617.a n = A212983 n

end A212983

/-! ## A212983.P12557176702000526462

`∑[∑[comp[3*n]+n]]`
-/

namespace A212983.P12557176702000526462
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212983.P12557176702000526462

namespace A212983

/-- `∑[∑[comp[3*n]+n]]` -/
def P12557176702000526462.Spec : Prop :=
  ∀ n, (P12557176702000526462.a n : ℤ) = A212983 n

end A212983

/-! ## A212983.P9184846925970001512

`abs(∑[∑[a(n-2)+5]])` with `a(0)=1, a(1)=3`
-/

namespace A212983.P9184846925970001512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 2) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212983.P9184846925970001512

namespace A212983

/-- `abs(∑[∑[a(n-2)+5]])` -/
def P9184846925970001512.Spec : Prop :=
  ∀ n, (P9184846925970001512.a n : ℤ) = A212983 n

end A212983

/-! ## A212983.P7777079196717892853

`ceil(∑[∑[a(n-2)+5]])` with `a(0)=1, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A212983.P7777079196717892853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 2) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212983.P7777079196717892853

namespace A212983

/-- `ceil(∑[∑[a(n-2)+5]])` -/
def P7777079196717892853.Spec : Prop :=
  ∀ n, (P7777079196717892853.a n : ℤ) = A212983 n

end A212983

/-! ## A212983.P7354848134732873009

`∑[∑[or(2, 10*n+1)+1]]/4`
-/

namespace A212983.P7354848134732873009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (10 * n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A212983.P7354848134732873009

namespace A212983

/-- `∑[∑[or(2, 10*n+1)+1]]/4` -/
def P7354848134732873009.Spec : Prop :=
  ∀ n, P7354848134732873009.a n = (A212983 n : ℚ)

end A212983

/-! ## A212983.P766802091230770844

`A002717(n)+C(n+3, 3)`
-/

namespace A212983.P766802091230770844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 n + (Nat.choose (n + 3) 3 : ℤ)

end

end A212983.P766802091230770844

namespace A212983

/-- `A002717(n)+C(n+3, 3)` -/
def P766802091230770844.Spec : Prop :=
  ∀ n, P766802091230770844.a n = A212983 n

end A212983

/-! ## A212983.P3074407275139352077

`∑[A032527(n)]+(n+1)²`
-/

namespace A212983.P3074407275139352077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A212983.P3074407275139352077

namespace A212983

/-- `∑[A032527(n)]+(n+1)²` -/
def P3074407275139352077.Spec : Prop :=
  ∀ n, P3074407275139352077.a n = A212983 n

end A212983

/-! ## A212983.P17742274085909484104

`A173196(n)+∑[(n+1)²]`
-/

namespace A212983.P17742274085909484104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212983.P17742274085909484104

namespace A212983

/-- `A173196(n)+∑[(n+1)²]` -/
def P17742274085909484104.Spec : Prop :=
  ∀ n, P17742274085909484104.a n = A212983 n

end A212983

/-! ## A212983.P3442706127661549875

`∑[n+1]+∑[A249547(n)]`
-/

namespace A212983.P3442706127661549875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A212983.P3442706127661549875

namespace A212983

/-- `∑[n+1]+∑[A249547(n)]` -/
def P3442706127661549875.Spec : Prop :=
  ∀ n, P3442706127661549875.a n = A212983 n

end A212983

/-! ## A212983.P14643560925425706119

`A002623(n)+∑[∑[2*n]]`
-/

namespace A212983.P14643560925425706119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212983.P14643560925425706119

namespace A212983

/-- `A002623(n)+∑[∑[2*n]]` -/
def P14643560925425706119.Spec : Prop :=
  ∀ n, P14643560925425706119.a n = A212983 n

end A212983

/-! ## A212983.P1483900290155852822

`A212980(n+1)+(n+1)²`
-/

namespace A212983.P1483900290155852822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212980 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A212983.P1483900290155852822

namespace A212983

/-- `A212980(n+1)+(n+1)²` -/
def P1483900290155852822.Spec : Prop :=
  ∀ n, P1483900290155852822.a n = A212983 n

end A212983

/-! ## A212983.P5434816558159489785

`∑[(n+1)²]+∑[A002620(n)]`
-/

namespace A212983.P5434816558159489785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A212983.P5434816558159489785

namespace A212983

/-- `∑[(n+1)²]+∑[A002620(n)]` -/
def P5434816558159489785.Spec : Prop :=
  ∀ n, P5434816558159489785.a n = A212983 n

end A212983

/-! ## A212983.P3950568597929392231

`A203552(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A212983.P3950568597929392231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A203552 (n + 1) - a (n - 1)

end

end A212983.P3950568597929392231

namespace A212983

/-- `A203552(n+1)-a(n-1)` -/
def P3950568597929392231.Spec : Prop :=
  ∀ n, P3950568597929392231.a n = A212983 n

end A212983

/-! ## A212983.P6164803413235590679

`∑[∑[A109613(n)+4*n+1]]/2`
-/

namespace A212983.P6164803413235590679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + (4 * n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A212983.P6164803413235590679

namespace A212983

/-- `∑[∑[A109613(n)+4*n+1]]/2` -/
def P6164803413235590679.Spec : Prop :=
  ∀ n, P6164803413235590679.a n = (A212983 n : ℚ)

end A212983

/-! ## A212983.P8752271102337900365

`A045947(n)+A008778(n)`
-/

namespace A212983.P8752271102337900365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 n + A008778 n

end

end A212983.P8752271102337900365

namespace A212983

/-- `A045947(n)+A008778(n)` -/
def P8752271102337900365.Spec : Prop :=
  ∀ n, P8752271102337900365.a n = A212983 n

end A212983

/-! ## A212983.P1989973020455981321

`A167875(n)+A005744(n)`
-/

namespace A212983.P1989973020455981321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n + A005744 n

end

end A212983.P1989973020455981321

namespace A212983

/-- `A167875(n)+A005744(n)` -/
def P1989973020455981321.Spec : Prop :=
  ∀ n, P1989973020455981321.a n = A212983 n

end A212983

/-! ## A212983.P414066882607271212

`A212959(n)+A212247(n)`
-/

namespace A212983.P414066882607271212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n + A212247 n

end

end A212983.P414066882607271212

namespace A212983

/-- `A212959(n)+A212247(n)` -/
def P414066882607271212.Spec : Prop :=
  ∀ n, P414066882607271212.a n = A212983 n

end A212983

/-! ## A212983.P16759940913199557732

`A370307(n)+A084990(n)`
-/

namespace A212983.P16759940913199557732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370307 n + A084990 n

end

end A212983.P16759940913199557732

namespace A212983

/-- `A370307(n)+A084990(n)` -/
def P16759940913199557732.Spec : Prop :=
  ∀ n, P16759940913199557732.a n = A212983 n

end A212983

/-! ## A212983.P9720736608972764749

`A055232(n)-A173196(n)`
-/

namespace A212983.P9720736608972764749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055232 n - A173196 n

end

end A212983.P9720736608972764749

namespace A212983

/-- `A055232(n)-A173196(n)` -/
def P9720736608972764749.Spec : Prop :=
  ∀ n, P9720736608972764749.a n = A212983 n

end A212983

/-!
# A212984: Number of (w,x,y) with all terms in {0..n} and 3w = x+y.

The programs for A212984, the canonical program `A212984.P3672998387107288697` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212984 has offset 0).

The definition of A212984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212984.P3672998387107288697

`1+floor(2*n/3)+floor(n²/3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212984

/-- `1+floor(2*n/3)+floor(n²/3)` -/
def P3672998387107288697.Spec : Prop :=
  ∀ n, P3672998387107288697.a n = A212984 n

theorem P3672998387107288697.correct : P3672998387107288697.Spec := by
  intro n
  simp only [A212984]

end A212984

/-! ## A212984.P14857357453008522574

`∑[a(n-3)+2]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A212984.P14857357453008522574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212984.P14857357453008522574

namespace A212984

/-- `∑[a(n-3)+2]` -/
def P14857357453008522574.Spec : Prop :=
  ∀ n, (P14857357453008522574.a n : ℤ) = A212984 n

end A212984

/-! ## A212984.P6510088781016052495

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=-1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A212984.P6510088781016052495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212984.P6510088781016052495

namespace A212984

/-- `∑[∑[floor(a(n-3))]]` -/
def P6510088781016052495.Spec : Prop :=
  ∀ n, P6510088781016052495.a n = A212984 n

end A212984

/-! ## A212984.P3310038786592721622

`∑[∑[3-2^((n+1)%3)]]`
-/

namespace A212984.P3310038786592721622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (2 ^ ((n + 1) % 3) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212984.P3310038786592721622

namespace A212984

/-- `∑[∑[3-2^((n+1)%3)]]` -/
def P3310038786592721622.Spec : Prop :=
  ∀ n, P3310038786592721622.a n = A212984 n

end A212984

/-! ## A212984.P10066523147868321660

`floor((gcd(3, n)+(n+1)²)/3)`
-/

namespace A212984.P10066523147868321660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 3 n + (n + 1) ^ 2 : ℚ) / 3⌋

end

end A212984.P10066523147868321660

namespace A212984

/-- `floor((gcd(3, n)+(n+1)²)/3)` -/
def P10066523147868321660.Spec : Prop :=
  ∀ n, P10066523147868321660.a n = A212984 n

end A212984

/-! ## A212984.P7739050638040931584

`ceil(((n+1)²-n%3)/3)`
-/

namespace A212984.P7739050638040931584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 1) ^ 2 : ℤ) - ((n % 3 : ℕ) : ℤ) : ℚ) / 3⌉

end

end A212984.P7739050638040931584

namespace A212984

/-- `ceil(((n+1)²-n%3)/3)` -/
def P7739050638040931584.Spec : Prop :=
  ∀ n, P7739050638040931584.a n = A212984 n

end A212984

/-! ## A212984.P5746502390971823609

`∑[∑[∑[ogf((1+x^2+2x^3)/(1+2x+2x^2+x^3))]]]`
-/

namespace A212984.P5746502390971823609
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 2] [1, 2, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212984.P5746502390971823609

namespace A212984

/-- `∑[∑[∑[ogf((1+x^2+2x^3)/(1+2x+2x^2+x^3))]]]` -/
def P5746502390971823609.Spec : Prop :=
  ∀ n, P5746502390971823609.a n = A212984 n

end A212984

/-! ## A212984.P49254630746794386

`∑[A047396(n+1)-2*n]`
-/

namespace A212984.P49254630746794386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047396 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212984.P49254630746794386

namespace A212984

/-- `∑[A047396(n+1)-2*n]` -/
def P49254630746794386.Spec : Prop :=
  ∀ n, P49254630746794386.a n = A212984 n

end A212984

/-! ## A212984.P8049237157173826823

`∑[A133310(n+1)-1]`
-/

namespace A212984.P8049237157173826823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212984.P8049237157173826823

namespace A212984

/-- `∑[A133310(n+1)-1]` -/
def P8049237157173826823.Spec : Prop :=
  ∀ n, P8049237157173826823.a n = A212984 n

end A212984

/-! ## A212984.P11454119772649809388

`∑[∑[2-A101000(n+1)]]`
-/

namespace A212984.P11454119772649809388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A101000 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212984.P11454119772649809388

namespace A212984

/-- `∑[∑[2-A101000(n+1)]]` -/
def P11454119772649809388.Spec : Prop :=
  ∀ n, P11454119772649809388.a n = A212984 n

end A212984

/-! ## A212984.P7817480589540219735

`∑[A004396(n+1)-A022003(n+1)]`
-/

namespace A212984.P7817480589540219735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) - A022003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212984.P7817480589540219735

namespace A212984

/-- `∑[A004396(n+1)-A022003(n+1)]` -/
def P7817480589540219735.Spec : Prop :=
  ∀ n, P7817480589540219735.a n = A212984 n

end A212984

/-! ## A212984.P1308598046511769588

`∑[A028242(comp[or(3, n)])]`
-/

namespace A212984.P1308598046511769588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212984.P1308598046511769588

namespace A212984

/-- `∑[A028242(comp[or(3, n)])]` -/
def P1308598046511769588.Spec : Prop :=
  ∀ n, P1308598046511769588.a n = A212984 n

end A212984

/-! ## A212984.P11301445642956109893

`∑[A028242(comp[A004767(n)])]`
-/

namespace A212984.P11301445642956109893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212984.P11301445642956109893

namespace A212984

/-- `∑[A028242(comp[A004767(n)])]` -/
def P11301445642956109893.Spec : Prop :=
  ∀ n, P11301445642956109893.a n = A212984 n

end A212984

/-! ## A212984.P1293133853909679148

`∑[A028242(lt[A006519(n+1), 3])]`
-/

namespace A212984.P1293133853909679148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212984.P1293133853909679148

namespace A212984

/-- `∑[A028242(lt[A006519(n+1), 3])]` -/
def P1293133853909679148.Spec : Prop :=
  ∀ n, P1293133853909679148.a n = A212984 n

end A212984

/-! ## A212984.P10428615610608145171

`round(∑[A133310(2*n)/2])`
-/

namespace A212984.P10428615610608145171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133310 (2 * n) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212984.P10428615610608145171

namespace A212984

/-- `round(∑[A133310(2*n)/2])` -/
def P10428615610608145171.Spec : Prop :=
  ∀ n, P10428615610608145171.a n = A212984 n

end A212984

/-! ## A212984.P11785229875259972971

`∑[∑[A132419(2*n+1)]]`
-/

namespace A212984.P11785229875259972971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132419 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212984.P11785229875259972971

namespace A212984

/-- `∑[∑[A132419(2*n+1)]]` -/
def P11785229875259972971.Spec : Prop :=
  ∀ n, P11785229875259972971.a n = A212984 n

end A212984

/-! ## A212984.P9184877018724620473

`A387644(A208994(n))`
-/

namespace A212984.P9184877018724620473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387644 (A208994 n).toNat

end

end A212984.P9184877018724620473

namespace A212984

/-- `A387644(A208994(n))` -/
def P9184877018724620473.Spec : Prop :=
  ∀ n, P9184877018724620473.a n = A212984 n

end A212984

/-!
# A212985: Number of (w,x,y) with all terms in {0,...,n} and 3w = 3x + y.

The programs for A212985, the canonical program `A212985.P2439818779730951962` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212985 has offset 0).

The definition of A212985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212985.P2439818779730951962

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7, a(4)=9, a(5)=11, a(6)=18`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212985

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P2439818779730951962.Spec : Prop :=
  ∀ n, P2439818779730951962.a n = A212985 n

theorem P2439818779730951962.correct : P2439818779730951962.Spec := by
  intro n
  simp only [A212985]

end A212985

/-! ## A212985.P14238890233335780189

`∑[lcm(3, ∑[(n+1)%3])/3]`
-/

namespace A212985.P14238890233335780189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212985.P14238890233335780189

namespace A212985

/-- `∑[lcm(3, ∑[(n+1)%3])/3]` -/
def P14238890233335780189.Spec : Prop :=
  ∀ n, P14238890233335780189.a n = (A212985 n : ℚ)

end A212985

/-! ## A212985.P14978551148367051349

`∑[gcd(3, n)*floor(n/3)+1]`
-/

namespace A212985.P14978551148367051349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n : ℤ) * ⌊(n : ℚ) / 3⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212985.P14978551148367051349

namespace A212985

/-- `∑[gcd(3, n)*floor(n/3)+1]` -/
def P14978551148367051349.Spec : Prop :=
  ∀ n, P14978551148367051349.a n = A212985 n

end A212985

/-! ## A212985.P11121740394854410559

`∑[ceil(n/3)]+∑[char[3*n]]²`
-/

namespace A212985.P11121740394854410559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A212985.P11121740394854410559

namespace A212985

/-- `∑[ceil(n/3)]+∑[char[3*n]]²` -/
def P11121740394854410559.Spec : Prop :=
  ∀ n, P11121740394854410559.a n = A212985 n

end A212985

/-! ## A212985.P13313245269359994660

`∑[A087507(n)]`
-/

namespace A212985.P13313245269359994660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212985.P13313245269359994660

namespace A212985

/-- `∑[A087507(n)]` -/
def P13313245269359994660.Spec : Prop :=
  ∀ n, P13313245269359994660.a n = A212985 n

end A212985

/-! ## A212985.P12900075505434342385

`∑[n+2-A092942(n+2)]`
-/

namespace A212985.P12900075505434342385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A092942 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212985.P12900075505434342385

namespace A212985

/-- `∑[n+2-A092942(n+2)]` -/
def P12900075505434342385.Spec : Prop :=
  ∀ n, P12900075505434342385.a n = A212985 n

end A212985

/-! ## A212985.P13618395501643386294

`A008732(A047217(n+1))`
-/

namespace A212985.P13618395501643386294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (A047217 (n + 1)).toNat

end

end A212985.P13618395501643386294

namespace A212985

/-- `A008732(A047217(n+1))` -/
def P13618395501643386294.Spec : Prop :=
  ∀ n, P13618395501643386294.a n = A212985 n

end A212985

/-! ## A212985.P1919543455136907813

`A008732(2*A002264(n)+n)`
-/

namespace A212985.P1919543455136907813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (2 * A002264 n + (n : ℤ)).toNat

end

end A212985.P1919543455136907813

namespace A212985

/-- `A008732(2*A002264(n)+n)` -/
def P1919543455136907813.Spec : Prop :=
  ∀ n, P1919543455136907813.a n = A212985 n

end A212985

/-! ## A212985.P12837985311491716679

`A008732(A002264(n)+A002264(n)+n)`
-/

namespace A212985.P12837985311491716679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (A002264 n + (A002264 n + (n : ℤ))).toNat

end

end A212985.P12837985311491716679

namespace A212985

/-- `A008732(A002264(n)+A002264(n)+n)` -/
def P12837985311491716679.Spec : Prop :=
  ∀ n, P12837985311491716679.a n = A212985 n

end A212985

/-! ## A212985.P16620596498660469126

`A085717(A047202(n+1))`
-/

namespace A212985.P16620596498660469126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085717 (A047202 (n + 1)).toNat

end

end A212985.P16620596498660469126

namespace A212985

/-- `A085717(A047202(n+1))` -/
def P16620596498660469126.Spec : Prop :=
  ∀ n, P16620596498660469126.a n = A212985 n

end A212985

/-! ## A212985.P18218982441839587938

`A249020(A047223(n+1))`
-/

namespace A212985.P18218982441839587938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249020 (A047223 (n + 1)).toNat

end

end A212985.P18218982441839587938

namespace A212985

/-- `A249020(A047223(n+1))` -/
def P18218982441839587938.Spec : Prop :=
  ∀ n, P18218982441839587938.a n = A212985 n

end A212985

/-! ## A212985.P1588833767079962532

`A321202(2*n+3)`
-/

namespace A212985.P1588833767079962532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321202 (2 * n + 3)

end

end A212985.P1588833767079962532

namespace A212985

/-- `A321202(2*n+3)` -/
def P1588833767079962532.Spec : Prop :=
  ∀ n, P1588833767079962532.a n = A212985 n

end A212985

/-! ## A212985.P11857496085551202876

`∑[A117905(2*n+1)]`
-/

namespace A212985.P11857496085551202876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117905 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212985.P11857496085551202876

namespace A212985

/-- `∑[A117905(2*n+1)]` -/
def P11857496085551202876.Spec : Prop :=
  ∀ n, P11857496085551202876.a n = A212985 n

end A212985

/-! ## A212985.P11656245680112720851

`record[Δ[A308266(n+2)]]`
-/

namespace A212985.P11656245680112720851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308266 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212985.P11656245680112720851

namespace A212985

/-- `record[Δ[A308266(n+2)]]` -/
def P11656245680112720851.Spec : Prop :=
  ∀ n, P11656245680112720851.a n = A212985 n

end A212985

/-! ## A212985.P11865095831984684697

`record[Δ[A393405(n+2)]]`
-/

namespace A212985.P11865095831984684697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393405 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212985.P11865095831984684697

namespace A212985

/-- `record[Δ[A393405(n+2)]]` -/
def P11865095831984684697.Spec : Prop :=
  ∀ n, P11865095831984684697.a n = A212985 n

end A212985

/-! ## A212985.P8317761138335753908

`Δ[A393405(2*n+1)]`
-/

namespace A212985.P8317761138335753908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393405 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212985.P8317761138335753908

namespace A212985

/-- `Δ[A393405(2*n+1)]` -/
def P8317761138335753908.Spec : Prop :=
  ∀ n, P8317761138335753908.a n = A212985 n

end A212985

/-! ## A212985.P13599793028552648014

`Δ[A393409(2*(n+1))]`
-/

namespace A212985.P13599793028552648014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393409 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212985.P13599793028552648014

namespace A212985

/-- `Δ[A393409(2*(n+1))]` -/
def P13599793028552648014.Spec : Prop :=
  ∀ n, P13599793028552648014.a n = A212985 n

end A212985

/-! ## A212985.P866446473844318091

`A369113(A317633(n+2))`
-/

namespace A212985.P866446473844318091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369113 (A317633 (n + 2)).toNat

end

end A212985.P866446473844318091

namespace A212985

/-- `A369113(A317633(n+2))` -/
def P866446473844318091.Spec : Prop :=
  ∀ n, P866446473844318091.a n = A212985 n

end A212985

/-! ## A212985.P1270922790109827974

`record[Δ[A308096(n+2)]]`
-/

namespace A212985.P1270922790109827974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212985.P1270922790109827974

namespace A212985

/-- `record[Δ[A308096(n+2)]]` -/
def P1270922790109827974.Spec : Prop :=
  ∀ n, P1270922790109827974.a n = A212985 n

end A212985

/-! ## A212985.P10324953984284573036

`A049777(record[A049777(n+1)]-A002264(n))`
-/

namespace A212985.P10324953984284573036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A002264 n).toNat

end

end A212985.P10324953984284573036

namespace A212985

/-- `A049777(record[A049777(n+1)]-A002264(n))` -/
def P10324953984284573036.Spec : Prop :=
  ∀ n, P10324953984284573036.a n = A212985 n

end A212985

/-!
# A212986: Number of (w,x,y) with all terms in {0,...,n} and 2w = 3x+y.

The programs for A212986, the canonical program `A212986.P5455180506663768684` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212986 has offset 0).

The definition of A212986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212986.P5455180506663768684

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=7, a(5)=10`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212986

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P5455180506663768684.Spec : Prop :=
  ∀ n, P5455180506663768684.a n = A212986 n

theorem P5455180506663768684.correct : P5455180506663768684.Spec := by
  intro n
  simp only [A212986]

end A212986

/-! ## A212986.P7405485672250296077

`round(∑[floor(n/2)+2/3])`
-/

namespace A212986.P7405485672250296077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ : ℚ) + (2 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212986.P7405485672250296077

namespace A212986

/-- `round(∑[floor(n/2)+2/3])` -/
def P7405485672250296077.Spec : Prop :=
  ∀ n, P7405485672250296077.a n = A212986 n

end A212986

/-! ## A212986.P282614614197763075

`∑[n-a(n-gcd(3, n))]` with `a(0)=1`
-/

namespace A212986.P282614614197763075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - f1 (n - Nat.gcd 3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212986.P282614614197763075

namespace A212986

/-- `∑[n-a(n-gcd(3, n))]` -/
def P282614614197763075.Spec : Prop :=
  ∀ n, P282614614197763075.a n = A212986 n

end A212986

/-! ## A212986.P11402172630212506436

`∑[∑[char[2*n]]-∑[n]%3]`
-/

namespace A212986.P11402172630212506436
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f4 j) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212986.P11402172630212506436

namespace A212986

/-- `∑[∑[char[2*n]]-∑[n]%3]` -/
def P11402172630212506436.Spec : Prop :=
  ∀ n, P11402172630212506436.a n = A212986 n

end A212986

/-! ## A212986.P310069667000353020

`∑[floor(n/2)+abs(1-n%3)]`
-/

namespace A212986.P310069667000353020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + |1 - ((n % 3 : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212986.P310069667000353020

namespace A212986

/-- `∑[floor(n/2)+abs(1-n%3)]` -/
def P310069667000353020.Spec : Prop :=
  ∀ n, P310069667000353020.a n = A212986 n

end A212986

/-! ## A212986.P7493796930210541208

`∑[ceil(n/2)]+ceil(xor(1, n)/6)`
-/

namespace A212986.P7493796930210541208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈(Nat.xor 1 n : ℚ) / 6⌉

end

end A212986.P7493796930210541208

namespace A212986

/-- `∑[ceil(n/2)]+ceil(xor(1, n)/6)` -/
def P7493796930210541208.Spec : Prop :=
  ∀ n, P7493796930210541208.a n = A212986 n

end A212986

/-! ## A212986.P12396524357451062569

`floor(∑[a(n-2)+3]/3)` with `a(0)=3, a(1)=2, a(2)=5`
-/

namespace A212986.P12396524357451062569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 5] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A212986.P12396524357451062569

namespace A212986

/-- `floor(∑[a(n-2)+3]/3)` -/
def P12396524357451062569.Spec : Prop :=
  ∀ n, P12396524357451062569.a n = A212986 n

end A212986

/-! ## A212986.P17295814355718954689

`∑[∑[∑[ogf((1+x^2+x^3)/(1+2x+2x^2+x^3))]]]`
-/

namespace A212986.P17295814355718954689
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 1] [1, 2, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212986.P17295814355718954689

namespace A212986

/-- `∑[∑[∑[ogf((1+x^2+x^3)/(1+2x+2x^2+x^3))]]]` -/
def P17295814355718954689.Spec : Prop :=
  ∀ n, P17295814355718954689.a n = A212986 n

end A212986

/-! ## A212986.P15463916182545094814

`∑[∑[a(n-3)+(-1)^n]]` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A212986.P15463916182545094814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n f2 =>
  f2 (n - 3) + (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212986.P15463916182545094814

namespace A212986

/-- `∑[∑[a(n-3)+(-1)^n]]` -/
def P15463916182545094814.Spec : Prop :=
  ∀ n, P15463916182545094814.a n = A212986 n

end A212986

/-! ## A212986.P16493531998088346152

`a(n-2)+n+1-n²%3` with `a(0)=1, a(1)=1`
-/

namespace A212986.P16493531998088346152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + ((n + 1 : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ))

end

end A212986.P16493531998088346152

namespace A212986

/-- `a(n-2)+n+1-n²%3` -/
def P16493531998088346152.Spec : Prop :=
  ∀ n, P16493531998088346152.a n = A212986 n

end A212986

/-! ## A212986.P1808537575547003789

`∑[floor((n+3-gcd(n+2, n-1))/2)]`
-/

namespace A212986.P1808537575547003789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 3 : ℤ) - (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1) : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212986.P1808537575547003789

namespace A212986

/-- `∑[floor((n+3-gcd(n+2, n-1))/2)]` -/
def P1808537575547003789.Spec : Prop :=
  ∀ n, P1808537575547003789.a n = A212986 n

end A212986

/-! ## A212986.P3531527978197922424

`∑[1-A137719(n)+n]`
-/

namespace A212986.P3531527978197922424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137719 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212986.P3531527978197922424

namespace A212986

/-- `∑[1-A137719(n)+n]` -/
def P3531527978197922424.Spec : Prop :=
  ∀ n, P3531527978197922424.a n = A212986 n

end A212986

/-! ## A212986.P3370820527983756161

`floor(A001399(n)+∑[n]/3)`
-/

namespace A212986.P3370820527983756161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001399 n : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A212986.P3370820527983756161

namespace A212986

/-- `floor(A001399(n)+∑[n]/3)` -/
def P3370820527983756161.Spec : Prop :=
  ∀ n, P3370820527983756161.a n = A212986 n

end A212986

/-! ## A212986.P643285678071949187

`A032766(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A212986.P643285678071949187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A032766 n + a (n - 3)

end

end A212986.P643285678071949187

namespace A212986

/-- `A032766(n)+a(n-3)` -/
def P643285678071949187.Spec : Prop :=
  ∀ n, P643285678071949187.a n = A212986 n

end A212986

/-! ## A212986.P14080558060561764598

`A033638(n)+A004523(n)`
-/

namespace A212986.P14080558060561764598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n + A004523 n

end

end A212986.P14080558060561764598

namespace A212986

/-- `A033638(n)+A004523(n)` -/
def P14080558060561764598.Spec : Prop :=
  ∀ n, P14080558060561764598.a n = A212986 n

end A212986

/-! ## A212986.P10478306958819937526

`A156040(n)+A069905(n)`
-/

namespace A212986.P10478306958819937526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 n + A069905 n

end

end A212986.P10478306958819937526

namespace A212986

/-- `A156040(n)+A069905(n)` -/
def P10478306958819937526.Spec : Prop :=
  ∀ n, P10478306958819937526.a n = A212986 n

end A212986

/-! ## A212986.P18034260662950222652

`A117573(n)-A008615(n)`
-/

namespace A212986.P18034260662950222652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117573 n - A008615 n

end

end A212986.P18034260662950222652

namespace A212986

/-- `A117573(n)-A008615(n)` -/
def P18034260662950222652.Spec : Prop :=
  ∀ n, P18034260662950222652.a n = A212986 n

end A212986

/-! ## A212986.P3204492285261123017

`A212984(n)-A069905(n)`
-/

namespace A212986.P3204492285261123017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212984 n - A069905 n

end

end A212986.P3204492285261123017

namespace A212986

/-- `A212984(n)-A069905(n)` -/
def P3204492285261123017.Spec : Prop :=
  ∀ n, P3204492285261123017.a n = A212986 n

end A212986

/-! ## A212986.P10440953355048456417

`A156039(n)-A173722(n)`
-/

namespace A212986.P10440953355048456417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156039 n - A173722 n

end

end A212986.P10440953355048456417

namespace A212986

/-- `A156039(n)-A173722(n)` -/
def P10440953355048456417.Spec : Prop :=
  ∀ n, P10440953355048456417.a n = A212986 n

end A212986

/-!
# A212987: Number of (w,x,y) with all terms in {0,...,n} and 3*w = 2*x+2*y.

The programs for A212987, the canonical program `A212987.P2481598080083575996` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212987 has offset 0).

The definition of A212987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212987.P2481598080083575996

`2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=8, a(5)=10, a(6)=16`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212987

/-- `2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` -/
def P2481598080083575996.Spec : Prop :=
  ∀ n, P2481598080083575996.a n = A212987 n

theorem P2481598080083575996.correct : P2481598080083575996.Spec := by
  intro n
  simp only [A212987]

end A212987

/-! ## A212987.P18270025912713249867

`∑[∑[(-1)^(n%3)]+n-gcd(n, ∑[n])]`
-/

namespace A212987.P18270025912713249867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212987.P18270025912713249867

namespace A212987

/-- `∑[∑[(-1)^(n%3)]+n-gcd(n, ∑[n])]` -/
def P18270025912713249867.Spec : Prop :=
  ∀ n, P18270025912713249867.a n = A212987 n

end A212987

/-! ## A212987.P10816520432325787461

`A008742(n)+∑[∑[and(1, n)]]`
-/

namespace A212987.P10816520432325787461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212987.P10816520432325787461

namespace A212987

/-- `A008742(n)+∑[∑[and(1, n)]]` -/
def P10816520432325787461.Spec : Prop :=
  ∀ n, P10816520432325787461.a n = A212987 n

end A212987

/-! ## A212987.P13693024597490884104

`∑[A008611(n)+n-gcd(n, ∑[n])]`
-/

namespace A212987.P13693024597490884104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n + ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212987.P13693024597490884104

namespace A212987

/-- `∑[A008611(n)+n-gcd(n, ∑[n])]` -/
def P13693024597490884104.Spec : Prop :=
  ∀ n, P13693024597490884104.a n = A212987 n

end A212987

/-! ## A212987.P4685975585006722369

`a(n-2)+A008612(n)+n` with `a(0)=1, a(1)=1`
-/

namespace A212987.P4685975585006722369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (A008612 n + (n : ℤ))

end

end A212987.P4685975585006722369

namespace A212987

/-- `a(n-2)+A008612(n)+n` -/
def P4685975585006722369.Spec : Prop :=
  ∀ n, P4685975585006722369.a n = A212987 n

end A212987

/-! ## A212987.P5398472527737886893

`∑[n]+A036410(n)-a(n-1)` with `a(0)=1`
-/

namespace A212987.P5398472527737886893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A036410 n - a (n - 1))

end

end A212987.P5398472527737886893

namespace A212987

/-- `∑[n]+A036410(n)-a(n-1)` -/
def P5398472527737886893.Spec : Prop :=
  ∀ n, P5398472527737886893.a n = A212987 n

end A212987

/-! ## A212987.P3706032972063539628

`∑[ceil(A047360(n+1)/2)]-a(n-1)` with `a(0)=1`
-/

namespace A212987.P3706032972063539628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A047360 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A212987.P3706032972063539628

namespace A212987

/-- `∑[ceil(A047360(n+1)/2)]-a(n-1)` -/
def P3706032972063539628.Spec : Prop :=
  ∀ n, P3706032972063539628.a n = A212987 n

end A212987

/-! ## A212987.P11924408983262774215

`A069905(n)+A023054(n)`
-/

namespace A212987.P11924408983262774215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A023054 n

end

end A212987.P11924408983262774215

namespace A212987

/-- `A069905(n)+A023054(n)` -/
def P11924408983262774215.Spec : Prop :=
  ∀ n, P11924408983262774215.a n = A212987 n

end A212987

/-! ## A212987.P2682894994647776088

`A165157(n)+A058212(n)`
-/

namespace A212987.P2682894994647776088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 n + A058212 n

end

end A212987.P2682894994647776088

namespace A212987

/-- `A165157(n)+A058212(n)` -/
def P2682894994647776088.Spec : Prop :=
  ∀ n, P2682894994647776088.a n = A212987 n

end A212987

/-! ## A212987.P7939737665923185580

`A008822(n)-A001318(n)`
-/

namespace A212987.P7939737665923185580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 n - A001318 n

end

end A212987.P7939737665923185580

namespace A212987

/-- `A008822(n)-A001318(n)` -/
def P7939737665923185580.Spec : Prop :=
  ∀ n, P7939737665923185580.a n = A212987 n

end A212987

/-! ## A212987.P9726506206557966069

`A008742(n)+∑[A110654(n)]`
-/

namespace A212987.P9726506206557966069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212987.P9726506206557966069

namespace A212987

/-- `A008742(n)+∑[A110654(n)]` -/
def P9726506206557966069.Spec : Prop :=
  ∀ n, P9726506206557966069.a n = A212987 n

end A212987

/-! ## A212987.P2357418038247018634

`∑[A142150(n)+A008611(n)]`
-/

namespace A212987.P2357418038247018634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212987.P2357418038247018634

namespace A212987

/-- `∑[A142150(n)+A008611(n)]` -/
def P2357418038247018634.Spec : Prop :=
  ∀ n, P2357418038247018634.a n = A212987 n

end A212987

/-! ## A212987.P8120721077160801015

`A008822(n)-∑[A026741(n)]`
-/

namespace A212987.P8120721077160801015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212987.P8120721077160801015

namespace A212987

/-- `A008822(n)-∑[A026741(n)]` -/
def P8120721077160801015.Spec : Prop :=
  ∀ n, P8120721077160801015.a n = A212987 n

end A212987

/-! ## A212987.P6244084742127263761

`A008742(n)+A002620(n+1)`
-/

namespace A212987.P6244084742127263761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n + A002620 (n + 1)

end

end A212987.P6244084742127263761

namespace A212987

/-- `A008742(n)+A002620(n+1)` -/
def P6244084742127263761.Spec : Prop :=
  ∀ n, P6244084742127263761.a n = A212987 n

end A212987

/-! ## A212987.P4988389169141413444

`A111711(n+1)-A008810(n)`
-/

namespace A212987.P4988389169141413444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111711 (n + 1) - A008810 n

end

end A212987.P4988389169141413444

namespace A212987

/-- `A111711(n+1)-A008810(n)` -/
def P4988389169141413444.Spec : Prop :=
  ∀ n, P4988389169141413444.a n = A212987 n

end A212987

/-! ## A212987.P12749774298184346462

`A008805(n)+2*A069905(n)`
-/

namespace A212987.P12749774298184346462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + 2 * A069905 n

end

end A212987.P12749774298184346462

namespace A212987

/-- `A008805(n)+2*A069905(n)` -/
def P12749774298184346462.Spec : Prop :=
  ∀ n, P12749774298184346462.a n = A212987 n

end A212987

/-! ## A212987.P7027576749632636212

`2*A023054(n)-A008805(n)`
-/

namespace A212987.P7027576749632636212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023054 n - A008805 n

end

end A212987.P7027576749632636212

namespace A212987

/-- `2*A023054(n)-A008805(n)` -/
def P7027576749632636212.Spec : Prop :=
  ∀ n, P7027576749632636212.a n = A212987 n

end A212987

/-! ## A212987.P8721890738452161999

`∑[A008611(n)+n-A026741(n)]`
-/

namespace A212987.P8721890738452161999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n + ((n : ℤ) - A026741 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212987.P8721890738452161999

namespace A212987

/-- `∑[A008611(n)+n-A026741(n)]` -/
def P8721890738452161999.Spec : Prop :=
  ∀ n, P8721890738452161999.a n = A212987 n

end A212987

/-! ## A212987.P5832789371257832113

`A000217(floor(n/2))+∑[A008611(n)]`
-/

namespace A212987.P5832789371257832113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌊(n : ℚ) / 2⌋.toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212987.P5832789371257832113

namespace A212987

/-- `A000217(floor(n/2))+∑[A008611(n)]` -/
def P5832789371257832113.Spec : Prop :=
  ∀ n, P5832789371257832113.a n = A212987 n

end A212987

/-! ## A212987.P13316145186027627448

`A212959(n+1)+A001399(n)-A213395(n+1)`
-/

namespace A212987.P13316145186027627448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 (n + 1) + (A001399 n - A213395 (n + 1))

end

end A212987.P13316145186027627448

namespace A212987

/-- `A212959(n+1)+A001399(n)-A213395(n+1)` -/
def P13316145186027627448.Spec : Prop :=
  ∀ n, P13316145186027627448.a n = A212987 n

end A212987

/-!
# A212988: Number of (w,x,y) with all terms in {0,...,n} and 4*w = x+y.

The programs for A212988, the canonical program `A212988.P15028044803361896496` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212988 has offset 0).

The definition of A212988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212988.P15028044803361896496

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=9`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212988

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P15028044803361896496.Spec : Prop :=
  ∀ n, P15028044803361896496.a n = A212988 n

theorem P15028044803361896496.correct : P15028044803361896496.Spec := by
  intro n
  simp only [A212988]

end A212988

/-! ## A212988.P17249989094157394936

`∑[∑[(-1)^∑[∑[n]]]]`
-/

namespace A212988.P17249989094157394936
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212988.P17249989094157394936

namespace A212988

/-- `∑[∑[(-1)^∑[∑[n]]]]` -/
def P17249989094157394936.Spec : Prop :=
  ∀ n, P17249989094157394936.a n = A212988 n

end A212988

/-! ## A212988.P7958374523199693061

`ceil(∑[∑[gcd(4, n+1)/4]])`
-/

namespace A212988.P7958374523199693061
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n + 1) : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A212988.P7958374523199693061

namespace A212988

/-- `ceil(∑[∑[gcd(4, n+1)/4]])` -/
def P7958374523199693061.Spec : Prop :=
  ∀ n, P7958374523199693061.a n = A212988 n

end A212988

/-! ## A212988.P12556186390246864984

`or(∑[ceil(n/2)], char[4*n])`
-/

namespace A212988.P12556186390246864984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A212988.P12556186390246864984

namespace A212988

/-- `or(∑[ceil(n/2)], char[4*n])` -/
def P12556186390246864984.Spec : Prop :=
  ∀ n, P12556186390246864984.a n = A212988 n

end A212988

/-! ## A212988.P11247547398631684028

`ceil(∑[or(3, n+1)/2-1])`
-/

namespace A212988.P11247547398631684028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (n + 1) : ℚ) / 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A212988.P11247547398631684028

namespace A212988

/-- `ceil(∑[or(3, n+1)/2-1])` -/
def P11247547398631684028.Spec : Prop :=
  ∀ n, P11247547398631684028.a n = A212988 n

end A212988

/-! ## A212988.P5026172600427770904

`round(∑[or(3, n+1)/2-1])`
-/

namespace A212988.P5026172600427770904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (n + 1) : ℚ) / 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212988.P5026172600427770904

namespace A212988

/-- `round(∑[or(3, n+1)/2-1])` -/
def P5026172600427770904.Spec : Prop :=
  ∀ n, P5026172600427770904.a n = A212988 n

end A212988

/-! ## A212988.P10629423334774179551

`floor(∑[a(n-4)+2])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A212988.P10629423334774179551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f1 =>
  f1 (n - 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212988.P10629423334774179551

namespace A212988

/-- `floor(∑[a(n-4)+2])` -/
def P10629423334774179551.Spec : Prop :=
  ∀ n, (P10629423334774179551.a n : ℤ) = A212988 n

end A212988

/-! ## A212988.P9525828788197317035

`∑[and(3, n-1)+n-1]/2`
-/

namespace A212988.P9525828788197317035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((n : ℤ) - 1) + ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A212988.P9525828788197317035

namespace A212988

/-- `∑[and(3, n-1)+n-1]/2` -/
def P9525828788197317035.Spec : Prop :=
  ∀ n, P9525828788197317035.a n = (A212988 n : ℚ)

end A212988

/-! ## A212988.P13679622874336931877

`∑[a(n-4)+4]/2` with `a(0)=2, a(1)=0, a(2)=2, a(3)=4`
-/

namespace A212988.P13679622874336931877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2, 4] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A212988.P13679622874336931877

namespace A212988

/-- `∑[a(n-4)+4]/2` -/
def P13679622874336931877.Spec : Prop :=
  ∀ n, P13679622874336931877.a n = (A212988 n : ℚ)

end A212988

/-! ## A212988.P8065995698229680244

`floor(∑[∑[1/a(n-4)]])` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=1`
-/

namespace A212988.P8065995698229680244
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 1, 1] fun n f2 =>
  1 / f2 (n - 4)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A212988.P8065995698229680244

namespace A212988

/-- `floor(∑[∑[1/a(n-4)]])` -/
def P8065995698229680244.Spec : Prop :=
  ∀ n, P8065995698229680244.a n = A212988 n

end A212988

/-! ## A212988.P2656303658891065129

`∑[a(n-4)+2]-(n+1)` with `a(0)=2, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A212988.P2656303658891065129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 3] fun n f1 =>
  f1 (n - 4) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A212988.P2656303658891065129

namespace A212988

/-- `∑[a(n-4)+2]-(n+1)` -/
def P2656303658891065129.Spec : Prop :=
  ∀ n, P2656303658891065129.a n = A212988 n

end A212988

/-! ## A212988.P13495120309689926552

`ceil((n²+1)/4)+comp[or(1, 3*n-1)]-n`
-/

namespace A212988.P13495120309689926552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 * n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 + 1 : ℚ) / 4⌉ + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A212988.P13495120309689926552

namespace A212988

/-- `ceil((n²+1)/4)+comp[or(1, 3*n-1)]-n` -/
def P13495120309689926552.Spec : Prop :=
  ∀ n, P13495120309689926552.a n = A212988 n

end A212988

/-! ## A212988.P1935818023080716699

`∑[n]+1-A008811(n)`
-/

namespace A212988.P1935818023080716699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A008811 n)

end

end A212988.P1935818023080716699

namespace A212988

/-- `∑[n]+1-A008811(n)` -/
def P1935818023080716699.Spec : Prop :=
  ∀ n, P1935818023080716699.a n = A212988 n

end A212988

/-! ## A212988.P11287586897390115859

`A106249(n)+a(n-1)` with `a(0)=1`
-/

namespace A212988.P11287586897390115859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106249 n + a (n - 1)

end

end A212988.P11287586897390115859

namespace A212988

/-- `A106249(n)+a(n-1)` -/
def P11287586897390115859.Spec : Prop :=
  ∀ n, P11287586897390115859.a n = A212988 n

end A212988

/-! ## A212988.P12017715628907677103

`A187180(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A212988.P12017715628907677103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A187180 n + a (n - 1)

end

end A212988.P12017715628907677103

namespace A212988

/-- `A187180(n)+a(n-1)` -/
def P12017715628907677103.Spec : Prop :=
  ∀ n, P12017715628907677103.a n = A212988 n

end A212988

/-! ## A212988.P10174164232001980789

`A290561(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A212988.P10174164232001980789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A290561 n + a (n - 2)

end

end A212988.P10174164232001980789

namespace A212988

/-- `A290561(n)+a(n-2)` -/
def P10174164232001980789.Spec : Prop :=
  ∀ n, P10174164232001980789.a n = A212988 n

end A212988

/-! ## A212988.P14112636170795634363

`A080827(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A212988.P14112636170795634363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A080827 n - a (n - 2)

end

end A212988.P14112636170795634363

namespace A212988

/-- `A080827(n)-a(n-2)` -/
def P14112636170795634363.Spec : Prop :=
  ∀ n, P14112636170795634363.a n = A212988 n

end A212988

/-! ## A212988.P11278264407159024816

`A083219(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A212988.P11278264407159024816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083219 (n - 1) + a (n - 1)

end

end A212988.P11278264407159024816

namespace A212988

/-- `A083219(n-1)+a(n-1)` -/
def P11278264407159024816.Spec : Prop :=
  ∀ n, P11278264407159024816.a n = A212988 n

end A212988

/-! ## A212988.P13182734876334667550

`A215098(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A212988.P13182734876334667550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215098 n + (1 - a (n - 1))

end

end A212988.P13182734876334667550

namespace A212988

/-- `A215098(n)+1-a(n-1)` -/
def P13182734876334667550.Spec : Prop :=
  ∀ n, P13182734876334667550.a n = A212988 n

end A212988

/-! ## A212988.P9049202546967279726

`(n+1)²-∑[A047250(n+1)]`
-/

namespace A212988.P9049202546967279726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212988.P9049202546967279726

namespace A212988

/-- `(n+1)²-∑[A047250(n+1)]` -/
def P9049202546967279726.Spec : Prop :=
  ∀ n, P9049202546967279726.a n = A212988 n

end A212988

/-!
# A212989: Number of (w,x,y) with all terms in {0,...,n} and 4*w = 4*x+y.

The programs for A212989, the canonical program `A212989.P11010340591035604090` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212989 has offset 0).

The definition of A212989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212989.P11010340591035604090

`∑[A060819(∑[C(3, 2*n%4)])]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212989

/-- `∑[A060819(∑[C(3, 2*n%4)])]` -/
def P11010340591035604090.Spec : Prop :=
  ∀ n, P11010340591035604090.a n = A212989 n

theorem P11010340591035604090.correct : P11010340591035604090.Spec := by
  intro n
  simp only [A212989]

end A212989

/-! ## A212989.P15708194983655535613

`∑[A060819(A127932(n))]`
-/

namespace A212989.P15708194983655535613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A127932 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212989.P15708194983655535613

namespace A212989

/-- `∑[A060819(A127932(n))]` -/
def P15708194983655535613.Spec : Prop :=
  ∀ n, P15708194983655535613.a n = A212989 n

end A212989

/-! ## A212989.P12895381818535133373

`∑[A065262(∑[A133872(n)])]`
-/

namespace A212989.P12895381818535133373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212989.P12895381818535133373

namespace A212989

/-- `∑[A065262(∑[A133872(n)])]` -/
def P12895381818535133373.Spec : Prop :=
  ∀ n, P12895381818535133373.a n = A212989 n

end A212989

/-! ## A212989.P15738756485013077416

`∑[A065262(A004525(n)+1)]`
-/

namespace A212989.P15738756485013077416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (A004525 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212989.P15738756485013077416

namespace A212989

/-- `∑[A065262(A004525(n)+1)]` -/
def P15738756485013077416.Spec : Prop :=
  ∀ n, P15738756485013077416.a n = A212989 n

end A212989

/-! ## A212989.P16379061895737722962

`∑[A087620(or(n, A165560(n)))]`
-/

namespace A212989.P16379061895737722962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087620 (Int.lor (n : ℤ) (A165560 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212989.P16379061895737722962

namespace A212989

/-- `∑[A087620(or(n, A165560(n)))]` -/
def P16379061895737722962.Spec : Prop :=
  ∀ n, P16379061895737722962.a n = A212989 n

end A212989

/-! ## A212989.P16406809338772925974

`∑[n+1]-A000217(A057353(n+1))`
-/

namespace A212989.P16406809338772925974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 (A057353 (n + 1)).toNat

end

end A212989.P16406809338772925974

namespace A212989

/-- `∑[n+1]-A000217(A057353(n+1))` -/
def P16406809338772925974.Spec : Prop :=
  ∀ n, P16406809338772925974.a n = A212989 n

end A212989

/-! ## A212989.P15444721140612281393

`∑[n+1]-A000217(n-A002265(n))`
-/

namespace A212989.P15444721140612281393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 ((n : ℤ) - A002265 n).toNat

end

end A212989.P15444721140612281393

namespace A212989

/-- `∑[n+1]-A000217(n-A002265(n))` -/
def P15444721140612281393.Spec : Prop :=
  ∀ n, P15444721140612281393.a n = A212989 n

end A212989

/-! ## A212989.P574305247394648743

`∑[A065261(A005408(A004525(n)))]`
-/

namespace A212989.P574305247394648743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065261 (A005408 (A004525 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212989.P574305247394648743

namespace A212989

/-- `∑[A065261(A005408(A004525(n)))]` -/
def P574305247394648743.Spec : Prop :=
  ∀ n, P574305247394648743.a n = A212989 n

end A212989

/-! ## A212989.P12629204977721547255

`A008725(A047361(n+1))`
-/

namespace A212989.P12629204977721547255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008725 (A047361 (n + 1)).toNat

end

end A212989.P12629204977721547255

namespace A212989

/-- `A008725(A047361(n+1))` -/
def P12629204977721547255.Spec : Prop :=
  ∀ n, P12629204977721547255.a n = A212989 n

end A212989

/-! ## A212989.P1668298392653815102

`∑[A008621(n*A010121(n))]`
-/

namespace A212989.P1668298392653815102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 ((n : ℤ) * A010121 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212989.P1668298392653815102

namespace A212989

/-- `∑[A008621(n*A010121(n))]` -/
def P1668298392653815102.Spec : Prop :=
  ∀ n, P1668298392653815102.a n = A212989 n

end A212989

/-! ## A212989.P2041647703844202004

`record[Δ[A307686(2*n+1)]]`
-/

namespace A212989.P2041647703844202004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212989.P2041647703844202004

namespace A212989

/-- `record[Δ[A307686(2*n+1)]]` -/
def P2041647703844202004.Spec : Prop :=
  ∀ n, P2041647703844202004.a n = A212989 n

end A212989

/-! ## A212989.P16475099094041351185

`∑[n+1]-A000217(∑[A000045(n)²%3])`
-/

namespace A212989.P16475099094041351185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A212989.P16475099094041351185

namespace A212989

/-- `∑[n+1]-A000217(∑[A000045(n)²%3])` -/
def P16475099094041351185.Spec : Prop :=
  ∀ n, P16475099094041351185.a n = A212989 n

end A212989

/-! ## A212989.P9392682967210107314

`A141419(A008621(n)+∑[n])`
-/

namespace A212989.P9392682967210107314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (A008621 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A212989.P9392682967210107314

namespace A212989

/-- `A141419(A008621(n)+∑[n])` -/
def P9392682967210107314.Spec : Prop :=
  ∀ n, P9392682967210107314.a n = A212989 n

end A212989

/-!
# A212997: Base-8 analog of A208059.

The programs for A212997, there is no canonical definition to state claims against.
-/

/-! ## A212997.P18296241896136783646

`A352894(A238440(n+1))`
-/

namespace A212997.P18296241896136783646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352894 (A238440 (n + 1)).toNat

end

end A212997.P18296241896136783646

/-! ## A212997.P17620583428819801164

`ceil(A241454(n+1)/A251065(n+1))`
-/

namespace A212997.P17620583428819801164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A241454 (n + 1) : ℚ) / (A251065 (n + 1) : ℚ)⌉

end

end A212997.P17620583428819801164

/-! ## A212997.P14415956799130002513

`A267266(2^floor(n/2))%A270317(n)`
-/

namespace A212997.P14415956799130002513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267266 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat) (A270317 n)

end

end A212997.P14415956799130002513

/-! ## A212997.P3129318997635794674

`A079144(A170889(a(n-1)+val(n, 8)))` with `a(0)=0`
-/

namespace A212997.P3129318997635794674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A079144 (A170889 (a (n - 1) + (SequenceMachineLib.valuation n 8 : ℤ)).toNat).toNat

end

end A212997.P3129318997635794674

/-!
# A212999: Base-11 analog of A208059.

The programs for A212999, there is no canonical definition to state claims against.
-/

/-! ## A212999.P11612590444642716412

`A101236(a(n-1)+val(n, 11))` with `a(0)=0`
-/

namespace A212999.P11612590444642716412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A101236 (a (n - 1) + (SequenceMachineLib.valuation n 11 : ℤ)).toNat

end

end A212999.P11612590444642716412

/-! ## A212999.P8252605961330706317

`A128592(round((4-6/(n+1))*a(n-1)))` with `a(0)=0`
-/

namespace A212999.P8252605961330706317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A128592 (SequenceMachineLib.roundAway ((4 - 6 / (n + 1 : ℚ)) * (a (n - 1) : ℚ))).toNat

end

end A212999.P8252605961330706317

/-! ## A212999.P6960011431226388108

`A055396(A208059(n)²+1)`
-/

namespace A212999.P6960011431226388108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A208059 n ^ 2 + 1).toNat

end

end A212999.P6960011431226388108

/-! ## A212999.P6093965964257106124

`A026374(A114162(n*a(n-1)))` with `a(0)=0`
-/

namespace A212999.P6093965964257106124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A026374 (A114162 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A212999.P6093965964257106124

/-! ## A212999.P2507851487763250585

`A160616(A010048(lcm(n, a(n-1))))` with `a(0)=0`
-/

namespace A212999.P2507851487763250585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160616 (A010048 (Int.lcm (n : ℤ) (a (n - 1)))).toNat

end

end A212999.P2507851487763250585

