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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A181100: Numbers k such that A028260(k) + 1 is prime.

The programs for A181100, the canonical program `A181100.P15153595878229059817` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181100 has offset 1).

The definition of A181100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181100.P14312941598335009065

`eq[1, A001222(A028260(n+1)+1)]+1`
-/

namespace A181100.P14312941598335009065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028260 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181100.P14312941598335009065

namespace A181100

/-- `eq[1, A001222(A028260(n+1)+1)]+1` -/
def P14312941598335009065.Spec : Prop :=
  ∀ n, (P14312941598335009065.a n : ℤ) = A181100 (n + 1)

end A181100

/-! ## A181100.P8507582074387803257

`lt[n, A020639(A028260(n+1)+1)]+1`
-/

namespace A181100.P8507582074387803257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028260 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A181100.P8507582074387803257

namespace A181100

/-- `lt[n, A020639(A028260(n+1)+1)]+1` -/
def P8507582074387803257.Spec : Prop :=
  ∀ n, (P8507582074387803257.a n : ℤ) = A181100 (n + 1)

end A181100

/-! ## A181100.P5353163776263485186

`record[(n+1)/A002033(A028260(n+1))]`
-/

namespace A181100.P5353163776263485186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002033 (A028260 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181100.P5353163776263485186

namespace A181100

/-- `record[(n+1)/A002033(A028260(n+1))]` -/
def P5353163776263485186.Spec : Prop :=
  ∀ n, P5353163776263485186.a n = (A181100 (n + 1) : ℚ)

end A181100

/-! ## A181100.P11151241878969230890

`eq[1, A001055(A028260(n+1)+1)]+1`
-/

namespace A181100.P11151241878969230890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A028260 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181100.P11151241878969230890

namespace A181100

/-- `eq[1, A001055(A028260(n+1)+1)]+1` -/
def P11151241878969230890.Spec : Prop :=
  ∀ n, (P11151241878969230890.a n : ℤ) = A181100 (n + 1)

end A181100

/-! ## A181100.P15153595878229059817

`record[(n+1)%A014963(A028260(n+1)+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A181100

/-- `record[(n+1)%A014963(A028260(n+1)+1)]` -/
def P15153595878229059817.Spec : Prop :=
  ∀ n, P15153595878229059817.a n = A181100 (n + 1)

theorem P15153595878229059817.correct : P15153595878229059817.Spec := by
  intro n
  simp only [A181100, Nat.add_sub_cancel]

end A181100

/-! ## A181100.P10312038415264534266

`record[A000027(n+1)/A001055(A028260(n+1)+1)]`
-/

namespace A181100.P10312038415264534266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A001055 (A028260 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181100.P10312038415264534266

namespace A181100

/-- `record[A000027(n+1)/A001055(A028260(n+1)+1)]` -/
def P10312038415264534266.Spec : Prop :=
  ∀ n, P10312038415264534266.a n = (A181100 (n + 1) : ℚ)

end A181100

/-! ## A181100.P11913287285019873749

`record[A328399(2*n)/A001055(A028260(n+1)+1)]`
-/

namespace A181100.P11913287285019873749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328399 (2 * n) : ℚ) / (A001055 (A028260 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181100.P11913287285019873749

namespace A181100

/-- `record[A328399(2*n)/A001055(A028260(n+1)+1)]` -/
def P11913287285019873749.Spec : Prop :=
  ∀ n, P11913287285019873749.a n = (A181100 (n + 1) : ℚ)

end A181100

/-! ## A181100.P5118281630551121788

`record[A001057(A143692(A002322(n+1)))]`
-/

namespace A181100.P5118281630551121788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A143692 (A002322 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181100.P5118281630551121788

namespace A181100

/-- `record[A001057(A143692(A002322(n+1)))]` -/
def P5118281630551121788.Spec : Prop :=
  ∀ n, P5118281630551121788.a n = A181100 (n + 1)

end A181100

/-!
# A181101: Triangle T(n,k) read by rows. T(1,1)=-1, n>1: If n/k=A020639(n) then 1 else 0.

The programs for A181101, the canonical program `A181101.P6373251557833758638` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181101 has offset 1).

The definition of A181101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181101.P9724522174906895400

`-A011615(A181105(n+1))`
-/

namespace A181101.P9724522174906895400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A011615 (A181105 (n + 1)).toNat

end

end A181101.P9724522174906895400

namespace A181101

/-- `-A011615(A181105(n+1))` -/
def P9724522174906895400.Spec : Prop :=
  ∀ n, P9724522174906895400.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P2931167935408346271

`A011615(2*A181105(n+1))`
-/

namespace A181101.P2931167935408346271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 (2 * A181105 (n + 1)).toNat

end

end A181101.P2931167935408346271

namespace A181101

/-- `A011615(2*A181105(n+1))` -/
def P2931167935408346271.Spec : Prop :=
  ∀ n, P2931167935408346271.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P27496395253045564

`A056594(2^A181105(n+1))`
-/

namespace A181101.P27496395253045564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A181105 (n + 1) : ℤ))).toNat

end

end A181101.P27496395253045564

namespace A181101

/-- `A056594(2^A181105(n+1))` -/
def P27496395253045564.Spec : Prop :=
  ∀ n, P27496395253045564.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P6373251557833758638

`ceil(A181105(n+1)/A000466(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A181101

/-- `ceil(A181105(n+1)/A000466(n))` -/
def P6373251557833758638.Spec : Prop :=
  ∀ n, P6373251557833758638.a n = A181101 (n + 1)

theorem P6373251557833758638.correct : P6373251557833758638.Spec := by
  intro n
  simp only [A181101, Nat.add_sub_cancel]

end A181101

/-! ## A181101.P13794269147616776370

`ceil(A181105(n+1)/A004538(n))`
-/

namespace A181101.P13794269147616776370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A181105 (n + 1) : ℚ) / (A004538 n : ℚ)⌉

end

end A181101.P13794269147616776370

namespace A181101

/-- `ceil(A181105(n+1)/A004538(n))` -/
def P13794269147616776370.Spec : Prop :=
  ∀ n, P13794269147616776370.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P13268241590134746225

`ceil(A181105(n+1)/A046691(n))`
-/

namespace A181101.P13268241590134746225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A181105 (n + 1) : ℚ) / (A046691 n : ℚ)⌉

end

end A181101.P13268241590134746225

namespace A181101

/-- `ceil(A181105(n+1)/A046691(n))` -/
def P13268241590134746225.Spec : Prop :=
  ∀ n, P13268241590134746225.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P15271080378998376408

`A013596(2*A181105(n+1)+1)`
-/

namespace A181101.P15271080378998376408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013596 (2 * A181105 (n + 1) + 1).toNat

end

end A181101.P15271080378998376408

namespace A181101

/-- `A013596(2*A181105(n+1)+1)` -/
def P15271080378998376408.Spec : Prop :=
  ∀ n, P15271080378998376408.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P8859268375555451469

`ceil(A181105(n+1)/A126423(n+1))`
-/

namespace A181101.P8859268375555451469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A181105 (n + 1) : ℚ) / (A126423 (n + 1) : ℚ)⌉

end

end A181101.P8859268375555451469

namespace A181101

/-- `ceil(A181105(n+1)/A126423(n+1))` -/
def P8859268375555451469.Spec : Prop :=
  ∀ n, P8859268375555451469.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P3095627413078555378

`ceil(A181105(n+1)/A181106(n+1))`
-/

namespace A181101.P3095627413078555378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A181105 (n + 1) : ℚ) / (A181106 (n + 1) : ℚ)⌉

end

end A181101.P3095627413078555378

namespace A181101

/-- `ceil(A181105(n+1)/A181106(n+1))` -/
def P3095627413078555378.Spec : Prop :=
  ∀ n, P3095627413078555378.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P17135191944276746645

`A013596(A283975(A181105(n+1)²))`
-/

namespace A181101.P17135191944276746645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013596 (A283975 (A181105 (n + 1) ^ 2).toNat).toNat

end

end A181101.P17135191944276746645

namespace A181101

/-- `A013596(A283975(A181105(n+1)²))` -/
def P17135191944276746645.Spec : Prop :=
  ∀ n, P17135191944276746645.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P1249596309092235081

`A008683(A342320(A181105(n+1))+16)`
-/

namespace A181101.P1249596309092235081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A342320 (A181105 (n + 1)).toNat + 16).toNat

end

end A181101.P1249596309092235081

namespace A181101

/-- `A008683(A342320(A181105(n+1))+16)` -/
def P1249596309092235081.Spec : Prop :=
  ∀ n, P1249596309092235081.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P17109222821582317421

`A032741(A181105(n+1))-A000007(n)`
-/

namespace A181101.P17109222821582317421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A181105 (n + 1)).toNat - A000007 n

end

end A181101.P17109222821582317421

namespace A181101

/-- `A032741(A181105(n+1))-A000007(n)` -/
def P17109222821582317421.Spec : Prop :=
  ∀ n, P17109222821582317421.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P9733250117829278912

`A302055(A181105(n+1))-A000007(2*n)`
-/

namespace A181101.P9733250117829278912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 (A181105 (n + 1)).toNat - A000007 (2 * n)

end

end A181101.P9733250117829278912

namespace A181101

/-- `A302055(A181105(n+1))-A000007(2*n)` -/
def P9733250117829278912.Spec : Prop :=
  ∀ n, P9733250117829278912.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P11064066386916130375

`ceil(A181105(n+1)/(A195143(n)-A080332(n)))`
-/

namespace A181101.P11064066386916130375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A181105 (n + 1) : ℚ) / (A195143 n - A080332 n : ℚ)⌉

end

end A181101.P11064066386916130375

namespace A181101

/-- `ceil(A181105(n+1)/(A195143(n)-A080332(n)))` -/
def P11064066386916130375.Spec : Prop :=
  ∀ n, P11064066386916130375.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P7668419689906587751

`A013596(A181105(n+1)+A181105(n+1)+1)`
-/

namespace A181101.P7668419689906587751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013596 (A181105 (n + 1) + (A181105 (n + 1) + 1)).toNat

end

end A181101.P7668419689906587751

namespace A181101

/-- `A013596(A181105(n+1)+A181105(n+1)+1)` -/
def P7668419689906587751.Spec : Prop :=
  ∀ n, P7668419689906587751.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P17110794946389573133

`ceil(A181105(n+1)/(A003151(n+1)-A039639(n+1)))`
-/

namespace A181101.P17110794946389573133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A181105 (n + 1) : ℚ) / (A003151 (n + 1) - A039639 (n + 1) : ℚ)⌉

end

end A181101.P17110794946389573133

namespace A181101

/-- `ceil(A181105(n+1)/(A003151(n+1)-A039639(n+1)))` -/
def P17110794946389573133.Spec : Prop :=
  ∀ n, P17110794946389573133.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P6234497030671582393

`-floor(Δ[A181105(n+1)]/A158630(n))`
-/

namespace A181101.P6234497030671582393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(f1 (n + 1) - f1 n : ℚ) / (A158630 n : ℚ)⌋

end

end A181101.P6234497030671582393

namespace A181101

/-- `-floor(Δ[A181105(n+1)]/A158630(n))` -/
def P6234497030671582393.Spec : Prop :=
  ∀ n, P6234497030671582393.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P7439397759245683194

`(1-A181105(n+2))*A022930(A181105(n+1))`
-/

namespace A181101.P7439397759245683194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A181105 (n + 2)) * A022930 (A181105 (n + 1)).toNat

end

end A181101.P7439397759245683194

namespace A181101

/-- `(1-A181105(n+2))*A022930(A181105(n+1))` -/
def P7439397759245683194.Spec : Prop :=
  ∀ n, P7439397759245683194.a n = A181101 (n + 1)

end A181101

/-! ## A181101.P12269005097488900972

`A181105(n+1)/(A219158(n+1)-A181105(n+2))`
-/

namespace A181101.P12269005097488900972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181105 (n + 1) : ℚ) / (A219158 (n + 1) - A181105 (n + 2) : ℚ)

end

end A181101.P12269005097488900972

namespace A181101

/-- `A181105(n+1)/(A219158(n+1)-A181105(n+2))` -/
def P12269005097488900972.Spec : Prop :=
  ∀ n, P12269005097488900972.a n = (A181101 (n + 1) : ℚ)

end A181101

/-!
# A181102: Coefficients in the q-expansion of the Gamma_0(6) weight -2 meromorphic modular form F(z) (see Formula section for definition).

The programs for A181102, there is no canonical definition to state claims against.
-/

/-! ## A181102.P16990305973041527542

`A052080(A052007(n+1))-A051959(n)`
-/

namespace A181102.P16990305973041527542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052080 (A052007 (n + 1)).toNat - A051959 n

end

end A181102.P16990305973041527542

/-!
# A181103: a(n) is the least prime greater than a(n-1) such that abs(a(n-2) + a(n-1) - a(n)) is prime; a(1)=2, a(2)=3.

The programs for A181103, there is no canonical definition to state claims against.
-/

/-! ## A181103.P3949300113187613345

`A181774(n)+a(n-1)` with `a(0)=2`
-/

namespace A181103.P3949300113187613345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A181774 n + a (n - 1)

end

end A181103.P3949300113187613345

/-! ## A181103.P14220497729865589155

`∑[A181774(A028310(n))]+1`
-/

namespace A181103.P14220497729865589155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181774 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A181103.P14220497729865589155

/-! ## A181103.P7286221455539232237

`∑[A181774(n+1)]+2-A181774(n+1)`
-/

namespace A181103.P7286221455539232237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A181774 (n + 1))

end

end A181103.P7286221455539232237

/-! ## A181103.P4938309009168032120

`∑[A059029(A181774(n+1))]-A181774(n+1)`
-/

namespace A181103.P4938309009168032120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (A181774 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A181774 (n + 1)

end

end A181103.P4938309009168032120

/-! ## A181103.P619752551910180815

`∑[A181774(A065033(2*n))]+1`
-/

namespace A181103.P619752551910180815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181774 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A181103.P619752551910180815

/-! ## A181103.P5345310865966055142

`A151800(∑[A181774(A028310(n))])`
-/

namespace A181103.P5345310865966055142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181774 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181103.P5345310865966055142

/-! ## A181103.P16071092728102137609

`A059843(∑[A181774(A028310(n))])`
-/

namespace A181103.P16071092728102137609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181774 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181103.P16071092728102137609

/-! ## A181103.P1957926503210419289

`A204894(∑[A181774(n+1)])-A181774(n+1)`
-/

namespace A181103.P1957926503210419289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A181774 (n + 1)

end

end A181103.P1957926503210419289

/-!
# A181105: Triangle T(n,k) read by rows. T(n,k)=abs(A181101)*n/k.

The programs for A181105, the canonical program `A181105.P15226075389363433991` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181105 has offset 1).

The definition of A181105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181105.P4203123951281438821

`lcm(A010766(n+1), A181101(n+1))`
-/

namespace A181105.P4203123951281438821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010766 (n + 1)) (A181101 (n + 1))

end

end A181105.P4203123951281438821

namespace A181105

/-- `lcm(A010766(n+1), A181101(n+1))` -/
def P4203123951281438821.Spec : Prop :=
  ∀ n, (P4203123951281438821.a n : ℤ) = A181105 (n + 1)

end A181105

/-! ## A181105.P11578958625203080900

`abs(A049834(n+1)*A181101(n+1))`
-/

namespace A181105.P11578958625203080900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049834 (n + 1) * A181101 (n + 1)|

end

end A181105.P11578958625203080900

namespace A181105

/-- `abs(A049834(n+1)*A181101(n+1))` -/
def P11578958625203080900.Spec : Prop :=
  ∀ n, P11578958625203080900.a n = A181105 (n + 1)

end A181105

/-! ## A181105.P5909773766438325703

`abs(A051537(n+1)*A181101(n+1))`
-/

namespace A181105.P5909773766438325703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051537 (n + 1) * A181101 (n + 1)|

end

end A181105.P5909773766438325703

namespace A181105

/-- `abs(A051537(n+1)*A181101(n+1))` -/
def P5909773766438325703.Spec : Prop :=
  ∀ n, P5909773766438325703.a n = A181105 (n + 1)

end A181105

/-! ## A181105.P6352960074313492687

`abs(A054531(n+1)*A181101(n+1))`
-/

namespace A181105.P6352960074313492687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054531 (n + 1) * A181101 (n + 1)|

end

end A181105.P6352960074313492687

namespace A181105

/-- `abs(A054531(n+1)*A181101(n+1))` -/
def P6352960074313492687.Spec : Prop :=
  ∀ n, P6352960074313492687.a n = A181105 (n + 1)

end A181105

/-! ## A181105.P5099406936995516126

`abs(A126988(n+1)*A181101(n+1))`
-/

namespace A181105.P5099406936995516126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126988 (n + 1) * A181101 (n + 1)|

end

end A181105.P5099406936995516126

namespace A181105

/-- `abs(A126988(n+1)*A181101(n+1))` -/
def P5099406936995516126.Spec : Prop :=
  ∀ n, P5099406936995516126.a n = A181105 (n + 1)

end A181105

/-! ## A181105.P1941404001120244

`abs(A141294(n+1)*A181101(n+1))`
-/

namespace A181105.P1941404001120244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141294 (n + 1) * A181101 (n + 1)|

end

end A181105.P1941404001120244

namespace A181105

/-- `abs(A141294(n+1)*A181101(n+1))` -/
def P1941404001120244.Spec : Prop :=
  ∀ n, P1941404001120244.a n = A181105 (n + 1)

end A181105

/-! ## A181105.P7104740734293275076

`abs(A181101(n+1)*A219158(n+1))`
-/

namespace A181105.P7104740734293275076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181101 (n + 1) * A219158 (n + 1)|

end

end A181105.P7104740734293275076

namespace A181105

/-- `abs(A181101(n+1)*A219158(n+1))` -/
def P7104740734293275076.Spec : Prop :=
  ∀ n, P7104740734293275076.a n = A181105 (n + 1)

end A181105

/-! ## A181105.P16848971641269206529

`ceil(A181101(n+1)²*ratio[A029635(n)])`
-/

namespace A181105.P16848971641269206529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A181101 (n + 1) ^ 2 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌉

end

end A181105.P16848971641269206529

namespace A181105

/-- `ceil(A181101(n+1)²*ratio[A029635(n)])` -/
def P16848971641269206529.Spec : Prop :=
  ∀ n, P16848971641269206529.a n = A181105 (n + 1)

end A181105

/-! ## A181105.P18046796811157417650

`lcm(A020639(A101776(n)), A181101(n+1))`
-/

namespace A181105.P18046796811157417650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A101776 n).toNat) (A181101 (n + 1))

end

end A181105.P18046796811157417650

namespace A181105

/-- `lcm(A020639(A101776(n)), A181101(n+1))` -/
def P18046796811157417650.Spec : Prop :=
  ∀ n, (P18046796811157417650.a n : ℤ) = A181105 (n + 1)

end A181105

/-! ## A181105.P15226075389363433991

`A054521(∑[A054523(n+1)])*A126988(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A181105

/-- `A054521(∑[A054523(n+1)])*A126988(n+1)` -/
def P15226075389363433991.Spec : Prop :=
  ∀ n, P15226075389363433991.a n = A181105 (n + 1)

theorem P15226075389363433991.correct : P15226075389363433991.Spec := by
  intro n
  simp only [A181105, Nat.add_sub_cancel]

end A181105

/-!
# A181106: Largest odd number strictly less than a square.

The programs for A181106, the canonical program `A181106.P11162380309603386908` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181106 has offset 1).

The definition of A181106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181106.P2361099022851981605

`ogf((-1+5x+x^2-x^3)/(1-2x+2x^3-x^4))`
-/

namespace A181106.P2361099022851981605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 5, 1, -1] [1, -2, 0, 2, -1] n

end

end A181106.P2361099022851981605

namespace A181106

/-- `ogf((-1+5x+x^2-x^3)/(1-2x+2x^3-x^4))` -/
def P2361099022851981605.Spec : Prop :=
  ∀ n, P2361099022851981605.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P14409955045112187568

`(n+1)²-2^((n+1)%2)`
-/

namespace A181106.P14409955045112187568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (2 ^ ((n + 1) % 2) : ℤ)

end

end A181106.P14409955045112187568

namespace A181106

/-- `(n+1)²-2^((n+1)%2)` -/
def P14409955045112187568.Spec : Prop :=
  ∀ n, P14409955045112187568.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P11162380309603386908

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=-1, a(1)=3, a(2)=7, a(3)=15`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A181106

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P11162380309603386908.Spec : Prop :=
  ∀ n, P11162380309603386908.a n = A181106 (n + 1)

theorem P11162380309603386908.correct : P11162380309603386908.Spec := by
  intro n
  simp only [A181106, Nat.add_sub_cancel]

end A181106

/-! ## A181106.P17096815919761672832

`-A141354(n)`
-/

namespace A181106.P17096815919761672832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A141354 n

end

end A181106.P17096815919761672832

namespace A181106

/-- `-A141354(n)` -/
def P17096815919761672832.Spec : Prop :=
  ∀ n, P17096815919761672832.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P17159743909027635436

`or(1, (n+1)²-2)`
-/

namespace A181106.P17159743909027635436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n + 1) ^ 2 : ℤ) - 2)

end

end A181106.P17159743909027635436

namespace A181106

/-- `or(1, (n+1)²-2)` -/
def P17159743909027635436.Spec : Prop :=
  ∀ n, P17159743909027635436.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P12711123974275365739

`(n+1)²-gcd(2, n)`
-/

namespace A181106.P12711123974275365739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (Nat.gcd 2 n : ℤ)

end

end A181106.P12711123974275365739

namespace A181106

/-- `(n+1)²-gcd(2, n)` -/
def P12711123974275365739.Spec : Prop :=
  ∀ n, P12711123974275365739.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P2155242221212079433

`and(-2, (n+1)²)-1`
-/

namespace A181106.P2155242221212079433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((n + 1) ^ 2 : ℤ) - 1

end

end A181106.P2155242221212079433

namespace A181106

/-- `and(-2, (n+1)²)-1` -/
def P2155242221212079433.Spec : Prop :=
  ∀ n, P2155242221212079433.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P14032990605400716946

`∑[4*ceil(n/2)]-1`
-/

namespace A181106.P14032990605400716946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A181106.P14032990605400716946

namespace A181106

/-- `∑[4*ceil(n/2)]-1` -/
def P14032990605400716946.Spec : Prop :=
  ∀ n, P14032990605400716946.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P6619866691279576852

`-or(1, -(n*(n+2)))`
-/

namespace A181106.P6619866691279576852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(n * (n + 2) : ℤ))

end

end A181106.P6619866691279576852

namespace A181106

/-- `-or(1, -(n*(n+2)))` -/
def P6619866691279576852.Spec : Prop :=
  ∀ n, P6619866691279576852.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P11926439618257066198

`∑[a(n-2)+4]` with `a(0)=-1, a(1)=4, a(2)=4`
-/

namespace A181106.P11926439618257066198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 4, 4] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181106.P11926439618257066198

namespace A181106

/-- `∑[a(n-2)+4]` -/
def P11926439618257066198.Spec : Prop :=
  ∀ n, P11926439618257066198.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P11508010175779831367

`floor(and(1, n)+(n+1)²-ϕ)`
-/

namespace A181106.P11508010175779831367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 n : ℝ) + (((n + 1) ^ 2 : ℝ) - Real.goldenRatio)⌋

end

end A181106.P11508010175779831367

namespace A181106

/-- `floor(and(1, n)+(n+1)²-ϕ)` -/
def P11508010175779831367.Spec : Prop :=
  ∀ n, P11508010175779831367.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P6579186006239113328

`∑[4*n-a(n-1)]` with `a(0)=-1, a(1)=4`
-/

namespace A181106.P6579186006239113328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 4] fun n f1 =>
  (4 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181106.P6579186006239113328

namespace A181106

/-- `∑[4*n-a(n-1)]` -/
def P6579186006239113328.Spec : Prop :=
  ∀ n, P6579186006239113328.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P17977348908062631001

`xor(3, and((n+3)*(n-1), -2))`
-/

namespace A181106.P17977348908062631001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (Int.land ((n + 3 : ℤ) * ((n : ℤ) - 1)) (-2))

end

end A181106.P17977348908062631001

namespace A181106

/-- `xor(3, and((n+3)*(n-1), -2))` -/
def P17977348908062631001.Spec : Prop :=
  ∀ n, P17977348908062631001.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P18216692733370184775

`∑[∑[4-a(n-1)]-1]` with `a(0)=0, a(1)=5, a(2)=0`
-/

namespace A181106.P18216692733370184775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 0] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181106.P18216692733370184775

namespace A181106

/-- `∑[∑[4-a(n-1)]-1]` -/
def P18216692733370184775.Spec : Prop :=
  ∀ n, P18216692733370184775.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P14353325308242121371

`(n+2)*(n-and(1, n+1)/(n+2))`
-/

namespace A181106.P14353325308242121371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n : ℚ) - (Nat.land 1 (n + 1) : ℚ) / (n + 2 : ℚ))

end

end A181106.P14353325308242121371

namespace A181106

/-- `(n+2)*(n-and(1, n+1)/(n+2))` -/
def P14353325308242121371.Spec : Prop :=
  ∀ n, P14353325308242121371.a n = (A181106 (n + 1) : ℚ)

end A181106

/-! ## A181106.P1625870940455639062

`floor((n+1)²-lcm(2, n+1)/(n+1))`
-/

namespace A181106.P1625870940455639062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) - (Nat.lcm 2 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A181106.P1625870940455639062

namespace A181106

/-- `floor((n+1)²-lcm(2, n+1)/(n+1))` -/
def P1625870940455639062.Spec : Prop :=
  ∀ n, P1625870940455639062.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P17439942124090119960

`floor(∑[2*n+1]-2/gcd(n+1, n-1))`
-/

namespace A181106.P17439942124090119960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - 2 / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ)⌋

end

end A181106.P17439942124090119960

namespace A181106

/-- `floor(∑[2*n+1]-2/gcd(n+1, n-1))` -/
def P17439942124090119960.Spec : Prop :=
  ∀ n, P17439942124090119960.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P5767691220695084371

`(A275543(n+1)-3)/2`
-/

namespace A181106.P5767691220695084371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275543 (n + 1) - 3 : ℚ) / 2

end

end A181106.P5767691220695084371

namespace A181106

/-- `(A275543(n+1)-3)/2` -/
def P5767691220695084371.Spec : Prop :=
  ∀ n, P5767691220695084371.a n = (A181106 (n + 1) : ℚ)

theorem P5767691220695084371.correct : P5767691220695084371.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A181106, Nat.add_sub_cancel, A181106.P5767691220695084371.a, A181106.P11162380309603386908.a, A275543, A275543.P10676769887343348769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A181106, Nat.add_sub_cancel, A181106.P5767691220695084371.a, A181106.P11162380309603386908.a, A275543, A275543.P10676769887343348769.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A181106

/-! ## A181106.P14504251101482999021

`xor(A005563(n)-1, n%2)`
-/

namespace A181106.P14504251101482999021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005563 n - 1) ((n % 2 : ℕ) : ℤ)

end

end A181106.P14504251101482999021

namespace A181106

/-- `xor(A005563(n)-1, n%2)` -/
def P14504251101482999021.Spec : Prop :=
  ∀ n, P14504251101482999021.a n = A181106 (n + 1)

end A181106

/-! ## A181106.P6079468156099784980

`floor((n+1)²-3/A020639(n+2))`
-/

namespace A181106.P6079468156099784980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) - 3 / (A020639 (n + 2) : ℚ)⌋

end

end A181106.P6079468156099784980

namespace A181106

/-- `floor((n+1)²-3/A020639(n+2))` -/
def P6079468156099784980.Spec : Prop :=
  ∀ n, P6079468156099784980.a n = A181106 (n + 1)

end A181106

/-!
# A181108: Array whose rows result from iterating an algorithm that carries the natural numbers to the lower Wythoff sequence.

The programs for A181108, there is no canonical definition to state claims against.
-/

/-! ## A181108.P649681993540567240

`A361197(A319075(n))`
-/

namespace A181108.P649681993540567240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361197 (A319075 n).toNat

end

end A181108.P649681993540567240

/-! ## A181108.P6471113482080991372

`A077196(A340432(n))+A025581(n)`
-/

namespace A181108.P6471113482080991372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A340432 n).toNat + A025581 n

end

end A181108.P6471113482080991372

/-! ## A181108.P3003124621046714556

`A077196(A340432(n))+A025660(n+1)`
-/

namespace A181108.P3003124621046714556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A340432 n).toNat + A025660 (n + 1)

end

end A181108.P3003124621046714556

/-! ## A181108.P17983372010347084667

`A327522(A228899(n))+A004736(n+1)`
-/

namespace A181108.P17983372010347084667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327522 (A228899 n).toNat + A004736 (n + 1)

end

end A181108.P17983372010347084667

/-! ## A181108.P15794400801132746767

`A327522(A228899(n))+A000005(A130321(n))`
-/

namespace A181108.P15794400801132746767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327522 (A228899 n).toNat + A000005 (A130321 n).toNat

end

end A181108.P15794400801132746767

/-!
# A181109: Array whose rows result from iterating an algorithm that takes (1,1,1,1,...) to (1,3,5,7,...).

The programs for A181109, there is no canonical definition to state claims against.
-/

/-! ## A181109.P9194220667270293645

`and(A099375(n), A318919(A107702(n)))`
-/

namespace A181109.P9194220667270293645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099375 n) (A318919 (A107702 n).toNat)

end

end A181109.P9194220667270293645

/-! ## A181109.P13003288608412951788

`A015053(A134836(n+1)^4)`
-/

namespace A181109.P13003288608412951788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A134836 (n + 1) ^ 4).toNat

end

end A181109.P13003288608412951788

/-! ## A181109.P15615993318007655739

`A015053(A134836(n+1)²²)`
-/

namespace A181109.P15615993318007655739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((A134836 (n + 1) ^ 2) ^ 2).toNat

end

end A181109.P15615993318007655739

/-! ## A181109.P2441104519531589733

`dr(A099375(n)^A108934(n)^4)`
-/

namespace A181109.P2441104519531589733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A099375 n : ℚ) ^ (A108934 n ^ 4 : ℤ)))

end

end A181109.P2441104519531589733

/-! ## A181109.P14852702186688186313

`or(A010060(n), A181935(A322232(n)))`
-/

namespace A181109.P14852702186688186313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 n) (A181935 (A322232 n).toNat)

end

end A181109.P14852702186688186313

/-!
# A181111: 'ADP(n,k)' triangle read by rows. ADP(n,k) is the number of aperiodic k-double-palindromes of n.

The programs for A181111, there is no canonical definition to state claims against.
-/

/-! ## A181111.P7650765538836483402

`A180279(n+1)-A179519(n+1)`
-/

namespace A181111.P7650765538836483402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180279 (n + 1) - A179519 (n + 1)

end

end A181111.P7650765538836483402

/-! ## A181111.P16423637662740764711

`A180424(n+1)*A193738(n)-A179519(n+1)`
-/

namespace A181111.P16423637662740764711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180424 (n + 1) * A193738 n - A179519 (n + 1)

end

end A181111.P16423637662740764711

/-! ## A181111.P16072969944586752088

`A002260(n+1)*A180424(n+1)-A179519(n+1)`
-/

namespace A181111.P16072969944586752088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A180424 (n + 1) - A179519 (n + 1)

end

end A181111.P16072969944586752088

/-! ## A181111.P4686772988909455810

`A080511(n+1)*A180424(n+1)-A179519(n+1)`
-/

namespace A181111.P4686772988909455810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080511 (n + 1) * A180424 (n + 1) - A179519 (n + 1)

end

end A181111.P4686772988909455810

/-! ## A181111.P15342366279046139811

`A080818(n+1)*A180424(n+1)-A179519(n+1)`
-/

namespace A181111.P15342366279046139811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080818 (n + 1) * A180424 (n + 1) - A179519 (n + 1)

end

end A181111.P15342366279046139811

/-! ## A181111.P11375547253631981297

`A081517(n+1)*A180424(n+1)-A179519(n+1)`
-/

namespace A181111.P11375547253631981297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081517 (n + 1) * A180424 (n + 1) - A179519 (n + 1)

end

end A181111.P11375547253631981297

/-! ## A181111.P6662524303495219968

`(A180322(n+1)+A180279(n+1))%(A180322(n+1)+A179519(n+1))`
-/

namespace A181111.P6662524303495219968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180322 (n + 1) + A180279 (n + 1)) (A180322 (n + 1) + A179519 (n + 1))

end

end A181111.P6662524303495219968

/-! ## A181111.P678893025132552693

`(A181135(n+1)+A180279(n+1))%(A181135(n+1)+A179519(n+1))`
-/

namespace A181111.P678893025132552693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181135 (n + 1) + A180279 (n + 1)) (A181135 (n + 1) + A179519 (n + 1))

end

end A181111.P678893025132552693

/-! ## A181111.P11162895235825479821

`A180279(n+1)+A180653(n+1)-A180171(n+1)`
-/

namespace A181111.P11162895235825479821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180279 (n + 1) + (A180653 (n + 1) - A180171 (n + 1))

end

end A181111.P11162895235825479821

/-! ## A181111.P18320180395802020296

`A080508(n+1)*A180424(n+1)-A179519(n+1)`
-/

namespace A181111.P18320180395802020296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080508 (n + 1) * A180424 (n + 1) - A179519 (n + 1)

end

end A181111.P18320180395802020296

/-!
# A181115: Palindromic series of binary digits shown on the personal coat of arms of His Excellency the Right Honourable David Johnston, Governor General and Commander-in-Chief of Canada.

The programs for A181115, there is no canonical definition to state claims against.
-/

/-! ## A181115.P12530733394268238175

`char[A198081(n)-A322796(n)]`
-/

namespace A181115.P12530733394268238175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n - A322796 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A181115.P12530733394268238175

/-! ## A181115.P16997643935128650449

`A179763(A338782(xor(n, C(6, n))+1))`
-/

namespace A181115.P16997643935128650449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179763 (A338782 (Nat.xor n (Nat.choose 6 n) + 1)).toNat

end

end A181115.P16997643935128650449

/-! ## A181115.P3007633112497252576

`xor(char[A120490(n+1)], A179763(n+1))`
-/

namespace A181115.P3007633112497252576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120490 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A179763 (n + 1))

end

end A181115.P3007633112497252576

/-! ## A181115.P16008689706703482861

`A000035(or(A190766(n+1), A315319(n)))`
-/

namespace A181115.P16008689706703482861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.lor (A190766 (n + 1)) (A315319 n)).toNat

end

end A181115.P16008689706703482861

/-! ## A181115.P16541338884288150185

`char[A047215(A075989(n+1))+A009001(n)]`
-/

namespace A181115.P16541338884288150185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 (A075989 (n + 1)).toNat + A009001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A181115.P16541338884288150185

/-!
# A181116: Triangle T(n,k) read by rows. T(n,k) = A046643(A126988).

The programs for A181116, the canonical program `A181116.P15134325695680604966` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181116 has offset 1).

The definition of A181116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181116.P15134325695680604966

`∏{e}[A085383(n+1), #-1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A181116

/-- `∏{e}[A085383(n+1), #-1]` -/
def P15134325695680604966.Spec : Prop :=
  ∀ n, P15134325695680604966.a n = A181116 (n + 1)

theorem P15134325695680604966.correct : P15134325695680604966.Spec := by
  intro n
  simp only [A181116, Nat.add_sub_cancel]

end A181116

/-! ## A181116.P5614605028931207349

`A361430(A085383(n+1))`
-/

namespace A181116.P5614605028931207349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361430 (A085383 (n + 1)).toNat

end

end A181116.P5614605028931207349

namespace A181116

/-- `A361430(A085383(n+1))` -/
def P5614605028931207349.Spec : Prop :=
  ∀ n, P5614605028931207349.a n = A181116 (n + 1)

end A181116

/-! ## A181116.P17819911180602461576

`gcd(A054525(n+1), A168532(n+1))%6`
-/

namespace A181116.P17819911180602461576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054525 (n + 1)) (A168532 (n + 1)) % 6

end

end A181116.P17819911180602461576

namespace A181116

/-- `gcd(A054525(n+1), A168532(n+1))%6` -/
def P17819911180602461576.Spec : Prop :=
  ∀ n, (P17819911180602461576.a n : ℤ) = A181116 (n + 1)

end A181116

/-! ## A181116.P8278882859811064826

`A325401(A077462(A126988(n+1)))`
-/

namespace A181116.P8278882859811064826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A077462 (A126988 (n + 1)).toNat).toNat

end

end A181116.P8278882859811064826

namespace A181116

/-- `A325401(A077462(A126988(n+1)))` -/
def P8278882859811064826.Spec : Prop :=
  ∀ n, P8278882859811064826.a n = A181116 (n + 1)

end A181116

/-! ## A181116.P15653736701014306312

`∑{e}[A000079(A126988(n+1)), A046643(#)]`
-/

namespace A181116.P15653736701014306312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A126988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A046643 (Nat.factorization (f1 n).natAbs p)

end

end A181116.P15653736701014306312

namespace A181116

/-- `∑{e}[A000079(A126988(n+1)), A046643(#)]` -/
def P15653736701014306312.Spec : Prop :=
  ∀ n, P15653736701014306312.a n = A181116 (n + 1)

end A181116

/-! ## A181116.P5396470516340241049

`A004273(∏{e}[A085383(n+1), A000720(#)])`
-/

namespace A181116.P5396470516340241049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A181116.P5396470516340241049

namespace A181116

/-- `A004273(∏{e}[A085383(n+1), A000720(#)])` -/
def P5396470516340241049.Spec : Prop :=
  ∀ n, P5396470516340241049.a n = A181116 (n + 1)

end A181116

/-! ## A181116.P1216982477838750871

`A046643(A010766(n+1))*A051731(n+1)`
-/

namespace A181116.P1216982477838750871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A181116.P1216982477838750871

namespace A181116

/-- `A046643(A010766(n+1))*A051731(n+1)` -/
def P1216982477838750871.Spec : Prop :=
  ∀ n, P1216982477838750871.a n = A181116 (n + 1)

end A181116

/-! ## A181116.P13257318755084983897

`A046643(A049834(n+1))*A051731(n+1)`
-/

namespace A181116.P13257318755084983897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A049834 (n + 1)).toNat * A051731 (n + 1)

end

end A181116.P13257318755084983897

namespace A181116

/-- `A046643(A049834(n+1))*A051731(n+1)` -/
def P13257318755084983897.Spec : Prop :=
  ∀ n, P13257318755084983897.a n = A181116 (n + 1)

end A181116

/-! ## A181116.P8819536195804297012

`A046643(A051537(n+1))*A051731(n+1)`
-/

namespace A181116.P8819536195804297012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A051537 (n + 1)).toNat * A051731 (n + 1)

end

end A181116.P8819536195804297012

namespace A181116

/-- `A046643(A051537(n+1))*A051731(n+1)` -/
def P8819536195804297012.Spec : Prop :=
  ∀ n, P8819536195804297012.a n = A181116 (n + 1)

end A181116

/-! ## A181116.P18382685201123679405

`A046643(A054531(n+1))*A051731(n+1)`
-/

namespace A181116.P18382685201123679405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A181116.P18382685201123679405

namespace A181116

/-- `A046643(A054531(n+1))*A051731(n+1)` -/
def P18382685201123679405.Spec : Prop :=
  ∀ n, P18382685201123679405.a n = A181116 (n + 1)

end A181116

/-! ## A181116.P3649279105351258500

`A051731(n+1)*A317933(A051537(n+1)²)`
-/

namespace A181116.P3649279105351258500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A317933 (A051537 (n + 1) ^ 2).toNat

end

end A181116.P3649279105351258500

namespace A181116

/-- `A051731(n+1)*A317933(A051537(n+1)²)` -/
def P3649279105351258500.Spec : Prop :=
  ∀ n, P3649279105351258500.a n = A181116 (n + 1)

end A181116

/-!
# A181117: Triangle T(n,k) read by rows. T(n,k) = A046644(A126988).

The programs for A181117, the canonical program `A181117.P3556212015790333691` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181117 has offset 1).

The definition of A181117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181117.P15186627786285178666

`∏{e}[A085383(n+1), A271342(#)]`
-/

namespace A181117.P15186627786285178666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A271342 (Nat.factorization (f1 n).natAbs p)

end

end A181117.P15186627786285178666

namespace A181117

/-- `∏{e}[A085383(n+1), A271342(#)]` -/
def P15186627786285178666.Spec : Prop :=
  ∀ n, P15186627786285178666.a n = A181117 (n + 1)

end A181117

/-! ## A181117.P15055351065741978712

`A114002(n)^A046645(A049834(n+1))`
-/

namespace A181117.P15055351065741978712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114002 n : ℚ) ^ (A046645 (A049834 (n + 1)).toNat : ℤ)

end

end A181117.P15055351065741978712

namespace A181117

/-- `A114002(n)^A046645(A049834(n+1))` -/
def P15055351065741978712.Spec : Prop :=
  ∀ n, P15055351065741978712.a n = (A181117 (n + 1) : ℚ)

end A181117

/-! ## A181117.P12563929227241824516

`A114002(n)^A046645(A051537(n+1))`
-/

namespace A181117.P12563929227241824516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114002 n : ℚ) ^ (A046645 (A051537 (n + 1)).toNat : ℤ)

end

end A181117.P12563929227241824516

namespace A181117

/-- `A114002(n)^A046645(A051537(n+1))` -/
def P12563929227241824516.Spec : Prop :=
  ∀ n, P12563929227241824516.a n = (A181117 (n + 1) : ℚ)

end A181117

/-! ## A181117.P5677144565403465999

`A114002(n)^A046645(A054531(n+1))`
-/

namespace A181117.P5677144565403465999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114002 n : ℚ) ^ (A046645 (A054531 (n + 1)).toNat : ℤ)

end

end A181117.P5677144565403465999

namespace A181117

/-- `A114002(n)^A046645(A054531(n+1))` -/
def P5677144565403465999.Spec : Prop :=
  ∀ n, P5677144565403465999.a n = (A181117 (n + 1) : ℚ)

end A181117

/-! ## A181117.P3556212015790333691

`lcm(A046644(A010766(n+1)), A114002(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A181117

/-- `lcm(A046644(A010766(n+1)), A114002(n))` -/
def P3556212015790333691.Spec : Prop :=
  ∀ n, (P3556212015790333691.a n : ℤ) = A181117 (n + 1)

theorem P3556212015790333691.correct : P3556212015790333691.Spec := by
  intro n
  simp only [A181117, Nat.add_sub_cancel]

end A181117

/-! ## A181117.P2422792370200374862

`∑{e}[A000079(A126988(n+1)), A046644(#)]`
-/

namespace A181117.P2422792370200374862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A126988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A046644 (Nat.factorization (f1 n).natAbs p)

end

end A181117.P2422792370200374862

namespace A181117

/-- `∑{e}[A000079(A126988(n+1)), A046644(#)]` -/
def P2422792370200374862.Spec : Prop :=
  ∀ n, P2422792370200374862.a n = A181117 (n + 1)

end A181117

/-! ## A181117.P160374516405323414

`A046644(A010766(n+1))*A051731(n+1)`
-/

namespace A181117.P160374516405323414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A181117.P160374516405323414

namespace A181117

/-- `A046644(A010766(n+1))*A051731(n+1)` -/
def P160374516405323414.Spec : Prop :=
  ∀ n, P160374516405323414.a n = A181117 (n + 1)

end A181117

/-! ## A181117.P15288294817170751913

`A046644(A049834(n+1))*A051731(n+1)`
-/

namespace A181117.P15288294817170751913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A049834 (n + 1)).toNat * A051731 (n + 1)

end

end A181117.P15288294817170751913

namespace A181117

/-- `A046644(A049834(n+1))*A051731(n+1)` -/
def P15288294817170751913.Spec : Prop :=
  ∀ n, P15288294817170751913.a n = A181117 (n + 1)

end A181117

/-! ## A181117.P1744342483375064283

`A046644(A051537(n+1))*A051731(n+1)`
-/

namespace A181117.P1744342483375064283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A051537 (n + 1)).toNat * A051731 (n + 1)

end

end A181117.P1744342483375064283

namespace A181117

/-- `A046644(A051537(n+1))*A051731(n+1)` -/
def P1744342483375064283.Spec : Prop :=
  ∀ n, P1744342483375064283.a n = A181117 (n + 1)

end A181117

/-! ## A181117.P7781097494185680498

`A046644(A054531(n+1))*A051731(n+1)`
-/

namespace A181117.P7781097494185680498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A181117.P7781097494185680498

namespace A181117

/-- `A046644(A054531(n+1))*A051731(n+1)` -/
def P7781097494185680498.Spec : Prop :=
  ∀ n, P7781097494185680498.a n = A181117 (n + 1)

end A181117

/-! ## A181117.P1157773004260449799

`A000007(A049828(n+1))*A046644(A049834(n+1))`
-/

namespace A181117.P1157773004260449799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A049828 (n + 1)).toNat * A046644 (A049834 (n + 1)).toNat

end

end A181117.P1157773004260449799

namespace A181117

/-- `A000007(A049828(n+1))*A046644(A049834(n+1))` -/
def P1157773004260449799.Spec : Prop :=
  ∀ n, P1157773004260449799.a n = A181117 (n + 1)

end A181117

/-! ## A181117.P2019721267697987007

`A000007(A049828(n+1))*A046644(A051537(n+1))`
-/

namespace A181117.P2019721267697987007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A049828 (n + 1)).toNat * A046644 (A051537 (n + 1)).toNat

end

end A181117.P2019721267697987007

namespace A181117

/-- `A000007(A049828(n+1))*A046644(A051537(n+1))` -/
def P2019721267697987007.Spec : Prop :=
  ∀ n, P2019721267697987007.a n = A181117 (n + 1)

end A181117

/-! ## A181117.P4783929520971214993

`A046644(A049834(n+1))%A054519(A129559(n+1))`
-/

namespace A181117.P4783929520971214993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046644 (A049834 (n + 1)).toNat) (A054519 (A129559 (n + 1)).toNat)

end

end A181117.P4783929520971214993

namespace A181117

/-- `A046644(A049834(n+1))%A054519(A129559(n+1))` -/
def P4783929520971214993.Spec : Prop :=
  ∀ n, P4783929520971214993.a n = A181117 (n + 1)

end A181117

/-! ## A181117.P11865145931151938308

`A046644(A051537(n+1))%A054519(A129559(n+1))`
-/

namespace A181117.P11865145931151938308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046644 (A051537 (n + 1)).toNat) (A054519 (A129559 (n + 1)).toNat)

end

end A181117.P11865145931151938308

namespace A181117

/-- `A046644(A051537(n+1))%A054519(A129559(n+1))` -/
def P11865145931151938308.Spec : Prop :=
  ∀ n, P11865145931151938308.a n = A181117 (n + 1)

end A181117

/-!
# A181118: Sequencing of all rational numbers p/q > 0 as ordered pairs (p,q). The rational (p,q) occurs as the n-th ordered pair where n=(p+q-1)*(p+q-2)/2+q.

The programs for A181118, the canonical program `A181118.P14712911132165439164` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181118 has offset 1).

The definition of A181118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181118.P17844711017742189393

`A215655(n+1)/2`
-/

namespace A181118.P17844711017742189393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215655 (n + 1) : ℚ) / 2

end

end A181118.P17844711017742189393

namespace A181118

/-- `A215655(n+1)/2` -/
def P17844711017742189393.Spec : Prop :=
  ∀ n, P17844711017742189393.a n = (A181118 (n + 1) : ℚ)

theorem P17844711017742189393.correct : P17844711017742189393.Spec := by
  intro n
  simp only [A181118, Nat.add_sub_cancel, A181118.P17844711017742189393.a, A181118.P14712911132165439164.a, A057555, A057555.P13935349940139878963.a, A215655, A215655.P274844341247519406.a, A057554, A057554.P2016188426634242539.a, A036561, A036561.P7490084913005378529.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181118

/-! ## A181118.P14712911132165439164

`A057555(xor(1, n)+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A181118

/-- `A057555(xor(1, n)+1)` -/
def P14712911132165439164.Spec : Prop :=
  ∀ n, P14712911132165439164.a n = A181118 (n + 1)

theorem P14712911132165439164.correct : P14712911132165439164.Spec := by
  intro n
  simp only [A181118, Nat.add_sub_cancel]

end A181118

/-! ## A181118.P6577756286213201770

`A088226(comp[n²]+1)`
-/

namespace A181118.P6577756286213201770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A181118.P6577756286213201770

namespace A181118

/-- `A088226(comp[n²]+1)` -/
def P6577756286213201770.Spec : Prop :=
  ∀ n, P6577756286213201770.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P17714316126569496940

`A057554(abs(xor(n, -2)))+1`
-/

namespace A181118.P17714316126569496940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 |Int.xor (n : ℤ) (-2)|.toNat + 1

end

end A181118.P17714316126569496940

namespace A181118

/-- `A057554(abs(xor(n, -2)))+1` -/
def P17714316126569496940.Spec : Prop :=
  ∀ n, P17714316126569496940.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P17786847515779345251

`A057554(xor(1, n)+1)+1`
-/

namespace A181118.P17786847515779345251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (Nat.xor 1 n + 1) + 1

end

end A181118.P17786847515779345251

namespace A181118

/-- `A057554(xor(1, n)+1)+1` -/
def P17786847515779345251.Spec : Prop :=
  ∀ n, P17786847515779345251.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P13931332790788004980

`A057555(and(2, gcd(2, n))+n)`
-/

namespace A181118.P13931332790788004980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (Nat.land 2 (Nat.gcd 2 n) + n)

end

end A181118.P13931332790788004980

namespace A181118

/-- `A057555(and(2, gcd(2, n))+n)` -/
def P13931332790788004980.Spec : Prop :=
  ∀ n, P13931332790788004980.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P15493548092321565180

`A057555((-1)^n+n+1)`
-/

namespace A181118.P15493548092321565180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A181118.P15493548092321565180

namespace A181118

/-- `A057555((-1)^n+n+1)` -/
def P15493548092321565180.Spec : Prop :=
  ∀ n, P15493548092321565180.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P5248810911448845069

`A057554(abs(n-2*or(1, n)))+1`
-/

namespace A181118.P5248810911448845069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 |(n : ℤ) - (2 * Nat.lor 1 n : ℤ)|.toNat + 1

end

end A181118.P5248810911448845069

namespace A181118

/-- `A057554(abs(n-2*or(1, n)))+1` -/
def P5248810911448845069.Spec : Prop :=
  ∀ n, P5248810911448845069.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P14825215380192586413

`A001281(A215655(n+1))`
-/

namespace A181118.P14825215380192586413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A215655 (n + 1)).toNat

end

end A181118.P14825215380192586413

namespace A181118

/-- `A001281(A215655(n+1))` -/
def P14825215380192586413.Spec : Prop :=
  ∀ n, P14825215380192586413.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P560371603876061586

`A000463(A215655(n+1)-1)`
-/

namespace A181118.P560371603876061586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A215655 (n + 1) - 1).toNat

end

end A181118.P560371603876061586

namespace A181118

/-- `A000463(A215655(n+1)-1)` -/
def P560371603876061586.Spec : Prop :=
  ∀ n, P560371603876061586.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P13574903241159470252

`A001057(A215655(n+1)-1)`
-/

namespace A181118.P13574903241159470252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A215655 (n + 1) - 1).toNat

end

end A181118.P13574903241159470252

namespace A181118

/-- `A001057(A215655(n+1)-1)` -/
def P13574903241159470252.Spec : Prop :=
  ∀ n, P13574903241159470252.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P17450316235685214599

`A054576(2*A215655(n+1))`
-/

namespace A181118.P17450316235685214599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A215655 (n + 1)).toNat

end

end A181118.P17450316235685214599

namespace A181118

/-- `A054576(2*A215655(n+1))` -/
def P17450316235685214599.Spec : Prop :=
  ∀ n, P17450316235685214599.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P7110380548915358646

`A319929(A007607(n+1))/2`
-/

namespace A181118.P7110380548915358646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319929 (A007607 (n + 1)).toNat : ℚ) / 2

end

end A181118.P7110380548915358646

namespace A181118

/-- `A319929(A007607(n+1))/2` -/
def P7110380548915358646.Spec : Prop :=
  ∀ n, P7110380548915358646.a n = (A181118 (n + 1) : ℚ)

end A181118

/-! ## A181118.P13485100327331223570

`A057555(A004442(n)+1)%11`
-/

namespace A181118.P13485100327331223570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057555 (A004442 n + 1).toNat) 11

end

end A181118.P13485100327331223570

namespace A181118

/-- `A057555(A004442(n)+1)%11` -/
def P13485100327331223570.Spec : Prop :=
  ∀ n, P13485100327331223570.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P16631092170826275832

`A057554(lt[2, A074294(n+1)])`
-/

namespace A181118.P16631092170826275832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A181118.P16631092170826275832

namespace A181118

/-- `A057554(lt[2, A074294(n+1)])` -/
def P16631092170826275832.Spec : Prop :=
  ∀ n, P16631092170826275832.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P3879089280503929117

`filter[A057554(n+1), A145568(#)]`
-/

namespace A181118.P3879089280503929117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A181118.P3879089280503929117

namespace A181118

/-- `filter[A057554(n+1), A145568(#)]` -/
def P3879089280503929117.Spec : Prop :=
  ∀ n, P3879089280503929117.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P9043815288299872127

`filter[A057554(n+1), A168185(#)]`
-/

namespace A181118.P9043815288299872127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A181118.P9043815288299872127

namespace A181118

/-- `filter[A057554(n+1), A168185(#)]` -/
def P9043815288299872127.Spec : Prop :=
  ∀ n, P9043815288299872127.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P5227369765733502702

`filter[A088226(n+1), A145568(#)]`
-/

namespace A181118.P5227369765733502702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A181118.P5227369765733502702

namespace A181118

/-- `filter[A088226(n+1), A145568(#)]` -/
def P5227369765733502702.Spec : Prop :=
  ∀ n, P5227369765733502702.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P8168348125275629803

`filter[A088226(n+1), A168185(#)]`
-/

namespace A181118.P8168348125275629803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A181118.P8168348125275629803

namespace A181118

/-- `filter[A088226(n+1), A168185(#)]` -/
def P8168348125275629803.Spec : Prop :=
  ∀ n, P8168348125275629803.a n = A181118 (n + 1)

end A181118

/-! ## A181118.P13960126216602208626

`A001222(sqrt(2^A215655(n+1)))`
-/

namespace A181118.P13960126216602208626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt ((2 : ℚ) ^ (A215655 (n + 1) : ℤ) : ℝ))).toNat

end

end A181118.P13960126216602208626

namespace A181118

/-- `A001222(sqrt(2^A215655(n+1)))` -/
def P13960126216602208626.Spec : Prop :=
  ∀ n, P13960126216602208626.a n = A181118 (n + 1)

end A181118

/-!
# A181119: Number of transpose-complementary plane partitions of n.

The programs for A181119, there is no canonical definition to state claims against.
-/

/-! ## A181119.P13683593276021881528

`A078920(A022266(n))`
-/

namespace A181119.P13683593276021881528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A022266 n).toNat

end

end A181119.P13683593276021881528

/-! ## A181119.P11793616866795217588

`A005130(2*n)*A051255(n)`
-/

namespace A181119.P11793616866795217588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 (2 * n) * A051255 n

end

end A181119.P11793616866795217588

/-!
# A181120: Partial sums of round(n^2/12) (A069905).

The programs for A181120, the canonical program `A181120.P6977413650280572113` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181120 has offset 0).

The definition of A181120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181120.P6977413650280572113

`round(n*(2*n²+3*n-6)/72)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A181120

/-- `round(n*(2*n²+3*n-6)/72)` -/
def P6977413650280572113.Spec : Prop :=
  ∀ n, P6977413650280572113.a n = A181120 n

theorem P6977413650280572113.correct : P6977413650280572113.Spec := by
  intro n
  simp only [A181120]

end A181120

/-! ## A181120.P1394649581202644564

`a(n-6)+(n²-5*n+8)/2` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=4`
-/

namespace A181120.P1394649581202644564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 1, 2, 4] fun n a =>
  a (n - 6) + ((n ^ 2 : ℤ) - (5 * n : ℤ) + 8 : ℚ) / 2

end

end A181120.P1394649581202644564

namespace A181120

/-- `a(n-6)+(n²-5*n+8)/2` -/
def P1394649581202644564.Spec : Prop :=
  ∀ n, P1394649581202644564.a n = (A181120 n : ℚ)

end A181120

/-! ## A181120.P544126681173179753

`∑[floor(n/3)]+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A181120.P544126681173179753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A181120.P544126681173179753

namespace A181120

/-- `∑[floor(n/3)]+a(n-2)` -/
def P544126681173179753.Spec : Prop :=
  ∀ n, P544126681173179753.a n = A181120 n

end A181120

/-! ## A181120.P7037792174006688574

`a(n-2)-∑[a(n-3)-1]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A181120.P7037792174006688574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181120.P7037792174006688574

namespace A181120

/-- `a(n-2)-∑[a(n-3)-1]` -/
def P7037792174006688574.Spec : Prop :=
  ∀ n, P7037792174006688574.a n = A181120 n

end A181120

/-! ## A181120.P5084947187792556246

`∑[A069905(n)]`
-/

namespace A181120.P5084947187792556246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181120.P5084947187792556246

namespace A181120

/-- `∑[A069905(n)]` -/
def P5084947187792556246.Spec : Prop :=
  ∀ n, P5084947187792556246.a n = A181120 n

end A181120

/-! ## A181120.P16567991940354585492

`∑[A014591(n)-1]`
-/

namespace A181120.P16567991940354585492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181120.P16567991940354585492

namespace A181120

/-- `∑[A014591(n)-1]` -/
def P16567991940354585492.Spec : Prop :=
  ∀ n, P16567991940354585492.a n = A181120 n

end A181120

/-! ## A181120.P4185787810097188500

`∑[A174709(n)]+floor(n²/6)`
-/

namespace A181120.P4185787810097188500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n ^ 2 : ℚ) / 6⌋

end

end A181120.P4185787810097188500

namespace A181120

/-- `∑[A174709(n)]+floor(n²/6)` -/
def P4185787810097188500.Spec : Prop :=
  ∀ n, P4185787810097188500.a n = A181120 n

end A181120

/-! ## A181120.P14780965956364022288

`A001973(n)-A156040(n)`
-/

namespace A181120.P14780965956364022288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 n - A156040 n

end

end A181120.P14780965956364022288

namespace A181120

/-- `A001973(n)-A156040(n)` -/
def P14780965956364022288.Spec : Prop :=
  ∀ n, P14780965956364022288.a n = A181120 n

end A181120

/-! ## A181120.P17501788405323570900

`A275580(n)-A001972(n)`
-/

namespace A181120.P17501788405323570900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275580 n - A001972 n

end

end A181120.P17501788405323570900

namespace A181120

/-- `A275580(n)-A001972(n)` -/
def P17501788405323570900.Spec : Prop :=
  ∀ n, P17501788405323570900.a n = A181120 n

end A181120

/-! ## A181120.P10525246159943520848

`A171965(n)-A175724(n)`
-/

namespace A181120.P10525246159943520848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171965 n - A175724 n

end

end A181120.P10525246159943520848

namespace A181120

/-- `A171965(n)-A175724(n)` -/
def P10525246159943520848.Spec : Prop :=
  ∀ n, P10525246159943520848.a n = A181120 n

end A181120

/-! ## A181120.P9872799543029812720

`A175287(n)-A175812(n)`
-/

namespace A181120.P9872799543029812720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n - A175812 n

end

end A181120.P9872799543029812720

namespace A181120

/-- `A175287(n)-A175812(n)` -/
def P9872799543029812720.Spec : Prop :=
  ∀ n, P9872799543029812720.a n = A181120 n

end A181120

/-! ## A181120.P13084154185617145872

`A175812(n)-A175831(n)`
-/

namespace A181120.P13084154185617145872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175812 n - A175831 n

end

end A181120.P13084154185617145872

namespace A181120

/-- `A175812(n)-A175831(n)` -/
def P13084154185617145872.Spec : Prop :=
  ∀ n, P13084154185617145872.a n = A181120 n

end A181120

/-! ## A181120.P9849297583264748682

`A175826(n)-A175870(n)`
-/

namespace A181120.P9849297583264748682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175826 n - A175870 n

end

end A181120.P9849297583264748682

namespace A181120

/-- `A175826(n)-A175870(n)` -/
def P9849297583264748682.Spec : Prop :=
  ∀ n, P9849297583264748682.a n = A181120 n

end A181120

/-! ## A181120.P8436809206765480162

`A181286(n)-A173196(n)`
-/

namespace A181120.P8436809206765480162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 n - A173196 n

end

end A181120.P8436809206765480162

namespace A181120

/-- `A181286(n)-A173196(n)` -/
def P8436809206765480162.Spec : Prop :=
  ∀ n, P8436809206765480162.a n = A181120 n

end A181120

/-! ## A181120.P7405957541705926860

`A019298(n)-A358042(n)`
-/

namespace A181120.P7405957541705926860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n - A358042 n

end

end A181120.P7405957541705926860

namespace A181120

/-- `A019298(n)-A358042(n)` -/
def P7405957541705926860.Spec : Prop :=
  ∀ n, P7405957541705926860.a n = A181120 n

end A181120

/-! ## A181120.P14518804974596005438

`A000601(n)-∑[A008619(n)]`
-/

namespace A181120.P14518804974596005438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181120.P14518804974596005438

namespace A181120

/-- `A000601(n)-∑[A008619(n)]` -/
def P14518804974596005438.Spec : Prop :=
  ∀ n, P14518804974596005438.a n = A181120 n

end A181120

/-! ## A181120.P14368866659800965951

`A000601(n)-A087811(n+1)`
-/

namespace A181120.P14368866659800965951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n - A087811 (n + 1)

end

end A181120.P14368866659800965951

namespace A181120

/-- `A000601(n)-A087811(n+1)` -/
def P14368866659800965951.Spec : Prop :=
  ∀ n, P14368866659800965951.a n = A181120 n

end A181120

/-! ## A181120.P14637225923000813319

`A175724(n+1)-A008724(n)`
-/

namespace A181120.P14637225923000813319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175724 (n + 1) - A008724 n

end

end A181120.P14637225923000813319

namespace A181120

/-- `A175724(n+1)-A008724(n)` -/
def P14637225923000813319.Spec : Prop :=
  ∀ n, P14637225923000813319.a n = A181120 n

end A181120

/-! ## A181120.P15128006382376514215

`A238340(n+1)-A212983(n)`
-/

namespace A181120.P15128006382376514215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238340 (n + 1) - A212983 n

end

end A181120.P15128006382376514215

namespace A181120

/-- `A238340(n+1)-A212983(n)` -/
def P15128006382376514215.Spec : Prop :=
  ∀ n, P15128006382376514215.a n = A181120 n

end A181120

/-! ## A181120.P491074549721541824

`A175831(n)-A322042(n+1)`
-/

namespace A181120.P491074549721541824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175831 n - A322042 (n + 1)

end

end A181120.P491074549721541824

namespace A181120

/-- `A175831(n)-A322042(n+1)` -/
def P491074549721541824.Spec : Prop :=
  ∀ n, P491074549721541824.a n = A181120 n

end A181120

/-!
# A181121: As n increases, the reciprocal of a(n) = asymptotic fraction of positive integers whose longest string of consecutive divisors is A181062(n).

The programs for A181121, the canonical program `A181121.P4384913397738902959` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181121 has offset 1).

The definition of A181121 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, A051451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181121.P4384913397738902959

`A051451(n+1)*A025473(n+2)/(A025473(n+2)-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A181121

/-- `A051451(n+1)*A025473(n+2)/(A025473(n+2)-1)` -/
def P4384913397738902959.Spec : Prop :=
  ∀ n, P4384913397738902959.a n = (A181121 (n + 1) : ℚ)

end A181121

/-! ## A181121.P10610703638128935921

`A051451(n+2)/A063872(n+1)`
-/

namespace A181121.P10610703638128935921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051451 (n + 2) : ℚ) / (A063872 (n + 1) : ℚ)

end

end A181121.P10610703638128935921

namespace A181121

/-- `A051451(n+2)/A063872(n+1)` -/
def P10610703638128935921.Spec : Prop :=
  ∀ n, P10610703638128935921.a n = (A181121 (n + 1) : ℚ)

end A181121

/-! ## A181121.P15806929766685716896

`A003418(A000961(n+2))/(p?[∏{p}[n, #]]-1)`
-/

namespace A181121.P15806929766685716896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (A000961 (n + 2)).toNat : ℚ) / ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ)

end

end A181121.P15806929766685716896

namespace A181121

/-- `A003418(A000961(n+2))/(p?[∏{p}[n, #]]-1)` -/
def P15806929766685716896.Spec : Prop :=
  ∀ n, P15806929766685716896.a n = (A181121 (n + 1) : ℚ)

end A181121

/-! ## A181121.P11138309201709668912

`A003418(A181062(n+3))/(p?[∏{p}[n, #]]-1)`
-/

namespace A181121.P11138309201709668912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (A181062 (n + 3)).toNat : ℚ) / ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ)

end

end A181121.P11138309201709668912

namespace A181121

/-- `A003418(A181062(n+3))/(p?[∏{p}[n, #]]-1)` -/
def P11138309201709668912.Spec : Prop :=
  ∀ n, P11138309201709668912.a n = (A181121 (n + 1) : ℚ)

end A181121

/-! ## A181121.P9350409190907288061

`A003418(A246655(n+1))/A063872(n+1)`
-/

namespace A181121.P9350409190907288061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (A246655 (n + 1)).toNat : ℚ) / (A063872 (n + 1) : ℚ)

end

end A181121.P9350409190907288061

namespace A181121

/-- `A003418(A246655(n+1))/A063872(n+1)` -/
def P9350409190907288061.Spec : Prop :=
  ∀ n, P9350409190907288061.a n = (A181121 (n + 1) : ℚ)

end A181121

/-!
# A181123: Numbers that are the differences of two positive cubes.

The programs for A181123, there is no canonical definition to state claims against.
-/

/-! ## A181123.P8989555143934080341

`∪[A070189(n), A038593(n+1)]`
-/

namespace A181123.P8989555143934080341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181123.P8989555143934080341

/-! ## A181123.P1976018056493154332

`∪[A000578(n+1)-1, A038593(n+2)]`
-/

namespace A181123.P1976018056493154332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181123.P1976018056493154332

/-! ## A181123.P6663133028691637825

`A038593(A028310(n))%A038593(n+1)`
-/

namespace A181123.P6663133028691637825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038593 (A028310 n).toNat) (A038593 (n + 1))

end

end A181123.P6663133028691637825

/-! ## A181123.P5167768531733160682

`A038593(A000007(n)+n)%A038593(n+1)`
-/

namespace A181123.P5167768531733160682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038593 (A000007 n + (n : ℤ)).toNat) (A038593 (n + 1))

end

end A181123.P5167768531733160682

/-! ## A181123.P9175993978214378800

`A038593(A063524(n+1)+n)%A038593(n+1)`
-/

namespace A181123.P9175993978214378800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038593 (A063524 (n + 1) + (n : ℤ)).toNat) (A038593 (n + 1))

end

end A181123.P9175993978214378800

/-! ## A181123.P16153520567323937070

`∪[A038593(n+1), A000578(n)*A038593(n+1)]`
-/

namespace A181123.P16153520567323937070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181123.P16153520567323937070

/-! ## A181123.P6727271769055082459

`∩[A020894(n+1), A152043(n+1)]`
-/

namespace A181123.P6727271769055082459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181123.P6727271769055082459

/-! ## A181123.P2444257912707946454

`record[A038593(A003602(n+1))%A038593(n+1)]`
-/

namespace A181123.P2444257912707946454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038593 (A003602 (n + 1)).toNat) (A038593 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181123.P2444257912707946454

/-! ## A181123.P10607725144329387710

`record[A038593(A032742(n+1))%A038593(n+1)]`
-/

namespace A181123.P10607725144329387710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038593 (A032742 (n + 1)).toNat) (A038593 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181123.P10607725144329387710

/-! ## A181123.P16162721731528874696

`record[A038593(A302032(n+1))%A038593(n+1)]`
-/

namespace A181123.P16162721731528874696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038593 (A302032 (n + 1)).toNat) (A038593 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181123.P16162721731528874696

/-! ## A181123.P14825008364841238850

`A038593(n+1)-A038598(n+1)`
-/

namespace A181123.P14825008364841238850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A038598 (n + 1)

end

end A181123.P14825008364841238850

/-! ## A181123.P12727520913300300294

`record[A038593(A003963(n+1))%A038593(n+1)]`
-/

namespace A181123.P12727520913300300294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038593 (A003963 (n + 1)).toNat) (A038593 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181123.P12727520913300300294

/-! ## A181123.P7679145784102577312

`comp[A038673(n+1)]`
-/

namespace A181123.P7679145784102577312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181123.P7679145784102577312

/-!
# A181124: Difference of two positive 5th powers.

The programs for A181124, there is no canonical definition to state claims against.
-/

/-! ## A181124.P18417949375290278222

`A152045(A080036(n))+A037213(A054602(n))`
-/

namespace A181124.P18417949375290278222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152045 (A080036 n).toNat + A037213 (A054602 n).toNat

end

end A181124.P18417949375290278222

/-! ## A181124.P4849920480932970011

`A000035(A110798(n))*A152045(A080036(n))`
-/

namespace A181124.P4849920480932970011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A110798 n).toNat * A152045 (A080036 n).toNat

end

end A181124.P4849920480932970011

/-! ## A181124.P15806403550617238840

`A152045(A080036(n))^A062378(A061925(n))`
-/

namespace A181124.P15806403550617238840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152045 (A080036 n).toNat : ℚ) ^ (A062378 (A061925 n).toNat : ℤ)

end

end A181124.P15806403550617238840

/-! ## A181124.P1462109203040984965

`A152045(A080036(n)%A147858(2*(n+2)))`
-/

namespace A181124.P1462109203040984965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152045 (Int.tmod (A080036 n) (A147858 (2 * (n + 2)))).toNat

end

end A181124.P1462109203040984965

/-! ## A181124.P17828748377171909186

`A152045(A080036(n))%A000040(A089574(n+1))`
-/

namespace A181124.P17828748377171909186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152045 (A080036 n).toNat) (A000040 (A089574 (n + 1)).toNat)

end

end A181124.P17828748377171909186

/-!
# A181125: Difference of two positive 6th powers.

The programs for A181125, there is no canonical definition to state claims against.
-/

/-! ## A181125.P3127935825021916449

`record[Δ[A030298(n+1)^6]]`
-/

namespace A181125.P3127935825021916449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1) ^ 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181125.P3127935825021916449

/-! ## A181125.P7084163467282404533

`record[Δ[A207324(n+1)^6]]`
-/

namespace A181125.P7084163467282404533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207324 (n + 1) ^ 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181125.P7084163467282404533

/-! ## A181125.P14989471217550668693

`record[Δ[A338169(n+1)^6]]`
-/

namespace A181125.P14989471217550668693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338169 (n + 1) ^ 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181125.P14989471217550668693

/-!
# A181126: Difference of two positive 7th powers.

The programs for A181126, there is no canonical definition to state claims against.
-/

/-! ## A181126.P11042308445463789363

`record[Δ[A227739(n+1)^7]]`
-/

namespace A181126.P11042308445463789363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227739 (n + 1) ^ 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181126.P11042308445463789363

/-! ## A181126.P283105617058743374

`record[Δ[A030298(n+1)^7]]`
-/

namespace A181126.P283105617058743374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1) ^ 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181126.P283105617058743374

/-! ## A181126.P2456580979231893644

`record[Δ[A207324(n+1)^7]]`
-/

namespace A181126.P2456580979231893644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207324 (n + 1) ^ 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181126.P2456580979231893644

/-!
# A181127: Difference of two positive 8th powers.

The programs for A181127, there is no canonical definition to state claims against.
-/

/-! ## A181127.P14824054343687940367

`record[Δ[A227738(n+1)^8]]`
-/

namespace A181127.P14824054343687940367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227738 (n + 1) ^ 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181127.P14824054343687940367

/-! ## A181127.P1540353524938307690

`record[Δ[A227739(n+1)^8]]`
-/

namespace A181127.P1540353524938307690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227739 (n + 1) ^ 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181127.P1540353524938307690

/-! ## A181127.P434255686498463714

`record[Δ[A030298(n+1)^8]]`
-/

namespace A181127.P434255686498463714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1) ^ 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181127.P434255686498463714

/-! ## A181127.P5133631377699253397

`record[Δ[A207324(n+1)^8]]`
-/

namespace A181127.P5133631377699253397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207324 (n + 1) ^ 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181127.P5133631377699253397

/-! ## A181127.P11175029460502514152

`record[Δ[A338169(n+1)²²²]]`
-/

namespace A181127.P11175029460502514152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A338169 (n + 1) ^ 2) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181127.P11175029460502514152

/-!
# A181128: Difference of two positive 9th powers.

The programs for A181128, there is no canonical definition to state claims against.
-/

/-! ## A181128.P3429437560502403277

`record[Δ[A227739(n+1)^9]]`
-/

namespace A181128.P3429437560502403277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227739 (n + 1) ^ 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181128.P3429437560502403277

/-! ## A181128.P2282340066018523663

`record[Δ[A030298(n+1)^9]]`
-/

namespace A181128.P2282340066018523663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1) ^ 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181128.P2282340066018523663

/-! ## A181128.P6468573342419721749

`record[Δ[A207324(n+1)^9]]`
-/

namespace A181128.P6468573342419721749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207324 (n + 1) ^ 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181128.P6468573342419721749

/-! ## A181128.P18040969638274379435

`record[Δ[(A030298(A028310(n))^3)^3]]`
-/

namespace A181128.P18040969638274379435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030298 (A028310 n).toNat ^ 3) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181128.P18040969638274379435

/-!
# A181130: Numerator of Integral_{x=0..+oo} Polylog(-n, -x)^2.

The programs for A181130, there is no canonical definition to state claims against.
-/

/-! ## A181130.P17366708062433517166

`abs(A212196(n+1))`
-/

namespace A181130.P17366708062433517166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212196 (n + 1)|

end

end A181130.P17366708062433517166

/-! ## A181130.P11054178641229208445

`abs(A230069(∑[n+1]))`
-/

namespace A181130.P11054178641229208445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A230069 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A181130.P11054178641229208445

/-! ## A181130.P7962138449498322866

`abs(A201453(∑[n+2]))`
-/

namespace A181130.P7962138449498322866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A201453 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A181130.P7962138449498322866

/-! ## A181130.P11517333212428784565

`gcd(A000038(n), A212196(n+1))`
-/

namespace A181130.P11517333212428784565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A212196 (n + 1))

end

end A181130.P11517333212428784565

/-! ## A181130.P17860498937185926413

`A085737(∑[4*(n+1)])`
-/

namespace A181130.P17860498937185926413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085737 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181130.P17860498937185926413

/-!
# A181131: Denominator of Integral_{x=0..+oo} Polylog(-n, -x)^2 for n > 0, with a(0) = 1.

The programs for A181131, there is no canonical definition to state claims against.
-/

/-! ## A181131.P13505032516433260129

`A190339(n)-A169585(n)`
-/

namespace A181131.P13505032516433260129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190339 n - A169585 n

end

end A181131.P13505032516433260129

/-! ## A181131.P8868818942846452577

`A190339(n)/A141044(n)`
-/

namespace A181131.P8868818942846452577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190339 n : ℚ) / (A141044 n : ℚ)

end

end A181131.P8868818942846452577

/-! ## A181131.P11316367017260569561

`A190339(n)/A000034(A260723(n+1))`
-/

namespace A181131.P11316367017260569561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190339 n : ℚ) / (A000034 (A260723 (n + 1)).toNat : ℚ)

end

end A181131.P11316367017260569561

/-! ## A181131.P1120242524799357521

`A201454(∑[n]+n)`
-/

namespace A181131.P1120242524799357521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201454 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A181131.P1120242524799357521

/-! ## A181131.P17822988250993050521

`A085738(∑[4*n])`
-/

namespace A181131.P17822988250993050521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181131.P17822988250993050521

/-!
# A181132: a(0)=0; thereafter a(n) = total number of 0's in binary expansions of 1, ..., n.

The programs for A181132, the canonical program `A181132.P3293973136529451721` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181132 has offset 0).

The definition of A181132 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059015, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181132.P3293973136529451721

`A059015(n)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A181132

/-- `A059015(n)-1` -/
def P3293973136529451721.Spec : Prop :=
  ∀ n, P3293973136529451721.a n = A181132 n

theorem P3293973136529451721.correct : P3293973136529451721.Spec := by
  intro n
  simp only [A181132]

end A181132

/-! ## A181132.P5698480392451895402

`∑[a(floor(n/2))+(n+1)%2]` with `a(0)=0`
-/

namespace A181132.P5698480392451895402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181132.P5698480392451895402

namespace A181132

/-- `∑[a(floor(n/2))+(n+1)%2]` -/
def P5698480392451895402.Spec : Prop :=
  ∀ n, (P5698480392451895402.a n : ℤ) = A181132 n

end A181132

/-! ## A181132.P10057736974173898738

`∑[∑[a(floor(n/2))-a(n-1)]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A181132.P10057736974173898738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181132.P10057736974173898738

namespace A181132

/-- `∑[∑[a(floor(n/2))-a(n-1)]]` -/
def P10057736974173898738.Spec : Prop :=
  ∀ n, P10057736974173898738.a n = A181132 n

end A181132

/-! ## A181132.P5374858790328086119

`∑[A080791(n)]`
-/

namespace A181132.P5374858790328086119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181132.P5374858790328086119

namespace A181132

/-- `∑[A080791(n)]` -/
def P5374858790328086119.Spec : Prop :=
  ∀ n, P5374858790328086119.a n = A181132 n

end A181132

/-! ## A181132.P10636474035381730111

`∑[log2(A080100(n))]`
-/

namespace A181132.P10636474035381730111
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A080100 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181132.P10636474035381730111

namespace A181132

/-- `∑[log2(A080100(n))]` -/
def P10636474035381730111.Spec : Prop :=
  ∀ n, P10636474035381730111.a n = (A181132 n : ℝ)

end A181132

/-! ## A181132.P10860501484331769067

`∑[∑[A089263(n)]]`
-/

namespace A181132.P10860501484331769067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181132.P10860501484331769067

namespace A181132

/-- `∑[∑[A089263(n)]]` -/
def P10860501484331769067.Spec : Prop :=
  ∀ n, P10860501484331769067.a n = A181132 n

end A181132

/-! ## A181132.P6436274581987785421

`∑[A023416(n)]-1`
-/

namespace A181132.P6436274581987785421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A181132.P6436274581987785421

namespace A181132

/-- `∑[A023416(n)]-1` -/
def P6436274581987785421.Spec : Prop :=
  ∀ n, P6436274581987785421.a n = A181132 n

end A181132

/-! ## A181132.P8886960648543182756

`∑[A290251(n)]-n`
-/

namespace A181132.P8886960648543182756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A181132.P8886960648543182756

namespace A181132

/-- `∑[A290251(n)]-n` -/
def P8886960648543182756.Spec : Prop :=
  ∀ n, P8886960648543182756.a n = A181132 n

end A181132

/-! ## A181132.P5112295072877089640

`∑[log2(A267584(n))]-n`
-/

namespace A181132.P5112295072877089640
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A267584 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)

end

end A181132.P5112295072877089640

namespace A181132

/-- `∑[log2(A267584(n))]-n` -/
def P5112295072877089640.Spec : Prop :=
  ∀ n, P5112295072877089640.a n = (A181132 n : ℝ)

end A181132

/-! ## A181132.P1977151821653078810

`∑[A008687(n+1)-1]`
-/

namespace A181132.P1977151821653078810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181132.P1977151821653078810

namespace A181132

/-- `∑[A008687(n+1)-1]` -/
def P1977151821653078810.Spec : Prop :=
  ∀ n, P1977151821653078810.a n = A181132 n

end A181132

/-! ## A181132.P3452566847033640385

`∑[val(A176893(n), 2)]-1`
-/

namespace A181132.P3452566847033640385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176893 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A181132.P3452566847033640385

namespace A181132

/-- `∑[val(A176893(n), 2)]-1` -/
def P3452566847033640385.Spec : Prop :=
  ∀ n, P3452566847033640385.a n = A181132 n

end A181132

/-! ## A181132.P8525856183351685701

`∑[A233272(n)-(n+1)]`
-/

namespace A181132.P8525856183351685701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181132.P8525856183351685701

namespace A181132

/-- `∑[A233272(n)-(n+1)]` -/
def P8525856183351685701.Spec : Prop :=
  ∀ n, P8525856183351685701.a n = A181132 n

end A181132

/-! ## A181132.P8224525824233834539

`∑[A120511(n+1)]-(n+1)²`
-/

namespace A181132.P8224525824233834539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A181132.P8224525824233834539

namespace A181132

/-- `∑[A120511(n+1)]-(n+1)²` -/
def P8224525824233834539.Spec : Prop :=
  ∀ n, P8224525824233834539.a n = A181132 n

end A181132

/-! ## A181132.P8785333393351410734

`A000788(n)-A268289(n)`
-/

namespace A181132.P8785333393351410734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n - A268289 n

end

end A181132.P8785333393351410734

namespace A181132

/-- `A000788(n)-A268289(n)` -/
def P8785333393351410734.Spec : Prop :=
  ∀ n, P8785333393351410734.a n = A181132 n

end A181132

/-! ## A181132.P7111074138672284368

`∑[A000120(A035327(n))]-1`
-/

namespace A181132.P7111074138672284368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A181132.P7111074138672284368

namespace A181132

/-- `∑[A000120(A035327(n))]-1` -/
def P7111074138672284368.Spec : Prop :=
  ∀ n, P7111074138672284368.a n = A181132 n

end A181132

/-! ## A181132.P16155107730572555193

`∑[A000120(A080100(n)-1)]`
-/

namespace A181132.P16155107730572555193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A080100 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181132.P16155107730572555193

namespace A181132

/-- `∑[A000120(A080100(n)-1)]` -/
def P16155107730572555193.Spec : Prop :=
  ∀ n, P16155107730572555193.a n = A181132 n

end A181132

/-! ## A181132.P8582369899506947592

`∑[A000120(A003817(n)-n)]`
-/

namespace A181132.P8582369899506947592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003817 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181132.P8582369899506947592

namespace A181132

/-- `∑[A000120(A003817(n)-n)]` -/
def P8582369899506947592.Spec : Prop :=
  ∀ n, P8582369899506947592.a n = A181132 n

end A181132

/-! ## A181132.P3112239104847692328

`∑[A000120(n-A006257(n))]`
-/

namespace A181132.P3112239104847692328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181132.P3112239104847692328

namespace A181132

/-- `∑[A000120(n-A006257(n))]` -/
def P3112239104847692328.Spec : Prop :=
  ∀ n, P3112239104847692328.a n = A181132 n

end A181132

/-! ## A181132.P7390102961458892373

`A001855(n+1)-A000788(n)`
-/

namespace A181132.P7390102961458892373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1) - A000788 n

end

end A181132.P7390102961458892373

namespace A181132

/-- `A001855(n+1)-A000788(n)` -/
def P7390102961458892373.Spec : Prop :=
  ∀ n, P7390102961458892373.a n = A181132 n

end A181132

/-! ## A181132.P1774699587034217662

`A083652(n)-(A000788(n)+1)`
-/

namespace A181132.P1774699587034217662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n - (A000788 n + 1)

end

end A181132.P1774699587034217662

namespace A181132

/-- `A083652(n)-(A000788(n)+1)` -/
def P1774699587034217662.Spec : Prop :=
  ∀ n, P1774699587034217662.a n = A181132 n

theorem P1774699587034217662.correct : P1774699587034217662.Spec := by
  intro n
  simp only [A181132, Nat.add_sub_cancel, A181132.P1774699587034217662.a, A181132.P3293973136529451721.a, A000788, A000788.P8338375810879423652.a, A059015, A059015.P11480840936605404321.a, A083652, A083652.P17078178510795744902.a, A083741, A083741.P6552315304162526779.a, A136013, A136013.P12572160085575880269.a, A245788, A245788.P10796889760857720878.f2, A245788.P10796889760857720878.f1, A245788.P10796889760857720878.a, A298011, A298011.P12682259250450599023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181132

/-!
# A181133: a(n) = n + A003056(n).

The programs for A181133, the canonical program `A181133.P3977381246546319106` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181133 has offset 1).

The definition of A181133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181133.P11021837714763151076

`n+1+floor((sqrt(1+8*(n+1))-1)/2)`
-/

namespace A181133.P11021837714763151076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌊(Real.sqrt (1 + 8 * (n + 1) : ℝ) - 1) / 2⌋

end

end A181133.P11021837714763151076

namespace A181133

/-- `n+1+floor((sqrt(1+8*(n+1))-1)/2)` -/
def P11021837714763151076.Spec : Prop :=
  ∀ n, P11021837714763151076.a n = A181133 (n + 1)

theorem P11021837714763151076.correct : P11021837714763151076.Spec := by
  intro n
  simp only [A181133, Nat.add_sub_cancel, A181133.P11021837714763151076.a, A181133.P3977381246546319106.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A181133

/-! ## A181133.P3977381246546319106

`n+1+A003056(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A181133

/-- `n+1+A003056(n+1)` -/
def P3977381246546319106.Spec : Prop :=
  ∀ n, P3977381246546319106.a n = A181133 (n + 1)

theorem P3977381246546319106.correct : P3977381246546319106.Spec := by
  intro n
  simp only [A181133, Nat.add_sub_cancel]

end A181133

/-! ## A181133.P362545956507800890

`comp[n²%(∑[n]+2)]`
-/

namespace A181133.P362545956507800890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % (∑ j ∈ Finset.range (n + 1), f2 j + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A181133.P362545956507800890

namespace A181133

/-- `comp[n²%(∑[n]+2)]` -/
def P362545956507800890.Spec : Prop :=
  ∀ n, (P362545956507800890.a n : ℤ) = A181133 (n + 1)

end A181133

/-! ## A181133.P15925003603589392841

`comp[∑[n%(3-n²)]]`
-/

namespace A181133.P15925003603589392841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (3 - (n ^ 2 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181133.P15925003603589392841

namespace A181133

/-- `comp[∑[n%(3-n²)]]` -/
def P15925003603589392841.Spec : Prop :=
  ∀ n, (P15925003603589392841.a n : ℤ) = A181133 (n + 1)

end A181133

/-! ## A181133.P9216178573116946144

`∑[ceil(cosh(char[∑[n-1]]))]`
-/

namespace A181133.P9216178573116946144
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P9216178573116946144

namespace A181133

/-- `∑[ceil(cosh(char[∑[n-1]]))]` -/
def P9216178573116946144.Spec : Prop :=
  ∀ n, P9216178573116946144.a n = A181133 (n + 1)

end A181133

/-! ## A181133.P14938863117059091759

`∑[round(cosh(char[∑[n-1]]))]`
-/

namespace A181133.P14938863117059091759
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P14938863117059091759

namespace A181133

/-- `∑[round(cosh(char[∑[n-1]]))]` -/
def P14938863117059091759.Spec : Prop :=
  ∀ n, P14938863117059091759.a n = A181133 (n + 1)

end A181133

/-! ## A181133.P16835505013227135393

`comp[a(n-1)+n]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A181133.P16835505013227135393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A181133.P16835505013227135393

namespace A181133

/-- `comp[a(n-1)+n]` -/
def P16835505013227135393.Spec : Prop :=
  ∀ n, (P16835505013227135393.a n : ℤ) = A181133 (n + 1)

end A181133

/-! ## A181133.P18284804964109255992

`comp[n-(4-a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A181133.P18284804964109255992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n : ℤ) - (4 - f1 (n - 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181133.P18284804964109255992

namespace A181133

/-- `comp[n-(4-a(n-1))]` -/
def P18284804964109255992.Spec : Prop :=
  ∀ n, (P18284804964109255992.a n : ℤ) = A181133 (n + 1)

end A181133

/-! ## A181133.P4711372862310706509

`∑[char[a(n-1)+n+1]+1]` with `a(0)=0`
-/

namespace A181133.P4711372862310706509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P4711372862310706509

namespace A181133

/-- `∑[char[a(n-1)+n+1]+1]` -/
def P4711372862310706509.Spec : Prop :=
  ∀ n, (P4711372862310706509.a n : ℤ) = A181133 (n + 1)

end A181133

/-! ## A181133.P14438950261900882183

`∑[A023531(n)+1]`
-/

namespace A181133.P14438950261900882183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P14438950261900882183

namespace A181133

/-- `∑[A023531(n)+1]` -/
def P14438950261900882183.Spec : Prop :=
  ∀ n, P14438950261900882183.a n = A181133 (n + 1)

end A181133

/-! ## A181133.P13149031597670211704

`∑[A035214(n+1)]`
-/

namespace A181133.P13149031597670211704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P13149031597670211704

namespace A181133

/-- `∑[A035214(n+1)]` -/
def P13149031597670211704.Spec : Prop :=
  ∀ n, P13149031597670211704.a n = A181133 (n + 1)

end A181133

/-! ## A181133.P7265243906231539036

`∑[2-A023532(n)]`
-/

namespace A181133.P7265243906231539036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P7265243906231539036

namespace A181133

/-- `∑[2-A023532(n)]` -/
def P7265243906231539036.Spec : Prop :=
  ∀ n, P7265243906231539036.a n = A181133 (n + 1)

end A181133

/-! ## A181133.P3131454216050667048

`∑[C(2, A114002(n))]`
-/

namespace A181133.P3131454216050667048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A114002 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P3131454216050667048

namespace A181133

/-- `∑[C(2, A114002(n))]` -/
def P3131454216050667048.Spec : Prop :=
  ∀ n, (P3131454216050667048.a n : ℤ) = A181133 (n + 1)

end A181133

/-! ## A181133.P11159310991462185346

`lt[1, A038137(n+2)]`
-/

namespace A181133.P11159310991462185346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A181133.P11159310991462185346

namespace A181133

/-- `lt[1, A038137(n+2)]` -/
def P11159310991462185346.Spec : Prop :=
  ∀ n, (P11159310991462185346.a n : ℤ) = A181133 (n + 1)

end A181133

/-! ## A181133.P18129726912814906625

`lt[2, A046899(n+2)]`
-/

namespace A181133.P18129726912814906625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A181133.P18129726912814906625

namespace A181133

/-- `lt[2, A046899(n+2)]` -/
def P18129726912814906625.Spec : Prop :=
  ∀ n, (P18129726912814906625.a n : ℤ) = A181133 (n + 1)

end A181133

/-! ## A181133.P7649135946390839916

`∑[A135387(n+1)!]`
-/

namespace A181133.P7649135946390839916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A135387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P7649135946390839916

namespace A181133

/-- `∑[A135387(n+1)!]` -/
def P7649135946390839916.Spec : Prop :=
  ∀ n, (P7649135946390839916.a n : ℤ) = A181133 (n + 1)

end A181133

/-! ## A181133.P8475357946583727955

`∑[∑[A103452(n)]+1]`
-/

namespace A181133.P8475357946583727955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P8475357946583727955

namespace A181133

/-- `∑[∑[A103452(n)]+1]` -/
def P8475357946583727955.Spec : Prop :=
  ∀ n, P8475357946583727955.a n = A181133 (n + 1)

end A181133

/-! ## A181133.P4952087421292838246

`∑[char[A000096(n)]+1]`
-/

namespace A181133.P4952087421292838246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P4952087421292838246

namespace A181133

/-- `∑[char[A000096(n)]+1]` -/
def P4952087421292838246.Spec : Prop :=
  ∀ n, (P4952087421292838246.a n : ℤ) = A181133 (n + 1)

end A181133

/-! ## A181133.P5807431134037655138

`∑[A010054(n+1)+1]`
-/

namespace A181133.P5807431134037655138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P5807431134037655138

namespace A181133

/-- `∑[A010054(n+1)+1]` -/
def P5807431134037655138.Spec : Prop :=
  ∀ n, P5807431134037655138.a n = A181133 (n + 1)

end A181133

/-! ## A181133.P246619951531884469

`∑[A073423(n+1)+1]`
-/

namespace A181133.P246619951531884469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P246619951531884469

namespace A181133

/-- `∑[A073423(n+1)+1]` -/
def P246619951531884469.Spec : Prop :=
  ∀ n, P246619951531884469.a n = A181133 (n + 1)

end A181133

/-!
# A181134: Sum of 13th powers: a(n) = Sum_{j=0..n} j^13.

The programs for A181134, the canonical program `A181134.P12483542145899346340` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181134 has offset 0).

The definition of A181134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181134.P12483542145899346340

`∑[n^13]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A181134

/-- `∑[n^13]` -/
def P12483542145899346340.Spec : Prop :=
  ∀ n, (P12483542145899346340.a n : ℤ) = A181134 n

theorem P12483542145899346340.correct : P12483542145899346340.Spec := by
  intro n
  simp only [A181134]

end A181134

/-! ## A181134.P6086226286513220517

`a(n-1)+n^13` with `a(0)=0`
-/

namespace A181134.P6086226286513220517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n ^ 13

end

end A181134.P6086226286513220517

namespace A181134

/-- `a(n-1)+n^13` -/
def P6086226286513220517.Spec : Prop :=
  ∀ n, (P6086226286513220517.a n : ℤ) = A181134 n

end A181134

/-! ## A181134.P12927835309426609889

`lcm(∑[n], ∑[A010801(n)])`
-/

namespace A181134.P12927835309426609889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A181134.P12927835309426609889

namespace A181134

/-- `lcm(∑[n], ∑[A010801(n)])` -/
def P12927835309426609889.Spec : Prop :=
  ∀ n, (P12927835309426609889.a n : ℤ) = A181134 n

end A181134

/-! ## A181134.P17928567771021749656

`-∑[A060887(n)-A104376(n)]`
-/

namespace A181134.P17928567771021749656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060887 n - A104376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181134.P17928567771021749656

namespace A181134

/-- `-∑[A060887(n)-A104376(n)]` -/
def P17928567771021749656.Spec : Prop :=
  ∀ n, P17928567771021749656.a n = A181134 n

end A181134

/-! ## A181134.P5707173791188934523

`∑[A010801(n+1)]-A010801(n+1)`
-/

namespace A181134.P5707173791188934523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010801 (n + 1)

end

end A181134.P5707173791188934523

namespace A181134

/-- `∑[A010801(n+1)]-A010801(n+1)` -/
def P5707173791188934523.Spec : Prop :=
  ∀ n, P5707173791188934523.a n = A181134 n

end A181134

/-! ## A181134.P7554003305510484585

`floor(∑[sqrt(A089081(n))])`
-/

namespace A181134.P7554003305510484585
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A089081 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A181134.P7554003305510484585

namespace A181134

/-- `floor(∑[sqrt(A089081(n))])` -/
def P7554003305510484585.Spec : Prop :=
  ∀ n, P7554003305510484585.a n = A181134 n

end A181134

/-!
# A181135: a(n) = ADP(n) is the total number of aperiodic k-double-palindromes of n, where 2 <= k <= n.

The programs for A181135, the canonical program `A181135.P15852532938470310667` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181135 has offset 1).

The definition of A181135 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180322, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181135.P15852532938470310667

`A180322(n+1)-A179781(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A181135

/-- `A180322(n+1)-A179781(n+1)` -/
def P15852532938470310667.Spec : Prop :=
  ∀ n, P15852532938470310667.a n = A181135 (n + 1)

theorem P15852532938470310667.correct : P15852532938470310667.Spec := by
  intro n
  simp only [A181135, Nat.add_sub_cancel]

end A181135

/-! ## A181135.P15957657727950624278

`(n+1)/2*A056493(n+1)-A179781(n+1)`
-/

namespace A181135.P15957657727950624278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A056493 (n + 1) : ℚ) - (A179781 (n + 1) : ℚ)

end

end A181135.P15957657727950624278

namespace A181135

/-- `(n+1)/2*A056493(n+1)-A179781(n+1)` -/
def P15957657727950624278.Spec : Prop :=
  ∀ n, P15957657727950624278.a n = (A181135 (n + 1) : ℚ)

end A181135

/-! ## A181135.P571992646063742533

`A180322(n+1)+A180750(n+1)-A180249(n+1)`
-/

namespace A181135.P571992646063742533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180322 (n + 1) + (A180750 (n + 1) - A180249 (n + 1))

end

end A181135.P571992646063742533

namespace A181135

/-- `A180322(n+1)+A180750(n+1)-A180249(n+1)` -/
def P571992646063742533.Spec : Prop :=
  ∀ n, P571992646063742533.a n = A181135 (n + 1)

theorem P571992646063742533.correct : P571992646063742533.Spec := by
  intro n
  simp only [A181135, Nat.add_sub_cancel, A181135.P571992646063742533.a, A181135.P15852532938470310667.a, A179781, A179781.P16822267324910251204.f1, A179781.P16822267324910251204.a, A180249, A180249.P6868902243735557248.f1, A180249.P6868902243735557248.a, A180322, A180322.P10246016222357682006.a, A180750, A180750.P8982842106611708069.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056493, A056493.P14823141332440776708.f1, A056493.P14823141332440776708.a, A164090, A164090.P6257059095248151761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181135

/-! ## A181135.P10917979904119607769

`A180322(n+1)-(A056493(n+1)-A056476(n+1))`
-/

namespace A181135.P10917979904119607769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180322 (n + 1) - (A056493 (n + 1) - A056476 (n + 1))

end

end A181135.P10917979904119607769

namespace A181135

/-- `A180322(n+1)-(A056493(n+1)-A056476(n+1))` -/
def P10917979904119607769.Spec : Prop :=
  ∀ n, P10917979904119607769.a n = A181135 (n + 1)

end A181135

/-! ## A181135.P1008475959254667458

`A180322(n+1)-abs(A056476(n+1)-A056498(n+1))`
-/

namespace A181135.P1008475959254667458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180322 (n + 1) - |A056476 (n + 1) - A056498 (n + 1)|

end

end A181135.P1008475959254667458

namespace A181135

/-- `A180322(n+1)-abs(A056476(n+1)-A056498(n+1))` -/
def P1008475959254667458.Spec : Prop :=
  ∀ n, P1008475959254667458.a n = A181135 (n + 1)

end A181135

/-! ## A181135.P8328296010049626444

`A180322(n+1)-(A056493(n+1)-A056458(n+1)/2)`
-/

namespace A181135.P8328296010049626444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180322 (n + 1) : ℚ) - ((A056493 (n + 1) : ℚ) - (A056458 (n + 1) : ℚ) / 2)

end

end A181135.P8328296010049626444

namespace A181135

/-- `A180322(n+1)-(A056493(n+1)-A056458(n+1)/2)` -/
def P8328296010049626444.Spec : Prop :=
  ∀ n, P8328296010049626444.a n = (A181135 (n + 1) : ℚ)

end A181135

/-! ## A181135.P5375203121994217451

`∑{d}[n+1, A008683(#)*A180249((n+1)/#)]-A179781(n+1)`
-/

namespace A181135.P5375203121994217451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A180249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A179781 (n + 1)

end

end A181135.P5375203121994217451

namespace A181135

/-- `∑{d}[n+1, A008683(#)*A180249((n+1)/#)]-A179781(n+1)` -/
def P5375203121994217451.Spec : Prop :=
  ∀ n, P5375203121994217451.a n = A181135 (n + 1)

end A181135

/-! ## A181135.P1725864190925648607

`A180322(n+1)-(A056476(n+1)+A056498(n+1)-A056463(n+1))`
-/

namespace A181135.P1725864190925648607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180322 (n + 1) - (A056476 (n + 1) + (A056498 (n + 1) - A056463 (n + 1)))

end

end A181135.P1725864190925648607

namespace A181135

/-- `A180322(n+1)-(A056476(n+1)+A056498(n+1)-A056463(n+1))` -/
def P1725864190925648607.Spec : Prop :=
  ∀ n, P1725864190925648607.a n = A181135 (n + 1)

end A181135

/-! ## A181135.P18394313490801220662

`A180322(n+1)-(A000046(n+1)+A056366(n+1)-A056303(n+1))`
-/

namespace A181135.P18394313490801220662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180322 (n + 1) - (A000046 (n + 1) + (A056366 (n + 1) - A056303 (n + 1)))

end

end A181135.P18394313490801220662

namespace A181135

/-- `A180322(n+1)-(A000046(n+1)+A056366(n+1)-A056303(n+1))` -/
def P18394313490801220662.Spec : Prop :=
  ∀ n, P18394313490801220662.a n = A181135 (n + 1)

end A181135

/-!
# A181136: G.f.: A(x) = Sum_{n>=0} x^n/[Sum_{k=0..n} C(n,k)^3*(-x)^k].

The programs for A181136, there is no canonical definition to state claims against.
-/

/-! ## A181136.P98708479103454176

`A109168(∏[a(n-1)+4])` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A181136.P98708479103454176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A181136.P98708479103454176

/-! ## A181136.P16199638525174229260

`A260731(A098620(n))`
-/

namespace A181136.P16199638525174229260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A098620 n).toNat

end

end A181136.P16199638525174229260

/-!
# A181137: The number of ways to color n balls in a row with 3 colors with no color runs having lengths greater than 3.

The programs for A181137, the canonical program `A181137.P13943973678464762753` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181137 has offset 0).

The definition of A181137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181137.P13943973678464762753

`ogf((1+x+x^2+x^3)/(1-2x-2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A181137

/-- `ogf((1+x+x^2+x^3)/(1-2x-2x^2-2x^3))` -/
def P13943973678464762753.Spec : Prop :=
  ∀ n, P13943973678464762753.a n = A181137 n

theorem P13943973678464762753.correct : P13943973678464762753.Spec := by
  intro n
  simp only [A181137]

end A181137

/-! ## A181137.P17527645672196050738

`2*(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`
-/

namespace A181137.P17527645672196050738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27] fun n a =>
  2 * (a (n - 1) + a (n - 2) + a (n - 3))

end

end A181137.P17527645672196050738

namespace A181137

/-- `2*(a(n-1)+a(n-2)+a(n-3))` -/
def P17527645672196050738.Spec : Prop :=
  ∀ n, (P17527645672196050738.a n : ℤ) = A181137 n

end A181137

/-! ## A181137.P16099914175199481016

`floor(3/2*A077835(n))`
-/

namespace A181137.P16099914175199481016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A077835 n : ℚ)⌋

end

end A181137.P16099914175199481016

namespace A181137

/-- `floor(3/2*A077835(n))` -/
def P16099914175199481016.Spec : Prop :=
  ∀ n, P16099914175199481016.a n = A181137 n

end A181137

/-! ## A181137.P6336412076190216511

`(3/2*A077835(n))^A057428(n)²`
-/

namespace A181137.P6336412076190216511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2 * (A077835 n : ℚ)) ^ (A057428 n ^ 2 : ℤ)

end

end A181137.P6336412076190216511

namespace A181137

/-- `(3/2*A077835(n))^A057428(n)²` -/
def P6336412076190216511.Spec : Prop :=
  ∀ n, P6336412076190216511.a n = (A181137 n : ℚ)

end A181137

/-! ## A181137.P4301243117762608160

`(3-A028310(n)+n)/2*A077835(n)`
-/

namespace A181137.P4301243117762608160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A028310 n + (n : ℤ) : ℚ) / 2 * (A077835 n : ℚ)

end

end A181137.P4301243117762608160

namespace A181137

/-- `(3-A028310(n)+n)/2*A077835(n)` -/
def P4301243117762608160.Spec : Prop :=
  ∀ n, P4301243117762608160.a n = (A181137 n : ℚ)

end A181137

/-! ## A181137.P6399848802556127014

`(A052409(n²+1)+2)/2*A077835(n)`
-/

namespace A181137.P6399848802556127014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052409 (n ^ 2 + 1) + 2 : ℚ) / 2 * (A077835 n : ℚ)

end

end A181137.P6399848802556127014

namespace A181137

/-- `(A052409(n²+1)+2)/2*A077835(n)` -/
def P6399848802556127014.Spec : Prop :=
  ∀ n, P6399848802556127014.a n = (A181137 n : ℚ)

end A181137

/-! ## A181137.P6271872082730186855

`(n-(log2(A011782(n))-2))/2*A077835(n)`
-/

namespace A181137.P6271872082730186855
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) - (Real.logb 2 (A011782 n : ℝ) - 2)) / 2 * (A077835 n : ℝ)

end

end A181137.P6271872082730186855

namespace A181137

/-- `(n-(log2(A011782(n))-2))/2*A077835(n)` -/
def P6271872082730186855.Spec : Prop :=
  ∀ n, P6271872082730186855.a n = (A181137 n : ℝ)

end A181137

/-! ## A181137.P8917391852806003665

`A077835(n)+(A077835(n)-A000007(n))/2`
-/

namespace A181137.P8917391852806003665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077835 n : ℚ) + (A077835 n - A000007 n : ℚ) / 2

end

end A181137.P8917391852806003665

namespace A181137

/-- `A077835(n)+(A077835(n)-A000007(n))/2` -/
def P8917391852806003665.Spec : Prop :=
  ∀ n, P8917391852806003665.a n = (A181137 n : ℚ)

end A181137

/-! ## A181137.P2666398156387800156

`A077835(n)+A077835(n)%A119826(n)/2`
-/

namespace A181137.P2666398156387800156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077835 n : ℚ) + (Int.tmod (A077835 n) (A119826 n) : ℚ) / 2

end

end A181137.P2666398156387800156

namespace A181137

/-- `A077835(n)+A077835(n)%A119826(n)/2` -/
def P2666398156387800156.Spec : Prop :=
  ∀ n, P2666398156387800156.a n = (A181137 n : ℚ)

end A181137

/-! ## A181137.P18433509389296466667

`(3/2*A077835(n))^A001221(A008578(n+1))`
-/

namespace A181137.P18433509389296466667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2 * (A077835 n : ℚ)) ^ (A001221 (A008578 (n + 1)).toNat : ℤ)

end

end A181137.P18433509389296466667

namespace A181137

/-- `(3/2*A077835(n))^A001221(A008578(n+1))` -/
def P18433509389296466667.Spec : Prop :=
  ∀ n, P18433509389296466667.a n = (A181137 n : ℚ)

end A181137

/-! ## A181137.P16690398093720059916

`(3/2*A077835(n))^A008683(2*A139841(n+1))`
-/

namespace A181137.P16690398093720059916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2 * (A077835 n : ℚ)) ^ (A008683 (2 * A139841 (n + 1)).toNat : ℤ)

end

end A181137.P16690398093720059916

namespace A181137

/-- `(3/2*A077835(n))^A008683(2*A139841(n+1))` -/
def P16690398093720059916.Spec : Prop :=
  ∀ n, P16690398093720059916.a n = (A181137 n : ℚ)

end A181137

/-! ## A181137.P17263108142979528159

`A000244(n)/A025192(n)*A077835(n)`
-/

namespace A181137.P17263108142979528159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / (A025192 n : ℚ) * (A077835 n : ℚ)

end

end A181137.P17263108142979528159

namespace A181137

/-- `A000244(n)/A025192(n)*A077835(n)` -/
def P17263108142979528159.Spec : Prop :=
  ∀ n, P17263108142979528159.a n = (A181137 n : ℚ)

end A181137

/-! ## A181137.P16086596847585189762

`(3/2*A077835(n))^A178334(n)`
-/

namespace A181137.P16086596847585189762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2 * (A077835 n : ℚ)) ^ (A178334 n : ℤ)

end

end A181137.P16086596847585189762

namespace A181137

/-- `(3/2*A077835(n))^A178334(n)` -/
def P16086596847585189762.Spec : Prop :=
  ∀ n, P16086596847585189762.a n = (A181137 n : ℚ)

end A181137

/-!
# A181138: Least positive integer k such that n^2 + k is a cube.

The programs for A181138, the canonical program `A181138.P2548307813772460073` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181138 has offset 0).

The definition of A181138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181138.P2548307813772460073

`(1+floor(n^(2/3)))^3-n²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A181138

/-- `(1+floor(n^(2/3)))^3-n²` -/
def P2548307813772460073.Spec : Prop :=
  ∀ n, P2548307813772460073.a n = A181138 n

theorem P2548307813772460073.correct : P2548307813772460073.Spec := by
  intro n
  simp only [A181138]

end A181138

/-! ## A181138.P842453004406735483

`A333884(n²)`
-/

namespace A181138.P842453004406735483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (n ^ 2)

end

end A181138.P842453004406735483

namespace A181138

/-- `A333884(n²)` -/
def P842453004406735483.Spec : Prop :=
  ∀ n, P842453004406735483.a n = A181138 n

end A181138

/-! ## A181138.P15980121327559569718

`or(char[19], A333884(n^2))`
-/

namespace A181138.P15980121327559569718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A333884 (n ^ 2))

end

end A181138.P15980121327559569718

namespace A181138

/-- `or(char[19], A333884(n^2))` -/
def P15980121327559569718.Spec : Prop :=
  ∀ n, P15980121327559569718.a n = A181138 n

end A181138

/-! ## A181138.P16006698552444179464

`round(1/acot(A333884(n*n)))`
-/

namespace A181138.P16006698552444179464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A333884 (n * n) : ℝ))

end

end A181138.P16006698552444179464

namespace A181138

/-- `round(1/acot(A333884(n*n)))` -/
def P16006698552444179464.Spec : Prop :=
  ∀ n, P16006698552444179464.a n = A181138 n

end A181138

/-! ## A181138.P10883649872505728432

`A000027(A333884(n^2))`
-/

namespace A181138.P10883649872505728432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A333884 (n ^ 2)).toNat

end

end A181138.P10883649872505728432

namespace A181138

/-- `A000027(A333884(n^2))` -/
def P10883649872505728432.Spec : Prop :=
  ∀ n, P10883649872505728432.a n = A181138 n

end A181138

/-! ## A181138.P17165321177128992335

`-A001489(A333884(n*n))`
-/

namespace A181138.P17165321177128992335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (A333884 (n * n)).toNat

end

end A181138.P17165321177128992335

namespace A181138

/-- `-A001489(A333884(n*n))` -/
def P17165321177128992335.Spec : Prop :=
  ∀ n, P17165321177128992335.a n = A181138 n

end A181138

/-! ## A181138.P17284761026169785792

`A004526(2*A333884(n*n))`
-/

namespace A181138.P17284761026169785792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A333884 (n * n)).toNat

end

end A181138.P17284761026169785792

namespace A181138

/-- `A004526(2*A333884(n*n))` -/
def P17284761026169785792.Spec : Prop :=
  ∀ n, P17284761026169785792.a n = A181138 n

end A181138

/-! ## A181138.P4566839053960282754

`A025480(2*A333884(n*n))`
-/

namespace A181138.P4566839053960282754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * A333884 (n * n)).toNat

end

end A181138.P4566839053960282754

namespace A181138

/-- `A025480(2*A333884(n*n))` -/
def P4566839053960282754.Spec : Prop :=
  ∀ n, P4566839053960282754.a n = A181138 n

end A181138

/-! ## A181138.P12638742099635187038

`A029578(2*A333884(n*n))`
-/

namespace A181138.P12638742099635187038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (2 * A333884 (n * n)).toNat

end

end A181138.P12638742099635187038

namespace A181138

/-- `A029578(2*A333884(n*n))` -/
def P12638742099635187038.Spec : Prop :=
  ∀ n, P12638742099635187038.a n = A181138 n

end A181138

/-! ## A181138.P10155362789381985465

`A002265(4*A333884(n*n))`
-/

namespace A181138.P10155362789381985465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (4 * A333884 (n * n)).toNat

end

end A181138.P10155362789381985465

namespace A181138

/-- `A002265(4*A333884(n*n))` -/
def P10155362789381985465.Spec : Prop :=
  ∀ n, P10155362789381985465.a n = A181138 n

end A181138

/-! ## A181138.P4756726366314767465

`A007318(C(2, n))*A333884(n^2)`
-/

namespace A181138.P4756726366314767465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A333884 (n ^ 2)

end

end A181138.P4756726366314767465

namespace A181138

/-- `A007318(C(2, n))*A333884(n^2)` -/
def P4756726366314767465.Spec : Prop :=
  ∀ n, P4756726366314767465.a n = A181138 n

end A181138

/-! ## A181138.P13896524866734194399

`A014963(6*(n+1))*A333884(n*n)`
-/

namespace A181138.P13896524866734194399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A333884 (n * n)

end

end A181138.P13896524866734194399

namespace A181138

/-- `A014963(6*(n+1))*A333884(n*n)` -/
def P13896524866734194399.Spec : Prop :=
  ∀ n, P13896524866734194399.a n = A181138 n

end A181138

/-! ## A181138.P9180040015466568480

`A333884(A000290(n))^A178334(n)`
-/

namespace A181138.P9180040015466568480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333884 (A000290 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A181138.P9180040015466568480

namespace A181138

/-- `A333884(A000290(n))^A178334(n)` -/
def P9180040015466568480.Spec : Prop :=
  ∀ n, P9180040015466568480.a n = (A181138 n : ℚ)

end A181138

/-! ## A181138.P17925539198907154572

`A000688(A304042(n))*A333884(n*n)`
-/

namespace A181138.P17925539198907154572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A304042 n).toNat * A333884 (n * n)

end

end A181138.P17925539198907154572

namespace A181138

/-- `A000688(A304042(n))*A333884(n*n)` -/
def P17925539198907154572.Spec : Prop :=
  ∀ n, P17925539198907154572.a n = A181138 n

end A181138

/-! ## A181138.P8955085849333694643

`A304042(A002262(n))*A333884(n*n)`
-/

namespace A181138.P8955085849333694643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A002262 n).toNat * A333884 (n * n)

end

end A181138.P8955085849333694643

namespace A181138

/-- `A304042(A002262(n))*A333884(n*n)` -/
def P8955085849333694643.Spec : Prop :=
  ∀ n, P8955085849333694643.a n = A181138 n

end A181138

/-! ## A181138.P323683399441935802

`A281188(A218255(n))*A333884(A000290(n))`
-/

namespace A181138.P323683399441935802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281188 (A218255 n).toNat * A333884 (A000290 n).toNat

end

end A181138.P323683399441935802

namespace A181138

/-- `A281188(A218255(n))*A333884(A000290(n))` -/
def P323683399441935802.Spec : Prop :=
  ∀ n, P323683399441935802.a n = A181138 n

end A181138

/-!
# A181140: The number of ways to color n balls in a row with 3 colors with no color runs having lengths greater than 4. This sequence is a special case of the general problem for coloring n balls in a row with p colors where each color has a given maximum run-length. In this example, the bounds are uniformly 4. It can be phrased in terms of tossing a p-faced die n times, requiring each face to have no runs longer than b.

The programs for A181140, the canonical program `A181140.P8140830859380223308` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181140 has offset 1).

The definition of A181140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181140.P15700260936539764707

`ogf((3+3x+3x^2+3x^3)/(1-2x-2x^2-2x^3-2x^4))`
-/

namespace A181140.P15700260936539764707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 3, 3] [1, -2, -2, -2, -2] n

end

end A181140.P15700260936539764707

namespace A181140

/-- `ogf((3+3x+3x^2+3x^3)/(1-2x-2x^2-2x^3-2x^4))` -/
def P15700260936539764707.Spec : Prop :=
  ∀ n, P15700260936539764707.a n = A181140 (n + 1)

end A181140

/-! ## A181140.P8140830859380223308

`3*A209239(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A181140

/-- `3*A209239(n)` -/
def P8140830859380223308.Spec : Prop :=
  ∀ n, P8140830859380223308.a n = A181140 (n + 1)

theorem P8140830859380223308.correct : P8140830859380223308.Spec := by
  intro n
  simp only [A181140, Nat.add_sub_cancel]

end A181140

/-! ## A181140.P12811350479116369159

`3/2*A160175(n+1)`
-/

namespace A181140.P12811350479116369159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A160175 (n + 1) : ℚ)

end

end A181140.P12811350479116369159

namespace A181140

/-- `3/2*A160175(n+1)` -/
def P12811350479116369159.Spec : Prop :=
  ∀ n, P12811350479116369159.a n = (A181140 (n + 1) : ℚ)

end A181140

/-! ## A181140.P13715304296636269914

`3*A160175(ϕ²-(ϕ-n))/2`
-/

namespace A181140.P13715304296636269914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A160175 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / 2)

end

end A181140.P13715304296636269914

namespace A181140

/-- `3*A160175(ϕ²-(ϕ-n))/2` -/
def P13715304296636269914.Spec : Prop :=
  ∀ n, P13715304296636269914.a n = (A181140 (n + 1) : ℚ)

end A181140

/-! ## A181140.P11157704699303075329

`A209239(n)+A160175(n+1)`
-/

namespace A181140.P11157704699303075329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209239 n + A160175 (n + 1)

end

end A181140.P11157704699303075329

namespace A181140

/-- `A209239(n)+A160175(n+1)` -/
def P11157704699303075329.Spec : Prop :=
  ∀ n, P11157704699303075329.a n = A181140 (n + 1)

end A181140

/-! ## A181140.P6227113177336793635

`Δ[3*∑[A160175(n)]/2]`
-/

namespace A181140.P6227113177336793635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160175 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181140.P6227113177336793635

namespace A181140

/-- `Δ[3*∑[A160175(n)]/2]` -/
def P6227113177336793635.Spec : Prop :=
  ∀ n, P6227113177336793635.a n = (A181140 (n + 1) : ℚ)

end A181140

/-!
# A181141: Numbers k such that (8^k + 7^k)/15 is prime.

The programs for A181141, there is no canonical definition to state claims against.
-/

/-! ## A181141.P15382283751339314503

`A045979(A349893(n)+A336456(n+1))`
-/

namespace A181141.P15382283751339314503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045979 (A349893 n + A336456 (n + 1)).toNat

end

end A181141.P15382283751339314503

/-!
# A181142: Number of permutations of {1,2,...,2n} , say x(1),x(2), ... , x(2n) , such that x(i) + x(i+1) is not equal to 2n-1 for all i, 1<=i<=2n-1.

The programs for A181142, there is no canonical definition to state claims against.
-/

/-! ## A181142.P4840020993708587120

`A173842(2*(n+1))`
-/

namespace A181142.P4840020993708587120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173842 (2 * (n + 1))

end

end A181142.P4840020993708587120

/-! ## A181142.P7322277568588035105

`A173843(2*(n+1))`
-/

namespace A181142.P7322277568588035105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173843 (2 * (n + 1))

end

end A181142.P7322277568588035105

/-! ## A181142.P4024798893934358994

`record[A173842(A133265(n))]`
-/

namespace A181142.P4024798893934358994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173842 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181142.P4024798893934358994

/-! ## A181142.P10329715202832004479

`record[A173842(A106609(n)+3)]`
-/

namespace A181142.P10329715202832004479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173842 (A106609 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181142.P10329715202832004479

/-!
# A181143: G.f.: A(x,y) = exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^3*y^k] * x^n/n ) = Sum_{n>=0,k=0..n} T(n,k)*x^n*y^k, as a triangle of coefficients T(n,k) read by rows.

The programs for A181143, there is no canonical definition to state claims against.
-/

/-! ## A181143.P10984305186739618425

`A144556(A028657(n))+A111910(n)`
-/

namespace A181143.P10984305186739618425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144556 (A028657 n).toNat + A111910 n

end

end A181143.P10984305186739618425

/-! ## A181143.P5884285580967100890

`A144556(A088699(n))+A111910(n)`
-/

namespace A181143.P5884285580967100890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144556 (A088699 n).toNat + A111910 n

end

end A181143.P5884285580967100890

/-! ## A181143.P16757209999326570396

`A144556(A101515(n))+A111910(n)`
-/

namespace A181143.P16757209999326570396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144556 (A101515 n).toNat + A111910 n

end

end A181143.P16757209999326570396

/-! ## A181143.P16919686099908022903

`A309785(A155864(n))+A111910(n)`
-/

namespace A181143.P16919686099908022903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A155864 n).toNat + A111910 n

end

end A181143.P16919686099908022903

/-! ## A181143.P5787692790174609190

`A118170(A154986(n))`
-/

namespace A181143.P5787692790174609190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118170 (A154986 n).toNat

end

end A181143.P5787692790174609190

/-!
# A181144: G.f.: A(x,y) = exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^4*y^k] * x^n/n ) = Sum_{n>=0,k=0..n} T(n,k)*x^n*y^k, as a triangle of coefficients T(n,k) read by rows.

The programs for A181144, there is no canonical definition to state claims against.
-/

/-! ## A181144.P748285409129417485

`A001263(n+1)^lcm(2, 2-3*a(and(n, n-1)))` with `a(0)=1`
-/

namespace A181144.P748285409129417485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001263 (n + 1) ^ Int.lcm 2 (2 - 3 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A181144.P748285409129417485

/-! ## A181144.P207990330026796837

`A007425(A176639(n))`
-/

namespace A181144.P207990330026796837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A176639 n).toNat

end

end A181144.P207990330026796837

/-! ## A181144.P9188582627506785269

`A007425(A176643(n))`
-/

namespace A181144.P9188582627506785269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A176643 n).toNat

end

end A181144.P9188582627506785269

/-! ## A181144.P2146230989649131961

`A111245(A137897(n))`
-/

namespace A181144.P2146230989649131961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111245 (A137897 n).toNat

end

end A181144.P2146230989649131961

/-! ## A181144.P10678916587095432086

`A097988(A156581(n))`
-/

namespace A181144.P10678916587095432086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097988 (A156581 n).toNat

end

end A181144.P10678916587095432086

/-!
# A181146: Main diagonal of triangle A181145.

The programs for A181146, there is no canonical definition to state claims against.
-/

/-! ## A181146.P6449076638302045464

`A181145(∑[2*n])`
-/

namespace A181146.P6449076638302045464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181145 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181146.P6449076638302045464

/-! ## A181146.P17069640658313153460

`record[A181145(floor((n/2)²))]`
-/

namespace A181146.P17069640658313153460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181145 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181146.P17069640658313153460

/-! ## A181146.P303445097529177605

`and(-1, A181145(A002378(n)))`
-/

namespace A181146.P303445097529177605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A181145 (A002378 n).toNat)

end

end A181146.P303445097529177605

/-!
# A181148: Number of distinct oval-partitions of the regular 2n-gon {2n}.

The programs for A181148, there is no canonical definition to state claims against.
-/

/-! ## A181148.P5442154512984913446

`A023030(A054179(n))`
-/

namespace A181148.P5442154512984913446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023030 ((A054179 n).toNat + 10)

end

end A181148.P5442154512984913446

/-! ## A181148.P17440696184445502270

`A025424(A089880(n))`
-/

namespace A181148.P17440696184445502270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025424 (A089880 n).toNat

end

end A181148.P17440696184445502270

/-! ## A181148.P3930454528129473936

`A236473(A026632(n))`
-/

namespace A181148.P3930454528129473936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236473 (A026632 n).toNat

end

end A181148.P3930454528129473936

/-! ## A181148.P7295706039330174842

`A266746(A367717(n))`
-/

namespace A181148.P7295706039330174842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266746 (A367717 n).toNat

end

end A181148.P7295706039330174842

/-!
# A181149: a(n) = prime(n)^3 + prime(n)^2 + prime(n).

The programs for A181149, the canonical program `A181149.P13811606423061194343` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181149 has offset 1).

The definition of A181149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)^3+A000040(n+1)²+A000040(n+1)` (program `A181149.P13811606423061194343`, by `A181149.P13811606423061194343.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181149.P3654376808975386202

`A135178(n+1)+A000040(n+1)`
-/

namespace A181149.P3654376808975386202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) + A000040 (n + 1)

end

end A181149.P3654376808975386202

namespace A181149

/-- `A135178(n+1)+A000040(n+1)` -/
def P3654376808975386202.Spec : Prop :=
  ∀ n, P3654376808975386202.a n = A181149 (n + 1)

theorem P3654376808975386202.correct : P3654376808975386202.Spec := by
  intro n
  simp only [A181149, Nat.add_sub_cancel, A181149.P3654376808975386202.a, A181149.P13811606423061194343.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A135178, A135178.P2117100385622879640.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181149

/-! ## A181149.P13811606423061194343

`A000040(n+1)^3+A000040(n+1)²+A000040(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A181149

/-- `A000040(n+1)^3+A000040(n+1)²+A000040(n+1)` -/
def P13811606423061194343.Spec : Prop :=
  ∀ n, P13811606423061194343.a n = A181149 (n + 1)

theorem P13811606423061194343.correct : P13811606423061194343.Spec := by
  intro n
  simp only [A181149, Nat.add_sub_cancel]

end A181149

/-! ## A181149.P17652116581122603535

`A131991(n+1)-1`
-/

namespace A181149.P17652116581122603535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) - 1

end

end A181149.P17652116581122603535

namespace A181149

/-- `A131991(n+1)-1` -/
def P17652116581122603535.Spec : Prop :=
  ∀ n, P17652116581122603535.a n = A181149 (n + 1)

theorem P17652116581122603535.correct : P17652116581122603535.Spec := by
  intro n
  simp only [A181149, Nat.add_sub_cancel, A181149.P17652116581122603535.a, A181149.P13811606423061194343.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131991, A131991.P603388502829985881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181149

/-! ## A181149.P3245564297895664932

`A036690(n+1)+A030078(n+1)`
-/

namespace A181149.P3245564297895664932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) + A030078 (n + 1)

end

end A181149.P3245564297895664932

namespace A181149

/-- `A036690(n+1)+A030078(n+1)` -/
def P3245564297895664932.Spec : Prop :=
  ∀ n, P3245564297895664932.a n = A181149 (n + 1)

end A181149

/-! ## A181149.P14773050320386993955

`A083558(n+1)+A079704(n+1)`
-/

namespace A181149.P14773050320386993955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083558 (n + 1) + A079704 (n + 1)

end

end A181149.P14773050320386993955

namespace A181149

/-- `A083558(n+1)+A079704(n+1)` -/
def P14773050320386993955.Spec : Prop :=
  ∀ n, P14773050320386993955.a n = A181149 (n + 1)

end A181149

/-! ## A181149.P3292841634791659040

`A181151(n+1)+A006093(n+1)`
-/

namespace A181149.P3292841634791659040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181151 (n + 1) + A006093 (n + 1)

end

end A181149.P3292841634791659040

namespace A181149

/-- `A181151(n+1)+A006093(n+1)` -/
def P3292841634791659040.Spec : Prop :=
  ∀ n, P3292841634791659040.a n = A181149 (n + 1)

theorem P3292841634791659040.correct : P3292841634791659040.Spec := by
  intro n
  simp only [A181149, Nat.add_sub_cancel, A181149.P3292841634791659040.a, A181149.P13811606423061194343.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A181151, A181151.P10229429826199384590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181149

/-! ## A181149.P11238721340396344998

`A181150(n+1)+A084920(n+1)`
-/

namespace A181149.P11238721340396344998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181150 (n + 1) + A084920 (n + 1)

end

end A181149.P11238721340396344998

namespace A181149

/-- `A181150(n+1)+A084920(n+1)` -/
def P11238721340396344998.Spec : Prop :=
  ∀ n, P11238721340396344998.a n = A181149 (n + 1)

theorem P11238721340396344998.correct : P11238721340396344998.Spec := by
  intro n
  simp only [A181149, Nat.add_sub_cancel, A181149.P11238721340396344998.a, A181149.P13811606423061194343.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A084920, A084920.P13392903182497119137.a, A181150, A181150.P17848570442886437115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181149

/-! ## A181149.P3321946530465880502

`A178398(n+1)-A001248(n+1)`
-/

namespace A181149.P3321946530465880502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178398 (n + 1) - A001248 (n + 1)

end

end A181149.P3321946530465880502

namespace A181149

/-- `A178398(n+1)-A001248(n+1)` -/
def P3321946530465880502.Spec : Prop :=
  ∀ n, P3321946530465880502.a n = A181149 (n + 1)

end A181149

/-! ## A181149.P10675585029315854421

`A135182(n+1)-A138404(n+1)`
-/

namespace A181149.P10675585029315854421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135182 (n + 1) - A138404 (n + 1)

end

end A181149.P10675585029315854421

namespace A181149

/-- `A135182(n+1)-A138404(n+1)` -/
def P10675585029315854421.Spec : Prop :=
  ∀ n, P10675585029315854421.a n = A181149 (n + 1)

theorem P10675585029315854421.correct : P10675585029315854421.Spec := by
  intro n
  simp only [A181149, Nat.add_sub_cancel, A181149.P10675585029315854421.a, A181149.P13811606423061194343.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A135182, A135182.P14277112270970235389.a, A138404, A138404.P10090745085082303621.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, A050997, A050997.P5231147570234137425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181149

/-! ## A181149.P16410742585855624227

`A000040(n+1)*A060800(n+1)`
-/

namespace A181149.P16410742585855624227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A060800 (n + 1)

end

end A181149.P16410742585855624227

namespace A181149

/-- `A000040(n+1)*A060800(n+1)` -/
def P16410742585855624227.Spec : Prop :=
  ∀ n, P16410742585855624227.a n = A181149 (n + 1)

end A181149

/-! ## A181149.P10777437311215049335

`A138431(n+1)/A008837(n+1)`
-/

namespace A181149.P10777437311215049335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138431 (n + 1) : ℚ) / (A008837 (n + 1) : ℚ)

end

end A181149.P10777437311215049335

namespace A181149

/-- `A138431(n+1)/A008837(n+1)` -/
def P10777437311215049335.Spec : Prop :=
  ∀ n, P10777437311215049335.a n = (A181149 (n + 1) : ℚ)

end A181149

/-! ## A181149.P5366720470558974716

`A138405(n+1)/A036689(n+1)`
-/

namespace A181149.P5366720470558974716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138405 (n + 1) : ℚ) / (A036689 (n + 1) : ℚ)

end

end A181149.P5366720470558974716

namespace A181149

/-- `A138405(n+1)/A036689(n+1)` -/
def P5366720470558974716.Spec : Prop :=
  ∀ n, P5366720470558974716.a n = (A181149 (n + 1) : ℚ)

end A181149

/-! ## A181149.P16491839046876120452

`A138410(n+1)/A135177(n+1)`
-/

namespace A181149.P16491839046876120452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138410 (n + 1) : ℚ) / (A135177 (n + 1) : ℚ)

end

end A181149.P16491839046876120452

namespace A181149

/-- `A138410(n+1)/A135177(n+1)` -/
def P16491839046876120452.Spec : Prop :=
  ∀ n, P16491839046876120452.a n = (A181149 (n + 1) : ℚ)

end A181149

/-! ## A181149.P8372239724424256067

`A138452(n+1)/A138416(n+1)`
-/

namespace A181149.P8372239724424256067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138452 (n + 1) : ℚ) / (A138416 (n + 1) : ℚ)

end

end A181149.P8372239724424256067

namespace A181149

/-- `A138452(n+1)/A138416(n+1)` -/
def P8372239724424256067.Spec : Prop :=
  ∀ n, P8372239724424256067.a n = (A181149 (n + 1) : ℚ)

end A181149

/-! ## A181149.P14896217970446957806

`A135182(n+1)%A131991(n+1)`
-/

namespace A181149.P14896217970446957806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135182 (n + 1)) (A131991 (n + 1))

end

end A181149.P14896217970446957806

namespace A181149

/-- `A135182(n+1)%A131991(n+1)` -/
def P14896217970446957806.Spec : Prop :=
  ∀ n, P14896217970446957806.a n = A181149 (n + 1)

end A181149

/-! ## A181149.P14099985626495525477

`A178398(n+1)-A000040(n+1)²`
-/

namespace A181149.P14099985626495525477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178398 (n + 1) - A000040 (n + 1) ^ 2

end

end A181149.P14099985626495525477

namespace A181149

/-- `A178398(n+1)-A000040(n+1)²` -/
def P14099985626495525477.Spec : Prop :=
  ∀ n, P14099985626495525477.a n = A181149 (n + 1)

end A181149

/-! ## A181149.P6712364940699423767

`A006093(n+1)+A135178(n+1)+1`
-/

namespace A181149.P6712364940699423767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A135178 (n + 1) + 1)

end

end A181149.P6712364940699423767

namespace A181149

/-- `A006093(n+1)+A135178(n+1)+1` -/
def P6712364940699423767.Spec : Prop :=
  ∀ n, P6712364940699423767.a n = A181149 (n + 1)

theorem P6712364940699423767.correct : P6712364940699423767.Spec := by
  intro n
  simp only [A181149, Nat.add_sub_cancel, A181149.P6712364940699423767.a, A181149.P13811606423061194343.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A135178, A135178.P2117100385622879640.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181149

/-! ## A181149.P13536715215777249668

`A060800(n+1)+A153481(n+1)+1`
-/

namespace A181149.P13536715215777249668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) + (A153481 (n + 1) + 1)

end

end A181149.P13536715215777249668

namespace A181149

/-- `A060800(n+1)+A153481(n+1)+1` -/
def P13536715215777249668.Spec : Prop :=
  ∀ n, P13536715215777249668.a n = A181149 (n + 1)

end A181149

/-! ## A181149.P12536204475320712832

`A030078(n+1)+A060800(n+1)-1`
-/

namespace A181149.P12536204475320712832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) + (A060800 (n + 1) - 1)

end

end A181149.P12536204475320712832

namespace A181149

/-- `A030078(n+1)+A060800(n+1)-1` -/
def P12536204475320712832.Spec : Prop :=
  ∀ n, P12536204475320712832.a n = A181149 (n + 1)

end A181149

/-! ## A181149.P673670412620529243

`A008864(n+1)+A135178(n+1)-1`
-/

namespace A181149.P673670412620529243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A135178 (n + 1) - 1)

end

end A181149.P673670412620529243

namespace A181149

/-- `A008864(n+1)+A135178(n+1)-1` -/
def P673670412620529243.Spec : Prop :=
  ∀ n, P673670412620529243.a n = A181149 (n + 1)

theorem P673670412620529243.correct : P673670412620529243.Spec := by
  intro n
  simp only [A181149, Nat.add_sub_cancel, A181149.P673670412620529243.a, A181149.P13811606423061194343.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A135178, A135178.P2117100385622879640.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181149

/-!
# A181150: a(n) = prime(n)^3 + prime(n) + 1.

The programs for A181150, the canonical program `A181150.P17848570442886437115` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181150 has offset 1).

The definition of A181150 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)^3+A000040(n+1)+1` (program `A181150.P17848570442886437115`, by `A181150.P17848570442886437115.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181150.P17848570442886437115

`A000040(n+1)^3+A000040(n+1)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A181150

/-- `A000040(n+1)^3+A000040(n+1)+1` -/
def P17848570442886437115.Spec : Prop :=
  ∀ n, P17848570442886437115.a n = A181150 (n + 1)

theorem P17848570442886437115.correct : P17848570442886437115.Spec := by
  intro n
  simp only [A181150, Nat.add_sub_cancel]

end A181150

/-! ## A181150.P17896701022063207217

`2*A066886(n+1)+1`
-/

namespace A181150.P17896701022063207217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066886 (n + 1) + 1

end

end A181150.P17896701022063207217

namespace A181150

/-- `2*A066886(n+1)+1` -/
def P17896701022063207217.Spec : Prop :=
  ∀ n, P17896701022063207217.a n = A181150 (n + 1)

end A181150

/-! ## A181150.P14351392698592604108

`A030078(n+1)+A008864(n+1)`
-/

namespace A181150.P14351392698592604108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) + A008864 (n + 1)

end

end A181150.P14351392698592604108

namespace A181150

/-- `A030078(n+1)+A008864(n+1)` -/
def P14351392698592604108.Spec : Prop :=
  ∀ n, P14351392698592604108.a n = A181150 (n + 1)

theorem P14351392698592604108.correct : P14351392698592604108.Spec := by
  intro n
  simp only [A181150, Nat.add_sub_cancel, A181150.P14351392698592604108.a, A181150.P17848570442886437115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181150

/-! ## A181150.P2630491505503530653

`A083558(n+1)+A066872(n+1)`
-/

namespace A181150.P2630491505503530653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083558 (n + 1) + A066872 (n + 1)

end

end A181150.P2630491505503530653

namespace A181150

/-- `A083558(n+1)+A066872(n+1)` -/
def P2630491505503530653.Spec : Prop :=
  ∀ n, P2630491505503530653.a n = A181150 (n + 1)

end A181150

/-! ## A181150.P2950602733417054367

`A135177(n+1)+A060800(n+1)`
-/

namespace A181150.P2950602733417054367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135177 (n + 1) + A060800 (n + 1)

end

end A181150.P2950602733417054367

namespace A181150

/-- `A135177(n+1)+A060800(n+1)` -/
def P2950602733417054367.Spec : Prop :=
  ∀ n, P2950602733417054367.a n = A181150 (n + 1)

end A181150

/-! ## A181150.P17649387962382897934

`A127917(n+1)+A072055(n+1)`
-/

namespace A181150.P17649387962382897934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127917 (n + 1) + A072055 (n + 1)

end

end A181150.P17649387962382897934

namespace A181150

/-- `A127917(n+1)+A072055(n+1)` -/
def P17649387962382897934.Spec : Prop :=
  ∀ n, P17649387962382897934.a n = A181150 (n + 1)

theorem P17649387962382897934.correct : P17649387962382897934.Spec := by
  intro n
  simp only [A181150, Nat.add_sub_cancel, A181150.P17649387962382897934.a, A181150.P17848570442886437115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, A127917, A127917.P3075272387178552324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181150

/-! ## A181150.P7539802286756545547

`A153481(n+1)+A113935(n+1)`
-/

namespace A181150.P7539802286756545547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153481 (n + 1) + A113935 (n + 1)

end

end A181150.P7539802286756545547

namespace A181150

/-- `A153481(n+1)+A113935(n+1)` -/
def P7539802286756545547.Spec : Prop :=
  ∀ n, P7539802286756545547.a n = A181150 (n + 1)

theorem P7539802286756545547.correct : P7539802286756545547.Spec := by
  intro n
  simp only [A181150, Nat.add_sub_cancel, A181150.P7539802286756545547.a, A181150.P17848570442886437115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, A153481, A153481.P8415490273972627534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181150

/-! ## A181150.P8863568151714921888

`A131991(n+1)-A001248(n+1)`
-/

namespace A181150.P8863568151714921888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) - A001248 (n + 1)

end

end A181150.P8863568151714921888

namespace A181150

/-- `A131991(n+1)-A001248(n+1)` -/
def P8863568151714921888.Spec : Prop :=
  ∀ n, P8863568151714921888.a n = A181150 (n + 1)

theorem P8863568151714921888.correct : P8863568151714921888.Spec := by
  intro n
  simp only [A181150, Nat.add_sub_cancel, A181150.P8863568151714921888.a, A181150.P17848570442886437115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A131991, A131991.P603388502829985881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181150

/-! ## A181150.P7985886005738867527

`A181151(n+1)-A036689(n+1)`
-/

namespace A181150.P7985886005738867527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181151 (n + 1) - A036689 (n + 1)

end

end A181150.P7985886005738867527

namespace A181150

/-- `A181151(n+1)-A036689(n+1)` -/
def P7985886005738867527.Spec : Prop :=
  ∀ n, P7985886005738867527.a n = A181150 (n + 1)

end A181150

/-! ## A181150.P11998221984613946782

`A181149(n+1)-A084920(n+1)`
-/

namespace A181150.P11998221984613946782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181149 (n + 1) - A084920 (n + 1)

end

end A181150.P11998221984613946782

namespace A181150

/-- `A181149(n+1)-A084920(n+1)` -/
def P11998221984613946782.Spec : Prop :=
  ∀ n, P11998221984613946782.a n = A181150 (n + 1)

theorem P11998221984613946782.correct : P11998221984613946782.Spec := by
  intro n
  simp only [A181150, Nat.add_sub_cancel, A181150.P11998221984613946782.a, A181150.P17848570442886437115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A084920, A084920.P13392903182497119137.a, A181149, A181149.P13811606423061194343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181150

/-! ## A181150.P16300654041884980886

`A178398(n+1)-A179262(n+1)`
-/

namespace A181150.P16300654041884980886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178398 (n + 1) - A179262 (n + 1)

end

end A181150.P16300654041884980886

namespace A181150

/-- `A178398(n+1)-A179262(n+1)` -/
def P16300654041884980886.Spec : Prop :=
  ∀ n, P16300654041884980886.a n = A181150 (n + 1)

end A181150

/-! ## A181150.P14480869923911475564

`A135178(n+1)-A306190(n+1)`
-/

namespace A181150.P14480869923911475564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) - A306190 (n + 1)

end

end A181150.P14480869923911475564

namespace A181150

/-- `A135178(n+1)-A306190(n+1)` -/
def P14480869923911475564.Spec : Prop :=
  ∀ n, P14480869923911475564.a n = A181150 (n + 1)

end A181150

/-! ## A181150.P16919120756620514890

`A135182(n+1)/A001248(n+1)`
-/

namespace A181150.P16919120756620514890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135182 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A181150.P16919120756620514890

namespace A181150

/-- `A135182(n+1)/A001248(n+1)` -/
def P16919120756620514890.Spec : Prop :=
  ∀ n, P16919120756620514890.a n = (A181150 (n + 1) : ℚ)

end A181150

/-! ## A181150.P8178641034235198260

`A131993(n+1)%A181151(n+1)`
-/

namespace A181150.P8178641034235198260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131993 (n + 1)) (A181151 (n + 1))

end

end A181150.P8178641034235198260

namespace A181150

/-- `A131993(n+1)%A181151(n+1)` -/
def P8178641034235198260.Spec : Prop :=
  ∀ n, P8178641034235198260.a n = A181150 (n + 1)

end A181150

/-! ## A181150.P5212749355047432129

`A138406(n+1)%A181151(n+1)`
-/

namespace A181150.P5212749355047432129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138406 (n + 1)) (A181151 (n + 1))

end

end A181150.P5212749355047432129

namespace A181150

/-- `A138406(n+1)%A181151(n+1)` -/
def P5212749355047432129.Spec : Prop :=
  ∀ n, P5212749355047432129.a n = A181150 (n + 1)

end A181150

/-! ## A181150.P7329480453905079771

`A131991(n+1)-Δ[A007504(n)]²`
-/

namespace A181150.P7329480453905079771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) - (f1 (n + 1) - f1 n) ^ 2

end

end A181150.P7329480453905079771

namespace A181150

/-- `A131991(n+1)-Δ[A007504(n)]²` -/
def P7329480453905079771.Spec : Prop :=
  ∀ n, P7329480453905079771.a n = A181150 (n + 1)

end A181150

/-! ## A181150.P16053898786204305840

`A131991(n+1)-A000040(n+1)²`
-/

namespace A181150.P16053898786204305840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) - A000040 (n + 1) ^ 2

end

end A181150.P16053898786204305840

namespace A181150

/-- `A131991(n+1)-A000040(n+1)²` -/
def P16053898786204305840.Spec : Prop :=
  ∀ n, P16053898786204305840.a n = A181150 (n + 1)

theorem P16053898786204305840.correct : P16053898786204305840.Spec := by
  intro n
  simp only [A181150, Nat.add_sub_cancel, A181150.P16053898786204305840.a, A181150.P17848570442886437115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131991, A131991.P603388502829985881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181150

/-! ## A181150.P13422642481355601951

`A135182(n+1)/A000040(n+1)²`
-/

namespace A181150.P13422642481355601951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135182 (n + 1) : ℚ) / (A000040 (n + 1) ^ 2 : ℚ)

end

end A181150.P13422642481355601951

namespace A181150

/-- `A135182(n+1)/A000040(n+1)²` -/
def P13422642481355601951.Spec : Prop :=
  ∀ n, P13422642481355601951.a n = (A181150 (n + 1) : ℚ)

end A181150

/-! ## A181150.P12546059956096206217

`A000040(n+1)+A030078(n+1)+1`
-/

namespace A181150.P12546059956096206217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A030078 (n + 1) + 1)

end

end A181150.P12546059956096206217

namespace A181150

/-- `A000040(n+1)+A030078(n+1)+1` -/
def P12546059956096206217.Spec : Prop :=
  ∀ n, P12546059956096206217.a n = A181150 (n + 1)

theorem P12546059956096206217.correct : P12546059956096206217.Spec := by
  intro n
  simp only [A181150, Nat.add_sub_cancel, A181150.P12546059956096206217.a, A181150.P17848570442886437115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181150

/-! ## A181150.P15392604076607922224

`A036690(n+1)+A135177(n+1)+1`
-/

namespace A181150.P15392604076607922224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) + (A135177 (n + 1) + 1)

end

end A181150.P15392604076607922224

namespace A181150

/-- `A036690(n+1)+A135177(n+1)+1` -/
def P15392604076607922224.Spec : Prop :=
  ∀ n, P15392604076607922224.a n = A181150 (n + 1)

end A181150

/-! ## A181150.P17730689088919376425

`record[∑{p}[n+2, #^3+n+3]]`
-/

namespace A181150.P17730689088919376425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (p ^ 3 + (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181150.P17730689088919376425

namespace A181150

/-- `record[∑{p}[n+2, #^3+n+3]]` -/
def P17730689088919376425.Spec : Prop :=
  ∀ n, (P17730689088919376425.a n : ℤ) = A181150 (n + 1)

end A181150

/-!
# A181151: a(n) = prime(n)^3 + prime(n)^2 + 1.

The programs for A181151, the canonical program `A181151.P10229429826199384590` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181151 has offset 1).

The definition of A181151 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)^3+A000040(n+1)²+1` (program `A181151.P10229429826199384590`, by `A181151.P10229429826199384590.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181151.P18295787221933732531

`A135178(n+1)+1`
-/

namespace A181151.P18295787221933732531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) + 1

end

end A181151.P18295787221933732531

namespace A181151

/-- `A135178(n+1)+1` -/
def P18295787221933732531.Spec : Prop :=
  ∀ n, P18295787221933732531.a n = A181151 (n + 1)

theorem P18295787221933732531.correct : P18295787221933732531.Spec := by
  intro n
  simp only [A181151, Nat.add_sub_cancel, A181151.P18295787221933732531.a, A181151.P10229429826199384590.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A135178, A135178.P2117100385622879640.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181151

/-! ## A181151.P10229429826199384590

`A000040(n+1)^3+A000040(n+1)²+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A181151

/-- `A000040(n+1)^3+A000040(n+1)²+1` -/
def P10229429826199384590.Spec : Prop :=
  ∀ n, P10229429826199384590.a n = A181151 (n + 1)

theorem P10229429826199384590.correct : P10229429826199384590.Spec := by
  intro n
  simp only [A181151, Nat.add_sub_cancel]

end A181151

/-! ## A181151.P2494928000643047343

`A131991(n+1)-Δ[A007504(n)]`
-/

namespace A181151.P2494928000643047343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) - (f1 (n + 1) - f1 n)

end

end A181151.P2494928000643047343

namespace A181151

/-- `A131991(n+1)-Δ[A007504(n)]` -/
def P2494928000643047343.Spec : Prop :=
  ∀ n, P2494928000643047343.a n = A181151 (n + 1)

end A181151

/-! ## A181151.P9203046967813655335

`A066872(n+1)+A030078(n+1)`
-/

namespace A181151.P9203046967813655335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + A030078 (n + 1)

end

end A181151.P9203046967813655335

namespace A181151

/-- `A066872(n+1)+A030078(n+1)` -/
def P9203046967813655335.Spec : Prop :=
  ∀ n, P9203046967813655335.a n = A181151 (n + 1)

theorem P9203046967813655335.correct : P9203046967813655335.Spec := by
  intro n
  simp only [A181151, Nat.add_sub_cancel, A181151.P9203046967813655335.a, A181151.P10229429826199384590.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A066872, A066872.P16166098773502812344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181151

/-! ## A181151.P14892278244811365838

`A127917(n+1)+A060800(n+1)`
-/

namespace A181151.P14892278244811365838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127917 (n + 1) + A060800 (n + 1)

end

end A181151.P14892278244811365838

namespace A181151

/-- `A127917(n+1)+A060800(n+1)` -/
def P14892278244811365838.Spec : Prop :=
  ∀ n, P14892278244811365838.a n = A181151 (n + 1)

end A181151

/-! ## A181151.P4061918017975538736

`A181150(n+1)+A036689(n+1)`
-/

namespace A181151.P4061918017975538736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181150 (n + 1) + A036689 (n + 1)

end

end A181151.P4061918017975538736

namespace A181151

/-- `A181150(n+1)+A036689(n+1)` -/
def P4061918017975538736.Spec : Prop :=
  ∀ n, P4061918017975538736.a n = A181151 (n + 1)

end A181151

/-! ## A181151.P18118375135404393196

`A131991(n+1)-A000040(n+1)`
-/

namespace A181151.P18118375135404393196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) - A000040 (n + 1)

end

end A181151.P18118375135404393196

namespace A181151

/-- `A131991(n+1)-A000040(n+1)` -/
def P18118375135404393196.Spec : Prop :=
  ∀ n, P18118375135404393196.a n = A181151 (n + 1)

theorem P18118375135404393196.correct : P18118375135404393196.Spec := by
  intro n
  simp only [A181151, Nat.add_sub_cancel, A181151.P18118375135404393196.a, A181151.P10229429826199384590.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131991, A131991.P603388502829985881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181151

/-! ## A181151.P4768826972376909881

`A181149(n+1)-A006093(n+1)`
-/

namespace A181151.P4768826972376909881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181149 (n + 1) - A006093 (n + 1)

end

end A181151.P4768826972376909881

namespace A181151

/-- `A181149(n+1)-A006093(n+1)` -/
def P4768826972376909881.Spec : Prop :=
  ∀ n, P4768826972376909881.a n = A181151 (n + 1)

theorem P4768826972376909881.correct : P4768826972376909881.Spec := by
  intro n
  simp only [A181151, Nat.add_sub_cancel, A181151.P4768826972376909881.a, A181151.P10229429826199384590.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A181149, A181149.P13811606423061194343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181151

/-! ## A181151.P14567551593954856894

`A135182(n+1)%A131992(n+1)`
-/

namespace A181151.P14567551593954856894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135182 (n + 1)) (A131992 (n + 1))

end

end A181151.P14567551593954856894

namespace A181151

/-- `A135182(n+1)%A131992(n+1)` -/
def P14567551593954856894.Spec : Prop :=
  ∀ n, P14567551593954856894.a n = A181151 (n + 1)

end A181151

/-! ## A181151.P7583155099683471106

`A001248(n+1)+A030078(n+1)+1`
-/

namespace A181151.P7583155099683471106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A030078 (n + 1) + 1)

end

end A181151.P7583155099683471106

namespace A181151

/-- `A001248(n+1)+A030078(n+1)+1` -/
def P7583155099683471106.Spec : Prop :=
  ∀ n, P7583155099683471106.a n = A181151 (n + 1)

theorem P7583155099683471106.correct : P7583155099683471106.Spec := by
  intro n
  simp only [A181151, Nat.add_sub_cancel, A181151.P7583155099683471106.a, A181151.P10229429826199384590.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181151

/-! ## A181151.P12323693424084751444

`A036690(n+1)+A127917(n+1)+1`
-/

namespace A181151.P12323693424084751444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) + (A127917 (n + 1) + 1)

end

end A181151.P12323693424084751444

namespace A181151

/-- `A036690(n+1)+A127917(n+1)+1` -/
def P12323693424084751444.Spec : Prop :=
  ∀ n, P12323693424084751444.a n = A181151 (n + 1)

end A181151

/-! ## A181151.P4535358312560520624

`A083558(n+1)+A117961(n+1)+1`
-/

namespace A181151.P4535358312560520624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083558 (n + 1) + (A117961 (n + 1) + 1)

end

end A181151.P4535358312560520624

namespace A181151

/-- `A083558(n+1)+A117961(n+1)+1` -/
def P4535358312560520624.Spec : Prop :=
  ∀ n, P4535358312560520624.a n = A181151 (n + 1)

end A181151

/-! ## A181151.P1592772768663650995

`A079704(n+1)+A135177(n+1)+1`
-/

namespace A181151.P1592772768663650995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) + (A135177 (n + 1) + 1)

end

end A181151.P1592772768663650995

namespace A181151

/-- `A079704(n+1)+A135177(n+1)+1` -/
def P1592772768663650995.Spec : Prop :=
  ∀ n, P1592772768663650995.a n = A181151 (n + 1)

theorem P1592772768663650995.correct : P1592772768663650995.Spec := by
  intro n
  simp only [A181151, Nat.add_sub_cancel, A181151.P1592772768663650995.a, A181151.P10229429826199384590.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A079704, A079704.P2518524558801344655.a, A135177, A135177.P13258641397500885273.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181151

/-! ## A181151.P10344412945549139127

`A061725(n+1)+A153481(n+1)+1`
-/

namespace A181151.P10344412945549139127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) + (A153481 (n + 1) + 1)

end

end A181151.P10344412945549139127

namespace A181151

/-- `A061725(n+1)+A153481(n+1)+1` -/
def P10344412945549139127.Spec : Prop :=
  ∀ n, P10344412945549139127.a n = A181151 (n + 1)

theorem P10344412945549139127.correct : P10344412945549139127.Spec := by
  intro n
  simp only [A181151, Nat.add_sub_cancel, A181151.P10344412945549139127.a, A181151.P10229429826199384590.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061725, A061725.P7248628641150990420.a, A153481, A153481.P8415490273972627534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181151

/-! ## A181151.P8798923412752216368

`A138416(n+1)+A179546(n+1)+1`
-/

namespace A181151.P8798923412752216368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138416 (n + 1) + (A179546 (n + 1) + 1)

end

end A181151.P8798923412752216368

namespace A181151

/-- `A138416(n+1)+A179546(n+1)+1` -/
def P8798923412752216368.Spec : Prop :=
  ∀ n, P8798923412752216368.a n = A181151 (n + 1)

end A181151

/-! ## A181151.P10659721469181848763

`A181150(n+1)+A306190(n+1)+1`
-/

namespace A181151.P10659721469181848763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181150 (n + 1) + (A306190 (n + 1) + 1)

end

end A181151.P10659721469181848763

namespace A181151

/-- `A181150(n+1)+A306190(n+1)+1` -/
def P10659721469181848763.Spec : Prop :=
  ∀ n, P10659721469181848763.a n = A181151 (n + 1)

end A181151

/-! ## A181151.P3091454549639952291

`A030078(n+1)+A084920(n+1)+2`
-/

namespace A181151.P3091454549639952291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) + (A084920 (n + 1) + 2)

end

end A181151.P3091454549639952291

namespace A181151

/-- `A030078(n+1)+A084920(n+1)+2` -/
def P3091454549639952291.Spec : Prop :=
  ∀ n, P3091454549639952291.a n = A181151 (n + 1)

theorem P3091454549639952291.correct : P3091454549639952291.Spec := by
  intro n
  simp only [A181151, Nat.add_sub_cancel, A181151.P3091454549639952291.a, A181151.P10229429826199384590.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A084920, A084920.P13392903182497119137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181151

/-! ## A181151.P3287630281626656789

`A131991(n+1)-(A006093(n+1)+1)`
-/

namespace A181151.P3287630281626656789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) - (A006093 (n + 1) + 1)

end

end A181151.P3287630281626656789

namespace A181151

/-- `A131991(n+1)-(A006093(n+1)+1)` -/
def P3287630281626656789.Spec : Prop :=
  ∀ n, P3287630281626656789.a n = A181151 (n + 1)

theorem P3287630281626656789.correct : P3287630281626656789.Spec := by
  intro n
  simp only [A181151, Nat.add_sub_cancel, A181151.P3287630281626656789.a, A181151.P10229429826199384590.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A131991, A131991.P603388502829985881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181151

/-! ## A181151.P16999753515137818063

`A131991(n+1)+1-A008864(n+1)`
-/

namespace A181151.P16999753515137818063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) + (1 - A008864 (n + 1))

end

end A181151.P16999753515137818063

namespace A181151

/-- `A131991(n+1)+1-A008864(n+1)` -/
def P16999753515137818063.Spec : Prop :=
  ∀ n, P16999753515137818063.a n = A181151 (n + 1)

theorem P16999753515137818063.correct : P16999753515137818063.Spec := by
  intro n
  simp only [A181151, Nat.add_sub_cancel, A181151.P16999753515137818063.a, A181151.P10229429826199384590.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A131991, A131991.P603388502829985881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181151

/-! ## A181151.P2029457276402441994

`A181149(n+1)+1-A000040(n+1)`
-/

namespace A181151.P2029457276402441994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181149 (n + 1) + (1 - A000040 (n + 1))

end

end A181151.P2029457276402441994

namespace A181151

/-- `A181149(n+1)+1-A000040(n+1)` -/
def P2029457276402441994.Spec : Prop :=
  ∀ n, P2029457276402441994.a n = A181151 (n + 1)

theorem P2029457276402441994.correct : P2029457276402441994.Spec := by
  intro n
  simp only [A181151, Nat.add_sub_cancel, A181151.P2029457276402441994.a, A181151.P10229429826199384590.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A181149, A181149.P13811606423061194343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181151

/-!
# A181153: Number of connected 7-regular simple graphs on 2n vertices with girth at least 4.

The programs for A181153, there is no canonical definition to state claims against.
-/

/-! ## A181153.P16408832911265728496

`∏{e}[2^n, A184974(#)]`
-/

namespace A181153.P16408832911265728496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A184974 (Nat.factorization (f1 n) p)

end

end A181153.P16408832911265728496

/-! ## A181153.P3170708648895939841

`floor(A184974(n)+acot(n))`
-/

namespace A181153.P3170708648895939841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184974 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A181153.P3170708648895939841

/-! ## A181153.P10226406566302483135

`A184974(n-a(2%n))` with `a(0)=1`
-/

namespace A181153.P10226406566302483135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184974 ((n : ℤ) - a (2 % n)).toNat

end

end A181153.P10226406566302483135

/-! ## A181153.P15337233168970872076

`A184974(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A181153.P15337233168970872076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184974 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A181153.P15337233168970872076

/-! ## A181153.P10902923587306772889

`A184974(gcd(n, a(floor(n/2))))` with `a(0)=1`
-/

namespace A181153.P10902923587306772889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184974 (Int.gcd (n : ℤ) (a ⌊(n : ℚ) / 2⌋.toNat))

end

end A181153.P10902923587306772889

/-!
# A181155: Odious numbers (A000069) plus one; complement of A026147.

The programs for A181155, the canonical program `A181155.P6532656100866929133` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181155 has offset 1).

The definition of A181155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181155.P6532656100866929133

`A000069(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A181155

/-- `A000069(n+1)+1` -/
def P6532656100866929133.Spec : Prop :=
  ∀ n, P6532656100866929133.a n = A181155 (n + 1)

theorem P6532656100866929133.correct : P6532656100866929133.Spec := by
  intro n
  simp only [A181155, Nat.add_sub_cancel]

end A181155

/-! ## A181155.P6400202994793812533

`2*(n+1)-A000120(n)%2`
-/

namespace A181155.P6400202994793812533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - Int.tmod (A000120 n) 2

end

end A181155.P6400202994793812533

namespace A181155

/-- `2*(n+1)-A000120(n)%2` -/
def P6400202994793812533.Spec : Prop :=
  ∀ n, P6400202994793812533.a n = A181155 (n + 1)

theorem P6400202994793812533.correct : P6400202994793812533.Spec := by
  intro n
  simp only [A181155, Nat.add_sub_cancel, A181155.P6400202994793812533.a, A181155.P6532656100866929133.a, A000069, A000069.P3917626109476666468.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181155

/-! ## A181155.P9052076243192639848

`comp[xor(n, 2*n)]+1`
-/

namespace A181155.P9052076243192639848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A181155.P9052076243192639848

namespace A181155

/-- `comp[xor(n, 2*n)]+1` -/
def P9052076243192639848.Spec : Prop :=
  ∀ n, (P9052076243192639848.a n : ℤ) = A181155 (n + 1)

end A181155

/-! ## A181155.P11710927086227163376

`char[xor(n, 2*n)]+2*n+1`
-/

namespace A181155.P11710927086227163376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (2 * n + 1)

end

end A181155.P11710927086227163376

namespace A181155

/-- `char[xor(n, 2*n)]+2*n+1` -/
def P11710927086227163376.Spec : Prop :=
  ∀ n, (P11710927086227163376.a n : ℤ) = A181155 (n + 1)

end A181155

/-! ## A181155.P11537454743220114726

`and(1, a(and(n, n-1)))+2*n+1` with `a(0)=2`
-/

namespace A181155.P11537454743220114726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.land 1 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) + (2 * n + 1)

end

end A181155.P11537454743220114726

namespace A181155

/-- `and(1, a(and(n, n-1)))+2*n+1` -/
def P11537454743220114726.Spec : Prop :=
  ∀ n, (P11537454743220114726.a n : ℤ) = A181155 (n + 1)

end A181155

/-! ## A181155.P6492748549127416698

`∑[3-A317189(n)]`
-/

namespace A181155.P6492748549127416698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A317189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181155.P6492748549127416698

namespace A181155

/-- `∑[3-A317189(n)]` -/
def P6492748549127416698.Spec : Prop :=
  ∀ n, P6492748549127416698.a n = A181155 (n + 1)

end A181155

/-! ## A181155.P1708460809419991337

`1+A000069(n+1)`
-/

namespace A181155.P1708460809419991337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000069 (n + 1)

end

end A181155.P1708460809419991337

namespace A181155

/-- `1+A000069(n+1)` -/
def P1708460809419991337.Spec : Prop :=
  ∀ n, P1708460809419991337.a n = A181155 (n + 1)

theorem P1708460809419991337.correct : P1708460809419991337.Spec := by
  intro n
  simp only [A181155, Nat.add_sub_cancel, A181155.P1708460809419991337.a, A181155.P6532656100866929133.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A181155

/-! ## A181155.P2084092500287765262

`A356133(n+1)-n`
-/

namespace A181155.P2084092500287765262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (n + 1) - (n : ℤ)

end

end A181155.P2084092500287765262

namespace A181155

/-- `A356133(n+1)-n` -/
def P2084092500287765262.Spec : Prop :=
  ∀ n, P2084092500287765262.a n = A181155 (n + 1)

end A181155

/-! ## A181155.P7126509240220274734

`A010059(n)+Δ[n²]`
-/

namespace A181155.P7126509240220274734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A181155.P7126509240220274734

namespace A181155

/-- `A010059(n)+Δ[n²]` -/
def P7126509240220274734.Spec : Prop :=
  ∀ n, P7126509240220274734.a n = A181155 (n + 1)

end A181155

/-! ## A181155.P15046589697819547647

`record[A268669(n+1)+1]`
-/

namespace A181155.P15046589697819547647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181155.P15046589697819547647

namespace A181155

/-- `record[A268669(n+1)+1]` -/
def P15046589697819547647.Spec : Prop :=
  ∀ n, P15046589697819547647.a n = A181155 (n + 1)

end A181155

/-! ## A181155.P7390125084134940810

`A128309(n+1)/2+1`
-/

namespace A181155.P7390125084134940810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128309 (n + 1) : ℚ) / 2 + 1

end

end A181155.P7390125084134940810

namespace A181155

/-- `A128309(n+1)/2+1` -/
def P7390125084134940810.Spec : Prop :=
  ∀ n, P7390125084134940810.a n = (A181155 (n + 1) : ℚ)

theorem P7390125084134940810.correct : P7390125084134940810.Spec := by
  intro n
  simp only [A181155, Nat.add_sub_cancel, A181155.P7390125084134940810.a, A181155.P6532656100866929133.a, A000069, A000069.P3917626109476666468.a, A128309, A128309.P14442768980274460626.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181155

/-! ## A181155.P17890336288002377749

`(A129771(n+1)+1)/2`
-/

namespace A181155.P17890336288002377749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129771 (n + 1) + 1 : ℚ) / 2

end

end A181155.P17890336288002377749

namespace A181155

/-- `(A129771(n+1)+1)/2` -/
def P17890336288002377749.Spec : Prop :=
  ∀ n, P17890336288002377749.a n = (A181155 (n + 1) : ℚ)

theorem P17890336288002377749.correct : P17890336288002377749.Spec := by
  intro n
  simp only [A181155, Nat.add_sub_cancel, A181155.P17890336288002377749.a, A181155.P6532656100866929133.a, A000069, A000069.P3917626109476666468.a, A129771, A129771.P17660305195438038504.a, A000120, A000120.P2816527436160941581.a, A128309, A128309.P14442768980274460626.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181155

/-! ## A181155.P17022929275727070316

`A161560(n+1)+2+n`
-/

namespace A181155.P17022929275727070316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (n + 1) + 2 + (n : ℤ)

end

end A181155.P17022929275727070316

namespace A181155

/-- `A161560(n+1)+2+n` -/
def P17022929275727070316.Spec : Prop :=
  ∀ n, P17022929275727070316.a n = A181155 (n + 1)

end A181155

/-! ## A181155.P11650183243458541176

`A285953(n+1)-(n+1)`
-/

namespace A181155.P11650183243458541176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (n + 1) - (n + 1 : ℤ)

end

end A181155.P11650183243458541176

namespace A181155

/-- `A285953(n+1)-(n+1)` -/
def P11650183243458541176.Spec : Prop :=
  ∀ n, P11650183243458541176.a n = A181155 (n + 1)

end A181155

/-! ## A181155.P14340657649800082877

`2*(n+1)-A010060(n)`
-/

namespace A181155.P14340657649800082877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A010060 n

end

end A181155.P14340657649800082877

namespace A181155

/-- `2*(n+1)-A010060(n)` -/
def P14340657649800082877.Spec : Prop :=
  ∀ n, P14340657649800082877.a n = A181155 (n + 1)

end A181155

/-! ## A181155.P9560362915336610249

`2*n+3-A001285(n)`
-/

namespace A181155.P9560362915336610249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A001285 n

end

end A181155.P9560362915336610249

namespace A181155

/-- `2*n+3-A001285(n)` -/
def P9560362915336610249.Spec : Prop :=
  ∀ n, P9560362915336610249.a n = A181155 (n + 1)

end A181155

/-! ## A181155.P9610224836925485367

`A007413(n)+a(n-1)` with `a(0)=2`
-/

namespace A181155.P9610224836925485367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007413 n + a (n - 1)

end

end A181155.P9610224836925485367

namespace A181155

/-- `A007413(n)+a(n-1)` -/
def P9610224836925485367.Spec : Prop :=
  ∀ n, P9610224836925485367.a n = A181155 (n + 1)

end A181155

/-! ## A181155.P7887327047020620575

`A254651(2*n)+2*n+1`
-/

namespace A181155.P7887327047020620575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (2 * n) + (2 * n + 1 : ℤ)

end

end A181155.P7887327047020620575

namespace A181155

/-- `A254651(2*n)+2*n+1` -/
def P7887327047020620575.Spec : Prop :=
  ∀ n, P7887327047020620575.a n = A181155 (n + 1)

end A181155

/-! ## A181155.P9797874387454310563

`A106400(n)+A026147(n+1)`
-/

namespace A181155.P9797874387454310563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n + A026147 (n + 1)

end

end A181155.P9797874387454310563

namespace A181155

/-- `A106400(n)+A026147(n+1)` -/
def P9797874387454310563.Spec : Prop :=
  ∀ n, P9797874387454310563.a n = A181155 (n + 1)

end A181155

/-!
# A181156: Odd Fibonacci numbers F which have a proper Fibonacci divisor G such that F/G is a Lucas number or a product of Lucas numbers.

The programs for A181156, there is no canonical definition to state claims against.
-/

/-! ## A181156.P10081673434812313506

`A094966(3*n+4)`
-/

namespace A181156.P10081673434812313506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (3 * n + 4)

end

end A181156.P10081673434812313506

/-! ## A181156.P16690711332338962428

`record[abs(A108196(n+1))]`
-/

namespace A181156.P16690711332338962428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108196 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181156.P16690711332338962428

/-! ## A181156.P14510236560953184106

`record[A174883(2*(n+2))]`
-/

namespace A181156.P14510236560953184106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174883 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181156.P14510236560953184106

/-! ## A181156.P9315075428308576499

`A052952(∑[4/gcd(2, n)])`
-/

namespace A181156.P9315075428308576499
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A181156.P9315075428308576499

/-!
# A181157: a(n) is the greatest integer such that the occurrence rate of integers k and above in {a(1), ..., a(n)} <= 1/k for all positive integers k.

The programs for A181157, there is no canonical definition to state claims against.
-/

/-! ## A181157.P4795703556961076001

`ratio[A000010(A100650(n))]`
-/

namespace A181157.P4795703556961076001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A100650 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A181157.P4795703556961076001

/-! ## A181157.P6250786837488694475

`ratio[A000010(record[A192366(n)])]`
-/

namespace A181157.P6250786837488694475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192366 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A181157.P6250786837488694475

/-! ## A181157.P1846607923050257815

`ratio[A003958(record[A192366(n)])]`
-/

namespace A181157.P1846607923050257815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192366 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A181157.P1846607923050257815

/-! ## A181157.P17953335211315933677

`ratio[A000010(A172031(n+1))]`
-/

namespace A181157.P17953335211315933677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A172031 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A181157.P17953335211315933677

/-! ## A181157.P6587908699461030694

`ratio[A000010(A192366(n+1))]`
-/

namespace A181157.P6587908699461030694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A192366 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A181157.P6587908699461030694

/-!
# A181158: Where records occur in A181157.

The programs for A181158, there is no canonical definition to state claims against.
-/

/-! ## A181158.P9109287644275833994

`record[A181157(n+1)]`
-/

namespace A181158.P9109287644275833994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181158.P9109287644275833994

/-! ## A181158.P8631763290567338236

`eq[n, A181157(A028310(n))]`
-/

namespace A181158.P8631763290567338236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181157 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181158.P8631763290567338236

/-! ## A181158.P1515190652847382625

`record[A181157(A028310(n))-A323239(n)]`
-/

namespace A181158.P1515190652847382625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181157 (A028310 n).toNat - A323239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181158.P1515190652847382625

/-! ## A181158.P1969340333528301679

`record[A033999(n)*A181157(A028310(n))]`
-/

namespace A181158.P1969340333528301679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A181157 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181158.P1969340333528301679

/-! ## A181158.P2763287946785343068

`record[A181157(A028310(n))%A016873(n)]`
-/

namespace A181158.P2763287946785343068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181157 (A028310 n).toNat) (A016873 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181158.P2763287946785343068

/-!
# A181160: Where records occur in A181159: a(n) occurs later than all positive integers k < a(n) in A181157.

The programs for A181160, there is no canonical definition to state claims against.
-/

/-! ## A181160.P3844120727737897429

`A181157(A306332(n+1))`
-/

namespace A181160.P3844120727737897429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181157 (A306332 (n + 1)).toNat

end

end A181160.P3844120727737897429

/-! ## A181160.P15360226814307926771

`A181157(record[A181159(n+1)])`
-/

namespace A181160.P15360226814307926771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181157 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181160.P15360226814307926771

/-! ## A181160.P8304045830966854510

`A350032(A350016(n))+A065386(n+1)`
-/

namespace A181160.P8304045830966854510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350032 (A350016 n).toNat + A065386 (n + 1)

end

end A181160.P8304045830966854510

/-! ## A181160.P605337048628895536

`A156262(A104294(n+2))-A022300(2*(n+1))`
-/

namespace A181160.P605337048628895536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A104294 (n + 2)).toNat - A022300 (2 * (n + 1))

end

end A181160.P605337048628895536

/-! ## A181160.P12722203672099913510

`∑[A160385(A258343(n))]`
-/

namespace A181160.P12722203672099913510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A258343 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181160.P12722203672099913510

/-!
# A181161: Numerator in abs(binomial(-1/8,n)).

The programs for A181161, there is no canonical definition to state claims against.
-/

/-! ## A181161.P8058875957073324237

`A224881(n)/A001316(n)`
-/

namespace A181161.P8058875957073324237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224881 n : ℚ) / (A001316 n : ℚ)

end

end A181161.P8058875957073324237

/-! ## A181161.P1111349840766127531

`A224881(n)/A000079(A000120(n))`
-/

namespace A181161.P1111349840766127531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224881 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A181161.P1111349840766127531

/-! ## A181161.P9082804075640339456

`gcd(A034977(n), A045755(n))`
-/

namespace A181161.P9082804075640339456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034977 n) (A045755 n)

end

end A181161.P9082804075640339456

/-! ## A181161.P10551415718431216691

`A045755(n)/gcd(A001147(n), A047053(n))`
-/

namespace A181161.P10551415718431216691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045755 n : ℚ) / (Int.gcd (A001147 n) (A047053 n) : ℚ)

end

end A181161.P10551415718431216691

/-! ## A181161.P5791543905620902688

`gcd(A007696(2*n), A224881(n))`
-/

namespace A181161.P5791543905620902688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007696 (2 * n)) (A224881 n)

end

end A181161.P5791543905620902688

/-!
# A181162: Number of commuting functions: the number of ordered pairs (f,g) of functions from {1..n} to itself such that fg=gf (i.e., f(g(i))=g(f(i)) for all i).

The programs for A181162, there is no canonical definition to state claims against.
-/

/-! ## A181162.P10437379073288803823

`A028310(n)*A254530(A028310(n))`
-/

namespace A181162.P10437379073288803823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A254530 (A028310 n).toNat

end

end A181162.P10437379073288803823

/-! ## A181162.P18018132118084497605

`(A000007(n)+n)*A254530(A000007(n)+n)`
-/

namespace A181162.P18018132118084497605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A254530 (A000007 n + (n : ℤ)).toNat

end

end A181162.P18018132118084497605

/-!
# A181167: G.f.: 1 = Sum_{n>=0} a(n)*x^n* Sum_{k>=0} C(2n+k,k)^2*(-x)^k.

The programs for A181167, there is no canonical definition to state claims against.
-/

/-! ## A181167.P6733634985716779131

`A000108(n)*A002190(n+1)`
-/

namespace A181167.P6733634985716779131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A002190 (n + 1)

end

end A181167.P6733634985716779131

/-! ## A181167.P5660997543680567291

`A101981(n+1)*A168491(n)`
-/

namespace A181167.P5660997543680567291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101981 (n + 1) * A168491 n

end

end A181167.P5660997543680567291

/-! ## A181167.P12632007772961609847

`abs(A002190(n+1)*A168491(n))`
-/

namespace A181167.P12632007772961609847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002190 (n + 1) * A168491 n|

end

end A181167.P12632007772961609847

/-! ## A181167.P12569195224281577584

`A002190(n+1)*A120588(n+1)`
-/

namespace A181167.P12569195224281577584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002190 (n + 1) * A120588 (n + 1)

end

end A181167.P12569195224281577584

/-! ## A181167.P10415706456269679576

`(A120304(n)+2)*A002190(n+1)`
-/

namespace A181167.P10415706456269679576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * A002190 (n + 1)

end

end A181167.P10415706456269679576

/-!
# A181168: G.f.: 1 = 1/(1+x) + Sum_{n>=1} a(n)*C(2n,n-1)*x^n* Sum_{k>=0} C(2n+k,k)^2*(-x)^k.

The programs for A181168, there is no canonical definition to state claims against.
-/

/-! ## A181168.P522874048016179391

`A181167(n+1)/C(2*(n+1), n)`
-/

namespace A181168.P522874048016179391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181167 (n + 1) : ℚ) / (Nat.choose (2 * (n + 1)) n : ℚ)

end

end A181168.P522874048016179391

/-! ## A181168.P13801220556774683202

`A002190(n+2)/(n+1)`
-/

namespace A181168.P13801220556774683202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002190 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A181168.P13801220556774683202

/-! ## A181168.P12292737388066435497

`abs(A101981(n+2)/(n+1))`
-/

namespace A181168.P12292737388066435497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A101981 (n + 2) : ℚ) / (n + 1 : ℚ)|

end

end A181168.P12292737388066435497

/-!
# A181169: 'ADPE(n,k)' triangle read by rows. ADPE(n,k) is the number of aperiodic k-double-palindromes of n up to cyclic equivalence.

The programs for A181169, there is no canonical definition to state claims against.
-/

/-! ## A181169.P14188497134216219741

`A180424(n+1)-A010054(n)`
-/

namespace A181169.P14188497134216219741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180424 (n + 1) - A010054 n

end

end A181169.P14188497134216219741

/-! ## A181169.P10802663190077397256

`A180424(n+1)%A001498(n)`
-/

namespace A181169.P10802663190077397256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180424 (n + 1)) (A001498 n)

end

end A181169.P10802663190077397256

/-! ## A181169.P10863760544504983251

`A180424(n+1)-char[A000217(n)]`
-/

namespace A181169.P10863760544504983251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180424 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181169.P10863760544504983251

/-! ## A181169.P12748571155755107302

`and(1, A030130(n+1))*A180424(n+1)`
-/

namespace A181169.P12748571155755107302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030130 (n + 1)) * A180424 (n + 1)

end

end A181169.P12748571155755107302

/-! ## A181169.P18211222145401334812

`A180424(n+1)-A000007(A002262(n))`
-/

namespace A181169.P18211222145401334812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180424 (n + 1) - A000007 (A002262 n).toNat

end

end A181169.P18211222145401334812

/-! ## A181169.P11541563573460238169

`(A180424(n+1)+A008288(n))%A008288(n)`
-/

namespace A181169.P11541563573460238169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180424 (n + 1) + A008288 n) (A008288 n)

end

end A181169.P11541563573460238169

/-! ## A181169.P12327799349341384279

`A001221(A059268(n))*A180424(n+1)`
-/

namespace A181169.P12327799349341384279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A059268 n).toNat * A180424 (n + 1)

end

end A181169.P12327799349341384279

/-! ## A181169.P14274767845776961553

`and(A052955(A181111(n+1)+1), A180424(n+1))`
-/

namespace A181169.P14274767845776961553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052955 (A181111 (n + 1) + 1).toNat) (A180424 (n + 1))

end

end A181169.P14274767845776961553

/-!
# A181172: Primes whose base 4 representation does not contain a 0.

The programs for A181172, the canonical program `A181172.P15475216583000469532` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181172 has offset 1).

The definition of A181172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181172.P15475216583000469532

`p?[A023705(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A181172

/-- `p?[A023705(n+1)]` -/
def P15475216583000469532.Spec : Prop :=
  ∀ n, P15475216583000469532.a n = A181172 (n + 1)

theorem P15475216583000469532.correct : P15475216583000469532.Spec := by
  intro n
  simp only [A181172, Nat.add_sub_cancel]

end A181172

/-! ## A181172.P11400010769345816065

`filter[A023705(n+1), A010051(#)]`
-/

namespace A181172.P11400010769345816065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A181172.P11400010769345816065

namespace A181172

/-- `filter[A023705(n+1), A010051(#)]` -/
def P11400010769345816065.Spec : Prop :=
  ∀ n, P11400010769345816065.a n = A181172 (n + 1)

end A181172

/-! ## A181172.P4010924452077839972

`∩[A000040(n+1), A023705(n+1)]`
-/

namespace A181172.P4010924452077839972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181172.P4010924452077839972

namespace A181172

/-- `∩[A000040(n+1), A023705(n+1)]` -/
def P4010924452077839972.Spec : Prop :=
  ∀ n, (P4010924452077839972.a n : ℤ) = A181172 (n + 1)

end A181172

/-! ## A181172.P13279394690486488763

`∩[A023705(n+1), A066191(n+1)]`
-/

namespace A181172.P13279394690486488763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181172.P13279394690486488763

namespace A181172

/-- `∩[A023705(n+1), A066191(n+1)]` -/
def P13279394690486488763.Spec : Prop :=
  ∀ n, (P13279394690486488763.a n : ℤ) = A181172 (n + 1)

end A181172

/-! ## A181172.P16358779650868178370

`∩[A023705(n+1), A095074(n+1)]`
-/

namespace A181172.P16358779650868178370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181172.P16358779650868178370

namespace A181172

/-- `∩[A023705(n+1), A095074(n+1)]` -/
def P16358779650868178370.Spec : Prop :=
  ∀ n, (P16358779650868178370.a n : ℤ) = A181172 (n + 1)

end A181172

/-! ## A181172.P7504572247194777144

`∩[A023705(n+1), A095316(n+1)]`
-/

namespace A181172.P7504572247194777144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181172.P7504572247194777144

namespace A181172

/-- `∩[A023705(n+1), A095316(n+1)]` -/
def P7504572247194777144.Spec : Prop :=
  ∀ n, (P7504572247194777144.a n : ℤ) = A181172 (n + 1)

end A181172

/-! ## A181172.P12632400258581993870

`∩[A023705(n+1), A095320(n+1)]`
-/

namespace A181172.P12632400258581993870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181172.P12632400258581993870

namespace A181172

/-- `∩[A023705(n+1), A095320(n+1)]` -/
def P12632400258581993870.Spec : Prop :=
  ∀ n, (P12632400258581993870.a n : ℤ) = A181172 (n + 1)

end A181172

/-! ## A181172.P3738312871091099564

`∩[A023705(n+1), A175787(n+1)]`
-/

namespace A181172.P3738312871091099564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181172.P3738312871091099564

namespace A181172

/-- `∩[A023705(n+1), A175787(n+1)]` -/
def P3738312871091099564.Spec : Prop :=
  ∀ n, (P3738312871091099564.a n : ℤ) = A181172 (n + 1)

end A181172

/-! ## A181172.P16690061734239370350

`∩[A023705(n+1), A182986(n+1)]`
-/

namespace A181172.P16690061734239370350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181172.P16690061734239370350

namespace A181172

/-- `∩[A023705(n+1), A182986(n+1)]` -/
def P16690061734239370350.Spec : Prop :=
  ∀ n, (P16690061734239370350.a n : ℤ) = A181172 (n + 1)

end A181172

/-! ## A181172.P15207434282196582729

`p?[n*A277872(n)]`
-/

namespace A181172.P15207434282196582729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181172.P15207434282196582729

namespace A181172

/-- `p?[n*A277872(n)]` -/
def P15207434282196582729.Spec : Prop :=
  ∀ n, P15207434282196582729.a n = A181172 (n + 1)

end A181172

/-! ## A181172.P10997518971393792053

`eq[A003415(n), A277872(n)]`
-/

namespace A181172.P10997518971393792053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181172.P10997518971393792053

namespace A181172

/-- `eq[A003415(n), A277872(n)]` -/
def P10997518971393792053.Spec : Prop :=
  ∀ n, (P10997518971393792053.a n : ℤ) = A181172 (n + 1)

end A181172

/-! ## A181172.P17993673795211772895

`eq[A277872(n), A302055(n)]`
-/

namespace A181172.P17993673795211772895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181172.P17993673795211772895

namespace A181172

/-- `eq[A277872(n), A302055(n)]` -/
def P17993673795211772895.Spec : Prop :=
  ∀ n, (P17993673795211772895.a n : ℤ) = A181172 (n + 1)

end A181172

/-! ## A181172.P14796802815918806809

`eq[A277872(n), A369971(n)]`
-/

namespace A181172.P14796802815918806809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181172.P14796802815918806809

namespace A181172

/-- `eq[A277872(n), A369971(n)]` -/
def P14796802815918806809.Spec : Prop :=
  ∀ n, (P14796802815918806809.a n : ℤ) = A181172 (n + 1)

end A181172

/-! ## A181172.P16279485130536476279

`filter[A023705(n+2), A080339(#)]`
-/

namespace A181172.P16279485130536476279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A181172.P16279485130536476279

namespace A181172

/-- `filter[A023705(n+2), A080339(#)]` -/
def P16279485130536476279.Spec : Prop :=
  ∀ n, P16279485130536476279.a n = A181172 (n + 1)

end A181172

/-! ## A181172.P5686612613460090695

`∩[A023705(n+1), A230606(n+1)]`
-/

namespace A181172.P5686612613460090695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181172.P5686612613460090695

namespace A181172

/-- `∩[A023705(n+1), A230606(n+1)]` -/
def P5686612613460090695.Spec : Prop :=
  ∀ n, (P5686612613460090695.a n : ℤ) = A181172 (n + 1)

end A181172

/-! ## A181172.P2888460907144957851

`∩[A023705(n+1), A385492(n+1)]`
-/

namespace A181172.P2888460907144957851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181172.P2888460907144957851

namespace A181172

/-- `∩[A023705(n+1), A385492(n+1)]` -/
def P2888460907144957851.Spec : Prop :=
  ∀ n, (P2888460907144957851.a n : ℤ) = A181172 (n + 1)

end A181172

/-! ## A181172.P17681056171089647737

`∩[A023705(n+1), A298865(n+1)]`
-/

namespace A181172.P17681056171089647737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181172.P17681056171089647737

namespace A181172

/-- `∩[A023705(n+1), A298865(n+1)]` -/
def P17681056171089647737.Spec : Prop :=
  ∀ n, (P17681056171089647737.a n : ℤ) = A181172 (n + 1)

end A181172

/-!
# A181173: Primes whose base 5 representation does not contain a 0.

The programs for A181173, the canonical program `A181173.P4927634658876330475` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181173 has offset 1).

The definition of A181173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181173.P4927634658876330475

`p?[A023721(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A181173

/-- `p?[A023721(n+1)]` -/
def P4927634658876330475.Spec : Prop :=
  ∀ n, P4927634658876330475.a n = A181173 (n + 1)

theorem P4927634658876330475.correct : P4927634658876330475.Spec := by
  intro n
  simp only [A181173, Nat.add_sub_cancel]

end A181173

/-! ## A181173.P5235176036931114469

`record[A006530(A023721(n+2))]`
-/

namespace A181173.P5235176036931114469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023721 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181173.P5235176036931114469

namespace A181173

/-- `record[A006530(A023721(n+2))]` -/
def P5235176036931114469.Spec : Prop :=
  ∀ n, P5235176036931114469.a n = A181173 (n + 1)

end A181173

/-! ## A181173.P17294766708586924441

`filter[A023721(n+1), A010051(#)]`
-/

namespace A181173.P17294766708586924441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A181173.P17294766708586924441

namespace A181173

/-- `filter[A023721(n+1), A010051(#)]` -/
def P17294766708586924441.Spec : Prop :=
  ∀ n, P17294766708586924441.a n = A181173 (n + 1)

end A181173

/-! ## A181173.P4290339644474711359

`∩[A000040(n+1), A023721(n+1)]`
-/

namespace A181173.P4290339644474711359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181173.P4290339644474711359

namespace A181173

/-- `∩[A000040(n+1), A023721(n+1)]` -/
def P4290339644474711359.Spec : Prop :=
  ∀ n, (P4290339644474711359.a n : ℤ) = A181173 (n + 1)

end A181173

/-! ## A181173.P14200514893100269627

`∩[A023721(n+1), A045319(n+1)]`
-/

namespace A181173.P14200514893100269627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181173.P14200514893100269627

namespace A181173

/-- `∩[A023721(n+1), A045319(n+1)]` -/
def P14200514893100269627.Spec : Prop :=
  ∀ n, (P14200514893100269627.a n : ℤ) = A181173 (n + 1)

end A181173

/-! ## A181173.P2894071234069783470

`∩[A023721(n+1), A182986(n+1)]`
-/

namespace A181173.P2894071234069783470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181173.P2894071234069783470

namespace A181173

/-- `∩[A023721(n+1), A182986(n+1)]` -/
def P2894071234069783470.Spec : Prop :=
  ∀ n, (P2894071234069783470.a n : ℤ) = A181173 (n + 1)

end A181173

/-! ## A181173.P12934839311168536887

`p?[(-1)^n*A023721(A008619(n))]`
-/

namespace A181173.P12934839311168536887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A023721 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181173.P12934839311168536887

namespace A181173

/-- `p?[(-1)^n*A023721(A008619(n))]` -/
def P12934839311168536887.Spec : Prop :=
  ∀ n, P12934839311168536887.a n = A181173 (n + 1)

end A181173

/-! ## A181173.P18395847574929884154

`p?[lt[0, A309956(n)]]`
-/

namespace A181173.P18395847574929884154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309956 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A181173.P18395847574929884154

namespace A181173

/-- `p?[lt[0, A309956(n)]]` -/
def P18395847574929884154.Spec : Prop :=
  ∀ n, (P18395847574929884154.a n : ℤ) = A181173 (n + 1)

end A181173

/-! ## A181173.P14840325671692199868

`p?[n*A277873(n)]`
-/

namespace A181173.P14840325671692199868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181173.P14840325671692199868

namespace A181173

/-- `p?[n*A277873(n)]` -/
def P14840325671692199868.Spec : Prop :=
  ∀ n, P14840325671692199868.a n = A181173 (n + 1)

end A181173

/-! ## A181173.P5138279055932579192

`eq[A003415(n), A277873(n)]`
-/

namespace A181173.P5138279055932579192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181173.P5138279055932579192

namespace A181173

/-- `eq[A003415(n), A277873(n)]` -/
def P5138279055932579192.Spec : Prop :=
  ∀ n, (P5138279055932579192.a n : ℤ) = A181173 (n + 1)

end A181173

/-! ## A181173.P9359806650293581694

`eq[A018783(n), A277873(n)]`
-/

namespace A181173.P9359806650293581694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181173.P9359806650293581694

namespace A181173

/-- `eq[A018783(n), A277873(n)]` -/
def P9359806650293581694.Spec : Prop :=
  ∀ n, (P9359806650293581694.a n : ℤ) = A181173 (n + 1)

end A181173

/-! ## A181173.P9156247398760090776

`eq[A175126(n), A277873(n)]`
-/

namespace A181173.P9156247398760090776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181173.P9156247398760090776

namespace A181173

/-- `eq[A175126(n), A277873(n)]` -/
def P9156247398760090776.Spec : Prop :=
  ∀ n, (P9156247398760090776.a n : ℤ) = A181173 (n + 1)

end A181173

/-! ## A181173.P12676957562223836069

`eq[A277873(n), A302055(n)]`
-/

namespace A181173.P12676957562223836069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181173.P12676957562223836069

namespace A181173

/-- `eq[A277873(n), A302055(n)]` -/
def P12676957562223836069.Spec : Prop :=
  ∀ n, (P12676957562223836069.a n : ℤ) = A181173 (n + 1)

end A181173

/-! ## A181173.P3139691496019128694

`filter[A023721(n+2), A080339(#)]`
-/

namespace A181173.P3139691496019128694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A181173.P3139691496019128694

namespace A181173

/-- `filter[A023721(n+2), A080339(#)]` -/
def P3139691496019128694.Spec : Prop :=
  ∀ n, P3139691496019128694.a n = A181173 (n + 1)

end A181173

/-! ## A181173.P10375140909540554673

`∩[A023721(n+1), A240960(n+1)]`
-/

namespace A181173.P10375140909540554673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181173.P10375140909540554673

namespace A181173

/-- `∩[A023721(n+1), A240960(n+1)]` -/
def P10375140909540554673.Spec : Prop :=
  ∀ n, (P10375140909540554673.a n : ℤ) = A181173 (n + 1)

end A181173

/-! ## A181173.P12833115162758320928

`eq[A239938(n+1)², A277873(n)]`
-/

namespace A181173.P12833115162758320928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181173.P12833115162758320928

namespace A181173

/-- `eq[A239938(n+1)², A277873(n)]` -/
def P12833115162758320928.Spec : Prop :=
  ∀ n, (P12833115162758320928.a n : ℤ) = A181173 (n + 1)

end A181173

/-!
# A181174: The "Row2" sums of the powers-of-2 triangle A000079.

The programs for A181174, the canonical program `A181174.P10889460374029968612` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181174 has offset 0).

The definition of A181174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181174.P10889460374029968612

`2^(n*(n+1)/2)*(2^(n+1)+(-1)^n)/3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A181174

/-- `2^(n*(n+1)/2)*(2^(n+1)+(-1)^n)/3` -/
def P10889460374029968612.Spec : Prop :=
  ∀ n, P10889460374029968612.a n = (A181174 n : ℝ)

end A181174

/-! ## A181174.P3088592870812402967

`A001045(n+1)*2^A000217(n)`
-/

namespace A181174.P3088592870812402967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) : ℚ) * (2 : ℚ) ^ (A000217 n : ℤ)

end

end A181174.P3088592870812402967

namespace A181174

/-- `A001045(n+1)*2^A000217(n)` -/
def P3088592870812402967.Spec : Prop :=
  ∀ n, P3088592870812402967.a n = (A181174 n : ℚ)

end A181174

/-! ## A181174.P17604492495059840968

`lcm(∑[(-2)^n], ∏[2^n])`
-/

namespace A181174.P17604492495059840968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A181174.P17604492495059840968

namespace A181174

/-- `lcm(∑[(-2)^n], ∏[2^n])` -/
def P17604492495059840968.Spec : Prop :=
  ∀ n, (P17604492495059840968.a n : ℤ) = A181174 n

end A181174

/-! ## A181174.P3945867180796617993

`abs(Δ[A084247(∑[n])])`
-/

namespace A181174.P3945867180796617993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A181174.P3945867180796617993

namespace A181174

/-- `abs(Δ[A084247(∑[n])])` -/
def P3945867180796617993.Spec : Prop :=
  ∀ n, P3945867180796617993.a n = A181174 n

end A181174

/-! ## A181174.P9035410090975843719

`abs(Δ[A140966(∑[n])])`
-/

namespace A181174.P9035410090975843719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A181174.P9035410090975843719

namespace A181174

/-- `abs(Δ[A140966(∑[n])])` -/
def P9035410090975843719.Spec : Prop :=
  ∀ n, P9035410090975843719.a n = A181174 n

end A181174

/-!
# A181175: The "Fi1" sums of the powers-of-2 triangle A000079.

The programs for A181175, there is no canonical definition to state claims against.
-/

/-! ## A181175.P14085477270472277315

`2^∑[n]*A000975(or(1, n))`
-/

namespace A181175.P14085477270472277315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A000975 (Nat.lor 1 n)

end

end A181175.P14085477270472277315

/-! ## A181175.P10189968780471049277

`A000079(∑[n])*A052992(n)`
-/

namespace A181175.P10189968780471049277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j) * A052992 n

end

end A181175.P10189968780471049277

/-! ## A181175.P15276078152635412043

`∏[A000079(n)]*A052992(n)`
-/

namespace A181175.P15276078152635412043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052992 n

end

end A181175.P15276078152635412043

/-! ## A181175.P7674940535219853082

`lcm(∏[A122803(n)], A052992(n))`
-/

namespace A181175.P7674940535219853082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ j ∈ Finset.range (n + 1), f1 j) (A052992 n)

end

end A181175.P7674940535219853082

/-! ## A181175.P12384428143370310730

`A006125(n+1)*A052992(n)`
-/

namespace A181175.P12384428143370310730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) * A052992 n

end

end A181175.P12384428143370310730

/-!
# A181176: The minimum absolute value obtainable by partitioning the first n consecutive integers into two sets 1,2,...,k and k+1,k+2,...,n, and subtracting the two sums of the sets.

The programs for A181176, there is no canonical definition to state claims against.
-/

/-! ## A181176.P8002251886061701775

`A053615(∑[n])`
-/

namespace A181176.P8002251886061701775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181176.P8002251886061701775

/-! ## A181176.P10632002630427019173

`abs(A196199(∑[n]))`
-/

namespace A181176.P10632002630427019173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A196199 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A181176.P10632002630427019173

/-! ## A181176.P5382862265784487894

`abs(A329116(∑[n]))`
-/

namespace A181176.P5382862265784487894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329116 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A181176.P5382862265784487894

/-! ## A181176.P16328029094276429867

`abs(A381232(∑[n]))`
-/

namespace A181176.P16328029094276429867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A381232 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A181176.P16328029094276429867

/-! ## A181176.P10437311549402995535

`log2(A082693(∑[n]))`
-/

namespace A181176.P10437311549402995535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A082693 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A181176.P10437311549402995535

/-! ## A181176.P16236169731845322310

`abs(A119557(∑[2*n]))`
-/

namespace A181176.P16236169731845322310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119557 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A181176.P16236169731845322310

/-! ## A181176.P14326377259414987052

`abs(A359216(∑[2*n]))`
-/

namespace A181176.P14326377259414987052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A359216 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A181176.P14326377259414987052

/-! ## A181176.P614691338005529272

`ceil(A253580(∑[n])/2)`
-/

namespace A181176.P614691338005529272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A253580 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌉

end

end A181176.P614691338005529272

/-! ## A181176.P11572773690867189143

`A004738(∑[n]+1)-1`
-/

namespace A181176.P11572773690867189143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A181176.P11572773690867189143

/-! ## A181176.P14477949731721350317

`A053615(C(n+1, 2))%90`
-/

namespace A181176.P14477949731721350317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053615 (Nat.choose (n + 1) 2)) 90

end

end A181176.P14477949731721350317

/-!
# A181178: n-th zerofree positive number with digital sum n.

The programs for A181178, there is no canonical definition to state claims against.
-/

/-! ## A181178.P16045941147851713174

`A069800(A172319(n)+n)`
-/

namespace A181178.P16045941147851713174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069800 (A172319 n + (n : ℤ)).toNat

end

end A181178.P16045941147851713174

/-! ## A181178.P15550917604875514830

`A069800(∑[A258800(n)+1])`
-/

namespace A181178.P15550917604875514830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258800 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181178.P15550917604875514830

/-! ## A181178.P7003658081784432811

`A193581(A187829(n+1))+A081927(n+1)`
-/

namespace A181178.P7003658081784432811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A187829 (n + 1)).toNat + A081927 (n + 1)

end

end A181178.P7003658081784432811

/-! ## A181178.P18345037106775874601

`A081926(A133263(n+1)-2)+A051344(A060773(n))²`
-/

namespace A181178.P18345037106775874601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081926 (A133263 (n + 1) - 2).toNat + A051344 (A060773 n).toNat ^ 2

end

end A181178.P18345037106775874601

/-! ## A181178.P7372860421261298246

`A069800(A103662(n)+n)`
-/

namespace A181178.P7372860421261298246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069800 (A103662 n + (n : ℤ)).toNat

end

end A181178.P7372860421261298246

/-!
# A181179: 

The programs for A181179, there is no canonical definition to state claims against.
-/

/-! ## A181179.P14647488875397883928

`2*a(n-1)!` with `a(0)=1`
-/

namespace A181179.P14647488875397883928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.factorial (a (n - 1))

end

end A181179.P14647488875397883928

/-!
# A181181: Product of the first n zero-free positive numbers with digital sum n.

The programs for A181181, there is no canonical definition to state claims against.
-/

/-! ## A181181.P2319713489197385165

`A114806(A127421(n+1)-n)`
-/

namespace A181181.P2319713489197385165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (A127421 (n + 1) - (n : ℤ)).toNat

end

end A181181.P2319713489197385165

/-! ## A181181.P11339149156909789630

`A114806(A020337(n+1))/A020337(n+1)`
-/

namespace A181181.P11339149156909789630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114806 (A020337 (n + 1)).toNat : ℚ) / (A020337 (n + 1) : ℚ)

end

end A181181.P11339149156909789630

/-!
# A181182: Primes in A181178.

The programs for A181182, there is no canonical definition to state claims against.
-/

/-! ## A181182.P10068566832970074273

`p?[A181178(n+1)]`
-/

namespace A181182.P10068566832970074273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181182.P10068566832970074273

/-! ## A181182.P13121924026356447043

`p?[A081927(comp[∑[n]])]`
-/

namespace A181182.P13121924026356447043
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081927 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181182.P13121924026356447043

/-! ## A181182.P181553959058581217

`p?[A081927(n+1)+char[9]]`
-/

namespace A181182.P181553959058581217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081927 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181182.P181553959058581217

/-! ## A181182.P6975182781702145503

`p?[record[A081927((n+1)/10^val(n+1, 10))]]`
-/

namespace A181182.P6975182781702145503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081927 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181182.P6975182781702145503

/-! ## A181182.P15274819485401861341

`record[p?[A181178(A052938(n))]]`
-/

namespace A181182.P15274819485401861341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181178 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181182.P15274819485401861341

/-!
# A181183: a(n) = sigma(tau(n)) (mod 2).

The programs for A181183, the canonical program `A181183.P18430112990416005991` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181183 has offset 1).

The definition of A181183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181183.P18430112990416005991

`A000035(A062069(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A181183

/-- `A000035(A062069(n+1))` -/
def P18430112990416005991.Spec : Prop :=
  ∀ n, P18430112990416005991.a n = A181183 (n + 1)

theorem P18430112990416005991.correct : P18430112990416005991.Spec := by
  intro n
  simp only [A181183, Nat.add_sub_cancel]

end A181183

/-! ## A181183.P17364671411123493119

`A000203(A000005(n+1))%2`
-/

namespace A181183.P17364671411123493119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A000005 (n + 1)).toNat) 2

end

end A181183.P17364671411123493119

namespace A181183

/-- `A000203(A000005(n+1))%2` -/
def P17364671411123493119.Spec : Prop :=
  ∀ n, P17364671411123493119.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P15208020157832616257

`A062069(n+1)%2`
-/

namespace A181183.P15208020157832616257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062069 (n + 1)) 2

end

end A181183.P15208020157832616257

namespace A181183

/-- `A062069(n+1)%2` -/
def P15208020157832616257.Spec : Prop :=
  ∀ n, P15208020157832616257.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P17407834622688342100

`A193348(n+1)%2`
-/

namespace A181183.P17407834622688342100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193348 (n + 1)) 2

end

end A181183.P17407834622688342100

namespace A181183

/-- `A193348(n+1)%2` -/
def P17407834622688342100.Spec : Prop :=
  ∀ n, P17407834622688342100.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P4187280910052802553

`A193349(n+1)%2`
-/

namespace A181183.P4187280910052802553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193349 (n + 1)) 2

end

end A181183.P4187280910052802553

namespace A181183

/-- `A193349(n+1)%2` -/
def P4187280910052802553.Spec : Prop :=
  ∀ n, P4187280910052802553.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P13158047137420744036

`A000203(∏{e}[n+1, #+1])%2`
-/

namespace A181183.P13158047137420744036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))) 2

end

end A181183.P13158047137420744036

namespace A181183

/-- `A000203(∏{e}[n+1, #+1])%2` -/
def P13158047137420744036.Spec : Prop :=
  ∀ n, P13158047137420744036.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P1703900311622765936

`A001157(∏{e}[n+1, #+1])%2`
-/

namespace A181183.P1703900311622765936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001157 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))) 2

end

end A181183.P1703900311622765936

namespace A181183

/-- `A001157(∏{e}[n+1, #+1])%2` -/
def P1703900311622765936.Spec : Prop :=
  ∀ n, P1703900311622765936.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P5796950609409588593

`and(1, A001159(∏{e}[n+1, #+1]))`
-/

namespace A181183.P5796950609409588593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001159 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A181183.P5796950609409588593

namespace A181183

/-- `and(1, A001159(∏{e}[n+1, #+1]))` -/
def P5796950609409588593.Spec : Prop :=
  ∀ n, P5796950609409588593.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P3075046522937007570

`A053866(A000005(n+1))`
-/

namespace A181183.P3075046522937007570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (A000005 (n + 1)).toNat

end

end A181183.P3075046522937007570

namespace A181183

/-- `A053866(A000005(n+1))` -/
def P3075046522937007570.Spec : Prop :=
  ∀ n, P3075046522937007570.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P1753789367532555419

`A353628(A000005(n+1)²)`
-/

namespace A181183.P1753789367532555419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353628 (A000005 (n + 1) ^ 2).toNat

end

end A181183.P1753789367532555419

namespace A181183

/-- `A353628(A000005(n+1)²)` -/
def P1753789367532555419.Spec : Prop :=
  ∀ n, P1753789367532555419.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P18390381533074709430

`A320106(A193349(n+1)²)`
-/

namespace A181183.P18390381533074709430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320106 (A193349 (n + 1) ^ 2).toNat

end

end A181183.P18390381533074709430

namespace A181183

/-- `A320106(A193349(n+1)²)` -/
def P18390381533074709430.Spec : Prop :=
  ∀ n, P18390381533074709430.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P15203152608631752246

`A327276(A193349(n+1)²)`
-/

namespace A181183.P15203152608631752246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (A193349 (n + 1) ^ 2).toNat

end

end A181183.P15203152608631752246

namespace A181183

/-- `A327276(A193349(n+1)²)` -/
def P15203152608631752246.Spec : Prop :=
  ∀ n, P15203152608631752246.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P17484507947245461642

`A059841(A062069(n+1)+1)`
-/

namespace A181183.P17484507947245461642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A062069 (n + 1) + 1).toNat

end

end A181183.P17484507947245461642

namespace A181183

/-- `A059841(A062069(n+1)+1)` -/
def P17484507947245461642.Spec : Prop :=
  ∀ n, P17484507947245461642.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P1822300427413169133

`A053867(2*A000005(n+1))`
-/

namespace A181183.P1822300427413169133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053867 (2 * A000005 (n + 1)).toNat

end

end A181183.P1822300427413169133

namespace A181183

/-- `A053867(2*A000005(n+1))` -/
def P1822300427413169133.Spec : Prop :=
  ∀ n, P1822300427413169133.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P6016034606078386397

`A093709(2*A000005(n+1))`
-/

namespace A181183.P6016034606078386397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (2 * A000005 (n + 1)).toNat

end

end A181183.P6016034606078386397

namespace A181183

/-- `A093709(2*A000005(n+1))` -/
def P6016034606078386397.Spec : Prop :=
  ∀ n, P6016034606078386397.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P14077875220525966272

`and(A016760(n), A193348(n+1))`
-/

namespace A181183.P14077875220525966272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A193348 (n + 1))

end

end A181183.P14077875220525966272

namespace A181183

/-- `and(A016760(n), A193348(n+1))` -/
def P14077875220525966272.Spec : Prop :=
  ∀ n, P14077875220525966272.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P3700515073868570214

`and(A017286(n), A193348(n+1))`
-/

namespace A181183.P3700515073868570214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017286 n) (A193348 (n + 1))

end

end A181183.P3700515073868570214

namespace A181183

/-- `and(A017286(n), A193348(n+1))` -/
def P3700515073868570214.Spec : Prop :=
  ∀ n, P3700515073868570214.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P15186336868320012026

`and(A017310(n), A193348(n+1))`
-/

namespace A181183.P15186336868320012026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017310 n) (A193348 (n + 1))

end

end A181183.P15186336868320012026

namespace A181183

/-- `and(A017310(n), A193348(n+1))` -/
def P15186336868320012026.Spec : Prop :=
  ∀ n, P15186336868320012026.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P4181804803414338840

`and(A017334(n), A193348(n+1))`
-/

namespace A181183.P4181804803414338840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017334 n) (A193348 (n + 1))

end

end A181183.P4181804803414338840

namespace A181183

/-- `and(A017334(n), A193348(n+1))` -/
def P4181804803414338840.Spec : Prop :=
  ∀ n, P4181804803414338840.a n = A181183 (n + 1)

end A181183

/-! ## A181183.P2482962914456809146

`and(A017358(n), A193348(n+1))`
-/

namespace A181183.P2482962914456809146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017358 n) (A193348 (n + 1))

end

end A181183.P2482962914456809146

namespace A181183

/-- `and(A017358(n), A193348(n+1))` -/
def P2482962914456809146.Spec : Prop :=
  ∀ n, P2482962914456809146.a n = A181183 (n + 1)

end A181183

/-!
# A181184: | (n-th digit of Pi) - (n-th digit of phi (golden ratio)) |.

The programs for A181184, there is no canonical definition to state claims against.
-/

/-! ## A181184.P1475487612269356043

`abs(A000796(n)-A001622(n))`
-/

namespace A181184.P1475487612269356043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000796 (n + 1) - A001622 (n + 1)|

end

end A181184.P1475487612269356043

/-! ## A181184.P6714244181414530671

`abs(A098369(∑[n])-A000796(n))`
-/

namespace A181184.P6714244181414530671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098369 (∑ j ∈ Finset.range (n + 1), f1 j) - A000796 (n + 1)|

end

end A181184.P6714244181414530671

/-! ## A181184.P10347059519221976236

`abs(A001622(n)-Δ[A059582(n)])`
-/

namespace A181184.P10347059519221976236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001622 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A181184.P10347059519221976236

/-! ## A181184.P7268344889128541099

`abs(A109866(n+1)-A030644(n))`
-/

namespace A181184.P7268344889128541099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109866 (n + 1) - A030644 (n + 1)|

end

end A181184.P7268344889128541099

/-! ## A181184.P13689689456178546956

`abs(9-A030644(n)-A001622(n))`
-/

namespace A181184.P13689689456178546956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 - A030644 (n + 1) - A001622 (n + 1)|

end

end A181184.P13689689456178546956

/-! ## A181184.P8024517989648557850

`dr(A001355(Δ[n²])-A001622(n))`
-/

namespace A181184.P8024517989648557850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A001622 (n + 1))

end

end A181184.P8024517989648557850

/-! ## A181184.P1467736071489417805

`abs(A094214(abs(1-n))-A000796(n))`
-/

namespace A181184.P1467736071489417805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A094214 |1 - (n : ℤ)|.toNat - A000796 (n + 1))|

end

end A181184.P1467736071489417805

/-! ## A181184.P5154149025920448277

`abs(A001355(2*n+1)-A001622(n))`
-/

namespace A181184.P5154149025920448277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001355 (2 * n + 1) - A001622 (n + 1)|

end

end A181184.P5154149025920448277

/-! ## A181184.P11004092095948866055

`abs(A110766(2*n+1)-A001622(n))`
-/

namespace A181184.P11004092095948866055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110766 (2 * n + 1) - A001622 (n + 1)|

end

end A181184.P11004092095948866055

/-! ## A181184.P18086250834054581762

`abs(9-A109866(n+1)-A000796(n))`
-/

namespace A181184.P18086250834054581762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 - A109866 (n + 1) - A000796 (n + 1)|

end

end A181184.P18086250834054581762

/-! ## A181184.P7426132152392626625

`dr(A110766(2*n+1)-A098369(∑[n]))`
-/

namespace A181184.P7426132152392626625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A110766 (2 * n + 1) - A098369 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A181184.P7426132152392626625

/-! ## A181184.P16630619644688738325

`abs(dr(A001355(n+1+n))-A001622(n))`
-/

namespace A181184.P16630619644688738325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.digitalRoot (A001355 (n + 1 + n)) : ℤ) - A001622 (n + 1)|

end

end A181184.P16630619644688738325

/-! ## A181184.P5664153830900936920

`abs(A001622(n)-A001355(A005408(n)))`
-/

namespace A181184.P5664153830900936920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001622 (n + 1) - A001355 (A005408 n).toNat|

end

end A181184.P5664153830900936920

/-! ## A181184.P9744549655751946347

`abs(A001622(n)-A110766(A016825(n)))`
-/

namespace A181184.P9744549655751946347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001622 (n + 1) - A110766 (A016825 n).toNat|

end

end A181184.P9744549655751946347

/-! ## A181184.P4148368557523832645

`abs(A001622(n)-A110766(A017113(n)))`
-/

namespace A181184.P4148368557523832645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001622 (n + 1) - A110766 (A017113 n).toNat|

end

end A181184.P4148368557523832645

/-! ## A181184.P14429020221233157681

`gcd(A000796(n)-A001622(n), A000038(n))`
-/

namespace A181184.P14429020221233157681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000796 (n + 1) - A001622 (n + 1)) (A000038 n)

end

end A181184.P14429020221233157681

/-!
# A181186: Number of prime factors of (2^n - 1) * n! + 1, counted with multiplicity.

The programs for A181186, there is no canonical definition to state claims against.
-/

/-! ## A181186.P12404927501919156775

`A139355(A131913(n))`
-/

namespace A181186.P12404927501919156775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (A131913 n).toNat

end

end A181186.P12404927501919156775

/-! ## A181186.P2718217544064481524

`A001222(or(∑{d}[n+1, #], A207242(4*n+2)))`
-/

namespace A181186.P2718217544064481524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A207242 (4 * n + 2))).toNat

end

end A181186.P2718217544064481524

/-! ## A181186.P16190546184122144712

`A115623(A039598(n)*A100884(n+1))`
-/

namespace A181186.P16190546184122144712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (A039598 n * A100884 (n + 1)).toNat

end

end A181186.P16190546184122144712

/-! ## A181186.P2710349468239335520

`A001221(or(A045662(n), A224310(n+1)))`
-/

namespace A181186.P2710349468239335520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A045662 n) (A224310 (n + 1))).toNat

end

end A181186.P2710349468239335520

/-!
# A181187: Triangle read by rows: T(n,k) = sum of k-th largest elements in all partitions of n.

The programs for A181187, there is no canonical definition to state claims against.
-/

/-! ## A181187.P14683070224761479184

`A396731(n+1)-A138785(n+1)`
-/

namespace A181187.P14683070224761479184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396731 (n + 1) - A138785 (n + 1)

end

end A181187.P14683070224761479184

/-! ## A181187.P16575805925463805056

`A102705(and(A096342(n+1), A325005(n+1)))`
-/

namespace A181187.P16575805925463805056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (Int.land (A096342 (n + 1)) (A325005 (n + 1))).toNat

end

end A181187.P16575805925463805056

/-!
# A181188: Primes at which the prime number race between the two prime classes with different sign of sin(prime(.)) changes leader.

The programs for A181188, there is no canonical definition to state claims against.
-/

/-! ## A181188.P12255220086043766752

`∩[A243187(n+1), A243960(n+1)]`
-/

namespace A181188.P12255220086043766752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181188.P12255220086043766752

/-!
# A181189: Maximal number of elements needed to identify an abelian group of order n by testing the order of random elements.

The programs for A181189, there is no canonical definition to state claims against.
-/

/-! ## A181189.P11072015579372511321

`A001222(A249739(n+1)^A007380(n+1))`
-/

namespace A181189.P11072015579372511321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A249739 (n + 1) : ℚ) ^ (A007380 (n + 1) : ℤ))).toNat

end

end A181189.P11072015579372511321

/-!
# A181190: Maximal length of chain-addition sequence mod 10 with window of size n.

The programs for A181190, there is no canonical definition to state claims against.
-/

/-! ## A181190.P14985404379743905127

`A351889(eq[8, A219347(n)])`
-/

namespace A181190.P14985404379743905127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181190.P14985404379743905127

/-! ## A181190.P4264082623550884345

`A351889(eq[9, A193592(n)])`
-/

namespace A181190.P4264082623550884345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181190.P4264082623550884345

/-! ## A181190.P5905390857536150545

`A351889(eq[16, A185782(n+1)])`
-/

namespace A181190.P5905390857536150545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181190.P5905390857536150545

/-!
# A181191: Number of n X n matrices containing a permutation of 1..n*n in increasing order rowwise, columnwise, diagonally and (downwards) antidiagonally.

The programs for A181191, there is no canonical definition to state claims against.
-/

/-! ## A181191.P15284353626797993483

`A181196(∑[4*n]+1)`
-/

namespace A181191.P15284353626797993483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181191.P15284353626797993483

/-! ## A181191.P2484122712252525186

`or(A000007(n), A181196(A001844(n)))`
-/

namespace A181191.P2484122712252525186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A181196 (A001844 n).toNat)

end

end A181191.P2484122712252525186

/-! ## A181191.P3705351137047334475

`or(A151660(n), A181196(A001844(n)))`
-/

namespace A181191.P3705351137047334475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151660 n) (A181196 (A001844 n).toNat)

end

end A181191.P3705351137047334475

/-! ## A181191.P878984662306939324

`A020985(n)²*A181196(A001844(n))`
-/

namespace A181191.P878984662306939324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A181196 (A001844 n).toNat

end

end A181191.P878984662306939324

/-! ## A181191.P11692830035756252468

`A007318(C(2, n))*A181196(A001844(n))`
-/

namespace A181191.P11692830035756252468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A181196 (A001844 n).toNat

end

end A181191.P11692830035756252468

/-!
# A181192: Number of n X 5 matrices containing a permutation of 1..n*5 in increasing order rowwise, columnwise, diagonally and (downwards) antidiagonally.

The programs for A181192, there is no canonical definition to state claims against.
-/

/-! ## A181192.P12791239738656512689

`ogf((1-10x-6x^2)/(1-24x+40x^2+8x^3))`
-/

namespace A181192.P12791239738656512689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -10, -6] [1, -24, 40, 8] n

end

end A181192.P12791239738656512689

/-! ## A181192.P7031067450256457988

`24*a(n-1)-40*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=14, a(2)=290`
-/

namespace A181192.P7031067450256457988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14, 290] fun n a =>
  24 * a (n - 1) - 40 * a (n - 2) - 8 * a (n - 3)

end

end A181192.P7031067450256457988

/-! ## A181192.P9362761354975547545

`(A134489(n)+1)*A000079(n)/2`
-/

namespace A181192.P9362761354975547545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A134489 n + 1) * A000079 n : ℚ) / 2

end

end A181192.P9362761354975547545

/-! ## A181192.P9765870972863431924

`A181196(Δ[A264443(n)])`
-/

namespace A181192.P9765870972863431924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (f1 (n + 1) - f1 n).toNat

end

end A181192.P9765870972863431924

/-! ## A181192.P16729411917706113310

`A181196(A046691(n+3))`
-/

namespace A181192.P16729411917706113310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (A046691 (n + 3)).toNat

end

end A181192.P16729411917706113310

/-!
# A181193: Number of n X 6 matrices containing a permutation of 1..n*6 in increasing order rowwise, columnwise, diagonally and (downwards) antidiagonally.

The programs for A181193, there is no canonical definition to state claims against.
-/

/-! ## A181193.P12500027007421196527

`A181196(A052905(n+3))`
-/

namespace A181193.P12500027007421196527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (A052905 (n + 3)).toNat

end

end A181193.P12500027007421196527

/-! ## A181193.P13990564297178227406

`A181196(A056119(n)+16)`
-/

namespace A181193.P13990564297178227406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (A056119 n + 16).toNat

end

end A181193.P13990564297178227406

/-! ## A181193.P15497776761438381055

`A181196(eq[3, A219347(n)])`
-/

namespace A181193.P15497776761438381055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181193.P15497776761438381055

/-! ## A181193.P6483095041417248507

`A181196(eq[5, A193592(n)])`
-/

namespace A181193.P6483095041417248507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181193.P6483095041417248507

/-! ## A181193.P17039039116654437380

`A181196(eq[8, A185782(n+1)])`
-/

namespace A181193.P17039039116654437380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181193.P17039039116654437380

/-!
# A181194: Number of n X 7 matrices containing a permutation of 1..n*7 in increasing order rowwise, columnwise, diagonally and (downwards) antidiagonally.

The programs for A181194, there is no canonical definition to state claims against.
-/

/-! ## A181194.P4164107342266863688

`A181196(A055999(n+4))`
-/

namespace A181194.P4164107342266863688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (A055999 (n + 4)).toNat

end

end A181194.P4164107342266863688

/-! ## A181194.P1802231131190448733

`A181196(eq[4, A219347(n)])`
-/

namespace A181194.P1802231131190448733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181194.P1802231131190448733

/-! ## A181194.P11830954080908081343

`A181196(eq[6, A193592(n)])`
-/

namespace A181194.P11830954080908081343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181194.P11830954080908081343

/-! ## A181194.P17383790655098610897

`A181196(A027379(n+5)-3)`
-/

namespace A181194.P17383790655098610897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (A027379 (n + 5) - 3).toNat

end

end A181194.P17383790655098610897

/-! ## A181194.P2656819136167873843

`A181196(eq[3, A316074(n+1)])`
-/

namespace A181194.P2656819136167873843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181194.P2656819136167873843

/-!
# A181195: Number of n X 8 matrices containing a permutation of 1..n*8 in increasing order rowwise, columnwise, diagonally and (downwards) antidiagonally.

The programs for A181195, there is no canonical definition to state claims against.
-/

/-! ## A181195.P3687513583616025459

`A181196(eq[5, A219347(n)])`
-/

namespace A181195.P3687513583616025459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181195.P3687513583616025459

/-! ## A181195.P3774779254666219152

`A181196(eq[7, A193592(n)])`
-/

namespace A181195.P3774779254666219152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181195.P3774779254666219152

/-! ## A181195.P5815942410218557766

`A181196(eq[12, A185782(n+1)])`
-/

namespace A181195.P5815942410218557766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181195.P5815942410218557766

/-! ## A181195.P18393193943207256992

`A181196(eq[64, A057728(n+1)])`
-/

namespace A181195.P18393193943207256992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181195.P18393193943207256992

/-!
# A181196: T(n,k) = number of n X k matrices containing a permutation of 1..n*k in increasing order rowwise, columnwise, diagonally and (downwards) antidiagonally.

The programs for A181196, there is no canonical definition to state claims against.
-/

/-! ## A181196.P1207696762511088262

`gcd(A008585(n)!, A227578(n+1))`
-/

namespace A181196.P1207696762511088262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A008585 n).toNat : ℤ) (A227578 (n + 1))

end

end A181196.P1207696762511088262

/-! ## A181196.P13935713074521538639

`A227578(n+1)%A074205(n+1)`
-/

namespace A181196.P13935713074521538639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227578 (n + 1)) (A074205 (n + 1))

end

end A181196.P13935713074521538639

/-! ## A181196.P394145251945218704

`A227578(C(A070108(n+1)+n+1, n))`
-/

namespace A181196.P394145251945218704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (Nat.choose (A070108 (n + 1) + (n + 1 : ℤ)).toNat n)

end

end A181196.P394145251945218704

/-! ## A181196.P800776761039128480

`A227578(∑[A336938(2*n)]%2+n+1)`
-/

namespace A181196.P800776761039128480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336938 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2 + (n : ℤ) + 1).toNat

end

end A181196.P800776761039128480

/-! ## A181196.P14426452504302659855

`A227578(n%(A378146(2*n+3)+1)+1)`
-/

namespace A181196.P14426452504302659855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (Int.tmod (n : ℤ) (A378146 (2 * n + 3) + 1) + 1).toNat

end

end A181196.P14426452504302659855

/-!
# A181197: Number of 3 X n matrices containing a permutation of 1..3*n in increasing order rowwise, columnwise and (downwards) antidiagonally.

The programs for A181197, there is no canonical definition to state claims against.
-/

/-! ## A181197.P4119779682859996620

`A181196(∑[n+2]+4)`
-/

namespace A181197.P4119779682859996620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A181197.P4119779682859996620

/-! ## A181197.P2604263532269234132

`A185284(n)+A181196(A167614(n+1))`
-/

namespace A181197.P2604263532269234132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A181196 (A167614 (n + 1)).toNat

end

end A181197.P2604263532269234132

/-! ## A181197.P16552889360582997325

`A181196(A167614(n+1))^A178334(n)`
-/

namespace A181197.P16552889360582997325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181196 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A181197.P16552889360582997325

/-! ## A181197.P11090392131715784936

`gcd(A000038(n), A181196(A167614(n+1)))`
-/

namespace A181197.P11090392131715784936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A181196 (A167614 (n + 1)).toNat)

end

end A181197.P11090392131715784936

/-! ## A181197.P14081445792037226908

`lcm(A033999(n), A181196(A167614(n+1)))`
-/

namespace A181197.P14081445792037226908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A181196 (A167614 (n + 1)).toNat)

end

end A181197.P14081445792037226908

/-!
# A181198: Number of 4 X n matrices containing a permutation of 1..4*n in increasing order rowwise, columnwise, diagonally and (downwards) antidiagonally.

The programs for A181198, there is no canonical definition to state claims against.
-/

/-! ## A181198.P2262967927502023714

`A181196(A167614(n+2)+1)`
-/

namespace A181198.P2262967927502023714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (A167614 (n + 2) + 1).toNat

end

end A181198.P2262967927502023714

/-! ## A181198.P14110130935926506189

`A181196(A167499(n+2)-1)`
-/

namespace A181198.P14110130935926506189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (A167499 (n + 2) - 1).toNat

end

end A181198.P14110130935926506189

/-! ## A181198.P988896742715649714

`A181196(A134869(n+3)+3)`
-/

namespace A181198.P988896742715649714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (A134869 (n + 3) + 3).toNat

end

end A181198.P988896742715649714

/-! ## A181198.P9213489051575138535

`A181196(A000096(n+2)+5)`
-/

namespace A181198.P9213489051575138535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (A000096 (n + 2) + 5).toNat

end

end A181198.P9213489051575138535

/-! ## A181198.P6169212922563017620

`A181196(A046691(n+1)+8)`
-/

namespace A181198.P6169212922563017620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (A046691 (n + 1) + 8).toNat

end

end A181198.P6169212922563017620

/-!
# A181199: Number of 5 X n matrices containing a permutation of 1..5*n in increasing order rowwise, columnwise, diagonally and (downwards) antidiagonally.

The programs for A181199, there is no canonical definition to state claims against.
-/

/-! ## A181199.P16850867267467652063

`A181196(A167499(n+3))`
-/

namespace A181199.P16850867267467652063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (A167499 (n + 3)).toNat

end

end A181199.P16850867267467652063

/-! ## A181199.P12174719120339345523

`A181196(A155212(n)+13)`
-/

namespace A181199.P12174719120339345523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (A155212 n + 13).toNat

end

end A181199.P12174719120339345523

/-! ## A181199.P5035862544028818024

`A181196(eq[7, A066657(n)])`
-/

namespace A181199.P5035862544028818024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181199.P5035862544028818024

/-! ## A181199.P1793547454046998686

`A181196(A167614(n+3)+2)`
-/

namespace A181199.P1793547454046998686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (A167614 (n + 3) + 2).toNat

end

end A181199.P1793547454046998686

/-! ## A181199.P10416379835108692859

`A181196(eq[6, A131818(n+1)])`
-/

namespace A181199.P10416379835108692859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181199.P10416379835108692859

