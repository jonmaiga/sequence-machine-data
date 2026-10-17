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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
# A073700: a(1) = 1, a(n) = Floor[(Sum of composite numbers up to n)/(Sum of primes up to n)].

The programs for A073700, there is no canonical definition to state claims against.
-/

/-! ## A073700.P16111082547196819938

`A124010(A163768(n)^4)`
-/

namespace A073700.P16111082547196819938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A163768 n ^ 4).toNat

end

end A073700.P16111082547196819938

/-! ## A073700.P14547608166190023744

`A080733(5^A163768(n))`
-/

namespace A073700.P14547608166190023744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080733 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A163768 n : ℤ))).toNat

end

end A073700.P14547608166190023744

/-! ## A073700.P10444886895801377240

`A124010(A163768(n)²²)`
-/

namespace A073700.P10444886895801377240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 ((A163768 n ^ 2) ^ 2).toNat

end

end A073700.P10444886895801377240

/-! ## A073700.P1424760036977462787

`A082460(A000108(A163768(n)))`
-/

namespace A073700.P1424760036977462787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (A000108 (A163768 n).toNat).toNat

end

end A073700.P1424760036977462787

/-! ## A073700.P3829268483846708421

`A001221(A318075(A163768(n)²))`
-/

namespace A073700.P3829268483846708421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A318075 (A163768 n ^ 2).toNat).toNat

end

end A073700.P3829268483846708421

/-!
# A073701: a(n) = n^2*a(n-1)+(-1)^n.

The programs for A073701, the canonical program `A073701.P2747914776702466781` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073701 has offset 0).

The definition of A073701 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*a(n-1)+(-1)^n` (program `A073701.P2747914776702466781`, by `A073701.P2747914776702466781.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073701.P2747914776702466781

`n²*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073701

/-- `n²*a(n-1)+(-1)^n` -/
def P2747914776702466781.Spec : Prop :=
  ∀ n, P2747914776702466781.a n = A073701 n

theorem P2747914776702466781.correct : P2747914776702466781.Spec := by
  intro n
  simp only [A073701]

end A073701

/-! ## A073701.P13235051990617627431

`xor(1, a(n-1)*n²)` with `a(0)=1`
-/

namespace A073701.P13235051990617627431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (a (n - 1) * n ^ 2)

end

end A073701.P13235051990617627431

namespace A073701

/-- `xor(1, a(n-1)*n²)` -/
def P13235051990617627431.Spec : Prop :=
  ∀ n, (P13235051990617627431.a n : ℤ) = A073701 n

end A073701

/-! ## A073701.P5952429577385442537

`xor(1, n^2*a(n-1))` with `a(0)=1`
-/

namespace A073701.P5952429577385442537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (n ^ 2 * a (n - 1))

end

end A073701.P5952429577385442537

namespace A073701

/-- `xor(1, n^2*a(n-1))` -/
def P5952429577385442537.Spec : Prop :=
  ∀ n, (P5952429577385442537.a n : ℤ) = A073701 n

end A073701

/-! ## A073701.P7244486501300335117

`xor(1, n*n*a(n-1))` with `a(0)=1`
-/

namespace A073701.P7244486501300335117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (n * (n * a (n - 1)))

end

end A073701.P7244486501300335117

namespace A073701

/-- `xor(1, n*n*a(n-1))` -/
def P7244486501300335117.Spec : Prop :=
  ∀ n, (P7244486501300335117.a n : ℤ) = A073701 n

end A073701

/-! ## A073701.P3932000102869013646

`(-1)^n+n²*a(n-1)` with `a(0)=1`
-/

namespace A073701.P3932000102869013646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n + (n ^ 2 : ℤ) * a (n - 1)

end

end A073701.P3932000102869013646

namespace A073701

/-- `(-1)^n+n²*a(n-1)` -/
def P3932000102869013646.Spec : Prop :=
  ∀ n, P3932000102869013646.a n = A073701 n

theorem P3932000102869013646.correct : P3932000102869013646.Spec := by
  intro n
  simp only [A073701, Nat.add_sub_cancel, A073701.P3932000102869013646.a, A073701.P2747914776702466781.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073701

/-!
# A073702: a(n) = A073145(n)^2.

The programs for A073702, the canonical program `A073702.P9028840457225624416` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073702 has offset 0).

The definition of A073702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073702.P17056224288813557959

`A073145(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073702.P17056224288813557959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n ^ 2

end

end A073702.P17056224288813557959

namespace A073702

/-- `A073145(n)²` -/
def P17056224288813557959.Spec : Prop :=
  ∀ n, P17056224288813557959.a n = A073702 n

end A073702

/-! ## A073702.P9028840457225624416

`2*A001644(n)+A073496(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A073702

/-- `2*A001644(n)+A073496(n)` -/
def P9028840457225624416.Spec : Prop :=
  ∀ n, P9028840457225624416.a n = A073702 n

theorem P9028840457225624416.correct : P9028840457225624416.Spec := by
  intro n
  simp only [A073702]

end A073702

/-! ## A073702.P17004162101554381561

`A073145(2*n-n)^2`
-/

namespace A073702.P17004162101554381561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 (2 * n - n) ^ 2

end

end A073702.P17004162101554381561

namespace A073702

/-- `A073145(2*n-n)^2` -/
def P17004162101554381561.Spec : Prop :=
  ∀ n, P17004162101554381561.a n = A073702 n

end A073702

/-! ## A073702.P14437518134956978252

`(A001644(n)-A075092(n))²`
-/

namespace A073702.P14437518134956978252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001644 n - A075092 n) ^ 2

end

end A073702.P14437518134956978252

namespace A073702

/-- `(A001644(n)-A075092(n))²` -/
def P14437518134956978252.Spec : Prop :=
  ∀ n, P14437518134956978252.a n = A073702 n

end A073702

/-! ## A073702.P11371574856633107061

`(A000032(n)-A190913(n))²`
-/

namespace A073702.P11371574856633107061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - A190913 n) ^ 2

end

end A073702.P11371574856633107061

namespace A073702

/-- `(A000032(n)-A190913(n))²` -/
def P11371574856633107061.Spec : Prop :=
  ∀ n, P11371574856633107061.a n = A073702 n

end A073702

/-! ## A073702.P18237458073776784054

`(Δ[A001610(n)]-A190913(n))²`
-/

namespace A073702.P18237458073776784054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A190913 n) ^ 2

end

end A073702.P18237458073776784054

namespace A073702

/-- `(Δ[A001610(n)]-A190913(n))²` -/
def P18237458073776784054.Spec : Prop :=
  ∀ n, P18237458073776784054.a n = A073702 n

end A073702

/-! ## A073702.P1474877858144599711

`(A001612(n)-(A190913(n)+1))²`
-/

namespace A073702.P1474877858144599711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001612 n - (A190913 n + 1)) ^ 2

end

end A073702.P1474877858144599711

namespace A073702

/-- `(A001612(n)-(A190913(n)+1))²` -/
def P1474877858144599711.Spec : Prop :=
  ∀ n, P1474877858144599711.a n = A073702 n

end A073702

/-! ## A073702.P3821108499431514555

`(A000211(n)-(A190913(n)+2))²`
-/

namespace A073702.P3821108499431514555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000211 n - (A190913 n + 2)) ^ 2

end

end A073702.P3821108499431514555

namespace A073702

/-- `(A000211(n)-(A190913(n)+2))²` -/
def P3821108499431514555.Spec : Prop :=
  ∀ n, P3821108499431514555.a n = A073702 n

end A073702

/-! ## A073702.P9066117942221559555

`(Δ[A000204(n+1)]-A190913(n))²`
-/

namespace A073702.P9066117942221559555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A190913 n) ^ 2

end

end A073702.P9066117942221559555

namespace A073702

/-- `(Δ[A000204(n+1)]-A190913(n))²` -/
def P9066117942221559555.Spec : Prop :=
  ∀ n, P9066117942221559555.a n = A073702 n

end A073702

/-! ## A073702.P6810238482854255109

`A073145(A005843(n)/2)*A073145(n)`
-/

namespace A073702.P6810238482854255109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat * A073145 n

end

end A073702.P6810238482854255109

namespace A073702

/-- `A073145(A005843(n)/2)*A073145(n)` -/
def P6810238482854255109.Spec : Prop :=
  ∀ n, P6810238482854255109.a n = A073702 n

end A073702

/-! ## A073702.P554807168980780201

`A073145(A005843(n)-n)*A073145(n)`
-/

namespace A073702.P554807168980780201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 (A005843 n - (n : ℤ)).toNat * A073145 n

end

end A073702.P554807168980780201

namespace A073702

/-- `A073145(A005843(n)-n)*A073145(n)` -/
def P554807168980780201.Spec : Prop :=
  ∀ n, P554807168980780201.a n = A073702 n

end A073702

/-! ## A073702.P2431023149609832171

`or(A073145(n), A292438(n))*A073145(n)`
-/

namespace A073702.P2431023149609832171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073145 n) (A292438 n) * A073145 n

end

end A073702.P2431023149609832171

namespace A073702

/-- `or(A073145(n), A292438(n))*A073145(n)` -/
def P2431023149609832171.Spec : Prop :=
  ∀ n, P2431023149609832171.a n = A073702 n

end A073702

/-! ## A073702.P16789086260647304508

`(A212804(n)+∑[A212804(n)]-A190913(n))²`
-/

namespace A073702.P16789086260647304508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 n + ∑ j ∈ Finset.range (n + 1), f1 j - A190913 n) ^ 2

end

end A073702.P16789086260647304508

namespace A073702

/-- `(A212804(n)+∑[A212804(n)]-A190913(n))²` -/
def P16789086260647304508.Spec : Prop :=
  ∀ n, P16789086260647304508.a n = A073702 n

end A073702

/-! ## A073702.P13067432118039376095

`(A212804(n)+A000045(n+1)-A190913(n))²`
-/

namespace A073702.P13067432118039376095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 n + A000045 (n + 1) - A190913 n) ^ 2

end

end A073702.P13067432118039376095

namespace A073702

/-- `(A212804(n)+A000045(n+1)-A190913(n))²` -/
def P13067432118039376095.Spec : Prop :=
  ∀ n, P13067432118039376095.a n = A073702 n

end A073702

/-! ## A073702.P12793964575401184503

`(Δ[A000045(n)]+A000045(n+1)-A190913(n))²`
-/

namespace A073702.P12793964575401184503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + A000045 (n + 1) - A190913 n) ^ 2

end

end A073702.P12793964575401184503

namespace A073702

/-- `(Δ[A000045(n)]+A000045(n+1)-A190913(n))²` -/
def P12793964575401184503.Spec : Prop :=
  ∀ n, P12793964575401184503.a n = A073702 n

end A073702

/-! ## A073702.P11697185520780851611

`(3*A000045(n+1)-A000045(n+2)-A190913(n))²`
-/

namespace A073702.P11697185520780851611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A000045 (n + 1) - A000045 (n + 2) - A190913 n) ^ 2

end

end A073702.P11697185520780851611

namespace A073702

/-- `(3*A000045(n+1)-A000045(n+2)-A190913(n))²` -/
def P11697185520780851611.Spec : Prop :=
  ∀ n, P11697185520780851611.a n = A073702 n

end A073702

/-!
# A073703: Smallest prime p such that also p+prime(n)*2 is a prime.

The programs for A073703, there is no canonical definition to state claims against.
-/

/-! ## A073703.P12133253227800402019

`A097523(n+1)-A000040(n+1)`
-/

namespace A073703.P12133253227800402019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097523 (n + 1) - A000040 (n + 1)

end

end A073703.P12133253227800402019

/-! ## A073703.P16846624881568545554

`A073704(n+1)-A100484(n+1)`
-/

namespace A073703.P16846624881568545554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073704 (n + 1) - A100484 (n + 1)

end

end A073703.P16846624881568545554

/-! ## A073703.P6306683397437928655

`A190664(n+1)/A073704(n+1)`
-/

namespace A073703.P6306683397437928655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190664 (n + 1) : ℚ) / (A073704 (n + 1) : ℚ)

end

end A073703.P6306683397437928655

/-! ## A073703.P12623251867840611497

`A073704(n+1)-2*A000040(n+1)`
-/

namespace A073703.P12623251867840611497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073704 (n + 1) - 2 * A000040 (n + 1)

end

end A073703.P12623251867840611497

/-! ## A073703.P17123953833888429224

`A073704(n+1)-A001747(n+2)`
-/

namespace A073703.P17123953833888429224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073704 (n + 1) - A001747 (n + 2)

end

end A073703.P17123953833888429224

/-! ## A073703.P2558351417248823451

`A097523(n+1)-A067747(2*n+1)`
-/

namespace A073703.P2558351417248823451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097523 (n + 1) - A067747 (2 * n + 1)

end

end A073703.P2558351417248823451

/-! ## A073703.P8826277947075880934

`A020483(Δ[A007504(n)])`
-/

namespace A073703.P8826277947075880934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (f1 (n + 1) - f1 n).toNat

end

end A073703.P8826277947075880934

/-! ## A073703.P5676804094896528898

`A054906(Δ[A007504(n)])`
-/

namespace A073703.P5676804094896528898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054906 (f1 (n + 1) - f1 n).toNat

end

end A073703.P5676804094896528898

/-! ## A073703.P13272039778215393143

`A020483(A000040(n+1))`
-/

namespace A073703.P13272039778215393143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A000040 (n + 1)).toNat

end

end A073703.P13272039778215393143

/-! ## A073703.P6419426469166874323

`A020483(A006005(n+1))`
-/

namespace A073703.P6419426469166874323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A006005 (n + 1)).toNat

end

end A073703.P6419426469166874323

/-! ## A073703.P5202884240405353783

`A020483(A161847(n+1))`
-/

namespace A073703.P5202884240405353783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A161847 (n + 1)).toNat

end

end A073703.P5202884240405353783

/-! ## A073703.P7316278928404358493

`A020483(A008578(n+2))`
-/

namespace A073703.P7316278928404358493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A008578 (n + 2)).toNat

end

end A073703.P7316278928404358493

/-! ## A073703.P9786317934177921612

`A020483(A075643(n+2))`
-/

namespace A073703.P9786317934177921612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A075643 (n + 2)).toNat

end

end A073703.P9786317934177921612

/-! ## A073703.P10695872261593243027

`A020483(A161428(n+2))`
-/

namespace A073703.P10695872261593243027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A161428 (n + 2)).toNat

end

end A073703.P10695872261593243027

/-! ## A073703.P8617251464726317977

`A020483(A182986(n+2))`
-/

namespace A073703.P8617251464726317977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A182986 (n + 2)).toNat

end

end A073703.P8617251464726317977

/-! ## A073703.P4247846563216816261

`A020483(eq[3, A226602(n)])`
-/

namespace A073703.P4247846563216816261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073703.P4247846563216816261

/-! ## A073703.P2683159875016200526

`A054906(eq[3, A226602(n)])`
-/

namespace A073703.P2683159875016200526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073703.P2683159875016200526

/-! ## A073703.P17761293484064754829

`A020483(record[A006530(n+2)])`
-/

namespace A073703.P17761293484064754829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073703.P17761293484064754829

/-! ## A073703.P2723700133627732958

`A020483(record[A014963(n+2)])`
-/

namespace A073703.P2723700133627732958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073703.P2723700133627732958

/-! ## A073703.P14195202661321676410

`A020483(record[A020639(n+2)])`
-/

namespace A073703.P14195202661321676410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073703.P14195202661321676410

/-!
# A073704: Smallest prime p such that also p-prime(n)*2 is a prime.

The programs for A073704, there is no canonical definition to state claims against.
-/

/-! ## A073704.P1472274531331343326

`A097523(n+1)+A000040(n+1)`
-/

namespace A073704.P1472274531331343326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097523 (n + 1) + A000040 (n + 1)

end

end A073704.P1472274531331343326

/-! ## A073704.P1117389360725226366

`A100484(n+1)+A073703(n+1)`
-/

namespace A073704.P1117389360725226366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A073703 (n + 1)

end

end A073704.P1117389360725226366

/-! ## A073704.P5982177891852772137

`A190664(n+1)/A073703(n+1)`
-/

namespace A073704.P5982177891852772137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190664 (n + 1) : ℚ) / (A073703 (n + 1) : ℚ)

end

end A073704.P5982177891852772137

/-! ## A073704.P12756423920069043811

`A000040(n+1)+A073703(n+1)+A000040(n+1)`
-/

namespace A073704.P12756423920069043811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A073703 (n + 1) + A000040 (n + 1))

end

end A073704.P12756423920069043811

/-! ## A073704.P3399495113561522636

`A073703(n+1)+A001747(n+2)`
-/

namespace A073704.P3399495113561522636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073703 (n + 1) + A001747 (n + 2)

end

end A073704.P3399495113561522636

/-! ## A073704.P8044765412054407160

`A097523(n+1)+A067747(2*n+1)`
-/

namespace A073704.P8044765412054407160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097523 (n + 1) + A067747 (2 * n + 1)

end

end A073704.P8044765412054407160

/-! ## A073704.P6456758019928843828

`A020484(p?[comp[n²]])`
-/

namespace A073704.P6456758019928843828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A073704.P6456758019928843828

/-! ## A073704.P14765123463561130958

`A020484(Δ[A007504(n)])`
-/

namespace A073704.P14765123463561130958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (f1 (n + 1) - f1 n).toNat

end

end A073704.P14765123463561130958

/-! ## A073704.P8075388451290913387

`A020484(record[A051698(n)])`
-/

namespace A073704.P8075388451290913387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073704.P8075388451290913387

/-! ## A073704.P15462304588437759973

`A020484(A000040(n+1))`
-/

namespace A073704.P15462304588437759973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A000040 (n + 1)).toNat

end

end A073704.P15462304588437759973

/-! ## A073704.P5945172846525315246

`A020484(A008578(n+2))`
-/

namespace A073704.P5945172846525315246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A008578 (n + 2)).toNat

end

end A073704.P5945172846525315246

/-! ## A073704.P2520215280437531109

`A020484(A182986(n+2))`
-/

namespace A073704.P2520215280437531109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A182986 (n + 2)).toNat

end

end A073704.P2520215280437531109

/-! ## A073704.P2622991124623808628

`A020484(record[A006530(n+2)])`
-/

namespace A073704.P2622991124623808628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073704.P2622991124623808628

/-! ## A073704.P1110616473556381511

`A020484(A100484(n+1)/2)`
-/

namespace A073704.P1110616473556381511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A073704.P1110616473556381511

/-! ## A073704.P10823100029053269709

`A020484(A001747(n+2)/2)`
-/

namespace A073704.P10823100029053269709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A073704.P10823100029053269709

/-! ## A073704.P4720970481271569062

`A204894(A100484(n+1))`
-/

namespace A073704.P4720970481271569062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A100484 (n + 1)).toNat

end

end A073704.P4720970481271569062

/-! ## A073704.P4471323076791022751

`A270753(A089241(n+1))`
-/

namespace A073704.P4471323076791022751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270753 (A089241 (n + 1)).toNat

end

end A073704.P4471323076791022751

/-! ## A073704.P15886253098710703532

`A204894(A001747(n+2))`
-/

namespace A073704.P15886253098710703532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A001747 (n + 2)).toNat

end

end A073704.P15886253098710703532

/-! ## A073704.P8967715171804545618

`A204894(Δ[2*A007504(n)])`
-/

namespace A073704.P8967715171804545618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (f1 (n + 1) - f1 n).toNat

end

end A073704.P8967715171804545618

/-!
# A073705: a(n) = Sum_{ d divides n } (n/d)^(2d).

The programs for A073705, the canonical program `A073705.P3416960153373988063` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073705 has offset 1).

The definition of A073705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073705.P3416960153373988063

`∑{d}[n+1, (((n+1)/#)^#)²]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073705

/-- `∑{d}[n+1, (((n+1)/#)^#)²]` -/
def P3416960153373988063.Spec : Prop :=
  ∀ n, P3416960153373988063.a n = (A073705 (n + 1) : ℚ)

end A073705

/-! ## A073705.P16718506368957360404

`A055225(2*(n+1))-A333823(2*(n+1))`
-/

namespace A073705.P16718506368957360404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055225 (2 * (n + 1)) - A333823 (2 * (n + 1))

end

end A073705.P16718506368957360404

namespace A073705

/-- `A055225(2*(n+1))-A333823(2*(n+1))` -/
def P16718506368957360404.Spec : Prop :=
  ∀ n, P16718506368957360404.a n = A073705 (n + 1)

end A073705

/-! ## A073705.P4542497810352132618

`A333823(2*(n+1))-A076717(2*(n+1))`
-/

namespace A073705.P4542497810352132618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333823 (2 * (n + 1)) - A076717 (2 * (n + 1))

end

end A073705.P4542497810352132618

namespace A073705

/-- `A333823(2*(n+1))-A076717(2*(n+1))` -/
def P4542497810352132618.Spec : Prop :=
  ∀ n, P4542497810352132618.a n = A073705 (n + 1)

end A073705

/-! ## A073705.P5132644467038425008

`(A055225(2*(n+1))-A076717(2*(n+1)))/2`
-/

namespace A073705.P5132644467038425008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055225 (2 * (n + 1)) - A076717 (2 * (n + 1)) : ℚ) / 2

end

end A073705.P5132644467038425008

namespace A073705

/-- `(A055225(2*(n+1))-A076717(2*(n+1)))/2` -/
def P5132644467038425008.Spec : Prop :=
  ∀ n, P5132644467038425008.a n = (A073705 (n + 1) : ℚ)

end A073705

/-! ## A073705.P13613913363481021661

`A308509(∑[n+3]+1)`
-/

namespace A073705.P13613913363481021661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308509 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A073705.P13613913363481021661

namespace A073705

/-- `A308509(∑[n+3]+1)` -/
def P13613913363481021661.Spec : Prop :=
  ∀ n, P13613913363481021661.a n = A073705 (n + 1)

end A073705

/-!
# A073706: a(n) = Sum_{ d divides n } (n/d)^(3d).

The programs for A073706, the canonical program `A073706.P11557648334766143549` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073706 has offset 1).

The definition of A073706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073706.P11557648334766143549

`∑{d}[n+1, ((n+1)/#)^(3*#)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073706

/-- `∑{d}[n+1, ((n+1)/#)^(3*#)]` -/
def P11557648334766143549.Spec : Prop :=
  ∀ n, P11557648334766143549.a n = (A073706 (n + 1) : ℚ)

end A073706

/-! ## A073706.P5935581645762598650

`A308509(A055998(n+2))`
-/

namespace A073706.P5935581645762598650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308509 (A055998 (n + 2)).toNat

end

end A073706.P5935581645762598650

namespace A073706

/-- `A308509(A055998(n+2))` -/
def P5935581645762598650.Spec : Prop :=
  ∀ n, P5935581645762598650.a n = A073706 (n + 1)

end A073706

/-! ## A073706.P3984085653013790227

`A308509(A046691(n+2)+1)`
-/

namespace A073706.P3984085653013790227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308509 (A046691 (n + 2) + 1).toNat

end

end A073706.P3984085653013790227

namespace A073706

/-- `A308509(A046691(n+2)+1)` -/
def P3984085653013790227.Spec : Prop :=
  ∀ n, P3984085653013790227.a n = A073706 (n + 1)

end A073706

/-! ## A073706.P17059967667598259016

`A308509(A055999(n+1)+3)`
-/

namespace A073706.P17059967667598259016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308509 (A055999 (n + 1) + 3).toNat

end

end A073706.P17059967667598259016

namespace A073706

/-- `A308509(A055999(n+1)+3)` -/
def P17059967667598259016.Spec : Prop :=
  ∀ n, P17059967667598259016.a n = A073706 (n + 1)

end A073706

/-! ## A073706.P6975794917924563351

`A308509(A034856(n+3)-1)`
-/

namespace A073706.P6975794917924563351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308509 (A034856 (n + 3) - 1).toNat

end

end A073706.P6975794917924563351

namespace A073706

/-- `A308509(A034856(n+3)-1)` -/
def P6975794917924563351.Spec : Prop :=
  ∀ n, P6975794917924563351.a n = A073706 (n + 1)

end A073706

/-!
# A073707: Coefficients of a power series whose convolution consists of only the even-indexed terms of the sequence.

The programs for A073707, there is no canonical definition to state claims against.
-/

/-! ## A073707.P3814679998427667807

`A073708(floor(n/2))`
-/

namespace A073707.P3814679998427667807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073708 ⌊(n : ℚ) / 2⌋.toNat

end

end A073707.P3814679998427667807

/-! ## A073707.P3654164655312376889

`or(A000007(n), A073708(A004526(n)))`
-/

namespace A073707.P3654164655312376889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A073708 (A004526 n).toNat)

end

end A073707.P3654164655312376889

/-! ## A073707.P15264367332893843415

`A001221(A073703(n+1))*A073708(A004526(n))`
-/

namespace A073707.P15264367332893843415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A073703 (n + 1)).toNat * A073708 (A004526 n).toNat

end

end A073707.P15264367332893843415

/-! ## A073707.P3570113291305170540

`A073708(A004526(n))*A173441(A034444(n+1))`
-/

namespace A073707.P3570113291305170540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073708 (A004526 n).toNat * A173441 (A034444 (n + 1)).toNat

end

end A073707.P3570113291305170540

/-! ## A073707.P16365069457224148012

`A057427(3*n+2)*A073708(A004526(n))`
-/

namespace A073707.P16365069457224148012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 2) * A073708 (A004526 n).toNat

end

end A073707.P16365069457224148012

/-! ## A073707.P6570421009293950888

`A073708(A004526(n))%A073728(n)`
-/

namespace A073707.P6570421009293950888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073708 (A004526 n).toNat) (A073728 n)

end

end A073707.P6570421009293950888

/-! ## A073707.P9648797114030177608

`A001221(A350179(n+1))*A073708(A004526(n))`
-/

namespace A073707.P9648797114030177608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A350179 (n + 1)).toNat * A073708 (A004526 n).toNat

end

end A073707.P9648797114030177608

/-!
# A073708: Generating function A(x) satisfies A(x) = (1+x)^2*A(x^2)^2, with A(0)=1.

The programs for A073708, there is no canonical definition to state claims against.
-/

/-! ## A073708.P13180831649641656569

`∑[A073709(n)]`
-/

namespace A073708.P13180831649641656569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073708.P13180831649641656569

/-! ## A073708.P477452354784370615

`∑[A321335(A004526(n))]`
-/

namespace A073708.P477452354784370615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321335 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073708.P477452354784370615

/-! ## A073708.P3167437621135868428

`A073707(2*n)`
-/

namespace A073708.P3167437621135868428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073707 (2 * n)

end

end A073708.P3167437621135868428

/-! ## A073708.P17206853008914199650

`record[A073707(n)-and(1, n)]`
-/

namespace A073708.P17206853008914199650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073707 n - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073708.P17206853008914199650

/-! ## A073708.P89305076589230175

`record[and(A073707(n+1), A073707(n))]`
-/

namespace A073708.P89305076589230175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073707 (n + 1)) (A073707 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073708.P89305076589230175

/-! ## A073708.P5837135766804297709

`∑[abs(Δ[A073707(A004273(n))%A266897(n)])]`
-/

namespace A073708.P5837135766804297709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073707 (A004273 n).toNat) (A266897 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073708.P5837135766804297709

/-!
# A073709: First differences of A073708.

The programs for A073709, there is no canonical definition to state claims against.
-/

/-! ## A073709.P16905926423071562816

`A321335(floor(n/2))`
-/

namespace A073709.P16905926423071562816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321335 ⌊(n : ℚ) / 2⌋.toNat

end

end A073709.P16905926423071562816

/-! ## A073709.P5323589904887201276

`abs(Δ[A073708(abs(1-n))])`
-/

namespace A073709.P5323589904887201276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073708 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A073709.P5323589904887201276

/-! ## A073709.P2446549629369820680

`Δ[record[and(1, n)*A073707(n)]]`
-/

namespace A073709.P2446549629369820680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A073707 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073709.P2446549629369820680

/-! ## A073709.P14020547506908037775

`A000007(n)+Δ[A073707(A004273(n))]`
-/

namespace A073709.P14020547506908037775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073707 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A073709.P14020547506908037775

/-! ## A073709.P10360766788496304323

`Δ[A073707(A004273(n))+(1-A000122(n))²]`
-/

namespace A073709.P10360766788496304323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073707 (A004273 n).toNat + (1 - A000122 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073709.P10360766788496304323

/-! ## A073709.P2114077746593715772

`Δ[A073707(A004273(n))%A266897(n)]`
-/

namespace A073709.P2114077746593715772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073707 (A004273 n).toNat) (A266897 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073709.P2114077746593715772

/-!
# A073710: Convolution of A073709, which is also the first differences of the unique terms of A073709.

The programs for A073710, there is no canonical definition to state claims against.
-/

/-! ## A073710.P16678865813957886039

`Δ[record[A010060(n)*A073709(n)]]`
-/

namespace A073710.P16678865813957886039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n * A073709 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073710.P16678865813957886039

/-! ## A073710.P10457194779386547552

`Δ[record[A062157(n)*A073709(n)]]`
-/

namespace A073710.P10457194779386547552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A073709 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073710.P10457194779386547552

/-! ## A073710.P15430994732737132652

`Δ[record[A073709(n)*A188068(n+1)]]`
-/

namespace A073710.P15430994732737132652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073709 n * A188068 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073710.P15430994732737132652

/-! ## A073710.P1322973284262786778

`A000007(n)+Δ[A073709(A004273(n))]`
-/

namespace A073710.P1322973284262786778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073709 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A073710.P1322973284262786778

/-! ## A073710.P11455358374523194823

`Δ[record[A073707(n+1)-A073707(n)]]`
-/

namespace A073710.P11455358374523194823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073707 (n + 1) - A073707 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073710.P11455358374523194823

/-! ## A073710.P14736810004962979581

`Δ[record[A073709(n)%A027383(n)]]`
-/

namespace A073710.P14736810004962979581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073709 n) (A027383 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073710.P14736810004962979581

/-!
# A073711: G.f. A(x) satisfies A(x) = A(x^2) + x*A(x^2)^2.

The programs for A073711, there is no canonical definition to state claims against.
-/

/-! ## A073711.P11408598998324241004

`A073712(A025480(abs(1-n)))`
-/

namespace A073711.P11408598998324241004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073712 (A025480 |1 - (n : ℤ)|.toNat).toNat

end

end A073711.P11408598998324241004

/-! ## A073711.P7534509136414903280

`A073712(val(A045654(n), 4))`
-/

namespace A073711.P7534509136414903280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073712 (SequenceMachineLib.valuation (A045654 n).toNat 4)

end

end A073711.P7534509136414903280

/-! ## A073711.P18168656600340752566

`or(A224447(A001082(n+1)), A306286(n))`
-/

namespace A073711.P18168656600340752566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A224447 (A001082 (n + 1)).toNat) (A306286 n)

end

end A073711.P18168656600340752566

/-! ## A073711.P10190008315666373785

`A030013(gcd(A185238(3*n+1), A286378(n)))`
-/

namespace A073711.P10190008315666373785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (Int.gcd (A185238 (3 * n + 1)) (A286378 n))

end

end A073711.P10190008315666373785

/-!
# A073712: Self-convolution of A073711.

The programs for A073712, there is no canonical definition to state claims against.
-/

/-! ## A073712.P15563999233281604376

`A073711(2*n+1)`
-/

namespace A073712.P15563999233281604376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073711 (2 * n + 1)

end

end A073712.P15563999233281604376

/-! ## A073712.P17930817531002264435

`lcm(A000034(n), A073711(A005408(n)))`
-/

namespace A073712.P17930817531002264435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A073711 (A005408 n).toNat)

end

end A073712.P17930817531002264435

/-! ## A073712.P15781776333577560208

`A073711(A005408(n))+A000007(n+1)`
-/

namespace A073712.P15781776333577560208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073711 (A005408 n).toNat + A000007 (n + 1)

end

end A073712.P15781776333577560208

/-! ## A073712.P16298085421305318861

`A000034(2*n)*A073711(A005408(n))`
-/

namespace A073712.P16298085421305318861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A073711 (A005408 n).toNat

end

end A073712.P16298085421305318861

/-! ## A073712.P17746446727733392912

`A073711(A005408(n))-n*A000007(n)`
-/

namespace A073712.P17746446727733392912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073711 (A005408 n).toNat - (n : ℤ) * A000007 n

end

end A073712.P17746446727733392912

/-! ## A073712.P14405856862188766972

`A277024(A277015(n))+A073711(A005408(n))`
-/

namespace A073712.P14405856862188766972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 (A277015 n).toNat + A073711 (A005408 n).toNat

end

end A073712.P14405856862188766972

/-!
# A073713: Numbers k such that the number of distinct primes dividing k = number of anti-divisors of k.

The programs for A073713, there is no canonical definition to state claims against.
-/

/-! ## A073713.P13680366619166365231

`eq[A001221(n+1), A066272(n+1)]+1`
-/

namespace A073713.P13680366619166365231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073713.P13680366619166365231

/-! ## A073713.P570057968209958171

`A061800(eq[A001221(n+1), A066272(n+1)])`
-/

namespace A073713.P570057968209958171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A073713.P570057968209958171

/-! ## A073713.P7380991648561964721

`eq[A001222(A007947(n+1)), A066272(n+1)]+1`
-/

namespace A073713.P7380991648561964721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073713.P7380991648561964721

/-! ## A073713.P15723985126861314529

`eq[A242029(n+1)+A111775(n+1), A001221(n+1)]+1`
-/

namespace A073713.P15723985126861314529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242029 (n + 1) + A111775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073713.P15723985126861314529

/-!
# A073714: Table, read by antidiagonals, generated by successive convolutions of the first row such that the first row equals the same table in this flattened form.

The programs for A073714, there is no canonical definition to state claims against.
-/

/-! ## A073714.P1345748809204177860

`A055641(A207088(n+1))+A007318(n)`
-/

namespace A073714.P1345748809204177860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A207088 (n + 1)).toNat + A007318 n

end

end A073714.P1345748809204177860

/-! ## A073714.P748583696144897528

`A122840(A207088(n+1))+A034932(n)`
-/

namespace A073714.P748583696144897528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A207088 (n + 1)).toNat + A034932 n

end

end A073714.P748583696144897528

/-! ## A073714.P10637128311658505579

`A273914(n)+A055641(A207088(n+1))`
-/

namespace A073714.P10637128311658505579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273914 n + A055641 (A207088 (n + 1)).toNat

end

end A073714.P10637128311658505579

/-! ## A073714.P4211988439970077624

`A336835(A223652(n+1))+A007318(n)`
-/

namespace A073714.P4211988439970077624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A223652 (n + 1)).toNat + A007318 n

end

end A073714.P4211988439970077624

/-! ## A073714.P2247960802797105402

`A318950(A329825(2*n+3))+A007318(n)`
-/

namespace A073714.P2247960802797105402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318950 (A329825 (2 * n + 3)).toNat + A007318 n

end

end A073714.P2247960802797105402

/-!
# A073715: Prime preceding the n-th Mersenne prime.

The programs for A073715, there is no canonical definition to state claims against.
-/

/-! ## A073715.P5002327526792923026

`A000668(n+1)-A365161(n+1)`
-/

namespace A073715.P5002327526792923026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) - A365161 (n + 1)

end

end A073715.P5002327526792923026

/-! ## A073715.P693583159029025146

`A001348(A016027(n+1))-A365161(n+1)`
-/

namespace A073715.P693583159029025146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (A016027 (n + 1)).toNat - A365161 (n + 1)

end

end A073715.P693583159029025146

/-! ## A073715.P1065591925474470862

`A074626(n+1)-(A365161(n+1)+A365160(n+1))`
-/

namespace A073715.P1065591925474470862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074626 (n + 1) - (A365161 (n + 1) + A365160 (n + 1))

end

end A073715.P1065591925474470862

/-!
# A073716: Numbers n such that the number of prime divisors of n (counted with multiplicity) = number of anti-divisors of n.

The programs for A073716, there is no canonical definition to state claims against.
-/

/-! ## A073716.P14022643989774170751

`eq[A001222(n+1), A066272(n+1)]+1`
-/

namespace A073716.P14022643989774170751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073716.P14022643989774170751

/-! ## A073716.P12325287758337926485

`eq[log2(A061142(n+1)), A066272(n+1)]+1`
-/

namespace A073716.P12325287758337926485
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A073716.P12325287758337926485

/-! ## A073716.P3438749471620816085

`eq[A214270(n+1)-A111775(2*(n+1)), A001222(n+1)]+1`
-/

namespace A073716.P3438749471620816085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) - A111775 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073716.P3438749471620816085

/-! ## A073716.P7446333399476441704

`eq[A073093(n+1)-1, A214270(n+1)-A111775(2*(n+1))]+1`
-/

namespace A073716.P7446333399476441704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) - A111775 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073716.P7446333399476441704

/-! ## A073716.P18373864042796236041

`eq[A214270(n+1)-A111775(2*(n+1)), A255201(n+1)/2]+1`
-/

namespace A073716.P18373864042796236041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) - A111775 (2 * (n + 1))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255201 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A073716.P18373864042796236041

/-!
# A073717: a(n) = T(2n+1), where T(n) are the tribonacci numbers A000073.

The programs for A073717, the canonical program `A073717.P5672124925125287045` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073717 has offset 0).

The definition of A073717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073717.P5672124925125287045

`3*a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073717

/-- `3*a(n-1)+a(n-2)+a(n-3)` -/
def P5672124925125287045.Spec : Prop :=
  ∀ n, (P5672124925125287045.a n : ℤ) = A073717 n

theorem P5672124925125287045.correct : P5672124925125287045.Spec := by
  intro n
  simp only [A073717]

end A073717

/-! ## A073717.P16734969541409183795

`A326329(n+1)`
-/

namespace A073717.P16734969541409183795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326329 (n + 1)

end

end A073717.P16734969541409183795

namespace A073717

/-- `A326329(n+1)` -/
def P16734969541409183795.Spec : Prop :=
  ∀ n, P16734969541409183795.a n = A073717 n

end A073717

/-! ## A073717.P6562694463501153675

`A075536(2*n)`
-/

namespace A073717.P6562694463501153675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075536 (2 * n)

end

end A073717.P6562694463501153675

namespace A073717

/-- `A075536(2*n)` -/
def P6562694463501153675.Spec : Prop :=
  ∀ n, P6562694463501153675.a n = A073717 n

end A073717

/-! ## A073717.P16220365181408257490

`A000073(Δ[n²])`
-/

namespace A073717.P16220365181408257490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A073717.P16220365181408257490

namespace A073717

/-- `A000073(Δ[n²])` -/
def P16220365181408257490.Spec : Prop :=
  ∀ n, P16220365181408257490.a n = A073717 n

end A073717

/-! ## A073717.P875065511273391363

`record[A000073(xor(1, n))]`
-/

namespace A073717.P875065511273391363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073717.P875065511273391363

namespace A073717

/-- `record[A000073(xor(1, n))]` -/
def P875065511273391363.Spec : Prop :=
  ∀ n, P875065511273391363.a n = A073717 n

end A073717

/-! ## A073717.P541066244066231879

`A114952(record[xor(3, n)])`
-/

namespace A073717.P541066244066231879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A073717.P541066244066231879

namespace A073717

/-- `A114952(record[xor(3, n)])` -/
def P541066244066231879.Spec : Prop :=
  ∀ n, P541066244066231879.a n = A073717 n

end A073717

/-! ## A073717.P14200639130422392663

`A112476(Δ[n²])+1`
-/

namespace A073717.P14200639130422392663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A073717.P14200639130422392663

namespace A073717

/-- `A112476(Δ[n²])+1` -/
def P14200639130422392663.Spec : Prop :=
  ∀ n, P14200639130422392663.a n = A073717 n

end A073717

/-! ## A073717.P16999160972511351703

`A354784(Δ[n²])/2`
-/

namespace A073717.P16999160972511351703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354784 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A073717.P16999160972511351703

namespace A073717

/-- `A354784(Δ[n²])/2` -/
def P16999160972511351703.Spec : Prop :=
  ∀ n, P16999160972511351703.a n = (A073717 n : ℚ)

end A073717

/-! ## A073717.P17713813148226614940

`record[A326329(abs(1-n))]`
-/

namespace A073717.P17713813148226614940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326329 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073717.P17713813148226614940

namespace A073717

/-- `record[A326329(abs(1-n))]` -/
def P17713813148226614940.Spec : Prop :=
  ∀ n, P17713813148226614940.a n = A073717 n

end A073717

/-! ## A073717.P6684041474906373763

`A282718(comp[2*(n+1)])`
-/

namespace A073717.P6684041474906373763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282718 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A073717.P6684041474906373763

namespace A073717

/-- `A282718(comp[2*(n+1)])` -/
def P6684041474906373763.Spec : Prop :=
  ∀ n, P6684041474906373763.a n = A073717 n

end A073717

/-! ## A073717.P13057569489722966842

`record[and(1, n)*A000073(n)]`
-/

namespace A073717.P13057569489722966842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073717.P13057569489722966842

namespace A073717

/-- `record[and(1, n)*A000073(n)]` -/
def P13057569489722966842.Spec : Prop :=
  ∀ n, P13057569489722966842.a n = A073717 n

end A073717

/-! ## A073717.P8382071384983626585

`A114952(3*(n+1)+n)`
-/

namespace A073717.P8382071384983626585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (3 * (n + 1) + n)

end

end A073717.P8382071384983626585

namespace A073717

/-- `A114952(3*(n+1)+n)` -/
def P8382071384983626585.Spec : Prop :=
  ∀ n, P8382071384983626585.a n = A073717 n

end A073717

/-! ## A073717.P4975502600658019041

`xor(2, A000073(2*n+1)+2)`
-/

namespace A073717.P4975502600658019041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A000073 (2 * n + 1) + 2)

end

end A073717.P4975502600658019041

namespace A073717

/-- `xor(2, A000073(2*n+1)+2)` -/
def P4975502600658019041.Spec : Prop :=
  ∀ n, P4975502600658019041.a n = A073717 n

end A073717

/-! ## A073717.P7954645224882566193

`∑[A000213(abs(1-2*n))]-1`
-/

namespace A073717.P7954645224882566193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A073717.P7954645224882566193

namespace A073717

/-- `∑[A000213(abs(1-2*n))]-1` -/
def P7954645224882566193.Spec : Prop :=
  ∀ n, P7954645224882566193.a n = A073717 n

end A073717

/-! ## A073717.P17723221027084608119

`record[A000073(A026741(n))]`
-/

namespace A073717.P17723221027084608119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073717.P17723221027084608119

namespace A073717

/-- `record[A000073(A026741(n))]` -/
def P17723221027084608119.Spec : Prop :=
  ∀ n, P17723221027084608119.a n = A073717 n

end A073717

/-! ## A073717.P8548465277353695789

`record[A000073(A029579(n))]`
-/

namespace A073717.P8548465277353695789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073717.P8548465277353695789

namespace A073717

/-- `record[A000073(A029579(n))]` -/
def P8548465277353695789.Spec : Prop :=
  ∀ n, P8548465277353695789.a n = A073717 n

end A073717

/-! ## A073717.P10882206357668234074

`A098184(n)-A326329(n)`
-/

namespace A073717.P10882206357668234074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098184 n - A326329 n

end

end A073717.P10882206357668234074

namespace A073717

/-- `A098184(n)-A326329(n)` -/
def P10882206357668234074.Spec : Prop :=
  ∀ n, P10882206357668234074.a n = A073717 n

end A073717

/-! ## A073717.P13894486616671561395

`record[A000073(A014681(n)+1)]`
-/

namespace A073717.P13894486616671561395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073717.P13894486616671561395

namespace A073717

/-- `record[A000073(A014681(n)+1)]` -/
def P13894486616671561395.Spec : Prop :=
  ∀ n, P13894486616671561395.a n = A073717 n

end A073717

/-! ## A073717.P3876778024549797679

`record[A000073(A029578(n)+1)]`
-/

namespace A073717.P3876778024549797679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A029578 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073717.P3876778024549797679

namespace A073717

/-- `record[A000073(A029578(n)+1)]` -/
def P3876778024549797679.Spec : Prop :=
  ∀ n, P3876778024549797679.a n = A073717 n

end A073717

/-!
# A073718: Powers of 2 with composite exponents.

The programs for A073718, the canonical program `A073718.P3252863766205308331` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073718 has offset 1).

The definition of A073718 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073718.P14514688898965814571

`2^A002808(n+1)`
-/

namespace A073718.P14514688898965814571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002808 (n + 1) : ℤ)

end

end A073718.P14514688898965814571

namespace A073718

/-- `2^A002808(n+1)` -/
def P14514688898965814571.Spec : Prop :=
  ∀ n, P14514688898965814571.a n = (A073718 (n + 1) : ℚ)

end A073718

/-! ## A073718.P3252863766205308331

`A000079(A002808(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073718

/-- `A000079(A002808(n+1))` -/
def P3252863766205308331.Spec : Prop :=
  ∀ n, P3252863766205308331.a n = A073718 (n + 1)

theorem P3252863766205308331.correct : P3252863766205308331.Spec := by
  intro n
  simp only [A073718, Nat.add_sub_cancel]

end A073718

/-! ## A073718.P13011677300430459251

`2^lt[1, ∑{e}[n, #]]`
-/

namespace A073718.P13011677300430459251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073718.P13011677300430459251

namespace A073718

/-- `2^lt[1, ∑{e}[n, #]]` -/
def P13011677300430459251.Spec : Prop :=
  ∀ n, (P13011677300430459251.a n : ℤ) = A073718 (n + 1)

end A073718

/-! ## A073718.P1593251782976362925

`2^lt[2, ∏{e}[n², #]]`
-/

namespace A073718.P1593251782976362925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073718.P1593251782976362925

namespace A073718

/-- `2^lt[2, ∏{e}[n², #]]` -/
def P1593251782976362925.Spec : Prop :=
  ∀ n, (P1593251782976362925.a n : ℤ) = A073718 (n + 1)

end A073718

/-! ## A073718.P9842815314342227034

`2^lt[n+1, ∑{d}[n, #]]`
-/

namespace A073718.P9842815314342227034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073718.P9842815314342227034

namespace A073718

/-- `2^lt[n+1, ∑{d}[n, #]]` -/
def P9842815314342227034.Spec : Prop :=
  ∀ n, (P9842815314342227034.a n : ℤ) = A073718 (n + 1)

end A073718

/-! ## A073718.P388216751190358505

`2^lt[n+1, ∏{d}[n, #]]`
-/

namespace A073718.P388216751190358505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073718.P388216751190358505

namespace A073718

/-- `2^lt[n+1, ∏{d}[n, #]]` -/
def P388216751190358505.Spec : Prop :=
  ∀ n, (P388216751190358505.a n : ℤ) = A073718 (n + 1)

end A073718

/-! ## A073718.P14030606940171341429

`2^lt[∑{p}[2*n, #], n]`
-/

namespace A073718.P14030606940171341429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A073718.P14030606940171341429

namespace A073718

/-- `2^lt[∑{p}[2*n, #], n]` -/
def P14030606940171341429.Spec : Prop :=
  ∀ n, (P14030606940171341429.a n : ℤ) = A073718 (n + 1)

end A073718

/-! ## A073718.P15448424685785811846

`2^Δ[A053767(n)]`
-/

namespace A073718.P15448424685785811846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A073718.P15448424685785811846

namespace A073718

/-- `2^Δ[A053767(n)]` -/
def P15448424685785811846.Spec : Prop :=
  ∀ n, P15448424685785811846.a n = (A073718 (n + 1) : ℚ)

end A073718

/-! ## A073718.P15487754624112650227

`2^A018252(n+2)`
-/

namespace A073718.P15487754624112650227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A018252 (n + 2) : ℤ)

end

end A073718.P15487754624112650227

namespace A073718

/-- `2^A018252(n+2)` -/
def P15487754624112650227.Spec : Prop :=
  ∀ n, P15487754624112650227.a n = (A073718 (n + 1) : ℚ)

end A073718

/-! ## A073718.P8242688887617606185

`2^A065090(n+3)`
-/

namespace A073718.P8242688887617606185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A065090 (n + 3) : ℤ)

end

end A073718.P8242688887617606185

namespace A073718

/-- `2^A065090(n+3)` -/
def P8242688887617606185.Spec : Prop :=
  ∀ n, P8242688887617606185.a n = (A073718 (n + 1) : ℚ)

end A073718

/-! ## A073718.P2208337054081209961

`2^A141468(n+3)`
-/

namespace A073718.P2208337054081209961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A141468 (n + 3) : ℤ)

end

end A073718.P2208337054081209961

namespace A073718

/-- `2^A141468(n+3)` -/
def P2208337054081209961.Spec : Prop :=
  ∀ n, P2208337054081209961.a n = (A073718 (n + 1) : ℚ)

end A073718

/-! ## A073718.P5120620431339811403

`2^A129131(Δ[n²])`
-/

namespace A073718.P5120620431339811403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A129131 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A073718.P5120620431339811403

namespace A073718

/-- `2^A129131(Δ[n²])` -/
def P5120620431339811403.Spec : Prop :=
  ∀ n, P5120620431339811403.a n = (A073718 (n + 1) : ℚ)

end A073718

/-! ## A073718.P13044116313814999494

`record[Δ[A242002(n+3)]]`
-/

namespace A073718.P13044116313814999494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242002 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073718.P13044116313814999494

namespace A073718

/-- `record[Δ[A242002(n+3)]]` -/
def P13044116313814999494.Spec : Prop :=
  ∀ n, P13044116313814999494.a n = A073718 (n + 1)

end A073718

/-! ## A073718.P11293179431458989190

`2^Δ[A051349(n+1)]`
-/

namespace A073718.P11293179431458989190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A073718.P11293179431458989190

namespace A073718

/-- `2^Δ[A051349(n+1)]` -/
def P11293179431458989190.Spec : Prop :=
  ∀ n, P11293179431458989190.a n = (A073718 (n + 1) : ℚ)

end A073718

/-! ## A073718.P11348456159097719535

`2^(A072668(n+1)+1)`
-/

namespace A073718.P11348456159097719535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A072668 (n + 1) + 1 : ℤ)

end

end A073718.P11348456159097719535

namespace A073718

/-- `2^(A072668(n+1)+1)` -/
def P11348456159097719535.Spec : Prop :=
  ∀ n, P11348456159097719535.a n = (A073718 (n + 1) : ℚ)

end A073718

/-! ## A073718.P7884846238391171281

`2^(A079696(n+1)-1)`
-/

namespace A073718.P7884846238391171281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A079696 (n + 1) - 1 : ℤ)

end

end A073718.P7884846238391171281

namespace A073718

/-- `2^(A079696(n+1)-1)` -/
def P7884846238391171281.Spec : Prop :=
  ∀ n, P7884846238391171281.a n = (A073718 (n + 1) : ℚ)

end A073718

/-! ## A073718.P16093631226644555034

`2^(A164028(n+1)+3)`
-/

namespace A073718.P16093631226644555034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A164028 (n + 1) + 3 : ℤ)

end

end A073718.P16093631226644555034

namespace A073718

/-- `2^(A164028(n+1)+3)` -/
def P16093631226644555034.Spec : Prop :=
  ∀ n, P16093631226644555034.a n = (A073718 (n + 1) : ℚ)

end A073718

/-! ## A073718.P4069057030539167136

`2^A067747(2*(n+1))`
-/

namespace A073718.P4069057030539167136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A067747 (2 * (n + 1)) : ℤ)

end

end A073718.P4069057030539167136

namespace A073718

/-- `2^A067747(2*(n+1))` -/
def P4069057030539167136.Spec : Prop :=
  ∀ n, P4069057030539167136.a n = (A073718 (n + 1) : ℚ)

end A073718

/-! ## A073718.P7787077127818491991

`2^(A282671(n+1)/2)`
-/

namespace A073718.P7787077127818491991
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((A282671 (n + 1) : ℚ) / 2 : ℝ)

end

end A073718.P7787077127818491991

namespace A073718

/-- `2^(A282671(n+1)/2)` -/
def P7787077127818491991.Spec : Prop :=
  ∀ n, P7787077127818491991.a n = (A073718 (n + 1) : ℝ)

end A073718

/-! ## A073718.P14716967318633266114

`2^A073846(2*n+3)`
-/

namespace A073718.P14716967318633266114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A073846 (2 * n + 3) : ℤ)

end

end A073718.P14716967318633266114

namespace A073718

/-- `2^A073846(2*n+3)` -/
def P14716967318633266114.Spec : Prop :=
  ∀ n, P14716967318633266114.a n = (A073718 (n + 1) : ℚ)

end A073718

/-!
# A073719: a(n) = floor(prime(2^n)/composite(2^n)).

The programs for A073719, there is no canonical definition to state claims against.
-/

/-! ## A073719.P6846242541982887763

`floor(A033844(n)/A065856(n))`
-/

namespace A073719.P6846242541982887763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033844 n : ℚ) / (A065856 n : ℚ)⌋

end

end A073719.P6846242541982887763

/-! ## A073719.P2766958547004744663

`A371672(A274112(n+1))`
-/

namespace A073719.P2766958547004744663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371672 (A274112 (n + 1)).toNat

end

end A073719.P2766958547004744663

/-! ## A073719.P17056381808917375891

`A278044(A006498(n))-1`
-/

namespace A073719.P17056381808917375891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278044 (A006498 n).toNat - 1

end

end A073719.P17056381808917375891

/-! ## A073719.P4543743827512709711

`A356895(A115315(n))-1`
-/

namespace A073719.P4543743827512709711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356895 (A115315 n).toNat - 1

end

end A073719.P4543743827512709711

/-! ## A073719.P10017299885191591453

`A003476(n+1)-A324400(A003476(n+1))`
-/

namespace A073719.P10017299885191591453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 1) - A324400 (A003476 (n + 1)).toNat

end

end A073719.P10017299885191591453

/-!
# A073720: Let b(1) = 1, b(k+1) = b(k) - k*trunc(k/b(k)+1), where trunc(x) = floor(x) if x>= 0, trunc(x) = ceiling(x) otherwise. Sequence a(n) gives the successive absolute values taken by b(k).

The programs for A073720, there is no canonical definition to state claims against.
-/

/-! ## A073720.P5364388618016882392

`5*a(n-1)+3` with `a(0)=1, a(1)=11`
-/

namespace A073720.P5364388618016882392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  5 * a (n - 1) + 3

end

end A073720.P5364388618016882392

/-! ## A073720.P2285922231986008673

`lcm(5, a(n-1))+3` with `a(0)=1, a(1)=11`
-/

namespace A073720.P2285922231986008673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 3

end

end A073720.P2285922231986008673

/-! ## A073720.P16797519382765307132

`∑[5*a(n-1)]` with `a(0)=1, a(1)=10, a(2)=47`
-/

namespace A073720.P16797519382765307132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 47] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073720.P16797519382765307132

/-! ## A073720.P8474346389009142538

`8-5*(1-a(n-1))` with `a(0)=1, a(1)=11`
-/

namespace A073720.P8474346389009142538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  8 - 5 * (1 - a (n - 1))

end

end A073720.P8474346389009142538

/-!
# A073721: Numbers k such that PrimePi(k) divides sigma(k).

The programs for A073721, the canonical program `A073721.P5082412934630916663` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073721 has offset 1).

The definition of A073721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073721.P5082412934630916663

`eq[0, A072548(n+2)]+2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073721

/-- `eq[0, A072548(n+2)]+2` -/
def P5082412934630916663.Spec : Prop :=
  ∀ n, (P5082412934630916663.a n : ℤ) = A073721 (n + 1)

theorem P5082412934630916663.correct : P5082412934630916663.Spec := by
  intro n
  simp only [A073721, Nat.add_sub_cancel]

end A073721

/-! ## A073721.P18204226619849615642

`record[gcd(A020725(n+1), A072548(n+2))]`
-/

namespace A073721.P18204226619849615642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (n + 1)) (A072548 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073721.P18204226619849615642

namespace A073721

/-- `record[gcd(A020725(n+1), A072548(n+2))]` -/
def P18204226619849615642.Spec : Prop :=
  ∀ n, (P18204226619849615642.a n : ℤ) = A073721 (n + 1)

end A073721

/-! ## A073721.P2494809371584377177

`eq[0, A152991(n+2)%A000720(n+2)]+2`
-/

namespace A073721.P2494809371584377177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152991 (n + 2)) (A000720 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A073721.P2494809371584377177

namespace A073721

/-- `eq[0, A152991(n+2)%A000720(n+2)]+2` -/
def P2494809371584377177.Spec : Prop :=
  ∀ n, (P2494809371584377177.a n : ℤ) = A073721 (n + 1)

end A073721

/-! ## A073721.P8800014397159275468

`eq[0, Δ[A024916(n+1)]%A000720(n+2)]+2`
-/

namespace A073721.P8800014397159275468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (n + 1) - f3 n) (A000720 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A073721.P8800014397159275468

namespace A073721

/-- `eq[0, Δ[A024916(n+1)]%A000720(n+2)]+2` -/
def P8800014397159275468.Spec : Prop :=
  ∀ n, (P8800014397159275468.a n : ℤ) = A073721 (n + 1)

end A073721

/-!
# A073723: Numbers k such that sigma(k) mod pi(k) = 1.

The programs for A073723, there is no canonical definition to state claims against.
-/

/-! ## A073723.P3731421741089661643

`eq[1, A072548(n+2)]+2`
-/

namespace A073723.P3731421741089661643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072548 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A073723.P3731421741089661643

/-! ## A073723.P13265368165152897640

`A171463(eq[1, A072548(n+2)])`
-/

namespace A073723.P13265368165152897640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072548 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073723.P13265368165152897640

/-! ## A073723.P11704699641465322029

`A171463(eq[1, A000203(n+2)%A000720(n+2)])`
-/

namespace A073723.P11704699641465322029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) (A000720 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073723.P11704699641465322029

/-! ## A073723.P9037306438323296977

`A171463(eq[1, A152991(n+2)%A000720(n+2)])`
-/

namespace A073723.P9037306438323296977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152991 (n + 2)) (A000720 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073723.P9037306438323296977

/-! ## A073723.P6652620521213520340

`eq[1, A072548(A233583(n+1))]`
-/

namespace A073723.P6652620521213520340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072548 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073723.P6652620521213520340

/-!
# A073724: a(n) = (4^(n+1) + 6n + 5)/9.

The programs for A073724, the canonical program `A073724.P17961810471955511334` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073724 has offset 0).

The definition of A073724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073724.P17961810471955511334

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073724

/-- `6*a(n-1)-9*a(n-2)+4*a(n-3)` -/
def P17961810471955511334.Spec : Prop :=
  ∀ n, P17961810471955511334.a n = A073724 n

theorem P17961810471955511334.correct : P17961810471955511334.Spec := by
  intro n
  simp only [A073724]

end A073724

/-! ## A073724.P17057975291441966505

`(4^(n+1)+6*n+5)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073724.P17057975291441966505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) + 6 * n + 5 : ℚ) / 9

end

end A073724.P17057975291441966505

namespace A073724

/-- `(4^(n+1)+6*n+5)/9` -/
def P17057975291441966505.Spec : Prop :=
  ∀ n, P17057975291441966505.a n = (A073724 n : ℚ)

end A073724

/-! ## A073724.P17185246971350863050

`record[∑[∑[(-2)^n]]]`
-/

namespace A073724.P17185246971350863050
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073724.P17185246971350863050

namespace A073724

/-- `record[∑[∑[(-2)^n]]]` -/
def P17185246971350863050.Spec : Prop :=
  ∀ n, P17185246971350863050.a n = A073724 n

end A073724

/-! ## A073724.P17420393210499148063

`∑[4*a(n-1)-2]` with `a(0)=1`
-/

namespace A073724.P17420393210499148063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073724.P17420393210499148063

namespace A073724

/-- `∑[4*a(n-1)-2]` -/
def P17420393210499148063.Spec : Prop :=
  ∀ n, P17420393210499148063.a n = A073724 n

end A073724

/-! ## A073724.P16113852619901182025

`or(1, ∑[round(4^n/3)+1])`
-/

namespace A073724.P16113852619901182025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073724.P16113852619901182025

namespace A073724

/-- `or(1, ∑[round(4^n/3)+1])` -/
def P16113852619901182025.Spec : Prop :=
  ∀ n, P16113852619901182025.a n = A073724 n

end A073724

/-! ## A073724.P15542903268197239730

`∑[∑[lcm(4, 2^(2*n))/4]]`
-/

namespace A073724.P15542903268197239730
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (2 ^ (2 * n)) : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073724.P15542903268197239730

namespace A073724

/-- `∑[∑[lcm(4, 2^(2*n))/4]]` -/
def P15542903268197239730.Spec : Prop :=
  ∀ n, P15542903268197239730.a n = (A073724 n : ℚ)

end A073724

/-! ## A073724.P10981966327933565701

`∑[∑[4^((n-1)%(n+1))]]`
-/

namespace A073724.P10981966327933565701
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073724.P10981966327933565701

namespace A073724

/-- `∑[∑[4^((n-1)%(n+1))]]` -/
def P10981966327933565701.Spec : Prop :=
  ∀ n, P10981966327933565701.a n = (A073724 n : ℚ)

end A073724

/-! ## A073724.P10774405981283757227

`∑[∑[gcd(4, 2^n)^(n-1)]]`
-/

namespace A073724.P10774405981283757227
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (2 ^ n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073724.P10774405981283757227

namespace A073724

/-- `∑[∑[gcd(4, 2^n)^(n-1)]]` -/
def P10774405981283757227.Spec : Prop :=
  ∀ n, P10774405981283757227.a n = (A073724 n : ℚ)

end A073724

/-! ## A073724.P14574921365495344406

`a(n-1)+ceil(4^n/3)` with `a(0)=1`
-/

namespace A073724.P14574921365495344406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌈(4 ^ n : ℚ) / 3⌉

end

end A073724.P14574921365495344406

namespace A073724

/-- `a(n-1)+ceil(4^n/3)` -/
def P14574921365495344406.Spec : Prop :=
  ∀ n, P14574921365495344406.a n = A073724 n

end A073724

/-! ## A073724.P2561906499918842389

`2*(2*a(n-1)-n)+1` with `a(0)=1`
-/

namespace A073724.P2561906499918842389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * a (n - 1) - (n : ℤ)) + 1

end

end A073724.P2561906499918842389

namespace A073724

/-- `2*(2*a(n-1)-n)+1` -/
def P2561906499918842389.Spec : Prop :=
  ∀ n, P2561906499918842389.a n = A073724 n

end A073724

/-! ## A073724.P8942392563037486578

`1-2*(n-2*a(n-1))` with `a(0)=1`
-/

namespace A073724.P8942392563037486578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 2 * ((n : ℤ) - 2 * a (n - 1))

end

end A073724.P8942392563037486578

namespace A073724

/-- `1-2*(n-2*a(n-1))` -/
def P8942392563037486578.Spec : Prop :=
  ∀ n, P8942392563037486578.a n = A073724 n

end A073724

/-! ## A073724.P10557351859709450498

`∑[A047849(n)]`
-/

namespace A073724.P10557351859709450498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073724.P10557351859709450498

namespace A073724

/-- `∑[A047849(n)]` -/
def P10557351859709450498.Spec : Prop :=
  ∀ n, P10557351859709450498.a n = A073724 n

end A073724

/-! ## A073724.P5877436710075551995

`A053088(2*n)`
-/

namespace A073724.P5877436710075551995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 (2 * n)

end

end A073724.P5877436710075551995

namespace A073724

/-- `A053088(2*n)` -/
def P5877436710075551995.Spec : Prop :=
  ∀ n, P5877436710075551995.a n = A073724 n

end A073724

/-! ## A073724.P6884361199068747421

`A077898(2*n)`
-/

namespace A073724.P6884361199068747421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077898 (2 * n)

end

end A073724.P6884361199068747421

namespace A073724

/-- `A077898(2*n)` -/
def P6884361199068747421.Spec : Prop :=
  ∀ n, P6884361199068747421.a n = A073724 n

end A073724

/-! ## A073724.P1773670069652479202

`A133993(2*n)`
-/

namespace A073724.P1773670069652479202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133993 (2 * n)

end

end A073724.P1773670069652479202

namespace A073724

/-- `A133993(2*n)` -/
def P1773670069652479202.Spec : Prop :=
  ∀ n, P1773670069652479202.a n = A073724 n

end A073724

/-! ## A073724.P9747857037096518340

`A082383(Δ[n²])`
-/

namespace A073724.P9747857037096518340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082383 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A073724.P9747857037096518340

namespace A073724

/-- `A082383(Δ[n²])` -/
def P9747857037096518340.Spec : Prop :=
  ∀ n, P9747857037096518340.a n = A073724 n

end A073724

/-! ## A073724.P2186898135250284266

`∑[A002450(n)+1]`
-/

namespace A073724.P2186898135250284266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073724.P2186898135250284266

namespace A073724

/-- `∑[A002450(n)+1]` -/
def P2186898135250284266.Spec : Prop :=
  ∀ n, P2186898135250284266.a n = A073724 n

end A073724

/-! ## A073724.P825111268287693762

`∑[A163834(n)-1]`
-/

namespace A073724.P825111268287693762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163834 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073724.P825111268287693762

namespace A073724

/-- `∑[A163834(n)-1]` -/
def P825111268287693762.Spec : Prop :=
  ∀ n, P825111268287693762.a n = A073724 n

end A073724

/-!
# A073725: a(n)-th composite number = phi(n-th composite number); a(1)=a(2)=0.

The programs for A073725, the canonical program `A073725.P8229638889903388732` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073725 has offset 1).

The definition of A073725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073725.P8229638889903388732

`A065896(A062948(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A073725

/-- `A065896(A062948(n+1))` -/
def P8229638889903388732.Spec : Prop :=
  ∀ n, P8229638889903388732.a n = A073725 (n + 1)

theorem P8229638889903388732.correct : P8229638889903388732.Spec := by
  intro n
  simp only [A073725, Nat.add_sub_cancel]

end A073725

/-! ## A073725.P16943352231500880725

`A065855(A073256(n+1))`
-/

namespace A073725.P16943352231500880725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A073256 (n + 1)).toNat

end

end A073725.P16943352231500880725

namespace A073725

/-- `A065855(A073256(n+1))` -/
def P16943352231500880725.Spec : Prop :=
  ∀ n, P16943352231500880725.a n = A073725 (n + 1)

end A073725

/-! ## A073725.P6314217228019211562

`A065855(2*A062948(n+1))`
-/

namespace A073725.P6314217228019211562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 * A062948 (n + 1)).toNat

end

end A073725.P6314217228019211562

namespace A073725

/-- `A065855(2*A062948(n+1))` -/
def P6314217228019211562.Spec : Prop :=
  ∀ n, P6314217228019211562.a n = A073725 (n + 1)

end A073725

/-! ## A073725.P4392531615706181235

`A065855(A000010(Δ[A053767(n)]))`
-/

namespace A073725.P4392531615706181235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A000010 (f1 (n + 1) - f1 n).toNat).toNat

end

end A073725.P4392531615706181235

namespace A073725

/-- `A065855(A000010(Δ[A053767(n)]))` -/
def P4392531615706181235.Spec : Prop :=
  ∀ n, P4392531615706181235.a n = A073725 (n + 1)

end A073725

/-! ## A073725.P4852980363103120721

`A065855(A000010(A002808(n+1)))`
-/

namespace A073725.P4852980363103120721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A000010 (A002808 (n + 1)).toNat).toNat

end

end A073725.P4852980363103120721

namespace A073725

/-- `A065855(A000010(A002808(n+1)))` -/
def P4852980363103120721.Spec : Prop :=
  ∀ n, P4852980363103120721.a n = A073725 (n + 1)

end A073725

/-! ## A073725.P10922065248005565037

`A065855(A000010(A018252(n+2)))`
-/

namespace A073725.P10922065248005565037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A000010 (A018252 (n + 2)).toNat).toNat

end

end A073725.P10922065248005565037

namespace A073725

/-- `A065855(A000010(A018252(n+2)))` -/
def P10922065248005565037.Spec : Prop :=
  ∀ n, P10922065248005565037.a n = A073725 (n + 1)

end A073725

/-! ## A073725.P1307851987908062170

`A065855(A166362(n+2))`
-/

namespace A073725.P1307851987908062170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A166362 (n + 2)).toNat

end

end A073725.P1307851987908062170

namespace A073725

/-- `A065855(A166362(n+2))` -/
def P1307851987908062170.Spec : Prop :=
  ∀ n, P1307851987908062170.a n = A073725 (n + 1)

end A073725

/-! ## A073725.P18129475216933241594

`A065896(A166362(n+2)/2)`
-/

namespace A073725.P18129475216933241594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (SequenceMachineLib.roundAway ((A166362 (n + 2) : ℚ) / 2)).toNat

end

end A073725.P18129475216933241594

namespace A073725

/-- `A065896(A166362(n+2)/2)` -/
def P18129475216933241594.Spec : Prop :=
  ∀ n, P18129475216933241594.a n = A073725 (n + 1)

end A073725

/-!
# A073726: Primitive irreducible trinomials: x^n + x^k + 1 is a primitive irreducible polynomial (mod 2) for some k with 0 < k < n.

The programs for A073726, there is no canonical definition to state claims against.
-/

/-! ## A073726.P6187636362400488778

`∪[∑[A194152(3*n+2)], A194125(n+1)]`
-/

namespace A073726.P6187636362400488778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194152 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A073726.P6187636362400488778

/-! ## A073726.P8059029347502070258

`∪[A047513(A014688(2*n+1)), A194125(n+1)]`
-/

namespace A073726.P8059029347502070258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (A014688 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073726.P8059029347502070258

/-! ## A073726.P14679779540913888145

`A018851(A194125(n+1)²)`
-/

namespace A073726.P14679779540913888145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A194125 (n + 1) ^ 2).toNat

end

end A073726.P14679779540913888145

/-! ## A073726.P11930673220817281013

`A138554(A194125(n+1)²)`
-/

namespace A073726.P11930673220817281013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (A194125 (n + 1) ^ 2).toNat

end

end A073726.P11930673220817281013

/-! ## A073726.P206665687281071788

`A018851(A194125(n+1)^2)`
-/

namespace A073726.P206665687281071788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A194125 (n + 1) ^ 2).toNat

end

end A073726.P206665687281071788

/-! ## A073726.P14579964911135690254

`A358680(A163466(n))+A194125(n+1)`
-/

namespace A073726.P14579964911135690254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (A163466 n).toNat + A194125 (n + 1)

end

end A073726.P14579964911135690254

/-! ## A073726.P17358811048294389277

`A001221(A163466(n)²)*A194125(n+1)`
-/

namespace A073726.P17358811048294389277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A163466 n ^ 2).toNat * A194125 (n + 1)

end

end A073726.P17358811048294389277

/-! ## A073726.P16725191997422184903

`A194125(n+1)+A000007(A161207(n+1))`
-/

namespace A073726.P16725191997422184903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194125 (n + 1) + A000007 (A161207 (n + 1)).toNat

end

end A073726.P16725191997422184903

/-! ## A073726.P10425984169955075647

`A112284(A006530(n+1))*A194125(n+1)`
-/

namespace A073726.P10425984169955075647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112284 (A006530 (n + 1)).toNat * A194125 (n + 1)

end

end A073726.P10425984169955075647

/-!
# A073728: a(n) = Sum_{k=0..n} S(k), where S(n) are the tribonacci generalized numbers A001644.

The programs for A073728, the canonical program `A073728.P9871553397051181` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073728 has offset 0).

The definition of A073728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073728.P9871553397051181

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=3, a(1)=4, a(2)=7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073728

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P9871553397051181.Spec : Prop :=
  ∀ n, (P9871553397051181.a n : ℤ) = A073728 n

theorem P9871553397051181.correct : P9871553397051181.Spec := by
  intro n
  simp only [A073728]

end A073728

/-! ## A073728.P954620194970759888

`∑[2*a(n-1)-a(n-4)]` with `a(0)=3, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A073728.P954620194970759888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 3, 7] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073728.P954620194970759888

namespace A073728

/-- `∑[2*a(n-1)-a(n-4)]` -/
def P954620194970759888.Spec : Prop :=
  ∀ n, P954620194970759888.a n = A073728 n

end A073728

/-! ## A073728.P10072299426873783118

`∑[A001644(n)]`
-/

namespace A073728.P10072299426873783118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073728.P10072299426873783118

namespace A073728

/-- `∑[A001644(n)]` -/
def P10072299426873783118.Spec : Prop :=
  ∀ n, P10072299426873783118.a n = A073728 n

end A073728

/-! ## A073728.P10369967740531743749

`A354784(n)+A280308(n)`
-/

namespace A073728.P10369967740531743749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 n + A280308 n

end

end A073728.P10369967740531743749

namespace A073728

/-- `A354784(n)+A280308(n)` -/
def P10369967740531743749.Spec : Prop :=
  ∀ n, P10369967740531743749.a n = A073728 n

end A073728

/-! ## A073728.P9412738581962535075

`∑[A075092(n)-A073145(n)]`
-/

namespace A073728.P9412738581962535075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075092 n - A073145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073728.P9412738581962535075

namespace A073728

/-- `∑[A075092(n)-A073145(n)]` -/
def P9412738581962535075.Spec : Prop :=
  ∀ n, P9412738581962535075.a n = A073728 n

end A073728

/-! ## A073728.P6955505603935897051

`A047081(n+1)+A000213(n)`
-/

namespace A073728.P6955505603935897051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047081 (n + 1) + A000213 n

end

end A073728.P6955505603935897051

namespace A073728

/-- `A047081(n+1)+A000213(n)` -/
def P6955505603935897051.Spec : Prop :=
  ∀ n, P6955505603935897051.a n = A073728 n

end A073728

/-! ## A073728.P688913352891874696

`A214825(n+1)+A001590(n)`
-/

namespace A073728.P688913352891874696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 (n + 1) + A001590 n

end

end A073728.P688913352891874696

namespace A073728

/-- `A214825(n+1)+A001590(n)` -/
def P688913352891874696.Spec : Prop :=
  ∀ n, P688913352891874696.a n = A073728 n

end A073728

/-! ## A073728.P1926920619311567285

`A214727(n+1)+A214727(n)`
-/

namespace A073728.P1926920619311567285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (n + 1) + A214727 n

end

end A073728.P1926920619311567285

namespace A073728

/-- `A214727(n+1)+A214727(n)` -/
def P1926920619311567285.Spec : Prop :=
  ∀ n, P1926920619311567285.a n = A073728 n

end A073728

/-! ## A073728.P18423044148034939200

`A276658(n+1)+A214826(n)`
-/

namespace A073728.P18423044148034939200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (n + 1) + A214826 n

end

end A073728.P18423044148034939200

namespace A073728

/-- `A276658(n+1)+A214826(n)` -/
def P18423044148034939200.Spec : Prop :=
  ∀ n, P18423044148034939200.a n = A073728 n

end A073728

/-! ## A073728.P2472687910516574535

`A354784(n+1)+A274761(n)`
-/

namespace A073728.P2472687910516574535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 1) + A274761 n

end

end A073728.P2472687910516574535

namespace A073728

/-- `A354784(n+1)+A274761(n)` -/
def P2472687910516574535.Spec : Prop :=
  ∀ n, P2472687910516574535.a n = A073728 n

end A073728

/-! ## A073728.P14735523857592059183

`A100683(n+2)+A081172(n)`
-/

namespace A073728.P14735523857592059183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (n + 2) + A081172 n

end

end A073728.P14735523857592059183

namespace A073728

/-- `A100683(n+2)+A081172(n)` -/
def P14735523857592059183.Spec : Prop :=
  ∀ n, P14735523857592059183.a n = A073728 n

end A073728

/-! ## A073728.P8201586574286321749

`A214899(n)+A000213(n+2)`
-/

namespace A073728.P8201586574286321749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n + A000213 (n + 2)

end

end A073728.P8201586574286321749

namespace A073728

/-- `A214899(n)+A000213(n+2)` -/
def P8201586574286321749.Spec : Prop :=
  ∀ n, P8201586574286321749.a n = A073728 n

end A073728

/-! ## A073728.P11300708530830033034

`A007486(n+2)-A000073(n)`
-/

namespace A073728.P11300708530830033034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007486 (n + 2) - A000073 n

end

end A073728.P11300708530830033034

namespace A073728

/-- `A007486(n+2)-A000073(n)` -/
def P11300708530830033034.Spec : Prop :=
  ∀ n, P11300708530830033034.a n = A073728 n

end A073728

/-! ## A073728.P657604644129356109

`A280308(n)+2*A000073(n)`
-/

namespace A073728.P657604644129356109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280308 n + 2 * A000073 n

end

end A073728.P657604644129356109

namespace A073728

/-- `A280308(n)+2*A000073(n)` -/
def P657604644129356109.Spec : Prop :=
  ∀ n, P657604644129356109.a n = A073728 n

end A073728

/-! ## A073728.P7865175957266850821

`A000213(n)+abs(A078042(n+1))`
-/

namespace A073728.P7865175957266850821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + |A078042 (n + 1)|

end

end A073728.P7865175957266850821

namespace A073728

/-- `A000213(n)+abs(A078042(n+1))` -/
def P7865175957266850821.Spec : Prop :=
  ∀ n, P7865175957266850821.a n = A073728 n

end A073728

/-! ## A073728.P793168087433279730

`∑[A214899(n)+A001590(n+1)]`
-/

namespace A073728.P793168087433279730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n + A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073728.P793168087433279730

namespace A073728

/-- `∑[A214899(n)+A001590(n+1)]` -/
def P793168087433279730.Spec : Prop :=
  ∀ n, P793168087433279730.a n = A073728 n

end A073728

/-! ## A073728.P11123494013580788006

`∑[A276658(n+1)+A081172(n)]`
-/

namespace A073728.P11123494013580788006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (n + 1) + A081172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073728.P11123494013580788006

namespace A073728

/-- `∑[A276658(n+1)+A081172(n)]` -/
def P11123494013580788006.Spec : Prop :=
  ∀ n, P11123494013580788006.a n = A073728 n

end A073728

/-! ## A073728.P7207446203192474340

`A020992(n+1)+A007486(n+1)`
-/

namespace A073728.P7207446203192474340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 1) + A007486 (n + 1)

end

end A073728.P7207446203192474340

namespace A073728

/-- `A020992(n+1)+A007486(n+1)` -/
def P7207446203192474340.Spec : Prop :=
  ∀ n, P7207446203192474340.a n = A073728 n

end A073728

/-! ## A073728.P15249457803259465505

`A145027(n+1)+A000213(n+1)`
-/

namespace A073728.P15249457803259465505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145027 (n + 1) + A000213 (n + 1)

end

end A073728.P15249457803259465505

namespace A073728

/-- `A145027(n+1)+A000213(n+1)` -/
def P15249457803259465505.Spec : Prop :=
  ∀ n, P15249457803259465505.a n = A073728 n

end A073728

/-!
# A073729: Concatenation of initial and final digits of n in decimal representation.

The programs for A073729, there is no canonical definition to state claims against.
-/

/-! ## A073729.P14287381089991880998

`A073730(A087019(n+1))-A108782(n+1)`
-/

namespace A073729.P14287381089991880998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073730 (A087019 (n + 1)).toNat - A108782 (n + 1)

end

end A073729.P14287381089991880998

/-! ## A073729.P784796981041286931

`lcm(n+1, A072438(A020338(n+1)))`
-/

namespace A073729.P784796981041286931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A072438 (A020338 (n + 1)).toNat)

end

end A073729.P784796981041286931

/-! ## A073729.P5318990952342123646

`A072436(n+1)*A097706((n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1))+(n+1)*(n+2))`
-/

namespace A073729.P5318990952342123646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (n + 1) * A097706 ((n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ)) + ((n + 1) * (n + 2) : ℤ)).toNat

end

end A073729.P5318990952342123646

/-! ## A073729.P1522667717888751135

`A072436(n+1)*A097706(A020338(n+1))`
-/

namespace A073729.P1522667717888751135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (n + 1) * A097706 (A020338 (n + 1)).toNat

end

end A073729.P1522667717888751135

/-! ## A073729.P5644670639337050406

`A072438(A020338(n+1))*A170818(n+1)`
-/

namespace A073729.P5644670639337050406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A020338 (n + 1)).toNat * A170818 (n + 1)

end

end A073729.P5644670639337050406

/-! ## A073729.P14827852637145189161

`gcd(A005843(A020338(n+1)), A008593(n+1))`
-/

namespace A073729.P14827852637145189161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (A020338 (n + 1)).toNat) (A008593 (n + 1))

end

end A073729.P14827852637145189161

/-! ## A073729.P14461096931301086614

`gcd(A008599(A020338(n+1)), A052191(n+1))`
-/

namespace A073729.P14461096931301086614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008599 (A020338 (n + 1)).toNat) (A052191 (n + 1))

end

end A073729.P14461096931301086614

/-! ## A073729.P5621139285515466361

`gcd(A020338(n+1), A059995(A056525(n+1)))`
-/

namespace A073729.P5621139285515466361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020338 (n + 1)) (A059995 (A056525 (n + 1)).toNat)

end

end A073729.P5621139285515466361

/-! ## A073729.P8963636989610665973

`lcm(A000027(n+1), A097706(A020338(n+1)))`
-/

namespace A073729.P8963636989610665973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A097706 (A020338 (n + 1)).toNat)

end

end A073729.P8963636989610665973

/-! ## A073729.P7606192848428371890

`(n+1)*A014963(∏[A083888(n+1)]+10)`
-/

namespace A073729.P7606192848428371890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014963 (∏ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A073729.P7606192848428371890

/-!
# A073730: Concatenation of largest and smallest digits of n in decimal representation.

The programs for A073730, the canonical program `A073730.P5401388595630753803` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073730 has offset 1).

The definition of A073730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073730.P448532722887350500

`A073729(A004186(n+1))`
-/

namespace A073730.P448532722887350500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A004186 (n + 1)).toNat

end

end A073730.P448532722887350500

namespace A073730

/-- `A073729(A004186(n+1))` -/
def P448532722887350500.Spec : Prop :=
  ∀ n, P448532722887350500.a n = A073730 (n + 1)

end A073730

/-! ## A073730.P15588526290040800097

`A073729(A227362(n+1))`
-/

namespace A073730.P15588526290040800097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A227362 (n + 1)).toNat

end

end A073730.P15588526290040800097

namespace A073730

/-- `A073729(A227362(n+1))` -/
def P15588526290040800097.Spec : Prop :=
  ∀ n, P15588526290040800097.a n = A073730 (n + 1)

end A073730

/-! ## A073730.P343641510509452188

`A073729(A108782(n+1)+n+1)`
-/

namespace A073730.P343641510509452188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A108782 (n + 1) + (n + 1 : ℤ)).toNat

end

end A073730.P343641510509452188

namespace A073730

/-- `A073729(A108782(n+1)+n+1)` -/
def P343641510509452188.Spec : Prop :=
  ∀ n, P343641510509452188.a n = A073730 (n + 1)

end A073730

/-! ## A073730.P5401388595630753803

`A054054(n+1)+10*A054055(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073730

/-- `A054054(n+1)+10*A054055(n+1)` -/
def P5401388595630753803.Spec : Prop :=
  ∀ n, P5401388595630753803.a n = A073730 (n + 1)

theorem P5401388595630753803.correct : P5401388595630753803.Spec := by
  intro n
  simp only [A073730, Nat.add_sub_cancel]

end A073730

/-! ## A073730.P1611917358824509963

`A265558(A073729(n+1))-A000030(A347689(n+1))`
-/

namespace A073730.P1611917358824509963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 (A073729 (n + 1)).toNat - A000030 (A347689 (n + 1)).toNat

end

end A073730.P1611917358824509963

namespace A073730

/-- `A265558(A073729(n+1))-A000030(A347689(n+1))` -/
def P1611917358824509963.Spec : Prop :=
  ∀ n, P1611917358824509963.a n = A073730 (n + 1)

end A073730

/-! ## A073730.P7536456389303842994

`A265558(A073729(n+1))-A037851(A082216(n+1))`
-/

namespace A073730.P7536456389303842994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 (A073729 (n + 1)).toNat - A037851 (A082216 (n + 1)).toNat

end

end A073730.P7536456389303842994

namespace A073730

/-- `A265558(A073729(n+1))-A037851(A082216(n+1))` -/
def P7536456389303842994.Spec : Prop :=
  ∀ n, P7536456389303842994.a n = A073730 (n + 1)

end A073730

/-! ## A073730.P15451131367971902778

`A109014(A297330(n+1))*A227362(A056544(n+1))`
-/

namespace A073730.P15451131367971902778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 (A297330 (n + 1)).toNat * A227362 (A056544 (n + 1)).toNat

end

end A073730.P15451131367971902778

namespace A073730

/-- `A109014(A297330(n+1))*A227362(A056544(n+1))` -/
def P15451131367971902778.Spec : Prop :=
  ∀ n, P15451131367971902778.a n = A073730 (n + 1)

end A073730

/-! ## A073730.P13996018873258039982

`A109014(A020338(n+1))*A227362(n+1)`
-/

namespace A073730.P13996018873258039982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 (A020338 (n + 1)).toNat * A227362 (n + 1)

end

end A073730.P13996018873258039982

namespace A073730

/-- `A109014(A020338(n+1))*A227362(n+1)` -/
def P13996018873258039982.Spec : Prop :=
  ∀ n, P13996018873258039982.a n = A073730 (n + 1)

end A073730

/-! ## A073730.P3596504837325036292

`A109014(A297330(n+1))*A227362(A056524(n+1))`
-/

namespace A073730.P3596504837325036292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 (A297330 (n + 1)).toNat * A227362 (A056524 (n + 1)).toNat

end

end A073730.P3596504837325036292

namespace A073730

/-- `A109014(A297330(n+1))*A227362(A056524(n+1))` -/
def P3596504837325036292.Spec : Prop :=
  ∀ n, P3596504837325036292.a n = A073730 (n + 1)

end A073730

/-!
# A073731: Least k such that A073729(k) = n.

The programs for A073731, there is no canonical definition to state claims against.
-/

/-! ## A073731.P11788673610803595857

`lcm(11, n+10)/11`
-/

namespace A073731.P11788673610803595857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 11 (n + 10) : ℚ) / 11

end

end A073731.P11788673610803595857

/-! ## A073731.P8686147081087026798

`(n+10)/gcd(11, 1-n)`
-/

namespace A073731.P8686147081087026798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℚ) / (Int.gcd 11 (1 - (n : ℤ)) : ℚ)

end

end A073731.P8686147081087026798

/-! ## A073731.P11580467819903625840

`A106612(n+10)`
-/

namespace A073731.P11580467819903625840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (n + 10)

end

end A073731.P11580467819903625840

/-! ## A073731.P1064321730478885792

`A137564(n+10)`
-/

namespace A073731.P1064321730478885792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (n + 10)

end

end A073731.P1064321730478885792

/-! ## A073731.P15084122657986760017

`A337864(n+10)`
-/

namespace A073731.P15084122657986760017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 (n + 10)

end

end A073731.P15084122657986760017

/-! ## A073731.P16357594829188680911

`floor(A082216(n+10)/10)`
-/

namespace A073731.P16357594829188680911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082216 (n + 10) : ℚ) / 10⌋

end

end A073731.P16357594829188680911

/-! ## A073731.P3750361758850199950

`(n+10)/A109014(n+10)`
-/

namespace A073731.P3750361758850199950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℚ) / (A109014 (n + 10) : ℚ)

end

end A073731.P3750361758850199950

/-! ## A073731.P13917866657697381977

`gcd(n+10, A321537(n+10))`
-/

namespace A073731.P13917866657697381977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 10 : ℤ) (A321537 (n + 10))

end

end A073731.P13917866657697381977

/-! ## A073731.P4043898812789886454

`A056960(A056960(n+10))`
-/

namespace A073731.P4043898812789886454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (A056960 (n + 10)).toNat

end

end A073731.P4043898812789886454

/-! ## A073731.P6311156851886896954

`A054531(Δ[A000292(n+9)]-abs(1-n))`
-/

namespace A073731.P6311156851886896954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (f1 (n + 1) - f1 n - |1 - (n : ℤ)|).toNat

end

end A073731.P6311156851886896954

/-!
# A073733: Numerators of convergents to log_2(10).

The programs for A073733, there is no canonical definition to state claims against.
-/

/-! ## A073733.P4196382480439382271

`A333332(ceil(cosh(sin(n))+n))`
-/

namespace A073733.P4196382480439382271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333332 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat

end

end A073733.P4196382480439382271

/-! ## A073733.P3510192078127574612

`A333332(n+2-floor(acot(n)))`
-/

namespace A073733.P3510192078127574612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333332 ((n + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A073733.P3510192078127574612

/-! ## A073733.P8525530700960636613

`gcd(floor(acot(n)), A333332(n+2))`
-/

namespace A073733.P8525530700960636613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A333332 (n + 2))

end

end A073733.P8525530700960636613

/-! ## A073733.P2008405677690331008

`A333332(ceil(sin(n)²)+n+1)`
-/

namespace A073733.P2008405677690331008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333332 (⌈Real.sin (n : ℝ) ^ 2⌉ + (n + 1 : ℤ)).toNat

end

end A073733.P2008405677690331008

/-! ## A073733.P2425142207980606877

`A333332(A065475(n+1))`
-/

namespace A073733.P2425142207980606877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333332 (A065475 (n + 1)).toNat

end

end A073733.P2425142207980606877

/-!
# A073734: GCD of consecutive members of the EKG sequence A064413.

The programs for A073734, there is no canonical definition to state claims against.
-/

/-! ## A073734.P10947035541307829599

`gcd(A064413(n+1), A064426(n+1))`
-/

namespace A073734.P10947035541307829599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064413 (n + 1)) (A064426 (n + 1))

end

end A073734.P10947035541307829599

/-! ## A073734.P5171381530604986242

`gcd(abs(A064426(n+1)), A169839(n+1))`
-/

namespace A073734.P5171381530604986242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A064426 (n + 1)| (A169839 (n + 1))

end

end A073734.P5171381530604986242

/-! ## A073734.P4515211051127737786

`gcd(A064426(n+1), A169839(A028310(n)))`
-/

namespace A073734.P4515211051127737786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064426 (n + 1)) (A169839 (A028310 n).toNat)

end

end A073734.P4515211051127737786

/-! ## A073734.P3893645160663223907

`gcd(Δ[A065057(n)], A064413(n+2))`
-/

namespace A073734.P3893645160663223907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A064413 (n + 2))

end

end A073734.P3893645160663223907

/-! ## A073734.P795197686359397306

`sqrt(gcd(A104125(n+1), A104125(n+2)))`
-/

namespace A073734.P795197686359397306
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (A104125 (n + 1)) (A104125 (n + 2)) : ℝ)

end

end A073734.P795197686359397306

/-!
# A073736: Sum of primes whose index is congruent to n (mod 3); equals the partial sums of A073737 (in which sums of three successive terms form the primes).

The programs for A073736, the canonical program `A073736.P9525934929482745287` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073736 has offset 0).

The definition of A073736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073736.P12194975470856566976

`∑[A073737(n+1)]`
-/

namespace A073736.P12194975470856566976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073736.P12194975470856566976

namespace A073736

/-- `∑[A073737(n+1)]` -/
def P12194975470856566976.Spec : Prop :=
  ∀ n, P12194975470856566976.a n = A073736 n

end A073736

/-! ## A073736.P9525934929482745287

`A000040(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A073736

/-- `A000040(n)+a(n-3)` -/
def P9525934929482745287.Spec : Prop :=
  ∀ n, P9525934929482745287.a n = A073736 n

theorem P9525934929482745287.correct : P9525934929482745287.Spec := by
  intro n
  simp only [A073736]

end A073736

/-! ## A073736.P17454989259587834139

`record[A006530(n+1)]+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A073736.P17454989259587834139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 3)

end

end A073736.P17454989259587834139

namespace A073736

/-- `record[A006530(n+1)]+a(n-3)` -/
def P17454989259587834139.Spec : Prop :=
  ∀ n, P17454989259587834139.a n = A073736 n

end A073736

/-! ## A073736.P7844563501867081389

`record[A020639(n+1)]+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A073736.P7844563501867081389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 3)

end

end A073736.P7844563501867081389

namespace A073736

/-- `record[A020639(n+1)]+a(n-3)` -/
def P7844563501867081389.Spec : Prop :=
  ∀ n, P7844563501867081389.a n = A073736 n

end A073736

/-! ## A073736.P15279545554296525139

`record[A014963(n+1)]+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A073736.P15279545554296525139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 3)

end

end A073736.P15279545554296525139

namespace A073736

/-- `record[A014963(n+1)]+a(n-3)` -/
def P15279545554296525139.Spec : Prop :=
  ∀ n, P15279545554296525139.a n = A073736 n

end A073736

/-!
# A073737: Sums of three successive terms form the odd primes.

The programs for A073737, the canonical program `A073737.P13520779730791414934` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073737 has offset 1).

The definition of A073737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073737.P13520779730791414934

`A054541(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A073737

/-- `A054541(n)+a(n-3)` -/
def P13520779730791414934.Spec : Prop :=
  ∀ n, P13520779730791414934.a n = A073737 (n + 1)

theorem P13520779730791414934.correct : P13520779730791414934.Spec := by
  intro n
  simp only [A073737, Nat.add_sub_cancel]

end A073737

/-! ## A073737.P2919501477754535283

`A125266(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A073737.P2919501477754535283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A125266 n + a (n - 3)

end

end A073737.P2919501477754535283

namespace A073737

/-- `A125266(n)+a(n-3)` -/
def P2919501477754535283.Spec : Prop :=
  ∀ n, P2919501477754535283.a n = A073737 (n + 1)

end A073737

/-! ## A073737.P7985218797548602524

`A181346(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A073737.P7985218797548602524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A181346 n + a (n - 3)

end

end A073737.P7985218797548602524

namespace A073737

/-- `A181346(n)+a(n-3)` -/
def P7985218797548602524.Spec : Prop :=
  ∀ n, P7985218797548602524.a n = A073737 (n + 1)

end A073737

/-! ## A073737.P13955150309354230559

`Δ[A000040(n-1)+a(n-3)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A073737.P13955150309354230559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  A000040 (n - 1) + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073737.P13955150309354230559

namespace A073737

/-- `Δ[A000040(n-1)+a(n-3)]` -/
def P13955150309354230559.Spec : Prop :=
  ∀ n, P13955150309354230559.a n = A073737 (n + 1)

end A073737

/-! ## A073737.P170194542006552873

`A000040(n)-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A073737.P170194542006552873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000040 n - (a (n - 1) + a (n - 2))

end

end A073737.P170194542006552873

namespace A073737

/-- `A000040(n)-(a(n-1)+a(n-2))` -/
def P170194542006552873.Spec : Prop :=
  ∀ n, P170194542006552873.a n = A073737 (n + 1)

end A073737

/-! ## A073737.P11648113141281538514

`A008578(n+1)-(a(n-2)+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A073737.P11648113141281538514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008578 (n + 1) - (a (n - 2) + a (n - 1))

end

end A073737.P11648113141281538514

namespace A073737

/-- `A008578(n+1)-(a(n-2)+a(n-1))` -/
def P11648113141281538514.Spec : Prop :=
  ∀ n, P11648113141281538514.a n = A073737 (n + 1)

end A073737

/-! ## A073737.P18185083192232435786

`A182986(n+1)-(a(n-2)+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A073737.P18185083192232435786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A182986 (n + 1) - (a (n - 2) + a (n - 1))

end

end A073737.P18185083192232435786

namespace A073737

/-- `A182986(n+1)-(a(n-2)+a(n-1))` -/
def P18185083192232435786.Spec : Prop :=
  ∀ n, P18185083192232435786.a n = A073737 (n + 1)

end A073737

/-! ## A073737.P15401747442409687273

`Δ[A158611(n+1)]+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A073737.P15401747442409687273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 3)

end

end A073737.P15401747442409687273

namespace A073737

/-- `Δ[A158611(n+1)]+a(n-3)` -/
def P15401747442409687273.Spec : Prop :=
  ∀ n, P15401747442409687273.a n = A073737 (n + 1)

end A073737

/-! ## A073737.P1212541582764089508

`Δ[A073736(n+2)-A065091(n+1)]`
-/

namespace A073737.P1212541582764089508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073736 (n + 2) - A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073737.P1212541582764089508

namespace A073737

/-- `Δ[A073736(n+2)-A065091(n+1)]` -/
def P1212541582764089508.Spec : Prop :=
  ∀ n, P1212541582764089508.a n = A073737 (n + 1)

end A073737

/-! ## A073737.P10749557407293058846

`Δ[A073736(n+2)]-A001223(n+2)`
-/

namespace A073737.P10749557407293058846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073736 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001223 (n + 2)

end

end A073737.P10749557407293058846

namespace A073737

/-- `Δ[A073736(n+2)]-A001223(n+2)` -/
def P10749557407293058846.Spec : Prop :=
  ∀ n, P10749557407293058846.a n = A073737 (n + 1)

end A073737

/-! ## A073737.P8281380029204303678

`Δ[A073736(n+2)-A008578(n+3)]`
-/

namespace A073737.P8281380029204303678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073736 (n + 2) - A008578 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073737.P8281380029204303678

namespace A073737

/-- `Δ[A073736(n+2)-A008578(n+3)]` -/
def P8281380029204303678.Spec : Prop :=
  ∀ n, P8281380029204303678.a n = A073737 (n + 1)

end A073737

/-!
# A073738: Sum of every other prime <= n-th prime down to 2 or 1; equals the partial sums of A036467 (in which sums of two consecutive terms form the primes).

The programs for A073738, the canonical program `A073738.P9704381599669692586` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073738 has offset 0).

The definition of A073738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073738.P9704381599669692586

`∑[A036467(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073738

/-- `∑[A036467(n)]` -/
def P9704381599669692586.Spec : Prop :=
  ∀ n, P9704381599669692586.a n = A073738 n

theorem P9704381599669692586.correct : P9704381599669692586.Spec := by
  intro n
  simp only [A073738]

end A073738

/-! ## A073738.P10659149914841351228

`∑[A008347(n)+(-1)^n]`
-/

namespace A073738.P10659149914841351228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073738.P10659149914841351228

namespace A073738

/-- `∑[A008347(n)+(-1)^n]` -/
def P10659149914841351228.Spec : Prop :=
  ∀ n, P10659149914841351228.a n = A073738 n

end A073738

/-! ## A073738.P4689337910461518786

`∑[A083236(n)-(-1)^n]`
-/

namespace A073738.P4689337910461518786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083236 n - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073738.P4689337910461518786

namespace A073738

/-- `∑[A083236(n)-(-1)^n]` -/
def P4689337910461518786.Spec : Prop :=
  ∀ n, P4689337910461518786.a n = A073738 n

end A073738

/-! ## A073738.P1826327166112306494

`A000040(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A073738.P1826327166112306494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000040 n + a (n - 2)

end

end A073738.P1826327166112306494

namespace A073738

/-- `A000040(n)+a(n-2)` -/
def P1826327166112306494.Spec : Prop :=
  ∀ n, P1826327166112306494.a n = A073738 n

end A073738

/-! ## A073738.P6150748975915919421

`1+A007504(n)-a(n-1)` with `a(0)=1`
-/

namespace A073738.P6150748975915919421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 + A007504 n - a (n - 1)

end

end A073738.P6150748975915919421

namespace A073738

/-- `1+A007504(n)-a(n-1)` -/
def P6150748975915919421.Spec : Prop :=
  ∀ n, P6150748975915919421.a n = A073738 n

end A073738

/-! ## A073738.P7323886740054408607

`A014284(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A073738.P7323886740054408607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014284 (n + 1) - a (n - 1)

end

end A073738.P7323886740054408607

namespace A073738

/-- `A014284(n+1)-a(n-1)` -/
def P7323886740054408607.Spec : Prop :=
  ∀ n, P7323886740054408607.a n = A073738 n

end A073738

/-! ## A073738.P15753481363549284458

`a(n-2)+A006093(n)+1` with `a(0)=1, a(1)=2`
-/

namespace A073738.P15753481363549284458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (A006093 n + 1)

end

end A073738.P15753481363549284458

namespace A073738

/-- `a(n-2)+A006093(n)+1` -/
def P15753481363549284458.Spec : Prop :=
  ∀ n, P15753481363549284458.a n = A073738 n

end A073738

/-! ## A073738.P11440877106423348667

`A008578(n+1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A073738.P11440877106423348667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008578 (n + 1) + a (n - 2)

end

end A073738.P11440877106423348667

namespace A073738

/-- `A008578(n+1)+a(n-2)` -/
def P11440877106423348667.Spec : Prop :=
  ∀ n, P11440877106423348667.a n = A073738 n

end A073738

/-! ## A073738.P12880084517117782686

`∑[A000040(2*n-n)-a(n-1)]` with `a(0)=1`
-/

namespace A073738.P12880084517117782686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000040 (2 * n - n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073738.P12880084517117782686

namespace A073738

/-- `∑[A000040(2*n-n)-a(n-1)]` -/
def P12880084517117782686.Spec : Prop :=
  ∀ n, P12880084517117782686.a n = A073738 n

end A073738

/-! ## A073738.P13637201456560417919

`∑[A033999(n)+A008347(n)]`
-/

namespace A073738.P13637201456560417919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A008347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073738.P13637201456560417919

namespace A073738

/-- `∑[A033999(n)+A008347(n)]` -/
def P13637201456560417919.Spec : Prop :=
  ∀ n, P13637201456560417919.a n = A073738 n

end A073738

/-! ## A073738.P8767796422415443540

`A355726(n+1)+A330545(n+2)-A330547(n+2)`
-/

namespace A073738.P8767796422415443540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355726 (n + 1) + (A330545 (n + 2) - A330547 (n + 2))

end

end A073738.P8767796422415443540

namespace A073738

/-- `A355726(n+1)+A330545(n+2)-A330547(n+2)` -/
def P8767796422415443540.Spec : Prop :=
  ∀ n, P8767796422415443540.a n = A073738 n

end A073738

/-! ## A073738.P5439872631028817927

`∑[A158611(n+2)-a(n-1)]` with `a(0)=1`
-/

namespace A073738.P5439872631028817927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A158611 (n + 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073738.P5439872631028817927

namespace A073738

/-- `∑[A158611(n+2)-a(n-1)]` -/
def P5439872631028817927.Spec : Prop :=
  ∀ n, P5439872631028817927.a n = A073738 n

end A073738

/-! ## A073738.P2981390823771782829

`record[A006530(n+1)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A073738.P2981390823771782829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A073738.P2981390823771782829

namespace A073738

/-- `record[A006530(n+1)]+a(n-2)` -/
def P2981390823771782829.Spec : Prop :=
  ∀ n, P2981390823771782829.a n = A073738 n

end A073738

/-! ## A073738.P2238656872994572755

`record[A008472(n+1)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A073738.P2238656872994572755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A073738.P2238656872994572755

namespace A073738

/-- `record[A008472(n+1)]+a(n-2)` -/
def P2238656872994572755.Spec : Prop :=
  ∀ n, P2238656872994572755.a n = A073738 n

end A073738

/-! ## A073738.P18007083411463496087

`∑[record[A020639(n+1)]-a(n-1)]` with `a(0)=1`
-/

namespace A073738.P18007083411463496087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073738.P18007083411463496087

namespace A073738

/-- `∑[record[A020639(n+1)]-a(n-1)]` -/
def P18007083411463496087.Spec : Prop :=
  ∀ n, P18007083411463496087.a n = A073738 n

end A073738

/-! ## A073738.P14886413804074725768

`∑[record[A014963(n+1)]]-a(n-1)` with `a(0)=1`
-/

namespace A073738.P14886413804074725768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A073738.P14886413804074725768

namespace A073738

/-- `∑[record[A014963(n+1)]]-a(n-1)` -/
def P14886413804074725768.Spec : Prop :=
  ∀ n, P14886413804074725768.a n = A073738 n

end A073738

/-!
# A073739: Least positive integers whose convolution forms a sequence whose odd-indexed terms are twice the odd primes (see: A073740).

The programs for A073739, the canonical program `A073739.P979262354047833449` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073739 has offset 0).

The definition of A073739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073739.P979262354047833449

`floor(ratio[A036467(A142150(n))])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073739

/-- `floor(ratio[A036467(A142150(n))])` -/
def P979262354047833449.Spec : Prop :=
  ∀ n, P979262354047833449.a n = A073739 n

theorem P979262354047833449.correct : P979262354047833449.Spec := by
  intro n
  simp only [A073739]

end A073739

/-! ## A073739.P16232752791935026478

`A160595(A084858(n))%A233583(n+1)`
-/

namespace A073739.P16232752791935026478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160595 (A084858 n).toNat) (A233583 (n + 1))

end

end A073739.P16232752791935026478

namespace A073739

/-- `A160595(A084858(n))%A233583(n+1)` -/
def P16232752791935026478.Spec : Prop :=
  ∀ n, P16232752791935026478.a n = A073739 n

end A073739

/-! ## A073739.P913361073947029166

`C(A335885(A350919(n)), A003415(n))`
-/

namespace A073739.P913361073947029166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A335885 (A350919 n).toNat).toNat (A003415 n).toNat

end

end A073739.P913361073947029166

namespace A073739

/-- `C(A335885(A350919(n)), A003415(n))` -/
def P913361073947029166.Spec : Prop :=
  ∀ n, (P913361073947029166.a n : ℤ) = A073739 n

end A073739

/-! ## A073739.P6904202538892311217

`A127279(A153152(n))%A105222(n+1)`
-/

namespace A073739.P6904202538892311217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127279 (A153152 n).toNat) (A105222 (n + 1))

end

end A073739.P6904202538892311217

namespace A073739

/-- `A127279(A153152(n))%A105222(n+1)` -/
def P6904202538892311217.Spec : Prop :=
  ∀ n, P6904202538892311217.a n = A073739 n

end A073739

/-! ## A073739.P8485220856579129140

`or(A007814(A285543(n+1)), A319000(n+1))`
-/

namespace A073739.P8485220856579129140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A285543 (n + 1)).toNat) (A319000 (n + 1))

end

end A073739.P8485220856579129140

namespace A073739

/-- `or(A007814(A285543(n+1)), A319000(n+1))` -/
def P8485220856579129140.Spec : Prop :=
  ∀ n, P8485220856579129140.a n = A073739 n

end A073739

/-!
# A073741: Number of steps needed to reach a prime when the following map is repeatedly applied to n: if n is even then 2n+1, otherwise 2n-1; or -1 if no prime is ever reached.

The programs for A073741, there is no canonical definition to state claims against.
-/

/-! ## A073741.P2132135303638961116

`A078680(or(1, n)+1)`
-/

namespace A073741.P2132135303638961116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (Nat.lor 1 n + 1)

end

end A073741.P2132135303638961116

/-! ## A073741.P8221286461932644490

`A078680(gcd(2, n)+n)`
-/

namespace A073741.P8221286461932644490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (Nat.gcd 2 n + n)

end

end A073741.P8221286461932644490

/-! ## A073741.P7304925844405088117

`A078680(and(n+2, -2))`
-/

namespace A073741.P7304925844405088117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (Int.land (n + 2 : ℤ) (-2)).toNat

end

end A073741.P7304925844405088117

/-! ## A073741.P10192271094749458861

`A078680(n-or(n, -2))`
-/

namespace A073741.P10192271094749458861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 ((n : ℤ) - Int.lor (n : ℤ) (-2)).toNat

end

end A073741.P10192271094749458861

/-! ## A073741.P18359343098825743813

`A078680(record[or(2, n)]-n)`
-/

namespace A073741.P18359343098825743813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - n)

end

end A073741.P18359343098825743813

/-! ## A073741.P6752053318172445856

`A078680(n+2-n%2)`
-/

namespace A073741.P6752053318172445856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (n + 2 - n % 2)

end

end A073741.P6752053318172445856

/-! ## A073741.P16043769658916239960

`A078680(n+2-and(1, n))`
-/

namespace A073741.P16043769658916239960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (n + 2 - Nat.land 1 n)

end

end A073741.P16043769658916239960

/-! ## A073741.P18175437530918062569

`A078680(2*floor(n/2)+2)`
-/

namespace A073741.P18175437530918062569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (2 * ⌊(n : ℚ) / 2⌋ + 2).toNat

end

end A073741.P18175437530918062569

/-!
# A073744: Decimal expansion of tanh(1).

The programs for A073744, there is no canonical definition to state claims against.
-/

/-! ## A073744.P3489135579021105631

`9-A349003(n)`
-/

namespace A073744.P3489135579021105631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A349003 n

end

end A073744.P3489135579021105631

/-!
# A073747: Decimal expansion of coth(1).

The programs for A073747, there is no canonical definition to state claims against.
-/

/-! ## A073747.P18362214076077759430

`A349004(abs(1-n))`
-/

namespace A073747.P18362214076077759430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349004 |1 - (n : ℤ)|.toNat

end

end A073747.P18362214076077759430

/-! ## A073747.P5890227238146665702

`A349004(abs(A023443(n)))%(A000034(n)+25)`
-/

namespace A073747.P5890227238146665702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349004 |A023443 n|.toNat) (A000034 n + 25)

end

end A073747.P5890227238146665702

/-! ## A073747.P9133911018883621254

`A349004(A000038(n)-A024000(n))%(A000034(n)+25)`
-/

namespace A073747.P9133911018883621254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349004 (A000038 n - A024000 n).toNat) (A000034 n + 25)

end

end A073747.P9133911018883621254

/-! ## A073747.P13660607616698387840

`A349004(A000038(n)-A024000(n))-(A033999(2*(n+2))-1)`
-/

namespace A073747.P13660607616698387840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349004 (A000038 n - A024000 n).toNat - (A033999 (2 * (n + 2)) - 1)

end

end A073747.P13660607616698387840

/-!
# A073748: a(n) = S(n)*S(n-1), where S(n) are the generalized tribonacci numbers A001644.

The programs for A073748, the canonical program `A073748.P8991341733679450782` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073748 has offset 0).

The definition of A073748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073748.P8991341733679450782

`2*a(n-1)+3*a(n-2)+6*a(n-3)-a(n-4)-a(n-6)` with `a(0)=-3, a(1)=3, a(2)=3, a(3)=21, a(4)=77, a(5)=231`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073748

/-- `2*a(n-1)+3*a(n-2)+6*a(n-3)-a(n-4)-a(n-6)` -/
def P8991341733679450782.Spec : Prop :=
  ∀ n, P8991341733679450782.a n = A073748 n

theorem P8991341733679450782.correct : P8991341733679450782.Spec := by
  intro n
  simp only [A073748]

end A073748

/-! ## A073748.P12659745834610018346

`Δ[Δ[A214727(n)]]*A001644(n)`
-/

namespace A073748.P12659745834610018346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001644 n

end

end A073748.P12659745834610018346

namespace A073748

/-- `Δ[Δ[A214727(n)]]*A001644(n)` -/
def P12659745834610018346.Spec : Prop :=
  ∀ n, P12659745834610018346.a n = A073748 n

end A073748

/-! ## A073748.P1188576590053676380

`A214727(n)²-(A020992(n)-A214899(n))²`
-/

namespace A073748.P1188576590053676380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n ^ 2 - (A020992 n - A214899 n) ^ 2

end

end A073748.P1188576590053676380

namespace A073748

/-- `A214727(n)²-(A020992(n)-A214899(n))²` -/
def P1188576590053676380.Spec : Prop :=
  ∀ n, P1188576590053676380.a n = A073748 n

end A073748

/-!
# A073749: Numerators of the fractional coefficients of the square-root of the prime power series: sum_{n=0..inf} p_n x^n, where p_n is the n-th prime and p_0 is defined to be 1.

The programs for A073749, there is no canonical definition to state claims against.
-/

/-! ## A073749.P17983684358386557478

`or(A261090(n), A261096(A113201(n+4)))`
-/

namespace A073749.P17983684358386557478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A261090 n) (A261096 (A113201 (n + 4)).toNat)

end

end A073749.P17983684358386557478

/-!
# A073750: Factors of 2 in the denominators of the fractional coefficients of the square-root of the prime power series: sum_{n=0..inf} p_n x^n, where p_n is the n-th prime and p_0 is defined to be 1.

The programs for A073750, the canonical program `A073750.P15113453016863271244` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073750 has offset 0).

The definition of A073750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073750.P15113453016863271244

`floor(a(floor(n/2))+n/3)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073750

/-- `floor(a(floor(n/2))+n/3)` -/
def P15113453016863271244.Spec : Prop :=
  ∀ n, P15113453016863271244.a n = A073750 n

theorem P15113453016863271244.correct : P15113453016863271244.Spec := by
  intro n
  simp only [A073750]

end A073750

/-! ## A073750.P2004942101457101410

`∑[val(comp[∑[n%3+1]]+1, 2)]`
-/

namespace A073750.P2004942101457101410
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073750.P2004942101457101410

namespace A073750

/-- `∑[val(comp[∑[n%3+1]]+1, 2)]` -/
def P2004942101457101410.Spec : Prop :=
  ∀ n, (P2004942101457101410.a n : ℤ) = A073750 n

end A073750

/-! ## A073750.P18232847014035714622

`comp[or(3, n)]-(n-a(floor(n/2)))` with `a(0)=0`
-/

namespace A073750.P18232847014035714622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A073750.P18232847014035714622

namespace A073750

/-- `comp[or(3, n)]-(n-a(floor(n/2)))` -/
def P18232847014035714622.Spec : Prop :=
  ∀ n, P18232847014035714622.a n = A073750 n

end A073750

/-! ## A073750.P9254686700603269821

`∑[∑{e}[xor(n*(gcd(3, n)-2), -n), #]]`
-/

namespace A073750.P9254686700603269821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) * ((Nat.gcd 3 n : ℤ) - 2)) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073750.P9254686700603269821

namespace A073750

/-- `∑[∑{e}[xor(n*(gcd(3, n)-2), -n), #]]` -/
def P9254686700603269821.Spec : Prop :=
  ∀ n, (P9254686700603269821.a n : ℤ) = A073750 n

end A073750

/-! ## A073750.P8018898019681586047

`∑[(1-n²%3)*∑{e}[xor(n, -n), #]]`
-/

namespace A073750.P8018898019681586047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n ^ 2 % 3 : ℕ) : ℤ)) * ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073750.P8018898019681586047

namespace A073750

/-- `∑[(1-n²%3)*∑{e}[xor(n, -n), #]]` -/
def P8018898019681586047.Spec : Prop :=
  ∀ n, P8018898019681586047.a n = A073750 n

end A073750

/-! ## A073750.P237485100645134661

`A005187(floor(n/3))`
-/

namespace A073750.P237485100645134661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ⌊(n : ℚ) / 3⌋.toNat

end

end A073750.P237485100645134661

namespace A073750

/-- `A005187(floor(n/3))` -/
def P237485100645134661.Spec : Prop :=
  ∀ n, P237485100645134661.a n = A073750 n

end A073750

/-! ## A073750.P7313479578210750646

`∑[val(A301298(n), 2)]`
-/

namespace A073750.P7313479578210750646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A301298 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073750.P7313479578210750646

namespace A073750

/-- `∑[val(A301298(n), 2)]` -/
def P7313479578210750646.Spec : Prop :=
  ∀ n, (P7313479578210750646.a n : ℤ) = A073750 n

end A073750

/-! ## A073750.P8127109048292043904

`∑[val(A315538(2*n), 2)]`
-/

namespace A073750.P8127109048292043904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A315538 (2 * n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073750.P8127109048292043904

namespace A073750

/-- `∑[val(A315538(2*n), 2)]` -/
def P8127109048292043904.Spec : Prop :=
  ∀ n, (P8127109048292043904.a n : ℤ) = A073750 n

end A073750

/-! ## A073750.P11367761778254798796

`A011371(A004396(n))`
-/

namespace A073750.P11367761778254798796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A004396 n).toNat

end

end A073750.P11367761778254798796

namespace A073750

/-- `A011371(A004396(n))` -/
def P11367761778254798796.Spec : Prop :=
  ∀ n, P11367761778254798796.a n = A073750 n

end A073750

/-! ## A073750.P18365580903804438157

`A011371(A004523(n))`
-/

namespace A073750.P18365580903804438157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A004523 n).toNat

end

end A073750.P18365580903804438157

namespace A073750

/-- `A011371(A004523(n))` -/
def P18365580903804438157.Spec : Prop :=
  ∀ n, P18365580903804438157.a n = A073750 n

end A073750

/-! ## A073750.P5990094921095702456

`A011371(A096386(n))`
-/

namespace A073750.P5990094921095702456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A096386 n).toNat

end

end A073750.P5990094921095702456

namespace A073750

/-- `A011371(A096386(n))` -/
def P5990094921095702456.Spec : Prop :=
  ∀ n, P5990094921095702456.a n = A073750 n

end A073750

/-! ## A073750.P1095644253366446547

`A011371(A274616(n))`
-/

namespace A073750.P1095644253366446547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A274616 n).toNat

end

end A073750.P1095644253366446547

namespace A073750

/-- `A011371(A274616(n))` -/
def P1095644253366446547.Spec : Prop :=
  ∀ n, P1095644253366446547.a n = A073750 n

end A073750

/-! ## A073750.P6091595203223064859

`A274716(A226122(n))`
-/

namespace A073750.P6091595203223064859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274716 (A226122 n).toNat

end

end A073750.P6091595203223064859

namespace A073750

/-- `A274716(A226122(n))` -/
def P6091595203223064859.Spec : Prop :=
  ∀ n, P6091595203223064859.a n = A073750 n

end A073750

/-! ## A073750.P4648792066363355259

`A011371(A130823(n+1))`
-/

namespace A073750.P4648792066363355259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A130823 (n + 1)).toNat

end

end A073750.P4648792066363355259

namespace A073750

/-- `A011371(A130823(n+1))` -/
def P4648792066363355259.Spec : Prop :=
  ∀ n, P4648792066363355259.a n = A073750 n

end A073750

/-! ## A073750.P1110076128845944701

`A011371(A131737(n+1))`
-/

namespace A073750.P1110076128845944701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A131737 (n + 1)).toNat

end

end A073750.P1110076128845944701

namespace A073750

/-- `A011371(A131737(n+1))` -/
def P1110076128845944701.Spec : Prop :=
  ∀ n, P1110076128845944701.a n = A073750 n

end A073750

/-! ## A073750.P14321820103292572107

`A274716(A225055(n+1))`
-/

namespace A073750.P14321820103292572107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274716 (A225055 (n + 1)).toNat

end

end A073750.P14321820103292572107

namespace A073750

/-- `A274716(A225055(n+1))` -/
def P14321820103292572107.Spec : Prop :=
  ∀ n, P14321820103292572107.a n = A073750 n

end A073750

/-! ## A073750.P2012251277159917395

`A274715(A063200(n+2))`
-/

namespace A073750.P2012251277159917395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274715 (A063200 (n + 2)).toNat

end

end A073750.P2012251277159917395

namespace A073750

/-- `A274715(A063200(n+2))` -/
def P2012251277159917395.Spec : Prop :=
  ∀ n, P2012251277159917395.a n = A073750 n

end A073750

/-! ## A073750.P13611413894126602105

`A274715(A063224(n+2))`
-/

namespace A073750.P13611413894126602105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274715 (A063224 (n + 2)).toNat

end

end A073750.P13611413894126602105

namespace A073750

/-- `A274715(A063224(n+2))` -/
def P13611413894126602105.Spec : Prop :=
  ∀ n, P13611413894126602105.a n = A073750 n

end A073750

/-! ## A073750.P3440670017491752632

`A011371(A002264(2*n))`
-/

namespace A073750.P3440670017491752632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A002264 (2 * n)).toNat

end

end A073750.P3440670017491752632

namespace A073750

/-- `A011371(A002264(2*n))` -/
def P3440670017491752632.Spec : Prop :=
  ∀ n, P3440670017491752632.a n = A073750 n

end A073750

/-! ## A073750.P9327531474163994571

`A004523(n)-A151902(n)`
-/

namespace A073750.P9327531474163994571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n - A151902 n

end

end A073750.P9327531474163994571

namespace A073750

/-- `A004523(n)-A151902(n)` -/
def P9327531474163994571.Spec : Prop :=
  ∀ n, P9327531474163994571.a n = A073750 n

end A073750

/-!
# A073751: Prime numbers that when multiplied in order yield the sequence of colossally abundant numbers A004490.

The programs for A073751, there is no canonical definition to state claims against.
-/

/-! ## A073751.P16209732471488951107

`A000040(A342011(n+1))`
-/

namespace A073751.P16209732471488951107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A342011 (n + 1)).toNat

end

end A073751.P16209732471488951107

/-! ## A073751.P2395909944404679129

`A008578(A342011(n+1)+1)`
-/

namespace A073751.P2395909944404679129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A342011 (n + 1) + 1).toNat

end

end A073751.P2395909944404679129

/-! ## A073751.P6043236747292858409

`A158611(A342011(n+1)+2)`
-/

namespace A073751.P6043236747292858409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A342011 (n + 1) + 2).toNat

end

end A073751.P6043236747292858409

/-! ## A073751.P14651330191781400680

`∑{d}[A342011(n+1), A007444(#)]`
-/

namespace A073751.P14651330191781400680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A073751.P14651330191781400680

/-! ## A073751.P14886306213969113875

`A207790(2*A342011(n+1))`
-/

namespace A073751.P14886306213969113875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A342011 (n + 1)).toNat

end

end A073751.P14886306213969113875

/-!
# A073752: Greatest common divisor of n/spf(n) and n/gpf(n) where spf(n) is the smallest and gpf(n) is the greatest prime factor of n (see A020639, A006530).

The programs for A073752, there is no canonical definition to state claims against.
-/

/-! ## A073752.P14551933144208569763

`(n+1)/A088835(n+1)`
-/

namespace A073752.P14551933144208569763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A088835 (n + 1) : ℚ)

end

end A073752.P14551933144208569763

/-! ## A073752.P16895099942534949481

`A140580(n+1)/A066048(n+1)`
-/

namespace A073752.P16895099942534949481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140580 (n + 1) : ℚ) / (A066048 (n + 1) : ℚ)

end

end A073752.P16895099942534949481

/-! ## A073752.P15443020091138307187

`gcd(A032742(n+1), A052126(n+1))`
-/

namespace A073752.P15443020091138307187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032742 (n + 1)) (A052126 (n + 1))

end

end A073752.P15443020091138307187

/-! ## A073752.P14109353423696569420

`gcd(A060681(n+1), A130065(n+1))`
-/

namespace A073752.P14109353423696569420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060681 (n + 1)) (A130065 (n + 1))

end

end A073752.P14109353423696569420

/-! ## A073752.P16633645797789325637

`gcd(A117818(n+1), A126288(n+1))`
-/

namespace A073752.P16633645797789325637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117818 (n + 1)) (A126288 (n + 1))

end

end A073752.P16633645797789325637

/-! ## A073752.P5025095865175927553

`gcd(A126289(n+1), A130064(n+1))`
-/

namespace A073752.P5025095865175927553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126289 (n + 1)) (A130064 (n + 1))

end

end A073752.P5025095865175927553

/-! ## A073752.P9816337521765056282

`gcd(A220096(n+1), A253550(n+1))`
-/

namespace A073752.P9816337521765056282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220096 (n + 1)) (A253550 (n + 1))

end

end A073752.P9816337521765056282

/-! ## A073752.P17326559398109405460

`gcd(A171462(n+1), A322982(n+1))`
-/

namespace A073752.P17326559398109405460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A171462 (n + 1)) (A322982 (n + 1))

end

end A073752.P17326559398109405460

/-! ## A073752.P2377401130926783852

`gcd(A233511(n+1), A285639(n+1))`
-/

namespace A073752.P2377401130926783852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233511 (n + 1)) (A285639 (n + 1))

end

end A073752.P2377401130926783852

/-! ## A073752.P17805599384017973606

`(n+1)/lcm(A006530(n+1), A020639(n+1))`
-/

namespace A073752.P17805599384017973606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.lcm (A006530 (n + 1)) (A020639 (n + 1)) : ℚ)

end

end A073752.P17805599384017973606

/-! ## A073752.P10166959325672558736

`A032742(n+1)/A006530(A028234(n+1))`
-/

namespace A073752.P10166959325672558736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A006530 (A028234 (n + 1)).toNat : ℚ)

end

end A073752.P10166959325672558736

/-! ## A073752.P16083253303234144439

`A052126(n+1)/A020639(A051119(n+1))`
-/

namespace A073752.P16083253303234144439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (n + 1) : ℚ) / (A020639 (A051119 (n + 1)).toNat : ℚ)

end

end A073752.P16083253303234144439

/-! ## A073752.P9355223055658386196

`A032742((n+1)/A366649(A007947(n+1)))`
-/

namespace A073752.P9355223055658386196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A366649 (A007947 (n + 1)).toNat : ℚ))).toNat

end

end A073752.P9355223055658386196

/-! ## A073752.P12070962722811889084

`A032742(n+1)/A048671(n+1)*A052126(n+1)`
-/

namespace A073752.P12070962722811889084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A048671 (n + 1) : ℚ) * (A052126 (n + 1) : ℚ)

end

end A073752.P12070962722811889084

/-! ## A073752.P18246749330905898087

`gcd(A054576(2*(n+1)), A130065(2*(n+1)))`
-/

namespace A073752.P18246749330905898087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054576 (2 * (n + 1))) (A130065 (2 * (n + 1)))

end

end A073752.P18246749330905898087

/-! ## A073752.P13968733529325733270

`gcd(A252462(n+1), A252462(A285639(n+1)))`
-/

namespace A073752.P13968733529325733270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A252462 (n + 1)) (A252462 (A285639 (n + 1)).toNat)

end

end A073752.P13968733529325733270

/-! ## A073752.P933312676857549406

`sqrt(A073753((n+1)²))`
-/

namespace A073752.P933312676857549406
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073753 ((n + 1) ^ 2) : ℝ)

end

end A073752.P933312676857549406

/-! ## A073752.P8886029760984523818

`A070821(A140580(n+1))`
-/

namespace A073752.P8886029760984523818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (A140580 (n + 1)).toNat

end

end A073752.P8886029760984523818

/-! ## A073752.P15340487892887257608

`(n+1)/A015052(A066048(A015052(n+1)))`
-/

namespace A073752.P15340487892887257608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A015052 (A066048 (A015052 (n + 1)).toNat).toNat : ℚ)

end

end A073752.P15340487892887257608

/-! ## A073752.P17929667459692257968

`(n+1)/A015053(A066048(A015053(n+1)))`
-/

namespace A073752.P17929667459692257968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A015053 (A066048 (A015053 (n + 1)).toNat).toNat : ℚ)

end

end A073752.P17929667459692257968

/-!
# A073753: a(n) = A073752(A073752(n)), where A073752(n) = gcd(n/spf(n), n/gpf(n)), with spf(n) as the smallest and gpf(n) as the greatest prime factor of n (see A020639, A006530).

The programs for A073753, there is no canonical definition to state claims against.
-/

/-! ## A073753.P10154699185900247706

`A073752(A073752(n+1))`
-/

namespace A073753.P10154699185900247706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073752 (A073752 (n + 1)).toNat

end

end A073753.P10154699185900247706

/-! ## A073753.P11587626248264053769

`gcd(A054576(n+1), A130065(A130065(n+1)))`
-/

namespace A073753.P11587626248264053769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054576 (n + 1)) (A130065 (A130065 (n + 1)).toNat)

end

end A073753.P11587626248264053769

/-! ## A073753.P11000606996156925977

`gcd(A052126(A052126(n+1)), A117358(2*(n+1)))`
-/

namespace A073753.P11000606996156925977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052126 (A052126 (n + 1)).toNat) (A117358 (2 * (n + 1)))

end

end A073753.P11000606996156925977

/-! ## A073753.P4302800376621854744

`A003557(A003557(n+1)*A146317(n+4))`
-/

namespace A073753.P4302800376621854744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (n + 1) * A146317 (n + 4)).toNat

end

end A073753.P4302800376621854744

/-!
# A073757: a(n) = d(n) + phi(n) - 1.

The programs for A073757, the canonical program `A073757.P6861480467973211752` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073757 has offset 1).

The definition of A073757 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073757.P6861480467973211752

`A000005(n+1)+A000010(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073757

/-- `A000005(n+1)+A000010(n+1)-1` -/
def P6861480467973211752.Spec : Prop :=
  ∀ n, P6861480467973211752.a n = A073757 (n + 1)

theorem P6861480467973211752.correct : P6861480467973211752.Spec := by
  intro n
  simp only [A073757, Nat.add_sub_cancel]

end A073757

/-! ## A073757.P2943188882542973682

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+∏{e}[n+1, #+1]-1`
-/

namespace A073757.P2943188882542973682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ) - 1 : ℚ)

end

end A073757.P2943188882542973682

namespace A073757

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+∏{e}[n+1, #+1]-1` -/
def P2943188882542973682.Spec : Prop :=
  ∀ n, P2943188882542973682.a n = (A073757 (n + 1) : ℚ)

end A073757

/-! ## A073757.P11179789909419745899

`A061468(n+1)-1`
-/

namespace A073757.P11179789909419745899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) - 1

end

end A073757.P11179789909419745899

namespace A073757

/-- `A061468(n+1)-1` -/
def P11179789909419745899.Spec : Prop :=
  ∀ n, P11179789909419745899.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P122233731154458457

`1-A045763(n+1)+n`
-/

namespace A073757.P122233731154458457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A045763 (n + 1) + (n : ℤ)

end

end A073757.P122233731154458457

namespace A073757

/-- `1-A045763(n+1)+n` -/
def P122233731154458457.Spec : Prop :=
  ∀ n, P122233731154458457.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P5599389802895012411

`2-A046640(n+1)+n`
-/

namespace A073757.P5599389802895012411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A046640 (n + 1) + (n : ℤ)

end

end A073757.P5599389802895012411

namespace A073757

/-- `2-A046640(n+1)+n` -/
def P5599389802895012411.Spec : Prop :=
  ∀ n, P5599389802895012411.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P495863725608568672

`(A083245(n+1)+n+1)/2`
-/

namespace A073757.P495863725608568672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083245 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A073757.P495863725608568672

namespace A073757

/-- `(A083245(n+1)+n+1)/2` -/
def P495863725608568672.Spec : Prop :=
  ∀ n, P495863725608568672.a n = (A073757 (n + 1) : ℚ)

end A073757

/-! ## A073757.P16607628796206663460

`A023443(A061468(n+1))`
-/

namespace A073757.P16607628796206663460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A061468 (n + 1)).toNat

end

end A073757.P16607628796206663460

namespace A073757

/-- `A023443(A061468(n+1))` -/
def P16607628796206663460.Spec : Prop :=
  ∀ n, P16607628796206663460.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P1474650533695021847

`A109606(n+1)+Δ[A006218(n)]`
-/

namespace A073757.P1474650533695021847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (f1 (n + 1) - f1 n)

end

end A073757.P1474650533695021847

namespace A073757

/-- `A109606(n+1)+Δ[A006218(n)]` -/
def P1474650533695021847.Spec : Prop :=
  ∀ n, P1474650533695021847.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P17025782046875309358

`A032741(n+1)+A000010(n+1)`
-/

namespace A073757.P17025782046875309358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + A000010 (n + 1)

end

end A073757.P17025782046875309358

namespace A073757

/-- `A032741(n+1)+A000010(n+1)` -/
def P17025782046875309358.Spec : Prop :=
  ∀ n, P17025782046875309358.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P688428696279434075

`A109606(n+1)+A000005(n+1)`
-/

namespace A073757.P688428696279434075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + A000005 (n + 1)

end

end A073757.P688428696279434075

namespace A073757

/-- `A109606(n+1)+A000005(n+1)` -/
def P688428696279434075.Spec : Prop :=
  ∀ n, P688428696279434075.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P513325689425166722

`A057859(n+1)+A055212(n+1)`
-/

namespace A073757.P513325689425166722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) + A055212 (n + 1)

end

end A073757.P513325689425166722

namespace A073757

/-- `A057859(n+1)+A055212(n+1)` -/
def P513325689425166722.Spec : Prop :=
  ∀ n, P513325689425166722.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P8497358925887072781

`A083245(n+1)+A045763(n+1)`
-/

namespace A073757.P8497358925887072781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (n + 1) + A045763 (n + 1)

end

end A073757.P8497358925887072781

namespace A073757

/-- `A083245(n+1)+A045763(n+1)` -/
def P8497358925887072781.Spec : Prop :=
  ∀ n, P8497358925887072781.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P6577835953118675986

`A114003(n+1)+A063070(n+1)`
-/

namespace A073757.P6577835953118675986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) + A063070 (n + 1)

end

end A073757.P6577835953118675986

namespace A073757

/-- `A114003(n+1)+A063070(n+1)` -/
def P6577835953118675986.Spec : Prop :=
  ∀ n, P6577835953118675986.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P14671151066184437419

`A152864(n+1)+A051709(n+1)`
-/

namespace A073757.P14671151066184437419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152864 (n + 1) + A051709 (n + 1)

end

end A073757.P14671151066184437419

namespace A073757

/-- `A152864(n+1)+A051709(n+1)` -/
def P14671151066184437419.Spec : Prop :=
  ∀ n, P14671151066184437419.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P4733248571425586837

`A351519(n+1)+A036997(n+1)`
-/

namespace A073757.P4733248571425586837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351519 (n + 1) + A036997 (n + 1)

end

end A073757.P4733248571425586837

namespace A073757

/-- `A351519(n+1)+A036997(n+1)` -/
def P4733248571425586837.Spec : Prop :=
  ∀ n, P4733248571425586837.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P4931917489835461615

`A364933(n+1)+A349215(n+1)`
-/

namespace A073757.P4931917489835461615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364933 (n + 1) + A349215 (n + 1)

end

end A073757.P4931917489835461615

namespace A073757

/-- `A364933(n+1)+A349215(n+1)` -/
def P4931917489835461615.Spec : Prop :=
  ∀ n, P4931917489835461615.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P16375743373400213617

`A280577(n+1)-A003165(n+1)`
-/

namespace A073757.P16375743373400213617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280577 (n + 1) - A003165 (n + 1)

end

end A073757.P16375743373400213617

namespace A073757

/-- `A280577(n+1)-A003165(n+1)` -/
def P16375743373400213617.Spec : Prop :=
  ∀ n, P16375743373400213617.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P3340589314677745788

`A233541(n+1)-A088580(n+1)`
-/

namespace A073757.P3340589314677745788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233541 (n + 1) - A088580 (n + 1)

end

end A073757.P3340589314677745788

namespace A073757

/-- `A233541(n+1)-A088580(n+1)` -/
def P3340589314677745788.Spec : Prop :=
  ∀ n, P3340589314677745788.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P2285690212439632945

`A345451(n+1)-A063085(n+1)`
-/

namespace A073757.P2285690212439632945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) - A063085 (n + 1)

end

end A073757.P2285690212439632945

namespace A073757

/-- `A345451(n+1)-A063085(n+1)` -/
def P2285690212439632945.Spec : Prop :=
  ∀ n, P2285690212439632945.a n = A073757 (n + 1)

end A073757

/-! ## A073757.P5226813165151927458

`A325765(n)-A016035(n+1)+n`
-/

namespace A073757.P5226813165151927458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n - A016035 (n + 1) + (n : ℤ)

end

end A073757.P5226813165151927458

namespace A073757

/-- `A325765(n)-A016035(n+1)+n` -/
def P5226813165151927458.Spec : Prop :=
  ∀ n, P5226813165151927458.a n = A073757 (n + 1)

end A073757

/-!
# A073758: Smallest number that is neither a divisor of nor relatively prime to n, or 0 if no such number exists.

The programs for A073758, there is no canonical definition to state claims against.
-/

/-! ## A073758.P6533900659298841209

`(A141295(n+1)+1)%(n+2)`
-/

namespace A073758.P6533900659298841209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141295 (n + 1) + 1) (n + 2 : ℤ)

end

end A073758.P6533900659298841209

/-! ## A073758.P6842655926425377927

`A020725(A141295(n+1))%(n+2)`
-/

namespace A073758.P6842655926425377927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (A141295 (n + 1)).toNat) (n + 2 : ℤ)

end

end A073758.P6842655926425377927

/-! ## A073758.P4089087893098069113

`A133995(∑[A264441(n+1)]-A264441(n+1)+1)`
-/

namespace A073758.P4089087893098069113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133995 (∑ j ∈ Finset.range (n + 1), f1 j - A264441 (n + 1) + 1).toNat

end

end A073758.P4089087893098069113

/-! ## A073758.P12946037123642057110

`A025581(A034856(n+1)-A141295(n+1))`
-/

namespace A073758.P12946037123642057110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A034856 (n + 1) - A141295 (n + 1)).toNat

end

end A073758.P12946037123642057110

/-! ## A073758.P12583694381407916492

`A160995(A020338(n+1))%A061228(n+1)`
-/

namespace A073758.P12583694381407916492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160995 (A020338 (n + 1)).toNat) (A061228 (n + 1))

end

end A073758.P12583694381407916492

/-!
# A073759: Largest number < n that is neither a divisor of nor relatively prime to n, or 0 if no such number exists.

The programs for A073759, there is no canonical definition to state claims against.
-/

/-! ## A073759.P1888863421900622383

`(n-A057237(n+1))%A050025(n+1)`
-/

namespace A073759.P1888863421900622383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A057237 (n + 1)) (A050025 (n + 1))

end

end A073759.P1888863421900622383

/-! ## A073759.P11984387837648494614

`(n+1-A304181(∏{p}[n+1, #]))%A025116(n+1)`
-/

namespace A073759.P11984387837648494614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - A304181 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A025116 (n + 1))

end

end A073759.P11984387837648494614

/-! ## A073759.P7194072045406821184

`(n+1-A020639(n+1))%A166100(A163547(n))`
-/

namespace A073759.P7194072045406821184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - A020639 (n + 1)) (A166100 (A163547 n).toNat)

end

end A073759.P7194072045406821184

/-! ## A073759.P12637138815846216956

`(n+1-A020639(n+1))*A317641(A061006(n+1))`
-/

namespace A073759.P12637138815846216956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A020639 (n + 1)) * A317641 (A061006 (n + 1)).toNat

end

end A073759.P12637138815846216956

/-! ## A073759.P7659557889719845588

`(n+1-A020639(n+1))*A043545(A267160(n+1))`
-/

namespace A073759.P7659557889719845588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A020639 (n + 1)) * A043545 (A267160 (n + 1)).toNat

end

end A073759.P7659557889719845588

/-! ## A073759.P4800858314498208526

`A133995(∑[A264441(n+1)])`
-/

namespace A073759.P4800858314498208526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073759.P4800858314498208526

/-!
# A073760: Integers m such that A073758(m) = 4.

The programs for A073760, the canonical program `A073760.P13117306933598023621` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073760 has offset 1).

The definition of A073760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073760.P13117306933598023621

`2*a(n-1)-a(n-2)` with `a(0)=6, a(1)=10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073760

/-- `2*a(n-1)-a(n-2)` -/
def P13117306933598023621.Spec : Prop :=
  ∀ n, P13117306933598023621.a n = A073760 (n + 1)

theorem P13117306933598023621.correct : P13117306933598023621.Spec := by
  intro n
  simp only [A073760, Nat.add_sub_cancel]

end A073760

/-!
# A073761: Primitive numbers whose decimal expansion of 1/n is equidistributed in base 10.

The programs for A073761, there is no canonical definition to state claims against.
-/

/-! ## A073761.P12391388062421299513

`∩[A006883(n+1), A106619(A139280(n+1))]`
-/

namespace A073761.P12391388062421299513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A139280 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073761.P12391388062421299513

/-! ## A073761.P18086261218797187323

`filter[A106849(n+1), A185705(#)]`
-/

namespace A073761.P18086261218797187323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A073761.P18086261218797187323

/-! ## A073761.P8185241216950825158

`∩[A004615(n+1), A106849(n+1)]`
-/

namespace A073761.P8185241216950825158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073761.P8185241216950825158

/-! ## A073761.P10963209785778637939

`∩[A030430(n+1), A106849(n+1)]`
-/

namespace A073761.P10963209785778637939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073761.P10963209785778637939

/-! ## A073761.P538182611349539422

`∩[A040167(n+1), A106849(n+1)]`
-/

namespace A073761.P538182611349539422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073761.P538182611349539422

/-!
# A073762: a(n) = 24*n - 12.

The programs for A073762, the canonical program `A073762.P7771783848065572168` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073762 has offset 1).

The definition of A073762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073762.P7771783848065572168

`2*a(n-1)-a(n-2)` with `a(0)=12, a(1)=36`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073762

/-- `2*a(n-1)-a(n-2)` -/
def P7771783848065572168.Spec : Prop :=
  ∀ n, P7771783848065572168.a n = A073762 (n + 1)

theorem P7771783848065572168.correct : P7771783848065572168.Spec := by
  intro n
  simp only [A073762, Nat.add_sub_cancel]

end A073762

/-!
# A073763: Least number of unrelated set belonging to these numbers is odd.

The programs for A073763, the canonical program `A073763.P15953634689084529443` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073763 has offset 1).

The definition of A073763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073763.P15953634689084529443

`A234902(A072703(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A073763

/-- `A234902(A072703(n+1))` -/
def P15953634689084529443.Spec : Prop :=
  ∀ n, P15953634689084529443.a n = A073763 (n + 1)

theorem P15953634689084529443.correct : P15953634689084529443.Spec := by
  intro n
  simp only [A073763, Nat.add_sub_cancel]

end A073763

/-! ## A073763.P3074329060388558249

`∩[A234902(n+1), A298033(n)]`
-/

namespace A073763.P3074329060388558249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298033 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073763.P3074329060388558249

namespace A073763

/-- `∩[A234902(n+1), A298033(n)]` -/
def P3074329060388558249.Spec : Prop :=
  ∀ n, (P3074329060388558249.a n : ℤ) = A073763 (n + 1)

end A073763

/-! ## A073763.P8341490251638146910

`∩[A234903(n+1), A298033(n)]`
-/

namespace A073763.P8341490251638146910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298033 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073763.P8341490251638146910

namespace A073763

/-- `∩[A234903(n+1), A298033(n)]` -/
def P8341490251638146910.Spec : Prop :=
  ∀ n, (P8341490251638146910.a n : ℤ) = A073763 (n + 1)

end A073763

/-! ## A073763.P1632887315707295944

`∩[A016051(n+1), A008590(n)]`
-/

namespace A073763.P1632887315707295944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073763.P1632887315707295944

namespace A073763

/-- `∩[A016051(n+1), A008590(n)]` -/
def P1632887315707295944.Spec : Prop :=
  ∀ n, (P1632887315707295944.a n : ℤ) = A073763 (n + 1)

end A073763

/-! ## A073763.P1481488244801816492

`∩[A016051(n+1), A008606(n)]`
-/

namespace A073763.P1481488244801816492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073763.P1481488244801816492

namespace A073763

/-- `∩[A016051(n+1), A008606(n)]` -/
def P1481488244801816492.Spec : Prop :=
  ∀ n, (P1481488244801816492.a n : ℤ) = A073763 (n + 1)

end A073763

/-! ## A073763.P6074365289370638136

`∩[A016051(n+1), A022144(n)]`
-/

namespace A073763.P6074365289370638136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073763.P6074365289370638136

namespace A073763

/-- `∩[A016051(n+1), A022144(n)]` -/
def P6074365289370638136.Spec : Prop :=
  ∀ n, (P6074365289370638136.a n : ℤ) = A073763 (n + 1)

end A073763

/-! ## A073763.P11887683631929276064

`∩[A203016(n+1), A008590(n)]`
-/

namespace A073763.P11887683631929276064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073763.P11887683631929276064

namespace A073763

/-- `∩[A203016(n+1), A008590(n)]` -/
def P11887683631929276064.Spec : Prop :=
  ∀ n, (P11887683631929276064.a n : ℤ) = A073763 (n + 1)

end A073763

/-! ## A073763.P11482175697388870005

`∩[A203016(n+1), A008606(n)]`
-/

namespace A073763.P11482175697388870005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073763.P11482175697388870005

namespace A073763

/-- `∩[A203016(n+1), A008606(n)]` -/
def P11482175697388870005.Spec : Prop :=
  ∀ n, (P11482175697388870005.a n : ℤ) = A073763 (n + 1)

end A073763

/-! ## A073763.P3146642696626710244

`∩[A203016(n+1), A022144(n)]`
-/

namespace A073763.P3146642696626710244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073763.P3146642696626710244

namespace A073763

/-- `∩[A203016(n+1), A022144(n)]` -/
def P3146642696626710244.Spec : Prop :=
  ∀ n, (P3146642696626710244.a n : ℤ) = A073763 (n + 1)

end A073763

/-! ## A073763.P11134033908043015793

`∩[A016051(n+1), A234275(n)]`
-/

namespace A073763.P11134033908043015793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073763.P11134033908043015793

namespace A073763

/-- `∩[A016051(n+1), A234275(n)]` -/
def P11134033908043015793.Spec : Prop :=
  ∀ n, (P11134033908043015793.a n : ℤ) = A073763 (n + 1)

end A073763

/-! ## A073763.P987582407511626248

`∩[A203016(n+1), A234275(n)]`
-/

namespace A073763.P987582407511626248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073763.P987582407511626248

namespace A073763

/-- `∩[A203016(n+1), A234275(n)]` -/
def P987582407511626248.Spec : Prop :=
  ∀ n, (P987582407511626248.a n : ℤ) = A073763 (n + 1)

end A073763

/-! ## A073763.P8862792509305251096

`∩[A048104(n+1), A016051(n+1)]`
-/

namespace A073763.P8862792509305251096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073763.P8862792509305251096

namespace A073763

/-- `∩[A048104(n+1), A016051(n+1)]` -/
def P8862792509305251096.Spec : Prop :=
  ∀ n, (P8862792509305251096.a n : ℤ) = A073763 (n + 1)

end A073763

/-! ## A073763.P2765832519988827279

`A250120(A315972(2*n+1)-(2*n+1))`
-/

namespace A073763.P2765832519988827279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A315972 (2 * n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A073763.P2765832519988827279

namespace A073763

/-- `A250120(A315972(2*n+1)-(2*n+1))` -/
def P2765832519988827279.Spec : Prop :=
  ∀ n, P2765832519988827279.a n = A073763 (n + 1)

end A073763

/-! ## A073763.P12938357282385931650

`A008574(A298033(n+1))`
-/

namespace A073763.P12938357282385931650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A298033 (n + 1)).toNat

end

end A073763.P12938357282385931650

namespace A073763

/-- `A008574(A298033(n+1))` -/
def P12938357282385931650.Spec : Prop :=
  ∀ n, P12938357282385931650.a n = A073763 (n + 1)

end A073763

/-! ## A073763.P7533647941656571849

`A047470(A298033(n+1)+1)`
-/

namespace A073763.P7533647941656571849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (A298033 (n + 1) + 1).toNat

end

end A073763.P7533647941656571849

namespace A073763

/-- `A047470(A298033(n+1)+1)` -/
def P7533647941656571849.Spec : Prop :=
  ∀ n, P7533647941656571849.a n = A073763 (n + 1)

end A073763

/-! ## A073763.P5415658611083533337

`A047521(A298033(n+1)+1)`
-/

namespace A073763.P5415658611083533337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047521 (A298033 (n + 1) + 1).toNat

end

end A073763.P5415658611083533337

namespace A073763

/-- `A047521(A298033(n+1)+1)` -/
def P5415658611083533337.Spec : Prop :=
  ∀ n, P5415658611083533337.a n = A073763 (n + 1)

end A073763

/-! ## A073763.P744174123101590939

`A047615(A298033(n+1)+1)`
-/

namespace A073763.P744174123101590939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (A298033 (n + 1) + 1).toNat

end

end A073763.P744174123101590939

namespace A073763

/-- `A047615(A298033(n+1)+1)` -/
def P744174123101590939.Spec : Prop :=
  ∀ n, P744174123101590939.a n = A073763 (n + 1)

end A073763

/-! ## A073763.P12059888532281159126

`A008574(2*A250122(2*n+1))`
-/

namespace A073763.P12059888532281159126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * A250122 (2 * n + 1)).toNat

end

end A073763.P12059888532281159126

namespace A073763

/-- `A008574(2*A250122(2*n+1))` -/
def P12059888532281159126.Spec : Prop :=
  ∀ n, P12059888532281159126.a n = A073763 (n + 1)

end A073763

/-! ## A073763.P9498978357982471632

`A298016(2*A250122(2*n+1))`
-/

namespace A073763.P9498978357982471632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298016 (2 * A250122 (2 * n + 1)).toNat

end

end A073763.P9498978357982471632

namespace A073763

/-- `A298016(2*A250122(2*n+1))` -/
def P9498978357982471632.Spec : Prop :=
  ∀ n, P9498978357982471632.a n = A073763 (n + 1)

end A073763

/-! ## A073763.P10553301042729883750

`A298016(A298033(2*n+1-n))`
-/

namespace A073763.P10553301042729883750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298016 (A298033 (2 * n + 1 - n)).toNat

end

end A073763.P10553301042729883750

namespace A073763

/-- `A298016(A298033(2*n+1-n))` -/
def P10553301042729883750.Spec : Prop :=
  ∀ n, P10553301042729883750.a n = A073763 (n + 1)

end A073763

/-!
# A073764: a(n) = least number x such that A045763(x)=n or 0 if no such number exists.

The programs for A073764, there is no canonical definition to state claims against.
-/

/-! ## A073764.P13669585552630213282

`A070297(n+1)`
-/

namespace A073764.P13669585552630213282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070297 (n + 1)

end

end A073764.P13669585552630213282

/-! ## A073764.P14305161862710939656

`filter[A070297(n), A185116(#)]`
-/

namespace A073764.P14305161862710939656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185116 (f1 j).toNat = 1) n)

end

end A073764.P14305161862710939656

/-! ## A073764.P2006299381809844233

`Δ[A000027(∑[A070297(n)])]`
-/

namespace A073764.P2006299381809844233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070297 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073764.P2006299381809844233

/-! ## A073764.P3830450589445493720

`Δ[A242963(∑[A070297(n)])]`
-/

namespace A073764.P3830450589445493720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070297 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242963 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073764.P3830450589445493720

/-!
# A073765: a(n) = binomial(prime(n), composite(n)).

The programs for A073765, there is no canonical definition to state claims against.
-/

/-! ## A073765.P16365248371356392762

`C(p?[xor(1, n)], A002808(n+1))`
-/

namespace A073765.P16365248371356392762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (A002808 (n + 1)).toNat

end

end A073765.P16365248371356392762

/-! ## A073765.P17281172466291122727

`C(Δ[A007504(n)], A018252(n+2))`
-/

namespace A073765.P17281172466291122727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (A018252 (n + 2)).toNat

end

end A073765.P17281172466291122727

/-! ## A073765.P4397237612874544426

`C(p?[A352844(n)], A018252(n+2))`
-/

namespace A073765.P4397237612874544426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat (A018252 (n + 2)).toNat

end

end A073765.P4397237612874544426

/-! ## A073765.P4906680144433019488

`C(A000040(n+1), A002808(n+1))`
-/

namespace A073765.P4906680144433019488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat (A002808 (n + 1)).toNat

end

end A073765.P4906680144433019488

/-! ## A073765.P13121647492624454456

`C(A000040(n+1), A018252(n+2))`
-/

namespace A073765.P13121647492624454456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat (A018252 (n + 2)).toNat

end

end A073765.P13121647492624454456

/-! ## A073765.P595178459802877648

`C(A006005(n+1), A018252(n+2))`
-/

namespace A073765.P595178459802877648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006005 (n + 1)).toNat (A018252 (n + 2)).toNat

end

end A073765.P595178459802877648

/-! ## A073765.P5673905690910242995

`C(record[A006530(n+2)], A018252(n+2))`
-/

namespace A073765.P5673905690910242995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat (A018252 (n + 2)).toNat

end

end A073765.P5673905690910242995

/-! ## A073765.P6079728243921829447

`C(record[A014963(n+2)], A018252(n+2))`
-/

namespace A073765.P6079728243921829447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat (A018252 (n + 2)).toNat

end

end A073765.P6079728243921829447

/-! ## A073765.P3115351167609492077

`C(record[A020639(n+2)], A018252(n+2))`
-/

namespace A073765.P3115351167609492077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat (A018252 (n + 2)).toNat

end

end A073765.P3115351167609492077

/-! ## A073765.P11584841387059576860

`C(p?[A018252(n+1)-7], A018252(n+2))`
-/

namespace A073765.P11584841387059576860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat (A018252 (n + 2)).toNat

end

end A073765.P11584841387059576860

/-!
# A073766: a(n) = binomial(composite(n+1), composite(n)) = binomial(A002808(n+1), A002808(n)).

The programs for A073766, the canonical program `A073766.P7770165275917776736` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073766 has offset 1).

The definition of A073766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073766.P7770165275917776736

`C(A018252(n+3), Δ[A053767(n)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073766

/-- `C(A018252(n+3), Δ[A053767(n)])` -/
def P7770165275917776736.Spec : Prop :=
  ∀ n, (P7770165275917776736.a n : ℤ) = A073766 (n + 1)

theorem P7770165275917776736.correct : P7770165275917776736.Spec := by
  intro n
  simp only [A073766, Nat.add_sub_cancel]

end A073766

/-! ## A073766.P5327419028856678089

`C(A018252(n+3), comp[A351078(n)])`
-/

namespace A073766.P5327419028856678089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A018252 (n + 3)).toNat (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A073766.P5327419028856678089

namespace A073766

/-- `C(A018252(n+3), comp[A351078(n)])` -/
def P5327419028856678089.Spec : Prop :=
  ∀ n, (P5327419028856678089.a n : ℤ) = A073766 (n + 1)

end A073766

/-! ## A073766.P4951963372302388660

`C(A002808(n+2), A002808(n+1))`
-/

namespace A073766.P4951963372302388660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002808 (n + 2)).toNat (A002808 (n + 1)).toNat

end

end A073766.P4951963372302388660

namespace A073766

/-- `C(A002808(n+2), A002808(n+1))` -/
def P4951963372302388660.Spec : Prop :=
  ∀ n, (P4951963372302388660.a n : ℤ) = A073766 (n + 1)

end A073766

/-! ## A073766.P11169899574143762545

`C(A018252(n+3), A018252(n+2))`
-/

namespace A073766.P11169899574143762545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A018252 (n + 3)).toNat (A018252 (n + 2)).toNat

end

end A073766.P11169899574143762545

namespace A073766

/-- `C(A018252(n+3), A018252(n+2))` -/
def P11169899574143762545.Spec : Prop :=
  ∀ n, (P11169899574143762545.a n : ℤ) = A073766 (n + 1)

end A073766

/-! ## A073766.P8729080776240936268

`C(A079696(n+2)-1, Δ[A079696(n+1)])`
-/

namespace A073766.P8729080776240936268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079696 (n + 2) - 1).toNat (f1 (n + 1) - f1 n).toNat

end

end A073766.P8729080776240936268

namespace A073766

/-- `C(A079696(n+2)-1, Δ[A079696(n+1)])` -/
def P8729080776240936268.Spec : Prop :=
  ∀ n, (P8729080776240936268.a n : ℤ) = A073766 (n + 1)

end A073766

/-! ## A073766.P11910243023052692426

`A020639(A002808(n+1)+1)*A160180(n+2)`
-/

namespace A073766.P11910243023052692426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002808 (n + 1) + 1).toNat * A160180 (n + 2)

end

end A073766.P11910243023052692426

namespace A073766

/-- `A020639(A002808(n+1)+1)*A160180(n+2)` -/
def P11910243023052692426.Spec : Prop :=
  ∀ n, P11910243023052692426.a n = A073766 (n + 1)

end A073766

/-! ## A073766.P17147693861671475112

`A160791(A166037(n+3))`
-/

namespace A073766.P17147693861671475112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (A166037 (n + 3)).toNat

end

end A073766.P17147693861671475112

namespace A073766

/-- `A160791(A166037(n+3))` -/
def P17147693861671475112.Spec : Prop :=
  ∀ n, P17147693861671475112.a n = A073766 (n + 1)

end A073766

/-! ## A073766.P14957584930559728909

`A007318(A000096(A002808(n+2))-A002808(n+1))`
-/

namespace A073766.P14957584930559728909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (A002808 (n + 2)).toNat - A002808 (n + 1)).toNat

end

end A073766.P14957584930559728909

namespace A073766

/-- `A007318(A000096(A002808(n+2))-A002808(n+1))` -/
def P14957584930559728909.Spec : Prop :=
  ∀ n, P14957584930559728909.a n = A073766 (n + 1)

end A073766

/-!
# A073767: Bateman polynomial values n!*Z_n(-1).

The programs for A073767, there is no canonical definition to state claims against.
-/

/-! ## A073767.P9145731191093942832

`A190085((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A073767.P9145731191093942832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A190085 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A073767.P9145731191093942832

/-!
# A073768: Triangle of coefficients of Bateman polynomial n!Z_n(-x).

The programs for A073768, the canonical program `A073768.P11800436879270147310` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073768 has offset 0).

The definition of A073768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1902 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073768.P11800436879270147310

`A063007(n)*A094587(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A073768

/-- `A063007(n)*A094587(n)` -/
def P11800436879270147310.Spec : Prop :=
  ∀ n, P11800436879270147310.a n = A073768 n

theorem P11800436879270147310.correct : P11800436879270147310.Spec := by
  intro n
  simp only [A073768]

end A073768

/-! ## A073768.P5251936443249070959

`abs(A021009(n)*A046899(n))`
-/

namespace A073768.P5251936443249070959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A021009 n * A046899 n|

end

end A073768.P5251936443249070959

namespace A073768

/-- `abs(A021009(n)*A046899(n))` -/
def P5251936443249070959.Spec : Prop :=
  ∀ n, P5251936443249070959.a n = A073768 n

end A073768

/-! ## A073768.P13430768893209567353

`A008279(A061579(n))*A063007(n)`
-/

namespace A073768.P13430768893209567353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A061579 n).toNat * A063007 n

end

end A073768.P13430768893209567353

namespace A073768

/-- `A008279(A061579(n))*A063007(n)` -/
def P13430768893209567353.Spec : Prop :=
  ∀ n, P13430768893209567353.a n = A073768 n

end A073768

/-! ## A073768.P2191172346561564605

`A046899(n)*A144084(A061579(n))`
-/

namespace A073768.P2191172346561564605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A144084 (A061579 n).toNat

end

end A073768.P2191172346561564605

namespace A073768

/-- `A046899(n)*A144084(A061579(n))` -/
def P2191172346561564605.Spec : Prop :=
  ∀ n, P2191172346561564605.a n = A073768 n

end A073768

/-! ## A073768.P18291019930226991791

`abs(A094587(n)*A331430(n))`
-/

namespace A073768.P18291019930226991791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094587 n * A331430 n|

end

end A073768.P18291019930226991791

namespace A073768

/-- `abs(A094587(n)*A331430(n))` -/
def P18291019930226991791.Spec : Prop :=
  ∀ n, P18291019930226991791.a n = A073768 n

end A073768

/-!
# A073770: Primes p not of the form q + s where q is prime and s > 0 is the smallest square such that q + s is prime.

The programs for A073770, there is no canonical definition to state claims against.
-/

/-! ## A073770.P16771047756720614555

`p?[eq[A054973(n+1), A331048(n+1)]]`
-/

namespace A073770.P16771047756720614555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331048 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A073770.P16771047756720614555

/-! ## A073770.P15008999124213136065

`p?[A089723(A172512(n+1))+(n+1)*A158799(n)]`
-/

namespace A073770.P15008999124213136065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A172512 (n + 1)).toNat + (n + 1 : ℤ) * A158799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073770.P15008999124213136065

/-! ## A073770.P5053111181258641337

`p?[record[A110029(A166517(n))]]`
-/

namespace A073770.P5053111181258641337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110029 (A166517 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073770.P5053111181258641337

/-! ## A073770.P6839036095393714869

`eq[A005872(n), A341932(n)]`
-/

namespace A073770.P6839036095393714869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073770.P6839036095393714869

/-! ## A073770.P220865616842430974

`eq[A341932(n), A380534(n+1)]`
-/

namespace A073770.P220865616842430974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380534 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073770.P220865616842430974

/-!
# A073771: Highly composite numbers k such that 2*k is not a highly composite number.

The programs for A073771, there is no canonical definition to state claims against.
-/

/-! ## A073771.P12229653565611798908

`A338786(∑{e}[A000142(n+3), #])`
-/

namespace A073771.P12229653565611798908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338786 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A073771.P12229653565611798908

/-! ## A073771.P16179898176368074816

`A189228(A001222((n+3)!))`
-/

namespace A073771.P16179898176368074816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189228 (A001222 (Nat.factorial (n + 3))).toNat

end

end A073771.P16179898176368074816

/-!
# A073772: Number of highly composite numbers (HCNs) between the n-th highly composite number k and 2*k if 2*k is a highly composite number, or -1 if 2*k is not a highly composite number.

The programs for A073772, there is no canonical definition to state claims against.
-/

/-! ## A073772.P3830983171033497650

`A330025(xor(A181145(n), A251923(n+1)))`
-/

namespace A073772.P3830983171033497650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (Int.xor (A181145 n) (A251923 (n + 1))).toNat

end

end A073772.P3830983171033497650

/-! ## A073772.P7143567190836442957

`A230632(2*(n+2))-A230632(A077322(3*(n+1)))`
-/

namespace A073772.P7143567190836442957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 (2 * (n + 2)) - A230632 (A077322 (3 * (n + 1))).toNat

end

end A073772.P7143567190836442957

/-! ## A073772.P12630225636859310442

`A016367(xor(n+3, A327900(n+1)))`
-/

namespace A073772.P12630225636859310442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016367 (Int.xor (n + 3 : ℤ) (A327900 (n + 1))).toNat

end

end A073772.P12630225636859310442

/-! ## A073772.P14157125106694433773

`A284881(A128420(n+3)+A000007(n))`
-/

namespace A073772.P14157125106694433773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284881 (A128420 (n + 3) + A000007 n).toNat

end

end A073772.P14157125106694433773

/-! ## A073772.P11907208260006282768

`A010892(A275368(n+2))*A166486(n)`
-/

namespace A073772.P11907208260006282768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A275368 (n + 2)).toNat * A166486 n

end

end A073772.P11907208260006282768

/-!
# A073773: Number of plane binary trees of size n+2 and height n.

The programs for A073773, there is no canonical definition to state claims against.
-/

/-! ## A073773.P14407606421181224238

`A073429(∑[n+3])`
-/

namespace A073773.P14407606421181224238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073773.P14407606421181224238

/-! ## A073773.P4317111082449046101

`A073345(A132209(n+1))`
-/

namespace A073773.P4317111082449046101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073345 (A132209 (n + 1)).toNat

end

end A073773.P4317111082449046101

/-! ## A073773.P15718489058569343476

`A073345(A142463(n+1))`
-/

namespace A073773.P15718489058569343476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073345 (A142463 (n + 1)).toNat

end

end A073773.P15718489058569343476

/-! ## A073773.P8132177040514178559

`A073345(A000217(2*(n+1))+n)`
-/

namespace A073773.P8132177040514178559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073345 (A000217 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A073773.P8132177040514178559

/-! ## A073773.P12939100070952935359

`A073345(A000096(2*n+1)+n+1)`
-/

namespace A073773.P12939100070952935359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073345 (A000096 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A073773.P12939100070952935359

/-!
# A073774: Number of plane binary trees of size n+3 and height n.

The programs for A073774, there is no canonical definition to state claims against.
-/

/-! ## A073774.P2714328494420934263

`A073429(∑[n+4]+2)`
-/

namespace A073774.P2714328494420934263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A073774.P2714328494420934263

/-! ## A073774.P17995199647816915077

`lcm(2, A073429(A046691(n+2)))`
-/

namespace A073774.P17995199647816915077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A073429 (A046691 (n + 2)).toNat)

end

end A073774.P17995199647816915077

/-! ## A073774.P7639839979187660792

`A000010(gcd(n, n+1))*A073429(A046691(n+2))`
-/

namespace A073774.P7639839979187660792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1)) * A073429 (A046691 (n + 2)).toNat

end

end A073774.P7639839979187660792

/-! ## A073774.P15933278257182070950

`A073429(A046691(n+2))+A000122(A000040(n+1))`
-/

namespace A073774.P15933278257182070950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 (A046691 (n + 2)).toNat + A000122 (A000040 (n + 1)).toNat

end

end A073774.P15933278257182070950

/-! ## A073774.P148155424958100881

`A073429(A046691(n+2))+A000122(A002144(n+1))`
-/

namespace A073774.P148155424958100881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 (A046691 (n + 2)).toNat + A000122 (A002144 (n + 1)).toNat

end

end A073774.P148155424958100881

/-! ## A073774.P8205853891491268583

`A073345(2*(n+1)*(n+3))`
-/

namespace A073774.P8205853891491268583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073345 (2 * ((n + 1) * (n + 3)))

end

end A073774.P8205853891491268583

/-! ## A073774.P16159587944748378556

`A073429(A046691(n+2))+A000122(A235395(n+1))`
-/

namespace A073774.P16159587944748378556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 (A046691 (n + 2)).toNat + A000122 (A235395 (n + 1)).toNat

end

end A073774.P16159587944748378556

/-!
# A073775: Polynomial (1/3)*n^3 + (9/2)*n^2 + (85/6)*n - 2.

The programs for A073775, the canonical program `A073775.P18406930039634288023` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073775 has offset 0).

The definition of A073775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073775.P18406930039634288023

`1/3*n^3+9/2*n²+85/6*n-2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073775

/-- `1/3*n^3+9/2*n²+85/6*n-2` -/
def P18406930039634288023.Spec : Prop :=
  ∀ n, P18406930039634288023.a n = (A073775 n : ℚ)

end A073775

/-! ## A073775.P6700373001929291545

`∑[(n+4)^A014963(A001316(n))-6]`
-/

namespace A073775.P6700373001929291545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℚ) ^ (A014963 (A001316 n).toNat : ℤ) - 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073775.P6700373001929291545

namespace A073775

/-- `∑[(n+4)^A014963(A001316(n))-6]` -/
def P6700373001929291545.Spec : Prop :=
  ∀ n, P6700373001929291545.a n = (A073775 n : ℚ)

end A073775

/-! ## A073775.P13571456191323469538

`record[∑[(1-n)²-5]-(n-2)]`
-/

namespace A073775.P13571456191323469538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073775.P13571456191323469538

namespace A073775

/-- `record[∑[(1-n)²-5]-(n-2)]` -/
def P13571456191323469538.Spec : Prop :=
  ∀ n, P13571456191323469538.a n = A073775 n

end A073775

/-!
# A073776: a(n) = Sum_{k=1..n} -mu(k+1) * a(n-k), with a(0)=1.

The programs for A073776, there is no canonical definition to state claims against.
-/

/-! ## A073776.P6464046216343475682

`A094518(A270831(3*n+4))+A074045(n)`
-/

namespace A073776.P6464046216343475682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (A270831 (3 * n + 4)).toNat + A074045 n

end

end A073776.P6464046216343475682

/-! ## A073776.P16335685027020055206

`A100196(A319765(n))-A131281(A274159(n))`
-/

namespace A073776.P16335685027020055206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A319765 n).toNat - A131281 (A274159 n).toNat

end

end A073776.P16335685027020055206

/-! ## A073776.P4972200219116287960

`A336358(A048811(n+7))`
-/

namespace A073776.P4972200219116287960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (A048811 (n + 7)).toNat

end

end A073776.P4972200219116287960

/-! ## A073776.P13372564048128477921

`A135665(7*A206432(n))`
-/

namespace A073776.P13372564048128477921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (7 * A206432 n).toNat

end

end A073776.P13372564048128477921

/-! ## A073776.P10814839254877265776

`A135665(7*A209656(n))`
-/

namespace A073776.P10814839254877265776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (7 * A209656 n).toNat

end

end A073776.P10814839254877265776

/-!
# A073777: a(n) = Sum_{k=1..n} -A068341(k+1)*a(n-k), a(0)=1.

The programs for A073777, there is no canonical definition to state claims against.
-/

/-! ## A073777.P18382048733820261899

`∑[A208746(A358831(n))]`
-/

namespace A073777.P18382048733820261899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208746 (A358831 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073777.P18382048733820261899

/-! ## A073777.P14895566513952172731

`A264120(A099779(n+3))`
-/

namespace A073777.P14895566513952172731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264120 (A099779 (n + 3)).toNat

end

end A073777.P14895566513952172731

/-! ## A073777.P10290390783202514569

`A354912(A213967(n))+A000219(n)`
-/

namespace A073777.P10290390783202514569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 (A213967 n).toNat + A000219 n

end

end A073777.P10290390783202514569

/-! ## A073777.P14085964175158657515

`A054454(n)-A036042(A356291(n))`
-/

namespace A073777.P14085964175158657515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054454 n - A036042 (A356291 n).toNat

end

end A073777.P14085964175158657515

/-!
# A073778: a(n) = Sum_{k=0..n} T(k)*T(n-k), where T is A000073; convolution of A000073 with itself.

The programs for A073778, the canonical program `A073778.P5763979950030979350` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073778 has offset 0).

The definition of A073778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 374 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073778.P5763979950030979350

`∑[A393073(abs(1-n))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A073778

/-- `∑[A393073(abs(1-n))]` -/
def P5763979950030979350.Spec : Prop :=
  ∀ n, P5763979950030979350.a n = A073778 n

theorem P5763979950030979350.correct : P5763979950030979350.Spec := by
  intro n
  simp only [A073778]

end A073778

/-! ## A073778.P12598303854546644798

`Δ[Δ[A118885(A289207(n))]]`
-/

namespace A073778.P12598303854546644798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118885 (A289207 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073778.P12598303854546644798

namespace A073778

/-- `Δ[Δ[A118885(A289207(n))]]` -/
def P12598303854546644798.Spec : Prop :=
  ∀ n, P12598303854546644798.a n = A073778 n

end A073778

/-! ## A073778.P9931432809752191019

`A282791(∑[n-2]+4)`
-/

namespace A073778.P9931432809752191019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A073778.P9931432809752191019

namespace A073778

/-- `A282791(∑[n-2]+4)` -/
def P9931432809752191019.Spec : Prop :=
  ∀ n, P9931432809752191019.a n = A073778 n

end A073778

/-! ## A073778.P15534164820124934056

`A282885(∑[n-2]+4)`
-/

namespace A073778.P15534164820124934056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A073778.P15534164820124934056

namespace A073778

/-- `A282885(∑[n-2]+4)` -/
def P15534164820124934056.Spec : Prop :=
  ∀ n, P15534164820124934056.a n = A073778 n

end A073778

/-! ## A073778.P12823344415691680738

`A283572(∑[n-2]+4)`
-/

namespace A073778.P12823344415691680738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A073778.P12823344415691680738

namespace A073778

/-- `A283572(∑[n-2]+4)` -/
def P12823344415691680738.Spec : Prop :=
  ∀ n, P12823344415691680738.a n = A073778 n

end A073778

/-!
# A073779: Number of 0's in base-3 representation of n-th prime.

The programs for A073779, the canonical program `A073779.P14309526426205803288` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073779 has offset 1).

The definition of A073779 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073779.P14309526426205803288

`A077267(A000040(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073779

/-- `A077267(A000040(n+1))` -/
def P14309526426205803288.Spec : Prop :=
  ∀ n, P14309526426205803288.a n = A073779 (n + 1)

theorem P14309526426205803288.correct : P14309526426205803288.Spec := by
  intro n
  simp only [A073779, Nat.add_sub_cancel]

end A073779

/-! ## A073779.P2951783396576333570

`A077267(A006005(n+1))`
-/

namespace A073779.P2951783396576333570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A006005 (n + 1)).toNat

end

end A073779.P2951783396576333570

namespace A073779

/-- `A077267(A006005(n+1))` -/
def P2951783396576333570.Spec : Prop :=
  ∀ n, P2951783396576333570.a n = A073779 (n + 1)

end A073779

/-! ## A073779.P6813762493772680792

`A077267(A161847(n+1))`
-/

namespace A073779.P6813762493772680792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A161847 (n + 1)).toNat

end

end A073779.P6813762493772680792

namespace A073779

/-- `A077267(A161847(n+1))` -/
def P6813762493772680792.Spec : Prop :=
  ∀ n, P6813762493772680792.a n = A073779 (n + 1)

end A073779

/-! ## A073779.P7043340426285330105

`A077267(A318871(n+1))`
-/

namespace A073779.P7043340426285330105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A318871 (n + 1)).toNat

end

end A073779.P7043340426285330105

namespace A073779

/-- `A077267(A318871(n+1))` -/
def P7043340426285330105.Spec : Prop :=
  ∀ n, P7043340426285330105.a n = A073779 (n + 1)

end A073779

/-! ## A073779.P16350385351552011383

`A077267(A008578(n+2))`
-/

namespace A073779.P16350385351552011383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A008578 (n + 2)).toNat

end

end A073779.P16350385351552011383

namespace A073779

/-- `A077267(A008578(n+2))` -/
def P16350385351552011383.Spec : Prop :=
  ∀ n, P16350385351552011383.a n = A073779 (n + 1)

end A073779

/-! ## A073779.P18049774408023873356

`A077267(A075643(n+2))`
-/

namespace A073779.P18049774408023873356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A075643 (n + 2)).toNat

end

end A073779.P18049774408023873356

namespace A073779

/-- `A077267(A075643(n+2))` -/
def P18049774408023873356.Spec : Prop :=
  ∀ n, P18049774408023873356.a n = A073779 (n + 1)

end A073779

/-! ## A073779.P2595609992258620834

`A077267(A161428(n+2))`
-/

namespace A073779.P2595609992258620834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A161428 (n + 2)).toNat

end

end A073779.P2595609992258620834

namespace A073779

/-- `A077267(A161428(n+2))` -/
def P2595609992258620834.Spec : Prop :=
  ∀ n, P2595609992258620834.a n = A073779 (n + 1)

end A073779

/-! ## A073779.P14109275750751856090

`A077267(A182986(n+2))`
-/

namespace A073779.P14109275750751856090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A182986 (n + 2)).toNat

end

end A073779.P14109275750751856090

namespace A073779

/-- `A077267(A182986(n+2))` -/
def P14109275750751856090.Spec : Prop :=
  ∀ n, P14109275750751856090.a n = A073779 (n + 1)

end A073779

/-! ## A073779.P10378142074019186001

`A077267(eq[1, A003415(n)])`
-/

namespace A073779.P10378142074019186001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073779.P10378142074019186001

namespace A073779

/-- `A077267(eq[1, A003415(n)])` -/
def P10378142074019186001.Spec : Prop :=
  ∀ n, P10378142074019186001.a n = A073779 (n + 1)

end A073779

/-! ## A073779.P3449307598262984857

`A077267(record[A006530(n+2)])`
-/

namespace A073779.P3449307598262984857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073779.P3449307598262984857

namespace A073779

/-- `A077267(record[A006530(n+2)])` -/
def P3449307598262984857.Spec : Prop :=
  ∀ n, P3449307598262984857.a n = A073779 (n + 1)

end A073779

/-! ## A073779.P6285691534859993707

`A077267(record[A014963(n+2)])`
-/

namespace A073779.P6285691534859993707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073779.P6285691534859993707

namespace A073779

/-- `A077267(record[A014963(n+2)])` -/
def P6285691534859993707.Spec : Prop :=
  ∀ n, P6285691534859993707.a n = A073779 (n + 1)

end A073779

/-! ## A073779.P5368068787625738360

`A077267(record[A020639(n+2)])`
-/

namespace A073779.P5368068787625738360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073779.P5368068787625738360

namespace A073779

/-- `A077267(record[A020639(n+2)])` -/
def P5368068787625738360.Spec : Prop :=
  ∀ n, P5368068787625738360.a n = A073779 (n + 1)

end A073779

/-! ## A073779.P10622196447086803732

`A077267(eq[1, A001222(n+1)]+1)`
-/

namespace A073779.P10622196447086803732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073779.P10622196447086803732

namespace A073779

/-- `A077267(eq[1, A001222(n+1)]+1)` -/
def P10622196447086803732.Spec : Prop :=
  ∀ n, P10622196447086803732.a n = A073779 (n + 1)

end A073779

/-! ## A073779.P8097413493450552695

`A077267(eq[2, A000005(n+1)]+1)`
-/

namespace A073779.P8097413493450552695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073779.P8097413493450552695

namespace A073779

/-- `A077267(eq[2, A000005(n+1)]+1)` -/
def P8097413493450552695.Spec : Prop :=
  ∀ n, P8097413493450552695.a n = A073779 (n + 1)

end A073779

/-! ## A073779.P976163870944148422

`A077267(eq[n, A000010(n+1)]+1)`
-/

namespace A073779.P976163870944148422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073779.P976163870944148422

namespace A073779

/-- `A077267(eq[n, A000010(n+1)]+1)` -/
def P976163870944148422.Spec : Prop :=
  ∀ n, P976163870944148422.a n = A073779 (n + 1)

end A073779

/-!
# A073780: Number of 1's in base 3 representation of n-th prime.

The programs for A073780, the canonical program `A073780.P18101224103770424285` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073780 has offset 1).

The definition of A073780 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A062756, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073780.P18101224103770424285

`A062756(A000040(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073780

/-- `A062756(A000040(n+1))` -/
def P18101224103770424285.Spec : Prop :=
  ∀ n, P18101224103770424285.a n = A073780 (n + 1)

theorem P18101224103770424285.correct : P18101224103770424285.Spec := by
  intro n
  simp only [A073780, Nat.add_sub_cancel]

end A073780

/-! ## A073780.P6396996825530052093

`A062756(Δ[A007504(n)])`
-/

namespace A073780.P6396996825530052093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (f1 (n + 1) - f1 n).toNat

end

end A073780.P6396996825530052093

namespace A073780

/-- `A062756(Δ[A007504(n)])` -/
def P6396996825530052093.Spec : Prop :=
  ∀ n, P6396996825530052093.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P12457974158171630719

`A062756(A063884(n+1))`
-/

namespace A073780.P12457974158171630719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A063884 (n + 1)).toNat

end

end A073780.P12457974158171630719

namespace A073780

/-- `A062756(A063884(n+1))` -/
def P12457974158171630719.Spec : Prop :=
  ∀ n, P12457974158171630719.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P4428277416489436388

`A062756(A063904(n+1))`
-/

namespace A073780.P4428277416489436388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A063904 (n + 1)).toNat

end

end A073780.P4428277416489436388

namespace A073780

/-- `A062756(A063904(n+1))` -/
def P4428277416489436388.Spec : Prop :=
  ∀ n, P4428277416489436388.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P1865658682861528158

`A062756(A161847(n+1))`
-/

namespace A073780.P1865658682861528158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A161847 (n + 1)).toNat

end

end A073780.P1865658682861528158

namespace A073780

/-- `A062756(A161847(n+1))` -/
def P1865658682861528158.Spec : Prop :=
  ∀ n, P1865658682861528158.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P3723893782822911274

`A062756(A171577(n+1))`
-/

namespace A073780.P3723893782822911274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A171577 (n + 1)).toNat

end

end A073780.P3723893782822911274

namespace A073780

/-- `A062756(A171577(n+1))` -/
def P3723893782822911274.Spec : Prop :=
  ∀ n, P3723893782822911274.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P17147756933363036262

`A062756(A008578(n+2))`
-/

namespace A073780.P17147756933363036262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A008578 (n + 2)).toNat

end

end A073780.P17147756933363036262

namespace A073780

/-- `A062756(A008578(n+2))` -/
def P17147756933363036262.Spec : Prop :=
  ∀ n, P17147756933363036262.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P14624937173910836931

`A062756(A182986(n+2))`
-/

namespace A073780.P14624937173910836931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A182986 (n + 2)).toNat

end

end A073780.P14624937173910836931

namespace A073780

/-- `A062756(A182986(n+2))` -/
def P14624937173910836931.Spec : Prop :=
  ∀ n, P14624937173910836931.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P3770008293976088008

`A062756(record[A093074(n+1)])`
-/

namespace A073780.P3770008293976088008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073780.P3770008293976088008

namespace A073780

/-- `A062756(record[A093074(n+1)])` -/
def P3770008293976088008.Spec : Prop :=
  ∀ n, P3770008293976088008.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P10834586526934081785

`A062756(record[A006530(n+2)])`
-/

namespace A073780.P10834586526934081785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073780.P10834586526934081785

namespace A073780

/-- `A062756(record[A006530(n+2)])` -/
def P10834586526934081785.Spec : Prop :=
  ∀ n, P10834586526934081785.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P12508971326334172079

`A062756(record[A014963(n+2)])`
-/

namespace A073780.P12508971326334172079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073780.P12508971326334172079

namespace A073780

/-- `A062756(record[A014963(n+2)])` -/
def P12508971326334172079.Spec : Prop :=
  ∀ n, P12508971326334172079.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P3185604035011185225

`A062756(record[A020639(n+2)])`
-/

namespace A073780.P3185604035011185225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073780.P3185604035011185225

namespace A073780

/-- `A062756(record[A020639(n+2)])` -/
def P3185604035011185225.Spec : Prop :=
  ∀ n, P3185604035011185225.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P16393845986198497963

`A062756(A008864(n+1)-1)`
-/

namespace A073780.P16393845986198497963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A008864 (n + 1) - 1).toNat

end

end A073780.P16393845986198497963

namespace A073780

/-- `A062756(A008864(n+1)-1)` -/
def P16393845986198497963.Spec : Prop :=
  ∀ n, P16393845986198497963.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P9615673865482109944

`A062756(A040976(n+1)+2)`
-/

namespace A073780.P9615673865482109944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A040976 (n + 1) + 2).toNat

end

end A073780.P9615673865482109944

namespace A073780

/-- `A062756(A040976(n+1)+2)` -/
def P9615673865482109944.Spec : Prop :=
  ∀ n, P9615673865482109944.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P16598240551387008435

`A062756(record[A000010(n+1)+1])`
-/

namespace A073780.P16598240551387008435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073780.P16598240551387008435

namespace A073780

/-- `A062756(record[A000010(n+1)+1])` -/
def P16598240551387008435.Spec : Prop :=
  ∀ n, P16598240551387008435.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P11361948092696611362

`A062756((A072055(n+1)-1)/2)`
-/

namespace A073780.P11361948092696611362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.roundAway ((A072055 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A073780.P11361948092696611362

namespace A073780

/-- `A062756((A072055(n+1)-1)/2)` -/
def P11361948092696611362.Spec : Prop :=
  ∀ n, P11361948092696611362.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P13109417167533308257

`A062756(eq[1, A001222(n+1)]+1)`
-/

namespace A073780.P13109417167533308257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073780.P13109417167533308257

namespace A073780

/-- `A062756(eq[1, A001222(n+1)]+1)` -/
def P13109417167533308257.Spec : Prop :=
  ∀ n, P13109417167533308257.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P3827854685472711215

`A062756(eq[2, A000005(n+1)]+1)`
-/

namespace A073780.P3827854685472711215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073780.P3827854685472711215

namespace A073780

/-- `A062756(eq[2, A000005(n+1)]+1)` -/
def P3827854685472711215.Spec : Prop :=
  ∀ n, P3827854685472711215.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P7920245612134349654

`A062756(comp[A018252(n+1)-1]+1)`
-/

namespace A073780.P7920245612134349654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A073780.P7920245612134349654

namespace A073780

/-- `A062756(comp[A018252(n+1)-1]+1)` -/
def P7920245612134349654.Spec : Prop :=
  ∀ n, P7920245612134349654.a n = A073780 (n + 1)

end A073780

/-! ## A073780.P2801539626112407952

`A062756(A072055(n+1)%A008864(n+1))`
-/

namespace A073780.P2801539626112407952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (Int.tmod (A072055 (n + 1)) (A008864 (n + 1))).toNat

end

end A073780.P2801539626112407952

namespace A073780

/-- `A062756(A072055(n+1)%A008864(n+1))` -/
def P2801539626112407952.Spec : Prop :=
  ∀ n, P2801539626112407952.a n = A073780 (n + 1)

end A073780

/-!
# A073781: Number of 2's in base-3 representation of n-th prime.

The programs for A073781, the canonical program `A073781.P9008484040697988353` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073781 has offset 1).

The definition of A073781 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A081603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073781.P9008484040697988353

`A081603(A000040(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073781

/-- `A081603(A000040(n+1))` -/
def P9008484040697988353.Spec : Prop :=
  ∀ n, P9008484040697988353.a n = A073781 (n + 1)

theorem P9008484040697988353.correct : P9008484040697988353.Spec := by
  intro n
  simp only [A073781, Nat.add_sub_cancel]

end A073781

/-! ## A073781.P3133751864066226523

`A081603(p?[comp[n²]])`
-/

namespace A073781.P3133751864066226523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A073781.P3133751864066226523

namespace A073781

/-- `A081603(p?[comp[n²]])` -/
def P3133751864066226523.Spec : Prop :=
  ∀ n, P3133751864066226523.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P12160814845625873003

`A081603(Δ[A007504(n)])`
-/

namespace A073781.P12160814845625873003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (f1 (n + 1) - f1 n).toNat

end

end A073781.P12160814845625873003

namespace A073781

/-- `A081603(Δ[A007504(n)])` -/
def P12160814845625873003.Spec : Prop :=
  ∀ n, P12160814845625873003.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P3996169985662973505

`A081603(A008578(n+2))`
-/

namespace A073781.P3996169985662973505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A008578 (n + 2)).toNat

end

end A073781.P3996169985662973505

namespace A073781

/-- `A081603(A008578(n+2))` -/
def P3996169985662973505.Spec : Prop :=
  ∀ n, P3996169985662973505.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P7287457013808055667

`A081603(A182986(n+2))`
-/

namespace A073781.P7287457013808055667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A182986 (n + 2)).toNat

end

end A073781.P7287457013808055667

namespace A073781

/-- `A081603(A182986(n+2))` -/
def P7287457013808055667.Spec : Prop :=
  ∀ n, P7287457013808055667.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P16037395144199397818

`A081603(eq[1, A003415(n)])`
-/

namespace A073781.P16037395144199397818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073781.P16037395144199397818

namespace A073781

/-- `A081603(eq[1, A003415(n)])` -/
def P16037395144199397818.Spec : Prop :=
  ∀ n, P16037395144199397818.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P11233500126025874051

`A081603(record[A006530(n+2)])`
-/

namespace A073781.P11233500126025874051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073781.P11233500126025874051

namespace A073781

/-- `A081603(record[A006530(n+2)])` -/
def P11233500126025874051.Spec : Prop :=
  ∀ n, P11233500126025874051.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P1958138648193041059

`A081603(record[A014963(n+2)])`
-/

namespace A073781.P1958138648193041059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073781.P1958138648193041059

namespace A073781

/-- `A081603(record[A014963(n+2)])` -/
def P1958138648193041059.Spec : Prop :=
  ∀ n, P1958138648193041059.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P12132174069966978606

`A081603(record[A020639(n+2)])`
-/

namespace A073781.P12132174069966978606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073781.P12132174069966978606

namespace A073781

/-- `A081603(record[A020639(n+2)])` -/
def P12132174069966978606.Spec : Prop :=
  ∀ n, P12132174069966978606.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P2133881309930625838

`A000120(A289814(p?[comp[n²]]))`
-/

namespace A073781.P2133881309930625838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289814 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A073781.P2133881309930625838

namespace A073781

/-- `A000120(A289814(p?[comp[n²]]))` -/
def P2133881309930625838.Spec : Prop :=
  ∀ n, P2133881309930625838.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P14990131483718121209

`A081603(A040976(n+1)+2)`
-/

namespace A073781.P14990131483718121209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A040976 (n + 1) + 2).toNat

end

end A073781.P14990131483718121209

namespace A073781

/-- `A081603(A040976(n+1)+2)` -/
def P14990131483718121209.Spec : Prop :=
  ∀ n, P14990131483718121209.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P118239654282799371

`A081603(A100484(n+1)/2)`
-/

namespace A073781.P118239654282799371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A073781.P118239654282799371

namespace A073781

/-- `A081603(A100484(n+1)/2)` -/
def P118239654282799371.Spec : Prop :=
  ∀ n, P118239654282799371.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P10596679258156716212

`A081603(record[A000010(n+1)+1])`
-/

namespace A073781.P10596679258156716212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073781.P10596679258156716212

namespace A073781

/-- `A081603(record[A000010(n+1)+1])` -/
def P10596679258156716212.Spec : Prop :=
  ∀ n, P10596679258156716212.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P13585492281413191227

`A081603(eq[2, A000005(n+1)]+1)`
-/

namespace A073781.P13585492281413191227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073781.P13585492281413191227

namespace A073781

/-- `A081603(eq[2, A000005(n+1)]+1)` -/
def P13585492281413191227.Spec : Prop :=
  ∀ n, P13585492281413191227.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P11118929102971627268

`A081603(comp[A018252(n+1)-1]+1)`
-/

namespace A073781.P11118929102971627268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A073781.P11118929102971627268

namespace A073781

/-- `A081603(comp[A018252(n+1)-1]+1)` -/
def P11118929102971627268.Spec : Prop :=
  ∀ n, P11118929102971627268.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P4565746605553161807

`A000120(∑{d}[A000040(n+1), A289814(#)])`
-/

namespace A073781.P4565746605553161807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ d ∈ Nat.divisors (f1 n).natAbs, A289814 d).toNat

end

end A073781.P4565746605553161807

namespace A073781

/-- `A000120(∑{d}[A000040(n+1), A289814(#)])` -/
def P4565746605553161807.Spec : Prop :=
  ∀ n, P4565746605553161807.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P11841092996214942206

`A081603(A001748(n+1))`
-/

namespace A073781.P11841092996214942206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A001748 (n + 1)).toNat

end

end A073781.P11841092996214942206

namespace A073781

/-- `A081603(A001748(n+1))` -/
def P11841092996214942206.Spec : Prop :=
  ∀ n, P11841092996214942206.a n = A073781 (n + 1)

end A073781

/-! ## A073781.P10100494240472888140

`A081603(A112773(n+2))`
-/

namespace A073781.P10100494240472888140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A112773 (n + 2)).toNat

end

end A073781.P10100494240472888140

namespace A073781

/-- `A081603(A112773(n+2))` -/
def P10100494240472888140.Spec : Prop :=
  ∀ n, P10100494240472888140.a n = A073781 (n + 1)

end A073781

/-!
# A073783: First differences of composite numbers.

The programs for A073783, the canonical program `A073783.P7345067272109289188` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073783 has offset 1).

The definition of A073783 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073783.P10170497957398040680

`A073784(n+1)+1`
-/

namespace A073783.P10170497957398040680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073784 (n + 1) + 1

end

end A073783.P10170497957398040680

namespace A073783

/-- `A073784(n+1)+1` -/
def P10170497957398040680.Spec : Prop :=
  ∀ n, P10170497957398040680.a n = A073783 (n + 1)

end A073783

/-! ## A073783.P7345067272109289188

`A002808(n+2)-A002808(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073783

/-- `A002808(n+2)-A002808(n+1)` -/
def P7345067272109289188.Spec : Prop :=
  ∀ n, P7345067272109289188.a n = A073783 (n + 1)

theorem P7345067272109289188.correct : P7345067272109289188.Spec := by
  intro n
  simp only [A073783, Nat.add_sub_cancel]

end A073783

/-! ## A073783.P11183987545521869852

`Δ[A002808(n+1)]`
-/

namespace A073783.P11183987545521869852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073783.P11183987545521869852

namespace A073783

/-- `Δ[A002808(n+1)]` -/
def P11183987545521869852.Spec : Prop :=
  ∀ n, P11183987545521869852.a n = A073783 (n + 1)

theorem P11183987545521869852.correct : P11183987545521869852.Spec := by
  intro n
  simp only [A073783, Nat.add_sub_cancel, A073783.P11183987545521869852.f1, A073783.P11183987545521869852.a, A073783.P7345067272109289188.a, SequenceMachineLib.memo_apply]

end A073783

/-! ## A073783.P16942855863956843718

`Δ[A018252(n+2)]`
-/

namespace A073783.P16942855863956843718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073783.P16942855863956843718

namespace A073783

/-- `Δ[A018252(n+2)]` -/
def P16942855863956843718.Spec : Prop :=
  ∀ n, P16942855863956843718.a n = A073783 (n + 1)

end A073783

/-! ## A073783.P15710353158926199627

`Δ[A141468(n+3)]`
-/

namespace A073783.P15710353158926199627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073783.P15710353158926199627

namespace A073783

/-- `Δ[A141468(n+3)]` -/
def P15710353158926199627.Spec : Prop :=
  ∀ n, P15710353158926199627.a n = A073783 (n + 1)

end A073783

/-! ## A073783.P12745241312276495537

`ceil(2/A218344(n+1))`
-/

namespace A073783.P12745241312276495537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A218344 (n + 1) : ℚ)⌉

end

end A073783.P12745241312276495537

namespace A073783

/-- `ceil(2/A218344(n+1))` -/
def P12745241312276495537.Spec : Prop :=
  ∀ n, P12745241312276495537.a n = A073783 (n + 1)

end A073783

/-! ## A073783.P3406137473001637886

`ceil(2/A260621(n+1))`
-/

namespace A073783.P3406137473001637886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A260621 (n + 1) : ℚ)⌉

end

end A073783.P3406137473001637886

namespace A073783

/-- `ceil(2/A260621(n+1))` -/
def P3406137473001637886.Spec : Prop :=
  ∀ n, P3406137473001637886.a n = A073783 (n + 1)

end A073783

/-! ## A073783.P18312011529136852128

`A073445(n)+a(n-1)` with `a(0)=2`
-/

namespace A073783.P18312011529136852128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A073445 n + a (n - 1)

end

end A073783.P18312011529136852128

namespace A073783

/-- `A073445(n)+a(n-1)` -/
def P18312011529136852128.Spec : Prop :=
  ∀ n, P18312011529136852128.a n = A073783 (n + 1)

end A073783

/-! ## A073783.P859993626410572261

`abs(Δ[A018252(2*n-(n-2))])`
-/

namespace A073783.P859993626410572261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A073783.P859993626410572261

namespace A073783

/-- `abs(Δ[A018252(2*n-(n-2))])` -/
def P859993626410572261.Spec : Prop :=
  ∀ n, P859993626410572261.a n = A073783 (n + 1)

end A073783

/-! ## A073783.P13303888446750627928

`Δ[A018252(2-(n-2*n))]!`
-/

namespace A073783.P13303888446750627928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A073783.P13303888446750627928

namespace A073783

/-- `Δ[A018252(2-(n-2*n))]!` -/
def P13303888446750627928.Spec : Prop :=
  ∀ n, (P13303888446750627928.a n : ℤ) = A073783 (n + 1)

end A073783

/-! ## A073783.P15176515659244615531

`A010051(A079696(n+1))+1`
-/

namespace A073783.P15176515659244615531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A079696 (n + 1)).toNat + 1

end

end A073783.P15176515659244615531

namespace A073783

/-- `A010051(A079696(n+1))+1` -/
def P15176515659244615531.Spec : Prop :=
  ∀ n, P15176515659244615531.a n = A073783 (n + 1)

end A073783

/-! ## A073783.P14249173011217500240

`A049076(2*A260621(n+1))`
-/

namespace A073783.P14249173011217500240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (2 * A260621 (n + 1)).toNat

end

end A073783.P14249173011217500240

namespace A073783

/-- `A049076(2*A260621(n+1))` -/
def P14249173011217500240.Spec : Prop :=
  ∀ n, P14249173011217500240.a n = A073783 (n + 1)

end A073783

/-! ## A073783.P12266038719062533169

`A010051(A002808(n+1)+1)+1`
-/

namespace A073783.P12266038719062533169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002808 (n + 1) + 1).toNat + 1

end

end A073783.P12266038719062533169

namespace A073783

/-- `A010051(A002808(n+1)+1)+1` -/
def P12266038719062533169.Spec : Prop :=
  ∀ n, P12266038719062533169.a n = A073783 (n + 1)

end A073783

/-! ## A073783.P4511938042086356290

`A018252(n+3)-A018252(n+2)`
-/

namespace A073783.P4511938042086356290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 3) - A018252 (n + 2)

end

end A073783.P4511938042086356290

namespace A073783

/-- `A018252(n+3)-A018252(n+2)` -/
def P4511938042086356290.Spec : Prop :=
  ∀ n, P4511938042086356290.a n = A073783 (n + 1)

end A073783

/-! ## A073783.P12875837871292536114

`gcd(A056608(n+1), A179620(n+1))`
-/

namespace A073783.P12875837871292536114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056608 (n + 1)) (A179620 (n + 1))

end

end A073783.P12875837871292536114

namespace A073783

/-- `gcd(A056608(n+1), A179620(n+1))` -/
def P12875837871292536114.Spec : Prop :=
  ∀ n, (P12875837871292536114.a n : ℤ) = A073783 (n + 1)

end A073783

/-! ## A073783.P16424470004113357321

`A000005(Δ[A018252(2*n-(n-2))])`
-/

namespace A073783.P16424470004113357321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A073783.P16424470004113357321

namespace A073783

/-- `A000005(Δ[A018252(2*n-(n-2))])` -/
def P16424470004113357321.Spec : Prop :=
  ∀ n, P16424470004113357321.a n = A073783 (n + 1)

end A073783

/-! ## A073783.P13718607744097702172

`A000041(Δ[A018252(2*n-(n-2))])`
-/

namespace A073783.P13718607744097702172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A073783.P13718607744097702172

namespace A073783

/-- `A000041(Δ[A018252(2*n-(n-2))])` -/
def P13718607744097702172.Spec : Prop :=
  ∀ n, P13718607744097702172.a n = A073783 (n + 1)

end A073783

/-!
# A073784: Number of primes between successive composite numbers.

The programs for A073784, the canonical program `A073784.P11348036052450804536` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073784 has offset 1).

The definition of A073784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073784.P2289268138563150960

`log2(A073783(n+1))`
-/

namespace A073784.P2289268138563150960
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A073783 (n + 1) : ℝ)

end

end A073784.P2289268138563150960

namespace A073784

/-- `log2(A073783(n+1))` -/
def P2289268138563150960.Spec : Prop :=
  ∀ n, P2289268138563150960.a n = (A073784 (n + 1) : ℝ)

end A073784

/-! ## A073784.P7949161897405143047

`log2(Δ[A002808(n+1)])`
-/

namespace A073784.P7949161897405143047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A073784.P7949161897405143047

namespace A073784

/-- `log2(Δ[A002808(n+1)])` -/
def P7949161897405143047.Spec : Prop :=
  ∀ n, P7949161897405143047.a n = (A073784 (n + 1) : ℝ)

end A073784

/-! ## A073784.P17215365020869445162

`log2(Δ[A018252(n+2)])`
-/

namespace A073784.P17215365020869445162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A073784.P17215365020869445162

namespace A073784

/-- `log2(Δ[A018252(n+2)])` -/
def P17215365020869445162.Spec : Prop :=
  ∀ n, P17215365020869445162.a n = (A073784 (n + 1) : ℝ)

end A073784

/-! ## A073784.P16815072004352337770

`log2(Δ[A141468(n+3)])`
-/

namespace A073784.P16815072004352337770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A073784.P16815072004352337770

namespace A073784

/-- `log2(Δ[A141468(n+3)])` -/
def P16815072004352337770.Spec : Prop :=
  ∀ n, P16815072004352337770.a n = (A073784 (n + 1) : ℝ)

end A073784

/-! ## A073784.P13394375602041393864

`char[A014689(n+1)-2]`
-/

namespace A073784.P13394375602041393864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A073784.P13394375602041393864

namespace A073784

/-- `char[A014689(n+1)-2]` -/
def P13394375602041393864.Spec : Prop :=
  ∀ n, (P13394375602041393864.a n : ℤ) = A073784 (n + 1)

end A073784

/-! ## A073784.P12894947506964799036

`char[A073170(n+1)-2]`
-/

namespace A073784.P12894947506964799036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073170 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A073784.P12894947506964799036

namespace A073784

/-- `char[A073170(n+1)-2]` -/
def P12894947506964799036.Spec : Prop :=
  ∀ n, (P12894947506964799036.a n : ℤ) = A073784 (n + 1)

end A073784

/-! ## A073784.P16939556786781950088

`A073445(n)+a(n-1)` with `a(0)=1`
-/

namespace A073784.P16939556786781950088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073445 n + a (n - 1)

end

end A073784.P16939556786781950088

namespace A073784

/-- `A073445(n)+a(n-1)` -/
def P16939556786781950088.Spec : Prop :=
  ∀ n, P16939556786781950088.a n = A073784 (n + 1)

end A073784

/-! ## A073784.P3909025289817980031

`A010051(A079696(n+1))`
-/

namespace A073784.P3909025289817980031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A079696 (n + 1)).toNat

end

end A073784.P3909025289817980031

namespace A073784

/-- `A010051(A079696(n+1))` -/
def P3909025289817980031.Spec : Prop :=
  ∀ n, P3909025289817980031.a n = A073784 (n + 1)

end A073784

/-! ## A073784.P11348036052450804536

`A010051(A002808(n+1)+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073784

/-- `A010051(A002808(n+1)+1)` -/
def P11348036052450804536.Spec : Prop :=
  ∀ n, P11348036052450804536.a n = A073784 (n + 1)

theorem P11348036052450804536.correct : P11348036052450804536.Spec := by
  intro n
  simp only [A073784, Nat.add_sub_cancel]

end A073784

/-! ## A073784.P7001086889964697132

`A010051(A056653(n+1)+1)`
-/

namespace A073784.P7001086889964697132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A056653 (n + 1) + 1).toNat

end

end A073784.P7001086889964697132

namespace A073784

/-- `A010051(A056653(n+1)+1)` -/
def P7001086889964697132.Spec : Prop :=
  ∀ n, P7001086889964697132.a n = A073784 (n + 1)

end A073784

/-! ## A073784.P4234070904558847863

`A010051(A175553(n+1)+1)`
-/

namespace A073784.P4234070904558847863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A175553 (n + 1) + 1).toNat

end

end A073784.P4234070904558847863

namespace A073784

/-- `A010051(A175553(n+1)+1)` -/
def P4234070904558847863.Spec : Prop :=
  ∀ n, P4234070904558847863.a n = A073784 (n + 1)

end A073784

/-! ## A073784.P10770747512529332336

`A010051(A018252(n+2)+1)`
-/

namespace A073784.P10770747512529332336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A018252 (n + 2) + 1).toNat

end

end A073784.P10770747512529332336

namespace A073784

/-- `A010051(A018252(n+2)+1)` -/
def P10770747512529332336.Spec : Prop :=
  ∀ n, P10770747512529332336.a n = A073784 (n + 1)

end A073784

/-! ## A073784.P7458303770276292167

`A000328(n)%A073783(n+1)`
-/

namespace A073784.P7458303770276292167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A073783 (n + 1))

end

end A073784.P7458303770276292167

namespace A073784

/-- `A000328(n)%A073783(n+1)` -/
def P7458303770276292167.Spec : Prop :=
  ∀ n, P7458303770276292167.a n = A073784 (n + 1)

end A073784

/-! ## A073784.P14267700136515625276

`A000605(n)%A073783(n+1)`
-/

namespace A073784.P14267700136515625276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A073783 (n + 1))

end

end A073784.P14267700136515625276

namespace A073784

/-- `A000605(n)%A073783(n+1)` -/
def P14267700136515625276.Spec : Prop :=
  ∀ n, P14267700136515625276.a n = A073784 (n + 1)

end A073784

/-! ## A073784.P1494896803946491947

`A001148(n)%A073783(n+1)`
-/

namespace A073784.P1494896803946491947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A073783 (n + 1))

end

end A073784.P1494896803946491947

namespace A073784

/-- `A001148(n)%A073783(n+1)` -/
def P1494896803946491947.Spec : Prop :=
  ∀ n, P1494896803946491947.a n = A073784 (n + 1)

end A073784

/-! ## A073784.P4750516269546629989

`A001218(n)%A073783(n+1)`
-/

namespace A073784.P4750516269546629989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A073783 (n + 1))

end

end A073784.P4750516269546629989

namespace A073784

/-- `A001218(n)%A073783(n+1)` -/
def P4750516269546629989.Spec : Prop :=
  ∀ n, P4750516269546629989.a n = A073784 (n + 1)

end A073784

/-! ## A073784.P2998117773262369297

`A001513(n)%A073783(n+1)`
-/

namespace A073784.P2998117773262369297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A073783 (n + 1))

end

end A073784.P2998117773262369297

namespace A073784

/-- `A001513(n)%A073783(n+1)` -/
def P2998117773262369297.Spec : Prop :=
  ∀ n, P2998117773262369297.a n = A073784 (n + 1)

end A073784

/-! ## A073784.P11643848499298301885

`A001520(n)%A073783(n+1)`
-/

namespace A073784.P11643848499298301885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A073783 (n + 1))

end

end A073784.P11643848499298301885

namespace A073784

/-- `A001520(n)%A073783(n+1)` -/
def P11643848499298301885.Spec : Prop :=
  ∀ n, P11643848499298301885.a n = A073784 (n + 1)

end A073784

/-! ## A073784.P8322384184874770269

`A001533(n)%A073783(n+1)`
-/

namespace A073784.P8322384184874770269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A073783 (n + 1))

end

end A073784.P8322384184874770269

namespace A073784

/-- `A001533(n)%A073783(n+1)` -/
def P8322384184874770269.Spec : Prop :=
  ∀ n, P8322384184874770269.a n = A073784 (n + 1)

end A073784

/-! ## A073784.P7473777338651298805

`A001535(n)%A073783(n+1)`
-/

namespace A073784.P7473777338651298805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001535 n) (A073783 (n + 1))

end

end A073784.P7473777338651298805

namespace A073784

/-- `A001535(n)%A073783(n+1)` -/
def P7473777338651298805.Spec : Prop :=
  ∀ n, P7473777338651298805.a n = A073784 (n + 1)

end A073784

/-!
# A073785: Numbers in base -3.

The programs for A073785, there is no canonical definition to state claims against.
-/

/-! ## A073785.P2222849966864087176

`record[∑{e}[A263664(n+1), #!]]`
-/

namespace A073785.P2222849966864087176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263664 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorial (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073785.P2222849966864087176

/-! ## A073785.P6516426955743620219

`A077394(∑[char[∑[n]]]²)+n`
-/

namespace A073785.P6516426955743620219
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077394 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) + (n : ℤ)

end

end A073785.P6516426955743620219

/-!
# A073786: Numbers in base -5.

The programs for A073786, there is no canonical definition to state claims against.
-/

/-! ## A073786.P4265882421488474471

`∑[abs(A295290(A206918(n)))]`
-/

namespace A073786.P4265882421488474471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A295290 (A206918 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073786.P4265882421488474471

/-! ## A073786.P12419389280664355247

`∑[A051504(A046858(n))]-1`
-/

namespace A073786.P12419389280664355247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051504 (A046858 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A073786.P12419389280664355247

/-! ## A073786.P5336540563541420149

`A331042(p?[A001299(n)])+n`
-/

namespace A073786.P5336540563541420149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331042 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + (n : ℤ)

end

end A073786.P5336540563541420149

/-! ## A073786.P4006835119801705498

`A241388(A113402(n+2)!)+n`
-/

namespace A073786.P4006835119801705498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241388 (Nat.factorial (A113402 (n + 2)).toNat) + (n : ℤ)

end

end A073786.P4006835119801705498

/-! ## A073786.P16767193847753349242

`∑[A099423(A333783(n+1)^n)]`
-/

namespace A073786.P16767193847753349242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099423 (A333783 (n + 1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073786.P16767193847753349242

/-!
# A073787: Numbers in base -6.

The programs for A073787, there is no canonical definition to state claims against.
-/

/-! ## A073787.P2930544351144769162

`A270256(A319865(n+3))+n`
-/

namespace A073787.P2930544351144769162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270256 (A319865 (n + 3)).toNat + (n : ℤ)

end

end A073787.P2930544351144769162

/-! ## A073787.P17442476945310007361

`∑[A277014(n)^A244169(n+6)]`
-/

namespace A073787.P17442476945310007361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277014 n : ℚ) ^ (A244169 (n + 6) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073787.P17442476945310007361

/-! ## A073787.P13300109471273803536

`∑[A325974(A000108(n))]+n`
-/

namespace A073787.P13300109471273803536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325974 (A000108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A073787.P13300109471273803536

/-! ## A073787.P9957773109750541813

`A381904(A324763(n+1))+n`
-/

namespace A073787.P9957773109750541813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381904 (A324763 (n + 1)).toNat + (n : ℤ)

end

end A073787.P9957773109750541813

/-! ## A073787.P17865893745738945846

`A079454(A290854(n+2))+n`
-/

namespace A073787.P17865893745738945846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079454 (A290854 (n + 2)).toNat + (n : ℤ)

end

end A073787.P17865893745738945846

/-!
# A073788: Numbers in base -7.

The programs for A073788, there is no canonical definition to state claims against.
-/

/-! ## A073788.P16292852377356696651

`A001481(A248770(n+1))+n`
-/

namespace A073788.P16292852377356696651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (A248770 (n + 1)).toNat + (n : ℤ)

end

end A073788.P16292852377356696651

/-! ## A073788.P11690747763230272471

`∑[A347119(A000910(n)+1)]-1`
-/

namespace A073788.P11690747763230272471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347119 (A000910 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A073788.P11690747763230272471

/-! ## A073788.P7400675688528795284

`A039723(∩[A024641(n), A024644(n)])`
-/

namespace A073788.P7400675688528795284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024644 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A073788.P7400675688528795284

/-! ## A073788.P8934300834357355396

`A000378(∑[A001597(2*(n+1))^A292946(n)])`
-/

namespace A073788.P8934300834357355396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (2 * (n + 1)) : ℚ) ^ (A292946 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A073788.P8934300834357355396

/-! ## A073788.P10963574268535974026

`∑[A211111(A100346(2*n+1))]`
-/

namespace A073788.P10963574268535974026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 (A100346 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073788.P10963574268535974026

/-!
# A073789: Numbers in base -8.

The programs for A073789, there is no canonical definition to state claims against.
-/

/-! ## A073789.P3718008543938992483

`A352205(A173068(n+1))+n`
-/

namespace A073789.P3718008543938992483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352205 (A173068 (n + 1)).toNat + (n : ℤ)

end

end A073789.P3718008543938992483

/-! ## A073789.P1079149235721407569

`∑[A007599(A001357(n)*A279760(n))]`
-/

namespace A073789.P1079149235721407569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A001357 n * A279760 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073789.P1079149235721407569

/-! ## A073789.P3079364600178566641

`record[A073790(n)-A007088(A110656(n))]`
-/

namespace A073789.P3079364600178566641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073790 n - A007088 (A110656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073789.P3079364600178566641

/-! ## A073789.P1126539974743083816

`∑[A287697(A349434(n+1)²)]`
-/

namespace A073789.P1126539974743083816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287697 (A349434 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073789.P1126539974743083816

/-! ## A073789.P9272122049934210579

`A098851(A250983(2*n+5))+n`
-/

namespace A073789.P9272122049934210579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098851 (A250983 (2 * n + 5)).toNat + (n : ℤ)

end

end A073789.P9272122049934210579

/-!
# A073790: Numbers in base -9.

The programs for A073790, there is no canonical definition to state claims against.
-/

/-! ## A073790.P12297600470659827999

`C(A145667(10^floor(n/9)), 2)+n`
-/

namespace A073790.P12297600470659827999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A145667 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (⌊(n : ℚ) / 9⌋ : ℤ))).toNat).toNat 2 + n

end

end A073790.P12297600470659827999

/-! ## A073790.P11463063774046844323

`∑[A105570(A001045(n))]+n`
-/

namespace A073790.P11463063774046844323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A001045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A073790.P11463063774046844323

/-! ## A073790.P14113702054336796788

`∑[A105570(A152046(n))]+n`
-/

namespace A073790.P14113702054336796788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A152046 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A073790.P14113702054336796788

/-! ## A073790.P17949116098438383043

`∑[A155944(n)^A244172(n+9)]`
-/

namespace A073790.P17949116098438383043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155944 n : ℚ) ^ (A244172 (n + 9) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073790.P17949116098438383043

/-! ## A073790.P5821973046902546964

`∑[A332350(n+1)^A244172(n+9)]`
-/

namespace A073790.P5821973046902546964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332350 (n + 1) : ℚ) ^ (A244172 (n + 9) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073790.P5821973046902546964

/-!
# A073791: Replace 4^k with (-4)^k in base 4 expansion of n.

The programs for A073791, the canonical program `A073791.P4489210871171678278` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073791 has offset 0).

The definition of A073791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073791.P4489210871171678278

`-A320283(2*n)/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A073791

/-- `-A320283(2*n)/2` -/
def P4489210871171678278.Spec : Prop :=
  ∀ n, P4489210871171678278.a n = (A073791 n : ℚ)

end A073791

/-! ## A073791.P16198354122272576913

`(1-A320283(2*n+1))/2`
-/

namespace A073791.P16198354122272576913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A320283 (2 * n + 1) : ℚ) / 2

end

end A073791.P16198354122272576913

namespace A073791

/-- `(1-A320283(2*n+1))/2` -/
def P16198354122272576913.Spec : Prop :=
  ∀ n, P16198354122272576913.a n = (A073791 n : ℚ)

end A073791

/-! ## A073791.P17758136991399482544

`A318439(A062880(n))`
-/

namespace A073791.P17758136991399482544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318439 (A062880 n).toNat

end

end A073791.P17758136991399482544

namespace A073791

/-- `A318439(A062880(n))` -/
def P17758136991399482544.Spec : Prop :=
  ∀ n, P17758136991399482544.a n = A073791 n

end A073791

/-! ## A073791.P9469085828386306632

`A290884(A062880(n)+1)`
-/

namespace A073791.P9469085828386306632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290884 (A062880 n + 1).toNat

end

end A073791.P9469085828386306632

namespace A073791

/-- `A290884(A062880(n)+1)` -/
def P9469085828386306632.Spec : Prop :=
  ∀ n, P9469085828386306632.a n = A073791 n

end A073791

/-! ## A073791.P10715169999481336235

`A290884(A145812(n+1))`
-/

namespace A073791.P10715169999481336235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290884 (A145812 (n + 1)).toNat

end

end A073791.P10715169999481336235

namespace A073791

/-- `A290884(A145812(n+1))` -/
def P10715169999481336235.Spec : Prop :=
  ∀ n, P10715169999481336235.a n = A073791 n

end A073791

/-! ## A073791.P9928606771744120674

`A318439(2*A000695(n))`
-/

namespace A073791.P9928606771744120674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318439 (2 * A000695 n).toNat

end

end A073791.P9928606771744120674

namespace A073791

/-- `A318439(2*A000695(n))` -/
def P9928606771744120674.Spec : Prop :=
  ∀ n, P9928606771744120674.a n = A073791 n

end A073791

/-!
# A073793: Replace 6^k with (-6)^k in base 6 expansion of n.

The programs for A073793, there is no canonical definition to state claims against.
-/

/-! ## A073793.P12589396475419452658

`A064459(A121578(2*n+1))-n`
-/

namespace A073793.P12589396475419452658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A121578 (2 * n + 1)).toNat - (n : ℤ)

end

end A073793.P12589396475419452658

/-! ## A073793.P1925144512277626760

`2*n%6+2%A236202(n+1)-(n+2)`
-/

namespace A073793.P1925144512277626760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n % 6) : ℕ) : ℤ) + (Int.tmod 2 (A236202 (n + 1)) - (n + 2 : ℤ))

end

end A073793.P1925144512277626760

/-!
# A073794: Replace 7^k with (-7)^k in base 7 expansion of n.

The programs for A073794, there is no canonical definition to state claims against.
-/

/-! ## A073794.P17415905677409830997

`A010876(n)+A010876(n)-n%A115520(n)`
-/

namespace A073794.P17415905677409830997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 n + (A010876 n - Int.tmod (n : ℤ) (A115520 n))

end

end A073794.P17415905677409830997

/-! ## A073794.P13253621067527651882

`A296185(n+1)%14-n`
-/

namespace A073794.P13253621067527651882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296185 (n + 1)) 14 - (n : ℤ)

end

end A073794.P13253621067527651882

/-!
# A073795: Replace 8^k with (-8)^k in base 8 expansion of n.

The programs for A073795, the canonical program `A073795.P3953816640740393313` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073795 has offset 0).

The definition of A073795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073795.P3953816640740393313

`xor(n, A249572(n))-A249572(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A073795

/-- `xor(n, A249572(n))-A249572(n)` -/
def P3953816640740393313.Spec : Prop :=
  ∀ n, P3953816640740393313.a n = A073795 n

theorem P3953816640740393313.correct : P3953816640740393313.Spec := by
  intro n
  simp only [A073795]

end A073795

/-! ## A073795.P12202759779048621536

`A094026(n)-xor(n, A094026(n))`
-/

namespace A073795.P12202759779048621536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 n - Int.xor (n : ℤ) (A094026 n)

end

end A073795.P12202759779048621536

namespace A073795

/-- `A094026(n)-xor(n, A094026(n))` -/
def P12202759779048621536.Spec : Prop :=
  ∀ n, P12202759779048621536.a n = A073795 n

end A073795

/-! ## A073795.P14224781398565185313

`A289404(n)-xor(n, A289404(n))`
-/

namespace A073795.P14224781398565185313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 n - Int.xor (n : ℤ) (A289404 n)

end

end A073795.P14224781398565185313

namespace A073795

/-- `A289404(n)-xor(n, A289404(n))` -/
def P14224781398565185313.Spec : Prop :=
  ∀ n, P14224781398565185313.a n = A073795 n

end A073795

/-! ## A073795.P17535443100567476735

`A339339(A235395(2*n+3))-xor(7, n)`
-/

namespace A073795.P17535443100567476735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339339 (A235395 (2 * n + 3)).toNat - (Nat.xor 7 n : ℤ)

end

end A073795.P17535443100567476735

namespace A073795

/-- `A339339(A235395(2*n+3))-xor(7, n)` -/
def P17535443100567476735.Spec : Prop :=
  ∀ n, P17535443100567476735.a n = A073795 n

end A073795

/-! ## A073795.P6773317394335404553

`A004448(n)*A008836(A140001(n+1))+7`
-/

namespace A073795.P6773317394335404553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 n * A008836 (A140001 (n + 1)).toNat + 7

end

end A073795.P6773317394335404553

namespace A073795

/-- `A004448(n)*A008836(A140001(n+1))+7` -/
def P6773317394335404553.Spec : Prop :=
  ∀ n, P6773317394335404553.a n = A073795 n

end A073795

/-!
# A073796: Replace 9^k with (-9)^k in base 9 expansion of n.

The programs for A073796, there is no canonical definition to state claims against.
-/

/-! ## A073796.P13966423922362965490

`n-A066568(lt[A118759(n)%20, 9]+1)`
-/

namespace A073796.P13966423922362965490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 n) 20

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A066568 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A073796.P13966423922362965490

/-! ## A073796.P13441636687177942919

`n-A066568(record[(n+1)/A118762(n+1)])`
-/

namespace A073796.P13441636687177942919
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A118762 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A066568 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A073796.P13441636687177942919

/-!
# A073797: a(n) = 2^n mod pi(n).

The programs for A073797, the canonical program `A073797.P2043127665268211522` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073797 has offset 2).

The definition of A073797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073797.P9783831403750747596

`(2^(n+2))%A000720(n+2)`
-/

namespace A073797.P9783831403750747596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ (n + 2) : ℤ) (A000720 (n + 2))

end

end A073797.P9783831403750747596

namespace A073797

/-- `(2^(n+2))%A000720(n+2)` -/
def P9783831403750747596.Spec : Prop :=
  ∀ n, P9783831403750747596.a n = A073797 (n + 2)

end A073797

/-! ## A073797.P2043127665268211522

`A020707(n)%A230980(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A073797

/-- `A020707(n)%A230980(n+2)` -/
def P2043127665268211522.Spec : Prop :=
  ∀ n, P2043127665268211522.a n = A073797 (n + 2)

theorem P2043127665268211522.correct : P2043127665268211522.Spec := by
  intro n
  simp only [A073797, Nat.add_sub_cancel]

end A073797

/-! ## A073797.P11605869894112436397

`A000079(n+2)%A230980(n+2)`
-/

namespace A073797.P11605869894112436397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (n + 2)) (A230980 (n + 2))

end

end A073797.P11605869894112436397

namespace A073797

/-- `A000079(n+2)%A230980(n+2)` -/
def P11605869894112436397.Spec : Prop :=
  ∀ n, P11605869894112436397.a n = A073797 (n + 2)

end A073797

/-! ## A073797.P5484779996878949849

`A011782(n+3)%A230980(n+2)`
-/

namespace A073797.P5484779996878949849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 3)) (A230980 (n + 2))

end

end A073797.P5484779996878949849

namespace A073797

/-- `A011782(n+3)%A230980(n+2)` -/
def P5484779996878949849.Spec : Prop :=
  ∀ n, P5484779996878949849.a n = A073797 (n + 2)

end A073797

/-! ## A073797.P14121413265879683516

`A000079(A028310(n+2))%A056172(2*n+4)`
-/

namespace A073797.P14121413265879683516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A028310 (n + 2)).toNat) (A056172 (2 * n + 4))

end

end A073797.P14121413265879683516

namespace A073797

/-- `A000079(A028310(n+2))%A056172(2*n+4)` -/
def P14121413265879683516.Spec : Prop :=
  ∀ n, P14121413265879683516.a n = A073797 (n + 2)

end A073797

/-! ## A073797.P9837512336382836769

`Δ[A094373(n+3)]%A230980(n+2)`
-/

namespace A073797.P9837512336382836769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A230980 (n + 2))

end

end A073797.P9837512336382836769

namespace A073797

/-- `Δ[A094373(n+3)]%A230980(n+2)` -/
def P9837512336382836769.Spec : Prop :=
  ∀ n, P9837512336382836769.a n = A073797 (n + 2)

end A073797

/-!
# A073798: pi(n) is a power of 2, where pi(n) = A000720(n) is the number of primes <= n.

The programs for A073798, the canonical program `A073798.P9052725351204481887` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073798 has offset 1).

The definition of A073798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073798.P14141104553541168808

`record[(n+2)/A000120(A000720(n+2))]`
-/

namespace A073798.P14141104553541168808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A000120 (A000720 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073798.P14141104553541168808

namespace A073798

/-- `record[(n+2)/A000120(A000720(n+2))]` -/
def P14141104553541168808.Spec : Prop :=
  ∀ n, P14141104553541168808.a n = (A073798 (n + 1) : ℚ)

end A073798

/-! ## A073798.P9052725351204481887

`record[(n+1)*(2-A000120(A000720(n+1)))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073798

/-- `record[(n+1)*(2-A000120(A000720(n+1)))]` -/
def P9052725351204481887.Spec : Prop :=
  ∀ n, P9052725351204481887.a n = A073798 (n + 1)

theorem P9052725351204481887.correct : P9052725351204481887.Spec := by
  intro n
  simp only [A073798, Nat.add_sub_cancel]

end A073798

/-! ## A073798.P11880944423015304667

`eq[2, A286622(A000720(n+1))]+1`
-/

namespace A073798.P11880944423015304667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A000720 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073798.P11880944423015304667

namespace A073798

/-- `eq[2, A286622(A000720(n+1))]+1` -/
def P11880944423015304667.Spec : Prop :=
  ∀ n, (P11880944423015304667.a n : ℤ) = A073798 (n + 1)

end A073798

/-! ## A073798.P3407816170014908463

`eq[1, A000120(A230980(n))]`
-/

namespace A073798.P3407816170014908463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073798.P3407816170014908463

namespace A073798

/-- `eq[1, A000120(A230980(n))]` -/
def P3407816170014908463.Spec : Prop :=
  ∀ n, (P3407816170014908463.a n : ℤ) = A073798 (n + 1)

end A073798

/-! ## A073798.P2857101615491963602

`record[(n+1)/A000265(A033270(n+2)+1)+1]`
-/

namespace A073798.P2857101615491963602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (A033270 (n + 2) + 1).toNat : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073798.P2857101615491963602

namespace A073798

/-- `record[(n+1)/A000265(A033270(n+2)+1)+1]` -/
def P2857101615491963602.Spec : Prop :=
  ∀ n, P2857101615491963602.a n = (A073798 (n + 1) : ℚ)

end A073798

/-!
# A073799: Numbers that begin a run of consecutive integers k such that PrimePi(k) divides 2^k.

The programs for A073799, there is no canonical definition to state claims against.
-/

/-! ## A073799.P1083686573900239534

`A033844(ceil(n/sin(8)))`
-/

namespace A073799.P1083686573900239534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 ⌈(n : ℝ) / Real.sin (8 : ℝ)⌉.toNat

end

end A073799.P1083686573900239534

/-! ## A073799.P15176604107924676981

`A033844(ceil(sin(n)²)+n)`
-/

namespace A073799.P15176604107924676981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (⌈Real.sin (n : ℝ) ^ 2⌉ + (n : ℤ)).toNat

end

end A073799.P15176604107924676981

/-! ## A073799.P16742320578444497976

`A033844(n+1)-floor(acot(n))`
-/

namespace A073799.P16742320578444497976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A073799.P16742320578444497976

/-! ## A073799.P5625262250056545410

`A033844(n-(floor(acot(n))-1))`
-/

namespace A073799.P5625262250056545410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 ((n : ℤ) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A073799.P5625262250056545410

/-! ## A073799.P18007318422447496228

`A033844((n+1)%(2*n+1))`
-/

namespace A073799.P18007318422447496228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 ((n + 1) % (2 * n + 1))

end

end A073799.P18007318422447496228

/-! ## A073799.P15856344420426245309

`A033844(A087156(n+1))`
-/

namespace A073799.P15856344420426245309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (A087156 (n + 1)).toNat

end

end A073799.P15856344420426245309

/-! ## A073799.P16405721960977629821

`A033844(A199969(n+2))`
-/

namespace A073799.P16405721960977629821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (A199969 (n + 2)).toNat

end

end A073799.P16405721960977629821

/-! ## A073799.P15463145669093649886

`A033844(A057427(n)+n)`
-/

namespace A073799.P15463145669093649886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (A057427 n + (n : ℤ)).toNat

end

end A073799.P15463145669093649886

/-! ## A073799.P13794074269771445221

`A033844(ceil(sqrt(A002378(n))))`
-/

namespace A073799.P13794074269771445221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 ⌈Real.sqrt (A002378 n : ℝ)⌉.toNat

end

end A073799.P13794074269771445221

