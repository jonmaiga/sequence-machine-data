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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

/-!
# A015802: Inverse of 1793rd cyclotomic polynomial.

The programs for A015802, the canonical program `A015802.P15667589497494168715` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015802 has offset 0).

The definition of A015802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015802.P8547356108414405350

`C(log2(gcd(2, n)), A326594(n))`
-/

namespace A015802.P8547356108414405350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ))).toNat (A326594 n).toNat

end

end A015802.P8547356108414405350

namespace A015802

/-- `C(log2(gcd(2, n)), A326594(n))` -/
def P8547356108414405350.Spec : Prop :=
  ∀ n, (P8547356108414405350.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P15667589497494168715

`A000007(C(floor((n+1)/4), 3))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A015802

/-- `A000007(C(floor((n+1)/4), 3))` -/
def P15667589497494168715.Spec : Prop :=
  ∀ n, P15667589497494168715.a n = A015802 n

theorem P15667589497494168715.correct : P15667589497494168715.Spec := by
  intro n
  simp only [A015802]

end A015802

/-! ## A015802.P10968231204469914327

`C(n+1, comp[A290001(n+1)-1]+1)`
-/

namespace A015802.P10968231204469914327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290001 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A015802.P10968231204469914327

namespace A015802

/-- `C(n+1, comp[A290001(n+1)-1]+1)` -/
def P10968231204469914327.Spec : Prop :=
  ∀ n, (P10968231204469914327.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P3877821824867938137

`A353499(2*A210964(n))`
-/

namespace A015802.P3877821824867938137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353499 (2 * A210964 n).toNat

end

end A015802.P3877821824867938137

namespace A015802

/-- `A353499(2*A210964(n))` -/
def P3877821824867938137.Spec : Prop :=
  ∀ n, P3877821824867938137.a n = A015802 n

end A015802

/-! ## A015802.P12459139798769613212

`C(A016143(n)², A326594(n))`
-/

namespace A015802.P12459139798769613212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016143 n ^ 2).toNat (A326594 n).toNat

end

end A015802.P12459139798769613212

namespace A015802

/-- `C(A016143(n)², A326594(n))` -/
def P12459139798769613212.Spec : Prop :=
  ∀ n, (P12459139798769613212.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P10842450983645299144

`C(A016148(n)², A326594(n))`
-/

namespace A015802.P10842450983645299144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016148 n ^ 2).toNat (A326594 n).toNat

end

end A015802.P10842450983645299144

namespace A015802

/-- `C(A016148(n)², A326594(n))` -/
def P10842450983645299144.Spec : Prop :=
  ∀ n, (P10842450983645299144.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P11043544599492481646

`C(∑[A065359(n)], A326594(n))`
-/

namespace A015802.P11043544599492481646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A326594 n).toNat

end

end A015802.P11043544599492481646

namespace A015802

/-- `C(∑[A065359(n)], A326594(n))` -/
def P11043544599492481646.Spec : Prop :=
  ∀ n, (P11043544599492481646.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P16946375952345633755

`C(A081753(n), ∑[A326594(n)])`
-/

namespace A015802.P16946375952345633755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A081753 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015802.P16946375952345633755

namespace A015802

/-- `C(A081753(n), ∑[A326594(n)])` -/
def P16946375952345633755.Spec : Prop :=
  ∀ n, (P16946375952345633755.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P5187435900603065111

`C(∑[A134667(n)], A326594(n))`
-/

namespace A015802.P5187435900603065111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A326594 n).toNat

end

end A015802.P5187435900603065111

namespace A015802

/-- `C(∑[A134667(n)], A326594(n))` -/
def P5187435900603065111.Spec : Prop :=
  ∀ n, (P5187435900603065111.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P13293660273129542222

`C(A138471(n), ∑[A326594(n)])`
-/

namespace A015802.P13293660273129542222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A138471 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015802.P13293660273129542222

namespace A015802

/-- `C(A138471(n), ∑[A326594(n)])` -/
def P13293660273129542222.Spec : Prop :=
  ∀ n, (P13293660273129542222.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P17146005643263606030

`A000007(15*A161265(n+1))`
-/

namespace A015802.P17146005643263606030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (15 * A161265 (n + 1)).toNat

end

end A015802.P17146005643263606030

namespace A015802

/-- `A000007(15*A161265(n+1))` -/
def P17146005643263606030.Spec : Prop :=
  ∀ n, P17146005643263606030.a n = A015802 n

end A015802

/-! ## A015802.P11037132584519945420

`C(A214960(2*n), A326594(n))`
-/

namespace A015802.P11037132584519945420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A214960 (2 * n)).toNat (A326594 n).toNat

end

end A015802.P11037132584519945420

namespace A015802

/-- `C(A214960(2*n), A326594(n))` -/
def P11037132584519945420.Spec : Prop :=
  ∀ n, (P11037132584519945420.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P8793319067613337251

`A302052(∑[∑[A001617(n+1)]])`
-/

namespace A015802.P8793319067613337251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015802.P8793319067613337251

namespace A015802

/-- `A302052(∑[∑[A001617(n+1)]])` -/
def P8793319067613337251.Spec : Prop :=
  ∀ n, P8793319067613337251.a n = A015802 n

end A015802

/-! ## A015802.P1112295655440278089

`C(A122855(n+2), A326594(n))²`
-/

namespace A015802.P1112295655440278089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A122855 (n + 2)).toNat (A326594 n).toNat ^ 2

end

end A015802.P1112295655440278089

namespace A015802

/-- `C(A122855(n+2), A326594(n))²` -/
def P1112295655440278089.Spec : Prop :=
  ∀ n, (P1112295655440278089.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P9845297060150566300

`C(abs(A333248(3*(n+1))), A326594(n))`
-/

namespace A015802.P9845297060150566300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A333248 (3 * (n + 1))|.toNat (A326594 n).toNat

end

end A015802.P9845297060150566300

namespace A015802

/-- `C(abs(A333248(3*(n+1))), A326594(n))` -/
def P9845297060150566300.Spec : Prop :=
  ∀ n, (P9845297060150566300.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P15168021506025935905

`C(A329656(3*(n+1)), Δ[A326473(n)])`
-/

namespace A015802.P15168021506025935905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326473 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A329656 (3 * (n + 1))).toNat (f1 (n + 1) - f1 n).toNat

end

end A015802.P15168021506025935905

namespace A015802

/-- `C(A329656(3*(n+1)), Δ[A326473(n)])` -/
def P15168021506025935905.Spec : Prop :=
  ∀ n, (P15168021506025935905.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P1344180033154646424

`C(A077172(n+5), record[A077172(n+5)])`
-/

namespace A015802.P1344180033154646424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077172 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077172 (n + 5)).toNat (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015802.P1344180033154646424

namespace A015802

/-- `C(A077172(n+5), record[A077172(n+5)])` -/
def P1344180033154646424.Spec : Prop :=
  ∀ n, (P1344180033154646424.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P7792978563750397819

`C(A288108(A066657(n)), A326594(n))`
-/

namespace A015802.P7792978563750397819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A288108 (A066657 n).toNat).toNat (A326594 n).toNat

end

end A015802.P7792978563750397819

namespace A015802

/-- `C(A288108(A066657(n)), A326594(n))` -/
def P7792978563750397819.Spec : Prop :=
  ∀ n, (P7792978563750397819.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P4589412100544440944

`C(A000022(A000003(n+1)), A326594(n))`
-/

namespace A015802.P4589412100544440944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000022 (A000003 (n + 1)).toNat).toNat (A326594 n).toNat

end

end A015802.P4589412100544440944

namespace A015802

/-- `C(A000022(A000003(n+1)), A326594(n))` -/
def P4589412100544440944.Spec : Prop :=
  ∀ n, (P4589412100544440944.a n : ℤ) = A015802 n

end A015802

/-! ## A015802.P1490771213137882509

`C(A288108(A000005(n+1)), A326594(n))`
-/

namespace A015802.P1490771213137882509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A288108 (A000005 (n + 1)).toNat).toNat (A326594 n).toNat

end

end A015802.P1490771213137882509

namespace A015802

/-- `C(A288108(A000005(n+1)), A326594(n))` -/
def P1490771213137882509.Spec : Prop :=
  ∀ n, (P1490771213137882509.a n : ℤ) = A015802 n

end A015802

/-!
# A015803: Inverse of 1794th cyclotomic polynomial.

The programs for A015803, there is no canonical definition to state claims against.
-/

/-! ## A015803.P16348934239883194526

`A014906(n)*A033999(n)`
-/

namespace A015803.P16348934239883194526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014906 n * A033999 n

end

end A015803.P16348934239883194526

/-! ## A015803.P8216430016087203687

`A015947(A004906(n+1))`
-/

namespace A015803.P8216430016087203687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015947 (A004906 (n + 1)).toNat

end

end A015803.P8216430016087203687

/-! ## A015803.P4694060232382803073

`A016345(A004851(n+1))`
-/

namespace A015803.P4694060232382803073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016345 (A004851 (n + 1)).toNat

end

end A015803.P4694060232382803073

/-! ## A015803.P12455889782503226904

`A140318(A003389(n+1))`
-/

namespace A015803.P12455889782503226904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140318 (A003389 (n + 1)).toNat

end

end A015803.P12455889782503226904

/-! ## A015803.P11711598746088542704

`A016271(n)^A098083(A129439(n))`
-/

namespace A015803.P11711598746088542704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016271 n : ℚ) ^ (A098083 (A129439 n).toNat : ℤ)

end

end A015803.P11711598746088542704

/-!
# A015804: Numbers k such that phi(k) + 11 | sigma(k).

The programs for A015804, there is no canonical definition to state claims against.
-/

/-! ## A015804.P2669746006178979705

`A193580(n)*A353744(A147562(n+3))`
-/

namespace A015804.P2669746006178979705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193580 n * A353744 (A147562 (n + 3)).toNat

end

end A015804.P2669746006178979705

/-!
# A015806: Numbers k not congruent to 0 (mod 3) such that phi(k) + 4 | sigma(k).

The programs for A015806, there is no canonical definition to state claims against.
-/

/-! ## A015806.P13311989838796039798

`filter[A015793(n+1), A011655(#)]`
-/

namespace A015806.P13311989838796039798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A015806.P13311989838796039798

/-! ## A015806.P13592787839196326337

`filter[A015793(n+1), A267208(#)]`
-/

namespace A015806.P13592787839196326337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A015806.P13592787839196326337

/-! ## A015806.P10285750853097797235

`filter[A015793(n+1), A286801(#)]`
-/

namespace A015806.P10285750853097797235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286801 (f1 j).toNat = 1) n)

end

end A015806.P10285750853097797235

/-!
# A015807: Inverse of 1798th cyclotomic polynomial.

The programs for A015807, there is no canonical definition to state claims against.
-/

/-! ## A015807.P14839677692701420653

`A014908(n)*A033999(n)`
-/

namespace A015807.P14839677692701420653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014908 n * A033999 n

end

end A015807.P14839677692701420653

/-! ## A015807.P11380591274018887904

`A284499(A016993(n))^n²`
-/

namespace A015807.P11380591274018887904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284499 (A016993 n).toNat ^ n ^ 2

end

end A015807.P11380591274018887904

/-! ## A015807.P10304639627900220997

`((-1)^n)%A034190(n+2)`
-/

namespace A015807.P10304639627900220997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((-1) ^ n) (A034190 (n + 2))

end

end A015807.P10304639627900220997

/-! ## A015807.P8005989953906256948

`A016155(n)%A322348(n)`
-/

namespace A015807.P8005989953906256948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016155 n) (A322348 n)

end

end A015807.P8005989953906256948

/-! ## A015807.P18062533762367996268

`A016303(A281873(n+2))`
-/

namespace A015807.P18062533762367996268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016303 (A281873 (n + 2)).toNat

end

end A015807.P18062533762367996268

/-!
# A015809: Odd numbers k such that phi(k) | sigma_3(k).

The programs for A015809, the canonical program `A015809.P1146351289713362011` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015809 has offset 1).

The definition of A015809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015809.P5336121327836607110

`filter[A015761(n+1), gcd(2, #)]`
-/

namespace A015809.P5336121327836607110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.gcd 2 (f1 j) = 1) n)

end

end A015809.P5336121327836607110

namespace A015809

/-- `filter[A015761(n+1), gcd(2, #)]` -/
def P5336121327836607110.Spec : Prop :=
  ∀ n, P5336121327836607110.a n = A015809 (n + 1)

end A015809

/-! ## A015809.P1146351289713362011

`A015761(eq[1, A015761(n+1)%2]+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A015809

/-- `A015761(eq[1, A015761(n+1)%2]+1)` -/
def P1146351289713362011.Spec : Prop :=
  ∀ n, P1146351289713362011.a n = A015809 (n + 1)

theorem P1146351289713362011.correct : P1146351289713362011.Spec := by
  intro n
  simp only [A015809, Nat.add_sub_cancel]

end A015809

/-! ## A015809.P11171408085561943231

`filter[A015761(1+n), A379952(#)]`
-/

namespace A015809.P11171408085561943231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A015809.P11171408085561943231

namespace A015809

/-- `filter[A015761(1+n), A379952(#)]` -/
def P11171408085561943231.Spec : Prop :=
  ∀ n, P11171408085561943231.a n = A015809 (n + 1)

end A015809

/-! ## A015809.P10906455440709103687

`∩[A015761(n+1), A305635(n+1)]`
-/

namespace A015809.P10906455440709103687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015809.P10906455440709103687

namespace A015809

/-- `∩[A015761(n+1), A305635(n+1)]` -/
def P10906455440709103687.Spec : Prop :=
  ∀ n, (P10906455440709103687.a n : ℤ) = A015809 (n + 1)

end A015809

/-! ## A015809.P2636210144945341978

`record[A093178(A015761(n+1))]`
-/

namespace A015809.P2636210144945341978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A015761 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015809.P2636210144945341978

namespace A015809

/-- `record[A093178(A015761(n+1))]` -/
def P2636210144945341978.Spec : Prop :=
  ∀ n, P2636210144945341978.a n = A015809 (n + 1)

end A015809

/-! ## A015809.P17490679531344446219

`∩[A015761(n+1), A004273(n)]`
-/

namespace A015809.P17490679531344446219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015809.P17490679531344446219

namespace A015809

/-- `∩[A015761(n+1), A004273(n)]` -/
def P17490679531344446219.Spec : Prop :=
  ∀ n, (P17490679531344446219.a n : ℤ) = A015809 (n + 1)

end A015809

/-! ## A015809.P8022275399371854799

`∩[A015761(n+1), A060747(n)]`
-/

namespace A015809.P8022275399371854799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015809.P8022275399371854799

namespace A015809

/-- `∩[A015761(n+1), A060747(n)]` -/
def P8022275399371854799.Spec : Prop :=
  ∀ n, (P8022275399371854799.a n : ℤ) = A015809 (n + 1)

end A015809

/-! ## A015809.P5058950289051264168

`∩[A015761(n+1), A128201(n+1)]`
-/

namespace A015809.P5058950289051264168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015809.P5058950289051264168

namespace A015809

/-- `∩[A015761(n+1), A128201(n+1)]` -/
def P5058950289051264168.Spec : Prop :=
  ∀ n, (P5058950289051264168.a n : ℤ) = A015809 (n + 1)

end A015809

/-! ## A015809.P18404637873735139841

`filter[A015761(n+1), A000035(#)]`
-/

namespace A015809.P18404637873735139841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A015809.P18404637873735139841

namespace A015809

/-- `filter[A015761(n+1), A000035(#)]` -/
def P18404637873735139841.Spec : Prop :=
  ∀ n, P18404637873735139841.a n = A015809 (n + 1)

end A015809

/-!
# A015811: Inverse of 1802nd cyclotomic polynomial.

The programs for A015811, there is no canonical definition to state claims against.
-/

/-! ## A015811.P1033125893991303744

`A016015(lt[A016015(2*n+1), A091840(n+1)])`
-/

namespace A015811.P1033125893991303744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016015 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016015 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015811.P1033125893991303744

/-! ## A015811.P17514225261656567310

`A010054(A285803(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A015811.P17514225261656567310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010054 (A285803 (n + 1)).toNat - a (n - 1)

end

end A015811.P17514225261656567310

/-! ## A015811.P4386665277437459928

`val(A003842(n), A064137(2*n+1))-a(n-1)` with `a(0)=1`
-/

namespace A015811.P4386665277437459928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation (A003842 n).toNat (A064137 (2 * n + 1)).toNat : ℤ) - a (n - 1)

end

end A015811.P4386665277437459928

/-! ## A015811.P15747404387825132553

`A016287(n)+A000007(A246786(n+1))`
-/

namespace A015811.P15747404387825132553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016287 n + A000007 (A246786 (n + 1)).toNat

end

end A015811.P15747404387825132553

/-! ## A015811.P15454546777277414614

`A016327(n+2)+A014197(A105575(n+3))`
-/

namespace A015811.P15454546777277414614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016327 (n + 2) + A014197 (A105575 (n + 3)).toNat

end

end A015811.P15454546777277414614

/-! ## A015811.P15447084666805545179

`A016015(n)+A010815(A139843(3*(n+1)))`
-/

namespace A015811.P15447084666805545179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016015 n + A010815 (A139843 (3 * (n + 1))).toNat

end

end A015811.P15447084666805545179

/-! ## A015811.P15851940070945963444

`A016015(n)+C(n, A335479(n+1))`
-/

namespace A015811.P15851940070945963444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016015 n + (Nat.choose n (A335479 (n + 1)).toNat : ℤ)

end

end A015811.P15851940070945963444

/-! ## A015811.P8367073428929465971

`A010815(A000326(n)%A349495(n+1))`
-/

namespace A015811.P8367073428929465971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Int.tmod (A000326 n) (A349495 (n + 1))).toNat

end

end A015811.P8367073428929465971

/-! ## A015811.P15619491504722506192

`(∑[char[∑[A158057(n+1)]]]^n-1)^n`
-/

namespace A015811.P15619491504722506192
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ n : ℕ) : ℤ) - 1) ^ n

end

end A015811.P15619491504722506192

/-! ## A015811.P15496976894655898022

`A010054(A016754(n))-a(n-1)` with `a(0)=1`
-/

namespace A015811.P15496976894655898022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010054 (A016754 n).toNat - a (n - 1)

end

end A015811.P15496976894655898022

/-!
# A015812: Composite numbers k such that phi(k) + 2 | sigma(k).

The programs for A015812, there is no canonical definition to state claims against.
-/

/-! ## A015812.P12385136423074528397

`∩[A028757(n+1), A036350(n+1)]`
-/

namespace A015812.P12385136423074528397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015812.P12385136423074528397

/-! ## A015812.P9627970217505732840

`lt[2, A350256(A321648(3*n+4))]`
-/

namespace A015812.P9627970217505732840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350256 (A321648 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A015812.P9627970217505732840

/-! ## A015812.P16717090375251442257

`A036350(lt[A328499(n+1), A137161(n)]+1)`
-/

namespace A015812.P16717090375251442257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A015812.P16717090375251442257

/-! ## A015812.P16608027174394946326

`lt[A143589(3*n+2), A079901(A321648(3*n+4))]`
-/

namespace A015812.P16608027174394946326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143589 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (A321648 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015812.P16608027174394946326

/-!
# A015813: Inverse of 1804th cyclotomic polynomial.

The programs for A015813, there is no canonical definition to state claims against.
-/

/-! ## A015813.P389569210970809037

`A015901(n)^A141182(∑[3*n]+1)`
-/

namespace A015813.P389569210970809037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015901 n : ℚ) ^ (A141182 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ)

end

end A015813.P389569210970809037

/-! ## A015813.P8299129708426172654

`A015901(n)^A193070(∑[3*n]+1)²`
-/

namespace A015813.P8299129708426172654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015901 n : ℚ) ^ (A193070 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 : ℤ)

end

end A015813.P8299129708426172654

/-! ## A015813.P17244989718238949115

`A010815(A000326(n))*A016077(n)`
-/

namespace A015813.P17244989718238949115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A000326 n).toNat * A016077 n

end

end A015813.P17244989718238949115

/-! ## A015813.P15241326797601073039

`A377131(A195637(n+1))+A016077(n)`
-/

namespace A015813.P15241326797601073039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377131 (A195637 (n + 1)).toNat + A016077 n

end

end A015813.P15241326797601073039

/-! ## A015813.P2435830754205360618

`A016077(n)^A000040(A069464(n+1))`
-/

namespace A015813.P2435830754205360618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016077 n : ℚ) ^ (A000040 (A069464 (n + 1)).toNat : ℤ)

end

end A015813.P2435830754205360618

/-! ## A015813.P15573288304323984204

`A016077(n)^A000040(A069465(n+1))`
-/

namespace A015813.P15573288304323984204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016077 n : ℚ) ^ (A000040 (A069465 (n + 1)).toNat : ℤ)

end

end A015813.P15573288304323984204

/-! ## A015813.P18183906741934484538

`A015901(n)^A139250(A001263(n+1))`
-/

namespace A015813.P18183906741934484538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015901 n : ℚ) ^ (A139250 (A001263 (n + 1)).toNat : ℤ)

end

end A015813.P18183906741934484538

/-! ## A015813.P3217977352616677232

`A016077(n)^A139250(A001263(n+1))`
-/

namespace A015813.P3217977352616677232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016077 n : ℚ) ^ (A139250 (A001263 (n + 1)).toNat : ℤ)

end

end A015813.P3217977352616677232

/-! ## A015813.P6080353139188083605

`A015901(n)%A217518(A015931(3*n+2))`
-/

namespace A015813.P6080353139188083605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015901 n) (A217518 (A015931 (3 * n + 2)).toNat)

end

end A015813.P6080353139188083605

/-! ## A015813.P4423684047419491877

`A016141(n)%A119946(n)`
-/

namespace A015813.P4423684047419491877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016141 n) (A119946 n)

end

end A015813.P4423684047419491877

/-!
# A015814: Numbers k such that phi(k + 1) divides sigma(k).

The programs for A015814, the canonical program `A015814.P2308272231266712354` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015814 has offset 1).

The definition of A015814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015814.P2308272231266712354

`record[gcd(n+1, A000203(n+1)%A000010(n+2))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A015814

/-- `record[gcd(n+1, A000203(n+1)%A000010(n+2))]` -/
def P2308272231266712354.Spec : Prop :=
  ∀ n, (P2308272231266712354.a n : ℤ) = A015814 (n + 1)

theorem P2308272231266712354.correct : P2308272231266712354.Spec := by
  intro n
  simp only [A015814, Nat.add_sub_cancel]

end A015814

/-! ## A015814.P15208548123104935958

`lt[A000203(n+1)%A000010(n+2), 1]+1`
-/

namespace A015814.P15208548123104935958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000010 (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015814.P15208548123104935958

namespace A015814

/-- `lt[A000203(n+1)%A000010(n+2), 1]+1` -/
def P15208548123104935958.Spec : Prop :=
  ∀ n, (P15208548123104935958.a n : ℤ) = A015814 (n + 1)

end A015814

/-! ## A015814.P8933577999773394992

`lt[∑{d}[n+1, #]%A000010(n+2), 1]+1`
-/

namespace A015814.P8933577999773394992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) (A000010 (n + 2))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A015814.P8933577999773394992

namespace A015814

/-- `lt[∑{d}[n+1, #]%A000010(n+2), 1]+1` -/
def P8933577999773394992.Spec : Prop :=
  ∀ n, (P8933577999773394992.a n : ℤ) = A015814 (n + 1)

end A015814

/-!
# A015815: Inverse of 1806th cyclotomic polynomial.

The programs for A015815, there is no canonical definition to state claims against.
-/

/-! ## A015815.P17952060001738489552

`A014912(n)*A033999(n)`
-/

namespace A015815.P17952060001738489552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014912 n * A033999 n

end

end A015815.P17952060001738489552

/-! ## A015815.P8591869333820579090

`A014912(n)/A033999(n)^A074129(1+n)`
-/

namespace A015815.P8591869333820579090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014912 n : ℚ) / (A033999 n : ℚ) ^ (A074129 (1 + n) : ℤ)

end

end A015815.P8591869333820579090

/-! ## A015815.P3335137901747392794

`A014912(n)/A033999(n)^A323022(A400955(n+1))`
-/

namespace A015815.P3335137901747392794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014912 n : ℚ) / (A033999 n : ℚ) ^ (A323022 (A400955 (n + 1)).toNat : ℤ)

end

end A015815.P3335137901747392794

/-! ## A015815.P12744016410088283172

`A015983(A175427(n+1))`
-/

namespace A015815.P12744016410088283172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015983 (A175427 (n + 1)).toNat

end

end A015815.P12744016410088283172

/-! ## A015815.P15645066272487656972

`A015983(n)^A015951(A015951(n+3))`
-/

namespace A015815.P15645066272487656972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015983 n : ℚ) ^ (A015951 (A015951 (n + 3)).toNat : ℤ)

end

end A015815.P15645066272487656972

/-!
# A015816: Inverse of 1807th cyclotomic polynomial.

The programs for A015816, the canonical program `A015816.P14071878900550483665` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015816 has offset 0).

The definition of A015816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015816.P13742837763647822857

`C(2, A308980(n+2))`
-/

namespace A015816.P13742837763647822857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A308980 (n + 2)).toNat

end

end A015816.P13742837763647822857

namespace A015816

/-- `C(2, A308980(n+2))` -/
def P13742837763647822857.Spec : Prop :=
  ∀ n, (P13742837763647822857.a n : ℤ) = A015816 n

end A015816

/-! ## A015816.P11847976598275752198

`C(2, A308975(n+1)²)`
-/

namespace A015816.P11847976598275752198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A308975 (n + 1) ^ 2).toNat

end

end A015816.P11847976598275752198

namespace A015816

/-- `C(2, A308975(n+1)²)` -/
def P11847976598275752198.Spec : Prop :=
  ∀ n, (P11847976598275752198.a n : ℤ) = A015816 n

end A015816

/-! ## A015816.P4733105165916164522

`C(2, A308977(n+1)²)`
-/

namespace A015816.P4733105165916164522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A308977 (n + 1) ^ 2).toNat

end

end A015816.P4733105165916164522

namespace A015816

/-- `C(2, A308977(n+1)²)` -/
def P4733105165916164522.Spec : Prop :=
  ∀ n, (P4733105165916164522.a n : ℤ) = A015816 n

end A015816

/-! ## A015816.P17827201440074977051

`C(2, A308978(n+1)²)`
-/

namespace A015816.P17827201440074977051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A308978 (n + 1) ^ 2).toNat

end

end A015816.P17827201440074977051

namespace A015816

/-- `C(2, A308978(n+1)²)` -/
def P17827201440074977051.Spec : Prop :=
  ∀ n, (P17827201440074977051.a n : ℤ) = A015816 n

end A015816

/-! ## A015816.P7119183210580056120

`C(n+1, A232528(n+1))`
-/

namespace A015816.P7119183210580056120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A232528 (n + 1)).toNat

end

end A015816.P7119183210580056120

namespace A015816

/-- `C(n+1, A232528(n+1))` -/
def P7119183210580056120.Spec : Prop :=
  ∀ n, (P7119183210580056120.a n : ℤ) = A015816 n

end A015816

/-! ## A015816.P18052668641083475823

`C(2, A194899(∑[n+2]+1))`
-/

namespace A015816.P18052668641083475823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A194899 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A015816.P18052668641083475823

namespace A015816

/-- `C(2, A194899(∑[n+2]+1))` -/
def P18052668641083475823.Spec : Prop :=
  ∀ n, (P18052668641083475823.a n : ℤ) = A015816 n

end A015816

/-! ## A015816.P14071878900550483665

`round(5/log2(A157037(∑[n+2]+5)))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A015816

/-- `round(5/log2(A157037(∑[n+2]+5)))` -/
def P14071878900550483665.Spec : Prop :=
  ∀ n, P14071878900550483665.a n = A015816 n

theorem P14071878900550483665.correct : P14071878900550483665.Spec := by
  intro n
  simp only [A015816]

end A015816

/-! ## A015816.P14767016539411902471

`round(11/log2(A210511(∑[n+2]+5)))`
-/

namespace A015816.P14767016539411902471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (11 / Real.logb 2 (A210511 (∑ j ∈ Finset.range (n + 1), f1 j + 5) : ℝ))

end

end A015816.P14767016539411902471

namespace A015816

/-- `round(11/log2(A210511(∑[n+2]+5)))` -/
def P14767016539411902471.Spec : Prop :=
  ∀ n, P14767016539411902471.a n = A015816 n

end A015816

/-! ## A015816.P10380306751089698495

`A103919(∑[comp[A116508(n)]])`
-/

namespace A015816.P10380306751089698495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116508 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015816.P10380306751089698495

namespace A015816

/-- `A103919(∑[comp[A116508(n)]])` -/
def P10380306751089698495.Spec : Prop :=
  ∀ n, P10380306751089698495.a n = A015816 n

end A015816

/-! ## A015816.P1335475338900471392

`A127244(∑[comp[A367863(n)]])`
-/

namespace A015816.P1335475338900471392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367863 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015816.P1335475338900471392

namespace A015816

/-- `A127244(∑[comp[A367863(n)]])` -/
def P1335475338900471392.Spec : Prop :=
  ∀ n, P1335475338900471392.a n = A015816 n

end A015816

/-! ## A015816.P17558041779373359358

`A000007(∑[A161319(n+1)])`
-/

namespace A015816.P17558041779373359358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015816.P17558041779373359358

namespace A015816

/-- `A000007(∑[A161319(n+1)])` -/
def P17558041779373359358.Spec : Prop :=
  ∀ n, P17558041779373359358.a n = A015816 n

end A015816

/-! ## A015816.P14781311728002208050

`A001690(A045709(n+1))%2`
-/

namespace A015816.P14781311728002208050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001690 (A045709 (n + 1)).toNat) 2

end

end A015816.P14781311728002208050

namespace A015816

/-- `A001690(A045709(n+1))%2` -/
def P14781311728002208050.Spec : Prop :=
  ∀ n, P14781311728002208050.a n = A015816 n

end A015816

/-! ## A015816.P9831738305966347783

`C(A249093(n+2), A308978(A380817(n+1)))`
-/

namespace A015816.P9831738305966347783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A249093 (n + 2)).toNat (A308978 (A380817 (n + 1)).toNat).toNat

end

end A015816.P9831738305966347783

namespace A015816

/-- `C(A249093(n+2), A308978(A380817(n+1)))` -/
def P9831738305966347783.Spec : Prop :=
  ∀ n, (P9831738305966347783.a n : ℤ) = A015816 n

end A015816

/-! ## A015816.P3819689746122754510

`C(A340101(A320332(2*(n+1))), A345166(n))`
-/

namespace A015816.P3819689746122754510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A340101 (A320332 (2 * (n + 1))).toNat).toNat (A345166 n).toNat

end

end A015816.P3819689746122754510

namespace A015816

/-- `C(A340101(A320332(2*(n+1))), A345166(n))` -/
def P3819689746122754510.Spec : Prop :=
  ∀ n, (P3819689746122754510.a n : ℤ) = A015816 n

end A015816

/-! ## A015816.P3748737496933642057

`C(A062157(A380817(2*n+5)), A308978(n+1))`
-/

namespace A015816.P3748737496933642057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062157 (A380817 (2 * n + 5)).toNat).toNat (A308978 (n + 1)).toNat

end

end A015816.P3748737496933642057

namespace A015816

/-- `C(A062157(A380817(2*n+5)), A308978(n+1))` -/
def P3748737496933642057.Spec : Prop :=
  ∀ n, (P3748737496933642057.a n : ℤ) = A015816 n

end A015816

/-! ## A015816.P5745367657283682383

`C(n, comp[A366529(2*n+5)])`
-/

namespace A015816.P5745367657283682383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366529 (2 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015816.P5745367657283682383

namespace A015816

/-- `C(n, comp[A366529(2*n+5)])` -/
def P5745367657283682383.Spec : Prop :=
  ∀ n, (P5745367657283682383.a n : ℤ) = A015816 n

end A015816

/-! ## A015816.P16504713785083487500

`C(A002262(A000124(n+3)), A224813(n))`
-/

namespace A015816.P16504713785083487500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 (A000124 (n + 3)).toNat).toNat (A224813 n).toNat

end

end A015816.P16504713785083487500

namespace A015816

/-- `C(A002262(A000124(n+3)), A224813(n))` -/
def P16504713785083487500.Spec : Prop :=
  ∀ n, (P16504713785083487500.a n : ℤ) = A015816 n

end A015816

/-!
# A015817: Numbers n such that phi(n + 1) | sigma(n) for n congruent to 1 (mod 3).

The programs for A015817, there is no canonical definition to state claims against.
-/

/-! ## A015817.P4959120233509268693

`∩[A015814(n+1), A016777(n)]`
-/

namespace A015817.P4959120233509268693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015817.P4959120233509268693

/-! ## A015817.P9149175722864509829

`∩[A015814(n+1), A033627(n+1)]`
-/

namespace A015817.P9149175722864509829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015817.P9149175722864509829

/-! ## A015817.P5010908889056240459

`∩[A015814(n+1), A055047(n+1)]`
-/

namespace A015817.P5010908889056240459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015817.P5010908889056240459

/-! ## A015817.P16761812267104000436

`∩[A023444(3*n), A015814(n+1)]`
-/

namespace A015817.P16761812267104000436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015817.P16761812267104000436

/-! ## A015817.P5518828965915583947

`∩[A015814(n+1), A008619(A008458(n))]`
-/

namespace A015817.P5518828965915583947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008458 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015817.P5518828965915583947

/-!
# A015819: Numbers k such that phi(k + 3) | sigma(k).

The programs for A015819, the canonical program `A015819.P11809690103252451028` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015819 has offset 1).

The definition of A015819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1073 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015819.P11809690103252451028

`lt[A000203(n+1)%A000010(n+4), 1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A015819

/-- `lt[A000203(n+1)%A000010(n+4), 1]+1` -/
def P11809690103252451028.Spec : Prop :=
  ∀ n, (P11809690103252451028.a n : ℤ) = A015819 (n + 1)

theorem P11809690103252451028.correct : P11809690103252451028.Spec := by
  intro n
  simp only [A015819, Nat.add_sub_cancel]

end A015819

/-! ## A015819.P1496082295858325773

`eq[A219204(n), A302771(n)]`
-/

namespace A015819.P1496082295858325773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219204 (n + 129)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015819.P1496082295858325773

namespace A015819

/-- `eq[A219204(n), A302771(n)]` -/
def P1496082295858325773.Spec : Prop :=
  ∀ n, (P1496082295858325773.a n : ℤ) = A015819 (n + 1)

end A015819

/-! ## A015819.P14252218268933079103

`eq[atan(A000925(n)), A219204(n)]`
-/

namespace A015819.P14252218268933079103
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A000925 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219204 (n + 129)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A015819.P14252218268933079103

namespace A015819

/-- `eq[atan(A000925(n)), A219204(n)]` -/
def P14252218268933079103.Spec : Prop :=
  ∀ n, (P14252218268933079103.a n : ℤ) = A015819 (n + 1)

end A015819

/-! ## A015819.P6863067607332854850

`eq[atan(A004018(n)), A219204(n)]`
-/

namespace A015819.P6863067607332854850
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A004018 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219204 (n + 129)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A015819.P6863067607332854850

namespace A015819

/-- `eq[atan(A004018(n)), A219204(n)]` -/
def P6863067607332854850.Spec : Prop :=
  ∀ n, (P6863067607332854850.a n : ℤ) = A015819 (n + 1)

end A015819

/-! ## A015819.P3797197294801418400

`eq[atan(A104794(n)), A219204(n)]`
-/

namespace A015819.P3797197294801418400
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A104794 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219204 (n + 129)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A015819.P3797197294801418400

namespace A015819

/-- `eq[atan(A104794(n)), A219204(n)]` -/
def P3797197294801418400.Spec : Prop :=
  ∀ n, (P3797197294801418400.a n : ℤ) = A015819 (n + 1)

end A015819

/-!
# A015820: Numbers k such that phi(k + 4) | sigma(k).

The programs for A015820, the canonical program `A015820.P11788765630809446508` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015820 has offset 1).

The definition of A015820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015820.P11788765630809446508

`lt[A000203(n+1)%A000010(n+5), 1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A015820

/-- `lt[A000203(n+1)%A000010(n+5), 1]+1` -/
def P11788765630809446508.Spec : Prop :=
  ∀ n, (P11788765630809446508.a n : ℤ) = A015820 (n + 1)

theorem P11788765630809446508.correct : P11788765630809446508.Spec := by
  intro n
  simp only [A015820, Nat.add_sub_cancel]

end A015820

/-!
# A015821: Numbers k such that phi(k + 5) | sigma(k).

The programs for A015821, there is no canonical definition to state claims against.
-/

/-! ## A015821.P9050314923269743768

`or(A276867(A058000(n+1)), A276879(n+1))`
-/

namespace A015821.P9050314923269743768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276867 (A058000 (n + 1)).toNat) (A276879 (n + 1))

end

end A015821.P9050314923269743768

/-!
# A015823: Numbers k such that phi(k + 7) | sigma(k).

The programs for A015823, the canonical program `A015823.P14101664896886442128` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015823 has offset 1).

The definition of A015823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 946 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015823.P14101664896886442128

`lt[A000203(n+1)%A000010(n+8), 1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A015823

/-- `lt[A000203(n+1)%A000010(n+8), 1]+1` -/
def P14101664896886442128.Spec : Prop :=
  ∀ n, (P14101664896886442128.a n : ℤ) = A015823 (n + 1)

theorem P14101664896886442128.correct : P14101664896886442128.Spec := by
  intro n
  simp only [A015823, Nat.add_sub_cancel]

end A015823

/-!
# A015824: Inverse of 1815th cyclotomic polynomial.

The programs for A015824, there is no canonical definition to state claims against.
-/

/-! ## A015824.P7282972676691453031

`A015494(n-A289122(n))`
-/

namespace A015824.P7282972676691453031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015494 ((n : ℤ) - A289122 n).toNat

end

end A015824.P7282972676691453031

/-! ## A015824.P14920553712951764794

`A011653(n)*A015582(n)`
-/

namespace A015824.P14920553712951764794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011653 n * A015582 n

end

end A015824.P14920553712951764794

/-! ## A015824.P6594854081327393179

`A011653(n)%A109014(n)`
-/

namespace A015824.P6594854081327393179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011653 n) (A109014 n)

end

end A015824.P6594854081327393179

/-! ## A015824.P11211889743864105444

`∑[A014020(n)]*A011653(n)`
-/

namespace A015824.P11211889743864105444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011653 n

end

end A015824.P11211889743864105444

/-! ## A015824.P8613074028706935111

`A015920(A097546(n))`
-/

namespace A015824.P8613074028706935111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015920 (A097546 n).toNat

end

end A015824.P8613074028706935111

/-!
# A015826: Inverse of 1817th cyclotomic polynomial.

The programs for A015826, there is no canonical definition to state claims against.
-/

/-! ## A015826.P3130002590443335325

`A015012(A022838(n+1)-A214701(n+1))`
-/

namespace A015826.P3130002590443335325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015012 (A022838 (n + 1) - A214701 (n + 1)).toNat

end

end A015826.P3130002590443335325

/-!
# A015827: Numbers k such that phi(k + 9) | sigma(k).

The programs for A015827, there is no canonical definition to state claims against.
-/

/-! ## A015827.P9323208772065099686

`∑[A358136(A136682(n+1))]+2`
-/

namespace A015827.P9323208772065099686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358136 (A136682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A015827.P9323208772065099686

/-! ## A015827.P10667198462607679490

`record[or(A003285(n+1), A198466(n+1))]`
-/

namespace A015827.P10667198462607679490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003285 (n + 1)) (A198466 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015827.P10667198462607679490

/-! ## A015827.P12151199004181522700

`lt[A231931(2*(n+2)), A252867(A358488(n+1))]`
-/

namespace A015827.P12151199004181522700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231931 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252867 (A358488 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015827.P12151199004181522700

/-! ## A015827.P6350669843744780305

`eq[A010055(A179937(n+1)), A014963(3*n+5)]`
-/

namespace A015827.P6350669843744780305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A179937 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015827.P6350669843744780305

/-!
# A015828: Inverse of 1819th cyclotomic polynomial.

The programs for A015828, there is no canonical definition to state claims against.
-/

/-! ## A015828.P13612984835089876199

`A015930(floor(sqrt(A161925(n+1))))`
-/

namespace A015828.P13612984835089876199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015930 (Int.sqrt (A161925 (n + 1))).toNat

end

end A015828.P13612984835089876199

/-! ## A015828.P16026166993431221736

`A015862(comp[A326683(2*n+3)+A198778(3*n+2)])`
-/

namespace A015828.P16026166993431221736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 (2 * n + 3) + A198778 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015862 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015828.P16026166993431221736

/-! ## A015828.P16141984317514944938

`A015862(comp[A198778(3*n+2)+A198778(3*n+2)])`
-/

namespace A015828.P16141984317514944938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (3 * n + 2) + A198778 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015862 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015828.P16141984317514944938

/-! ## A015828.P10739778854743134431

`A015862(comp[A198778(3*n+2)+12])`
-/

namespace A015828.P10739778854743134431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (3 * n + 2) + 12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015862 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015828.P10739778854743134431

/-! ## A015828.P9120343010768925518

`A015930(A275949(3*n+2)+comp[A198778(3*n+2)])`
-/

namespace A015828.P9120343010768925518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015930 (A275949 (3 * n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A015828.P9120343010768925518

/-! ## A015828.P3865666961873049131

`C(2, A326549(2+n))`
-/

namespace A015828.P3865666961873049131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326549 (2 + n)).toNat

end

end A015828.P3865666961873049131

/-! ## A015828.P11766807838714194400

`C(2, ∑[A326541(2+n)])`
-/

namespace A015828.P11766807838714194400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 (2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015828.P11766807838714194400

/-! ## A015828.P8522174494592114911

`C(2, ∑[A326543(n+2)])`
-/

namespace A015828.P8522174494592114911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326543 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015828.P8522174494592114911

/-! ## A015828.P4199466127522949721

`C(n, comp[A230996(n+4)])`
-/

namespace A015828.P4199466127522949721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230996 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015828.P4199466127522949721

/-! ## A015828.P10111176108084073566

`∑{d}[A001045(floor((n+3)/5))+1, #]%2`
-/

namespace A015828.P10111176108084073566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ⌊(n + 3 : ℚ) / 5⌋.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, d) % 2

end

end A015828.P10111176108084073566

/-! ## A015828.P14069635971889450213

`col(A211669(∑[A024619(n+5)]))`
-/

namespace A015828.P14069635971889450213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A211669 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A015828.P14069635971889450213

/-! ## A015828.P10347227578169632619

`A010054(∏[A284259(3*n+4)])`
-/

namespace A015828.P10347227578169632619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015828.P10347227578169632619

/-! ## A015828.P9695599425272877564

`A208575(∏[A284259(3*n+4)])`
-/

namespace A015828.P9695599425272877564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208575 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015828.P9695599425272877564

/-! ## A015828.P5050944183672009047

`A010060(∑[A023531(3*(n+1))]!)`
-/

namespace A015828.P5050944183672009047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A015828.P5050944183672009047

/-! ## A015828.P1268726509064400062

`A010060(∑[A010054(3*n+4)]!)`
-/

namespace A015828.P1268726509064400062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A015828.P1268726509064400062

/-! ## A015828.P14948678248314904930

`C(A303539(n+1), A326545(n+3)²)`
-/

namespace A015828.P14948678248314904930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A303539 (n + 1)).toNat (A326545 (n + 3) ^ 2).toNat

end

end A015828.P14948678248314904930

/-! ## A015828.P1735880725015612261

`C(A106244(n), A080681(A106244(n)))`
-/

namespace A015828.P1735880725015612261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106244 n).toNat (A080681 (A106244 n).toNat).toNat

end

end A015828.P1735880725015612261

/-! ## A015828.P1224019632491687481

`C(A327884(A380822(n+1)), A048037(n+1))`
-/

namespace A015828.P1224019632491687481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327884 (A380822 (n + 1)).toNat).toNat (A048037 (n + 1)).toNat

end

end A015828.P1224019632491687481

/-! ## A015828.P14647986034837175123

`C(A299038(n+2), A326543(A160413(2*(n+2))))`
-/

namespace A015828.P14647986034837175123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A299038 (n + 2)).toNat (A326543 (A160413 (2 * (n + 2))).toNat).toNat

end

end A015828.P14647986034837175123

/-! ## A015828.P12099660952167292489

`A010060(∏[A010054(3*n+4)*A111891(n+1)+1])`
-/

namespace A015828.P12099660952167292489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 4) * A111891 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015828.P12099660952167292489

/-!
# A015829: Inverse of 1820th cyclotomic polynomial.

The programs for A015829, there is no canonical definition to state claims against.
-/

/-! ## A015829.P14676756854895410452

`A014919(A025480(n))*A059841(n)`
-/

namespace A015829.P14676756854895410452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014919 (A025480 n).toNat * A059841 n

end

end A015829.P14676756854895410452

/-! ## A015829.P6748426294818454991

`A014919(A003602(n+1)-1)*A059841(n)`
-/

namespace A015829.P6748426294818454991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014919 (A003602 (n + 1) - 1).toNat * A059841 n

end

end A015829.P6748426294818454991

/-! ## A015829.P13197232242037821909

`A016334(n)%A242465(n)`
-/

namespace A015829.P13197232242037821909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016334 n) (A242465 n)

end

end A015829.P13197232242037821909

/-! ## A015829.P850999736932581347

`A016334(n)^A384274(A004525(n+3))`
-/

namespace A015829.P850999736932581347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016334 n : ℚ) ^ (A384274 (A004525 (n + 3)).toNat : ℤ)

end

end A015829.P850999736932581347

/-! ## A015829.P3664109591503664739

`A016334(A059029(n))`
-/

namespace A015829.P3664109591503664739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016334 (A059029 n).toNat

end

end A015829.P3664109591503664739

/-!
# A015834: Numbers k such that phi(k) | sigma(k + 1).

The programs for A015834, the canonical program `A015834.P6187228522220576603` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015834 has offset 1).

The definition of A015834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015834.P6187228522220576603

`record[gcd(n+1, A000203(n+2)%A000010(n+1))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A015834

/-- `record[gcd(n+1, A000203(n+2)%A000010(n+1))]` -/
def P6187228522220576603.Spec : Prop :=
  ∀ n, (P6187228522220576603.a n : ℤ) = A015834 (n + 1)

theorem P6187228522220576603.correct : P6187228522220576603.Spec := by
  intro n
  simp only [A015834, Nat.add_sub_cancel]

end A015834

/-! ## A015834.P6267882013675484057

`lt[A000203(n+2)%A000010(n+1), 1]+1`
-/

namespace A015834.P6267882013675484057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015834.P6267882013675484057

namespace A015834

/-- `lt[A000203(n+2)%A000010(n+1), 1]+1` -/
def P6267882013675484057.Spec : Prop :=
  ∀ n, (P6267882013675484057.a n : ℤ) = A015834 (n + 1)

end A015834

/-! ## A015834.P2938362431973224272

`lt[A306458(A179937(n+1)), A092261(n+1)]`
-/

namespace A015834.P2938362431973224272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306458 (A179937 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015834.P2938362431973224272

namespace A015834

/-- `lt[A306458(A179937(n+1)), A092261(n+1)]` -/
def P2938362431973224272.Spec : Prop :=
  ∀ n, (P2938362431973224272.a n : ℤ) = A015834 (n + 1)

end A015834

/-! ## A015834.P15645760345746186967

`eq[(n+1)/∏{p}[n+1, #], A323410(A197672(n+1))]`
-/

namespace A015834.P15645760345746186967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323410 (A197672 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A015834.P15645760345746186967

namespace A015834

/-- `eq[(n+1)/∏{p}[n+1, #], A323410(A197672(n+1))]` -/
def P15645760345746186967.Spec : Prop :=
  ∀ n, (P15645760345746186967.a n : ℤ) = A015834 (n + 1)

end A015834

/-! ## A015834.P4696573403589781847

`lt[A169991(n), A010553(A067410(n+2))]`
-/

namespace A015834.P4696573403589781847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169991 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A067410 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015834.P4696573403589781847

namespace A015834

/-- `lt[A169991(n), A010553(A067410(n+2))]` -/
def P4696573403589781847.Spec : Prop :=
  ∀ n, (P4696573403589781847.a n : ℤ) = A015834 (n + 1)

end A015834

/-!
# A015835: Inverse of 1826th cyclotomic polynomial.

The programs for A015835, there is no canonical definition to state claims against.
-/

/-! ## A015835.P16945915201332393443

`A014922(n)*A033999(n)`
-/

namespace A015835.P16945915201332393443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014922 n * A033999 n

end

end A015835.P16945915201332393443

/-! ## A015835.P11090896894752530682

`char[A335478(A304861(2*n+1)+1)]-a(n-1)` with `a(0)=1`
-/

namespace A015835.P11090896894752530682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335478 (A304861 (2 * n + 1) + 1).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - a (n - 1)

end

end A015835.P11090896894752530682

/-! ## A015835.P12976585503331034557

`A015967(n)^∑[A024770(n+1)]`
-/

namespace A015835.P12976585503331034557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015967 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A015835.P12976585503331034557

/-! ## A015835.P14591062327819725068

`A015967(n)^(A183662(n+1)+1)`
-/

namespace A015835.P14591062327819725068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015967 n : ℚ) ^ (A183662 (n + 1) + 1 : ℤ)

end

end A015835.P14591062327819725068

/-! ## A015835.P15340773757006022070

`A010815(A317176(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A015835.P15340773757006022070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010815 (A317176 (n + 1)).toNat * a (n - 1)

end

end A015835.P15340773757006022070

/-! ## A015835.P16865796157223392266

`A016275(n)^A273502(A161680(n))`
-/

namespace A015835.P16865796157223392266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (A273502 (A161680 n).toNat : ℤ)

end

end A015835.P16865796157223392266

/-! ## A015835.P352924098182440649

`A354344(A001263(n+1))+A016231(n)`
-/

namespace A015835.P352924098182440649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354344 (A001263 (n + 1)).toNat + A016231 n

end

end A015835.P352924098182440649

/-! ## A015835.P6749949815827723620

`(A023531(A081579(n))+1)*A016143(n)`
-/

namespace A015835.P6749949815827723620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023531 (A081579 n).toNat + 1) * A016143 n

end

end A015835.P6749949815827723620

/-! ## A015835.P15294625158755532213

`A016275(n)^A000040(A003506(n+1))`
-/

namespace A015835.P15294625158755532213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (A000040 (A003506 (n + 1)).toNat : ℤ)

end

end A015835.P15294625158755532213

/-! ## A015835.P8447065517371686499

`A016275(n)^A156782(A240920(n+1))`
-/

namespace A015835.P8447065517371686499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (A156782 (A240920 (n + 1)).toNat : ℤ)

end

end A015835.P8447065517371686499

/-!
# A015836: Inverse of 1827th cyclotomic polynomial.

The programs for A015836, there is no canonical definition to state claims against.
-/

/-! ## A015836.P9812294855898875817

`A015962(n)^A015965(A015913(n+1))`
-/

namespace A015836.P9812294855898875817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015962 n : ℚ) ^ (A015965 (A015913 (n + 1)).toNat : ℤ)

end

end A015836.P9812294855898875817

/-! ## A015836.P1871278109370519523

`A015962(n)^A250120(A160974(n+1))`
-/

namespace A015836.P1871278109370519523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015962 n : ℚ) ^ (A250120 (A160974 (n + 1)).toNat : ℤ)

end

end A015836.P1871278109370519523

/-! ## A015836.P16389129130543178679

`A007318(A329315(1+n))*A015962(n)`
-/

namespace A015836.P16389129130543178679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A329315 (1 + n)).toNat * A015962 n

end

end A015836.P16389129130543178679

/-! ## A015836.P14472405563100686216

`A015962(n)^A015957(A054504(n+1))`
-/

namespace A015836.P14472405563100686216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015962 n : ℚ) ^ (A015957 (A054504 (n + 1)).toNat : ℤ)

end

end A015836.P14472405563100686216

/-! ## A015836.P10746152333977726901

`A015962(n)^A015955(A305749(n+1))`
-/

namespace A015836.P10746152333977726901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015962 n : ℚ) ^ (A015955 (A305749 (n + 1)).toNat : ℤ)

end

end A015836.P10746152333977726901

/-! ## A015836.P275005152353826124

`A015962(n)^A015965(A015924(2*(n+1)))`
-/

namespace A015836.P275005152353826124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015962 n : ℚ) ^ (A015965 (A015924 (2 * (n + 1))).toNat : ℤ)

end

end A015836.P275005152353826124

/-! ## A015836.P11909115592336334368

`A015962(n)^A015951(A002113(3*n+2))`
-/

namespace A015836.P11909115592336334368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015962 n : ℚ) ^ (A015951 (A002113 (3 * n + 2)).toNat : ℤ)

end

end A015836.P11909115592336334368

/-! ## A015836.P10722497511854331156

`A015962(n)%(A323437(n+3)+1)`
-/

namespace A015836.P10722497511854331156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015962 n) (A323437 (n + 3) + 1)

end

end A015836.P10722497511854331156

/-! ## A015836.P7092589559893126134

`A015962(n)^A015965(A015984(n))`
-/

namespace A015836.P7092589559893126134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015962 n : ℚ) ^ (A015965 (A015984 n).toNat : ℤ)

end

end A015836.P7092589559893126134

/-! ## A015836.P3557268308242548267

`A015962(n)^A015965(A015982(n+1))`
-/

namespace A015836.P3557268308242548267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015962 n : ℚ) ^ (A015965 (A015982 (n + 1)).toNat : ℤ)

end

end A015836.P3557268308242548267

/-!
# A015837: Numbers k such that phi(k) | sigma(k + 2).

The programs for A015837, the canonical program `A015837.P10061482123831038346` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015837 has offset 1).

The definition of A015837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015837.P10061482123831038346

`lt[A000203(n+3)%A000010(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A015837

/-- `lt[A000203(n+3)%A000010(n+1), 1]+1` -/
def P10061482123831038346.Spec : Prop :=
  ∀ n, (P10061482123831038346.a n : ℤ) = A015837 (n + 1)

theorem P10061482123831038346.correct : P10061482123831038346.Spec := by
  intro n
  simp only [A015837, Nat.add_sub_cancel]

end A015837

/-!
# A015838: Inverse of 1829th cyclotomic polynomial.

The programs for A015838, there is no canonical definition to state claims against.
-/

/-! ## A015838.P7448344960256171654

`A014712(A194640(n)-A178334(n))`
-/

namespace A015838.P7448344960256171654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014712 (A194640 n - A178334 n).toNat

end

end A015838.P7448344960256171654

/-! ## A015838.P3169423463351872531

`A015546(∑[char[A347457(n+1)]])`
-/

namespace A015838.P3169423463351872531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015546 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015838.P3169423463351872531

/-! ## A015838.P16232148733622263841

`A010892(round(∑[A379678(n+2)]/2))`
-/

namespace A015838.P16232148733622263841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379678 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)).toNat

end

end A015838.P16232148733622263841

/-! ## A015838.P2289518846993637965

`∑[A010815(∑[A195925(n+1)])]`
-/

namespace A015838.P2289518846993637965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195925 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015838.P2289518846993637965

/-! ## A015838.P13724260613469391162

`∑[A133985(A265394(3*(n+1))-A338359(n+1))]`
-/

namespace A015838.P13724260613469391162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 (A265394 (3 * (n + 1)) - A338359 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015838.P13724260613469391162

/-! ## A015838.P8029161335691232283

`(A366847(1+n)+n)%2`
-/

namespace A015838.P8029161335691232283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366847 (1 + n) + (n : ℤ)) 2

end

end A015838.P8029161335691232283

/-! ## A015838.P14709342836090055274

`A260452(floor(sqrt(n+5))!)%3`
-/

namespace A015838.P14709342836090055274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260452 (Nat.factorial (Nat.sqrt (n + 5)))) 3

end

end A015838.P14709342836090055274

/-! ## A015838.P11847073499031671440

`round(sqrt(2/(log2(A107802(n+1))+1)))`
-/

namespace A015838.P11847073499031671440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 / (Real.logb 2 (A107802 (n + 1) : ℝ) + 1)))

end

end A015838.P11847073499031671440

/-! ## A015838.P7460962260282103726

`∑[19%gcd(31, A275741(n+2)*n)]%2`
-/

namespace A015838.P7460962260282103726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 % Int.gcd 31 (A275741 (n + 2) * (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A015838.P7460962260282103726

/-! ## A015838.P11329788742460458194

`A050326(∏[A152847(n)])`
-/

namespace A015838.P11329788742460458194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015838.P11329788742460458194

/-!
# A015839: Inverse of 1830th cyclotomic polynomial.

The programs for A015839, there is no canonical definition to state claims against.
-/

/-! ## A015839.P15454301673354211978

`A016139(n)+C(2, A167790(n+1))`
-/

namespace A015839.P15454301673354211978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016139 n + (Nat.choose 2 (A167790 (n + 1)).toNat : ℤ)

end

end A015839.P15454301673354211978

/-! ## A015839.P13962429323428941705

`A016126(∑[A144064(n)])*A016139(n)`
-/

namespace A015839.P13962429323428941705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016126 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A016139 n

end

end A015839.P13962429323428941705

/-! ## A015839.P10786944993281034689

`A016139(n)*A016272(∑[A144064(n)])`
-/

namespace A015839.P10786944993281034689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016139 n * A016272 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015839.P10786944993281034689

/-! ## A015839.P8742311218347444667

`A014562(A122522(2+n))*A014579(n)`
-/

namespace A015839.P8742311218347444667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014562 (A122522 (2 + n)).toNat * A014579 n

end

end A015839.P8742311218347444667

/-! ## A015839.P7358650042750782160

`A016199(n)^A165469(A273927(n+1)+1)`
-/

namespace A015839.P7358650042750782160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016199 n : ℚ) ^ (A165469 (A273927 (n + 1) + 1).toNat : ℤ)

end

end A015839.P7358650042750782160

/-! ## A015839.P10246796223075148636

`A016126(n)^A167790(n+1)*A016139(n)`
-/

namespace A015839.P10246796223075148636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016126 n : ℚ) ^ (A167790 (n + 1) : ℤ) * (A016139 n : ℚ)

end

end A015839.P10246796223075148636

/-! ## A015839.P4174572979754334000

`A016128(n)^A167790(n+1)*A016139(n)`
-/

namespace A015839.P4174572979754334000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016128 n : ℚ) ^ (A167790 (n + 1) : ℤ) * (A016139 n : ℚ)

end

end A015839.P4174572979754334000

/-! ## A015839.P17207861288408078852

`A016272(n+2)^A167790(n+1)*A016139(n)`
-/

namespace A015839.P17207861288408078852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016272 (n + 2) : ℚ) ^ (A167790 (n + 1) : ℤ) * (A016139 n : ℚ)

end

end A015839.P17207861288408078852

/-! ## A015839.P9244719000471554695

`A016199(lt[A036263(3*n+4)², A359829(n+5)])`
-/

namespace A015839.P9244719000471554695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (3 * n + 4) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359829 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016199 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015839.P9244719000471554695

/-! ## A015839.P12334145574106404469

`A014562(A000009(n))*A014579(n)`
-/

namespace A015839.P12334145574106404469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014562 (A000009 n).toNat * A014579 n

end

end A015839.P12334145574106404469

/-!
# A015842: Inverse of 1833rd cyclotomic polynomial.

The programs for A015842, there is no canonical definition to state claims against.
-/

/-! ## A015842.P18037920924490708153

`A016076(A175427(n+1))`
-/

namespace A015842.P18037920924490708153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016076 (A175427 (n + 1)).toNat

end

end A015842.P18037920924490708153

/-! ## A015842.P12814910847423742449

`A016076(n)%A138125(n+1)`
-/

namespace A015842.P12814910847423742449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016076 n) (A138125 (n + 1))

end

end A015842.P12814910847423742449

/-! ## A015842.P15108356715128712760

`A016310(n)%A138125(n+1)`
-/

namespace A015842.P15108356715128712760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016310 n) (A138125 (n + 1))

end

end A015842.P15108356715128712760

/-! ## A015842.P8029470078721291357

`A016310(n)+A000007(A367211(n+1))`
-/

namespace A015842.P8029470078721291357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016310 n + A000007 (A367211 (n + 1)).toNat

end

end A015842.P8029470078721291357

/-! ## A015842.P2410681519020251613

`A016076(n)^A007306(A000124(3*n+2))`
-/

namespace A015842.P2410681519020251613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016076 n : ℚ) ^ (A007306 (A000124 (3 * n + 2)).toNat : ℤ)

end

end A015842.P2410681519020251613

/-!
# A015843: Numbers k such that phi(k) | sigma(k + 5).

The programs for A015843, the canonical program `A015843.P15126880474820996004` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015843 has offset 1).

The definition of A015843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015843.P15126880474820996004

`lt[A000203(n+6)%A000010(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A015843

/-- `lt[A000203(n+6)%A000010(n+1), 1]+1` -/
def P15126880474820996004.Spec : Prop :=
  ∀ n, (P15126880474820996004.a n : ℤ) = A015843 (n + 1)

theorem P15126880474820996004.correct : P15126880474820996004.Spec := by
  intro n
  simp only [A015843, Nat.add_sub_cancel]

end A015843

/-! ## A015843.P16707704591508203776

`lt[A000040(n+1), A163336(A297171(n+1))]`
-/

namespace A015843.P16707704591508203776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A297171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015843.P16707704591508203776

namespace A015843

/-- `lt[A000040(n+1), A163336(A297171(n+1))]` -/
def P16707704591508203776.Spec : Prop :=
  ∀ n, (P16707704591508203776.a n : ℤ) = A015843 (n + 1)

end A015843

/-! ## A015843.P4885343619478524363

`lt[A015841(n+1), A163336(A297171(n+1))]`
-/

namespace A015843.P4885343619478524363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A297171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015843.P4885343619478524363

namespace A015843

/-- `lt[A015841(n+1), A163336(A297171(n+1))]` -/
def P4885343619478524363.Spec : Prop :=
  ∀ n, (P4885343619478524363.a n : ℤ) = A015843 (n + 1)

end A015843

/-! ## A015843.P5919116492825170394

`lt[A015859(n+1), A163336(A297171(n+1))]`
-/

namespace A015843.P5919116492825170394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A297171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015843.P5919116492825170394

namespace A015843

/-- `lt[A015859(n+1), A163336(A297171(n+1))]` -/
def P5919116492825170394.Spec : Prop :=
  ∀ n, (P5919116492825170394.a n : ℤ) = A015843 (n + 1)

end A015843

/-! ## A015843.P8629313501561697591

`lt[A015860(n+1), A163336(A297171(n+1))]`
-/

namespace A015843.P8629313501561697591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A297171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015843.P8629313501561697591

namespace A015843

/-- `lt[A015860(n+1), A163336(A297171(n+1))]` -/
def P8629313501561697591.Spec : Prop :=
  ∀ n, (P8629313501561697591.a n : ℤ) = A015843 (n + 1)

end A015843

/-!
# A015846: Inverse of 1837th cyclotomic polynomial.

The programs for A015846, there is no canonical definition to state claims against.
-/

/-! ## A015846.P8276551701271627665

`A015802(A004524(A248635(n+1))+3)`
-/

namespace A015846.P8276551701271627665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015802 (A004524 (A248635 (n + 1)).toNat + 3).toNat

end

end A015846.P8276551701271627665

/-! ## A015846.P7700298151337727408

`C(∑[n]%2, A326596(n))`
-/

namespace A015846.P7700298151337727408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∑ j ∈ Finset.range (n + 1), f1 j) % 2) (A326596 n).toNat

end

end A015846.P7700298151337727408

/-! ## A015846.P17785405304542703064

`A000035(2^floor((n+1)/12))`
-/

namespace A015846.P17785405304542703064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n + 1 : ℚ) / 12⌋ : ℤ))).toNat

end

end A015846.P17785405304542703064

/-! ## A015846.P11596342953661777225

`floor(3/(1+A326492(floor((n+1)/3))))`
-/

namespace A015846.P11596342953661777225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / (1 + A326492 ⌊(n + 1 : ℚ) / 3⌋.toNat : ℚ)⌋

end

end A015846.P11596342953661777225

/-! ## A015846.P15326687484567730591

`A271592(C(∑[char[6*n+5]], 2)+1)`
-/

namespace A015846.P15326687484567730591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)

end

end A015846.P15326687484567730591

/-! ## A015846.P4556346029347554000

`C(n, comp[A367397(xor(5, 2*n)+1)-1])`
-/

namespace A015846.P4556346029347554000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367397 (Nat.xor 5 (2 * n) + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015846.P4556346029347554000

/-! ## A015846.P17817405005505552399

`C(A053831(A095205(n)), n)`
-/

namespace A015846.P17817405005505552399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053831 (A095205 n).toNat).toNat n

end

end A015846.P17817405005505552399

/-! ## A015846.P18157503455459922587

`C(A326596(n), ∑[A326596(n)])`
-/

namespace A015846.P18157503455459922587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A326596 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015846.P18157503455459922587

/-! ## A015846.P15717506132403953254

`A000007(n*A131981(n+1))`
-/

namespace A015846.P15717506132403953254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A131981 (n + 1)).toNat

end

end A015846.P15717506132403953254

/-! ## A015846.P12200319259829063966

`A322175(n*A131981(n+1))`
-/

namespace A015846.P12200319259829063966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322175 ((n : ℤ) * A131981 (n + 1)).toNat

end

end A015846.P12200319259829063966

/-! ## A015846.P4710163817271477821

`A000120(C(A033762(n), A326596(n)))`
-/

namespace A015846.P4710163817271477821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A033762 n).toNat (A326596 n).toNat)

end

end A015846.P4710163817271477821

/-! ## A015846.P4885985766649802581

`A010060(C(A033762(n), A326596(n)))`
-/

namespace A015846.P4885985766649802581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose (A033762 n).toNat (A326596 n).toNat)

end

end A015846.P4885985766649802581

/-! ## A015846.P8798369931052362032

`A390648(A297041(n+2)^A001523(n))`
-/

namespace A015846.P8798369931052362032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390648 (SequenceMachineLib.roundAway ((A297041 (n + 2) : ℚ) ^ (A001523 n : ℤ))).toNat

end

end A015846.P8798369931052362032

/-! ## A015846.P4026086942777370064

`C(A030363(A001055(n+1)), A326596(n))`
-/

namespace A015846.P4026086942777370064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A030363 (A001055 (n + 1)).toNat).toNat (A326596 n).toNat

end

end A015846.P4026086942777370064

/-! ## A015846.P9610500171883028954

`C(A264388(A036036(n+1)), A326596(n))`
-/

namespace A015846.P9610500171883028954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A264388 (A036036 (n + 1)).toNat).toNat (A326596 n).toNat

end

end A015846.P9610500171883028954

/-! ## A015846.P14541154784682987090

`C(A001462(n+1), A194410(A001462(n+1)))`
-/

namespace A015846.P14541154784682987090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001462 (n + 1)).toNat (A194410 (A001462 (n + 1)).toNat).toNat

end

end A015846.P14541154784682987090

/-! ## A015846.P16398344980147567012

`C(A059998(A331910(2*n+3)), A326596(n))`
-/

namespace A015846.P16398344980147567012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059998 (A331910 (2 * n + 3)).toNat).toNat (A326596 n).toNat

end

end A015846.P16398344980147567012

/-! ## A015846.P12156462614888292077

`A355688(2*(n+1))^A013941(A100881(n))`
-/

namespace A015846.P12156462614888292077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355688 (2 * (n + 1)) : ℚ) ^ (A013941 (A100881 n).toNat : ℤ)

end

end A015846.P12156462614888292077

/-! ## A015846.P8134346268516572394

`C(n, comp[A079467(n+4)])`
-/

namespace A015846.P8134346268516572394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079467 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015846.P8134346268516572394

/-! ## A015846.P599233454682924852

`floor(1/∑[A110981(n+1)])`
-/

namespace A015846.P599233454682924852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A015846.P599233454682924852

/-!
# A015847: Numbers k such that phi(k + 4) | sigma(k) for k not congruent to 0 (mod 3).

The programs for A015847, the canonical program `A015847.P12490505763805221842` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015847 has offset 1).

The definition of A015847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9627 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015847.P12490505763805221842

`A015820(eq[1, gcd(3, A015820(n+1))]+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A015847

/-- `A015820(eq[1, gcd(3, A015820(n+1))]+1)` -/
def P12490505763805221842.Spec : Prop :=
  ∀ n, P12490505763805221842.a n = A015847 (n + 1)

theorem P12490505763805221842.correct : P12490505763805221842.Spec := by
  intro n
  simp only [A015847, Nat.add_sub_cancel]

end A015847

/-! ## A015847.P14345618072670193479

`record[A106610(A015820(1+n))]`
-/

namespace A015847.P14345618072670193479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A015820 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015847.P14345618072670193479

namespace A015847

/-- `record[A106610(A015820(1+n))]` -/
def P14345618072670193479.Spec : Prop :=
  ∀ n, P14345618072670193479.a n = A015847 (n + 1)

end A015847

/-! ## A015847.P10247647385730893416

`∩[A015820(n+1), A047261(n+1)]`
-/

namespace A015847.P10247647385730893416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015847.P10247647385730893416

namespace A015847

/-- `∩[A015820(n+1), A047261(n+1)]` -/
def P10247647385730893416.Spec : Prop :=
  ∀ n, (P10247647385730893416.a n : ℤ) = A015847 (n + 1)

end A015847

/-! ## A015847.P9729400310992333129

`∩[A015820(n+1), A134191(n+1)]`
-/

namespace A015847.P9729400310992333129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015847.P9729400310992333129

namespace A015847

/-- `∩[A015820(n+1), A134191(n+1)]` -/
def P9729400310992333129.Spec : Prop :=
  ∀ n, (P9729400310992333129.a n : ℤ) = A015847 (n + 1)

end A015847

/-! ## A015847.P11105214660357154981

`∩[A001651(n+1), A015820(n+1)]`
-/

namespace A015847.P11105214660357154981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015847.P11105214660357154981

namespace A015847

/-- `∩[A001651(n+1), A015820(n+1)]` -/
def P11105214660357154981.Spec : Prop :=
  ∀ n, (P11105214660357154981.a n : ℤ) = A015847 (n + 1)

end A015847

/-! ## A015847.P1324341608595345810

`filter[A015820(n+1), A011655(#)]`
-/

namespace A015847.P1324341608595345810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A015847.P1324341608595345810

namespace A015847

/-- `filter[A015820(n+1), A011655(#)]` -/
def P1324341608595345810.Spec : Prop :=
  ∀ n, P1324341608595345810.a n = A015847 (n + 1)

end A015847

/-! ## A015847.P16772918206176304609

`filter[A015820(n+1), A214090(#)]`
-/

namespace A015847.P16772918206176304609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214090 (f1 j).toNat = 1) n)

end

end A015847.P16772918206176304609

namespace A015847

/-- `filter[A015820(n+1), A214090(#)]` -/
def P16772918206176304609.Spec : Prop :=
  ∀ n, P16772918206176304609.a n = A015847 (n + 1)

end A015847

/-! ## A015847.P10430107325428441264

`filter[A015820(n+1), A267208(#)]`
-/

namespace A015847.P10430107325428441264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A015847.P10430107325428441264

namespace A015847

/-- `filter[A015820(n+1), A267208(#)]` -/
def P10430107325428441264.Spec : Prop :=
  ∀ n, P10430107325428441264.a n = A015847 (n + 1)

end A015847

/-! ## A015847.P9206685340663000264

`record[A145064(A015820(n+1)-2)]`
-/

namespace A015847.P9206685340663000264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A015820 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015847.P9206685340663000264

namespace A015847

/-- `record[A145064(A015820(n+1)-2)]` -/
def P9206685340663000264.Spec : Prop :=
  ∀ n, P9206685340663000264.a n = A015847 (n + 1)

end A015847

/-! ## A015847.P17066062831798308556

`∩[A015820(n+1), A133223(n+1)]`
-/

namespace A015847.P17066062831798308556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015847.P17066062831798308556

namespace A015847

/-- `∩[A015820(n+1), A133223(n+1)]` -/
def P17066062831798308556.Spec : Prop :=
  ∀ n, (P17066062831798308556.a n : ℤ) = A015847 (n + 1)

end A015847

/-!
# A015848: Numbers k such that phi(k + 7) | sigma(k) for k not congruent to 0 (mod 3).

The programs for A015848, the canonical program `A015848.P1385661765807216180` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015848 has offset 1).

The definition of A015848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015848.P1385661765807216180

`∩[A001651(n+1), A015823(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A015848

/-- `∩[A001651(n+1), A015823(n+1)]` -/
def P1385661765807216180.Spec : Prop :=
  ∀ n, (P1385661765807216180.a n : ℤ) = A015848 (n + 1)

theorem P1385661765807216180.correct : P1385661765807216180.Spec := by
  intro n
  simp only [A015848, Nat.add_sub_cancel]

end A015848

/-! ## A015848.P11115836543204737239

`∩[A015823(n+1), A121816(n+4)]`
-/

namespace A015848.P11115836543204737239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121816 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015848.P11115836543204737239

namespace A015848

/-- `∩[A015823(n+1), A121816(n+4)]` -/
def P11115836543204737239.Spec : Prop :=
  ∀ n, (P11115836543204737239.a n : ℤ) = A015848 (n + 1)

end A015848

/-! ## A015848.P17244195265109235255

`∩[A015823(n+1), A008619(n)+n]`
-/

namespace A015848.P17244195265109235255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015848.P17244195265109235255

namespace A015848

/-- `∩[A015823(n+1), A008619(n)+n]` -/
def P17244195265109235255.Spec : Prop :=
  ∀ n, (P17244195265109235255.a n : ℤ) = A015848 (n + 1)

end A015848

/-! ## A015848.P15285730365938579887

`filter[A015823(n+1), A011655(#)]`
-/

namespace A015848.P15285730365938579887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A015848.P15285730365938579887

namespace A015848

/-- `filter[A015823(n+1), A011655(#)]` -/
def P15285730365938579887.Spec : Prop :=
  ∀ n, P15285730365938579887.a n = A015848 (n + 1)

end A015848

/-! ## A015848.P2994695431797043364

`filter[A015823(n+1), A267208(#)]`
-/

namespace A015848.P2994695431797043364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A015848.P2994695431797043364

namespace A015848

/-- `filter[A015823(n+1), A267208(#)]` -/
def P2994695431797043364.Spec : Prop :=
  ∀ n, P2994695431797043364.a n = A015848 (n + 1)

end A015848

/-! ## A015848.P13756550566864810861

`∩[A015823(n+1), A008619(3*n)]`
-/

namespace A015848.P13756550566864810861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015848.P13756550566864810861

namespace A015848

/-- `∩[A015823(n+1), A008619(3*n)]` -/
def P13756550566864810861.Spec : Prop :=
  ∀ n, (P13756550566864810861.a n : ℤ) = A015848 (n + 1)

end A015848

/-!
# A015849: Numbers n such that phi(n + 9) | sigma(n) for n not congruent to 0 (mod 3).

The programs for A015849, there is no canonical definition to state claims against.
-/

/-! ## A015849.P12318172886874268744

`∩[A001651(n+1), A015827(n+1)]`
-/

namespace A015849.P12318172886874268744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015849.P12318172886874268744

/-! ## A015849.P14649017940623175703

`∩[A065033(n+1)+n, A015827(n+2)]`
-/

namespace A015849.P14649017940623175703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015827 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015849.P14649017940623175703

/-! ## A015849.P485301046498117162

`filter[A015827(1+n), A011655(#)]`
-/

namespace A015849.P485301046498117162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015827 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A015849.P485301046498117162

/-! ## A015849.P1534346653463013300

`filter[A015827(n+1), A267208(#)]`
-/

namespace A015849.P1534346653463013300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A015849.P1534346653463013300

/-!
# A015850: Numbers k such that phi(k + 12) | sigma(k) for k not congruent to 0 (mod 3).

The programs for A015850, there is no canonical definition to state claims against.
-/

/-! ## A015850.P629562390143496762

`∩[A001651(n+1), A015832(n+1)]`
-/

namespace A015850.P629562390143496762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015850.P629562390143496762

/-! ## A015850.P12347252329914363311

`∩[A015832(n+1), A121816(n+4)]`
-/

namespace A015850.P12347252329914363311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121816 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015850.P12347252329914363311

/-! ## A015850.P1727512776589441634

`filter[A015832(n+1), A011655(#)]`
-/

namespace A015850.P1727512776589441634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A015850.P1727512776589441634

/-! ## A015850.P8111667585107525991

`filter[A015832(n+1), A267208(#)]`
-/

namespace A015850.P8111667585107525991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A015850.P8111667585107525991

/-! ## A015850.P16591060938818379822

`∩[A065033(3*n+4), A015832(n+1)]`
-/

namespace A015850.P16591060938818379822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015850.P16591060938818379822

/-!
# A015851: Numbers k such that phi(k) | sigma(k + 8).

The programs for A015851, there is no canonical definition to state claims against.
-/

/-! ## A015851.P2055056229123178080

`eq[1, A124182(A300584(n))]`
-/

namespace A015851.P2055056229123178080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124182 (A300584 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015851.P2055056229123178080

/-!
# A015852: Inverse of 1843rd cyclotomic polynomial.

The programs for A015852, there is no canonical definition to state claims against.
-/

/-! ## A015852.P6536308502671673513

`C(2, A326683(n+4))`
-/

namespace A015852.P6536308502671673513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326683 (n + 4)).toNat

end

end A015852.P6536308502671673513

/-! ## A015852.P5780233582830599271

`C(T(n-2,k), A326680(n+1))` with `a(0)=1`
-/

namespace A015852.P5780233582830599271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (SequenceMachineLib.triUp2 a n) (A326680 (n + 1)).toNat

end

end A015852.P5780233582830599271

/-! ## A015852.P16085784629680929670

`C(floor(1/(n+1)), ∑[A137579(n+4)])`
-/

namespace A015852.P16085784629680929670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊1 / (n + 1 : ℚ)⌋.toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015852.P16085784629680929670

/-! ## A015852.P4824745665773841251

`A000007(A326680(n+1))`
-/

namespace A015852.P4824745665773841251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A326680 (n + 1)).toNat

end

end A015852.P4824745665773841251

/-! ## A015852.P11389989904699311008

`C(2, A074441(A280953(n)))`
-/

namespace A015852.P11389989904699311008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A074441 (A280953 n).toNat).toNat

end

end A015852.P11389989904699311008

/-! ## A015852.P8331267080517882349

`C(2, A326685(A151800(n)))`
-/

namespace A015852.P8331267080517882349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326685 (A151800 n).toNat).toNat

end

end A015852.P8331267080517882349

/-! ## A015852.P1515168180030873285

`A000007(∑[∑[A105514(n)]])`
-/

namespace A015852.P1515168180030873285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105514 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015852.P1515168180030873285

/-! ## A015852.P3600324044103587815

`A019590(A326680(n+1)+1)`
-/

namespace A015852.P3600324044103587815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A326680 (n + 1) + 1).toNat

end

end A015852.P3600324044103587815

/-! ## A015852.P14949825595966456471

`1-A057427(A326683(n+1))`
-/

namespace A015852.P14949825595966456471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 (A326683 (n + 1)).toNat

end

end A015852.P14949825595966456471

/-! ## A015852.P9374916665510441476

`A212793(∏[Δ[A263715(n+1)]])`
-/

namespace A015852.P9374916665510441476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015852.P9374916665510441476

/-!
# A015853: Numbers k such that phi(k) | sigma(k + 9).

The programs for A015853, the canonical program `A015853.P2283416451843243793` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015853 has offset 1).

The definition of A015853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015853.P2283416451843243793

`lt[A000203(n+10)%A000010(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A015853

/-- `lt[A000203(n+10)%A000010(n+1), 1]+1` -/
def P2283416451843243793.Spec : Prop :=
  ∀ n, (P2283416451843243793.a n : ℤ) = A015853 (n + 1)

theorem P2283416451843243793.correct : P2283416451843243793.Spec := by
  intro n
  simp only [A015853, Nat.add_sub_cancel]

end A015853

/-!
# A015854: Inverse of 1845th cyclotomic polynomial.

The programs for A015854, there is no canonical definition to state claims against.
-/

/-! ## A015854.P12241918065164280193

`A016124(n)*A381031(A296911(n))`
-/

namespace A015854.P12241918065164280193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016124 n * A381031 (A296911 n).toNat

end

end A015854.P12241918065164280193

/-! ## A015854.P15316667574733928295

`A015082(A000700(3+n))*A016124(n)`
-/

namespace A015854.P15316667574733928295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 (A000700 (3 + n)).toNat * A016124 n

end

end A015854.P15316667574733928295

/-! ## A015854.P8362738255228367214

`A016124(n)*A225654(A212652(n+5))`
-/

namespace A015854.P8362738255228367214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016124 n * A225654 (A212652 (n + 5)).toNat

end

end A015854.P8362738255228367214

/-! ## A015854.P743044963833053308

`A015944(n)*A081396(A057019(2*(n+2)))`
-/

namespace A015854.P743044963833053308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015944 n * A081396 (A057019 (2 * (n + 2))).toNat

end

end A015854.P743044963833053308

/-! ## A015854.P923232274107895290

`A016124(n)^A000217(A030459(2*(n+1)))`
-/

namespace A015854.P923232274107895290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A000217 (A030459 (2 * (n + 1))).toNat : ℤ)

end

end A015854.P923232274107895290

/-! ## A015854.P13000034817487331769

`A016124(n)/A381031(A296911(n))%A046389(n+1)`
-/

namespace A015854.P13000034817487331769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) / (Int.tmod (A381031 (A296911 n).toNat) (A046389 (n + 1)) : ℚ)

end

end A015854.P13000034817487331769

/-! ## A015854.P9592491812393080767

`A015082(A067030(3*n)%A067036(n+1))*A016124(n)`
-/

namespace A015854.P9592491812393080767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 (Int.tmod (A067030 (3 * n)) (A067036 (n + 1))).toNat * A016124 n

end

end A015854.P9592491812393080767

/-! ## A015854.P4999958907879070488

`A015082(C(4, A067036(n+4)))*A016124(n)`
-/

namespace A015854.P4999958907879070488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 (Nat.choose 4 (A067036 (n + 4)).toNat) * A016124 n

end

end A015854.P4999958907879070488

/-! ## A015854.P10091471165185869761

`A015082(A109997(n+1)%A067036(n+4))*A016124(n)`
-/

namespace A015854.P10091471165185869761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 (Int.tmod (A109997 (n + 1)) (A067036 (n + 4))).toNat * A016124 n

end

end A015854.P10091471165185869761

/-! ## A015854.P3508131575568816297

`A015082(A399687(n+3)%A067036(n+4))*A016124(n)`
-/

namespace A015854.P3508131575568816297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 (Int.tmod (A399687 (n + 3)) (A067036 (n + 4))).toNat * A016124 n

end

end A015854.P3508131575568816297

/-! ## A015854.P6593728157645985063

`A015944(n)^A015948(A015910(n+1))`
-/

namespace A015854.P6593728157645985063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015944 n : ℚ) ^ (A015948 (A015910 (n + 1)).toNat : ℤ)

end

end A015854.P6593728157645985063

/-! ## A015854.P18000508455802016075

`A016124(n)^(A129319(n+4)-A103582(n))`
-/

namespace A015854.P18000508455802016075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A129319 (n + 4) - A103582 n : ℤ)

end

end A015854.P18000508455802016075

/-! ## A015854.P2820487546058084477

`A016124(n*A062378(2*n+5))`
-/

namespace A015854.P2820487546058084477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016124 ((n : ℤ) * A062378 (2 * n + 5)).toNat

end

end A015854.P2820487546058084477

/-! ## A015854.P740155924542986502

`A010059(A320742(n+1))*A016124(n)`
-/

namespace A015854.P740155924542986502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A320742 (n + 1)).toNat * A016124 n

end

end A015854.P740155924542986502

/-! ## A015854.P11698296169829209716

`A015082(A308977(n))*A016124(n)`
-/

namespace A015854.P11698296169829209716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 (A308977 n).toNat * A016124 n

end

end A015854.P11698296169829209716

/-! ## A015854.P5164584870574865686

`A016124(n)*A078379(A129319(n+4))`
-/

namespace A015854.P5164584870574865686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016124 n * A078379 (A129319 (n + 4)).toNat

end

end A015854.P5164584870574865686

/-! ## A015854.P14867934032641425923

`A016124(n)^A001248(A129319(n+4)+1)`
-/

namespace A015854.P14867934032641425923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A001248 (A129319 (n + 4) + 1).toNat : ℤ)

end

end A015854.P14867934032641425923

/-! ## A015854.P3886306285651292944

`A016124(n)^A194746(A129319(n+4)+1)`
-/

namespace A015854.P3886306285651292944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A194746 (A129319 (n + 4) + 1).toNat : ℤ)

end

end A015854.P3886306285651292944

/-!
# A015855: Inverse of 1846th cyclotomic polynomial.

The programs for A015855, there is no canonical definition to state claims against.
-/

/-! ## A015855.P4854821603366968098

`A014932(n)*A033999(n)`
-/

namespace A015855.P4854821603366968098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014932 n * A033999 n

end

end A015855.P4854821603366968098

/-! ## A015855.P12580354982303088035

`A011583(2*n²)*a(n-1)` with `a(0)=1`
-/

namespace A015855.P12580354982303088035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011583 (2 * n ^ 2) * a (n - 1)

end

end A015855.P12580354982303088035

/-! ## A015855.P56377776457857656

`or(A016323(n), A000007(2*n*n))`
-/

namespace A015855.P56377776457857656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016323 n) (A000007 (2 * n * n))

end

end A015855.P56377776457857656

/-! ## A015855.P17607458222055447705

`A014722(A325349(n))*A014763(n)`
-/

namespace A015855.P17607458222055447705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014722 (A325349 n).toNat * A014763 n

end

end A015855.P17607458222055447705

/-! ## A015855.P7915099915737867262

`A016323(n)/A014698(A073719(n))!`
-/

namespace A015855.P7915099915737867262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016323 n : ℚ) / (Nat.factorial (A014698 (A073719 n).toNat).toNat : ℚ)

end

end A015855.P7915099915737867262

/-! ## A015855.P3120627340687369925

`A016323(n)/A015358(A089861(n))!`
-/

namespace A015855.P3120627340687369925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016323 n : ℚ) / (Nat.factorial (A015358 (A089861 n).toNat).toNat : ℚ)

end

end A015855.P3120627340687369925

/-! ## A015855.P6092723078249247769

`A015435(n)*A016272(A276625(n+1))`
-/

namespace A015855.P6092723078249247769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015435 n * A016272 (A276625 (n + 1)).toNat

end

end A015855.P6092723078249247769

/-! ## A015855.P2569423607360038850

`A015907(n)*A082647(A015915(3*n+1))`
-/

namespace A015855.P2569423607360038850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015907 n * A082647 (A015915 (3 * n + 1)).toNat

end

end A015855.P2569423607360038850

/-! ## A015855.P12106717744320661223

`A016030(A034781(2+n-n²%3))*A016063(n)`
-/

namespace A015855.P12106717744320661223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (A034781 (2 + ((n : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ))).toNat).toNat * A016063 n

end

end A015855.P12106717744320661223

/-! ## A015855.P9642546711092803616

`A016030(A034781(n+1+T(n-1,k-1)+T(n-2,k-1)))*A016063(n)` with `a(0)=1`
-/

namespace A015855.P9642546711092803616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016030 (A034781 ((n + 1 : ℤ) + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2Left a n).toNat).toNat * A016063 n

end

end A015855.P9642546711092803616

/-!
# A015857: Inverse of 1848th cyclotomic polynomial.

The programs for A015857, there is no canonical definition to state claims against.
-/

/-! ## A015857.P10988540781295348322

`A014933(lcm(2, n)/2)`
-/

namespace A015857.P10988540781295348322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A015857.P10988540781295348322

/-! ## A015857.P14257817298425301282

`A014933(A004525(n))`
-/

namespace A015857.P14257817298425301282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (A004525 n).toNat

end

end A015857.P14257817298425301282

/-! ## A015857.P8825811867071768374

`A014933(A026741(n))`
-/

namespace A015857.P8825811867071768374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (A026741 n).toNat

end

end A015857.P8825811867071768374

/-! ## A015857.P7396462941780735554

`A014933(A186813(n))`
-/

namespace A015857.P7396462941780735554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (A186813 n).toNat

end

end A015857.P7396462941780735554

/-! ## A015857.P16345550578526044047

`A014933(A057979(n+1))`
-/

namespace A015857.P16345550578526044047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (A057979 (n + 1)).toNat

end

end A015857.P16345550578526044047

/-! ## A015857.P1762878145316682758

`A014933(A116921(n+1))`
-/

namespace A015857.P1762878145316682758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (A116921 (n + 1)).toNat

end

end A015857.P1762878145316682758

/-! ## A015857.P17885588917676785402

`A014933(A174239(n+1))`
-/

namespace A015857.P17885588917676785402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (A174239 (n + 1)).toNat

end

end A015857.P17885588917676785402

/-! ## A015857.P7134571003007055544

`A015395(A160079(n))`
-/

namespace A015857.P7134571003007055544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015395 (A160079 n).toNat

end

end A015857.P7134571003007055544

/-! ## A015857.P5837969693832299938

`A015395(A342131(n))`
-/

namespace A015857.P5837969693832299938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015395 (A342131 n).toNat

end

end A015857.P5837969693832299938

/-!
# A015862: Inverse of 1853rd cyclotomic polynomial.

The programs for A015862, there is no canonical definition to state claims against.
-/

/-! ## A015862.P6132352822569398152

`A015930(record[A008612(A249571(n+1))])`
-/

namespace A015862.P6132352822569398152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A249571 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015862.P6132352822569398152

/-! ## A015862.P13447810694385093083

`A015930(comp[A198778(3*n+2)+A137579(n)])`
-/

namespace A015862.P13447810694385093083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (3 * n + 2) + A137579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015930 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015862.P13447810694385093083

/-! ## A015862.P9440070294994999070

`A015930(comp[A309496(n+1)+A198778(3*n+2)])`
-/

namespace A015862.P9440070294994999070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309496 (n + 1) + A198778 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015930 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015862.P9440070294994999070

/-! ## A015862.P16172801931808695408

`A015930(comp[A198778(3*n+2)+A138125(n+2)])`
-/

namespace A015862.P16172801931808695408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (3 * n + 2) + A138125 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015930 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015862.P16172801931808695408

/-! ## A015862.P12359952586224191638

`A015930(comp[A198778(3*n+2)+3])`
-/

namespace A015862.P12359952586224191638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (3 * n + 2) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015930 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015862.P12359952586224191638

/-! ## A015862.P14634702416110771988

`A015736(C(A206244(3*n+4), 2))`
-/

namespace A015862.P14634702416110771988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015736 (Nat.choose (A206244 (3 * n + 4)).toNat 2)

end

end A015862.P14634702416110771988

/-! ## A015862.P1741509176331582823

`C(2, A326545(n+1)²)`
-/

namespace A015862.P1741509176331582823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326545 (n + 1) ^ 2).toNat

end

end A015862.P1741509176331582823

/-! ## A015862.P3264024698370565129

`C(n, comp[A198778(3*n+2)])`
-/

namespace A015862.P3264024698370565129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (3 * n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015862.P3264024698370565129

/-! ## A015862.P4255226725375159168

`char[A396000(n+1)]*a(n-1)` with `a(0)=1`
-/

namespace A015862.P4255226725375159168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) * a (n - 1)

end

end A015862.P4255226725375159168

/-! ## A015862.P9325979182032214783

`A023916(A065685(n+1)^10)`
-/

namespace A015862.P9325979182032214783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023916 (A065685 (n + 1) ^ 10).toNat

end

end A015862.P9325979182032214783

/-! ## A015862.P8179390797762648465

`A030315(A065685(n+1)^10)`
-/

namespace A015862.P8179390797762648465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (A065685 (n + 1) ^ 10).toNat

end

end A015862.P8179390797762648465

/-! ## A015862.P7284379507979862128

`A000007(∑[∑[A185715(n+2)]])`
-/

namespace A015862.P7284379507979862128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185715 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015862.P7284379507979862128

/-! ## A015862.P15850668067057959288

`A353682(3^A236241(n+3)+2)`
-/

namespace A015862.P15850668067057959288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A236241 (n + 3) : ℤ) + 2)).toNat

end

end A015862.P15850668067057959288

/-! ## A015862.P11531622104295930128

`C(A014082(n), A326544(n+1))`
-/

namespace A015862.P11531622104295930128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014082 n).toNat (A326544 (n + 1)).toNat

end

end A015862.P11531622104295930128

/-! ## A015862.P16143512126857786365

`C(A059895(n+2), A326544(n+1))`
-/

namespace A015862.P16143512126857786365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059895 (n + 2)).toNat (A326544 (n + 1)).toNat

end

end A015862.P16143512126857786365

/-! ## A015862.P9085744898028689377

`C(A025428(n+4), A326544(n+1))`
-/

namespace A015862.P9085744898028689377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025428 (n + 4)).toNat (A326544 (n + 1)).toNat

end

end A015862.P9085744898028689377

/-! ## A015862.P8061747089917279366

`A010060(ceil(root(A029900(2*(n+2)), 6)))`
-/

namespace A015862.P8061747089917279366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ⌈(A029900 (2 * (n + 2)) : ℝ) ^ (1 / (6 : ℝ))⌉.toNat

end

end A015862.P8061747089917279366

/-! ## A015862.P9292012011498758472

`C(A000122(A279429(2*n+1)), A048037(n+1))`
-/

namespace A015862.P9292012011498758472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000122 (A279429 (2 * n + 1)).toNat).toNat (A048037 (n + 1)).toNat

end

end A015862.P9292012011498758472

/-!
# A015863: Numbers k such that sigma(k) = sigma(k+4).

The programs for A015863, there is no canonical definition to state claims against.
-/

/-! ## A015863.P3256861656017388442

`A223091(1+n)-2`
-/

namespace A015863.P3256861656017388442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223091 (1 + n) - 2

end

end A015863.P3256861656017388442

/-! ## A015863.P41690285510672776

`record[A223091(A065648(n))-2]`
-/

namespace A015863.P41690285510672776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223091 (A065648 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015863.P41690285510672776

/-! ## A015863.P724568452050265200

`A329484(A065091(1+n))+A223091(n+1)`
-/

namespace A015863.P724568452050265200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A065091 (1 + n)).toNat + A223091 (n + 1)

end

end A015863.P724568452050265200

/-! ## A015863.P11523557761934750287

`A329484(p?[A346392(n+1)])+A223091(n+1)`
-/

namespace A015863.P11523557761934750287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A223091 (n + 1)

end

end A015863.P11523557761934750287

/-! ## A015863.P1099750897975089745

`A329484(A002144(n+1))+A223091(n+1)`
-/

namespace A015863.P1099750897975089745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A002144 (n + 1)).toNat + A223091 (n + 1)

end

end A015863.P1099750897975089745

/-! ## A015863.P7398916843830267041

`A329484(A106950(n+1))+A223091(n+1)`
-/

namespace A015863.P7398916843830267041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A106950 (n + 1)).toNat + A223091 (n + 1)

end

end A015863.P7398916843830267041

/-! ## A015863.P6692310884186755133

`A329484(A046501(n+1))+A223091(n+1)`
-/

namespace A015863.P6692310884186755133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A046501 (n + 1)).toNat + A223091 (n + 1)

end

end A015863.P6692310884186755133

/-! ## A015863.P5498750857062886408

`record[A223091(A028920(n))-2]`
-/

namespace A015863.P5498750857062886408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223091 (A028920 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015863.P5498750857062886408

/-! ## A015863.P11909964662362312208

`A329484(A271799(n+1))+A223091(n+1)`
-/

namespace A015863.P11909964662362312208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A271799 (n + 1)).toNat + A223091 (n + 1)

end

end A015863.P11909964662362312208

/-! ## A015863.P17349867021525589877

`A329484(A090471(n+1))+A223091(n+1)`
-/

namespace A015863.P17349867021525589877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A090471 (n + 1)).toNat + A223091 (n + 1)

end

end A015863.P17349867021525589877

/-!
# A015864: Inverse of 1855th cyclotomic polynomial.

The programs for A015864, there is no canonical definition to state claims against.
-/

/-! ## A015864.P5743306934127526513

`A016144(n)^A000027(A005902(n))`
-/

namespace A015864.P5743306934127526513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016144 n : ℚ) ^ (A000027 (A005902 n).toNat : ℤ)

end

end A015864.P5743306934127526513

/-! ## A015864.P15857225496025972427

`A016144(n)^A038874(A175251(n+1))`
-/

namespace A015864.P15857225496025972427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016144 n : ℚ) ^ (A038874 (A175251 (n + 1)).toNat : ℤ)

end

end A015864.P15857225496025972427

/-! ## A015864.P8372901130789194144

`A001221(A285096(2*(n+6)))*A016144(n)`
-/

namespace A015864.P8372901130789194144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A285096 (2 * (n + 6))).toNat * A016144 n

end

end A015864.P8372901130789194144

/-! ## A015864.P15310747037733213698

`A016144(n)^A138863(A000010(n+1))`
-/

namespace A015864.P15310747037733213698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016144 n : ℚ) ^ (A138863 (A000010 (n + 1)).toNat : ℤ)

end

end A015864.P15310747037733213698

/-! ## A015864.P12732670776242915382

`A016144(n)^A191311(A121153(n+1))`
-/

namespace A015864.P12732670776242915382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016144 n : ℚ) ^ (A191311 (A121153 (n + 1)).toNat : ℤ)

end

end A015864.P12732670776242915382

/-! ## A015864.P12647636401825586631

`A016144(n)^(A196724(n)+1)`
-/

namespace A015864.P12647636401825586631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016144 n : ℚ) ^ (A196724 n + 1 : ℤ)

end

end A015864.P12647636401825586631

/-! ## A015864.P12700300642682538708

`A016144(n)^A383484(A003238(n+1))`
-/

namespace A015864.P12700300642682538708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016144 n : ℚ) ^ (A383484 (A003238 (n + 1)).toNat : ℤ)

end

end A015864.P12700300642682538708

/-! ## A015864.P2470366006286490300

`A016074(lt[A161187(n+1), A088546(n+3)])`
-/

namespace A015864.P2470366006286490300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088546 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016074 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015864.P2470366006286490300

/-! ## A015864.P18194612939910470399

`A016074(lt[A000009(n+4), A016046(n+3)])`
-/

namespace A015864.P18194612939910470399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016046 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016074 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015864.P18194612939910470399

/-!
# A015866: Numbers k such that sigma(k) = sigma(k+6).

The programs for A015866, there is no canonical definition to state claims against.
-/

/-! ## A015866.P8593637484614233011

`eq[A006352(n), A006352(n+6)]`
-/

namespace A015866.P8593637484614233011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006352 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015866.P8593637484614233011

/-! ## A015866.P12540940272692985632

`eq[A039653(n+6), A039653(n)]`
-/

namespace A015866.P12540940272692985632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015866.P12540940272692985632

/-! ## A015866.P17361745283560063178

`eq[6, A282255(A233583(n+1))]`
-/

namespace A015866.P17361745283560063178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282255 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015866.P17361745283560063178

/-! ## A015866.P7008290744782636482

`eq[A000203(A233583(n+1)), A000203(n+6)]`
-/

namespace A015866.P7008290744782636482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015866.P7008290744782636482

/-!
# A015867: Numbers k such that sigma(k) = sigma(k+7).

The programs for A015867, there is no canonical definition to state claims against.
-/

/-! ## A015867.P7583611151723711521

`eq[7, A333947(A028310(n))]`
-/

namespace A015867.P7583611151723711521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015867.P7583611151723711521

/-! ## A015867.P12427438098321341046

`A065475(eq[7, A333947(n+1)])`
-/

namespace A015867.P12427438098321341046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015867.P12427438098321341046

/-! ## A015867.P14697294527998497321

`eq[A039653(A020719(n)), A039653(n)]`
-/

namespace A015867.P14697294527998497321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A020719 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015867.P14697294527998497321

/-!
# A015868: Inverse of 1859th cyclotomic polynomial.

The programs for A015868, there is no canonical definition to state claims against.
-/

/-! ## A015868.P16185624045259902764

`A014790(10*(6*n+1))`
-/

namespace A015868.P16185624045259902764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014790 (10 * (6 * n + 1))

end

end A015868.P16185624045259902764

/-! ## A015868.P17740310000172698586

`Δ[A043659(n+1)]!-1`
-/

namespace A015868.P17740310000172698586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) - 1

end

end A015868.P17740310000172698586

/-! ## A015868.P15896097034939233900

`A084657(Δ[A043659(n+1)])`
-/

namespace A015868.P15896097034939233900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084657 (f1 (n + 1) - f1 n).toNat

end

end A015868.P15896097034939233900

/-! ## A015868.P3833113761132499724

`A358324(Δ[A043659(n+1)])`
-/

namespace A015868.P3833113761132499724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358324 (f1 (n + 1) - f1 n).toNat

end

end A015868.P3833113761132499724

/-! ## A015868.P11020709937214128223

`A204437(Δ[A043659(n+1)]²)`
-/

namespace A015868.P11020709937214128223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204437 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A015868.P11020709937214128223

/-! ## A015868.P3622745766901680724

`A282885(Δ[A043659(n+1)]²)`
-/

namespace A015868.P3622745766901680724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A015868.P3622745766901680724

/-! ## A015868.P5138493029545580066

`A000720(Δ[A043659(1+n)]!)`
-/

namespace A015868.P5138493029545580066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A015868.P5138493029545580066

/-! ## A015868.P6592457662554597696

`A001222(Δ[A043659(1+n)]!)`
-/

namespace A015868.P6592457662554597696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A015868.P6592457662554597696

/-! ## A015868.P9976033218036150395

`A056169(Δ[A043659(n+1)]!)`
-/

namespace A015868.P9976033218036150395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A015868.P9976033218036150395

/-! ## A015868.P12631800194407838688

`A377083(Δ[A043659(n+1)]!)`
-/

namespace A015868.P12631800194407838688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377083 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A015868.P12631800194407838688

/-! ## A015868.P18357827117713687923

`A002375(Δ[A043659(n+1)]!²)`
-/

namespace A015868.P18357827117713687923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (Nat.factorial (f1 (n + 1) - f1 n).toNat ^ 2)

end

end A015868.P18357827117713687923

/-! ## A015868.P2140728514043144187

`A002372(Δ[A043659(n+1)]!+1)`
-/

namespace A015868.P2140728514043144187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (Nat.factorial (f1 (n + 1) - f1 n).toNat + 1)

end

end A015868.P2140728514043144187

/-! ## A015868.P17332703965185289882

`A193585(Δ[A043659(n+1)]!+1)`
-/

namespace A015868.P17332703965185289882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193585 (Nat.factorial (f1 (n + 1) - f1 n).toNat + 1)

end

end A015868.P17332703965185289882

/-! ## A015868.P17919296348970806055

`C(A088713(Δ[A043659(n+1)]!), 2)`
-/

namespace A015868.P17919296348970806055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A088713 (Nat.factorial (f1 (n + 1) - f1 n).toNat)).toNat 2

end

end A015868.P17919296348970806055

/-! ## A015868.P12247690609924278241

`abs(1+A001478(Δ[A043659(n+1)]!))`
-/

namespace A015868.P12247690609924278241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 + A001478 (Nat.factorial (f1 (n + 1) - f1 n).toNat)|

end

end A015868.P12247690609924278241

/-! ## A015868.P7642174040423703310

`A006218(floor(Δ[A043659(n+1)]!/2))`
-/

namespace A015868.P7642174040423703310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ⌊(Nat.factorial (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌋.toNat

end

end A015868.P7642174040423703310

/-! ## A015868.P2647246670270984772

`A000035(A387164(n+5)+A011583(n))`
-/

namespace A015868.P2647246670270984772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A387164 (n + 5) + A011583 n).toNat

end

end A015868.P2647246670270984772

/-! ## A015868.P8757017870172234381

`A001222(gcd(A011583(n), A075642(n+3)))`
-/

namespace A015868.P8757017870172234381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A011583 n) (A075642 (n + 3)))

end

end A015868.P8757017870172234381

/-! ## A015868.P2900592603448438449

`A029999(A043661(n+2)-A043661(n+1))`
-/

namespace A015868.P2900592603448438449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029999 (A043661 (n + 2) - A043661 (n + 1)).toNat

end

end A015868.P2900592603448438449

/-!
# A015869: Inverse of 1860th cyclotomic polynomial.

The programs for A015869, there is no canonical definition to state claims against.
-/

/-! ## A015869.P2843370223601505583

`Δ[A325389(5+n)]*A016229(n)`
-/

namespace A015869.P2843370223601505583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (5 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A016229 n

end

end A015869.P2843370223601505583

/-! ## A015869.P10021036024091968236

`A016229(n)^A115728(comp[A008582(2*(n+1))])`
-/

namespace A015869.P10021036024091968236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008582 (2 * (n + 1))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016229 n : ℚ) ^ (A115728 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℤ)

end

end A015869.P10021036024091968236

/-! ## A015869.P14495380642286286314

`(1-A000038(A143328(n+1)))*A016229(n)`
-/

namespace A015869.P14495380642286286314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000038 (A143328 (n + 1)).toNat) * A016229 n

end

end A015869.P14495380642286286314

/-! ## A015869.P16778899844812799556

`A309873(A143328(n+1)+1)²*A016229(n)`
-/

namespace A015869.P16778899844812799556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A143328 (n + 1) + 1).toNat ^ 2 * A016229 n

end

end A015869.P16778899844812799556

/-! ## A015869.P6551726910126502701

`A016229(n)+A016193(A277330(n))`
-/

namespace A015869.P6551726910126502701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016229 n + A016193 (A277330 n).toNat

end

end A015869.P6551726910126502701

/-! ## A015869.P10326893422388652954

`A015029(n)*A015036(A220466(n+5))`
-/

namespace A015869.P10326893422388652954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015029 n * A015036 (A220466 (n + 5)).toNat

end

end A015869.P10326893422388652954

/-!
# A015872: Numbers k such that phi(k + 6) | sigma(k) + 6.

The programs for A015872, there is no canonical definition to state claims against.
-/

/-! ## A015872.P16561225961398945747

`eq[4, n²%floor((floor(n/2)/2+1)²)]`
-/

namespace A015872.P16561225961398945747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) ⌊((⌊(n : ℚ) / 2⌋ : ℚ) / 2 + 1) ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015872.P16561225961398945747

/-!
# A015873: Numbers k such that phi(k + 8) | sigma(k) + 8.

The programs for A015873, there is no canonical definition to state claims against.
-/

/-! ## A015873.P16505617482416879243

`A102826(A124315(n+1)+A017221(n))`
-/

namespace A015873.P16505617482416879243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102826 (A124315 (n + 1) + A017221 n).toNat

end

end A015873.P16505617482416879243

/-!
# A015876: Numbers k such that sigma(k) = sigma(k+8).

The programs for A015876, there is no canonical definition to state claims against.
-/

/-! ## A015876.P2371115860541198106

`eq[8, A333947(n+1)]+1`
-/

namespace A015876.P2371115860541198106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015876.P2371115860541198106

/-! ## A015876.P10782669229586798212

`eq[8, A333947(A028310(n))]`
-/

namespace A015876.P10782669229586798212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015876.P10782669229586798212

/-! ## A015876.P9211325030606460290

`A011760(eq[8, A333947(n+1)])`
-/

namespace A015876.P9211325030606460290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015876.P9211325030606460290

/-! ## A015876.P1433616658274396395

`A020725(eq[8, A333947(n+1)])`
-/

namespace A015876.P1433616658274396395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015876.P1433616658274396395

/-! ## A015876.P16931942675230892931

`A114637(eq[8, A333947(n+1)])`
-/

namespace A015876.P16931942675230892931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015876.P16931942675230892931

/-!
# A015877: Numbers k such that sigma(k) = sigma(k+9).

The programs for A015877, there is no canonical definition to state claims against.
-/

/-! ## A015877.P15208915281009151456

`eq[A039653(A020723(n)), A039653(n)]`
-/

namespace A015877.P15208915281009151456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A020723 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015877.P15208915281009151456

/-!
# A015878: Inverse of 1869th cyclotomic polynomial.

The programs for A015878, there is no canonical definition to state claims against.
-/

/-! ## A015878.P13836746528138282661

`A015642(A035650(1+n))*A015668(n)`
-/

namespace A015878.P13836746528138282661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015642 (A035650 (1 + n)).toNat * A015668 n

end

end A015878.P13836746528138282661

/-! ## A015878.P6281873612157647699

`A014786(n)*A165560(A025510(n+1))`
-/

namespace A015878.P6281873612157647699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014786 n * A165560 (A025510 (n + 1)).toNat

end

end A015878.P6281873612157647699

/-! ## A015878.P5879943625747064585

`A015642(floor(A276086(n)/(n+1)))*A015668(n)`
-/

namespace A015878.P5879943625747064585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015642 ⌊(A276086 n : ℚ) / (n + 1 : ℚ)⌋.toNat * A015668 n

end

end A015878.P5879943625747064585

/-! ## A015878.P6744480052050633757

`A015526(∑{d}[a(n-4)+n, #])*A015542(n)` with `a(0)=1, a(1)=-4, a(2)=6, a(3)=-6`
-/

namespace A015878.P6744480052050633757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -4, 6, -6] fun n f1 =>
  f1 (n - 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) * A015542 n

end

end A015878.P6744480052050633757

/-! ## A015878.P3888412597977838794

`A014786(A004907(n+1)%A283406(n))`
-/

namespace A015878.P3888412597977838794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014786 (Int.tmod (A004907 (n + 1)) (A283406 n)).toNat

end

end A015878.P3888412597977838794

/-! ## A015878.P13623850567209521813

`A015642(A001222(n+3)*A007318(n))*A015668(n)`
-/

namespace A015878.P13623850567209521813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015642 (A001222 (n + 3) * A007318 n).toNat * A015668 n

end

end A015878.P13623850567209521813

/-! ## A015878.P3103757693217775315

`A015642(2*A007359(n))*A015668(n)`
-/

namespace A015878.P3103757693217775315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015642 (2 * A007359 n).toNat * A015668 n

end

end A015878.P3103757693217775315

/-!
# A015879: Inverse of 1870th cyclotomic polynomial.

The programs for A015879, there is no canonical definition to state claims against.
-/

/-! ## A015879.P10860533762521687129

`A014944(n)*A033999(n)`
-/

namespace A015879.P10860533762521687129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014944 n * A033999 n

end

end A015879.P10860533762521687129

/-!
# A015880: Numbers k such that sigma(k) = sigma(k+10).

The programs for A015880, there is no canonical definition to state claims against.
-/

/-! ## A015880.P16355437784546596108

`eq[10, A333947(A028310(n))]`
-/

namespace A015880.P16355437784546596108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015880.P16355437784546596108

/-! ## A015880.P17659493497175012114

`A065475(eq[10, A333947(n+1)])`
-/

namespace A015880.P17659493497175012114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015880.P17659493497175012114

/-!
# A015881: Numbers k such that sigma(k) = sigma(k+11).

The programs for A015881, there is no canonical definition to state claims against.
-/

/-! ## A015881.P18412925323193164792

`eq[11, A333947(A028310(n))]`
-/

namespace A015881.P18412925323193164792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015881.P18412925323193164792

/-! ## A015881.P10832903816230167012

`A065475(eq[11, A333947(n+1)])`
-/

namespace A015881.P10832903816230167012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015881.P10832903816230167012

/-!
# A015885: Inverse of 1876th cyclotomic polynomial.

The programs for A015885, there is no canonical definition to state claims against.
-/

/-! ## A015885.P9966753665061425112

`A015997(comp[A084488(3*n+4)-A002445(n)])`
-/

namespace A015885.P9966753665061425112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084488 (3 * n + 4) - A002445 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015997 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015885.P9966753665061425112

/-! ## A015885.P15892372166739918659

`A049986(A006489(n+2))+A015997(n)`
-/

namespace A015885.P15892372166739918659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049986 (A006489 (n + 2)).toNat + A015997 n

end

end A015885.P15892372166739918659

/-! ## A015885.P3324821689190248028

`A049986(A006489(n+2))+A016221(n)`
-/

namespace A015885.P3324821689190248028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049986 (A006489 (n + 2)).toNat + A016221 n

end

end A015885.P3324821689190248028

/-! ## A015885.P13760846352391237307

`A015997(n)*A034947(A245851(n+1))`
-/

namespace A015885.P13760846352391237307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015997 n * A034947 (A245851 (n + 1)).toNat

end

end A015885.P13760846352391237307

/-! ## A015885.P13576274579938245629

`A016053(n)*A034947(A245851(n+1))`
-/

namespace A015885.P13576274579938245629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016053 n * A034947 (A245851 (n + 1)).toNat

end

end A015885.P13576274579938245629

/-! ## A015885.P18275628921134663568

`A015997(n)*A060037(A245851(n+1)+1)`
-/

namespace A015885.P18275628921134663568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015997 n * A060037 (A245851 (n + 1) + 1).toNat

end

end A015885.P18275628921134663568

/-! ## A015885.P16139086047829931563

`A015997(n)*A116861(A245851(n+1)+1)`
-/

namespace A015885.P16139086047829931563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015997 n * A116861 (A245851 (n + 1) + 1).toNat

end

end A015885.P16139086047829931563

/-! ## A015885.P14450184091216065129

`A015997(n)^A003340(A245851(n+1)+1)`
-/

namespace A015885.P14450184091216065129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A003340 (A245851 (n + 1) + 1).toNat : ℤ)

end

end A015885.P14450184091216065129

/-! ## A015885.P17157426539719245392

`A015997(n)^A003625(A245851(n+1)+1)`
-/

namespace A015885.P17157426539719245392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A003625 (A245851 (n + 1) + 1).toNat : ℤ)

end

end A015885.P17157426539719245392

/-! ## A015885.P15844687232127965098

`A015997(n)^A006567(A245851(n+1)+1)`
-/

namespace A015885.P15844687232127965098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A006567 (A245851 (n + 1) + 1).toNat : ℤ)

end

end A015885.P15844687232127965098

/-! ## A015885.P11757944165301622646

`A015997(n)^A034968(A245851(n+1)+1)`
-/

namespace A015885.P11757944165301622646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A034968 (A245851 (n + 1) + 1).toNat : ℤ)

end

end A015885.P11757944165301622646

/-! ## A015885.P2680429312303694282

`A015997(n)^A036043(A245851(n+1)+1)`
-/

namespace A015885.P2680429312303694282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A036043 (A245851 (n + 1) + 1).toNat : ℤ)

end

end A015885.P2680429312303694282

/-! ## A015885.P9377806402340539477

`A015997(n)^A062383(A245851(n+1)-1)`
-/

namespace A015885.P9377806402340539477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A062383 (A245851 (n + 1) - 1).toNat : ℤ)

end

end A015885.P9377806402340539477

/-! ## A015885.P4705700885433800762

`A015997(n)^(A141294(A245851(n+1)+1)+1)`
-/

namespace A015885.P4705700885433800762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A141294 (A245851 (n + 1) + 1).toNat + 1 : ℤ)

end

end A015885.P4705700885433800762

/-! ## A015885.P8903761284555702267

`A015997(n)^(A017221(A245851(n+1)+n)-1)`
-/

namespace A015885.P8903761284555702267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A017221 (A245851 (n + 1) + (n : ℤ)).toNat - 1 : ℤ)

end

end A015885.P8903761284555702267

/-! ## A015885.P3965272480499694538

`A015997(n)*(col(A204022(A245851(n+1)+1))+1)`
-/

namespace A015885.P3965272480499694538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015997 n * (SequenceMachineLib.triCol (A204022 (A245851 (n + 1) + 1).toNat).toNat + 1 : ℤ)

end

end A015885.P3965272480499694538

/-! ## A015885.P3430980877000718773

`A014541(n)*A014562(A046816(3*n+1))`
-/

namespace A015885.P3430980877000718773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014541 n * A014562 (A046816 (3 * n + 1)).toNat

end

end A015885.P3430980877000718773

/-! ## A015885.P14734220477251909676

`A015997(n)^A109128(A109128(n))`
-/

namespace A015885.P14734220477251909676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A109128 (A109128 n).toNat : ℤ)

end

end A015885.P14734220477251909676

/-! ## A015885.P9188376350935607263

`A015997(n)^A030156(A109128(n))`
-/

namespace A015885.P9188376350935607263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A030156 (A109128 n).toNat : ℤ)

end

end A015885.P9188376350935607263

/-!
# A015889: Numbers k that divide 4^k + 4.

The programs for A015889, there is no canonical definition to state claims against.
-/

/-! ## A015889.P6122628706156061273

`record[gcd(4^(n+1)+4, n+1)]`
-/

namespace A015889.P6122628706156061273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 ^ (n + 1) + 4) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015889.P6122628706156061273

/-! ## A015889.P14413805896537757923

`A018360(∑[round(sqrt(n))!])`
-/

namespace A015889.P14413805896537757923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018360 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015889.P14413805896537757923

/-! ## A015889.P12775539991510827568

`A018360(record[abs(xor(1, n-2))])`
-/

namespace A015889.P12775539991510827568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018360 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015889.P12775539991510827568

/-!
# A015890: Inverse of 1881st cyclotomic polynomial.

The programs for A015890, there is no canonical definition to state claims against.
-/

/-! ## A015890.P6102015988498533983

`A016286(n)*A016288(A271315(n))`
-/

namespace A015890.P6102015988498533983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016286 n * A016288 (A271315 n).toNat

end

end A015890.P6102015988498533983

/-!
# A015893: Numbers k such that k | 7^k + 7.

The programs for A015893, there is no canonical definition to state claims against.
-/

/-! ## A015893.P11570435906788438204

`record[gcd(A005496(n), A045850(n))]`
-/

namespace A015893.P11570435906788438204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005496 n) (A045850 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015893.P11570435906788438204

/-! ## A015893.P16253775665741569827

`record[gcd(n, A257948(A124095(n)))]`
-/

namespace A015893.P16253775665741569827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A257948 (A124095 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015893.P16253775665741569827

/-! ## A015893.P10949369065179817332

`record[gcd(A026730(n), A257948(n+1))]`
-/

namespace A015893.P10949369065179817332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026730 n) (A257948 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015893.P10949369065179817332

/-! ## A015893.P7688891341265788412

`record[gcd(A155212(n), A222417(n+1))]`
-/

namespace A015893.P7688891341265788412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155212 n) (A222417 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015893.P7688891341265788412

/-! ## A015893.P4947706239000115814

`record[gcd(A178861(n+1), A224411(n+1))]`
-/

namespace A015893.P4947706239000115814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178861 (n + 1)) (A224411 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015893.P4947706239000115814

/-!
# A015895: Inverse of 1886th cyclotomic polynomial.

The programs for A015895, there is no canonical definition to state claims against.
-/

/-! ## A015895.P4600727189036507252

`(xor(1, n)-n)*A014952(n)`
-/

namespace A015895.P4600727189036507252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 n : ℤ) - (n : ℤ)) * A014952 n

end

end A015895.P4600727189036507252

/-! ## A015895.P15556558549264108418

`A014952(n)*A033999(n)`
-/

namespace A015895.P15556558549264108418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014952 n * A033999 n

end

end A015895.P15556558549264108418

/-! ## A015895.P17658026228465168464

`A033999(n)*A374239(A135661(n+1)%A333764(n+1))`
-/

namespace A015895.P17658026228465168464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A374239 (Int.tmod (A135661 (n + 1)) (A333764 (n + 1))).toNat

end

end A015895.P17658026228465168464

/-! ## A015895.P7288817166760166025

`A015987(lt[A175792(n+2), A048272(n+1)])`
-/

namespace A015895.P7288817166760166025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175792 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015987 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015895.P7288817166760166025

/-! ## A015895.P1972736671483448039

`A090192(A135661(n+1))%A291636(n+2)*A033999(n)`
-/

namespace A015895.P1972736671483448039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090192 (A135661 (n + 1)).toNat) (A291636 (n + 2)) * A033999 n

end

end A015895.P1972736671483448039

/-!
# A015896: Inverse of 1887th cyclotomic polynomial.

The programs for A015896, there is no canonical definition to state claims against.
-/

/-! ## A015896.P4027057098361401809

`A016100(n)^A282535(n+8)^A015899(n)`
-/

namespace A015896.P4027057098361401809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016100 n : ℝ) ^ ((A282535 (n + 8) : ℚ) ^ (A015899 n : ℤ) : ℝ)

end

end A015896.P4027057098361401809

/-! ## A015896.P17614283644216394201

`A016100(n)^A282535(n+8)^A015918(n)`
-/

namespace A015896.P17614283644216394201
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016100 n : ℝ) ^ ((A282535 (n + 8) : ℚ) ^ (A015918 n : ℤ) : ℝ)

end

end A015896.P17614283644216394201

/-! ## A015896.P8143940230332585124

`A016100(n)^A282535(n+8)^A014849(A074307(n))`
-/

namespace A015896.P8143940230332585124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016100 n : ℝ) ^ ((A282535 (n + 8) : ℚ) ^ (A014849 (A074307 n).toNat : ℤ) : ℝ)

end

end A015896.P8143940230332585124

/-! ## A015896.P5161526512215113219

`A016100(n)+A015899(∑[A051176(3*n+4)])`
-/

namespace A015896.P5161526512215113219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016100 n + A015899 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015896.P5161526512215113219

/-! ## A015896.P236172813130263779

`A016100(n)%A182744(n+1)`
-/

namespace A015896.P236172813130263779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016100 n) (A182744 (n + 1))

end

end A015896.P236172813130263779

/-!
# A015897: Numbers k such that k | 8^k + 8.

The programs for A015897, there is no canonical definition to state claims against.
-/

/-! ## A015897.P12870677009184447892

`A266648(n)+A022307(A270613(2*(n+1)))`
-/

namespace A015897.P12870677009184447892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266648 n + A022307 (A270613 (2 * (n + 1))).toNat

end

end A015897.P12870677009184447892

/-! ## A015897.P14758982630518532111

`record[A085735(A227153(n))]`
-/

namespace A015897.P14758982630518532111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (A227153 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015897.P14758982630518532111

/-! ## A015897.P15979628189506124239

`eq[A126012(n), A140254(n+1)]`
-/

namespace A015897.P15979628189506124239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015897.P15979628189506124239

/-! ## A015897.P7622629032302869296

`eq[A126012(n), A346612(n+1)]`
-/

namespace A015897.P7622629032302869296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015897.P7622629032302869296

/-! ## A015897.P17578515859449022580

`A018271(comp[∑[n-2]])`
-/

namespace A015897.P17578515859449022580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018271 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015897.P17578515859449022580

/-!
# A015898: Numbers k such that k | 9^k + 9.

The programs for A015898, there is no canonical definition to state claims against.
-/

/-! ## A015898.P328198069561422388

`eq[gcd(90, n), A263273(n)]`
-/

namespace A015898.P328198069561422388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 90 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015898.P328198069561422388

/-! ## A015898.P10296371420721836007

`eq[gcd(2, n+1), A054710(n+1)]+1`
-/

namespace A015898.P10296371420721836007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015898.P10296371420721836007

/-! ## A015898.P17127722796303483635

`eq[lcm(9, n)/9, A002211(lcm(9, n)/9)]`
-/

namespace A015898.P17127722796303483635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 n : ℚ) / 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002211 (SequenceMachineLib.roundAway ((Nat.lcm 9 n : ℚ) / 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A015898.P17127722796303483635

/-! ## A015898.P17765483973611981470

`A018278(round(sqrt(n²+1))+ceil(n/ϕ²))`
-/

namespace A015898.P17765483973611981470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018278 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + ⌈(n : ℝ) / Real.goldenRatio ^ 2⌉).toNat

end

end A015898.P17765483973611981470

/-! ## A015898.P17798479602595131065

`record[A276086(Δ[A342517(n)])]`
-/

namespace A015898.P17798479602595131065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015898.P17798479602595131065

/-!
# A015899: Inverse of 1890th cyclotomic polynomial.

The programs for A015899, there is no canonical definition to state claims against.
-/

/-! ## A015899.P4247455272457132200

`A015269(round(2*n/3))`
-/

namespace A015899.P4247455272457132200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015269 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A015899.P4247455272457132200

/-! ## A015899.P7650143692717365167

`A014639(A051176(n))`
-/

namespace A015899.P7650143692717365167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014639 (A051176 n).toNat

end

end A015899.P7650143692717365167

/-! ## A015899.P16658781198018986821

`A014849(A074307(n))`
-/

namespace A015899.P16658781198018986821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014849 (A074307 n).toNat

end

end A015899.P16658781198018986821

/-! ## A015899.P6072516429139606670

`A014849(A168222(n))`
-/

namespace A015899.P6072516429139606670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014849 (A168222 n).toNat

end

end A015899.P6072516429139606670

/-! ## A015899.P8074835339536759107

`A010892(n)*A014954(n)`
-/

namespace A015899.P8074835339536759107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A014954 n

end

end A015899.P8074835339536759107

/-! ## A015899.P11788492274500982926

`A014027(n)*A014954(n)`
-/

namespace A015899.P11788492274500982926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014027 n * A014954 n

end

end A015899.P11788492274500982926

/-! ## A015899.P2062498531500929946

`A014954(n)*A033999(n)`
-/

namespace A015899.P2062498531500929946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014954 n * A033999 n

end

end A015899.P2062498531500929946

/-! ## A015899.P3911681942832883971

`A014954(n)*A057079(n)`
-/

namespace A015899.P3911681942832883971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014954 n * A057079 n

end

end A015899.P3911681942832883971

/-! ## A015899.P12564929378553174003

`A014954(n)*A081729(n)`
-/

namespace A015899.P12564929378553174003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014954 n * A081729 n

end

end A015899.P12564929378553174003

/-! ## A015899.P10477327619789337517

`A014954(n)*A099916(n)`
-/

namespace A015899.P10477327619789337517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014954 n * A099916 n

end

end A015899.P10477327619789337517

/-! ## A015899.P9443946582999417910

`A014954(n)*A101676(n)`
-/

namespace A015899.P9443946582999417910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014954 n * A101676 n

end

end A015899.P9443946582999417910

