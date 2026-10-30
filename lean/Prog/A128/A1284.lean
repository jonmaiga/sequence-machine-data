import SequenceMachineLib
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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

/-!
# A128402: Numbers k such that k^2 divides 22^k-1.

The programs for A128402, there is no canonical definition to state claims against.
-/

/-! ## A128402.P15868916796765485503

`A018663(2*(n+1))/3`
-/

namespace A128402.P15868916796765485503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018663 (2 * (n + 1)) : ℚ) / 3

end

end A128402.P15868916796765485503

/-! ## A128402.P9137667914280996491

`A018367(∑[∑{e}[n+1, #]]+1)`
-/

namespace A128402.P9137667914280996491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018367 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A128402.P9137667914280996491

/-!
# A128404: Numbers k such that k^2 divides 24^k-1.

The programs for A128404, there is no canonical definition to state claims against.
-/

/-! ## A128404.P9818876016297798599

`A014960(eq[A051631(n), A263280(n)])`
-/

namespace A128404.P9818876016297798599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014960 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A128404.P9818876016297798599

/-!
# A128405: Numbers k such that k^2 divides 12^k - 1.

The programs for A128405, there is no canonical definition to state claims against.
-/

/-! ## A128405.P15430123121492635226

`A177912(A297880(n)+A177919(n+1))`
-/

namespace A128405.P15430123121492635226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177912 (A297880 n + A177919 (n + 1)).toNat

end

end A128405.P15430123121492635226

/-! ## A128405.P16085799935368516077

`A177912(A014851(n+1)*A091946(n))`
-/

namespace A128405.P16085799935368516077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177912 (A014851 (n + 1) * A091946 n).toNat

end

end A128405.P16085799935368516077

/-! ## A128405.P11418596769526376943

`A177912(A091946(n)*A177919(n+1))`
-/

namespace A128405.P11418596769526376943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177912 (A091946 n * A177919 (n + 1)).toNat

end

end A128405.P11418596769526376943

/-! ## A128405.P2307494892939689616

`A177912(A177919(n+1))%A128678(3*(n+1))`
-/

namespace A128405.P2307494892939689616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177912 (A177919 (n + 1)).toNat) (A128678 (3 * (n + 1)))

end

end A128405.P2307494892939689616

/-!
# A128406: a(n) = (n+1)*2^(n*(n+1)).

The programs for A128406, the canonical program `A128406.P10579682960421611774` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128406 has offset 0).

The definition of A128406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*2^(n*(n+1))` (program `A128406.P10579682960421611774`, by `A128406.P10579682960421611774.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128406.P10579682960421611774

`(n+1)*2^(n*(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128406

/-- `(n+1)*2^(n*(n+1))` -/
def P10579682960421611774.Spec : Prop :=
  ∀ n, (P10579682960421611774.a n : ℤ) = A128406 n

theorem P10579682960421611774.correct : P10579682960421611774.Spec := by
  intro n
  simp only [A128406]

end A128406

/-! ## A128406.P14530778918827114516

`4^∑[gcd(n, n)]*(n+1)`
-/

namespace A128406.P14530778918827114516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 1)

end

end A128406.P14530778918827114516

namespace A128406

/-- `4^∑[gcd(n, n)]*(n+1)` -/
def P14530778918827114516.Spec : Prop :=
  ∀ n, (P14530778918827114516.a n : ℤ) = A128406 n

end A128406

/-! ## A128406.P12735708124419835819

`4^∑[lcm(n, n)]*(n+1)`
-/

namespace A128406.P12735708124419835819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 1)

end

end A128406.P12735708124419835819

namespace A128406

/-- `4^∑[lcm(n, n)]*(n+1)` -/
def P12735708124419835819.Spec : Prop :=
  ∀ n, (P12735708124419835819.a n : ℤ) = A128406 n

end A128406

/-! ## A128406.P2546002318475022433

`4^C(n+1, 2)*(n+1)`
-/

namespace A128406.P2546002318475022433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ Nat.choose (n + 1) 2 * (n + 1)

end

end A128406.P2546002318475022433

namespace A128406

/-- `4^C(n+1, 2)*(n+1)` -/
def P2546002318475022433.Spec : Prop :=
  ∀ n, (P2546002318475022433.a n : ℤ) = A128406 n

end A128406

/-! ## A128406.P2282904520462099293

`A089889((n+1)²)`
-/

namespace A128406.P2282904520462099293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089889 ((n + 1) ^ 2)

end

end A128406.P2282904520462099293

namespace A128406

/-- `A089889((n+1)²)` -/
def P2282904520462099293.Spec : Prop :=
  ∀ n, P2282904520462099293.a n = A128406 n

end A128406

/-!
# A128407: Triangle read by rows: T(n,n) = mobius(n) on the diagonal, zero elsewhere.

The programs for A128407, the canonical program `A128407.P15216900642853578067` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128407 has offset 1).

The definition of A128407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128407.P6378681523579806206

`char[∑[n-1]]*A282634(n+1)`
-/

namespace A128407.P6378681523579806206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A282634 (n + 1)

end

end A128407.P6378681523579806206

namespace A128407

/-- `char[∑[n-1]]*A282634(n+1)` -/
def P6378681523579806206.Spec : Prop :=
  ∀ n, P6378681523579806206.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P14674963810937464682

`A008683(col(n)+1)*C(col(n), row(n))`
-/

namespace A128407.P14674963810937464682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.triCol n + 1) * (Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n) : ℤ)

end

end A128407.P14674963810937464682

namespace A128407

/-- `A008683(col(n)+1)*C(col(n), row(n))` -/
def P14674963810937464682.Spec : Prop :=
  ∀ n, P14674963810937464682.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P15216900642853578067

`∑{d}[A127648(n), A007427(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128407

/-- `∑{d}[A127648(n), A007427(#)]` -/
def P15216900642853578067.Spec : Prop :=
  ∀ n, P15216900642853578067.a n = A128407 (n + 1)

theorem P15216900642853578067.correct : P15216900642853578067.Spec := by
  intro n
  simp only [A128407, Nat.add_sub_cancel]

end A128407

/-! ## A128407.P5593137280668948292

`A023531(n)*A054524(n+1)`
-/

namespace A128407.P5593137280668948292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A054524 (n + 1)

end

end A128407.P5593137280668948292

namespace A128407

/-- `A023531(n)*A054524(n+1)` -/
def P5593137280668948292.Spec : Prop :=
  ∀ n, P5593137280668948292.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P2759834202182678656

`A023531(n)*A054527(n+1)`
-/

namespace A128407.P2759834202182678656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A054527 (n + 1)

end

end A128407.P2759834202182678656

namespace A128407

/-- `A023531(n)*A054527(n+1)` -/
def P2759834202182678656.Spec : Prop :=
  ∀ n, P2759834202182678656.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P7387410223346687675

`A023531(n)*A054534(n+1)`
-/

namespace A128407.P7387410223346687675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A054534 (n + 1)

end

end A128407.P7387410223346687675

namespace A128407

/-- `A023531(n)*A054534(n+1)` -/
def P7387410223346687675.Spec : Prop :=
  ∀ n, P7387410223346687675.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P16928314963434371847

`A026729(n)*A054524(n+1)`
-/

namespace A128407.P16928314963434371847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A054524 (n + 1)

end

end A128407.P16928314963434371847

namespace A128407

/-- `A026729(n)*A054524(n+1)` -/
def P16928314963434371847.Spec : Prop :=
  ∀ n, P16928314963434371847.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P133441914749604601

`A023531(n)*A077052(n+1)`
-/

namespace A128407.P133441914749604601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A077052 (n + 1)

end

end A128407.P133441914749604601

namespace A128407

/-- `A023531(n)*A077052(n+1)` -/
def P133441914749604601.Spec : Prop :=
  ∀ n, P133441914749604601.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P671928471678190248

`A054524(n+1)*A087748(n)`
-/

namespace A128407.P671928471678190248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A087748 n

end

end A128407.P671928471678190248

namespace A128407

/-- `A054524(n+1)*A087748(n)` -/
def P671928471678190248.Spec : Prop :=
  ∀ n, P671928471678190248.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P6196955868915549768

`A023531(n)*A127507(n+1)`
-/

namespace A128407.P6196955868915549768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A127507 (n + 1)

end

end A128407.P6196955868915549768

namespace A128407

/-- `A023531(n)*A127507(n+1)` -/
def P6196955868915549768.Spec : Prop :=
  ∀ n, P6196955868915549768.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P11406066168646728452

`A023531(n)*A127512(n+1)`
-/

namespace A128407.P11406066168646728452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A127512 (n + 1)

end

end A128407.P11406066168646728452

namespace A128407

/-- `A023531(n)*A127512(n+1)` -/
def P11406066168646728452.Spec : Prop :=
  ∀ n, P11406066168646728452.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P5302913109097151092

`A023531(n)*A127514(n+1)`
-/

namespace A128407.P5302913109097151092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A127514 (n + 1)

end

end A128407.P5302913109097151092

namespace A128407

/-- `A023531(n)*A127514(n+1)` -/
def P5302913109097151092.Spec : Prop :=
  ∀ n, P5302913109097151092.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P2257350849363550264

`A023531(n)*A128408(n+1)`
-/

namespace A128407.P2257350849363550264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A128408 (n + 1)

end

end A128407.P2257350849363550264

namespace A128407

/-- `A023531(n)*A128408(n+1)` -/
def P2257350849363550264.Spec : Prop :=
  ∀ n, P2257350849363550264.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P2546411214560258986

`A023531(n)*A128409(n+1)`
-/

namespace A128407.P2546411214560258986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A128409 (n + 1)

end

end A128407.P2546411214560258986

namespace A128407

/-- `A023531(n)*A128409(n+1)` -/
def P2546411214560258986.Spec : Prop :=
  ∀ n, P2546411214560258986.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P10871407198815572646

`A023531(n)*A128410(n+1)`
-/

namespace A128407.P10871407198815572646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A128410 (n + 1)

end

end A128407.P10871407198815572646

namespace A128407

/-- `A023531(n)*A128410(n+1)` -/
def P10871407198815572646.Spec : Prop :=
  ∀ n, P10871407198815572646.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P14447431903926402727

`A023531(n)*A128430(n+1)`
-/

namespace A128407.P14447431903926402727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A128430 (n + 1)

end

end A128407.P14447431903926402727

namespace A128407

/-- `A023531(n)*A128430(n+1)` -/
def P14447431903926402727.Spec : Prop :=
  ∀ n, P14447431903926402727.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P3936238796745331757

`A054524(n+1)*A098158(n)`
-/

namespace A128407.P3936238796745331757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A098158 n

end

end A128407.P3936238796745331757

namespace A128407

/-- `A054524(n+1)*A098158(n)` -/
def P3936238796745331757.Spec : Prop :=
  ∀ n, P3936238796745331757.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P8864168029040830933

`A054524(n+1)*A098172(n)`
-/

namespace A128407.P8864168029040830933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A098172 n

end

end A128407.P8864168029040830933

namespace A128407

/-- `A054524(n+1)*A098172(n)` -/
def P8864168029040830933.Spec : Prop :=
  ∀ n, P8864168029040830933.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P5463900421699734519

`A054524(n+1)*A098173(n)`
-/

namespace A128407.P5463900421699734519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A098173 n

end

end A128407.P5463900421699734519

namespace A128407

/-- `A054524(n+1)*A098173(n)` -/
def P5463900421699734519.Spec : Prop :=
  ∀ n, P5463900421699734519.a n = A128407 (n + 1)

end A128407

/-! ## A128407.P1433924779919205614

`A026729(n)*A128408(n+1)`
-/

namespace A128407.P1433924779919205614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A128408 (n + 1)

end

end A128407.P1433924779919205614

namespace A128407

/-- `A026729(n)*A128408(n+1)` -/
def P1433924779919205614.Spec : Prop :=
  ∀ n, P1433924779919205614.a n = A128407 (n + 1)

end A128407

/-!
# A128408: Triangle read by rows: A128407 * A051731 as infinite lower triangular matrices.

The programs for A128408, the canonical program `A128408.P3158238349057078599` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128408 has offset 1).

The definition of A128408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128408.P3158238349057078599

`A051731(n+1)*A127507(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128408

/-- `A051731(n+1)*A127507(n+1)` -/
def P3158238349057078599.Spec : Prop :=
  ∀ n, P3158238349057078599.a n = A128408 (n + 1)

theorem P3158238349057078599.correct : P3158238349057078599.Spec := by
  intro n
  simp only [A128408, Nat.add_sub_cancel]

end A128408

/-! ## A128408.P16508228328460502701

`A054524(n+1)*A156241(n+1)`
-/

namespace A128408.P16508228328460502701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A156241 (n + 1)

end

end A128408.P16508228328460502701

namespace A128408

/-- `A054524(n+1)*A156241(n+1)` -/
def P16508228328460502701.Spec : Prop :=
  ∀ n, P16508228328460502701.a n = A128408 (n + 1)

end A128408

/-! ## A128408.P6265705811051921756

`A054527(n+1)*A156241(n+1)`
-/

namespace A128408.P6265705811051921756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A156241 (n + 1)

end

end A128408.P6265705811051921756

namespace A128408

/-- `A054527(n+1)*A156241(n+1)` -/
def P6265705811051921756.Spec : Prop :=
  ∀ n, P6265705811051921756.a n = A128408 (n + 1)

end A128408

/-! ## A128408.P17872913012553556078

`A054534(n+1)*A156241(n+1)`
-/

namespace A128408.P17872913012553556078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (n + 1) * A156241 (n + 1)

end

end A128408.P17872913012553556078

namespace A128408

/-- `A054534(n+1)*A156241(n+1)` -/
def P17872913012553556078.Spec : Prop :=
  ∀ n, P17872913012553556078.a n = A128408 (n + 1)

end A128408

/-! ## A128408.P3866600583220733978

`A127507(n+1)*A286563(n+1)`
-/

namespace A128408.P3866600583220733978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127507 (n + 1) * A286563 (n + 1)

end

end A128408.P3866600583220733978

namespace A128408

/-- `A127507(n+1)*A286563(n+1)` -/
def P3866600583220733978.Spec : Prop :=
  ∀ n, P3866600583220733978.a n = A128408 (n + 1)

end A128408

/-! ## A128408.P5090016808355977525

`A143255(n+1)/A010766(n+1)`
-/

namespace A128408.P5090016808355977525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143255 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A128408.P5090016808355977525

namespace A128408

/-- `A143255(n+1)/A010766(n+1)` -/
def P5090016808355977525.Spec : Prop :=
  ∀ n, P5090016808355977525.a n = (A128408 (n + 1) : ℚ)

end A128408

/-! ## A128408.P2081715598929939002

`A127475(n+1)/A054526(n+1)`
-/

namespace A128408.P2081715598929939002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127475 (n + 1) : ℚ) / (A054526 (n + 1) : ℚ)

end

end A128408.P2081715598929939002

namespace A128408

/-- `A127475(n+1)/A054526(n+1)` -/
def P2081715598929939002.Spec : Prop :=
  ∀ n, P2081715598929939002.a n = (A128408 (n + 1) : ℚ)

end A128408

/-! ## A128408.P10903606048511765407

`A143255(n+1)/A049834(n+1)`
-/

namespace A128408.P10903606048511765407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143255 (n + 1) : ℚ) / (A049834 (n + 1) : ℚ)

end

end A128408.P10903606048511765407

namespace A128408

/-- `A143255(n+1)/A049834(n+1)` -/
def P10903606048511765407.Spec : Prop :=
  ∀ n, P10903606048511765407.a n = (A128408 (n + 1) : ℚ)

end A128408

/-! ## A128408.P7000322176652596572

`A143255(n+1)/A051537(n+1)`
-/

namespace A128408.P7000322176652596572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143255 (n + 1) : ℚ) / (A051537 (n + 1) : ℚ)

end

end A128408.P7000322176652596572

namespace A128408

/-- `A143255(n+1)/A051537(n+1)` -/
def P7000322176652596572.Spec : Prop :=
  ∀ n, P7000322176652596572.a n = (A128408 (n + 1) : ℚ)

end A128408

/-! ## A128408.P2612530960702086916

`A143255(n+1)/A054531(n+1)`
-/

namespace A128408.P2612530960702086916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143255 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A128408.P2612530960702086916

namespace A128408

/-- `A143255(n+1)/A054531(n+1)` -/
def P2612530960702086916.Spec : Prop :=
  ∀ n, P2612530960702086916.a n = (A128408 (n + 1) : ℚ)

end A128408

/-! ## A128408.P11979035972001484987

`A143255(n+1)/A059026(n+1)`
-/

namespace A128408.P11979035972001484987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143255 (n + 1) : ℚ) / (A059026 (n + 1) : ℚ)

end

end A128408.P11979035972001484987

namespace A128408

/-- `A143255(n+1)/A059026(n+1)` -/
def P11979035972001484987.Spec : Prop :=
  ∀ n, P11979035972001484987.a n = (A128408 (n + 1) : ℚ)

end A128408

/-! ## A128408.P3191185345752278021

`A143255(n+1)/A219158(n+1)`
-/

namespace A128408.P3191185345752278021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143255 (n + 1) : ℚ) / (A219158 (n + 1) : ℚ)

end

end A128408.P3191185345752278021

namespace A128408

/-- `A143255(n+1)/A219158(n+1)` -/
def P3191185345752278021.Spec : Prop :=
  ∀ n, P3191185345752278021.a n = (A128408 (n + 1) : ℚ)

end A128408

/-! ## A128408.P1337455059345761324

`A143255(n+1)/A234575(n+1)`
-/

namespace A128408.P1337455059345761324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143255 (n + 1) : ℚ) / (A234575 (n + 1) : ℚ)

end

end A128408.P1337455059345761324

namespace A128408

/-- `A143255(n+1)/A234575(n+1)` -/
def P1337455059345761324.Spec : Prop :=
  ∀ n, P1337455059345761324.a n = (A128408 (n + 1) : ℚ)

end A128408

/-! ## A128408.P1925591515804789626

`A143255(n+1)/A338797(n+1)`
-/

namespace A128408.P1925591515804789626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143255 (n + 1) : ℚ) / (A338797 (n + 1) : ℚ)

end

end A128408.P1925591515804789626

namespace A128408

/-- `A143255(n+1)/A338797(n+1)` -/
def P1925591515804789626.Spec : Prop :=
  ∀ n, P1925591515804789626.a n = (A128408 (n + 1) : ℚ)

end A128408

/-! ## A128408.P13600994093804475366

`A127507(n+1)*A156241(n+1)*A156241(n+1)`
-/

namespace A128408.P13600994093804475366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127507 (n + 1) * A156241 (n + 1) * A156241 (n + 1)

end

end A128408.P13600994093804475366

namespace A128408

/-- `A127507(n+1)*A156241(n+1)*A156241(n+1)` -/
def P13600994093804475366.Spec : Prop :=
  ∀ n, P13600994093804475366.a n = A128408 (n + 1)

end A128408

/-! ## A128408.P5759962696258674060

`A054524(n+1)²*A054524(A127739(n+1))`
-/

namespace A128408.P5759962696258674060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) ^ 2 * A054524 (A127739 (n + 1)).toNat

end

end A128408.P5759962696258674060

namespace A128408

/-- `A054524(n+1)²*A054524(A127739(n+1))` -/
def P5759962696258674060.Spec : Prop :=
  ∀ n, P5759962696258674060.a n = A128408 (n + 1)

end A128408

/-! ## A128408.P5543841074236762985

`A127507(n+1)*A156254(n+1)`
-/

namespace A128408.P5543841074236762985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127507 (n + 1) * A156254 (n + 1)

end

end A128408.P5543841074236762985

namespace A128408

/-- `A127507(n+1)*A156254(n+1)` -/
def P5543841074236762985.Spec : Prop :=
  ∀ n, P5543841074236762985.a n = A128408 (n + 1)

end A128408

/-! ## A128408.P17426514535344090776

`A127507(n+1)*A174852(n+1)`
-/

namespace A128408.P17426514535344090776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127507 (n + 1) * A174852 (n + 1)

end

end A128408.P17426514535344090776

namespace A128408

/-- `A127507(n+1)*A174852(n+1)` -/
def P17426514535344090776.Spec : Prop :=
  ∀ n, P17426514535344090776.a n = A128408 (n + 1)

end A128408

/-! ## A128408.P7821279016706699060

`A127507(n+1)*A181116(n+1)`
-/

namespace A128408.P7821279016706699060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127507 (n + 1) * A181116 (n + 1)

end

end A128408.P7821279016706699060

namespace A128408

/-- `A127507(n+1)*A181116(n+1)` -/
def P7821279016706699060.Spec : Prop :=
  ∀ n, P7821279016706699060.a n = A128408 (n + 1)

end A128408

/-!
# A128409: Triangle read by rows: A000012 * A128408 as infinite lower triangular matrices.

The programs for A128409, there is no canonical definition to state claims against.
-/

/-! ## A128409.P4868769179378320631

`A054527(n+1)*A400203(n+1)`
-/

namespace A128409.P4868769179378320631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A400203 (n + 1)

end

end A128409.P4868769179378320631

/-!
# A128410: A128408 * A000012.

The programs for A128410, there is no canonical definition to state claims against.
-/

/-! ## A128410.P11564712736059599953

`A127507(n+1)*A135539(n+1)`
-/

namespace A128410.P11564712736059599953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127507 (n + 1) * A135539 (n + 1)

end

end A128410.P11564712736059599953

/-! ## A128410.P12509641720825246357

`A008683(round(sqrt(2*(n+1))))*A135539(n+1)`
-/

namespace A128410.P12509641720825246357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat * A135539 (n + 1)

end

end A128410.P12509641720825246357

/-! ## A128410.P7561524020381463788

`A130161(A057944(n))*A135539(n+1)`
-/

namespace A128410.P7561524020381463788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130161 (A057944 n).toNat * A135539 (n + 1)

end

end A128410.P7561524020381463788

/-! ## A128410.P120142536564185478

`A054527(A127739(n+1))*A135539(n+1)`
-/

namespace A128410.P120142536564185478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (A127739 (n + 1)).toNat * A135539 (n + 1)

end

end A128410.P120142536564185478

/-! ## A128410.P3207433330294188893

`A135539(n+1)*A271102(A093995(n+1))`
-/

namespace A128410.P3207433330294188893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (n + 1) * A271102 (A093995 (n + 1)).toNat

end

end A128410.P3207433330294188893

/-!
# A128411: Coefficient array for orthogonal polynomials defined by C(2n,n).

The programs for A128411, there is no canonical definition to state claims against.
-/

/-! ## A128411.P3294260577928011902

`A110162(n)*A113402(n+1)`
-/

namespace A128411.P3294260577928011902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 n * A113402 (n + 1)

end

end A128411.P3294260577928011902

/-! ## A128411.P11766381634070074223

`A011782(∑[char[∑[n+1]]])*A110162(n)`
-/

namespace A128411.P11766381634070074223
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j) * A110162 n

end

end A128411.P11766381634070074223

/-! ## A128411.P13121957704332648346

`A039991(C(∑[char[∑[n]]], 2))*A110162(n)`
-/

namespace A128411.P13121957704332648346
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) * A110162 n

end

end A128411.P13121957704332648346

/-! ## A128411.P9448167224502787373

`A000010(∏[char[∑[n+1]]+1])*A110162(n)`
-/

namespace A128411.P9448167224502787373
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ j ∈ Finset.range (n + 1), f1 j) * A110162 n

end

end A128411.P9448167224502787373

/-! ## A128411.P8140098169583589542

`A039991(A057944(n))*A110162(n)`
-/

namespace A128411.P8140098169583589542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A057944 n).toNat * A110162 n

end

end A128411.P8140098169583589542

/-!
# A128412: A scaled version of the coefficient array for orthogonal polynomials defined by C(2n,n).

The programs for A128412, there is no canonical definition to state claims against.
-/

/-! ## A128412.P10544809246728139438

`ceil(A128414(n)/(char[∑[n]]+1))`
-/

namespace A128412.P10544809246728139438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A128414 n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)⌉

end

end A128412.P10544809246728139438

/-! ## A128412.P3805722720863288353

`A128411(n)/A232089(n)`
-/

namespace A128412.P3805722720863288353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128411 n : ℚ) / (A232089 n : ℚ)

end

end A128412.P3805722720863288353

/-! ## A128412.P2587585707314663813

`round(A128414(n)/A035214(n))`
-/

namespace A128412.P2587585707314663813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A128414 n : ℚ) / (A035214 n : ℚ))

end

end A128412.P2587585707314663813

/-! ## A128412.P8150036885244692813

`A011782(A193739(n))*A110162(n)`
-/

namespace A128412.P8150036885244692813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A193739 n).toNat * A110162 n

end

end A128412.P8150036885244692813

/-! ## A128412.P1056645776709065393

`A128411(n)/A000010(A059268(n))`
-/

namespace A128412.P1056645776709065393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128411 n : ℚ) / (A000010 (A059268 n).toNat : ℚ)

end

end A128412.P1056645776709065393

/-!
# A128413: Inverse of number triangle A128412.

The programs for A128413, the canonical program `A128413.P14607196122930691021` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128413 has offset 0).

The definition of A128413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6441 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128413.P12895514916472582333

`ceil(A128417(n)/(char[∑[n]]+1))`
-/

namespace A128413.P12895514916472582333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A128417 n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)⌉

end

end A128413.P12895514916472582333

namespace A128413

/-- `ceil(A128417(n)/(char[∑[n]]+1))` -/
def P12895514916472582333.Spec : Prop :=
  ∀ n, P12895514916472582333.a n = A128413 n

end A128413

/-! ## A128413.P12953650829014514570

`A130321(n)*A380113(n)`
-/

namespace A128413.P12953650829014514570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A380113 n

end

end A128413.P12953650829014514570

namespace A128413

/-- `A130321(n)*A380113(n)` -/
def P12953650829014514570.Spec : Prop :=
  ∀ n, P12953650829014514570.a n = A128413 n

end A128413

/-! ## A128413.P14607196122930691021

`A011782(A193739(n))*A094527(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128413

/-- `A011782(A193739(n))*A094527(n)` -/
def P14607196122930691021.Spec : Prop :=
  ∀ n, P14607196122930691021.a n = A128413 n

theorem P14607196122930691021.correct : P14607196122930691021.Spec := by
  intro n
  simp only [A128413]

end A128413

/-! ## A128413.P6861002273000977086

`A008311(A061885(n))*A130321(n)`
-/

namespace A128413.P6861002273000977086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (A061885 n).toNat * A130321 n

end

end A128413.P6861002273000977086

namespace A128413

/-- `A008311(A061885(n))*A130321(n)` -/
def P6861002273000977086.Spec : Prop :=
  ∀ n, P6861002273000977086.a n = A128413 n

end A128413

/-! ## A128413.P12310608663870076557

`sqrt(A262616(n))*A008311(A061885(n))`
-/

namespace A128413.P12310608663870076557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A008311 (A061885 n).toNat : ℝ)

end

end A128413.P12310608663870076557

namespace A128413

/-- `sqrt(A262616(n))*A008311(A061885(n))` -/
def P12310608663870076557.Spec : Prop :=
  ∀ n, P12310608663870076557.a n = (A128413 n : ℝ)

end A128413

/-! ## A128413.P10479767963204276867

`A127673(A061579(n))*A130321(n)`
-/

namespace A128413.P10479767963204276867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127673 (A061579 n).toNat * A130321 n

end

end A128413.P10479767963204276867

namespace A128413

/-- `A127673(A061579(n))*A130321(n)` -/
def P10479767963204276867.Spec : Prop :=
  ∀ n, P10479767963204276867.a n = A128413 n

end A128413

/-!
# A128414: Riordan array ((1-2x)/(1+2x),x/(1+2x)^2).

The programs for A128414, the canonical program `A128414.P4781030016462294344` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128414 has offset 0).

The definition of A128414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128414.P4781030016462294344

`T(n-1,k-1)-4*T(n-1,k)-4*T(n-2,k)` with `a(0)=1, a(1)=-4, a(2)=1, a(3)=8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128414

/-- `T(n-1,k-1)-4*T(n-1,k)-4*T(n-2,k)` -/
def P4781030016462294344.Spec : Prop :=
  ∀ n, P4781030016462294344.a n = A128414 n

theorem P4781030016462294344.correct : P4781030016462294344.Spec := by
  intro n
  simp only [A128414]

end A128414

/-! ## A128414.P14567280105850169467

`2^(row(n)-col(n))*A110162(C(row(n)+1, 2)+col(n))`
-/

namespace A128414.P14567280105850169467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (A110162 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ)

end

end A128414.P14567280105850169467

namespace A128414

/-- `2^(row(n)-col(n))*A110162(C(row(n)+1, 2)+col(n))` -/
def P14567280105850169467.Spec : Prop :=
  ∀ n, P14567280105850169467.a n = (A128414 n : ℚ)

end A128414

/-! ## A128414.P626229148063525826

`A110162(n)*A130321(n)`
-/

namespace A128414.P626229148063525826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 n * A130321 n

end

end A128414.P626229148063525826

namespace A128414

/-- `A110162(n)*A130321(n)` -/
def P626229148063525826.Spec : Prop :=
  ∀ n, P626229148063525826.a n = A128414 n

end A128414

/-! ## A128414.P8944431658925442098

`sqrt(A262616(n))*A110162(n)`
-/

namespace A128414.P8944431658925442098
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A110162 n : ℝ)

end

end A128414.P8944431658925442098

namespace A128414

/-- `sqrt(A262616(n))*A110162(n)` -/
def P8944431658925442098.Spec : Prop :=
  ∀ n, P8944431658925442098.a n = (A128414 n : ℝ)

end A128414

/-! ## A128414.P1665902104758694181

`A090988(n+1)/2*A110162(n)`
-/

namespace A128414.P1665902104758694181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090988 (n + 1) : ℚ) / 2 * (A110162 n : ℚ)

end

end A128414.P1665902104758694181

namespace A128414

/-- `A090988(n+1)/2*A110162(n)` -/
def P1665902104758694181.Spec : Prop :=
  ∀ n, P1665902104758694181.a n = (A128414 n : ℚ)

end A128414

/-! ## A128414.P17181718648453668969

`A000079(A025581(n))*A110162(n)`
-/

namespace A128414.P17181718648453668969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A110162 n

end

end A128414.P17181718648453668969

namespace A128414

/-- `A000079(A025581(n))*A110162(n)` -/
def P17181718648453668969.Spec : Prop :=
  ∀ n, P17181718648453668969.a n = A128414 n

end A128414

/-! ## A128414.P2632606482780792034

`A059268(A061579(n))*A110162(n)`
-/

namespace A128414.P2632606482780792034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A110162 n

end

end A128414.P2632606482780792034

namespace A128414

/-- `A059268(A061579(n))*A110162(n)` -/
def P2632606482780792034.Spec : Prop :=
  ∀ n, P2632606482780792034.a n = A128414 n

end A128414

/-! ## A128414.P2783088297206198568

`A011782(A004736(n+1))*A110162(n)`
-/

namespace A128414.P2783088297206198568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat * A110162 n

end

end A128414.P2783088297206198568

namespace A128414

/-- `A011782(A004736(n+1))*A110162(n)` -/
def P2783088297206198568.Spec : Prop :=
  ∀ n, P2783088297206198568.a n = A128414 n

end A128414

/-! ## A128414.P11881685599518108791

`A110162(n)/A094527(n)*A128417(n)`
-/

namespace A128414.P11881685599518108791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110162 n : ℚ) / (A094527 n : ℚ) * (A128417 n : ℚ)

end

end A128414.P11881685599518108791

namespace A128414

/-- `A110162(n)/A094527(n)*A128417(n)` -/
def P11881685599518108791.Spec : Prop :=
  ∀ n, P11881685599518108791.a n = (A128414 n : ℚ)

end A128414

/-! ## A128414.P12509760632129482206

`A000010(A090988(n+1))*A110162(n)`
-/

namespace A128414.P12509760632129482206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A090988 (n + 1)).toNat * A110162 n

end

end A128414.P12509760632129482206

namespace A128414

/-- `A000010(A090988(n+1))*A110162(n)` -/
def P12509760632129482206.Spec : Prop :=
  ∀ n, P12509760632129482206.a n = A128414 n

end A128414

/-!
# A128415: Expansion of (1-4x^2)/(1+3x+4x^2).

The programs for A128415, the canonical program `A128415.P6883815758202266374` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128415 has offset 0).

The definition of A128415 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x^2)/(1+3x+4x^2))` (program `A128415.P6883815758202266374`, by `A128415.P6883815758202266374.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128415.P6883815758202266374

`ogf((1-4x^2)/(1+3x+4x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128415

/-- `ogf((1-4x^2)/(1+3x+4x^2))` -/
def P6883815758202266374.Spec : Prop :=
  ∀ n, P6883815758202266374.a n = A128415 n

theorem P6883815758202266374.correct : P6883815758202266374.Spec := by
  intro n
  simp only [A128415]

end A128415

/-! ## A128415.P9541622155865260801

`or(1, A002249(2*n)-1)`
-/

namespace A128415.P9541622155865260801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002249 (2 * n) - 1)

end

end A128415.P9541622155865260801

namespace A128415

/-- `or(1, A002249(2*n)-1)` -/
def P9541622155865260801.Spec : Prop :=
  ∀ n, P9541622155865260801.a n = A128415 n

end A128415

/-! ## A128415.P10318058381802512215

`A002249(n+1-(1-n)%(n+1))`
-/

namespace A128415.P10318058381802512215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 ((n + 1 : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A128415.P10318058381802512215

namespace A128415

/-- `A002249(n+1-(1-n)%(n+1))` -/
def P10318058381802512215.Spec : Prop :=
  ∀ n, P10318058381802512215.a n = A128415 n

end A128415

/-! ## A128415.P7226667323491459839

`A002249(A004277(n))`
-/

namespace A128415.P7226667323491459839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (A004277 n).toNat

end

end A128415.P7226667323491459839

namespace A128415

/-- `A002249(A004277(n))` -/
def P7226667323491459839.Spec : Prop :=
  ∀ n, P7226667323491459839.a n = A128415 n

end A128415

/-! ## A128415.P14901701864354787243

`A002249(A004275(n+1))`
-/

namespace A128415.P14901701864354787243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (A004275 (n + 1)).toNat

end

end A128415.P14901701864354787243

namespace A128415

/-- `A002249(A004275(n+1))` -/
def P14901701864354787243.Spec : Prop :=
  ∀ n, P14901701864354787243.a n = A128415 n

end A128415

/-! ## A128415.P510768336336995044

`A002249(A123108(4*n))`
-/

namespace A128415.P510768336336995044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (A123108 (4 * n)).toNat

end

end A128415.P510768336336995044

namespace A128415

/-- `A002249(A123108(4*n))` -/
def P510768336336995044.Spec : Prop :=
  ∀ n, P510768336336995044.a n = A128415 n

end A128415

/-! ## A128415.P12972125783314650566

`A002249(A000007(n)+2*n)`
-/

namespace A128415.P12972125783314650566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (A000007 n + (2 * n : ℤ)).toNat

end

end A128415.P12972125783314650566

namespace A128415

/-- `A002249(A000007(n)+2*n)` -/
def P12972125783314650566.Spec : Prop :=
  ∀ n, P12972125783314650566.a n = A128415 n

end A128415

/-! ## A128415.P2716466305283347606

`A002249(2*n)-A000007(n)`
-/

namespace A128415.P2716466305283347606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (2 * n) - A000007 n

end

end A128415.P2716466305283347606

namespace A128415

/-- `A002249(2*n)-A000007(n)` -/
def P2716466305283347606.Spec : Prop :=
  ∀ n, P2716466305283347606.a n = A128415 n

end A128415

/-! ## A128415.P14151238581277067101

`A002249(A000007(n)+n+n)`
-/

namespace A128415.P14151238581277067101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

end

end A128415.P14151238581277067101

namespace A128415

/-- `A002249(A000007(n)+n+n)` -/
def P14151238581277067101.Spec : Prop :=
  ∀ n, P14151238581277067101.a n = A128415 n

end A128415

/-! ## A128415.P17742623249631760478

`A002249(A123108(n+n)+n)`
-/

namespace A128415.P17742623249631760478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (A123108 (n + n) + (n : ℤ)).toNat

end

end A128415.P17742623249631760478

namespace A128415

/-- `A002249(A123108(n+n)+n)` -/
def P17742623249631760478.Spec : Prop :=
  ∀ n, P17742623249631760478.a n = A128415 n

end A128415

/-! ## A128415.P7778114414602997189

`A002249(2*n)/gcd(2, A247487(n))`
-/

namespace A128415.P7778114414602997189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002249 (2 * n) : ℚ) / (Int.gcd 2 (A247487 n) : ℚ)

end

end A128415.P7778114414602997189

namespace A128415

/-- `A002249(2*n)/gcd(2, A247487(n))` -/
def P7778114414602997189.Spec : Prop :=
  ∀ n, P7778114414602997189.a n = (A128415 n : ℚ)

end A128415

/-! ## A128415.P1092699352601483075

`A002249(2*n)/A107279(A008578(n+2))`
-/

namespace A128415.P1092699352601483075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002249 (2 * n) : ℚ) / (A107279 (A008578 (n + 2)).toNat : ℚ)

end

end A128415.P1092699352601483075

namespace A128415

/-- `A002249(2*n)/A107279(A008578(n+2))` -/
def P1092699352601483075.Spec : Prop :=
  ∀ n, P1092699352601483075.a n = (A128415 n : ℚ)

end A128415

/-! ## A128415.P12396542358137574452

`A002249(A109466(A000217(n))+2*n)`
-/

namespace A128415.P12396542358137574452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (A109466 (A000217 n).toNat + (2 * n : ℤ)).toNat

end

end A128415.P12396542358137574452

namespace A128415

/-- `A002249(A109466(A000217(n))+2*n)` -/
def P12396542358137574452.Spec : Prop :=
  ∀ n, P12396542358137574452.a n = A128415 n

end A128415

/-! ## A128415.P13829117441398125279

`A002249(2*n)-A109466(A000217(n))`
-/

namespace A128415.P13829117441398125279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (2 * n) - A109466 (A000217 n).toNat

end

end A128415.P13829117441398125279

namespace A128415

/-- `A002249(2*n)-A109466(A000217(n))` -/
def P13829117441398125279.Spec : Prop :=
  ∀ n, P13829117441398125279.a n = A128415 n

end A128415

/-!
# A128416: Expansion of (1-4x^2)/(1+4x+3x^2).

The programs for A128416, the canonical program `A128416.P16475713456130644545` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128416 has offset 0).

The definition of A128416 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x^2)/(1+4x+3x^2))` (program `A128416.P16475713456130644545`, by `A128416.P16475713456130644545.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128416.P16475713456130644545

`ogf((1-4x^2)/(1+4x+3x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128416

/-- `ogf((1-4x^2)/(1+4x+3x^2))` -/
def P16475713456130644545.Spec : Prop :=
  ∀ n, P16475713456130644545.a n = A128416 n

theorem P16475713456130644545.correct : P16475713456130644545.Spec := by
  intro n
  simp only [A128416]

end A128416

/-! ## A128416.P5529341438825387354

`-xor(3, 3*a(n-1))` with `a(0)=1, a(1)=-4`
-/

namespace A128416.P5529341438825387354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -4] fun n a =>
  -Int.xor 3 (3 * a (n - 1))

end

end A128416.P5529341438825387354

namespace A128416

/-- `-xor(3, 3*a(n-1))` -/
def P5529341438825387354.Spec : Prop :=
  ∀ n, P5529341438825387354.a n = A128416 n

end A128416

/-! ## A128416.P11343789900917606786

`3*((-1)^(n+1)-a(n-1))` with `a(0)=1, a(1)=-4`
-/

namespace A128416.P11343789900917606786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -4] fun n a =>
  3 * ((-1) ^ (n + 1) - a (n - 1))

end

end A128416.P11343789900917606786

namespace A128416

/-- `3*((-1)^(n+1)-a(n-1))` -/
def P11343789900917606786.Spec : Prop :=
  ∀ n, P11343789900917606786.a n = A128416 n

end A128416

/-! ## A128416.P9649999304942941174

`∑[3*a(n-1)]*A033999(n)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A128416.P9649999304942941174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A033999 n

end

end A128416.P9649999304942941174

namespace A128416

/-- `∑[3*a(n-1)]*A033999(n)` -/
def P9649999304942941174.Spec : Prop :=
  ∀ n, P9649999304942941174.a n = A128416 n

end A128416

/-! ## A128416.P14735726087077138775

`Δ[A341463(n)]%A084244(n)-A341463(n)`
-/

namespace A128416.P14735726087077138775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A084244 n) - A341463 n

end

end A128416.P14735726087077138775

namespace A128416

/-- `Δ[A341463(n)]%A084244(n)-A341463(n)` -/
def P14735726087077138775.Spec : Prop :=
  ∀ n, P14735726087077138775.a n = A128416 n

end A128416

/-!
# A128417: Number triangle T(n,k) = 2^(n-k)*C(2*n,n-k).

The programs for A128417, the canonical program `A128417.P7680246069769329407` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128417 has offset 0).

The definition of A128417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128417.P7680246069769329407

`2^(row(n)-col(n))*C(2*row(n), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128417

/-- `2^(row(n)-col(n))*C(2*row(n), row(n)-col(n))` -/
def P7680246069769329407.Spec : Prop :=
  ∀ n, P7680246069769329407.a n = (A128417 n : ℚ)

end A128417

/-! ## A128417.P12145035510619549522

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A094527(n)`
-/

namespace A128417.P12145035510619549522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A094527 n : ℚ)

end

end A128417.P12145035510619549522

namespace A128417

/-- `2^(C(comp[∑[n]]-n, 2)-(n+1))*A094527(n)` -/
def P12145035510619549522.Spec : Prop :=
  ∀ n, P12145035510619549522.a n = (A128417 n : ℚ)

end A128417

/-! ## A128417.P17674994192282063830

`A094527(n)*A130321(n)`
-/

namespace A128417.P17674994192282063830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A130321 n

end

end A128417.P17674994192282063830

namespace A128417

/-- `A094527(n)*A130321(n)` -/
def P17674994192282063830.Spec : Prop :=
  ∀ n, P17674994192282063830.a n = A128417 n

end A128417

/-! ## A128417.P3575419130421740231

`sqrt(A262616(n))*A094527(n)`
-/

namespace A128417.P3575419130421740231
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A094527 n : ℝ)

end

end A128417.P3575419130421740231

namespace A128417

/-- `sqrt(A262616(n))*A094527(n)` -/
def P3575419130421740231.Spec : Prop :=
  ∀ n, P3575419130421740231.a n = (A128417 n : ℝ)

end A128417

/-! ## A128417.P7713953003634625158

`A094527(n)/A110162(n)*A128414(n)`
-/

namespace A128417.P7713953003634625158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094527 n : ℚ) / (A110162 n : ℚ) * (A128414 n : ℚ)

end

end A128417.P7713953003634625158

namespace A128417

/-- `A094527(n)/A110162(n)*A128414(n)` -/
def P7713953003634625158.Spec : Prop :=
  ∀ n, P7713953003634625158.a n = (A128417 n : ℚ)

end A128417

/-! ## A128417.P7533190212432736851

`A038207(record[xor(1, n)+round(sqrt(n+1))²]-(n-C(∑[char[∑[n+1]]], 2)+2))`
-/

namespace A128417.P7533190212432736851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + 2)).toNat

end

end A128417.P7533190212432736851

namespace A128417

/-- `A038207(record[xor(1, n)+round(sqrt(n+1))²]-(n-C(∑[char[∑[n+1]]], 2)+2))` -/
def P7533190212432736851.Spec : Prop :=
  ∀ n, P7533190212432736851.a n = A128417 n

end A128417

/-! ## A128417.P13675635852853332966

`C(∑[2*char[∑[n+1]]], n-C(∑[char[∑[n+1]]], 2))*A000010(2^(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A128417.P13675635852853332966
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℤ) * A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A128417.P13675635852853332966

namespace A128417

/-- `C(∑[2*char[∑[n+1]]], n-C(∑[char[∑[n+1]]], 2))*A000010(2^(C(comp[∑[n]]-n, 2)-n))` -/
def P13675635852853332966.Spec : Prop :=
  ∀ n, P13675635852853332966.a n = A128417 n

end A128417

/-!
# A128418: a(n) = Sum_{k=0..n} 2^(n-k)*C(2n,n-k).

The programs for A128418, the canonical program `A128418.P16572163224378031912` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128418 has offset 0).

The definition of A128418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128418.P16572163224378031912

`∑{#}[n, 2^(n-#)*C(2*n, n-#)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128418

/-- `∑{#}[n, 2^(n-#)*C(2*n, n-#)]` -/
def P16572163224378031912.Spec : Prop :=
  ∀ n, P16572163224378031912.a n = (A128418 n : ℚ)

end A128418

/-! ## A128418.P16125502238380851579

`A243019(2*n)`
-/

namespace A128418.P16125502238380851579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243019 (2 * n)

end

end A128418.P16125502238380851579

namespace A128418

/-- `A243019(2*n)` -/
def P16125502238380851579.Spec : Prop :=
  ∀ n, P16125502238380851579.a n = A128418 n

end A128418

/-! ## A128418.P3134720117838903108

`A386670(n)+A059304(n)`
-/

namespace A128418.P3134720117838903108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386670 n + A059304 n

end

end A128418.P3134720117838903108

namespace A128418

/-- `A386670(n)+A059304(n)` -/
def P3134720117838903108.Spec : Prop :=
  ∀ n, P3134720117838903108.a n = A128418 n

end A128418

/-! ## A128418.P5438939052841766252

`A386670(n)+A103973(2*n)`
-/

namespace A128418.P5438939052841766252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386670 n + A103973 (2 * n)

end

end A128418.P5438939052841766252

namespace A128418

/-- `A386670(n)+A103973(2*n)` -/
def P5438939052841766252.Spec : Prop :=
  ∀ n, P5438939052841766252.a n = A128418 n

end A128418

/-! ## A128418.P14595553459740829004

`A193860(2*n²)`
-/

namespace A128418.P14595553459740829004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193860 (2 * n ^ 2)

end

end A128418.P14595553459740829004

namespace A128418

/-- `A193860(2*n²)` -/
def P14595553459740829004.Spec : Prop :=
  ∀ n, P14595553459740829004.a n = A128418 n

end A128418

/-! ## A128418.P14192785622469241871

`A112626(∑[4*n])`
-/

namespace A128418.P14192785622469241871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128418.P14192785622469241871

namespace A128418

/-- `A112626(∑[4*n])` -/
def P14192785622469241871.Spec : Prop :=
  ∀ n, P14192785622469241871.a n = A128418 n

end A128418

/-! ## A128418.P13286944275369846252

`A193861(A061579(2*n²))`
-/

namespace A128418.P13286944275369846252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193861 (A061579 (2 * n ^ 2)).toNat

end

end A128418.P13286944275369846252

namespace A128418

/-- `A193861(A061579(2*n²))` -/
def P13286944275369846252.Spec : Prop :=
  ∀ n, P13286944275369846252.a n = A128418 n

end A128418

/-! ## A128418.P15097320679240465236

`record[A112626(2*A129889(n))]`
-/

namespace A128418.P15097320679240465236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (2 * A129889 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128418.P15097320679240465236

namespace A128418

/-- `record[A112626(2*A129889(n))]` -/
def P15097320679240465236.Spec : Prop :=
  ∀ n, P15097320679240465236.a n = A128418 n

end A128418

/-! ## A128418.P13233028336052569152

`record[gcd(A193860(n+1), A193861(n))]`
-/

namespace A128418.P13233028336052569152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193860 (n + 1)) (A193861 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128418.P13233028336052569152

namespace A128418

/-- `record[gcd(A193860(n+1), A193861(n))]` -/
def P13233028336052569152.Spec : Prop :=
  ∀ n, (P13233028336052569152.a n : ℤ) = A128418 n

end A128418

/-! ## A128418.P12069306021332353865

`record[gcd(A084938(n), A112626(4*n))]`
-/

namespace A128418.P12069306021332353865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084938 n) (A112626 (4 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128418.P12069306021332353865

namespace A128418

/-- `record[gcd(A084938(n), A112626(4*n))]` -/
def P12069306021332353865.Spec : Prop :=
  ∀ n, (P12069306021332353865.a n : ℤ) = A128418 n

end A128418

/-!
# A128419: Expansion of 8/(sqrt(1-8*x)*(sqrt(1-8*x)+4*x+7)).

The programs for A128419, there is no canonical definition to state claims against.
-/

/-! ## A128419.P1014631775654128624

`A029579(A059231(n+1))-A000720(A173613(n))`
-/

namespace A128419.P1014631775654128624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A059231 (n + 1)).toNat - A000720 (A173613 n).toNat

end

end A128419.P1014631775654128624

/-!
# A128422: Projective plane crossing number of K_{4,n}.

The programs for A128422, the canonical program `A128422.P14879487568156438573` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128422 has offset 1).

The definition of A128422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128422.P14879487568156438573

`floor(2*C(n, 2)/3)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128422

/-- `floor(2*C(n, 2)/3)` -/
def P14879487568156438573.Spec : Prop :=
  ∀ n, P14879487568156438573.a n = A128422 (n + 1)

theorem P14879487568156438573.correct : P14879487568156438573.Spec := by
  intro n
  simp only [A128422, Nat.add_sub_cancel]

end A128422

/-! ## A128422.P1952685807474794834

`floor(n*(n-1)/3)`
-/

namespace A128422.P1952685807474794834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 3⌋

end

end A128422.P1952685807474794834

namespace A128422

/-- `floor(n*(n-1)/3)` -/
def P1952685807474794834.Spec : Prop :=
  ∀ n, P1952685807474794834.a n = A128422 (n + 1)

end A128422

/-! ## A128422.P7926364780985065405

`ogf(2x^3/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A128422.P7926364780985065405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 2] [1, -2, 1, -1, 2, -1] n

end

end A128422.P7926364780985065405

namespace A128422

/-- `ogf(2x^3/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P7926364780985065405.Spec : Prop :=
  ∀ n, P7926364780985065405.a n = A128422 (n + 1)

end A128422

/-! ## A128422.P16469025159682359301

`2*floor(C(n, 2)/3)`
-/

namespace A128422.P16469025159682359301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(Nat.choose n 2 : ℚ) / 3⌋

end

end A128422.P16469025159682359301

namespace A128422

/-- `2*floor(C(n, 2)/3)` -/
def P16469025159682359301.Spec : Prop :=
  ∀ n, P16469025159682359301.a n = A128422 (n + 1)

end A128422

/-! ## A128422.P10862555801828797056

`2*round(C(n, 2)/3)`
-/

namespace A128422.P10862555801828797056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) / 3)

end

end A128422.P10862555801828797056

namespace A128422

/-- `2*round(C(n, 2)/3)` -/
def P10862555801828797056.Spec : Prop :=
  ∀ n, P10862555801828797056.a n = A128422 (n + 1)

end A128422

/-! ## A128422.P7451814418108867726

`∑[∑[∑{p}[n, val(#², 3)]]]`
-/

namespace A128422.P7451814418108867726
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.valuation (p ^ 2) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128422.P7451814418108867726

namespace A128422

/-- `∑[∑[∑{p}[n, val(#², 3)]]]` -/
def P7451814418108867726.Spec : Prop :=
  ∀ n, (P7451814418108867726.a n : ℤ) = A128422 (n + 1)

end A128422

/-! ## A128422.P9157442948326716664

`∑[∑[val(∏{p}[n, #]², 3)]]`
-/

namespace A128422.P9157442948326716664
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∏ p ∈ Nat.primeFactors (f3 n), p) ^ 2) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128422.P9157442948326716664

namespace A128422

/-- `∑[∑[val(∏{p}[n, #]², 3)]]` -/
def P9157442948326716664.Spec : Prop :=
  ∀ n, (P9157442948326716664.a n : ℤ) = A128422 (n + 1)

end A128422

/-! ## A128422.P7325245190196508061

`∑[∑[gcd(3, n)]-(n+3)]`
-/

namespace A128422.P7325245190196508061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128422.P7325245190196508061

namespace A128422

/-- `∑[∑[gcd(3, n)]-(n+3)]` -/
def P7325245190196508061.Spec : Prop :=
  ∀ n, P7325245190196508061.a n = A128422 (n + 1)

end A128422

/-! ## A128422.P12013264672729900546

`∑[a(n-3)+2]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A128422.P12013264672729900546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128422.P12013264672729900546

namespace A128422

/-- `∑[a(n-3)+2]` -/
def P12013264672729900546.Spec : Prop :=
  ∀ n, (P12013264672729900546.a n : ℤ) = A128422 (n + 1)

end A128422

/-! ## A128422.P2874926793428671411

`2/3*∑[n-n%3]`
-/

namespace A128422.P2874926793428671411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 3 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A128422.P2874926793428671411

namespace A128422

/-- `2/3*∑[n-n%3]` -/
def P2874926793428671411.Spec : Prop :=
  ∀ n, P2874926793428671411.a n = (A128422 (n + 1) : ℚ)

end A128422

/-! ## A128422.P10708584206079942881

`2*∑[∑[char[lcm(3, n+1)]]]`
-/

namespace A128422.P10708584206079942881
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128422.P10708584206079942881

namespace A128422

/-- `2*∑[∑[char[lcm(3, n+1)]]]` -/
def P10708584206079942881.Spec : Prop :=
  ∀ n, (P10708584206079942881.a n : ℤ) = A128422 (n + 1)

end A128422

/-! ## A128422.P14474332902577000038

`-∑[a(n-3)-2]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A128422.P14474332902577000038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128422.P14474332902577000038

namespace A128422

/-- `-∑[a(n-3)-2]` -/
def P14474332902577000038.Spec : Prop :=
  ∀ n, P14474332902577000038.a n = A128422 (n + 1)

end A128422

/-! ## A128422.P8394291270127302322

`∑[∑[dr(a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A128422.P8394291270127302322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128422.P8394291270127302322

namespace A128422

/-- `∑[∑[dr(a(n-3))]]` -/
def P8394291270127302322.Spec : Prop :=
  ∀ n, (P8394291270127302322.a n : ℤ) = A128422 (n + 1)

end A128422

/-! ## A128422.P2873350167394176360

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A128422.P2873350167394176360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128422.P2873350167394176360

namespace A128422

/-- `∑[∑[floor(a(n-3))]]` -/
def P2873350167394176360.Spec : Prop :=
  ∀ n, (P2873350167394176360.a n : ℤ) = A128422 (n + 1)

end A128422

/-! ## A128422.P14475212679621393413

`∑[∑[ceil(a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A128422.P14475212679621393413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128422.P14475212679621393413

namespace A128422

/-- `∑[∑[ceil(a(n-3))]]` -/
def P14475212679621393413.Spec : Prop :=
  ∀ n, (P14475212679621393413.a n : ℤ) = A128422 (n + 1)

end A128422

/-! ## A128422.P13109283928094121579

`∑[∑[round(a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A128422.P13109283928094121579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128422.P13109283928094121579

namespace A128422

/-- `∑[∑[round(a(n-3))]]` -/
def P13109283928094121579.Spec : Prop :=
  ∀ n, (P13109283928094121579.a n : ℤ) = A128422 (n + 1)

end A128422

/-! ## A128422.P8388557302727310250

`lcm(2, ∑[a(n-3)-2])` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A128422.P8388557302727310250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 3) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128422.P8388557302727310250

namespace A128422

/-- `lcm(2, ∑[a(n-3)-2])` -/
def P8388557302727310250.Spec : Prop :=
  ∀ n, (P8388557302727310250.a n : ℤ) = A128422 (n + 1)

end A128422

/-! ## A128422.P16990907552863878060

`round(or(1, (n+1)*(n-2))/3)`
-/

namespace A128422.P16990907552863878060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 1 ((n + 1 : ℤ) * ((n : ℤ) - 2)) : ℚ) / 3)

end

end A128422.P16990907552863878060

namespace A128422

/-- `round(or(1, (n+1)*(n-2))/3)` -/
def P16990907552863878060.Spec : Prop :=
  ∀ n, P16990907552863878060.a n = A128422 (n + 1)

end A128422

/-! ## A128422.P5020653992910384764

`round(xor(1, (n+1)*(n-2))/3)`
-/

namespace A128422.P5020653992910384764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor 1 ((n + 1 : ℤ) * ((n : ℤ) - 2)) : ℚ) / 3)

end

end A128422.P5020653992910384764

namespace A128422

/-- `round(xor(1, (n+1)*(n-2))/3)` -/
def P5020653992910384764.Spec : Prop :=
  ∀ n, P5020653992910384764.a n = A128422 (n + 1)

end A128422

/-! ## A128422.P14881784643862022826

`ceil((n-2)*C(n+1, n)/3)`
-/

namespace A128422.P14881784643862022826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 2 : ℚ) * ((Nat.choose (n + 1) n : ℚ) / 3)⌉

end

end A128422.P14881784643862022826

namespace A128422

/-- `ceil((n-2)*C(n+1, n)/3)` -/
def P14881784643862022826.Spec : Prop :=
  ∀ n, P14881784643862022826.a n = A128422 (n + 1)

end A128422

/-!
# A128423: A007376(8n+6).

The programs for A128423, there is no canonical definition to state claims against.
-/

/-! ## A128423.P15889051090400536505

`A007376(8*n+6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128423.P15889051090400536505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (8 * n + 6)

end

end A128423.P15889051090400536505

/-! ## A128423.P18123334311397666522

`dr(A007376(A017137(n)))`
-/

namespace A128423.P18123334311397666522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A017137 n).toNat)

end

end A128423.P18123334311397666522

/-! ## A128423.P15659719049908901645

`A007376(sqrt(A017138(n)))%10`
-/

namespace A128423.P15659719049908901645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (SequenceMachineLib.roundAway (Real.sqrt (A017138 n : ℝ))).toNat) 10

end

end A128423.P15659719049908901645

/-! ## A128423.P236466750107270973

`dr(A007376(A016825(Δ[n²])))`
-/

namespace A128423.P236466750107270973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A016825 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat)

end

end A128423.P236466750107270973

/-! ## A128423.P11604614850145704163

`A007376(2*A004767(n))%10`
-/

namespace A128423.P11604614850145704163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (2 * A004767 n).toNat) 10

end

end A128423.P11604614850145704163

/-! ## A128423.P12183234226851927544

`A127508(Δ[n²])`
-/

namespace A128423.P12183234226851927544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127508 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A128423.P12183234226851927544

/-! ## A128423.P9944801107792591575

`dr(A127508(2*n+1))`
-/

namespace A128423.P9944801107792591575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A127508 (2 * n + 1))

end

end A128423.P9944801107792591575

/-! ## A128423.P6058106616811165766

`A007376(2*A004767(n))-A000035(2*n)`
-/

namespace A128423.P6058106616811165766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (2 * A004767 n).toNat - A000035 (2 * n)

end

end A128423.P6058106616811165766

/-! ## A128423.P2421608158376378242

`A033307(8*n+5)`
-/

namespace A128423.P2421608158376378242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (8 * n + 5)

end

end A128423.P2421608158376378242

/-! ## A128423.P14405606006343414258

`A127353(3*(n+1)+n)`
-/

namespace A128423.P14405606006343414258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127353 (3 * (n + 1) + n)

end

end A128423.P14405606006343414258

/-! ## A128423.P9639631228759042285

`A098727(8*n+6)-(8*n+6)`
-/

namespace A128423.P9639631228759042285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098727 (8 * n + 6) - (8 * n + 6 : ℤ)

end

end A128423.P9639631228759042285

/-! ## A128423.P12410103177641572752

`A108202(record[4*xor(3, n)])`
-/

namespace A128423.P12410103177641572752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A128423.P12410103177641572752

/-! ## A128423.P2620124258979106015

`A108202(lcm(4, record[xor(3, n)]))`
-/

namespace A128423.P2620124258979106015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (Nat.lcm 4 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A128423.P2620124258979106015

/-! ## A128423.P13315158975115074511

`A108202(4*(4*n+3))`
-/

namespace A128423.P13315158975115074511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (4 * (4 * n + 3))

end

end A128423.P13315158975115074511

/-! ## A128423.P795490711909980520

`A108712(A106839(n))`
-/

namespace A128423.P795490711909980520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A106839 n).toNat

end

end A128423.P795490711909980520

/-! ## A128423.P11570420500922956214

`A108712(A082285(n)-2)`
-/

namespace A128423.P11570420500922956214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A082285 n - 2).toNat

end

end A128423.P11570420500922956214

/-! ## A128423.P14214083893916712718

`A108712(A113770(n+1)+1)`
-/

namespace A128423.P14214083893916712718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A113770 (n + 1) + 1).toNat

end

end A128423.P14214083893916712718

/-! ## A128423.P14640151062385333658

`A007318(A000096(n))*A007376(2*A004767(n))`
-/

namespace A128423.P14640151062385333658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A007376 (2 * A004767 n).toNat

end

end A128423.P14640151062385333658

/-! ## A128423.P9817173832757172798

`8*n+7-A098732(8*n+7)`
-/

namespace A128423.P9817173832757172798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 7 : ℤ) - A098732 (8 * n + 7)

end

end A128423.P9817173832757172798

/-!
# A128424: a(n) = floor(sqrt(a(n-1)^2 + a(n-2)^2 + a(n-1)*a(n-2))), a(1)=1, a(2)=3.

The programs for A128424, the canonical program `A128424.P965243191207751634` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128424 has offset 1).

The definition of A128424 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(a(n-1)²+a(n-2)²+a(n-1)*a(n-2)))` (program `A128424.P965243191207751634`, by `A128424.P965243191207751634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128424.P965243191207751634

`floor(sqrt(a(n-1)²+a(n-2)²+a(n-1)*a(n-2)))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128424

/-- `floor(sqrt(a(n-1)²+a(n-2)²+a(n-1)*a(n-2)))` -/
def P965243191207751634.Spec : Prop :=
  ∀ n, (P965243191207751634.a n : ℤ) = A128424 (n + 1)

theorem P965243191207751634.correct : P965243191207751634.Spec := by
  intro n
  simp only [A128424, Nat.add_sub_cancel]

end A128424

/-! ## A128424.P10041154066330154156

`ogf((1+x-2x^2+x^3-2x^4+x^5-x^6)/(1-2x+x^2-x^3+x^4))`
-/

namespace A128424.P10041154066330154156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, 1, -2, 1, -1] [1, -2, 1, -1, 1] n

end

end A128424.P10041154066330154156

namespace A128424

/-- `ogf((1+x-2x^2+x^3-2x^4+x^5-x^6)/(1-2x+x^2-x^3+x^4))` -/
def P10041154066330154156.Spec : Prop :=
  ∀ n, P10041154066330154156.a n = A128424 (n + 1)

end A128424

/-! ## A128424.P2424381059940072041

`A078012(n+5)+A014429(C(2, n))`
-/

namespace A128424.P2424381059940072041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 5) + A014429 (Nat.choose 2 n)

end

end A128424.P2424381059940072041

namespace A128424

/-- `A078012(n+5)+A014429(C(2, n))` -/
def P2424381059940072041.Spec : Prop :=
  ∀ n, P2424381059940072041.a n = A128424 (n + 1)

end A128424

/-! ## A128424.P11931302829057780140

`A096801(C(2, n))+A078012(n+5)`
-/

namespace A128424.P11931302829057780140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096801 (Nat.choose 2 n) + A078012 (n + 5)

end

end A128424.P11931302829057780140

namespace A128424

/-- `A096801(C(2, n))+A078012(n+5)` -/
def P11931302829057780140.Spec : Prop :=
  ∀ n, P11931302829057780140.a n = A128424 (n + 1)

end A128424

/-! ## A128424.P779603256465701492

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=5, a(4)=7, a(5)=10, a(6)=14`
-/

namespace A128424.P779603256465701492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 5, 7, 10, 14] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A128424.P779603256465701492

namespace A128424

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P779603256465701492.Spec : Prop :=
  ∀ n, P779603256465701492.a n = A128424 (n + 1)

end A128424

/-! ## A128424.P15584766161802595786

`Δ[A164487(n)+char[2]]`
-/

namespace A128424.P15584766161802595786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164487 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128424.P15584766161802595786

namespace A128424

/-- `Δ[A164487(n)+char[2]]` -/
def P15584766161802595786.Spec : Prop :=
  ∀ n, P15584766161802595786.a n = A128424 (n + 1)

end A128424

/-! ## A128424.P5780911495525673519

`char[A145979(n)]+Δ[A048585(n)]`
-/

namespace A128424.P5780911495525673519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A128424.P5780911495525673519

namespace A128424

/-- `char[A145979(n)]+Δ[A048585(n)]` -/
def P5780911495525673519.Spec : Prop :=
  ∀ n, P5780911495525673519.a n = A128424 (n + 1)

end A128424

/-! ## A128424.P8196899827744067163

`char[A145979(n)]+Δ[A048588(n)]`
-/

namespace A128424.P8196899827744067163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A128424.P8196899827744067163

namespace A128424

/-- `char[A145979(n)]+Δ[A048588(n)]` -/
def P8196899827744067163.Spec : Prop :=
  ∀ n, P8196899827744067163.a n = A128424 (n + 1)

end A128424

/-!
# A128425: Primes in A000933.

The programs for A128425, the canonical program `A128425.P17381187607992519929` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128425 has offset 1).

The definition of A128425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128425.P17381187607992519929

`p?[ceil(∑[n/6])]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128425

/-- `p?[ceil(∑[n/6])]` -/
def P17381187607992519929.Spec : Prop :=
  ∀ n, P17381187607992519929.a n = A128425 (n + 1)

theorem P17381187607992519929.correct : P17381187607992519929.Spec := by
  intro n
  simp only [A128425, Nat.add_sub_cancel]

end A128425

/-! ## A128425.P14072818858431080475

`filter[A253012(n), A010051(#)]`
-/

namespace A128425.P14072818858431080475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A128425.P14072818858431080475

namespace A128425

/-- `filter[A253012(n), A010051(#)]` -/
def P14072818858431080475.Spec : Prop :=
  ∀ n, P14072818858431080475.a n = A128425 (n + 1)

end A128425

/-! ## A128425.P14627052468137207774

`∩[A000040(n+1), A004526(A266542(n+2))]`
-/

namespace A128425.P14627052468137207774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A266542 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128425.P14627052468137207774

namespace A128425

/-- `∩[A000040(n+1), A004526(A266542(n+2))]` -/
def P14627052468137207774.Spec : Prop :=
  ∀ n, (P14627052468137207774.a n : ℤ) = A128425 (n + 1)

end A128425

/-! ## A128425.P16408178885593124418

`∩[A000040(n+1), A103221(A000096(n+2))]`
-/

namespace A128425.P16408178885593124418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A000096 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128425.P16408178885593124418

namespace A128425

/-- `∩[A000040(n+1), A103221(A000096(n+2))]` -/
def P16408178885593124418.Spec : Prop :=
  ∀ n, (P16408178885593124418.a n : ℤ) = A128425 (n + 1)

end A128425

/-! ## A128425.P7027057553418274983

`∩[A008578(n+2), A008615(A167614(n+2))]`
-/

namespace A128425.P7027057553418274983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A167614 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128425.P7027057553418274983

namespace A128425

/-- `∩[A008578(n+2), A008615(A167614(n+2))]` -/
def P7027057553418274983.Spec : Prop :=
  ∀ n, (P7027057553418274983.a n : ℤ) = A128425 (n + 1)

end A128425

/-!
# A128427: Last point where sum of n consecutive n-th powers does not exceed the next n-th power.

The programs for A128427, there is no canonical definition to state claims against.
-/

/-! ## A128427.P3953484540235405464

`record[floor(a(n-1)+(1/a(n-1)+1)^n)]` with `a(0)=5, a(1)=1`
-/

namespace A128427.P3953484540235405464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (1 / (f1 (n - 1) : ℚ) + 1) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128427.P3953484540235405464

/-! ## A128427.P5883318866102680248

`round(log2(A081881(n+1)))+5`
-/

namespace A128427.P5883318866102680248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A081881 (n + 1) : ℝ)) + 5

end

end A128427.P5883318866102680248

/-! ## A128427.P17877956465601466729

`A065475(record[ceil((a(n-1)+2)/2^(1/n))])` with `a(0)=4`
-/

namespace A128427.P17877956465601466729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  ⌈(f1 (n - 1) + 2 : ℝ) / (2 : ℝ) ^ (1 / (n : ℚ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128427.P17877956465601466729

/-! ## A128427.P14443638475410160746

`A141044(n)+A078607(n+2)`
-/

namespace A128427.P14443638475410160746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n + A078607 (n + 2)

end

end A128427.P14443638475410160746

/-! ## A128427.P16534868440283443688

`A078607(n+2)+A054977(floor(n/2))`
-/

namespace A128427.P16534868440283443688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078607 (n + 2) + A054977 ⌊(n : ℚ) / 2⌋.toNat

end

end A128427.P16534868440283443688

/-! ## A128427.P10966224481095631937

`A224996(n+2)+A000035(∑{d}[∏{p}[n+1, #], (n+1)/#])+2`
-/

namespace A128427.P10966224481095631937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224996 (n + 2) + A000035 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat + 2

end

end A128427.P10966224481095631937

/-! ## A128427.P11729145686016722706

`A078607(n+2)+A014963(A073353(n+1))`
-/

namespace A128427.P11729145686016722706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078607 (n + 2) + A014963 (A073353 (n + 1)).toNat

end

end A128427.P11729145686016722706

/-! ## A128427.P9660743745818892274

`A000035(A000010(n+1))+A224996(n+2)+2`
-/

namespace A128427.P9660743745818892274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000010 (n + 1)).toNat + (A224996 (n + 2) + 2)

end

end A128427.P9660743745818892274

/-! ## A128427.P12127812225659956083

`record[A014963(A069482(n+1))*A110882(n)]`
-/

namespace A128427.P12127812225659956083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A069482 (n + 1)).toNat * A110882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128427.P12127812225659956083

/-!
# A128428: Number of distinct prime factors of n^2+1.

The programs for A128428, the canonical program `A128428.P12680153532119411941` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128428 has offset 1).

The definition of A128428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128428.P12680153532119411941

`A001221((n+1)²+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128428

/-- `A001221((n+1)²+1)` -/
def P12680153532119411941.Spec : Prop :=
  ∀ n, P12680153532119411941.a n = A128428 (n + 1)

theorem P12680153532119411941.correct : P12680153532119411941.Spec := by
  intro n
  simp only [A128428, Nat.add_sub_cancel]

end A128428

/-! ## A128428.P11644635486271372802

`∑{p}[(n+1)²+1, gcd(3, #)]`
-/

namespace A128428.P11644635486271372802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd 3 p

end

end A128428.P11644635486271372802

namespace A128428

/-- `∑{p}[(n+1)²+1, gcd(3, #)]` -/
def P11644635486271372802.Spec : Prop :=
  ∀ n, (P11644635486271372802.a n : ℤ) = A128428 (n + 1)

end A128428

/-! ## A128428.P15031118485845942962

`∑{e}[∏{p}[1+(n+1)², #], #]`
-/

namespace A128428.P15031118485845942962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A128428.P15031118485845942962

namespace A128428

/-- `∑{e}[∏{p}[1+(n+1)², #], #]` -/
def P15031118485845942962.Spec : Prop :=
  ∀ n, (P15031118485845942962.a n : ℤ) = A128428 (n + 1)

end A128428

/-! ## A128428.P17480569931473766079

`log(∏{e}[∏{p}[(n+1)*(n+1)+1, #], exp(#²)])`
-/

namespace A128428.P17480569931473766079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p ^ 2 : ℝ))

end

end A128428.P17480569931473766079

namespace A128428

/-- `log(∏{e}[∏{p}[(n+1)*(n+1)+1, #], exp(#²)])` -/
def P17480569931473766079.Spec : Prop :=
  ∀ n, P17480569931473766079.a n = (A128428 (n + 1) : ℝ)

end A128428

/-! ## A128428.P17162059544287152126

`∑{p}[(n+1)²+1, A001222(#)]`
-/

namespace A128428.P17162059544287152126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A128428.P17162059544287152126

namespace A128428

/-- `∑{p}[(n+1)²+1, A001222(#)]` -/
def P17162059544287152126.Spec : Prop :=
  ∀ n, P17162059544287152126.a n = A128428 (n + 1)

end A128428

/-! ## A128428.P3235138820390755343

`∑{p}[n*(n+2)+2, A001221(#)]`
-/

namespace A128428.P3235138820390755343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001221 p

end

end A128428.P3235138820390755343

namespace A128428

/-- `∑{p}[n*(n+2)+2, A001221(#)]` -/
def P3235138820390755343.Spec : Prop :=
  ∀ n, P3235138820390755343.a n = A128428 (n + 1)

end A128428

/-! ## A128428.P17865613635538095510

`∑{p}[(n+1)²+1, -A008683(#)]`
-/

namespace A128428.P17865613635538095510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (-A008683 p)

end

end A128428.P17865613635538095510

namespace A128428

/-- `∑{p}[(n+1)²+1, -A008683(#)]` -/
def P17865613635538095510.Spec : Prop :=
  ∀ n, P17865613635538095510.a n = A128428 (n + 1)

end A128428

/-! ## A128428.P14798914039415809026

`dr(A001221(n*(n+2)+2))`
-/

namespace A128428.P14798914039415809026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001221 (n * (n + 2) + 2))

end

end A128428.P14798914039415809026

namespace A128428

/-- `dr(A001221(n*(n+2)+2))` -/
def P14798914039415809026.Spec : Prop :=
  ∀ n, (P14798914039415809026.a n : ℤ) = A128428 (n + 1)

end A128428

/-! ## A128428.P17817665146411498962

`A001222(∏{p}[(n+1)²+1, #])`
-/

namespace A128428.P17817665146411498962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A128428.P17817665146411498962

namespace A128428

/-- `A001222(∏{p}[(n+1)²+1, #])` -/
def P17817665146411498962.Spec : Prop :=
  ∀ n, P17817665146411498962.a n = A128428 (n + 1)

end A128428

/-! ## A128428.P950312015494790794

`A001221(∑[2*n+1]+1)%6`
-/

namespace A128428.P950312015494790794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 6

end

end A128428.P950312015494790794

namespace A128428

/-- `A001221(∑[2*n+1]+1)%6` -/
def P950312015494790794.Spec : Prop :=
  ∀ n, P950312015494790794.a n = A128428 (n + 1)

end A128428

/-! ## A128428.P9048622965753487995

`A078313(A102631(n+1))`
-/

namespace A128428.P9048622965753487995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078313 (A102631 (n + 1)).toNat

end

end A128428.P9048622965753487995

namespace A128428

/-- `A078313(A102631(n+1))` -/
def P9048622965753487995.Spec : Prop :=
  ∀ n, P9048622965753487995.a n = A128428 (n + 1)

end A128428

/-! ## A128428.P15791808898748280772

`A078313((n+1)*A003557(n+1))`
-/

namespace A128428.P15791808898748280772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078313 ((n + 1 : ℤ) * A003557 (n + 1)).toNat

end

end A128428.P15791808898748280772

namespace A128428

/-- `A078313((n+1)*A003557(n+1))` -/
def P15791808898748280772.Spec : Prop :=
  ∀ n, P15791808898748280772.a n = A128428 (n + 1)

end A128428

/-! ## A128428.P13894932188815269248

`A078313(A003557((n+1)²))`
-/

namespace A128428.P13894932188815269248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078313 (A003557 ((n + 1) ^ 2)).toNat

end

end A128428.P13894932188815269248

namespace A128428

/-- `A078313(A003557((n+1)²))` -/
def P13894932188815269248.Spec : Prop :=
  ∀ n, P13894932188815269248.a n = A128428 (n + 1)

end A128428

/-! ## A128428.P3969007018158840645

`A001222(A281495((n+1)²))`
-/

namespace A128428.P3969007018158840645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A281495 ((n + 1) ^ 2)).toNat

end

end A128428.P3969007018158840645

namespace A128428

/-- `A001222(A281495((n+1)²))` -/
def P3969007018158840645.Spec : Prop :=
  ∀ n, P3969007018158840645.a n = A128428 (n + 1)

end A128428

/-!
# A128429: A linear recurrence sequence: a(n) = a(n-1) + a(n-3) + a(n-5) + a(n-6).

The programs for A128429, the canonical program `A128429.P1356573296497000250` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128429 has offset 0).

The definition of A128429 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-5)+a(n-6)` (program `A128429.P1356573296497000250`, by `A128429.P1356573296497000250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128429.P15738860679893384426

`ogf((1-x^3-x^4-2x^5)/(1-x-x^3-x^5-x^6))`
-/

namespace A128429.P15738860679893384426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1, -1, -2] [1, -1, 0, -1, 0, -1, -1] n

end

end A128429.P15738860679893384426

namespace A128429

/-- `ogf((1-x^3-x^4-2x^5)/(1-x-x^3-x^5-x^6))` -/
def P15738860679893384426.Spec : Prop :=
  ∀ n, P15738860679893384426.a n = A128429 n

end A128429

/-! ## A128429.P1356573296497000250

`a(n-1)+a(n-3)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128429

/-- `a(n-1)+a(n-3)+a(n-5)+a(n-6)` -/
def P1356573296497000250.Spec : Prop :=
  ∀ n, (P1356573296497000250.a n : ℤ) = A128429 n

theorem P1356573296497000250.correct : P1356573296497000250.Spec := by
  intro n
  simp only [A128429]

end A128429

/-! ## A128429.P4926457148777460042

`3*floor(A006355(n)/8)+1`
-/

namespace A128429.P4926457148777460042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(A006355 n : ℚ) / 8⌋ + 1

end

end A128429.P4926457148777460042

namespace A128429

/-- `3*floor(A006355(n)/8)+1` -/
def P4926457148777460042.Spec : Prop :=
  ∀ n, P4926457148777460042.a n = A128429 n

end A128429

/-! ## A128429.P14034917138682816180

`A226956(n)-Δ[A079962(n)]`
-/

namespace A128429.P14034917138682816180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 n - (f1 (n + 1) - f1 n)

end

end A128429.P14034917138682816180

namespace A128429

/-- `A226956(n)-Δ[A079962(n)]` -/
def P14034917138682816180.Spec : Prop :=
  ∀ n, P14034917138682816180.a n = A128429 n

end A128429

/-! ## A128429.P18144426156185259212

`A079962(n)+A226956(n)-A079962(n+1)`
-/

namespace A128429.P18144426156185259212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079962 n + (A226956 n - A079962 (n + 1))

end

end A128429.P18144426156185259212

namespace A128429

/-- `A079962(n)+A226956(n)-A079962(n+1)` -/
def P18144426156185259212.Spec : Prop :=
  ∀ n, P18144426156185259212.a n = A128429 n

end A128429

/-! ## A128429.P9260760490594220076

`A024490(n+2)-(A000045(n)+Δ[A079962(n)])`
-/

namespace A128429.P9260760490594220076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 2) - (A000045 n + (f1 (n + 1) - f1 n))

end

end A128429.P9260760490594220076

namespace A128429

/-- `A024490(n+2)-(A000045(n)+Δ[A079962(n)])` -/
def P9260760490594220076.Spec : Prop :=
  ∀ n, P9260760490594220076.a n = A128429 n

end A128429

/-! ## A128429.P14136585497274125692

`3*A004697(log2(A011782(n)))+1`
-/

namespace A128429.P14136585497274125692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004697 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + 1

end

end A128429.P14136585497274125692

namespace A128429

/-- `3*A004697(log2(A011782(n)))+1` -/
def P14136585497274125692.Spec : Prop :=
  ∀ n, P14136585497274125692.a n = A128429 n

end A128429

/-!
# A128430: Triangle read by rows: A054524 * A000012.

The programs for A128430, the canonical program `A128430.P7978969669841181230` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128430 has offset 1).

The definition of A128430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128430.P7978969669841181230

`a(n-1)-A054524(n)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A128430

/-- `a(n-1)-A054524(n)` -/
def P7978969669841181230.Spec : Prop :=
  ∀ n, P7978969669841181230.a n = A128430 (n + 1)

theorem P7978969669841181230.correct : P7978969669841181230.Spec := by
  intro n
  simp only [A128430, Nat.add_sub_cancel]

end A128430

/-! ## A128430.P1995402688986982927

`2-∑[A054524(abs(1-n)+1)]`
-/

namespace A128430.P1995402688986982927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128430.P1995402688986982927

namespace A128430

/-- `2-∑[A054524(abs(1-n)+1)]` -/
def P1995402688986982927.Spec : Prop :=
  ∀ n, P1995402688986982927.a n = A128430 (n + 1)

end A128430

/-! ## A128430.P8222499304201917379

`A054524(n+1)+1-∑[A054524(n+1)]`
-/

namespace A128430.P8222499304201917379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128430.P8222499304201917379

namespace A128430

/-- `A054524(n+1)+1-∑[A054524(n+1)]` -/
def P8222499304201917379.Spec : Prop :=
  ∀ n, P8222499304201917379.a n = A128430 (n + 1)

end A128430

/-! ## A128430.P15836132211703463353

`char[∑[n]]-A181632(A325535(n+1))`
-/

namespace A128430.P15836132211703463353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A181632 (A325535 (n + 1)).toNat

end

end A128430.P15836132211703463353

namespace A128430

/-- `char[∑[n]]-A181632(A325535(n+1))` -/
def P15836132211703463353.Spec : Prop :=
  ∀ n, P15836132211703463353.a n = A128430 (n + 1)

end A128430

/-! ## A128430.P1565309557341338972

`A057428(n)+A010054(A324665(n))`
-/

namespace A128430.P1565309557341338972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A010054 (A324665 n).toNat

end

end A128430.P1565309557341338972

namespace A128430

/-- `A057428(n)+A010054(A324665(n))` -/
def P1565309557341338972.Spec : Prop :=
  ∀ n, P1565309557341338972.a n = A128430 (n + 1)

end A128430

/-!
# A128431: Triangle read by rows: A054521 * A128407.

The programs for A128431, the canonical program `A128431.P14264031416913626474` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128431 has offset 1).

The definition of A128431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128431.P5049438700764646566

`round(atan(atan(A143728(n+1))))`
-/

namespace A128431.P5049438700764646566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (A143728 (n + 1) : ℝ)))

end

end A128431.P5049438700764646566

namespace A128431

/-- `round(atan(atan(A143728(n+1))))` -/
def P5049438700764646566.Spec : Prop :=
  ∀ n, P5049438700764646566.a n = A128431 (n + 1)

end A128431

/-! ## A128431.P5286352153812798318

`A008683(gcd((n+1-C(∑[char[∑[n]]], 2))², ∑[∑[char[∑[n]]]²]%(n+1)))`
-/

namespace A128431.P5286352153812798318
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f5 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.gcd (((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ 2) (((∑ j ∈ Finset.range (n + 1), f4 j) % (n + 1) : ℕ) : ℤ))

end

end A128431.P5286352153812798318

namespace A128431

/-- `A008683(gcd((n+1-C(∑[char[∑[n]]], 2))², ∑[∑[char[∑[n]]]²]%(n+1)))` -/
def P5286352153812798318.Spec : Prop :=
  ∀ n, P5286352153812798318.a n = A128431 (n + 1)

end A128431

/-! ## A128431.P4156062899548368134

`A143728(n+1)/A128227(n)`
-/

namespace A128431.P4156062899548368134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143728 (n + 1) : ℚ) / (A128227 n : ℚ)

end

end A128431.P4156062899548368134

namespace A128431

/-- `A143728(n+1)/A128227(n)` -/
def P4156062899548368134.Spec : Prop :=
  ∀ n, P4156062899548368134.a n = (A128431 (n + 1) : ℚ)

end A128431

/-! ## A128431.P8570062241137877684

`A143728(n+1)/A193738(n)`
-/

namespace A128431.P8570062241137877684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143728 (n + 1) : ℚ) / (A193738 n : ℚ)

end

end A128431.P8570062241137877684

namespace A128431

/-- `A143728(n+1)/A193738(n)` -/
def P8570062241137877684.Spec : Prop :=
  ∀ n, P8570062241137877684.a n = (A128431 (n + 1) : ℚ)

end A128431

/-! ## A128431.P14264031416913626474

`∑{d}[A127368(n+1), A007427(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A128431

/-- `∑{d}[A127368(n+1), A007427(#)]` -/
def P14264031416913626474.Spec : Prop :=
  ∀ n, P14264031416913626474.a n = A128431 (n + 1)

theorem P14264031416913626474.correct : P14264031416913626474.Spec := by
  intro n
  simp only [A128431, Nat.add_sub_cancel]

end A128431

/-! ## A128431.P10903241836963647770

`∑{d}[A143728(n+1), A007427(#)]`
-/

namespace A128431.P10903241836963647770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A128431.P10903241836963647770

namespace A128431

/-- `∑{d}[A143728(n+1), A007427(#)]` -/
def P10903241836963647770.Spec : Prop :=
  ∀ n, P10903241836963647770.a n = A128431 (n + 1)

end A128431

/-! ## A128431.P18399808802035817486

`A054521(n+1)*A054527(n+1)`
-/

namespace A128431.P18399808802035817486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A054527 (n + 1)

end

end A128431.P18399808802035817486

namespace A128431

/-- `A054521(n+1)*A054527(n+1)` -/
def P18399808802035817486.Spec : Prop :=
  ∀ n, P18399808802035817486.a n = A128431 (n + 1)

end A128431

/-! ## A128431.P12429867699058192069

`A054521(n+1)*A054532(n+1)`
-/

namespace A128431.P12429867699058192069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A054532 (n + 1)

end

end A128431.P12429867699058192069

namespace A128431

/-- `A054521(n+1)*A054532(n+1)` -/
def P12429867699058192069.Spec : Prop :=
  ∀ n, P12429867699058192069.a n = A128431 (n + 1)

end A128431

/-! ## A128431.P11049346668320853688

`A143728(n+1)/A002260(n+1)`
-/

namespace A128431.P11049346668320853688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143728 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A128431.P11049346668320853688

namespace A128431

/-- `A143728(n+1)/A002260(n+1)` -/
def P11049346668320853688.Spec : Prop :=
  ∀ n, P11049346668320853688.a n = (A128431 (n + 1) : ℚ)

end A128431

/-! ## A128431.P7261550749693268807

`A143728(n+1)/A080511(n+1)`
-/

namespace A128431.P7261550749693268807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143728 (n + 1) : ℚ) / (A080511 (n + 1) : ℚ)

end

end A128431.P7261550749693268807

namespace A128431

/-- `A143728(n+1)/A080511(n+1)` -/
def P7261550749693268807.Spec : Prop :=
  ∀ n, P7261550749693268807.a n = (A128431 (n + 1) : ℚ)

end A128431

/-! ## A128431.P405746515974944413

`A143728(n+1)/A080818(n+1)`
-/

namespace A128431.P405746515974944413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143728 (n + 1) : ℚ) / (A080818 (n + 1) : ℚ)

end

end A128431.P405746515974944413

namespace A128431

/-- `A143728(n+1)/A080818(n+1)` -/
def P405746515974944413.Spec : Prop :=
  ∀ n, P405746515974944413.a n = (A128431 (n + 1) : ℚ)

end A128431

/-! ## A128431.P13283467980327120047

`A143728(n+1)/A128077(n+1)`
-/

namespace A128431.P13283467980327120047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143728 (n + 1) : ℚ) / (A128077 (n + 1) : ℚ)

end

end A128431.P13283467980327120047

namespace A128431

/-- `A143728(n+1)/A128077(n+1)` -/
def P13283467980327120047.Spec : Prop :=
  ∀ n, P13283467980327120047.a n = (A128431 (n + 1) : ℚ)

end A128431

/-! ## A128431.P16892645883884064539

`A143728(n+1)/A164306(n+1)`
-/

namespace A128431.P16892645883884064539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143728 (n + 1) : ℚ) / (A164306 (n + 1) : ℚ)

end

end A128431.P16892645883884064539

namespace A128431

/-- `A143728(n+1)/A164306(n+1)` -/
def P16892645883884064539.Spec : Prop :=
  ∀ n, P16892645883884064539.a n = (A128431 (n + 1) : ℚ)

end A128431

/-! ## A128431.P5714884672236179294

`A215200(n+1)²*A054527(n+1)`
-/

namespace A128431.P5714884672236179294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215200 (n + 1) ^ 2 * A054527 (n + 1)

end

end A128431.P5714884672236179294

namespace A128431

/-- `A215200(n+1)²*A054527(n+1)` -/
def P5714884672236179294.Spec : Prop :=
  ∀ n, P5714884672236179294.a n = A128431 (n + 1)

end A128431

/-! ## A128431.P8547894796901675952

`A008683(A002260(n+1)²/A164306(n+1))`
-/

namespace A128431.P8547894796901675952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A002260 (n + 1) ^ 2 : ℚ) / (A164306 (n + 1) : ℚ))).toNat

end

end A128431.P8547894796901675952

namespace A128431

/-- `A008683(A002260(n+1)²/A164306(n+1))` -/
def P8547894796901675952.Spec : Prop :=
  ∀ n, P8547894796901675952.a n = A128431 (n + 1)

end A128431

/-! ## A128431.P14453239930012900735

`A054527(n+1)/A054531(n+1)*A127449(n+1)`
-/

namespace A128431.P14453239930012900735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054527 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ) * (A127449 (n + 1) : ℚ)

end

end A128431.P14453239930012900735

namespace A128431

/-- `A054527(n+1)/A054531(n+1)*A127449(n+1)` -/
def P14453239930012900735.Spec : Prop :=
  ∀ n, P14453239930012900735.a n = (A128431 (n + 1) : ℚ)

end A128431

/-! ## A128431.P5567174786664257094

`(A143158(n+1)-A143158(n+2))*A054521(n+1)`
-/

namespace A128431.P5567174786664257094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143158 (n + 1) - A143158 (n + 2)) * A054521 (n + 1)

end

end A128431.P5567174786664257094

namespace A128431

/-- `(A143158(n+1)-A143158(n+2))*A054521(n+1)` -/
def P5567174786664257094.Spec : Prop :=
  ∀ n, P5567174786664257094.a n = A128431 (n + 1)

end A128431

/-! ## A128431.P13336462487106743716

`A143728(n+1)/A081517(n+1)`
-/

namespace A128431.P13336462487106743716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143728 (n + 1) : ℚ) / (A081517 (n + 1) : ℚ)

end

end A128431.P13336462487106743716

namespace A128431

/-- `A143728(n+1)/A081517(n+1)` -/
def P13336462487106743716.Spec : Prop :=
  ∀ n, P13336462487106743716.a n = (A128431 (n + 1) : ℚ)

end A128431

/-! ## A128431.P14521122496569209258

`A143728(n+1)/A226314(n+1)`
-/

namespace A128431.P14521122496569209258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143728 (n + 1) : ℚ) / (A226314 (n + 1) : ℚ)

end

end A128431.P14521122496569209258

namespace A128431

/-- `A143728(n+1)/A226314(n+1)` -/
def P14521122496569209258.Spec : Prop :=
  ∀ n, P14521122496569209258.a n = (A128431 (n + 1) : ℚ)

end A128431

/-! ## A128431.P6352604926237189159

`A143728(n+1)/A080508(n+1)`
-/

namespace A128431.P6352604926237189159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143728 (n + 1) : ℚ) / (A080508 (n + 1) : ℚ)

end

end A128431.P6352604926237189159

namespace A128431

/-- `A143728(n+1)/A080508(n+1)` -/
def P6352604926237189159.Spec : Prop :=
  ∀ n, P6352604926237189159.a n = (A128431 (n + 1) : ℚ)

end A128431

/-!
# A128432: Triangle read by rows: A128407 * A054521.

The programs for A128432, the canonical program `A128432.P3443979121522389698` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128432 has offset 1).

The definition of A128432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128432.P9702510683762625208

`A008683(gcd(eq[0, floor(2*sqrt(n))%2]², ∑[char[∑[n]]])*∑[char[∑[n]]])`
-/

namespace A128432.P9702510683762625208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) (∑ j ∈ Finset.range (n + 1), f3 j) * (∑ j ∈ Finset.range (n + 1), f6 j))

end

end A128432.P9702510683762625208

namespace A128432

/-- `A008683(gcd(eq[0, floor(2*sqrt(n))%2]², ∑[char[∑[n]]])*∑[char[∑[n]]])` -/
def P9702510683762625208.Spec : Prop :=
  ∀ n, P9702510683762625208.a n = A128432 (n + 1)

end A128432

/-! ## A128432.P3443979121522389698

`∑{d}[A127449(n+1), A007427(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A128432

/-- `∑{d}[A127449(n+1), A007427(#)]` -/
def P3443979121522389698.Spec : Prop :=
  ∀ n, P3443979121522389698.a n = A128432 (n + 1)

theorem P3443979121522389698.correct : P3443979121522389698.Spec := by
  intro n
  simp only [A128432, Nat.add_sub_cancel]

end A128432

/-! ## A128432.P14529546395889590396

`A054521(n+1)*A054533(n+1)`
-/

namespace A128432.P14529546395889590396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A054533 (n + 1)

end

end A128432.P14529546395889590396

namespace A128432

/-- `A054521(n+1)*A054533(n+1)` -/
def P14529546395889590396.Spec : Prop :=
  ∀ n, P14529546395889590396.a n = A128432 (n + 1)

end A128432

/-! ## A128432.P281290172126989519

`A054521(n+1)*A127507(n+1)`
-/

namespace A128432.P281290172126989519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A127507 (n + 1)

end

end A128432.P281290172126989519

namespace A128432

/-- `A054521(n+1)*A127507(n+1)` -/
def P281290172126989519.Spec : Prop :=
  ∀ n, P281290172126989519.a n = A128432 (n + 1)

end A128432

/-! ## A128432.P8327867756750218752

`A008683(∑[char[∑[n]]]*A050873(n+1))`
-/

namespace A128432.P8327867756750218752
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A050873 (n + 1)).toNat

end

end A128432.P8327867756750218752

namespace A128432

/-- `A008683(∑[char[∑[n]]]*A050873(n+1))` -/
def P8327867756750218752.Spec : Prop :=
  ∀ n, P8327867756750218752.a n = A128432 (n + 1)

end A128432

/-! ## A128432.P362584722852323284

`A008683(∑[char[∑[n]]])*A054521(n+1)`
-/

namespace A128432.P362584722852323284
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j) * A054521 (n + 1)

end

end A128432.P362584722852323284

namespace A128432

/-- `A008683(∑[char[∑[n]]])*A054521(n+1)` -/
def P362584722852323284.Spec : Prop :=
  ∀ n, P362584722852323284.a n = A128432 (n + 1)

end A128432

/-! ## A128432.P2968081966970189810

`A008683(∑[char[∑[n]]]²/A054531(n+1))`
-/

namespace A128432.P2968081966970189810
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (A054531 (n + 1) : ℚ))).toNat

end

end A128432.P2968081966970189810

namespace A128432

/-- `A008683(∑[char[∑[n]]]²/A054531(n+1))` -/
def P2968081966970189810.Spec : Prop :=
  ∀ n, P2968081966970189810.a n = A128432 (n + 1)

end A128432

/-! ## A128432.P9000875571933701423

`A054521(n+1)*A134842(n+1)`
-/

namespace A128432.P9000875571933701423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A134842 (n + 1)

end

end A128432.P9000875571933701423

namespace A128432

/-- `A054521(n+1)*A134842(n+1)` -/
def P9000875571933701423.Spec : Prop :=
  ∀ n, P9000875571933701423.a n = A128432 (n + 1)

end A128432

/-! ## A128432.P4590195481289269848

`A134842(n+1)*A349221(n+1)`
-/

namespace A128432.P4590195481289269848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134842 (n + 1) * A349221 (n + 1)

end

end A128432.P4590195481289269848

namespace A128432

/-- `A134842(n+1)*A349221(n+1)` -/
def P4590195481289269848.Spec : Prop :=
  ∀ n, P4590195481289269848.a n = A128432 (n + 1)

end A128432

/-! ## A128432.P3219912563491991216

`and(A127507(n+1), A134842(n+1))`
-/

namespace A128432.P3219912563491991216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127507 (n + 1)) (A134842 (n + 1))

end

end A128432.P3219912563491991216

namespace A128432

/-- `and(A127507(n+1), A134842(n+1))` -/
def P3219912563491991216.Spec : Prop :=
  ∀ n, P3219912563491991216.a n = A128432 (n + 1)

end A128432

/-!
# A128433: Triangle, read by rows, T(n,k) = numerator of the maximum of the k-th Bernstein polynomial of degree n; denominator is A128434.

The programs for A128433, there is no canonical definition to state claims against.
-/

/-! ## A128433.P1078047505744715482

`A051775(n)^A124762(A022166(n))`
-/

namespace A128433.P1078047505744715482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051775 n : ℚ) ^ (A124762 (A022166 n).toNat : ℤ)

end

end A128433.P1078047505744715482

/-! ## A128433.P5519205847593313961

`A240874(n)^A039997(A157149(n))`
-/

namespace A128433.P5519205847593313961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240874 n : ℚ) ^ (A039997 (A157149 n).toNat : ℤ)

end

end A128433.P5519205847593313961

/-! ## A128433.P12622347856995695194

`A001221(A156950(n))^A323473(n)`
-/

namespace A128433.P12622347856995695194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A156950 n).toNat : ℚ) ^ (A323473 n : ℤ)

end

end A128433.P12622347856995695194

/-! ## A128433.P8550620781697932313

`A055642(A134987(n))^A323473(n)`
-/

namespace A128433.P8550620781697932313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055642 (A134987 n).toNat : ℚ) ^ (A323473 n : ℤ)

end

end A128433.P8550620781697932313

/-!
# A128434: Triangle, read by rows, T(n,k) = denominator of the maximum of the k-th Bernstein polynomial of degree n; numerator is A128433.

The programs for A128434, there is no canonical definition to state claims against.
-/

/-! ## A128434.P7599874293517434651

`A106609(A261790(n)^A000196(n))`
-/

namespace A128434.P7599874293517434651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (SequenceMachineLib.roundAway ((A261790 n : ℚ) ^ (A000196 n : ℤ))).toNat

end

end A128434.P7599874293517434651

/-! ## A128434.P11297950889647981158

`A349634(A396840(n)/A318274(n))`
-/

namespace A128434.P11297950889647981158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349634 (SequenceMachineLib.roundAway ((A396840 n : ℚ) / (A318274 n : ℚ))).toNat

end

end A128434.P11297950889647981158

/-! ## A128434.P13536405838070543225

`A028233(A007318(n)^A025786(n))`
-/

namespace A128434.P13536405838070543225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A025786 n : ℤ))).toNat

end

end A128434.P13536405838070543225

/-! ## A128434.P15625987716655657341

`A166352(A143007(n))^A051775(n)`
-/

namespace A128434.P15625987716655657341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166352 (A143007 n).toNat : ℚ) ^ (A051775 n : ℤ)

end

end A128434.P15625987716655657341

/-! ## A128434.P17699140649859396784

`A028233(A007318(n)^A333348(n))`
-/

namespace A128434.P17699140649859396784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A333348 n : ℤ))).toNat

end

end A128434.P17699140649859396784

/-!
# A128436: Primes p such that 2p - 3 and 2p - 1 are twin primes.

The programs for A128436, the canonical program `A128436.P11979391553249365448` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128436 has offset 1).

The definition of A128436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 905 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128436.P16050633171940165892

`p?[A241557(n+2)+1]`
-/

namespace A128436.P16050633171940165892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241557 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128436.P16050633171940165892

namespace A128436

/-- `p?[A241557(n+2)+1]` -/
def P16050633171940165892.Spec : Prop :=
  ∀ n, P16050633171940165892.a n = A128436 (n + 1)

end A128436

/-! ## A128436.P17499417980124706954

`p?[2*A045753(n+1)+1]`
-/

namespace A128436.P17499417980124706954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045753 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128436.P17499417980124706954

namespace A128436

/-- `p?[2*A045753(n+1)+1]` -/
def P17499417980124706954.Spec : Prop :=
  ∀ n, P17499417980124706954.a n = A128436 (n + 1)

end A128436

/-! ## A128436.P11979391553249365448

`p?[A040040(n+1)+1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A128436

/-- `p?[A040040(n+1)+1]` -/
def P11979391553249365448.Spec : Prop :=
  ∀ n, P11979391553249365448.a n = A128436 (n + 1)

theorem P11979391553249365448.correct : P11979391553249365448.Spec := by
  intro n
  simp only [A128436, Nat.add_sub_cancel]

end A128436

/-! ## A128436.P4494681759257511274

`p?[A168497(n+2)+1]`
-/

namespace A128436.P4494681759257511274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128436.P4494681759257511274

namespace A128436

/-- `p?[A168497(n+2)+1]` -/
def P4494681759257511274.Spec : Prop :=
  ∀ n, P4494681759257511274.a n = A128436 (n + 1)

end A128436

/-! ## A128436.P4229941270649413899

`p?[round(A006512(n+1)/2)]`
-/

namespace A128436.P4229941270649413899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006512 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128436.P4229941270649413899

namespace A128436

/-- `p?[round(A006512(n+1)/2)]` -/
def P4229941270649413899.Spec : Prop :=
  ∀ n, P4229941270649413899.a n = A128436 (n + 1)

end A128436

/-! ## A128436.P18082945773639640522

`p?[round(A067829(n+2)/2)]`
-/

namespace A128436.P18082945773639640522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A067829 (n + 2) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128436.P18082945773639640522

namespace A128436

/-- `p?[round(A067829(n+2)/2)]` -/
def P18082945773639640522.Spec : Prop :=
  ∀ n, P18082945773639640522.a n = A128436 (n + 1)

end A128436

/-! ## A128436.P10120090624696604575

`∩[A005382(n+1), A063908(n+1)]`
-/

namespace A128436.P10120090624696604575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128436.P10120090624696604575

namespace A128436

/-- `∩[A005382(n+1), A063908(n+1)]` -/
def P10120090624696604575.Spec : Prop :=
  ∀ n, (P10120090624696604575.a n : ℤ) = A128436 (n + 1)

end A128436

/-! ## A128436.P16798188590583331802

`∩[A063908(n+1), A174568(n+1)]`
-/

namespace A128436.P16798188590583331802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128436.P16798188590583331802

namespace A128436

/-- `∩[A063908(n+1), A174568(n+1)]` -/
def P16798188590583331802.Spec : Prop :=
  ∀ n, (P16798188590583331802.a n : ℤ) = A128436 (n + 1)

end A128436

/-! ## A128436.P10134751325322418626

`∩[A063908(n+1), A265394(n+1)]`
-/

namespace A128436.P10134751325322418626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128436.P10134751325322418626

namespace A128436

/-- `∩[A063908(n+1), A265394(n+1)]` -/
def P10134751325322418626.Spec : Prop :=
  ∀ n, (P10134751325322418626.a n : ℤ) = A128436 (n + 1)

end A128436

/-! ## A128436.P2486339742740213236

`∩[A063908(n+1), A384020(n+1)]`
-/

namespace A128436.P2486339742740213236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128436.P2486339742740213236

namespace A128436

/-- `∩[A063908(n+1), A384020(n+1)]` -/
def P2486339742740213236.Spec : Prop :=
  ∀ n, (P2486339742740213236.a n : ℤ) = A128436 (n + 1)

end A128436

/-! ## A128436.P3028382090875232392

`∩[A063908(n+1), A068080(n+1)]`
-/

namespace A128436.P3028382090875232392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128436.P3028382090875232392

namespace A128436

/-- `∩[A063908(n+1), A068080(n+1)]` -/
def P3028382090875232392.Spec : Prop :=
  ∀ n, (P3028382090875232392.a n : ℤ) = A128436 (n + 1)

end A128436

/-! ## A128436.P956190618861476794

`∩[A005382(n+1), A090670(n+1)]`
-/

namespace A128436.P956190618861476794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128436.P956190618861476794

namespace A128436

/-- `∩[A005382(n+1), A090670(n+1)]` -/
def P956190618861476794.Spec : Prop :=
  ∀ n, (P956190618861476794.a n : ℤ) = A128436 (n + 1)

end A128436

/-! ## A128436.P1634946782809296233

`∩[A063908(n+1), A119681(n+1)]`
-/

namespace A128436.P1634946782809296233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128436.P1634946782809296233

namespace A128436

/-- `∩[A063908(n+1), A119681(n+1)]` -/
def P1634946782809296233.Spec : Prop :=
  ∀ n, (P1634946782809296233.a n : ℤ) = A128436 (n + 1)

end A128436

/-! ## A128436.P2666665958100304484

`∩[A090670(n+1), A265394(n+1)]`
-/

namespace A128436.P2666665958100304484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128436.P2666665958100304484

namespace A128436

/-- `∩[A090670(n+1), A265394(n+1)]` -/
def P2666665958100304484.Spec : Prop :=
  ∀ n, (P2666665958100304484.a n : ℤ) = A128436 (n + 1)

end A128436

/-! ## A128436.P7571917216934925851

`record[A020639(A014574(n+1)/2+1)]`
-/

namespace A128436.P7571917216934925851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128436.P7571917216934925851

namespace A128436

/-- `record[A020639(A014574(n+1)/2+1)]` -/
def P7571917216934925851.Spec : Prop :=
  ∀ n, P7571917216934925851.a n = A128436 (n + 1)

end A128436

/-!
# A128437: a(n) = floor((numerator of H(n))/n), where H(n) = Sum_{k=1..n} 1/k is the n-th harmonic number.

The programs for A128437, the canonical program `A128437.P14087954865165796878` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128437 has offset 1).

The definition of A128437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128437.P14087954865165796878

`floor(A001008(n+1)/(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128437

/-- `floor(A001008(n+1)/(n+1))` -/
def P14087954865165796878.Spec : Prop :=
  ∀ n, P14087954865165796878.a n = A128437 (n + 1)

theorem P14087954865165796878.correct : P14087954865165796878.Spec := by
  intro n
  simp only [A128437, Nat.add_sub_cancel]

end A128437

/-! ## A128437.P13710177066097626737

`floor(∑[1/(n+1)]*A002805(n+1)/(n+1))`
-/

namespace A128437.P13710177066097626737
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) * (A002805 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A128437.P13710177066097626737

namespace A128437

/-- `floor(∑[1/(n+1)]*A002805(n+1)/(n+1))` -/
def P13710177066097626737.Spec : Prop :=
  ∀ n, P13710177066097626737.a n = A128437 (n + 1)

end A128437

/-! ## A128437.P8473157743266996406

`(A001008(n+1)-A126083(n+1))/(n+1)`
-/

namespace A128437.P8473157743266996406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) - A126083 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128437.P8473157743266996406

namespace A128437

/-- `(A001008(n+1)-A126083(n+1))/(n+1)` -/
def P8473157743266996406.Spec : Prop :=
  ∀ n, P8473157743266996406.a n = (A128437 (n + 1) : ℚ)

end A128437

/-! ## A128437.P9902164398121201522

`floor(A213998(∑[n+2]-1)/(n+1))`
-/

namespace A128437.P9902164398121201522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213998 (∑ j ∈ Finset.range (n + 1), f1 j - 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A128437.P9902164398121201522

namespace A128437

/-- `floor(A213998(∑[n+2]-1)/(n+1))` -/
def P9902164398121201522.Spec : Prop :=
  ∀ n, P9902164398121201522.a n = A128437 (n + 1)

end A128437

/-! ## A128437.P14036940092523695950

`floor(A035048(2*(n+1))/(n+1))`
-/

namespace A128437.P14036940092523695950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035048 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A128437.P14036940092523695950

namespace A128437

/-- `floor(A035048(2*(n+1))/(n+1))` -/
def P14036940092523695950.Spec : Prop :=
  ∀ n, P14036940092523695950.a n = A128437 (n + 1)

end A128437

/-!
# A128438: a(n) = floor((denominator of H(n))/n), where H(n) = Sum_{k=1..n} 1/k, the n-th harmonic number.

The programs for A128438, the canonical program `A128438.P1091758002824177893` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128438 has offset 1).

The definition of A128438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128438.P1091758002824177893

`floor(A002944(n+1)/A110566(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A128438

/-- `floor(A002944(n+1)/A110566(n+1))` -/
def P1091758002824177893.Spec : Prop :=
  ∀ n, P1091758002824177893.a n = A128438 (n + 1)

theorem P1091758002824177893.correct : P1091758002824177893.Spec := by
  intro n
  simp only [A128438, Nat.add_sub_cancel]

end A128438

/-! ## A128438.P13820415361408618308

`floor(A027611(n+1)/A120263(n+1))`
-/

namespace A128438.P13820415361408618308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027611 (n + 1) : ℚ) / (A120263 (n + 1) : ℚ)⌋

end

end A128438.P13820415361408618308

namespace A128438

/-- `floor(A027611(n+1)/A120263(n+1))` -/
def P13820415361408618308.Spec : Prop :=
  ∀ n, P13820415361408618308.a n = A128438 (n + 1)

end A128438

/-! ## A128438.P11858142823102032034

`floor(A002805(n+1)/(n+1))`
-/

namespace A128438.P11858142823102032034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002805 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A128438.P11858142823102032034

namespace A128438

/-- `floor(A002805(n+1)/(n+1))` -/
def P11858142823102032034.Spec : Prop :=
  ∀ n, P11858142823102032034.a n = A128438 (n + 1)

end A128438

/-! ## A128438.P5040471165892447408

`floor(A213999(A034856(n+1))/(n+1))`
-/

namespace A128438.P5040471165892447408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213999 (A034856 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A128438.P5040471165892447408

namespace A128438

/-- `floor(A213999(A034856(n+1))/(n+1))` -/
def P5040471165892447408.Spec : Prop :=
  ∀ n, P5040471165892447408.a n = A128438 (n + 1)

end A128438

/-! ## A128438.P11310083218379258716

`floor(A213999(A055998(n))/A120263(n+1))`
-/

namespace A128438.P11310083218379258716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213999 (A055998 n).toNat : ℚ) / (A120263 (n + 1) : ℚ)⌋

end

end A128438.P11310083218379258716

namespace A128438

/-- `floor(A213999(A055998(n))/A120263(n+1))` -/
def P11310083218379258716.Spec : Prop :=
  ∀ n, P11310083218379258716.a n = A128438 (n + 1)

end A128438

/-! ## A128438.P18110454972060391897

`floor(A000142(n)/A056612(n+1))`
-/

namespace A128438.P18110454972060391897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 n : ℚ) / (A056612 (n + 1) : ℚ)⌋

end

end A128438.P18110454972060391897

namespace A128438

/-- `floor(A000142(n)/A056612(n+1))` -/
def P18110454972060391897.Spec : Prop :=
  ∀ n, P18110454972060391897.a n = A128438 (n + 1)

end A128438

/-!
# A128439: a(n) = floor(n*t^n), where t=golden ratio=(1+sqrt(5))/2.

The programs for A128439, the canonical program `A128439.P8824487274448406396` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128439 has offset 1).

The definition of A128439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128439.P8824487274448406396

`ogf((1+3x-3x^3-x^4-x^5)/(1-2x-2x^2+4x^3+2x^4-2x^5-x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128439

/-- `ogf((1+3x-3x^3-x^4-x^5)/(1-2x-2x^2+4x^3+2x^4-2x^5-x^6))` -/
def P8824487274448406396.Spec : Prop :=
  ∀ n, P8824487274448406396.a n = A128439 (n + 1)

theorem P8824487274448406396.correct : P8824487274448406396.Spec := by
  intro n
  simp only [A128439, Nat.add_sub_cancel]

end A128439

/-! ## A128439.P5768758836325665296

`A128440(C(n+1+n+1-1, 2)+n+1)`
-/

namespace A128439.P5768758836325665296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128440 (Nat.choose ((n + 1 + (n + 1) : ℤ) - 1).toNat 2 + (n + 1))

end

end A128439.P5768758836325665296

namespace A128439

/-- `A128440(C(n+1+n+1-1, 2)+n+1)` -/
def P5768758836325665296.Spec : Prop :=
  ∀ n, P5768758836325665296.a n = A128439 (n + 1)

end A128439

/-! ## A128439.P16647532548299137259

`A182614(n+1)-1`
-/

namespace A128439.P16647532548299137259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182614 (n + 1) - 1

end

end A128439.P16647532548299137259

namespace A128439

/-- `A182614(n+1)-1` -/
def P16647532548299137259.Spec : Prop :=
  ∀ n, P16647532548299137259.a n = A128439 (n + 1)

end A128439

/-! ## A128439.P1111506070197494639

`A146005(n+1)-and(1, n)`
-/

namespace A128439.P1111506070197494639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 (n + 1) - (Nat.land 1 n : ℤ)

end

end A128439.P1111506070197494639

namespace A128439

/-- `A146005(n+1)-and(1, n)` -/
def P1111506070197494639.Spec : Prop :=
  ∀ n, P1111506070197494639.a n = A128439 (n + 1)

end A128439

/-! ## A128439.P8881997996407073430

`(n+1)*A000032(n+1)-n%2`
-/

namespace A128439.P8881997996407073430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000032 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A128439.P8881997996407073430

namespace A128439

/-- `(n+1)*A000032(n+1)-n%2` -/
def P8881997996407073430.Spec : Prop :=
  ∀ n, P8881997996407073430.a n = A128439 (n + 1)

end A128439

/-! ## A128439.P11234327262981549186

`(n+1)*∑[A000032(abs(1-n))]-and(1, n)`
-/

namespace A128439.P11234327262981549186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.land 1 n : ℤ)

end

end A128439.P11234327262981549186

namespace A128439

/-- `(n+1)*∑[A000032(abs(1-n))]-and(1, n)` -/
def P11234327262981549186.Spec : Prop :=
  ∀ n, P11234327262981549186.a n = A128439 (n + 1)

end A128439

/-! ## A128439.P16592768099941035480

`A136376(n+1)+A323812(n+2)-1`
-/

namespace A128439.P16592768099941035480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136376 (n + 1) + (A323812 (n + 2) - 1)

end

end A128439.P16592768099941035480

namespace A128439

/-- `A136376(n+1)+A323812(n+2)-1` -/
def P16592768099941035480.Spec : Prop :=
  ∀ n, P16592768099941035480.a n = A128439 (n + 1)

end A128439

/-! ## A128439.P1515401401473396710

`A014217(n+1)+n*A000032(n+1)`
-/

namespace A128439.P1515401401473396710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (n + 1) + (n : ℤ) * A000032 (n + 1)

end

end A128439.P1515401401473396710

namespace A128439

/-- `A014217(n+1)+n*A000032(n+1)` -/
def P1515401401473396710.Spec : Prop :=
  ∀ n, P1515401401473396710.a n = A128439 (n + 1)

end A128439

/-! ## A128439.P10531186957850223949

`A014217(n+1)+n*A169985(n+1)`
-/

namespace A128439.P10531186957850223949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (n + 1) + (n : ℤ) * A169985 (n + 1)

end

end A128439.P10531186957850223949

namespace A128439

/-- `A014217(n+1)+n*A169985(n+1)` -/
def P10531186957850223949.Spec : Prop :=
  ∀ n, P10531186957850223949.a n = A128439 (n + 1)

end A128439

/-! ## A128439.P7238026551138101366

`(A001610(n)+1)*(n+1)+1-A176895(2*n)`
-/

namespace A128439.P7238026551138101366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001610 n + 1) * (n + 1 : ℤ) + 1 - A176895 (2 * n)

end

end A128439.P7238026551138101366

namespace A128439

/-- `(A001610(n)+1)*(n+1)+1-A176895(2*n)` -/
def P7238026551138101366.Spec : Prop :=
  ∀ n, P7238026551138101366.a n = A128439 (n + 1)

end A128439

/-! ## A128439.P5917814440141219362

`(n+1)*A000032(n+1)-val(A020639(n+1), 2)`
-/

namespace A128439.P5917814440141219362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000032 (n + 1) - (SequenceMachineLib.valuation (A020639 (n + 1)).toNat 2 : ℤ)

end

end A128439.P5917814440141219362

namespace A128439

/-- `(n+1)*A000032(n+1)-val(A020639(n+1), 2)` -/
def P5917814440141219362.Spec : Prop :=
  ∀ n, P5917814440141219362.a n = A128439 (n + 1)

end A128439

/-! ## A128439.P7586143632073964178

`(n+1)*A000032(n+1)-A001222(gcd(n+1, n-1))`
-/

namespace A128439.P7586143632073964178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000032 (n + 1) - A001222 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1))

end

end A128439.P7586143632073964178

namespace A128439

/-- `(n+1)*A000032(n+1)-A001222(gcd(n+1, n-1))` -/
def P7586143632073964178.Spec : Prop :=
  ∀ n, P7586143632073964178.a n = A128439 (n + 1)

end A128439

/-!
# A128440: Array T(n,k) = floor(k*r^n) where r = golden ratio = (1 + sqrt(5))/2, read by descending antidiagonals.

The programs for A128440, there is no canonical definition to state claims against.
-/

/-! ## A128440.P138258542600342884

`A182801(A080036(n+1))-A182801(n+1)`
-/

namespace A128440.P138258542600342884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182801 (A080036 (n + 1)).toNat - A182801 (n + 1)

end

end A128440.P138258542600342884

/-! ## A128440.P11007783228637973899

`A182801(A014132(n+1)+1)-A182801(n+1)`
-/

namespace A128440.P11007783228637973899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182801 (A014132 (n + 1) + 1).toNat - A182801 (n + 1)

end

end A128440.P11007783228637973899

/-! ## A128440.P9134372430646378961

`A182801(A133196(n+1)+n)-A182801(n+1)`
-/

namespace A128440.P9134372430646378961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182801 (A133196 (n + 1) + (n : ℤ)).toNat - A182801 (n + 1)

end

end A128440.P9134372430646378961

/-!
# A128441: a(n)=Floor(n*2^(n/2)).

The programs for A128441, the canonical program `A128441.P16745662492227268924` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128441 has offset 1).

The definition of A128441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128441.P16745662492227268924

`floor((n+1)*2^((n+1)/2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128441

/-- `floor((n+1)*2^((n+1)/2))` -/
def P16745662492227268924.Spec : Prop :=
  ∀ n, P16745662492227268924.a n = A128441 (n + 1)

theorem P16745662492227268924.correct : P16745662492227268924.Spec := by
  intro n
  simp only [A128441, Nat.add_sub_cancel]

end A128441

/-! ## A128441.P13656306213452492561

`A000007(n+1)+floor(sqrt(2*A014477(n)))`
-/

namespace A128441.P13656306213452492561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (2 * A014477 n)

end

end A128441.P13656306213452492561

namespace A128441

/-- `A000007(n+1)+floor(sqrt(2*A014477(n)))` -/
def P13656306213452492561.Spec : Prop :=
  ∀ n, P13656306213452492561.a n = A128441 (n + 1)

end A128441

/-! ## A128441.P15733119248258934302

`floor(sqrt(2*A014477(n)))*A001511(2*n+1)`
-/

namespace A128441.P15733119248258934302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A014477 n) * A001511 (2 * n + 1)

end

end A128441.P15733119248258934302

namespace A128441

/-- `floor(sqrt(2*A014477(n)))*A001511(2*n+1)` -/
def P15733119248258934302.Spec : Prop :=
  ∀ n, P15733119248258934302.a n = A128441 (n + 1)

end A128441

/-! ## A128441.P1319294304671081890

`A008683(4*(n+1))+floor(sqrt(2*A014477(n)))`
-/

namespace A128441.P1319294304671081890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + Int.sqrt (2 * A014477 n)

end

end A128441.P1319294304671081890

namespace A128441

/-- `A008683(4*(n+1))+floor(sqrt(2*A014477(n)))` -/
def P1319294304671081890.Spec : Prop :=
  ∀ n, P1319294304671081890.a n = A128441 (n + 1)

end A128441

/-! ## A128441.P11675999606421327873

`A128442((n+1)²+n²)`
-/

namespace A128441.P11675999606421327873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128442 ((n + 1) ^ 2 + n ^ 2)

end

end A128441.P11675999606421327873

namespace A128441

/-- `A128442((n+1)²+n²)` -/
def P11675999606421327873.Spec : Prop :=
  ∀ n, P11675999606421327873.a n = A128441 (n + 1)

end A128441

/-!
# A128442: Array T by antidiagonals: T(n,k)=Floor(k*2^(n/2)).

The programs for A128442, the canonical program `A128442.P11268185327801572080` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128442 has offset 1).

The definition of A128442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((row(n)-col(n)+1)*2^((col(n)+1)/2))` (program `A128442.P11268185327801572080`, by `A128442.P11268185327801572080.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128442.P11268185327801572080

`floor((row(n)-col(n)+1)*2^((col(n)+1)/2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128442

/-- `floor((row(n)-col(n)+1)*2^((col(n)+1)/2))` -/
def P11268185327801572080.Spec : Prop :=
  ∀ n, P11268185327801572080.a n = A128442 (n + 1)

theorem P11268185327801572080.correct : P11268185327801572080.Spec := by
  intro n
  simp only [A128442, Nat.add_sub_cancel]

end A128442

/-! ## A128442.P9107916068546693453

`A172471(A055461(n+1)*A059268(n))`
-/

namespace A128442.P9107916068546693453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A055461 (n + 1) * A059268 n).toNat

end

end A128442.P9107916068546693453

namespace A128442

/-- `A172471(A055461(n+1)*A059268(n))` -/
def P9107916068546693453.Spec : Prop :=
  ∀ n, P9107916068546693453.a n = A128442 (n + 1)

end A128442

/-! ## A128442.P4789127085343546641

`A172471(A004736(n+1)*A130128(n+1))`
-/

namespace A128442.P4789127085343546641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A004736 (n + 1) * A130128 (n + 1)).toNat

end

end A128442.P4789127085343546641

namespace A128442

/-- `A172471(A004736(n+1)*A130128(n+1))` -/
def P4789127085343546641.Spec : Prop :=
  ∀ n, P4789127085343546641.a n = A128442 (n + 1)

end A128442

/-! ## A128442.P9679160789205417478

`A000196(2*A055461(n+1)*A059268(n))`
-/

namespace A128442.P9679160789205417478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * (A055461 (n + 1) * A059268 n)).toNat

end

end A128442.P9679160789205417478

namespace A128442

/-- `A000196(2*A055461(n+1)*A059268(n))` -/
def P9679160789205417478.Spec : Prop :=
  ∀ n, P9679160789205417478.a n = A128442 (n + 1)

end A128442

/-! ## A128442.P600645496401420158

`A000196(A005843(A055461(n+1)*A059268(n)))`
-/

namespace A128442.P600645496401420158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005843 (A055461 (n + 1) * A059268 n).toNat).toNat

end

end A128442.P600645496401420158

namespace A128442

/-- `A000196(A005843(A055461(n+1)*A059268(n)))` -/
def P600645496401420158.Spec : Prop :=
  ∀ n, P600645496401420158.a n = A128442 (n + 1)

end A128442

/-!
# A128443: a(n) = floor(n*3^(n/2)).

The programs for A128443, the canonical program `A128443.P4489455397236858344` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128443 has offset 1).

The definition of A128443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*3^((n+1)/2))` (program `A128443.P4489455397236858344`, by `A128443.P4489455397236858344.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128443.P4489455397236858344

`floor((n+1)*3^((n+1)/2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128443

/-- `floor((n+1)*3^((n+1)/2))` -/
def P4489455397236858344.Spec : Prop :=
  ∀ n, P4489455397236858344.a n = A128443 (n + 1)

theorem P4489455397236858344.correct : P4489455397236858344.Spec := by
  intro n
  simp only [A128443, Nat.add_sub_cancel]

end A128443

/-! ## A128443.P18115140291773873686

`A128444(C(n+1+n+1-1, 2)+n+1)`
-/

namespace A128443.P18115140291773873686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128444 (Nat.choose ((n + 1 + (n + 1) : ℤ) - 1).toNat 2 + (n + 1))

end

end A128443.P18115140291773873686

namespace A128443

/-- `A128444(C(n+1+n+1-1, 2)+n+1)` -/
def P18115140291773873686.Spec : Prop :=
  ∀ n, P18115140291773873686.a n = A128443 (n + 1)

end A128443

/-! ## A128443.P16586039516468193450

`A128444((n+1)²+n²)`
-/

namespace A128443.P16586039516468193450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128444 ((n + 1) ^ 2 + n ^ 2)

end

end A128443.P16586039516468193450

namespace A128443

/-- `A128444((n+1)²+n²)` -/
def P16586039516468193450.Spec : Prop :=
  ∀ n, P16586039516468193450.a n = A128443 (n + 1)

end A128443

/-! ## A128443.P10364506629849647160

`record[gcd(A114327(n), A128444(n+1))]`
-/

namespace A128443.P10364506629849647160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A128444 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128443.P10364506629849647160

namespace A128443

/-- `record[gcd(A114327(n), A128444(n+1))]` -/
def P10364506629849647160.Spec : Prop :=
  ∀ n, (P10364506629849647160.a n : ℤ) = A128443 (n + 1)

end A128443

/-! ## A128443.P8799084670067002795

`A008683(A006881(n+1))*A128444(A001844(n))`
-/

namespace A128443.P8799084670067002795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006881 (n + 1)).toNat * A128444 (A001844 n).toNat

end

end A128443.P8799084670067002795

namespace A128443

/-- `A008683(A006881(n+1))*A128444(A001844(n))` -/
def P8799084670067002795.Spec : Prop :=
  ∀ n, P8799084670067002795.a n = A128443 (n + 1)

end A128443

/-! ## A128443.P1443418819891403101

`A128444(A001844(n))*A277027(A179295(n+1))`
-/

namespace A128443.P1443418819891403101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128444 (A001844 n).toNat * A277027 (A179295 (n + 1)).toNat

end

end A128443.P1443418819891403101

namespace A128443

/-- `A128444(A001844(n))*A277027(A179295(n+1))` -/
def P1443418819891403101.Spec : Prop :=
  ∀ n, P1443418819891403101.a n = A128443 (n + 1)

end A128443

/-!
# A128444: Array T by antidiagonals: T(n,k)=Floor(k*3^(n/2)).

The programs for A128444, the canonical program `A128444.P16435310094230390278` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128444 has offset 1).

The definition of A128444 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((row(n)-col(n)+1)*3^((col(n)+1)/2))` (program `A128444.P16435310094230390278`, by `A128444.P16435310094230390278.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128444.P16435310094230390278

`floor((row(n)-col(n)+1)*3^((col(n)+1)/2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128444

/-- `floor((row(n)-col(n)+1)*3^((col(n)+1)/2))` -/
def P16435310094230390278.Spec : Prop :=
  ∀ n, P16435310094230390278.a n = A128444 (n + 1)

theorem P16435310094230390278.correct : P16435310094230390278.Spec := by
  intro n
  simp only [A128444, Nat.add_sub_cancel]

end A128444

/-!
# A128445: Number of facets of the Alternating Sign Matrix polytope ASM(n).

The programs for A128445, the canonical program `A128445.P8022496593047922122` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128445 has offset 0).

The definition of A128445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128445.P8022496593047922122

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=8, a(4)=20, a(5)=40`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128445

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8022496593047922122.Spec : Prop :=
  ∀ n, P8022496593047922122.a n = A128445 n

theorem P8022496593047922122.correct : P8022496593047922122.Spec := by
  intro n
  simp only [A128445]

end A128445

/-! ## A128445.P9194602077347501628

`ogf((1-2x+2x^2+4x^3+x^4+2x^5)/(1-3x+3x^2-x^3))`
-/

namespace A128445.P9194602077347501628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, 4, 1, 2] [1, -3, 3, -1] n

end

end A128445.P9194602077347501628

namespace A128445

/-- `ogf((1-2x+2x^2+4x^3+x^4+2x^5)/(1-3x+3x^2-x^3))` -/
def P9194602077347501628.Spec : Prop :=
  ∀ n, P9194602077347501628.a n = A128445 n

end A128445

/-!
# A128454: Numbers k such that the absolute value of 14^k - k^14 is prime.

The programs for A128454, there is no canonical definition to state claims against.
-/

/-! ## A128454.P4198004579535935000

`A116641(gcd(n, ∑[n])*∑[n])`
-/

namespace A128454.P4198004579535935000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116641 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A128454.P4198004579535935000

/-!
# A128455: Numbers k such that 9^k - 2 is a prime.

The programs for A128455, there is no canonical definition to state claims against.
-/

/-! ## A128455.P16655265091227514263

`record[A273943(A014224(n+1))]`
-/

namespace A128455.P16655265091227514263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A014224 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128455.P16655265091227514263

/-! ## A128455.P16981280677543963079

`record[A078898(A014224(n+1))]`
-/

namespace A128455.P16981280677543963079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A014224 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128455.P16981280677543963079

/-! ## A128455.P5942765070252254257

`record[A001057(A014224(n+1)-1)]`
-/

namespace A128455.P5942765070252254257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A014224 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128455.P5942765070252254257

/-! ## A128455.P6445425672914050692

`record[A003602(A014224(n+1)-1)]`
-/

namespace A128455.P6445425672914050692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A014224 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128455.P6445425672914050692

/-! ## A128455.P16070338347665968866

`eq[2, A013604(A004277(n))]`
-/

namespace A128455.P16070338347665968866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013604 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128455.P16070338347665968866

/-!
# A128456: Quotients A128452(p+1)/p for prime p = A000040(n).

The programs for A128456, there is no canonical definition to state claims against.
-/

/-! ## A128456.P8507955711244226342

`A128452(A000040(n+1)+1)/A000040(n+1)`
-/

namespace A128456.P8507955711244226342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128452 (A000040 (n + 1) + 1).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A128456.P8507955711244226342

/-! ## A128456.P16864642234817337982

`A128452(A008864(n+1))/Δ[A007504(n)]`
-/

namespace A128456.P16864642234817337982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128452 (A008864 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A128456.P16864642234817337982

/-! ## A128456.P5247793218207398661

`A128452(A008864(n+1))/p?[A259153(n)]`
-/

namespace A128456.P5247793218207398661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128452 (A008864 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A128456.P5247793218207398661

/-! ## A128456.P8646385636280595120

`A128452(A008864(n+1))/sqrt(A001248(n+1))`
-/

namespace A128456.P8646385636280595120
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A128452 (A008864 (n + 1)).toNat : ℝ) / Real.sqrt (A001248 (n + 1) : ℝ)

end

end A128456.P8646385636280595120

/-! ## A128456.P8103512000873227729

`A128452(A008864(n+1))/(A006093(n+1)+1)`
-/

namespace A128456.P8103512000873227729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128452 (A008864 (n + 1)).toNat : ℚ) / (A006093 (n + 1) + 1 : ℚ)

end

end A128456.P8103512000873227729

/-!
# A128459: Numbers k such that 17^k - 2 is a prime.

The programs for A128459, there is no canonical definition to state claims against.
-/

/-! ## A128459.P1936093792976779929

`A345919(A091924(n+2)-A240808(n))`
-/

namespace A128459.P1936093792976779929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345919 (A091924 (n + 2) - A240808 n).toNat

end

end A128459.P1936093792976779929

/-!
# A128460: Numbers k such that 19^k - 2 is a prime.

The programs for A128460, there is no canonical definition to state claims against.
-/

/-! ## A128460.P15314178806876885508

`eq[A033665(A312560(n)), A303906(n)]`
-/

namespace A128460.P15314178806876885508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A312560 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128460.P15314178806876885508

/-!
# A128462: Nontrivial products of two lucky numbers.

The programs for A128462, there is no canonical definition to state claims against.
-/

/-! ## A128462.P5124950878621109359

`A128530(A077168(n))/3`
-/

namespace A128462.P5124950878621109359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128530 (A077168 n).toNat : ℚ) / 3

end

end A128462.P5124950878621109359

/-! ## A128462.P3115603064360281032

`(A128530(n+1)/3)%A125038(n+1)`
-/

namespace A128462.P3115603064360281032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A128530 (n + 1) : ℚ) / 3)) (A125038 (n + 1))

end

end A128462.P3115603064360281032

/-! ## A128462.P7692210087137066790

`A128530(n+1)%A128565(2*(n+2))/3`
-/

namespace A128462.P7692210087137066790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A128530 (n + 1)) (A128565 (2 * (n + 2))) : ℚ) / 3

end

end A128462.P7692210087137066790

/-! ## A128462.P11857248798846469041

`A128530(n+1)/A020639(A128530(n+1)²)`
-/

namespace A128462.P11857248798846469041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128530 (n + 1) : ℚ) / (A020639 (A128530 (n + 1) ^ 2).toNat : ℚ)

end

end A128462.P11857248798846469041

/-!
# A128464: Numbers that are congruent to {11, 17, 29} mod 30.

The programs for A128464, the canonical program `A128464.P9918511672954785375` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128464 has offset 1).

The definition of A128464 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A128464.anchor (n : ℕ) (hn : 1 ≤ n) : A128464 n = (Nat.nth (fun k => k % 30 ∈ ({11, 17, 29} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A128.A128464`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128464.P11750820999105391953

`ogf((11+6x+12x^2+x^3)/(1-x-x^3+x^4))`
-/

namespace A128464.P11750820999105391953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 6, 12, 1] [1, -1, 0, -1, 1] n

end

end A128464.P11750820999105391953

namespace A128464

/-- `ogf((11+6x+12x^2+x^3)/(1-x-x^3+x^4))` -/
def P11750820999105391953.Spec : Prop :=
  ∀ n, P11750820999105391953.a n = A128464 (n + 1)

end A128464

/-! ## A128464.P9918511672954785375

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=11, a(1)=17, a(2)=29, a(3)=41`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128464

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P9918511672954785375.Spec : Prop :=
  ∀ n, P9918511672954785375.a n = A128464 (n + 1)

theorem P9918511672954785375.correct : P9918511672954785375.Spec := by
  intro n
  simp only [A128464, Nat.add_sub_cancel]

end A128464

/-! ## A128464.P10066182622677585957

`10*(n+1)-1+4*sin(2*(n+1)*π/3)/sqrt(3)`
-/

namespace A128464.P10066182622677585957
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) : ℤ) - 1 : ℝ) + 4 * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3) / Real.sqrt (3 : ℝ)

end

end A128464.P10066182622677585957

namespace A128464

/-- `10*(n+1)-1+4*sin(2*(n+1)*π/3)/sqrt(3)` -/
def P10066182622677585957.Spec : Prop :=
  ∀ n, P10066182622677585957.a n = (A128464 (n + 1) : ℝ)

end A128464

/-! ## A128464.P13820711910504521764

`a(n-3)+30` with `a(0)=11, a(1)=17, a(2)=29`
-/

namespace A128464.P13820711910504521764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11, 17, 29] fun n a =>
  a (n - 3) + 30

end

end A128464.P13820711910504521764

namespace A128464

/-- `a(n-3)+30` -/
def P13820711910504521764.Spec : Prop :=
  ∀ n, (P13820711910504521764.a n : ℤ) = A128464 (n + 1)

end A128464

/-! ## A128464.P11360625637265738630

`∑[floor(a(n-3))]` with `a(0)=11, a(1)=6, a(2)=12, a(3)=12`

`floor` is left out, it is the identity on integers.
-/

namespace A128464.P11360625637265738630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 6, 12, 12] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128464.P11360625637265738630

namespace A128464

/-- `∑[floor(a(n-3))]` -/
def P11360625637265738630.Spec : Prop :=
  ∀ n, (P11360625637265738630.a n : ℤ) = A128464 (n + 1)

end A128464

/-! ## A128464.P1292820427561655155

`6*comp[ceil(n/2)+2*n]+5`
-/

namespace A128464.P1292820427561655155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 5

end

end A128464.P1292820427561655155

namespace A128464

/-- `6*comp[ceil(n/2)+2*n]+5` -/
def P1292820427561655155.Spec : Prop :=
  ∀ n, (P1292820427561655155.a n : ℤ) = A128464 (n + 1)

end A128464

/-! ## A128464.P10167864406305067405

`A016969(A032793(n+1))`
-/

namespace A128464.P10167864406305067405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A032793 (n + 1)).toNat

end

end A128464.P10167864406305067405

namespace A128464

/-- `A016969(A032793(n+1))` -/
def P10167864406305067405.Spec : Prop :=
  ∀ n, P10167864406305067405.a n = A128464 (n + 1)

end A128464

/-! ## A128464.P12747876448903015674

`A016969(A106251(n)+ceil(7*n/6))`
-/

namespace A128464.P12747876448903015674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A106251 n + ⌈7 * ((n : ℚ) / 6)⌉).toNat

end

end A128464.P12747876448903015674

namespace A128464

/-- `A016969(A106251(n)+ceil(7*n/6))` -/
def P12747876448903015674.Spec : Prop :=
  ∀ n, P12747876448903015674.a n = A128464 (n + 1)

end A128464

/-! ## A128464.P12559082774936019216

`A016969(A103221(n)+A007494(n))`
-/

namespace A128464.P12559082774936019216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A103221 n + A007494 n).toNat

end

end A128464.P12559082774936019216

namespace A128464

/-- `A016969(A103221(n)+A007494(n))` -/
def P12559082774936019216.Spec : Prop :=
  ∀ n, P12559082774936019216.a n = A128464 (n + 1)

end A128464

/-! ## A128464.P227733973169395347

`A016969(A002264(2*n)+n+1)`
-/

namespace A128464.P227733973169395347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A002264 (2 * n) + (n + 1 : ℤ)).toNat

end

end A128464.P227733973169395347

namespace A128464

/-- `A016969(A002264(2*n)+n+1)` -/
def P227733973169395347.Spec : Prop :=
  ∀ n, P227733973169395347.a n = A128464 (n + 1)

end A128464

/-! ## A128464.P16497488493940772225

`A016969(2*n+1-A008615(2*n))`
-/

namespace A128464.P16497488493940772225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 ((2 * n + 1 : ℤ) - A008615 (2 * n)).toNat

end

end A128464.P16497488493940772225

namespace A128464

/-- `A016969(2*n+1-A008615(2*n))` -/
def P16497488493940772225.Spec : Prop :=
  ∀ n, P16497488493940772225.a n = A128464 (n + 1)

end A128464

/-! ## A128464.P14741107815031189445

`A230462(2*(n+1))`
-/

namespace A128464.P14741107815031189445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (2 * (n + 1))

end

end A128464.P14741107815031189445

namespace A128464

/-- `A230462(2*(n+1))` -/
def P14741107815031189445.Spec : Prop :=
  ∀ n, P14741107815031189445.a n = A128464 (n + 1)

end A128464

/-! ## A128464.P5053330961659108775

`∩[A230462(n+1), A016969(n)]`
-/

namespace A128464.P5053330961659108775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128464.P5053330961659108775

namespace A128464

/-- `∩[A230462(n+1), A016969(n)]` -/
def P5053330961659108775.Spec : Prop :=
  ∀ n, (P5053330961659108775.a n : ℤ) = A128464 (n + 1)

end A128464

/-! ## A128464.P8466277001417957814

`A016969(A087504(2*n+1)+n)`
-/

namespace A128464.P8466277001417957814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A087504 (2 * n + 1) + (n : ℤ)).toNat

end

end A128464.P8466277001417957814

namespace A128464

/-- `A016969(A087504(2*n+1)+n)` -/
def P8466277001417957814.Spec : Prop :=
  ∀ n, P8466277001417957814.a n = A128464 (n + 1)

end A128464

/-! ## A128464.P18050826594716169683

`∩[A230462(n+2)-2, A230462(n+2)]`
-/

namespace A128464.P18050826594716169683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128464.P18050826594716169683

namespace A128464

/-- `∩[A230462(n+2)-2, A230462(n+2)]` -/
def P18050826594716169683.Spec : Prop :=
  ∀ n, (P18050826594716169683.a n : ℤ) = A128464 (n + 1)

end A128464

/-! ## A128464.P14362599371991892187

`∩[A084088(n+1), A230462(n+1)]`
-/

namespace A128464.P14362599371991892187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128464.P14362599371991892187

namespace A128464

/-- `∩[A084088(n+1), A230462(n+1)]` -/
def P14362599371991892187.Spec : Prop :=
  ∀ n, (P14362599371991892187.a n : ℤ) = A128464 (n + 1)

end A128464

/-! ## A128464.P836091534273725074

`∩[A230462(n+1), A347838(n+1)]`
-/

namespace A128464.P836091534273725074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128464.P836091534273725074

namespace A128464

/-- `∩[A230462(n+1), A347838(n+1)]` -/
def P836091534273725074.Spec : Prop :=
  ∀ n, (P836091534273725074.a n : ℤ) = A128464 (n + 1)

end A128464

/-! ## A128464.P6065769547063043530

`A007775(A008576(n+1))`
-/

namespace A128464.P6065769547063043530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (A008576 (n + 1)).toNat

end

end A128464.P6065769547063043530

namespace A128464

/-- `A007775(A008576(n+1))` -/
def P6065769547063043530.Spec : Prop :=
  ∀ n, P6065769547063043530.a n = A128464 (n + 1)

end A128464

/-! ## A128464.P7807898185409759440

`A070884(A047400(n+1))`
-/

namespace A128464.P7807898185409759440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 (A047400 (n + 1)).toNat

end

end A128464.P7807898185409759440

namespace A128464

/-- `A070884(A047400(n+1))` -/
def P7807898185409759440.Spec : Prop :=
  ∀ n, P7807898185409759440.a n = A128464 (n + 1)

end A128464

/-! ## A128464.P6012068927767563416

`A260714(A047539(n+1))`
-/

namespace A128464.P6012068927767563416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260714 (A047539 (n + 1)).toNat

end

end A128464.P6012068927767563416

namespace A128464

/-- `A260714(A047539(n+1))` -/
def P6012068927767563416.Spec : Prop :=
  ∀ n, P6012068927767563416.a n = A128464 (n + 1)

end A128464

/-!
# A128465: Numbers k such that k divides the numerator of alternating Harmonic number H'((k+1)/2) = A058313((k+1)/2).

The programs for A128465, there is no canonical definition to state claims against.
-/

/-! ## A128465.P2546796811728625589

`record[gcd(A025888(n), A353141(n+1))]`
-/

namespace A128465.P2546796811728625589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025888 n) (A353141 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128465.P2546796811728625589

/-!
# A128467: a(n) = 30*n + 11.

The programs for A128467, the canonical program `A128467.P11153432816329335315` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128467 has offset 0).

The definition of A128467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*n+11` (program `A128467.P11153432816329335315`, by `A128467.P11153432816329335315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128467.P11153432816329335315

`30*n+11`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128467

/-- `30*n+11` -/
def P11153432816329335315.Spec : Prop :=
  ∀ n, (P11153432816329335315.a n : ℤ) = A128467 n

theorem P11153432816329335315.correct : P11153432816329335315.Spec := by
  intro n
  simp only [A128467]

end A128467

/-!
# A128468: a(n) = 30*n + 17.

The programs for A128468, the canonical program `A128468.P7859043567182606606` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128468 has offset 0).

The definition of A128468 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*n+17` (program `A128468.P7859043567182606606`, by `A128468.P7859043567182606606.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128468.P7859043567182606606

`30*n+17`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128468

/-- `30*n+17` -/
def P7859043567182606606.Spec : Prop :=
  ∀ n, (P7859043567182606606.a n : ℤ) = A128468 n

theorem P7859043567182606606.correct : P7859043567182606606.Spec := by
  intro n
  simp only [A128468]

end A128468

/-!
# A128469: Numbers of the form 30k+29 or possible lower bounds of twin primes pairs ending in 9.

The programs for A128469, there is no canonical definition to state claims against.
-/

/-! ## A128469.P15304568976500352369

`30*n+29`
-/

namespace A128469.P15304568976500352369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 29

end

end A128469.P15304568976500352369

/-!
# A128470: a(n) = 30*n + 1.

The programs for A128470, the canonical program `A128470.P10965648030212547878` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128470 has offset 0).

The definition of A128470 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*n+1` (program `A128470.P10965648030212547878`, by `A128470.P10965648030212547878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128470.P10965648030212547878

`30*n+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128470

/-- `30*n+1` -/
def P10965648030212547878.Spec : Prop :=
  ∀ n, (P10965648030212547878.a n : ℤ) = A128470 n

theorem P10965648030212547878.correct : P10965648030212547878.Spec := by
  intro n
  simp only [A128470]

end A128470

/-!
# A128471: a(n) = 30*n + 7.

The programs for A128471, the canonical program `A128471.P15728440100239871785` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128471 has offset 0).

The definition of A128471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*n+7` (program `A128471.P15728440100239871785`, by `A128471.P15728440100239871785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128471.P15728440100239871785

`30*n+7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128471

/-- `30*n+7` -/
def P15728440100239871785.Spec : Prop :=
  ∀ n, (P15728440100239871785.a n : ℤ) = A128471 n

theorem P15728440100239871785.correct : P15728440100239871785.Spec := by
  intro n
  simp only [A128471]

end A128471

/-!
# A128473: Numbers of the form 30*k+23 or numbers that cannot be part of a twin prime pair.

The programs for A128473, the canonical program `A128473.P5922218971527117777` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128473 has offset 1).

The definition of A128473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128473.P5922218971527117777

`30*n+23`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128473

/-- `30*n+23` -/
def P5922218971527117777.Spec : Prop :=
  ∀ n, (P5922218971527117777.a n : ℤ) = A128473 (n + 1)

theorem P5922218971527117777.correct : P5922218971527117777.Spec := by
  intro n
  simp only [A128473, Nat.add_sub_cancel]

end A128473

/-!
# A128474: Largest number k such that 2^k divides n*(n-3)!.

The programs for A128474, the canonical program `A128474.P6134518486314641698` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128474 has offset 3).

The definition of A128474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128474.P3077082694261481381

`val(n+3, 2)+n+3-3-A000120(n)`
-/

namespace A128474.P3077082694261481381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 3) 2 + (n + 3) : ℤ) - 3 - A000120 n

end

end A128474.P3077082694261481381

namespace A128474

/-- `val(n+3, 2)+n+3-3-A000120(n)` -/
def P3077082694261481381.Spec : Prop :=
  ∀ n, P3077082694261481381.a n = A128474 (n + 3)

end A128474

/-! ## A128474.P6134518486314641698

`A007814(n+3)+A011371(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A128474

/-- `A007814(n+3)+A011371(n)` -/
def P6134518486314641698.Spec : Prop :=
  ∀ n, P6134518486314641698.a n = A128474 (n + 3)

theorem P6134518486314641698.correct : P6134518486314641698.Spec := by
  intro n
  simp only [A128474, Nat.add_sub_cancel]

end A128474

/-! ## A128474.P2897411616903166796

`∑[∑{e}[or(n, -n), #]]+val(n+3, 2)`
-/

namespace A128474.P2897411616903166796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.valuation (n + 3) 2

end

end A128474.P2897411616903166796

namespace A128474

/-- `∑[∑{e}[or(n, -n), #]]+val(n+3, 2)` -/
def P2897411616903166796.Spec : Prop :=
  ∀ n, (P2897411616903166796.a n : ℤ) = A128474 (n + 3)

end A128474

/-! ## A128474.P10475118707840516150

`val(n+3, 2)+(∑[∏{e}[xor(n, -n), #]]-1-n)%(n+1)`
-/

namespace A128474.P10475118707840516150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 3) 2 : ℤ) + Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - (n : ℤ)) (n + 1 : ℤ)

end

end A128474.P10475118707840516150

namespace A128474

/-- `val(n+3, 2)+(∑[∏{e}[xor(n, -n), #]]-1-n)%(n+1)` -/
def P10475118707840516150.Spec : Prop :=
  ∀ n, P10475118707840516150.a n = A128474 (n + 3)

end A128474

/-! ## A128474.P11146105752311732116

`val(n+3, 2)+n-A000120(n)`
-/

namespace A128474.P11146105752311732116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 3) 2 : ℤ) + ((n : ℤ) - A000120 n)

end

end A128474.P11146105752311732116

namespace A128474

/-- `val(n+3, 2)+n-A000120(n)` -/
def P11146105752311732116.Spec : Prop :=
  ∀ n, P11146105752311732116.a n = A128474 (n + 3)

end A128474

/-! ## A128474.P4509435253692088801

`val(n+3, 2)+A005187(n)-n`
-/

namespace A128474.P4509435253692088801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 3) 2 : ℤ) + (A005187 n - (n : ℤ))

end

end A128474.P4509435253692088801

namespace A128474

/-- `val(n+3, 2)+A005187(n)-n` -/
def P4509435253692088801.Spec : Prop :=
  ∀ n, P4509435253692088801.a n = A128474 (n + 3)

end A128474

/-! ## A128474.P17448597765244049176

`Δ[A050603(n)]+∑[val(n+1, 2)]`
-/

namespace A128474.P17448597765244049176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A128474.P17448597765244049176

namespace A128474

/-- `Δ[A050603(n)]+∑[val(n+1, 2)]` -/
def P17448597765244049176.Spec : Prop :=
  ∀ n, P17448597765244049176.a n = A128474 (n + 3)

end A128474

/-! ## A128474.P12126774006162205486

`val(n+3, 2)+n-A001222(A048883(n))`
-/

namespace A128474.P12126774006162205486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 3) 2 : ℤ) + ((n : ℤ) - A001222 (A048883 n).toNat)

end

end A128474.P12126774006162205486

namespace A128474

/-- `val(n+3, 2)+n-A001222(A048883(n))` -/
def P12126774006162205486.Spec : Prop :=
  ∀ n, P12126774006162205486.a n = A128474 (n + 3)

end A128474

/-! ## A128474.P8842199012073844403

`A011371(n)+A001222(A006519(n+3))`
-/

namespace A128474.P8842199012073844403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + A001222 (A006519 (n + 3)).toNat

end

end A128474.P8842199012073844403

namespace A128474

/-- `A011371(n)+A001222(A006519(n+3))` -/
def P8842199012073844403.Spec : Prop :=
  ∀ n, P8842199012073844403.a n = A128474 (n + 3)

end A128474

/-! ## A128474.P6233323889312708313

`val(n+3, 2)+val(n!, 2)`
-/

namespace A128474.P6233323889312708313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2 + SequenceMachineLib.valuation (Nat.factorial n) 2

end

end A128474.P6233323889312708313

namespace A128474

/-- `val(n+3, 2)+val(n!, 2)` -/
def P6233323889312708313.Spec : Prop :=
  ∀ n, (P6233323889312708313.a n : ℤ) = A128474 (n + 3)

end A128474

/-!
# A128475: A007376(8n+7).

The programs for A128475, there is no canonical definition to state claims against.
-/

/-! ## A128475.P896013732844178092

`A007376(8*n+7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128475.P896013732844178092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (8 * n + 7)

end

end A128475.P896013732844178092

/-! ## A128475.P14680356104593229728

`dr(A007376(A004771(n)))`
-/

namespace A128475.P14680356104593229728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A004771 n).toNat)

end

end A128475.P14680356104593229728

/-! ## A128475.P2589912584318140634

`A007376(A017137(n)+1)%10`
-/

namespace A128475.P2589912584318140634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A017137 n + 1).toNat) 10

end

end A128475.P2589912584318140634

/-! ## A128475.P3860872547770584756

`dr(A007376(n+1+A008458(n+1)+n))`
-/

namespace A128475.P3860872547770584756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ((n + 1 : ℤ) + (A008458 (n + 1) + (n : ℤ))).toNat)

end

end A128475.P3860872547770584756

/-! ## A128475.P4984554983508748017

`A007376(A017053(n)+n+1)+A000007(n+1)`
-/

namespace A128475.P4984554983508748017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A017053 n + (n + 1 : ℤ)).toNat + A000007 (n + 1)

end

end A128475.P4984554983508748017

/-! ## A128475.P12615055269302285344

`A127584(Δ[n²])`
-/

namespace A128475.P12615055269302285344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127584 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A128475.P12615055269302285344

/-! ## A128475.P6975800933207197626

`dr(A127584(2*n+1))`
-/

namespace A128475.P6975800933207197626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A127584 (2 * n + 1))

end

end A128475.P6975800933207197626

/-! ## A128475.P6770058820498329256

`dr(A007376(A004767(Δ[n²])))`
-/

namespace A128475.P6770058820498329256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A004767 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat)

end

end A128475.P6770058820498329256

/-! ## A128475.P720356302704880729

`A033307(8*n+6)`
-/

namespace A128475.P720356302704880729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (8 * n + 6)

end

end A128475.P720356302704880729

/-! ## A128475.P12512306286385867856

`A127050(3*(n+1)+n)`
-/

namespace A128475.P12512306286385867856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127050 (3 * (n + 1) + n)

end

end A128475.P12512306286385867856

/-! ## A128475.P5519753007474650370

`floor(A059805(4*(n+1))/10)`
-/

namespace A128475.P5519753007474650370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059805 (4 * (n + 1)) : ℚ) / 10⌋

end

end A128475.P5519753007474650370

/-! ## A128475.P9718356081078249555

`dr(A033307(A016825(Δ[n²])))`
-/

namespace A128475.P9718356081078249555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (A016825 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat)

end

end A128475.P9718356081078249555

/-! ## A128475.P17430290224663478735

`A065649(record[xor(7, n)])%10`
-/

namespace A128475.P17430290224663478735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 10

end

end A128475.P17430290224663478735

/-! ## A128475.P7150810690403051000

`dr(A007376(record[A004448(n)]))`
-/

namespace A128475.P7150810690403051000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A128475.P7150810690403051000

/-! ## A128475.P5243846361060950945

`A108202(record[2*xor(7, n)])`
-/

namespace A128475.P5243846361060950945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A128475.P5243846361060950945

/-! ## A128475.P4125893849587827260

`A108202(2*(8*n+7))`
-/

namespace A128475.P4125893849587827260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * (8 * n + 7))

end

end A128475.P4125893849587827260

/-! ## A128475.P11569236862656294361

`A108712(A082285(n))`
-/

namespace A128475.P11569236862656294361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A082285 n).toNat

end

end A128475.P11569236862656294361

/-! ## A128475.P5396432863696523375

`A108712(A106839(n)+2)`
-/

namespace A128475.P5396432863696523375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A106839 n + 2).toNat

end

end A128475.P5396432863696523375

/-! ## A128475.P10043916683259311942

`A108712(A125169(n)-2)`
-/

namespace A128475.P10043916683259311942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A125169 n - 2).toNat

end

end A128475.P10043916683259311942

/-!
# A128485: a(1)=a(2)=a(3)=1; for n > 3, a(n) = lcm(a(n-1) + a(n-2), a(n-3)).

The programs for A128485, the canonical program `A128485.P10866351482007781643` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128485 has offset 1).

The definition of A128485 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(a(n-1)+a(n-2), a(n-3))` (program `A128485.P10866351482007781643`, by `A128485.P10866351482007781643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128485.P10866351482007781643

`lcm(a(n-1)+a(n-2), a(n-3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128485

/-- `lcm(a(n-1)+a(n-2), a(n-3))` -/
def P10866351482007781643.Spec : Prop :=
  ∀ n, (P10866351482007781643.a n : ℤ) = A128485 (n + 1)

theorem P10866351482007781643.correct : P10866351482007781643.Spec := by
  intro n
  simp only [A128485, Nat.add_sub_cancel]

end A128485

/-!
# A128487: Irregular array where n-th row is the positive integers < n which are coprime to exactly one distinct prime divisor of n.

The programs for A128487, there is no canonical definition to state claims against.
-/

/-! ## A128487.P9674170605258686406

`A002260(∑[A244226(A054167(n))])`
-/

namespace A128487.P9674170605258686406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (A054167 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128487.P9674170605258686406

/-! ## A128487.P8066161072183181389

`A002260(A048766(A263996(n+1)²))`
-/

namespace A128487.P8066161072183181389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A048766 (A263996 (n + 1) ^ 2).toNat).toNat

end

end A128487.P8066161072183181389

/-! ## A128487.P7791910291564582719

`A002262(lt[A359888(3*n+2), A086273(n+1)])`
-/

namespace A128487.P7791910291564582719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359888 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A128487.P7791910291564582719

/-! ## A128487.P9370335105159083360

`A002260(record[A002260(A103254(n+1))])`
-/

namespace A128487.P9370335105159083360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A103254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128487.P9370335105159083360

/-! ## A128487.P11853065044499854267

`A194066(A043320(n+1)+∑[char[n²]])`
-/

namespace A128487.P11853065044499854267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194066 (A043320 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A128487.P11853065044499854267

/-!
# A128488: a(n) = sum of terms in n-th row of irregular table A128487.

The programs for A128488, the canonical program `A128488.P2749553590906552551` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128488 has offset 1).

The definition of A128488 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126080, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128488.P2749553590906552551

`(n+1)*A126080(n+1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A128488

/-- `(n+1)*A126080(n+1)/2` -/
def P2749553590906552551.Spec : Prop :=
  ∀ n, P2749553590906552551.a n = (A128488 (n + 1) : ℚ)

end A128488

/-! ## A128488.P10586315008803803002

`A126080((n+1)²)/2`
-/

namespace A128488.P10586315008803803002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126080 ((n + 1) ^ 2) : ℚ) / 2

end

end A128488.P10586315008803803002

namespace A128488

/-- `A126080((n+1)²)/2` -/
def P10586315008803803002.Spec : Prop :=
  ∀ n, P10586315008803803002.a n = (A128488 (n + 1) : ℚ)

end A128488

/-! ## A128488.P15830355709559371295

`A001281((n+1)²/∏{p}[n+1, #]*∑{p}[n+1, #-1])`
-/

namespace A128488.P15830355709559371295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A128488.P15830355709559371295

namespace A128488

/-- `A001281((n+1)²/∏{p}[n+1, #]*∑{p}[n+1, #-1])` -/
def P15830355709559371295.Spec : Prop :=
  ∀ n, P15830355709559371295.a n = A128488 (n + 1)

end A128488

/-! ## A128488.P8525148985028917411

`A004525((n+1)²/∏{p}[n+1, #]*∑{p}[n+1, #-1])`
-/

namespace A128488.P8525148985028917411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A128488.P8525148985028917411

namespace A128488

/-- `A004525((n+1)²/∏{p}[n+1, #]*∑{p}[n+1, #-1])` -/
def P8525148985028917411.Spec : Prop :=
  ∀ n, P8525148985028917411.a n = A128488 (n + 1)

end A128488

/-! ## A128488.P10034686631662946837

`A025480((n+1)²/∏{p}[n+1, #]*∑{p}[n+1, #-1])`
-/

namespace A128488.P10034686631662946837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A128488.P10034686631662946837

namespace A128488

/-- `A025480((n+1)²/∏{p}[n+1, #]*∑{p}[n+1, #-1])` -/
def P10034686631662946837.Spec : Prop :=
  ∀ n, P10034686631662946837.a n = A128488 (n + 1)

end A128488

/-! ## A128488.P7252397517502459562

`A001281(A126080((n+1)²))`
-/

namespace A128488.P7252397517502459562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A126080 ((n + 1) ^ 2)).toNat

end

end A128488.P7252397517502459562

namespace A128488

/-- `A001281(A126080((n+1)²))` -/
def P7252397517502459562.Spec : Prop :=
  ∀ n, P7252397517502459562.a n = A128488 (n + 1)

end A128488

/-! ## A128488.P12591239007701889052

`A008615(3*A126080((n+1)²))`
-/

namespace A128488.P12591239007701889052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A126080 ((n + 1) ^ 2)).toNat

end

end A128488.P12591239007701889052

namespace A128488

/-- `A008615(3*A126080((n+1)²))` -/
def P12591239007701889052.Spec : Prop :=
  ∀ n, P12591239007701889052.a n = A128488 (n + 1)

end A128488

/-! ## A128488.P6230577313975888068

`A004526(A126080(∑[2*n+1]))`
-/

namespace A128488.P6230577313975888068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A126080 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A128488.P6230577313975888068

namespace A128488

/-- `A004526(A126080(∑[2*n+1]))` -/
def P6230577313975888068.Spec : Prop :=
  ∀ n, P6230577313975888068.a n = A128488 (n + 1)

end A128488

/-! ## A128488.P15171677937563663811

`A001281((n+1)*A126080(n+1))`
-/

namespace A128488.P15171677937563663811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((n + 1 : ℤ) * A126080 (n + 1)).toNat

end

end A128488.P15171677937563663811

namespace A128488

/-- `A001281((n+1)*A126080(n+1))` -/
def P15171677937563663811.Spec : Prop :=
  ∀ n, P15171677937563663811.a n = A128488 (n + 1)

end A128488

/-! ## A128488.P17845605066290082957

`A004525((n+1)*A126080(n+1))`
-/

namespace A128488.P17845605066290082957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n + 1 : ℤ) * A126080 (n + 1)).toNat

end

end A128488.P17845605066290082957

namespace A128488

/-- `A004525((n+1)*A126080(n+1))` -/
def P17845605066290082957.Spec : Prop :=
  ∀ n, P17845605066290082957.a n = A128488 (n + 1)

end A128488

/-!
# A128489: Triangle read by rows: A000012 * A126988 as infinite lower triangular matrices.

The programs for A128489, the canonical program `A128489.P16282095299326048073` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128489 has offset 1).

The definition of A128489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128489.P16609660915463955140

`∑{#}[floor((row(n)+1)/(col(n)+1)), #]`
-/

namespace A128489.P16609660915463955140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.triRow n + 1 : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A128489.P16609660915463955140

namespace A128489

/-- `∑{#}[floor((row(n)+1)/(col(n)+1)), #]` -/
def P16609660915463955140.Spec : Prop :=
  ∀ n, (P16609660915463955140.a n : ℤ) = A128489 (n + 1)

end A128489

/-! ## A128489.P3522848810562235857

`C(floor((row(n)+1)/(col(n)+1))+1, 2)`
-/

namespace A128489.P3522848810562235857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(SequenceMachineLib.triRow n + 1 : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)⌋ + 1).toNat 2

end

end A128489.P3522848810562235857

namespace A128489

/-- `C(floor((row(n)+1)/(col(n)+1))+1, 2)` -/
def P3522848810562235857.Spec : Prop :=
  ∀ n, (P3522848810562235857.a n : ℤ) = A128489 (n + 1)

end A128489

/-! ## A128489.P16282095299326048073

`C(A050206(n+2), 2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A128489

/-- `C(A050206(n+2), 2)` -/
def P16282095299326048073.Spec : Prop :=
  ∀ n, (P16282095299326048073.a n : ℤ) = A128489 (n + 1)

theorem P16282095299326048073.correct : P16282095299326048073.Spec := by
  intro n
  simp only [A128489, Nat.add_sub_cancel]

end A128489

/-! ## A128489.P14465768357330742732

`∑{#}[A010766(n+1), #]`
-/

namespace A128489.P14465768357330742732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A128489.P14465768357330742732

namespace A128489

/-- `∑{#}[A010766(n+1), #]` -/
def P14465768357330742732.Spec : Prop :=
  ∀ n, (P14465768357330742732.a n : ℤ) = A128489 (n + 1)

end A128489

/-! ## A128489.P8638853982422465394

`∑{#}[ceil(ratio[A181971(n)]), #]`
-/

namespace A128489.P8638853982422465394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181971 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A128489.P8638853982422465394

namespace A128489

/-- `∑{#}[ceil(ratio[A181971(n)]), #]` -/
def P8638853982422465394.Spec : Prop :=
  ∀ n, (P8638853982422465394.a n : ℤ) = A128489 (n + 1)

end A128489

/-! ## A128489.P6294817835739904915

`A126988(n+1)+T(n-1,k)` with `a(0)=1`
-/

namespace A128489.P6294817835739904915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126988 (n + 1) + SequenceMachineLib.triUp a n

end

end A128489.P6294817835739904915

namespace A128489

/-- `A126988(n+1)+T(n-1,k)` -/
def P6294817835739904915.Spec : Prop :=
  ∀ n, P6294817835739904915.a n = A128489 (n + 1)

end A128489

/-! ## A128489.P6600768698464319047

`A085383(n+1)-T(n-1,k)` with `a(0)=1`
-/

namespace A128489.P6600768698464319047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085383 (n + 1) - SequenceMachineLib.triUp a n

end

end A128489.P6600768698464319047

namespace A128489

/-- `A085383(n+1)-T(n-1,k)` -/
def P6600768698464319047.Spec : Prop :=
  ∀ n, P6600768698464319047.a n = A128489 (n + 1)

end A128489

/-! ## A128489.P10246255352516067090

`C(ceil(ratio[A074909(n)])+1, 2)`
-/

namespace A128489.P10246255352516067090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ + 1).toNat 2

end

end A128489.P10246255352516067090

namespace A128489

/-- `C(ceil(ratio[A074909(n)])+1, 2)` -/
def P10246255352516067090.Spec : Prop :=
  ∀ n, (P10246255352516067090.a n : ℤ) = A128489 (n + 1)

end A128489

/-! ## A128489.P7979589541700530231

`A000217(A010766(n+1))`
-/

namespace A128489.P7979589541700530231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A010766 (n + 1)).toNat

end

end A128489.P7979589541700530231

namespace A128489

/-- `A000217(A010766(n+1))` -/
def P7979589541700530231.Spec : Prop :=
  ∀ n, P7979589541700530231.a n = A128489 (n + 1)

end A128489

/-! ## A128489.P10406095867693135349

`A056534(A134700(n+1))`
-/

namespace A128489.P10406095867693135349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056534 (A134700 (n + 1)).toNat

end

end A128489.P10406095867693135349

namespace A128489

/-- `A056534(A134700(n+1))` -/
def P10406095867693135349.Spec : Prop :=
  ∀ n, P10406095867693135349.a n = A128489 (n + 1)

end A128489

/-! ## A128489.P14272761778615335972

`A000217(ceil(ratio[A074909(n)]))`
-/

namespace A128489.P14272761778615335972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A128489.P14272761778615335972

namespace A128489

/-- `A000217(ceil(ratio[A074909(n)]))` -/
def P14272761778615335972.Spec : Prop :=
  ∀ n, P14272761778615335972.a n = A128489 (n + 1)

end A128489

/-! ## A128489.P11587353412685434472

`A161680(A010766(n+1)+1)`
-/

namespace A128489.P11587353412685434472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A010766 (n + 1) + 1).toNat

end

end A128489.P11587353412685434472

namespace A128489

/-- `A161680(A010766(n+1)+1)` -/
def P11587353412685434472.Spec : Prop :=
  ∀ n, P11587353412685434472.a n = A128489 (n + 1)

end A128489

/-! ## A128489.P1427019361407294500

`A179865(A010766(n+1)+1)`
-/

namespace A128489.P1427019361407294500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A010766 (n + 1) + 1).toNat

end

end A128489.P1427019361407294500

namespace A128489

/-- `A179865(A010766(n+1)+1)` -/
def P1427019361407294500.Spec : Prop :=
  ∀ n, P1427019361407294500.a n = A128489 (n + 1)

end A128489

/-! ## A128489.P4870752780975440610

`A080036(C(A010766(n+1), 2))`
-/

namespace A128489.P4870752780975440610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (Nat.choose (A010766 (n + 1)).toNat 2)

end

end A128489.P4870752780975440610

namespace A128489

/-- `A080036(C(A010766(n+1), 2))` -/
def P4870752780975440610.Spec : Prop :=
  ∀ n, P4870752780975440610.a n = A128489 (n + 1)

end A128489

/-! ## A128489.P3503600662653031799

`A000217(floor(sqrt(A085383(n+1))))`
-/

namespace A128489.P3503600662653031799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.sqrt (A085383 (n + 1))).toNat

end

end A128489.P3503600662653031799

namespace A128489

/-- `A000217(floor(sqrt(A085383(n+1))))` -/
def P3503600662653031799.Spec : Prop :=
  ∀ n, P3503600662653031799.a n = A128489 (n + 1)

end A128489

/-! ## A128489.P4410090638326048203

`A000217(ceil(ratio[A029656(n+1)]))`
-/

namespace A128489.P4410090638326048203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A128489.P4410090638326048203

namespace A128489

/-- `A000217(ceil(ratio[A029656(n+1)]))` -/
def P4410090638326048203.Spec : Prop :=
  ∀ n, P4410090638326048203.a n = A128489 (n + 1)

end A128489

/-! ## A128489.P18103940565240968642

`A143310(n+1)/A002260(n+1)`
-/

namespace A128489.P18103940565240968642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143310 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A128489.P18103940565240968642

namespace A128489

/-- `A143310(n+1)/A002260(n+1)` -/
def P18103940565240968642.Spec : Prop :=
  ∀ n, P18103940565240968642.a n = (A128489 (n + 1) : ℚ)

end A128489

/-! ## A128489.P1656801617780279227

`abs(A143310(n+1)/A140756(n+1))`
-/

namespace A128489.P1656801617780279227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143310 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)|

end

end A128489.P1656801617780279227

namespace A128489

/-- `abs(A143310(n+1)/A140756(n+1))` -/
def P1656801617780279227.Spec : Prop :=
  ∀ n, P1656801617780279227.a n = (A128489 (n + 1) : ℚ)

end A128489

/-! ## A128489.P277756479328277981

`A143310(n+1)/sqrt(A133819(n+1))`
-/

namespace A128489.P277756479328277981
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A143310 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A128489.P277756479328277981

namespace A128489

/-- `A143310(n+1)/sqrt(A133819(n+1))` -/
def P277756479328277981.Spec : Prop :=
  ∀ n, P277756479328277981.a n = (A128489 (n + 1) : ℝ)

end A128489

/-! ## A128489.P8281829074693351409

`(A360610(n+1)+A010766(n+1))/2`
-/

namespace A128489.P8281829074693351409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360610 (n + 1) + A010766 (n + 1) : ℚ) / 2

end

end A128489.P8281829074693351409

namespace A128489

/-- `(A360610(n+1)+A010766(n+1))/2` -/
def P8281829074693351409.Spec : Prop :=
  ∀ n, P8281829074693351409.a n = (A128489 (n + 1) : ℚ)

end A128489

/-!
# A128491: Primes in A128490.

The programs for A128491, there is no canonical definition to state claims against.
-/

/-! ## A128491.P7133275682493590388

`p?[A128490(n+1)]`
-/

namespace A128491.P7133275682493590388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128491.P7133275682493590388

/-! ## A128491.P2797477700968285417

`filter[A128490(n+1), A010051(#)]`
-/

namespace A128491.P2797477700968285417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A128491.P2797477700968285417

/-! ## A128491.P11914631092670526553

`filter[A128490(n+1), A080339(#)]`
-/

namespace A128491.P11914631092670526553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A128491.P11914631092670526553

/-! ## A128491.P11261644136334211605

`filter[A128490(n+1), A080545(#)]`
-/

namespace A128491.P11261644136334211605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A128491.P11261644136334211605

/-! ## A128491.P2403597657513008229

`filter[A128490(n+1), A171387(#)]`
-/

namespace A128491.P2403597657513008229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A128491.P2403597657513008229

/-!
# A128492: Denominator of Sum_{k=1..n} 1/(2*k-1)^2.

The programs for A128492, there is no canonical definition to state claims against.
-/

/-! ## A128492.P4837222844468684934

`A035047(A061808(n+1))*A229726(n)`
-/

namespace A128492.P4837222844468684934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035047 (A061808 (n + 1)).toNat * A229726 n

end

end A128492.P4837222844468684934

/-! ## A128492.P15370190068291108361

`A025547(n+1)*A229726(A087051(n))`
-/

namespace A128492.P15370190068291108361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025547 (n + 1) * A229726 (A087051 n).toNat

end

end A128492.P15370190068291108361

/-! ## A128492.P14605614987543511082

`(A217858(A061808(n+1))*A229726(n))%A215746(n)²`
-/

namespace A128492.P14605614987543511082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217858 (A061808 (n + 1)).toNat * A229726 n) (A215746 n ^ 2)

end

end A128492.P14605614987543511082

/-! ## A128492.P16030289246195230816

`A003418(2*n+1)/A053644(2*n+1)*A229726(A087051(n))`
-/

namespace A128492.P16030289246195230816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n + 1) : ℚ) / (A053644 (2 * n + 1) : ℚ) * (A229726 (A087051 n).toNat : ℚ)

end

end A128492.P16030289246195230816

/-! ## A128492.P1848168259124385951

`A000027(A229726(n))*A025547(n+1)`
-/

namespace A128492.P1848168259124385951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A229726 n).toNat * A025547 (n + 1)

end

end A128492.P1848168259124385951

/-!
# A128493: Denominators of partial sums for a series for (Pi^4)/96.

The programs for A128493, there is no canonical definition to state claims against.
-/

/-! ## A128493.P6949391911432801050

`lcm(Δ[n²]^4, a(n-1))` with `a(0)=1`
-/

namespace A128493.P6949391911432801050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 4) (a (n - 1) : ℤ)

end

end A128493.P6949391911432801050

/-! ## A128493.P1034409468517424063

`A294971(n)²`
-/

namespace A128493.P1034409468517424063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294971 n ^ 2

end

end A128493.P1034409468517424063

/-! ## A128493.P1302535759665615654

`A350670(n)^4`
-/

namespace A128493.P1302535759665615654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350670 n ^ 4

end

end A128493.P1302535759665615654

/-! ## A128493.P15259089120200892087

`A025547(n+1)^4`
-/

namespace A128493.P15259089120200892087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025547 (n + 1) ^ 4

end

end A128493.P15259089120200892087

/-! ## A128493.P3034842612440648269

`A035047(Δ[n²])²²`
-/

namespace A128493.P3034842612440648269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035047 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A128493.P3034842612440648269

/-!
# A128494: Coefficient table for sums of Chebyshev's S-Polynomials.

The programs for A128494, the canonical program `A128494.P9473874468826701059` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128494 has offset 0).

The definition of A128494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128494.P9473874468826701059

`T(row(n)-3, col(n))+T(n-1,k-1)+T(n-1,k)-(T(n-2,k-1)+T(n-2,k))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128494

/-- `T(row(n)-3, col(n))+T(n-1,k-1)+T(n-1,k)-(T(n-2,k-1)+T(n-2,k))` -/
def P9473874468826701059.Spec : Prop :=
  ∀ n, P9473874468826701059.a n = A128494 n

theorem P9473874468826701059.correct : P9473874468826701059.Spec := by
  intro n
  simp only [A128494]

end A128494

/-! ## A128494.P1689582822392784080

`A049310(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A128494.P1689582822392784080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049310 n + SequenceMachineLib.triUp a n

end

end A128494.P1689582822392784080

namespace A128494

/-- `A049310(n)+T(n-1,k)` -/
def P1689582822392784080.Spec : Prop :=
  ∀ n, P1689582822392784080.a n = A128494 n

end A128494

/-! ## A128494.P9160172622817522843

`A010054(n)+T(n-1,k-1)-T(n-2,k)` with `a(0)=1`
-/

namespace A128494.P9160172622817522843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010054 n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n

end

end A128494.P9160172622817522843

namespace A128494

/-- `A010054(n)+T(n-1,k-1)-T(n-2,k)` -/
def P9160172622817522843.Spec : Prop :=
  ∀ n, P9160172622817522843.a n = A128494 n

end A128494

/-! ## A128494.P5425662521236445778

`A097807(n)*A165620(n)`
-/

namespace A128494.P5425662521236445778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A165620 n

end

end A128494.P5425662521236445778

namespace A128494

/-- `A097807(n)*A165620(n)` -/
def P5425662521236445778.Spec : Prop :=
  ∀ n, P5425662521236445778.a n = A128494 n

end A128494

/-! ## A128494.P18201042324785806406

`T(n-1,k)+A117568(n)*A168561(n)` with `a(0)=1`
-/

namespace A128494.P18201042324785806406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + A117568 n * A168561 n

end

end A128494.P18201042324785806406

namespace A128494

/-- `T(n-1,k)+A117568(n)*A168561(n)` -/
def P18201042324785806406.Spec : Prop :=
  ∀ n, P18201042324785806406.a n = A128494 n

end A128494

/-! ## A128494.P16959844944662270435

`T(n-1,k)+A046854(n)*A369736(n)` with `a(0)=1`
-/

namespace A128494.P16959844944662270435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + A046854 n * A369736 n

end

end A128494.P16959844944662270435

namespace A128494

/-- `T(n-1,k)+A046854(n)*A369736(n)` -/
def P16959844944662270435.Spec : Prop :=
  ∀ n, P16959844944662270435.a n = A128494 n

end A128494

/-! ## A128494.P15255749918716002348

`T(n-1,k)+A168561(n)*A369736(n)` with `a(0)=1`
-/

namespace A128494.P15255749918716002348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + A168561 n * A369736 n

end

end A128494.P15255749918716002348

namespace A128494

/-- `T(n-1,k)+A168561(n)*A369736(n)` -/
def P15255749918716002348.Spec : Prop :=
  ∀ n, P15255749918716002348.a n = A128494 n

end A128494

/-! ## A128494.P10923411615888514077

`T(n-2,k)+A097807(n)*A130777(n)` with `a(0)=1`
-/

namespace A128494.P10923411615888514077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2 a n + A097807 n * A130777 n

end

end A128494.P10923411615888514077

namespace A128494

/-- `T(n-2,k)+A097807(n)*A130777(n)` -/
def P10923411615888514077.Spec : Prop :=
  ∀ n, P10923411615888514077.a n = A128494 n

end A128494

/-! ## A128494.P5666103560009573709

`T(n-2,k)+2*A049310(n)-A130777(n)` with `a(0)=1`
-/

namespace A128494.P5666103560009573709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2 a n + (2 * A049310 n - A130777 n)

end

end A128494.P5666103560009573709

namespace A128494

/-- `T(n-2,k)+2*A049310(n)-A130777(n)` -/
def P5666103560009573709.Spec : Prop :=
  ∀ n, P5666103560009573709.a n = A128494 n

end A128494

/-! ## A128494.P17502973913698604357

`A033999(A025581(n))*A165620(n)`
-/

namespace A128494.P17502973913698604357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A165620 n

end

end A128494.P17502973913698604357

namespace A128494

/-- `A033999(A025581(n))*A165620(n)` -/
def P17502973913698604357.Spec : Prop :=
  ∀ n, P17502973913698604357.a n = A128494 n

end A128494

/-! ## A128494.P14420139209074570467

`A009531(A099375(n))*A165620(n)`
-/

namespace A128494.P14420139209074570467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A165620 n

end

end A128494.P14420139209074570467

namespace A128494

/-- `A009531(A099375(n))*A165620(n)` -/
def P14420139209074570467.Spec : Prop :=
  ∀ n, P14420139209074570467.a n = A128494 n

end A128494

/-! ## A128494.P7330583634702061892

`A159764(n)/A207823(n)*A165620(n)`
-/

namespace A128494.P7330583634702061892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159764 n : ℚ) / (A207823 n : ℚ) * (A165620 n : ℚ)

end

end A128494.P7330583634702061892

namespace A128494

/-- `A159764(n)/A207823(n)*A165620(n)` -/
def P7330583634702061892.Spec : Prop :=
  ∀ n, P7330583634702061892.a n = (A128494 n : ℚ)

end A128494

/-! ## A128494.P8121295716034971663

`A053119(A061579(n))+T(n-1,k)` with `a(0)=1`
-/

namespace A128494.P8121295716034971663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053119 (A061579 n).toNat + SequenceMachineLib.triUp a n

end

end A128494.P8121295716034971663

namespace A128494

/-- `A053119(A061579(n))+T(n-1,k)` -/
def P8121295716034971663.Spec : Prop :=
  ∀ n, P8121295716034971663.a n = A128494 n

end A128494

/-! ## A128494.P4426703743325547840

`A033999(A292564(n))*A165620(n)`
-/

namespace A128494.P4426703743325547840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A292564 n).toNat * A165620 n

end

end A128494.P4426703743325547840

namespace A128494

/-- `A033999(A292564(n))*A165620(n)` -/
def P4426703743325547840.Spec : Prop :=
  ∀ n, P4426703743325547840.a n = A128494 n

end A128494

/-! ## A128494.P667285052605468286

`A033999(A083487(n+1))*A165620(n)`
-/

namespace A128494.P667285052605468286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A083487 (n + 1)).toNat * A165620 n

end

end A128494.P667285052605468286

namespace A128494

/-- `A033999(A083487(n+1))*A165620(n)` -/
def P667285052605468286.Spec : Prop :=
  ∀ n, P667285052605468286.a n = A128494 n

end A128494

/-! ## A128494.P16648284778203116541

`A267482(n)+T(n-2,k)` with `a(0)=1`
-/

namespace A128494.P16648284778203116541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267482 n + SequenceMachineLib.triUp2 a n

end

end A128494.P16648284778203116541

namespace A128494

/-- `A267482(n)+T(n-2,k)` -/
def P16648284778203116541.Spec : Prop :=
  ∀ n, P16648284778203116541.a n = A128494 n

end A128494

/-! ## A128494.P11374664488396398381

`A008836(A130321(n))*A165620(n)`
-/

namespace A128494.P11374664488396398381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A165620 n

end

end A128494.P11374664488396398381

namespace A128494

/-- `A008836(A130321(n))*A165620(n)` -/
def P11374664488396398381.Spec : Prop :=
  ∀ n, P11374664488396398381.a n = A128494 n

end A128494

/-! ## A128494.P15437816271443690382

`A106400(A173787(n))*A165620(n)`
-/

namespace A128494.P15437816271443690382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A173787 n).toNat * A165620 n

end

end A128494.P15437816271443690382

namespace A128494

/-- `A106400(A173787(n))*A165620(n)` -/
def P15437816271443690382.Spec : Prop :=
  ∀ n, P15437816271443690382.a n = A128494 n

end A128494

/-!
# A128495: Coefficient table for sums of squares of Chebyshev's S-Polynomials.

The programs for A128495, there is no canonical definition to state claims against.
-/

/-! ## A128495.P12071970351133022907

`A158454(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A128495.P12071970351133022907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158454 n + SequenceMachineLib.triUp a n

end

end A128495.P12071970351133022907

/-! ## A128495.P6747001537347097490

`A267483(2*n)+T(n-1,k)` with `a(0)=1`
-/

namespace A128495.P6747001537347097490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267483 (2 * n) + SequenceMachineLib.triUp a n

end

end A128495.P6747001537347097490

/-!
# A128496: Row sums of unsigned triangle |A128495|=|S(2;n,m)| (sums of squares of Chebyshev's S-polynomials).

The programs for A128496, there is no canonical definition to state claims against.
-/

/-! ## A128496.P13419657071608267385

`A180665(n)+∑[log2(gcd(2, n))]`
-/

namespace A128496.P13419657071608267385
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A180665 n : ℝ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128496.P13419657071608267385

/-! ## A128496.P8490428497192335569

`A005313(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A128496.P8490428497192335569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005313 (n + 1) - a (n - 1)

end

end A128496.P8490428497192335569

/-! ## A128496.P13291511673149993364

`∑[∑[A007598(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A128496.P13291511673149993364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A007598 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128496.P13291511673149993364

/-! ## A128496.P9249907036755928539

`A001654(n)+a(n-2)+1` with `a(0)=1, a(1)=2`
-/

namespace A128496.P9249907036755928539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001654 n + a (n - 2) + 1

end

end A128496.P9249907036755928539

/-! ## A128496.P1358690747497442904

`∑[a(n-2)+A000045(n)²]` with `a(0)=1, a(1)=1`
-/

namespace A128496.P1358690747497442904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128496.P1358690747497442904

/-!
# A128498: Fourth column (m=3) of triangle A128494.

The programs for A128498, the canonical program `A128498.P6207480074751852487` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128498 has offset 0).

The definition of A128498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128498.P6207480074751852487

`ogf(1/(1-x+4x^2-4x^3+6x^4-6x^5+4x^6-4x^7+x^8-x^9))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128498

/-- `ogf(1/(1-x+4x^2-4x^3+6x^4-6x^5+4x^6-4x^7+x^8-x^9))` -/
def P6207480074751852487.Spec : Prop :=
  ∀ n, P6207480074751852487.a n = A128498 n

theorem P6207480074751852487.correct : P6207480074751852487.Spec := by
  intro n
  simp only [A128498]

end A128498

/-! ## A128498.P1028460976792090380

`∑[A008804(n)*A056594(n)]`
-/

namespace A128498.P1028460976792090380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n * A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128498.P1028460976792090380

namespace A128498

/-- `∑[A008804(n)*A056594(n)]` -/
def P1028460976792090380.Spec : Prop :=
  ∀ n, P1028460976792090380.a n = A128498 n

end A128498

/-! ## A128498.P8669236605662191801

`∑[A056594(n)*A058187(n)]`
-/

namespace A128498.P8669236605662191801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A058187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128498.P8669236605662191801

namespace A128498

/-- `∑[A056594(n)*A058187(n)]` -/
def P8669236605662191801.Spec : Prop :=
  ∀ n, P8669236605662191801.a n = A128498 n

end A128498

/-! ## A128498.P15620800413807150503

`∑[∑[A008642(n)]*A056594(n)]`
-/

namespace A128498.P15620800413807150503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128498.P15620800413807150503

namespace A128498

/-- `∑[∑[A008642(n)]*A056594(n)]` -/
def P15620800413807150503.Spec : Prop :=
  ∀ n, P15620800413807150503.a n = A128498 n

end A128498

/-! ## A128498.P1420620403607699929

`∑[∑[A087960(n)]*A008804(n)]`
-/

namespace A128498.P1420620403607699929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A008804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128498.P1420620403607699929

namespace A128498

/-- `∑[∑[A087960(n)]*A008804(n)]` -/
def P1420620403607699929.Spec : Prop :=
  ∀ n, P1420620403607699929.a n = A128498 n

end A128498

/-! ## A128498.P11810408841520451636

`A002623(A004526(n))*A057077(n)`
-/

namespace A128498.P11810408841520451636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (A004526 n).toNat * A057077 n

end

end A128498.P11810408841520451636

namespace A128498

/-- `A002623(A004526(n))*A057077(n)` -/
def P11810408841520451636.Spec : Prop :=
  ∀ n, P11810408841520451636.a n = A128498 n

end A128498

/-! ## A128498.P2348207774660114407

`∑[Δ[A096338(n)]*A056594(n)]`
-/

namespace A128498.P2348207774660114407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128498.P2348207774660114407

namespace A128498

/-- `∑[Δ[A096338(n)]*A056594(n)]` -/
def P2348207774660114407.Spec : Prop :=
  ∀ n, P2348207774660114407.a n = A128498 n

end A128498

/-! ## A128498.P10549292435378387431

`∑[A005232(n+1)*A056594(n)]`
-/

namespace A128498.P10549292435378387431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (n + 1) * A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128498.P10549292435378387431

namespace A128498

/-- `∑[A005232(n+1)*A056594(n)]` -/
def P10549292435378387431.Spec : Prop :=
  ∀ n, P10549292435378387431.a n = A128498 n

end A128498

/-! ## A128498.P10752135072466848378

`A220074(A055999(A008619(n))+2)`
-/

namespace A128498.P10752135072466848378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 (A055999 (A008619 n).toNat + 2).toNat

end

end A128498.P10752135072466848378

namespace A128498

/-- `A220074(A055999(A008619(n))+2)` -/
def P10752135072466848378.Spec : Prop :=
  ∀ n, P10752135072466848378.a n = A128498 n

end A128498

/-! ## A128498.P15286460380972365962

`A128494(A167614(n+2))`
-/

namespace A128498.P15286460380972365962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128494 (A167614 (n + 2)).toNat

end

end A128498.P15286460380972365962

namespace A128498

/-- `A128494(A167614(n+2))` -/
def P15286460380972365962.Spec : Prop :=
  ∀ n, P15286460380972365962.a n = A128498 n

end A128498

/-! ## A128498.P17332286655812580248

`∑[A049310(A052905(n)+8)]`
-/

namespace A128498.P17332286655812580248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A052905 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128498.P17332286655812580248

namespace A128498

/-- `∑[A049310(A052905(n)+8)]` -/
def P17332286655812580248.Spec : Prop :=
  ∀ n, P17332286655812580248.a n = A128498 n

end A128498

/-! ## A128498.P13496883463627561797

`∑[A049310(A055999(n)+9)]`
-/

namespace A128498.P13496883463627561797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A055999 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128498.P13496883463627561797

namespace A128498

/-- `∑[A049310(A055999(n)+9)]` -/
def P13496883463627561797.Spec : Prop :=
  ∀ n, P13496883463627561797.a n = A128498 n

end A128498

/-! ## A128498.P2878086670404409659

`∑[A053119(A046691(n+2))]`
-/

namespace A128498.P2878086670404409659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A046691 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128498.P2878086670404409659

namespace A128498

/-- `∑[A053119(A046691(n+2))]` -/
def P2878086670404409659.Spec : Prop :=
  ∀ n, P2878086670404409659.a n = A128498 n

end A128498

/-! ## A128498.P12686212938673473759

`∑[A053119(A056000(n)+6)]`
-/

namespace A128498.P12686212938673473759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A056000 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128498.P12686212938673473759

namespace A128498

/-- `∑[A053119(A056000(n)+6)]` -/
def P12686212938673473759.Spec : Prop :=
  ∀ n, P12686212938673473759.a n = A128498 n

end A128498

/-!
# A128499: Fifth column (m=4) of triangle A128494.

The programs for A128499, the canonical program `A128499.P5761952490416721694` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128499 has offset 0).

The definition of A128499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128499.P5761952490416721694

`ogf(1/(1-x+5x^2-5x^3+10x^4-10x^5+10x^6-10x^7+5x^8-5x^9+x^10-x^11))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128499

/-- `ogf(1/(1-x+5x^2-5x^3+10x^4-10x^5+10x^6-10x^7+5x^8-5x^9+x^10-x^11))` -/
def P5761952490416721694.Spec : Prop :=
  ∀ n, P5761952490416721694.a n = A128499 n

theorem P5761952490416721694.correct : P5761952490416721694.Spec := by
  intro n
  simp only [A128499]

end A128499

/-! ## A128499.P9117781422651886290

`A128498(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A128499.P9117781422651886290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A128498 n - a (n - 2)

end

end A128499.P9117781422651886290

namespace A128499

/-- `A128498(n)-a(n-2)` -/
def P9117781422651886290.Spec : Prop :=
  ∀ n, P9117781422651886290.a n = A128499 n

end A128499

/-! ## A128499.P3460618936900262571

`∑[A056594(n)*A189976(n+8)]`
-/

namespace A128499.P3460618936900262571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A189976 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128499.P3460618936900262571

namespace A128499

/-- `∑[A056594(n)*A189976(n+8)]` -/
def P3460618936900262571.Spec : Prop :=
  ∀ n, P3460618936900262571.a n = A128499 n

end A128499

/-! ## A128499.P6321100278982276033

`A001752(A004526(n))*A033999(A004526(n))`
-/

namespace A128499.P6321100278982276033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 (A004526 n).toNat * A033999 (A004526 n).toNat

end

end A128499.P6321100278982276033

namespace A128499

/-- `A001752(A004526(n))*A033999(A004526(n))` -/
def P6321100278982276033.Spec : Prop :=
  ∀ n, P6321100278982276033.a n = A128499 n

end A128499

/-! ## A128499.P3767622655300616809

`A056594(A052928(n))*A115269(A052928(n))`
-/

namespace A128499.P3767622655300616809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A052928 n).toNat * A115269 (A052928 n).toNat

end

end A128499.P3767622655300616809

namespace A128499

/-- `A056594(A052928(n))*A115269(A052928(n))` -/
def P3767622655300616809.Spec : Prop :=
  ∀ n, P3767622655300616809.a n = A128499 n

end A128499

/-! ## A128499.P6198867009925229620

`∑[Δ[A081284(n)]*A056594(n)]`
-/

namespace A128499.P6198867009925229620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081284 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128499.P6198867009925229620

namespace A128499

/-- `∑[Δ[A081284(n)]*A056594(n)]` -/
def P6198867009925229620.Spec : Prop :=
  ∀ n, P6198867009925229620.a n = A128499 n

end A128499

/-! ## A128499.P7121375747317732487

`∑[Δ[A177747(n)]*A056594(n)]`
-/

namespace A128499.P7121375747317732487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128499.P7121375747317732487

namespace A128499

/-- `∑[Δ[A177747(n)]*A056594(n)]` -/
def P7121375747317732487.Spec : Prop :=
  ∀ n, P7121375747317732487.a n = A128499 n

end A128499

/-! ## A128499.P5741699500709219218

`∑[A051677(A008805(n))*A056594(n)]`
-/

namespace A128499.P5741699500709219218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051677 (A008805 n).toNat * A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128499.P5741699500709219218

namespace A128499

/-- `∑[A051677(A008805(n))*A056594(n)]` -/
def P5741699500709219218.Spec : Prop :=
  ∀ n, P5741699500709219218.a n = A128499 n

end A128499

/-! ## A128499.P10637833292918097844

`∑[A049310(A000217(n+4)+4)]`
-/

namespace A128499.P10637833292918097844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A000217 (n + 4) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128499.P10637833292918097844

namespace A128499

/-- `∑[A049310(A000217(n+4)+4)]` -/
def P10637833292918097844.Spec : Prop :=
  ∀ n, P10637833292918097844.a n = A128499 n

end A128499

/-! ## A128499.P11621510007155512992

`∑[A053119(∑[n+5]+5)]`
-/

namespace A128499.P11621510007155512992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (∑ j ∈ Finset.range (n + 1), f2 j + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128499.P11621510007155512992

namespace A128499

/-- `∑[A053119(∑[n+5]+5)]` -/
def P11621510007155512992.Spec : Prop :=
  ∀ n, P11621510007155512992.a n = A128499 n

end A128499

