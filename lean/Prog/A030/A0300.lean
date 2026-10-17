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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B008.C001
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

/-!
# A030000: a(n) is the smallest nonnegative number k such that the decimal expansion of 2^k contains the string n.

The programs for A030000, there is no canonical definition to state claims against.
-/

/-! ## A030000.P12507282163970090044

`(1-char[1])*A063565(n)`
-/

namespace A030000.P12507282163970090044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A063565 n

end

end A030000.P12507282163970090044

/-! ## A030000.P9234012685060940656

`lcm(A063565(n), A105812(n))`
-/

namespace A030000.P9234012685060940656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063565 n) (A105812 n)

end

end A030000.P9234012685060940656

/-! ## A030000.P9252396963105208177

`A063565(n)*A087116(n*char[2^n])`
-/

namespace A030000.P9252396963105208177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063565 n * A087116 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A030000.P9252396963105208177

/-! ## A030000.P9343509757562157090

`A063565(n)%A027659(A062520(n))`
-/

namespace A030000.P9343509757562157090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063565 n) (A027659 (A062520 n).toNat)

end

end A030000.P9343509757562157090

/-! ## A030000.P16606330833978644490

`A062520(n)+A063565(n)-A063566(n)`
-/

namespace A030000.P16606330833978644490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062520 n + (A063565 n - A063566 n)

end

end A030000.P16606330833978644490

/-! ## A030000.P1934333600767180267

`A060576(n)*A063565(n)*A060576(n)`
-/

namespace A030000.P1934333600767180267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A063565 n * A060576 n

end

end A030000.P1934333600767180267

/-! ## A030000.P7173901128541347290

`A062521(n)*A063565(n)/A063567(n)`
-/

namespace A030000.P7173901128541347290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062521 n * A063565 n : ℚ) / (A063567 n : ℚ)

end

end A030000.P7173901128541347290

/-! ## A030000.P3602791408362629785

`A062522(n)*A063565(n)/A063568(n)`
-/

namespace A030000.P3602791408362629785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062522 n * A063565 n : ℚ) / (A063568 n : ℚ)

end

end A030000.P3602791408362629785

/-! ## A030000.P13232912346452724095

`A063565(n)*A134323(n+1)*A134323(n+1)`
-/

namespace A030000.P13232912346452724095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063565 n * A134323 (n + 1) * A134323 (n + 1)

end

end A030000.P13232912346452724095

/-! ## A030000.P4891153820979194097

`log2(A030001(n))`
-/

namespace A030000.P4891153820979194097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A030001 n : ℝ)

end

end A030000.P4891153820979194097

/-! ## A030000.P13891508745951954609

`A063565(n)%A030001(n)`
-/

namespace A030000.P13891508745951954609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063565 n) (A030001 n)

end

end A030000.P13891508745951954609

/-! ## A030000.P15010235602378251131

`and(A063565(n), A107464(A063565(n+1)))`
-/

namespace A030000.P15010235602378251131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063565 n) (A107464 (A063565 (n + 1)).toNat)

end

end A030000.P15010235602378251131

/-! ## A030000.P1714658106100686743

`and(A063565(n), A163383(n+1))`
-/

namespace A030000.P1714658106100686743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063565 n) (A163383 (n + 1))

end

end A030000.P1714658106100686743

/-! ## A030000.P5979259238947923155

`and(A063565(n), A107464(n))`
-/

namespace A030000.P5979259238947923155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063565 n) (A107464 n)

end

end A030000.P5979259238947923155

/-! ## A030000.P1615143544734421123

`and(A063565(n), A070199(n+1))`
-/

namespace A030000.P1615143544734421123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063565 n) (A070199 (n + 1))

end

end A030000.P1615143544734421123

/-! ## A030000.P4893538234610810665

`and(A063565(n), A156589(n))`
-/

namespace A030000.P4893538234610810665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063565 n) (A156589 n)

end

end A030000.P4893538234610810665

/-! ## A030000.P2214833144226279442

`and(A063565(n), A198695(n))`
-/

namespace A030000.P2214833144226279442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063565 n) (A198695 n)

end

end A030000.P2214833144226279442

/-!
# A030001: Smallest power of 2 whose decimal expansion contains n.

The programs for A030001, there is no canonical definition to state claims against.
-/

/-! ## A030001.P1092162265075194321

`2^A030000(n)`
-/

namespace A030001.P1092162265075194321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A030000 n : ℤ)

end

end A030001.P1092162265075194321

/-! ## A030001.P12130212335517328384

`A000079(A030000(n))`
-/

namespace A030001.P12130212335517328384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A030000 n).toNat

end

end A030001.P12130212335517328384

/-! ## A030001.P12782823890236521674

`A117303(2*A030000(n)+1)`
-/

namespace A030001.P12782823890236521674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117303 (2 * A030000 n + 1).toNat

end

end A030001.P12782823890236521674

/-! ## A030001.P6043828496296750931

`2^lcm(A063565(n), A134323(n+1))`
-/

namespace A030001.P6043828496296750931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Int.lcm (A063565 n) (A134323 (n + 1))

end

end A030001.P6043828496296750931

/-! ## A030001.P793935383213783048

`A117303(A030000(n)+A030000(n)+1)`
-/

namespace A030001.P793935383213783048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117303 (A030000 n + (A030000 n + 1)).toNat

end

end A030001.P793935383213783048

/-!
# A030002: (prime(n)-5)(prime(n)-7)(prime(n)-9)/48.

The programs for A030002, the canonical program `A030002.P13336497132258617398` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030002 has offset 3).

The definition of A030002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030002.P3797353627974812289

`C(A089038(n+1), 3)`
-/

namespace A030002.P3797353627974812289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089038 (n + 1)).toNat 3

end

end A030002.P3797353627974812289

namespace A030002

/-- `C(A089038(n+1), 3)` -/
def P3797353627974812289.Spec : Prop :=
  ∀ n, (P3797353627974812289.a n : ℤ) = A030002 (n + 3)

end A030002

/-! ## A030002.P13336497132258617398

`C(A024675(n+1)-A089253(n+1), 3)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A030002

/-- `C(A024675(n+1)-A089253(n+1), 3)` -/
def P13336497132258617398.Spec : Prop :=
  ∀ n, (P13336497132258617398.a n : ℤ) = A030002 (n + 3)

theorem P13336497132258617398.correct : P13336497132258617398.Spec := by
  intro n
  simp only [A030002, Nat.add_sub_cancel]

end A030002

/-! ## A030002.P14454094164906778673

`C(A005097(n+2)-2, 3)`
-/

namespace A030002.P14454094164906778673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005097 (n + 2) - 2).toNat 3

end

end A030002.P14454094164906778673

namespace A030002

/-- `C(A005097(n+2)-2, 3)` -/
def P14454094164906778673.Spec : Prop :=
  ∀ n, (P14454094164906778673.a n : ℤ) = A030002 (n + 3)

end A030002

/-! ## A030002.P3524031115174693628

`C((A000040(n+3)-5)/2, 3)`
-/

namespace A030002.P3524031115174693628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A000040 (n + 3) - 5 : ℚ) / 2)).toNat 3

end

end A030002.P3524031115174693628

namespace A030002

/-- `C((A000040(n+3)-5)/2, 3)` -/
def P3524031115174693628.Spec : Prop :=
  ∀ n, (P3524031115174693628.a n : ℤ) = A030002 (n + 3)

end A030002

/-! ## A030002.P7413910802149201827

`C(eq[2, A000005(2*n+5)], 3)`
-/

namespace A030002.P7413910802149201827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 3

end

end A030002.P7413910802149201827

namespace A030002

/-- `C(eq[2, A000005(2*n+5)], 3)` -/
def P7413910802149201827.Spec : Prop :=
  ∀ n, (P7413910802149201827.a n : ℤ) = A030002 (n + 3)

end A030002

/-! ## A030002.P1940193277500149880

`C(lt[A001222(2*n+5), 2], 3)`
-/

namespace A030002.P1940193277500149880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) 3

end

end A030002.P1940193277500149880

namespace A030002

/-- `C(lt[A001222(2*n+5), 2], 3)` -/
def P1940193277500149880.Spec : Prop :=
  ∀ n, (P1940193277500149880.a n : ℤ) = A030002 (n + 3)

end A030002

/-! ## A030002.P5059322523967515474

`C(eq[3, A054906(n+1)], 3)`
-/

namespace A030002.P5059322523967515474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 3

end

end A030002.P5059322523967515474

namespace A030002

/-- `C(eq[3, A054906(n+1)], 3)` -/
def P5059322523967515474.Spec : Prop :=
  ∀ n, (P5059322523967515474.a n : ℤ) = A030002 (n + 3)

end A030002

/-! ## A030002.P5470722958201785278

`C(lt[A001222(Δ[(n+2)²])+1, 3], 3)`
-/

namespace A030002.P5470722958201785278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n) 3

end

end A030002.P5470722958201785278

namespace A030002

/-- `C(lt[A001222(Δ[(n+2)²])+1, 3], 3)` -/
def P5470722958201785278.Spec : Prop :=
  ∀ n, (P5470722958201785278.a n : ℤ) = A030002 (n + 3)

end A030002

/-! ## A030002.P2099496120391862361

`C(lt[A000005(A004277(n+2)+1), 3], 3)`
-/

namespace A030002.P2099496120391862361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004277 (n + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) 3

end

end A030002.P2099496120391862361

namespace A030002

/-- `C(lt[A000005(A004277(n+2)+1), 3], 3)` -/
def P2099496120391862361.Spec : Prop :=
  ∀ n, (P2099496120391862361.a n : ℤ) = A030002 (n + 3)

end A030002

/-!
# A030003: a(n) = (prime(n)-3)*(prime(n)-5)*(prime(n)-7)/48.

The programs for A030003, the canonical program `A030003.P18069339711567580237` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030003 has offset 2).

The definition of A030003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030003.P941851907022417297

`C(A067076(n+1), 3)`
-/

namespace A030003.P941851907022417297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067076 (n + 1)).toNat 3

end

end A030003.P941851907022417297

namespace A030003

/-- `C(A067076(n+1), 3)` -/
def P941851907022417297.Spec : Prop :=
  ∀ n, (P941851907022417297.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P11002417683453018277

`C(A005097(n+1)-1, 3)`
-/

namespace A030003.P11002417683453018277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005097 (n + 1) - 1).toNat 3

end

end A030003.P11002417683453018277

namespace A030003

/-- `C(A005097(n+1)-1, 3)` -/
def P11002417683453018277.Spec : Prop :=
  ∀ n, (P11002417683453018277.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P18069339711567580237

`C(A006254(n+1)-2, 3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030003

/-- `C(A006254(n+1)-2, 3)` -/
def P18069339711567580237.Spec : Prop :=
  ∀ n, (P18069339711567580237.a n : ℤ) = A030003 (n + 2)

theorem P18069339711567580237.correct : P18069339711567580237.Spec := by
  intro n
  simp only [A030003, Nat.add_sub_cancel]

end A030003

/-! ## A030003.P14938662553272697356

`A030004(n+2)-A030007(n+2)`
-/

namespace A030003.P14938662553272697356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030004 (n + 2) - A030007 (n + 2)

end

end A030003.P14938662553272697356

namespace A030003

/-- `A030004(n+2)-A030007(n+2)` -/
def P14938662553272697356.Spec : Prop :=
  ∀ n, P14938662553272697356.a n = A030003 (n + 2)

end A030003

/-! ## A030003.P12914132827972896220

`C((A000040(n+2)-3)/2, 3)`
-/

namespace A030003.P12914132827972896220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A000040 (n + 2) - 3 : ℚ) / 2)).toNat 3

end

end A030003.P12914132827972896220

namespace A030003

/-- `C((A000040(n+2)-3)/2, 3)` -/
def P12914132827972896220.Spec : Prop :=
  ∀ n, (P12914132827972896220.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P9451481857345725654

`C(eq[2, A000005(2*n+3)], 3)`
-/

namespace A030003.P9451481857345725654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 3

end

end A030003.P9451481857345725654

namespace A030003

/-- `C(eq[2, A000005(2*n+3)], 3)` -/
def P9451481857345725654.Spec : Prop :=
  ∀ n, (P9451481857345725654.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P9181939017064180401

`C(lt[A001222(2*n+3)+1, 3], 3)`
-/

namespace A030003.P9181939017064180401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 3) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) 3

end

end A030003.P9181939017064180401

namespace A030003

/-- `C(lt[A001222(2*n+3)+1, 3], 3)` -/
def P9181939017064180401.Spec : Prop :=
  ∀ n, (P9181939017064180401.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P7418439481506244509

`C(lt[n, A006530(2*(n+1)+1)], 3)`
-/

namespace A030003.P7418439481506244509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 3

end

end A030003.P7418439481506244509

namespace A030003

/-- `C(lt[n, A006530(2*(n+1)+1)], 3)` -/
def P7418439481506244509.Spec : Prop :=
  ∀ n, (P7418439481506244509.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P6799516497616311253

`C(lt[2*n, A000010(2*n+3)], 3)`
-/

namespace A030003.P6799516497616311253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 3

end

end A030003.P6799516497616311253

namespace A030003

/-- `C(lt[2*n, A000010(2*n+3)], 3)` -/
def P6799516497616311253.Spec : Prop :=
  ∀ n, (P6799516497616311253.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P15639310801972684512

`C(abs(2-record[A000010(n+3)])/2, 3)`
-/

namespace A030003.P15639310801972684512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((|2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)| : ℚ) / 2)).toNat 3

end

end A030003.P15639310801972684512

namespace A030003

/-- `C(abs(2-record[A000010(n+3)])/2, 3)` -/
def P15639310801972684512.Spec : Prop :=
  ∀ n, (P15639310801972684512.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P17896303773428106526

`C(eq[1, A067760(n)], 3)`
-/

namespace A030003.P17896303773428106526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 3

end

end A030003.P17896303773428106526

namespace A030003

/-- `C(eq[1, A067760(n)], 3)` -/
def P17896303773428106526.Spec : Prop :=
  ∀ n, (P17896303773428106526.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P10677798373830088263

`C(lt[A001222(4*n+6), 3], 3)`
-/

namespace A030003.P10677798373830088263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 6)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) 3

end

end A030003.P10677798373830088263

namespace A030003

/-- `C(lt[A001222(4*n+6), 3], 3)` -/
def P10677798373830088263.Spec : Prop :=
  ∀ n, (P10677798373830088263.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P9648243592929573707

`C(lt[n+1, A020639(n+3)]/2, 3)`
-/

namespace A030003.P9648243592929573707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2)).toNat 3

end

end A030003.P9648243592929573707

namespace A030003

/-- `C(lt[n+1, A020639(n+3)]/2, 3)` -/
def P9648243592929573707.Spec : Prop :=
  ∀ n, (P9648243592929573707.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P11759517618076161658

`C(eq[3, A002373(n+3)], 3)`
-/

namespace A030003.P11759517618076161658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 3

end

end A030003.P11759517618076161658

namespace A030003

/-- `C(eq[3, A002373(n+3)], 3)` -/
def P11759517618076161658.Spec : Prop :=
  ∀ n, (P11759517618076161658.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P8813860833777194308

`C(A047949(A005097(n+1)+2), 3)`
-/

namespace A030003.P8813860833777194308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A047949 (A005097 (n + 1) + 2).toNat).toNat 3

end

end A030003.P8813860833777194308

namespace A030003

/-- `C(A047949(A005097(n+1)+2), 3)` -/
def P8813860833777194308.Spec : Prop :=
  ∀ n, (P8813860833777194308.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P2931481318930296864

`C(eq[A060684(n+1), A060685(n+1)], 3)`
-/

namespace A030003.P2931481318930296864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060685 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) 3

end

end A030003.P2931481318930296864

namespace A030003

/-- `C(eq[A060684(n+1), A060685(n+1)], 3)` -/
def P2931481318930296864.Spec : Prop :=
  ∀ n, (P2931481318930296864.a n : ℤ) = A030003 (n + 2)

end A030003

/-! ## A030003.P1502369246731403043

`C(lt[n, A014963(2*n+3)], 3)`
-/

namespace A030003.P1502369246731403043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 3

end

end A030003.P1502369246731403043

namespace A030003

/-- `C(lt[n, A014963(2*n+3)], 3)` -/
def P1502369246731403043.Spec : Prop :=
  ∀ n, (P1502369246731403043.a n : ℤ) = A030003 (n + 2)

end A030003

/-!
# A030004: a(n) = (prime(n) - 1)*(prime(n) - 3)*(prime(n) - 5)/48.

The programs for A030004, the canonical program `A030004.P13726373812732240925` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030004 has offset 2).

The definition of A030004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030004.P11260725758782185583

`C(A005097(n+1), 3)`
-/

namespace A030004.P11260725758782185583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005097 (n + 1)).toNat 3

end

end A030004.P11260725758782185583

namespace A030004

/-- `C(A005097(n+1), 3)` -/
def P11260725758782185583.Spec : Prop :=
  ∀ n, (P11260725758782185583.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P494093817886799635

`C(A067076(n+1)+1, 3)`
-/

namespace A030004.P494093817886799635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067076 (n + 1) + 1).toNat 3

end

end A030004.P494093817886799635

namespace A030004

/-- `C(A067076(n+1)+1, 3)` -/
def P494093817886799635.Spec : Prop :=
  ∀ n, (P494093817886799635.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P13726373812732240925

`C(A006254(n+1)-1, 3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030004

/-- `C(A006254(n+1)-1, 3)` -/
def P13726373812732240925.Spec : Prop :=
  ∀ n, (P13726373812732240925.a n : ℤ) = A030004 (n + 2)

theorem P13726373812732240925.correct : P13726373812732240925.Spec := by
  intro n
  simp only [A030004, Nat.add_sub_cancel]

end A030004

/-! ## A030004.P2449066450265857925

`C(A098090(n+1)-2, 3)`
-/

namespace A030004.P2449066450265857925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A098090 (n + 1) - 2).toNat 3

end

end A030004.P2449066450265857925

namespace A030004

/-- `C(A098090(n+1)-2, 3)` -/
def P2449066450265857925.Spec : Prop :=
  ∀ n, (P2449066450265857925.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P5018798380528739113

`C(floor(A065091(n+1)/2), 3)`
-/

namespace A030004.P5018798380528739113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(A065091 (n + 1) : ℚ) / 2⌋.toNat 3

end

end A030004.P5018798380528739113

namespace A030004

/-- `C(floor(A065091(n+1)/2), 3)` -/
def P5018798380528739113.Spec : Prop :=
  ∀ n, (P5018798380528739113.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P13326649829942421378

`C(abs(1-Δ[A007504(n+1)])/2, 3)`
-/

namespace A030004.P13326649829942421378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((|1 - (f1 (n + 1) - f1 n)| : ℚ) / 2)).toNat 3

end

end A030004.P13326649829942421378

namespace A030004

/-- `C(abs(1-Δ[A007504(n+1)])/2, 3)` -/
def P13326649829942421378.Spec : Prop :=
  ∀ n, (P13326649829942421378.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P2426740087955784719

`A030007(n+2)+A030003(n+2)`
-/

namespace A030004.P2426740087955784719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030007 (n + 2) + A030003 (n + 2)

end

end A030004.P2426740087955784719

namespace A030004

/-- `A030007(n+2)+A030003(n+2)` -/
def P2426740087955784719.Spec : Prop :=
  ∀ n, P2426740087955784719.a n = A030004 (n + 2)

end A030004

/-! ## A030004.P5795364473446055879

`C(Δ[A005521(n)], 3)`
-/

namespace A030004.P5795364473446055879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005521 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 3

end

end A030004.P5795364473446055879

namespace A030004

/-- `C(Δ[A005521(n)], 3)` -/
def P5795364473446055879.Spec : Prop :=
  ∀ n, (P5795364473446055879.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P16769258922447215190

`C(A102781(n+2), 3)`
-/

namespace A030004.P16769258922447215190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A102781 (n + 2)).toNat 3

end

end A030004.P16769258922447215190

namespace A030004

/-- `C(A102781(n+2), 3)` -/
def P16769258922447215190.Spec : Prop :=
  ∀ n, (P16769258922447215190.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P758123002866858409

`C(A130290(n+2), 3)`
-/

namespace A030004.P758123002866858409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130290 (n + 2)).toNat 3

end

end A030004.P758123002866858409

namespace A030004

/-- `C(A130290(n+2), 3)` -/
def P758123002866858409.Spec : Prop :=
  ∀ n, (P758123002866858409.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P3505872812031310054

`C(floor(A000040(n+2)/2), 3)`
-/

namespace A030004.P3505872812031310054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(A000040 (n + 2) : ℚ) / 2⌋.toNat 3

end

end A030004.P3505872812031310054

namespace A030004

/-- `C(floor(A000040(n+2)/2), 3)` -/
def P3505872812031310054.Spec : Prop :=
  ∀ n, (P3505872812031310054.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P5344725012456632523

`C(eq[1, A001222(2*n+1)], 3)`
-/

namespace A030004.P5344725012456632523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 3

end

end A030004.P5344725012456632523

namespace A030004

/-- `C(eq[1, A001222(2*n+1)], 3)` -/
def P5344725012456632523.Spec : Prop :=
  ∀ n, (P5344725012456632523.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P3388375878165725680

`C(eq[2, A000005(2*n+1)], 3)`
-/

namespace A030004.P3388375878165725680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 3

end

end A030004.P3388375878165725680

namespace A030004

/-- `C(eq[2, A000005(2*n+1)], 3)` -/
def P3388375878165725680.Spec : Prop :=
  ∀ n, (P3388375878165725680.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P13038761443514937763

`C(lt[n+1, A006530(2*n+1)], 3)`
-/

namespace A030004.P13038761443514937763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 3

end

end A030004.P13038761443514937763

namespace A030004

/-- `C(lt[n+1, A006530(2*n+1)], 3)` -/
def P13038761443514937763.Spec : Prop :=
  ∀ n, (P13038761443514937763.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P10801371819795539200

`C(lt[n+1, A020639(2*n+1)], 3)`
-/

namespace A030004.P10801371819795539200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 3

end

end A030004.P10801371819795539200

namespace A030004

/-- `C(lt[n+1, A020639(2*n+1)], 3)` -/
def P10801371819795539200.Spec : Prop :=
  ∀ n, (P10801371819795539200.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P9672476196298848578

`C(eq[2*n, A000010(2*n+1)], 3)`
-/

namespace A030004.P9672476196298848578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 3

end

end A030004.P9672476196298848578

namespace A030004

/-- `C(eq[2*n, A000010(2*n+1)], 3)` -/
def P9672476196298848578.Spec : Prop :=
  ∀ n, (P9672476196298848578.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P2540961240886739330

`C(eq[1, A054024(2*n+1)], 3)`
-/

namespace A030004.P2540961240886739330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 3

end

end A030004.P2540961240886739330

namespace A030004

/-- `C(eq[1, A054024(2*n+1)], 3)` -/
def P2540961240886739330.Spec : Prop :=
  ∀ n, (P2540961240886739330.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P725584786534157776

`C(record[A069897(n+1)], 3)`
-/

namespace A030004.P725584786534157776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A030004.P725584786534157776

namespace A030004

/-- `C(record[A069897(n+1)], 3)` -/
def P725584786534157776.Spec : Prop :=
  ∀ n, (P725584786534157776.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P15424275046067911805

`C(record[A072451(n+1)], 3)`
-/

namespace A030004.P15424275046067911805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A030004.P15424275046067911805

namespace A030004

/-- `C(record[A072451(n+1)], 3)` -/
def P15424275046067911805.Spec : Prop :=
  ∀ n, (P15424275046067911805.a n : ℤ) = A030004 (n + 2)

end A030004

/-! ## A030004.P16402462664946476992

`C(record[A046073(n+1)], 3)`
-/

namespace A030004.P16402462664946476992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A030004.P16402462664946476992

namespace A030004

/-- `C(record[A046073(n+1)], 3)` -/
def P16402462664946476992.Spec : Prop :=
  ∀ n, (P16402462664946476992.a n : ℤ) = A030004 (n + 2)

end A030004

/-!
# A030005: (prime(n)-1)(prime(n)-3)/8.

The programs for A030005, the canonical program `A030005.P1735916981970022674` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030005 has offset 2).

The definition of A030005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030005.P7714258149502576790

`C(A005097(n+1), 2)`
-/

namespace A030005.P7714258149502576790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005097 (n + 1)).toNat 2

end

end A030005.P7714258149502576790

namespace A030005

/-- `C(A005097(n+1), 2)` -/
def P7714258149502576790.Spec : Prop :=
  ∀ n, (P7714258149502576790.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P3139417595472740141

`C(A067076(n+1)+1, 2)`
-/

namespace A030005.P3139417595472740141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067076 (n + 1) + 1).toNat 2

end

end A030005.P3139417595472740141

namespace A030005

/-- `C(A067076(n+1)+1, 2)` -/
def P3139417595472740141.Spec : Prop :=
  ∀ n, (P3139417595472740141.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P1735916981970022674

`C(A006254(n+1)-1, 2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030005

/-- `C(A006254(n+1)-1, 2)` -/
def P1735916981970022674.Spec : Prop :=
  ∀ n, (P1735916981970022674.a n : ℤ) = A030005 (n + 2)

theorem P1735916981970022674.correct : P1735916981970022674.Spec := by
  intro n
  simp only [A030005, Nat.add_sub_cancel]

end A030005

/-! ## A030005.P17847674912708518533

`C(A098090(n+1)-2, 2)`
-/

namespace A030005.P17847674912708518533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A098090 (n + 1) - 2).toNat 2

end

end A030005.P17847674912708518533

namespace A030005

/-- `C(A098090(n+1)-2, 2)` -/
def P17847674912708518533.Spec : Prop :=
  ∀ n, (P17847674912708518533.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P7533860590030577128

`C(A089253(n+1)-3, 2)`
-/

namespace A030005.P7533860590030577128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089253 (n + 1) - 3).toNat 2

end

end A030005.P7533860590030577128

namespace A030005

/-- `C(A089253(n+1)-3, 2)` -/
def P7533860590030577128.Spec : Prop :=
  ∀ n, (P7533860590030577128.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P3393030095644135725

`C(A175540(n+1)-n, 2)`
-/

namespace A030005.P3393030095644135725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175540 (n + 1) - (n : ℤ)).toNat 2

end

end A030005.P3393030095644135725

namespace A030005

/-- `C(A175540(n+1)-n, 2)` -/
def P3393030095644135725.Spec : Prop :=
  ∀ n, (P3393030095644135725.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P9991545355169793824

`C(floor(sqrt(A024701(n+1))), 2)`
-/

namespace A030005.P9991545355169793824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.sqrt (A024701 (n + 1))).toNat 2

end

end A030005.P9991545355169793824

namespace A030005

/-- `C(floor(sqrt(A024701(n+1))), 2)` -/
def P9991545355169793824.Spec : Prop :=
  ∀ n, (P9991545355169793824.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P16163670813793360619

`C(floor(A065091(n+1)/2), 2)`
-/

namespace A030005.P16163670813793360619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(A065091 (n + 1) : ℚ) / 2⌋.toNat 2

end

end A030005.P16163670813793360619

namespace A030005

/-- `C(floor(A065091(n+1)/2), 2)` -/
def P16163670813793360619.Spec : Prop :=
  ∀ n, (P16163670813793360619.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P6994605056223081490

`A067076(n+1)+A030007(n+2)`
-/

namespace A030005.P6994605056223081490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + A030007 (n + 2)

end

end A030005.P6994605056223081490

namespace A030005

/-- `A067076(n+1)+A030007(n+2)` -/
def P6994605056223081490.Spec : Prop :=
  ∀ n, P6994605056223081490.a n = A030005 (n + 2)

end A030005

/-! ## A030005.P14394256225119261527

`A061066(n+2)-A005097(n+1)`
-/

namespace A030005.P14394256225119261527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061066 (n + 2) - A005097 (n + 1)

end

end A030005.P14394256225119261527

namespace A030005

/-- `A061066(n+2)-A005097(n+1)` -/
def P14394256225119261527.Spec : Prop :=
  ∀ n, P14394256225119261527.a n = A030005 (n + 2)

end A030005

/-! ## A030005.P11449323596250127227

`A005097(n+1)/2*A067076(n+1)`
-/

namespace A030005.P11449323596250127227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 1) : ℚ) / 2 * (A067076 (n + 1) : ℚ)

end

end A030005.P11449323596250127227

namespace A030005

/-- `A005097(n+1)/2*A067076(n+1)` -/
def P11449323596250127227.Spec : Prop :=
  ∀ n, P11449323596250127227.a n = (A030005 (n + 2) : ℚ)

end A030005

/-! ## A030005.P2294595960019243304

`C(Δ[A005521(n)], 2)`
-/

namespace A030005.P2294595960019243304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005521 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A030005.P2294595960019243304

namespace A030005

/-- `C(Δ[A005521(n)], 2)` -/
def P2294595960019243304.Spec : Prop :=
  ∀ n, (P2294595960019243304.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P2991120753927299446

`C(A102781(n+2), 2)`
-/

namespace A030005.P2991120753927299446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A102781 (n + 2)).toNat 2

end

end A030005.P2991120753927299446

namespace A030005

/-- `C(A102781(n+2), 2)` -/
def P2991120753927299446.Spec : Prop :=
  ∀ n, (P2991120753927299446.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P11492338558964951434

`C(A130290(n+2), 2)`
-/

namespace A030005.P11492338558964951434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130290 (n + 2)).toNat 2

end

end A030005.P11492338558964951434

namespace A030005

/-- `C(A130290(n+2), 2)` -/
def P11492338558964951434.Spec : Prop :=
  ∀ n, (P11492338558964951434.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P13985235568266174901

`C(A111333(n+2)-1, 2)`
-/

namespace A030005.P13985235568266174901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A111333 (n + 2) - 1).toNat 2

end

end A030005.P13985235568266174901

namespace A030005

/-- `C(A111333(n+2)-1, 2)` -/
def P13985235568266174901.Spec : Prop :=
  ∀ n, (P13985235568266174901.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P9061696354813400822

`C(A006093(n+2)/2, 2)`
-/

namespace A030005.P9061696354813400822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) / 2)).toNat 2

end

end A030005.P9061696354813400822

namespace A030005

/-- `C(A006093(n+2)/2, 2)` -/
def P9061696354813400822.Spec : Prop :=
  ∀ n, (P9061696354813400822.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P16151889673055282123

`C(A039915(n+2)/2, 2)`
-/

namespace A030005.P16151889673055282123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A039915 (n + 2) : ℚ) / 2)).toNat 2

end

end A030005.P16151889673055282123

namespace A030005

/-- `C(A039915(n+2)/2, 2)` -/
def P16151889673055282123.Spec : Prop :=
  ∀ n, (P16151889673055282123.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P1489470441517774185

`C(floor(A000040(n+2)/2), 2)`
-/

namespace A030005.P1489470441517774185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(A000040 (n + 2) : ℚ) / 2⌋.toNat 2

end

end A030005.P1489470441517774185

namespace A030005

/-- `C(floor(A000040(n+2)/2), 2)` -/
def P1489470441517774185.Spec : Prop :=
  ∀ n, (P1489470441517774185.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P1558772750834181220

`C(record[A000010(n+3)]/2, 2)`
-/

namespace A030005.P1558772750834181220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2)).toNat 2

end

end A030005.P1558772750834181220

namespace A030005

/-- `C(record[A000010(n+3)]/2, 2)` -/
def P1558772750834181220.Spec : Prop :=
  ∀ n, (P1558772750834181220.a n : ℤ) = A030005 (n + 2)

end A030005

/-! ## A030005.P965948446724956994

`C(eq[1, A001222(2*n+1)], 2)`
-/

namespace A030005.P965948446724956994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A030005.P965948446724956994

namespace A030005

/-- `C(eq[1, A001222(2*n+1)], 2)` -/
def P965948446724956994.Spec : Prop :=
  ∀ n, (P965948446724956994.a n : ℤ) = A030005 (n + 2)

end A030005

/-!
# A030006: a(n) = (prime(n)-1)*(prime(n)-5)/12.

The programs for A030006, the canonical program `A030006.P7736794775842458342` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030006 has offset 3).

The definition of A030006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030006.P7736794775842458342

`A024702(n+3)+A024702(n+3)-A005097(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A030006

/-- `A024702(n+3)+A024702(n+3)-A005097(n+2)` -/
def P7736794775842458342.Spec : Prop :=
  ∀ n, P7736794775842458342.a n = A030006 (n + 3)

theorem P7736794775842458342.correct : P7736794775842458342.Spec := by
  intro n
  simp only [A030006, Nat.add_sub_cancel]

end A030006

/-! ## A030006.P13754419305851325548

`round((A000040(n+3)+3)²/12)-A000040(n+3)`
-/

namespace A030006.P13754419305851325548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000040 (n + 3) + 3) ^ 2 : ℚ) / 12) - A000040 (n + 3)

end

end A030006.P13754419305851325548

namespace A030006

/-- `round((A000040(n+3)+3)²/12)-A000040(n+3)` -/
def P13754419305851325548.Spec : Prop :=
  ∀ n, P13754419305851325548.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P9544791461200592860

`record[round((2-n)²/12)*A010051(n+1)]`
-/

namespace A030006.P9544791461200592860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 - (n : ℤ)) ^ 2 : ℚ) / 12) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030006.P9544791461200592860

namespace A030006

/-- `record[round((2-n)²/12)*A010051(n+1)]` -/
def P9544791461200592860.Spec : Prop :=
  ∀ n, P9544791461200592860.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P7301434984740261745

`A242090(n+3)`
-/

namespace A030006.P7301434984740261745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242090 (n + 3)

end

end A030006.P7301434984740261745

namespace A030006

/-- `A242090(n+3)` -/
def P7301434984740261745.Spec : Prop :=
  ∀ n, P7301434984740261745.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P5877198123005056642

`A001082(round((A000040(n+3)-1)/3))`
-/

namespace A030006.P5877198123005056642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (SequenceMachineLib.roundAway ((A000040 (n + 3) - 1 : ℚ) / 3)).toNat

end

end A030006.P5877198123005056642

namespace A030006

/-- `A001082(round((A000040(n+3)-1)/3))` -/
def P5877198123005056642.Spec : Prop :=
  ∀ n, P5877198123005056642.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P15510483188165717386

`A032765(A089038(n+1))`
-/

namespace A030006.P15510483188165717386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A089038 (n + 1)).toNat

end

end A030006.P15510483188165717386

namespace A030006

/-- `A032765(A089038(n+1))` -/
def P15510483188165717386.Spec : Prop :=
  ∀ n, P15510483188165717386.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P6230080081758608593

`A000212(A067076(n+2))`
-/

namespace A030006.P6230080081758608593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A067076 (n + 2)).toNat

end

end A030006.P6230080081758608593

namespace A030006

/-- `A000212(A067076(n+2))` -/
def P6230080081758608593.Spec : Prop :=
  ∀ n, P6230080081758608593.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P6493512757863847111

`A000212(A005097(n+2)-1)`
-/

namespace A030006.P6493512757863847111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A005097 (n + 2) - 1).toNat

end

end A030006.P6493512757863847111

namespace A030006

/-- `A000212(A005097(n+2)-1)` -/
def P6493512757863847111.Spec : Prop :=
  ∀ n, P6493512757863847111.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P11366347216199429761

`A000212(A006254(n+2)-2)`
-/

namespace A030006.P11366347216199429761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A006254 (n + 2) - 2).toNat

end

end A030006.P11366347216199429761

namespace A030006

/-- `A000212(A006254(n+2)-2)` -/
def P11366347216199429761.Spec : Prop :=
  ∀ n, P11366347216199429761.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P12008605386613064481

`A000212(A008507(n+2)+n+1)`
-/

namespace A030006.P12008605386613064481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A008507 (n + 2) + (n + 1 : ℤ)).toNat

end

end A030006.P12008605386613064481

namespace A030006

/-- `A000212(A008507(n+2)+n+1)` -/
def P12008605386613064481.Spec : Prop :=
  ∀ n, P12008605386613064481.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P15896945836950714162

`record[A001399(A020639(n+1))-A020639(n+1)]`
-/

namespace A030006.P15896945836950714162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A020639 (n + 1)).toNat - A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030006.P15896945836950714162

namespace A030006

/-- `record[A001399(A020639(n+1))-A020639(n+1)]` -/
def P15896945836950714162.Spec : Prop :=
  ∀ n, P15896945836950714162.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P13034728158168973304

`A325695(p?[2*n+5])`
-/

namespace A030006.P13034728158168973304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325695 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A030006.P13034728158168973304

namespace A030006

/-- `A325695(p?[2*n+5])` -/
def P13034728158168973304.Spec : Prop :=
  ∀ n, P13034728158168973304.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P2100159072834614545

`A325695(A004139(n+1))`
-/

namespace A030006.P2100159072834614545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325695 (A004139 (n + 1)).toNat

end

end A030006.P2100159072834614545

namespace A030006

/-- `A325695(A004139(n+1))` -/
def P2100159072834614545.Spec : Prop :=
  ∀ n, P2100159072834614545.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P17525270657796300111

`A325695(A215848(n+1))`
-/

namespace A030006.P17525270657796300111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325695 (A215848 (n + 1)).toNat

end

end A030006.P17525270657796300111

namespace A030006

/-- `A325695(A215848(n+1))` -/
def P17525270657796300111.Spec : Prop :=
  ∀ n, P17525270657796300111.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P15411827299938674145

`A008724(A154115(n+2))`
-/

namespace A030006.P15411827299938674145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (A154115 (n + 2)).toNat

end

end A030006.P15411827299938674145

namespace A030006

/-- `A008724(A154115(n+2))` -/
def P15411827299938674145.Spec : Prop :=
  ∀ n, P15411827299938674145.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P15949291999534823333

`A174709(A165972(n+2))`
-/

namespace A030006.P15949291999534823333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (A165972 (n + 2)).toNat

end

end A030006.P15949291999534823333

namespace A030006

/-- `A174709(A165972(n+2))` -/
def P15949291999534823333.Spec : Prop :=
  ∀ n, P15949291999534823333.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P6047560005569497733

`A325695(A045319(n+2))`
-/

namespace A030006.P6047560005569497733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325695 (A045319 (n + 2)).toNat

end

end A030006.P6047560005569497733

namespace A030006

/-- `A325695(A045319(n+2))` -/
def P6047560005569497733.Spec : Prop :=
  ∀ n, P6047560005569497733.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P14698904286895345636

`A325695(A045344(n+2))`
-/

namespace A030006.P14698904286895345636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325695 (A045344 (n + 2)).toNat

end

end A030006.P14698904286895345636

namespace A030006

/-- `A325695(A045344(n+2))` -/
def P14698904286895345636.Spec : Prop :=
  ∀ n, P14698904286895345636.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P459744836975800607

`A325695(A065091(n+2))`
-/

namespace A030006.P459744836975800607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325695 (A065091 (n + 2)).toNat

end

end A030006.P459744836975800607

namespace A030006

/-- `A325695(A065091(n+2))` -/
def P459744836975800607.Spec : Prop :=
  ∀ n, P459744836975800607.a n = A030006 (n + 3)

end A030006

/-! ## A030006.P12913012574316977437

`A325695(A140475(n+2))`
-/

namespace A030006.P12913012574316977437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325695 (A140475 (n + 2)).toNat

end

end A030006.P12913012574316977437

namespace A030006

/-- `A325695(A140475(n+2))` -/
def P12913012574316977437.Spec : Prop :=
  ∀ n, P12913012574316977437.a n = A030006 (n + 3)

end A030006

/-!
# A030007: a(n) = (prime(n)-3)*(prime(n)-5)/8.

The programs for A030007, the canonical program `A030007.P3334370624716506054` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030007 has offset 2).

The definition of A030007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030007.P4567190123761836693

`C(A067076(n+1), 2)`
-/

namespace A030007.P4567190123761836693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067076 (n + 1)).toNat 2

end

end A030007.P4567190123761836693

namespace A030007

/-- `C(A067076(n+1), 2)` -/
def P4567190123761836693.Spec : Prop :=
  ∀ n, (P4567190123761836693.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P9869586737156105816

`C(A005097(n+1)-1, 2)`
-/

namespace A030007.P9869586737156105816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005097 (n + 1) - 1).toNat 2

end

end A030007.P9869586737156105816

namespace A030007

/-- `C(A005097(n+1)-1, 2)` -/
def P9869586737156105816.Spec : Prop :=
  ∀ n, (P9869586737156105816.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P3334370624716506054

`C(A006254(n+1)-2, 2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030007

/-- `C(A006254(n+1)-2, 2)` -/
def P3334370624716506054.Spec : Prop :=
  ∀ n, (P3334370624716506054.a n : ℤ) = A030007 (n + 2)

theorem P3334370624716506054.correct : P3334370624716506054.Spec := by
  intro n
  simp only [A030007, Nat.add_sub_cancel]

end A030007

/-! ## A030007.P3903250234967837982

`C(A098090(n+1)-3, 2)`
-/

namespace A030007.P3903250234967837982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A098090 (n + 1) - 3).toNat 2

end

end A030007.P3903250234967837982

namespace A030007

/-- `C(A098090(n+1)-3, 2)` -/
def P3903250234967837982.Spec : Prop :=
  ∀ n, (P3903250234967837982.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P7391787783927540311

`C(A008507(n+1)+n, 2)`
-/

namespace A030007.P7391787783927540311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008507 (n + 1) + (n : ℤ)).toNat 2

end

end A030007.P7391787783927540311

namespace A030007

/-- `C(A008507(n+1)+n, 2)` -/
def P7391787783927540311.Spec : Prop :=
  ∀ n, (P7391787783927540311.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P14971958652476247350

`C(A175540(n+1)-(n+1), 2)`
-/

namespace A030007.P14971958652476247350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175540 (n + 1) - (n + 1 : ℤ)).toNat 2

end

end A030007.P14971958652476247350

namespace A030007

/-- `C(A175540(n+1)-(n+1), 2)` -/
def P14971958652476247350.Spec : Prop :=
  ∀ n, (P14971958652476247350.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P4873064081375761682

`C(floor(sqrt(A024701(n+1)))-1, 2)`
-/

namespace A030007.P4873064081375761682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.sqrt (A024701 (n + 1)) - 1).toNat 2

end

end A030007.P4873064081375761682

namespace A030007

/-- `C(floor(sqrt(A024701(n+1)))-1, 2)` -/
def P4873064081375761682.Spec : Prop :=
  ∀ n, (P4873064081375761682.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P9238109122125158363

`A030005(n+2)-A067076(n+1)`
-/

namespace A030007.P9238109122125158363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030005 (n + 2) - A067076 (n + 1)

end

end A030007.P9238109122125158363

namespace A030007

/-- `A030005(n+2)-A067076(n+1)` -/
def P9238109122125158363.Spec : Prop :=
  ∀ n, P9238109122125158363.a n = A030007 (n + 2)

end A030007

/-! ## A030007.P12761381943284033226

`A030004(n+2)-A030003(n+2)`
-/

namespace A030007.P12761381943284033226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030004 (n + 2) - A030003 (n + 2)

end

end A030007.P12761381943284033226

namespace A030007

/-- `A030004(n+2)-A030003(n+2)` -/
def P12761381943284033226.Spec : Prop :=
  ∀ n, P12761381943284033226.a n = A030007 (n + 2)

end A030007

/-! ## A030007.P2186508628535823585

`A030005(n+2)+1-A005097(n+1)`
-/

namespace A030007.P2186508628535823585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030005 (n + 2) + (1 - A005097 (n + 1))

end

end A030007.P2186508628535823585

namespace A030007

/-- `A030005(n+2)+1-A005097(n+1)` -/
def P2186508628535823585.Spec : Prop :=
  ∀ n, P2186508628535823585.a n = A030007 (n + 2)

end A030007

/-! ## A030007.P8889415894428434644

`C(∑[A028334(n+2)]-A028334(n+2), 2)`
-/

namespace A030007.P8889415894428434644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j - A028334 (n + 2)).toNat 2

end

end A030007.P8889415894428434644

namespace A030007

/-- `C(∑[A028334(n+2)]-A028334(n+2), 2)` -/
def P8889415894428434644.Spec : Prop :=
  ∀ n, (P8889415894428434644.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P13850534552027678028

`C(Δ[A005521(n)]-1, 2)`
-/

namespace A030007.P13850534552027678028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005521 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n - 1).toNat 2

end

end A030007.P13850534552027678028

namespace A030007

/-- `C(Δ[A005521(n)]-1, 2)` -/
def P13850534552027678028.Spec : Prop :=
  ∀ n, (P13850534552027678028.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P16315591126870908132

`C(A102781(n+2)-1, 2)`
-/

namespace A030007.P16315591126870908132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A102781 (n + 2) - 1).toNat 2

end

end A030007.P16315591126870908132

namespace A030007

/-- `C(A102781(n+2)-1, 2)` -/
def P16315591126870908132.Spec : Prop :=
  ∀ n, (P16315591126870908132.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P11185695186243775715

`C(A130290(n+2)-1, 2)`
-/

namespace A030007.P11185695186243775715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130290 (n + 2) - 1).toNat 2

end

end A030007.P11185695186243775715

namespace A030007

/-- `C(A130290(n+2)-1, 2)` -/
def P11185695186243775715.Spec : Prop :=
  ∀ n, (P11185695186243775715.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P14104533641544545312

`C(A111333(n+2)-2, 2)`
-/

namespace A030007.P14104533641544545312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A111333 (n + 2) - 2).toNat 2

end

end A030007.P14104533641544545312

namespace A030007

/-- `C(A111333(n+2)-2, 2)` -/
def P14104533641544545312.Spec : Prop :=
  ∀ n, (P14104533641544545312.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P9232995584044881080

`C((A000040(n+2)-3)/2, 2)`
-/

namespace A030007.P9232995584044881080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A000040 (n + 2) - 3 : ℚ) / 2)).toNat 2

end

end A030007.P9232995584044881080

namespace A030007

/-- `C((A000040(n+2)-3)/2, 2)` -/
def P9232995584044881080.Spec : Prop :=
  ∀ n, (P9232995584044881080.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P8846643551665156038

`C(eq[1, A001222(2*n+3)], 2)`
-/

namespace A030007.P8846643551665156038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A030007.P8846643551665156038

namespace A030007

/-- `C(eq[1, A001222(2*n+3)], 2)` -/
def P8846643551665156038.Spec : Prop :=
  ∀ n, (P8846643551665156038.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P18199190419014997468

`C(eq[2, A000005(2*n+3)], 2)`
-/

namespace A030007.P18199190419014997468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A030007.P18199190419014997468

namespace A030007

/-- `C(eq[2, A000005(2*n+3)], 2)` -/
def P18199190419014997468.Spec : Prop :=
  ∀ n, (P18199190419014997468.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P8760115852496871710

`C(lt[n, A006530(2*n+3)], 2)`
-/

namespace A030007.P8760115852496871710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 2

end

end A030007.P8760115852496871710

namespace A030007

/-- `C(lt[n, A006530(2*n+3)], 2)` -/
def P8760115852496871710.Spec : Prop :=
  ∀ n, (P8760115852496871710.a n : ℤ) = A030007 (n + 2)

end A030007

/-! ## A030007.P5189431281383429061

`C(lt[2*n, A000010(2*n+3)], 2)`
-/

namespace A030007.P5189431281383429061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 2

end

end A030007.P5189431281383429061

namespace A030007

/-- `C(lt[2*n, A000010(2*n+3)], 2)` -/
def P5189431281383429061.Spec : Prop :=
  ∀ n, (P5189431281383429061.a n : ℤ) = A030007 (n + 2)

end A030007

/-!
# A030009: Euler transform of primes.

The programs for A030009, there is no canonical definition to state claims against.
-/

/-! ## A030009.P8466462187309968895

`A156616(n)-A000120(A059204(n))`
-/

namespace A030009.P8466462187309968895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156616 n - A000120 (A059204 n).toNat

end

end A030009.P8466462187309968895

/-! ## A030009.P12358269540125710631

`A156616(n)-A094263(A000108(n))`
-/

namespace A030009.P12358269540125710631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156616 n - A094263 (A000108 n).toNat

end

end A030009.P12358269540125710631

/-! ## A030009.P4390045473162735151

`A073188(A020699(n))`
-/

namespace A030009.P4390045473162735151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A020699 n).toNat

end

end A030009.P4390045473162735151

/-!
# A030010: Inverse Euler transform of primes.

The programs for A030010, there is no canonical definition to state claims against.
-/

/-! ## A030010.P3315892686645109146

`∑{d}[n+1, A154955(#)*A305871((n+1)/#)]`
-/

namespace A030010.P3315892686645109146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A305871 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A030010.P3315892686645109146

/-!
# A030012: Euler transform of {1, primes}.

The programs for A030012, there is no canonical definition to state claims against.
-/

/-! ## A030012.P17267335347473972604

`A334220(A096980(n))`
-/

namespace A030012.P17267335347473972604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334220 (A096980 n).toNat

end

end A030012.P17267335347473972604

/-! ## A030012.P4439284957934026458

`A378086(A180459(n+3))`
-/

namespace A030012.P4439284957934026458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378086 (A180459 (n + 3)).toNat

end

end A030012.P4439284957934026458

/-! ## A030012.P2807904462265865905

`∑[∑[A351617(A001077(n))]]`
-/

namespace A030012.P2807904462265865905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351617 (A001077 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030012.P2807904462265865905

/-!
# A030013: Moebius transform of {1, primes}.

The programs for A030013, the canonical program `A030013.P3659823557313004055` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030013 has offset 1).

The definition of A030013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030013.P12082366388809929070

`A143444(n+1)+A008683(n+1)`
-/

namespace A030013.P12082366388809929070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143444 (n + 1) + A008683 (n + 1)

end

end A030013.P12082366388809929070

namespace A030013

/-- `A143444(n+1)+A008683(n+1)` -/
def P12082366388809929070.Spec : Prop :=
  ∀ n, P12082366388809929070.a n = A030013 (n + 1)

end A030013

/-! ## A030013.P13708713626576448440

`∑{d}[n+1, A008578(#)*A008683((n+1)/#)]`
-/

namespace A030013.P13708713626576448440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008578 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A030013.P13708713626576448440

namespace A030013

/-- `∑{d}[n+1, A008578(#)*A008683((n+1)/#)]` -/
def P13708713626576448440.Spec : Prop :=
  ∀ n, P13708713626576448440.a n = A030013 (n + 1)

end A030013

/-! ## A030013.P3659823557313004055

`∑{d}[n+1, A007427(#)*A030014((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A030013

/-- `∑{d}[n+1, A007427(#)*A030014((n+1)/#)]` -/
def P3659823557313004055.Spec : Prop :=
  ∀ n, P3659823557313004055.a n = A030013 (n + 1)

theorem P3659823557313004055.correct : P3659823557313004055.Spec := by
  intro n
  simp only [A030013, Nat.add_sub_cancel]

end A030013

/-! ## A030013.P11020373285305528182

`∑{d}[n+1, A007428(#)*A034773((n+1)/#)]`
-/

namespace A030013.P11020373285305528182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A034773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A030013.P11020373285305528182

namespace A030013

/-- `∑{d}[n+1, A007428(#)*A034773((n+1)/#)]` -/
def P11020373285305528182.Spec : Prop :=
  ∀ n, P11020373285305528182.a n = A030013 (n + 1)

end A030013

/-! ## A030013.P7226661765866238129

`∑{d}[n+1, A034760(#)*A055615((n+1)/#)]`
-/

namespace A030013.P7226661765866238129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034760 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A030013.P7226661765866238129

namespace A030013

/-- `∑{d}[n+1, A034760(#)*A055615((n+1)/#)]` -/
def P7226661765866238129.Spec : Prop :=
  ∀ n, P7226661765866238129.a n = A030013 (n + 1)

end A030013

/-! ## A030013.P10247851146492915813

`A007444(n+1)+A008683(n+1)-A333471(n+1)`
-/

namespace A030013.P10247851146492915813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (n + 1) + (A008683 (n + 1) - A333471 (n + 1))

end

end A030013.P10247851146492915813

namespace A030013

/-- `A007444(n+1)+A008683(n+1)-A333471(n+1)` -/
def P10247851146492915813.Spec : Prop :=
  ∀ n, P10247851146492915813.a n = A030013 (n + 1)

end A030013

/-!
# A030014: Inverse Moebius transform of {1, primes}.

The programs for A030014, the canonical program `A030014.P14052116061962603541` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030014 has offset 1).

The definition of A030014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030014.P14052116061962603541

`∑{d}[n+1, A008578(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A030014

/-- `∑{d}[n+1, A008578(#)]` -/
def P14052116061962603541.Spec : Prop :=
  ∀ n, P14052116061962603541.a n = A030014 (n + 1)

theorem P14052116061962603541.correct : P14052116061962603541.Spec := by
  intro n
  simp only [A030014, Nat.add_sub_cancel]

end A030014

/-! ## A030014.P1207192832389105636

`∑{d}[n+1, sqrt(A280076(#))]`
-/

namespace A030014.P1207192832389105636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A280076 d : ℝ)

end

end A030014.P1207192832389105636

namespace A030014

/-- `∑{d}[n+1, sqrt(A280076(#))]` -/
def P1207192832389105636.Spec : Prop :=
  ∀ n, P1207192832389105636.a n = (A030014 (n + 1) : ℝ)

end A030014

/-! ## A030014.P14717928908470691443

`∑{d}[n+1, A001747(#)/2]`
-/

namespace A030014.P14717928908470691443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A001747 d : ℚ) / 2

end

end A030014.P14717928908470691443

namespace A030014

/-- `∑{d}[n+1, A001747(#)/2]` -/
def P14717928908470691443.Spec : Prop :=
  ∀ n, P14717928908470691443.a n = (A030014 (n + 1) : ℚ)

end A030014

/-! ## A030014.P17196931354257959072

`∑{d}[n+1, A162177(#)+#]`
-/

namespace A030014.P17196931354257959072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A162177 d + (d : ℤ))

end

end A030014.P17196931354257959072

namespace A030014

/-- `∑{d}[n+1, A162177(#)+#]` -/
def P17196931354257959072.Spec : Prop :=
  ∀ n, P17196931354257959072.a n = A030014 (n + 1)

end A030014

/-! ## A030014.P2365083843126497994

`∑{d}[n+1, A163248(#)-A073169(#)]`
-/

namespace A030014.P2365083843126497994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A163248 d - A073169 d)

end

end A030014.P2365083843126497994

namespace A030014

/-- `∑{d}[n+1, A163248(#)-A073169(#)]` -/
def P2365083843126497994.Spec : Prop :=
  ∀ n, P2365083843126497994.a n = A030014 (n + 1)

end A030014

/-! ## A030014.P15124770243654926278

`∑{d}[n+1, A000005(#)*A030013((n+1)/#)]`
-/

namespace A030014.P15124770243654926278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A030013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A030014.P15124770243654926278

namespace A030014

/-- `∑{d}[n+1, A000005(#)*A030013((n+1)/#)]` -/
def P15124770243654926278.Spec : Prop :=
  ∀ n, P15124770243654926278.a n = A030014 (n + 1)

end A030014

/-! ## A030014.P2579986584067371886

`∑{d}[n+1, A008683(#)*A034773((n+1)/#)]`
-/

namespace A030014.P2579986584067371886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A034773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A030014.P2579986584067371886

namespace A030014

/-- `∑{d}[n+1, A008683(#)*A034773((n+1)/#)]` -/
def P2579986584067371886.Spec : Prop :=
  ∀ n, P2579986584067371886.a n = A030014 (n + 1)

end A030014

/-! ## A030014.P9729420245594983121

`∑{d}[n+1, A034762(#)*A055615((n+1)/#)]`
-/

namespace A030014.P9729420245594983121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034762 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A030014.P9729420245594983121

namespace A030014

/-- `∑{d}[n+1, A034762(#)*A055615((n+1)/#)]` -/
def P9729420245594983121.Spec : Prop :=
  ∀ n, P9729420245594983121.a n = A030014 (n + 1)

end A030014

/-! ## A030014.P9543901237107754853

`∑{d}[n+1, A034760(#)*A130054((n+1)/#)]`
-/

namespace A030014.P9543901237107754853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034760 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A030014.P9543901237107754853

namespace A030014

/-- `∑{d}[n+1, A034760(#)*A130054((n+1)/#)]` -/
def P9543901237107754853.Spec : Prop :=
  ∀ n, P9543901237107754853.a n = A030014 (n + 1)

end A030014

/-! ## A030014.P3883078355696470026

`∑{d}[n+1, A158611(#+1)]`
-/

namespace A030014.P3883078355696470026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158611 (d + 1)

end

end A030014.P3883078355696470026

namespace A030014

/-- `∑{d}[n+1, A158611(#+1)]` -/
def P3883078355696470026.Spec : Prop :=
  ∀ n, P3883078355696470026.a n = A030014 (n + 1)

end A030014

/-! ## A030014.P12857689531014674330

`∑{d}[n+1, A181363(#-1+#)]`
-/

namespace A030014.P12857689531014674330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A181363 ((d : ℤ) - 1 + (d : ℤ)).toNat

end

end A030014.P12857689531014674330

namespace A030014

/-- `∑{d}[n+1, A181363(#-1+#)]` -/
def P12857689531014674330.Spec : Prop :=
  ∀ n, P12857689531014674330.a n = A030014 (n + 1)

end A030014

/-! ## A030014.P16486573479003931617

`∑{d}[n+1, A007918(A068499(#))]-1`
-/

namespace A030014.P16486573479003931617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007918 (A068499 d).toNat - 1

end

end A030014.P16486573479003931617

namespace A030014

/-- `∑{d}[n+1, A007918(A068499(#))]-1` -/
def P16486573479003931617.Spec : Prop :=
  ∀ n, P16486573479003931617.a n = A030014 (n + 1)

end A030014

/-! ## A030014.P11156267726732017986

`∑{d}[n+1, A064989(A000040(#))]`
-/

namespace A030014.P11156267726732017986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064989 (A000040 d).toNat

end

end A030014.P11156267726732017986

namespace A030014

/-- `∑{d}[n+1, A064989(A000040(#))]` -/
def P11156267726732017986.Spec : Prop :=
  ∀ n, P11156267726732017986.a n = A030014 (n + 1)

end A030014

/-! ## A030014.P10780935587141982024

`∑{d}[n+1, A283463(A000040(#)+1)]`
-/

namespace A030014.P10780935587141982024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A283463 (A000040 d + 1).toNat

end

end A030014.P10780935587141982024

namespace A030014

/-- `∑{d}[n+1, A283463(A000040(#)+1)]` -/
def P10780935587141982024.Spec : Prop :=
  ∀ n, P10780935587141982024.a n = A030014 (n + 1)

end A030014

/-!
# A030015: Binomial transform of {1, primes}.

The programs for A030015, there is no canonical definition to state claims against.
-/

/-! ## A030015.P10801111245574589850

`A007443(n)+a(n-1)` with `a(0)=1`
-/

namespace A030015.P10801111245574589850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007443 n + a (n - 1)

end

end A030015.P10801111245574589850

/-! ## A030015.P13618435500092200627

`∑[A007443(A028310(n))]-1`
-/

namespace A030015.P13618435500092200627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007443 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A030015.P13618435500092200627

/-! ## A030015.P14563636998586487121

`∑[a(A000038(n))*A007443(n)]` with `a(0)=1`
-/

namespace A030015.P14563636998586487121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A000038 n).toNat * A007443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030015.P14563636998586487121

/-! ## A030015.P857692340959761299

`∑[A007443(A028310(n))^A057428(n)²]`
-/

namespace A030015.P857692340959761299
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007443 (A028310 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030015.P857692340959761299

/-! ## A030015.P11774301853940183201

`∑[A007443(A028310(n))^A070750(n+1)²]`
-/

namespace A030015.P11774301853940183201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007443 (A028310 n).toNat : ℚ) ^ (A070750 (n + 1) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030015.P11774301853940183201

/-! ## A030015.P1310029838332360933

`A033999(2*n+1)+∑[A007443(A028310(n))]`
-/

namespace A030015.P1310029838332360933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007443 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030015.P1310029838332360933

/-! ## A030015.P1095139900748772948

`∑[A007443(n+1)]+1-A007443(n+1)`
-/

namespace A030015.P1095139900748772948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A007443 (n + 1))

end

end A030015.P1095139900748772948

/-!
# A030016: Inverse binomial transform of {1, primes}.

The programs for A030016, there is no canonical definition to state claims against.
-/

/-! ## A030016.P6509075704532904338

`A007442(n)-a(n-1)` with `a(0)=1`
-/

namespace A030016.P6509075704532904338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007442 n - a (n - 1)

end

end A030016.P6509075704532904338

/-! ## A030016.P18351678719212346932

`A095195(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A030016.P18351678719212346932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095195 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A030016.P18351678719212346932

/-! ## A030016.P16142819547852052950

`A095195(A000217(n))-floor(a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A030016.P16142819547852052950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095195 (A000217 n).toNat - a (n - 1)

end

end A030016.P16142819547852052950

/-! ## A030016.P2304583517942154614

`A095195(A000217(n))+A000038(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A030016.P2304583517942154614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095195 (A000217 n).toNat + (A000038 (n + 1) - a (n - 1))

end

end A030016.P2304583517942154614

/-! ## A030016.P11755827826639017659

`A376682(∑[n]+n)`
-/

namespace A030016.P11755827826639017659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376682 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A030016.P11755827826639017659

/-!
# A030017: a(1) = 1, a(n+1) = Sum_{k = 1..n} p(k)*a(n+1-k), where p(k) is the k-th prime.

The programs for A030017, there is no canonical definition to state claims against.
-/

/-! ## A030017.P7275263415866540129

`A226033(A094854(n+1))`
-/

namespace A030017.P7275263415866540129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226033 (A094854 (n + 1)).toNat

end

end A030017.P7275263415866540129

/-! ## A030017.P10816327789830083903

`A071718(n)-A003056(A014445(n))`
-/

namespace A030017.P10816327789830083903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n - A003056 (A014445 n).toNat

end

end A030017.P10816327789830083903

/-!
# A030018: Coefficients in 1/(1+P(x)), where P(x) is the generating function of the primes.

The programs for A030018, there is no canonical definition to state claims against.
-/

/-! ## A030018.P6041981302157179548

`A354349(2^n)`
-/

namespace A030018.P6041981302157179548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354349 (2 ^ n)

end

end A030018.P6041981302157179548

/-! ## A030018.P1660720270664028150

`and(-1, A354349(A000079(n)))`
-/

namespace A030018.P1660720270664028150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A354349 (A000079 n).toNat)

end

end A030018.P1660720270664028150

/-! ## A030018.P14215179050655897513

`A354349(A000079(n))+A025466(n)`
-/

namespace A030018.P14215179050655897513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354349 (A000079 n).toNat + A025466 n

end

end A030018.P14215179050655897513

/-! ## A030018.P17725541967426881479

`A354349(A000079(n))+A277165(n)`
-/

namespace A030018.P17725541967426881479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354349 (A000079 n).toNat + A277165 n

end

end A030018.P17725541967426881479

/-! ## A030018.P11066058730217587823

`A354349(A000079(n))%A000051(n)`
-/

namespace A030018.P11066058730217587823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354349 (A000079 n).toNat) (A000051 n)

end

end A030018.P11066058730217587823

/-!
# A030019: Number of labeled spanning trees in the complete hypergraph on n vertices (all hyperedges having cardinality 2 or greater).

The programs for A030019, there is no canonical definition to state claims against.
-/

/-! ## A030019.P15886582255410063261

`A035051(A233583(n+1))/A233583(n+1)`
-/

namespace A030019.P15886582255410063261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035051 (A233583 (n + 1)).toNat : ℚ) / (A233583 (n + 1) : ℚ)

end

end A030019.P15886582255410063261

/-! ## A030019.P3885019644604149159

`A134958(n)/2^n`
-/

namespace A030019.P3885019644604149159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134958 n : ℚ) / (2 ^ n : ℚ)

end

end A030019.P3885019644604149159

/-! ## A030019.P15204493392432502013

`floor(A134958(n)/A000079(n))`
-/

namespace A030019.P15204493392432502013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134958 n : ℚ) / (A000079 n : ℚ)⌋

end

end A030019.P15204493392432502013

/-! ## A030019.P12312561332262223417

`A134954(n)/A134956(n)*A134958(n)`
-/

namespace A030019.P12312561332262223417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134954 n : ℚ) / (A134956 n : ℚ) * (A134958 n : ℚ)

end

end A030019.P12312561332262223417

/-! ## A030019.P9698185862267869926

`A335975(record[gcd(n, A114327(n+1))])`
-/

namespace A030019.P9698185862267869926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A114327 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335975 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A030019.P9698185862267869926

/-!
# A030020: Theta series of hypothetical extremal 16-dimensional strongly 6-modular lattice.

The programs for A030020, there is no canonical definition to state claims against.
-/

/-! ## A030020.P12943190017745989185

`A028242(A179540(n))*A351690(n+1)`
-/

namespace A030020.P12943190017745989185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A179540 n).toNat * A351690 (n + 1)

end

end A030020.P12943190017745989185

/-!
# A030021: Theta series of 8-dimensional extremal strongly 10-modular lattice.

The programs for A030021, there is no canonical definition to state claims against.
-/

/-! ## A030021.P4202261093588623772

`A034600(n)%A376687(n+1)`
-/

namespace A030021.P4202261093588623772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034600 n) (A376687 (n + 1))

end

end A030021.P4202261093588623772

/-! ## A030021.P1170567663050911488

`A007434(n+1)*A271439(A000043(n+1))`
-/

namespace A030021.P1170567663050911488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) * A271439 (A000043 (n + 1)).toNat

end

end A030021.P1170567663050911488

/-! ## A030021.P8506229631981834719

`A001615(A000217(2*n+1))*A293549(n)`
-/

namespace A030021.P8506229631981834719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A000217 (2 * n + 1)).toNat * A293549 n

end

end A030021.P8506229631981834719

/-!
# A030022: Theta series of 8-dimensional extremal strongly 10-modular lattice.

The programs for A030022, there is no canonical definition to state claims against.
-/

/-! ## A030022.P13019031417236034602

`A265584(∑[A098762(n)])`
-/

namespace A030022.P13019031417236034602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265584 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030022.P13019031417236034602

/-!
# A030024: Theta series of hypothetical extremal 16-dimensional strongly 10-modular lattice.

The programs for A030024, there is no canonical definition to state claims against.
-/

/-! ## A030024.P5299521042398501207

`A342588(A077802(n))`
-/

namespace A030024.P5299521042398501207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342588 (A077802 n).toNat

end

end A030024.P5299521042398501207

/-!
# A030026: Theta series of 12-dimensional extremal 15-modular lattice.

The programs for A030026, there is no canonical definition to state claims against.
-/

/-! ## A030026.P10658259361290025574

`A062756(A083161(n+1))*A083168(2*n+1)`
-/

namespace A030026.P10658259361290025574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A083161 (n + 1)).toNat * A083168 (2 * n + 1)

end

end A030026.P10658259361290025574

/-!
# A030027: From average theta series of genus of 8-dimensional 17-modular lattices.

The programs for A030027, there is no canonical definition to state claims against.
-/

/-! ## A030027.P2292031822465914349

`∑{d}[n, #^3]%A193379(n+1)`
-/

namespace A030027.P2292031822465914349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) (A193379 (n + 1))

end

end A030027.P2292031822465914349

/-! ## A030027.P1992927838999673677

`∑{d}[n, A000578(#)]%record[A174449(n)]`
-/

namespace A030027.P1992927838999673677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A000578 d) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A030027.P1992927838999673677

/-! ## A030027.P14839742675585097944

`A001158(A059015(n))-A170984(n)`
-/

namespace A030027.P14839742675585097944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A059015 n).toNat - A170984 n

end

end A030027.P14839742675585097944

/-!
# A030028: Theta series of hypothetical extremal 12-dimensional strongly 21-modular lattice.

The programs for A030028, there is no canonical definition to state claims against.
-/

/-! ## A030028.P9721046451256075536

`A018234(n)%A039915(n!)`
-/

namespace A030028.P9721046451256075536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018234 n) (A039915 (Nat.factorial n))

end

end A030028.P9721046451256075536

/-! ## A030028.P4940056417439929894

`A222456(∑[A061006(n+1)!])`
-/

namespace A030028.P4940056417439929894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A061006 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030028.P4940056417439929894

/-!
# A030029: Theta series of hypothetical extremal 12-dimensional strongly 21-modular lattice.

The programs for A030029, there is no canonical definition to state claims against.
-/

/-! ## A030029.P18296921912837143749

`A000217(n+1)*A298957(A297134(2*(n+1)))`
-/

namespace A030029.P18296921912837143749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A298957 (A297134 (2 * (n + 1))).toNat

end

end A030029.P18296921912837143749

/-! ## A030029.P14159041936964756590

`A007954(A183763(n+1)*A313719(n))`
-/

namespace A030029.P14159041936964756590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A183763 (n + 1) * A313719 n).toNat

end

end A030029.P14159041936964756590

/-!
# A030030: Weight distribution of nonlinear binary (36,2^18,8) code.

The programs for A030030, there is no canonical definition to state claims against.
-/

/-! ## A030030.P1663407515254065090

`A004525(A109142(n)*A133310(n))`
-/

namespace A030030.P1663407515254065090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A109142 n * A133310 n).toNat

end

end A030030.P1663407515254065090

/-! ## A030030.P17963155102428817173

`A004525(A109142(n)*A152194(n))`
-/

namespace A030030.P17963155102428817173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A109142 n * A152194 n).toNat

end

end A030030.P17963155102428817173

/-!
# A030031: Binomial((n+1)^2, prime(n)).

The programs for A030031, there is no canonical definition to state claims against.
-/

/-! ## A030031.P9124115897365220163

`C((n+2)², p?[abs(xor(n, -2))])`
-/

namespace A030031.P9124115897365220163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 2) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030031.P9124115897365220163

/-! ## A030031.P10868000001417708364

`C((n+2)², p?[xor(1, n)+1])`
-/

namespace A030031.P10868000001417708364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 2) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A030031.P10868000001417708364

/-! ## A030031.P10614182953621339468

`C((n+2)², p?[n-(-1)^n])`
-/

namespace A030031.P10614182953621339468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 2) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030031.P10614182953621339468

/-! ## A030031.P7714012727034550196

`C((n+2)², A000040(n+1))`
-/

namespace A030031.P7714012727034550196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 2) ^ 2) (A000040 (n + 1)).toNat

end

end A030031.P7714012727034550196

/-! ## A030031.P15088359235165835707

`C(A132145(n+1)², A055398(n+1))`
-/

namespace A030031.P15088359235165835707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A132145 (n + 1) ^ 2).toNat (A055398 (n + 1)).toNat

end

end A030031.P15088359235165835707

/-!
# A030032: a(n+1) = Sum_{k=0..floor(n/3)} a(k) * a(n-k).

The programs for A030032, there is no canonical definition to state claims against.
-/

/-! ## A030032.P9616263292055721538

`ceil(A319765(n)/∑[∏{e}[n, #+1]])`
-/

namespace A030032.P9616263292055721538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319765 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉

end

end A030032.P9616263292055721538

/-! ## A030032.P14707106164644418189

`A078129(A000048(n))`
-/

namespace A030032.P14707106164644418189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (A000048 n).toNat

end

end A030032.P14707106164644418189

/-! ## A030032.P9967228141358710324

`A245636(2*A000105(n))`
-/

namespace A030032.P9967228141358710324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (2 * A000105 n).toNat

end

end A030032.P9967228141358710324

/-! ## A030032.P8367774307628513103

`ceil(A319765(n)/A054519(n))`
-/

namespace A030032.P8367774307628513103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319765 n : ℚ) / (A054519 n : ℚ)⌉

end

end A030032.P8367774307628513103

/-! ## A030032.P9227562532315165106

`A245636(A000988(n)+C(n, 2))`
-/

namespace A030032.P9227562532315165106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (A000988 n + (Nat.choose n 2 : ℤ)).toNat

end

end A030032.P9227562532315165106

/-!
# A030033: a(n+1) = Sum_{k = 0..floor(2*n/3)} a(k)*a(n-k) for n >= 0 with a(0) = 1.

The programs for A030033, there is no canonical definition to state claims against.
-/

/-! ## A030033.P11267044017707142184

`A059078(n)+A025453(A032298(n))`
-/

namespace A030033.P11267044017707142184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059078 n + A025453 (A032298 n).toNat

end

end A030033.P11267044017707142184

/-! ## A030033.P12698529600258047874

`A335548(n)+A000120(A094388(n))`
-/

namespace A030033.P12698529600258047874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335548 n + A000120 (A094388 n).toNat

end

end A030033.P12698529600258047874

/-! ## A030033.P12524364142424443040

`A051742(floor(A269134(n+1)/A256528(n+1))+1)`
-/

namespace A030033.P12524364142424443040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (⌊(A269134 (n + 1) : ℚ) / (A256528 (n + 1) : ℚ)⌋ + 1).toNat

end

end A030033.P12524364142424443040

/-! ## A030033.P3125236342400000971

`A263977(A023431(n))`
-/

namespace A030033.P3125236342400000971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263977 (A023431 n).toNat

end

end A030033.P3125236342400000971

/-! ## A030033.P1913304818547944131

`A158037(A202842(n))`
-/

namespace A030033.P1913304818547944131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158037 (A202842 n).toNat

end

end A030033.P1913304818547944131

/-!
# A030034: a(n+1) = Sum_{k=0..floor(n/4)} a(k) * a(n-k).

The programs for A030034, there is no canonical definition to state claims against.
-/

/-! ## A030034.P3079539054916738826

`A377357(A109537(n+1))`
-/

namespace A030034.P3079539054916738826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377357 (A109537 (n + 1)).toNat

end

end A030034.P3079539054916738826

/-! ## A030034.P11727849838588125760

`A342526(ceil(A003242(n)/5))`
-/

namespace A030034.P11727849838588125760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342526 ⌈(A003242 n : ℚ) / 5⌉.toNat

end

end A030034.P11727849838588125760

/-! ## A030034.P13841309746773121225

`A194975(A000700(floor((2*n²+n)/6)))`
-/

namespace A030034.P13841309746773121225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194975 (A000700 ⌊(2 * n ^ 2 + n : ℚ) / 6⌋.toNat).toNat

end

end A030034.P13841309746773121225

/-! ## A030034.P11057800293450466112

`ceil(sqrt(A374682(2*n+3)/A046312(n+1)))`
-/

namespace A030034.P11057800293450466112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A374682 (2 * n + 3) : ℚ) / (A046312 (n + 1) : ℚ) : ℝ)⌉

end

end A030034.P11057800293450466112

/-! ## A030034.P14821352808776891325

`A122156(A122156(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A030034.P14821352808776891325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  A122156 (A122156 (a (n - 1) + a (n - 2)).toNat).toNat

end

end A030034.P14821352808776891325

/-!
# A030035: a(n+1) = Sum_{k=0..floor(3*n/4)} a(k) * a(n-k).

The programs for A030035, there is no canonical definition to state claims against.
-/

/-! ## A030035.P10241109435476982529

`A352128(A030037(n))+A193050(n)`
-/

namespace A030035.P10241109435476982529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352128 (A030037 n).toNat + A193050 n

end

end A030035.P10241109435476982529

/-! ## A030035.P7900135101690453024

`A254948(A034823(n))`
-/

namespace A030035.P7900135101690453024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254948 (A034823 n).toNat

end

end A030035.P7900135101690453024

/-! ## A030035.P9660521528705221509

`A254948(A036625(n))`
-/

namespace A030035.P9660521528705221509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254948 (A036625 n).toNat

end

end A030035.P9660521528705221509

/-! ## A030035.P17596402134095419573

`A254948(A036626(n))`
-/

namespace A030035.P17596402134095419573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254948 (A036626 n).toNat

end

end A030035.P17596402134095419573

/-! ## A030035.P16240029352323032698

`A254948(A036722(n))`
-/

namespace A030035.P16240029352323032698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254948 (A036722 n).toNat

end

end A030035.P16240029352323032698

/-!
# A030036: a(n+1) = Sum_{k=0..floor(n/5)} a(k) * a(n-k).

The programs for A030036, there is no canonical definition to state claims against.
-/

/-! ## A030036.P11064298460073741418

`A120401(floor(sqrt(A264078(n))))`
-/

namespace A030036.P11064298460073741418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (Int.sqrt (A264078 n)).toNat

end

end A030036.P11064298460073741418

/-!
# A030037: a(n+1) = Sum_{k=0..floor(2*n/5)} a(k) * a(n-k).

The programs for A030037, there is no canonical definition to state claims against.
-/

/-! ## A030037.P11267315244790686896

`∏{e}[(4^n-2^n)/2, A005230(#)]`
-/

namespace A030037.P11267315244790686896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A005230 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A030037.P11267315244790686896

/-! ## A030037.P10096149439917564643

`A115180(A324767(n+1))`
-/

namespace A030037.P10096149439917564643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (A324767 (n + 1)).toNat

end

end A030037.P10096149439917564643

/-! ## A030037.P2262870721324631619

`A005230(A004904(round(acot(n)+n)))`
-/

namespace A030037.P2262870721324631619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (A004904 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A030037.P2262870721324631619

/-! ## A030037.P11155882811848518971

`A005230(gcd(A001813(n), A252648(n)))`
-/

namespace A030037.P11155882811848518971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (Int.gcd (A001813 n) (A252648 n))

end

end A030037.P11155882811848518971

/-! ## A030037.P5567374090499787386

`A003056(A004114(n))-A337605(2*(n+1))`
-/

namespace A030037.P5567374090499787386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A004114 n).toNat - A337605 (2 * (n + 1))

end

end A030037.P5567374090499787386

/-!
# A030038: a(n+1) = Sum_{k=0..floor(3*n/5)} a(k) * a(n-k).

The programs for A030038, there is no canonical definition to state claims against.
-/

/-! ## A030038.P11440632193353440900

`A238593(A030040(n))`
-/

namespace A030038.P11440632193353440900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238593 (A030040 n).toNat

end

end A030038.P11440632193353440900

/-! ## A030038.P14735337315520647318

`A030040(A089840(∑[n]))`
-/

namespace A030038.P14735337315520647318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030040 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030038.P14735337315520647318

/-! ## A030038.P7933188265887741931

`A030040(A122284(∑[n]))`
-/

namespace A030038.P7933188265887741931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030040 (A122284 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030038.P7933188265887741931

/-! ## A030038.P10043509144012172704

`A030040(A122288(∑[n]))`
-/

namespace A030038.P10043509144012172704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030040 (A122288 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030038.P10043509144012172704

/-! ## A030038.P1247984523269424656

`A030040(A077168(n)-1)`
-/

namespace A030038.P1247984523269424656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030040 (A077168 n - 1).toNat

end

end A030038.P1247984523269424656

/-!
# A030039: a(n+1) = Sum_{k=0..floor(4*n/5)} a(k) * a(n-k).

The programs for A030039, there is no canonical definition to state claims against.
-/

/-! ## A030039.P3546806735747260148

`A004198(A004192(n))+A001384(n)`
-/

namespace A030039.P3546806735747260148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (A004192 n).toNat + A001384 n

end

end A030039.P3546806735747260148

/-! ## A030039.P5225339030628579709

`xor(A036617(n), A161421(A036421(n)))`
-/

namespace A030039.P5225339030628579709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036617 n) (A161421 (A036421 n).toNat)

end

end A030039.P5225339030628579709

/-! ## A030039.P1671638797133932092

`A076411(A194689(n)+A028326(n+1))`
-/

namespace A030039.P1671638797133932092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (A194689 n + A028326 (n + 1)).toNat

end

end A030039.P1671638797133932092

/-! ## A030039.P4586045780794364853

`A325799(A146826(n+1))+A000598(n)`
-/

namespace A030039.P4586045780794364853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325799 (A146826 (n + 1)).toNat + A000598 n

end

end A030039.P4586045780794364853

/-!
# A030041: a(n+1) = Sum_{k=0..sqrt(n)} a(k) * a(n-k).

The programs for A030041, there is no canonical definition to state claims against.
-/

/-! ## A030041.P3618051980773168219

`A352512(A194147(n+1))+A094537(n)`
-/

namespace A030041.P3618051980773168219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352512 (A194147 (n + 1)).toNat + A094537 n

end

end A030041.P3618051980773168219

/-! ## A030041.P14858205043231954502

`A067731(A148812(n))`
-/

namespace A030041.P14858205043231954502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067731 (A148812 n).toNat

end

end A030041.P14858205043231954502

/-! ## A030041.P13993614156618496020

`A120836(A186272(n+1))`
-/

namespace A030041.P13993614156618496020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120836 (A186272 (n + 1)).toNat

end

end A030041.P13993614156618496020

/-! ## A030041.P12550202172804856654

`A194343(round(sqrt(A306080(n))))`
-/

namespace A030041.P12550202172804856654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194343 (SequenceMachineLib.roundAway (Real.sqrt (A306080 n : ℝ))).toNat

end

end A030041.P12550202172804856654

/-!
# A030042: Unreduced numerator of volume of best symplectic packing of n balls in 4-dimensional ball.

The programs for A030042, there is no canonical definition to state claims against.
-/

/-! ## A030042.P7234301201237103175

`A045496(∑[A119338(n+1)])`
-/

namespace A030042.P7234301201237103175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045496 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030042.P7234301201237103175

/-!
# A030043: Unreduced denominator of volume of best symplectic packing of n balls in 4-dimensional ball.

The programs for A030043, there is no canonical definition to state claims against.
-/

/-! ## A030043.P11191472282096975677

`A045497(∑[A119338(n+1)])`
-/

namespace A030043.P11191472282096975677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045497 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030043.P11191472282096975677

/-!
# A030044: High temperature series in v^2 = tanh(J/kT)^2 for spin-1/2 Ising partition function on 4D simple cubic lattice, divided by 2/(1+v)^4.

The programs for A030044, there is no canonical definition to state claims against.
-/

/-! ## A030044.P2871834900577125658

`A130339(A235370(n)-n)`
-/

namespace A030044.P2871834900577125658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130339 (A235370 n - (n : ℤ)).toNat

end

end A030044.P2871834900577125658

/-!
# A030045: Low temperature series for spin-1/2 Ising partition function on 4D simple cubic lattice.

The programs for A030045, there is no canonical definition to state claims against.
-/

/-! ## A030045.P3359201079556628621

`A371049(A043317(n+1))`
-/

namespace A030045.P3359201079556628621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371049 (A043317 (n + 1)).toNat

end

end A030045.P3359201079556628621

/-! ## A030045.P11422598981501858393

`A371049(A044914(n+1))`
-/

namespace A030045.P11422598981501858393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371049 (A044914 (n + 1)).toNat

end

end A030045.P11422598981501858393

/-! ## A030045.P565315242158082328

`A371049(A055648(n+1))`
-/

namespace A030045.P565315242158082328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371049 (A055648 (n + 1)).toNat

end

end A030045.P565315242158082328

/-! ## A030045.P8798610645399155267

`A371049(A071786(n+1))`
-/

namespace A030045.P8798610645399155267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371049 (A071786 (n + 1)).toNat

end

end A030045.P8798610645399155267

/-! ## A030045.P12266429748114948226

`A371049(A078546(n+1))`
-/

namespace A030045.P12266429748114948226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371049 (A078546 (n + 1)).toNat

end

end A030045.P12266429748114948226

/-!
# A030046: Low temperature series for spin-1/2 Ising magnetic susceptibility on 4D simple cubic lattice (divided by 4).

The programs for A030046, there is no canonical definition to state claims against.
-/

/-! ## A030046.P4114390971261332479

`A002925(A219209(n))`
-/

namespace A030046.P4114390971261332479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002925 (A219209 n).toNat

end

end A030046.P4114390971261332479

/-! ## A030046.P13978150900668583000

`A002925(A250266(n)+1)`
-/

namespace A030046.P13978150900668583000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002925 (A250266 n + 1).toNat

end

end A030046.P13978150900668583000

/-! ## A030046.P14691405579470437516

`A002925(C(n, A237291(n+1)))`
-/

namespace A030046.P14691405579470437516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002925 (Nat.choose n (A237291 (n + 1)).toNat)

end

end A030046.P14691405579470437516

/-! ## A030046.P17270668334718880330

`A002925(A044913(round(sqrt(n²+1))))`
-/

namespace A030046.P17270668334718880330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002925 (A044913 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A030046.P17270668334718880330

/-! ## A030046.P18206952011787332277

`A002925(n^A194698(3*(n+1)))`
-/

namespace A030046.P18206952011787332277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002925 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A194698 (3 * (n + 1)) : ℤ))).toNat

end

end A030046.P18206952011787332277

/-!
# A030048: High temperature series for spin-1/2 Ising partition function on 5D simple cubic lattice.

The programs for A030048, there is no canonical definition to state claims against.
-/

/-! ## A030048.P6608705485037337046

`A161764(A304936(n))*A357312(n)`
-/

namespace A030048.P6608705485037337046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 (A304936 n).toNat * A357312 n

end

end A030048.P6608705485037337046

/-!
# A030051: Numbers from the 290-theorem.

The programs for A030051, there is no canonical definition to state claims against.
-/

/-! ## A030051.P4016199274346103934

`A005117(A187947(n+1)^A254730(n))`
-/

namespace A030051.P4016199274346103934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.roundAway ((A187947 (n + 1) : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A030051.P4016199274346103934

/-! ## A030051.P10561797989761912542

`A005117(A242094(n+1)^A254730(n))`
-/

namespace A030051.P10561797989761912542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.roundAway ((A242094 (n + 1) : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A030051.P10561797989761912542

/-! ## A030051.P9641255811234977320

`A348506(A187947(n+1)^A254730(n))`
-/

namespace A030051.P9641255811234977320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (SequenceMachineLib.roundAway ((A187947 (n + 1) : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A030051.P9641255811234977320

/-! ## A030051.P14647108933562577183

`A348506(A242094(n+1)^A254730(n))`
-/

namespace A030051.P14647108933562577183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (SequenceMachineLib.roundAway ((A242094 (n + 1) : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A030051.P14647108933562577183

/-! ## A030051.P11780461361173570679

`A005117(C(A187947(n+1), A254730(n)))`
-/

namespace A030051.P11780461361173570679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.choose (A187947 (n + 1)).toNat (A254730 n).toNat)

end

end A030051.P11780461361173570679

/-!
# A030052: Smallest number whose n-th power is a sum of distinct smaller positive n-th powers.

The programs for A030052, there is no canonical definition to state claims against.
-/

/-! ## A030052.P14403628624307447049

`A332065(∑[n+1])`
-/

namespace A030052.P14403628624307447049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332065 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030052.P14403628624307447049

/-! ## A030052.P10178884863912975806

`A000027(A332065(n*(n+3)/2+1))`
-/

namespace A030052.P10178884863912975806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A332065 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2) + 1)).toNat).toNat

end

end A030052.P10178884863912975806

/-! ## A030052.P8005023352072718436

`A332065(A000217(n+1))%A075978(n)`
-/

namespace A030052.P8005023352072718436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332065 (A000217 (n + 1)).toNat) (A075978 n)

end

end A030052.P8005023352072718436

/-! ## A030052.P12587556699052193206

`A332065(A000217(n+1))+A326016(n+1)`
-/

namespace A030052.P12587556699052193206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332065 (A000217 (n + 1)).toNat + A326016 (n + 1)

end

end A030052.P12587556699052193206

/-! ## A030052.P7365651997186455629

`A332065(A000217(n+1))+A063524(n+3)`
-/

namespace A030052.P7365651997186455629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332065 (A000217 (n + 1)).toNat + A063524 (n + 3)

end

end A030052.P7365651997186455629

/-!
# A030053: a(n) = binomial(2n+1,n-3).

The programs for A030053, the canonical program `A030053.P13797506381645707024` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030053 has offset 3).

The definition of A030053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030053.P4925805822646887331

`A037954(2*n+7)`
-/

namespace A030053.P4925805822646887331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037954 (2 * n + 7)

end

end A030053.P4925805822646887331

namespace A030053

/-- `A037954(2*n+7)` -/
def P4925805822646887331.Spec : Prop :=
  ∀ n, P4925805822646887331.a n = A030053 (n + 3)

end A030053

/-! ## A030053.P10359069825530515358

`A037957(2*n+7)`
-/

namespace A030053.P10359069825530515358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037957 (2 * n + 7)

end

end A030053.P10359069825530515358

namespace A030053

/-- `A037957(2*n+7)` -/
def P10359069825530515358.Spec : Prop :=
  ∀ n, P10359069825530515358.a n = A030053 (n + 3)

end A030053

/-! ## A030053.P15007177547303890515

`2*A172064(n)-A172063(n)`
-/

namespace A030053.P15007177547303890515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172064 n - A172063 n

end

end A030053.P15007177547303890515

namespace A030053

/-- `2*A172064(n)-A172063(n)` -/
def P15007177547303890515.Spec : Prop :=
  ∀ n, P15007177547303890515.a n = A030053 (n + 3)

end A030053

/-! ## A030053.P7557028837157137173

`record[or(A037957(n+1), A210628(n))]`
-/

namespace A030053.P7557028837157137173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037957 (n + 1)) (A210628 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030053.P7557028837157137173

namespace A030053

/-- `record[or(A037957(n+1), A210628(n))]` -/
def P7557028837157137173.Spec : Prop :=
  ∀ n, P7557028837157137173.a n = A030053 (n + 3)

end A030053

/-! ## A030053.P13797506381645707024

`A002696(n+4)-A003516(n+3)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A030053

/-- `A002696(n+4)-A003516(n+3)` -/
def P13797506381645707024.Spec : Prop :=
  ∀ n, P13797506381645707024.a n = A030053 (n + 3)

theorem P13797506381645707024.correct : P13797506381645707024.Spec := by
  intro n
  simp only [A030053, Nat.add_sub_cancel]

end A030053

/-! ## A030053.P13454777307407368598

`(A002696(n+4)-A003517(n+3))/2`
-/

namespace A030053.P13454777307407368598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002696 (n + 4) - A003517 (n + 3) : ℚ) / 2

end

end A030053.P13454777307407368598

namespace A030053

/-- `(A002696(n+4)-A003517(n+3))/2` -/
def P13454777307407368598.Spec : Prop :=
  ∀ n, P13454777307407368598.a n = (A030053 (n + 3) : ℚ)

end A030053

/-! ## A030053.P10101879716600354695

`A002058(n+6)/2-A003517(n+3)`
-/

namespace A030053.P10101879716600354695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002058 (n + 6) : ℚ) / 2 - (A003517 (n + 3) : ℚ)

end

end A030053.P10101879716600354695

namespace A030053

/-- `A002058(n+6)/2-A003517(n+3)` -/
def P10101879716600354695.Spec : Prop :=
  ∀ n, P10101879716600354695.a n = (A030053 (n + 3) : ℚ)

end A030053

/-! ## A030053.P13158189310389424349

`A002696(n+4)-A002058(n+6)/2`
-/

namespace A030053.P13158189310389424349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002696 (n + 4) : ℚ) - (A002058 (n + 6) : ℚ) / 2

end

end A030053.P13158189310389424349

namespace A030053

/-- `A002696(n+4)-A002058(n+6)/2` -/
def P13158189310389424349.Spec : Prop :=
  ∀ n, P13158189310389424349.a n = (A030053 (n + 3) : ℚ)

end A030053

/-! ## A030053.P572555686622248449

`A002696(n+4)-(A002696(n+3)+A002694(n+3))`
-/

namespace A030053.P572555686622248449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002696 (n + 4) - (A002696 (n + 3) + A002694 (n + 3))

end

end A030053.P572555686622248449

namespace A030053

/-- `A002696(n+4)-(A002696(n+3)+A002694(n+3))` -/
def P572555686622248449.Spec : Prop :=
  ∀ n, P572555686622248449.a n = A030053 (n + 3)

end A030053

/-! ## A030053.P11125691982718707056

`A001789(n+3)/A001789(n+4)*A002696(n+4)`
-/

namespace A030053.P11125691982718707056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001789 (n + 3) : ℚ) / (A001789 (n + 4) : ℚ) * (A002696 (n + 4) : ℚ)

end

end A030053.P11125691982718707056

namespace A030053

/-- `A001789(n+3)/A001789(n+4)*A002696(n+4)` -/
def P11125691982718707056.Spec : Prop :=
  ∀ n, P11125691982718707056.a n = (A030053 (n + 3) : ℚ)

end A030053

/-! ## A030053.P14061790004616904008

`A126325(A167614(n+1))`
-/

namespace A030053.P14061790004616904008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126325 (A167614 (n + 1)).toNat

end

end A030053.P14061790004616904008

namespace A030053

/-- `A126325(A167614(n+1))` -/
def P14061790004616904008.Spec : Prop :=
  ∀ n, P14061790004616904008.a n = A030053 (n + 3)

end A030053

/-! ## A030053.P17821745661618207064

`A126325(A167499(n)+n)`
-/

namespace A030053.P17821745661618207064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126325 (A167499 n + (n : ℤ)).toNat

end

end A030053.P17821745661618207064

namespace A030053

/-- `A126325(A167499(n)+n)` -/
def P17821745661618207064.Spec : Prop :=
  ∀ n, P17821745661618207064.a n = A030053 (n + 3)

end A030053

/-! ## A030053.P17961022978616076208

`A111418(A167614(n+2))`
-/

namespace A030053.P17961022978616076208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 (A167614 (n + 2)).toNat

end

end A030053.P17961022978616076208

namespace A030053

/-- `A111418(A167614(n+2))` -/
def P17961022978616076208.Spec : Prop :=
  ∀ n, P17961022978616076208.a n = A030053 (n + 3)

end A030053

/-! ## A030053.P14607436781162801876

`A122366(∑[n+3]+n+3)`
-/

namespace A030053.P14607436781162801876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A030053.P14607436781162801876

namespace A030053

/-- `A122366(∑[n+3]+n+3)` -/
def P14607436781162801876.Spec : Prop :=
  ∀ n, P14607436781162801876.a n = A030053 (n + 3)

end A030053

/-! ## A030053.P1614232784679736473

`C(2*n+7, n)`
-/

namespace A030053.P1614232784679736473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 7) n

end

end A030053.P1614232784679736473

namespace A030053

/-- `C(2*n+7, n)` -/
def P1614232784679736473.Spec : Prop :=
  ∀ n, (P1614232784679736473.a n : ℤ) = A030053 (n + 3)

end A030053

/-! ## A030053.P2618025336140126686

`C(2, n+3)+C(Δ[(n+3)²], n)`
-/

namespace A030053.P2618025336140126686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 3) + Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat n

end

end A030053.P2618025336140126686

namespace A030053

/-- `C(2, n+3)+C(Δ[(n+3)²], n)` -/
def P2618025336140126686.Spec : Prop :=
  ∀ n, (P2618025336140126686.a n : ℤ) = A030053 (n + 3)

end A030053

/-!
# A030054: a(n) = binomial(2n+1,n-4).

The programs for A030054, the canonical program `A030054.P3919008431183714172` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030054 has offset 4).

The definition of A030054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030054.P4124043088465537644

`A037958(2*n+9)`
-/

namespace A030054.P4124043088465537644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037958 (2 * n + 9)

end

end A030054.P4124043088465537644

namespace A030054

/-- `A037958(2*n+9)` -/
def P4124043088465537644.Spec : Prop :=
  ∀ n, P4124043088465537644.a n = A030054 (n + 4)

end A030054

/-! ## A030054.P3919008431183714172

`2*A172066(n)-A172065(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A030054

/-- `2*A172066(n)-A172065(n)` -/
def P3919008431183714172.Spec : Prop :=
  ∀ n, P3919008431183714172.a n = A030054 (n + 4)

theorem P3919008431183714172.correct : P3919008431183714172.Spec := by
  intro n
  simp only [A030054, Nat.add_sub_cancel]

end A030054

/-! ## A030054.P3541667866904129217

`record[or(A037958(n+1), A210628(n))]`
-/

namespace A030054.P3541667866904129217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037958 (n + 1)) (A210628 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030054.P3541667866904129217

namespace A030054

/-- `record[or(A037958(n+1), A210628(n))]` -/
def P3541667866904129217.Spec : Prop :=
  ∀ n, P3541667866904129217.a n = A030054 (n + 4)

end A030054

/-! ## A030054.P2191142523197644979

`A004310(n+5)-A030053(n+4)`
-/

namespace A030054.P2191142523197644979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004310 (n + 5) - A030053 (n + 4)

end

end A030054.P2191142523197644979

namespace A030054

/-- `A004310(n+5)-A030053(n+4)` -/
def P2191142523197644979.Spec : Prop :=
  ∀ n, P2191142523197644979.a n = A030054 (n + 4)

end A030054

/-! ## A030054.P9764595734024282902

`A004310(n+4)+A004310(n+4)-A001392(n+4)`
-/

namespace A030054.P9764595734024282902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004310 (n + 4) + (A004310 (n + 4) - A001392 (n + 4))

end

end A030054.P9764595734024282902

namespace A030054

/-- `A004310(n+4)+A004310(n+4)-A001392(n+4)` -/
def P9764595734024282902.Spec : Prop :=
  ∀ n, P9764595734024282902.a n = A030054 (n + 4)

end A030054

/-! ## A030054.P17658623370361098060

`A004310(n+5)-(A004310(n+4)+A002696(n+4))`
-/

namespace A030054.P17658623370361098060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004310 (n + 5) - (A004310 (n + 4) + A002696 (n + 4))

end

end A030054.P17658623370361098060

namespace A030054

/-- `A004310(n+5)-(A004310(n+4)+A002696(n+4))` -/
def P17658623370361098060.Spec : Prop :=
  ∀ n, P17658623370361098060.a n = A030054 (n + 4)

end A030054

/-! ## A030054.P13534013670916550199

`A003472(n+4)/A003472(n+5)*A004310(n+5)`
-/

namespace A030054.P13534013670916550199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003472 (n + 4) : ℚ) / (A003472 (n + 5) : ℚ) * (A004310 (n + 5) : ℚ)

end

end A030054.P13534013670916550199

namespace A030054

/-- `A003472(n+4)/A003472(n+5)*A004310(n+5)` -/
def P13534013670916550199.Spec : Prop :=
  ∀ n, P13534013670916550199.a n = (A030054 (n + 4) : ℚ)

end A030054

/-! ## A030054.P6456966491495738104

`A159965(A167614(n+2))`
-/

namespace A030054.P6456966491495738104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A167614 (n + 2)).toNat

end

end A030054.P6456966491495738104

namespace A030054

/-- `A159965(A167614(n+2))` -/
def P6456966491495738104.Spec : Prop :=
  ∀ n, P6456966491495738104.a n = A030054 (n + 4)

end A030054

/-! ## A030054.P3117329172305318125

`A126325(A167614(n+2)+1)`
-/

namespace A030054.P3117329172305318125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126325 (A167614 (n + 2) + 1).toNat

end

end A030054.P3117329172305318125

namespace A030054

/-- `A126325(A167614(n+2)+1)` -/
def P3117329172305318125.Spec : Prop :=
  ∀ n, P3117329172305318125.a n = A030054 (n + 4)

end A030054

/-! ## A030054.P15247193906452086402

`A193635(∑[n+3]+n+3)`
-/

namespace A030054.P15247193906452086402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A030054.P15247193906452086402

namespace A030054

/-- `A193635(∑[n+3]+n+3)` -/
def P15247193906452086402.Spec : Prop :=
  ∀ n, P15247193906452086402.a n = A030054 (n + 4)

end A030054

/-! ## A030054.P10034430319821004487

`A122366(∑[n+5]+5)`
-/

namespace A030054.P10034430319821004487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A030054.P10034430319821004487

namespace A030054

/-- `A122366(∑[n+5]+5)` -/
def P10034430319821004487.Spec : Prop :=
  ∀ n, P10034430319821004487.a n = A030054 (n + 4)

end A030054

/-! ## A030054.P9439534344280522197

`C(2*n+9, n)`
-/

namespace A030054.P9439534344280522197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 9) n

end

end A030054.P9439534344280522197

namespace A030054

/-- `C(2*n+9, n)` -/
def P9439534344280522197.Spec : Prop :=
  ∀ n, (P9439534344280522197.a n : ℤ) = A030054 (n + 4)

end A030054

/-! ## A030054.P756349300503999201

`record[C(A204502(n+1)-n, n)]`
-/

namespace A030054.P756349300503999201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A204502 (n + 1) - (n : ℤ)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030054.P756349300503999201

namespace A030054

/-- `record[C(A204502(n+1)-n, n)]` -/
def P756349300503999201.Spec : Prop :=
  ∀ n, (P756349300503999201.a n : ℤ) = A030054 (n + 4)

end A030054

/-!
# A030055: a(n) = binomial(2*n+1, n-5).

The programs for A030055, the canonical program `A030055.P1184375955424531580` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030055 has offset 5).

The definition of A030055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030055.P1184375955424531580

`A054849(n+5)/A054849(n+6)*A004311(n+6)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A030055

/-- `A054849(n+5)/A054849(n+6)*A004311(n+6)` -/
def P1184375955424531580.Spec : Prop :=
  ∀ n, P1184375955424531580.a n = (A030055 (n + 5) : ℚ)

end A030055

/-! ## A030055.P98315601750123668

`(n+1)*A003519(n+5)/10`
-/

namespace A030055.P98315601750123668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A003519 (n + 5) : ℚ) / 10

end

end A030055.P98315601750123668

namespace A030055

/-- `(n+1)*A003519(n+5)/10` -/
def P98315601750123668.Spec : Prop :=
  ∀ n, P98315601750123668.a n = (A030055 (n + 5) : ℚ)

end A030055

/-! ## A030055.P14437908982081210596

`A126325(A056000(n)+15)`
-/

namespace A030055.P14437908982081210596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126325 (A056000 n + 15).toNat

end

end A030055.P14437908982081210596

namespace A030055

/-- `A126325(A056000(n)+15)` -/
def P14437908982081210596.Spec : Prop :=
  ∀ n, P14437908982081210596.a n = A030055 (n + 5)

end A030055

/-! ## A030055.P13551533023531947326

`A111418(A167499(n+4))`
-/

namespace A030055.P13551533023531947326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 (A167499 (n + 4)).toNat

end

end A030055.P13551533023531947326

namespace A030055

/-- `A111418(A167499(n+4))` -/
def P13551533023531947326.Spec : Prop :=
  ∀ n, P13551533023531947326.a n = A030055 (n + 5)

end A030055

/-! ## A030055.P13605571072199586625

`A122366(A055999(n+3))`
-/

namespace A030055.P13605571072199586625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 (A055999 (n + 3)).toNat

end

end A030055.P13605571072199586625

namespace A030055

/-- `A122366(A055999(n+3))` -/
def P13605571072199586625.Spec : Prop :=
  ∀ n, P13605571072199586625.a n = A030055 (n + 5)

end A030055

/-! ## A030055.P1552508074843170250

`C(2*n+11, n)`
-/

namespace A030055.P1552508074843170250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 11) n

end

end A030055.P1552508074843170250

namespace A030055

/-- `C(2*n+11, n)` -/
def P1552508074843170250.Spec : Prop :=
  ∀ n, (P1552508074843170250.a n : ℤ) = A030055 (n + 5)

end A030055

/-! ## A030055.P9053081019079246651

`A007318(A152811(n+5))`
-/

namespace A030055.P9053081019079246651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A152811 (n + 5)).toNat

end

end A030055.P9053081019079246651

namespace A030055

/-- `A007318(A152811(n+5))` -/
def P9053081019079246651.Spec : Prop :=
  ∀ n, P9053081019079246651.a n = A030055 (n + 5)

end A030055

/-! ## A030055.P4545450313589186572

`A007318(A267461(A004277(n)+9))`
-/

namespace A030055.P4545450313589186572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A267461 (A004277 n + 9).toNat).toNat

end

end A030055.P4545450313589186572

namespace A030055

/-- `A007318(A267461(A004277(n)+9))` -/
def P4545450313589186572.Spec : Prop :=
  ∀ n, P4545450313589186572.a n = A030055 (n + 5)

end A030055

/-!
# A030056: a(n) = binomial(2*n+1, n-6).

The programs for A030056, the canonical program `A030056.P1159588878550998592` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030056 has offset 6).

The definition of A030056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030056.P16694877320585697398

`A004312(n+7)/A002409(n+1)*A002409(n)`
-/

namespace A030056.P16694877320585697398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004312 (n + 7) : ℚ) / (A002409 (n + 1) : ℚ) * (A002409 n : ℚ)

end

end A030056.P16694877320585697398

namespace A030056

/-- `A004312(n+7)/A002409(n+1)*A002409(n)` -/
def P16694877320585697398.Spec : Prop :=
  ∀ n, P16694877320585697398.a n = (A030056 (n + 6) : ℚ)

end A030056

/-! ## A030056.P1159588878550998592

`A004312(n+7)-(A004312(n+6)+A004311(n+6))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A030056

/-- `A004312(n+7)-(A004312(n+6)+A004311(n+6))` -/
def P1159588878550998592.Spec : Prop :=
  ∀ n, P1159588878550998592.a n = A030056 (n + 6)

theorem P1159588878550998592.correct : P1159588878550998592.Spec := by
  intro n
  simp only [A030056, Nat.add_sub_cancel]

end A030056

/-! ## A030056.P3071897761543647566

`A126325(A167499(n+4)+1)`
-/

namespace A030056.P3071897761543647566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126325 (A167499 (n + 4) + 1).toNat

end

end A030056.P3071897761543647566

namespace A030056

/-- `A126325(A167499(n+4)+1)` -/
def P3071897761543647566.Spec : Prop :=
  ∀ n, P3071897761543647566.a n = A030056 (n + 6)

end A030056

/-! ## A030056.P10981514790488299018

`C(2*n+13, n)`
-/

namespace A030056.P10981514790488299018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 13) n

end

end A030056.P10981514790488299018

namespace A030056

/-- `C(2*n+13, n)` -/
def P10981514790488299018.Spec : Prop :=
  ∀ n, (P10981514790488299018.a n : ℤ) = A030056 (n + 6)

end A030056

/-! ## A030056.P15028071665719180229

`A007318(A161532(n+5))`
-/

namespace A030056.P15028071665719180229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A161532 (n + 5)).toNat

end

end A030056.P15028071665719180229

namespace A030056

/-- `A007318(A161532(n+5))` -/
def P15028071665719180229.Spec : Prop :=
  ∀ n, P15028071665719180229.a n = A030056 (n + 6)

end A030056

/-! ## A030056.P3047696426819154133

`A007318(A255844(n+7))`
-/

namespace A030056.P3047696426819154133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A255844 (n + 7)).toNat

end

end A030056.P3047696426819154133

namespace A030056

/-- `A007318(A255844(n+7))` -/
def P3047696426819154133.Spec : Prop :=
  ∀ n, P3047696426819154133.a n = A030056 (n + 6)

end A030056

/-! ## A030056.P13857305837847361050

`record[A007318(A161532(A254667(n)))]`
-/

namespace A030056.P13857305837847361050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A161532 (A254667 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030056.P13857305837847361050

namespace A030056

/-- `record[A007318(A161532(A254667(n)))]` -/
def P13857305837847361050.Spec : Prop :=
  ∀ n, P13857305837847361050.a n = A030056 (n + 6)

end A030056

/-!
# A030057: Least number that is not a sum of distinct divisors of n.

The programs for A030057, there is no canonical definition to state claims against.
-/

/-! ## A030057.P10916140806181191376

`A225561(n+1)+1`
-/

namespace A030057.P10916140806181191376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (n + 1) + 1

end

end A030057.P10916140806181191376

/-! ## A030057.P13545488808585142866

`∑{d}[A327832(n+1), #]+1`
-/

namespace A030057.P13545488808585142866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + 1

end

end A030057.P13545488808585142866

/-! ## A030057.P15106192957701268800

`A088580(A327832(n+1))`
-/

namespace A030057.P15106192957701268800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A327832 (n + 1)).toNat

end

end A030057.P15106192957701268800

/-! ## A030057.P11953590704804477040

`A327832(2*n+1)+A000203(A327832(n+1))`
-/

namespace A030057.P11953590704804477040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (2 * n + 1) + A000203 (A327832 (n + 1)).toNat

end

end A030057.P11953590704804477040

/-! ## A030057.P11580989006415454790

`A020725(A225561(n+1))`
-/

namespace A030057.P11580989006415454790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A225561 (n + 1)).toNat

end

end A030057.P11580989006415454790

/-!
# A030058: Least non-sum of divisors of n for some n >= 1.

The programs for A030058, there is no canonical definition to state claims against.
-/

/-! ## A030058.P1529028650103806688

`A225574(n+1)+1`
-/

namespace A030058.P1529028650103806688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225574 (n + 1) + 1

end

end A030058.P1529028650103806688

/-! ## A030058.P2343550610091752622

`A020725(A225574(n+1))`
-/

namespace A030058.P2343550610091752622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A225574 (n + 1)).toNat

end

end A030058.P2343550610091752622

/-! ## A030058.P1285910992174669994

`record[A030057(A002192(n+1))]`
-/

namespace A030058.P1285910992174669994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030057 (A002192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030058.P1285910992174669994

/-! ## A030058.P8691987369239929401

`record[A030057(A085790(n+1))]`
-/

namespace A030058.P8691987369239929401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030057 (A085790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030058.P8691987369239929401

/-! ## A030058.P8205571346527978831

`A262681(n)+record[A225561(A002192(n+1))]`
-/

namespace A030058.P8205571346527978831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (A002192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030058.P8205571346527978831

/-! ## A030058.P2920981670578518279

`A033999(2*n)+record[A225561(A002192(n+1))]`
-/

namespace A030058.P2920981670578518279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (A002192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030058.P2920981670578518279

/-! ## A030058.P8777187431232411536

`record[A225561(A002192(n+1))+A034947(n+1)²]`
-/

namespace A030058.P8777187431232411536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (A002192 (n + 1)).toNat + A034947 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030058.P8777187431232411536

/-! ## A030058.P7219026262716882667

`A000035(2*n+1)+record[A225561(A002192(n+1))]`
-/

namespace A030058.P7219026262716882667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (A002192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030058.P7219026262716882667

/-! ## A030058.P4780724513530643420

`record[A225561(A085790(n+1))+A014963(6*(n+1))]`
-/

namespace A030058.P4780724513530643420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (A085790 (n + 1)).toNat + A014963 (6 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030058.P4780724513530643420

/-! ## A030058.P6388049104085292957

`record[A225561(A002192(n+1))]+A014963(91*(n+1))`
-/

namespace A030058.P6388049104085292957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (A002192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A014963 (91 * (n + 1))

end

end A030058.P6388049104085292957

/-!
# A030059: Numbers that are the product of an odd number of distinct primes.

The programs for A030059, the canonical program `A030059.P16778954960096157451` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030059 has offset 1).

The definition of A030059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030059.P1217906173289174528

`sqrt(A077438(n+1))`
-/

namespace A030059.P1217906173289174528
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077438 (n + 1) : ℝ)

end

end A030059.P1217906173289174528

namespace A030059

/-- `sqrt(A077438(n+1))` -/
def P1217906173289174528.Spec : Prop :=
  ∀ n, P1217906173289174528.a n = (A030059 (n + 1) : ℝ)

end A030059

/-! ## A030059.P16778954960096157451

`record[A080305(n+2)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A030059

/-- `record[A080305(n+2)]` -/
def P16778954960096157451.Spec : Prop :=
  ∀ n, P16778954960096157451.a n = A030059 (n + 1)

theorem P16778954960096157451.correct : P16778954960096157451.Spec := by
  intro n
  simp only [A030059, Nat.add_sub_cancel]

end A030059

/-! ## A030059.P8770293999887366871

`ceil(sqrt(A370494(n+1)))`
-/

namespace A030059.P8770293999887366871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A370494 (n + 1) : ℝ)⌉

end

end A030059.P8770293999887366871

namespace A030059

/-- `ceil(sqrt(A370494(n+1)))` -/
def P8770293999887366871.Spec : Prop :=
  ∀ n, P8770293999887366871.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P10325922348002271539

`eq[1, A252233(n+1)]+1`
-/

namespace A030059.P10325922348002271539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030059.P10325922348002271539

namespace A030059

/-- `eq[1, A252233(n+1)]+1` -/
def P10325922348002271539.Spec : Prop :=
  ∀ n, (P10325922348002271539.a n : ℤ) = A030059 (n + 1)

end A030059

/-! ## A030059.P15555347967117576879

`lt[1, A080305(n+1)]+1`
-/

namespace A030059.P15555347967117576879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030059.P15555347967117576879

namespace A030059

/-- `lt[1, A080305(n+1)]+1` -/
def P15555347967117576879.Spec : Prop :=
  ∀ n, (P15555347967117576879.a n : ℤ) = A030059 (n + 1)

end A030059

/-! ## A030059.P18098992684637762581

`eq[2, A346488(n+1)]+1`
-/

namespace A030059.P18098992684637762581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346488 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030059.P18098992684637762581

namespace A030059

/-- `eq[2, A346488(n+1)]+1` -/
def P18098992684637762581.Spec : Prop :=
  ∀ n, (P18098992684637762581.a n : ℤ) = A030059 (n + 1)

end A030059

/-! ## A030059.P12303993710439597927

`A077438(n+1)-A370494(n+1)`
-/

namespace A030059.P12303993710439597927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077438 (n + 1) - A370494 (n + 1)

end

end A030059.P12303993710439597927

namespace A030059

/-- `A077438(n+1)-A370494(n+1)` -/
def P12303993710439597927.Spec : Prop :=
  ∀ n, P12303993710439597927.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P7878744362193514695

`filter[A211485(n+1), A252233(#)]`
-/

namespace A030059.P7878744362193514695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A030059.P7878744362193514695

namespace A030059

/-- `filter[A211485(n+1), A252233(#)]` -/
def P7878744362193514695.Spec : Prop :=
  ∀ n, P7878744362193514695.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P4948675426279675595

`filter[A374467(n+1), A008966(#)]`
-/

namespace A030059.P4948675426279675595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A030059.P4948675426279675595

namespace A030059

/-- `filter[A374467(n+1), A008966(#)]` -/
def P4948675426279675595.Spec : Prop :=
  ∀ n, P4948675426279675595.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P5522850911715287308

`filter[A374467(n+1), A252233(#)]`
-/

namespace A030059.P5522850911715287308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A030059.P5522850911715287308

namespace A030059

/-- `filter[A374467(n+1), A252233(#)]` -/
def P5522850911715287308.Spec : Prop :=
  ∀ n, P5522850911715287308.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P14250688899751891758

`filter[A365829(n+1), A066829(#)]`
-/

namespace A030059.P14250688899751891758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A030059.P14250688899751891758

namespace A030059

/-- `filter[A365829(n+1), A066829(#)]` -/
def P14250688899751891758.Spec : Prop :=
  ∀ n, P14250688899751891758.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P10640580560127553510

`filter[A365829(n+1), A252233(#)]`
-/

namespace A030059.P10640580560127553510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A030059.P10640580560127553510

namespace A030059

/-- `filter[A365829(n+1), A252233(#)]` -/
def P10640580560127553510.Spec : Prop :=
  ∀ n, P10640580560127553510.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P1055441920688970138

`filter[A365829(n+1), A359158(#)]`
-/

namespace A030059.P1055441920688970138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A030059.P1055441920688970138

namespace A030059

/-- `filter[A365829(n+1), A359158(#)]` -/
def P1055441920688970138.Spec : Prop :=
  ∀ n, P1055441920688970138.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P8217898450185465681

`filter[A365829(n+1), A359372(#)]`
-/

namespace A030059.P8217898450185465681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A030059.P8217898450185465681

namespace A030059

/-- `filter[A365829(n+1), A359372(#)]` -/
def P8217898450185465681.Spec : Prop :=
  ∀ n, P8217898450185465681.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P11817804627202883412

`filter[A365829(n+1), A374130(#)]`
-/

namespace A030059.P11817804627202883412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A030059.P11817804627202883412

namespace A030059

/-- `filter[A365829(n+1), A374130(#)]` -/
def P11817804627202883412.Spec : Prop :=
  ∀ n, P11817804627202883412.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P15010196082763692981

`filter[A365829(n+1), A374466(#)]`
-/

namespace A030059.P15010196082763692981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A030059.P15010196082763692981

namespace A030059

/-- `filter[A365829(n+1), A374466(#)]` -/
def P15010196082763692981.Spec : Prop :=
  ∀ n, P15010196082763692981.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P16886079653369710776

`filter[A211338(n+1), A008966(#)]`
-/

namespace A030059.P16886079653369710776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A030059.P16886079653369710776

namespace A030059

/-- `filter[A211338(n+1), A008966(#)]` -/
def P16886079653369710776.Spec : Prop :=
  ∀ n, P16886079653369710776.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P11385880616151096650

`filter[A211338(n+1), A212793(#)]`
-/

namespace A030059.P11385880616151096650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A030059.P11385880616151096650

namespace A030059

/-- `filter[A211338(n+1), A212793(#)]` -/
def P11385880616151096650.Spec : Prop :=
  ∀ n, P11385880616151096650.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P4292243828433234673

`filter[A211338(n+1), A252233(#)]`
-/

namespace A030059.P4292243828433234673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A030059.P4292243828433234673

namespace A030059

/-- `filter[A211338(n+1), A252233(#)]` -/
def P4292243828433234673.Spec : Prop :=
  ∀ n, P4292243828433234673.a n = A030059 (n + 1)

end A030059

/-! ## A030059.P1761430237231111805

`filter[A211338(n+1), A359471(#)]`
-/

namespace A030059.P1761430237231111805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A030059.P1761430237231111805

namespace A030059

/-- `filter[A211338(n+1), A359471(#)]` -/
def P1761430237231111805.Spec : Prop :=
  ∀ n, P1761430237231111805.a n = A030059 (n + 1)

end A030059

/-!
# A030060: Third derivative of Catalan generating function/3!.

The programs for A030060, the canonical program `A030060.P12340942550056967403` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030060 has offset 0).

The definition of A030060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030060.P12340942550056967403

`C(n+3, 3)*A000108(n+3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030060

/-- `C(n+3, 3)*A000108(n+3)` -/
def P12340942550056967403.Spec : Prop :=
  ∀ n, P12340942550056967403.a n = A030060 n

theorem P12340942550056967403.correct : P12340942550056967403.Spec := by
  intro n
  simp only [A030060]

end A030060

/-! ## A030060.P12103357582728465785

`A000108(n+3)*A000292(n+1)`
-/

namespace A030060.P12103357582728465785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 3) * A000292 (n + 1)

end

end A030060.P12103357582728465785

namespace A030060

/-- `A000108(n+3)*A000292(n+1)` -/
def P12103357582728465785.Spec : Prop :=
  ∀ n, P12103357582728465785.a n = A030060 n

end A030060

/-! ## A030060.P7070446734346510608

`A000108(n+3)*A008804(2*n)`
-/

namespace A030060.P7070446734346510608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 3) * A008804 (2 * n)

end

end A030060.P7070446734346510608

namespace A030060

/-- `A000108(n+3)*A008804(2*n)` -/
def P7070446734346510608.Spec : Prop :=
  ∀ n, P7070446734346510608.a n = A030060 n

end A030060

/-! ## A030060.P16081912179752104424

`∑[∑[n+1]]*A208355(A005408(n+2))`
-/

namespace A030060.P16081912179752104424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A208355 (A005408 (n + 2)).toNat

end

end A030060.P16081912179752104424

namespace A030060

/-- `∑[∑[n+1]]*A208355(A005408(n+2))` -/
def P16081912179752104424.Spec : Prop :=
  ∀ n, P16081912179752104424.a n = A030060 n

end A030060

/-! ## A030060.P17433770346172191728

`A000108(n+3)*A294085(A005408(n))`
-/

namespace A030060.P17433770346172191728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 3) * A294085 (A005408 n).toNat

end

end A030060.P17433770346172191728

namespace A030060

/-- `A000108(n+3)*A294085(A005408(n))` -/
def P17433770346172191728.Spec : Prop :=
  ∀ n, P17433770346172191728.a n = A030060 n

end A030060

/-! ## A030060.P7698065030578708610

`A055660(n+4)/3`
-/

namespace A030060.P7698065030578708610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055660 (n + 4) : ℚ) / 3

end

end A030060.P7698065030578708610

namespace A030060

/-- `A055660(n+4)/3` -/
def P7698065030578708610.Spec : Prop :=
  ∀ n, P7698065030578708610.a n = (A030060 n : ℚ)

end A030060

/-! ## A030060.P9605548007902187048

`A085880(A167614(n+2))`
-/

namespace A030060.P9605548007902187048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085880 (A167614 (n + 2)).toNat

end

end A030060.P9605548007902187048

namespace A030060

/-- `A085880(A167614(n+2))` -/
def P9605548007902187048.Spec : Prop :=
  ∀ n, P9605548007902187048.a n = A030060 n

end A030060

/-! ## A030060.P17197607999028063300

`record[A085880(A167614(A344180(n)))]`
-/

namespace A030060.P17197607999028063300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085880 (A167614 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030060.P17197607999028063300

namespace A030060

/-- `record[A085880(A167614(A344180(n)))]` -/
def P17197607999028063300.Spec : Prop :=
  ∀ n, P17197607999028063300.a n = A030060 n

end A030060

/-! ## A030060.P5435548286489939578

`A085880(∑[n+3]+n+3)`
-/

namespace A030060.P5435548286489939578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085880 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A030060.P5435548286489939578

namespace A030060

/-- `A085880(∑[n+3]+n+3)` -/
def P5435548286489939578.Spec : Prop :=
  ∀ n, P5435548286489939578.a n = A030060 n

end A030060

/-!
# A030061: Weight distribution of [ 17,8,8 ] code over GF(4).

The programs for A030061, there is no canonical definition to state claims against.
-/

/-! ## A030061.P11214428154502301225

`A014488(2*n)`
-/

namespace A030061.P11214428154502301225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014488 (2 * n)

end

end A030061.P11214428154502301225

/-! ## A030061.P17511238585332944275

`∏{e}[4^n, A014488(#)]`
-/

namespace A030061.P17511238585332944275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014488 (Nat.factorization (f1 n) p)

end

end A030061.P17511238585332944275

/-! ## A030061.P17491368542326694142

`A014488(A005843(n))+char[11]`
-/

namespace A030061.P17491368542326694142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014488 (A005843 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A030061.P17491368542326694142

/-! ## A030061.P14100428018037702055

`A014488(A005843(n))/A014490(n)`
-/

namespace A030061.P14100428018037702055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014488 (A005843 n).toNat : ℚ) / (A014490 n : ℚ)

end

end A030061.P14100428018037702055

/-! ## A030061.P16277353213739872254

`A014488(A005843(n))/A014526(n)`
-/

namespace A030061.P16277353213739872254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014488 (A005843 n).toNat : ℚ) / (A014526 n : ℚ)

end

end A030061.P16277353213739872254

/-!
# A030062: Weight distribution of [ 96,48,12 ] doubly-even self-dual "octern" code.

The programs for A030062, there is no canonical definition to state claims against.
-/

/-! ## A030062.P1154220913997313007

`∑{d}[A001068(A013358(n)), #]`
-/

namespace A030062.P1154220913997313007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A013358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A030062.P1154220913997313007

/-!
# A030064: 1 + product of any two terms is a square.

The programs for A030064, there is no canonical definition to state claims against.
-/

/-! ## A030064.P4982058168473088973

`7*(n+1)*a(n-1)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=12`
-/

namespace A030064.P4982058168473088973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 12] fun n a =>
  7 * ((n + 1) * a (n - 1))

end

end A030064.P4982058168473088973

/-!
# A030065: a(4n)=n, a(4n+2)=a(4n)+a(4n+4), a(2n+1)=a(2n)+a(2n+2).

The programs for A030065, the canonical program `A030065.P8050957658613910513` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030065 has offset 0).

The definition of A030065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030065.P8050957658613910513

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=4, a(6)=3, a(7)=5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030065

/-- `2*a(n-4)-a(n-8)` -/
def P8050957658613910513.Spec : Prop :=
  ∀ n, P8050957658613910513.a n = A030065 n

theorem P8050957658613910513.correct : P8050957658613910513.Spec := by
  intro n
  simp only [A030065]

end A030065

/-! ## A030065.P16586735055522765096

`abs(n*(1-2/gcd(4, n))²-round(lcm(n, n²%8)/4))`
-/

namespace A030065.P16586735055522765096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) * (1 - 2 / (Nat.gcd 4 n : ℚ)) ^ 2 - (SequenceMachineLib.roundAway ((Nat.lcm n (n ^ 2 % 8) : ℚ) / 4) : ℚ)|

end

end A030065.P16586735055522765096

namespace A030065

/-- `abs(n*(1-2/gcd(4, n))²-round(lcm(n, n²%8)/4))` -/
def P16586735055522765096.Spec : Prop :=
  ∀ n, P16586735055522765096.a n = (A030065 n : ℚ)

end A030065

/-! ## A030065.P18217959893965924981

`A214392(n)-A077814(n)`
-/

namespace A030065.P18217959893965924981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 n - A077814 n

end

end A030065.P18217959893965924981

namespace A030065

/-- `A214392(n)-A077814(n)` -/
def P18217959893965924981.Spec : Prop :=
  ∀ n, P18217959893965924981.a n = A030065 n

end A030065

/-! ## A030065.P11333005081233262121

`A318972(n)-A316631(n)`
-/

namespace A030065.P11333005081233262121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318972 n - A316631 n

end

end A030065.P11333005081233262121

namespace A030065

/-- `A318972(n)-A316631(n)` -/
def P11333005081233262121.Spec : Prop :=
  ∀ n, P11333005081233262121.a n = A030065 n

end A030065

/-! ## A030065.P4204846398742101411

`gcd(A006368(n), A232713(n))`
-/

namespace A030065.P4204846398742101411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006368 n) (A232713 n)

end

end A030065.P4204846398742101411

namespace A030065

/-- `gcd(A006368(n), A232713(n))` -/
def P4204846398742101411.Spec : Prop :=
  ∀ n, (P4204846398742101411.a n : ℤ) = A030065 n

end A030065

/-! ## A030065.P10467967473600628757

`(n-A130722(n+1))/A138191(n+2)`
-/

namespace A030065.P10467967473600628757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A130722 (n + 1) : ℚ) / (A138191 (n + 2) : ℚ)

end

end A030065.P10467967473600628757

namespace A030065

/-- `(n-A130722(n+1))/A138191(n+2)` -/
def P10467967473600628757.Spec : Prop :=
  ∀ n, P10467967473600628757.a n = (A030065 n : ℚ)

end A030065

/-! ## A030065.P11981139037592977271

`A026741(A004525(n)+n*n%2)`
-/

namespace A030065.P11981139037592977271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004525 n + ((n * (n % 2) : ℕ) : ℤ)).toNat

end

end A030065.P11981139037592977271

namespace A030065

/-- `A026741(A004525(n)+n*n%2)` -/
def P11981139037592977271.Spec : Prop :=
  ∀ n, P11981139037592977271.a n = A030065 n

end A030065

/-! ## A030065.P1761390428352066798

`A026741(A014682(n)-val(and(3, n)!, 3))`
-/

namespace A030065.P1761390428352066798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A014682 n - (SequenceMachineLib.valuation (Nat.factorial (Nat.land 3 n)) 3 : ℤ)).toNat

end

end A030065.P1761390428352066798

namespace A030065

/-- `A026741(A014682(n)-val(and(3, n)!, 3))` -/
def P1761390428352066798.Spec : Prop :=
  ∀ n, P1761390428352066798.a n = A030065 n

end A030065

/-! ## A030065.P5788866713156169604

`A350034(A047229(n+1))`
-/

namespace A030065.P5788866713156169604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350034 (A047229 (n + 1)).toNat

end

end A030065.P5788866713156169604

namespace A030065

/-- `A350034(A047229(n+1))` -/
def P5788866713156169604.Spec : Prop :=
  ∀ n, P5788866713156169604.a n = A030065 n

end A030065

/-! ## A030065.P10929243029222660666

`A004526(lcm(gcd(2, n), A014682(n)))`
-/

namespace A030065.P10929243029222660666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm (Nat.gcd 2 n : ℤ) (A014682 n))

end

end A030065.P10929243029222660666

namespace A030065

/-- `A004526(lcm(gcd(2, n), A014682(n)))` -/
def P10929243029222660666.Spec : Prop :=
  ∀ n, P10929243029222660666.a n = A030065 n

end A030065

/-! ## A030065.P15164807356530970306

`gcd(A142150(A157932(n+1)/2), A142150(n))`
-/

namespace A030065.P15164807356530970306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A142150 (SequenceMachineLib.roundAway ((A157932 (n + 1) : ℚ) / 2)).toNat) (A142150 n)

end

end A030065.P15164807356530970306

namespace A030065

/-- `gcd(A142150(A157932(n+1)/2), A142150(n))` -/
def P15164807356530970306.Spec : Prop :=
  ∀ n, (P15164807356530970306.a n : ℤ) = A030065 n

end A030065

/-! ## A030065.P11103545346128502046

`A071281(A047247(n+1))`
-/

namespace A030065.P11103545346128502046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071281 (A047247 (n + 1)).toNat

end

end A030065.P11103545346128502046

namespace A030065

/-- `A071281(A047247(n+1))` -/
def P11103545346128502046.Spec : Prop :=
  ∀ n, P11103545346128502046.a n = A030065 n

end A030065

/-! ## A030065.P15908821549770500323

`A026730(2*n)`
-/

namespace A030065.P15908821549770500323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (2 * n)

end

end A030065.P15908821549770500323

namespace A030065

/-- `A026730(2*n)` -/
def P15908821549770500323.Spec : Prop :=
  ∀ n, P15908821549770500323.a n = A030065 n

end A030065

/-! ## A030065.P14727581119972162843

`A026730(A005843(n))%(n+1)`
-/

namespace A030065.P14727581119972162843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026730 (A005843 n).toNat) (n + 1 : ℤ)

end

end A030065.P14727581119972162843

namespace A030065

/-- `A026730(A005843(n))%(n+1)` -/
def P14727581119972162843.Spec : Prop :=
  ∀ n, P14727581119972162843.a n = A030065 n

end A030065

/-! ## A030065.P10451595088084945735

`A026730(A051755(n+2)-2)%(n+1)`
-/

namespace A030065.P10451595088084945735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026730 (A051755 (n + 2) - 2).toNat) (n + 1 : ℤ)

end

end A030065.P10451595088084945735

namespace A030065

/-- `A026730(A051755(n+2)-2)%(n+1)` -/
def P10451595088084945735.Spec : Prop :=
  ∀ n, P10451595088084945735.a n = A030065 n

end A030065

/-! ## A030065.P1561104600281718343

`A051724(A157932(n+1))`
-/

namespace A030065.P1561104600281718343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A157932 (n + 1)).toNat

end

end A030065.P1561104600281718343

namespace A030065

/-- `A051724(A157932(n+1))` -/
def P1561104600281718343.Spec : Prop :=
  ∀ n, P1561104600281718343.a n = A030065 n

end A030065

/-! ## A030065.P11187202930485461920

`A051724(A201629(3*n))`
-/

namespace A030065.P11187202930485461920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A201629 (3 * n)).toNat

end

end A030065.P11187202930485461920

namespace A030065

/-- `A051724(A201629(3*n))` -/
def P11187202930485461920.Spec : Prop :=
  ∀ n, P11187202930485461920.a n = A030065 n

end A030065

/-! ## A030065.P13130373540261504545

`A051724(2*(A004525(n)+n))`
-/

namespace A030065.P13130373540261504545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (2 * (A004525 n + (n : ℤ))).toNat

end

end A030065.P13130373540261504545

namespace A030065

/-- `A051724(2*(A004525(n)+n))` -/
def P13130373540261504545.Spec : Prop :=
  ∀ n, P13130373540261504545.a n = A030065 n

end A030065

/-! ## A030065.P11026150263186259076

`A008615(lcm(6, A004525(n)+n))`
-/

namespace A030065.P11026150263186259076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lcm 6 (A004525 n + (n : ℤ)))

end

end A030065.P11026150263186259076

namespace A030065

/-- `A008615(lcm(6, A004525(n)+n))` -/
def P11026150263186259076.Spec : Prop :=
  ∀ n, P11026150263186259076.a n = A030065 n

end A030065

/-!
# A030067: The "Semi-Fibonacci sequence": a(1) = 1; a(n) = a(n/2) (n even); a(n) = a(n-1) + a(n-2) (n odd).

The programs for A030067, there is no canonical definition to state claims against.
-/

/-! ## A030067.P4533347999768647022

`Δ[A030068(n+1)]`
-/

namespace A030067.P4533347999768647022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030067.P4533347999768647022

/-! ## A030067.P17626543718683650586

`A030068(A003602(n+1))`
-/

namespace A030067.P17626543718683650586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030068 (A003602 (n + 1)).toNat

end

end A030067.P17626543718683650586

/-! ## A030067.P2472818134722352510

`A030068(A025480(n)+1)`
-/

namespace A030067.P2472818134722352510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030068 (A025480 n + 1).toNat

end

end A030067.P2472818134722352510

/-! ## A030067.P10556963341655982913

`Δ[A169740(n)-A169739(n)]`
-/

namespace A030067.P10556963341655982913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169740 n - A169739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030067.P10556963341655982913

/-! ## A030067.P2202654869769097310

`A169739(n+1)-A169740(n)`
-/

namespace A030067.P2202654869769097310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169739 (n + 1) - A169740 n

end

end A030067.P2202654869769097310

/-! ## A030067.P16568615621608163663

`A030068(n+2)-A030068(n+1)`
-/

namespace A030067.P16568615621608163663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030068 (n + 2) - A030068 (n + 1)

end

end A030067.P16568615621608163663

/-! ## A030067.P16582198741672763568

`A169739(2*n)+A169739(n+1)-A169739(2*n+1)`
-/

namespace A030067.P16582198741672763568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169739 (2 * n) + (A169739 (n + 1) - A169739 (2 * n + 1))

end

end A030067.P16582198741672763568

/-!
# A030068: The "semi-Fibonacci numbers": a(n) = A030067(2n - 1), where A030067 is the semi-Fibonacci sequence.

The programs for A030068, there is no canonical definition to state claims against.
-/

/-! ## A030068.P11913513851130766941

`A030067(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030068.P11913513851130766941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (2 * n + 1)

end

end A030068.P11913513851130766941

/-! ## A030068.P9287116791198993648

`A030067(n)+a(n-1)` with `a(0)=1`
-/

namespace A030068.P9287116791198993648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030067 n + a (n - 1)

end

end A030068.P9287116791198993648

/-! ## A030068.P5526658538792463102

`∑[A030067(abs(1-n)+1)]`
-/

namespace A030068.P5526658538792463102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030068.P5526658538792463102

/-! ## A030068.P2930342788591798543

`A169740(n)-A169739(n)`
-/

namespace A030068.P2930342788591798543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169740 n - A169739 n

end

end A030068.P2930342788591798543

/-! ## A030068.P2610788253379185790

`∑[A030067(n+1)]+1-A030067(n+1)`
-/

namespace A030068.P2610788253379185790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A030067 (n + 1))

end

end A030068.P2610788253379185790

/-! ## A030068.P12798226384929809704

`A169739(n+1)-(A169739(n)+A030067(n+1))`
-/

namespace A030068.P12798226384929809704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169739 (n + 1) - (A169739 n + A030067 (n + 1))

end

end A030068.P12798226384929809704

/-! ## A030068.P6599500199298250895

`record[A030067(n+1)]`
-/

namespace A030068.P6599500199298250895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030068.P6599500199298250895

/-!
# A030072: Numbers k such that k^2 is palindromic in base 14.

The programs for A030072, there is no canonical definition to state claims against.
-/

/-! ## A030072.P8139525265956209980

`sqrt(A030074(n+1))`
-/

namespace A030072.P8139525265956209980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030074 (n + 1) : ℝ)

end

end A030072.P8139525265956209980

/-! ## A030072.P11804217586345145303

`record[sqrt(A030074(ceil(C(or(1, n), n)/2)))]`
-/

namespace A030072.P11804217586345145303
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030074 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030072.P11804217586345145303

/-! ## A030072.P8154119729299322434

`A030074(n+1)^(A100833(3*n+4)/2)`
-/

namespace A030072.P8154119729299322434
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030074 (n + 1) : ℝ) ^ ((A100833 (3 * n + 4) : ℚ) / 2 : ℝ)

end

end A030072.P8154119729299322434

/-! ## A030072.P17450837902372148633

`A030074(n+1)^((2*n+1)/A016825(n))`
-/

namespace A030072.P17450837902372148633
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030074 (n + 1) : ℝ) ^ ((2 * n + 1 : ℚ) / (A016825 n : ℚ) : ℝ)

end

end A030072.P17450837902372148633

/-! ## A030072.P12627722373524727777

`A030074(n+1)^(A000079(n)/A000079(n+1))`
-/

namespace A030072.P12627722373524727777
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030074 (n + 1) : ℝ) ^ ((A000079 n : ℚ) / (A000079 (n + 1) : ℚ) : ℝ)

end

end A030072.P12627722373524727777

/-! ## A030072.P526414547836898661

`A030074(n+1)^(A000034(A222404(n))/2)`
-/

namespace A030072.P526414547836898661
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030074 (n + 1) : ℝ) ^ ((A000034 (A222404 n).toNat : ℚ) / 2 : ℝ)

end

end A030072.P526414547836898661

/-!
# A030073: Numbers k such that k^2 is palindromic in base 15.

The programs for A030073, there is no canonical definition to state claims against.
-/

/-! ## A030073.P7270311106216486753

`sqrt(A030075(n+1))`
-/

namespace A030073.P7270311106216486753
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030075 (n + 1) : ℝ)

end

end A030073.P7270311106216486753

/-! ## A030073.P715434510468925440

`A030075(A028242(2*n))^(1-1/2)`
-/

namespace A030073.P715434510468925440
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030075 (A028242 (2 * n)).toNat : ℝ) ^ (1 - (1 : ℚ) / 2 : ℝ)

end

end A030073.P715434510468925440

/-! ## A030073.P4843898211116047377

`A030075(n+1)^(A255607(n+1)/A130800(n+1))`
-/

namespace A030073.P4843898211116047377
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030075 (n + 1) : ℝ) ^ ((A255607 (n + 1) : ℚ) / (A130800 (n + 1) : ℚ) : ℝ)

end

end A030073.P4843898211116047377

/-! ## A030073.P8504571820990242610

`A030075(n+1)^(A001221(A000005(12*n+5)+1)/2)`
-/

namespace A030073.P8504571820990242610
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030075 (n + 1) : ℝ) ^ ((A001221 (A000005 (12 * n + 5) + 1).toNat : ℚ) / 2 : ℝ)

end

end A030073.P8504571820990242610

/-!
# A030074: Squares which are palindromes in base 14.

The programs for A030074, there is no canonical definition to state claims against.
-/

/-! ## A030074.P964141657228661882

`A030072(n+1)²`
-/

namespace A030074.P964141657228661882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030072 (n + 1) ^ 2

end

end A030074.P964141657228661882

/-! ## A030074.P5587406945278872534

`A030072(C(n+1, n))^2`
-/

namespace A030074.P5587406945278872534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030072 (Nat.choose (n + 1) n) ^ 2

end

end A030074.P5587406945278872534

/-! ## A030074.P3777808928810420509

`record[A030072(A109785(n))²]`
-/

namespace A030074.P3777808928810420509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030072 (A109785 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030074.P3777808928810420509

/-! ## A030074.P13617324695174363007

`record[A030072(A134478(n))²]`
-/

namespace A030074.P13617324695174363007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030072 (A134478 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030074.P13617324695174363007

/-! ## A030074.P3171634177970588973

`record[A030072(A291766(n))²]`
-/

namespace A030074.P3171634177970588973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030072 (A291766 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030074.P3171634177970588973

/-! ## A030074.P4454900173948694853

`record[A030072(A305296(n))²]`
-/

namespace A030074.P4454900173948694853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030072 (A305296 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030074.P4454900173948694853

/-! ## A030074.P3869247409506637661

`A030072(A000027(n+1))^2`
-/

namespace A030074.P3869247409506637661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030072 (A000027 (n + 1)).toNat ^ 2

end

end A030074.P3869247409506637661

/-! ## A030074.P14024283888017399830

`A030072(A289207(n+3))^2`
-/

namespace A030074.P14024283888017399830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030072 (A289207 (n + 3)).toNat ^ 2

end

end A030074.P14024283888017399830

/-! ## A030074.P1002187901675890777

`A030072(n+1)^abs(A084100(n))`
-/

namespace A030074.P1002187901675890777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030072 (n + 1) : ℚ) ^ (|A084100 n| : ℤ)

end

end A030074.P1002187901675890777

/-! ## A030074.P530670112392112234

`A030072(n+1)^abs(A138034(3*n))`
-/

namespace A030074.P530670112392112234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030072 (n + 1) : ℚ) ^ (|A138034 (3 * n)| : ℤ)

end

end A030074.P530670112392112234

/-!
# A030075: Squares which are palindromes in base 15.

The programs for A030075, there is no canonical definition to state claims against.
-/

/-! ## A030075.P3005331534604692307

`A030073(n+1)²`
-/

namespace A030075.P3005331534604692307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030073 (n + 1) ^ 2

end

end A030075.P3005331534604692307

/-! ## A030075.P10820961356014544334

`A030073(n+1)^(A054977(n)+1)`
-/

namespace A030075.P10820961356014544334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030073 (n + 1) : ℚ) ^ (A054977 n + 1 : ℤ)

end

end A030075.P10820961356014544334

/-! ## A030075.P17565205364363918988

`A030073(n+1)^A020639(2*(n+1))`
-/

namespace A030075.P17565205364363918988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030073 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A030075.P17565205364363918988

/-! ## A030075.P11853448756060357631

`A030073(n+1)^A328579(2*n+1)`
-/

namespace A030075.P11853448756060357631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030073 (n + 1) : ℚ) ^ (A328579 (2 * n + 1) : ℤ)

end

end A030075.P11853448756060357631

/-! ## A030075.P14276530803229243111

`A030073(n+1)^gcd(2, A005843(n+1))`
-/

namespace A030075.P14276530803229243111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030073 (n + 1) ^ Int.gcd 2 (A005843 (n + 1))

end

end A030075.P14276530803229243111

/-! ## A030075.P4775337070028315997

`A030073(n+1)^A006530(A001316(n))`
-/

namespace A030075.P4775337070028315997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030073 (n + 1) : ℚ) ^ (A006530 (A001316 n).toNat : ℤ)

end

end A030075.P4775337070028315997

/-! ## A030075.P17620941993461181219

`A030073(n+1)^A000005(A007918(n))`
-/

namespace A030075.P17620941993461181219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030073 (n + 1) : ℚ) ^ (A000005 (A007918 n).toNat : ℤ)

end

end A030075.P17620941993461181219

/-! ## A030075.P17677634042671671894

`A030073(n+1)^A014963(A062383(n))`
-/

namespace A030075.P17677634042671671894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030073 (n + 1) : ℚ) ^ (A014963 (A062383 n).toNat : ℤ)

end

end A030075.P17677634042671671894

/-! ## A030075.P16312037620019479806

`A030073(n+1)^A141310(A004273(n))`
-/

namespace A030075.P16312037620019479806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030073 (n + 1) : ℚ) ^ (A141310 (A004273 n).toNat : ℤ)

end

end A030075.P16312037620019479806

/-! ## A030075.P4155416232937308711

`A030073(n+1)^A141310(A030101(n))`
-/

namespace A030075.P4155416232937308711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030073 (n + 1) : ℚ) ^ (A141310 (A030101 n).toNat : ℤ)

end

end A030075.P4155416232937308711

/-! ## A030075.P18676858891123960

`A030073(n+1)^A001222(A001748(n+1))`
-/

namespace A030075.P18676858891123960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030073 (n + 1) : ℚ) ^ (A001222 (A001748 (n + 1)).toNat : ℤ)

end

end A030075.P18676858891123960

/-! ## A030075.P7643013609217183448

`A030073(n+1)%A030078(n+1)*A030073(n+1)`
-/

namespace A030075.P7643013609217183448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030073 (n + 1)) (A030078 (n + 1)) * A030073 (n + 1)

end

end A030075.P7643013609217183448

/-!
# A030076: a(n) = 10 - m, where m = maximal digit of n.

The programs for A030076, the canonical program `A030076.P1925332583797946148` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030076 has offset 1).

The definition of A030076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030076.P1925332583797946148

`10-A054055(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030076

/-- `10-A054055(n+1)` -/
def P1925332583797946148.Spec : Prop :=
  ∀ n, P1925332583797946148.a n = A030076 (n + 1)

theorem P1925332583797946148.correct : P1925332583797946148.Spec := by
  intro n
  simp only [A030076, Nat.add_sub_cancel]

end A030076

/-! ## A030076.P7464033264915521192

`a(n-1)-Δ[A054055(n)]` with `a(0)=9`
-/

namespace A030076.P7464033264915521192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A030076.P7464033264915521192

namespace A030076

/-- `a(n-1)-Δ[A054055(n)]` -/
def P7464033264915521192.Spec : Prop :=
  ∀ n, P7464033264915521192.a n = A030076 (n + 1)

end A030076

/-! ## A030076.P7383964352462072244

`abs(12-floor(log2(A086066(n+1))))-2`
-/

namespace A030076.P7383964352462072244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |12 - (Nat.log 2 (A086066 (n + 1)).toNat : ℤ)| - 2

end

end A030076.P7383964352462072244

namespace A030076

/-- `abs(12-floor(log2(A086066(n+1))))-2` -/
def P7383964352462072244.Spec : Prop :=
  ∀ n, P7383964352462072244.a n = A030076 (n + 1)

end A030076

/-! ## A030076.P16579136774866058439

`A161813(A073730(n+1))`
-/

namespace A030076.P16579136774866058439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A073730 (n + 1)).toNat

end

end A030076.P16579136774866058439

namespace A030076

/-- `A161813(A073730(n+1))` -/
def P16579136774866058439.Spec : Prop :=
  ∀ n, P16579136774866058439.a n = A030076 (n + 1)

end A030076

/-! ## A030076.P2329508548744019704

`A251984(A004185(n+1))`
-/

namespace A030076.P2329508548744019704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A004185 (n + 1)).toNat

end

end A030076.P2329508548744019704

namespace A030076

/-- `A251984(A004185(n+1))` -/
def P2329508548744019704.Spec : Prop :=
  ∀ n, P2329508548744019704.a n = A030076 (n + 1)

end A030076

/-! ## A030076.P3998879620949217826

`A251984(A180410(n+1))`
-/

namespace A030076.P3998879620949217826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A180410 (n + 1)).toNat

end

end A030076.P3998879620949217826

namespace A030076

/-- `A251984(A180410(n+1))` -/
def P3998879620949217826.Spec : Prop :=
  ∀ n, P3998879620949217826.a n = A030076 (n + 1)

end A030076

/-! ## A030076.P4597603115087605552

`A061601(A095815(n+1)-(n+2))`
-/

namespace A030076.P4597603115087605552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A095815 (n + 1) - (n + 2 : ℤ)).toNat

end

end A030076.P4597603115087605552

namespace A030076

/-- `A061601(A095815(n+1)-(n+2))` -/
def P4597603115087605552.Spec : Prop :=
  ∀ n, P4597603115087605552.a n = A030076 (n + 1)

end A030076

/-! ## A030076.P15644716949412895997

`A251984(A355222(n+1))`
-/

namespace A030076.P15644716949412895997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A355222 (n + 1)).toNat

end

end A030076.P15644716949412895997

namespace A030076

/-- `A251984(A355222(n+1))` -/
def P15644716949412895997.Spec : Prop :=
  ∀ n, P15644716949412895997.a n = A030076 (n + 1)

end A030076

/-! ## A030076.P16725511824386222759

`A274206(A251984(n+1)+A193581(n+1))`
-/

namespace A030076.P16725511824386222759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (A251984 (n + 1) + A193581 (n + 1)).toNat

end

end A030076.P16725511824386222759

namespace A030076

/-- `A274206(A251984(n+1)+A193581(n+1))` -/
def P16725511824386222759.Spec : Prop :=
  ∀ n, P16725511824386222759.a n = A030076 (n + 1)

end A030076

/-! ## A030076.P11639332595805805170

`A151949(A008592(n+1))%10`
-/

namespace A030076.P11639332595805805170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151949 (A008592 (n + 1)).toNat) 10

end

end A030076.P11639332595805805170

namespace A030076

/-- `A151949(A008592(n+1))%10` -/
def P11639332595805805170.Spec : Prop :=
  ∀ n, P11639332595805805170.a n = A030076 (n + 1)

end A030076

/-! ## A030076.P16862392423187651567

`10-A000030(A194233(n+1))`
-/

namespace A030076.P16862392423187651567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A000030 (A194233 (n + 1)).toNat

end

end A030076.P16862392423187651567

namespace A030076

/-- `10-A000030(A194233(n+1))` -/
def P16862392423187651567.Spec : Prop :=
  ∀ n, P16862392423187651567.a n = A030076 (n + 1)

end A030076

/-! ## A030076.P8901139031874605610

`A251984(A047842(n+1))`
-/

namespace A030076.P8901139031874605610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A047842 (n + 1)).toNat

end

end A030076.P8901139031874605610

namespace A030076

/-- `A251984(A047842(n+1))` -/
def P8901139031874605610.Spec : Prop :=
  ∀ n, P8901139031874605610.a n = A030076 (n + 1)

end A030076

/-!
# A030077: Take n equally spaced points on circle, connect them by a path with n-1 line segments; sequence gives number of distinct path lengths.

The programs for A030077, there is no canonical definition to state claims against.
-/

/-! ## A030077.P13281132902646741251

`A352568(A043316(n+1))`
-/

namespace A030077.P13281132902646741251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352568 (A043316 (n + 1)).toNat

end

end A030077.P13281132902646741251

/-! ## A030077.P6144049229568090290

`A352568(A044913(n+1))`
-/

namespace A030077.P6144049229568090290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352568 (A044913 (n + 1)).toNat

end

end A030077.P6144049229568090290

/-! ## A030077.P8993993337267756731

`A352568(A049872(n+1))`
-/

namespace A030077.P8993993337267756731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352568 (A049872 (n + 1)).toNat

end

end A030077.P8993993337267756731

/-! ## A030077.P16815748444302166192

`A352568(A061147(n+1))`
-/

namespace A030077.P16815748444302166192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352568 (A061147 (n + 1)).toNat

end

end A030077.P16815748444302166192

/-! ## A030077.P12256780308852971105

`A352568(A061497(n+1))`
-/

namespace A030077.P12256780308852971105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352568 (A061497 (n + 1)).toNat

end

end A030077.P12256780308852971105

/-!
# A030078: Cubes of primes.

The programs for A030078, the canonical program `A030078.P13819432151207990454` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030078 has offset 1).

The definition of A030078 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A030078.P13819432151207990454

`A000040(n+1)^3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030078

/-- `A000040(n+1)^3` -/
def P13819432151207990454.Spec : Prop :=
  ∀ n, P13819432151207990454.a n = A030078 (n + 1)

theorem P13819432151207990454.correct : P13819432151207990454.Spec := by
  intro n
  simp only [A030078, Nat.add_sub_cancel]

end A030078

/-! ## A030078.P15789203690137552583

`A119959(n+1)*A008864(n+1)-1`
-/

namespace A030078.P15789203690137552583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1) * A008864 (n + 1) - 1

end

end A030078.P15789203690137552583

namespace A030078

/-- `A119959(n+1)*A008864(n+1)-1` -/
def P15789203690137552583.Spec : Prop :=
  ∀ n, P15789203690137552583.a n = A030078 (n + 1)

end A030078

/-! ## A030078.P2400188421575878674

`abs(Δ[A242188(n)])`
-/

namespace A030078.P2400188421575878674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A030078.P2400188421575878674

namespace A030078

/-- `abs(Δ[A242188(n)])` -/
def P2400188421575878674.Spec : Prop :=
  ∀ n, P2400188421575878674.a n = A030078 (n + 1)

end A030078

/-! ## A030078.P11675624511250809295

`sqrt(A030516(n+1))`
-/

namespace A030078.P11675624511250809295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030516 (n + 1) : ℝ)

end

end A030078.P11675624511250809295

namespace A030078

/-- `sqrt(A030516(n+1))` -/
def P11675624511250809295.Spec : Prop :=
  ∀ n, P11675624511250809295.a n = (A030078 (n + 1) : ℝ)

end A030078

/-! ## A030078.P14631125019676201864

`Δ[A007504(n)]^3`
-/

namespace A030078.P14631125019676201864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A030078.P14631125019676201864

namespace A030078

/-- `Δ[A007504(n)]^3` -/
def P14631125019676201864.Spec : Prop :=
  ∀ n, P14631125019676201864.a n = A030078 (n + 1)

end A030078

/-! ## A030078.P15099986372200453641

`A153481(n+1)+2`
-/

namespace A030078.P15099986372200453641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153481 (n + 1) + 2

end

end A030078.P15099986372200453641

namespace A030078

/-- `A153481(n+1)+2` -/
def P15099986372200453641.Spec : Prop :=
  ∀ n, P15099986372200453641.a n = A030078 (n + 1)

end A030078

/-! ## A030078.P17247005529869812217

`A172190(n+1)/2`
-/

namespace A030078.P17247005529869812217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172190 (n + 1) : ℚ) / 2

end

end A030078.P17247005529869812217

namespace A030078

/-- `A172190(n+1)/2` -/
def P17247005529869812217.Spec : Prop :=
  ∀ n, P17247005529869812217.a n = (A030078 (n + 1) : ℚ)

end A030078

/-! ## A030078.P12236560669628092155

`sqrt(sqrt(A030631(n+1)))`
-/

namespace A030078.P12236560669628092155
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A030631 (n + 1) : ℝ))

end

end A030078.P12236560669628092155

namespace A030078

/-- `sqrt(sqrt(A030631(n+1)))` -/
def P12236560669628092155.Spec : Prop :=
  ∀ n, P12236560669628092155.a n = (A030078 (n + 1) : ℝ)

end A030078

/-! ## A030078.P9180176153793943121

`ceil(sqrt(A138408(n+1)))`
-/

namespace A030078.P9180176153793943121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A138408 (n + 1) : ℝ)⌉

end

end A030078.P9180176153793943121

namespace A030078

/-- `ceil(sqrt(A138408(n+1)))` -/
def P9180176153793943121.Spec : Prop :=
  ∀ n, P9180176153793943121.a n = A030078 (n + 1)

end A030078

/-! ## A030078.P15786549344571943215

`sqrt(A001248(n+1)^3)`
-/

namespace A030078.P15786549344571943215
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) ^ 3 : ℝ)

end

end A030078.P15786549344571943215

namespace A030078

/-- `sqrt(A001248(n+1)^3)` -/
def P15786549344571943215.Spec : Prop :=
  ∀ n, P15786549344571943215.a n = (A030078 (n + 1) : ℝ)

end A030078

/-! ## A030078.P2014898150893635376

`∑[A054541(n+1)]^3`
-/

namespace A030078.P2014898150893635376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A030078.P2014898150893635376

namespace A030078

/-- `∑[A054541(n+1)]^3` -/
def P2014898150893635376.Spec : Prop :=
  ∀ n, P2014898150893635376.a n = A030078 (n + 1)

end A030078

/-! ## A030078.P2624394995284847085

`(A006093(n+1)+1)^3`
-/

namespace A030078.P2624394995284847085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) ^ 3

end

end A030078.P2624394995284847085

namespace A030078

/-- `(A006093(n+1)+1)^3` -/
def P2624394995284847085.Spec : Prop :=
  ∀ n, P2624394995284847085.a n = A030078 (n + 1)

end A030078

/-! ## A030078.P14940000520886906809

`(A008864(n+1)-1)^3`
-/

namespace A030078.P14940000520886906809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) ^ 3

end

end A030078.P14940000520886906809

namespace A030078

/-- `(A008864(n+1)-1)^3` -/
def P14940000520886906809.Spec : Prop :=
  ∀ n, P14940000520886906809.a n = A030078 (n + 1)

end A030078

/-! ## A030078.P2797625318387227229

`(A001748(n+1)/3)^3`
-/

namespace A030078.P2797625318387227229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001748 (n + 1) : ℚ) / 3) ^ 3

end

end A030078.P2797625318387227229

namespace A030078

/-- `(A001748(n+1)/3)^3` -/
def P2797625318387227229.Spec : Prop :=
  ∀ n, P2797625318387227229.a n = (A030078 (n + 1) : ℚ)

end A030078

/-! ## A030078.P12118583532162532749

`(A014692(n+1)+n)^3`
-/

namespace A030078.P12118583532162532749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) ^ 3

end

end A030078.P12118583532162532749

namespace A030078

/-- `(A014692(n+1)+n)^3` -/
def P12118583532162532749.Spec : Prop :=
  ∀ n, P12118583532162532749.a n = A030078 (n + 1)

end A030078

/-! ## A030078.P17463394463470828901

`abs((-A000040(2*n-(n-1)))^3)`
-/

namespace A030078.P17463394463470828901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) ^ 3|

end

end A030078.P17463394463470828901

namespace A030078

/-- `abs((-A000040(2*n-(n-1)))^3)` -/
def P17463394463470828901.Spec : Prop :=
  ∀ n, P17463394463470828901.a n = A030078 (n + 1)

end A030078

/-! ## A030078.P13596959548960573394

`A083558(n+1)+A036689(n+1)`
-/

namespace A030078.P13596959548960573394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083558 (n + 1) + A036689 (n + 1)

end

end A030078.P13596959548960573394

namespace A030078

/-- `A083558(n+1)+A036689(n+1)` -/
def P13596959548960573394.Spec : Prop :=
  ∀ n, P13596959548960573394.a n = A030078 (n + 1)

end A030078

/-! ## A030078.P10792359602558666159

`A127917(n+1)+A000040(n+1)`
-/

namespace A030078.P10792359602558666159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127917 (n + 1) + A000040 (n + 1)

end

end A030078.P10792359602558666159

namespace A030078

/-- `A127917(n+1)+A000040(n+1)` -/
def P10792359602558666159.Spec : Prop :=
  ∀ n, P10792359602558666159.a n = A030078 (n + 1)

end A030078

/-! ## A030078.P7405876099203198195

`A135177(n+1)+A001248(n+1)`
-/

namespace A030078.P7405876099203198195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135177 (n + 1) + A001248 (n + 1)

end

end A030078.P7405876099203198195

namespace A030078

/-- `A135177(n+1)+A001248(n+1)` -/
def P7405876099203198195.Spec : Prop :=
  ∀ n, P7405876099203198195.a n = A030078 (n + 1)

end A030078

/-! ## A030078.P15020735909350378497

`A127918(n+1)+A066886(n+1)`
-/

namespace A030078.P15020735909350378497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127918 (n + 1) + A066886 (n + 1)

end

end A030078.P15020735909350378497

namespace A030078

/-- `A127918(n+1)+A066886(n+1)` -/
def P15020735909350378497.Spec : Prop :=
  ∀ n, P15020735909350378497.a n = A030078 (n + 1)

end A030078

/-!
# A030079: Primes p such that digits of p appear in p^2.

The programs for A030079, there is no canonical definition to state claims against.
-/

/-! ## A030079.P338674414812021237

`sqrt(A030081(n+1))`
-/

namespace A030079.P338674414812021237
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030081 (n + 1) : ℝ)

end

end A030079.P338674414812021237

/-! ## A030079.P8504736728645643786

`p?[A029772(n+1)]`
-/

namespace A030079.P8504736728645643786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030079.P8504736728645643786

/-! ## A030079.P7864247196244715238

`record[A020639(A029772(n+3))]`
-/

namespace A030079.P7864247196244715238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A029772 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030079.P7864247196244715238

/-! ## A030079.P8123470727801839535

`filter[A029772(n+2), A010051(#)]`
-/

namespace A030079.P8123470727801839535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A030079.P8123470727801839535

/-! ## A030079.P14038802853333420085

`∩[A000040(n+1), A029772(n+1)]`
-/

namespace A030079.P14038802853333420085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030079.P14038802853333420085

/-! ## A030079.P15745768827013081637

`∩[A029772(n+1), A045344(n+1)]`
-/

namespace A030079.P15745768827013081637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030079.P15745768827013081637

/-! ## A030079.P1074532989938429447

`∩[A029772(n+1), A065091(n+1)]`
-/

namespace A030079.P1074532989938429447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030079.P1074532989938429447

/-! ## A030079.P17743237191154033113

`∩[A029772(n+1), A083249(n+1)]`
-/

namespace A030079.P17743237191154033113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030079.P17743237191154033113

/-! ## A030079.P7691615644051350563

`∩[A029772(n+1), A140826(n+1)]`
-/

namespace A030079.P7691615644051350563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030079.P7691615644051350563

/-! ## A030079.P17652324562639963094

`∩[A029772(n+1), A175787(n+1)]`
-/

namespace A030079.P17652324562639963094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030079.P17652324562639963094

/-! ## A030079.P10414104563773871107

`∩[A029772(n+1), A215848(n+1)]`
-/

namespace A030079.P10414104563773871107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030079.P10414104563773871107

/-! ## A030079.P12901619997855700303

`eq[A005127(n), A373203(n)]`
-/

namespace A030079.P12901619997855700303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030079.P12901619997855700303

/-! ## A030079.P15167875985170044516

`filter[A029772(n+2), A171387(#)]`
-/

namespace A030079.P15167875985170044516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A030079.P15167875985170044516

/-! ## A030079.P9545134670087533136

`filter[A029772(n+3), A080339(#)]`
-/

namespace A030079.P9545134670087533136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A030079.P9545134670087533136

/-! ## A030079.P15637910949710475182

`filter[A029772(n+3), A080545(#)]`
-/

namespace A030079.P15637910949710475182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A030079.P15637910949710475182

/-! ## A030079.P11278659312631240969

`A000040(eq[0, A109072(A000040(n+1))]+1)`
-/

namespace A030079.P11278659312631240969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109072 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A030079.P11278659312631240969

/-!
# A030080: Primes p such that digits of p appear in p^3.

The programs for A030080, there is no canonical definition to state claims against.
-/

/-! ## A030080.P7116273000507371542

`root(A030082(n+1), 3)`
-/

namespace A030080.P7116273000507371542
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030082 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A030080.P7116273000507371542

/-! ## A030080.P792319404969035493

`p?[A029776(n+1)]`
-/

namespace A030080.P792319404969035493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030080.P792319404969035493

/-! ## A030080.P10498969030187599319

`p?[record[A029776(A291769(n))]]`
-/

namespace A030080.P10498969030187599319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030080.P10498969030187599319

/-! ## A030080.P18357615299693775138

`p?[record[A029776(A331742(n))]]`
-/

namespace A030080.P18357615299693775138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (A331742 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030080.P18357615299693775138

/-! ## A030080.P1859267637686928239

`record[A006530(A029776(n+4))]`
-/

namespace A030080.P1859267637686928239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A029776 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030080.P1859267637686928239

/-! ## A030080.P835711924853944779

`filter[A029776(n+2), A010051(#)]`
-/

namespace A030080.P835711924853944779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A030080.P835711924853944779

/-! ## A030080.P2535190241588185161

`∩[A000040(n+1), A029776(n+1)]`
-/

namespace A030080.P2535190241588185161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030080.P2535190241588185161

/-! ## A030080.P10711376102716769233

`∩[A029776(n+1), A045344(n+1)]`
-/

namespace A030080.P10711376102716769233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030080.P10711376102716769233

/-! ## A030080.P2749688168979636814

`∩[A029776(n+1), A065091(n+1)]`
-/

namespace A030080.P2749688168979636814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030080.P2749688168979636814

/-! ## A030080.P10136466145313373835

`∩[A029776(n+1), A182140(n+1)]`
-/

namespace A030080.P10136466145313373835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030080.P10136466145313373835

/-! ## A030080.P13470934309022463455

`∩[A029776(n+1), A215848(n+1)]`
-/

namespace A030080.P13470934309022463455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030080.P13470934309022463455

/-! ## A030080.P5532442696243159313

`filter[A029776(n+2), A171387(#)]`
-/

namespace A030080.P5532442696243159313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A030080.P5532442696243159313

/-! ## A030080.P5920473609782525831

`filter[A029776(n+3), A080339(#)]`
-/

namespace A030080.P5920473609782525831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A030080.P5920473609782525831

/-! ## A030080.P4523075908709007192

`filter[A029776(n+3), A080545(#)]`
-/

namespace A030080.P4523075908709007192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A030080.P4523075908709007192

/-!
# A030081: a(n) = prime^2 and digits of prime appear in a(n).

The programs for A030081, there is no canonical definition to state claims against.
-/

/-! ## A030081.P6427665825729136985

`A030079(n+1)²`
-/

namespace A030081.P6427665825729136985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030079 (n + 1) ^ 2

end

end A030081.P6427665825729136985

/-! ## A030081.P14644006576957277729

`A030079(n+1)^A020639(2*(n+1))`
-/

namespace A030081.P14644006576957277729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030079 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A030081.P14644006576957277729

/-! ## A030081.P15349147696430543434

`A030079(n+1)^A000005(A165681(n+1))`
-/

namespace A030081.P15349147696430543434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030079 (n + 1) : ℚ) ^ (A000005 (A165681 (n + 1)).toNat : ℤ)

end

end A030081.P15349147696430543434

/-! ## A030081.P14838021053536308479

`A030079(n+1)^A030057(A030101(n+3))`
-/

namespace A030081.P14838021053536308479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030079 (n + 1) : ℚ) ^ (A030057 (A030101 (n + 3)).toNat : ℤ)

end

end A030081.P14838021053536308479

/-! ## A030081.P17766054858087939072

`A030079(n+1)^A030057(2*n+3)`
-/

namespace A030081.P17766054858087939072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030079 (n + 1) : ℚ) ^ (A030057 (2 * n + 3) : ℤ)

end

end A030081.P17766054858087939072

/-! ## A030081.P15433790076824038334

`A030079(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A030081.P15433790076824038334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030079 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A030081.P15433790076824038334

/-! ## A030081.P2804755289504164333

`p?[A029772(n+1)]²`
-/

namespace A030081.P2804755289504164333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A030081.P2804755289504164333

/-! ## A030081.P9149182234017579007

`∩[A001248(n+1), A029773(n+1)]`
-/

namespace A030081.P9149182234017579007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030081.P9149182234017579007

/-! ## A030081.P3050516339174385526

`∩[A029773(n+1), A053810(n+1)]`
-/

namespace A030081.P3050516339174385526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030081.P3050516339174385526

/-! ## A030081.P16010562690915744505

`∩[A029773(n+1), A064599(n+1)]`
-/

namespace A030081.P16010562690915744505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030081.P16010562690915744505

/-! ## A030081.P9685294730618055098

`∩[A029773(n+1), A247078(n+1)]`
-/

namespace A030081.P9685294730618055098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030081.P9685294730618055098

/-! ## A030081.P14698587882693191662

`∩[A029773(n+1), A247136(n+1)]`
-/

namespace A030081.P14698587882693191662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030081.P14698587882693191662

/-! ## A030081.P3591231189905272048

`∩[A029773(n+1), A319745(n+1)]`
-/

namespace A030081.P3591231189905272048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030081.P3591231189905272048

/-! ## A030081.P13646370433842815881

`∩[A029773(n+1), A329879(n+1)]`
-/

namespace A030081.P13646370433842815881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030081.P13646370433842815881

/-! ## A030081.P2492210685256817872

`∩[A029773(n+1), A357497(n+1)]`
-/

namespace A030081.P2492210685256817872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030081.P2492210685256817872

/-! ## A030081.P8240949583537171773

`∩[A000040(n+1), A029772(n+1)]²`
-/

namespace A030081.P8240949583537171773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030081.P8240949583537171773

/-! ## A030081.P9785239270074915989

`∩[A029772(n+1), A045344(n+1)]²`
-/

namespace A030081.P9785239270074915989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030081.P9785239270074915989

/-! ## A030081.P8612220578827696841

`∩[A029772(n+1), A065091(n+1)]²`
-/

namespace A030081.P8612220578827696841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030081.P8612220578827696841

/-! ## A030081.P3154461102285931256

`∩[A029772(n+1), A083249(n+1)]²`
-/

namespace A030081.P3154461102285931256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030081.P3154461102285931256

/-!
# A030082: a(n) = prime^3 and digits of prime appear in a(n).

The programs for A030082, there is no canonical definition to state claims against.
-/

/-! ## A030082.P14008029659503667140

`A030080(n+1)^3`
-/

namespace A030082.P14008029659503667140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030080 (n + 1) ^ 3

end

end A030082.P14008029659503667140

/-! ## A030082.P6843196193836099663

`p?[A029776(n+1)]^3`
-/

namespace A030082.P6843196193836099663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 3

end

end A030082.P6843196193836099663

/-! ## A030082.P14555956103708715330

`∩[A029777(n+1), A033477(n)]`
-/

namespace A030082.P14555956103708715330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030082.P14555956103708715330

/-! ## A030082.P17094449872765789823

`∩[A029777(n+1), A030078(n+1)]`
-/

namespace A030082.P17094449872765789823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030082.P17094449872765789823

/-! ## A030082.P11317089127075951799

`∩[A029777(n+1), A390188(n+1)]`
-/

namespace A030082.P11317089127075951799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030082.P11317089127075951799

/-! ## A030082.P12744488510867456475

`A000578(A030080(n+1))`
-/

namespace A030082.P12744488510867456475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030080 (n + 1)).toNat

end

end A030082.P12744488510867456475

/-! ## A030082.P6689600618946690543

`A000578(p?[A029776(n+1)])`
-/

namespace A030082.P6689600618946690543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030082.P6689600618946690543

/-! ## A030082.P10640030975564139405

`A005064(p?[A029776(n+1)])`
-/

namespace A030082.P10640030975564139405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030082.P10640030975564139405

/-! ## A030082.P16654424764204267601

`A053149(p?[A030080(n+1)])`
-/

namespace A030082.P16654424764204267601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030082.P16654424764204267601

/-! ## A030082.P9197464490556896376

`∩[A029777(n+1), A352423(n+1)]`
-/

namespace A030082.P9197464490556896376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030082.P9197464490556896376

/-!
# A030083: Primes p such that all digits of p^2 appear in p.

The programs for A030083, there is no canonical definition to state claims against.
-/

/-! ## A030083.P5679989592183692242

`p?[A029774(n+1)]`
-/

namespace A030083.P5679989592183692242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030083.P5679989592183692242

/-! ## A030083.P4475213645963745052

`record[p?[A029774(A291769(n))]]`
-/

namespace A030083.P4475213645963745052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029774 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030083.P4475213645963745052

/-! ## A030083.P16097024845646199831

`record[p?[A029774(A328396(n))]]`
-/

namespace A030083.P16097024845646199831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029774 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030083.P16097024845646199831

/-! ## A030083.P4879491233314239867

`record[p?[A029774(A329048(n))]]`
-/

namespace A030083.P4879491233314239867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029774 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030083.P4879491233314239867

/-!
# A030084: Primes p such that all digits of p^3 appear in p.

The programs for A030084, there is no canonical definition to state claims against.
-/

/-! ## A030084.P4041068109514348478

`A030092(A004914(n+2))`
-/

namespace A030084.P4041068109514348478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030092 (A004914 (n + 2)).toNat

end

end A030084.P4041068109514348478

/-! ## A030084.P16862152061275816070

`A030092(A287022(n)²+n)`
-/

namespace A030084.P16862152061275816070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030092 (A287022 n ^ 2 + (n : ℤ)).toNat

end

end A030084.P16862152061275816070

/-! ## A030084.P8239185736354483054

`A030092(A032551(n+1)+1)`
-/

namespace A030084.P8239185736354483054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030092 (A032551 (n + 1) + 1).toNat

end

end A030084.P8239185736354483054

/-! ## A030084.P557540586834488457

`A030092(n+1)^A287022(n)`
-/

namespace A030084.P557540586834488457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030092 (n + 1) : ℚ) ^ (A287022 n : ℤ)

end

end A030084.P557540586834488457

/-!
# A030085: Primes p such that digits of p appear in p^2 and p^3.

The programs for A030085, there is no canonical definition to state claims against.
-/

/-! ## A030085.P14667416431151603861

`∩[A030079(n+1), A030080(n+1)]`
-/

namespace A030085.P14667416431151603861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P14667416431151603861

/-! ## A030085.P512488903126247975

`p?[A029780(n+1)]`
-/

namespace A030085.P512488903126247975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030085.P512488903126247975

/-! ## A030085.P15564435394592177769

`∩[A029780(n+1), A030079(n+1)]`
-/

namespace A030085.P15564435394592177769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P15564435394592177769

/-! ## A030085.P8513737452263735432

`∩[A029780(n+1), A030080(n+1)]`
-/

namespace A030085.P8513737452263735432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P8513737452263735432

/-! ## A030085.P15988931073458882957

`∩[A029780(n+1), A065396(n+1)]`
-/

namespace A030085.P15988931073458882957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P15988931073458882957

/-! ## A030085.P7971554000829050364

`∩[A029780(n+1), A216285(n+1)]`
-/

namespace A030085.P7971554000829050364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P7971554000829050364

/-! ## A030085.P17085419413079560646

`∩[A000040(n+1), A029780(n+1)]`
-/

namespace A030085.P17085419413079560646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P17085419413079560646

/-! ## A030085.P5901891303606788580

`∩[A029780(n+1), A045344(n+1)]`
-/

namespace A030085.P5901891303606788580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P5901891303606788580

/-! ## A030085.P6489586276956903729

`∩[A029780(n+1), A065091(n+1)]`
-/

namespace A030085.P6489586276956903729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P6489586276956903729

/-! ## A030085.P15003254549719675535

`∩[A029780(n+1), A083249(n+1)]`
-/

namespace A030085.P15003254549719675535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P15003254549719675535

/-! ## A030085.P12826392682197165880

`∩[A029780(n+1), A140826(n+1)]`
-/

namespace A030085.P12826392682197165880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P12826392682197165880

/-! ## A030085.P4742501457045375717

`∩[A029780(n+1), A175787(n+1)]`
-/

namespace A030085.P4742501457045375717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P4742501457045375717

/-! ## A030085.P3200888712584127653

`∩[A029780(n+1), A189710(n+1)]`
-/

namespace A030085.P3200888712584127653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P3200888712584127653

/-! ## A030085.P17640691258681374256

`∩[A029780(n+1), A215848(n+1)]`
-/

namespace A030085.P17640691258681374256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P17640691258681374256

/-! ## A030085.P11632267064639224745

`∩[A029780(n+1), A351398(n+1)]`
-/

namespace A030085.P11632267064639224745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030085.P11632267064639224745

/-! ## A030085.P12588383798225989863

`record[A020639(A029780(n+3))]`
-/

namespace A030085.P12588383798225989863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A029780 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030085.P12588383798225989863

/-! ## A030085.P15501714535375465590

`filter[A029780(n+2), A010051(#)]`
-/

namespace A030085.P15501714535375465590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A030085.P15501714535375465590

/-!
# A030086: Primes p whose digits do not appear in p^2.

The programs for A030086, there is no canonical definition to state claims against.
-/

/-! ## A030086.P4743164747577076566

`sqrt(A030088(n+1))`
-/

namespace A030086.P4743164747577076566
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030088 (n + 1) : ℝ)

end

end A030086.P4743164747577076566

/-! ## A030086.P17093188890986387919

`root(A030088(n+1), dr(A028883(n+1)))`
-/

namespace A030086.P17093188890986387919
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030088 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A028883 (n + 1)) : ℝ))

end

end A030086.P17093188890986387919

/-! ## A030086.P15444105200061086234

`root(A030088(n+1), A001316(A001316(n)))`
-/

namespace A030086.P15444105200061086234
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030088 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A030086.P15444105200061086234

/-! ## A030086.P17172533235509835106

`p?[A029783(n+1)]`
-/

namespace A030086.P17172533235509835106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030086.P17172533235509835106

/-! ## A030086.P8787018374379644422

`A000027(p?[A029783(2*n-(n-1))])`
-/

namespace A030086.P8787018374379644422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030086.P8787018374379644422

/-! ## A030086.P4343508678202613479

`p?[A000034(n)*A029783(A008619(n))]`
-/

namespace A030086.P4343508678202613479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A029783 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030086.P4343508678202613479

/-! ## A030086.P350866699976389181

`∩[A029783(n+1), A042991(n+1)]`
-/

namespace A030086.P350866699976389181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030086.P350866699976389181

/-! ## A030086.P7684543099184158215

`∩[A029783(n+1), A045327(n+1)]`
-/

namespace A030086.P7684543099184158215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030086.P7684543099184158215

/-! ## A030086.P12454256950958475250

`filter[A029783(n+1), A010051(#)]`
-/

namespace A030086.P12454256950958475250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A030086.P12454256950958475250

/-! ## A030086.P11585182054738884576

`record[A006530(sqrt(A029784(n+1)))]`
-/

namespace A030086.P11585182054738884576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A029784 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030086.P11585182054738884576

/-! ## A030086.P9745482155837652052

`record[A020639(sqrt(A029784(n+1)))]`
-/

namespace A030086.P9745482155837652052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A029784 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030086.P9745482155837652052

/-! ## A030086.P8469193105018533330

`∩[A000040(n+1), A029783(n+1)]`
-/

namespace A030086.P8469193105018533330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030086.P8469193105018533330

/-! ## A030086.P5560512128894077548

`∩[A008578(n+1), A029783(n+1)]`
-/

namespace A030086.P5560512128894077548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030086.P5560512128894077548

/-! ## A030086.P7684413123745643482

`∩[A029783(n+1), A040159(n+1)]`
-/

namespace A030086.P7684413123745643482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030086.P7684413123745643482

/-! ## A030086.P2036339142225919742

`∩[A029783(n+1), A040161(n+1)]`
-/

namespace A030086.P2036339142225919742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030086.P2036339142225919742

/-! ## A030086.P14352607220822443267

`∩[A029783(n+1), A040165(n+1)]`
-/

namespace A030086.P14352607220822443267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030086.P14352607220822443267

/-! ## A030086.P8242753207820713352

`∩[A029783(n+1), A040169(n+1)]`
-/

namespace A030086.P8242753207820713352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030086.P8242753207820713352

/-! ## A030086.P5040222499039100534

`∩[A029783(n+1), A040171(n+1)]`
-/

namespace A030086.P5040222499039100534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030086.P5040222499039100534

/-! ## A030086.P8516219868890695520

`∩[A029783(n+1), A040177(n+1)]`
-/

namespace A030086.P8516219868890695520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030086.P8516219868890695520

/-!
# A030087: Primes such that digits of p do not appear in p^3.

The programs for A030087, there is no canonical definition to state claims against.
-/

/-! ## A030087.P1905346635591244033

`A030089(n+1)^(1/3)`
-/

namespace A030087.P1905346635591244033
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030089 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030087.P1905346635591244033

/-! ## A030087.P12600688098430556466

`p?[A029785(n+1)]`
-/

namespace A030087.P12600688098430556466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030087.P12600688098430556466

/-! ## A030087.P15446416201388931043

`p?[record[A029785(A133310(n))]]`
-/

namespace A030087.P15446416201388931043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030087.P15446416201388931043

/-! ## A030087.P5088324585613024950

`p?[record[A029785(A291766(n))]]`
-/

namespace A030087.P5088324585613024950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030087.P5088324585613024950

/-!
# A030088: a(n) = prime^2 and digits of prime do not appear in a(n).

The programs for A030088, there is no canonical definition to state claims against.
-/

/-! ## A030088.P12353720356010568090

`A030086(n+1)²`
-/

namespace A030088.P12353720356010568090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030086 (n + 1) ^ 2

end

end A030088.P12353720356010568090

/-! ## A030088.P2825844828256432720

`record[A030086(A152271(n))²]`
-/

namespace A030088.P2825844828256432720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030086 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030088.P2825844828256432720

/-! ## A030088.P10243153273137316420

`record[A030086(A324346(n))²]`
-/

namespace A030088.P10243153273137316420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030086 (A324346 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030088.P10243153273137316420

/-! ## A030088.P2831299944413817266

`record[A030086(A152271(n))]*A030086(n+1)`
-/

namespace A030088.P2831299944413817266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030086 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A030086 (n + 1)

end

end A030088.P2831299944413817266

/-! ## A030088.P15682398776335573532

`record[A030086(A324346(n))]*A030086(n+1)`
-/

namespace A030088.P15682398776335573532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030086 (A324346 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A030086 (n + 1)

end

end A030088.P15682398776335573532

/-! ## A030088.P14044982759277579938

`A030086(A008619(2*n))*A030086(n+1)`
-/

namespace A030088.P14044982759277579938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030086 (A008619 (2 * n)).toNat * A030086 (n + 1)

end

end A030088.P14044982759277579938

/-! ## A030088.P5239001673506675407

`A030086(n+1)^A000005(A006512(n+1))`
-/

namespace A030088.P5239001673506675407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030086 (n + 1) : ℚ) ^ (A000005 (A006512 (n + 1)).toNat : ℤ)

end

end A030088.P5239001673506675407

/-! ## A030088.P10112072828692284854

`A030086(n+1)^A000005(A030085(n+1))`
-/

namespace A030088.P10112072828692284854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030086 (n + 1) : ℚ) ^ (A000005 (A030085 (n + 1)).toNat : ℤ)

end

end A030088.P10112072828692284854

/-! ## A030088.P1422749470550589515

`p?[A029783(n+1)]²`
-/

namespace A030088.P1422749470550589515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A030088.P1422749470550589515

/-! ## A030088.P15913656827584304346

`p?[A029783(n+1)]*A030086(n+1)`
-/

namespace A030088.P15913656827584304346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A030086 (n + 1)

end

end A030088.P15913656827584304346

/-! ## A030088.P7948525561955805703

`p?[A000034(n)*A029783(A008619(n))]²`
-/

namespace A030088.P7948525561955805703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A029783 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A030088.P7948525561955805703

/-! ## A030088.P9111815580513975496

`∩[A029783(n+1), A042991(n+1)]²`
-/

namespace A030088.P9111815580513975496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030088.P9111815580513975496

/-! ## A030088.P17599933550012219220

`∩[A029783(n+1), A045327(n+1)]²`
-/

namespace A030088.P17599933550012219220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030088.P17599933550012219220

/-! ## A030088.P10057845781400385659

`record[A006530(sqrt(A029784(n+1)))²]`
-/

namespace A030088.P10057845781400385659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A029784 (n + 1) : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030088.P10057845781400385659

/-! ## A030088.P13712964660285986514

`record[A020639(sqrt(A029784(n+1)))²]`
-/

namespace A030088.P13712964660285986514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A029784 (n + 1) : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030088.P13712964660285986514

/-! ## A030088.P2079043252276213858

`∩[A001248(n+1), A029784(n+1)]`
-/

namespace A030088.P2079043252276213858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030088.P2079043252276213858

/-! ## A030088.P14512229957098793110

`∩[A029784(n+1), A053810(n+1)]`
-/

namespace A030088.P14512229957098793110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030088.P14512229957098793110

/-! ## A030088.P7819110743420788149

`∩[A029784(n+1), A064599(n+1)]`
-/

namespace A030088.P7819110743420788149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030088.P7819110743420788149

/-! ## A030088.P2363262498786876272

`∩[A029784(n+1), A076794(n+1)]`
-/

namespace A030088.P2363262498786876272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030088.P2363262498786876272

/-!
# A030089: a(n) = prime^3 and digits of prime do not appear in a(n).

The programs for A030089, there is no canonical definition to state claims against.
-/

/-! ## A030089.P10751187584195385084

`A030087(n+1)^3`
-/

namespace A030089.P10751187584195385084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030087 (n + 1) ^ 3

end

end A030089.P10751187584195385084

/-! ## A030089.P15871674685398328022

`p?[A029785(n+1)]^3`
-/

namespace A030089.P15871674685398328022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 3

end

end A030089.P15871674685398328022

/-! ## A030089.P2233532294578707381

`record[p?[A029785(A133310(n))]^3]`
-/

namespace A030089.P2233532294578707381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030089.P2233532294578707381

/-! ## A030089.P2559566099783850673

`record[p?[A029785(A291766(n))]^3]`
-/

namespace A030089.P2559566099783850673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030089.P2559566099783850673

/-!
# A030090: Primes p such that digits of p do not appear in p^2 or p^3 (probably finite).

The programs for A030090, there is no canonical definition to state claims against.
-/

/-! ## A030090.P17516329656698651530

`p?[A029790(n+1)]`
-/

namespace A030090.P17516329656698651530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030090.P17516329656698651530

/-! ## A030090.P3458219444168839447

`A029790(A086583(n))`
-/

namespace A030090.P3458219444168839447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029790 (A086583 n).toNat

end

end A030090.P3458219444168839447

/-!
# A030091: Primes such that p and p^2 have same set of digits.

The programs for A030091, there is no canonical definition to state claims against.
-/

/-! ## A030091.P740822169741744263

`∩[A030083(n+1), A258231(n+1)]`
-/

namespace A030091.P740822169741744263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030091.P740822169741744263

/-! ## A030091.P14565843601214447930

`∩[A029793(n+1), A030083(n+1)]`
-/

namespace A030091.P14565843601214447930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030091.P14565843601214447930

/-! ## A030091.P12444456786190257454

`p?[A029793(n+1)]`
-/

namespace A030091.P12444456786190257454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030091.P12444456786190257454

/-! ## A030091.P12148627101272030993

`p?[A258231(n+1)]`
-/

namespace A030091.P12148627101272030993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030091.P12148627101272030993

/-!
# A030092: Primes p such that p and p^3 have the same set of digits.

The programs for A030092, there is no canonical definition to state claims against.
-/

/-! ## A030092.P10544348359560814429

`∩[A029795(n+1), A030084(n+1)]`
-/

namespace A030092.P10544348359560814429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030092.P10544348359560814429

/-!
# A030095: Primes p such that 666p is palindromic.

The programs for A030095, there is no canonical definition to state claims against.
-/

/-! ## A030095.P11796691338824452721

`p?[A030094(n)]`
-/

namespace A030095.P11796691338824452721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030095.P11796691338824452721

/-! ## A030095.P2476689232604885754

`record[A020639(A030094(n+3))]`
-/

namespace A030095.P2476689232604885754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A030094 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030095.P2476689232604885754

/-! ## A030095.P6072748262804065446

`filter[A030094(n+1), A010051(#)]`
-/

namespace A030095.P6072748262804065446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A030095.P6072748262804065446

/-!
# A030096: Primes whose digits are all odd.

The programs for A030096, the canonical program `A030096.P1601059321159697482` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030096 has offset 1).

The definition of A030096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030096.P1601059321159697482

`p?[A066640(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A030096

/-- `p?[A066640(n+1)]` -/
def P1601059321159697482.Spec : Prop :=
  ∀ n, P1601059321159697482.a n = A030096 (n + 1)

theorem P1601059321159697482.correct : P1601059321159697482.Spec := by
  intro n
  simp only [A030096, Nat.add_sub_cancel]

end A030096

/-! ## A030096.P2496723666185870463

`∩[A030475(n+1), A066640(n+1)]`
-/

namespace A030096.P2496723666185870463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P2496723666185870463

namespace A030096

/-- `∩[A030475(n+1), A066640(n+1)]` -/
def P2496723666185870463.Spec : Prop :=
  ∀ n, (P2496723666185870463.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P10203592739626460842

`p?[A062086(n+1)]`
-/

namespace A030096.P10203592739626460842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030096.P10203592739626460842

namespace A030096

/-- `p?[A062086(n+1)]` -/
def P10203592739626460842.Spec : Prop :=
  ∀ n, P10203592739626460842.a n = A030096 (n + 1)

end A030096

/-! ## A030096.P3767271839729425305

`∩[A030475(n+1), A062086(n+1)]`
-/

namespace A030096.P3767271839729425305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P3767271839729425305

namespace A030096

/-- `∩[A030475(n+1), A062086(n+1)]` -/
def P3767271839729425305.Spec : Prop :=
  ∀ n, (P3767271839729425305.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P16214269030505901825

`p?[A014261(n+1)]`
-/

namespace A030096.P16214269030505901825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030096.P16214269030505901825

namespace A030096

/-- `p?[A014261(n+1)]` -/
def P16214269030505901825.Spec : Prop :=
  ∀ n, P16214269030505901825.a n = A030096 (n + 1)

end A030096

/-! ## A030096.P8760958174066046837

`∩[A014261(n+1), A030475(n+1)]`
-/

namespace A030096.P8760958174066046837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P8760958174066046837

namespace A030096

/-- `∩[A014261(n+1), A030475(n+1)]` -/
def P8760958174066046837.Spec : Prop :=
  ∀ n, (P8760958174066046837.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P13778056955795996202

`p?[A059708(n+4)]`
-/

namespace A030096.P13778056955795996202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030096.P13778056955795996202

namespace A030096

/-- `p?[A059708(n+4)]` -/
def P13778056955795996202.Spec : Prop :=
  ∀ n, P13778056955795996202.a n = A030096 (n + 1)

end A030096

/-! ## A030096.P12776613794805393893

`p?[A242367(n+2)+1]`
-/

namespace A030096.P12776613794805393893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242367 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030096.P12776613794805393893

namespace A030096

/-- `p?[A242367(n+2)+1]` -/
def P12776613794805393893.Spec : Prop :=
  ∀ n, P12776613794805393893.a n = A030096 (n + 1)

end A030096

/-! ## A030096.P3954526220382350705

`∩[A059708(n+1), A155055(n+1)]`
-/

namespace A030096.P3954526220382350705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P3954526220382350705

namespace A030096

/-- `∩[A059708(n+1), A155055(n+1)]` -/
def P3954526220382350705.Spec : Prop :=
  ∀ n, (P3954526220382350705.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P6817240767383599239

`∩[A059708(n+1), A306084(n+1)]`
-/

namespace A030096.P6817240767383599239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P6817240767383599239

namespace A030096

/-- `∩[A059708(n+1), A306084(n+1)]` -/
def P6817240767383599239.Spec : Prop :=
  ∀ n, (P6817240767383599239.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P14079034814204194978

`∩[A059708(n+1), A386320(n+1)]`
-/

namespace A030096.P14079034814204194978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P14079034814204194978

namespace A030096

/-- `∩[A059708(n+1), A386320(n+1)]` -/
def P14079034814204194978.Spec : Prop :=
  ∀ n, (P14079034814204194978.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P1346083601163908677

`∩[A059708(n+1), A386336(n+1)]`
-/

namespace A030096.P1346083601163908677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P1346083601163908677

namespace A030096

/-- `∩[A059708(n+1), A386336(n+1)]` -/
def P1346083601163908677.Spec : Prop :=
  ∀ n, (P1346083601163908677.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P17168220749014014272

`∩[A059708(n+1), A386337(n+1)]`
-/

namespace A030096.P17168220749014014272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P17168220749014014272

namespace A030096

/-- `∩[A059708(n+1), A386337(n+1)]` -/
def P17168220749014014272.Spec : Prop :=
  ∀ n, (P17168220749014014272.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P3838637802171421950

`∩[A059708(n+1), A386338(n+1)]`
-/

namespace A030096.P3838637802171421950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P3838637802171421950

namespace A030096

/-- `∩[A059708(n+1), A386338(n+1)]` -/
def P3838637802171421950.Spec : Prop :=
  ∀ n, (P3838637802171421950.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P9466544749633558721

`∩[A059708(n+1), A155026(n+1)]`
-/

namespace A030096.P9466544749633558721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P9466544749633558721

namespace A030096

/-- `∩[A059708(n+1), A155026(n+1)]` -/
def P9466544749633558721.Spec : Prop :=
  ∀ n, (P9466544749633558721.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P4324198473417073220

`∩[A014261(n+1), A038604(n+1)]`
-/

namespace A030096.P4324198473417073220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P4324198473417073220

namespace A030096

/-- `∩[A014261(n+1), A038604(n+1)]` -/
def P4324198473417073220.Spec : Prop :=
  ∀ n, (P4324198473417073220.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P13128286860894309645

`∩[A038604(n+1), A059708(n+1)]`
-/

namespace A030096.P13128286860894309645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P13128286860894309645

namespace A030096

/-- `∩[A038604(n+1), A059708(n+1)]` -/
def P13128286860894309645.Spec : Prop :=
  ∀ n, (P13128286860894309645.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P1756159287440751268

`∩[A038604(n+1), A062086(n+1)]`
-/

namespace A030096.P1756159287440751268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P1756159287440751268

namespace A030096

/-- `∩[A038604(n+1), A062086(n+1)]` -/
def P1756159287440751268.Spec : Prop :=
  ∀ n, (P1756159287440751268.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P8973103271738636723

`∩[A014261(n+1), A038612(n+1)]`
-/

namespace A030096.P8973103271738636723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P8973103271738636723

namespace A030096

/-- `∩[A014261(n+1), A038612(n+1)]` -/
def P8973103271738636723.Spec : Prop :=
  ∀ n, (P8973103271738636723.a n : ℤ) = A030096 (n + 1)

end A030096

/-! ## A030096.P15415347867265497111

`∩[A038612(n+1), A062086(n+1)]`
-/

namespace A030096.P15415347867265497111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030096.P15415347867265497111

namespace A030096

/-- `∩[A038612(n+1), A062086(n+1)]` -/
def P15415347867265497111.Spec : Prop :=
  ∀ n, (P15415347867265497111.a n : ℤ) = A030096 (n + 1)

end A030096

/-!
# A030097: Numbers k such that k^2 has only even digits.

The programs for A030097, there is no canonical definition to state claims against.
-/

/-! ## A030097.P735800413129520729

`sqrt(A030098(n+1))`
-/

namespace A030097.P735800413129520729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030098 (n + 1) : ℝ)

end

end A030097.P735800413129520729

/-! ## A030097.P6222860768800330121

`A030098(n+1)^((n+1)/A103517(n))`
-/

namespace A030097.P6222860768800330121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030098 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / (A103517 n : ℚ) : ℝ)

end

end A030097.P6222860768800330121

/-! ## A030097.P11508856374991897063

`A030098(n+1)^((n+1)/Δ[A027689(n)])`
-/

namespace A030097.P11508856374991897063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030098 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ) : ℝ)

end

end A030097.P11508856374991897063

/-! ## A030097.P10713479813255991281

`A030098(n+1)^(A002033(n)/A067824(n+1))`
-/

namespace A030097.P10713479813255991281
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030098 (n + 1) : ℝ) ^ ((A002033 n : ℚ) / (A067824 (n + 1) : ℚ) : ℝ)

end

end A030097.P10713479813255991281

/-!
# A030098: Squares whose digits are all even.

The programs for A030098, there is no canonical definition to state claims against.
-/

/-! ## A030098.P8467792137157318698

`A030097(n+1)²`
-/

namespace A030098.P8467792137157318698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030097 (n + 1) ^ 2

end

end A030098.P8467792137157318698

/-! ## A030098.P5655334495038388542

`A030097(n+1)^A000005(A151800(n))`
-/

namespace A030098.P5655334495038388542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030097 (n + 1) : ℚ) ^ (A000005 (A151800 n).toNat : ℤ)

end

end A030098.P5655334495038388542

/-! ## A030098.P15445463457793625885

`A030097(n+1)^A000005(A037126(n+1))`
-/

namespace A030098.P15445463457793625885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030097 (n + 1) : ℚ) ^ (A000005 (A037126 (n + 1)).toNat : ℤ)

end

end A030098.P15445463457793625885

/-! ## A030098.P18420225874626548114

`char[A003188(n)]*A030097(n+1)*A030097(n+1)`
-/

namespace A030098.P18420225874626548114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A030097 (n + 1) * A030097 (n + 1)

end

end A030098.P18420225874626548114

/-! ## A030098.P17642478860730605159

`A030097(n+1)*A030097((n+1)%A136244(n+1))`
-/

namespace A030098.P17642478860730605159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030097 (n + 1) * A030097 (Int.tmod (n + 1 : ℤ) (A136244 (n + 1))).toNat

end

end A030098.P17642478860730605159

/-! ## A030098.P13666493236317791805

`A030097(n+1)^A000005(A340750(n+1))`
-/

namespace A030098.P13666493236317791805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030097 (n + 1) : ℚ) ^ (A000005 (A340750 (n + 1)).toNat : ℤ)

end

end A030098.P13666493236317791805

/-! ## A030098.P4798580038286406486

`A030097(n+1)^A000005(A030096(n+1))`
-/

namespace A030098.P4798580038286406486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030097 (n + 1) : ℚ) ^ (A000005 (A030096 (n + 1)).toNat : ℤ)

end

end A030098.P4798580038286406486

/-! ## A030098.P5571032089706832769

`A030097(n+1)^(A000079(n+1)/A000079(n))`
-/

namespace A030098.P5571032089706832769
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030097 (n + 1) : ℝ) ^ ((A000079 (n + 1) : ℚ) / (A000079 n : ℚ) : ℝ)

end

end A030098.P5571032089706832769

/-! ## A030098.P4327162596324431

`A000290(char[A003188(n+1)]*A030097(n+1))`
-/

namespace A030098.P4327162596324431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A030097 (n + 1)).toNat

end

end A030098.P4327162596324431

/-!
# A030099: Numbers k such that k^3 has only odd digits.

The programs for A030099, there is no canonical definition to state claims against.
-/

/-! ## A030099.P10478499901569081641

`root(A030100(n+1), 3)`
-/

namespace A030099.P10478499901569081641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030100 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A030099.P10478499901569081641

/-! ## A030099.P6391593968606446803

`A030100(n+1)^3^A163805(A016813(n))`
-/

namespace A030099.P6391593968606446803
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030100 (n + 1) : ℝ) ^ ((3 : ℚ) ^ (A163805 (A016813 n).toNat : ℤ) : ℝ)

end

end A030099.P6391593968606446803

/-! ## A030099.P6507827234522976604

`eq[1, A053668(n)%2]`
-/

namespace A030099.P6507827234522976604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053668 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030099.P6507827234522976604

/-! ## A030099.P8263510326780588206

`eq[0, A104639(n+1)]+1`
-/

namespace A030099.P8263510326780588206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030099.P8263510326780588206

/-! ## A030099.P1931056069266462487

`A004442(eq[0, A104639(n+1)])`
-/

namespace A030099.P1931056069266462487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030099.P1931056069266462487

