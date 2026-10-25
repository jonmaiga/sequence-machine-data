import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A206000: Inverse Euler transform of 2 - A195981.

The programs for A206000, there is no canonical definition to state claims against.
-/

/-! ## A206000.P15778080578490920759

`A008617(A026150(n)-A244121(n))`
-/

namespace A206000.P15778080578490920759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A026150 n - A244121 n).toNat

end

end A206000.P15778080578490920759

/-! ## A206000.P14600613088635797323

`A008617(xor(A026150(n), A244121(n)))`
-/

namespace A206000.P14600613088635797323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (Int.xor (A026150 n) (A244121 n)).toNat

end

end A206000.P14600613088635797323

/-! ## A206000.P13054569597668479445

`A008618(A216616(n+2)+A008651(n))`
-/

namespace A206000.P13054569597668479445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A216616 (n + 2) + A008651 n).toNat

end

end A206000.P13054569597668479445

/-! ## A206000.P13619439756350215978

`A008618(A216616(n+2)%A050477(n))`
-/

namespace A206000.P13619439756350215978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.tmod (A216616 (n + 2)) (A050477 n)).toNat

end

end A206000.P13619439756350215978

/-! ## A206000.P5054329905760660119

`A008618(A216616(n+2)+A083025(n+5))`
-/

namespace A206000.P5054329905760660119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A216616 (n + 2) + A083025 (n + 5)).toNat

end

end A206000.P5054329905760660119

/-!
# A206002: Number of (n+1) X (n+1) 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one, and every 2 X 2 determinant nonzero.

The programs for A206002, there is no canonical definition to state claims against.
-/

/-! ## A206002.P7822892863556026615

`A206010(∑[4*n]+1)`
-/

namespace A206002.P7822892863556026615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206002.P7822892863556026615

/-! ## A206002.P884792461813560589

`lcm(2, A206010(A001844(n)))`
-/

namespace A206002.P884792461813560589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206010 (A001844 n).toNat)

end

end A206002.P884792461813560589

/-! ## A206002.P8920208978736850556

`record[root(A206010(n+1), A143182(n))]`
-/

namespace A206002.P8920208978736850556
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206010 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206002.P8920208978736850556

/-! ## A206002.P7187709806032573027

`record[gcd(A049581(n), A206010(n+1))]`
-/

namespace A206002.P7187709806032573027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A206010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206002.P7187709806032573027

/-! ## A206002.P9452143224955003142

`A206010(A001844(n))^A010894(n)!`
-/

namespace A206002.P9452143224955003142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A001844 n).toNat ^ Nat.factorial (A010894 (n + 21)).toNat

end

end A206002.P9452143224955003142

/-!
# A206003: Number of (n+1) X 2 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one, and every 2 X 2 determinant nonzero.

The programs for A206003, the canonical program `A206003.P10202196685214396585` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206003 has offset 1).

The definition of A206003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206003.P10202196685214396585

`8*a(n-2)+4*a(n-3)` with `a(0)=24, a(1)=78, a(2)=228, a(3)=722`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206003

/-- `8*a(n-2)+4*a(n-3)` -/
def P10202196685214396585.Spec : Prop :=
  ∀ n, (P10202196685214396585.a n : ℤ) = A206003 (n + 1)

theorem P10202196685214396585.correct : P10202196685214396585.Spec := by
  intro n
  simp only [A206003, Nat.add_sub_cancel]

end A206003

/-! ## A206003.P6534029160628976339

`A206121(n+1)-A205991(n+1)`
-/

namespace A206003.P6534029160628976339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206121 (n + 1) - A205991 (n + 1)

end

end A206003.P6534029160628976339

namespace A206003

/-- `A206121(n+1)-A205991(n+1)` -/
def P6534029160628976339.Spec : Prop :=
  ∀ n, P6534029160628976339.a n = A206003 (n + 1)

end A206003

/-! ## A206003.P16987949755650298807

`A206121(C(n+1, n))%A205991(n+1)`
-/

namespace A206003.P16987949755650298807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206121 (Nat.choose (n + 1) n)) (A205991 (n + 1))

end

end A206003.P16987949755650298807

namespace A206003

/-- `A206121(C(n+1, n))%A205991(n+1)` -/
def P16987949755650298807.Spec : Prop :=
  ∀ n, P16987949755650298807.a n = A206003 (n + 1)

end A206003

/-! ## A206003.P15730545453081584171

`A206121(A000027(n+1))%A205991(n+1)`
-/

namespace A206003.P15730545453081584171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206121 (A000027 (n + 1)).toNat) (A205991 (n + 1))

end

end A206003.P15730545453081584171

namespace A206003

/-- `A206121(A000027(n+1))%A205991(n+1)` -/
def P15730545453081584171.Spec : Prop :=
  ∀ n, P15730545453081584171.a n = A206003 (n + 1)

end A206003

/-! ## A206003.P4476648882382055249

`A206121(n+1)%or(A000038(n), A205991(n+1))`
-/

namespace A206003.P4476648882382055249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206121 (n + 1)) (Int.lor (A000038 n) (A205991 (n + 1)))

end

end A206003.P4476648882382055249

namespace A206003

/-- `A206121(n+1)%or(A000038(n), A205991(n+1))` -/
def P4476648882382055249.Spec : Prop :=
  ∀ n, P4476648882382055249.a n = A206003 (n + 1)

end A206003

/-!
# A206004: Number of (n+1) X 3 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one, and every 2 X 2 determinant nonzero.

The programs for A206004, there is no canonical definition to state claims against.
-/

/-! ## A206004.P2700765631875889307

`A206122(n+1)-A205992(n+1)`
-/

namespace A206004.P2700765631875889307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206122 (n + 1) - A205992 (n + 1)

end

end A206004.P2700765631875889307

/-! ## A206004.P15254597264299487822

`A206010(∑[n+1]+2)`
-/

namespace A206004.P15254597264299487822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206004.P15254597264299487822

/-! ## A206004.P992994183449294136

`lcm(2, A206010(A133263(n+1)))`
-/

namespace A206004.P992994183449294136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206010 (A133263 (n + 1)).toNat)

end

end A206004.P992994183449294136

/-! ## A206004.P16867456467991995800

`record[A206010(A133263(abs(1-n)))]`
-/

namespace A206004.P16867456467991995800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206004.P16867456467991995800

/-! ## A206004.P11182392544954240608

`A206122(n+1)-A205998(∑[n+1]+2)`
-/

namespace A206004.P11182392544954240608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206122 (n + 1) - A205998 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206004.P11182392544954240608

/-!
# A206005: Number of (n+1)X4 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A206005, there is no canonical definition to state claims against.
-/

/-! ## A206005.P7595279790608191603

`A206123(n+1)-A205993(n+1)`
-/

namespace A206005.P7595279790608191603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206123 (n + 1) - A205993 (n + 1)

end

end A206005.P7595279790608191603

/-! ## A206005.P8679693908624981484

`A206123(A000027(n+1))%A205993(n+1)`
-/

namespace A206005.P8679693908624981484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206123 (A000027 (n + 1)).toNat) (A205993 (n + 1))

end

end A206005.P8679693908624981484

/-! ## A206005.P7769173877867905670

`A206010(∑[n+2]+4)`
-/

namespace A206005.P7769173877867905670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206005.P7769173877867905670

/-! ## A206005.P3852839744276645325

`lcm(2, A206010(A167614(n+1)))`
-/

namespace A206005.P3852839744276645325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206010 (A167614 (n + 1)).toNat)

end

end A206005.P3852839744276645325

/-! ## A206005.P2230409359341531570

`A206010(A167614(n+1))%A205994(n+1)`
-/

namespace A206005.P2230409359341531570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206010 (A167614 (n + 1)).toNat) (A205994 (n + 1))

end

end A206005.P2230409359341531570

/-!
# A206006: Number of (n+1) X 5 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one, and every 2 X 2 determinant nonzero.

The programs for A206006, there is no canonical definition to state claims against.
-/

/-! ## A206006.P10991254233981637938

`A206010(A374004(n+1))`
-/

namespace A206006.P10991254233981637938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A374004 (n + 1)).toNat

end

end A206006.P10991254233981637938

/-! ## A206006.P14777965391425912835

`A206010(A052905(n)+9)`
-/

namespace A206006.P14777965391425912835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A052905 n + 9).toNat

end

end A206006.P14777965391425912835

/-! ## A206006.P2863542101417766342

`A206010(A167614(n+2)+1)`
-/

namespace A206006.P2863542101417766342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A167614 (n + 2) + 1).toNat

end

end A206006.P2863542101417766342

/-! ## A206006.P8173162512602711076

`A206010(A167487(n+2)-3)`
-/

namespace A206006.P8173162512602711076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A167487 (n + 2) - 3).toNat

end

end A206006.P8173162512602711076

/-! ## A206006.P17490501295569815265

`A206010(A000096(n+2)+5)`
-/

namespace A206006.P17490501295569815265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A000096 (n + 2) + 5).toNat

end

end A206006.P17490501295569815265

/-!
# A206007: Number of (n+1)X6 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A206007, there is no canonical definition to state claims against.
-/

/-! ## A206007.P5723975437014022352

`A206125(n+1)-A205995(n+1)`
-/

namespace A206007.P5723975437014022352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206125 (n + 1) - A205995 (n + 1)

end

end A206007.P5723975437014022352

/-! ## A206007.P11456670789738420635

`A206010(A374005(n+1))`
-/

namespace A206007.P11456670789738420635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A374005 (n + 1)).toNat

end

end A206007.P11456670789738420635

/-! ## A206007.P13544557758196045687

`A206010(A167499(n+3))`
-/

namespace A206007.P13544557758196045687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A167499 (n + 3)).toNat

end

end A206007.P13544557758196045687

/-! ## A206007.P6254942771551900715

`A206010(A000124(n+4)+4)`
-/

namespace A206007.P6254942771551900715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A000124 (n + 4) + 4).toNat

end

end A206007.P6254942771551900715

/-! ## A206007.P12853685857831528279

`A206010(A000217(n+4)+5)`
-/

namespace A206007.P12853685857831528279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A000217 (n + 4) + 5).toNat

end

end A206007.P12853685857831528279

/-!
# A206008: Number of (n+1)X7 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A206008, there is no canonical definition to state claims against.
-/

/-! ## A206008.P3817373488014321461

`A206010(A374007(n+1))`
-/

namespace A206008.P3817373488014321461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A374007 (n + 1)).toNat

end

end A206008.P3817373488014321461

/-! ## A206008.P9599571860532691798

`A206010(A000217(n+5)+6)`
-/

namespace A206008.P9599571860532691798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A000217 (n + 5) + 6).toNat

end

end A206008.P9599571860532691798

/-! ## A206008.P8638399553967101940

`A206010(A000124(n+6)-(n+1))`
-/

namespace A206008.P8638399553967101940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A206008.P8638399553967101940

/-! ## A206008.P12964531013051232083

`A206010(A161680(n+8)-7-2*n)`
-/

namespace A206008.P12964531013051232083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A161680 (n + 8) - 7 - (2 * n : ℤ)).toNat

end

end A206008.P12964531013051232083

/-! ## A206008.P3365455251935027245

`A206010(A052905(n+3))`
-/

namespace A206008.P3365455251935027245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A052905 (n + 3)).toNat

end

end A206008.P3365455251935027245

/-!
# A206009: Number of (n+1)X8 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A206009, there is no canonical definition to state claims against.
-/

/-! ## A206009.P17066710787343199168

`A206010(A374008(n+1))`
-/

namespace A206009.P17066710787343199168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A374008 (n + 1)).toNat

end

end A206009.P17066710787343199168

/-! ## A206009.P7716720229688658

`A206010(A167487(n+5))`
-/

namespace A206009.P7716720229688658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A167487 (n + 5)).toNat

end

end A206009.P7716720229688658

/-! ## A206009.P10722869431706495940

`A206010(A000124(n+6)+6)`
-/

namespace A206009.P10722869431706495940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A000124 (n + 6) + 6).toNat

end

end A206009.P10722869431706495940

/-! ## A206009.P14399639927272377308

`A206010(A000217(n+6)+7)`
-/

namespace A206009.P14399639927272377308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A000217 (n + 6) + 7).toNat

end

end A206009.P14399639927272377308

/-! ## A206009.P8775309984770068053

`A206010(A052905(n+3)+12)`
-/

namespace A206009.P8775309984770068053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A052905 (n + 3) + 12).toNat

end

end A206009.P8775309984770068053

/-!
# A206010: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A206010, there is no canonical definition to state claims against.
-/

/-! ## A206010.P10445181326920163799

`A206128(n+1)-A205998(n+1)`
-/

namespace A206010.P10445181326920163799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (n + 1) - A205998 (n + 1)

end

end A206010.P10445181326920163799

/-! ## A206010.P9275153348064337626

`A206128(A000027(n+1))%A205998(n+1)`
-/

namespace A206010.P9275153348064337626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206128 (A000027 (n + 1)).toNat) (A205998 (n + 1))

end

end A206010.P9275153348064337626

/-! ## A206010.P506997958396671795

`A206128(n+1)%A205998(A038722(n+1))`
-/

namespace A206010.P506997958396671795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206128 (n + 1)) (A205998 (A038722 (n + 1)).toNat)

end

end A206010.P506997958396671795

/-! ## A206010.P14718884819833223401

`A206128(A056023(n+1))%A205998(n+1)`
-/

namespace A206010.P14718884819833223401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206128 (A056023 (n + 1)).toNat) (A205998 (n + 1))

end

end A206010.P14718884819833223401

/-! ## A206010.P11705494684205360892

`A206128(A087810(n²+1)+n)%A205998(n+1)`
-/

namespace A206010.P11705494684205360892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206128 (A087810 (n ^ 2 + 1) + (n : ℤ)).toNat) (A205998 (n + 1))

end

end A206010.P11705494684205360892

/-!
# A206011: The n-th semiprime minus its sum of digits.

The programs for A206011, the canonical program `A206011.P2170435228936468391` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206011 has offset 1).

The definition of A206011 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206011.P2170435228936468391

`A001358(n+1)-A007953(A001358(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A206011

/-- `A001358(n+1)-A007953(A001358(n+1))` -/
def P2170435228936468391.Spec : Prop :=
  ∀ n, P2170435228936468391.a n = A206011 (n + 1)

theorem P2170435228936468391.correct : P2170435228936468391.Spec := by
  intro n
  simp only [A206011, Nat.add_sub_cancel]

end A206011

/-! ## A206011.P9383123836717078949

`A001358(n+1)-A175013(n+1)`
-/

namespace A206011.P9383123836717078949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - A175013 (n + 1)

end

end A206011.P9383123836717078949

namespace A206011

/-- `A001358(n+1)-A175013(n+1)` -/
def P9383123836717078949.Spec : Prop :=
  ∀ n, P9383123836717078949.a n = A206011 (n + 1)

end A206011

/-! ## A206011.P4724292553236568009

`A066568(A001358(n+1))`
-/

namespace A206011.P4724292553236568009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A001358 (n + 1)).toNat

end

end A206011.P4724292553236568009

namespace A206011

/-- `A066568(A001358(n+1))` -/
def P4724292553236568009.Spec : Prop :=
  ∀ n, P4724292553236568009.a n = A206011 (n + 1)

end A206011

/-! ## A206011.P1080054572233493546

`A066568(A176540(n+2))`
-/

namespace A206011.P1080054572233493546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A176540 (n + 2)).toNat

end

end A206011.P1080054572233493546

namespace A206011

/-- `A066568(A176540(n+2))` -/
def P1080054572233493546.Spec : Prop :=
  ∀ n, P1080054572233493546.a n = A206011 (n + 1)

end A206011

/-! ## A206011.P18038283002943165060

`A066568(lt[1, A105700(n)])`
-/

namespace A206011.P18038283002943165060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A206011.P18038283002943165060

namespace A206011

/-- `A066568(lt[1, A105700(n)])` -/
def P18038283002943165060.Spec : Prop :=
  ∀ n, P18038283002943165060.a n = A206011 (n + 1)

end A206011

/-! ## A206011.P11162481775312522103

`A066568(sqrt(A074985(n+1)))`
-/

namespace A206011.P11162481775312522103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A206011.P11162481775312522103

namespace A206011

/-- `A066568(sqrt(A074985(n+1)))` -/
def P11162481775312522103.Spec : Prop :=
  ∀ n, P11162481775312522103.a n = A206011 (n + 1)

end A206011

/-! ## A206011.P17305431992718063873

`A066568(A075818(n+1)/2)`
-/

namespace A206011.P17305431992718063873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A206011.P17305431992718063873

namespace A206011

/-- `A066568(A075818(n+1)/2)` -/
def P17305431992718063873.Spec : Prop :=
  ∀ n, P17305431992718063873.a n = A206011 (n + 1)

end A206011

/-! ## A206011.P878786693171957464

`A066568(eq[2, A001222(n+1)]+1)`
-/

namespace A206011.P878786693171957464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A206011.P878786693171957464

namespace A206011

/-- `A066568(eq[2, A001222(n+1)]+1)` -/
def P878786693171957464.Spec : Prop :=
  ∀ n, P878786693171957464.a n = A206011 (n + 1)

end A206011

/-! ## A206011.P6884602817226800260

`A066568(record[n/a(A001222(n))])` with `a(0)=4, a(1)=2`
-/

namespace A206011.P6884602817226800260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A206011.P6884602817226800260

namespace A206011

/-- `A066568(record[n/a(A001222(n))])` -/
def P6884602817226800260.Spec : Prop :=
  ∀ n, P6884602817226800260.a n = A206011 (n + 1)

end A206011

/-! ## A206011.P12735269334633680658

`A066568(eq[n, n-a(A001222(n))])` with `a(0)=1, a(1)=2`
-/

namespace A206011.P12735269334633680658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206011.P12735269334633680658

namespace A206011

/-- `A066568(eq[n, n-a(A001222(n))])` -/
def P12735269334633680658.Spec : Prop :=
  ∀ n, P12735269334633680658.a n = A206011 (n + 1)

end A206011

/-!
# A206013: Number of (n+1) X (n+1) 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206013, there is no canonical definition to state claims against.
-/

/-! ## A206013.P8467026886363493382

`A206021(∑[4*n]+1)`
-/

namespace A206013.P8467026886363493382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206013.P8467026886363493382

/-!
# A206014: Number of (n+1) X 2 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206014, the canonical program `A206014.P16381730356713681256` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206014 has offset 1).

The definition of A206014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206014.P16381730356713681256

`5*a(n-1)+10*a(n-2)` with `a(0)=104, a(1)=680`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206014

/-- `5*a(n-1)+10*a(n-2)` -/
def P16381730356713681256.Spec : Prop :=
  ∀ n, (P16381730356713681256.a n : ℤ) = A206014 (n + 1)

theorem P16381730356713681256.correct : P16381730356713681256.Spec := by
  intro n
  simp only [A206014, Nat.add_sub_cancel]

end A206014

/-! ## A206014.P3718832464566653261

`A206021(∑[n]+1)`
-/

namespace A206014.P3718832464566653261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206014.P3718832464566653261

namespace A206014

/-- `A206021(∑[n]+1)` -/
def P3718832464566653261.Spec : Prop :=
  ∀ n, P3718832464566653261.a n = A206014 (n + 1)

end A206014

/-! ## A206014.P10889379494174017290

`lcm(2, A206021(A000124(n)))`
-/

namespace A206014.P10889379494174017290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206021 (A000124 n).toNat)

end

end A206014.P10889379494174017290

namespace A206014

/-- `lcm(2, A206021(A000124(n)))` -/
def P10889379494174017290.Spec : Prop :=
  ∀ n, (P10889379494174017290.a n : ℤ) = A206014 (n + 1)

end A206014

/-! ## A206014.P3412221067275267154

`record[A206021(n+1)/A022167(n)]`
-/

namespace A206014.P3412221067275267154
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206021 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206014.P3412221067275267154

namespace A206014

/-- `record[A206021(n+1)/A022167(n)]` -/
def P3412221067275267154.Spec : Prop :=
  ∀ n, P3412221067275267154.a n = (A206014 (n + 1) : ℚ)

end A206014

/-! ## A206014.P14231149600157233565

`record[root(A206021(n+1), A013613(n))]`
-/

namespace A206014.P14231149600157233565
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206021 (n + 1) : ℝ) ^ (1 / (A013613 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206014.P14231149600157233565

namespace A206014

/-- `record[root(A206021(n+1), A013613(n))]` -/
def P14231149600157233565.Spec : Prop :=
  ∀ n, P14231149600157233565.a n = (A206014 (n + 1) : ℝ)

end A206014

/-!
# A206015: Number of (n+1) X 3 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206015, there is no canonical definition to state claims against.
-/

/-! ## A206015.P7210577598387834875

`A206021(∑[n+1]+2)`
-/

namespace A206015.P7210577598387834875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206015.P7210577598387834875

/-! ## A206015.P15645286333475551042

`record[root(A206021(n+2), A013613(n))]`
-/

namespace A206015.P15645286333475551042
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206021 (n + 2) : ℝ) ^ (1 / (A013613 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206015.P15645286333475551042

/-! ## A206015.P7680799500474089765

`A007318(C(n, 2))*A206021(A000096(n)+3)`
-/

namespace A206015.P7680799500474089765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A206021 (A000096 n + 3).toNat

end

end A206015.P7680799500474089765

/-! ## A206015.P15839971040076177252

`A014963(15*(n+1))*A206021(A000096(n)+3)`
-/

namespace A206015.P15839971040076177252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * A206021 (A000096 n + 3).toNat

end

end A206015.P15839971040076177252

/-! ## A206015.P11838730792543709087

`A062362(A062336(n+1))*A206021(A000096(n)+3)`
-/

namespace A206015.P11838730792543709087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062362 (A062336 (n + 1)).toNat * A206021 (A000096 n + 3).toNat

end

end A206015.P11838730792543709087

/-!
# A206016: Number of (n+1) X 4 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206016, there is no canonical definition to state claims against.
-/

/-! ## A206016.P4125588069814101234

`A206021(∑[n+2]+4)`
-/

namespace A206016.P4125588069814101234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206016.P4125588069814101234

/-! ## A206016.P5377978851067989639

`lcm(2, A206021(A167614(n+1)))`
-/

namespace A206016.P5377978851067989639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206021 (A167614 (n + 1)).toNat)

end

end A206016.P5377978851067989639

/-! ## A206016.P6103506848628486636

`A206021(A167614(n+1))+A184946(n)`
-/

namespace A206016.P6103506848628486636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A167614 (n + 1)).toNat + A184946 n

end

end A206016.P6103506848628486636

/-! ## A206016.P9145695301560914242

`A206021(A167614(n+1))+A185284(n)`
-/

namespace A206016.P9145695301560914242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A167614 (n + 1)).toNat + A185284 n

end

end A206016.P9145695301560914242

/-! ## A206016.P2066269925524908213

`A206021(A167614(n+1))+A082996(n+1)`
-/

namespace A206016.P2066269925524908213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A167614 (n + 1)).toNat + A082996 (n + 1)

end

end A206016.P2066269925524908213

/-!
# A206017: Number of (n+1) X 5 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206017, there is no canonical definition to state claims against.
-/

/-! ## A206017.P12698234834143486235

`A206021(A374004(n+1))`
-/

namespace A206017.P12698234834143486235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A374004 (n + 1)).toNat

end

end A206017.P12698234834143486235

/-! ## A206017.P537912117964503295

`A206021(A052905(n)+9)`
-/

namespace A206017.P537912117964503295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A052905 n + 9).toNat

end

end A206017.P537912117964503295

/-! ## A206017.P17243949737399612677

`A206021(A055999(n)+10)`
-/

namespace A206017.P17243949737399612677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A055999 n + 10).toNat

end

end A206017.P17243949737399612677

/-! ## A206017.P7031487590386792153

`A206021(A167614(n+2)+1)`
-/

namespace A206017.P7031487590386792153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A167614 (n + 2) + 1).toNat

end

end A206017.P7031487590386792153

/-! ## A206017.P14597730452087106344

`A206021(eq[5, A131818(n+1)])`
-/

namespace A206017.P14597730452087106344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206017.P14597730452087106344

/-!
# A206018: Number of (n+1) X 6 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206018, there is no canonical definition to state claims against.
-/

/-! ## A206018.P18245911779091051058

`A206021(A374005(n+1))`
-/

namespace A206018.P18245911779091051058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A374005 (n + 1)).toNat

end

end A206018.P18245911779091051058

/-! ## A206018.P759124354377476418

`A206021(eq[6, A131818(n+1)])`
-/

namespace A206018.P759124354377476418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206018.P759124354377476418

/-! ## A206018.P1259481641361278033

`A206021(eq[5, A200329(n+1)])`
-/

namespace A206018.P1259481641361278033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206018.P1259481641361278033

/-!
# A206019: Number of (n+1) X 7 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206019, there is no canonical definition to state claims against.
-/

/-! ## A206019.P10534546462363044855

`A206021(A374007(n+1))`
-/

namespace A206019.P10534546462363044855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A374007 (n + 1)).toNat

end

end A206019.P10534546462363044855

/-! ## A206019.P10590841654471313987

`A206021(eq[3, A219347(n)])`
-/

namespace A206019.P10590841654471313987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206019.P10590841654471313987

/-! ## A206019.P11177351352135335603

`A206021(eq[5, A193592(n)])`
-/

namespace A206019.P11177351352135335603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206019.P11177351352135335603

/-! ## A206019.P2569315701589727000

`A206021(eq[8, A258709(n)])`
-/

namespace A206019.P2569315701589727000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206019.P2569315701589727000

/-! ## A206019.P11322272279988309537

`A206021(A046691(n+4)-1)`
-/

namespace A206019.P11322272279988309537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A046691 (n + 4) - 1).toNat

end

end A206019.P11322272279988309537

/-!
# A206020: 

The programs for A206020, there is no canonical definition to state claims against.
-/

/-! ## A206020.P9304109193591777399

`A206021(eq[8, A131818(n+1)])`
-/

namespace A206020.P9304109193591777399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206020.P9304109193591777399

/-! ## A206020.P6410282664850628229

`A206021(eq[4, A219347(n)])`
-/

namespace A206020.P6410282664850628229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206020.P6410282664850628229

/-! ## A206020.P9427342981863526765

`A206021(eq[5, A332954(n)])`
-/

namespace A206020.P9427342981863526765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206020.P9427342981863526765

/-!
# A206022: Riordan array (1, x*exp(arcsinh(-2*x))).

The programs for A206022, there is no canonical definition to state claims against.
-/

/-! ## A206022.P9902358340328264972

`A104558(n)%(A068952(n+1)-3)`
-/

namespace A206022.P9902358340328264972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104558 n) (A068952 (n + 1) - 3)

end

end A206022.P9902358340328264972

/-! ## A206022.P15032909406301101355

`A109970(n)+A010051(A111962(n))`
-/

namespace A206022.P15032909406301101355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109970 n + A010051 (A111962 n).toNat

end

end A206022.P15032909406301101355

/-! ## A206022.P17124535592317203029

`A104558(n)+A000007(A187306(n))`
-/

namespace A206022.P17124535592317203029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104558 n + A000007 (A187306 n).toNat

end

end A206022.P17124535592317203029

/-! ## A206022.P3780275737446349582

`A104558(n)+A036987(A206371(n))`
-/

namespace A206022.P3780275737446349582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104558 n + A036987 (A206371 n).toNat

end

end A206022.P3780275737446349582

/-! ## A206022.P4182003499021107164

`A104558(n)+A010051(A303307(n))`
-/

namespace A206022.P4182003499021107164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104558 n + A010051 (A303307 n).toNat

end

end A206022.P4182003499021107164

/-!
# A206023: 2^n == 3n+2 (mod n^2-2n).

The programs for A206023, the canonical program `A206023.P1386977352654447418` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206023 has offset 1).

The definition of A206023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206023.P1386977352654447418

`∩[A015919(n+1)+2, A015919(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A206023

/-- `∩[A015919(n+1)+2, A015919(n+1)]` -/
def P1386977352654447418.Spec : Prop :=
  ∀ n, (P1386977352654447418.a n : ℤ) = A206023 (n + 1)

theorem P1386977352654447418.correct : P1386977352654447418.Spec := by
  intro n
  simp only [A206023, Nat.add_sub_cancel]

end A206023

/-! ## A206023.P13564447626729051333

`∩[A176997(n+1)+2, A176997(n+1)]`
-/

namespace A206023.P13564447626729051333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206023.P13564447626729051333

namespace A206023

/-- `∩[A176997(n+1)+2, A176997(n+1)]` -/
def P13564447626729051333.Spec : Prop :=
  ∀ n, (P13564447626729051333.a n : ℤ) = A206023 (n + 1)

end A206023

/-! ## A206023.P468906035949789267

`record[A176997(n+2)%(A176997(n+1)+4)]`
-/

namespace A206023.P468906035949789267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176997 (n + 2)) (A176997 (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206023.P468906035949789267

namespace A206023

/-- `record[A176997(n+2)%(A176997(n+1)+4)]` -/
def P468906035949789267.Spec : Prop :=
  ∀ n, P468906035949789267.a n = A206023 (n + 1)

end A206023

/-! ## A206023.P2684765311503813754

`record[A214606(A015919(n+1)+2)]`
-/

namespace A206023.P2684765311503813754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (A015919 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206023.P2684765311503813754

namespace A206023

/-- `record[A214606(A015919(n+1)+2)]` -/
def P2684765311503813754.Spec : Prop :=
  ∀ n, P2684765311503813754.a n = A206023 (n + 1)

end A206023

/-! ## A206023.P6888543217375504209

`record[A214606(A176176(n+1)+2)]`
-/

namespace A206023.P6888543217375504209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (A176176 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206023.P6888543217375504209

namespace A206023

/-- `record[A214606(A176176(n+1)+2)]` -/
def P6888543217375504209.Spec : Prop :=
  ∀ n, P6888543217375504209.a n = A206023 (n + 1)

end A206023

/-! ## A206023.P15654167246047761913

`record[A214606(A176997(n+1)+2)]`
-/

namespace A206023.P15654167246047761913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (A176997 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206023.P15654167246047761913

namespace A206023

/-- `record[A214606(A176997(n+1)+2)]` -/
def P15654167246047761913.Spec : Prop :=
  ∀ n, P15654167246047761913.a n = A206023 (n + 1)

end A206023

/-! ## A206023.P2901635871132553407

`record[A214606(A214606(2*n+1)+2)]`
-/

namespace A206023.P2901635871132553407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (A214606 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206023.P2901635871132553407

namespace A206023

/-- `record[A214606(A214606(2*n+1)+2)]` -/
def P2901635871132553407.Spec : Prop :=
  ∀ n, P2901635871132553407.a n = A206023 (n + 1)

end A206023

/-!
# A206024: Numbers k such that 6k+1, 12k+1, 18k+1 and 36k+1 are all primes.

The programs for A206024, there is no canonical definition to state claims against.
-/

/-! ## A206024.P14644353170406339582

`∩[A046025(n+1), A293625(n+1)]`
-/

namespace A206024.P14644353170406339582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206024.P14644353170406339582

/-! ## A206024.P3972723615940721933

`∩[A293625(n+1), A033503(n)+a(n-1)]` with `a(0)=1`
-/

namespace A206024.P3972723615940721933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A033503 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206024.P3972723615940721933

/-! ## A206024.P17454736353159794798

`∩[A024899(n+1), A293625(n+1)]`
-/

namespace A206024.P17454736353159794798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206024.P17454736353159794798

/-!
# A206025: Triangular numbers k whose divisors can be partitioned into three disjoint sets whose sums are all sigma(k)/3.

The programs for A206025, there is no canonical definition to state claims against.
-/

/-! ## A206025.P3797765590858638184

`∩[A204830(n+1), A000217(n)]`
-/

namespace A206025.P3797765590858638184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206025.P3797765590858638184

/-! ## A206025.P14941080921536684688

`∩[A204830(n+1), A014494(n)]`
-/

namespace A206025.P14941080921536684688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206025.P14941080921536684688

/-! ## A206025.P6241244125483387453

`∩[A204830(n+1), A116996(n)]`
-/

namespace A206025.P6241244125483387453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116996 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206025.P6241244125483387453

/-! ## A206025.P12545045150028295041

`∩[A204830(n+1), A253145(n)]`
-/

namespace A206025.P12545045150028295041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206025.P12545045150028295041

/-! ## A206025.P1929560797866702176

`∩[A134519(n+1), A204830(n+1)]`
-/

namespace A206025.P1929560797866702176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206025.P1929560797866702176

/-!
# A206026: a(n) = smallest number m such that sigma(k) = m has at least n positive solutions k.

The programs for A206026, there is no canonical definition to state claims against.
-/

/-! ## A206026.P2242184313436805375

`A145899(∑[A219866(n)^and(n, -2)])`
-/

namespace A206026.P2242184313436805375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219866 n : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145899 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A206026.P2242184313436805375

/-! ## A206026.P15928115897713093357

`A007368(gcd(A334443(n+1), A355246(n))+n)`
-/

namespace A206026.P15928115897713093357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007368 (Int.gcd (A334443 (n + 1)) (A355246 n) + n)

end

end A206026.P15928115897713093357

/-! ## A206026.P5747236945980842961

`A145899(∑[A362394(2*n)²])`
-/

namespace A206026.P5747236945980842961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362394 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145899 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206026.P5747236945980842961

/-! ## A206026.P15253661926357415524

`A007368(A032559(n+1)+char[3])`
-/

namespace A206026.P15253661926357415524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007368 (A032559 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A206026.P15253661926357415524

/-! ## A206026.P13358068274147177547

`A145899(A032555(n+1)-A031346(3*n))`
-/

namespace A206026.P13358068274147177547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145899 (A032555 (n + 1) - A031346 (3 * n)).toNat

end

end A206026.P13358068274147177547

/-!
# A206027: a(n) = the number of solutions to sigma(x) = A145899(n).

The programs for A206027, there is no canonical definition to state claims against.
-/

/-! ## A206027.P2280980719366933296

`A054973(A145899(n+1))`
-/

namespace A206027.P2280980719366933296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A145899 (n + 1)).toNat

end

end A206027.P2280980719366933296

/-! ## A206027.P16661806640216055402

`record[A283486(A085126(n+1))]`
-/

namespace A206027.P16661806640216055402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283486 (A085126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206027.P16661806640216055402

/-! ## A206027.P11673428703865790058

`record[A054973(A035877(n))]`
-/

namespace A206027.P11673428703865790058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A035877 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206027.P11673428703865790058

/-! ## A206027.P15344438877918576543

`record[A054973(A301730(n))]`
-/

namespace A206027.P15344438877918576543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A301730 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206027.P15344438877918576543

/-!
# A206029: a(n) = sum of numbers k <= sigma(n) such that k is not equal to sigma(d) for any divisor d of n where sigma = A000203.

The programs for A206029, there is no canonical definition to state claims against.
-/

/-! ## A206029.P16470832045293978209

`C(∑{d}[n+1, #], 2)-A211779(n+1)`
-/

namespace A206029.P16470832045293978209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) 2 : ℤ) - A211779 (n + 1)

end

end A206029.P16470832045293978209

/-! ## A206029.P11379757620546214980

`A369338(n+1)+A119616(n+1)`
-/

namespace A206029.P11379757620546214980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369338 (n + 1) + A119616 (n + 1)

end

end A206029.P11379757620546214980

/-! ## A206029.P16942471134285615015

`A184387(n+1)-A007429(n+1)`
-/

namespace A206029.P16942471134285615015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) - A007429 (n + 1)

end

end A206029.P16942471134285615015

/-! ## A206029.P17905116131446212560

`A184387(n+1)-A206028(n+1)`
-/

namespace A206029.P17905116131446212560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) - A206028 (n + 1)

end

end A206029.P17905116131446212560

/-! ## A206029.P3538621470039124497

`C(A000203(n+1), 2)-A211779(n+1)`
-/

namespace A206029.P3538621470039124497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000203 (n + 1)).toNat 2 : ℤ) - A211779 (n + 1)

end

end A206029.P3538621470039124497

/-! ## A206029.P2254147783493132628

`A119616(n+1)+∑{d}[n+1, A024816(#)]`
-/

namespace A206029.P2254147783493132628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119616 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A024816 d

end

end A206029.P2254147783493132628

/-! ## A206029.P4273720378555378218

`A000217(∑{d}[n+1, #])-A007429(n+1)`
-/

namespace A206029.P4273720378555378218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ d ∈ Nat.divisors (f1 n), d) - A007429 (n + 1)

end

end A206029.P4273720378555378218

/-! ## A206029.P9742634940283853900

`A184387(n+1)-∑{d}[n+1, A000203(#)]`
-/

namespace A206029.P9742634940283853900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A000203 d

end

end A206029.P9742634940283853900

/-! ## A206029.P9319502807652762817

`C(A000203(n+1)+1, 2)-A007429(n+1)`
-/

namespace A206029.P9319502807652762817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000203 (n + 1) + 1).toNat 2 : ℤ) - A007429 (n + 1)

end

end A206029.P9319502807652762817

/-! ## A206029.P9903995066864866882

`C(A000203(n+1)+1, 2)-A206028(n+1)`
-/

namespace A206029.P9903995066864866882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000203 (n + 1) + 1).toNat 2 : ℤ) - A206028 (n + 1)

end

end A206029.P9903995066864866882

/-!
# A206030: Numbers m with at least two divisors d with the same sigma(d).

The programs for A206030, there is no canonical definition to state claims against.
-/

/-! ## A206030.P13083008328394774810

`lt[A184395(n+1), A000005(n+1)]+1`
-/

namespace A206030.P13083008328394774810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A206030.P13083008328394774810

/-! ## A206030.P10719630573277746455

`lt[A206028(n+1), A007429(n+1)]+1`
-/

namespace A206030.P10719630573277746455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A206030.P10719630573277746455

/-! ## A206030.P1902772596998876091

`lt[A065608(n+1), A184396(n+1)]+1`
-/

namespace A206030.P1902772596998876091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A206030.P1902772596998876091

/-! ## A206030.P17521812624570129760

`A065475(lt[A184395(n+1), A000005(n+1)])`
-/

namespace A206030.P17521812624570129760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A206030.P17521812624570129760

/-!
# A206032: a(n) = Product_{d|n} sigma(d) where sigma = A000203.

The programs for A206032, the canonical program `A206032.P15818663996432524408` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206032 has offset 1).

The definition of A206032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206032.P15252492475162467653

`∏{d}[n+1, A000203(#)]`
-/

namespace A206032.P15252492475162467653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000203 d

end

end A206032.P15252492475162467653

namespace A206032

/-- `∏{d}[n+1, A000203(#)]` -/
def P15252492475162467653.Spec : Prop :=
  ∀ n, P15252492475162467653.a n = A206032 (n + 1)

end A206032

/-! ## A206032.P12706477831104263276

`∏{d}[n+1, sqrt(A072861(#))]`
-/

namespace A206032.P12706477831104263276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Real.sqrt (A072861 d : ℝ)

end

end A206032.P12706477831104263276

namespace A206032

/-- `∏{d}[n+1, sqrt(A072861(#))]` -/
def P12706477831104263276.Spec : Prop :=
  ∀ n, P12706477831104263276.a n = (A206032 (n + 1) : ℝ)

end A206032

/-! ## A206032.P15818663996432524408

`∏{d}[n+1, A001065(#)+#]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A206032

/-- `∏{d}[n+1, A001065(#)+#]` -/
def P15818663996432524408.Spec : Prop :=
  ∀ n, P15818663996432524408.a n = A206032 (n + 1)

theorem P15818663996432524408.correct : P15818663996432524408.Spec := by
  intro n
  simp only [A206032, Nat.add_sub_cancel]

end A206032

/-! ## A206032.P912866732662189095

`∏{d}[n+1, A064987(#)/#]`
-/

namespace A206032.P912866732662189095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A064987 d : ℚ) / (d : ℚ)

end

end A206032.P912866732662189095

namespace A206032

/-- `∏{d}[n+1, A064987(#)/#]` -/
def P912866732662189095.Spec : Prop :=
  ∀ n, P912866732662189095.a n = (A206032 (n + 1) : ℚ)

end A206032

/-! ## A206032.P1183939169697351192

`A324987(n+1)/A211776(n+1)`
-/

namespace A206032.P1183939169697351192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324987 (n + 1) : ℚ) / (A211776 (n + 1) : ℚ)

end

end A206032.P1183939169697351192

namespace A206032

/-- `A324987(n+1)/A211776(n+1)` -/
def P1183939169697351192.Spec : Prop :=
  ∀ n, P1183939169697351192.a n = (A206032 (n + 1) : ℚ)

end A206032

/-! ## A206032.P16153419231262159252

`A334491(n+1)/A007955(n+1)*A334805(n+1)`
-/

namespace A206032.P16153419231262159252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334491 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) * (A334805 (n + 1) : ℚ)

end

end A206032.P16153419231262159252

namespace A206032

/-- `A334491(n+1)/A007955(n+1)*A334805(n+1)` -/
def P16153419231262159252.Spec : Prop :=
  ∀ n, P16153419231262159252.a n = (A206032 (n + 1) : ℚ)

end A206032

/-! ## A206032.P8670993091245191966

`A324980(n+1)/A007955(n+1)`
-/

namespace A206032.P8670993091245191966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324980 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A206032.P8670993091245191966

namespace A206032

/-- `A324980(n+1)/A007955(n+1)` -/
def P8670993091245191966.Spec : Prop :=
  ∀ n, P8670993091245191966.a n = (A206032 (n + 1) : ℚ)

end A206032

/-! ## A206032.P14115873314353225822

`A325030(n+1)/A266265(n+1)`
-/

namespace A206032.P14115873314353225822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (A266265 (n + 1) : ℚ)

end

end A206032.P14115873314353225822

namespace A206032

/-- `A325030(n+1)/A266265(n+1)` -/
def P14115873314353225822.Spec : Prop :=
  ∀ n, P14115873314353225822.a n = (A206032 (n + 1) : ℚ)

end A206032

/-!
# A206033: a(1) =1; for n>=1: a(n) = product of numbers k <= sigma(n) such that k is not equal to sigma(d) for any divisor d of n where sigma = A000203.

The programs for A206033, there is no canonical definition to state claims against.
-/

/-! ## A206033.P14750929162661124879

`A184388(n+1)/A206031(n+1)`
-/

namespace A206033.P14750929162661124879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184388 (n + 1) : ℚ) / (A206031 (n + 1) : ℚ)

end

end A206033.P14750929162661124879

/-! ## A206033.P12429973332079196751

`A184388(n+1)/A206032(n+1)`
-/

namespace A206033.P12429973332079196751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184388 (n + 1) : ℚ) / (A206032 (n + 1) : ℚ)

end

end A206033.P12429973332079196751

/-! ## A206033.P5852688066471020135

`A097012(n+1)!/A206032(n+1)`
-/

namespace A206033.P5852688066471020135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A097012 (n + 1)).toNat : ℚ) / (A206032 (n + 1) : ℚ)

end

end A206033.P5852688066471020135

/-! ## A206033.P18091083848344724849

`abs(A143348(n+1))!/A206032(n+1)`
-/

namespace A206033.P18091083848344724849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |A143348 (n + 1)|.toNat : ℚ) / (A206032 (n + 1) : ℚ)

end

end A206033.P18091083848344724849

/-! ## A206033.P11226795454513716985

`A245092(A005408(n))!/A206032(n+1)`
-/

namespace A206033.P11226795454513716985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A245092 (A005408 n).toNat).toNat : ℚ) / (A206032 (n + 1) : ℚ)

end

end A206033.P11226795454513716985

/-!
# A206034: a(n) is the last defined element in the sequence n, f(n), f(f(n)), ..., where f(t) = lcm(t,(b+c)/2) with b < c smallest consecutive divisors of t with c - b > 1 and f(t) is undefined if such b, c do not exist or b + c is odd.

The programs for A206034, there is no canonical definition to state claims against.
-/

/-! ## A206034.P9502565593939193825

`A053608(A227796(n+1)+A227784(n+1))`
-/

namespace A206034.P9502565593939193825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053608 (A227796 (n + 1) + A227784 (n + 1)).toNat

end

end A206034.P9502565593939193825

/-! ## A206034.P2484989790211435312

`A053608(xor(A053626(n+1), A252983(n+1)))`
-/

namespace A206034.P2484989790211435312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053608 (Int.xor (A053626 (n + 1)) (A252983 (n + 1))).toNat

end

end A206034.P2484989790211435312

/-! ## A206034.P2077595935266599195

`A056604(lcm(A300973(n+1), A324383(2*n+3)))`
-/

namespace A206034.P2077595935266599195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056604 (Int.lcm (A300973 (n + 1)) (A324383 (2 * n + 3)))

end

end A206034.P2077595935266599195

/-!
# A206035: a(n) = floor(10*(A064413(n) - n)/n).

The programs for A206035, there is no canonical definition to state claims against.
-/

/-! ## A206035.P10915859579195147037

`floor(10*(A064413(n+1)-(n+1))/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A206035.P10915859579195147037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 * (A064413 (n + 1) - (n + 1 : ℤ)) : ℚ) / (n + 1 : ℚ)⌋

end

end A206035.P10915859579195147037

/-!
# A206036: Numbers m such that sigma(m) = sigma(k) has solution for distinct numbers m and k.

The programs for A206036, there is no canonical definition to state claims against.
-/

/-! ## A206036.P10851375619231835458

`lt[1, A070242(n+1)]+1`
-/

namespace A206036.P10851375619231835458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A206036.P10851375619231835458

/-! ## A206036.P13639356433627285597

`lt[A241479(n+2), n]+2`
-/

namespace A206036.P13639356433627285597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A206036.P13639356433627285597

/-! ## A206036.P13670686847378717698

`comp[A211656(n+1)-1]+1`
-/

namespace A206036.P13670686847378717698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206036.P13670686847378717698

/-! ## A206036.P17312233090662351743

`comp[A308098(n+1)-1]+1`
-/

namespace A206036.P17312233090662351743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308098 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206036.P17312233090662351743

/-! ## A206036.P1497482721937978257

`comp[C(A241479(n+1), n)]`
-/

namespace A206036.P1497482721937978257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A241479 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A206036.P1497482721937978257

/-! ## A206036.P2427145760489189831

`record[(n+6)%A325652(n+6)]`
-/

namespace A206036.P2427145760489189831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 6 : ℤ) (A325652 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206036.P2427145760489189831

/-! ## A206036.P17020741915766428321

`lt[A241479(A028310(n)), n]`
-/

namespace A206036.P17020741915766428321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A206036.P17020741915766428321

/-! ## A206036.P15904617332920548657

`lt[1, A054973(∑{d}[n+1, #])]+1`
-/

namespace A206036.P15904617332920548657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A206036.P15904617332920548657

/-! ## A206036.P5267507808935091224

`comp[A240667(n+1)]`
-/

namespace A206036.P5267507808935091224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A206036.P5267507808935091224

/-! ## A206036.P9196258624351320991

`eq[1, A256596(n+1)]+1`
-/

namespace A206036.P9196258624351320991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206036.P9196258624351320991

/-!
# A206037: Values of the difference d for 3 primes in arithmetic progression with the minimal start sequence {3 + j*d}, j = 0 to 2.

The programs for A206037, there is no canonical definition to state claims against.
-/

/-! ## A206037.P3562682260624956117

`2*A115334(n+1)`
-/

namespace A206037.P3562682260624956117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115334 (n + 1)

end

end A206037.P3562682260624956117

/-! ## A206037.P5571898798539832728

`A115334(A000027(n+1))+A115334(n+1)`
-/

namespace A206037.P5571898798539832728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (A000027 (n + 1)).toNat + A115334 (n + 1)

end

end A206037.P5571898798539832728

/-! ## A206037.P11479733538413116936

`A063908(n+2)-3`
-/

namespace A206037.P11479733538413116936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 2) - 3

end

end A206037.P11479733538413116936

/-! ## A206037.P2648583894550301937

`∑[abs(Δ[A063908(n+1)])]`
-/

namespace A206037.P2648583894550301937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206037.P2648583894550301937

/-! ## A206037.P15687348082520583100

`(A092109(n+2)-3)/2`
-/

namespace A206037.P15687348082520583100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092109 (n + 2) - 3 : ℚ) / 2

end

end A206037.P15687348082520583100

/-! ## A206037.P16130424183376899901

`2*((A241817(n+2)+2)/4-2)`
-/

namespace A206037.P16130424183376899901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A241817 (n + 2) + 2 : ℚ) / 4 - 2)

end

end A206037.P16130424183376899901

/-! ## A206037.P4602385838015515296

`∑[A000027(Δ[A063908(n+1)])]`
-/

namespace A206037.P4602385838015515296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206037.P4602385838015515296

/-! ## A206037.P13694825481639385982

`∑[A038608(Δ[A063908(n+1)])]`
-/

namespace A206037.P13694825481639385982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206037.P13694825481639385982

/-! ## A206037.P17009980334801001343

`A092109(n+2)%A063908(n+2)`
-/

namespace A206037.P17009980334801001343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092109 (n + 2)) (A063908 (n + 2))

end

end A206037.P17009980334801001343

/-! ## A206037.P7539665577376085729

`∑[A063908(n+2)%A063908(n+1)]`
-/

namespace A206037.P7539665577376085729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063908 (n + 2)) (A063908 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206037.P7539665577376085729

/-! ## A206037.P634475795337512101

`filter[A104197(n+1), A120325(#)]`
-/

namespace A206037.P634475795337512101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A206037.P634475795337512101

/-! ## A206037.P12568332779861994059

`record[A023576(n+1)-3]`
-/

namespace A206037.P12568332779861994059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023576 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206037.P12568332779861994059

/-! ## A206037.P2230080773048416874

`record[A023578(n+1)-3]`
-/

namespace A206037.P2230080773048416874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023578 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206037.P2230080773048416874

/-! ## A206037.P14163925638267990325

`p?[A098090(n+2)]-3`
-/

namespace A206037.P14163925638267990325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3

end

end A206037.P14163925638267990325

/-! ## A206037.P8632722743181312715

`record[abs(A000010(A098090(n+1))-3)+1]`
-/

namespace A206037.P8632722743181312715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 (A098090 (n + 1)).toNat - 3| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206037.P8632722743181312715

/-! ## A206037.P7831278514108757401

`∩[2*A067076(n+2), A067076(n+2)]`
-/

namespace A206037.P7831278514108757401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067076 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206037.P7831278514108757401

/-! ## A206037.P14013514688382065363

`filter[A098807(n+1), A120325(#)]`
-/

namespace A206037.P14013514688382065363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A206037.P14013514688382065363

/-! ## A206037.P13291627843024047661

`∩[A067076(n+1), A098807(n+1)]`
-/

namespace A206037.P13291627843024047661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206037.P13291627843024047661

/-! ## A206037.P14294904060072862089

`∩[A086801(n+1), A098807(n+1)]`
-/

namespace A206037.P14294904060072862089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206037.P14294904060072862089

/-!
# A206038: Values of the difference d for 4 primes in arithmetic progression with the minimal start sequence {5 + j*d}, j = 0 to 3.

The programs for A206038, there is no canonical definition to state claims against.
-/

/-! ## A206038.P16642901062015020679

`∩[A342339(n+1), A005835(A351650(n+1))]`
-/

namespace A206038.P16642901062015020679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (A351650 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206038.P16642901062015020679

/-!
# A206039: Values of the difference d for 5 primes in arithmetic progression with the minimal start sequence {5 + j*d}, j = 0 to 4.

The programs for A206039, there is no canonical definition to state claims against.
-/

/-! ## A206039.P7240662736288643551

`2*A210504(n+1)`
-/

namespace A206039.P7240662736288643551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210504 (n + 1)

end

end A206039.P7240662736288643551

/-! ## A206039.P13942781089642581808

`Δ[2*∑[A210504(n)]]`
-/

namespace A206039.P13942781089642581808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206039.P13942781089642581808

/-! ## A206039.P2184064433927529935

`A210504(n+1)+A210504((n+1)%A139013(n+1))`
-/

namespace A206039.P2184064433927529935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210504 (n + 1) + A210504 (Int.tmod (n + 1 : ℤ) (A139013 (n + 1))).toNat

end

end A206039.P2184064433927529935

/-! ## A206039.P14065575337493130254

`∑[A004277(Δ[A210504(n)])]`
-/

namespace A206039.P14065575337493130254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206039.P14065575337493130254

/-! ## A206039.P7937218366291425175

`∑[A005843(Δ[A210504(n)])]`
-/

namespace A206039.P7937218366291425175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206039.P7937218366291425175

/-! ## A206039.P7781387212786842155

`∩[A111215(n+1), A206038(n+1)]`
-/

namespace A206039.P7781387212786842155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206039.P7781387212786842155

/-! ## A206039.P12545343583009506306

`A004277(A210504(n+1))`
-/

namespace A206039.P12545343583009506306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210504 (n + 1)).toNat

end

end A206039.P12545343583009506306

/-!
# A206041: Values of the difference d for 7 primes in arithmetic progression with the minimal start sequence {7 + j*d}, j = 0 to 6.

The programs for A206041, there is no canonical definition to state claims against.
-/

/-! ## A206041.P16512301868072347501

`2*A210505(n+1)`
-/

namespace A206041.P16512301868072347501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210505 (n + 1)

end

end A206041.P16512301868072347501

/-! ## A206041.P4447289870723680596

`Δ[2*∑[A210505(n)]]`
-/

namespace A206041.P4447289870723680596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206041.P4447289870723680596

/-! ## A206041.P2927859643708244131

`record[2*A210505(A028242(n))]`
-/

namespace A206041.P2927859643708244131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210505 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206041.P2927859643708244131

/-! ## A206041.P5842030453220198647

`A210505(A028310(n+1))+A210505(n+1)`
-/

namespace A206041.P5842030453220198647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210505 (A028310 (n + 1)).toNat + A210505 (n + 1)

end

end A206041.P5842030453220198647

/-!
# A206046: Number of (n+1)X(n+1) 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206046, there is no canonical definition to state claims against.
-/

/-! ## A206046.P9339409261810165012

`A206054(∑[4*n]+1)`
-/

namespace A206046.P9339409261810165012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206046.P9339409261810165012

/-!
# A206047: Number of (n+1) X 2 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one.

The programs for A206047, there is no canonical definition to state claims against.
-/

/-! ## A206047.P1583287243371618776

`A206054(∑[n]+1)`
-/

namespace A206047.P1583287243371618776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206047.P1583287243371618776

/-! ## A206047.P5745263241775948702

`lcm(3, A206054(A000124(n)))`
-/

namespace A206047.P5745263241775948702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206054 (A000124 n).toNat)

end

end A206047.P5745263241775948702

/-! ## A206047.P13609041366789217112

`record[A103451(n)*A206054(n+1)]`
-/

namespace A206047.P13609041366789217112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A206054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206047.P13609041366789217112

/-! ## A206047.P15496658507063388772

`record[root(A206054(n+1), A007318(n))]`
-/

namespace A206047.P15496658507063388772
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206054 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206047.P15496658507063388772

/-! ## A206047.P17523747629682502483

`record[root(A206054(n+1), A055818(n))]`
-/

namespace A206047.P17523747629682502483
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206054 (n + 1) : ℝ) ^ (1 / (A055818 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206047.P17523747629682502483

/-!
# A206048: Number of (n+1) X 3 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one.

The programs for A206048, there is no canonical definition to state claims against.
-/

/-! ## A206048.P2435739922650766748

`A206054(∑[n+1]+2)`
-/

namespace A206048.P2435739922650766748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206048.P2435739922650766748

/-! ## A206048.P7209448778896062859

`lcm(3, A206054(A133263(n+1)))`
-/

namespace A206048.P7209448778896062859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206054 (A133263 (n + 1)).toNat)

end

end A206048.P7209448778896062859

/-! ## A206048.P490979373160265000

`and(A057428(n+1), A206054(A133263(n+1)))`
-/

namespace A206048.P490979373160265000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A206054 (A133263 (n + 1)).toNat)

end

end A206048.P490979373160265000

/-! ## A206048.P12765414587140651502

`A206054(A134869(n+1)+1)%A205021(n+1)`
-/

namespace A206048.P12765414587140651502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206054 (A134869 (n + 1) + 1).toNat) (A205021 (n + 1))

end

end A206048.P12765414587140651502

/-! ## A206048.P11820159812999319287

`A000108(C(2, n+2))*A206054(A133263(n+1))`
-/

namespace A206048.P11820159812999319287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A206054 (A133263 (n + 1)).toNat

end

end A206048.P11820159812999319287

/-!
# A206049: Number of (n+1)X4 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206049, there is no canonical definition to state claims against.
-/

/-! ## A206049.P7614648141858066878

`A206054(∑[n+2]+4)`
-/

namespace A206049.P7614648141858066878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206049.P7614648141858066878

/-! ## A206049.P4740907832056093210

`lcm(3, A206054(A167614(n+1)))`
-/

namespace A206049.P4740907832056093210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206054 (A167614 (n + 1)).toNat)

end

end A206049.P4740907832056093210

/-! ## A206049.P2560061394134175111

`A206054(A167614(n+1))+A025469(n)`
-/

namespace A206049.P2560061394134175111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A167614 (n + 1)).toNat + A025469 n

end

end A206049.P2560061394134175111

/-! ## A206049.P12257232662227450047

`A206054(A167614(n+1))+A185284(n)`
-/

namespace A206049.P12257232662227450047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A167614 (n + 1)).toNat + A185284 n

end

end A206049.P12257232662227450047

/-! ## A206049.P14220605118760708052

`A206054(A167614(n+1))*A288120(n)`
-/

namespace A206049.P14220605118760708052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A167614 (n + 1)).toNat * A288120 n

end

end A206049.P14220605118760708052

/-!
# A206050: Number of (n+1)X5 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206050, there is no canonical definition to state claims against.
-/

/-! ## A206050.P2940591540655123366

`A206054(A374004(n+1))`
-/

namespace A206050.P2940591540655123366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A374004 (n + 1)).toNat

end

end A206050.P2940591540655123366

/-! ## A206050.P16210086411862058785

`A206054(A052905(n)+9)`
-/

namespace A206050.P16210086411862058785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A052905 n + 9).toNat

end

end A206050.P16210086411862058785

/-! ## A206050.P6270081944953123365

`A206054(A167614(n+2)+1)`
-/

namespace A206050.P6270081944953123365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A167614 (n + 2) + 1).toNat

end

end A206050.P6270081944953123365

/-! ## A206050.P8092901411406862461

`A206054(eq[5, A131818(n+1)])`
-/

namespace A206050.P8092901411406862461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206050.P8092901411406862461

/-! ## A206050.P17815918424179566818

`A206054(Δ[A264443(n)-n²])`
-/

namespace A206050.P17815918424179566818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (f1 (n + 1) - f1 n).toNat

end

end A206050.P17815918424179566818

/-!
# A206051: Number of (n+1)X6 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206051, there is no canonical definition to state claims against.
-/

/-! ## A206051.P17756418835065193492

`A206054(A374005(n+1))`
-/

namespace A206051.P17756418835065193492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A374005 (n + 1)).toNat

end

end A206051.P17756418835065193492

/-! ## A206051.P16347278148435197006

`A206054(A167499(n+3))`
-/

namespace A206051.P16347278148435197006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A167499 (n + 3)).toNat

end

end A206051.P16347278148435197006

/-! ## A206051.P15385354460935650456

`A206054(A056000(n)+15)`
-/

namespace A206051.P15385354460935650456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A056000 n + 15).toNat

end

end A206051.P15385354460935650456

/-! ## A206051.P63816850473140526

`A206054(A141214(n+1)+8)`
-/

namespace A206051.P63816850473140526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A141214 (n + 1) + 8).toNat

end

end A206051.P63816850473140526

/-! ## A206051.P10492250416340013604

`A206054(eq[6, A131818(n+1)])`
-/

namespace A206051.P10492250416340013604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206051.P10492250416340013604

/-!
# A206052: Number of (n+1)X7 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206052, there is no canonical definition to state claims against.
-/

/-! ## A206052.P3896122380105977797

`A206054(A374007(n+1))`
-/

namespace A206052.P3896122380105977797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A374007 (n + 1)).toNat

end

end A206052.P3896122380105977797

/-! ## A206052.P7222482336196305089

`A206054(eq[7, A140207(n)]+1)`
-/

namespace A206052.P7222482336196305089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A206052.P7222482336196305089

/-! ## A206052.P17221640507082715495

`A206054(eq[3, A219347(n)])`
-/

namespace A206052.P17221640507082715495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206052.P17221640507082715495

/-! ## A206052.P2319391532269874423

`A206054(A046691(n+4)-1)`
-/

namespace A206052.P2319391532269874423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A046691 (n + 4) - 1).toNat

end

end A206052.P2319391532269874423

/-! ## A206052.P2006376621003039187

`A206054(Δ[Δ[A006504(n+1)]])`
-/

namespace A206052.P2006376621003039187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (f1 (n + 1) - f1 n).toNat

end

end A206052.P2006376621003039187

/-!
# A206053: Number of (n+1)X8 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206053, there is no canonical definition to state claims against.
-/

/-! ## A206053.P9857021323778853525

`A206054(A374008(n+1))`
-/

namespace A206053.P9857021323778853525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A374008 (n + 1)).toNat

end

end A206053.P9857021323778853525

/-! ## A206053.P13953991361832966027

`A206054(eq[8, A131818(n+1)])`
-/

namespace A206053.P13953991361832966027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206053.P13953991361832966027

/-! ## A206053.P9700626208020664532

`A206054(Δ[Δ[A006504(n+1)]]+12)`
-/

namespace A206053.P9700626208020664532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (f1 (n + 1) - f1 n + 12).toNat

end

end A206053.P9700626208020664532

/-! ## A206053.P360735644130882626

`A206054(eq[4, A219347(n)])`
-/

namespace A206053.P360735644130882626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206053.P360735644130882626

/-! ## A206053.P5733544035934054942

`A206054(eq[5, A332954(n)])`
-/

namespace A206053.P5733544035934054942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206053.P5733544035934054942

/-!
# A206054: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206054, there is no canonical definition to state claims against.
-/

/-! ## A206054.P17559143634130528425

`A205909(n+1)-(A205836(n+1)+3)`
-/

namespace A206054.P17559143634130528425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (n + 1) - (A205836 (n + 1) + 3)

end

end A206054.P17559143634130528425

/-!
# A206055: Number of (n+1)X(n+1) 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206055, there is no canonical definition to state claims against.
-/

/-! ## A206055.P4250945380248821141

`A206063(∑[4*n]+1)`
-/

namespace A206055.P4250945380248821141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206055.P4250945380248821141

/-! ## A206055.P2084612255695798361

`lcm(2, A206063(A001844(n)))`
-/

namespace A206055.P2084612255695798361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206063 (A001844 n).toNat)

end

end A206055.P2084612255695798361

/-! ## A206055.P8571427471507107297

`record[A003982(n)*A206063(n+1)]`
-/

namespace A206055.P8571427471507107297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A206063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206055.P8571427471507107297

/-! ## A206055.P1143106644981848172

`record[gcd(A114327(n), A206063(n+1))]`
-/

namespace A206055.P1143106644981848172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A206063 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206055.P1143106644981848172

/-! ## A206055.P3055903391989576982

`A007318(∑[n])*A206063(A001844(n))`
-/

namespace A206055.P3055903391989576982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A206063 (A001844 n).toNat

end

end A206055.P3055903391989576982

/-!
# A206056: Number of (n+1)X2 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206056, there is no canonical definition to state claims against.
-/

/-! ## A206056.P12436688139568243476

`A206063(∑[n]+1)`
-/

namespace A206056.P12436688139568243476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206056.P12436688139568243476

/-! ## A206056.P6710788523864182717

`lcm(2, A206063(A000124(n)))`
-/

namespace A206056.P6710788523864182717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206063 (A000124 n).toNat)

end

end A206056.P6710788523864182717

/-! ## A206056.P7842124522787889344

`record[A206063(n+1)/A118185(n)]`
-/

namespace A206056.P7842124522787889344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206063 (n + 1) : ℚ) / (A118185 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206056.P7842124522787889344

/-! ## A206056.P3644702962310531657

`record[root(A206063(n+1), A059268(n))]`
-/

namespace A206056.P3644702962310531657
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206063 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206056.P3644702962310531657

/-! ## A206056.P12302050269397485194

`record[gcd(A002262(n), A206063(n+1))]`
-/

namespace A206056.P12302050269397485194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206063 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206056.P12302050269397485194

/-!
# A206057: Number of (n+1)X3 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206057, there is no canonical definition to state claims against.
-/

/-! ## A206057.P739805611113561457

`A206063(∑[n+1]+2)`
-/

namespace A206057.P739805611113561457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206057.P739805611113561457

/-! ## A206057.P4244092087515007336

`lcm(2, A206063(A000096(n)+3))`
-/

namespace A206057.P4244092087515007336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206063 (A000096 n + 3).toNat)

end

end A206057.P4244092087515007336

/-! ## A206057.P3377372790087822192

`record[root(A206063(n+2), A059268(n))]`
-/

namespace A206057.P3377372790087822192
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206063 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206057.P3377372790087822192

/-! ## A206057.P10688918385621329140

`record[gcd(A002262(n), A206063(n+2))]`
-/

namespace A206057.P10688918385621329140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206063 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206057.P10688918385621329140

/-! ## A206057.P4309590486967411271

`A206063(A000096(n+1))+A000007(n+1)`
-/

namespace A206057.P4309590486967411271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A206057.P4309590486967411271

/-!
# A206058: Number of (n+1)X4 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206058, there is no canonical definition to state claims against.
-/

/-! ## A206058.P2073380263681356838

`A206063(∑[n+2]+4)`
-/

namespace A206058.P2073380263681356838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206058.P2073380263681356838

/-! ## A206058.P2835810511445616078

`lcm(2, A206063(A167614(n+1)))`
-/

namespace A206058.P2835810511445616078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206063 (A167614 (n + 1)).toNat)

end

end A206058.P2835810511445616078

/-! ## A206058.P15619373007488190308

`record[A206063(A167499(n)-A016789(n))]`
-/

namespace A206058.P15619373007488190308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A167499 n - A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206058.P15619373007488190308

/-! ## A206058.P4130178085776580008

`A206063(A167614(n+1))%A206059(n+1)`
-/

namespace A206058.P4130178085776580008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206063 (A167614 (n + 1)).toNat) (A206059 (n + 1))

end

end A206058.P4130178085776580008

/-!
# A206059: Number of (n+1)X5 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206059, there is no canonical definition to state claims against.
-/

/-! ## A206059.P13734684746555377120

`A206063(A374004(n+1))`
-/

namespace A206059.P13734684746555377120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A374004 (n + 1)).toNat

end

end A206059.P13734684746555377120

/-! ## A206059.P3064385957657117059

`A206063(A055999(n)+10)`
-/

namespace A206059.P3064385957657117059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A055999 n + 10).toNat

end

end A206059.P3064385957657117059

/-! ## A206059.P14110191514045918427

`A206063(A167614(n+2)+1)`
-/

namespace A206059.P14110191514045918427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A167614 (n + 2) + 1).toNat

end

end A206059.P14110191514045918427

/-! ## A206059.P11434383108076546942

`A206063(A166136(n+2)-2)`
-/

namespace A206059.P11434383108076546942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A166136 (n + 2) - 2).toNat

end

end A206059.P11434383108076546942

/-! ## A206059.P5178335905489180107

`A206063(Δ[A264443(n)-n²])`
-/

namespace A206059.P5178335905489180107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (f1 (n + 1) - f1 n).toNat

end

end A206059.P5178335905489180107

/-!
# A206060: Number of (n+1)X6 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206060, there is no canonical definition to state claims against.
-/

/-! ## A206060.P7333813496761595583

`A206063(A374005(n+1))`
-/

namespace A206060.P7333813496761595583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A374005 (n + 1)).toNat

end

end A206060.P7333813496761595583

/-! ## A206060.P11871790579216063380

`A206063(A167499(n+3))`
-/

namespace A206060.P11871790579216063380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A167499 (n + 3)).toNat

end

end A206060.P11871790579216063380

/-! ## A206060.P8157006638693095425

`A206063(A056000(n)+15)`
-/

namespace A206060.P8157006638693095425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A056000 n + 15).toNat

end

end A206060.P8157006638693095425

/-! ## A206060.P4784907695960864660

`A206063(A052905(n+1)+10)`
-/

namespace A206060.P4784907695960864660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A052905 (n + 1) + 10).toNat

end

end A206060.P4784907695960864660

/-! ## A206060.P8113260767515517388

`A206063(Δ[A264443(n)])`
-/

namespace A206060.P8113260767515517388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (f1 (n + 1) - f1 n).toNat

end

end A206060.P8113260767515517388

/-!
# A206061: Number of (n+1)X7 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206061, there is no canonical definition to state claims against.
-/

/-! ## A206061.P3069843781195181666

`A206063(A374007(n+1))`
-/

namespace A206061.P3069843781195181666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A374007 (n + 1)).toNat

end

end A206061.P3069843781195181666

/-! ## A206061.P9906652595208659596

`A206063(A166136(n+4))`
-/

namespace A206061.P9906652595208659596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A166136 (n + 4)).toNat

end

end A206061.P9906652595208659596

/-! ## A206061.P12592905818418365433

`A206063(eq[7, A131818(n+1)])`
-/

namespace A206061.P12592905818418365433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206061.P12592905818418365433

/-! ## A206061.P12410989506454138279

`A206063(Δ[A023545(n+1)]+10)`
-/

namespace A206061.P12410989506454138279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (f1 (n + 1) - f1 n + 10).toNat

end

end A206061.P12410989506454138279

/-! ## A206061.P15709890492425238462

`A206063(eq[3, A219347(n)])`
-/

namespace A206061.P15709890492425238462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206061.P15709890492425238462

/-!
# A206062: Number of (n+1)X8 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206062, there is no canonical definition to state claims against.
-/

/-! ## A206062.P3033409180699655781

`A206063(A374008(n+1))`
-/

namespace A206062.P3033409180699655781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A374008 (n + 1)).toNat

end

end A206062.P3033409180699655781

/-! ## A206062.P7469628401479533034

`A206063(eq[8, A131818(n+1)])`
-/

namespace A206062.P7469628401479533034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206062.P7469628401479533034

/-! ## A206062.P12834136930953254997

`A206063(A055999(n+4))`
-/

namespace A206062.P12834136930953254997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A055999 (n + 4)).toNat

end

end A206062.P12834136930953254997

/-! ## A206062.P17421882173144233459

`A206063(eq[4, A219347(n)])`
-/

namespace A206062.P17421882173144233459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206062.P17421882173144233459

/-! ## A206062.P17901642593937775230

`A206063(eq[6, A193592(n)])`
-/

namespace A206062.P17901642593937775230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206062.P17901642593937775230

/-!
# A206064: Number of (n+1)X(n+1) 0..2 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206064, there is no canonical definition to state claims against.
-/

/-! ## A206064.P1822050335781618088

`A206072(∑[4*n]+1)`
-/

namespace A206064.P1822050335781618088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206064.P1822050335781618088

/-! ## A206064.P13586459312246889776

`lcm(3, A206072(A001844(n)))`
-/

namespace A206064.P13586459312246889776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206072 (A001844 n).toNat)

end

end A206064.P13586459312246889776

/-! ## A206064.P17351511868711412785

`record[gcd(A003987(n), A206072(n+1))]`
-/

namespace A206064.P17351511868711412785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A206072 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206064.P17351511868711412785

/-! ## A206064.P12138409486535625836

`A206072(A001844(n))^A007318(∑[n+1])`
-/

namespace A206064.P12138409486535625836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206072 (A001844 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A206064.P12138409486535625836

/-! ## A206064.P7438207111330804575

`char[A001222(n+1)]*A206072(A001844(n))`
-/

namespace A206064.P7438207111330804575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A206072 (A001844 n).toNat

end

end A206064.P7438207111330804575

/-!
# A206065: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three clockwise edge increases.

The programs for A206065, there is no canonical definition to state claims against.
-/

/-! ## A206065.P439572053334357927

`A206072(∑[n]+1)`
-/

namespace A206065.P439572053334357927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206065.P439572053334357927

/-! ## A206065.P18255853693698292819

`lcm(3, A206072(A000124(n)))`
-/

namespace A206065.P18255853693698292819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206072 (A000124 n).toNat)

end

end A206065.P18255853693698292819

/-! ## A206065.P1651092741231591739

`record[A206072(A254052(n+1))]`
-/

namespace A206065.P1651092741231591739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206065.P1651092741231591739

/-! ## A206065.P7234474639220414580

`record[A010054(n)*A206072(n+1)]`
-/

namespace A206065.P7234474639220414580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206065.P7234474639220414580

/-! ## A206065.P9908219073036766976

`record[root(A206072(n+1), A059268(n))]`
-/

namespace A206065.P9908219073036766976
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206072 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206065.P9908219073036766976

/-!
# A206066: Number of (n+1) X 3 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three clockwise edge increases.

The programs for A206066, there is no canonical definition to state claims against.
-/

/-! ## A206066.P6248595021020412109

`A206072(∑[n+1]+2)`
-/

namespace A206066.P6248595021020412109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206066.P6248595021020412109

/-! ## A206066.P6255340152970431664

`record[A010054(n)*A206072(n+2)]`
-/

namespace A206066.P6255340152970431664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206072 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206066.P6255340152970431664

/-! ## A206066.P1572930347881346304

`record[root(A206072(n+2), A059268(n))]`
-/

namespace A206066.P1572930347881346304
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206072 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206066.P1572930347881346304

/-! ## A206066.P8697824522007416379

`record[A206072(A101881(n)+1)]`
-/

namespace A206066.P8697824522007416379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206066.P8697824522007416379

/-! ## A206066.P15312231906150494411

`record[A206072(Δ[A003453(n+5)])]`
-/

namespace A206066.P15312231906150494411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206066.P15312231906150494411

/-!
# A206067: Number of (n+1) X 4 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three clockwise edge increases.

The programs for A206067, there is no canonical definition to state claims against.
-/

/-! ## A206067.P13175494842931022505

`A206072(∑[n+2]+4)`
-/

namespace A206067.P13175494842931022505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206067.P13175494842931022505

/-! ## A206067.P1544548152450740251

`lcm(3, A206072(A167614(n+1)))`
-/

namespace A206067.P1544548152450740251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206072 (A167614 (n + 1)).toNat)

end

end A206067.P1544548152450740251

/-! ## A206067.P1575050804536513099

`A206072(A167614(n+1))+A185284(n)`
-/

namespace A206067.P1575050804536513099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A167614 (n + 1)).toNat + A185284 n

end

end A206067.P1575050804536513099

/-! ## A206067.P9567270340272017029

`A206072(A167614(n+1))%A206049(n+1)`
-/

namespace A206067.P9567270340272017029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206072 (A167614 (n + 1)).toNat) (A206049 (n + 1))

end

end A206067.P9567270340272017029

/-!
# A206068: Number of (n+1)X5 0..2 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206068, there is no canonical definition to state claims against.
-/

/-! ## A206068.P4598890130955481047

`A206072(A374004(n+1))`
-/

namespace A206068.P4598890130955481047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A374004 (n + 1)).toNat

end

end A206068.P4598890130955481047

/-! ## A206068.P14084432559398500121

`A206072(A052905(n)+9)`
-/

namespace A206068.P14084432559398500121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A052905 n + 9).toNat

end

end A206068.P14084432559398500121

/-! ## A206068.P5029146579021996617

`A206072(A055999(n)+10)`
-/

namespace A206068.P5029146579021996617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A055999 n + 10).toNat

end

end A206068.P5029146579021996617

/-! ## A206068.P875308619056281230

`A206072(A167614(n+2)+1)`
-/

namespace A206068.P875308619056281230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A167614 (n + 2) + 1).toNat

end

end A206068.P875308619056281230

/-! ## A206068.P5787337591616696799

`A206072(A166136(n+2)-2)`
-/

namespace A206068.P5787337591616696799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A166136 (n + 2) - 2).toNat

end

end A206068.P5787337591616696799

/-!
# A206069: Number of (n+1)X6 0..2 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206069, there is no canonical definition to state claims against.
-/

/-! ## A206069.P73249913852244445

`A206072(A374005(n+1))`
-/

namespace A206069.P73249913852244445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A374005 (n + 1)).toNat

end

end A206069.P73249913852244445

/-! ## A206069.P6398876045077213100

`A206072(A167499(n+3))`
-/

namespace A206069.P6398876045077213100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A167499 (n + 3)).toNat

end

end A206069.P6398876045077213100

/-! ## A206069.P18179730105890430263

`A206072(A155212(n)+13)`
-/

namespace A206069.P18179730105890430263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A155212 n + 13).toNat

end

end A206069.P18179730105890430263

/-! ## A206069.P2398183270205784627

`A206072(A056000(n)+15)`
-/

namespace A206069.P2398183270205784627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A056000 n + 15).toNat

end

end A206069.P2398183270205784627

/-! ## A206069.P4460637753948000785

`A206072(Δ[A264443(n)])`
-/

namespace A206069.P4460637753948000785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (f1 (n + 1) - f1 n).toNat

end

end A206069.P4460637753948000785

/-!
# A206070: Number of (n+1)X7 0..2 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206070, there is no canonical definition to state claims against.
-/

/-! ## A206070.P1664385746257170381

`A206072(A374007(n+1))`
-/

namespace A206070.P1664385746257170381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A374007 (n + 1)).toNat

end

end A206070.P1664385746257170381

/-! ## A206070.P14704952274282873434

`A206072(A166136(n+4))`
-/

namespace A206070.P14704952274282873434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A166136 (n + 4)).toNat

end

end A206070.P14704952274282873434

/-! ## A206070.P4624567012338553924

`A206072(A052905(n+3))`
-/

namespace A206070.P4624567012338553924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A052905 (n + 3)).toNat

end

end A206070.P4624567012338553924

/-! ## A206070.P1344449040040997183

`A206072(eq[3, A219347(n)])`
-/

namespace A206070.P1344449040040997183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206070.P1344449040040997183

/-! ## A206070.P17486737213145354082

`A206072(eq[5, A193592(n)])`
-/

namespace A206070.P17486737213145354082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206070.P17486737213145354082

/-!
# A206071: Number of (n+1)X8 0..2 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206071, there is no canonical definition to state claims against.
-/

/-! ## A206071.P16454033734423075023

`A206072(A374008(n+1))`
-/

namespace A206071.P16454033734423075023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A374008 (n + 1)).toNat

end

end A206071.P16454033734423075023

/-! ## A206071.P1989852975474723795

`A206072(eq[8, A131818(n+1)])`
-/

namespace A206071.P1989852975474723795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206071.P1989852975474723795

/-! ## A206071.P16768092263840602680

`A206072(A055999(n+4))`
-/

namespace A206071.P16768092263840602680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A055999 (n + 4)).toNat

end

end A206071.P16768092263840602680

/-! ## A206071.P13103725230705049981

`A206072(eq[4, A219347(n)])`
-/

namespace A206071.P13103725230705049981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206071.P13103725230705049981

/-! ## A206071.P355481625826555101

`A206072(eq[6, A193592(n)])`
-/

namespace A206071.P355481625826555101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206071.P355481625826555101

/-!
# A206073: Binary numbers that represent irreducible polynomials over the rationals with coefficients restricted to {0,1}.

The programs for A206073, there is no canonical definition to state claims against.
-/

/-! ## A206073.P16503204256492095440

`A004284(A152021(n+1))`
-/

namespace A206073.P16503204256492095440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004284 (A152021 (n + 1)).toNat

end

end A206073.P16503204256492095440

/-! ## A206073.P3085411409156068871

`A007088(A206074(n+1))`
-/

namespace A206073.P3085411409156068871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A206074 (n + 1)).toNat

end

end A206073.P3085411409156068871

/-! ## A206073.P7464314688992751667

`A007088(lt[0, A257000(n)])`
-/

namespace A206073.P7464314688992751667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A206073.P7464314688992751667

/-! ## A206073.P893326107662659373

`A007088(eq[1, A257000(n)])`
-/

namespace A206073.P893326107662659373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206073.P893326107662659373

/-!
# A206074: n-th irreducible polynomial over Q (with coefficients 0 or 1) evaluated at x=2.

The programs for A206074, there is no canonical definition to state claims against.
-/

/-! ## A206074.P15696754237500940500

`eq[1, A257000(n)]`
-/

namespace A206074.P15696754237500940500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206074.P15696754237500940500

/-! ## A206074.P13918018201872175542

`eq[2, A304751(n+1)]+1`
-/

namespace A206074.P13918018201872175542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206074.P13918018201872175542

/-! ## A206074.P4964303220344164804

`lt[1, A007088(n*A257000(n))]`
-/

namespace A206074.P4964303220344164804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((n : ℤ) * A257000 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A206074.P4964303220344164804

/-! ## A206074.P5899163960936380949

`lt[A091225(2*n), A257000(n)]`
-/

namespace A206074.P5899163960936380949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206074.P5899163960936380949

/-! ## A206074.P4791048641226728657

`lt[A107393(n), 2*A257000(n)]`
-/

namespace A206074.P4791048641226728657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206074.P4791048641226728657

/-! ## A206074.P11123298460251331405

`lt[A257000(2*n), A257000(n)]`
-/

namespace A206074.P11123298460251331405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206074.P11123298460251331405

/-! ## A206074.P9644118467675568027

`lt[A091225(n)/2, A257000(n)]`
-/

namespace A206074.P9644118467675568027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091225 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A206074.P9644118467675568027

/-! ## A206074.P17369551401399349226

`∪[A014580(n+1), A260427(n+1)]`
-/

namespace A206074.P17369551401399349226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206074.P17369551401399349226

/-! ## A206074.P12488851329325791561

`A305430(a(n-1))` with `a(0)=2`
-/

namespace A206074.P12488851329325791561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A305430 (a (n - 1)).toNat

end

end A206074.P12488851329325791561

/-! ## A206074.P7629221143549067998

`filter[A391247(n+1), A257000(#)]`
-/

namespace A206074.P7629221143549067998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P7629221143549067998

/-! ## A206074.P17656122806752704387

`filter[A004280(n+1), A257000(#)]`
-/

namespace A206074.P17656122806752704387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P17656122806752704387

/-! ## A206074.P2990634389990604518

`filter[A205006(2*n+1), A257000(#)]`
-/

namespace A206074.P2990634389990604518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P2990634389990604518

/-! ## A206074.P11538838280676208963

`filter[A004274(n), A257000(#)]`
-/

namespace A206074.P11538838280676208963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P11538838280676208963

/-! ## A206074.P17599734745865954533

`filter[A004276(n), A257000(#)]`
-/

namespace A206074.P17599734745865954533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P17599734745865954533

/-! ## A206074.P7590591471283587855

`filter[A004281(n), A257000(#)]`
-/

namespace A206074.P7590591471283587855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P7590591471283587855

/-! ## A206074.P15275272941821930841

`filter[A088948(n+1), A257000(#)]`
-/

namespace A206074.P15275272941821930841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P15275272941821930841

/-! ## A206074.P2130892869232156141

`filter[A053460(n+1), A257000(#)]`
-/

namespace A206074.P2130892869232156141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P2130892869232156141

/-! ## A206074.P2799211968373856593

`filter[A293205(n+1), A257000(#)]`
-/

namespace A206074.P2799211968373856593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P2799211968373856593

/-!
# A206075: Nonprimes in A206074 (a coding of irreducible polynomials).

The programs for A206075, there is no canonical definition to state claims against.
-/

/-! ## A206075.P2141773803618351174

`record[n*A305821(n+1)+1]`
-/

namespace A206075.P2141773803618351174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A305821 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206075.P2141773803618351174

/-! ## A206075.P9573612846778463168

`record[A305430(2*(n+1))%A007918(2*(n+1))]`
-/

namespace A206075.P9573612846778463168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305430 (2 * (n + 1))) (A007918 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206075.P9573612846778463168

/-! ## A206075.P263115959638222487

`eq[n, A103164(A305429(n+1))]`
-/

namespace A206075.P263115959638222487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (A305429 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206075.P263115959638222487

/-! ## A206075.P12642949772611167219

`eq[A282462(n), A305429(n+1)]`
-/

namespace A206075.P12642949772611167219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206075.P12642949772611167219

/-! ## A206075.P15524477411067607113

`record[A093178(A113646(A206074(n+1)))]`
-/

namespace A206075.P15524477411067607113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A113646 (A206074 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206075.P15524477411067607113

/-! ## A206075.P3944563780108294947

`eq[A113520(n+1), A305429(n+1)]`
-/

namespace A206075.P3944563780108294947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206075.P3944563780108294947

/-!
# A206076: Numerator of p(n,-1/2), where p(n,x) is the polynomial given by A205073.

The programs for A206076, there is no canonical definition to state claims against.
-/

/-! ## A206076.P11419129437958967892

`A129594(2*(n+1))-A064707(A053644(2*(n+1)))`
-/

namespace A206076.P11419129437958967892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (2 * (n + 1)) - A064707 (A053644 (2 * (n + 1))).toNat

end

end A206076.P11419129437958967892

/-!
# A206077: Number of (n+1)X(n+1) 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206077, there is no canonical definition to state claims against.
-/

/-! ## A206077.P17920109041978092061

`A206085((n+1)²+n²)`
-/

namespace A206077.P17920109041978092061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 ((n + 1) ^ 2 + n ^ 2)

end

end A206077.P17920109041978092061

/-!
# A206078: Number of (n+1) X 2 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one.

The programs for A206078, there is no canonical definition to state claims against.
-/

/-! ## A206078.P16326744281527416366

`A206085(∑[n]+1)`
-/

namespace A206078.P16326744281527416366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206078.P16326744281527416366

/-! ## A206078.P7316484328549488194

`lcm(2, A206085(A000124(n)))`
-/

namespace A206078.P7316484328549488194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206085 (A000124 n).toNat)

end

end A206078.P7316484328549488194

/-! ## A206078.P8034251852208995492

`record[A010054(n)*A206085(n+1)]`
-/

namespace A206078.P8034251852208995492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206078.P8034251852208995492

/-! ## A206078.P10396256598554114093

`record[root(A206085(n+1), A056588(n))]`
-/

namespace A206078.P10396256598554114093
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206085 (n + 1) : ℝ) ^ (1 / (A056588 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206078.P10396256598554114093

/-! ## A206078.P807712851225350713

`record[gcd(A002262(n), A206085(n+1))]`
-/

namespace A206078.P807712851225350713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206085 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206078.P807712851225350713

/-!
# A206079: Number of (n+1)X3 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206079, there is no canonical definition to state claims against.
-/

/-! ## A206079.P6299199669460471536

`A206085(∑[n+1]+2)`
-/

namespace A206079.P6299199669460471536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206079.P6299199669460471536

/-! ## A206079.P16700085890693100864

`record[A010054(n)*A206085(n+2)]`
-/

namespace A206079.P16700085890693100864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206085 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206079.P16700085890693100864

/-! ## A206079.P5291115190246092662

`record[gcd(A002262(n), A206085(n+2))]`
-/

namespace A206079.P5291115190246092662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206085 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206079.P5291115190246092662

/-! ## A206079.P937145947134379701

`record[A206085(record[A338434(3*n+5)])]`
-/

namespace A206079.P937145947134379701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338434 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206079.P937145947134379701

/-! ## A206079.P2805392057436411587

`record[A206085(A198453(n+1))]`
-/

namespace A206079.P2805392057436411587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206079.P2805392057436411587

/-!
# A206080: Number of (n+1)X4 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206080, there is no canonical definition to state claims against.
-/

/-! ## A206080.P15116621874650832976

`A206085(∑[n+2]+4)`
-/

namespace A206080.P15116621874650832976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206080.P15116621874650832976

/-! ## A206080.P17524031673223400005

`lcm(2, A206085(A167614(n+1)))`
-/

namespace A206080.P17524031673223400005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206085 (A167614 (n + 1)).toNat)

end

end A206080.P17524031673223400005

/-! ## A206080.P11258220316279316770

`A206085(A167614(n+1))+A025469(n)`
-/

namespace A206080.P11258220316279316770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A167614 (n + 1)).toNat + A025469 n

end

end A206080.P11258220316279316770

/-! ## A206080.P4482458306746837615

`A206085(A167614(n+1))+A063524(2*n)`
-/

namespace A206080.P4482458306746837615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A167614 (n + 1)).toNat + A063524 (2 * n)

end

end A206080.P4482458306746837615

/-! ## A206080.P3901553565423602114

`and(A206085(A167614(n+1)), A339791(n+1))`
-/

namespace A206080.P3901553565423602114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206085 (A167614 (n + 1)).toNat) (A339791 (n + 1))

end

end A206080.P3901553565423602114

/-!
# A206081: Number of (n+1)X5 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206081, there is no canonical definition to state claims against.
-/

/-! ## A206081.P8170700959905336069

`A206085(A374004(n+1))`
-/

namespace A206081.P8170700959905336069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A374004 (n + 1)).toNat

end

end A206081.P8170700959905336069

/-! ## A206081.P10583757179298270827

`A206085(A055999(n)+10)`
-/

namespace A206081.P10583757179298270827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A055999 n + 10).toNat

end

end A206081.P10583757179298270827

/-! ## A206081.P12746509996727438722

`A206085(A167614(n+2)+1)`
-/

namespace A206081.P12746509996727438722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A167614 (n + 2) + 1).toNat

end

end A206081.P12746509996727438722

/-! ## A206081.P5542600910833542929

`A206085(A166136(n+2)-2)`
-/

namespace A206081.P5542600910833542929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A166136 (n + 2) - 2).toNat

end

end A206081.P5542600910833542929

/-! ## A206081.P15634131627675082397

`A206085(A166136(n+1)+1+n)`
-/

namespace A206081.P15634131627675082397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A206081.P15634131627675082397

/-!
# A206082: Number of (n+1)X6 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206082, there is no canonical definition to state claims against.
-/

/-! ## A206082.P14460704384264467481

`A206085(A374005(n+1))`
-/

namespace A206082.P14460704384264467481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A374005 (n + 1)).toNat

end

end A206082.P14460704384264467481

/-! ## A206082.P18078981573022116980

`A206085(A167614(n+3)+2)`
-/

namespace A206082.P18078981573022116980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A167614 (n + 3) + 2).toNat

end

end A206082.P18078981573022116980

/-! ## A206082.P8837258865460152865

`A206085(Δ[A264443(n)])`
-/

namespace A206082.P8837258865460152865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (f1 (n + 1) - f1 n).toNat

end

end A206082.P8837258865460152865

/-! ## A206082.P11444024831297764264

`A206085(Δ[A023545(n+1)])`
-/

namespace A206082.P11444024831297764264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (f1 (n + 1) - f1 n).toNat

end

end A206082.P11444024831297764264

/-! ## A206082.P626988958317514641

`A206085(eq[8, A057728(n+1)])`
-/

namespace A206082.P626988958317514641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206082.P626988958317514641

/-!
# A206083: Number of (n+1)X7 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206083, there is no canonical definition to state claims against.
-/

/-! ## A206083.P9734302878083158427

`A206085(A374007(n+1))`
-/

namespace A206083.P9734302878083158427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A374007 (n + 1)).toNat

end

end A206083.P9734302878083158427

/-! ## A206083.P7950435166841821268

`A206085(Δ[A023545(n+1)]+10)`
-/

namespace A206083.P7950435166841821268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (f1 (n + 1) - f1 n + 10).toNat

end

end A206083.P7950435166841821268

/-!
# A206086: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206086, there is no canonical definition to state claims against.
-/

/-! ## A206086.P18006971463789512935

`A206094((n+1)²+n²)`
-/

namespace A206086.P18006971463789512935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 ((n + 1) ^ 2 + n ^ 2)

end

end A206086.P18006971463789512935

/-! ## A206086.P9887352767902485820

`lcm(3, A206094(A001844(n)))`
-/

namespace A206086.P9887352767902485820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206094 (A001844 n).toNat)

end

end A206086.P9887352767902485820

/-! ## A206086.P714815253038053174

`record[A206094(A152271(n²))]`
-/

namespace A206086.P714815253038053174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206086.P714815253038053174

/-! ## A206086.P4976646271004565836

`record[A003982(n)*A206094(n+1)]`
-/

namespace A206086.P4976646271004565836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A206094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206086.P4976646271004565836

/-! ## A206086.P9537735040931523050

`record[gcd(A049581(n), A206094(n+1))]`
-/

namespace A206086.P9537735040931523050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A206094 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206086.P9537735040931523050

/-!
# A206087: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206087, there is no canonical definition to state claims against.
-/

/-! ## A206087.P9168656372244213939

`A206094(∑[n]+1)`
-/

namespace A206087.P9168656372244213939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206087.P9168656372244213939

/-! ## A206087.P12869909272544572632

`lcm(3, A206094(A000124(n)))`
-/

namespace A206087.P12869909272544572632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206094 (A000124 n).toNat)

end

end A206087.P12869909272544572632

/-! ## A206087.P8458442660968897420

`record[A206094(n+1)/A155495(n)]`
-/

namespace A206087.P8458442660968897420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206094 (n + 1) : ℚ) / (A155495 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206087.P8458442660968897420

/-! ## A206087.P16782642947280098661

`record[root(A206094(n+1), A290824(n))]`
-/

namespace A206087.P16782642947280098661
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206094 (n + 1) : ℝ) ^ (1 / (A290824 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206087.P16782642947280098661

/-! ## A206087.P3569938698300701158

`record[gcd(A002262(n), A206094(n+1))]`
-/

namespace A206087.P3569938698300701158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206094 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206087.P3569938698300701158

/-!
# A206088: Number of (n+1) X 3 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206088, there is no canonical definition to state claims against.
-/

/-! ## A206088.P7924064160311186642

`6*A206209(n+1)`
-/

namespace A206088.P7924064160311186642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206209 (n + 1)

end

end A206088.P7924064160311186642

/-! ## A206088.P18153205584607844776

`A206094(∑[n+1]+2)`
-/

namespace A206088.P18153205584607844776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206088.P18153205584607844776

/-! ## A206088.P14725906198443286160

`6*A206215(∑[n+1]+2)`
-/

namespace A206088.P14725906198443286160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206215 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206088.P14725906198443286160

/-! ## A206088.P14090464839770833354

`lcm(2, A206094(A000096(n)+3))`
-/

namespace A206088.P14090464839770833354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206094 (A000096 n + 3).toNat)

end

end A206088.P14090464839770833354

/-! ## A206088.P7135546153947045948

`record[gcd(A002262(n), A206094(n+2))]`
-/

namespace A206088.P7135546153947045948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206094 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206088.P7135546153947045948

/-!
# A206089: Number of (n+1) X 4 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206089, there is no canonical definition to state claims against.
-/

/-! ## A206089.P10734477098659756936

`6*A206210(n+1)`
-/

namespace A206089.P10734477098659756936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206210 (n + 1)

end

end A206089.P10734477098659756936

/-! ## A206089.P4977800255650815387

`A206094(∑[n+2]+4)`
-/

namespace A206089.P4977800255650815387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206089.P4977800255650815387

/-! ## A206089.P7159248804551904575

`6*A206215(A167614(n+1))`
-/

namespace A206089.P7159248804551904575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206215 (A167614 (n + 1)).toNat

end

end A206089.P7159248804551904575

/-! ## A206089.P17354778346481027721

`lcm(A033999(n), A206094(A167614(n+1)))`
-/

namespace A206089.P17354778346481027721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A206094 (A167614 (n + 1)).toNat)

end

end A206089.P17354778346481027721

/-! ## A206089.P5005636131314004488

`A297046(n+1)+A206094(A167614(n+1))`
-/

namespace A206089.P5005636131314004488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297046 (n + 1) + A206094 (A167614 (n + 1)).toNat

end

end A206089.P5005636131314004488

/-!
# A206090: Number of (n+1) X 5 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206090, there is no canonical definition to state claims against.
-/

/-! ## A206090.P13020637020725025793

`6*A206211(n+1)`
-/

namespace A206090.P13020637020725025793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206211 (n + 1)

end

end A206090.P13020637020725025793

/-! ## A206090.P7697219094211775227

`A206094(A374004(n+1))`
-/

namespace A206090.P7697219094211775227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A374004 (n + 1)).toNat

end

end A206090.P7697219094211775227

/-! ## A206090.P18437546603406891926

`A206094(A052905(n)+9)`
-/

namespace A206090.P18437546603406891926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A052905 n + 9).toNat

end

end A206090.P18437546603406891926

/-! ## A206090.P4602511536907594548

`A206094(A055999(n)+10)`
-/

namespace A206090.P4602511536907594548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A055999 n + 10).toNat

end

end A206090.P4602511536907594548

/-! ## A206090.P7864140044627008684

`A206094(A167614(n+2)+1)`
-/

namespace A206090.P7864140044627008684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A167614 (n + 2) + 1).toNat

end

end A206090.P7864140044627008684

/-!
# A206091: Number of (n+1) X 6 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206091, there is no canonical definition to state claims against.
-/

/-! ## A206091.P5407425174405621293

`6*A206212(n+1)`
-/

namespace A206091.P5407425174405621293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206212 (n + 1)

end

end A206091.P5407425174405621293

/-! ## A206091.P10492656776203546498

`A206094(A374005(n+1))`
-/

namespace A206091.P10492656776203546498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A374005 (n + 1)).toNat

end

end A206091.P10492656776203546498

/-! ## A206091.P616596348107382688

`A206094(A167499(n+3))`
-/

namespace A206091.P616596348107382688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A167499 (n + 3)).toNat

end

end A206091.P616596348107382688

/-! ## A206091.P6454791587557511656

`A206094(Δ[A000292(n+4)]-n)`
-/

namespace A206091.P6454791587557511656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A206091.P6454791587557511656

/-! ## A206091.P6425625134165759883

`6*A206215(A167614(n+3)+2)`
-/

namespace A206091.P6425625134165759883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206215 (A167614 (n + 3) + 2).toNat

end

end A206091.P6425625134165759883

/-!
# A206092: Number of (n+1) X 7 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206092, there is no canonical definition to state claims against.
-/

/-! ## A206092.P16253272293312048011

`6*A206213(n+1)`
-/

namespace A206092.P16253272293312048011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206213 (n + 1)

end

end A206092.P16253272293312048011

/-! ## A206092.P11342686779099256652

`A206094(A374007(n+1))`
-/

namespace A206092.P11342686779099256652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A374007 (n + 1)).toNat

end

end A206092.P11342686779099256652

/-! ## A206092.P16806094510094485741

`A206094(A000124(n+5)+5)`
-/

namespace A206092.P16806094510094485741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A000124 (n + 5) + 5).toNat

end

end A206092.P16806094510094485741

/-! ## A206092.P3675510790006257911

`A206094(A052905(n+3))`
-/

namespace A206092.P3675510790006257911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A052905 (n + 3)).toNat

end

end A206092.P3675510790006257911

/-! ## A206092.P10435883581703898158

`A206094(Δ[Δ[A006504(n+1)]])`
-/

namespace A206092.P10435883581703898158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (f1 (n + 1) - f1 n).toNat

end

end A206092.P10435883581703898158

/-!
# A206093: Number of (n+1) X 8 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206093, there is no canonical definition to state claims against.
-/

/-! ## A206093.P14028504531780390739

`6*A206214(n+1)`
-/

namespace A206093.P14028504531780390739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206214 (n + 1)

end

end A206093.P14028504531780390739

/-! ## A206093.P16162390931517253971

`A206094(A374008(n+1))`
-/

namespace A206093.P16162390931517253971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A374008 (n + 1)).toNat

end

end A206093.P16162390931517253971

/-! ## A206093.P14846940870153554005

`A206094(A052905(n+3)+12)`
-/

namespace A206093.P14846940870153554005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A052905 (n + 3) + 12).toNat

end

end A206093.P14846940870153554005

/-! ## A206093.P12756433577967930971

`6*A206215(A167499(n+5)+2)`
-/

namespace A206093.P12756433577967930971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206215 (A167499 (n + 5) + 2).toNat

end

end A206093.P12756433577967930971

/-! ## A206093.P3419654871105803606

`6*A206215(A055998(n+4)+10)`
-/

namespace A206093.P3419654871105803606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206215 (A055998 (n + 4) + 10).toNat

end

end A206093.P3419654871105803606

/-!
# A206095: a(n) = smallest number congruent to a quadratic non-residue modulo each of the first n odd primes.

The programs for A206095, there is no canonical definition to state claims against.
-/

/-! ## A206095.P5849704312307317529

`A237437(n+1)%A000040(A038623(n+1))`
-/

namespace A206095.P5849704312307317529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237437 (n + 1)) (A000040 (A038623 (n + 1)).toNat)

end

end A206095.P5849704312307317529

/-! ## A206095.P13422242049496153762

`A237437(n+1)%A001359(A002110(n))`
-/

namespace A206095.P13422242049496153762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237437 (n + 1)) (A001359 (A002110 n).toNat)

end

end A206095.P13422242049496153762

/-!
# A206096: Fibonacci numbers with 4 distinct prime divisors, each of multiplicity 1.

The programs for A206096, there is no canonical definition to state claims against.
-/

/-! ## A206096.P6095656573737974011

`A000045(A114813(n+1))`
-/

namespace A206096.P6095656573737974011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A114813 (n + 1)).toNat

end

end A206096.P6095656573737974011

/-! ## A206096.P10585993355598549288

`A000045(eq[4, A038575(n)])`
-/

namespace A206096.P10585993355598549288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206096.P10585993355598549288

/-! ## A206096.P17958932139535928511

`A069110(eq[4, A038575(n)])`
-/

namespace A206096.P17958932139535928511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206096.P17958932139535928511

/-! ## A206096.P15170927043062021259

`A053602(2*A114813(n+1))`
-/

namespace A206096.P15170927043062021259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A114813 (n + 1)).toNat

end

end A206096.P15170927043062021259

/-! ## A206096.P17737458179310951197

`A303216(A141214(n+1))`
-/

namespace A206096.P17737458179310951197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303216 (A141214 (n + 1)).toNat

end

end A206096.P17737458179310951197

/-!
# A206097: Fibonacci numbers F that are squarefree semiprimes such that F+2 or F-2 is also a squarefree semiprime.

The programs for A206097, there is no canonical definition to state claims against.
-/

/-! ## A206097.P8839226020654742455

`A053409(comp[floor(2^(n-1))])`
-/

namespace A206097.P8839226020654742455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053409 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A206097.P8839226020654742455

