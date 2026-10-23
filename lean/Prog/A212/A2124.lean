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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A212400: Number of binary arrays of length n+11 with no more than 6 ones in any length 12 subsequence (=50% duty cycle).

The programs for A212400, there is no canonical definition to state claims against.
-/

/-! ## A212400.P11714161585399082317

`A212402(A052905(n+3))`
-/

namespace A212400.P11714161585399082317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A052905 (n + 3)).toNat

end

end A212400.P11714161585399082317

/-! ## A212400.P15223593466185071810

`A212402(A046691(n+4)-1)`
-/

namespace A212400.P15223593466185071810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A046691 (n + 4) - 1).toNat

end

end A212400.P15223593466185071810

/-! ## A212400.P16860433887861808161

`A212402(A000217(n+6)-5)`
-/

namespace A212400.P16860433887861808161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A000217 (n + 6) - 5).toNat

end

end A212400.P16860433887861808161

/-! ## A212400.P13322819560607193370

`A212402(A000124(n+6)-6)`
-/

namespace A212400.P13322819560607193370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A000124 (n + 6) - 6).toNat

end

end A212400.P13322819560607193370

/-! ## A212400.P1595477052916084513

`A212402(Δ[A264443(n+1)]-1)`
-/

namespace A212400.P1595477052916084513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (f1 (n + 1) - f1 n - 1).toNat

end

end A212400.P1595477052916084513

/-! ## A212400.P6218782724841704879

`A212402(A000096(n+7)-A004273(n+10))`
-/

namespace A212400.P6218782724841704879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A000096 (n + 7) - A004273 (n + 10)).toNat

end

end A212400.P6218782724841704879

/-! ## A212400.P13908270653929937134

`A212402(A133263(n+8)-A005843(n+11))`
-/

namespace A212400.P13908270653929937134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A133263 (n + 8) - A005843 (n + 11)).toNat

end

end A212400.P13908270653929937134

/-!
# A212401: Number of binary arrays of length n+13 with no more than 7 ones in any length 14 subsequence (=50% duty cycle).

The programs for A212401, there is no canonical definition to state claims against.
-/

/-! ## A212401.P4325367781260667515

`A212402(A055999(n+4))`
-/

namespace A212401.P4325367781260667515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A055999 (n + 4)).toNat

end

end A212401.P4325367781260667515

/-! ## A212401.P5492517151490664676

`A212402(A000124(n+7)-7)`
-/

namespace A212401.P5492517151490664676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A000124 (n + 7) - 7).toNat

end

end A212401.P5492517151490664676

/-! ## A212401.P7592748892584264009

`A212402(A000217(n+6)+n+1)`
-/

namespace A212401.P7592748892584264009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A212401.P7592748892584264009

/-! ## A212401.P16740969359859155798

`A212402(A167499(n+4)+A005408(n)+1)`
-/

namespace A212401.P16740969359859155798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A167499 (n + 4) + A005408 n + 1).toNat

end

end A212401.P16740969359859155798

/-! ## A212401.P4889667240105079110

`A212402(A167499(n+4)+A005843(n+1))`
-/

namespace A212401.P4889667240105079110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A167499 (n + 4) + A005843 (n + 1)).toNat

end

end A212401.P4889667240105079110

/-! ## A212401.P17895140317814867640

`A212402(A167614(n+4)+A005843(n+2))`
-/

namespace A212401.P17895140317814867640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A167614 (n + 4) + A005843 (n + 2)).toNat

end

end A212401.P17895140317814867640

/-!
# A212403: Number of binary arrays of length 2*n+1 with no more than n ones in any length 2n subsequence (=50% duty cycle).

The programs for A212403, the canonical program `A212403.P3018608665947174295` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212403 has offset 1).

The definition of A212403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212403.P3018608665947174295

`4^(n+1)+C(2*(n+1)-1, n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212403

/-- `4^(n+1)+C(2*(n+1)-1, n+1)` -/
def P3018608665947174295.Spec : Prop :=
  ∀ n, (P3018608665947174295.a n : ℤ) = A212403 (n + 1)

theorem P3018608665947174295.correct : P3018608665947174295.Spec := by
  intro n
  simp only [A212403, Nat.add_sub_cancel]

end A212403

/-! ## A212403.P8335326655319848486

`4*a(n-1)-A000108(n)` with `a(0)=5`
-/

namespace A212403.P8335326655319848486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  4 * a (n - 1) - A000108 n

end

end A212403.P8335326655319848486

namespace A212403

/-- `4*a(n-1)-A000108(n)` -/
def P8335326655319848486.Spec : Prop :=
  ∀ n, P8335326655319848486.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P15954267829621894354

`A001700(n)+2^(n+1)*2^(n+1)`
-/

namespace A212403.P15954267829621894354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + (2 ^ (n + 1) * 2 ^ (n + 1) : ℤ)

end

end A212403.P15954267829621894354

namespace A212403

/-- `A001700(n)+2^(n+1)*2^(n+1)` -/
def P15954267829621894354.Spec : Prop :=
  ∀ n, P15954267829621894354.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P3566163361628429790

`A032443(n+1)+A004171(n)`
-/

namespace A212403.P3566163361628429790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 (n + 1) + A004171 n

end

end A212403.P3566163361628429790

namespace A212403

/-- `A032443(n+1)+A004171(n)` -/
def P3566163361628429790.Spec : Prop :=
  ∀ n, P3566163361628429790.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P15837281332249167502

`A020707(2*n)+A001700(n)`
-/

namespace A212403.P15837281332249167502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (2 * n) + A001700 n

end

end A212403.P15837281332249167502

namespace A212403

/-- `A020707(2*n)+A001700(n)` -/
def P15837281332249167502.Spec : Prop :=
  ∀ n, P15837281332249167502.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P12001933264118538543

`or(A000302(n+1), A001700(n))`
-/

namespace A212403.P12001933264118538543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000302 (n + 1)) (A001700 n)

end

end A212403.P12001933264118538543

namespace A212403

/-- `or(A000302(n+1), A001700(n))` -/
def P12001933264118538543.Spec : Prop :=
  ∀ n, P12001933264118538543.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P16978778348626875653

`A011782(n+2)²+A001700(n)`
-/

namespace A212403.P16978778348626875653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) ^ 2 + A001700 n

end

end A212403.P16978778348626875653

namespace A212403

/-- `A011782(n+2)²+A001700(n)` -/
def P16978778348626875653.Spec : Prop :=
  ∀ n, P16978778348626875653.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P18362665323007513287

`A088218(n+1)+A000302(n+1)`
-/

namespace A212403.P18362665323007513287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + A000302 (n + 1)

end

end A212403.P18362665323007513287

namespace A212403

/-- `A088218(n+1)+A000302(n+1)` -/
def P18362665323007513287.Spec : Prop :=
  ∀ n, P18362665323007513287.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P14617121943975168825

`A164051(n+1)+A108958(n+1)`
-/

namespace A212403.P14617121943975168825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164051 (n + 1) + A108958 (n + 1)

end

end A212403.P14617121943975168825

namespace A212403

/-- `A164051(n+1)+A108958(n+1)` -/
def P14617121943975168825.Spec : Prop :=
  ∀ n, P14617121943975168825.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P10052407542152223270

`A032443(n+1)+2*A000302(n)`
-/

namespace A212403.P10052407542152223270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 (n + 1) + 2 * A000302 n

end

end A212403.P10052407542152223270

namespace A212403

/-- `A032443(n+1)+2*A000302(n)` -/
def P10052407542152223270.Spec : Prop :=
  ∀ n, P10052407542152223270.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P11060242088125595770

`A088218(n+1)+A020707(2*n)`
-/

namespace A212403.P11060242088125595770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + A020707 (2 * n)

end

end A212403.P11060242088125595770

namespace A212403

/-- `A088218(n+1)+A020707(2*n)` -/
def P11060242088125595770.Spec : Prop :=
  ∀ n, P11060242088125595770.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P4847889198569509446

`A151821(2*(n+1))+A001700(n)`
-/

namespace A212403.P4847889198569509446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (2 * (n + 1)) + A001700 n

end

end A212403.P4847889198569509446

namespace A212403

/-- `A151821(2*(n+1))+A001700(n)` -/
def P4847889198569509446.Spec : Prop :=
  ∀ n, P4847889198569509446.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P8121274232434725342

`A011782(2*n+3)+A001700(n)`
-/

namespace A212403.P8121274232434725342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 3) + A001700 n

end

end A212403.P8121274232434725342

namespace A212403

/-- `A011782(2*n+3)+A001700(n)` -/
def P8121274232434725342.Spec : Prop :=
  ∀ n, P8121274232434725342.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P4259727612048278041

`A027306(2*n+3)+A001700(n)`
-/

namespace A212403.P4259727612048278041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (2 * n + 3) + A001700 n

end

end A212403.P4259727612048278041

namespace A212403

/-- `A027306(2*n+3)+A001700(n)` -/
def P4259727612048278041.Spec : Prop :=
  ∀ n, P4259727612048278041.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P2093223011386605088

`A058622(2*n+3)+A001700(n)`
-/

namespace A212403.P2093223011386605088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (2 * n + 3) + A001700 n

end

end A212403.P2093223011386605088

namespace A212403

/-- `A058622(2*n+3)+A001700(n)` -/
def P2093223011386605088.Spec : Prop :=
  ∀ n, P2093223011386605088.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P12569317157648823053

`A088218(n+1)+A000079(n+1)²`
-/

namespace A212403.P12569317157648823053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + A000079 (n + 1) ^ 2

end

end A212403.P12569317157648823053

namespace A212403

/-- `A088218(n+1)+A000079(n+1)²` -/
def P12569317157648823053.Spec : Prop :=
  ∀ n, P12569317157648823053.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P16419450585657058570

`A088218(n+1)+A011782(n+2)²`
-/

namespace A212403.P16419450585657058570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + A011782 (n + 2) ^ 2

end

end A212403.P16419450585657058570

namespace A212403

/-- `A088218(n+1)+A011782(n+2)²` -/
def P16419450585657058570.Spec : Prop :=
  ∀ n, P16419450585657058570.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P1041261760542185376

`A131577(n+2)²+A088218(n+1)`
-/

namespace A212403.P1041261760542185376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 2) ^ 2 + A088218 (n + 1)

end

end A212403.P1041261760542185376

namespace A212403

/-- `A131577(n+2)²+A088218(n+1)` -/
def P1041261760542185376.Spec : Prop :=
  ∀ n, P1041261760542185376.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P1423989633049747431

`A032443(n+1)+2*A000079(n)²`
-/

namespace A212403.P1423989633049747431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 (n + 1) + 2 * A000079 n ^ 2

end

end A212403.P1423989633049747431

namespace A212403

/-- `A032443(n+1)+2*A000079(n)²` -/
def P1423989633049747431.Spec : Prop :=
  ∀ n, P1423989633049747431.a n = A212403 (n + 1)

end A212403

/-! ## A212403.P14972463310675515738

`A024036(n+1)+A088218(n+1)+1`
-/

namespace A212403.P14972463310675515738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 (n + 1) + (A088218 (n + 1) + 1)

end

end A212403.P14972463310675515738

namespace A212403

/-- `A024036(n+1)+A088218(n+1)+1` -/
def P14972463310675515738.Spec : Prop :=
  ∀ n, P14972463310675515738.a n = A212403 (n + 1)

end A212403

/-!
# A212404: Number of binary arrays of length 2*n+2 with no more than n ones in any length 2n subsequence (=50% duty cycle).

The programs for A212404, the canonical program `A212404.P7111923809220771208` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212404 has offset 1).

The definition of A212404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212404.P7111923809220771208

`2^(2*(n+1)+1)+C(2*(n+1)-2, n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212404

/-- `2^(2*(n+1)+1)+C(2*(n+1)-2, n+1)` -/
def P7111923809220771208.Spec : Prop :=
  ∀ n, (P7111923809220771208.a n : ℤ) = A212404 (n + 1)

theorem P7111923809220771208.correct : P7111923809220771208.Spec := by
  intro n
  simp only [A212404, Nat.add_sub_cancel]

end A212404

/-! ## A212404.P10514492863889483640

`A004171(n+1)+A001791(n)`
-/

namespace A212404.P10514492863889483640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (n + 1) + A001791 n

end

end A212404.P10514492863889483640

namespace A212404

/-- `A004171(n+1)+A001791(n)` -/
def P10514492863889483640.Spec : Prop :=
  ∀ n, P10514492863889483640.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P9890648003355905102

`A081294(n+2)+A001791(n)`
-/

namespace A212404.P9890648003355905102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (n + 2) + A001791 n

end

end A212404.P9890648003355905102

namespace A212404

/-- `A081294(n+2)+A001791(n)` -/
def P9890648003355905102.Spec : Prop :=
  ∀ n, P9890648003355905102.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P18415639072688649306

`A001791(n)+8*A000302(n)`
-/

namespace A212404.P18415639072688649306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + 8 * A000302 n

end

end A212404.P18415639072688649306

namespace A212404

/-- `A001791(n)+8*A000302(n)` -/
def P18415639072688649306.Spec : Prop :=
  ∀ n, P18415639072688649306.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P12269611508384057768

`A001791(n)+8*A000079(n)²`
-/

namespace A212404.P12269611508384057768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + 8 * A000079 n ^ 2

end

end A212404.P12269611508384057768

namespace A212404

/-- `A001791(n)+8*A000079(n)²` -/
def P12269611508384057768.Spec : Prop :=
  ∀ n, P12269611508384057768.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P18312179346512980107

`A011782(2*(n+2))+A001791(n)`
-/

namespace A212404.P18312179346512980107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * (n + 2)) + A001791 n

end

end A212404.P18312179346512980107

namespace A212404

/-- `A011782(2*(n+2))+A001791(n)` -/
def P18312179346512980107.Spec : Prop :=
  ∀ n, P18312179346512980107.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P13247633681782042963

`A001791(n)+A000079(2*n+3)`
-/

namespace A212404.P13247633681782042963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + A000079 (2 * n + 3)

end

end A212404.P13247633681782042963

namespace A212404

/-- `A001791(n)+A000079(2*n+3)` -/
def P13247633681782042963.Spec : Prop :=
  ∀ n, P13247633681782042963.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P16064889860754473669

`A202736(2*n+3)+A001791(n)`
-/

namespace A212404.P16064889860754473669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202736 (2 * n + 3) + A001791 n

end

end A212404.P16064889860754473669

namespace A212404

/-- `A202736(2*n+3)+A001791(n)` -/
def P16064889860754473669.Spec : Prop :=
  ∀ n, P16064889860754473669.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P3767950634141300200

`A004171(n+1)+n*A000108(n)`
-/

namespace A212404.P3767950634141300200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (n + 1) + (n : ℤ) * A000108 n

end

end A212404.P3767950634141300200

namespace A212404

/-- `A004171(n+1)+n*A000108(n)` -/
def P3767950634141300200.Spec : Prop :=
  ∀ n, P3767950634141300200.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P18289771130139796077

`A081654(n+1)+n*A000108(n)`
-/

namespace A212404.P18289771130139796077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081654 (n + 1) + (n : ℤ) * A000108 n

end

end A212404.P18289771130139796077

namespace A212404

/-- `A081654(n+1)+n*A000108(n)` -/
def P18289771130139796077.Spec : Prop :=
  ∀ n, P18289771130139796077.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P2122674981936756249

`A037952(2*n)+8*A000079(n)²`
-/

namespace A212404.P2122674981936756249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n) + 8 * A000079 n ^ 2

end

end A212404.P2122674981936756249

namespace A212404

/-- `A037952(2*n)+8*A000079(n)²` -/
def P2122674981936756249.Spec : Prop :=
  ∀ n, P2122674981936756249.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P13818242807077410959

`A020707(n)²/2+n*A000108(n)`
-/

namespace A212404.P13818242807077410959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020707 n ^ 2 : ℚ) / 2 + ((n : ℤ) * A000108 n : ℚ)

end

end A212404.P13818242807077410959

namespace A212404

/-- `A020707(n)²/2+n*A000108(n)` -/
def P13818242807077410959.Spec : Prop :=
  ∀ n, P13818242807077410959.a n = (A212404 (n + 1) : ℚ)

end A212404

/-! ## A212404.P15393793759496218988

`A037952(2*n)+A000079(2*n+3)`
-/

namespace A212404.P15393793759496218988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n) + A000079 (2 * n + 3)

end

end A212404.P15393793759496218988

namespace A212404

/-- `A037952(2*n)+A000079(2*n+3)` -/
def P15393793759496218988.Spec : Prop :=
  ∀ n, P15393793759496218988.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P3404430098347059381

`A274707(2*n+1)+8*A000302(n)`
-/

namespace A212404.P3404430098347059381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (2 * n + 1) + 8 * A000302 n

end

end A212404.P3404430098347059381

namespace A212404

/-- `A274707(2*n+1)+8*A000302(n)` -/
def P3404430098347059381.Spec : Prop :=
  ∀ n, P3404430098347059381.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P3525900191303593677

`A020707(2*n+1)+n*A000108(n)`
-/

namespace A212404.P3525900191303593677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (2 * n + 1) + (n : ℤ) * A000108 n

end

end A212404.P3525900191303593677

namespace A212404

/-- `A020707(2*n+1)+n*A000108(n)` -/
def P3525900191303593677.Spec : Prop :=
  ∀ n, P3525900191303593677.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P8312649085075640696

`A000079(n+2)²/2+n*A000108(n)`
-/

namespace A212404.P8312649085075640696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 2) ^ 2 : ℚ) / 2 + ((n : ℤ) * A000108 n : ℚ)

end

end A212404.P8312649085075640696

namespace A212404

/-- `A000079(n+2)²/2+n*A000108(n)` -/
def P8312649085075640696.Spec : Prop :=
  ∀ n, P8312649085075640696.a n = (A212404 (n + 1) : ℚ)

end A212404

/-! ## A212404.P12445838342371300764

`A037952(2*n)+A011782(A103517(n+1))`
-/

namespace A212404.P12445838342371300764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n) + A011782 (A103517 (n + 1)).toNat

end

end A212404.P12445838342371300764

namespace A212404

/-- `A037952(2*n)+A011782(A103517(n+1))` -/
def P12445838342371300764.Spec : Prop :=
  ∀ n, P12445838342371300764.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P3778689589379269123

`A004171(n+1)+A000984(n)-A000108(n)`
-/

namespace A212404.P3778689589379269123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (n + 1) + (A000984 n - A000108 n)

end

end A212404.P3778689589379269123

namespace A212404

/-- `A004171(n+1)+A000984(n)-A000108(n)` -/
def P3778689589379269123.Spec : Prop :=
  ∀ n, P3778689589379269123.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P18430035413433482561

`A004171(n+1)+A001700(n)-A000984(n)`
-/

namespace A212404.P18430035413433482561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (n + 1) + (A001700 n - A000984 n)

end

end A212404.P18430035413433482561

namespace A212404

/-- `A004171(n+1)+A001700(n)-A000984(n)` -/
def P18430035413433482561.Spec : Prop :=
  ∀ n, P18430035413433482561.a n = A212404 (n + 1)

end A212404

/-! ## A212404.P150370769980272320

`A081654(n+1)+A000984(n)-A000108(n)`
-/

namespace A212404.P150370769980272320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081654 (n + 1) + (A000984 n - A000108 n)

end

end A212404.P150370769980272320

namespace A212404

/-- `A081654(n+1)+A000984(n)-A000108(n)` -/
def P150370769980272320.Spec : Prop :=
  ∀ n, P150370769980272320.a n = A212404 (n + 1)

end A212404

/-!
# A212405: Number of binary arrays of length 2*n+3 with no more than n ones in any length 2n subsequence (=50% duty cycle).

The programs for A212405, there is no canonical definition to state claims against.
-/

/-! ## A212405.P2839106694779635521

`A212402(A052905(n)+9)`
-/

namespace A212405.P2839106694779635521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A052905 n + 9).toNat

end

end A212405.P2839106694779635521

/-! ## A212405.P8490542556963078630

`A212402(A055999(n)+10)`
-/

namespace A212405.P8490542556963078630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A055999 n + 10).toNat

end

end A212405.P8490542556963078630

/-! ## A212405.P12890138591322573818

`A212402(A167614(n+2)+1)`
-/

namespace A212405.P12890138591322573818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A167614 (n + 2) + 1).toNat

end

end A212405.P12890138591322573818

/-! ## A212405.P15888676268502927682

`A212402(A167499(n+2)-1)`
-/

namespace A212405.P15888676268502927682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A167499 (n + 2) - 1).toNat

end

end A212405.P15888676268502927682

/-! ## A212405.P16693814940270031437

`A212402(A000124(n+3)+3)`
-/

namespace A212405.P16693814940270031437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A000124 (n + 3) + 3).toNat

end

end A212405.P16693814940270031437

/-! ## A212405.P2788655986503463536

`A212402(A000217(n+3)+4)`
-/

namespace A212405.P2788655986503463536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A000217 (n + 3) + 4).toNat

end

end A212405.P2788655986503463536

/-! ## A212405.P9235487706423841999

`A212402(Δ[A264443(n)-n²])`
-/

namespace A212405.P9235487706423841999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (f1 (n + 1) - f1 n).toNat

end

end A212405.P9235487706423841999

/-!
# A212406: Number of binary arrays of length 2*n+4 with no more than n ones in any length 2n subsequence (=50% duty cycle).

The programs for A212406, there is no canonical definition to state claims against.
-/

/-! ## A212406.P11520770034644130569

`A212402(∑[a(n-1)+1])` with `a(0)=15, a(1)=5`
-/

namespace A212406.P11520770034644130569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212406.P11520770034644130569

/-! ## A212406.P4824692693979301721

`A212402(A167499(n+3))`
-/

namespace A212406.P4824692693979301721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A167499 (n + 3)).toNat

end

end A212406.P4824692693979301721

/-! ## A212406.P13438140853876835455

`A212402(A056000(n)+15)`
-/

namespace A212406.P13438140853876835455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A056000 n + 15).toNat

end

end A212406.P13438140853876835455

/-! ## A212406.P14844551915134901990

`A212402(A027379(n+2)+8)`
-/

namespace A212406.P14844551915134901990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A027379 (n + 2) + 8).toNat

end

end A212406.P14844551915134901990

/-! ## A212406.P12098996613538159102

`A212402(A038722(Δ[A264443(n)]))`
-/

namespace A212406.P12098996613538159102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A212406.P12098996613538159102

/-!
# A212407: Number of binary arrays of length 2*n+5 with no more than n ones in any length 2n subsequence (=50% duty cycle).

The programs for A212407, there is no canonical definition to state claims against.
-/

/-! ## A212407.P18001862238465302233

`A212402(A167499(n+4)+1)`
-/

namespace A212407.P18001862238465302233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A167499 (n + 4) + 1).toNat

end

end A212407.P18001862238465302233

/-! ## A212407.P9487678742716238389

`A212402(A000217(n+5)+6)`
-/

namespace A212407.P9487678742716238389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A000217 (n + 5) + 6).toNat

end

end A212407.P9487678742716238389

/-! ## A212407.P8763104172346492097

`A212402(A055998(n+3)+9)`
-/

namespace A212407.P8763104172346492097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A055998 (n + 3) + 9).toNat

end

end A212407.P8763104172346492097

/-! ## A212407.P15462552172753322550

`A212402(A046691(n+3)+10)`
-/

namespace A212407.P15462552172753322550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A046691 (n + 3) + 10).toNat

end

end A212407.P15462552172753322550

/-! ## A212407.P8186737903917460862

`A212402(A004767(n+4)+A000124(n+1))`
-/

namespace A212407.P8186737903917460862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A004767 (n + 4) + A000124 (n + 1)).toNat

end

end A212407.P8186737903917460862

/-! ## A212407.P16500376998893904270

`A212402(A167614(n+2)+A005843(n+6))`
-/

namespace A212407.P16500376998893904270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A167614 (n + 2) + A005843 (n + 6)).toNat

end

end A212407.P16500376998893904270

/-!
# A212408: Number of binary arrays of length 2*n+6 with no more than n ones in any length 2n subsequence (=50% duty cycle).

The programs for A212408, there is no canonical definition to state claims against.
-/

/-! ## A212408.P9041888551219152137

`A212402(A167499(n+5)+2)`
-/

namespace A212408.P9041888551219152137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A167499 (n + 5) + 2).toNat

end

end A212408.P9041888551219152137

/-! ## A212408.P15676640829223797697

`A212402(A167614(n+5)+4)`
-/

namespace A212408.P15676640829223797697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A167614 (n + 5) + 4).toNat

end

end A212408.P15676640829223797697

/-! ## A212408.P5915546558679887818

`A212402(A000124(n+6)+6)`
-/

namespace A212408.P5915546558679887818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A000124 (n + 6) + 6).toNat

end

end A212408.P5915546558679887818

/-! ## A212408.P4364700425618347597

`A212402(A000217(n+6)+7)`
-/

namespace A212408.P4364700425618347597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A000217 (n + 6) + 7).toNat

end

end A212408.P4364700425618347597

/-! ## A212408.P6817223137112336980

`A212402(A133263(n+4)+A005843(n+8))`
-/

namespace A212408.P6817223137112336980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A133263 (n + 4) + A005843 (n + 8)).toNat

end

end A212408.P6817223137112336980

/-! ## A212408.P5477836841184178986

`A212402(A133263(n+9)-A016777(n+6))`
-/

namespace A212408.P5477836841184178986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A133263 (n + 9) - A016777 (n + 6)).toNat

end

end A212408.P5477836841184178986

/-!
# A212409: Numbers m such that m, m' and m'' are in arithmetic progression, where m' and m'' are the first and second arithmetic derivatives of m.

The programs for A212409, there is no canonical definition to state claims against.
-/

/-! ## A212409.P396667653489430279

`eq[A068346(n), A168036(A004277(n))]`
-/

namespace A212409.P396667653489430279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212409.P396667653489430279

/-! ## A212409.P2070349460498510984

`eq[A068346(n), A168036(A004275(n+1))]`
-/

namespace A212409.P2070349460498510984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (A004275 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212409.P2070349460498510984

/-! ## A212409.P5624406528918336941

`eq[A068346(n), A168036(A028310(2*n))]`
-/

namespace A212409.P5624406528918336941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212409.P5624406528918336941

/-!
# A212411: G.f. satisfies: A(x) = 1 + x*A(1 - 1/A(x))^2.

The programs for A212411, there is no canonical definition to state claims against.
-/

/-! ## A212411.P15193224600932098998

`A125644(n)+A004526(A111140(n))`
-/

namespace A212411.P15193224600932098998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 n + A004526 (A111140 n).toNat

end

end A212411.P15193224600932098998

/-! ## A212411.P10296943463455383080

`or(A000035(n), A008619(A111140(n)))`
-/

namespace A212411.P10296943463455383080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A008619 (A111140 n).toNat)

end

end A212411.P10296943463455383080

/-! ## A212411.P14018259099130884059

`A045778(n+1)+A004526(A111140(n))`
-/

namespace A212411.P14018259099130884059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) + A004526 (A111140 n).toNat

end

end A212411.P14018259099130884059

/-!
# A212412: Parity of curling number of binary expansion of n.

The programs for A212412, there is no canonical definition to state claims against.
-/

/-! ## A212412.P8563666493989547959

`A000035(A181935(n))`
-/

namespace A212412.P8563666493989547959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A181935 n).toNat

end

end A212412.P8563666493989547959

/-! ## A212412.P3266788640286552914

`char[A212441(n+1)]`
-/

namespace A212412.P3266788640286552914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A212412.P3266788640286552914

/-! ## A212412.P8096536885613469029

`char[comp[A212440(n+1)]]`
-/

namespace A212412.P8096536885613469029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212440 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A212412.P8096536885613469029

/-! ## A212412.P12643352946717994150

`floor(A224764(n)/A224765(n))%2`
-/

namespace A212412.P12643352946717994150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A224764 n : ℚ) / (A224765 n : ℚ)⌋ 2

end

end A212412.P12643352946717994150

/-! ## A212412.P12618288256393182014

`A212439(n)%2`
-/

namespace A212412.P12618288256393182014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212439 n) 2

end

end A212412.P12618288256393182014

/-! ## A212412.P11056695497620277810

`A359770(A181935(n)²)`
-/

namespace A212412.P11056695497620277810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359770 (A181935 n ^ 2).toNat

end

end A212412.P11056695497620277810

/-! ## A212412.P16776498008262814919

`A212439(n)-A005843(n)`
-/

namespace A212412.P16776498008262814919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212439 n - A005843 n

end

end A212412.P16776498008262814919

/-! ## A212412.P661158706796985425

`and(A001846(n), A181935(n))`
-/

namespace A212412.P661158706796985425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A181935 n)

end

end A212412.P661158706796985425

/-! ## A212412.P11231814464499996738

`and(A007204(n), A181935(n))`
-/

namespace A212412.P11231814464499996738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A181935 n)

end

end A212412.P11231814464499996738

/-! ## A212412.P16838799699397428566

`and(A008349(n), A181935(n))`
-/

namespace A212412.P16838799699397428566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A181935 n)

end

end A212412.P16838799699397428566

/-! ## A212412.P13267426220328704521

`and(A008362(n), A181935(n))`
-/

namespace A212412.P13267426220328704521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A181935 n)

end

end A212412.P13267426220328704521

/-! ## A212412.P9226366908155908701

`and(A008417(n), A181935(n))`
-/

namespace A212412.P9226366908155908701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A181935 n)

end

end A212412.P9226366908155908701

/-! ## A212412.P5654330521613696445

`and(A008514(n), A181935(n))`
-/

namespace A212412.P5654330521613696445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A181935 n)

end

end A212412.P5654330521613696445

/-! ## A212412.P13489113771049805263

`and(A008516(n), A181935(n))`
-/

namespace A212412.P13489113771049805263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008516 n) (A181935 n)

end

end A212412.P13489113771049805263

/-! ## A212412.P4016112079647294731

`and(A014736(n), A181935(n))`
-/

namespace A212412.P4016112079647294731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014736 n) (A181935 n)

end

end A212412.P4016112079647294731

/-! ## A212412.P17648022402455320545

`and(A014769(n), A181935(n))`
-/

namespace A212412.P17648022402455320545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014769 n) (A181935 n)

end

end A212412.P17648022402455320545

/-! ## A212412.P4842567431096057525

`and(A016760(n), A181935(n))`
-/

namespace A212412.P4842567431096057525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A181935 n)

end

end A212412.P4842567431096057525

/-! ## A212412.P7109451611107538619

`and(A017286(n), A181935(n))`
-/

namespace A212412.P7109451611107538619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017286 n) (A181935 n)

end

end A212412.P7109451611107538619

/-! ## A212412.P8061321770042268603

`and(A017382(n), A181935(n))`
-/

namespace A212412.P8061321770042268603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017382 n) (A181935 n)

end

end A212412.P8061321770042268603

/-! ## A212412.P16378574515128783167

`and(A036088(n), A181935(n))`
-/

namespace A212412.P16378574515128783167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036088 n) (A181935 n)

end

end A212412.P16378574515128783167

/-!
# A212414: Number of conditionally dominated Boolean functions in n variables.

The programs for A212414, there is no canonical definition to state claims against.
-/

/-! ## A212414.P4633638055177837621

`A102449(n+1)-2`
-/

namespace A212414.P4633638055177837621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102449 (n + 1) - 2

end

end A212414.P4633638055177837621

/-!
# A212415: Number of (w,x,y,z) with all terms in {1,...,n} and w=y<=z.

The programs for A212415, the canonical program `A212415.P18343313608320936492` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212415 has offset 0).

The definition of A212415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212415.P16519309786546753455

`n*(5*n+2)*(n²-1)/24`
-/

namespace A212415.P16519309786546753455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (5 * n + 2) : ℤ) * ((n ^ 2 : ℤ) - 1) : ℚ) / 24

end

end A212415.P16519309786546753455

namespace A212415

/-- `n*(5*n+2)*(n²-1)/24` -/
def P16519309786546753455.Spec : Prop :=
  ∀ n, P16519309786546753455.a n = (A212415 n : ℚ)

theorem P16519309786546753455.correct : P16519309786546753455.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A212415, Nat.add_sub_cancel, A212415.P16519309786546753455.a, A212415.P18343313608320936492.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A212415, Nat.add_sub_cancel, A212415.P16519309786546753455.a, A212415.P18343313608320936492.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212415

/-! ## A212415.P18343313608320936492

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=17, a(4)=55`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212415

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P18343313608320936492.Spec : Prop :=
  ∀ n, P18343313608320936492.a n = A212415 n

theorem P18343313608320936492.correct : P18343313608320936492.Spec := by
  intro n
  simp only [A212415]

end A212415

/-! ## A212415.P11974869426417363455

`Δ[n*C(n+1, 4)]`
-/

namespace A212415.P11974869426417363455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A212415.P11974869426417363455

namespace A212415

/-- `Δ[n*C(n+1, 4)]` -/
def P11974869426417363455.Spec : Prop :=
  ∀ n, P11974869426417363455.a n = A212415 n

end A212415

/-! ## A212415.P4878540788243881007

`∑[∑[∑[a(n-1)+5]]]` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A212415.P4878540788243881007
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212415.P4878540788243881007

namespace A212415

/-- `∑[∑[∑[a(n-1)+5]]]` -/
def P4878540788243881007.Spec : Prop :=
  ∀ n, (P4878540788243881007.a n : ℤ) = A212415 n

end A212415

/-! ## A212415.P11448942673939300734

`∑[∑[∑[ogf((3x^2+2x^3)/(1-2x+x^2))]]]`
-/

namespace A212415.P11448942673939300734
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 2] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212415.P11448942673939300734

namespace A212415

/-- `∑[∑[∑[ogf((3x^2+2x^3)/(1-2x+x^2))]]]` -/
def P11448942673939300734.Spec : Prop :=
  ∀ n, P11448942673939300734.a n = A212415 n

end A212415

/-! ## A212415.P17107837789228948233

`∑[A004068(n)-n²]`
-/

namespace A212415.P17107837789228948233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212415.P17107837789228948233

namespace A212415

/-- `∑[A004068(n)-n²]` -/
def P17107837789228948233.Spec : Prop :=
  ∀ n, P17107837789228948233.a n = A212415 n

end A212415

/-! ## A212415.P11490225112395832105

`∑[A203552(n)-∑[n]]`
-/

namespace A212415.P11490225112395832105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212415.P11490225112395832105

namespace A212415

/-- `∑[A203552(n)-∑[n]]` -/
def P11490225112395832105.Spec : Prop :=
  ∀ n, P11490225112395832105.a n = A212415 n

end A212415

/-! ## A212415.P315351511976172904

`A002418(n)-A002411(n)`
-/

namespace A212415.P315351511976172904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 n - A002411 n

end

end A212415.P315351511976172904

namespace A212415

/-- `A002418(n)-A002411(n)` -/
def P315351511976172904.Spec : Prop :=
  ∀ n, P315351511976172904.a n = A212415 n

end A212415

/-! ## A212415.P7557530232988989959

`A001621(n)-A005582(n)`
-/

namespace A212415.P7557530232988989959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 n - A005582 n

end

end A212415.P7557530232988989959

namespace A212415

/-- `A001621(n)-A005582(n)` -/
def P7557530232988989959.Spec : Prop :=
  ∀ n, P7557530232988989959.a n = A212415 n

end A212415

/-! ## A212415.P9049332596983207904

`A071238(n)-A002817(n)`
-/

namespace A212415.P9049332596983207904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n - A002817 n

end

end A212415.P9049332596983207904

namespace A212415

/-- `A071238(n)-A002817(n)` -/
def P9049332596983207904.Spec : Prop :=
  ∀ n, P9049332596983207904.a n = A212415 n

end A212415

/-! ## A212415.P9548730345110268984

`A330700(n)-A086602(n)`
-/

namespace A212415.P9548730345110268984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330700 n - A086602 n

end

end A212415.P9548730345110268984

namespace A212415

/-- `A330700(n)-A086602(n)` -/
def P9548730345110268984.Spec : Prop :=
  ∀ n, P9548730345110268984.a n = A212415 n

end A212415

/-! ## A212415.P11576984749646876688

`A086601(n)-A363256(n)`
-/

namespace A212415.P11576984749646876688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086601 n - A363256 n

end

end A212415.P11576984749646876688

namespace A212415

/-- `A086601(n)-A363256(n)` -/
def P11576984749646876688.Spec : Prop :=
  ∀ n, P11576984749646876688.a n = A212415 n

end A212415

/-! ## A212415.P3634081257339678731

`A154323(n)-A368881(n)`
-/

namespace A212415.P3634081257339678731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n - A368881 n

end

end A212415.P3634081257339678731

namespace A212415

/-- `A154323(n)-A368881(n)` -/
def P3634081257339678731.Spec : Prop :=
  ∀ n, P3634081257339678731.a n = A212415 n

end A212415

/-! ## A212415.P15429090586004072197

`A039623(n+1)-A008779(n)`
-/

namespace A212415.P15429090586004072197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039623 (n + 1) - A008779 n

end

end A212415.P15429090586004072197

namespace A212415

/-- `A039623(n+1)-A008779(n)` -/
def P15429090586004072197.Spec : Prop :=
  ∀ n, P15429090586004072197.a n = A212415 n

end A212415

/-! ## A212415.P1598309361365309893

`A006528(n)-A055795(n+1)`
-/

namespace A212415.P1598309361365309893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n - A055795 (n + 1)

end

end A212415.P1598309361365309893

namespace A212415

/-- `A006528(n)-A055795(n+1)` -/
def P1598309361365309893.Spec : Prop :=
  ∀ n, P1598309361365309893.a n = A212415 n

end A212415

/-! ## A212415.P7314486049210863121

`A007715(n+1)-A081436(n)`
-/

namespace A212415.P7314486049210863121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007715 (n + 1) - A081436 n

end

end A212415.P7314486049210863121

namespace A212415

/-- `A007715(n+1)-A081436(n)` -/
def P7314486049210863121.Spec : Prop :=
  ∀ n, P7314486049210863121.a n = A212415 n

end A212415

/-! ## A212415.P8178189249631575571

`A185355(n+1)-A002418(n)`
-/

namespace A212415.P8178189249631575571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185355 (n + 1) - A002418 n

end

end A212415.P8178189249631575571

namespace A212415

/-- `A185355(n+1)-A002418(n)` -/
def P8178189249631575571.Spec : Prop :=
  ∀ n, P8178189249631575571.a n = A212415 n

end A212415

/-! ## A212415.P6916300706272297153

`∑[∑[A005475(n)]-A005475(n)]`
-/

namespace A212415.P6916300706272297153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212415.P6916300706272297153

namespace A212415

/-- `∑[∑[A005475(n)]-A005475(n)]` -/
def P6916300706272297153.Spec : Prop :=
  ∀ n, P6916300706272297153.a n = A212415 n

end A212415

/-! ## A212415.P9638352056234693186

`A006322(n+1)-A100182(n+1)`
-/

namespace A212415.P9638352056234693186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (n + 1) - A100182 (n + 1)

end

end A212415.P9638352056234693186

namespace A212415

/-- `A006322(n+1)-A100182(n+1)` -/
def P9638352056234693186.Spec : Prop :=
  ∀ n, P9638352056234693186.a n = A212415 n

end A212415

/-! ## A212415.P11158992882230081397

`Δ[n*∑[C(n, 3)]]`
-/

namespace A212415.P11158992882230081397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A212415.P11158992882230081397

namespace A212415

/-- `Δ[n*∑[C(n, 3)]]` -/
def P11158992882230081397.Spec : Prop :=
  ∀ n, P11158992882230081397.a n = A212415 n

end A212415

/-!
# A212416: Number of free poly-IH7-tiles (holes allowed) with n cells.

The programs for A212416, there is no canonical definition to state claims against.
-/

/-! ## A212416.P8313074454068216604

`A014589(A029738(n+1))+A001207(n+1)`
-/

namespace A212416.P8313074454068216604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 (A029738 (n + 1)).toNat + A001207 (n + 1)

end

end A212416.P8313074454068216604

/-! ## A212416.P4066903823912312838

`A350386(A003086(n+1))+A001207(n+1)`
-/

namespace A212416.P4066903823912312838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350386 (A003086 (n + 1)).toNat + A001207 (n + 1)

end

end A212416.P4066903823912312838

/-!
# A212417: Size of the equivalence class of S_n containing the identity permutation under transformations of positionally adjacent elements of the form abc <--> acb <--> bac where a

The programs for A212417, there is no canonical definition to state claims against.
-/

/-! ## A212417.P10614104904386301205

`A130275(n)/A277427(A130275(n))`
-/

namespace A212417.P10614104904386301205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130275 n : ℚ) / (A277427 (A130275 n).toNat : ℚ)

end

end A212417.P10614104904386301205

/-! ## A212417.P15507366833267634906

`A004526(A107991(n+1)+A090932(n))`
-/

namespace A212417.P15507366833267634906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A107991 (n + 1) + A090932 n).toNat

end

end A212417.P15507366833267634906

/-! ## A212417.P2276224241221365122

`A029578(A107991(n+1)+A090932(n))`
-/

namespace A212417.P2276224241221365122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A107991 (n + 1) + A090932 n).toNat

end

end A212417.P2276224241221365122

/-! ## A212417.P7315948458253091302

`A060681(A107991(n+1)+A090932(n))`
-/

namespace A212417.P7315948458253091302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A107991 (n + 1) + A090932 n).toNat

end

end A212417.P7315948458253091302

/-!
# A212418: Size of the equivalence class of S_n containing the identity permutation under transformations of positionally adjacent elements of the form abc <--> acb <--> cba where a

The programs for A212418, there is no canonical definition to state claims against.
-/

/-! ## A212418.P3198787565562653866

`∑{d}[A000988(n), A333764(#)]`
-/

namespace A212418.P3198787565562653866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A333764 d

end

end A212418.P3198787565562653866

/-! ## A212418.P15947183452091090293

`A230980(A032074(n+1))+1`
-/

namespace A212418.P15947183452091090293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A032074 (n + 1)).toNat + 1

end

end A212418.P15947183452091090293

/-! ## A212418.P10483188305189691458

`A133030(A324739(n+1)-n)`
-/

namespace A212418.P10483188305189691458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133030 (A324739 (n + 1) - (n : ℤ)).toNat

end

end A212418.P10483188305189691458

/-!
# A212419: Size of the equivalence class of S_n containing the identity permutation under transformations of positionally adjacent elements of the form abc <--> acb <--> bac <--> cba, where a

The programs for A212419, there is no canonical definition to state claims against.
-/

/-! ## A212419.P17252452334996656347

`n!+1-A210671(n)`
-/

namespace A212419.P17252452334996656347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + 1 : ℤ) - A210671 n

end

end A212419.P17252452334996656347

/-! ## A212419.P14181885309663588586

`A038507(n)-A210671(n)`
-/

namespace A212419.P14181885309663588586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 n - A210671 n

end

end A212419.P14181885309663588586

/-! ## A212419.P14863011678612018341

`A000142(n)+1-A210671(n)`
-/

namespace A212419.P14863011678612018341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (1 - A210671 n)

end

end A212419.P14863011678612018341

/-! ## A212419.P6128109292893087717

`∏[A007318(∑[n]+1)]+1-A210671(n)`
-/

namespace A212419.P6128109292893087717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1 - A210671 n

end

end A212419.P6128109292893087717

/-! ## A212419.P414888928490979672

`∏{d}[floor(2^(n-1)), A000005(#)]+1-A210671(n)`
-/

namespace A212419.P414888928490979672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000005 d + 1 - A210671 n

end

end A212419.P414888928490979672

/-!
# A212420: Known primes such that there are no pairwise coprime solutions to the Diophantine equation of the form x^3 + y^3 = p^a z^n with a >= 1 an integer and n >= p^(2p) prime.

The programs for A212420, there is no canonical definition to state claims against.
-/

/-! ## A212420.P16102810735981756024

`p?[A243907(A287962(n+1)+2)]`
-/

namespace A212420.P16102810735981756024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243907 (A287962 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212420.P16102810735981756024

/-!
# A212421: Central coefficients of triangle A096815.

The programs for A212421, there is no canonical definition to state claims against.
-/

/-! ## A212421.P12526236360865717518

`A255436(n+2)+A196025(n+1)`
-/

namespace A212421.P12526236360865717518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255436 (n + 2) + A196025 (n + 1)

end

end A212421.P12526236360865717518

/-! ## A212421.P2398713757265693721

`A181360(n)-A022307(A000108(n))`
-/

namespace A212421.P2398713757265693721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181360 n - A022307 (A000108 n).toNat

end

end A212421.P2398713757265693721

/-! ## A212421.P16625572368613834900

`A096815(∑[4*n])`
-/

namespace A212421.P16625572368613834900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096815 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212421.P16625572368613834900

/-!
# A212422: Sums involving triangle A096815.

The programs for A212422, there is no canonical definition to state claims against.
-/

/-! ## A212422.P13680070684976311731

`A309237(n)+A001222(3*n!)`
-/

namespace A212422.P13680070684976311731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309237 n + A001222 (3 * Nat.factorial n)

end

end A212422.P13680070684976311731

/-! ## A212422.P3285284771695165425

`A350226(A350271(n+1))+A309237(n)`
-/

namespace A212422.P3285284771695165425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350226 (A350271 (n + 1)).toNat + A309237 n

end

end A212422.P3285284771695165425

/-! ## A212422.P11779727842736666530

`A105518(A137195(n+1))`
-/

namespace A212422.P11779727842736666530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A137195 (n + 1)).toNat

end

end A212422.P11779727842736666530

/-!
# A212423: Frobenius pseudoprimes == 2,3 (mod 5) with respect to Fibonacci polynomial x^2 - x - 1.

The programs for A212423, there is no canonical definition to state claims against.
-/

/-! ## A212423.P4085653966932542226

`∩[A212424(n+1), A217255(n+1)]`
-/

namespace A212423.P4085653966932542226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P4085653966932542226

/-! ## A212423.P15712834697900424839

`∩[A212424(n+1), A217719(n+1)]`
-/

namespace A212423.P15712834697900424839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P15712834697900424839

/-! ## A212423.P13337384017437842449

`∩[A217255(n+1), A337625(n+1)]`
-/

namespace A212423.P13337384017437842449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P13337384017437842449

/-! ## A212423.P2125257416051474910

`∩[A217719(n+1), A337625(n+1)]`
-/

namespace A212423.P2125257416051474910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P2125257416051474910

/-! ## A212423.P2371661118924658253

`∩[A005845(n+1), A217255(n+1)]`
-/

namespace A212423.P2371661118924658253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P2371661118924658253

/-! ## A212423.P209100214788980059

`∩[A005845(n+1), A217719(n+1)]`
-/

namespace A212423.P209100214788980059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P209100214788980059

/-! ## A212423.P9376044781913347186

`∩[A217255(n+1), A220292(n+1)]`
-/

namespace A212423.P9376044781913347186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P9376044781913347186

/-! ## A212423.P8473033390737226731

`∩[A217719(n+1), A220292(n+1)]`
-/

namespace A212423.P8473033390737226731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P8473033390737226731

/-! ## A212423.P16998385738562327516

`∩[A081264(n+1), A217255(n+1)]`
-/

namespace A212423.P16998385738562327516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P16998385738562327516

/-! ## A212423.P4524777229385950362

`∩[A081264(n+1), A217719(n+1)]`
-/

namespace A212423.P4524777229385950362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P4524777229385950362

/-! ## A212423.P11321155046595819948

`∩[A081264(n+1), A094395(n+1)]`
-/

namespace A212423.P11321155046595819948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P11321155046595819948

/-! ## A212423.P17943325141361043823

`∩[A081264(n+1), A094411(n+1)]`
-/

namespace A212423.P17943325141361043823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P17943325141361043823

/-! ## A212423.P16536127458114387806

`∩[A094395(n+1), A212424(n+1)]`
-/

namespace A212423.P16536127458114387806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P16536127458114387806

/-! ## A212423.P1924161245587994719

`∩[A094411(n+1), A212424(n+1)]`
-/

namespace A212423.P1924161245587994719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P1924161245587994719

/-! ## A212423.P6226595437198171088

`∩[A094395(n+1), A217255(n+1)]`
-/

namespace A212423.P6226595437198171088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P6226595437198171088

/-! ## A212423.P10460370492584588167

`∩[A094411(n+1), A217255(n+1)]`
-/

namespace A212423.P10460370492584588167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P10460370492584588167

/-! ## A212423.P6640819725885426868

`∩[A094395(n+1), A217719(n+1)]`
-/

namespace A212423.P6640819725885426868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P6640819725885426868

/-! ## A212423.P17264958470231903865

`∩[A094411(n+1), A217719(n+1)]`
-/

namespace A212423.P17264958470231903865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P17264958470231903865

/-! ## A212423.P11463465556269136829

`∩[A094395(n+1), A220292(n+1)]`
-/

namespace A212423.P11463465556269136829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P11463465556269136829

/-! ## A212423.P7351100247353199224

`∩[A094411(n+1), A220292(n+1)]`
-/

namespace A212423.P7351100247353199224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212423.P7351100247353199224

/-!
# A212424: Frobenius pseudoprimes with respect to Fibonacci polynomial x^2 - x - 1.

The programs for A212424, there is no canonical definition to state claims against.
-/

/-! ## A212424.P6329235602041449667

`∪[A212423(n+1), A319168(n+1)]`
-/

namespace A212424.P6329235602041449667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P6329235602041449667

/-! ## A212424.P18315001098718387250

`∩[A005845(n+1), A081264(n+1)]`
-/

namespace A212424.P18315001098718387250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P18315001098718387250

/-! ## A212424.P10917235716049123294

`∩[A081264(n+1), A337625(n+1)]`
-/

namespace A212424.P10917235716049123294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P10917235716049123294

/-! ## A212424.P237378278247252275

`∩[A081264(n+1), A337627(n+1)]`
-/

namespace A212424.P237378278247252275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P237378278247252275

/-! ## A212424.P8929128534911114899

`∩[A081264(n+1), A335670(n+1)]`
-/

namespace A212424.P8929128534911114899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P8929128534911114899

/-! ## A212424.P10007019558198417155

`∩[A005845(n+1), A090820(n+1)]`
-/

namespace A212424.P10007019558198417155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P10007019558198417155

/-! ## A212424.P5466784404913702780

`∩[A081264(n+1), A090820(n+1)]`
-/

namespace A212424.P5466784404913702780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P5466784404913702780

/-! ## A212424.P1902158318909162427

`∩[A090820(n+1), A335670(n+1)]`
-/

namespace A212424.P1902158318909162427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P1902158318909162427

/-! ## A212424.P16610627814071801581

`∩[A090820(n+1), A337625(n+1)]`
-/

namespace A212424.P16610627814071801581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P16610627814071801581

/-! ## A212424.P12838138185609899260

`∩[A090820(n+1), A337627(n+1)]`
-/

namespace A212424.P12838138185609899260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P12838138185609899260

/-! ## A212424.P11738988755970161869

`∩[A005845(n+1), A241505(n+1)]`
-/

namespace A212424.P11738988755970161869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P11738988755970161869

/-! ## A212424.P5206990187459671049

`∩[A241505(n+1), A335670(n+1)]`
-/

namespace A212424.P5206990187459671049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P5206990187459671049

/-! ## A212424.P18313760837329740035

`∩[A241505(n+1), A337625(n+1)]`
-/

namespace A212424.P18313760837329740035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P18313760837329740035

/-! ## A212424.P13284338761195670531

`∩[A241505(n+1), A337627(n+1)]`
-/

namespace A212424.P13284338761195670531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P13284338761195670531

/-! ## A212424.P7872011746222898834

`∩[A005845(n+1), A049062(n+1)]`
-/

namespace A212424.P7872011746222898834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P7872011746222898834

/-! ## A212424.P3217309639779349723

`∩[A049062(n+1), A081264(n+1)]`
-/

namespace A212424.P3217309639779349723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P3217309639779349723

/-! ## A212424.P13026852161406561733

`∩[A049062(n+1), A241505(n+1)]`
-/

namespace A212424.P13026852161406561733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P13026852161406561733

/-! ## A212424.P2213859575787328362

`∩[A049062(n+1), A335670(n+1)]`
-/

namespace A212424.P2213859575787328362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P2213859575787328362

/-! ## A212424.P16673108042870620327

`∩[A049062(n+1), A337625(n+1)]`
-/

namespace A212424.P16673108042870620327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P16673108042870620327

/-! ## A212424.P16624729520066817707

`∩[A049062(n+1), A337627(n+1)]`
-/

namespace A212424.P16624729520066817707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212424.P16624729520066817707

/-!
# A212425: G.f. satisfies: A(x) = ( x + A(A(x)) )^3 where g.f. A(x) = Sum_{n>=1} a(n)*x^(8*n-5).

The programs for A212425, there is no canonical definition to state claims against.
-/

/-! ## A212425.P14584715787113844663

`(2*(n+1)-1)*A212426(n+1)`
-/

namespace A212425.P14584715787113844663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * A212426 (n + 1)

end

end A212425.P14584715787113844663

/-! ## A212425.P13687340814250767432

`A212426(n+1)*A005408(n)`
-/

namespace A212425.P13687340814250767432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212426 (n + 1) * A005408 n

end

end A212425.P13687340814250767432

/-! ## A212425.P11875128567886528594

`A212426(n+1)*A348581(A028560(2*n+1))`
-/

namespace A212425.P11875128567886528594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212426 (n + 1) * A348581 (A028560 (2 * n + 1)).toNat

end

end A212425.P11875128567886528594

/-! ## A212425.P17747445227086392302

`A212426(n+1)*A222231(A222231(2*n+1))`
-/

namespace A212425.P17747445227086392302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212426 (n + 1) * A222231 (A222231 (2 * n + 1)).toNat

end

end A212425.P17747445227086392302

/-! ## A212425.P11124266971772940656

`A212426(n+1)*A344616(A100484(2*(n+1)))`
-/

namespace A212425.P11124266971772940656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212426 (n + 1) * A344616 (A100484 (2 * (n + 1))).toNat

end

end A212425.P11124266971772940656

/-!
# A212426: a(n) = A212425(n) / (2*n-1).

The programs for A212426, there is no canonical definition to state claims against.
-/

/-! ## A212426.P12364978244196022801

`A212425(n+1)/(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212426.P12364978244196022801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212425 (n + 1) : ℚ) / ((2 * (n + 1) : ℤ) - 1 : ℚ)

end

end A212426.P12364978244196022801

/-! ## A212426.P1988229161260092049

`round(A212425(n+1)/A005408(n))`
-/

namespace A212426.P1988229161260092049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A212425 (n + 1) : ℚ) / (A005408 n : ℚ))

end

end A212426.P1988229161260092049

/-! ## A212426.P529203535377120951

`or(A212425(n+1)/A005408(n), A000007(n))`
-/

namespace A212426.P529203535377120951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A212425 (n + 1) : ℚ) / (A005408 n : ℚ))) (A000007 n)

end

end A212426.P529203535377120951

/-! ## A212426.P13792434767097432905

`(A212425(n+1)/A005408(n))^A000041(C(2, n+2))`
-/

namespace A212426.P13792434767097432905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A212425 (n + 1) : ℚ) / (A005408 n : ℚ)) ^ (A000041 (Nat.choose 2 (n + 2)) : ℤ)

end

end A212426.P13792434767097432905

/-!
# A212427: a(n) = 17*n + A000217(n-1).

The programs for A212427, the canonical program `A212427.P12696177405169403616` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212427 has offset 0).

The definition of A212427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212427.P10514941599081272771

`n*(n+33)/2`
-/

namespace A212427.P10514941599081272771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 33) : ℚ) / 2

end

end A212427.P10514941599081272771

namespace A212427

/-- `n*(n+33)/2` -/
def P10514941599081272771.Spec : Prop :=
  ∀ n, P10514941599081272771.a n = (A212427 n : ℚ)

theorem P10514941599081272771.correct : P10514941599081272771.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A212427, Nat.add_sub_cancel, A212427.P10514941599081272771.a, A212427.P12696177405169403616.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A212427, Nat.add_sub_cancel, A212427.P10514941599081272771.a, A212427.P12696177405169403616.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212427

/-! ## A212427.P12696177405169403616

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=17, a(2)=35`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212427

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P12696177405169403616.Spec : Prop :=
  ∀ n, P12696177405169403616.a n = A212427 n

theorem P12696177405169403616.correct : P12696177405169403616.Spec := by
  intro n
  simp only [A212427]

end A212427

/-! ## A212427.P3584082497985429984

`record[C(n, 2)-16*n]`
-/

namespace A212427.P3584082497985429984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (16 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212427.P3584082497985429984

namespace A212427

/-- `record[C(n, 2)-16*n]` -/
def P3584082497985429984.Spec : Prop :=
  ∀ n, P3584082497985429984.a n = A212427 n

end A212427

/-! ## A212427.P18260208251765996774

`record[(n-33)*n/2]`
-/

namespace A212427.P18260208251765996774
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 33 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212427.P18260208251765996774

namespace A212427

/-- `record[(n-33)*n/2]` -/
def P18260208251765996774.Spec : Prop :=
  ∀ n, P18260208251765996774.a n = (A212427 n : ℚ)

end A212427

/-! ## A212427.P11415901533677294551

`n+a(n-1)+16` with `a(0)=0`
-/

namespace A212427.P11415901533677294551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n + a (n - 1) + 16

end

end A212427.P11415901533677294551

namespace A212427

/-- `n+a(n-1)+16` -/
def P11415901533677294551.Spec : Prop :=
  ∀ n, (P11415901533677294551.a n : ℤ) = A212427 n

end A212427

/-! ## A212427.P2424398084926044969

`C(n, 2)+18*n-n`
-/

namespace A212427.P2424398084926044969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 18 * n : ℤ) - (n : ℤ)

end

end A212427.P2424398084926044969

namespace A212427

/-- `C(n, 2)+18*n-n` -/
def P2424398084926044969.Spec : Prop :=
  ∀ n, P2424398084926044969.a n = A212427 n

end A212427

/-! ## A212427.P16868365823813850604

`A132758(n)+n`
-/

namespace A212427.P16868365823813850604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132758 n + (n : ℤ)

end

end A212427.P16868365823813850604

namespace A212427

/-- `A132758(n)+n` -/
def P16868365823813850604.Spec : Prop :=
  ∀ n, P16868365823813850604.a n = A212427 n

end A212427

/-! ## A212427.P1671508291480866992

`A212428(n)-n`
-/

namespace A212427.P1671508291480866992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212428 n - (n : ℤ)

end

end A212427.P1671508291480866992

namespace A212427

/-- `A212428(n)-n` -/
def P1671508291480866992.Spec : Prop :=
  ∀ n, P1671508291480866992.a n = A212427 n

end A212427

/-! ## A212427.P561219906837814737

`A132757(n)+2*n`
-/

namespace A212427.P561219906837814737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132757 n + (2 * n : ℤ)

end

end A212427.P561219906837814737

namespace A212427

/-- `A132757(n)+2*n` -/
def P561219906837814737.Spec : Prop :=
  ∀ n, P561219906837814737.a n = A212427 n

end A212427

/-! ## A212427.P641420447861152010

`A132756(n)+3*n`
-/

namespace A212427.P641420447861152010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132756 n + (3 * n : ℤ)

end

end A212427.P641420447861152010

namespace A212427

/-- `A132756(n)+3*n` -/
def P641420447861152010.Spec : Prop :=
  ∀ n, P641420447861152010.a n = A212427 n

end A212427

/-! ## A212427.P8403666409309133032

`A132773(n)/2+n`
-/

namespace A212427.P8403666409309133032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132773 n : ℚ) / 2 + (n : ℚ)

end

end A212427.P8403666409309133032

namespace A212427

/-- `A132773(n)/2+n` -/
def P8403666409309133032.Spec : Prop :=
  ∀ n, P8403666409309133032.a n = (A212427 n : ℚ)

end A212427

/-! ## A212427.P7309126936643702245

`A132755(n)+4*n`
-/

namespace A212427.P7309126936643702245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132755 n + (4 * n : ℤ)

end

end A212427.P7309126936643702245

namespace A212427

/-- `A132755(n)+4*n` -/
def P7309126936643702245.Spec : Prop :=
  ∀ n, P7309126936643702245.a n = A212427 n

end A212427

/-! ## A212427.P11245843736770440025

`A132754(n)+5*n`
-/

namespace A212427.P11245843736770440025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132754 n + (5 * n : ℤ)

end

end A212427.P11245843736770440025

namespace A212427

/-- `A132754(n)+5*n` -/
def P11245843736770440025.Spec : Prop :=
  ∀ n, P11245843736770440025.a n = A212427 n

end A212427

/-! ## A212427.P6737320214564648533

`16*n+A000217(n)`
-/

namespace A212427.P6737320214564648533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * n : ℤ) + A000217 n

end

end A212427.P6737320214564648533

namespace A212427

/-- `16*n+A000217(n)` -/
def P6737320214564648533.Spec : Prop :=
  ∀ n, P6737320214564648533.a n = A212427 n

end A212427

/-! ## A212427.P6704399484329882837

`A008597(n)+A000096(n)`
-/

namespace A212427.P6704399484329882837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 n + A000096 n

end

end A212427.P6704399484329882837

namespace A212427

/-- `A008597(n)+A000096(n)` -/
def P6704399484329882837.Spec : Prop :=
  ∀ n, P6704399484329882837.a n = A212427 n

end A212427

/-! ## A212427.P481184604650970036

`A055998(n)+A008596(n)`
-/

namespace A212427.P481184604650970036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A008596 n

end

end A212427.P481184604650970036

namespace A212427

/-- `A055998(n)+A008596(n)` -/
def P481184604650970036.Spec : Prop :=
  ∀ n, P481184604650970036.a n = A212427 n

end A212427

/-! ## A212427.P15184352031597676734

`A055999(n)+A008595(n)`
-/

namespace A212427.P15184352031597676734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n + A008595 n

end

end A212427.P15184352031597676734

namespace A212427

/-- `A055999(n)+A008595(n)` -/
def P15184352031597676734.Spec : Prop :=
  ∀ n, P15184352031597676734.a n = A212427 n

end A212427

/-! ## A212427.P8851878305297114020

`A056000(n)+A008594(n)`
-/

namespace A212427.P8851878305297114020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + A008594 n

end

end A212427.P8851878305297114020

namespace A212427

/-- `A056000(n)+A008594(n)` -/
def P8851878305297114020.Spec : Prop :=
  ∀ n, P8851878305297114020.a n = A212427 n

end A212427

/-! ## A212427.P14452073523970047496

`A056115(n)+A008593(n)`
-/

namespace A212427.P14452073523970047496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + A008593 n

end

end A212427.P14452073523970047496

namespace A212427

/-- `A056115(n)+A008593(n)` -/
def P14452073523970047496.Spec : Prop :=
  ∀ n, P14452073523970047496.a n = A212427 n

end A212427

/-! ## A212427.P5385615190761188405

`A056119(n)+A008592(n)`
-/

namespace A212427.P5385615190761188405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n + A008592 n

end

end A212427.P5385615190761188405

namespace A212427

/-- `A056119(n)+A008592(n)` -/
def P5385615190761188405.Spec : Prop :=
  ∀ n, P5385615190761188405.a n = A212427 n

end A212427

/-!
# A212428: a(n) = 18*n + A000217(n-1).

The programs for A212428, the canonical program `A212428.P15813112691557010585` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212428 has offset 0).

The definition of A212428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212428.P6393262483937068944

`n*(n+35)/2`
-/

namespace A212428.P6393262483937068944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 35) : ℚ) / 2

end

end A212428.P6393262483937068944

namespace A212428

/-- `n*(n+35)/2` -/
def P6393262483937068944.Spec : Prop :=
  ∀ n, P6393262483937068944.a n = (A212428 n : ℚ)

theorem P6393262483937068944.correct : P6393262483937068944.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A212428, Nat.add_sub_cancel, A212428.P6393262483937068944.a, A212428.P15813112691557010585.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A212428, Nat.add_sub_cancel, A212428.P6393262483937068944.a, A212428.P15813112691557010585.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212428

/-! ## A212428.P15813112691557010585

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=18, a(2)=37`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212428

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15813112691557010585.Spec : Prop :=
  ∀ n, P15813112691557010585.a n = A212428 n

theorem P15813112691557010585.correct : P15813112691557010585.Spec := by
  intro n
  simp only [A212428]

end A212428

/-! ## A212428.P13918571937857980109

`C(n, 2)+3*6*n`
-/

namespace A212428.P13918571937857980109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 3 * (6 * n)

end

end A212428.P13918571937857980109

namespace A212428

/-- `C(n, 2)+3*6*n` -/
def P13918571937857980109.Spec : Prop :=
  ∀ n, (P13918571937857980109.a n : ℤ) = A212428 n

end A212428

/-! ## A212428.P1464735136805581334

`n+a(n-1)+17` with `a(0)=0`
-/

namespace A212428.P1464735136805581334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n + a (n - 1) + 17

end

end A212428.P1464735136805581334

namespace A212428

/-- `n+a(n-1)+17` -/
def P1464735136805581334.Spec : Prop :=
  ∀ n, (P1464735136805581334.a n : ℤ) = A212428 n

end A212428

/-! ## A212428.P2513983714735359570

`record[(n²-n)/2-17*n]`
-/

namespace A212428.P2513983714735359570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 - (17 * n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212428.P2513983714735359570

namespace A212428

/-- `record[(n²-n)/2-17*n]` -/
def P2513983714735359570.Spec : Prop :=
  ∀ n, P2513983714735359570.a n = (A212428 n : ℚ)

end A212428

/-! ## A212428.P18286864903944189844

`A212427(n)+n`
-/

namespace A212428.P18286864903944189844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212427 n + (n : ℤ)

end

end A212428.P18286864903944189844

namespace A212428

/-- `A212427(n)+n` -/
def P18286864903944189844.Spec : Prop :=
  ∀ n, P18286864903944189844.a n = A212428 n

end A212428

/-! ## A212428.P4773864354313983907

`A132758(n)+2*n`
-/

namespace A212428.P4773864354313983907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132758 n + (2 * n : ℤ)

end

end A212428.P4773864354313983907

namespace A212428

/-- `A132758(n)+2*n` -/
def P4773864354313983907.Spec : Prop :=
  ∀ n, P4773864354313983907.a n = A212428 n

end A212428

/-! ## A212428.P12945766315727394882

`A132757(n)+3*n`
-/

namespace A212428.P12945766315727394882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132757 n + (3 * n : ℤ)

end

end A212428.P12945766315727394882

namespace A212428

/-- `A132757(n)+3*n` -/
def P12945766315727394882.Spec : Prop :=
  ∀ n, P12945766315727394882.a n = A212428 n

end A212428

/-! ## A212428.P1015284723099804515

`A132756(n)+4*n`
-/

namespace A212428.P1015284723099804515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132756 n + (4 * n : ℤ)

end

end A212428.P1015284723099804515

namespace A212428

/-- `A132756(n)+4*n` -/
def P1015284723099804515.Spec : Prop :=
  ∀ n, P1015284723099804515.a n = A212428 n

end A212428

/-! ## A212428.P16647628586764426639

`A132755(n)+5*n`
-/

namespace A212428.P16647628586764426639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132755 n + (5 * n : ℤ)

end

end A212428.P16647628586764426639

namespace A212428

/-- `A132755(n)+5*n` -/
def P16647628586764426639.Spec : Prop :=
  ∀ n, P16647628586764426639.a n = A212428 n

end A212428

/-! ## A212428.P438659582592465015

`17*n+A000217(n)`
-/

namespace A212428.P438659582592465015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) + A000217 n

end

end A212428.P438659582592465015

namespace A212428

/-- `17*n+A000217(n)` -/
def P438659582592465015.Spec : Prop :=
  ∀ n, P438659582592465015.a n = A212428 n

end A212428

/-! ## A212428.P4617396907754312840

`abs(∑[n]-A098850(n))`
-/

namespace A212428.P4617396907754312840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A098850 n|

end

end A212428.P4617396907754312840

namespace A212428

/-- `abs(∑[n]-A098850(n))` -/
def P4617396907754312840.Spec : Prop :=
  ∀ n, P4617396907754312840.a n = A212428 n

end A212428

/-! ## A212428.P10922075864729515540

`∑[17*A057427(n)+n]`
-/

namespace A212428.P10922075864729515540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A057427 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212428.P10922075864729515540

namespace A212428

/-- `∑[17*A057427(n)+n]` -/
def P10922075864729515540.Spec : Prop :=
  ∀ n, P10922075864729515540.a n = A212428 n

end A212428

/-! ## A212428.P17863827216298611461

`n*(n+21)+1-A052905(n)`
-/

namespace A212428.P17863827216298611461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 21) + 1 : ℤ) - A052905 n

end

end A212428.P17863827216298611461

namespace A212428

/-- `n*(n+21)+1-A052905(n)` -/
def P17863827216298611461.Spec : Prop :=
  ∀ n, P17863827216298611461.a n = A212428 n

end A212428

/-! ## A212428.P3107168981432007977

`A008598(n)+A000096(n)`
-/

namespace A212428.P3107168981432007977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 n + A000096 n

end

end A212428.P3107168981432007977

namespace A212428

/-- `A008598(n)+A000096(n)` -/
def P3107168981432007977.Spec : Prop :=
  ∀ n, P3107168981432007977.a n = A212428 n

end A212428

/-! ## A212428.P12129117147914630718

`A055998(n)+A008597(n)`
-/

namespace A212428.P12129117147914630718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A008597 n

end

end A212428.P12129117147914630718

namespace A212428

/-- `A055998(n)+A008597(n)` -/
def P12129117147914630718.Spec : Prop :=
  ∀ n, P12129117147914630718.a n = A212428 n

end A212428

/-! ## A212428.P10745313520218865156

`A055999(n)+A008596(n)`
-/

namespace A212428.P10745313520218865156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n + A008596 n

end

end A212428.P10745313520218865156

namespace A212428

/-- `A055999(n)+A008596(n)` -/
def P10745313520218865156.Spec : Prop :=
  ∀ n, P10745313520218865156.a n = A212428 n

end A212428

/-! ## A212428.P13237105796584551771

`A056000(n)+A008595(n)`
-/

namespace A212428.P13237105796584551771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + A008595 n

end

end A212428.P13237105796584551771

namespace A212428

/-- `A056000(n)+A008595(n)` -/
def P13237105796584551771.Spec : Prop :=
  ∀ n, P13237105796584551771.a n = A212428 n

end A212428

/-! ## A212428.P17657419036049284606

`A056115(n)+A008594(n)`
-/

namespace A212428.P17657419036049284606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + A008594 n

end

end A212428.P17657419036049284606

namespace A212428

/-- `A056115(n)+A008594(n)` -/
def P17657419036049284606.Spec : Prop :=
  ∀ n, P17657419036049284606.a n = A212428 n

end A212428

/-! ## A212428.P14975982707918242873

`A056119(n)+A008593(n)`
-/

namespace A212428.P14975982707918242873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n + A008593 n

end

end A212428.P14975982707918242873

namespace A212428

/-- `A056119(n)+A008593(n)` -/
def P14975982707918242873.Spec : Prop :=
  ∀ n, P14975982707918242873.a n = A212428 n

end A212428

/-!
# A212429: a(n) is the LCM of denominators of polynomials of degree n which are integer-valued on primes together with their first divided differences.

The programs for A212429, there is no canonical definition to state claims against.
-/

/-! ## A212429.P5738376532027222906

`gcd(a(n-1)*A185633(n), A053657(n))` with `a(0)=1`
-/

namespace A212429.P5738376532027222906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd ((a (n - 1) : ℤ) * A185633 n) (A053657 n)

end

end A212429.P5738376532027222906

/-! ## A212429.P6375895746016625493

`A310398(5*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A212429.P6375895746016625493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  A310398 (5 * a (n - 2)).toNat

end

end A212429.P6375895746016625493

/-! ## A212429.P564063272993719745

`A312561(5*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A212429.P564063272993719745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  A312561 (5 * a (n - 2)).toNat

end

end A212429.P564063272993719745

/-! ## A212429.P1729158404188655411

`A314087(5*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A212429.P1729158404188655411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  A314087 (5 * a (n - 2)).toNat

end

end A212429.P1729158404188655411

/-!
# A212431: Triangle read by rows: row sums, right and left borders are the Bell sequence, or a shifted variant. See Comments for precise definition.

The programs for A212431, there is no canonical definition to state claims against.
-/

/-! ## A212431.P1118977244182269247

`A000110(A002262(n))*A186020(n)`
-/

namespace A212431.P1118977244182269247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002262 n).toNat * A186020 n

end

end A212431.P1118977244182269247

/-! ## A212431.P6201845483116401262

`A011971(A112367(n))*A186020(n)`
-/

namespace A212431.P6201845483116401262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A112367 n).toNat * A186020 n

end

end A212431.P6201845483116401262

/-! ## A212431.P4878935347672413095

`A000110(A144328(n+1))*A186020(n)`
-/

namespace A212431.P4878935347672413095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A144328 (n + 1)).toNat * A186020 n

end

end A212431.P4878935347672413095

/-! ## A212431.P9816825909844906047

`A000110(A002262(n))*A121207(A061579(n))`
-/

namespace A212431.P9816825909844906047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002262 n).toNat * A121207 (A061579 n).toNat

end

end A212431.P9816825909844906047

/-! ## A212431.P8074930051026299217

`A033306(n)/A056857(n+1)*A186020(n)`
-/

namespace A212431.P8074930051026299217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033306 n : ℚ) / (A056857 (n + 1) : ℚ) * (A186020 n : ℚ)

end

end A212431.P8074930051026299217

/-! ## A212431.P833033236062004137

`A186020(n)*A287214(A245300(n))`
-/

namespace A212431.P833033236062004137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n * A287214 (A245300 n).toNat

end

end A212431.P833033236062004137

/-! ## A212431.P14514441433236841173

`A121207(A061579(n))*A287214(A245300(n))`
-/

namespace A212431.P14514441433236841173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A061579 n).toNat * A287214 (A245300 n).toNat

end

end A212431.P14514441433236841173

/-! ## A212431.P4220405612925243172

`A104725(A059268(n))*A186020(n)`
-/

namespace A212431.P4220405612925243172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A059268 n).toNat * A186020 n

end

end A212431.P4220405612925243172

/-!
# A212432: Number of equivalence classes of S_n under transformations of positionally and numerically adjacent elements of the form abc <--> acb <--> cba where a

The programs for A212432, there is no canonical definition to state claims against.
-/

/-! ## A212432.P17695280706243280602

`A063195(A005651(n))+1`
-/

namespace A212432.P17695280706243280602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A005651 n).toNat + 1

end

end A212432.P17695280706243280602

/-! ## A212432.P9846827620662787830

`A063195(A226877(n))+1`
-/

namespace A212432.P9846827620662787830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A226877 n).toNat + 1

end

end A212432.P9846827620662787830

/-! ## A212432.P17857509798060472335

`A063195(A226878(n))+1`
-/

namespace A212432.P17857509798060472335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A226878 n).toNat + 1

end

end A212432.P17857509798060472335

/-!
# A212433: Number of equivalence classes of S_n under transformations of positionally and numerically adjacent elements of the form abc <--> acb <--> bac <--> cba, where a

The programs for A212433, there is no canonical definition to state claims against.
-/

/-! ## A212433.P11367883472671170761

`or(n, A000174(A129323(n)))`
-/

namespace A212433.P11367883472671170761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A000174 (A129323 n).toNat)

end

end A212433.P11367883472671170761

/-! ## A212433.P8882027687075263812

`A097992(A088714(n)+1+n)`
-/

namespace A212433.P8882027687075263812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A088714 n + 1 + (n : ℤ)).toNat

end

end A212433.P8882027687075263812

/-! ## A212433.P13605682471430116965

`A103221(A088714(n)+n+1)`
-/

namespace A212433.P13605682471430116965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A088714 n + (n + 1 : ℤ)).toNat

end

end A212433.P13605682471430116965

/-!
# A212434: Triangle read by rows, related to Stern's diatomic series A002487, or fusc(n). See Comments for precise definition.

The programs for A212434, there is no canonical definition to state claims against.
-/

/-! ## A212434.P13674212932305357158

`A002487(A002260(n+1)*A216228(n))`
-/

namespace A212434.P13674212932305357158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A002260 (n + 1) * A216228 n).toNat

end

end A212434.P13674212932305357158

/-! ## A212434.P7412629595862842835

`A008687(A002260(n+1)*A216228(n))`
-/

namespace A212434.P7412629595862842835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A002260 (n + 1) * A216228 n).toNat

end

end A212434.P7412629595862842835

/-! ## A212434.P4618311007278335210

`A002487(A129116(n+1)*A216228(n))`
-/

namespace A212434.P4618311007278335210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A129116 (n + 1) * A216228 n).toNat

end

end A212434.P4618311007278335210

/-! ## A212434.P15868052896461130177

`A008687(A129116(n+1)*A216228(n))`
-/

namespace A212434.P15868052896461130177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A129116 (n + 1) * A216228 n).toNat

end

end A212434.P15868052896461130177

/-! ## A212434.P15186617203036300008

`A283976(A002260(n+1)*A216228(n))`
-/

namespace A212434.P15186617203036300008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (A002260 (n + 1) * A216228 n).toNat

end

end A212434.P15186617203036300008

/-! ## A212434.P4875583363991495964

`A283977(A002260(n+1)*A216228(n))`
-/

namespace A212434.P4875583363991495964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (A002260 (n + 1) * A216228 n).toNat

end

end A212434.P4875583363991495964

/-! ## A212434.P4334653644825067643

`A002487(lcm(A002260(n+1), A216228(n)))`
-/

namespace A212434.P4334653644825067643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.lcm (A002260 (n + 1)) (A216228 n))

end

end A212434.P4334653644825067643

/-! ## A212434.P3243729660832139249

`A000120((A002260(n+1)*A216228(n))²)`
-/

namespace A212434.P3243729660832139249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((A002260 (n + 1) * A216228 n) ^ 2).toNat

end

end A212434.P3243729660832139249

/-! ## A212434.P9546898816710830337

`A000120((A002260(n+1)*A216228(n))^2)`
-/

namespace A212434.P9546898816710830337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((A002260 (n + 1) * A216228 n) ^ 2).toNat

end

end A212434.P9546898816710830337

/-! ## A212434.P16132983901221894415

`A000120(A002260(n+1)*A216228(n)*A002260(n+1))`
-/

namespace A212434.P16132983901221894415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002260 (n + 1) * A216228 n * A002260 (n + 1)).toNat

end

end A212434.P16132983901221894415

/-!
# A212435: Expansion of e.g.f.: exp(-x) / cosh(2*x).

The programs for A212435, there is no canonical definition to state claims against.
-/

/-! ## A212435.P10891193972040155950

`(-1)^n*A188458(n)`
-/

namespace A212435.P10891193972040155950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A188458 n

end

end A212435.P10891193972040155950

/-! ## A212435.P10591213171654318834

`(-1)^floor((n+1)/2)*A001586(n)`
-/

namespace A212435.P10591213171654318834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (A001586 n : ℚ)

end

end A212435.P10591213171654318834

/-! ## A212435.P7697589309157347799

`A001586(n)*A087960(n)`
-/

namespace A212435.P7697589309157347799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001586 n * A087960 n

end

end A212435.P7697589309157347799

/-! ## A212435.P9675585517143310246

`abs(A188458(n))*A087960(n)`
-/

namespace A212435.P9675585517143310246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188458 n| * A087960 n

end

end A212435.P9675585517143310246

/-! ## A212435.P15021801256360523699

`A188458(n)/A033999(n²)`
-/

namespace A212435.P15021801256360523699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188458 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A212435.P15021801256360523699

/-! ## A212435.P14552133767985916425

`A188458(n)/A087960(n²)`
-/

namespace A212435.P14552133767985916425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188458 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A212435.P14552133767985916425

/-! ## A212435.P6386901282457605335

`A001586(n)*A057077(n+1)`
-/

namespace A212435.P6386901282457605335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001586 n * A057077 (n + 1)

end

end A212435.P6386901282457605335

/-! ## A212435.P9004185960332575258

`A001586(n)*A091337(2*n+1)`
-/

namespace A212435.P9004185960332575258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001586 n * A091337 (2 * n + 1)

end

end A212435.P9004185960332575258

/-! ## A212435.P1042937539731081708

`A001586(n)*A033999(A000096(n+1))`
-/

namespace A212435.P1042937539731081708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001586 n * A033999 (A000096 (n + 1)).toNat

end

end A212435.P1042937539731081708

/-! ## A212435.P14043809845425502904

`A001586(n)*A033999(A004526(n+1))`
-/

namespace A212435.P14043809845425502904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001586 n * A033999 (A004526 (n + 1)).toNat

end

end A212435.P14043809845425502904

/-!
# A212439: a(n) = 2*n + A181935(n) mod 2.

The programs for A212439, there is no canonical definition to state claims against.
-/

/-! ## A212439.P5343246886541226043

`2*n+A212412(n)`
-/

namespace A212439.P5343246886541226043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A212412 n

end

end A212439.P5343246886541226043

/-! ## A212439.P6060680355381163444

`A181935(n)%2+2*n`
-/

namespace A212439.P6060680355381163444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181935 n) 2 + (2 * n : ℤ)

end

end A212439.P6060680355381163444

/-! ## A212439.P15669035287879622576

`char[A212441(n+1)]+2*n`
-/

namespace A212439.P15669035287879622576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * n

end

end A212439.P15669035287879622576

/-! ## A212439.P1850163695710935693

`A212412(n)+A005843(n)`
-/

namespace A212439.P1850163695710935693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 n + A005843 n

end

end A212439.P1850163695710935693

/-! ## A212439.P14671323485273290367

`A000035(A181935(n))+2*n`
-/

namespace A212439.P14671323485273290367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A181935 n).toNat + (2 * n : ℤ)

end

end A212439.P14671323485273290367

/-! ## A212439.P1641734715347261392

`and(A016760(n), A181935(n))+2*n`
-/

namespace A212439.P1641734715347261392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A181935 n) + (2 * n : ℤ)

end

end A212439.P1641734715347261392

/-! ## A212439.P11587921117213495312

`A069770(A069770(n))+A212412(n)+n`
-/

namespace A212439.P11587921117213495312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A069770 n).toNat + (A212412 n + (n : ℤ))

end

end A212439.P11587921117213495312

/-! ## A212439.P2686075078968190355

`and(A080267(n+1), A181935(n))+2*n`
-/

namespace A212439.P2686075078968190355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080267 (n + 1)) (A181935 n) + (2 * n : ℤ)

end

end A212439.P2686075078968190355

/-!
# A212440: Numbers with even curling numbers of their binary representations, cf. A181935.

The programs for A212440, there is no canonical definition to state claims against.
-/

/-! ## A212440.P18266402722900544778

`comp[A212441(n+1)]`
-/

namespace A212440.P18266402722900544778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A212440.P18266402722900544778

/-! ## A212440.P14218902176949393362

`eq[0, A212412(n)]`
-/

namespace A212440.P14218902176949393362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212440.P14218902176949393362

/-! ## A212440.P811150212569239637

`lt[A212412(n), A194329(A005812(2*n+3))]`
-/

namespace A212440.P811150212569239637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194329 (A005812 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212440.P811150212569239637

/-! ## A212440.P17993184261047263826

`lt[A000217(n+4)*A212412(n), A056583(n+2)]`
-/

namespace A212440.P17993184261047263826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 4) * A212412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212440.P17993184261047263826

/-! ## A212440.P9386275198404317110

`lt[A008000(n)*A212412(n), A056583(n+2)]`
-/

namespace A212440.P9386275198404317110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n * A212412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212440.P9386275198404317110

/-! ## A212440.P2916584780139128431

`lt[A033950(n+1)*A212412(n), A056583(n+2)]`
-/

namespace A212440.P2916584780139128431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1) * A212412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212440.P2916584780139128431

/-! ## A212440.P6808847053700715683

`lt[A045636(n+1)*A212412(n), A056583(n+2)]`
-/

namespace A212440.P6808847053700715683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1) * A212412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212440.P6808847053700715683

/-! ## A212440.P16668582380566107733

`lt[A071904(n+1)*A212412(n), A056583(n+2)]`
-/

namespace A212440.P16668582380566107733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) * A212412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212440.P16668582380566107733

/-! ## A212440.P17313057228704001479

`lt[A141850(n+1)*A212412(n), A056583(n+2)]`
-/

namespace A212440.P17313057228704001479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1) * A212412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212440.P17313057228704001479

/-! ## A212440.P5313472942120383429

`eq[0, A181935(n)%2]`
-/

namespace A212440.P5313472942120383429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181935 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212440.P5313472942120383429

/-! ## A212440.P17274733451444139416

`record[gcd(n, 3*A212439(n))]`
-/

namespace A212440.P17274733451444139416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (3 * A212439 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212440.P17274733451444139416

/-! ## A212440.P16610592481678221516

`eq[0, A000035(A181935(n))]`
-/

namespace A212440.P16610592481678221516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A181935 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212440.P16610592481678221516

/-! ## A212440.P3727976232333678898

`lt[1, A181935(A181935(n)²)]`
-/

namespace A212440.P3727976232333678898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (A181935 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A212440.P3727976232333678898

/-! ## A212440.P11836856309004670584

`lt[2, A020639(A181935(n)+1)]`
-/

namespace A212440.P11836856309004670584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A181935 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A212440.P11836856309004670584

/-! ## A212440.P17036462527436270888

`eq[1, A181935((A181935(n)+1)²)]`
-/

namespace A212440.P17036462527436270888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 ((A181935 n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212440.P17036462527436270888

/-! ## A212440.P11152192389918351122

`eq[A000035(A212439(n)-n), A000035(n)]`
-/

namespace A212440.P11152192389918351122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A212439 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212440.P11152192389918351122

/-! ## A212440.P8574647039236166076

`eq[0, A000035(A212439(n))]`
-/

namespace A212440.P8574647039236166076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A212439 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212440.P8574647039236166076

/-!
# A212441: Numbers with odd curling numbers of their binary representations, cf. A181935.

The programs for A212441, there is no canonical definition to state claims against.
-/

/-! ## A212441.P18180059576886744122

`comp[A212440(n+1)]`
-/

namespace A212441.P18180059576886744122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A212441.P18180059576886744122

/-! ## A212441.P4608481124855348050

`lt[0, A212412(n)]`
-/

namespace A212441.P4608481124855348050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A212441.P4608481124855348050

/-! ## A212441.P4893097816449760083

`eq[A003557(A078701(n+1)), A212412(n)]`
-/

namespace A212441.P4893097816449760083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A078701 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212441.P4893097816449760083

/-! ## A212441.P7914290653982427989

`eq[A124772(A037445(n+1)), A212412(n)]`
-/

namespace A212441.P7914290653982427989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124772 (A037445 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212441.P7914290653982427989

/-! ## A212441.P805810107028245325

`eq[A212412(n*A212412(n)), A212412(n)]`
-/

namespace A212441.P805810107028245325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 ((n : ℤ) * A212412 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212441.P805810107028245325

/-! ## A212441.P77031065587744194

`eq[A001222(A000040(n+1)), A212412(n)]`
-/

namespace A212441.P77031065587744194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212441.P77031065587744194

/-! ## A212441.P18118632065809528729

`eq[1, A181935(n)%2]`
-/

namespace A212441.P18118632065809528729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181935 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212441.P18118632065809528729

/-! ## A212441.P5759578812702864810

`record[gcd(n, 1-A212439(n))]`
-/

namespace A212441.P5759578812702864810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (1 - A212439 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212441.P5759578812702864810

/-! ## A212441.P14643756745926815020

`lt[0, A000035(A181935(n))]`
-/

namespace A212441.P14643756745926815020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A181935 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A212441.P14643756745926815020

/-! ## A212441.P16707902439580627258

`eq[1, A181935(A181935(n)²)]`
-/

namespace A212441.P16707902439580627258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (A181935 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212441.P16707902439580627258

/-! ## A212441.P807317983024267793

`lt[2, A020639(A181935(n)+2)]`
-/

namespace A212441.P807317983024267793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A181935 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A212441.P807317983024267793

/-! ## A212441.P6939390774477771605

`eq[A007437(n+1), A007437(A212439(n)-n)]`
-/

namespace A212441.P6939390774477771605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (A212439 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212441.P6939390774477771605

/-! ## A212441.P7431559641141258421

`record[A069770(A069770(n*A212412(n)))]`
-/

namespace A212441.P7431559641141258421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A069770 ((n : ℤ) * A212412 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212441.P7431559641141258421

/-! ## A212441.P4898088059331116104

`lt[0, A000035(A212439(n))]`
-/

namespace A212441.P4898088059331116104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A212439 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A212441.P4898088059331116104

/-! ## A212441.P17305709698040268988

`eq[A007437(2*n+1), A007437(A212439(n))]`
-/

namespace A212441.P17305709698040268988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (A212439 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212441.P17305709698040268988

/-!
# A212443: a(n) = (1/n) * Sum_{d|n} moebius(n/d) * A002203(d)^2, where A002203 is the companion Pell numbers.

The programs for A212443, there is no canonical definition to state claims against.
-/

/-! ## A212443.P18199915466601653527

`A025032(A136305(n))`
-/

namespace A212443.P18199915466601653527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025032 (A136305 n).toNat

end

end A212443.P18199915466601653527

/-!
# A212444: Iterates A212439, starting from 0.

The programs for A212444, there is no canonical definition to state claims against.
-/

/-! ## A212444.P6075614900453126934

`A212439(a(n-1))` with `a(0)=0`
-/

namespace A212444.P6075614900453126934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A212439 (a (n - 1)).toNat

end

end A212444.P6075614900453126934

/-! ## A212444.P4923231728696269716

`a(n-1)+A212412(a(n-1))+a(n-1)` with `a(0)=0`
-/

namespace A212444.P4923231728696269716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A212412 (a (n - 1)).toNat + a (n - 1))

end

end A212444.P4923231728696269716

/-! ## A212444.P17442688375532832277

`A329827(2^n)-2^n`
-/

namespace A212444.P17442688375532832277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329827 (2 ^ n) - (2 ^ n : ℤ)

end

end A212444.P17442688375532832277

/-! ## A212444.P10811153541679986576

`A329827(2^n)%A000079(n)`
-/

namespace A212444.P10811153541679986576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329827 (2 ^ n)) (A000079 n)

end

end A212444.P10811153541679986576

/-! ## A212444.P6527853718593218317

`A185283(A387455(n))`
-/

namespace A212444.P6527853718593218317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A387455 n).toNat

end

end A212444.P6527853718593218317

/-!
# A212445: a(n) = floor( n + log(n) ).

The programs for A212445, the canonical program `A212445.P12744483907849676861` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212445 has offset 1).

The definition of A212445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n+1+log(n+1))` (program `A212445.P12744483907849676861`, by `A212445.P12744483907849676861.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212445.P12744483907849676861

`floor(n+1+log(n+1))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212445

/-- `floor(n+1+log(n+1))` -/
def P12744483907849676861.Spec : Prop :=
  ∀ n, P12744483907849676861.a n = A212445 (n + 1)

theorem P12744483907849676861.correct : P12744483907849676861.Spec := by
  intro n
  simp only [A212445, Nat.add_sub_cancel]

end A212445

/-! ## A212445.P4764584447416278614

`n-floor(log(acot(n+1)))`
-/

namespace A212445.P4764584447416278614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊Real.log (SequenceMachineLib.acot (n + 1 : ℝ))⌋

end

end A212445.P4764584447416278614

namespace A212445

/-- `n-floor(log(acot(n+1)))` -/
def P4764584447416278614.Spec : Prop :=
  ∀ n, P4764584447416278614.a n = A212445 (n + 1)

end A212445

/-! ## A212445.P9455539351052691884

`ceil(n-log(acot(n+1)))`
-/

namespace A212445.P9455539351052691884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.log (SequenceMachineLib.acot (n + 1 : ℝ))⌉

end

end A212445.P9455539351052691884

namespace A212445

/-- `ceil(n-log(acot(n+1)))` -/
def P9455539351052691884.Spec : Prop :=
  ∀ n, P9455539351052691884.a n = A212445 (n + 1)

end A212445

/-! ## A212445.P12701232035911329347

`A363832(n+1)+n`
-/

namespace A212445.P12701232035911329347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363832 (n + 1) + (n : ℤ)

end

end A212445.P12701232035911329347

namespace A212445

/-- `A363832(n+1)+n` -/
def P12701232035911329347.Spec : Prop :=
  ∀ n, P12701232035911329347.a n = A212445 (n + 1)

end A212445

/-! ## A212445.P8816650629302892090

`A000195(n+1)+1+n`
-/

namespace A212445.P8816650629302892090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1) + 1 + (n : ℤ)

end

end A212445.P8816650629302892090

namespace A212445

/-- `A000195(n+1)+1+n` -/
def P8816650629302892090.Spec : Prop :=
  ∀ n, P8816650629302892090.a n = A212445 (n + 1)

end A212445

/-! ## A212445.P2422977251967644108

`∑[char[A000149(n+1)]+1]`
-/

namespace A212445.P2422977251967644108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212445.P2422977251967644108

namespace A212445

/-- `∑[char[A000149(n+1)]+1]` -/
def P2422977251967644108.Spec : Prop :=
  ∀ n, (P2422977251967644108.a n : ℤ) = A212445 (n + 1)

end A212445

/-! ## A212445.P8190573002136880311

`ceil(log(n+1)+A000007(n)+n)`
-/

namespace A212445.P8190573002136880311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (n + 1 : ℝ) + (A000007 n + (n : ℤ) : ℝ)⌉

end

end A212445.P8190573002136880311

namespace A212445

/-- `ceil(log(n+1)+A000007(n)+n)` -/
def P8190573002136880311.Spec : Prop :=
  ∀ n, P8190573002136880311.a n = A212445 (n + 1)

end A212445

/-! ## A212445.P10340554612252197130

`ceil(log(n+1))+A004277(n)-n`
-/

namespace A212445.P10340554612252197130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (n + 1 : ℝ)⌉ + (A004277 n - (n : ℤ))

end

end A212445.P10340554612252197130

namespace A212445

/-- `ceil(log(n+1))+A004277(n)-n` -/
def P10340554612252197130.Spec : Prop :=
  ∀ n, P10340554612252197130.a n = A212445 (n + 1)

end A212445

/-! ## A212445.P14531498331184145374

`A028310(n)+A004233(n+1)`
-/

namespace A212445.P14531498331184145374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A004233 (n + 1)

end

end A212445.P14531498331184145374

namespace A212445

/-- `A028310(n)+A004233(n+1)` -/
def P14531498331184145374.Spec : Prop :=
  ∀ n, P14531498331184145374.a n = A212445 (n + 1)

end A212445

/-! ## A212445.P11627528887350501070

`A212450(n+1)+A057428(n)`
-/

namespace A212445.P11627528887350501070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212450 (n + 1) + A057428 n

end

end A212445.P11627528887350501070

namespace A212445

/-- `A212450(n+1)+A057428(n)` -/
def P11627528887350501070.Spec : Prop :=
  ∀ n, P11627528887350501070.a n = A212445 (n + 1)

end A212445

/-! ## A212445.P14267896446647510119

`A212450(n+1)-A057427(n)`
-/

namespace A212445.P14267896446647510119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212450 (n + 1) - A057427 n

end

end A212445.P14267896446647510119

namespace A212445

/-- `A212450(n+1)-A057427(n)` -/
def P14267896446647510119.Spec : Prop :=
  ∀ n, P14267896446647510119.a n = A212445 (n + 1)

end A212445

/-! ## A212445.P13310101854156695012

`A004233(n+1)+A000007(n)+n`
-/

namespace A212445.P13310101854156695012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 1) + (A000007 n + (n : ℤ))

end

end A212445.P13310101854156695012

namespace A212445

/-- `A004233(n+1)+A000007(n)+n` -/
def P13310101854156695012.Spec : Prop :=
  ∀ n, P13310101854156695012.a n = A212445 (n + 1)

end A212445

/-! ## A212445.P6425774130070666171

`ceil(log(n+1))-A007895(A035516(n))+n+1`
-/

namespace A212445.P6425774130070666171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (n + 1 : ℝ)⌉ - A007895 (A035516 n).toNat + (n + 1 : ℤ)

end

end A212445.P6425774130070666171

namespace A212445

/-- `ceil(log(n+1))-A007895(A035516(n))+n+1` -/
def P6425774130070666171.Spec : Prop :=
  ∀ n, P6425774130070666171.a n = A212445 (n + 1)

end A212445

/-! ## A212445.P161339717408817228

`A004233(A233583(n+2))+n`
-/

namespace A212445.P161339717408817228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (A233583 (n + 2)).toNat + (n : ℤ)

end

end A212445.P161339717408817228

namespace A212445

/-- `A004233(A233583(n+2))+n` -/
def P161339717408817228.Spec : Prop :=
  ∀ n, P161339717408817228.a n = A212445 (n + 1)

end A212445

/-! ## A212445.P8332761081062613329

`A213911(A280511(n+1)²)+n`
-/

namespace A212445.P8332761081062613329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A280511 (n + 1) ^ 2).toNat + (n : ℤ)

end

end A212445.P8332761081062613329

namespace A212445

/-- `A213911(A280511(n+1)²)+n` -/
def P8332761081062613329.Spec : Prop :=
  ∀ n, P8332761081062613329.a n = A212445 (n + 1)

end A212445

/-! ## A212445.P9626119747889817694

`∑[A205988((n+1)²)]+n`
-/

namespace A212445.P9626119747889817694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205988 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A212445.P9626119747889817694

namespace A212445

/-- `∑[A205988((n+1)²)]+n` -/
def P9626119747889817694.Spec : Prop :=
  ∀ n, P9626119747889817694.a n = A212445 (n + 1)

end A212445

/-!
# A212446: Floor(2n + log(2n)).

The programs for A212446, the canonical program `A212446.P9238326614868647157` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212446 has offset 1).

The definition of A212446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*(n+1)+log(2*(n+1)))` (program `A212446.P9238326614868647157`, by `A212446.P9238326614868647157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212446.P9238326614868647157

`floor(2*(n+1)+log(2*(n+1)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212446

/-- `floor(2*(n+1)+log(2*(n+1)))` -/
def P9238326614868647157.Spec : Prop :=
  ∀ n, P9238326614868647157.a n = A212446 (n + 1)

theorem P9238326614868647157.correct : P9238326614868647157.Spec := by
  intro n
  simp only [A212446, Nat.add_sub_cancel]

end A212446

/-! ## A212446.P16035682979412651528

`∑[char[floor(2*sinh(n/2)²)+1]+2]`
-/

namespace A212446.P16035682979412651528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sinh ((n : ℚ) / 2 : ℝ) ^ 2⌋ + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212446.P16035682979412651528

namespace A212446

/-- `∑[char[floor(2*sinh(n/2)²)+1]+2]` -/
def P16035682979412651528.Spec : Prop :=
  ∀ n, (P16035682979412651528.a n : ℤ) = A212446 (n + 1)

end A212446

/-! ## A212446.P525421948758894530

`A212451(n+1)-1`
-/

namespace A212446.P525421948758894530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212451 (n + 1) - 1

end

end A212446.P525421948758894530

namespace A212446

/-- `A212451(n+1)-1` -/
def P525421948758894530.Spec : Prop :=
  ∀ n, P525421948758894530.a n = A212446 (n + 1)

end A212446

/-! ## A212446.P9769216250058380669

`A212445(2*(n+1))`
-/

namespace A212446.P9769216250058380669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (2 * (n + 1))

end

end A212446.P9769216250058380669

namespace A212446

/-- `A212445(2*(n+1))` -/
def P9769216250058380669.Spec : Prop :=
  ∀ n, P9769216250058380669.a n = A212446 (n + 1)

end A212446

/-! ## A212446.P7084540031697592044

`record[A212445(xor(1, n)+1)]`
-/

namespace A212446.P7084540031697592044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212446.P7084540031697592044

namespace A212446

/-- `record[A212445(xor(1, n)+1)]` -/
def P7084540031697592044.Spec : Prop :=
  ∀ n, P7084540031697592044.a n = A212446 (n + 1)

end A212446

/-! ## A212446.P8631381388445362619

`A212450(2*(n+1))-1`
-/

namespace A212446.P8631381388445362619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212450 (2 * (n + 1)) - 1

end

end A212446.P8631381388445362619

namespace A212446

/-- `A212450(2*(n+1))-1` -/
def P8631381388445362619.Spec : Prop :=
  ∀ n, P8631381388445362619.a n = A212446 (n + 1)

end A212446

/-! ## A212446.P3578562104162563748

`A004233(2*(n+1))+Δ[n²]`
-/

namespace A212446.P3578562104162563748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A212446.P3578562104162563748

namespace A212446

/-- `A004233(2*(n+1))+Δ[n²]` -/
def P3578562104162563748.Spec : Prop :=
  ∀ n, P3578562104162563748.a n = A212446 (n + 1)

end A212446

/-! ## A212446.P14475374690320042826

`A000195(2*(n+1))+2*(n+1)`
-/

namespace A212446.P14475374690320042826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (2 * (n + 1)) + (2 * (n + 1) : ℤ)

end

end A212446.P14475374690320042826

namespace A212446

/-- `A000195(2*(n+1))+2*(n+1)` -/
def P14475374690320042826.Spec : Prop :=
  ∀ n, P14475374690320042826.a n = A212446 (n + 1)

end A212446

/-! ## A212446.P18263023945653863955

`A004277(n+1)+A000195(2*(n+1))`
-/

namespace A212446.P18263023945653863955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + A000195 (2 * (n + 1))

end

end A212446.P18263023945653863955

namespace A212446

/-- `A004277(n+1)+A000195(2*(n+1))` -/
def P18263023945653863955.Spec : Prop :=
  ∀ n, P18263023945653863955.a n = A212446 (n + 1)

end A212446

/-! ## A212446.P11234833121558889105

`A109613(2*n)+A004233(2*(n+1))`
-/

namespace A212446.P11234833121558889105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * n) + A004233 (2 * (n + 1))

end

end A212446.P11234833121558889105

namespace A212446

/-- `A109613(2*n)+A004233(2*(n+1))` -/
def P11234833121558889105.Spec : Prop :=
  ∀ n, P11234833121558889105.a n = A212446 (n + 1)

end A212446

/-! ## A212446.P9648144798566667447

`A028310(2*n+1)+A004233(2*(n+1))`
-/

namespace A212446.P9648144798566667447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n + 1) + A004233 (2 * (n + 1))

end

end A212446.P9648144798566667447

namespace A212446

/-- `A028310(2*n+1)+A004233(2*(n+1))` -/
def P9648144798566667447.Spec : Prop :=
  ∀ n, P9648144798566667447.a n = A212446 (n + 1)

end A212446

/-! ## A212446.P16384661871913454602

`A257088(2*n+1)+A004233(2*(n+1))`
-/

namespace A212446.P16384661871913454602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * n + 1) + A004233 (2 * (n + 1))

end

end A212446.P16384661871913454602

namespace A212446

/-- `A257088(2*n+1)+A004233(2*(n+1))` -/
def P16384661871913454602.Spec : Prop :=
  ∀ n, P16384661871913454602.a n = A212446 (n + 1)

end A212446

/-! ## A212446.P6546160111145114259

`A023443(A212451(n+1))`
-/

namespace A212446.P6546160111145114259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212451 (n + 1)).toNat

end

end A212446.P6546160111145114259

namespace A212446

/-- `A023443(A212451(n+1))` -/
def P6546160111145114259.Spec : Prop :=
  ∀ n, P6546160111145114259.a n = A212446 (n + 1)

end A212446

/-! ## A212446.P124791873899751434

`ceil(log(A396388(2*n+1)))`
-/

namespace A212446.P124791873899751434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A396388 (2 * n + 1) : ℝ)⌉

end

end A212446.P124791873899751434

namespace A212446

/-- `ceil(log(A396388(2*n+1)))` -/
def P124791873899751434.Spec : Prop :=
  ∀ n, P124791873899751434.a n = A212446 (n + 1)

end A212446

/-!
# A212447: a(n) = floor(3n + log(3n)).

The programs for A212447, the canonical program `A212447.P12060176124086553658` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212447 has offset 1).

The definition of A212447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*(n+1)+log(3*(n+1)))` (program `A212447.P12060176124086553658`, by `A212447.P12060176124086553658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212447.P12060176124086553658

`floor(3*(n+1)+log(3*(n+1)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212447

/-- `floor(3*(n+1)+log(3*(n+1)))` -/
def P12060176124086553658.Spec : Prop :=
  ∀ n, P12060176124086553658.a n = A212447 (n + 1)

theorem P12060176124086553658.correct : P12060176124086553658.Spec := by
  intro n
  simp only [A212447, Nat.add_sub_cancel]

end A212447

/-! ## A212447.P6052172969149184887

`A212452(n+1)-1`
-/

namespace A212447.P6052172969149184887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212452 (n + 1) - 1

end

end A212447.P6052172969149184887

namespace A212447

/-- `A212452(n+1)-1` -/
def P6052172969149184887.Spec : Prop :=
  ∀ n, P6052172969149184887.a n = A212447 (n + 1)

end A212447

/-! ## A212447.P7722296776242608281

`abs(A212452(n+1)+A057428(n+1))`
-/

namespace A212447.P7722296776242608281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212452 (n + 1) + A057428 (n + 1)|

end

end A212447.P7722296776242608281

namespace A212447

/-- `abs(A212452(n+1)+A057428(n+1))` -/
def P7722296776242608281.Spec : Prop :=
  ∀ n, P7722296776242608281.a n = A212447 (n + 1)

end A212447

/-! ## A212447.P9883632211504856515

`A000027(A212452(n+1)+A057428(n+1))`
-/

namespace A212447.P9883632211504856515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A212452 (n + 1) + A057428 (n + 1)).toNat

end

end A212447.P9883632211504856515

namespace A212447

/-- `A000027(A212452(n+1)+A057428(n+1))` -/
def P9883632211504856515.Spec : Prop :=
  ∀ n, P9883632211504856515.a n = A212447 (n + 1)

end A212447

/-! ## A212447.P980526668966966303

`A212445(3*(n+1))`
-/

namespace A212447.P980526668966966303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (3 * (n + 1))

end

end A212447.P980526668966966303

namespace A212447

/-- `A212445(3*(n+1))` -/
def P980526668966966303.Spec : Prop :=
  ∀ n, P980526668966966303.a n = A212447 (n + 1)

end A212447

/-! ## A212447.P1417328266398813564

`A212450(3*(n+1))-1`
-/

namespace A212447.P1417328266398813564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212450 (3 * (n + 1)) - 1

end

end A212447.P1417328266398813564

namespace A212447

/-- `A212450(3*(n+1))-1` -/
def P1417328266398813564.Spec : Prop :=
  ∀ n, P1417328266398813564.a n = A212447 (n + 1)

end A212447

/-! ## A212447.P7649607285298572212

`3*(n+1)+A000195(3*(n+1))`
-/

namespace A212447.P7649607285298572212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) + A000195 (3 * (n + 1))

end

end A212447.P7649607285298572212

namespace A212447

/-- `3*(n+1)+A000195(3*(n+1))` -/
def P7649607285298572212.Spec : Prop :=
  ∀ n, P7649607285298572212.a n = A212447 (n + 1)

end A212447

/-! ## A212447.P17309964459272879684

`A023443(A212452(n+1))`
-/

namespace A212447.P17309964459272879684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212452 (n + 1)).toNat

end

end A212447.P17309964459272879684

namespace A212447

/-- `A023443(A212452(n+1))` -/
def P17309964459272879684.Spec : Prop :=
  ∀ n, P17309964459272879684.a n = A212447 (n + 1)

end A212447

/-!
# A212448: Floor(4n + log(4n)).

The programs for A212448, the canonical program `A212448.P1680444419221976149` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212448 has offset 1).

The definition of A212448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*(n+1)+log(4*(n+1)))` (program `A212448.P1680444419221976149`, by `A212448.P1680444419221976149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212448.P1680444419221976149

`floor(4*(n+1)+log(4*(n+1)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212448

/-- `floor(4*(n+1)+log(4*(n+1)))` -/
def P1680444419221976149.Spec : Prop :=
  ∀ n, P1680444419221976149.a n = A212448 (n + 1)

theorem P1680444419221976149.correct : P1680444419221976149.Spec := by
  intro n
  simp only [A212448, Nat.add_sub_cancel]

end A212448

/-! ## A212448.P14623718940726175162

`A212453(n+1)-1`
-/

namespace A212448.P14623718940726175162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212453 (n + 1) - 1

end

end A212448.P14623718940726175162

namespace A212448

/-- `A212453(n+1)-1` -/
def P14623718940726175162.Spec : Prop :=
  ∀ n, P14623718940726175162.a n = A212448 (n + 1)

end A212448

/-! ## A212448.P6192098966990214422

`A212446(2*(n+1))`
-/

namespace A212448.P6192098966990214422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212446 (2 * (n + 1))

end

end A212448.P6192098966990214422

namespace A212448

/-- `A212446(2*(n+1))` -/
def P6192098966990214422.Spec : Prop :=
  ∀ n, P6192098966990214422.a n = A212448 (n + 1)

end A212448

/-! ## A212448.P14626781218445100288

`A212451(2*(n+1))-1`
-/

namespace A212448.P14626781218445100288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212451 (2 * (n + 1)) - 1

end

end A212448.P14626781218445100288

namespace A212448

/-- `A212451(2*(n+1))-1` -/
def P14626781218445100288.Spec : Prop :=
  ∀ n, P14626781218445100288.a n = A212448 (n + 1)

end A212448

/-! ## A212448.P11592233527838299436

`A212445(4*(n+1))`
-/

namespace A212448.P11592233527838299436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (4 * (n + 1))

end

end A212448.P11592233527838299436

namespace A212448

/-- `A212445(4*(n+1))` -/
def P11592233527838299436.Spec : Prop :=
  ∀ n, P11592233527838299436.a n = A212448 (n + 1)

end A212448

/-! ## A212448.P1335209377961021454

`A212450(4*(n+1))-1`
-/

namespace A212448.P1335209377961021454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212450 (4 * (n + 1)) - 1

end

end A212448.P1335209377961021454

namespace A212448

/-- `A212450(4*(n+1))-1` -/
def P1335209377961021454.Spec : Prop :=
  ∀ n, P1335209377961021454.a n = A212448 (n + 1)

end A212448

/-! ## A212448.P12553193839284330329

`A023443(A212453(n+1))`
-/

namespace A212448.P12553193839284330329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212453 (n + 1)).toNat

end

end A212448.P12553193839284330329

namespace A212448

/-- `A023443(A212453(n+1))` -/
def P12553193839284330329.Spec : Prop :=
  ∀ n, P12553193839284330329.a n = A212448 (n + 1)

end A212448

/-! ## A212448.P11195624421151040885

`A023443(A212451(2*(n+1)))`
-/

namespace A212448.P11195624421151040885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212451 (2 * (n + 1))).toNat

end

end A212448.P11195624421151040885

namespace A212448

/-- `A023443(A212451(2*(n+1)))` -/
def P11195624421151040885.Spec : Prop :=
  ∀ n, P11195624421151040885.a n = A212448 (n + 1)

end A212448

/-!
# A212449: Floor(5n + log(5n)).

The programs for A212449, the canonical program `A212449.P7410527194084933634` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212449 has offset 1).

The definition of A212449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*(n+1)+log(5*(n+1)))` (program `A212449.P7410527194084933634`, by `A212449.P7410527194084933634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212449.P7410527194084933634

`floor(5*(n+1)+log(5*(n+1)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212449

/-- `floor(5*(n+1)+log(5*(n+1)))` -/
def P7410527194084933634.Spec : Prop :=
  ∀ n, P7410527194084933634.a n = A212449 (n + 1)

theorem P7410527194084933634.correct : P7410527194084933634.Spec := by
  intro n
  simp only [A212449, Nat.add_sub_cancel]

end A212449

/-! ## A212449.P12458469017393266597

`A212454(n+1)-1`
-/

namespace A212449.P12458469017393266597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212454 (n + 1) - 1

end

end A212449.P12458469017393266597

namespace A212449

/-- `A212454(n+1)-1` -/
def P12458469017393266597.Spec : Prop :=
  ∀ n, P12458469017393266597.a n = A212449 (n + 1)

end A212449

/-! ## A212449.P4743785391789897876

`A212447(n+1)+A212454(n+1)%A212452(n+1)`
-/

namespace A212449.P4743785391789897876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212447 (n + 1) + Int.tmod (A212454 (n + 1)) (A212452 (n + 1))

end

end A212449.P4743785391789897876

namespace A212449

/-- `A212447(n+1)+A212454(n+1)%A212452(n+1)` -/
def P4743785391789897876.Spec : Prop :=
  ∀ n, P4743785391789897876.a n = A212449 (n + 1)

end A212449

/-! ## A212449.P10488003618010882593

`A212445(5*(n+1))`
-/

namespace A212449.P10488003618010882593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (5 * (n + 1))

end

end A212449.P10488003618010882593

namespace A212449

/-- `A212445(5*(n+1))` -/
def P10488003618010882593.Spec : Prop :=
  ∀ n, P10488003618010882593.a n = A212449 (n + 1)

end A212449

/-! ## A212449.P15935338518509068990

`A212450(5*(n+1))-1`
-/

namespace A212449.P15935338518509068990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212450 (5 * (n + 1)) - 1

end

end A212449.P15935338518509068990

namespace A212449

/-- `A212450(5*(n+1))-1` -/
def P15935338518509068990.Spec : Prop :=
  ∀ n, P15935338518509068990.a n = A212449 (n + 1)

end A212449

/-! ## A212449.P3553833554557083011

`A000195(5*(n+1))+5*(n+1)`
-/

namespace A212449.P3553833554557083011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (5 * (n + 1)) + (5 * (n + 1) : ℤ)

end

end A212449.P3553833554557083011

namespace A212449

/-- `A000195(5*(n+1))+5*(n+1)` -/
def P3553833554557083011.Spec : Prop :=
  ∀ n, P3553833554557083011.a n = A212449 (n + 1)

end A212449

/-! ## A212449.P14520795231144910108

`A008587(n+1)+A000195(A008587(n+1))`
-/

namespace A212449.P14520795231144910108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (n + 1) + A000195 (A008587 (n + 1)).toNat

end

end A212449.P14520795231144910108

namespace A212449

/-- `A008587(n+1)+A000195(A008587(n+1))` -/
def P14520795231144910108.Spec : Prop :=
  ∀ n, P14520795231144910108.a n = A212449 (n + 1)

end A212449

/-! ## A212449.P8677617534982579337

`A023443(A212454(n+1))`
-/

namespace A212449.P8677617534982579337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212454 (n + 1)).toNat

end

end A212449.P8677617534982579337

namespace A212449

/-- `A023443(A212454(n+1))` -/
def P8677617534982579337.Spec : Prop :=
  ∀ n, P8677617534982579337.a n = A212449 (n + 1)

end A212449

/-!
# A212450: a(n) = ceiling(n + log(n)).

The programs for A212450, the canonical program `A212450.P2912274770437102897` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212450 has offset 1).

The definition of A212450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n+1+log(n+1))` (program `A212450.P2912274770437102897`, by `A212450.P2912274770437102897.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212450.P2912274770437102897

`ceil(n+1+log(n+1))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212450

/-- `ceil(n+1+log(n+1))` -/
def P2912274770437102897.Spec : Prop :=
  ∀ n, P2912274770437102897.a n = A212450 (n + 1)

theorem P2912274770437102897.correct : P2912274770437102897.Spec := by
  intro n
  simp only [A212450, Nat.add_sub_cancel]

end A212450

/-! ## A212450.P5589044596154153166

`A004233(n+1)+1+n`
-/

namespace A212450.P5589044596154153166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 1) + 1 + (n : ℤ)

end

end A212450.P5589044596154153166

namespace A212450

/-- `A004233(n+1)+1+n` -/
def P5589044596154153166.Spec : Prop :=
  ∀ n, P5589044596154153166.a n = A212450 (n + 1)

end A212450

/-! ## A212450.P3323698671998955282

`∑[char[A000149(n)]]+n+1`
-/

namespace A212450.P3323698671998955282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A212450.P3323698671998955282

namespace A212450

/-- `∑[char[A000149(n)]]+n+1` -/
def P3323698671998955282.Spec : Prop :=
  ∀ n, (P3323698671998955282.a n : ℤ) = A212450 (n + 1)

end A212450

/-! ## A212450.P12306395702122261271

`A212445(n+1)+A057427(n)`
-/

namespace A212450.P12306395702122261271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (n + 1) + A057427 n

end

end A212450.P12306395702122261271

namespace A212450

/-- `A212445(n+1)+A057427(n)` -/
def P12306395702122261271.Spec : Prop :=
  ∀ n, P12306395702122261271.a n = A212450 (n + 1)

end A212450

/-! ## A212450.P9404420686713909270

`A212445(n+1)-A057428(n)`
-/

namespace A212450.P9404420686713909270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (n + 1) - A057428 n

end

end A212450.P9404420686713909270

namespace A212450

/-- `A212445(n+1)-A057428(n)` -/
def P9404420686713909270.Spec : Prop :=
  ∀ n, P9404420686713909270.a n = A212450 (n + 1)

end A212450

/-! ## A212450.P15203888023693612517

`A065475(n+1)+A000195(n+1)`
-/

namespace A212450.P15203888023693612517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + A000195 (n + 1)

end

end A212450.P15203888023693612517

namespace A212450

/-- `A065475(n+1)+A000195(n+1)` -/
def P15203888023693612517.Spec : Prop :=
  ∀ n, P15203888023693612517.a n = A212450 (n + 1)

end A212450

/-! ## A212450.P5264843078118768093

`A065475(A212445(n+1))`
-/

namespace A212450.P5264843078118768093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A212445 (n + 1)).toNat

end

end A212450.P5264843078118768093

namespace A212450

/-- `A065475(A212445(n+1))` -/
def P5264843078118768093.Spec : Prop :=
  ∀ n, P5264843078118768093.a n = A212450 (n + 1)

end A212450

/-!
# A212451: Ceiling(2n + log(2n)).

The programs for A212451, the canonical program `A212451.P9593935675901404652` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212451 has offset 1).

The definition of A212451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(2*(n+1)+log(2*(n+1)))` (program `A212451.P9593935675901404652`, by `A212451.P9593935675901404652.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212451.P9593935675901404652

`ceil(2*(n+1)+log(2*(n+1)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212451

/-- `ceil(2*(n+1)+log(2*(n+1)))` -/
def P9593935675901404652.Spec : Prop :=
  ∀ n, P9593935675901404652.a n = A212451 (n + 1)

theorem P9593935675901404652.correct : P9593935675901404652.Spec := by
  intro n
  simp only [A212451, Nat.add_sub_cancel]

end A212451

/-! ## A212451.P1442187821968410261

`A212446(n+1)+1`
-/

namespace A212451.P1442187821968410261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212446 (n + 1) + 1

end

end A212451.P1442187821968410261

namespace A212451

/-- `A212446(n+1)+1` -/
def P1442187821968410261.Spec : Prop :=
  ∀ n, P1442187821968410261.a n = A212451 (n + 1)

end A212451

/-! ## A212451.P3677967542054555392

`A212450(2*(n+1))`
-/

namespace A212451.P3677967542054555392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212450 (2 * (n + 1))

end

end A212451.P3677967542054555392

namespace A212451

/-- `A212450(2*(n+1))` -/
def P3677967542054555392.Spec : Prop :=
  ∀ n, P3677967542054555392.a n = A212451 (n + 1)

end A212451

/-! ## A212451.P17518043096412620223

`A212445(2*(n+1))+1`
-/

namespace A212451.P17518043096412620223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (2 * (n + 1)) + 1

end

end A212451.P17518043096412620223

namespace A212451

/-- `A212445(2*(n+1))+1` -/
def P17518043096412620223.Spec : Prop :=
  ∀ n, P17518043096412620223.a n = A212451 (n + 1)

end A212451

/-! ## A212451.P5997227296905102558

`A020725(A212446(n+1))`
-/

namespace A212451.P5997227296905102558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A212446 (n + 1)).toNat

end

end A212451.P5997227296905102558

namespace A212451

/-- `A020725(A212446(n+1))` -/
def P5997227296905102558.Spec : Prop :=
  ∀ n, P5997227296905102558.a n = A212451 (n + 1)

end A212451

/-! ## A212451.P597517350597464844

`A065475(A212445(2*(n+1)))`
-/

namespace A212451.P597517350597464844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A212445 (2 * (n + 1))).toNat

end

end A212451.P597517350597464844

namespace A212451

/-- `A065475(A212445(2*(n+1)))` -/
def P597517350597464844.Spec : Prop :=
  ∀ n, P597517350597464844.a n = A212451 (n + 1)

end A212451

/-!
# A212452: Ceiling(3n + log(3n)).

The programs for A212452, the canonical program `A212452.P11248414491824647016` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212452 has offset 1).

The definition of A212452 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(3*(n+1)+log(3*(n+1)))` (program `A212452.P11248414491824647016`, by `A212452.P11248414491824647016.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212452.P11248414491824647016

`ceil(3*(n+1)+log(3*(n+1)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212452

/-- `ceil(3*(n+1)+log(3*(n+1)))` -/
def P11248414491824647016.Spec : Prop :=
  ∀ n, P11248414491824647016.a n = A212452 (n + 1)

theorem P11248414491824647016.correct : P11248414491824647016.Spec := by
  intro n
  simp only [A212452, Nat.add_sub_cancel]

end A212452

/-! ## A212452.P15869866917005079232

`A212447(n+1)+1`
-/

namespace A212452.P15869866917005079232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212447 (n + 1) + 1

end

end A212452.P15869866917005079232

namespace A212452

/-- `A212447(n+1)+1` -/
def P15869866917005079232.Spec : Prop :=
  ∀ n, P15869866917005079232.a n = A212452 (n + 1)

end A212452

/-! ## A212452.P15533399393064309116

`A212450(3*(n+1))`
-/

namespace A212452.P15533399393064309116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212450 (3 * (n + 1))

end

end A212452.P15533399393064309116

namespace A212452

/-- `A212450(3*(n+1))` -/
def P15533399393064309116.Spec : Prop :=
  ∀ n, P15533399393064309116.a n = A212452 (n + 1)

end A212452

/-! ## A212452.P14305944347027136984

`A212445(3*(n+1))+1`
-/

namespace A212452.P14305944347027136984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (3 * (n + 1)) + 1

end

end A212452.P14305944347027136984

namespace A212452

/-- `A212445(3*(n+1))+1` -/
def P14305944347027136984.Spec : Prop :=
  ∀ n, P14305944347027136984.a n = A212452 (n + 1)

end A212452

/-! ## A212452.P3032857404620863446

`A004233(3*(n+1))+3*(n+1)`
-/

namespace A212452.P3032857404620863446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (3 * (n + 1)) + (3 * (n + 1) : ℤ)

end

end A212452.P3032857404620863446

namespace A212452

/-- `A004233(3*(n+1))+3*(n+1)` -/
def P3032857404620863446.Spec : Prop :=
  ∀ n, P3032857404620863446.a n = A212452 (n + 1)

end A212452

/-! ## A212452.P17285773747364953042

`A020725(A212447(n+1))`
-/

namespace A212452.P17285773747364953042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A212447 (n + 1)).toNat

end

end A212452.P17285773747364953042

namespace A212452

/-- `A020725(A212447(n+1))` -/
def P17285773747364953042.Spec : Prop :=
  ∀ n, P17285773747364953042.a n = A212452 (n + 1)

end A212452

/-!
# A212453: a(n) = ceiling(4n + log(4n)).

The programs for A212453, the canonical program `A212453.P15441445885392686202` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212453 has offset 1).

The definition of A212453 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(4*(n+1)+log(4*(n+1)))` (program `A212453.P15441445885392686202`, by `A212453.P15441445885392686202.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212453.P15441445885392686202

`ceil(4*(n+1)+log(4*(n+1)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212453

/-- `ceil(4*(n+1)+log(4*(n+1)))` -/
def P15441445885392686202.Spec : Prop :=
  ∀ n, P15441445885392686202.a n = A212453 (n + 1)

theorem P15441445885392686202.correct : P15441445885392686202.Spec := by
  intro n
  simp only [A212453, Nat.add_sub_cancel]

end A212453

/-! ## A212453.P13880183246629963000

`A212448(n+1)+1`
-/

namespace A212453.P13880183246629963000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212448 (n + 1) + 1

end

end A212453.P13880183246629963000

namespace A212453

/-- `A212448(n+1)+1` -/
def P13880183246629963000.Spec : Prop :=
  ∀ n, P13880183246629963000.a n = A212453 (n + 1)

end A212453

/-! ## A212453.P17124431789147276545

`A212451(2*(n+1))`
-/

namespace A212453.P17124431789147276545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212451 (2 * (n + 1))

end

end A212453.P17124431789147276545

namespace A212453

/-- `A212451(2*(n+1))` -/
def P17124431789147276545.Spec : Prop :=
  ∀ n, P17124431789147276545.a n = A212453 (n + 1)

end A212453

/-! ## A212453.P13473153302785131706

`A212446(2*(n+1))+1`
-/

namespace A212453.P13473153302785131706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212446 (2 * (n + 1)) + 1

end

end A212453.P13473153302785131706

namespace A212453

/-- `A212446(2*(n+1))+1` -/
def P13473153302785131706.Spec : Prop :=
  ∀ n, P13473153302785131706.a n = A212453 (n + 1)

end A212453

/-! ## A212453.P3867354335121913884

`A212450(4*(n+1))`
-/

namespace A212453.P3867354335121913884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212450 (4 * (n + 1))

end

end A212453.P3867354335121913884

namespace A212453

/-- `A212450(4*(n+1))` -/
def P3867354335121913884.Spec : Prop :=
  ∀ n, P3867354335121913884.a n = A212453 (n + 1)

end A212453

/-! ## A212453.P7197035144976919187

`A212445(4*(n+1))+1`
-/

namespace A212453.P7197035144976919187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (4 * (n + 1)) + 1

end

end A212453.P7197035144976919187

namespace A212453

/-- `A212445(4*(n+1))+1` -/
def P7197035144976919187.Spec : Prop :=
  ∀ n, P7197035144976919187.a n = A212453 (n + 1)

end A212453

/-! ## A212453.P17323518249782486016

`4*(n+1)+A004233(4*(n+1))`
-/

namespace A212453.P17323518249782486016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + A004233 (4 * (n + 1))

end

end A212453.P17323518249782486016

namespace A212453

/-- `4*(n+1)+A004233(4*(n+1))` -/
def P17323518249782486016.Spec : Prop :=
  ∀ n, P17323518249782486016.a n = A212453 (n + 1)

end A212453

/-! ## A212453.P8117013320097626977

`A020725(A212448(n+1))`
-/

namespace A212453.P8117013320097626977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A212448 (n + 1)).toNat

end

end A212453.P8117013320097626977

namespace A212453

/-- `A020725(A212448(n+1))` -/
def P8117013320097626977.Spec : Prop :=
  ∀ n, P8117013320097626977.a n = A212453 (n + 1)

end A212453

/-! ## A212453.P10771764393955084651

`A020725(A212446(2*(n+1)))`
-/

namespace A212453.P10771764393955084651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A212446 (2 * (n + 1))).toNat

end

end A212453.P10771764393955084651

namespace A212453

/-- `A020725(A212446(2*(n+1)))` -/
def P10771764393955084651.Spec : Prop :=
  ∀ n, P10771764393955084651.a n = A212453 (n + 1)

end A212453

/-!
# A212454: Ceiling(5n + log(5n)).

The programs for A212454, the canonical program `A212454.P3915947276319496616` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212454 has offset 1).

The definition of A212454 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(5*(n+1)+log(5*(n+1)))` (program `A212454.P3915947276319496616`, by `A212454.P3915947276319496616.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212454.P3915947276319496616

`ceil(5*(n+1)+log(5*(n+1)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212454

/-- `ceil(5*(n+1)+log(5*(n+1)))` -/
def P3915947276319496616.Spec : Prop :=
  ∀ n, P3915947276319496616.a n = A212454 (n + 1)

theorem P3915947276319496616.correct : P3915947276319496616.Spec := by
  intro n
  simp only [A212454, Nat.add_sub_cancel]

end A212454

/-! ## A212454.P13508304488160356959

`A212449(n+1)+1`
-/

namespace A212454.P13508304488160356959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212449 (n + 1) + 1

end

end A212454.P13508304488160356959

namespace A212454

/-- `A212449(n+1)+1` -/
def P13508304488160356959.Spec : Prop :=
  ∀ n, P13508304488160356959.a n = A212454 (n + 1)

end A212454

/-! ## A212454.P11340169579036126044

`A212450(5*(n+1))`
-/

namespace A212454.P11340169579036126044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212450 (5 * (n + 1))

end

end A212454.P11340169579036126044

namespace A212454

/-- `A212450(5*(n+1))` -/
def P11340169579036126044.Spec : Prop :=
  ∀ n, P11340169579036126044.a n = A212454 (n + 1)

end A212454

/-! ## A212454.P14545383575486748730

`A212445(5*(n+1))+1`
-/

namespace A212454.P14545383575486748730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (5 * (n + 1)) + 1

end

end A212454.P14545383575486748730

namespace A212454

/-- `A212445(5*(n+1))+1` -/
def P14545383575486748730.Spec : Prop :=
  ∀ n, P14545383575486748730.a n = A212454 (n + 1)

end A212454

/-! ## A212454.P9532782028692430200

`A004233(5*(n+1))+5*(n+1)`
-/

namespace A212454.P9532782028692430200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (5 * (n + 1)) + (5 * (n + 1) : ℤ)

end

end A212454.P9532782028692430200

namespace A212454

/-- `A004233(5*(n+1))+5*(n+1)` -/
def P9532782028692430200.Spec : Prop :=
  ∀ n, P9532782028692430200.a n = A212454 (n + 1)

end A212454

/-! ## A212454.P7395970146036460343

`5*n+6+A000195(5*(n+1))`
-/

namespace A212454.P7395970146036460343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 6 : ℤ) + A000195 (5 * (n + 1))

end

end A212454.P7395970146036460343

namespace A212454

/-- `5*n+6+A000195(5*(n+1))` -/
def P7395970146036460343.Spec : Prop :=
  ∀ n, P7395970146036460343.a n = A212454 (n + 1)

end A212454

/-! ## A212454.P10907329505468963178

`A008706(n+1)+A004233(A008706(n+1))`
-/

namespace A212454.P10907329505468963178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 1) + A004233 (A008706 (n + 1)).toNat

end

end A212454.P10907329505468963178

namespace A212454

/-- `A008706(n+1)+A004233(A008706(n+1))` -/
def P10907329505468963178.Spec : Prop :=
  ∀ n, P10907329505468963178.a n = A212454 (n + 1)

end A212454

/-! ## A212454.P2214067906024839918

`A020725(A212449(n+1))`
-/

namespace A212454.P2214067906024839918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A212449 (n + 1)).toNat

end

end A212454.P2214067906024839918

namespace A212454

/-- `A020725(A212449(n+1))` -/
def P2214067906024839918.Spec : Prop :=
  ∀ n, P2214067906024839918.a n = A212454 (n + 1)

end A212454

/-!
# A212455: a(n) = floor(2n*log(2n)).

The programs for A212455, the canonical program `A212455.P17941844663002664025` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212455 has offset 1).

The definition of A212455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*(n+1)*log(2*(n+1)))` (program `A212455.P17941844663002664025`, by `A212455.P17941844663002664025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212455.P17941844663002664025

`floor(2*(n+1)*log(2*(n+1)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212455

/-- `floor(2*(n+1)*log(2*(n+1)))` -/
def P17941844663002664025.Spec : Prop :=
  ∀ n, P17941844663002664025.a n = A212455 (n + 1)

theorem P17941844663002664025.correct : P17941844663002664025.Spec := by
  intro n
  simp only [A212455, Nat.add_sub_cancel]

end A212455

/-! ## A212455.P5958654750484461681

`A212459(n+1)-1`
-/

namespace A212455.P5958654750484461681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212459 (n + 1) - 1

end

end A212455.P5958654750484461681

namespace A212455

/-- `A212459(n+1)-1` -/
def P5958654750484461681.Spec : Prop :=
  ∀ n, P5958654750484461681.a n = A212455 (n + 1)

end A212455

/-! ## A212455.P10542890003320753886

`A050504(2*(n+1))`
-/

namespace A212455.P10542890003320753886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (2 * (n + 1))

end

end A212455.P10542890003320753886

namespace A212455

/-- `A050504(2*(n+1))` -/
def P10542890003320753886.Spec : Prop :=
  ∀ n, P10542890003320753886.a n = A212455 (n + 1)

end A212455

/-! ## A212455.P7586086061628731973

`record[A050504(xor(1, n)+1)]`
-/

namespace A212455.P7586086061628731973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212455.P7586086061628731973

namespace A212455

/-- `record[A050504(xor(1, n)+1)]` -/
def P7586086061628731973.Spec : Prop :=
  ∀ n, P7586086061628731973.a n = A212455 (n + 1)

end A212455

/-! ## A212455.P5674166945478693301

`A050502(2*(n+1))-1`
-/

namespace A212455.P5674166945478693301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (2 * (n + 1)) - 1

end

end A212455.P5674166945478693301

namespace A212455

/-- `A050502(2*(n+1))-1` -/
def P5674166945478693301.Spec : Prop :=
  ∀ n, P5674166945478693301.a n = A212455 (n + 1)

end A212455

/-! ## A212455.P626108180541640594

`A057428(n+1)+A050502(2*(n+1))`
-/

namespace A212455.P626108180541640594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A050502 (2 * (n + 1))

end

end A212455.P626108180541640594

namespace A212455

/-- `A057428(n+1)+A050502(2*(n+1))` -/
def P626108180541640594.Spec : Prop :=
  ∀ n, P626108180541640594.a n = A212455 (n + 1)

end A212455

/-! ## A212455.P4664006143019741116

`A000040(2*(n+1))-A064658(2*(n+1))`
-/

namespace A212455.P4664006143019741116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) - A064658 (2 * (n + 1))

end

end A212455.P4664006143019741116

namespace A212455

/-- `A000040(2*(n+1))-A064658(2*(n+1))` -/
def P4664006143019741116.Spec : Prop :=
  ∀ n, P4664006143019741116.a n = A212455 (n + 1)

end A212455

/-! ## A212455.P6770937420348588915

`A000040(2*(n+1))-(A059111(2*(n+1))+1)`
-/

namespace A212455.P6770937420348588915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) - (A059111 (2 * (n + 1)) + 1)

end

end A212455.P6770937420348588915

namespace A212455

/-- `A000040(2*(n+1))-(A059111(2*(n+1))+1)` -/
def P6770937420348588915.Spec : Prop :=
  ∀ n, P6770937420348588915.a n = A212455 (n + 1)

end A212455

/-! ## A212455.P7084518123877601885

`A050503(2*(n+1))+A064659(2*(n+1))-A064658(2*(n+1))`
-/

namespace A212455.P7084518123877601885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050503 (2 * (n + 1)) + (A064659 (2 * (n + 1)) - A064658 (2 * (n + 1)))

end

end A212455.P7084518123877601885

namespace A212455

/-- `A050503(2*(n+1))+A064659(2*(n+1))-A064658(2*(n+1))` -/
def P7084518123877601885.Spec : Prop :=
  ∀ n, P7084518123877601885.a n = A212455 (n + 1)

end A212455

/-! ## A212455.P4306419237095737517

`A023443(A212459(n+1))`
-/

namespace A212455.P4306419237095737517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212459 (n + 1)).toNat

end

end A212455.P4306419237095737517

namespace A212455

/-- `A023443(A212459(n+1))` -/
def P4306419237095737517.Spec : Prop :=
  ∀ n, P4306419237095737517.a n = A212455 (n + 1)

end A212455

/-!
# A212456: a(n) = floor(3n*log(3n)).

The programs for A212456, the canonical program `A212456.P12259288115743218910` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212456 has offset 1).

The definition of A212456 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*(n+1)*log(3*(n+1)))` (program `A212456.P12259288115743218910`, by `A212456.P12259288115743218910.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212456.P12259288115743218910

`floor(3*(n+1)*log(3*(n+1)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212456

/-- `floor(3*(n+1)*log(3*(n+1)))` -/
def P12259288115743218910.Spec : Prop :=
  ∀ n, P12259288115743218910.a n = A212456 (n + 1)

theorem P12259288115743218910.correct : P12259288115743218910.Spec := by
  intro n
  simp only [A212456, Nat.add_sub_cancel]

end A212456

/-! ## A212456.P9398465388595592676

`A212460(n+1)-1`
-/

namespace A212456.P9398465388595592676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212460 (n + 1) - 1

end

end A212456.P9398465388595592676

namespace A212456

/-- `A212460(n+1)-1` -/
def P9398465388595592676.Spec : Prop :=
  ∀ n, P9398465388595592676.a n = A212456 (n + 1)

end A212456

/-! ## A212456.P13452226007658627087

`(A212460(n+1)+A212458(n+1))%A212462(n+1)`
-/

namespace A212456.P13452226007658627087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212460 (n + 1) + A212458 (n + 1)) (A212462 (n + 1))

end

end A212456.P13452226007658627087

namespace A212456

/-- `(A212460(n+1)+A212458(n+1))%A212462(n+1)` -/
def P13452226007658627087.Spec : Prop :=
  ∀ n, P13452226007658627087.a n = A212456 (n + 1)

end A212456

/-! ## A212456.P12280216575895166666

`A050504(3*(n+1))`
-/

namespace A212456.P12280216575895166666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (3 * (n + 1))

end

end A212456.P12280216575895166666

namespace A212456

/-- `A050504(3*(n+1))` -/
def P12280216575895166666.Spec : Prop :=
  ∀ n, P12280216575895166666.a n = A212456 (n + 1)

end A212456

/-! ## A212456.P15465021923861958275

`A050502(3*(n+1))-1`
-/

namespace A212456.P15465021923861958275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (3 * (n + 1)) - 1

end

end A212456.P15465021923861958275

namespace A212456

/-- `A050502(3*(n+1))-1` -/
def P15465021923861958275.Spec : Prop :=
  ∀ n, P15465021923861958275.a n = A212456 (n + 1)

end A212456

/-! ## A212456.P1693766663436118339

`A023443(A212460(n+1))`
-/

namespace A212456.P1693766663436118339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212460 (n + 1)).toNat

end

end A212456.P1693766663436118339

namespace A212456

/-- `A023443(A212460(n+1))` -/
def P1693766663436118339.Spec : Prop :=
  ∀ n, P1693766663436118339.a n = A212456 (n + 1)

end A212456

/-!
# A212457: a(n) = floor(4n*log(4n)).

The programs for A212457, the canonical program `A212457.P16156188605781764987` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212457 has offset 1).

The definition of A212457 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*(n+1)*log(4*(n+1)))` (program `A212457.P16156188605781764987`, by `A212457.P16156188605781764987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212457.P16156188605781764987

`floor(4*(n+1)*log(4*(n+1)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212457

/-- `floor(4*(n+1)*log(4*(n+1)))` -/
def P16156188605781764987.Spec : Prop :=
  ∀ n, P16156188605781764987.a n = A212457 (n + 1)

theorem P16156188605781764987.correct : P16156188605781764987.Spec := by
  intro n
  simp only [A212457, Nat.add_sub_cancel]

end A212457

/-! ## A212457.P15038553331335181962

`A212461(n+1)-1`
-/

namespace A212457.P15038553331335181962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212461 (n + 1) - 1

end

end A212457.P15038553331335181962

namespace A212457

/-- `A212461(n+1)-1` -/
def P15038553331335181962.Spec : Prop :=
  ∀ n, P15038553331335181962.a n = A212457 (n + 1)

end A212457

/-! ## A212457.P13505284369150068571

`A212455(2*(n+1))`
-/

namespace A212457.P13505284369150068571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (2 * (n + 1))

end

end A212457.P13505284369150068571

namespace A212457

/-- `A212455(2*(n+1))` -/
def P13505284369150068571.Spec : Prop :=
  ∀ n, P13505284369150068571.a n = A212457 (n + 1)

end A212457

/-! ## A212457.P16340418042474569410

`A212459(2*(n+1))-1`
-/

namespace A212457.P16340418042474569410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212459 (2 * (n + 1)) - 1

end

end A212457.P16340418042474569410

namespace A212457

/-- `A212459(2*(n+1))-1` -/
def P16340418042474569410.Spec : Prop :=
  ∀ n, P16340418042474569410.a n = A212457 (n + 1)

end A212457

/-! ## A212457.P15275464088556129464

`A050504(4*(n+1))`
-/

namespace A212457.P15275464088556129464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (4 * (n + 1))

end

end A212457.P15275464088556129464

namespace A212457

/-- `A050504(4*(n+1))` -/
def P15275464088556129464.Spec : Prop :=
  ∀ n, P15275464088556129464.a n = A212457 (n + 1)

end A212457

/-! ## A212457.P13134873443894165187

`A050502(4*(n+1))-1`
-/

namespace A212457.P13134873443894165187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (4 * (n + 1)) - 1

end

end A212457.P13134873443894165187

namespace A212457

/-- `A050502(4*(n+1))-1` -/
def P13134873443894165187.Spec : Prop :=
  ∀ n, P13134873443894165187.a n = A212457 (n + 1)

end A212457

/-! ## A212457.P14114645547920488536

`record[A212459(A028234(n+1)+1)-1]`
-/

namespace A212457.P14114645547920488536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212459 (A028234 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212457.P14114645547920488536

namespace A212457

/-- `record[A212459(A028234(n+1)+1)-1]` -/
def P14114645547920488536.Spec : Prop :=
  ∀ n, P14114645547920488536.a n = A212457 (n + 1)

end A212457

/-! ## A212457.P12539731523300341009

`A023443(A212461(n+1))`
-/

namespace A212457.P12539731523300341009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212461 (n + 1)).toNat

end

end A212457.P12539731523300341009

namespace A212457

/-- `A023443(A212461(n+1))` -/
def P12539731523300341009.Spec : Prop :=
  ∀ n, P12539731523300341009.a n = A212457 (n + 1)

end A212457

/-! ## A212457.P3473005414469063720

`A023443(A212459(2*(n+1)))`
-/

namespace A212457.P3473005414469063720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212459 (2 * (n + 1))).toNat

end

end A212457.P3473005414469063720

namespace A212457

/-- `A023443(A212459(2*(n+1)))` -/
def P3473005414469063720.Spec : Prop :=
  ∀ n, P3473005414469063720.a n = A212457 (n + 1)

end A212457

/-!
# A212458: a(n) = floor(5n*log(5n)).

The programs for A212458, the canonical program `A212458.P8084872636075263601` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212458 has offset 1).

The definition of A212458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*(n+1)*log(5*(n+1)))` (program `A212458.P8084872636075263601`, by `A212458.P8084872636075263601.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212458.P8084872636075263601

`floor(5*(n+1)*log(5*(n+1)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212458

/-- `floor(5*(n+1)*log(5*(n+1)))` -/
def P8084872636075263601.Spec : Prop :=
  ∀ n, P8084872636075263601.a n = A212458 (n + 1)

theorem P8084872636075263601.correct : P8084872636075263601.Spec := by
  intro n
  simp only [A212458, Nat.add_sub_cancel]

end A212458

/-! ## A212458.P550046348673168418

`A212462(n+1)-1`
-/

namespace A212458.P550046348673168418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212462 (n + 1) - 1

end

end A212458.P550046348673168418

namespace A212458

/-- `A212462(n+1)-1` -/
def P550046348673168418.Spec : Prop :=
  ∀ n, P550046348673168418.a n = A212458 (n + 1)

end A212458

/-! ## A212458.P7261990538566648267

`A359763(A006881(n+1))+A212462(n+1)`
-/

namespace A212458.P7261990538566648267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359763 (A006881 (n + 1)).toNat + A212462 (n + 1)

end

end A212458.P7261990538566648267

namespace A212458

/-- `A359763(A006881(n+1))+A212462(n+1)` -/
def P7261990538566648267.Spec : Prop :=
  ∀ n, P7261990538566648267.a n = A212458 (n + 1)

end A212458

/-! ## A212458.P4296222090987568017

`A359763(A284018(n+1))+A212462(n+1)`
-/

namespace A212458.P4296222090987568017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359763 (A284018 (n + 1)).toNat + A212462 (n + 1)

end

end A212458.P4296222090987568017

namespace A212458

/-- `A359763(A284018(n+1))+A212462(n+1)` -/
def P4296222090987568017.Spec : Prop :=
  ∀ n, P4296222090987568017.a n = A212458 (n + 1)

end A212458

/-! ## A212458.P2473983845963705670

`A212457(n+1)+A212462(n+1)%A212461(n+1)`
-/

namespace A212458.P2473983845963705670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212457 (n + 1) + Int.tmod (A212462 (n + 1)) (A212461 (n + 1))

end

end A212458.P2473983845963705670

namespace A212458

/-- `A212457(n+1)+A212462(n+1)%A212461(n+1)` -/
def P2473983845963705670.Spec : Prop :=
  ∀ n, P2473983845963705670.a n = A212458 (n + 1)

end A212458

/-! ## A212458.P9549241615939098449

`A050504(5*(n+1))`
-/

namespace A212458.P9549241615939098449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (5 * (n + 1))

end

end A212458.P9549241615939098449

namespace A212458

/-- `A050504(5*(n+1))` -/
def P9549241615939098449.Spec : Prop :=
  ∀ n, P9549241615939098449.a n = A212458 (n + 1)

end A212458

/-! ## A212458.P12271504745385003492

`A050502(5*(n+1))-1`
-/

namespace A212458.P12271504745385003492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (5 * (n + 1)) - 1

end

end A212458.P12271504745385003492

namespace A212458

/-- `A050502(5*(n+1))-1` -/
def P12271504745385003492.Spec : Prop :=
  ∀ n, P12271504745385003492.a n = A212458 (n + 1)

end A212458

/-! ## A212458.P2879541517066078181

`A346242(A235480(n+1))+A212462(n+1)`
-/

namespace A212458.P2879541517066078181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (A235480 (n + 1)).toNat + A212462 (n + 1)

end

end A212458.P2879541517066078181

namespace A212458

/-- `A346242(A235480(n+1))+A212462(n+1)` -/
def P2879541517066078181.Spec : Prop :=
  ∀ n, P2879541517066078181.a n = A212458 (n + 1)

end A212458

/-! ## A212458.P4350389408719270718

`A346242(A107132(n+1))+A212462(n+1)`
-/

namespace A212458.P4350389408719270718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (A107132 (n + 1)).toNat + A212462 (n + 1)

end

end A212458.P4350389408719270718

namespace A212458

/-- `A346242(A107132(n+1))+A212462(n+1)` -/
def P4350389408719270718.Spec : Prop :=
  ∀ n, P4350389408719270718.a n = A212458 (n + 1)

end A212458

/-! ## A212458.P7760527148234085219

`A023443(A212462(n+1))`
-/

namespace A212458.P7760527148234085219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212462 (n + 1)).toNat

end

end A212458.P7760527148234085219

namespace A212458

/-- `A023443(A212462(n+1))` -/
def P7760527148234085219.Spec : Prop :=
  ∀ n, P7760527148234085219.a n = A212458 (n + 1)

end A212458

/-!
# A212459: a(n) = ceiling(2n*log(2n)).

The programs for A212459, the canonical program `A212459.P26555317986704549` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212459 has offset 1).

The definition of A212459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212459.P8723053312039011336

`ceil(2*(n+1)*log(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212459.P8723053312039011336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * (n + 1) : ℝ) * Real.log (2 * (n + 1) : ℝ)⌉

end

end A212459.P8723053312039011336

namespace A212459

/-- `ceil(2*(n+1)*log(2*(n+1)))` -/
def P8723053312039011336.Spec : Prop :=
  ∀ n, P8723053312039011336.a n = A212459 (n + 1)

end A212459

/-! ## A212459.P26555317986704549

`A050502(2*(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212459

/-- `A050502(2*(n+1))` -/
def P26555317986704549.Spec : Prop :=
  ∀ n, P26555317986704549.a n = A212459 (n + 1)

theorem P26555317986704549.correct : P26555317986704549.Spec := by
  intro n
  simp only [A212459, Nat.add_sub_cancel]

end A212459

/-! ## A212459.P15152110680736874365

`A212455(n+1)+1`
-/

namespace A212459.P15152110680736874365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1) + 1

end

end A212459.P15152110680736874365

namespace A212459

/-- `A212455(n+1)+1` -/
def P15152110680736874365.Spec : Prop :=
  ∀ n, P15152110680736874365.a n = A212459 (n + 1)

end A212459

/-! ## A212459.P11911515323953163891

`A050504(2*(n+1))+1`
-/

namespace A212459.P11911515323953163891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (2 * (n + 1)) + 1

end

end A212459.P11911515323953163891

namespace A212459

/-- `A050504(2*(n+1))+1` -/
def P11911515323953163891.Spec : Prop :=
  ∀ n, P11911515323953163891.a n = A212459 (n + 1)

end A212459

/-! ## A212459.P9572673182917422085

`record[A050504(xor(1, n)+1)]+1`
-/

namespace A212459.P9572673182917422085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A212459.P9572673182917422085

namespace A212459

/-- `record[A050504(xor(1, n)+1)]+1` -/
def P9572673182917422085.Spec : Prop :=
  ∀ n, P9572673182917422085.a n = A212459 (n + 1)

end A212459

/-! ## A212459.P11090376105726702582

`A000040(2*(n+1))-A059111(2*(n+1))`
-/

namespace A212459.P11090376105726702582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) - A059111 (2 * (n + 1))

end

end A212459.P11090376105726702582

namespace A212459

/-- `A000040(2*(n+1))-A059111(2*(n+1))` -/
def P11090376105726702582.Spec : Prop :=
  ∀ n, P11090376105726702582.a n = A212459 (n + 1)

end A212459

/-! ## A212459.P16224878548358107670

`A000040(2*(n+1))+1-A064658(2*(n+1))`
-/

namespace A212459.P16224878548358107670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) + (1 - A064658 (2 * (n + 1)))

end

end A212459.P16224878548358107670

namespace A212459

/-- `A000040(2*(n+1))+1-A064658(2*(n+1))` -/
def P16224878548358107670.Spec : Prop :=
  ∀ n, P16224878548358107670.a n = A212459 (n + 1)

end A212459

/-! ## A212459.P15751432284789126093

`A050503(2*(n+1))+A064659(2*(n+1))-A059111(2*(n+1))`
-/

namespace A212459.P15751432284789126093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050503 (2 * (n + 1)) + (A064659 (2 * (n + 1)) - A059111 (2 * (n + 1)))

end

end A212459.P15751432284789126093

namespace A212459

/-- `A050503(2*(n+1))+A064659(2*(n+1))-A059111(2*(n+1))` -/
def P15751432284789126093.Spec : Prop :=
  ∀ n, P15751432284789126093.a n = A212459 (n + 1)

end A212459

/-! ## A212459.P2835981056291863687

`A020725(A212455(n+1))`
-/

namespace A212459.P2835981056291863687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A212455 (n + 1)).toNat

end

end A212459.P2835981056291863687

namespace A212459

/-- `A020725(A212455(n+1))` -/
def P2835981056291863687.Spec : Prop :=
  ∀ n, P2835981056291863687.a n = A212459 (n + 1)

end A212459

/-! ## A212459.P11516632637065536415

`A020725(A050504(2*(n+1)))`
-/

namespace A212459.P11516632637065536415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A050504 (2 * (n + 1))).toNat

end

end A212459.P11516632637065536415

namespace A212459

/-- `A020725(A050504(2*(n+1)))` -/
def P11516632637065536415.Spec : Prop :=
  ∀ n, P11516632637065536415.a n = A212459 (n + 1)

end A212459

/-!
# A212460: a(n) = ceiling(3n*log(3n)).

The programs for A212460, the canonical program `A212460.P16391224027189866396` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212460 has offset 1).

The definition of A212460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212460.P18312604895305438146

`ceil(3*(n+1)*log(3*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212460.P18312604895305438146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * (n + 1) : ℝ) * Real.log (3 * (n + 1) : ℝ)⌉

end

end A212460.P18312604895305438146

namespace A212460

/-- `ceil(3*(n+1)*log(3*(n+1)))` -/
def P18312604895305438146.Spec : Prop :=
  ∀ n, P18312604895305438146.a n = A212460 (n + 1)

end A212460

/-! ## A212460.P16391224027189866396

`A050502(3*(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212460

/-- `A050502(3*(n+1))` -/
def P16391224027189866396.Spec : Prop :=
  ∀ n, P16391224027189866396.a n = A212460 (n + 1)

theorem P16391224027189866396.correct : P16391224027189866396.Spec := by
  intro n
  simp only [A212460, Nat.add_sub_cancel]

end A212460

/-! ## A212460.P10472260112352653327

`A212456(n+1)+1`
-/

namespace A212460.P10472260112352653327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212456 (n + 1) + 1

end

end A212460.P10472260112352653327

namespace A212460

/-- `A212456(n+1)+1` -/
def P10472260112352653327.Spec : Prop :=
  ∀ n, P10472260112352653327.a n = A212460 (n + 1)

end A212460

/-! ## A212460.P14937023155672650736

`A050504(3*(n+1))+1`
-/

namespace A212460.P14937023155672650736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (3 * (n + 1)) + 1

end

end A212460.P14937023155672650736

namespace A212460

/-- `A050504(3*(n+1))+1` -/
def P14937023155672650736.Spec : Prop :=
  ∀ n, P14937023155672650736.a n = A212460 (n + 1)

end A212460

/-! ## A212460.P14728604323211469228

`A020725(floor(3*(n+1)*log(3*(n+1))))`
-/

namespace A212460.P14728604323211469228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ⌊3 * ((n + 1 : ℝ) * Real.log (3 * (n + 1) : ℝ))⌋.toNat

end

end A212460.P14728604323211469228

namespace A212460

/-- `A020725(floor(3*(n+1)*log(3*(n+1))))` -/
def P14728604323211469228.Spec : Prop :=
  ∀ n, P14728604323211469228.a n = A212460 (n + 1)

end A212460

/-!
# A212461: a(n) = ceiling(4n*log(4n)).

The programs for A212461, the canonical program `A212461.P17580356082621958318` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212461 has offset 1).

The definition of A212461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212461.P15704175037379403962

`ceil(4*(n+1)*log(4*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212461.P15704175037379403962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 * (n + 1) : ℝ) * Real.log (4 * (n + 1) : ℝ)⌉

end

end A212461.P15704175037379403962

namespace A212461

/-- `ceil(4*(n+1)*log(4*(n+1)))` -/
def P15704175037379403962.Spec : Prop :=
  ∀ n, P15704175037379403962.a n = A212461 (n + 1)

end A212461

/-! ## A212461.P17580356082621958318

`A050502(4*(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212461

/-- `A050502(4*(n+1))` -/
def P17580356082621958318.Spec : Prop :=
  ∀ n, P17580356082621958318.a n = A212461 (n + 1)

theorem P17580356082621958318.correct : P17580356082621958318.Spec := by
  intro n
  simp only [A212461, Nat.add_sub_cancel]

end A212461

/-! ## A212461.P1099061354207032493

`A212457(n+1)+1`
-/

namespace A212461.P1099061354207032493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212457 (n + 1) + 1

end

end A212461.P1099061354207032493

namespace A212461

/-- `A212457(n+1)+1` -/
def P1099061354207032493.Spec : Prop :=
  ∀ n, P1099061354207032493.a n = A212461 (n + 1)

end A212461

/-! ## A212461.P2719118178656084578

`A212459(2*(n+1))`
-/

namespace A212461.P2719118178656084578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212459 (2 * (n + 1))

end

end A212461.P2719118178656084578

namespace A212461

/-- `A212459(2*(n+1))` -/
def P2719118178656084578.Spec : Prop :=
  ∀ n, P2719118178656084578.a n = A212461 (n + 1)

end A212461

/-! ## A212461.P14762767717667183740

`A212455(2*(n+1))+1`
-/

namespace A212461.P14762767717667183740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (2 * (n + 1)) + 1

end

end A212461.P14762767717667183740

namespace A212461

/-- `A212455(2*(n+1))+1` -/
def P14762767717667183740.Spec : Prop :=
  ∀ n, P14762767717667183740.a n = A212461 (n + 1)

end A212461

/-! ## A212461.P18068961264301761359

`A050504(4*(n+1))+1`
-/

namespace A212461.P18068961264301761359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (4 * (n + 1)) + 1

end

end A212461.P18068961264301761359

namespace A212461

/-- `A050504(4*(n+1))+1` -/
def P18068961264301761359.Spec : Prop :=
  ∀ n, P18068961264301761359.a n = A212461 (n + 1)

end A212461

/-! ## A212461.P8279994742104865463

`record[A212459(A028234(n+1)+1)]`
-/

namespace A212461.P8279994742104865463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212459 (A028234 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212461.P8279994742104865463

namespace A212461

/-- `record[A212459(A028234(n+1)+1)]` -/
def P8279994742104865463.Spec : Prop :=
  ∀ n, P8279994742104865463.a n = A212461 (n + 1)

end A212461

/-! ## A212461.P16328478209073857285

`A020725(A212457(n+1))`
-/

namespace A212461.P16328478209073857285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A212457 (n + 1)).toNat

end

end A212461.P16328478209073857285

namespace A212461

/-- `A020725(A212457(n+1))` -/
def P16328478209073857285.Spec : Prop :=
  ∀ n, P16328478209073857285.a n = A212461 (n + 1)

end A212461

/-! ## A212461.P5379646551590242772

`A020725(A212455(2*(n+1)))`
-/

namespace A212461.P5379646551590242772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A212455 (2 * (n + 1))).toNat

end

end A212461.P5379646551590242772

namespace A212461

/-- `A020725(A212455(2*(n+1)))` -/
def P5379646551590242772.Spec : Prop :=
  ∀ n, P5379646551590242772.a n = A212461 (n + 1)

end A212461

/-!
# A212462: a(n) = ceiling(5n*log(5n)).

The programs for A212462, the canonical program `A212462.P7359789239239952366` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212462 has offset 1).

The definition of A212462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212462.P6831025425549718224

`ceil(5*(n+1)*log(5*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212462.P6831025425549718224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 * (n + 1) : ℝ) * Real.log (5 * (n + 1) : ℝ)⌉

end

end A212462.P6831025425549718224

namespace A212462

/-- `ceil(5*(n+1)*log(5*(n+1)))` -/
def P6831025425549718224.Spec : Prop :=
  ∀ n, P6831025425549718224.a n = A212462 (n + 1)

end A212462

/-! ## A212462.P7359789239239952366

`A050502(5*(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212462

/-- `A050502(5*(n+1))` -/
def P7359789239239952366.Spec : Prop :=
  ∀ n, P7359789239239952366.a n = A212462 (n + 1)

theorem P7359789239239952366.correct : P7359789239239952366.Spec := by
  intro n
  simp only [A212462, Nat.add_sub_cancel]

end A212462

/-! ## A212462.P2464368022312765413

`A212458(n+1)+1`
-/

namespace A212462.P2464368022312765413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212458 (n + 1) + 1

end

end A212462.P2464368022312765413

namespace A212462

/-- `A212458(n+1)+1` -/
def P2464368022312765413.Spec : Prop :=
  ∀ n, P2464368022312765413.a n = A212462 (n + 1)

end A212462

/-! ## A212462.P3474191229847014010

`A050504(5*(n+1))+1`
-/

namespace A212462.P3474191229847014010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (5 * (n + 1)) + 1

end

end A212462.P3474191229847014010

namespace A212462

/-- `A050504(5*(n+1))+1` -/
def P3474191229847014010.Spec : Prop :=
  ∀ n, P3474191229847014010.a n = A212462 (n + 1)

end A212462

/-! ## A212462.P8954353155578140042

`A020725(A212458(n+1))`
-/

namespace A212462.P8954353155578140042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A212458 (n + 1)).toNat

end

end A212462.P8954353155578140042

namespace A212462

/-- `A020725(A212458(n+1))` -/
def P8954353155578140042.Spec : Prop :=
  ∀ n, P8954353155578140042.a n = A212462 (n + 1)

end A212462

/-! ## A212462.P12392908229720182966

`A020725(A050504(5*(n+1)))`
-/

namespace A212462.P12392908229720182966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A050504 (5 * (n + 1))).toNat

end

end A212462.P12392908229720182966

namespace A212462

/-- `A020725(A050504(5*(n+1)))` -/
def P12392908229720182966.Spec : Prop :=
  ∀ n, P12392908229720182966.a n = A212462 (n + 1)

end A212462

/-!
# A212463: a(n) = ceiling( Pi^(n/3) ).

The programs for A212463, the canonical program `A212463.P7795511277784367836` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212463 has offset 1).

The definition of A212463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212463.P7795511277784367836

`ceil(root(π, 3)^(n+1))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212463

/-- `ceil(root(π, 3)^(n+1))` -/
def P7795511277784367836.Spec : Prop :=
  ∀ n, P7795511277784367836.a n = A212463 (n + 1)

theorem P7795511277784367836.correct : P7795511277784367836.Spec := by
  intro n
  simp only [A212463, Nat.add_sub_cancel]

end A212463

/-! ## A212463.P3195035420607162449

`floor(root(π, 3)^(n+1))+(n%2)!`
-/

namespace A212463.P3195035420607162449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.pi ^ (1 / (3 : ℝ))) ^ (n + 1)⌋ + (Nat.factorial (n % 2) : ℤ)

end

end A212463.P3195035420607162449

namespace A212463

/-- `floor(root(π, 3)^(n+1))+(n%2)!` -/
def P3195035420607162449.Spec : Prop :=
  ∀ n, P3195035420607162449.a n = A212463 (n + 1)

end A212463

/-! ## A212463.P3469525245369732975

`char[xor(1, n)]+floor(root(π, 3)^(n+1))`
-/

namespace A212463.P3469525245369732975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊(Real.pi ^ (1 / (3 : ℝ))) ^ (n + 1)⌋

end

end A212463.P3469525245369732975

namespace A212463

/-- `char[xor(1, n)]+floor(root(π, 3)^(n+1))` -/
def P3469525245369732975.Spec : Prop :=
  ∀ n, P3469525245369732975.a n = A212463 (n + 1)

end A212463

/-! ## A212463.P18245046001645665660

`floor(root(π, 3)^(n+1))+(1-char[1])!`
-/

namespace A212463.P18245046001645665660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.pi ^ (1 / (3 : ℝ))) ^ (n + 1)⌋ + (Nat.factorial (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat : ℤ)

end

end A212463.P18245046001645665660

namespace A212463

/-- `floor(root(π, 3)^(n+1))+(1-char[1])!` -/
def P18245046001645665660.Spec : Prop :=
  ∀ n, P18245046001645665660.a n = A212463 (n + 1)

end A212463

/-! ## A212463.P18232787336204254335

`A212464(n+1)+1`
-/

namespace A212463.P18232787336204254335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212464 (n + 1) + 1

end

end A212463.P18232787336204254335

namespace A212463

/-- `A212464(n+1)+1` -/
def P18232787336204254335.Spec : Prop :=
  ∀ n, P18232787336204254335.a n = A212463 (n + 1)

end A212463

/-! ## A212463.P17299876185861040479

`floor(root(π, 3)^(n+1))+A102477(n)^C(2, n+2)`
-/

namespace A212463.P17299876185861040479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.pi ^ (1 / (3 : ℝ))) ^ (n + 1)⌋ + A102477 n ^ Nat.choose 2 (n + 2)

end

end A212463.P17299876185861040479

namespace A212463

/-- `floor(root(π, 3)^(n+1))+A102477(n)^C(2, n+2)` -/
def P17299876185861040479.Spec : Prop :=
  ∀ n, P17299876185861040479.a n = A212463 (n + 1)

end A212463

/-! ## A212463.P4345384811158893472

`floor(root(π, 3)^(n+1))+A007318(∑[n])`
-/

namespace A212463.P4345384811158893472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.pi ^ (1 / (3 : ℝ))) ^ (n + 1)⌋ + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212463.P4345384811158893472

namespace A212463

/-- `floor(root(π, 3)^(n+1))+A007318(∑[n])` -/
def P4345384811158893472.Spec : Prop :=
  ∀ n, P4345384811158893472.a n = A212463 (n + 1)

end A212463

/-! ## A212463.P7572701347287881408

`A001222(A109416(n+1))+floor(root(π, 3)^(n+1))`
-/

namespace A212463.P7572701347287881408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A109416 (n + 1)).toNat + ⌊(Real.pi ^ (1 / (3 : ℝ))) ^ (n + 1)⌋

end

end A212463.P7572701347287881408

namespace A212463

/-- `A001222(A109416(n+1))+floor(root(π, 3)^(n+1))` -/
def P7572701347287881408.Spec : Prop :=
  ∀ n, P7572701347287881408.a n = A212463 (n + 1)

end A212463

/-! ## A212463.P14746735801867538871

`A001222(A165815(n+1))+floor(root(π, 3)^(n+1))`
-/

namespace A212463.P14746735801867538871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A165815 (n + 1)).toNat + ⌊(Real.pi ^ (1 / (3 : ℝ))) ^ (n + 1)⌋

end

end A212463.P14746735801867538871

namespace A212463

/-- `A001222(A165815(n+1))+floor(root(π, 3)^(n+1))` -/
def P14746735801867538871.Spec : Prop :=
  ∀ n, P14746735801867538871.a n = A212463 (n + 1)

end A212463

/-!
# A212464: a(n) = floor( Pi^(n/3) ).

The programs for A212464, the canonical program `A212464.P8922990978344617064` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212464 has offset 1).

The definition of A212464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212464.P15398044299944325136

`floor(root(π, 3)^(n+1))`
-/

namespace A212464.P15398044299944325136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.pi ^ (1 / (3 : ℝ))) ^ (n + 1)⌋

end

end A212464.P15398044299944325136

namespace A212464

/-- `floor(root(π, 3)^(n+1))` -/
def P15398044299944325136.Spec : Prop :=
  ∀ n, P15398044299944325136.a n = A212464 (n + 1)

end A212464

/-! ## A212464.P8922990978344617064

`A212463(n+1)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212464

/-- `A212463(n+1)-1` -/
def P8922990978344617064.Spec : Prop :=
  ∀ n, P8922990978344617064.a n = A212464 (n + 1)

theorem P8922990978344617064.correct : P8922990978344617064.Spec := by
  intro n
  simp only [A212464, Nat.add_sub_cancel]

end A212464

/-! ## A212464.P7631102617544130071

`A057428(2*n+1)+ceil(root(π, 3)^(n+1))`
-/

namespace A212464.P7631102617544130071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * n + 1) + ⌈(Real.pi ^ (1 / (3 : ℝ))) ^ (n + 1)⌉

end

end A212464.P7631102617544130071

namespace A212464

/-- `A057428(2*n+1)+ceil(root(π, 3)^(n+1))` -/
def P7631102617544130071.Spec : Prop :=
  ∀ n, P7631102617544130071.a n = A212464 (n + 1)

end A212464

/-! ## A212464.P8756341859021645164

`abs(A212463(n+1)+A057428(2*n+1))`
-/

namespace A212464.P8756341859021645164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212463 (n + 1) + A057428 (2 * n + 1)|

end

end A212464.P8756341859021645164

namespace A212464

/-- `abs(A212463(n+1)+A057428(2*n+1))` -/
def P8756341859021645164.Spec : Prop :=
  ∀ n, P8756341859021645164.a n = A212464 (n + 1)

end A212464

/-! ## A212464.P2389008559729206023

`A212496(gcd(n+1, n+2))+A212463(n+1)`
-/

namespace A212464.P2389008559729206023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212496 (Nat.gcd (n + 1) (n + 2)) + A212463 (n + 1)

end

end A212464.P2389008559729206023

namespace A212464

/-- `A212496(gcd(n+1, n+2))+A212463(n+1)` -/
def P2389008559729206023.Spec : Prop :=
  ∀ n, P2389008559729206023.a n = A212464 (n + 1)

end A212464

/-! ## A212464.P9065748958930271091

`A316441(A000040(n+1))+A212463(n+1)`
-/

namespace A212464.P9065748958930271091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A212463 (n + 1)

end

end A212464.P9065748958930271091

namespace A212464

/-- `A316441(A000040(n+1))+A212463(n+1)` -/
def P9065748958930271091.Spec : Prop :=
  ∀ n, P9065748958930271091.a n = A212464 (n + 1)

end A212464

/-! ## A212464.P8366743971998355644

`ceil(root(π, 3)^(n+1)-A007318(A000217(n)))`
-/

namespace A212464.P8366743971998355644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.pi ^ (1 / (3 : ℝ))) ^ (n + 1) - (A007318 (A000217 n).toNat : ℝ)⌉

end

end A212464.P8366743971998355644

namespace A212464

/-- `ceil(root(π, 3)^(n+1)-A007318(A000217(n)))` -/
def P8366743971998355644.Spec : Prop :=
  ∀ n, P8366743971998355644.a n = A212464 (n + 1)

end A212464

/-! ## A212464.P8178351208646053126

`A212496(A014963(∑[n+1]))+A212463(n+1)`
-/

namespace A212464.P8178351208646053126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212496 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A212463 (n + 1)

end

end A212464.P8178351208646053126

namespace A212464

/-- `A212496(A014963(∑[n+1]))+A212463(n+1)` -/
def P8178351208646053126.Spec : Prop :=
  ∀ n, P8178351208646053126.a n = A212464 (n + 1)

end A212464

/-! ## A212464.P14314875967165400821

`abs(A212463(n+1)+A008683(A165815(n+1)))`
-/

namespace A212464.P14314875967165400821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212463 (n + 1) + A008683 (A165815 (n + 1)).toNat|

end

end A212464.P14314875967165400821

namespace A212464

/-- `abs(A212463(n+1)+A008683(A165815(n+1)))` -/
def P14314875967165400821.Spec : Prop :=
  ∀ n, P14314875967165400821.a n = A212464 (n + 1)

end A212464

/-!
# A212465: Number of 0..3 arrays of length n+3 with sum no more than 6 in any length 4 subsequence (=50% duty cycle).

The programs for A212465, there is no canonical definition to state claims against.
-/

/-! ## A212465.P6465684596724055462

`A241964(∑[n+3]+1)`
-/

namespace A212465.P6465684596724055462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212465.P6465684596724055462

/-! ## A212465.P6722769338976379973

`record[A241964(A101881(n+2))]`
-/

namespace A212465.P6722769338976379973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A101881 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212465.P6722769338976379973

/-! ## A212465.P889244741830468210

`lcm(A054977(n), A241964(A167614(n+2)-5))`
-/

namespace A212465.P889244741830468210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A241964 (A167614 (n + 2) - 5).toNat)

end

end A212465.P889244741830468210

/-! ## A212465.P14982547289440763771

`(A000027(n+1)-n)*A241964(A167614(n+2)-5)`
-/

namespace A212465.P14982547289440763771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * A241964 (A167614 (n + 2) - 5).toNat

end

end A212465.P14982547289440763771

/-! ## A212465.P11877860629072058493

`A001222(A001359(n+2))*A241964(A167614(n+2)-5)`
-/

namespace A212465.P11877860629072058493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001359 (n + 2)).toNat * A241964 (A167614 (n + 2) - 5).toNat

end

end A212465.P11877860629072058493

/-! ## A212465.P15382565685837795326

`A241964(A167614(n+2)-5)+A000035(2*A287201(n+1))`
-/

namespace A212465.P15382565685837795326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A167614 (n + 2) - 5).toNat + A000035 (2 * A287201 (n + 1)).toNat

end

end A212465.P15382565685837795326

/-!
# A212466: Number of 0..3 arrays of length n+5 with sum no more than 9 in any length 6 subsequence (=50% duty cycle).

The programs for A212466, there is no canonical definition to state claims against.
-/

/-! ## A212466.P16509576530872756751

`A212471(∑[n+3]+1)`
-/

namespace A212466.P16509576530872756751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212466.P16509576530872756751

/-! ## A212466.P13966848020896598364

`A242144(∑[n+3]+1)`
-/

namespace A212466.P13966848020896598364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212466.P13966848020896598364

/-! ## A212466.P2179620554583204387

`or(A000038(n), A242144(A034856(n+2)))`
-/

namespace A212466.P2179620554583204387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A242144 (A034856 (n + 2)).toNat)

end

end A212466.P2179620554583204387

/-! ## A212466.P1234486000998346843

`A242144(A034856(n+2))%A000108(n+9)`
-/

namespace A212466.P1234486000998346843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242144 (A034856 (n + 2)).toNat) (A000108 (n + 9))

end

end A212466.P1234486000998346843

/-! ## A212466.P1331212317281237912

`abs((A004442(n)-n)*A242144(A034856(n+2)))`
-/

namespace A212466.P1331212317281237912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A004442 n - (n : ℤ)) * A242144 (A034856 (n + 2)).toNat|

end

end A212466.P1331212317281237912

/-!
# A212467: Number of 0..3 arrays of length n+7 with sum no more than 12 in any length 8 subsequence (=50% duty cycle).

The programs for A212467, there is no canonical definition to state claims against.
-/

/-! ## A212467.P60571992395925403

`A212471(A027379(n+2))`
-/

namespace A212467.P60571992395925403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A027379 (n + 2)).toNat

end

end A212467.P60571992395925403

/-! ## A212467.P3094177431415613746

`A212471(A155212(n)+5)`
-/

namespace A212467.P3094177431415613746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A155212 n + 5).toNat

end

end A212467.P3094177431415613746

/-! ## A212467.P16551771095285636638

`A212471(A056000(n)+7)`
-/

namespace A212467.P16551771095285636638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A056000 n + 7).toNat

end

end A212467.P16551771095285636638

/-! ## A212467.P16428643333076274356

`A212471(A052905(n+1)+2)`
-/

namespace A212467.P16428643333076274356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A052905 (n + 1) + 2).toNat

end

end A212467.P16428643333076274356

/-! ## A212467.P14166683748618014931

`A212471(A055999(n+1)+3)`
-/

namespace A212467.P14166683748618014931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A055999 (n + 1) + 3).toNat

end

end A212467.P14166683748618014931

/-!
# A212468: Number of 0..3 arrays of length n+9 with sum no more than 15 in any length 10 subsequence (=50% duty cycle).

The programs for A212468, there is no canonical definition to state claims against.
-/

/-! ## A212468.P1945644750056746354

`A212471(A046691(n+3))`
-/

namespace A212468.P1945644750056746354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A046691 (n + 3)).toNat

end

end A212468.P1945644750056746354

/-! ## A212468.P2809777555026950254

`A212471(eq[4, A193592(n)])`
-/

namespace A212468.P2809777555026950254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212468.P2809777555026950254

/-! ## A212468.P12572721514391605693

`A212471(Δ[A023545(n+1)])`
-/

namespace A212468.P12572721514391605693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (f1 (n + 1) - f1 n).toNat

end

end A212468.P12572721514391605693

/-! ## A212468.P18101247306192412464

`A212471(A052905(n+2)+1)`
-/

namespace A212468.P18101247306192412464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A052905 (n + 2) + 1).toNat

end

end A212468.P18101247306192412464

/-! ## A212468.P5821250208863773395

`A212471(A055999(n+2)+2)`
-/

namespace A212468.P5821250208863773395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A055999 (n + 2) + 2).toNat

end

end A212468.P5821250208863773395

/-!
# A212469: Number of 0..3 arrays of length n+11 with sum no more than 18 in any length 12 subsequence (=50% duty cycle).

The programs for A212469, there is no canonical definition to state claims against.
-/

/-! ## A212469.P7760473016011176015

`A212471(A052905(n+3))`
-/

namespace A212469.P7760473016011176015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A052905 (n + 3)).toNat

end

end A212469.P7760473016011176015

/-! ## A212469.P6165992894017751260

`A212471(eq[3, A219347(n)])`
-/

namespace A212469.P6165992894017751260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212469.P6165992894017751260

/-! ## A212469.P8080673342057181716

`A212471(eq[5, A193592(n)])`
-/

namespace A212469.P8080673342057181716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212469.P8080673342057181716

/-! ## A212469.P8585804855098527395

`A212471(A055999(n+3)+1)`
-/

namespace A212469.P8585804855098527395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A055999 (n + 3) + 1).toNat

end

end A212469.P8585804855098527395

/-! ## A212469.P8371161133519367312

`A212471(eq[8, A243070(n+1)])`
-/

namespace A212469.P8371161133519367312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212469.P8371161133519367312

/-!
# A212470: Number of 0..3 arrays of length n+13 with sum no more than 21 in any length 14 subsequence (=50% duty cycle).

The programs for A212470, there is no canonical definition to state claims against.
-/

/-! ## A212470.P648459198091224660

`A212471(A055999(n+4))`
-/

namespace A212470.P648459198091224660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A055999 (n + 4)).toNat

end

end A212470.P648459198091224660

/-! ## A212470.P4447137006889554655

`A212471(eq[4, A219347(n)])`
-/

namespace A212470.P4447137006889554655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212470.P4447137006889554655

/-! ## A212470.P3134603181301877157

`A212471(eq[6, A193592(n)])`
-/

namespace A212470.P3134603181301877157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212470.P3134603181301877157

/-! ## A212470.P8553081355216520854

`A212471(A167499(n+2)+Δ[A052905(2*n+1)])`
-/

namespace A212470.P8553081355216520854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A167499 (n + 2) + (f1 (n + 1) - f1 n)).toNat

end

end A212470.P8553081355216520854

/-! ## A212470.P6664610674414996535

`A212471(eq[7, A200370(n+1)])`
-/

namespace A212470.P6664610674414996535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212470.P6664610674414996535

/-!
# A212472: Number of 0..3 arrays of length 2*n with sum no more than 3*n in any length 2n subsequence (=50% duty cycle).

The programs for A212472, there is no canonical definition to state claims against.
-/

/-! ## A212472.P10322937618962056040

`A212471(∑[n]+1)`
-/

namespace A212472.P10322937618962056040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212472.P10322937618962056040

/-! ## A212472.P8796080356886968324

`record[A212471(n+1)]`
-/

namespace A212472.P8796080356886968324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212472.P8796080356886968324

/-! ## A212472.P7229972551903933440

`lcm(2, A212471(A000124(n)))`
-/

namespace A212472.P7229972551903933440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A212471 (A000124 n).toNat)

end

end A212472.P7229972551903933440

/-! ## A212472.P7783458129318653127

`or(A000038(n), A212471(A000124(n)))`
-/

namespace A212472.P7783458129318653127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A212471 (A000124 n).toNat)

end

end A212472.P7783458129318653127

/-! ## A212472.P3764754631695117010

`A001222(A000353(n+1))*A212471(A000124(n))`
-/

namespace A212472.P3764754631695117010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000353 (n + 1)).toNat * A212471 (A000124 n).toNat

end

end A212472.P3764754631695117010

/-!
# A212473: Number of 0..3 arrays of length 2*n+1 with sum no more than 3*n in any length 2n subsequence (=50% duty cycle).

The programs for A212473, there is no canonical definition to state claims against.
-/

/-! ## A212473.P7062147163820978348

`A212471(∑[n+1]+2)`
-/

namespace A212473.P7062147163820978348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A212473.P7062147163820978348

/-! ## A212473.P7436931210557395913

`record[gcd(A025581(n), A212471(n+3))]`
-/

namespace A212473.P7436931210557395913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A212471 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212473.P7436931210557395913

/-! ## A212473.P7208040732900281459

`record[A212471(n+3)%A212471(n+2)]`
-/

namespace A212473.P7208040732900281459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212471 (n + 3)) (A212471 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212473.P7208040732900281459

/-! ## A212473.P4100688342290502667

`record[A212471(A003057(n+2)-A001478(n+1))]`
-/

namespace A212473.P4100688342290502667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A003057 (n + 2) - A001478 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212473.P4100688342290502667

/-! ## A212473.P2817001307586656630

`record[A212471(n+3)*A323899(A130321(n))]`
-/

namespace A212473.P2817001307586656630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (n + 3) * A323899 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212473.P2817001307586656630

/-!
# A212474: Number of 0..3 arrays of length 2*n+2 with sum no more than 3*n in any length 2n subsequence (=50% duty cycle).

The programs for A212474, there is no canonical definition to state claims against.
-/

/-! ## A212474.P6056387617977929184

`A212471(∑[n+2]+4)`
-/

namespace A212474.P6056387617977929184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A212474.P6056387617977929184

/-! ## A212474.P4411354362911907868

`or(A000007(n), A212471(A167614(n+1)))`
-/

namespace A212474.P4411354362911907868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A212471 (A167614 (n + 1)).toNat)

end

end A212474.P4411354362911907868

/-! ## A212474.P11120110577744428879

`A212471(A167614(n+1))%A232926(n+1)`
-/

namespace A212474.P11120110577744428879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212471 (A167614 (n + 1)).toNat) (A232926 (n + 1))

end

end A212474.P11120110577744428879

/-! ## A212474.P17614711682153073473

`A038500(n+1)%2*A212471(A167614(n+1))`
-/

namespace A212474.P17614711682153073473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038500 (n + 1)) 2 * A212471 (A167614 (n + 1)).toNat

end

end A212474.P17614711682153073473

/-! ## A212474.P6351255342639101725

`(1-2*A000035(n))²*A212471(A167614(n+1))`
-/

namespace A212474.P6351255342639101725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) ^ 2 * A212471 (A167614 (n + 1)).toNat

end

end A212474.P6351255342639101725

/-!
# A212475: Number of 0..3 arrays of length 2*n+3 with sum no more than 3*n in any length 2n subsequence (=50% duty cycle).

The programs for A212475, there is no canonical definition to state claims against.
-/

/-! ## A212475.P6268617480652897156

`A212471(A052905(n)+9)`
-/

namespace A212475.P6268617480652897156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A052905 n + 9).toNat

end

end A212475.P6268617480652897156

/-! ## A212475.P13334270020068052322

`A212471(A055999(n)+10)`
-/

namespace A212475.P13334270020068052322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A055999 n + 10).toNat

end

end A212475.P13334270020068052322

/-! ## A212475.P15337843194570801254

`A212471(A167614(n+2)+1)`
-/

namespace A212475.P15337843194570801254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A167614 (n + 2) + 1).toNat

end

end A212475.P15337843194570801254

/-! ## A212475.P9091151981906921599

`A212471(A167499(n+2)-1)`
-/

namespace A212475.P9091151981906921599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A167499 (n + 2) - 1).toNat

end

end A212475.P9091151981906921599

/-! ## A212475.P11182886172379490466

`A212471(A034856(n+2)+6)`
-/

namespace A212475.P11182886172379490466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A034856 (n + 2) + 6).toNat

end

end A212475.P11182886172379490466

/-!
# A212476: Number of 0..3 arrays of length 2*n+4 with sum no more than 3*n in any length 2n subsequence (=50% duty cycle).

The programs for A212476, there is no canonical definition to state claims against.
-/

/-! ## A212476.P13061581935672672375

`A212471(A167499(n+3))`
-/

namespace A212476.P13061581935672672375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A167499 (n + 3)).toNat

end

end A212476.P13061581935672672375

/-! ## A212476.P2486614443700510588

`A212471(A155212(n)+13)`
-/

namespace A212476.P2486614443700510588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A155212 n + 13).toNat

end

end A212476.P2486614443700510588

/-! ## A212476.P10917465708357539794

`A212471(A056000(n)+15)`
-/

namespace A212476.P10917465708357539794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A056000 n + 15).toNat

end

end A212476.P10917465708357539794

/-! ## A212476.P5002751452464964771

`A212471(A034856(n+3)+7)`
-/

namespace A212476.P5002751452464964771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A034856 (n + 3) + 7).toNat

end

end A212476.P5002751452464964771

/-! ## A212476.P16047202062345481368

`A212471(A052905(n+1)+10)`
-/

namespace A212476.P16047202062345481368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A052905 (n + 1) + 10).toNat

end

end A212476.P16047202062345481368

/-!
# A212477: Number of 0..3 arrays of length 2*n+5 with sum no more than 3*n in any length 2n subsequence (=50% duty cycle).

The programs for A212477, there is no canonical definition to state claims against.
-/

/-! ## A212477.P5982923716867774741

`A212471(A167614(n+4)+3)`
-/

namespace A212477.P5982923716867774741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A167614 (n + 4) + 3).toNat

end

end A212477.P5982923716867774741

/-! ## A212477.P15963226584729569290

`A212471(A027379(n+3)+9)`
-/

namespace A212477.P15963226584729569290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A027379 (n + 3) + 9).toNat

end

end A212477.P15963226584729569290

/-! ## A212477.P17742041490764870095

`A212471(A052905(n+2)+11)`
-/

namespace A212477.P17742041490764870095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A052905 (n + 2) + 11).toNat

end

end A212477.P17742041490764870095

/-! ## A212477.P12309516332662579820

`A212471(eq[7, A131818(n+1)])`
-/

namespace A212477.P12309516332662579820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212477.P12309516332662579820

/-! ## A212477.P14553617362062912025

`A212471(A167499(n+3)+n+6)`
-/

namespace A212477.P14553617362062912025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A167499 (n + 3) + (n + 6 : ℤ)).toNat

end

end A212477.P14553617362062912025

/-!
# A212478: Number of 0..3 arrays of length 2*n+6 with sum no more than 3*n in any length 2n subsequence (=50% duty cycle).

The programs for A212478, there is no canonical definition to state claims against.
-/

/-! ## A212478.P7766022803025055668

`A212471(eq[11, A066657(n)])`
-/

namespace A212478.P7766022803025055668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212478.P7766022803025055668

/-! ## A212478.P4120296795053735440

`A212471(A000217(n+6)+7)`
-/

namespace A212478.P4120296795053735440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A000217 (n + 6) + 7).toNat

end

end A212478.P4120296795053735440

/-! ## A212478.P1096026078704148307

`A212471(A155212(n+2)+15)`
-/

namespace A212478.P1096026078704148307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A155212 (n + 2) + 15).toNat

end

end A212478.P1096026078704148307

/-! ## A212478.P16961488795251157511

`A212471(eq[8, A131818(n+1)])`
-/

namespace A212478.P16961488795251157511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212478.P16961488795251157511

/-! ## A212478.P10222837050751075445

`A212471(A000124(n+7)-(n+1))`
-/

namespace A212478.P10222837050751075445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212471 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A212478.P10222837050751075445

/-!
# A212484: Expansion of c(q^2) * b(q^6) / (b(q) * c(q) * b(q^3) * c(q^3))^(1/2) in powers of q where b(), c() are cubic AGM theta functions.

The programs for A212484, there is no canonical definition to state claims against.
-/

/-! ## A212484.P3429483861876395915

`A123629((2*n)%(n+1)+1)`
-/

namespace A212484.P3429483861876395915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123629 (2 * n % (n + 1) + 1)

end

end A212484.P3429483861876395915

/-! ## A212484.P18322072225252456052

`A123629(A028310(n))`
-/

namespace A212484.P18322072225252456052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123629 (A028310 n).toNat

end

end A212484.P18322072225252456052

/-! ## A212484.P13604669256839564572

`A123629(A000007(n)+n)`
-/

namespace A212484.P13604669256839564572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123629 (A000007 n + (n : ℤ)).toNat

end

end A212484.P13604669256839564572

/-! ## A212484.P6909258432269591092

`ceil(A227587(n)/4)`
-/

namespace A212484.P6909258432269591092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A227587 n : ℚ) / 4⌉

end

end A212484.P6909258432269591092

/-! ## A212484.P6364607332189801469

`A227587(n)/A123932(n)`
-/

namespace A212484.P6364607332189801469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227587 n : ℚ) / (A123932 n : ℚ)

end

end A212484.P6364607332189801469

/-! ## A212484.P2818930054635834871

`A233693(A004277(n))`
-/

namespace A212484.P2818930054635834871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A004277 n).toNat

end

end A212484.P2818930054635834871

/-! ## A212484.P13091591790256963138

`A233693(A004275(n+1))`
-/

namespace A212484.P13091591790256963138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A004275 (n + 1)).toNat

end

end A212484.P13091591790256963138

/-! ## A212484.P2138803859193885072

`A233693(A004273(n)+1)`
-/

namespace A212484.P2138803859193885072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A004273 n + 1).toNat

end

end A212484.P2138803859193885072

/-! ## A212484.P17151565577847768734

`A233693(A300576(n+2))`
-/

namespace A212484.P17151565577847768734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A300576 (n + 2)).toNat

end

end A212484.P17151565577847768734

/-! ## A212484.P16187285536564359116

`A233693(A028310(2*n))`
-/

namespace A212484.P16187285536564359116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A028310 (2 * n)).toNat

end

end A212484.P16187285536564359116

/-! ## A212484.P17328036086834567314

`A233693(A028310(n)+n)`
-/

namespace A212484.P17328036086834567314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A028310 n + (n : ℤ)).toNat

end

end A212484.P17328036086834567314

/-! ## A212484.P12145552923009945333

`A233693(A008486(n)-n)`
-/

namespace A212484.P12145552923009945333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A008486 n - (n : ℤ)).toNat

end

end A212484.P12145552923009945333

/-! ## A212484.P8925664435188108011

`A233693(A004280(n+2)-1)`
-/

namespace A212484.P8925664435188108011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A004280 (n + 2) - 1).toNat

end

end A212484.P8925664435188108011

/-! ## A212484.P10495349298073034728

`A233693(2*(A000007(n)+n))`
-/

namespace A212484.P10495349298073034728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (2 * (A000007 n + (n : ℤ))).toNat

end

end A212484.P10495349298073034728

/-! ## A212484.P10312563742200407113

`A233693(A000007(n)+n+n)`
-/

namespace A212484.P10312563742200407113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

end

end A212484.P10312563742200407113

/-! ## A212484.P9716181882577826475

`A261154(2*n)`
-/

namespace A212484.P9716181882577826475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261154 (2 * n)

end

end A212484.P9716181882577826475

/-! ## A212484.P1703264234408985906

`ceil(A260215(2*n)/2)`
-/

namespace A212484.P1703264234408985906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A260215 (2 * n) : ℚ) / 2⌉

end

end A212484.P1703264234408985906

/-! ## A212484.P5893575632913408622

`ceil(A261156(2*n)/2)`
-/

namespace A212484.P5893575632913408622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A261156 (2 * n) : ℚ) / 2⌉

end

end A212484.P5893575632913408622

/-!
# A212485: Triangle T(n,k) of orders of degree-n irreducible polynomials over GF(5) listed in ascending order.

The programs for A212485, there is no canonical definition to state claims against.
-/

/-! ## A212485.P830594534396558798

`A212737(∑[n+3]+1)`
-/

namespace A212485.P830594534396558798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212485.P830594534396558798

/-! ## A212485.P7584659186887619199

`or(char[3], A212737(A034856(n+2)))`
-/

namespace A212485.P7584659186887619199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212737 (A034856 (n + 2)).toNat)

end

end A212485.P7584659186887619199

/-! ## A212485.P14246114406565390694

`A212737(A034856(n+2))%A017057(n)`
-/

namespace A212485.P14246114406565390694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212737 (A034856 (n + 2)).toNat) (A017057 n)

end

end A212485.P14246114406565390694

/-! ## A212485.P5065566117702486522

`char[A040115(n)]*A212737(A034856(n+2))`
-/

namespace A212485.P5065566117702486522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040115 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212737 (A034856 (n + 2)).toNat

end

end A212485.P5065566117702486522

/-! ## A212485.P1159755254991042090

`char[A057979(n)]*A212737(A034856(n+2))`
-/

namespace A212485.P1159755254991042090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212737 (A034856 (n + 2)).toNat

end

end A212485.P1159755254991042090

/-! ## A212485.P17914646920247260647

`char[A166043(n)]*A212737(A034856(n+2))`
-/

namespace A212485.P17914646920247260647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212737 (A034856 (n + 2)).toNat

end

end A212485.P17914646920247260647

/-! ## A212485.P3882161486708295206

`A212737(A034856(n+2))^(A000007(n)+1)`
-/

namespace A212485.P3882161486708295206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212737 (A034856 (n + 2)).toNat : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A212485.P3882161486708295206

/-! ## A212485.P15390465998158785250

`A212737(A034856(n+2))+2%A000034(n)`
-/

namespace A212485.P15390465998158785250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A034856 (n + 2)).toNat + Int.tmod 2 (A000034 n)

end

end A212485.P15390465998158785250

/-! ## A212485.P7509303309480788381

`A007318(C(2, n))*A212737(A034856(n+2))`
-/

namespace A212485.P7509303309480788381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A212737 (A034856 (n + 2)).toNat

end

end A212485.P7509303309480788381

/-! ## A212485.P14380215772614641422

`abs(A008836(n+1)*A212737(A034856(n+2)))`
-/

namespace A212485.P14380215772614641422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008836 (n + 1) * A212737 (A034856 (n + 2)).toNat|

end

end A212485.P14380215772614641422

/-! ## A212485.P15933949561213323410

`-(A212737(A034856(n+2))*A260196(n+2))`
-/

namespace A212485.P15933949561213323410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A212737 (A034856 (n + 2)).toNat * A260196 (n + 2))

end

end A212485.P15933949561213323410

/-! ## A212485.P1293513420683080663

`A212737(A034856(n+2))+char[A197711(n+1)]`
-/

namespace A212485.P1293513420683080663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197711 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A212485.P1293513420683080663

/-! ## A212485.P3299660780522840471

`char[A060681(n+1)]*A212737(A034856(n+2))`
-/

namespace A212485.P3299660780522840471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212737 (A034856 (n + 2)).toNat

end

end A212485.P3299660780522840471

/-! ## A212485.P14269333953088494304

`A014963(6*(n+1))*A212737(A034856(n+2))`
-/

namespace A212485.P14269333953088494304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A212737 (A034856 (n + 2)).toNat

end

end A212485.P14269333953088494304

/-! ## A212485.P13177087689878191543

`A000040(n+2)%2*A212737(A034856(n+2))`
-/

namespace A212485.P13177087689878191543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A212737 (A034856 (n + 2)).toNat

end

end A212485.P13177087689878191543

/-! ## A212485.P17889218517947626456

`gcd(A098764(n+1)%2, A212737(A034856(n+2)))`
-/

namespace A212485.P17889218517947626456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A098764 (n + 1)) 2) (A212737 (A034856 (n + 2)).toNat)

end

end A212485.P17889218517947626456

/-! ## A212485.P11655702633489002019

`gcd(15, A172071(n+1))*A212737(A034856(n+2))`
-/

namespace A212485.P11655702633489002019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 15 (A172071 (n + 1)) : ℤ) * A212737 (A034856 (n + 2)).toNat

end

end A212485.P11655702633489002019

/-! ## A212485.P10351299471670335914

`A212737(A034856(n+2))+A008683(49*(n+1))`
-/

namespace A212485.P10351299471670335914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A034856 (n + 2)).toNat + A008683 (49 * (n + 1))

end

end A212485.P10351299471670335914

/-! ## A212485.P9028889248131289628

`A000010(gcd(n, n+1))*A212737(A034856(n+2))`
-/

namespace A212485.P9028889248131289628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1)) * A212737 (A034856 (n + 2)).toNat

end

end A212485.P9028889248131289628

/-! ## A212485.P1127910699486789167

`A105812(2*(n+1))²*A212737(A034856(n+2))`
-/

namespace A212485.P1127910699486789167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * (n + 1)) ^ 2 * A212737 (A034856 (n + 2)).toNat

end

end A212485.P1127910699486789167

/-!
# A212486: Triangle T(n,k) of orders of degree-n irreducible polynomials over GF(7) listed in ascending order.

The programs for A212486, there is no canonical definition to state claims against.
-/

/-! ## A212486.P11819879846705172769

`A212737(∑[n+4]+3)`
-/

namespace A212486.P11819879846705172769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A212486.P11819879846705172769

/-! ## A212486.P17497300721936960840

`or(char[2], A212737(A027379(n+2)))`
-/

namespace A212486.P17497300721936960840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212737 (A027379 (n + 2)).toNat)

end

end A212486.P17497300721936960840

/-! ## A212486.P10234103110773058742

`or(char[2], A212737(A055998(n+2)))`
-/

namespace A212486.P10234103110773058742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212737 (A055998 (n + 2)).toNat)

end

end A212486.P10234103110773058742

/-! ## A212486.P1252784646438455022

`gcd(A000038(n), A212737(A055998(n+2)))`
-/

namespace A212486.P1252784646438455022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A212737 (A055998 (n + 2)).toNat)

end

end A212486.P1252784646438455022

/-! ## A212486.P3448843323557440466

`char[A025429(n)]*A212737(A055998(n+2))`
-/

namespace A212486.P3448843323557440466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212737 (A055998 (n + 2)).toNat

end

end A212486.P3448843323557440466

/-! ## A212486.P10643494982287679109

`char[A057502(n)]*A212737(A055998(n+2))`
-/

namespace A212486.P10643494982287679109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212737 (A055998 (n + 2)).toNat

end

end A212486.P10643494982287679109

/-! ## A212486.P7229592081590069336

`A057427(n+1)*A212737(A055998(n+2))`
-/

namespace A212486.P7229592081590069336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A212737 (A055998 (n + 2)).toNat

end

end A212486.P7229592081590069336

/-! ## A212486.P10803835333547967624

`A212737(A027379(n+2))%A212725(n+1)`
-/

namespace A212486.P10803835333547967624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212737 (A027379 (n + 2)).toNat) (A212725 (n + 1))

end

end A212486.P10803835333547967624

/-! ## A212486.P3528777696535900103

`A212737(A055998(n+2))%A000041(n+6)`
-/

namespace A212486.P3528777696535900103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212737 (A055998 (n + 2)).toNat) (A000041 (n + 6))

end

end A212486.P3528777696535900103

/-! ## A212486.P2515270597686739712

`A007318(C(2, n))*A212737(A027379(n+2))`
-/

namespace A212486.P2515270597686739712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A212737 (A027379 (n + 2)).toNat

end

end A212486.P2515270597686739712

/-! ## A212486.P3916961743394374501

`A007318(C(2, n))*A212737(A055998(n+2))`
-/

namespace A212486.P3916961743394374501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A212737 (A055998 (n + 2)).toNat

end

end A212486.P3916961743394374501

/-! ## A212486.P13422997033871503654

`A212737(A055998(n+2))/A007318(C(3, n²))`
-/

namespace A212486.P13422997033871503654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212737 (A055998 (n + 2)).toNat : ℚ) / (A007318 (Nat.choose 3 (n ^ 2)) : ℚ)

end

end A212486.P13422997033871503654

/-! ## A212486.P17378525456092458471

`A212737(A027379(n+2))+A008683(9*(n+1))`
-/

namespace A212486.P17378525456092458471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A027379 (n + 2)).toNat + A008683 (9 * (n + 1))

end

end A212486.P17378525456092458471

/-! ## A212486.P8873627362803393462

`A212737(A055998(n+2))+A008683(8*(n+2))`
-/

namespace A212486.P8873627362803393462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A055998 (n + 2)).toNat + A008683 (8 * (n + 2))

end

end A212486.P8873627362803393462

/-! ## A212486.P12722616059261975637

`A000041(C(2, n+2))*A212737(A055998(n+2))`
-/

namespace A212486.P12722616059261975637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A212737 (A055998 (n + 2)).toNat

end

end A212486.P12722616059261975637

/-! ## A212486.P7019205920089468214

`A212737(A055998(n+2))^(A000040(n+1)%2)`
-/

namespace A212486.P7019205920089468214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212737 (A055998 (n + 2)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A212486.P7019205920089468214

/-! ## A212486.P617011287972337875

`A007318(floor(2/(n+1)))*A212737(A055998(n+2))`
-/

namespace A212486.P617011287972337875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊2 / (n + 1 : ℚ)⌋.toNat * A212737 (A055998 (n + 2)).toNat

end

end A212486.P617011287972337875

/-! ## A212486.P16046531088406249056

`A020725(n+1)+A212737(A055998(n+2))-(n+2)`
-/

namespace A212486.P16046531088406249056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) + (A212737 (A055998 (n + 2)).toNat - (n + 2 : ℤ))

end

end A212486.P16046531088406249056

/-! ## A212486.P1421624158927381445

`A212737(A055998(n+2))^A001221(A062383(n))`
-/

namespace A212486.P1421624158927381445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212737 (A055998 (n + 2)).toNat : ℚ) ^ (A001221 (A062383 n).toNat : ℤ)

end

end A212486.P1421624158927381445

/-! ## A212486.P11350314435921925292

`A212737(A055998(n+2))/A000045(A020639(2*(n+1)))`
-/

namespace A212486.P11350314435921925292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212737 (A055998 (n + 2)).toNat : ℚ) / (A000045 (A020639 (2 * (n + 1))).toNat : ℚ)

end

end A212486.P11350314435921925292

/-!
# A212491: G.f.: A(x) = x + x*ITERATE^2(x + x*ITERATE^4(x + x*ITERATE^8(x + x*ITERATE^16(x + ...)))), where ITERATE^n(F(x)) denotes the n-th iteration of F(x), and the nesting of iterations continue indefinitely.

The programs for A212491, there is no canonical definition to state claims against.
-/

/-! ## A212491.P2801188473199787179

`A057365(A193209(n+1)+A193190(n))`
-/

namespace A212491.P2801188473199787179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A193209 (n + 1) + A193190 n).toNat

end

end A212491.P2801188473199787179

/-!
# A212492: Prime p such that p, p+10, p+12 are all primes.

The programs for A212492, there is no canonical definition to state claims against.
-/

/-! ## A212492.P2496198584379962718

`p?[A144834(n+1)-9]`
-/

namespace A212492.P2496198584379962718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212492.P2496198584379962718

/-! ## A212492.P15122478316648203759

`p?[A001359(n+1)-10]`
-/

namespace A212492.P15122478316648203759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212492.P15122478316648203759

/-! ## A212492.P16846362568507294870

`p?[A054799(n+1)-10]`
-/

namespace A212492.P16846362568507294870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212492.P16846362568507294870

/-! ## A212492.P5360940902894864650

`p?[A063693(n+1)-10]`
-/

namespace A212492.P5360940902894864650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212492.P5360940902894864650

/-! ## A212492.P179468822644545842

`p?[A111166(n+1)-10]`
-/

namespace A212492.P179468822644545842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212492.P179468822644545842

/-! ## A212492.P2763716886967423356

`p?[A238528(n+1)-10]`
-/

namespace A212492.P2763716886967423356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212492.P2763716886967423356

/-! ## A212492.P14221179735719976152

`p?[A014574(n+1)-11]`
-/

namespace A212492.P14221179735719976152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212492.P14221179735719976152

/-! ## A212492.P5655696289716582110

`p?[p?[A000040(n+1)-2]-10]`
-/

namespace A212492.P5655696289716582110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212492.P5655696289716582110

/-! ## A212492.P4719453022073987969

`p?[p?[(n-1)*A001222(n+1)]-10]`
-/

namespace A212492.P4719453022073987969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212492.P4719453022073987969

/-!
# A212494: Base 2i representation of nonnegative integers.

The programs for A212494, there is no canonical definition to state claims against.
-/

/-! ## A212494.P10329723607002696951

`A051022(A007608(n))`
-/

namespace A212494.P10329723607002696951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A007608 n).toNat

end

end A212494.P10329723607002696951

/-! ## A212494.P8289142387562438588

`A007090(A177505(n))`
-/

namespace A212494.P8289142387562438588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A177505 n).toNat

end

end A212494.P8289142387562438588

/-! ## A212494.P316852558711644938

`A007608(and(-5, A177505(n)))`
-/

namespace A212494.P316852558711644938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007608 (Int.land (-5) (A177505 n)).toNat

end

end A212494.P316852558711644938

/-! ## A212494.P12034889920128259943

`A007608(or(char[1], A177505(n)))`
-/

namespace A212494.P12034889920128259943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007608 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A177505 n)).toNat

end

end A212494.P12034889920128259943

/-! ## A212494.P1241116498101696276

`A055645(or(char[1], A177505(n)))`
-/

namespace A212494.P1241116498101696276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A177505 n)).toNat

end

end A212494.P1241116498101696276

/-! ## A212494.P15477804767533692462

`A055645(A177505(n)+1)-1`
-/

namespace A212494.P15477804767533692462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (A177505 n + 1).toNat - 1

end

end A212494.P15477804767533692462

/-! ## A212494.P1070372581066369410

`A055645(2*A177505(n))/2`
-/

namespace A212494.P1070372581066369410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055645 (2 * A177505 n).toNat : ℚ) / 2

end

end A212494.P1070372581066369410

/-! ## A212494.P13544438204838820538

`A007608(A177505(2*n-n))`
-/

namespace A212494.P13544438204838820538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007608 (A177505 (2 * n - n)).toNat

end

end A212494.P13544438204838820538

/-! ## A212494.P7365268766286610659

`A055645(A057427(n)*A177505(n))`
-/

namespace A212494.P7365268766286610659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (A057427 n * A177505 n).toNat

end

end A212494.P7365268766286610659

/-! ## A212494.P14010280087310635739

`A007608(∑{d}[A177505(n), A000010(#)])`
-/

namespace A212494.P14010280087310635739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007608 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A212494.P14010280087310635739

/-!
# A212495: Numbers all of whose base 11 digits are even.

The programs for A212495, the canonical program `A212495.P5891605572768430447` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212495 has offset 1).

The definition of A212495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212495.P5891605572768430447

`eq[3, val(n, 11)-a(n-1)]` with `a(0)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212495

/-- `eq[3, val(n, 11)-a(n-1)]` -/
def P5891605572768430447.Spec : Prop :=
  ∀ n, (P5891605572768430447.a n : ℤ) = A212495 (n + 1)

theorem P5891605572768430447.correct : P5891605572768430447.Spec := by
  intro n
  simp only [A212495, Nat.add_sub_cancel]

end A212495

/-! ## A212495.P3244466183531953299

`2*A171397(A007092(n))`
-/

namespace A212495.P3244466183531953299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171397 (A007092 n).toNat

end

end A212495.P3244466183531953299

namespace A212495

/-- `2*A171397(A007092(n))` -/
def P3244466183531953299.Spec : Prop :=
  ∀ n, P3244466183531953299.a n = A212495 (n + 1)

end A212495

/-! ## A212495.P7043058132186586379

`record[A004521(n)]`
-/

namespace A212495.P7043058132186586379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212495.P7043058132186586379

namespace A212495

/-- `record[A004521(n)]` -/
def P7043058132186586379.Spec : Prop :=
  ∀ n, P7043058132186586379.a n = A212495 (n + 1)

end A212495

/-! ## A212495.P17455993429752052978

`A004521(eq[2*n, A004521(n)])`
-/

namespace A212495.P17455993429752052978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212495.P17455993429752052978

namespace A212495

/-- `A004521(eq[2*n, A004521(n)])` -/
def P17455993429752052978.Spec : Prop :=
  ∀ n, P17455993429752052978.a n = A212495 (n + 1)

end A212495

/-! ## A212495.P9037905136334780124

`A004521(eq[n, A004521(n)/2])`
-/

namespace A212495.P9037905136334780124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004521 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004521 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A212495.P9037905136334780124

namespace A212495

/-- `A004521(eq[n, A004521(n)/2])` -/
def P9037905136334780124.Spec : Prop :=
  ∀ n, P9037905136334780124.a n = A212495 (n + 1)

end A212495

/-! ## A212495.P3555527305867979753

`A004521(eq[n, A004521(n)-n])`
-/

namespace A212495.P3555527305867979753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004521 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212495.P3555527305867979753

namespace A212495

/-- `A004521(eq[n, A004521(n)-n])` -/
def P3555527305867979753.Spec : Prop :=
  ∀ n, P3555527305867979753.a n = A212495 (n + 1)

end A212495

/-! ## A212495.P4132717884626583405

`eq[1, gcd(11, A126869(n))]`
-/

namespace A212495.P4132717884626583405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A126869 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212495.P4132717884626583405

namespace A212495

/-- `eq[1, gcd(11, A126869(n))]` -/
def P4132717884626583405.Spec : Prop :=
  ∀ n, (P4132717884626583405.a n : ℤ) = A212495 (n + 1)

end A212495

/-!
# A212496: a(n) = Sum_{k=1..n} (-1)^(k-Omega(k)) with Omega(k) the total number of prime factors of k (counted with multiplicity).

The programs for A212496, the canonical program `A212496.P12538457052188032369` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212496 has offset 1).

The definition of A212496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212496.P1685557639463579629

`∑[(-1)^A091371(n+1)]`
-/

namespace A212496.P1685557639463579629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A091371 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212496.P1685557639463579629

namespace A212496

/-- `∑[(-1)^A091371(n+1)]` -/
def P1685557639463579629.Spec : Prop :=
  ∀ n, P1685557639463579629.a n = (A212496 (n + 1) : ℚ)

end A212496

/-! ## A212496.P4746804805838040879

`∑[(-1)^(A073093(n+1)+n)]`
-/

namespace A212496.P4746804805838040879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A073093 (n + 1) + (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212496.P4746804805838040879

namespace A212496

/-- `∑[(-1)^(A073093(n+1)+n)]` -/
def P4746804805838040879.Spec : Prop :=
  ∀ n, P4746804805838040879.a n = (A212496 (n + 1) : ℚ)

end A212496

/-! ## A212496.P857823745880727929

`∑[(-1)^(A001222(n+1)+n+1)]`
-/

namespace A212496.P857823745880727929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) + (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212496.P857823745880727929

namespace A212496

/-- `∑[(-1)^(A001222(n+1)+n+1)]` -/
def P857823745880727929.Spec : Prop :=
  ∀ n, P857823745880727929.a n = (A212496 (n + 1) : ℚ)

end A212496

/-! ## A212496.P2306668757318690078

`∑[A033999(A046079(n+1)+1)]`
-/

namespace A212496.P2306668757318690078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A046079 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212496.P2306668757318690078

namespace A212496

/-- `∑[A033999(A046079(n+1)+1)]` -/
def P2306668757318690078.Spec : Prop :=
  ∀ n, P2306668757318690078.a n = A212496 (n + 1)

end A212496

/-! ## A212496.P11159039782686726447

`∑[A115513(and(1, n-A016008(n+1)))]`
-/

namespace A212496.P11159039782686726447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115513 (Int.land 1 ((n : ℤ) - A016008 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212496.P11159039782686726447

namespace A212496

/-- `∑[A115513(and(1, n-A016008(n+1)))]` -/
def P11159039782686726447.Spec : Prop :=
  ∀ n, P11159039782686726447.a n = A212496 (n + 1)

end A212496

/-! ## A212496.P12538457052188032369

`∑[1-A359770(n+1)-A359770(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A212496

/-- `∑[1-A359770(n+1)-A359770(n+1)]` -/
def P12538457052188032369.Spec : Prop :=
  ∀ n, P12538457052188032369.a n = A212496 (n + 1)

theorem P12538457052188032369.correct : P12538457052188032369.Spec := by
  intro n
  simp only [A212496, Nat.add_sub_cancel]

end A212496

/-! ## A212496.P17391508654909485245

`∑[A317193(and(1, -(A001222(n+1)+n+1)²)+1)]`
-/

namespace A212496.P17391508654909485245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (Int.land 1 (-((A001222 (n + 1) + (n : ℤ) + 1) ^ 2)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212496.P17391508654909485245

namespace A212496

/-- `∑[A317193(and(1, -(A001222(n+1)+n+1)²)+1)]` -/
def P17391508654909485245.Spec : Prop :=
  ∀ n, P17391508654909485245.a n = A212496 (n + 1)

end A212496

/-! ## A212496.P7364415040495318616

`∑[A033999(A001222(n+1)+A000034(n))]`
-/

namespace A212496.P7364415040495318616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001222 (n + 1) + A000034 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212496.P7364415040495318616

namespace A212496

/-- `∑[A033999(A001222(n+1)+A000034(n))]` -/
def P7364415040495318616.Spec : Prop :=
  ∀ n, P7364415040495318616.a n = A212496 (n + 1)

end A212496

/-! ## A212496.P15046383920619446732

`∑[A105812(∑{e}[n+1, #]+n+2)]`
-/

namespace A212496.P15046383920619446732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212496.P15046383920619446732

namespace A212496

/-- `∑[A105812(∑{e}[n+1, #]+n+2)]` -/
def P15046383920619446732.Spec : Prop :=
  ∀ n, P15046383920619446732.a n = A212496 (n + 1)

end A212496

/-! ## A212496.P294867228063693170

`∑[A033999(A001222(n+1)+1+n)]`
-/

namespace A212496.P294867228063693170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001222 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212496.P294867228063693170

namespace A212496

/-- `∑[A033999(A001222(n+1)+1+n)]` -/
def P294867228063693170.Spec : Prop :=
  ∀ n, P294867228063693170.a n = A212496 (n + 1)

end A212496

/-! ## A212496.P15825187598095036380

`∑[A008836((char[2*n]+1)*(n+1))]`
-/

namespace A212496.P15825187598095036380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (((if ∃ j, f2 j = n then 1 else 0) + 1) * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212496.P15825187598095036380

namespace A212496

/-- `∑[A008836((char[2*n]+1)*(n+1))]` -/
def P15825187598095036380.Spec : Prop :=
  ∀ n, P15825187598095036380.a n = A212496 (n + 1)

end A212496

/-!
# A212498: A finite sequence (of length 39) in which every permutation of [1..7] is a substring.

The programs for A212498, there is no canonical definition to state claims against.
-/

/-! ## A212498.P13712838151221191101

`A351469(n+72)`
-/

namespace A212498.P13712838151221191101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351469 (n + 72)

end

end A212498.P13712838151221191101

/-!
# A212499: Numbers k that divide the product of digits of k.

The programs for A212499, the canonical program `A212499.P7791444323466826119` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212499 has offset 1).

The definition of A212499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212499.P10382481005938529924

`∪[A032559(n+1), A098394(n+1)]`
-/

namespace A212499.P10382481005938529924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212499.P10382481005938529924

namespace A212499

/-- `∪[A032559(n+1), A098394(n+1)]` -/
def P10382481005938529924.Spec : Prop :=
  ∀ n, (P10382481005938529924.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P7791444323466826119

`∪[A037124(n+1), A098394(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A212499

/-- `∪[A037124(n+1), A098394(n+1)]` -/
def P7791444323466826119.Spec : Prop :=
  ∀ n, (P7791444323466826119.a n : ℤ) = A212499 (n + 1)

theorem P7791444323466826119.correct : P7791444323466826119.Spec := by
  intro n
  simp only [A212499, Nat.add_sub_cancel]

end A212499

/-! ## A212499.P15093078657034558547

`∪[A043314(n+1), A098394(n+1)]`
-/

namespace A212499.P15093078657034558547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212499.P15093078657034558547

namespace A212499

/-- `∪[A043314(n+1), A098394(n+1)]` -/
def P15093078657034558547.Spec : Prop :=
  ∀ n, (P15093078657034558547.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P17930593696539471181

`∪[A080459(n+1), A098394(n+1)]`
-/

namespace A212499.P17930593696539471181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212499.P17930593696539471181

namespace A212499

/-- `∪[A080459(n+1), A098394(n+1)]` -/
def P17930593696539471181.Spec : Prop :=
  ∀ n, (P17930593696539471181.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P9776615320864108068

`∪[A098394(n+1), A276142(n+1)]`
-/

namespace A212499.P9776615320864108068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212499.P9776615320864108068

namespace A212499

/-- `∪[A098394(n+1), A276142(n+1)]` -/
def P9776615320864108068.Spec : Prop :=
  ∀ n, (P9776615320864108068.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P8764702712203338953

`∪[A051022(n+1), A011540(n+2)]`
-/

namespace A212499.P8764702712203338953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212499.P8764702712203338953

namespace A212499

/-- `∪[A051022(n+1), A011540(n+2)]` -/
def P8764702712203338953.Spec : Prop :=
  ∀ n, (P8764702712203338953.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P14532663590258139638

`record[gcd(n+1, ∏{digits}[n+1, #])]`
-/

namespace A212499.P14532663590258139638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212499.P14532663590258139638

namespace A212499

/-- `record[gcd(n+1, ∏{digits}[n+1, #])]` -/
def P14532663590258139638.Spec : Prop :=
  ∀ n, (P14532663590258139638.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P10569001907105988395

`record[n+1-A070565(n+1)%(n+1)]`
-/

namespace A212499.P10569001907105988395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A070565 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212499.P10569001907105988395

namespace A212499

/-- `record[n+1-A070565(n+1)%(n+1)]` -/
def P10569001907105988395.Spec : Prop :=
  ∀ n, P10569001907105988395.a n = A212499 (n + 1)

end A212499

/-! ## A212499.P3680119806453204242

`eq[n, A381966(A028310(n))]`
-/

namespace A212499.P3680119806453204242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381966 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212499.P3680119806453204242

namespace A212499

/-- `eq[n, A381966(A028310(n))]` -/
def P3680119806453204242.Spec : Prop :=
  ∀ n, (P3680119806453204242.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P17313973426976913677

`record[A028310(gcd(n, A007954(n)))]`
-/

namespace A212499.P17313973426976913677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A007954 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212499.P17313973426976913677

namespace A212499

/-- `record[A028310(gcd(n, A007954(n)))]` -/
def P17313973426976913677.Spec : Prop :=
  ∀ n, P17313973426976913677.a n = A212499 (n + 1)

end A212499

/-! ## A212499.P15270004363024047624

`record[gcd(A028310(n), A230099(n))]`
-/

namespace A212499.P15270004363024047624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A230099 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212499.P15270004363024047624

namespace A212499

/-- `record[gcd(A028310(n), A230099(n))]` -/
def P15270004363024047624.Spec : Prop :=
  ∀ n, (P15270004363024047624.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P6522850790950617762

`lt[A070565(n*A168046(n))², n]`
-/

namespace A212499.P6522850790950617762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 ((n : ℤ) * A168046 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A212499.P6522850790950617762

namespace A212499

/-- `lt[A070565(n*A168046(n))², n]` -/
def P6522850790950617762.Spec : Prop :=
  ∀ n, (P6522850790950617762.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P10658608127792618622

`record[gcd(A007954(n+1), A230099(n+1))]`
-/

namespace A212499.P10658608127792618622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007954 (n + 1)) (A230099 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212499.P10658608127792618622

namespace A212499

/-- `record[gcd(A007954(n+1), A230099(n+1))]` -/
def P10658608127792618622.Spec : Prop :=
  ∀ n, (P10658608127792618622.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P3969295496663364319

`record[n+1-A007954(n+1)*A031286(n)]`
-/

namespace A212499.P3969295496663364319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007954 (n + 1) * A031286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212499.P3969295496663364319

namespace A212499

/-- `record[n+1-A007954(n+1)*A031286(n)]` -/
def P3969295496663364319.Spec : Prop :=
  ∀ n, P3969295496663364319.a n = A212499 (n + 1)

end A212499

/-! ## A212499.P16044636489148281416

`record[n+1-A007954(n+1)*A031346(n)]`
-/

namespace A212499.P16044636489148281416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007954 (n + 1) * A031346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212499.P16044636489148281416

namespace A212499

/-- `record[n+1-A007954(n+1)*A031346(n)]` -/
def P16044636489148281416.Spec : Prop :=
  ∀ n, P16044636489148281416.a n = A212499 (n + 1)

end A212499

/-! ## A212499.P14417886326618511190

`lt[A321243(n)/2, A269667(A269667(n))]`
-/

namespace A212499.P14417886326618511190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321243 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269667 (A269667 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A212499.P14417886326618511190

namespace A212499

/-- `lt[A321243(n)/2, A269667(A269667(n))]` -/
def P14417886326618511190.Spec : Prop :=
  ∀ n, (P14417886326618511190.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P1622792942985860280

`lt[∏{digits}[n, 2*n*#], (2*n)²]`
-/

namespace A212499.P1622792942985860280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 * (n * x)).prod

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A212499.P1622792942985860280

namespace A212499

/-- `lt[∏{digits}[n, 2*n*#], (2*n)²]` -/
def P1622792942985860280.Spec : Prop :=
  ∀ n, (P1622792942985860280.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P8797811071907249369

`lt[n*A171765(n), n]`
-/

namespace A212499.P8797811071907249369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A171765 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A212499.P8797811071907249369

namespace A212499

/-- `lt[n*A171765(n), n]` -/
def P8797811071907249369.Spec : Prop :=
  ∀ n, (P8797811071907249369.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P4591437098239300992

`eq[A000007(n), A171765(n)]`
-/

namespace A212499.P4591437098239300992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212499.P4591437098239300992

namespace A212499

/-- `eq[A000007(n), A171765(n)]` -/
def P4591437098239300992.Spec : Prop :=
  ∀ n, (P4591437098239300992.a n : ℤ) = A212499 (n + 1)

end A212499

/-! ## A212499.P7659534288150953432

`eq[A000038(n), A171765(n)]`
-/

namespace A212499.P7659534288150953432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212499.P7659534288150953432

namespace A212499

/-- `eq[A000038(n), A171765(n)]` -/
def P7659534288150953432.Spec : Prop :=
  ∀ n, (P7659534288150953432.a n : ℤ) = A212499 (n + 1)

end A212499

