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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A308700: a(n) = n * 2^(n - 2) * (2^(n - 1) - 1).

The programs for A308700, the canonical program `A308700.P1777296624039622923` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308700 has offset 0).

The definition of A308700 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*2^(n-2)*(2^(n-1)-1)` (program `A308700.P8308037970344828203`, by `A308700.P8308037970344828203.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308700.P8308037970344828203

`n*2^(n-2)*(2^(n-1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A308700.P8308037970344828203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A308700.P8308037970344828203

namespace A308700

/-- `n*2^(n-2)*(2^(n-1)-1)` -/
def P8308037970344828203.Spec : Prop :=
  ∀ n, P8308037970344828203.a n = (A308700 n : ℚ)

theorem P8308037970344828203.correct : P8308037970344828203.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A308700, Nat.add_sub_cancel, A308700.P8308037970344828203.a, A308700.P1777296624039622923.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A308700, Nat.add_sub_cancel, A308700.P8308037970344828203.a, A308700.P1777296624039622923.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A308700

/-! ## A308700.P1777296624039622923

`12*a(n-1)-52*a(n-2)+96*a(n-3)-64*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=18`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308700

/-- `12*a(n-1)-52*a(n-2)+96*a(n-3)-64*a(n-4)` -/
def P1777296624039622923.Spec : Prop :=
  ∀ n, P1777296624039622923.a n = A308700 n

theorem P1777296624039622923.correct : P1777296624039622923.Spec := by
  intro n
  simp only [A308700]

end A308700

/-! ## A308700.P6985405349861722832

`A082134(n)-A001787(n)`
-/

namespace A308700.P6985405349861722832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082134 n - A001787 n

end

end A308700.P6985405349861722832

namespace A308700

/-- `A082134(n)-A001787(n)` -/
def P6985405349861722832.Spec : Prop :=
  ∀ n, P6985405349861722832.a n = A308700 n

end A308700

/-! ## A308700.P902848068181382494

`ogf((2x^2-6x^3)/(1-12x+52x^2-96x^3+64x^4))`
-/

namespace A308700.P902848068181382494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -6] [1, -12, 52, -96, 64] n

end

end A308700.P902848068181382494

namespace A308700

/-- `ogf((2x^2-6x^3)/(1-12x+52x^2-96x^3+64x^4))` -/
def P902848068181382494.Spec : Prop :=
  ∀ n, P902848068181382494.a n = A308700 n

end A308700

/-! ## A308700.P4427738155808581208

`n*C(2^abs(n-1), 2)`
-/

namespace A308700.P4427738155808581208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ (|(n : ℤ) - 1| : ℤ))).toNat 2

end

end A308700.P4427738155808581208

namespace A308700

/-- `n*C(2^abs(n-1), 2)` -/
def P4427738155808581208.Spec : Prop :=
  ∀ n, (P4427738155808581208.a n : ℤ) = A308700 n

end A308700

/-! ## A308700.P15515199649904811002

`lcm(2, n*C(A011782(n), 2))`
-/

namespace A308700.P15515199649904811002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * Nat.choose (A011782 n).toNat 2)

end

end A308700.P15515199649904811002

namespace A308700

/-- `lcm(2, n*C(A011782(n), 2))` -/
def P15515199649904811002.Spec : Prop :=
  ∀ n, (P15515199649904811002.a n : ℤ) = A308700 n

end A308700

/-! ## A308700.P9521735008953203676

`A002697(n)-A082134(n)`
-/

namespace A308700.P9521735008953203676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n - A082134 n

end

end A308700.P9521735008953203676

namespace A308700

/-- `A002697(n)-A082134(n)` -/
def P9521735008953203676.Spec : Prop :=
  ∀ n, P9521735008953203676.a n = A308700 n

end A308700

/-! ## A308700.P7363060571695406369

`abs(A000918(n)*A049610(n))`
-/

namespace A308700.P7363060571695406369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000918 n * A049610 n|

end

end A308700.P7363060571695406369

namespace A308700

/-- `abs(A000918(n)*A049610(n))` -/
def P7363060571695406369.Spec : Prop :=
  ∀ n, P7363060571695406369.a n = A308700 n

end A308700

/-! ## A308700.P3691195074201650508

`record[A235789(n)]-A082134(n)`
-/

namespace A308700.P3691195074201650508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A082134 n

end

end A308700.P3691195074201650508

namespace A308700

/-- `record[A235789(n)]-A082134(n)` -/
def P3691195074201650508.Spec : Prop :=
  ∀ n, P3691195074201650508.a n = A308700 n

end A308700

/-! ## A308700.P6108747608344918884

`A049610(2*n)-A082134(n)`
-/

namespace A308700.P6108747608344918884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n) - A082134 n

end

end A308700.P6108747608344918884

namespace A308700

/-- `A049610(2*n)-A082134(n)` -/
def P6108747608344918884.Spec : Prop :=
  ∀ n, P6108747608344918884.a n = A308700 n

end A308700

/-! ## A308700.P7874677263007815246

`A133224(n)-2*A082134(n)`
-/

namespace A308700.P7874677263007815246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133224 n - 2 * A082134 n

end

end A308700.P7874677263007815246

namespace A308700

/-- `A133224(n)-2*A082134(n)` -/
def P7874677263007815246.Spec : Prop :=
  ∀ n, P7874677263007815246.a n = A308700 n

end A308700

/-! ## A308700.P8540589788106242860

`(A002697(n)-A001787(n))/2`
-/

namespace A308700.P8540589788106242860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002697 n - A001787 n : ℚ) / 2

end

end A308700.P8540589788106242860

namespace A308700

/-- `(A002697(n)-A001787(n))/2` -/
def P8540589788106242860.Spec : Prop :=
  ∀ n, P8540589788106242860.a n = (A308700 n : ℚ)

end A308700

/-! ## A308700.P11310704407627342655

`(A049610(2*n)-A097067(n+1))/2`
-/

namespace A308700.P11310704407627342655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049610 (2 * n) - A097067 (n + 1) : ℚ) / 2

end

end A308700.P11310704407627342655

namespace A308700

/-- `(A049610(2*n)-A097067(n+1))/2` -/
def P11310704407627342655.Spec : Prop :=
  ∀ n, P11310704407627342655.a n = (A308700 n : ℚ)

end A308700

/-! ## A308700.P15435040758892369016

`(A007283(n)/6-1)*A001787(n)/2`
-/

namespace A308700.P15435040758892369016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A007283 n : ℚ) / 6 - 1) * (A001787 n : ℚ) / 2

end

end A308700.P15435040758892369016

namespace A308700

/-- `(A007283(n)/6-1)*A001787(n)/2` -/
def P15435040758892369016.Spec : Prop :=
  ∀ n, P15435040758892369016.a n = (A308700 n : ℚ)

end A308700

/-! ## A308700.P11047594019240052924

`A002697(n)+A002697(n)-A133224(n)`
-/

namespace A308700.P11047594019240052924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + (A002697 n - A133224 n)

end

end A308700.P11047594019240052924

namespace A308700

/-- `A002697(n)+A002697(n)-A133224(n)` -/
def P11047594019240052924.Spec : Prop :=
  ∀ n, P11047594019240052924.a n = A308700 n

end A308700

/-! ## A308700.P9572044744160505845

`A011782(n)*A057711(n)-A057711(n)`
-/

namespace A308700.P9572044744160505845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A057711 n - A057711 n

end

end A308700.P9572044744160505845

namespace A308700

/-- `A011782(n)*A057711(n)-A057711(n)` -/
def P9572044744160505845.Spec : Prop :=
  ∀ n, P9572044744160505845.a n = A308700 n

end A308700

/-! ## A308700.P70205241405359451

`n*A166444(A004273(n))-A057711(n)`
-/

namespace A308700.P70205241405359451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A166444 (A004273 n).toNat - A057711 n

end

end A308700.P70205241405359451

namespace A308700

/-- `n*A166444(A004273(n))-A057711(n)` -/
def P70205241405359451.Spec : Prop :=
  ∀ n, P70205241405359451.a n = A308700 n

end A308700

/-! ## A308700.P1580216196957480507

`n*A034008(A004280(n+1))-A057711(n)`
-/

namespace A308700.P1580216196957480507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A034008 (A004280 (n + 1)).toNat - A057711 n

end

end A308700.P1580216196957480507

namespace A308700

/-- `n*A034008(A004280(n+1))-A057711(n)` -/
def P1580216196957480507.Spec : Prop :=
  ∀ n, P1580216196957480507.a n = A308700 n

end A308700

/-! ## A308700.P11794191138628306647

`A002699(n)-A133224(n)`
-/

namespace A308700.P11794191138628306647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002699 n - A133224 n

end

end A308700.P11794191138628306647

namespace A308700

/-- `A002699(n)-A133224(n)` -/
def P11794191138628306647.Spec : Prop :=
  ∀ n, P11794191138628306647.a n = A308700 n

end A308700

/-! ## A308700.P17549081555844356235

`2*A002697(n)-A133224(n)`
-/

namespace A308700.P17549081555844356235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002697 n - A133224 n

end

end A308700.P17549081555844356235

namespace A308700

/-- `2*A002697(n)-A133224(n)` -/
def P17549081555844356235.Spec : Prop :=
  ∀ n, P17549081555844356235.a n = A308700 n

end A308700

/-!
# A308701: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals, where A(n,k) is Sum_{d|n} d^(k*(d-1)).

The programs for A308701, there is no canonical definition to state claims against.
-/

/-! ## A308701.P27376822535302582

`ceil(A308698(A161951(n+1))/A009998(n))`
-/

namespace A308701.P27376822535302582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308698 (A161951 (n + 1)).toNat : ℚ) / (A009998 n : ℚ)⌉

end

end A308701.P27376822535302582

/-! ## A308701.P753541048528693564

`ceil(A308698(A004885(n+1)+1)/A009998(n))`
-/

namespace A308701.P753541048528693564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308698 (A004885 (n + 1) + 1).toNat : ℚ) / (A009998 n : ℚ)⌉

end

end A308701.P753541048528693564

/-! ## A308701.P16575490036774720315

`ceil(A308698(A004896(n+1)+1)/A009998(n))`
-/

namespace A308701.P16575490036774720315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308698 (A004896 (n + 1) + 1).toNat : ℚ) / (A009998 n : ℚ)⌉

end

end A308701.P16575490036774720315

/-! ## A308701.P5199030947381759320

`A107452(A046803(n+1)+2)`
-/

namespace A308701.P5199030947381759320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107452 (A046803 (n + 1) + 2).toNat

end

end A308701.P5199030947381759320

/-! ## A308701.P8684356834797152880

`∑{e}[A174057(A114687(n+1)), #]`
-/

namespace A308701.P8684356834797152880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174057 (A114687 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A308701.P8684356834797152880

/-!
# A308702: a(n) is the least integer k such that both k^2+2*n-1 and k^2+4*n are squares.

The programs for A308702, there is no canonical definition to state claims against.
-/

/-! ## A308702.P6105839175249612616

`(n+1)%A022911(A090288(n))`
-/

namespace A308702.P6105839175249612616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A022911 (A090288 n).toNat)

end

end A308702.P6105839175249612616

/-! ## A308702.P10913424648730835048

`n%A000125(A234001(n+1))+1`
-/

namespace A308702.P10913424648730835048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000125 (A234001 (n + 1)).toNat) + 1

end

end A308702.P10913424648730835048

/-! ## A308702.P754973703427133610

`A000027(n+1)%A273761(∑[A273761(n)])`
-/

namespace A308702.P754973703427133610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A273761 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A308702.P754973703427133610

/-! ## A308702.P7226482049958932173

`A065033(2*n+1)%A351495(A329603(n+4))`
-/

namespace A308702.P7226482049958932173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (2 * n + 1)) (A351495 (A329603 (n + 4)).toNat)

end

end A308702.P7226482049958932173

/-! ## A308702.P14371383473190524870

`A289441(2*(n+1))%A092867(A070610(3*(n+1)))`
-/

namespace A308702.P14371383473190524870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289441 (2 * (n + 1))) (A092867 (A070610 (3 * (n + 1))).toNat)

end

end A308702.P14371383473190524870

/-! ## A308702.P3354171963888364621

`2-A277130(A348511(3*n+1))+n`
-/

namespace A308702.P3354171963888364621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A277130 (A348511 (3 * n + 1)).toNat + (n : ℤ)

end

end A308702.P3354171963888364621

/-! ## A308702.P9695301494448791819

`A051176(3*(n+1))%A000118(A152979(n+1))`
-/

namespace A308702.P9695301494448791819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051176 (3 * (n + 1))) (A000118 (A152979 (n + 1)).toNat)

end

end A308702.P9695301494448791819

/-!
# A308703: Integers k such that A308702(k) < k-1.

The programs for A308703, there is no canonical definition to state claims against.
-/

/-! ## A308703.P12768524397062223073

`lt[A308702(n+2), n]+2`
-/

namespace A308703.P12768524397062223073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308702 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A308703.P12768524397062223073

/-! ## A308703.P13300127979841076936

`A307136(A386302(n+2))`
-/

namespace A308703.P13300127979841076936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307136 (A386302 (n + 2)).toNat

end

end A308703.P13300127979841076936

/-!
# A308706: Number of chiral pairs of set partitions of a primitive cycle of n elements having exactly two different elements.

The programs for A308706, the canonical program `A308706.P3139874676178354333` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308706 has offset 0).

The definition of A308706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308706.P535178481483604531

`A000048(n)-A000046(n)`
-/

namespace A308706.P535178481483604531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n - A000046 n

end

end A308706.P535178481483604531

namespace A308706

/-- `A000048(n)-A000046(n)` -/
def P535178481483604531.Spec : Prop :=
  ∀ n, P535178481483604531.a n = A308706 n

theorem P535178481483604531.correct : P535178481483604531.Spec := by
  intro n
  simp only [A308706, Nat.add_sub_cancel, A308706.P535178481483604531.a, A308706.P3139874676178354333.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000046, A000046.P15269567726961333018.a, A000048, A000048.P16452762028424782785.a, A004280, A004280.P18251991264162813989.a, A056366, A056366.P11464598418181165535.f1, A056366.P11464598418181165535.a, A115118, A115118.P6546194884082821130.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A056357, A056357.P4842207205344538288.a, A233583, A233583.P15026547221992958741.a, A000011, A000011.P276434732339544012.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P8500875009608658723.a, A008965, A008965.P16924218572130557635.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308706

/-! ## A308706.P852828853095955363

`A000046(n)-A179781(A028310(n))`
-/

namespace A308706.P852828853095955363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 n - A179781 (A028310 n).toNat

end

end A308706.P852828853095955363

namespace A308706

/-- `A000046(n)-A179781(A028310(n))` -/
def P852828853095955363.Spec : Prop :=
  ∀ n, P852828853095955363.a n = A308706 n

end A308706

/-! ## A308706.P13683569439077880983

`A000013(n)-(A115118(n)+A000046(n))`
-/

namespace A308706.P13683569439077880983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - (A115118 n + A000046 n)

end

end A308706.P13683569439077880983

namespace A308706

/-- `A000013(n)-(A115118(n)+A000046(n))` -/
def P13683569439077880983.Spec : Prop :=
  ∀ n, P13683569439077880983.a n = A308706 n

theorem P13683569439077880983.correct : P13683569439077880983.Spec := by
  intro n
  simp only [A308706, Nat.add_sub_cancel, A308706.P13683569439077880983.a, A308706.P3139874676178354333.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000046, A000046.P15269567726961333018.a, A004280, A004280.P18251991264162813989.a, A056366, A056366.P11464598418181165535.f1, A056366.P11464598418181165535.a, A115118, A115118.P6546194884082821130.a, A000048, A000048.P16452762028424782785.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A056357, A056357.P4842207205344538288.a, A000011, A000011.P276434732339544012.a, A056295, A056295.P9438402425658344231.a, A233583, A233583.P15026547221992958741.a, A000016, A000016.P8500875009608658723.a, A008965, A008965.P16924218572130557635.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308706

/-! ## A308706.P2688399006701723055

`∑{d}[n+1, A008683(#)*A054172((n+1)/#-1)]-A000046(n)`
-/

namespace A308706.P2688399006701723055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A054172 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat - A000046 n

end

end A308706.P2688399006701723055

namespace A308706

/-- `∑{d}[n+1, A008683(#)*A054172((n+1)/#-1)]-A000046(n)` -/
def P2688399006701723055.Spec : Prop :=
  ∀ n, P2688399006701723055.a n = A308706 n

end A308706

/-! ## A308706.P3139874676178354333

`A000013(n)-A115118(n)-A056366(A004280(n+1)-(n-1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A308706

/-- `A000013(n)-A115118(n)-A056366(A004280(n+1)-(n-1))` -/
def P3139874676178354333.Spec : Prop :=
  ∀ n, P3139874676178354333.a n = A308706 n

theorem P3139874676178354333.correct : P3139874676178354333.Spec := by
  intro n
  simp only [A308706]

end A308706

/-! ## A308706.P3979487854709498308

`A045663(n)²/A045665(2*n)-A000046(n)`
-/

namespace A308706.P3979487854709498308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 n ^ 2 : ℚ) / (A045665 (2 * n) : ℚ) - (A000046 n : ℚ)

end

end A308706.P3979487854709498308

namespace A308706

/-- `A045663(n)²/A045665(2*n)-A000046(n)` -/
def P3979487854709498308.Spec : Prop :=
  ∀ n, P3979487854709498308.a n = (A308706 n : ℚ)

end A308706

/-!
# A308707: a(n) = gcd(n, phi(n) + sigma(n)), where phi is A000010 and sigma is A000203.

The programs for A308707, the canonical program `A308707.P10750836579362091936` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308707 has offset 1).

The definition of A308707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A000010(n+1)+A000203(n+1))` (program `A308707.P10750836579362091936`, by `A308707.P10750836579362091936.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308707.P4533318601550812062

`gcd(n+1, A065387(n+1))`
-/

namespace A308707.P4533318601550812062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A065387 (n + 1))

end

end A308707.P4533318601550812062

namespace A308707

/-- `gcd(n+1, A065387(n+1))` -/
def P4533318601550812062.Spec : Prop :=
  ∀ n, (P4533318601550812062.a n : ℤ) = A308707 (n + 1)

theorem P4533318601550812062.correct : P4533318601550812062.Spec := by
  intro n
  simp only [A308707, Nat.add_sub_cancel, A308707.P4533318601550812062.a, A308707.P10750836579362091936.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065387, A065387.P11284875715279330998.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308707

/-! ## A308707.P10750836579362091936

`gcd(n+1, A000010(n+1)+A000203(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308707

/-- `gcd(n+1, A000010(n+1)+A000203(n+1))` -/
def P10750836579362091936.Spec : Prop :=
  ∀ n, (P10750836579362091936.a n : ℤ) = A308707 (n + 1)

theorem P10750836579362091936.correct : P10750836579362091936.Spec := by
  intro n
  simp only [A308707, Nat.add_sub_cancel]

end A308707

/-! ## A308707.P17805882318706397030

`gcd(n+1, A051709(n+1))`
-/

namespace A308707.P17805882318706397030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A051709 (n + 1))

end

end A308707.P17805882318706397030

namespace A308707

/-- `gcd(n+1, A051709(n+1))` -/
def P17805882318706397030.Spec : Prop :=
  ∀ n, (P17805882318706397030.a n : ℤ) = A308707 (n + 1)

end A308707

/-! ## A308707.P11743300156123352149

`gcd(C(n+1, n), A209187(n+1))`
-/

namespace A308707.P11743300156123352149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n + 1) n : ℤ) (A209187 (n + 1))

end

end A308707.P11743300156123352149

namespace A308707

/-- `gcd(C(n+1, n), A209187(n+1))` -/
def P11743300156123352149.Spec : Prop :=
  ∀ n, (P11743300156123352149.a n : ℤ) = A308707 (n + 1)

end A308707

/-! ## A308707.P12744889742814688888

`gcd(Δ[n²]-n, A094472(n+1))`
-/

namespace A308707.P12744889742814688888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A094472 (n + 1))

end

end A308707.P12744889742814688888

namespace A308707

/-- `gcd(Δ[n²]-n, A094472(n+1))` -/
def P12744889742814688888.Spec : Prop :=
  ∀ n, (P12744889742814688888.a n : ℤ) = A308707 (n + 1)

end A308707

/-! ## A308707.P9447151524634373973

`gcd(A094472(n+1), A131738(n))`
-/

namespace A308707.P9447151524634373973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094472 (n + 1)) (A131738 n)

end

end A308707.P9447151524634373973

namespace A308707

/-- `gcd(A094472(n+1), A131738(n))` -/
def P9447151524634373973.Spec : Prop :=
  ∀ n, (P9447151524634373973.a n : ℤ) = A308707 (n + 1)

end A308707

/-!
# A308708: Numbers k such that k^3 contains exactly three distinct digits; numbers with trailing zeros are excluded.

The programs for A308708, there is no canonical definition to state claims against.
-/

/-! ## A308708.P8341243730509768737

`∩[A155146(n+1), A202940(n+1)]`
-/

namespace A308708.P8341243730509768737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308708.P8341243730509768737

/-! ## A308708.P15138749412314704305

`∩[A067251(n+1), A155146(n+1)]`
-/

namespace A308708.P15138749412314704305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308708.P15138749412314704305

/-! ## A308708.P14315991013162670176

`∩[A057854(n+1), A202940(n+1)]`
-/

namespace A308708.P14315991013162670176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308708.P14315991013162670176

/-! ## A308708.P3461233401019328985

`∩[A155146(n+1), A342851(n+1)]`
-/

namespace A308708.P3461233401019328985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308708.P3461233401019328985

/-! ## A308708.P8990194708188306786

`record[A004151(A155146(n+1))]`
-/

namespace A308708.P8990194708188306786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A155146 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308708.P8990194708188306786

/-!
# A308709: Start with 3, divide by 3, multiply by 2, multiply by 3, multiply by 2, repeat.

The programs for A308709, the canonical program `A308709.P10694226840695074578` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308709 has offset 1).

The definition of A308709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308709.P10694226840695074578

`ogf((3+x+2x^2+6x^3)/(1-4x^4))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308709

/-- `ogf((3+x+2x^2+6x^3)/(1-4x^4))` -/
def P10694226840695074578.Spec : Prop :=
  ∀ n, P10694226840695074578.a n = A308709 (n + 1)

theorem P10694226840695074578.correct : P10694226840695074578.Spec := by
  intro n
  simp only [A308709, Nat.add_sub_cancel]

end A308709

/-! ## A308709.P6834014527276427187

`4*a(n-4)` with `a(0)=3, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A308709.P6834014527276427187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2, 6] fun n a =>
  4 * a (n - 4)

end

end A308709.P6834014527276427187

namespace A308709

/-- `4*a(n-4)` -/
def P6834014527276427187.Spec : Prop :=
  ∀ n, (P6834014527276427187.a n : ℤ) = A308709 (n + 1)

end A308709

/-! ## A308709.P17854475290231532671

`abs(Δ[A108520(xor(1, n))])`
-/

namespace A308709.P17854475290231532671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A308709.P17854475290231532671

namespace A308709

/-- `abs(Δ[A108520(xor(1, n))])` -/
def P17854475290231532671.Spec : Prop :=
  ∀ n, P17854475290231532671.a n = A308709 (n + 1)

end A308709

/-! ## A308709.P11090782080698623931

`(3-and(2, n+1))*A016116(n)`
-/

namespace A308709.P11090782080698623931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.land 2 (n + 1) : ℤ)) * A016116 n

end

end A308709.P11090782080698623931

namespace A308709

/-- `(3-and(2, n+1))*A016116(n)` -/
def P11090782080698623931.Spec : Prop :=
  ∀ n, P11090782080698623931.a n = A308709 (n + 1)

end A308709

/-! ## A308709.P12188987952214581253

`lcm(2^floor(n/2), Δ[A159966(n)])`
-/

namespace A308709.P12188987952214581253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (f1 (n + 1) - f1 n)

end

end A308709.P12188987952214581253

namespace A308709

/-- `lcm(2^floor(n/2), Δ[A159966(n)])` -/
def P12188987952214581253.Spec : Prop :=
  ∀ n, (P12188987952214581253.a n : ℤ) = A308709 (n + 1)

end A308709

/-! ## A308709.P13527934800393271846

`A117575(n+1)+∏[char[2*n]+1]`
-/

namespace A308709.P13527934800393271846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (n + 1) + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A308709.P13527934800393271846

namespace A308709

/-- `A117575(n+1)+∏[char[2*n]+1]` -/
def P13527934800393271846.Spec : Prop :=
  ∀ n, P13527934800393271846.a n = A308709 (n + 1)

end A308709

/-! ## A308709.P12153418053423130423

`A074323(A080412(n+1))`
-/

namespace A308709.P12153418053423130423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A080412 (n + 1)).toNat

end

end A308709.P12153418053423130423

namespace A308709

/-- `A074323(A080412(n+1))` -/
def P12153418053423130423.Spec : Prop :=
  ∀ n, P12153418053423130423.a n = A308709 (n + 1)

end A308709

/-! ## A308709.P18443147575352893116

`lcm(A016116(n), A132429(n))`
-/

namespace A308709.P18443147575352893116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016116 n) (A132429 n)

end

end A308709.P18443147575352893116

namespace A308709

/-- `lcm(A016116(n), A132429(n))` -/
def P18443147575352893116.Spec : Prop :=
  ∀ n, (P18443147575352893116.a n : ℤ) = A308709 (n + 1)

end A308709

/-! ## A308709.P11030167196428465883

`A016116(n)*A084101(n+2)`
-/

namespace A308709.P11030167196428465883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A084101 (n + 2)

end

end A308709.P11030167196428465883

namespace A308709

/-- `A016116(n)*A084101(n+2)` -/
def P11030167196428465883.Spec : Prop :=
  ∀ n, P11030167196428465883.a n = A308709 (n + 1)

end A308709

/-! ## A308709.P18349171821649008057

`(A087960(n)+2)*A016116(n)`
-/

namespace A308709.P18349171821649008057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087960 n + 2) * A016116 n

end

end A308709.P18349171821649008057

namespace A308709

/-- `(A087960(n)+2)*A016116(n)` -/
def P18349171821649008057.Spec : Prop :=
  ∀ n, P18349171821649008057.a n = A308709 (n + 1)

end A308709

/-! ## A308709.P8975827594368390556

`∏[A280193(n)]+A016116(n+2)`
-/

namespace A308709.P8975827594368390556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + A016116 (n + 2)

end

end A308709.P8975827594368390556

namespace A308709

/-- `∏[A280193(n)]+A016116(n+2)` -/
def P8975827594368390556.Spec : Prop :=
  ∀ n, P8975827594368390556.a n = A308709 (n + 1)

end A308709

/-! ## A308709.P2274969094720581687

`A131572(n+2)+∏[A280193(n)]`
-/

namespace A308709.P2274969094720581687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (n + 2) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A308709.P2274969094720581687

namespace A308709

/-- `A131572(n+2)+∏[A280193(n)]` -/
def P2274969094720581687.Spec : Prop :=
  ∀ n, P2274969094720581687.a n = A308709 (n + 1)

end A308709

/-! ## A308709.P10353008543188090626

`A131572(n+2)+A117575(n+1)`
-/

namespace A308709.P10353008543188090626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (n + 2) + A117575 (n + 1)

end

end A308709.P10353008543188090626

namespace A308709

/-- `A131572(n+2)+A117575(n+1)` -/
def P10353008543188090626.Spec : Prop :=
  ∀ n, P10353008543188090626.a n = A308709 (n + 1)

end A308709

/-! ## A308709.P12267206397836907593

`A010684(A028242(n))*A016116(n)`
-/

namespace A308709.P12267206397836907593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A028242 n).toNat * A016116 n

end

end A308709.P12267206397836907593

namespace A308709

/-- `A010684(A028242(n))*A016116(n)` -/
def P12267206397836907593.Spec : Prop :=
  ∀ n, P12267206397836907593.a n = A308709 (n + 1)

end A308709

/-! ## A308709.P13477946113154009104

`A010684(A052938(n+1))*A016116(n)`
-/

namespace A308709.P13477946113154009104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A052938 (n + 1)).toNat * A016116 n

end

end A308709.P13477946113154009104

namespace A308709

/-- `A010684(A052938(n+1))*A016116(n)` -/
def P13477946113154009104.Spec : Prop :=
  ∀ n, P13477946113154009104.a n = A308709 (n + 1)

end A308709

/-! ## A308709.P10572004520488946143

`A010684(A084964(n+3))*A016116(n)`
-/

namespace A308709.P10572004520488946143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A084964 (n + 3)).toNat * A016116 n

end

end A308709.P10572004520488946143

namespace A308709

/-- `A010684(A084964(n+3))*A016116(n)` -/
def P10572004520488946143.Spec : Prop :=
  ∀ n, P10572004520488946143.a n = A308709 (n + 1)

end A308709

/-! ## A308709.P13068957422532409279

`xor(a(n-1)+a(n-2), xor(a(n-2)+xor(a(n-1), a(n-2)), a(n-2)))` with `a(0)=3, a(1)=1`
-/

namespace A308709.P13068957422532409279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  Nat.xor (a (n - 1) + a (n - 2)) (Nat.xor (a (n - 2) + Nat.xor (a (n - 1)) (a (n - 2))) (a (n - 2)))

end

end A308709.P13068957422532409279

namespace A308709

/-- `xor(a(n-1)+a(n-2), xor(a(n-2)+xor(a(n-1), a(n-2)), a(n-2)))` -/
def P13068957422532409279.Spec : Prop :=
  ∀ n, (P13068957422532409279.a n : ℤ) = A308709 (n + 1)

end A308709

/-! ## A308709.P14612582001829304064

`A347789(n+2)+A117575(n+1)-A347789(n+1)`
-/

namespace A308709.P14612582001829304064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347789 (n + 2) + A117575 (n + 1) - A347789 (n + 1)

end

end A308709.P14612582001829304064

namespace A308709

/-- `A347789(n+2)+A117575(n+1)-A347789(n+1)` -/
def P14612582001829304064.Spec : Prop :=
  ∀ n, P14612582001829304064.a n = A308709 (n + 1)

end A308709

/-! ## A308709.P4251968863983299650

`gcd(A007283(A123108(n)), A123760(3*n+4))`
-/

namespace A308709.P4251968863983299650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007283 (A123108 n).toNat) (A123760 (3 * n + 4))

end

end A308709.P4251968863983299650

namespace A308709

/-- `gcd(A007283(A123108(n)), A123760(3*n+4))` -/
def P4251968863983299650.Spec : Prop :=
  ∀ n, (P4251968863983299650.a n : ℤ) = A308709 (n + 1)

end A308709

/-! ## A308709.P6232049408615271538

`gcd(Δ[A052957(n)], A001445(n+2))`
-/

namespace A308709.P6232049408615271538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A001445 (n + 2))

end

end A308709.P6232049408615271538

namespace A308709

/-- `gcd(Δ[A052957(n)], A001445(n+2))` -/
def P6232049408615271538.Spec : Prop :=
  ∀ n, (P6232049408615271538.a n : ℤ) = A308709 (n + 1)

end A308709

/-!
# A308710: Primitive practical numbers of the form 2^i * prime(k).

The programs for A308710, the canonical program `A308710.P17051042848139432844` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308710 has offset 1).

The definition of A308710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308710.P17051042848139432844

`2^floor(log2(A000040(n+2)))*A000040(n+2)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308710

/-- `2^floor(log2(A000040(n+2)))*A000040(n+2)` -/
def P17051042848139432844.Spec : Prop :=
  ∀ n, P17051042848139432844.a n = A308710 (n + 1)

theorem P17051042848139432844.correct : P17051042848139432844.Spec := by
  intro n
  simp only [A308710, Nat.add_sub_cancel]

end A308710

/-! ## A308710.P12110980803160113646

`A000040(n+2)*A011782(A035100(n+2))`
-/

namespace A308710.P12110980803160113646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A011782 (A035100 (n + 2)).toNat

end

end A308710.P12110980803160113646

namespace A308710

/-- `A000040(n+2)*A011782(A035100(n+2))` -/
def P12110980803160113646.Spec : Prop :=
  ∀ n, P12110980803160113646.a n = A308710 (n + 1)

end A308710

/-! ## A308710.P4592763187864571005

`A000040(n+2)*A000079(A098388(n+2))`
-/

namespace A308710.P4592763187864571005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A000079 (A098388 (n + 2)).toNat

end

end A308710.P4592763187864571005

namespace A308710

/-- `A000040(n+2)*A000079(A098388(n+2))` -/
def P4592763187864571005.Spec : Prop :=
  ∀ n, P4592763187864571005.a n = A308710 (n + 1)

end A308710

/-! ## A308710.P16344512373411647774

`(A000040(n+2)-A091931(n+2))*A000040(n+2)`
-/

namespace A308710.P16344512373411647774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - A091931 (n + 2)) * A000040 (n + 2)

end

end A308710.P16344512373411647774

namespace A308710

/-- `(A000040(n+2)-A091931(n+2))*A000040(n+2)` -/
def P16344512373411647774.Spec : Prop :=
  ∀ n, P16344512373411647774.a n = A308710 (n + 1)

end A308710

/-! ## A308710.P8019659355304782419

`∩[A163172(n+1), A324643(n+1)]`
-/

namespace A308710.P8019659355304782419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308710.P8019659355304782419

namespace A308710

/-- `∩[A163172(n+1), A324643(n+1)]` -/
def P8019659355304782419.Spec : Prop :=
  ∀ n, (P8019659355304782419.a n : ℤ) = A308710 (n + 1)

end A308710

/-! ## A308710.P17934896589115975328

`∩[A243225(n+1), A324643(n+1)]`
-/

namespace A308710.P17934896589115975328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308710.P17934896589115975328

namespace A308710

/-- `∩[A243225(n+1), A324643(n+1)]` -/
def P17934896589115975328.Spec : Prop :=
  ∀ n, (P17934896589115975328.a n : ℤ) = A308710 (n + 1)

end A308710

/-! ## A308710.P3787859669045099631

`∩[A163172(n+1), A392910(n+1)]`
-/

namespace A308710.P3787859669045099631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308710.P3787859669045099631

namespace A308710

/-- `∩[A163172(n+1), A392910(n+1)]` -/
def P3787859669045099631.Spec : Prop :=
  ∀ n, (P3787859669045099631.a n : ℤ) = A308710 (n + 1)

end A308710

/-! ## A308710.P7187025632552498998

`∩[A243225(n+1), A392910(n+1)]`
-/

namespace A308710.P7187025632552498998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308710.P7187025632552498998

namespace A308710

/-- `∩[A243225(n+1), A392910(n+1)]` -/
def P7187025632552498998.Spec : Prop :=
  ∀ n, (P7187025632552498998.a n : ℤ) = A308710 (n + 1)

end A308710

/-! ## A308710.P17686379441774146570

`A270306(p?[2*n+1])`
-/

namespace A308710.P17686379441774146570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270306 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A308710.P17686379441774146570

namespace A308710

/-- `A270306(p?[2*n+1])` -/
def P17686379441774146570.Spec : Prop :=
  ∀ n, P17686379441774146570.a n = A308710 (n + 1)

end A308710

/-! ## A308710.P17034082677845475427

`record[A270306(2*n+3)]`
-/

namespace A308710.P17034082677845475427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270306 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308710.P17034082677845475427

namespace A308710

/-- `record[A270306(2*n+3)]` -/
def P17034082677845475427.Spec : Prop :=
  ∀ n, P17034082677845475427.a n = A308710 (n + 1)

end A308710

/-! ## A308710.P16608488757210877772

`A270306(A065091(n+1))`
-/

namespace A308710.P16608488757210877772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270306 (A065091 (n + 1)).toNat

end

end A308710.P16608488757210877772

namespace A308710

/-- `A270306(A065091(n+1))` -/
def P16608488757210877772.Spec : Prop :=
  ∀ n, P16608488757210877772.a n = A308710 (n + 1)

end A308710

/-! ## A308710.P4245069024815508772

`A270306(A000040(n+2))`
-/

namespace A308710.P4245069024815508772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270306 (A000040 (n + 2)).toNat

end

end A308710.P4245069024815508772

namespace A308710

/-- `A270306(A000040(n+2))` -/
def P4245069024815508772.Spec : Prop :=
  ∀ n, P4245069024815508772.a n = A308710 (n + 1)

end A308710

/-! ## A308710.P3219976236439621798

`A270306(A006005(n+2))`
-/

namespace A308710.P3219976236439621798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270306 (A006005 (n + 2)).toNat

end

end A308710.P3219976236439621798

namespace A308710

/-- `A270306(A006005(n+2))` -/
def P3219976236439621798.Spec : Prop :=
  ∀ n, P3219976236439621798.a n = A308710 (n + 1)

end A308710

/-! ## A308710.P16405723574146680788

`A270306(record[A006530(n+3)])`
-/

namespace A308710.P16405723574146680788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270306 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308710.P16405723574146680788

namespace A308710

/-- `A270306(record[A006530(n+3)])` -/
def P16405723574146680788.Spec : Prop :=
  ∀ n, P16405723574146680788.a n = A308710 (n + 1)

end A308710

/-! ## A308710.P2635136474677622940

`A270306(record[A014963(n+3)])`
-/

namespace A308710.P2635136474677622940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270306 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308710.P2635136474677622940

namespace A308710

/-- `A270306(record[A014963(n+3)])` -/
def P2635136474677622940.Spec : Prop :=
  ∀ n, P2635136474677622940.a n = A308710 (n + 1)

end A308710

/-! ## A308710.P12523625315497801904

`A270306(record[A020639(n+3)])`
-/

namespace A308710.P12523625315497801904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270306 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308710.P12523625315497801904

namespace A308710

/-- `A270306(record[A020639(n+3)])` -/
def P12523625315497801904.Spec : Prop :=
  ∀ n, P12523625315497801904.a n = A308710 (n + 1)

end A308710

/-! ## A308710.P7528733530975714652

`A072376(A000040(n+2))*A100484(n+2)`
-/

namespace A308710.P7528733530975714652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (A000040 (n + 2)).toNat * A100484 (n + 2)

end

end A308710.P7528733530975714652

namespace A308710

/-- `A072376(A000040(n+2))*A100484(n+2)` -/
def P7528733530975714652.Spec : Prop :=
  ∀ n, P7528733530975714652.a n = A308710 (n + 1)

end A308710

/-! ## A308710.P7658354033808450753

`∩[A163172(n+1), A324652(n+1)]`
-/

namespace A308710.P7658354033808450753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308710.P7658354033808450753

namespace A308710

/-- `∩[A163172(n+1), A324652(n+1)]` -/
def P7658354033808450753.Spec : Prop :=
  ∀ n, (P7658354033808450753.a n : ℤ) = A308710 (n + 1)

end A308710

/-! ## A308710.P3750013831354826782

`∩[A082662(n+1), A392910(n+1)]`
-/

namespace A308710.P3750013831354826782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308710.P3750013831354826782

namespace A308710

/-- `∩[A082662(n+1), A392910(n+1)]` -/
def P3750013831354826782.Spec : Prop :=
  ∀ n, (P3750013831354826782.a n : ℤ) = A308710 (n + 1)

end A308710

/-! ## A308710.P4006077382111833088

`A080613(A100484(n+2))`
-/

namespace A308710.P4006077382111833088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080613 (A100484 (n + 2)).toNat

end

end A308710.P4006077382111833088

namespace A308710

/-- `A080613(A100484(n+2))` -/
def P4006077382111833088.Spec : Prop :=
  ∀ n, P4006077382111833088.a n = A308710 (n + 1)

end A308710

/-!
# A308720: The maximum value in the continued fraction of sqrt(n), or 0 if there is no fractional part.

The programs for A308720, the canonical program `A308720.P467322842987642582` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308720 has offset 0).

The definition of A308720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308720.P3291265757152944473

`2*floor(sqrt(n))*char[comp[n²]]`
-/

namespace A308720.P3291265757152944473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.sqrt n * (if ∃ j, f1 j = n then 1 else 0)

end

end A308720.P3291265757152944473

namespace A308720

/-- `2*floor(sqrt(n))*char[comp[n²]]` -/
def P3291265757152944473.Spec : Prop :=
  ∀ n, (P3291265757152944473.a n : ℤ) = A308720 n

end A308720

/-! ## A308720.P7870820864079300933

`A005843((1-char[(n+1)²])*floor(sqrt(n)))`
-/

namespace A308720.P7870820864079300933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * (Nat.sqrt n : ℤ)).toNat

end

end A308720.P7870820864079300933

namespace A308720

/-- `A005843((1-char[(n+1)²])*floor(sqrt(n)))` -/
def P7870820864079300933.Spec : Prop :=
  ∀ n, P7870820864079300933.a n = A308720 n

end A308720

/-! ## A308720.P7403301546611436165

`A086882(A038759(n))`
-/

namespace A308720.P7403301546611436165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086882 (A038759 n).toNat

end

end A308720.P7403301546611436165

namespace A308720

/-- `A086882(A038759(n))` -/
def P7403301546611436165.Spec : Prop :=
  ∀ n, P7403301546611436165.a n = A308720 n

end A308720

/-! ## A308720.P467322842987642582

`gcd(∑[A000122(n)], A000122(n))-1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308720

/-- `gcd(∑[A000122(n)], A000122(n))-1` -/
def P467322842987642582.Spec : Prop :=
  ∀ n, P467322842987642582.a n = A308720 n

theorem P467322842987642582.correct : P467322842987642582.Spec := by
  intro n
  simp only [A308720]

end A308720

/-! ## A308720.P4692937113256076813

`gcd(A000122(n)², A001650(n+1))-1`
-/

namespace A308720.P4692937113256076813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000122 n ^ 2) (A001650 (n + 1)) : ℤ) - 1

end

end A308720.P4692937113256076813

namespace A308720

/-- `gcd(A000122(n)², A001650(n+1))-1` -/
def P4692937113256076813.Spec : Prop :=
  ∀ n, P4692937113256076813.a n = A308720 n

end A308720

/-! ## A308720.P1900402571228731938

`(2*floor(sqrt(n)))%A257241(n+1)`
-/

namespace A308720.P1900402571228731938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * Nat.sqrt n : ℤ) (A257241 (n + 1))

end

end A308720.P1900402571228731938

namespace A308720

/-- `(2*floor(sqrt(n)))%A257241(n+1)` -/
def P1900402571228731938.Spec : Prop :=
  ∀ n, P1900402571228731938.a n = A308720 n

end A308720

/-! ## A308720.P2422903916367782923

`A055087(4*floor(sqrt(n))*ceil(sqrt(n)))`
-/

namespace A308720.P2422903916367782923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (4 * ((Nat.sqrt n : ℤ) * ⌈Real.sqrt (n : ℝ)⌉)).toNat

end

end A308720.P2422903916367782923

namespace A308720

/-- `A055087(4*floor(sqrt(n))*ceil(sqrt(n)))` -/
def P2422903916367782923.Spec : Prop :=
  ∀ n, P2422903916367782923.a n = A308720 n

end A308720

/-! ## A308720.P16761082832927543177

`A001414((2-char[n²])^floor(sqrt(n)))`
-/

namespace A308720.P16761082832927543177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ Nat.sqrt n).toNat

end

end A308720.P16761082832927543177

namespace A308720

/-- `A001414((2-char[n²])^floor(sqrt(n)))` -/
def P16761082832927543177.Spec : Prop :=
  ∀ n, P16761082832927543177.a n = A308720 n

end A308720

/-! ## A308720.P1445490881566760323

`A078909((2-char[n²])^floor(sqrt(n)))`
-/

namespace A308720.P1445490881566760323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ Nat.sqrt n).toNat

end

end A308720.P1445490881566760323

namespace A308720

/-- `A078909((2-char[n²])^floor(sqrt(n)))` -/
def P1445490881566760323.Spec : Prop :=
  ∀ n, P1445490881566760323.a n = A308720 n

end A308720

/-! ## A308720.P3060775417880138142

`A001222(((2-char[n²])^floor(sqrt(n)))²)`
-/

namespace A308720.P3060775417880138142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ Nat.sqrt n) ^ 2).toNat

end

end A308720.P3060775417880138142

namespace A308720

/-- `A001222(((2-char[n²])^floor(sqrt(n)))²)` -/
def P3060775417880138142.Spec : Prop :=
  ∀ n, P3060775417880138142.a n = A308720 n

end A308720

/-!
# A308722: Number of edges in the smallest possible regular graceful graph of valence n.

The programs for A308722, there is no canonical definition to state claims against.
-/

/-! ## A308722.P5109459279233868874

`n*(A057889(n)+A004525(n))/2`
-/

namespace A308722.P5109459279233868874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (A057889 n + A004525 n) : ℚ) / 2

end

end A308722.P5109459279233868874

/-! ## A308722.P850571552237201982

`A026741(n)*A109401(A114752(n+1))`
-/

namespace A308722.P850571552237201982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A109401 (A114752 (n + 1)).toNat

end

end A308722.P850571552237201982

/-! ## A308722.P7987050130482104681

`A004525(n*(A057889(n)+A004525(n)))`
-/

namespace A308722.P7987050130482104681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n : ℤ) * (A057889 n + A004525 n)).toNat

end

end A308722.P7987050130482104681

/-! ## A308722.P7463530096601281339

`gcd(n, ∑[n])*A006368(A351870(n))`
-/

namespace A308722.P7463530096601281339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A006368 (A351870 n).toNat

end

end A308722.P7463530096601281339

/-! ## A308722.P1501634841215175829

`A006368(n)*A026741(A062399(n))`
-/

namespace A308722.P1501634841215175829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n * A026741 (A062399 n).toNat

end

end A308722.P1501634841215175829

/-!
# A308723: Total number of parts in all m-cyclic compositions of n (where each part of size m can be colored with one of m colors).

The programs for A308723, the canonical program `A308723.P12571991743488419877` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308723 has offset 1).

The definition of A308723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308723.P12571991743488419877

`∑{d}[n+1, A000010(#)*A088305((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308723

/-- `∑{d}[n+1, A000010(#)*A088305((n+1)/#)]` -/
def P12571991743488419877.Spec : Prop :=
  ∀ n, P12571991743488419877.a n = A308723 (n + 1)

theorem P12571991743488419877.correct : P12571991743488419877.Spec := by
  intro n
  simp only [A308723, Nat.add_sub_cancel]

end A308723

/-! ## A308723.P12343867199854983915

`∑{d}[n+1, A000010((n+1)/#)*A000045(2*#)]`
-/

namespace A308723.P12343867199854983915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000045 (2 * d)

end

end A308723.P12343867199854983915

namespace A308723

/-- `∑{d}[n+1, A000010((n+1)/#)*A000045(2*#)]` -/
def P12343867199854983915.Spec : Prop :=
  ∀ n, P12343867199854983915.a n = A308723 (n + 1)

end A308723

/-! ## A308723.P1125354016435119914

`2*A308817(n+1)-A307415(n+1)`
-/

namespace A308723.P1125354016435119914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308817 (n + 1) - A307415 (n + 1)

end

end A308723.P1125354016435119914

namespace A308723

/-- `2*A308817(n+1)-A307415(n+1)` -/
def P1125354016435119914.Spec : Prop :=
  ∀ n, P1125354016435119914.a n = A308723 (n + 1)

end A308723

/-! ## A308723.P1174272309778068962

`A307415(n+1)+A005843(A308817(n+1)-A307415(n+1))`
-/

namespace A308723.P1174272309778068962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307415 (n + 1) + A005843 (A308817 (n + 1) - A307415 (n + 1)).toNat

end

end A308723.P1174272309778068962

namespace A308723

/-- `A307415(n+1)+A005843(A308817(n+1)-A307415(n+1))` -/
def P1174272309778068962.Spec : Prop :=
  ∀ n, P1174272309778068962.a n = A308723 (n + 1)

end A308723

/-! ## A308723.P9702095165853484597

`A005843(A308817(n+1))-A307415(n+1)`
-/

namespace A308723.P9702095165853484597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A308817 (n + 1)).toNat - A307415 (n + 1)

end

end A308723.P9702095165853484597

namespace A308723

/-- `A005843(A308817(n+1))-A307415(n+1)` -/
def P9702095165853484597.Spec : Prop :=
  ∀ n, P9702095165853484597.a n = A308723 (n + 1)

end A308723

/-!
# A308724: Sum of the prime parts in the partitions of n into 3 parts.

The programs for A308724, there is no canonical definition to state claims against.
-/

/-! ## A308724.P16449773271783444775

`ceil((n-3)/4)*A235343(A007716(n))`
-/

namespace A308724.P16449773271783444775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 3 : ℚ) / 4⌉ * A235343 (A007716 n).toNat

end

end A308724.P16449773271783444775

/-! ## A308724.P9252793632167931975

`A338466((3*n²-n)%A163493(n))`
-/

namespace A308724.P9252793632167931975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (Int.tmod ((3 * n ^ 2 : ℤ) - (n : ℤ)) (A163493 n)).toNat

end

end A308724.P9252793632167931975

/-! ## A308724.P2458663127429852597

`A235343(A007716(n))*A338912(2*(n+1))`
-/

namespace A308724.P2458663127429852597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235343 (A007716 n).toNat * A338912 (2 * (n + 1))

end

end A308724.P2458663127429852597

/-!
# A308726: The number of permutations of length n and tier at most 1, that is, the number of permutations of length n sortable by two passes through a stack where outputting the longest prefix matching the identity permutation is prioritized.

The programs for A308726, the canonical program `A308726.P64447462243306` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308726 has offset 0).

The definition of A308726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308726.P64447462243306

`A129442(n)-A001791(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A308726

/-- `A129442(n)-A001791(n)` -/
def P64447462243306.Spec : Prop :=
  ∀ n, P64447462243306.a n = A308726 n

theorem P64447462243306.correct : P64447462243306.Spec := by
  intro n
  simp only [A308726]

end A308726

/-! ## A308726.P15911060867849504508

`A129442(n)-A037952(2*n)`
-/

namespace A308726.P15911060867849504508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129442 n - A037952 (2 * n)

end

end A308726.P15911060867849504508

namespace A308726

/-- `A129442(n)-A037952(2*n)` -/
def P15911060867849504508.Spec : Prop :=
  ∀ n, P15911060867849504508.a n = A308726 n

end A308726

/-! ## A308726.P11076662492023561977

`A129442(n)-n*A000108(n)`
-/

namespace A308726.P11076662492023561977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129442 n - (n : ℤ) * A000108 n

end

end A308726.P11076662492023561977

namespace A308726

/-- `A129442(n)-n*A000108(n)` -/
def P11076662492023561977.Spec : Prop :=
  ∀ n, P11076662492023561977.a n = A308726 n

end A308726

/-! ## A308726.P3037182326569731441

`record[A127631(n)]-A001791(n)`
-/

namespace A308726.P3037182326569731441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001791 n

end

end A308726.P3037182326569731441

namespace A308726

/-- `record[A127631(n)]-A001791(n)` -/
def P3037182326569731441.Spec : Prop :=
  ∀ n, P3037182326569731441.a n = A308726 n

end A308726

/-! ## A308726.P8499188829153019134

`A158825(∑[n+2])-A001791(n)`
-/

namespace A308726.P8499188829153019134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (∑ j ∈ Finset.range (n + 1), f1 j) - A001791 n

end

end A308726.P8499188829153019134

namespace A308726

/-- `A158825(∑[n+2])-A001791(n)` -/
def P8499188829153019134.Spec : Prop :=
  ∀ n, P8499188829153019134.a n = A308726 n

end A308726

/-!
# A308729: a(n)/n! is the expected number of left-to-right maxima in the lexicographical or colexicographical ordering of all the 2-subsets of [n] under a random permutation of [n], when the 2-subsets hold the worst order of ranks.

The programs for A308729, there is no canonical definition to state claims against.
-/

/-! ## A308729.P18429141218669896833

`A000254(n)+n!+(n+1)*a(n-1)` with `a(0)=0`
-/

namespace A308729.P18429141218669896833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000254 n + ((Nat.factorial n : ℤ) + (n + 1 : ℤ) * a (n - 1))

end

end A308729.P18429141218669896833

/-! ## A308729.P7489247100806686121

`A000254(n)+A000142(n)+(n+1)*a(n-1)` with `a(0)=0`
-/

namespace A308729.P7489247100806686121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000254 n + (A000142 n + (n + 1 : ℤ) * a (n - 1))

end

end A308729.P7489247100806686121

/-! ## A308729.P7050074124618169691

`A132393(A167614(n+1))+A001705(n)`
-/

namespace A308729.P7050074124618169691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A167614 (n + 1)).toNat + A001705 n

end

end A308729.P7050074124618169691

/-! ## A308729.P7927813072370019757

`A132393(A055998(n)+6)+A001705(n)`
-/

namespace A308729.P7927813072370019757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A055998 n + 6).toNat + A001705 n

end

end A308729.P7927813072370019757

/-! ## A308729.P6613149121222866953

`A132393(A167499(n)+n)+A001705(n)`
-/

namespace A308729.P6613149121222866953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A167499 n + (n : ℤ)).toNat + A001705 n

end

end A308729.P6613149121222866953

/-!
# A308731: a(n) is the sum of the terms of the symmetric square array defined by M(i,j) = prime(i)+i-j for i >= j and M(i,j) = M(j,i) if i < j.

The programs for A308731, the canonical program `A308731.P16581783222327330498` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308731 has offset 1).

The definition of A308731 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A316322, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A308731.P12446064728501696107

`a(n-1)+(2*(n+1)-1)*A000040(n+1)+(n+1)*n` with `a(0)=2`
-/

namespace A308731.P12446064728501696107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ((2 * (n + 1) : ℤ) - 1) * A000040 (n + 1) + ((n + 1) * n : ℤ)

end

end A308731.P12446064728501696107

namespace A308731

/-- `a(n-1)+(2*(n+1)-1)*A000040(n+1)+(n+1)*n` -/
def P12446064728501696107.Spec : Prop :=
  ∀ n, P12446064728501696107.a n = A308731 (n + 1)

end A308731

/-! ## A308731.P16581783222327330498

`A316322(n+1)+A007290(n+2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A308731

/-- `A316322(n+1)+A007290(n+2)` -/
def P16581783222327330498.Spec : Prop :=
  ∀ n, P16581783222327330498.a n = A308731 (n + 1)

theorem P16581783222327330498.correct : P16581783222327330498.Spec := by
  intro n
  simp only [A308731, Nat.add_sub_cancel]

end A308731

/-! ## A308731.P13368546588194753389

`∑[∑[2*n]+(2*n+1)*A000040(n+1)]`
-/

namespace A308731.P13368546588194753389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (2 * n + 1 : ℤ) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308731.P13368546588194753389

namespace A308731

/-- `∑[∑[2*n]+(2*n+1)*A000040(n+1)]` -/
def P13368546588194753389.Spec : Prop :=
  ∀ n, P13368546588194753389.a n = A308731 (n + 1)

end A308731

/-! ## A308731.P8829927747509623655

`A108766(n)+A083215(n+1)`
-/

namespace A308731.P8829927747509623655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108766 n + A083215 (n + 1)

end

end A308731.P8829927747509623655

namespace A308731

/-- `A108766(n)+A083215(n+1)` -/
def P8829927747509623655.Spec : Prop :=
  ∀ n, P8829927747509623655.a n = A308731 (n + 1)

end A308731

/-!
# A308732: Primes p such that the smallest possible number of 1's in binary representation of a multiple of p equals 3.

The programs for A308732, there is no canonical definition to state claims against.
-/

/-! ## A308732.P2463940913212823720

`p?[eq[3, A086342(n)]]`
-/

namespace A308732.P2463940913212823720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A308732.P2463940913212823720

/-! ## A308732.P12680614482494458689

`eq[A003415(n)+2, A086342(n)]`
-/

namespace A308732.P12680614482494458689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308732.P12680614482494458689

/-! ## A308732.P16018639021010802125

`eq[A341982(n+2)+1, A086342(n)]`
-/

namespace A308732.P16018639021010802125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341982 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308732.P16018639021010802125

/-! ## A308732.P14453418454528134073

`p?[A028242(A086342(n))*A254667(n)]`
-/

namespace A308732.P14453418454528134073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A086342 n).toNat * A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A308732.P14453418454528134073

/-! ## A308732.P12154036889781083511

`A000040(eq[3, A086342(A000040(n+1))]+1)`
-/

namespace A308732.P12154036889781083511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A308732.P12154036889781083511

/-! ## A308732.P15557955244796449610

`A045344(eq[3, A278966(n+1)])`
-/

namespace A308732.P15557955244796449610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308732.P15557955244796449610

/-! ## A308732.P7520446495442838315

`A065091(eq[3, A278966(n+1)])`
-/

namespace A308732.P7520446495442838315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308732.P7520446495442838315

/-! ## A308732.P3757479594152040310

`A000040(eq[3, A278966(n+1)]+1)`
-/

namespace A308732.P3757479594152040310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A308732.P3757479594152040310

/-!
# A308733: Sum of the smallest parts of the partitions of n into 4 parts.

The programs for A308733, the canonical program `A308733.P10361527980184129555` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308733 has offset 0).

The definition of A308733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308733.P5954721587995380555

`A308775(n)-A308758(n)-A308759(n)-A308760(n)`
-/

namespace A308733.P5954721587995380555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308775 n - A308758 n - A308759 n - A308760 n

end

end A308733.P5954721587995380555

namespace A308733

/-- `A308775(n)-A308758(n)-A308759(n)-A308760(n)` -/
def P5954721587995380555.Spec : Prop :=
  ∀ n, P5954721587995380555.a n = A308733 n

theorem P5954721587995380555.correct : P5954721587995380555.Spec := by
  intro n
  simp only [A308733, Nat.add_sub_cancel, A308733.P5954721587995380555.a, A308733.P10361527980184129555.f1, A308733.P10361527980184129555.a, A008763, A008763.P10949200286734320920.a, A028242, A028242.P334475472552892041.a, A308758, A308758.P17103031910200069929.a, A308759, A308759.P6759370463478623057.a, A308760, A308760.P1766182739820637320.a, A308775, A308775.P743659139921755992.a, A026810, A026810.P8500249767737753929.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308733

/-! ## A308733.P11138806064740688333

`ogf(x^4/(1-x-x^2-x^4+3x^5+x^6-x^8-3x^9+x^10+x^12+x^13-x^14))`
-/

namespace A308733.P11138806064740688333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1] [1, -1, -1, 0, -1, 3, 1, 0, -1, -3, 1, 0, 1, 1, -1] n

end

end A308733.P11138806064740688333

namespace A308733

/-- `ogf(x^4/(1-x-x^2-x^4+3x^5+x^6-x^8-3x^9+x^10+x^12+x^13-x^14))` -/
def P11138806064740688333.Spec : Prop :=
  ∀ n, P11138806064740688333.a n = A308733 n

end A308733

/-! ## A308733.P11933934425585846393

`A309711(n)+A309708(n)`
-/

namespace A308733.P11933934425585846393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309711 n + A309708 n

end

end A308733.P11933934425585846393

namespace A308733

/-- `A309711(n)+A309708(n)` -/
def P11933934425585846393.Spec : Prop :=
  ∀ n, P11933934425585846393.a n = A308733 n

end A308733

/-! ## A308733.P10361527980184129555

`∑[A008763(A028242(n)+1)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308733

/-- `∑[A008763(A028242(n)+1)]` -/
def P10361527980184129555.Spec : Prop :=
  ∀ n, P10361527980184129555.a n = A308733 n

theorem P10361527980184129555.correct : P10361527980184129555.Spec := by
  intro n
  simp only [A308733]

end A308733

/-! ## A308733.P13868347574871978361

`∑[A008763(3*A008619(n)-(n+1))]`
-/

namespace A308733.P13868347574871978361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (3 * A008619 n - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308733.P13868347574871978361

namespace A308733

/-- `∑[A008763(3*A008619(n)-(n+1))]` -/
def P13868347574871978361.Spec : Prop :=
  ∀ n, P13868347574871978361.a n = A308733 n

end A308733

/-! ## A308733.P10686169737875421116

`∑[A008763(A080513(A004442(n)))]`
-/

namespace A308733.P10686169737875421116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A080513 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308733.P10686169737875421116

namespace A308733

/-- `∑[A008763(A080513(A004442(n)))]` -/
def P10686169737875421116.Spec : Prop :=
  ∀ n, P10686169737875421116.a n = A308733 n

end A308733

/-! ## A308733.P13318000147347540361

`∑[A008763(A326178(A028242(n)))]`
-/

namespace A308733.P13318000147347540361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A326178 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308733.P13318000147347540361

namespace A308733

/-- `∑[A008763(A326178(A028242(n)))]` -/
def P13318000147347540361.Spec : Prop :=
  ∀ n, P13318000147347540361.a n = A308733 n

end A308733

/-! ## A308733.P17340439389185435892

`∑[A008763(A030451(n+1))]`
-/

namespace A308733.P17340439389185435892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A030451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308733.P17340439389185435892

namespace A308733

/-- `∑[A008763(A030451(n+1))]` -/
def P17340439389185435892.Spec : Prop :=
  ∀ n, P17340439389185435892.a n = A308733 n

end A308733

/-! ## A308733.P16434769593972746434

`∑[A008763(Δ[A035106(n+1)])]`
-/

namespace A308733.P16434769593972746434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308733.P16434769593972746434

namespace A308733

/-- `∑[A008763(Δ[A035106(n+1)])]` -/
def P16434769593972746434.Spec : Prop :=
  ∀ n, P16434769593972746434.a n = A308733 n

end A308733

/-! ## A308733.P3226698934862170527

`∑[A008763(A008619(A165754(n)))]`
-/

namespace A308733.P3226698934862170527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A008619 (A165754 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308733.P3226698934862170527

namespace A308733

/-- `∑[A008763(A008619(A165754(n)))]` -/
def P3226698934862170527.Spec : Prop :=
  ∀ n, P3226698934862170527.a n = A308733 n

end A308733

/-! ## A308733.P5794208024753997619

`∑[A008763(A110659(2*n)+1)]`
-/

namespace A308733.P5794208024753997619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A110659 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308733.P5794208024753997619

namespace A308733

/-- `∑[A008763(A110659(2*n)+1)]` -/
def P5794208024753997619.Spec : Prop :=
  ∀ n, P5794208024753997619.a n = A308733 n

end A308733

/-! ## A308733.P4621301681234632042

`∑[A008763(A110659(A062545(n)))]`
-/

namespace A308733.P4621301681234632042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A110659 (A062545 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308733.P4621301681234632042

namespace A308733

/-- `∑[A008763(A110659(A062545(n)))]` -/
def P4621301681234632042.Spec : Prop :=
  ∀ n, P4621301681234632042.a n = A308733 n

end A308733

/-! ## A308733.P7815142519283285866

`∑[A340760(n)]`
-/

namespace A308733.P7815142519283285866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308733.P7815142519283285866

namespace A308733

/-- `∑[A340760(n)]` -/
def P7815142519283285866.Spec : Prop :=
  ∀ n, P7815142519283285866.a n = A308733 n

end A308733

/-!
# A308735: Numbers k such that k, k+2, k+4 are of the form p^2*q where p and q are distinct primes.

The programs for A308735, the canonical program `A308735.P3671418607265980863` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308735 has offset 1).

The definition of A308735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308735.P3671418607265980863

`∩[A074173(n+1)-2, A074173(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A308735

/-- `∩[A074173(n+1)-2, A074173(n+1)]` -/
def P3671418607265980863.Spec : Prop :=
  ∀ n, (P3671418607265980863.a n : ℤ) = A308735 (n + 1)

theorem P3671418607265980863.correct : P3671418607265980863.Spec := by
  intro n
  simp only [A308735, Nat.add_sub_cancel]

end A308735

/-! ## A308735.P11935008608154363934

`∩[A356743(n+1)-2, A356743(n+1)]`
-/

namespace A308735.P11935008608154363934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356743 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308735.P11935008608154363934

namespace A308735

/-- `∩[A356743(n+1)-2, A356743(n+1)]` -/
def P11935008608154363934.Spec : Prop :=
  ∀ n, (P11935008608154363934.a n : ℤ) = A308735 (n + 1)

end A308735

/-!
# A308737: Triangle of scaled 1-tiered binomial coefficients, T(n,k) = 2^(n+1)*(n-k,k)_1 (n >= 0, 0 <= k <= n), where (N,M)_1 is the 1-tiered binomial coefficient.

The programs for A308737, the canonical program `A308737.P11826907470254659242` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308737 has offset 0).

The definition of A308737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308737.P11826907470254659242

`2*A110552(n+1)-A007318(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308737

/-- `2*A110552(n+1)-A007318(n)` -/
def P11826907470254659242.Spec : Prop :=
  ∀ n, P11826907470254659242.a n = A308737 n

theorem P11826907470254659242.correct : P11826907470254659242.Spec := by
  intro n
  simp only [A308737]

end A308737

/-! ## A308737.P9932291383633855396

`2*A110552(n+1)-abs(A130595(n))`
-/

namespace A308737.P9932291383633855396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110552 (n + 1) - |A130595 n|

end

end A308737.P9932291383633855396

namespace A308737

/-- `2*A110552(n+1)-abs(A130595(n))` -/
def P9932291383633855396.Spec : Prop :=
  ∀ n, P9932291383633855396.a n = A308737 n

end A308737

/-! ## A308737.P14483582624538580679

`2*A110552(n+1)-Δ[A102363(n)]`
-/

namespace A308737.P14483582624538580679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110552 (n + 1) - (f1 (n + 1) - f1 n)

end

end A308737.P14483582624538580679

namespace A308737

/-- `2*A110552(n+1)-Δ[A102363(n)]` -/
def P14483582624538580679.Spec : Prop :=
  ∀ n, P14483582624538580679.a n = A308737 n

end A308737

/-! ## A308737.P3436849378432548698

`2*A110552(n+1)-A028326(n)/2`
-/

namespace A308737.P3436849378432548698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A110552 (n + 1) : ℚ) - (A028326 n : ℚ) / 2

end

end A308737.P3436849378432548698

namespace A308737

/-- `2*A110552(n+1)-A028326(n)/2` -/
def P3436849378432548698.Spec : Prop :=
  ∀ n, P3436849378432548698.a n = (A308737 n : ℚ)

theorem P3436849378432548698.correct : P3436849378432548698.Spec := by
  intro n
  simp only [A308737, Nat.add_sub_cancel, A308737.P3436849378432548698.a, A308737.P11826907470254659242.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A110552, A110552.P17093704478189528423.a, A097805, A097805.P1755176267250853107.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A308737

/-! ## A308737.P3786631023965319897

`A004277(A110552(n+1))-A007318(n)`
-/

namespace A308737.P3786631023965319897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A110552 (n + 1)).toNat - A007318 n

end

end A308737.P3786631023965319897

namespace A308737

/-- `A004277(A110552(n+1))-A007318(n)` -/
def P3786631023965319897.Spec : Prop :=
  ∀ n, P3786631023965319897.a n = A308737 n

end A308737

/-!
# A308738: Numbers that can be written as the sum of five distinct nonnegative cubes.

The programs for A308738, there is no canonical definition to state claims against.
-/

/-! ## A308738.P1639274760222071786

`eq[1, A033665(A331845(n))]`
-/

namespace A308738.P1639274760222071786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A331845 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308738.P1639274760222071786

/-! ## A308738.P6815157783509426005

`lt[A331892(n+1), A000108(A331845(n))]`
-/

namespace A308738.P6815157783509426005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A331845 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308738.P6815157783509426005

/-! ## A308738.P1782081007118133577

`lt[A331893(n+1), A000108(A331845(n))]`
-/

namespace A308738.P1782081007118133577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A331845 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308738.P1782081007118133577

/-! ## A308738.P11216133758152334707

`lt[A331895(n+1), A000108(A331845(n))]`
-/

namespace A308738.P11216133758152334707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A331845 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308738.P11216133758152334707

/-! ## A308738.P138321169936373670

`lt[A331896(n+1), A000108(A331845(n))]`
-/

namespace A308738.P138321169936373670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A331845 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308738.P138321169936373670

/-!
# A308745: Expansion of 1/(1 - x*(1 + x)/(1 - x^2*(1 + x^2)/(1 - x^3*(1 + x^3)/(1 - x^4*(1 + x^4)/(1 - ...))))), a continued fraction.

The programs for A308745, there is no canonical definition to state claims against.
-/

/-! ## A308745.P16702431992461988484

`A037087(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A308745.P16702431992461988484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A037087 (a (n - 1) + a (n - 2)).toNat

end

end A308745.P16702431992461988484

/-! ## A308745.P18076105787025260504

`A037087(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A308745.P18076105787025260504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A037087 (a (n - 1) - (-a (n - 2))).toNat

end

end A308745.P18076105787025260504

/-! ## A308745.P14820299266537365359

`A037087(1-floor(1-a(n-1)-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A308745.P14820299266537365359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A037087 (1 - (1 - a (n - 1) - a (n - 2))).toNat

end

end A308745.P14820299266537365359

/-! ## A308745.P10248211718366031733

`A247911(A002478(n)-floor(n/4))`
-/

namespace A308745.P10248211718366031733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A002478 n - ⌊(n : ℚ) / 4⌋).toNat

end

end A308745.P10248211718366031733

/-! ## A308745.P9789987932233649510

`A002265(A002265(34*a(n-1)+1))` with `a(0)=1, a(1)=1`
-/

namespace A308745.P9789987932233649510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002265 (A002265 (34 * a (n - 1) + 1).toNat).toNat

end

end A308745.P9789987932233649510

/-!
# A308746: a(1) = 1, and for n > 1, a(n) is the greatest k > 0 such that (a(1), ..., a(n-1)) can be split into k chunks of contiguous terms and those chunks have the same sum.

The programs for A308746, there is no canonical definition to state claims against.
-/

/-! ## A308746.P10576766076475061932

`gcd(A000005(A102026(n+1)), A101976(n+1))`
-/

namespace A308746.P10576766076475061932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A102026 (n + 1)).toNat) (A101976 (n + 1))

end

end A308746.P10576766076475061932

/-! ## A308746.P766196058972640971

`gcd(A001221(A261651(n+4)), A117209(2*n+3))`
-/

namespace A308746.P766196058972640971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A261651 (n + 4)).toNat) (A117209 (2 * n + 3))

end

end A308746.P766196058972640971

/-!
# A308747: Number of achiral m-color cyclic compositions of n (that is, number of cyclic compositions of n with reflection symmetry where each part of size m can be colored with one of m colors).

The programs for A308747, the canonical program `A308747.P14190457755279813765` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308747 has offset 1).

The definition of A308747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308747.P1982164066132007319

`ogf((1+x-2x^2+x^3+x^4)/(1-2x-2x^2+6x^3-2x^4-2x^5+x^6))`
-/

namespace A308747.P1982164066132007319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, 1, 1] [1, -2, -2, 6, -2, -2, 1] n

end

end A308747.P1982164066132007319

namespace A308747

/-- `ogf((1+x-2x^2+x^3+x^4)/(1-2x-2x^2+6x^3-2x^4-2x^5+x^6))` -/
def P1982164066132007319.Spec : Prop :=
  ∀ n, P1982164066132007319.a n = A308747 (n + 1)

end A308747

/-! ## A308747.P14190457755279813765

`3*a(n-2)-a(n-4)+2*(n-1)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=13`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308747

/-- `3*a(n-2)-a(n-4)+2*(n-1)` -/
def P14190457755279813765.Spec : Prop :=
  ∀ n, P14190457755279813765.a n = A308747 (n + 1)

theorem P14190457755279813765.correct : P14190457755279813765.Spec := by
  intro n
  simp only [A308747, Nat.add_sub_cancel]

end A308747

/-! ## A308747.P7578990496107231513

`∑[∑[A005013(n)]+1]`
-/

namespace A308747.P7578990496107231513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308747.P7578990496107231513

namespace A308747

/-- `∑[∑[A005013(n)]+1]` -/
def P7578990496107231513.Spec : Prop :=
  ∀ n, P7578990496107231513.a n = A308747 (n + 1)

end A308747

/-! ## A308747.P5010468755387859034

`∑[A237132(n+1)-2]`
-/

namespace A308747.P5010468755387859034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237132 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308747.P5010468755387859034

namespace A308747

/-- `∑[A237132(n+1)-2]` -/
def P5010468755387859034.Spec : Prop :=
  ∀ n, P5010468755387859034.a n = A308747 (n + 1)

end A308747

/-! ## A308747.P9180520300948287347

`∑[∑[A210209(2*n)]+1]`
-/

namespace A308747.P9180520300948287347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210209 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308747.P9180520300948287347

namespace A308747

/-- `∑[∑[A210209(2*n)]+1]` -/
def P9180520300948287347.Spec : Prop :=
  ∀ n, P9180520300948287347.a n = A308747 (n + 1)

end A308747

/-! ## A308747.P10560925456053453664

`∑[∑[A005013(A028310(n))]]`
-/

namespace A308747.P10560925456053453664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308747.P10560925456053453664

namespace A308747

/-- `∑[∑[A005013(A028310(n))]]` -/
def P10560925456053453664.Spec : Prop :=
  ∀ n, P10560925456053453664.a n = A308747 (n + 1)

end A308747

/-! ## A308747.P1841634791254602705

`∑[A020695(n)-A112469(n)]`
-/

namespace A308747.P1841634791254602705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A112469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308747.P1841634791254602705

namespace A308747

/-- `∑[A020695(n)-A112469(n)]` -/
def P1841634791254602705.Spec : Prop :=
  ∀ n, P1841634791254602705.a n = A308747 (n + 1)

end A308747

/-! ## A308747.P6476566941578161036

`∑[∑[A302126(A014601(n))]+1]`
-/

namespace A308747.P6476566941578161036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A014601 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308747.P6476566941578161036

namespace A308747

/-- `∑[∑[A302126(A014601(n))]+1]` -/
def P6476566941578161036.Spec : Prop :=
  ∀ n, P6476566941578161036.a n = A308747 (n + 1)

end A308747

/-! ## A308747.P5051034515367963907

`2*A032287(n+1)-A032198(n+1)`
-/

namespace A308747.P5051034515367963907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032287 (n + 1) - A032198 (n + 1)

end

end A308747.P5051034515367963907

namespace A308747

/-- `2*A032287(n+1)-A032198(n+1)` -/
def P5051034515367963907.Spec : Prop :=
  ∀ n, P5051034515367963907.a n = A308747 (n + 1)

end A308747

/-!
# A308749: Smallest positive m such that n*m is a partial sum of primes.

The programs for A308749, there is no canonical definition to state claims against.
-/

/-! ## A308749.P5923988679956075141

`A007504(A053050(n+1))/(n+1)`
-/

namespace A308749.P5923988679956075141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (A053050 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A308749.P5923988679956075141

/-! ## A308749.P1087266332188643689

`A395697(n+1)/(n+1)`
-/

namespace A308749.P1087266332188643689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395697 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A308749.P1087266332188643689

/-! ## A308749.P3202244489112673861

`A193471(∑[n+1]+2)`
-/

namespace A308749.P3202244489112673861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193471 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A308749.P3202244489112673861

/-! ## A308749.P17189140097693406927

`or(char[1], A193471(A133263(n+1)))`
-/

namespace A308749.P17189140097693406927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A193471 (A133263 (n + 1)).toNat)

end

end A308749.P17189140097693406927

/-!
# A308750: Number of Dumont permutations of the first kind of length 2n avoiding pattern 2143 (or pattern 3421).

The programs for A308750, there is no canonical definition to state claims against.
-/

/-! ## A308750.P16985030430812717370

`ceil(root(A348118(n+1), 3))-n`
-/

namespace A308750.P16985030430812717370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348118 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - (n : ℤ)

end

end A308750.P16985030430812717370

/-! ## A308750.P10896122258287020984

`A138398(2^n-n)-char[5]`
-/

namespace A308750.P10896122258287020984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138398 (2 ^ n - n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A308750.P10896122258287020984

/-!
# A308751: a(n) = (2 + Sum_{k = 1..n-1} A095258(k)) / A095258(n).

The programs for A308751, there is no canonical definition to state claims against.
-/

/-! ## A308751.P4718482405690770508

`A350929(n+1)-1`
-/

namespace A308751.P4718482405690770508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350929 (n + 1) - 1

end

end A308751.P4718482405690770508

/-! ## A308751.P3242555077054889431

`A350928(n+1)/A095258(n+1)-1`
-/

namespace A308751.P3242555077054889431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350928 (n + 1) : ℚ) / (A095258 (n + 1) : ℚ) - 1

end

end A308751.P3242555077054889431

/-! ## A308751.P3618424819682841352

`abs(A350929(n+1)+A008683(A101300(n)))`
-/

namespace A308751.P3618424819682841352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A350929 (n + 1) + A008683 (A101300 n).toNat|

end

end A308751.P3618424819682841352

/-! ## A308751.P1252996900056234775

`abs(A350929(n+1)+(-1)^A000040(n+2))`
-/

namespace A308751.P1252996900056234775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A350929 (n + 1) : ℚ) + (-1 : ℚ) ^ (A000040 (n + 2) : ℤ)|

end

end A308751.P1252996900056234775

/-! ## A308751.P18442359050628285005

`abs(A350929(n+1)+A033999(2*n+1))`
-/

namespace A308751.P18442359050628285005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A350929 (n + 1) + A033999 (2 * n + 1)|

end

end A308751.P18442359050628285005

/-! ## A308751.P11245735382491766944

`A023443(A350929(n+1))`
-/

namespace A308751.P11245735382491766944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A350929 (n + 1)).toNat

end

end A308751.P11245735382491766944

/-! ## A308751.P1831018751273944223

`A289207(A350929(n+1)+1)`
-/

namespace A308751.P1831018751273944223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A350929 (n + 1) + 1).toNat

end

end A308751.P1831018751273944223

/-! ## A308751.P9298222101694869334

`A023443(A350928(n+1)/A095258(n+1))`
-/

namespace A308751.P9298222101694869334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway ((A350928 (n + 1) : ℚ) / (A095258 (n + 1) : ℚ))).toNat

end

end A308751.P9298222101694869334

/-! ## A308751.P14041307041896589064

`A028310(A350929(n+1))+A008683(A180450(n+1))`
-/

namespace A308751.P14041307041896589064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A350929 (n + 1)).toNat + A008683 (A180450 (n + 1)).toNat

end

end A308751.P14041307041896589064

/-! ## A308751.P3196176623020236515

`A004273(A350928(n+1))%A350929(n+1)`
-/

namespace A308751.P3196176623020236515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A350928 (n + 1)).toNat) (A350929 (n + 1))

end

end A308751.P3196176623020236515

/-!
# A308753: a(n) = Sum_{d|n} d^(2*(d-1)).

The programs for A308753, the canonical program `A308753.P5587463794980385197` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308753 has offset 1).

The definition of A308753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308753.P5587463794980385197

`∑{d}[n+1, #^(2*(#-1))]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308753

/-- `∑{d}[n+1, #^(2*(#-1))]` -/
def P5587463794980385197.Spec : Prop :=
  ∀ n, P5587463794980385197.a n = (A308753 (n + 1) : ℚ)

end A308753

/-! ## A308753.P10268965207268459738

`A308701(∑[n+3]+1)`
-/

namespace A308753.P10268965207268459738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308701 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A308753.P10268965207268459738

namespace A308753

/-- `A308701(∑[n+3]+1)` -/
def P10268965207268459738.Spec : Prop :=
  ∀ n, P10268965207268459738.a n = A308753 (n + 1)

end A308753

/-!
# A308754: a(0) = 0, a(n) = a(n-1) + 1 if 2*n + 3 is prime, otherwise a(n) = a(n-1).

The programs for A308754, the canonical program `A308754.P4482175284400131053` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308754 has offset 0).

The definition of A308754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308754.P9862075525426673640

`A099801(n+1)-2`
-/

namespace A308754.P9862075525426673640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (n + 1) - 2

end

end A308754.P9862075525426673640

namespace A308754

/-- `A099801(n+1)-2` -/
def P9862075525426673640.Spec : Prop :=
  ∀ n, P9862075525426673640.a n = A308754 n

end A308754

/-! ## A308754.P7928577005211900864

`A000720(2*(n+2))-2`
-/

namespace A308754.P7928577005211900864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 2)) - 2

end

end A308754.P7928577005211900864

namespace A308754

/-- `A000720(2*(n+2))-2` -/
def P7928577005211900864.Spec : Prop :=
  ∀ n, P7928577005211900864.a n = A308754 n

end A308754

/-! ## A308754.P4482175284400131053

`a(n-1)+A101264(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A308754

/-- `a(n-1)+A101264(n+1)` -/
def P4482175284400131053.Spec : Prop :=
  ∀ n, P4482175284400131053.a n = A308754 n

theorem P4482175284400131053.correct : P4482175284400131053.Spec := by
  intro n
  simp only [A308754]

end A308754

/-! ## A308754.P15283781128997855532

`n-A210469(n+2)`
-/

namespace A308754.P15283781128997855532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A210469 (n + 2)

end

end A308754.P15283781128997855532

namespace A308754

/-- `n-A210469(n+2)` -/
def P15283781128997855532.Spec : Prop :=
  ∀ n, P15283781128997855532.a n = A308754 n

end A308754

/-! ## A308754.P3376532231590156010

`∑[val(A020483(n), 3)]`
-/

namespace A308754.P3376532231590156010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020483 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308754.P3376532231590156010

namespace A308754

/-- `∑[val(A020483(n), 3)]` -/
def P3376532231590156010.Spec : Prop :=
  ∀ n, (P3376532231590156010.a n : ℤ) = A308754 n

end A308754

/-! ## A308754.P9296363252112893539

`∑[char[A067076(n+2)]]`
-/

namespace A308754.P9296363252112893539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308754.P9296363252112893539

namespace A308754

/-- `∑[char[A067076(n+2)]]` -/
def P9296363252112893539.Spec : Prop :=
  ∀ n, (P9296363252112893539.a n : ℤ) = A308754 n

end A308754

/-! ## A308754.P11488788829642306774

`∑[A101264(n+1)]-1`
-/

namespace A308754.P11488788829642306774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A308754.P11488788829642306774

namespace A308754

/-- `∑[A101264(n+1)]-1` -/
def P11488788829642306774.Spec : Prop :=
  ∀ n, P11488788829642306774.a n = A308754 n

end A308754

/-! ## A308754.P735241922859050851

`∑[char[∑[A028334(n+2)]]]`
-/

namespace A308754.P735241922859050851
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308754.P735241922859050851

namespace A308754

/-- `∑[char[∑[A028334(n+2)]]]` -/
def P735241922859050851.Spec : Prop :=
  ∀ n, (P735241922859050851.a n : ℤ) = A308754 n

end A308754

/-! ## A308754.P11384335132862290923

`∑[abs(A156707(n+1))]-1`
-/

namespace A308754.P11384335132862290923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156707 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A308754.P11384335132862290923

namespace A308754

/-- `∑[abs(A156707(n+1))]-1` -/
def P11384335132862290923.Spec : Prop :=
  ∀ n, P11384335132862290923.a n = A308754 n

end A308754

/-! ## A308754.P7834211041899091061

`∑[char[A005097(n+2)-1]]`
-/

namespace A308754.P7834211041899091061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308754.P7834211041899091061

namespace A308754

/-- `∑[char[A005097(n+2)-1]]` -/
def P7834211041899091061.Spec : Prop :=
  ∀ n, (P7834211041899091061.a n : ℤ) = A308754 n

end A308754

/-! ## A308754.P2691040881340314474

`∑[char[A006254(n+2)-2]]`
-/

namespace A308754.P2691040881340314474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 2) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308754.P2691040881340314474

namespace A308754

/-- `∑[char[A006254(n+2)-2]]` -/
def P2691040881340314474.Spec : Prop :=
  ∀ n, (P2691040881340314474.a n : ℤ) = A308754 n

end A308754

/-! ## A308754.P18013146184454194364

`∑[A010051(2*n+3)]-1`
-/

namespace A308754.P18013146184454194364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A308754.P18013146184454194364

namespace A308754

/-- `∑[A010051(2*n+3)]-1` -/
def P18013146184454194364.Spec : Prop :=
  ∀ n, P18013146184454194364.a n = A308754 n

end A308754

/-! ## A308754.P12484049428063759547

`comp[A175540(n+1)-2]-n`
-/

namespace A308754.P12484049428063759547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A308754.P12484049428063759547

namespace A308754

/-- `comp[A175540(n+1)-2]-n` -/
def P12484049428063759547.Spec : Prop :=
  ∀ n, P12484049428063759547.a n = A308754 n

end A308754

/-! ## A308754.P2482353144997576397

`∑[C(2, A000005(2*n+3))]-1`
-/

namespace A308754.P2482353144997576397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A308754.P2482353144997576397

namespace A308754

/-- `∑[C(2, A000005(2*n+3))]-1` -/
def P2482353144997576397.Spec : Prop :=
  ∀ n, P2482353144997576397.a n = A308754 n

end A308754

/-! ## A308754.P3389103731659491763

`∑[char[lt[A000005(2*(n+2)+1), 3]+1]]`
-/

namespace A308754.P3389103731659491763
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 2) + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308754.P3389103731659491763

namespace A308754

/-- `∑[char[lt[A000005(2*(n+2)+1), 3]+1]]` -/
def P3389103731659491763.Spec : Prop :=
  ∀ n, (P3389103731659491763.a n : ℤ) = A308754 n

end A308754

/-! ## A308754.P502300015469762277

`A023444(A099801(n+1))`
-/

namespace A308754.P502300015469762277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A099801 (n + 1)).toNat

end

end A308754.P502300015469762277

namespace A308754

/-- `A023444(A099801(n+1))` -/
def P502300015469762277.Spec : Prop :=
  ∀ n, P502300015469762277.a n = A308754 n

end A308754

/-! ## A308754.P603282854703500920

`∑[A001221(A282026(n))]-1`
-/

namespace A308754.P603282854703500920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A282026 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A308754.P603282854703500920

namespace A308754

/-- `∑[A001221(A282026(n))]-1` -/
def P603282854703500920.Spec : Prop :=
  ∀ n, P603282854703500920.a n = A308754 n

end A308754

/-! ## A308754.P5649025113953749890

`A061395(A060265(n+2))-2`
-/

namespace A308754.P5649025113953749890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A060265 (n + 2)).toNat - 2

end

end A308754.P5649025113953749890

namespace A308754

/-- `A061395(A060265(n+2))-2` -/
def P5649025113953749890.Spec : Prop :=
  ∀ n, P5649025113953749890.a n = A308754 n

end A308754

/-! ## A308754.P8854326494724212346

`n-∑[A001222(A281680(n+1))]`
-/

namespace A308754.P8854326494724212346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A281680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308754.P8854326494724212346

namespace A308754

/-- `n-∑[A001222(A281680(n+1))]` -/
def P8854326494724212346.Spec : Prop :=
  ∀ n, P8854326494724212346.a n = A308754 n

end A308754

/-! ## A308754.P8772606380667994522

`A099802(n+2)-2`
-/

namespace A308754.P8772606380667994522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 2) - 2

end

end A308754.P8772606380667994522

namespace A308754

/-- `A099802(n+2)-2` -/
def P8772606380667994522.Spec : Prop :=
  ∀ n, P8772606380667994522.a n = A308754 n

end A308754

/-!
# A308755: a(n) = Sum_{d|n} d^(d-2).

The programs for A308755, the canonical program `A308755.P16397638420572035234` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308755 has offset 1).

The definition of A308755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308755.P16397638420572035234

`∑{d}[n+1, #^(#-2)]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308755

/-- `∑{d}[n+1, #^(#-2)]` -/
def P16397638420572035234.Spec : Prop :=
  ∀ n, P16397638420572035234.a n = (A308755 (n + 1) : ℚ)

end A308755

/-! ## A308755.P17756426502705875150

`record[∑{d}[n-1, #^(#-2)]]`
-/

namespace A308755.P17756426502705875150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℚ) ^ ((d : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308755.P17756426502705875150

namespace A308755

/-- `record[∑{d}[n-1, #^(#-2)]]` -/
def P17756426502705875150.Spec : Prop :=
  ∀ n, P17756426502705875150.a n = (A308755 (n + 1) : ℚ)

end A308755

/-! ## A308755.P5349416303739230702

`ceil(∑{d}[A001511(2^n), #^(#-2)])`
-/

namespace A308755.P5349416303739230702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ ((d : ℤ) - 2 : ℤ)⌉

end

end A308755.P5349416303739230702

namespace A308755

/-- `ceil(∑{d}[A001511(2^n), #^(#-2)])` -/
def P5349416303739230702.Spec : Prop :=
  ∀ n, P5349416303739230702.a n = A308755 (n + 1)

end A308755

/-! ## A308755.P8294490162578721950

`ceil(∑{d}[A018892(2^n), #^(#-2)])`
-/

namespace A308755.P8294490162578721950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ ((d : ℤ) - 2 : ℤ)⌉

end

end A308755.P8294490162578721950

namespace A308755

/-- `ceil(∑{d}[A018892(2^n), #^(#-2)])` -/
def P8294490162578721950.Spec : Prop :=
  ∀ n, P8294490162578721950.a n = A308755 (n + 1)

end A308755

/-!
# A308756: a(n) = Sum_{d|n} d^(2*(d-2)).

The programs for A308756, the canonical program `A308756.P15724671176677828893` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308756 has offset 1).

The definition of A308756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308756.P15724671176677828893

`∑{d}[n+1, #^(2*(#-2))]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308756

/-- `∑{d}[n+1, #^(2*(#-2))]` -/
def P15724671176677828893.Spec : Prop :=
  ∀ n, P15724671176677828893.a n = (A308756 (n + 1) : ℚ)

end A308756

/-! ## A308756.P2211270768593835963

`record[∑{d}[1-n, A000272(#)²]]`
-/

namespace A308756.P2211270768593835963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000272 d ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308756.P2211270768593835963

namespace A308756

/-- `record[∑{d}[1-n, A000272(#)²]]` -/
def P2211270768593835963.Spec : Prop :=
  ∀ n, P2211270768593835963.a n = A308756 (n + 1)

end A308756

/-!
# A308757: a(n) = Sum_{d|n} d^(3*(d-2)).

The programs for A308757, the canonical program `A308757.P12319591849298941157` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308757 has offset 1).

The definition of A308757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308757.P12319591849298941157

`∑{d}[n+1, #^(3*(#-2))]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308757

/-- `∑{d}[n+1, #^(3*(#-2))]` -/
def P12319591849298941157.Spec : Prop :=
  ∀ n, P12319591849298941157.a n = (A308757 (n + 1) : ℚ)

end A308757

/-!
# A308758: Sum of the third largest parts of the partitions of n into 4 parts.

The programs for A308758, the canonical program `A308758.P17103031910200069929` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308758 has offset 0).

The definition of A308758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308758.P17512273867163529947

`A308775(n)-A308733(n)-A308759(n)-A308760(n)`
-/

namespace A308758.P17512273867163529947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308775 n - A308733 n - A308759 n - A308760 n

end

end A308758.P17512273867163529947

namespace A308758

/-- `A308775(n)-A308733(n)-A308759(n)-A308760(n)` -/
def P17512273867163529947.Spec : Prop :=
  ∀ n, P17512273867163529947.a n = A308758 n

theorem P17512273867163529947.correct : P17512273867163529947.Spec := by
  intro n
  simp only [A308758, Nat.add_sub_cancel, A308758.P17512273867163529947.a, A308758.P17103031910200069929.a, A308733, A308733.P10361527980184129555.f1, A308733.P10361527980184129555.a, A308759, A308759.P6759370463478623057.a, A308760, A308760.P1766182739820637320.a, A308775, A308775.P743659139921755992.a, A008763, A008763.P10949200286734320920.a, A026810, A026810.P8500249767737753929.a, A028242, A028242.P334475472552892041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308758

/-! ## A308758.P17103031910200069929

`ogf((x^4+x^5+x^6+x^7+x^8+x^9+x^10)/(1-x^2-2x^3-2x^4+2x^5+3x^6+4x^7-4x^9-3x^10-2x^11+2x^12+2x^13+x^14-x^16))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308758

/-- `ogf((x^4+x^5+x^6+x^7+x^8+x^9+x^10)/(1-x^2-2x^3-2x^4+2x^5+3x^6+4x^7-4x^9-3x^10-2x^11+2x^12+2x^13+x^14-x^16))` -/
def P17103031910200069929.Spec : Prop :=
  ∀ n, P17103031910200069929.a n = A308758 n

theorem P17103031910200069929.correct : P17103031910200069929.Spec := by
  intro n
  simp only [A308758]

end A308758

/-! ## A308758.P12753354809383667010

`∑[A307686(floor(n-atan(n))+1)]`
-/

namespace A308758.P12753354809383667010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308758.P12753354809383667010

namespace A308758

/-- `∑[A307686(floor(n-atan(n))+1)]` -/
def P12753354809383667010.Spec : Prop :=
  ∀ n, P12753354809383667010.a n = A308758 n

end A308758

/-! ## A308758.P16038881221768813429

`∑[A307686(round(acot(n)+n)-1)]`
-/

namespace A308758.P16038881221768813429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308758.P16038881221768813429

namespace A308758

/-- `∑[A307686(round(acot(n)+n)-1)]` -/
def P16038881221768813429.Spec : Prop :=
  ∀ n, P16038881221768813429.a n = A308758 n

end A308758

/-! ## A308758.P5797931836613622425

`∑[A307686(n+1-2%(n+1))]`
-/

namespace A308758.P5797931836613622425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1 - 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308758.P5797931836613622425

namespace A308758

/-- `∑[A307686(n+1-2%(n+1))]` -/
def P5797931836613622425.Spec : Prop :=
  ∀ n, P5797931836613622425.a n = A308758 n

end A308758

/-! ## A308758.P17094580156696515853

`∑[A307686(n-a(C(2, n))-1)]` with `a(0)=0, a(1)=0`
-/

namespace A308758.P17094580156696515853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A307686 ((n : ℤ) - f1 (Nat.choose 2 n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308758.P17094580156696515853

namespace A308758

/-- `∑[A307686(n-a(C(2, n))-1)]` -/
def P17094580156696515853.Spec : Prop :=
  ∀ n, P17094580156696515853.a n = A308758 n

end A308758

/-! ## A308758.P3284329191909492651

`∑[A307686(floor(1/(C(2, n)-n)+n))]`
-/

namespace A308758.P3284329191909492651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 ⌊1 / ((Nat.choose 2 n : ℤ) - (n : ℤ) : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308758.P3284329191909492651

namespace A308758

/-- `∑[A307686(floor(1/(C(2, n)-n)+n))]` -/
def P3284329191909492651.Spec : Prop :=
  ∀ n, P3284329191909492651.a n = A308758 n

end A308758

/-! ## A308758.P519283321475766918

`∑[A307686(1-(floor(3*n/(n+1))-n))]`
-/

namespace A308758.P519283321475766918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (1 - (⌊(3 * n : ℚ) / (n + 1 : ℚ)⌋ - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308758.P519283321475766918

namespace A308758

/-- `∑[A307686(1-(floor(3*n/(n+1))-n))]` -/
def P519283321475766918.Spec : Prop :=
  ∀ n, P519283321475766918.a n = A308758 n

end A308758

/-! ## A308758.P2094367950828344704

`A309716(n)+A309713(n)`
-/

namespace A308758.P2094367950828344704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309716 n + A309713 n

end

end A308758.P2094367950828344704

namespace A308758

/-- `A309716(n)+A309713(n)` -/
def P2094367950828344704.Spec : Prop :=
  ∀ n, P2094367950828344704.a n = A308758 n

end A308758

/-! ## A308758.P2467389536575431499

`∑[A307686(A233583(n+1)-1)]^A151934(n)!`
-/

namespace A308758.P2467389536575431499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (A233583 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.factorial (A151934 n).toNat

end

end A308758.P2467389536575431499

namespace A308758

/-- `∑[A307686(A233583(n+1)-1)]^A151934(n)!` -/
def P2467389536575431499.Spec : Prop :=
  ∀ n, P2467389536575431499.a n = A308758 n

end A308758

/-!
# A308759: Sum of the second largest parts of the partitions of n into 4 parts.

The programs for A308759, the canonical program `A308759.P6759370463478623057` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308759 has offset 0).

The definition of A308759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308759.P9507767962490083951

`A308775(n)-A308733(n)-A308758(n)-A308760(n)`
-/

namespace A308759.P9507767962490083951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308775 n - A308733 n - A308758 n - A308760 n

end

end A308759.P9507767962490083951

namespace A308759

/-- `A308775(n)-A308733(n)-A308758(n)-A308760(n)` -/
def P9507767962490083951.Spec : Prop :=
  ∀ n, P9507767962490083951.a n = A308759 n

theorem P9507767962490083951.correct : P9507767962490083951.Spec := by
  intro n
  simp only [A308759, Nat.add_sub_cancel, A308759.P9507767962490083951.a, A308759.P6759370463478623057.a, A308733, A308733.P10361527980184129555.f1, A308733.P10361527980184129555.a, A308758, A308758.P17103031910200069929.a, A308760, A308760.P1766182739820637320.a, A308775, A308775.P743659139921755992.a, A008763, A008763.P10949200286734320920.a, A026810, A026810.P8500249767737753929.a, A028242, A028242.P334475472552892041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308759

/-! ## A308759.P6759370463478623057

`ogf((x^4+x^5+2x^6+2x^7+3x^8+2x^9+2x^10)/(1-x^2-2x^3-2x^4+2x^5+3x^6+4x^7-4x^9-3x^10-2x^11+2x^12+2x^13+x^14-x^16))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308759

/-- `ogf((x^4+x^5+2x^6+2x^7+3x^8+2x^9+2x^10)/(1-x^2-2x^3-2x^4+2x^5+3x^6+4x^7-4x^9-3x^10-2x^11+2x^12+2x^13+x^14-x^16))` -/
def P6759370463478623057.Spec : Prop :=
  ∀ n, P6759370463478623057.a n = A308759 n

theorem P6759370463478623057.correct : P6759370463478623057.Spec := by
  intro n
  simp only [A308759]

end A308759

/-! ## A308759.P8957806059435563467

`∑[A308096(C(2, n+1)+n-1)]`
-/

namespace A308759.P8957806059435563467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (Nat.choose 2 (n + 1) + n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308759.P8957806059435563467

namespace A308759

/-- `∑[A308096(C(2, n+1)+n-1)]` -/
def P8957806059435563467.Spec : Prop :=
  ∀ n, P8957806059435563467.a n = A308759 n

end A308759

/-! ## A308759.P17849865633542911722

`A309796(n)+A309794(n)`
-/

namespace A308759.P17849865633542911722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309796 n + A309794 n

end

end A308759.P17849865633542911722

namespace A308759

/-- `A309796(n)+A309794(n)` -/
def P17849865633542911722.Spec : Prop :=
  ∀ n, P17849865633542911722.a n = A308759 n

end A308759

/-! ## A308759.P8029849136974609158

`∑[A308096(record[A029579(n)]-n)]`
-/

namespace A308759.P8029849136974609158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308759.P8029849136974609158

namespace A308759

/-- `∑[A308096(record[A029579(n)]-n)]` -/
def P8029849136974609158.Spec : Prop :=
  ∀ n, P8029849136974609158.a n = A308759 n

end A308759

/-! ## A308759.P2830891988245964208

`∑[A308096(A004274(n+1)-n)]`
-/

namespace A308759.P2830891988245964208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (A004274 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308759.P2830891988245964208

namespace A308759

/-- `∑[A308096(A004274(n+1)-n)]` -/
def P2830891988245964208.Spec : Prop :=
  ∀ n, P2830891988245964208.a n = A308759 n

end A308759

/-! ## A308759.P3002991114923212865

`∑[A308096(A008619(A004274(n)))]`
-/

namespace A308759.P3002991114923212865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (A008619 (A004274 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308759.P3002991114923212865

namespace A308759

/-- `∑[A308096(A008619(A004274(n)))]` -/
def P3002991114923212865.Spec : Prop :=
  ∀ n, P3002991114923212865.a n = A308759 n

end A308759

/-! ## A308759.P3444167797057367540

`∑[A308096(A233583(A028310(n)))]`
-/

namespace A308759.P3444167797057367540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (A233583 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308759.P3444167797057367540

namespace A308759

/-- `∑[A308096(A233583(A028310(n)))]` -/
def P3444167797057367540.Spec : Prop :=
  ∀ n, P3444167797057367540.a n = A308759 n

end A308759

/-! ## A308759.P17841826051505571423

`∑[A308096(A233583(n+1)-1)]`
-/

namespace A308759.P17841826051505571423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (A233583 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308759.P17841826051505571423

namespace A308759

/-- `∑[A308096(A233583(n+1)-1)]` -/
def P17841826051505571423.Spec : Prop :=
  ∀ n, P17841826051505571423.a n = A308759 n

end A308759

/-! ## A308759.P10737089866731538210

`∑[A308096(A233583(A233583(n+1)))]`
-/

namespace A308759.P10737089866731538210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (A233583 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308759.P10737089866731538210

namespace A308759

/-- `∑[A308096(A233583(A233583(n+1)))]` -/
def P10737089866731538210.Spec : Prop :=
  ∀ n, P10737089866731538210.a n = A308759 n

end A308759

/-! ## A308759.P1697497311367591953

`∑[A308096(lt[A320992(n), 1]-n)]`
-/

namespace A308759.P1697497311367591953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320992 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308759.P1697497311367591953

namespace A308759

/-- `∑[A308096(lt[A320992(n), 1]-n)]` -/
def P1697497311367591953.Spec : Prop :=
  ∀ n, P1697497311367591953.a n = A308759 n

end A308759

/-! ## A308759.P15334345074169556893

`∑[A308096(A003056(A152947(n+1)))]`
-/

namespace A308759.P15334345074169556893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (A003056 (A152947 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308759.P15334345074169556893

namespace A308759

/-- `∑[A308096(A003056(A152947(n+1)))]` -/
def P15334345074169556893.Spec : Prop :=
  ∀ n, P15334345074169556893.a n = A308759 n

end A308759

/-!
# A308760: Sum of the largest parts of the partitions of n into 4 parts.

The programs for A308760, the canonical program `A308760.P1766182739820637320` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308760 has offset 0).

The definition of A308760 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A308733, A308758, A308759, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A308760.P1766182739820637320

`A308775(n)-A308733(n)-A308758(n)-A308759(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A308760

/-- `A308775(n)-A308733(n)-A308758(n)-A308759(n)` -/
def P1766182739820637320.Spec : Prop :=
  ∀ n, P1766182739820637320.a n = A308760 n

theorem P1766182739820637320.correct : P1766182739820637320.Spec := by
  intro n
  simp only [A308760]

end A308760

/-! ## A308760.P6595206257862376678

`ogf((x^4+2x^5+4x^6+5x^7+6x^8+4x^9+3x^10)/(1-x^2-2x^3-2x^4+2x^5+3x^6+4x^7-4x^9-3x^10-2x^11+2x^12+2x^13+x^14-x^16))`
-/

namespace A308760.P6595206257862376678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1, 2, 4, 5, 6, 4, 3] [1, 0, -1, -2, -2, 2, 3, 4, 0, -4, -3, -2, 2, 2, 1, 0, -1] n

end

end A308760.P6595206257862376678

namespace A308760

/-- `ogf((x^4+2x^5+4x^6+5x^7+6x^8+4x^9+3x^10)/(1-x^2-2x^3-2x^4+2x^5+3x^6+4x^7-4x^9-3x^10-2x^11+2x^12+2x^13+x^14-x^16))` -/
def P6595206257862376678.Spec : Prop :=
  ∀ n, P6595206257862376678.a n = A308760 n

end A308760

/-! ## A308760.P7141858536266690831

`A309800(n)+A309798(n)`
-/

namespace A308760.P7141858536266690831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309800 n + A309798 n

end

end A308760.P7141858536266690831

namespace A308760

/-- `A309800(n)+A309798(n)` -/
def P7141858536266690831.Spec : Prop :=
  ∀ n, P7141858536266690831.a n = A308760 n

end A308760

/-! ## A308760.P10641302021192247464

`A309798(n)+A240834(A309547(n+1)+1)`
-/

namespace A308760.P10641302021192247464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309798 n + A240834 (A309547 (n + 1) + 1).toNat

end

end A308760.P10641302021192247464

namespace A308760

/-- `A309798(n)+A240834(A309547(n+1)+1)` -/
def P10641302021192247464.Spec : Prop :=
  ∀ n, P10641302021192247464.a n = A308760 n

end A308760

/-! ## A308760.P16715975367248474449

`A342854(n)-A184964(A213952(n+1))`
-/

namespace A308760.P16715975367248474449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342854 n - A184964 (A213952 (n + 1)).toNat

end

end A308760.P16715975367248474449

namespace A308760

/-- `A342854(n)-A184964(A213952(n+1))` -/
def P16715975367248474449.Spec : Prop :=
  ∀ n, P16715975367248474449.a n = A308760 n

end A308760

/-!
# A308762: Sum of the third largest parts of the partitions of n into 4 squarefree parts.

The programs for A308762, there is no canonical definition to state claims against.
-/

/-! ## A308762.P13027200886892097534

`A308783(n)-A308768(n)-A308769(n)-A308770(n)`
-/

namespace A308762.P13027200886892097534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308783 n - A308768 n - A308769 n - A308770 n

end

end A308762.P13027200886892097534

/-!
# A308763: a(n) = Sum_{d|n} d^(n-2).

The programs for A308763, the canonical program `A308763.P5081604330053479300` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308763 has offset 1).

The definition of A308763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308763.P5081604330053479300

`∑{d}[n+1, #^(n-1)]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308763

/-- `∑{d}[n+1, #^(n-1)]` -/
def P5081604330053479300.Spec : Prop :=
  ∀ n, P5081604330053479300.a n = (A308763 (n + 1) : ℚ)

end A308763

/-! ## A308763.P620647985499945380

`record[∑{d}[1-n, #^(n-3)]]`
-/

namespace A308763.P620647985499945380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℚ) ^ ((n : ℤ) - 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308763.P620647985499945380

namespace A308763

/-- `record[∑{d}[1-n, #^(n-3)]]` -/
def P620647985499945380.Spec : Prop :=
  ∀ n, P620647985499945380.a n = (A308763 (n + 1) : ℚ)

end A308763

/-! ## A308763.P3471038103397938848

`floor(∑{d}[2*n-(n-1), #^(n-1)])`
-/

namespace A308763.P3471038103397938848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A308763.P3471038103397938848

namespace A308763

/-- `floor(∑{d}[2*n-(n-1), #^(n-1)])` -/
def P3471038103397938848.Spec : Prop :=
  ∀ n, P3471038103397938848.a n = A308763 (n + 1)

end A308763

/-! ## A308763.P2636691492016938647

`ceil(∑{d}[2*n-(n-1), #^(n-1)])`
-/

namespace A308763.P2636691492016938647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A308763.P2636691492016938647

namespace A308763

/-- `ceil(∑{d}[2*n-(n-1), #^(n-1)])` -/
def P2636691492016938647.Spec : Prop :=
  ∀ n, P2636691492016938647.a n = A308763 (n + 1)

end A308763

/-! ## A308763.P6087611207315241268

`round(∑{d}[2*n-(n-1), #^(n-1)])`
-/

namespace A308763.P6087611207315241268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A308763.P6087611207315241268

namespace A308763

/-- `round(∑{d}[2*n-(n-1), #^(n-1)])` -/
def P6087611207315241268.Spec : Prop :=
  ∀ n, P6087611207315241268.a n = A308763 (n + 1)

end A308763

/-! ## A308763.P863074010558033685

`A082771(A212342(n+1))`
-/

namespace A308763.P863074010558033685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082771 (A212342 (n + 1)).toNat

end

end A308763.P863074010558033685

namespace A308763

/-- `A082771(A212342(n+1))` -/
def P863074010558033685.Spec : Prop :=
  ∀ n, P863074010558033685.a n = A308763 (n + 1)

end A308763

/-! ## A308763.P10054328508531963069

`A082771(A347553(n+3))`
-/

namespace A308763.P10054328508531963069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082771 (A347553 (n + 3)).toNat

end

end A308763.P10054328508531963069

namespace A308763

/-- `A082771(A347553(n+3))` -/
def P10054328508531963069.Spec : Prop :=
  ∀ n, P10054328508531963069.a n = A308763 (n + 1)

end A308763

/-! ## A308763.P992150553683544339

`A082771(∑[A157928(n)+n]+1)`
-/

namespace A308763.P992150553683544339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082771 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A308763.P992150553683544339

namespace A308763

/-- `A082771(∑[A157928(n)+n]+1)` -/
def P992150553683544339.Spec : Prop :=
  ∀ n, P992150553683544339.a n = A308763 (n + 1)

end A308763

/-! ## A308763.P11136023032023057669

`record[gcd(1-A025581(n), A082771(n+1))]`
-/

namespace A308763.P11136023032023057669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A025581 n) (A082771 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308763.P11136023032023057669

namespace A308763

/-- `record[gcd(1-A025581(n), A082771(n+1))]` -/
def P11136023032023057669.Spec : Prop :=
  ∀ n, (P11136023032023057669.a n : ℤ) = A308763 (n + 1)

end A308763

/-!
# A308765: Irregular triangle T(n,k) read by rows with 1 <= k <= A091887 even indices 2i such that n-th irregular prime p (A000928) divides the numerator of the Bernoulli numbers B_{2i} (A000367) with 0 <= 2i <= p-3.

The programs for A308765, there is no canonical definition to state claims against.
-/

/-! ## A308765.P15420748814504649153

`A090800(n+2)+2`
-/

namespace A308765.P15420748814504649153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090800 (n + 2) + 2

end

end A308765.P15420748814504649153

/-! ## A308765.P9250884492914627816

`A009056(A090800(n+2))`
-/

namespace A308765.P9250884492914627816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A090800 (n + 2)).toNat

end

end A308765.P9250884492914627816

/-! ## A308765.P13370753034416336975

`A092681(n+1)%A000010(A090798(n+1))`
-/

namespace A308765.P13370753034416336975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092681 (n + 1)) (A000010 (A090798 (n + 1)).toNat)

end

end A308765.P13370753034416336975

/-! ## A308765.P14938666955946920589

`A092682(n+1)%A000010(A090798(n+1))`
-/

namespace A308765.P14938666955946920589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092682 (n + 1)) (A000010 (A090798 (n + 1)).toNat)

end

end A308765.P14938666955946920589

/-!
# A308766: Numbers k such that the minimal mark in a length k sparse ruler is round(sqrt(9 + 12*k)/2) + 1.

The programs for A308766, there is no canonical definition to state claims against.
-/

/-! ## A308766.P7973077146371184696

`eq[2*A103298(n), A000267(3*n+2)]`
-/

namespace A308766.P7973077146371184696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308766.P7973077146371184696

/-! ## A308766.P4026588572681652906

`eq[A000194(A047270(n+1)), A103298(n)]`
-/

namespace A308766.P4026588572681652906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A047270 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308766.P4026588572681652906

/-! ## A308766.P13374355186094339515

`eq[A000194(A287452(n+1)), A103298(n)]`
-/

namespace A308766.P13374355186094339515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A287452 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308766.P13374355186094339515

/-! ## A308766.P13374369559826992251

`lt[A065033(A000267(3*n+2)), A046693(n)]`
-/

namespace A308766.P13374369559826992251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000267 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308766.P13374369559826992251

/-! ## A308766.P4947310117211020756

`lt[A002024(A080513(3*n+1)), A103298(n)+1]`
-/

namespace A308766.P4947310117211020756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A080513 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308766.P4947310117211020756

/-!
# A308767: Number of partitions of n into 4 squarefree parts.

The programs for A308767, there is no canonical definition to state claims against.
-/

/-! ## A308767.P6480539355462946149

`round(acot(n)*A308783(n))`
-/

namespace A308767.P6480539355462946149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) * (A308783 n : ℝ))

end

end A308767.P6480539355462946149

/-! ## A308767.P7031311682956554084

`A308783(n)/A028310(n)`
-/

namespace A308767.P7031311682956554084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308783 n : ℚ) / (A028310 n : ℚ)

end

end A308767.P7031311682956554084

/-! ## A308767.P415354533527206843

`A308783(n)/(A000038(n)+n)`
-/

namespace A308767.P415354533527206843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308783 n : ℚ) / (A000038 n + (n : ℤ) : ℚ)

end

end A308767.P415354533527206843

/-! ## A308767.P5221175529894257892

`A308783(n)/A233583(n+1)`
-/

namespace A308767.P5221175529894257892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308783 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A308767.P5221175529894257892

/-! ## A308767.P3609866350332033396

`A308783(n)/A002260(A034856(n+1))`
-/

namespace A308767.P3609866350332033396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308783 n : ℚ) / (A002260 (A034856 (n + 1)).toNat : ℚ)

end

end A308767.P3609866350332033396

/-! ## A308767.P1269548221843212680

`A347655(n)-A347649(n)`
-/

namespace A308767.P1269548221843212680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 n - A347649 n

end

end A308767.P1269548221843212680

/-! ## A308767.P3474083443181702327

`A347655(n)-(A347648(n)+A307815(n))`
-/

namespace A308767.P3474083443181702327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 n - (A347648 n + A307815 n)

end

end A308767.P3474083443181702327

/-! ## A308767.P9967125577359411038

`A347655(n)+A001478(A347648(n)+A307815(n))`
-/

namespace A308767.P9967125577359411038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 n + A001478 (A347648 n + A307815 n).toNat

end

end A308767.P9967125577359411038

/-! ## A308767.P10237280247749951922

`A347655(n)-(A105588(n)+A307815(n)-A294234(n))`
-/

namespace A308767.P10237280247749951922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 n - (A105588 n + (A307815 n - A294234 n))

end

end A308767.P10237280247749951922

/-! ## A308767.P15178390845615985647

`A347656(n)-(A347649(n)+A308840(n))`
-/

namespace A308767.P15178390845615985647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347656 n - (A347649 n + A308840 n)

end

end A308767.P15178390845615985647

/-!
# A308768: Sum of the smallest parts of the partitions of n into 4 squarefree parts.

The programs for A308768, there is no canonical definition to state claims against.
-/

/-! ## A308768.P9733154625614315610

`A308783(n)-A308762(n)-A308769(n)-A308770(n)`
-/

namespace A308768.P9733154625614315610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308783 n - A308762 n - A308769 n - A308770 n

end

end A308768.P9733154625614315610

/-!
# A308769: Sum of the second largest parts of the partitions of n into 4 squarefree parts.

The programs for A308769, there is no canonical definition to state claims against.
-/

/-! ## A308769.P8750908532767573888

`A308783(n)-A308768(n)-A308762(n)-A308770(n)`
-/

namespace A308769.P8750908532767573888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308783 n - A308768 n - A308762 n - A308770 n

end

end A308769.P8750908532767573888

/-!
# A308770: Sum of the largest parts of the partitions of n into 4 squarefree parts.

The programs for A308770, there is no canonical definition to state claims against.
-/

/-! ## A308770.P13904399124739709817

`A308783(n)-A308768(n)-A308762(n)-A308769(n)`
-/

namespace A308770.P13904399124739709817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308783 n - A308768 n - A308762 n - A308769 n

end

end A308770.P13904399124739709817

/-!
# A308771: Sum of the smallest parts of the partitions of n into 4 prime parts.

The programs for A308771, there is no canonical definition to state claims against.
-/

/-! ## A308771.P14386736544538903759

`A308809(n)-A308772(n)-A308773(n)-A308774(n)`
-/

namespace A308771.P14386736544538903759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308809 n - A308772 n - A308773 n - A308774 n

end

end A308771.P14386736544538903759

/-!
# A308772: Sum of the third largest parts of the partitions of n into 4 prime parts.

The programs for A308772, there is no canonical definition to state claims against.
-/

/-! ## A308772.P12939894611486407257

`A308809(n)-A308771(n)-A308773(n)-A308774(n)`
-/

namespace A308772.P12939894611486407257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308809 n - A308771 n - A308773 n - A308774 n

end

end A308772.P12939894611486407257

/-!
# A308773: Sum of the second largest parts in the partitions of n into 4 prime parts.

The programs for A308773, there is no canonical definition to state claims against.
-/

/-! ## A308773.P3707377603105995058

`A308809(n)-A308771(n)-A308772(n)-A308774(n)`
-/

namespace A308773.P3707377603105995058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308809 n - A308771 n - A308772 n - A308774 n

end

end A308773.P3707377603105995058

/-!
# A308774: Sum of the largest parts in the partitions of n into 4 prime parts.

The programs for A308774, there is no canonical definition to state claims against.
-/

/-! ## A308774.P16573699326326578244

`A308809(n)-A308771(n)-A308772(n)-A308773(n)`
-/

namespace A308774.P16573699326326578244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308809 n - A308771 n - A308772 n - A308773 n

end

end A308774.P16573699326326578244

/-!
# A308775: Sum of all the parts in the partitions of n into 4 parts.

The programs for A308775, the canonical program `A308775.P743659139921755992` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308775 has offset 0).

The definition of A308775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308775.P743659139921755992

`n*A026810(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308775

/-- `n*A026810(n)` -/
def P743659139921755992.Spec : Prop :=
  ∀ n, P743659139921755992.a n = A308775 n

theorem P743659139921755992.correct : P743659139921755992.Spec := by
  intro n
  simp only [A308775]

end A308775

/-! ## A308775.P454253285840429817

`A308733(n)+A308758(n)+A308759(n)+A308760(n)`
-/

namespace A308775.P454253285840429817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308733 n + A308758 n + A308759 n + A308760 n

end

end A308775.P454253285840429817

namespace A308775

/-- `A308733(n)+A308758(n)+A308759(n)+A308760(n)` -/
def P454253285840429817.Spec : Prop :=
  ∀ n, P454253285840429817.a n = A308775 n

theorem P454253285840429817.correct : P454253285840429817.Spec := by
  intro n
  simp only [A308775, Nat.add_sub_cancel, A308775.P454253285840429817.a, A308775.P743659139921755992.a, A026810, A026810.P8500249767737753929.a, A308733, A308733.P10361527980184129555.f1, A308733.P10361527980184129555.a, A308758, A308758.P17103031910200069929.a, A308759, A308759.P6759370463478623057.a, A308760, A308760.P1766182739820637320.a, A008763, A008763.P10949200286734320920.a, A028242, A028242.P334475472552892041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308775

/-! ## A308775.P17391425755301144470

`ogf((4x^4+5x^5+8x^6+8x^7+10x^8+7x^9+6x^10)/(1-x^2-2x^3-2x^4+2x^5+3x^6+4x^7-4x^9-3x^10-2x^11+2x^12+2x^13+x^14-x^16))`
-/

namespace A308775.P17391425755301144470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 4, 5, 8, 8, 10, 7, 6] [1, 0, -1, -2, -2, 2, 3, 4, 0, -4, -3, -2, 2, 2, 1, 0, -1] n

end

end A308775.P17391425755301144470

namespace A308775

/-- `ogf((4x^4+5x^5+8x^6+8x^7+10x^8+7x^9+6x^10)/(1-x^2-2x^3-2x^4+2x^5+3x^6+4x^7-4x^9-3x^10-2x^11+2x^12+2x^13+x^14-x^16))` -/
def P17391425755301144470.Spec : Prop :=
  ∀ n, P17391425755301144470.a n = A308775 n

end A308775

/-! ## A308775.P9653363637730543062

`n*∑[A005044(abs(1-n))]`
-/

namespace A308775.P9653363637730543062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308775.P9653363637730543062

namespace A308775

/-- `n*∑[A005044(abs(1-n))]` -/
def P9653363637730543062.Spec : Prop :=
  ∀ n, P9653363637730543062.a n = A308775 n

end A308775

/-! ## A308775.P14493822422249869803

`n*∑[A069905(A028242(n))]`
-/

namespace A308775.P14493822422249869803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308775.P14493822422249869803

namespace A308775

/-- `n*∑[A069905(A028242(n))]` -/
def P14493822422249869803.Spec : Prop :=
  ∀ n, P14493822422249869803.a n = A308775 n

end A308775

/-! ## A308775.P13311925000936509263

`n*(A309715(n)+A309712(n))`
-/

namespace A308775.P13311925000936509263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A309715 n + A309712 n)

end

end A308775.P13311925000936509263

namespace A308775

/-- `n*(A309715(n)+A309712(n))` -/
def P13311925000936509263.Spec : Prop :=
  ∀ n, P13311925000936509263.a n = A308775 n

end A308775

/-! ## A308775.P13259208544155877993

`n*(A309795(n)+A309793(n))`
-/

namespace A308775.P13259208544155877993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A309795 n + A309793 n)

end

end A308775.P13259208544155877993

namespace A308775

/-- `n*(A309795(n)+A309793(n))` -/
def P13259208544155877993.Spec : Prop :=
  ∀ n, P13259208544155877993.a n = A308775 n

end A308775

/-! ## A308775.P15408648904668233270

`n*(A001400(n)-A001399(n))`
-/

namespace A308775.P15408648904668233270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001400 n - A001399 n)

end

end A308775.P15408648904668233270

namespace A308775

/-- `n*(A001400(n)-A001399(n))` -/
def P15408648904668233270.Spec : Prop :=
  ∀ n, P15408648904668233270.a n = A308775 n

end A308775

/-! ## A308775.P8479906063657458413

`n*(A008765(n)-A001400(n))`
-/

namespace A308775.P8479906063657458413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008765 n - A001400 n)

end

end A308775.P8479906063657458413

namespace A308775

/-- `n*(A008765(n)-A001400(n))` -/
def P8479906063657458413.Spec : Prop :=
  ∀ n, P8479906063657458413.a n = A308775 n

end A308775

/-! ## A308775.P18012302211127369871

`n*(A005232(n)-A266769(n))`
-/

namespace A308775.P18012302211127369871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005232 n - A266769 n)

end

end A308775.P18012302211127369871

namespace A308775

/-- `n*(A005232(n)-A266769(n))` -/
def P18012302211127369871.Spec : Prop :=
  ∀ n, P18012302211127369871.a n = A308775 n

end A308775

/-! ## A308775.P6754837681109940013

`n*(A266755(n)-A060023(n))`
-/

namespace A308775.P6754837681109940013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266755 n - A060023 n)

end

end A308775.P6754837681109940013

namespace A308775

/-- `n*(A266755(n)-A060023(n))` -/
def P6754837681109940013.Spec : Prop :=
  ∀ n, P6754837681109940013.a n = A308775 n

end A308775

/-! ## A308775.P1151829409764954340

`n*(∑[A005044(n)]-A005044(n))`
-/

namespace A308775.P1151829409764954340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A005044 n)

end

end A308775.P1151829409764954340

namespace A308775

/-- `n*(∑[A005044(n)]-A005044(n))` -/
def P1151829409764954340.Spec : Prop :=
  ∀ n, P1151829409764954340.a n = A308775 n

end A308775

/-! ## A308775.P301275989546233654

`n*∑[A008733(n)-A008731(n)]`
-/

namespace A308775.P301275989546233654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 n - A008731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308775.P301275989546233654

namespace A308775

/-- `n*∑[A008733(n)-A008731(n)]` -/
def P301275989546233654.Spec : Prop :=
  ∀ n, P301275989546233654.a n = A308775 n

end A308775

/-! ## A308775.P1955076193387644754

`n*(∑[A266755(n)]-A001399(n))`
-/

namespace A308775.P1955076193387644754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A001399 n)

end

end A308775.P1955076193387644754

namespace A308775

/-- `n*(∑[A266755(n)]-A001399(n))` -/
def P1955076193387644754.Spec : Prop :=
  ∀ n, P1955076193387644754.a n = A308775 n

end A308775

/-! ## A308775.P12164028543827499282

`n*(A266769(n)-A320592(n+6))`
-/

namespace A308775.P12164028543827499282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266769 n - A320592 (n + 6))

end

end A308775.P12164028543827499282

namespace A308775

/-- `n*(A266769(n)-A320592(n+6))` -/
def P12164028543827499282.Spec : Prop :=
  ∀ n, P12164028543827499282.a n = A308775 n

end A308775

/-! ## A308775.P12105680405282214982

`n*(A008766(n+1)-A001400(n+1))`
-/

namespace A308775.P12105680405282214982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008766 (n + 1) - A001400 (n + 1))

end

end A308775.P12105680405282214982

namespace A308775

/-- `n*(A008766(n+1)-A001400(n+1))` -/
def P12105680405282214982.Spec : Prop :=
  ∀ n, P12105680405282214982.a n = A308775 n

end A308775

/-! ## A308775.P18220124966005557990

`n*(A001400(n)-record[A005044(n)])`
-/

namespace A308775.P18220124966005557990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001400 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A308775.P18220124966005557990

namespace A308775

/-- `n*(A001400(n)-record[A005044(n)])` -/
def P18220124966005557990.Spec : Prop :=
  ∀ n, P18220124966005557990.a n = A308775 n

end A308775

/-! ## A308775.P14066847681520893990

`n*A288165(3*n)`
-/

namespace A308775.P14066847681520893990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288165 (3 * n)

end

end A308775.P14066847681520893990

namespace A308775

/-- `n*A288165(3*n)` -/
def P14066847681520893990.Spec : Prop :=
  ∀ n, P14066847681520893990.a n = A308775 n

end A308775

/-! ## A308775.P3273958006928494825

`n*A029425(A016921(n))`
-/

namespace A308775.P3273958006928494825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029425 (A016921 n).toNat

end

end A308775.P3273958006928494825

namespace A308775

/-- `n*A029425(A016921(n))` -/
def P3273958006928494825.Spec : Prop :=
  ∀ n, P3273958006928494825.a n = A308775 n

end A308775

/-! ## A308775.P15128963502867719192

`n*A029425(A271114(n))`
-/

namespace A308775.P15128963502867719192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029425 (A271114 n).toNat

end

end A308775.P15128963502867719192

namespace A308775

/-- `n*A029425(A271114(n))` -/
def P15128963502867719192.Spec : Prop :=
  ∀ n, P15128963502867719192.a n = A308775 n

end A308775

/-!
# A308777: Number of twin primes between p and p^2 (inclusive) where p is the n-th prime.

The programs for A308777, there is no canonical definition to state claims against.
-/

/-! ## A308777.P9679317740866700990

`∑[A066086(A306022(n))]+n`
-/

namespace A308777.P9679317740866700990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066086 (A306022 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A308777.P9679317740866700990

/-! ## A308777.P16688267892002671281

`∑[A073689(A005811(2^(n-1)*∑[n]))]`
-/

namespace A308777.P16688267892002671281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073689 (A005811 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308777.P16688267892002671281

/-! ## A308777.P9821537632837916381

`∑[A000040(A032741(3^n+1-∑[2^n])+1)]-1`
-/

namespace A308777.P9821537632837916381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A032741 ((3 ^ n : ℤ) + (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A308777.P9821537632837916381

/-! ## A308777.P577264841285628078

`A098548(n+1)+A001222(A002001(n))`
-/

namespace A308777.P577264841285628078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1) + A001222 (A002001 n).toNat

end

end A308777.P577264841285628078

/-! ## A308777.P3230698302907441587

`A098548(n+1)+A001222(A003947(n))`
-/

namespace A308777.P3230698302907441587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1) + A001222 (A003947 n).toNat

end

end A308777.P3230698302907441587

/-!
# A308778: Central element(s) in the period of the continued fraction expansion of sqrt(n), or 0 if no such element exists, or -1 if n is a square.

The programs for A308778, there is no canonical definition to state claims against.
-/

/-! ## A308778.P3717687592162404346

`A006843(n+1)-A001285(A244330(n+1))`
-/

namespace A308778.P3717687592162404346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006843 (n + 1) - A001285 (A244330 (n + 1)).toNat

end

end A308778.P3717687592162404346

/-!
# A308779: Almost Carmichael numbers: Squarefree composite n for which omega(n) = k >= 3 and there are exactly k-1 prime divisors p of n such that p-1 | n-1.

The programs for A308779, there is no canonical definition to state claims against.
-/

/-! ## A308779.P13612669780421037317

`record[A046389(A228351(3*n+1))]`
-/

namespace A308779.P13612669780421037317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (A228351 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308779.P13612669780421037317

/-! ## A308779.P286689159951940585

`A256673(eq[A110655(n), A256660(n)])`
-/

namespace A308779.P286689159951940585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256673 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A308779.P286689159951940585

/-!
# A308780: First element of the periodic part of the continued fraction expansion of sqrt(k), where the period is 2.

The programs for A308780, there is no canonical definition to state claims against.
-/

/-! ## A308780.P10620047737153403996

`A002349(A013642(n+1))`
-/

namespace A308780.P10620047737153403996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (A013642 (n + 1)).toNat

end

end A308780.P10620047737153403996

/-! ## A308780.P11665936708923357228

`A091453(and(-1, A013642(n+1)))`
-/

namespace A308780.P11665936708923357228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (Int.land (-1) (A013642 (n + 1))).toNat

end

end A308780.P11665936708923357228

/-! ## A308780.P9605253503011061815

`A276689(and(-1, A013642(n+1)))`
-/

namespace A308780.P9605253503011061815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (Int.land (-1) (A013642 (n + 1))).toNat

end

end A308780.P9605253503011061815

/-! ## A308780.P2327835671347161842

`A308778(and(-1, A013642(n+1)))`
-/

namespace A308780.P2327835671347161842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (Int.land (-1) (A013642 (n + 1))).toNat

end

end A308780.P2327835671347161842

/-! ## A308780.P5796276641065047024

`A091453(A013642(n+1)-char[2])`
-/

namespace A308780.P5796276641065047024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A013642 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A308780.P5796276641065047024

/-! ## A308780.P7632544712354516605

`A276689(A013642(n+1)-char[2])`
-/

namespace A308780.P7632544712354516605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (A013642 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A308780.P7632544712354516605

/-! ## A308780.P2196231416095826710

`A308778(A013642(n+1)-char[2])`
-/

namespace A308780.P2196231416095826710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (A013642 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A308780.P2196231416095826710

/-! ## A308780.P17049400432484861391

`A308778(A013642(2*n+1-n))`
-/

namespace A308780.P17049400432484861391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (A013642 (2 * n + 1 - n)).toNat

end

end A308780.P17049400432484861391

/-! ## A308780.P8235457279743599543

`A091453(A013642(n+1)%(n+2)²)`
-/

namespace A308780.P8235457279743599543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (Int.tmod (A013642 (n + 1)) ((n + 2) ^ 2 : ℤ)).toNat

end

end A308780.P8235457279743599543

/-!
# A308781: Number of steps until the 'summarize the previous term' sequence enters a cycle.

The programs for A308781, there is no canonical definition to state claims against.
-/

/-! ## A308781.P4295242463500385835

`A103618(n+1)%15`
-/

namespace A308781.P4295242463500385835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103618 (n + 1)) 15

end

end A308781.P4295242463500385835

/-! ## A308781.P13424815742161157669

`(A036212(n)-1)%15`
-/

namespace A308781.P13424815742161157669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036212 n - 1) 15

end

end A308781.P13424815742161157669

/-! ## A308781.P4105802263961170987

`A103618(n+1-char[∑[(9*n+3)^5]])`
-/

namespace A308781.P4105802263961170987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 3) ^ 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103618 (n + 1 - (if ∃ j, f1 j = n then 1 else 0))

end

end A308781.P4105802263961170987

/-! ## A308781.P7585694566044407199

`A004829(A036212(n))`
-/

namespace A308781.P7585694566044407199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004829 (A036212 n).toNat

end

end A308781.P7585694566044407199

/-! ## A308781.P6208025217456639164

`A055646(A103618(n+1))`
-/

namespace A308781.P6208025217456639164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055646 (A103618 (n + 1)).toNat

end

end A308781.P6208025217456639164

/-! ## A308781.P10213512026106449603

`A055646(A036212(n)-1)`
-/

namespace A308781.P10213512026106449603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055646 (A036212 n - 1).toNat

end

end A308781.P10213512026106449603

/-! ## A308781.P5379807123476629253

`A036212(n)-A361338(n)`
-/

namespace A308781.P5379807123476629253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036212 n - A361338 n

end

end A308781.P5379807123476629253

/-! ## A308781.P8671087269402592108

`A036212(n)-A112316(n)!`
-/

namespace A308781.P8671087269402592108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036212 n - (Nat.factorial (A112316 n).toNat : ℤ)

end

end A308781.P8671087269402592108

/-! ## A308781.P12954616683251925896

`A036212(n)-A178334(n)!`
-/

namespace A308781.P12954616683251925896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036212 n - (Nat.factorial (A178334 n).toNat : ℤ)

end

end A308781.P12954616683251925896

/-! ## A308781.P3807565722128081054

`A036212(n)-char[A330633(n)]`
-/

namespace A308781.P3807565722128081054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330633 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036212 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308781.P3807565722128081054

/-! ## A308781.P7131339936474331867

`A036212(n)-A178334(n+1)`
-/

namespace A308781.P7131339936474331867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036212 n - A178334 (n + 1)

end

end A308781.P7131339936474331867

/-! ## A308781.P14922461479414333392

`A036212(n*A178334(n))-1`
-/

namespace A308781.P14922461479414333392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036212 ((n : ℤ) * A178334 n).toNat - 1

end

end A308781.P14922461479414333392

/-! ## A308781.P14998898891647465477

`A036212(n)-A025125(n+1)!`
-/

namespace A308781.P14998898891647465477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036212 n - (Nat.factorial (A025125 (n + 1)).toNat : ℤ)

end

end A308781.P14998898891647465477

/-! ## A308781.P391450930537413307

`A103618(n+1)+char[A103604(n)]`
-/

namespace A308781.P391450930537413307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103604 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103618 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308781.P391450930537413307

/-! ## A308781.P14681461984053205444

`A036212(n)-A007318(floor(n/27))`
-/

namespace A308781.P14681461984053205444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036212 n - A007318 ⌊(n : ℚ) / 27⌋.toNat

end

end A308781.P14681461984053205444

/-! ## A308781.P14960432945800031928

`A036212(n)-A000041(val(n+1, 12))`
-/

namespace A308781.P14960432945800031928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036212 n - A000041 (SequenceMachineLib.valuation (n + 1) 12)

end

end A308781.P14960432945800031928

/-!
# A308782: Index of first occurrence of n appearing twice in succession in van Eck's sequence (A181391), or 0 if it never occurs.

The programs for A308782, there is no canonical definition to state claims against.
-/

/-! ## A308782.P13887252326609645251

`(n+2)*∑{e}[A000032(n)!, #²]`
-/

namespace A308782.P13887252326609645251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000032 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2)

end

end A308782.P13887252326609645251

/-!
# A308783: Sum of all the parts in the partitions of n into 4 squarefree parts.

The programs for A308783, there is no canonical definition to state claims against.
-/

/-! ## A308783.P8188279413512619327

`n*A308767(n)`
-/

namespace A308783.P8188279413512619327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A308767 n

end

end A308783.P8188279413512619327

/-! ## A308783.P2707464112486875760

`A308768(n)+A308762(n)+A308769(n)+A308770(n)`
-/

namespace A308783.P2707464112486875760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308768 n + A308762 n + A308769 n + A308770 n

end

end A308783.P2707464112486875760

/-! ## A308783.P11630414725976226539

`A308767(n)/A028310(n)^-1`
-/

namespace A308783.P11630414725976226539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308767 n : ℚ) / (A028310 n : ℚ) ^ (-1 : ℤ)

end

end A308783.P11630414725976226539

/-! ## A308783.P17827021889588726257

`n*(A347655(n)-A347649(n))`
-/

namespace A308783.P17827021889588726257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A347655 n - A347649 n)

end

end A308783.P17827021889588726257

/-! ## A308783.P17584227345598036804

`n*(A347655(n)-(A347648(n)+A307815(n)))`
-/

namespace A308783.P17584227345598036804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A347655 n - (A347648 n + A307815 n))

end

end A308783.P17584227345598036804

/-! ## A308783.P6764681585567349327

`n*(A347656(n)-(A347649(n)+A308840(n)))`
-/

namespace A308783.P6764681585567349327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A347656 n - (A347649 n + A308840 n))

end

end A308783.P6764681585567349327

/-!
# A308784: Primes p such that A001175(p) = 2*(p+1)/3.

The programs for A308784, there is no canonical definition to state claims against.
-/

/-! ## A308784.P17203265541659323958

`A216067(lt[A216062(n+1), A216120(3*n+1)])`
-/

namespace A308784.P17203265541659323958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216120 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216067 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A308784.P17203265541659323958

/-!
# A308785: Primes p such that A001175(p) = 2*(p+1)/7.

The programs for A308785, there is no canonical definition to state claims against.
-/

/-! ## A308785.P2527116925703953556

`filter[A125252(n+1), A022932(#)]`
-/

namespace A308785.P2527116925703953556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A308785.P2527116925703953556

/-! ## A308785.P2486085413954796261

`filter[A125252(n+1), A288855(#)]`
-/

namespace A308785.P2486085413954796261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288855 (f1 j).toNat = 1) n)

end

end A308785.P2486085413954796261

/-! ## A308785.P5837191064477544686

`p?[or(A125252(n+1), A308745(n))]`
-/

namespace A308785.P5837191064477544686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A125252 (n + 1)) (A308745 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A308785.P5837191064477544686

/-!
# A308787: Primes p such that A001175(p) = (p-1)/2.

The programs for A308787, there is no canonical definition to state claims against.
-/

/-! ## A308787.P2576459666005029151

`eq[2, n/A106291(n+1)]+1`
-/

namespace A308787.P2576459666005029151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A106291 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A308787.P2576459666005029151

/-! ## A308787.P15401539755523670244

`2*eq[n, A001175(2*n+1)]+1`
-/

namespace A308787.P15401539755523670244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308787.P15401539755523670244

/-! ## A308787.P18356831039297588409

`2*eq[n, A106291(2*n+1)]+1`
-/

namespace A308787.P18356831039297588409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308787.P18356831039297588409

/-! ## A308787.P1453838738603532992

`eq[A001175(n+1), A004525(n)]+1`
-/

namespace A308787.P1453838738603532992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A308787.P1453838738603532992

/-! ## A308787.P1037563448241060445

`eq[A001175(n+1), A006370(n)]+1`
-/

namespace A308787.P1037563448241060445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A308787.P1037563448241060445

/-!
# A308788: Primes p such that A001175(p) = (p-1)/3.

The programs for A308788, there is no canonical definition to state claims against.
-/

/-! ## A308788.P6291156465449637602

`3*eq[n, A001175(3*n+1)]+1`
-/

namespace A308788.P6291156465449637602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308788.P6291156465449637602

/-! ## A308788.P923630365682390243

`A016777(eq[n, A001175(3*n+1)])`
-/

namespace A308788.P923630365682390243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308788.P923630365682390243

/-! ## A308788.P3828523958736330818

`A306289(eq[n, A001175(3*n+1)])`
-/

namespace A308788.P3828523958736330818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308788.P3828523958736330818

/-! ## A308788.P11013746010467166089

`A330501(eq[n, A106291(3*n+1)])`
-/

namespace A308788.P11013746010467166089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308788.P11013746010467166089

/-!
# A308790: Primes p such that A001175(p) = (p-1)/5.

The programs for A308790, there is no canonical definition to state claims against.
-/

/-! ## A308790.P11754851534143788572

`p?[A001583(n+1)*A331160(A008765(n))]`
-/

namespace A308790.P11754851534143788572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001583 (n + 1) * A331160 (A008765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A308790.P11754851534143788572

/-!
# A308792: Primes p such that A001175(p) = (p-1)/7.

The programs for A308792, there is no canonical definition to state claims against.
-/

/-! ## A308792.P10172675491847630564

`A125253(eq[A079262(n), A111146(n)])`
-/

namespace A308792.P10172675491847630564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125253 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A308792.P10172675491847630564

/-!
# A308795: Primes p such that A001177(p) = (p-1)/2.

The programs for A308795, there is no canonical definition to state claims against.
-/

/-! ## A308795.P13453288200152184014

`A045344(eq[A001602(n+1), A102781(n+1)])`
-/

namespace A308795.P13453288200152184014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A308795.P13453288200152184014

/-! ## A308795.P9657501699862749169

`A065091(eq[A001602(n+1), A102781(n+1)])`
-/

namespace A308795.P9657501699862749169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A308795.P9657501699862749169

/-! ## A308795.P13273126142342297439

`A065091(eq[A001602(n+1), A130290(n+1)])`
-/

namespace A308795.P13273126142342297439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A308795.P13273126142342297439

/-! ## A308795.P3771960249220670390

`A065091(eq[2*A001602(n+1), A006093(n+1)])`
-/

namespace A308795.P3771960249220670390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A308795.P3771960249220670390

/-! ## A308795.P4593348630597094721

`A065091(eq[2, A006093(n+1)/A001602(n+1)])`
-/

namespace A308795.P4593348630597094721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A001602 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A308795.P4593348630597094721

/-!
# A308796: Primes p such that A001177(p) = (p-1)/3.

The programs for A308796, there is no canonical definition to state claims against.
-/

/-! ## A308796.P12937974192475459275

`p?[or(2, A308788(n+1))]`
-/

namespace A308796.P12937974192475459275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A308788 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A308796.P12937974192475459275

/-! ## A308796.P12159367261804708773

`filter[A308788(n+1), A347871(#)]`
-/

namespace A308796.P12159367261804708773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A308796.P12159367261804708773

/-! ## A308796.P2695723100944334160

`filter[A308788(n+1), A354028(#)]`
-/

namespace A308796.P2695723100944334160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A308796.P2695723100944334160

/-! ## A308796.P9533468030240273282

`filter[A308788(n+1), A354029(#)]`
-/

namespace A308796.P9533468030240273282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A308796.P9533468030240273282

/-! ## A308796.P17119928326578513675

`filter[A308788(n+1), A354033(#)]`
-/

namespace A308796.P17119928326578513675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354033 (f1 j).toNat = 1) n)

end

end A308796.P17119928326578513675

/-!
# A308797: Primes p such that A001177(p) = (p-1)/4.

The programs for A308797, there is no canonical definition to state claims against.
-/

/-! ## A308797.P2002801876830148795

`A045344(eq[4, A116514(n+1)])`
-/

namespace A308797.P2002801876830148795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308797.P2002801876830148795

/-! ## A308797.P10981447027325294465

`A065091(eq[4, A116514(n+1)])`
-/

namespace A308797.P10981447027325294465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308797.P10981447027325294465

/-! ## A308797.P10088848528746565839

`A000040(eq[4, A116514(n+1)]+1)`
-/

namespace A308797.P10088848528746565839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A308797.P10088848528746565839

/-! ## A308797.P3509545165562303018

`A073579(eq[4, A116514(n+1)]+1)`
-/

namespace A308797.P3509545165562303018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073579 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A308797.P3509545165562303018

/-! ## A308797.P12477783066135224058

`A008578(eq[4, A116514(n+1)]+2)`
-/

namespace A308797.P12477783066135224058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A308797.P12477783066135224058

/-!
# A308798: Primes p such that A001177(p) = (p-1)/5.

The programs for A308798, there is no canonical definition to state claims against.
-/

/-! ## A308798.P14854456456318477657

`filter[A308790(n+1), A347871(#)]`
-/

namespace A308798.P14854456456318477657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A308798.P14854456456318477657

/-! ## A308798.P9865388542049205093

`filter[A308790(n+1), A354028(#)]`
-/

namespace A308798.P9865388542049205093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A308798.P9865388542049205093

/-! ## A308798.P6017412272720820410

`filter[A308790(n+1), A354029(#)]`
-/

namespace A308798.P6017412272720820410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A308798.P6017412272720820410

/-! ## A308798.P7115069076368625661

`filter[A308790(n+1), A354033(#)]`
-/

namespace A308798.P7115069076368625661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354033 (f1 j).toNat = 1) n)

end

end A308798.P7115069076368625661

/-! ## A308798.P10089698891595638695

`filter[A308790(n+1), A354036(#)]`
-/

namespace A308798.P10089698891595638695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A308798.P10089698891595638695

