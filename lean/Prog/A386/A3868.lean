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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A386800: Numbers that have exactly one exponent in their prime factorization that is equal to 3.

The programs for A386800, the canonical program `A386800.P7479219809969724232` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386800 has offset 1).

The definition of A386800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6081 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386800.P7479219809969724232

`filter[A176297(n+1), A295883(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A386800

/-- `filter[A176297(n+1), A295883(#)]` -/
def P7479219809969724232.Spec : Prop :=
  ∀ n, P7479219809969724232.a n = A386800 (n + 1)

theorem P7479219809969724232.correct : P7479219809969724232.Spec := by
  intro n
  simp only [A386800, Nat.add_sub_cancel]

end A386800

/-! ## A386800.P10745505423660604435

`filter[A344180(n), A295883(#)]`
-/

namespace A386800.P10745505423660604435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295883 (f1 j).toNat = 1) n)

end

end A386800.P10745505423660604435

namespace A386800

/-- `filter[A344180(n), A295883(#)]` -/
def P10745505423660604435.Spec : Prop :=
  ∀ n, P10745505423660604435.a n = A386800 (n + 1)

end A386800

/-! ## A386800.P6206644617528223844

`∩[A176297(n+1), A356862(n+1)]`
-/

namespace A386800.P6206644617528223844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386800.P6206644617528223844

namespace A386800

/-- `∩[A176297(n+1), A356862(n+1)]` -/
def P6206644617528223844.Spec : Prop :=
  ∀ n, (P6206644617528223844.a n : ℤ) = A386800 (n + 1)

end A386800

/-! ## A386800.P1459351658811505359

`A381315(n+1)+A000007(A017979(n+1))`
-/

namespace A386800.P1459351658811505359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381315 (n + 1) + A000007 (A017979 (n + 1)).toNat

end

end A386800.P1459351658811505359

namespace A386800

/-- `A381315(n+1)+A000007(A017979(n+1))` -/
def P1459351658811505359.Spec : Prop :=
  ∀ n, P1459351658811505359.a n = A386800 (n + 1)

end A386800

/-! ## A386800.P12264938023045753199

`A381315(n+1)%A102658(A093773(n+1))`
-/

namespace A386800.P12264938023045753199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381315 (n + 1)) (A102658 (A093773 (n + 1)).toNat)

end

end A386800.P12264938023045753199

namespace A386800

/-- `A381315(n+1)%A102658(A093773(n+1))` -/
def P12264938023045753199.Spec : Prop :=
  ∀ n, P12264938023045753199.a n = A386800 (n + 1)

end A386800

/-!
# A386801: Numbers that have exactly two exponents in their prime factorization that are equal to 3.

The programs for A386801, there is no canonical definition to state claims against.
-/

/-! ## A386801.P2222797205243526487

`A109399(n+1)+A076142(A036038(n+1))`
-/

namespace A386801.P2222797205243526487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1) + A076142 (A036038 (n + 1)).toNat

end

end A386801.P2222797205243526487

/-! ## A386801.P8964777250399964071

`A109399(n+1)+A057918(A160353(n+1))`
-/

namespace A386801.P8964777250399964071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1) + A057918 (A160353 (n + 1)).toNat

end

end A386801.P8964777250399964071

/-! ## A386801.P14188572909513997721

`A109399(n+1)+A000007(A000700(2*n+1))`
-/

namespace A386801.P14188572909513997721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1) + A000007 (A000700 (2 * n + 1)).toNat

end

end A386801.P14188572909513997721

/-! ## A386801.P7326016880450753069

`A109399(n+1)+A057918(A065727(2*(n+1)))`
-/

namespace A386801.P7326016880450753069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1) + A057918 (A065727 (2 * (n + 1))).toNat

end

end A386801.P7326016880450753069

/-! ## A386801.P8984486062062846908

`A109399(n+1)+A099893(A116552(3*n+1))`
-/

namespace A386801.P8984486062062846908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1) + A099893 (A116552 (3 * n + 1)).toNat

end

end A386801.P8984486062062846908

/-! ## A386801.P10490652852166348869

`A353803(A100202(3*n+4))+A109399(n+1)`
-/

namespace A386801.P10490652852166348869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353803 (A100202 (3 * n + 4)).toNat + A109399 (n + 1)

end

end A386801.P10490652852166348869

/-! ## A386801.P1454103192466769007

`A353803(A336402(n+1))+A109399(n+1)`
-/

namespace A386801.P1454103192466769007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353803 (A336402 (n + 1)).toNat + A109399 (n + 1)

end

end A386801.P1454103192466769007

/-! ## A386801.P11890274836979847702

`A001055(A156784(n+5))*A109399(n+1)`
-/

namespace A386801.P11890274836979847702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A156784 (n + 5)).toNat * A109399 (n + 1)

end

end A386801.P11890274836979847702

/-! ## A386801.P11160212859085845788

`A109399(n+1)+A010054(A001694(3*n+4))`
-/

namespace A386801.P11160212859085845788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1) + A010054 (A001694 (3 * n + 4)).toNat

end

end A386801.P11160212859085845788

/-! ## A386801.P16272876705313718098

`A109399(n+1)+A000007(A260419(n+1))`
-/

namespace A386801.P16272876705313718098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1) + A000007 (A260419 (n + 1)).toNat

end

end A386801.P16272876705313718098

/-!
# A386802: Numbers that have exactly three exponents in their prime factorization that are equal to 3.

The programs for A386802, there is no canonical definition to state claims against.
-/

/-! ## A386802.P6753372820700984454

`lcm(A153881(A122812(2*n+5)), A176359(n+1))`
-/

namespace A386802.P6753372820700984454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (A122812 (2 * n + 5)).toNat) (A176359 (n + 1))

end

end A386802.P6753372820700984454

/-! ## A386802.P12468242212084411731

`lcm(A057077(A001318(n)), A176359(n+1))`
-/

namespace A386802.P12468242212084411731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 (A001318 n).toNat) (A176359 (n + 1))

end

end A386802.P12468242212084411731

/-! ## A386802.P4127299787277561112

`A051904(A258448(n+2))*A176359(n+1)`
-/

namespace A386802.P4127299787277561112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A258448 (n + 2)).toNat * A176359 (n + 1)

end

end A386802.P4127299787277561112

/-! ## A386802.P3001513966768375251

`A176359(n+1)+A007814(A106856(3*n+4))`
-/

namespace A386802.P3001513966768375251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176359 (n + 1) + A007814 (A106856 (3 * n + 4)).toNat

end

end A386802.P3001513966768375251

/-! ## A386802.P14530573868316981726

`A176359(n+1)+A010815(A240095(3*(n+1)))`
-/

namespace A386802.P14530573868316981726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176359 (n + 1) + A010815 (A240095 (3 * (n + 1))).toNat

end

end A386802.P14530573868316981726

/-! ## A386802.P2614807941866399548

`A374121(A053001(2*n+5))+A176359(n+1)`
-/

namespace A386802.P2614807941866399548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374121 (A053001 (2 * n + 5)).toNat + A176359 (n + 1)

end

end A386802.P2614807941866399548

/-! ## A386802.P18191955066432190950

`A176359(n+1)+A010054(A132231(n+1))`
-/

namespace A386802.P18191955066432190950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176359 (n + 1) + A010054 (A132231 (n + 1)).toNat

end

end A386802.P18191955066432190950

/-! ## A386802.P5782591025927896331

`A163811(A210360(n+3))*A176359(n+1)`
-/

namespace A386802.P5782591025927896331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 (A210360 (n + 3)).toNat * A176359 (n + 1)

end

end A386802.P5782591025927896331

/-! ## A386802.P5738580973364474534

`A091255(A106247(2*(n+1)))*A176359(n+1)`
-/

namespace A386802.P5738580973364474534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A106247 (2 * (n + 1))).toNat * A176359 (n + 1)

end

end A386802.P5738580973364474534

/-! ## A386802.P4190047227606981100

`A176359(n+1)%A001567(A059466(n+1))`
-/

namespace A386802.P4190047227606981100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176359 (n + 1)) (A001567 (A059466 (n + 1)).toNat)

end

end A386802.P4190047227606981100

/-! ## A386802.P2139622228124809960

`A176359(n+1)^A076526(A065381(n+1))`
-/

namespace A386802.P2139622228124809960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176359 (n + 1) : ℚ) ^ (A076526 (A065381 (n + 1)).toNat : ℤ)

end

end A386802.P2139622228124809960

/-! ## A386802.P10945349962564410743

`A176359(n+1)+A121373(A065381(n+5))`
-/

namespace A386802.P10945349962564410743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176359 (n + 1) + A121373 (A065381 (n + 5)).toNat

end

end A386802.P10945349962564410743

/-! ## A386802.P4882628379091241798

`A176359(n+1)%A076336(A002061(n))`
-/

namespace A386802.P4882628379091241798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176359 (n + 1)) (A076336 (A002061 n).toNat)

end

end A386802.P4882628379091241798

/-! ## A386802.P10475350850685080278

`A176346(A000217(n))*A176359(n+1)`
-/

namespace A386802.P10475350850685080278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 (A000217 n).toNat * A176359 (n + 1)

end

end A386802.P10475350850685080278

/-!
# A386803: Numbers without an exponent 4 in their prime factorization.

The programs for A386803, the canonical program `A386803.P12507161777922497949` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386803 has offset 1).

The definition of A386803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386803.P12507161777922497949

`and(A375155(n+1), A388972(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A386803

/-- `and(A375155(n+1), A388972(n+1))` -/
def P12507161777922497949.Spec : Prop :=
  ∀ n, P12507161777922497949.a n = A386803 (n + 1)

theorem P12507161777922497949.correct : P12507161777922497949.Spec := by
  intro n
  simp only [A386803, Nat.add_sub_cancel]

end A386803

/-! ## A386803.P7857127035341068166

`A388972(n+1)%A004733(n)`
-/

namespace A386803.P7857127035341068166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A388972 (n + 1)) (A004733 n)

end

end A386803.P7857127035341068166

namespace A386803

/-- `A388972(n+1)%A004733(n)` -/
def P7857127035341068166.Spec : Prop :=
  ∀ n, P7857127035341068166.a n = A386803 (n + 1)

end A386803

/-! ## A386803.P8804929007658482525

`and(A003261(n+1), A388972(n+1))`
-/

namespace A386803.P8804929007658482525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A388972 (n + 1))

end

end A386803.P8804929007658482525

namespace A386803

/-- `and(A003261(n+1), A388972(n+1))` -/
def P8804929007658482525.Spec : Prop :=
  ∀ n, P8804929007658482525.a n = A386803 (n + 1)

end A386803

/-! ## A386803.P3722137917382381909

`and(A163383(n+1), A388972(n+1))`
-/

namespace A386803.P3722137917382381909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163383 (n + 1)) (A388972 (n + 1))

end

end A386803.P3722137917382381909

namespace A386803

/-- `and(A163383(n+1), A388972(n+1))` -/
def P3722137917382381909.Spec : Prop :=
  ∀ n, P3722137917382381909.a n = A386803 (n + 1)

end A386803

/-! ## A386803.P16209286686043335842

`and(A055580(n), A388972(n+1))`
-/

namespace A386803.P16209286686043335842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A388972 (n + 1))

end

end A386803.P16209286686043335842

namespace A386803

/-- `and(A055580(n), A388972(n+1))` -/
def P16209286686043335842.Spec : Prop :=
  ∀ n, P16209286686043335842.a n = A386803 (n + 1)

end A386803

/-! ## A386803.P6957969472276921062

`and(A107392(n), A388972(n+1))`
-/

namespace A386803.P6957969472276921062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107392 n) (A388972 (n + 1))

end

end A386803.P6957969472276921062

namespace A386803

/-- `and(A107392(n), A388972(n+1))` -/
def P6957969472276921062.Spec : Prop :=
  ∀ n, P6957969472276921062.a n = A386803 (n + 1)

end A386803

/-! ## A386803.P13619498554623973132

`and(A107464(n), A388972(n+1))`
-/

namespace A386803.P13619498554623973132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107464 n) (A388972 (n + 1))

end

end A386803.P13619498554623973132

namespace A386803

/-- `and(A107464(n), A388972(n+1))` -/
def P13619498554623973132.Spec : Prop :=
  ∀ n, P13619498554623973132.a n = A386803 (n + 1)

end A386803

/-! ## A386803.P6585652176678912377

`and(A107953(n), A388972(n+1))`
-/

namespace A386803.P6585652176678912377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107953 n) (A388972 (n + 1))

end

end A386803.P6585652176678912377

namespace A386803

/-- `and(A107953(n), A388972(n+1))` -/
def P6585652176678912377.Spec : Prop :=
  ∀ n, P6585652176678912377.a n = A386803 (n + 1)

end A386803

/-! ## A386803.P15693838315949177328

`and(A211386(n), A388972(n+1))`
-/

namespace A386803.P15693838315949177328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211386 n) (A388972 (n + 1))

end

end A386803.P15693838315949177328

namespace A386803

/-- `and(A211386(n), A388972(n+1))` -/
def P15693838315949177328.Spec : Prop :=
  ∀ n, P15693838315949177328.a n = A386803 (n + 1)

end A386803

/-! ## A386803.P13368622689667645299

`and(A107954(n), A388972(n+1))`
-/

namespace A386803.P13368622689667645299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107954 n) (A388972 (n + 1))

end

end A386803.P13368622689667645299

namespace A386803

/-- `and(A107954(n), A388972(n+1))` -/
def P13368622689667645299.Spec : Prop :=
  ∀ n, P13368622689667645299.a n = A386803 (n + 1)

end A386803

/-! ## A386803.P4689630599832117528

`and(A107955(n), A388972(n+1))`
-/

namespace A386803.P4689630599832117528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A388972 (n + 1))

end

end A386803.P4689630599832117528

namespace A386803

/-- `and(A107955(n), A388972(n+1))` -/
def P4689630599832117528.Spec : Prop :=
  ∀ n, P4689630599832117528.a n = A386803 (n + 1)

end A386803

/-!
# A386804: Numbers that have exactly one exponent in their prime factorization that is equal to 4.

The programs for A386804, there is no canonical definition to state claims against.
-/

/-! ## A386804.P3847126867214291511

`A336595(n+1)+A010815(A016874(n))`
-/

namespace A386804.P3847126867214291511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336595 (n + 1) + A010815 (A016874 n).toNat

end

end A386804.P3847126867214291511

/-! ## A386804.P17956569497670373467

`A336595(n+1)%A045940(A000032(n))`
-/

namespace A386804.P17956569497670373467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336595 (n + 1)) (A045940 (A000032 n).toNat)

end

end A386804.P17956569497670373467

/-! ## A386804.P7559317821592742074

`A336595(n+1)+A010051(A175752(n+1))`
-/

namespace A386804.P7559317821592742074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336595 (n + 1) + A010051 (A175752 (n + 1)).toNat

end

end A386804.P7559317821592742074

/-! ## A386804.P14946278554763012449

`A336595(n+1)+A174889(A065091(n+1))`
-/

namespace A386804.P14946278554763012449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336595 (n + 1) + A174889 (A065091 (n + 1)).toNat

end

end A386804.P14946278554763012449

/-! ## A386804.P15352762778580497608

`A336595(n+1)+A327159(A094686(n+3))`
-/

namespace A386804.P15352762778580497608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336595 (n + 1) + A327159 (A094686 (n + 3)).toNat

end

end A386804.P15352762778580497608

/-!
# A386807: Numbers without an exponent 5 in their prime factorization.

The programs for A386807, there is no canonical definition to state claims against.
-/

/-! ## A386807.P12055107783198781040

`comp[A359359(3*n)*A390307(n+4)^5]`
-/

namespace A386807.P12055107783198781040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359359 (3 * n) * A390307 (n + 4) ^ 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A386807.P12055107783198781040

/-! ## A386807.P18377109889431601346

`comp[lcm(32, A359897(n))]`
-/

namespace A386807.P18377109889431601346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 32 (A359897 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A386807.P18377109889431601346

/-! ## A386807.P2139020859851225455

`comp[A319072(A141111(n+3)+n)]`
-/

namespace A386807.P2139020859851225455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319072 (A141111 (n + 3) + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A386807.P2139020859851225455

/-! ## A386807.P11772217042659538103

`comp[lcm(32, A324692(n))]`
-/

namespace A386807.P11772217042659538103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 32 (A324692 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A386807.P11772217042659538103

/-! ## A386807.P17208160398716132059

`comp[32*A324692(2*n)]`
-/

namespace A386807.P17208160398716132059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A324692 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A386807.P17208160398716132059

/-! ## A386807.P562671808599127897

`comp[32*A025581(A087803(n+1))]`
-/

namespace A386807.P562671808599127897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A025581 (A087803 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A386807.P562671808599127897

/-! ## A386807.P16062781424026493805

`comp[32*(A035143(A005728(3*n))-1)]`
-/

namespace A386807.P16062781424026493805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * (A035143 (A005728 (3 * n)).toNat - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A386807.P16062781424026493805

/-! ## A386807.P4313999320003882578

`comp[and(A151983(n+1), A166905(3*(n+1)))]`
-/

namespace A386807.P4313999320003882578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151983 (n + 1)) (A166905 (3 * (n + 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A386807.P4313999320003882578

/-! ## A386807.P6068811438612451004

`comp[A175165(n)]%A304848(2*(n+2))`
-/

namespace A386807.P6068811438612451004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175165 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A304848 (2 * (n + 2)))

end

end A386807.P6068811438612451004

/-! ## A386807.P4257506853811480214

`comp[A061043(n+5)*A376989(n+1)]`
-/

namespace A386807.P4257506853811480214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061043 (n + 5) * A376989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A386807.P4257506853811480214

/-! ## A386807.P14980021465926966110

`A019425(A327343(n+1))+comp[2^n-33]`
-/

namespace A386807.P14980021465926966110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A327343 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A386807.P14980021465926966110

/-!
# A386808: Numbers that have exactly one exponent in their prime factorization that is equal to 5.

The programs for A386808, there is no canonical definition to state claims against.
-/

/-! ## A386808.P4496642050369032887

`A362841(n+1)%A063990(A272950(n+1))`
-/

namespace A386808.P4496642050369032887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362841 (n + 1)) (A063990 (A272950 (n + 1)).toNat)

end

end A386808.P4496642050369032887

/-! ## A386808.P3952162928682309256

`A010054(A000217(n))*A362841(n+1)`
-/

namespace A386808.P3952162928682309256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000217 n).toNat * A362841 (n + 1)

end

end A386808.P3952162928682309256

/-! ## A386808.P2384632606515350446

`A362841(n+1)+A000007(A001097(3*n+4))`
-/

namespace A386808.P2384632606515350446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (n + 1) + A000007 (A001097 (3 * n + 4)).toNat

end

end A386808.P2384632606515350446

/-! ## A386808.P3082685249070682725

`A362841(n+1)+A000007(A286708(n+1))`
-/

namespace A386808.P3082685249070682725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (n + 1) + A000007 (A286708 (n + 1)).toNat

end

end A386808.P3082685249070682725

/-! ## A386808.P17225650401247232173

`A362841(n+1)+A113047(A070852(2*n+1))`
-/

namespace A386808.P17225650401247232173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (n + 1) + A113047 (A070852 (2 * n + 1)).toNat

end

end A386808.P17225650401247232173

/-! ## A386808.P6536454382040026077

`A362841(n+1)+A359550(A033579(n))`
-/

namespace A386808.P6536454382040026077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (n + 1) + A359550 (A033579 n).toNat

end

end A386808.P6536454382040026077

/-! ## A386808.P9530729154287752637

`A362841(n+1)+A010054(A362811(n+1))`
-/

namespace A386808.P9530729154287752637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (n + 1) + A010054 (A362811 (n + 1)).toNat

end

end A386808.P9530729154287752637

/-! ## A386808.P16834690164397021467

`A362841(n+1)+A316524(A000290(n+1))`
-/

namespace A386808.P16834690164397021467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (n + 1) + A316524 (A000290 (n + 1)).toNat

end

end A386808.P16834690164397021467

/-! ## A386808.P11203238544222742205

`A369427(A106483(2*(n+2)))+A362841(n+1)`
-/

namespace A386808.P11203238544222742205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (A106483 (2 * (n + 2))).toNat + A362841 (n + 1)

end

end A386808.P11203238544222742205

/-! ## A386808.P17264684558895176342

`A362841(n+1)+A000007(A025728(n+1))`
-/

namespace A386808.P17264684558895176342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (n + 1) + A000007 (A025728 (n + 1)).toNat

end

end A386808.P17264684558895176342

/-!
# A386809: Numbers that have exactly two exponents in their prime factorization that are equal to 5.

The programs for A386809, there is no canonical definition to state claims against.
-/

/-! ## A386809.P1815025892847626300

`∩[A195092(n+1), A384006(n+1)]`
-/

namespace A386809.P1815025892847626300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386809.P1815025892847626300

/-!
# A386811: a(n) = Sum_{k=0..n} binomial(4*n+1,k).

The programs for A386811, the canonical program `A386811.P8309048969065740418` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386811 has offset 0).

The definition of A386811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+1, #)]` (program `A386811.P8309048969065740418`, by `A386811.P8309048969065740418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386811.P8309048969065740418

`∑{#}[n, C(4*n+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386811

/-- `∑{#}[n, C(4*n+1, #)]` -/
def P8309048969065740418.Spec : Prop :=
  ∀ n, (P8309048969065740418.a n : ℤ) = A386811 n

theorem P8309048969065740418.correct : P8309048969065740418.Spec := by
  intro n
  simp only [A386811]

end A386811

/-! ## A386811.P14839007804566698973

`A054143(A139276(n))`
-/

namespace A386811.P14839007804566698973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A139276 n).toNat

end

end A386811.P14839007804566698973

namespace A386811

/-- `A054143(A139276(n))` -/
def P14839007804566698973.Spec : Prop :=
  ∀ n, P14839007804566698973.a n = A386811 n

end A386811

/-! ## A386811.P7592982086057507032

`A104709(A139277(n))`
-/

namespace A386811.P7592982086057507032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 (A139277 n).toNat

end

end A386811.P7592982086057507032

namespace A386811

/-- `A104709(A139277(n))` -/
def P7592982086057507032.Spec : Prop :=
  ∀ n, P7592982086057507032.a n = A386811 n

end A386811

/-! ## A386811.P1037328022889395331

`A008949(A194268(n))`
-/

namespace A386811.P1037328022889395331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A194268 n).toNat

end

end A386811.P1037328022889395331

namespace A386811

/-- `A008949(A194268(n))` -/
def P1037328022889395331.Spec : Prop :=
  ∀ n, P1037328022889395331.a n = A386811 n

end A386811

/-! ## A386811.P1151278683898467827

`A055248(A125201(n+1))`
-/

namespace A386811.P1151278683898467827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A125201 (n + 1)).toNat

end

end A386811.P1151278683898467827

namespace A386811

/-- `A055248(A125201(n+1))` -/
def P1151278683898467827.Spec : Prop :=
  ∀ n, P1151278683898467827.a n = A386811 n

end A386811

/-!
# A386812: a(n) = Sum_{k=0..n} binomial(5*n+1,k).

The programs for A386812, the canonical program `A386812.P15563584466199521631` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386812 has offset 0).

The definition of A386812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(5*n+1, #)]` (program `A386812.P15563584466199521631`, by `A386812.P15563584466199521631.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386812.P15563584466199521631

`∑{#}[n, C(5*n+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386812

/-- `∑{#}[n, C(5*n+1, #)]` -/
def P15563584466199521631.Spec : Prop :=
  ∀ n, (P15563584466199521631.a n : ℤ) = A386812 n

theorem P15563584466199521631.correct : P15563584466199521631.Spec := by
  intro n
  simp only [A386812]

end A386812

/-! ## A386812.P3198441674316289725

`A054143(A144312(n)+n)`
-/

namespace A386812.P3198441674316289725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A144312 n + (n : ℤ)).toNat

end

end A386812.P3198441674316289725

namespace A386812

/-- `A054143(A144312(n)+n)` -/
def P3198441674316289725.Spec : Prop :=
  ∀ n, P3198441674316289725.a n = A386812 n

end A386812

/-! ## A386812.P3772576354462492279

`A187926(A139277(n))`
-/

namespace A386812.P3772576354462492279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187926 (A139277 n).toNat

end

end A386812.P3772576354462492279

namespace A386812

/-- `A187926(A139277(n))` -/
def P3772576354462492279.Spec : Prop :=
  ∀ n, P3772576354462492279.a n = A386812 n

end A386812

/-! ## A386812.P16974254269924226862

`A187926(A139276(n)+A004442(2*n+1))`
-/

namespace A386812.P16974254269924226862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187926 (A139276 n + A004442 (2 * n + 1)).toNat

end

end A386812.P16974254269924226862

namespace A386812

/-- `A187926(A139276(n)+A004442(2*n+1))` -/
def P16974254269924226862.Spec : Prop :=
  ∀ n, P16974254269924226862.a n = A386812 n

end A386812

/-!
# A386815: Coefficients in q-expansion of E_2^4 * E_4^2, where E_2 and E_4 are respectively the Eisenstein series A006352 and A004009.

The programs for A386815, there is no canonical definition to state claims against.
-/

/-! ## A386815.P16148240576385703354

`∑{#}[n, A282208(#)*A282208(n-#)]`
-/

namespace A386815.P16148240576385703354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A282208 k * A282208 (n - k)

end

end A386815.P16148240576385703354

/-!
# A386818: Coefficients in q-expansion of E_2^2 * E_6^2, where E_2 and E_6 are respectively the Eisenstein series A006352 and A013973.

The programs for A386818, there is no canonical definition to state claims against.
-/

/-! ## A386818.P16299099740989805288

`∑{#}[n, A282096(#)*A282096(n-#)]`
-/

namespace A386818.P16299099740989805288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A282096 k * A282096 (n - k)

end

end A386818.P16299099740989805288

/-!
# A386819: Indices of records in A389240.

The programs for A386819, there is no canonical definition to state claims against.
-/

/-! ## A386819.P18030012456441147555

`A381432(∪[A115599(n+1), A283642(n)])`
-/

namespace A386819.P18030012456441147555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381432 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A386819.P18030012456441147555

/-!
# A386821: a(n) = Sum_{k=0..n} (-1)^k * binomial(4*n-k+1,n-k).

The programs for A386821, the canonical program `A386821.P1606288717783610993` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386821 has offset 0).

The definition of A386821 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(4*n-#+1, n-#)]` (program `A386821.P1606288717783610993`, by `A386821.P1606288717783610993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386821.P1018268719549457386

`∑{#}[n, (-2)^#*C(4*n+2, n-#)]`
-/

namespace A386821.P1018268719549457386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-2) ^ k * (Nat.choose (4 * n + 2) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A386821.P1018268719549457386

namespace A386821

/-- `∑{#}[n, (-2)^#*C(4*n+2, n-#)]` -/
def P1018268719549457386.Spec : Prop :=
  ∀ n, P1018268719549457386.a n = A386821 n

end A386821

/-! ## A386821.P14139844670577132551

`∑{#}[floor(n/2), C(4*n-2*#, n-2*#)]`
-/

namespace A386821.P14139844670577132551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((4 * n : ℤ) - (2 * k : ℤ)).toNat ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A386821.P14139844670577132551

namespace A386821

/-- `∑{#}[floor(n/2), C(4*n-2*#, n-2*#)]` -/
def P14139844670577132551.Spec : Prop :=
  ∀ n, (P14139844670577132551.a n : ℤ) = A386821 n

end A386821

/-! ## A386821.P1606288717783610993

`∑{#}[n, (-1)^#*C(4*n-#+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386821

/-- `∑{#}[n, (-1)^#*C(4*n-#+1, n-#)]` -/
def P1606288717783610993.Spec : Prop :=
  ∀ n, P1606288717783610993.a n = A386821 n

theorem P1606288717783610993.correct : P1606288717783610993.Spec := by
  intro n
  simp only [A386821]

end A386821

/-! ## A386821.P9301112297517741795

`A109244(A062708(n+1))`
-/

namespace A386821.P9301112297517741795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A062708 (n + 1)).toNat

end

end A386821.P9301112297517741795

namespace A386821

/-- `A109244(A062708(n+1))` -/
def P9301112297517741795.Spec : Prop :=
  ∀ n, P9301112297517741795.a n = A386821 n

end A386821

/-! ## A386821.P1292046399646061399

`A035317(A139276(n))`
-/

namespace A386821.P1292046399646061399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A139276 n).toNat

end

end A386821.P1292046399646061399

namespace A386821

/-- `A035317(A139276(n))` -/
def P1292046399646061399.Spec : Prop :=
  ∀ n, P1292046399646061399.a n = A386821 n

end A386821

/-!
# A386822: Irregular table T(n,k) = Product_{j = 1..k} prime(j)^(n-j+1), n >= 0, k = 1..n.

The programs for A386822, the canonical program `A386822.P5436816925973816835` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386822 has offset 0).

The definition of A386822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386822.P5436816925973816835

`A362227(A023758(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A386822

/-- `A362227(A023758(n+1))` -/
def P5436816925973816835.Spec : Prop :=
  ∀ n, P5436816925973816835.a n = A386822 n

theorem P5436816925973816835.correct : P5436816925973816835.Spec := by
  intro n
  simp only [A386822]

end A386822

/-! ## A386822.P4036287891134184772

`A278236(A051949(n))`
-/

namespace A386822.P4036287891134184772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (A051949 n).toNat

end

end A386822.P4036287891134184772

namespace A386822

/-- `A278236(A051949(n))` -/
def P4036287891134184772.Spec : Prop :=
  ∀ n, P4036287891134184772.a n = A386822 n

end A386822

/-! ## A386822.P752109069644936812

`filter[A387465(n), A322585(#)]`
-/

namespace A386822.P752109069644936812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A386822.P752109069644936812

namespace A386822

/-- `filter[A387465(n), A322585(#)]` -/
def P752109069644936812.Spec : Prop :=
  ∀ n, P752109069644936812.a n = A386822 n

end A386822

/-! ## A386822.P5139827630388156363

`filter[A387465(n), A356162(#)]`
-/

namespace A386822.P5139827630388156363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356162 (f1 j).toNat = 1) n)

end

end A386822.P5139827630388156363

namespace A386822

/-- `filter[A387465(n), A356162(#)]` -/
def P5139827630388156363.Spec : Prop :=
  ∀ n, P5139827630388156363.a n = A386822 n

end A386822

/-! ## A386822.P14295363106675581913

`filter[A387465(n), A137794(#)]`
-/

namespace A386822.P14295363106675581913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A386822.P14295363106675581913

namespace A386822

/-- `filter[A387465(n), A137794(#)]` -/
def P14295363106675581913.Spec : Prop :=
  ∀ n, P14295363106675581913.a n = A386822 n

end A386822

/-!
# A386825: Triangle read by rows: T(n,k) = 3^(n-k)*C(2*n,n-k).

The programs for A386825, the canonical program `A386825.P11810092836086313672` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386825 has offset 0).

The definition of A386825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386825.P11810092836086313672

`3^(row(n)-col(n))*C(2*row(n), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386825

/-- `3^(row(n)-col(n))*C(2*row(n), row(n)-col(n))` -/
def P11810092836086313672.Spec : Prop :=
  ∀ n, P11810092836086313672.a n = (A386825 n : ℚ)

end A386825

/-! ## A386825.P13800824448105910529

`A094527(n)*A140303(n)`
-/

namespace A386825.P13800824448105910529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A140303 n

end

end A386825.P13800824448105910529

namespace A386825

/-- `A094527(n)*A140303(n)` -/
def P13800824448105910529.Spec : Prop :=
  ∀ n, P13800824448105910529.a n = A386825 n

end A386825

/-!
# A386826: a(n) = Sum_{k=0..n} 3^(n-k)*C(2*n,n-k).

The programs for A386826, the canonical program `A386826.P7793213875188935873` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386826 has offset 0).

The definition of A386826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386826.P7793213875188935873

`∑{#}[n, 3^(n-#)*C(2*n, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386826

/-- `∑{#}[n, 3^(n-#)*C(2*n, n-#)]` -/
def P7793213875188935873.Spec : Prop :=
  ∀ n, P7793213875188935873.a n = (A386826 n : ℚ)

end A386826

/-!
# A386829: a(n) = Sum_{k=0..n} 3^k * 2^(n-k) * binomial(2*n+1,k) * binomial(2*n-k,n-k).

The programs for A386829, the canonical program `A386829.P4470116171682074937` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386829 has offset 0).

The definition of A386829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386829.P4470116171682074937

`∑{#}[n, 5^#*3^(n-#)*C(n+#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386829

/-- `∑{#}[n, 5^#*3^(n-#)*C(n+#, #)]` -/
def P4470116171682074937.Spec : Prop :=
  ∀ n, P4470116171682074937.a n = (A386829 n : ℚ)

end A386829

/-! ## A386829.P16162932440699652554

`∑{#}[n, 3^#*2^(n-#)*C(2*n+1, #)*C(2*n-#, n)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386829.P16162932440699652554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * n + 1) k : ℚ) * (Nat.choose ((2 * n : ℤ) - (k : ℤ)).toNat n : ℚ)

end

end A386829.P16162932440699652554

namespace A386829

/-- `∑{#}[n, 3^#*2^(n-#)*C(2*n+1, #)*C(2*n-#, n)]` -/
def P16162932440699652554.Spec : Prop :=
  ∀ n, P16162932440699652554.a n = (A386829 n : ℚ)

end A386829

/-! ## A386829.P3074642959412334118

`∑{#}[n, 3^#*2^(n-#)*C(2*n+1, #)*C(2*n-#, n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386829.P3074642959412334118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * n + 1) k : ℚ) * (Nat.choose ((2 * n : ℤ) - (k : ℤ)).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A386829.P3074642959412334118

namespace A386829

/-- `∑{#}[n, 3^#*2^(n-#)*C(2*n+1, #)*C(2*n-#, n-#)]` -/
def P3074642959412334118.Spec : Prop :=
  ∀ n, P3074642959412334118.a n = (A386829 n : ℚ)

end A386829

/-!
# A386830: a(n) = Sum_{k=0..n} 3^k * 2^(n-k) * binomial(3*n+1,k) * binomial(3*n-k,n-k).

The programs for A386830, the canonical program `A386830.P4653326641891199656` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386830 has offset 0).

The definition of A386830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386830.P4653326641891199656

`∑{#}[n, 5^#*3^(n-#)*C(2*n+#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386830

/-- `∑{#}[n, 5^#*3^(n-#)*C(2*n+#, #)]` -/
def P4653326641891199656.Spec : Prop :=
  ∀ n, P4653326641891199656.a n = (A386830 n : ℚ)

end A386830

/-! ## A386830.P10297020682186290562

`∑{#}[n, 3^#*2^(n-#)*C(3*n+1, #)*C(3*n-#, n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386830.P10297020682186290562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (3 * n + 1) k : ℚ) * (Nat.choose ((3 * n : ℤ) - (k : ℤ)).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A386830.P10297020682186290562

namespace A386830

/-- `∑{#}[n, 3^#*2^(n-#)*C(3*n+1, #)*C(3*n-#, n-#)]` -/
def P10297020682186290562.Spec : Prop :=
  ∀ n, P10297020682186290562.a n = (A386830 n : ℚ)

end A386830

/-!
# A386831: a(n) = Sum_{k=0..n} 3^k * 2^(n-k) * binomial(4*n+1,k) * binomial(4*n-k,n-k).

The programs for A386831, the canonical program `A386831.P14965420801119423061` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386831 has offset 0).

The definition of A386831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386831.P14965420801119423061

`∑{#}[n, 5^#*3^(n-#)*C(3*n+#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386831

/-- `∑{#}[n, 5^#*3^(n-#)*C(3*n+#, #)]` -/
def P14965420801119423061.Spec : Prop :=
  ∀ n, P14965420801119423061.a n = (A386831 n : ℚ)

end A386831

/-! ## A386831.P10835846763659729026

`∑{#}[n, 3^#*2^(n-#)*C(4*n+1, #)*C(4*n-#, n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386831.P10835846763659729026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (4 * n + 1) k : ℚ) * (Nat.choose ((4 * n : ℤ) - (k : ℤ)).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A386831.P10835846763659729026

namespace A386831

/-- `∑{#}[n, 3^#*2^(n-#)*C(4*n+1, #)*C(4*n-#, n-#)]` -/
def P10835846763659729026.Spec : Prop :=
  ∀ n, P10835846763659729026.a n = (A386831 n : ℚ)

end A386831

/-!
# A386832: Triangle read by rows: T(n,k) is the number of the sets of partitions of n with length k grouped by largest part.

The programs for A386832, the canonical program `A386832.P17191505806885496330` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386832 has offset 1).

The definition of A386832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386832.P17191505806885496330

`ceil(A077028(n)/A002260(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A386832

/-- `ceil(A077028(n)/A002260(n+1))` -/
def P17191505806885496330.Spec : Prop :=
  ∀ n, P17191505806885496330.a n = A386832 (n + 1)

theorem P17191505806885496330.correct : P17191505806885496330.Spec := by
  intro n
  simp only [A386832, Nat.add_sub_cancel]

end A386832

/-! ## A386832.P10393578558370685569

`A110592(A097615(n))`
-/

namespace A386832.P10393578558370685569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A097615 n).toNat

end

end A386832.P10393578558370685569

namespace A386832

/-- `A110592(A097615(n))` -/
def P10393578558370685569.Spec : Prop :=
  ∀ n, P10393578558370685569.a n = A386832 (n + 1)

end A386832

/-! ## A386832.P3001706839547109630

`A004736(n+1)-A176808(n+1)`
-/

namespace A386832.P3001706839547109630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A176808 (n + 1)

end

end A386832.P3001706839547109630

namespace A386832

/-- `A004736(n+1)-A176808(n+1)` -/
def P3001706839547109630.Spec : Prop :=
  ∀ n, P3001706839547109630.a n = A386832 (n + 1)

end A386832

/-! ## A386832.P9943292161470167737

`A373214(n+1)-A176808(n+1)`
-/

namespace A386832.P9943292161470167737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373214 (n + 1) - A176808 (n + 1)

end

end A386832.P9943292161470167737

namespace A386832

/-- `A373214(n+1)-A176808(n+1)` -/
def P9943292161470167737.Spec : Prop :=
  ∀ n, P9943292161470167737.a n = A386832 (n + 1)

end A386832

/-! ## A386832.P16773451461797475187

`A081604(A048004(n)%A371793(n+1))`
-/

namespace A386832.P16773451461797475187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Int.tmod (A048004 n) (A371793 (n + 1))).toNat

end

end A386832.P16773451461797475187

namespace A386832

/-- `A081604(A048004(n)%A371793(n+1))` -/
def P16773451461797475187.Spec : Prop :=
  ∀ n, P16773451461797475187.a n = A386832 (n + 1)

end A386832

/-!
# A386833: a(n) = Sum_{k=0..n} binomial(3*n+1,k) * binomial(3*n-k-1,n-k).

The programs for A386833, the canonical program `A386833.P13189455435912655243` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386833 has offset 0).

The definition of A386833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386833.P13189455435912655243

`∑{#}[n, 2^#*(-1)^(n-#)*(n-#+1)*C(3*n+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386833

/-- `∑{#}[n, 2^#*(-1)^(n-#)*(n-#+1)*C(3*n+1, #)]` -/
def P13189455435912655243.Spec : Prop :=
  ∀ n, P13189455435912655243.a n = (A386833 n : ℚ)

end A386833

/-! ## A386833.P18070164075937945928

`A159856(A062728(n))`
-/

namespace A386833.P18070164075937945928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159856 (A062728 n).toNat

end

end A386833.P18070164075937945928

namespace A386833

/-- `A159856(A062728(n))` -/
def P18070164075937945928.Spec : Prop :=
  ∀ n, P18070164075937945928.a n = A386833 n

end A386833

/-!
# A386834: a(n) = Sum_{k=0..n} binomial(4*n+1,k) * binomial(4*n-k-1,n-k).

The programs for A386834, the canonical program `A386834.P3968819118237009971` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386834 has offset 0).

The definition of A386834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386834.P3968819118237009971

`∑{#}[n, 2^#*(-1)^(n-#)*(n-#+1)*C(4*n+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386834

/-- `∑{#}[n, 2^#*(-1)^(n-#)*(n-#+1)*C(4*n+1, #)]` -/
def P3968819118237009971.Spec : Prop :=
  ∀ n, P3968819118237009971.a n = (A386834 n : ℚ)

end A386834

/-!
# A386835: a(n) = Sum_{k=0..n} binomial(2*n+2,k) * binomial(2*n-k-1,n-k).

The programs for A386835, the canonical program `A386835.P7962725113671238688` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386835 has offset 0).

The definition of A386835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386835.P7962725113671238688

`∑{#}[n, 2^#*(-1)^(n-#)*C(2*n+2, #)*C(n-#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386835

/-- `∑{#}[n, 2^#*(-1)^(n-#)*C(2*n+2, #)*C(n-#+2, n-#)]` -/
def P7962725113671238688.Spec : Prop :=
  ∀ n, P7962725113671238688.a n = (A386835 n : ℚ)

end A386835

/-!
# A386836: a(n) = Sum_{k=0..n} binomial(3*n+2,k) * binomial(3*n-k-1,n-k).

The programs for A386836, the canonical program `A386836.P3407203340415340169` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386836 has offset 0).

The definition of A386836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386836.P3407203340415340169

`∑{#}[n, 2^#*(-1)^(n-#)*C(3*n+2, #)*C(n-#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386836

/-- `∑{#}[n, 2^#*(-1)^(n-#)*C(3*n+2, #)*C(n-#+2, n-#)]` -/
def P3407203340415340169.Spec : Prop :=
  ∀ n, P3407203340415340169.a n = (A386836 n : ℚ)

end A386836

/-!
# A386837: a(n) = Sum_{k=0..n} binomial(4*n+2,k) * binomial(4*n-k-1,n-k).

The programs for A386837, the canonical program `A386837.P2616231622898490102` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386837 has offset 0).

The definition of A386837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386837.P2616231622898490102

`∑{#}[n, 2^#*(-1)^(n-#)*C(4*n+2, #)*C(n-#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386837

/-- `∑{#}[n, 2^#*(-1)^(n-#)*C(4*n+2, #)*C(n-#+2, n-#)]` -/
def P2616231622898490102.Spec : Prop :=
  ∀ n, P2616231622898490102.a n = (A386837 n : ℚ)

end A386837

/-!
# A386838: Minimum number of unit squares that a straight line drawn from (0,0) to (x,y) passes through on the square lattice where x^2 + y^2 = A001481(n). If A001481(n) can be written as a sum of two squares in two or more ways, x and y are chosen such that a(n) is the least value.

The programs for A386838, there is no canonical definition to state claims against.
-/

/-! ## A386838.P8959590290764768571

`lcm(A283304(n+1), A283308(A341787(n+2)))`
-/

namespace A386838.P8959590290764768571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A283304 (n + 1)) (A283308 (A341787 (n + 2)).toNat)

end

end A386838.P8959590290764768571

/-! ## A386838.P15818332693519291147

`A060130(A359082(3*n+1)%A124343(n+1))`
-/

namespace A386838.P15818332693519291147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (Int.tmod (A359082 (3 * n + 1)) (A124343 (n + 1))).toNat

end

end A386838.P15818332693519291147

/-!
# A386839: a(n) = Sum_{k=0..n} binomial(3*n+2*k+1,n-k).

The programs for A386839, the canonical program `A386839.P3654752627634207328` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386839 has offset 0).

The definition of A386839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(3*n+2*#+1, n-#)]` (program `A386839.P3654752627634207328`, by `A386839.P3654752627634207328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386839.P3654752627634207328

`∑{#}[n, C(3*n+2*#+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386839

/-- `∑{#}[n, C(3*n+2*#+1, n-#)]` -/
def P3654752627634207328.Spec : Prop :=
  ∀ n, (P3654752627634207328.a n : ℤ) = A386839 n

theorem P3654752627634207328.correct : P3654752627634207328.Spec := by
  intro n
  simp only [A386839]

end A386839

/-!
# A386840: Number of fundamental one-dimensional discrete statistical models with rational maximum likelihood estimator supported on n states and of degree 2n-6.

The programs for A386840, there is no canonical definition to state claims against.
-/

/-! ## A386840.P13901200737307081683

`A324802(A007055(n+1))`
-/

namespace A386840.P13901200737307081683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324802 (A007055 (n + 1)).toNat

end

end A386840.P13901200737307081683

/-! ## A386840.P15839351447783624226

`A324802(4*A369704(n))`
-/

namespace A386840.P15839351447783624226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324802 (4 * A369704 n).toNat

end

end A386840.P15839351447783624226

/-!
# A386843: a(n) = Sum_{k=0..n} binomial(2*n+2,k) * binomial(2*n-k,n-k).

The programs for A386843, the canonical program `A386843.P16730996861688234090` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386843 has offset 0).

The definition of A386843 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*n+2, #)*C(2*n-#, n)]` (program `A386843.P16730996861688234090`, by `A386843.P16730996861688234090.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386843.P16730996861688234090

`∑{#}[n, C(2*n+2, #)*C(2*n-#, n)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386843

/-- `∑{#}[n, C(2*n+2, #)*C(2*n-#, n)]` -/
def P16730996861688234090.Spec : Prop :=
  ∀ n, (P16730996861688234090.a n : ℤ) = A386843 n

theorem P16730996861688234090.correct : P16730996861688234090.Spec := by
  intro n
  simp only [A386843]

end A386843

/-! ## A386843.P17107121061521966711

`∑{#}[n, C(2*n+2, #)*C(2*n-#, n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386843.P17107121061521966711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * n + 2) k * Nat.choose ((2 * n : ℤ) - (k : ℤ)).toNat ((n : ℤ) - (k : ℤ)).toNat

end

end A386843.P17107121061521966711

namespace A386843

/-- `∑{#}[n, C(2*n+2, #)*C(2*n-#, n-#)]` -/
def P17107121061521966711.Spec : Prop :=
  ∀ n, (P17107121061521966711.a n : ℤ) = A386843 n

end A386843

/-! ## A386843.P18321489374068669319

`(n+1)*A062992(n)`
-/

namespace A386843.P18321489374068669319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062992 n

end

end A386843.P18321489374068669319

namespace A386843

/-- `(n+1)*A062992(n)` -/
def P18321489374068669319.Spec : Prop :=
  ∀ n, P18321489374068669319.a n = A386843 n

end A386843

/-! ## A386843.P4085511049736780772

`(n+1)*record[A115193(n)]`
-/

namespace A386843.P4085511049736780772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386843.P4085511049736780772

namespace A386843

/-- `(n+1)*record[A115193(n)]` -/
def P4085511049736780772.Spec : Prop :=
  ∀ n, P4085511049736780772.a n = A386843 n

end A386843

/-! ## A386843.P10358601052630992030

`(n+1)*A064062(n+1)`
-/

namespace A386843.P10358601052630992030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064062 (n + 1)

end

end A386843.P10358601052630992030

namespace A386843

/-- `(n+1)*A064062(n+1)` -/
def P10358601052630992030.Spec : Prop :=
  ∀ n, P10358601052630992030.a n = A386843 n

end A386843

/-! ## A386843.P16390820963625407543

`(n+1)*A115193(∑[n+1])`
-/

namespace A386843.P16390820963625407543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A115193 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386843.P16390820963625407543

namespace A386843

/-- `(n+1)*A115193(∑[n+1])` -/
def P16390820963625407543.Spec : Prop :=
  ∀ n, P16390820963625407543.a n = A386843 n

end A386843

/-! ## A386843.P4351649196001330756

`A116881(n+1)-A119259(n+1)`
-/

namespace A386843.P4351649196001330756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116881 (n + 1) - A119259 (n + 1)

end

end A386843.P4351649196001330756

namespace A386843

/-- `A116881(n+1)-A119259(n+1)` -/
def P4351649196001330756.Spec : Prop :=
  ∀ n, P4351649196001330756.a n = A386843 n

end A386843

/-! ## A386843.P16864657962694889382

`A207327(2*(n+1)²)`
-/

namespace A386843.P16864657962694889382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207327 (2 * (n + 1) ^ 2)

end

end A386843.P16864657962694889382

namespace A386843

/-- `A207327(2*(n+1)²)` -/
def P16864657962694889382.Spec : Prop :=
  ∀ n, P16864657962694889382.a n = A386843 n

end A386843

/-! ## A386843.P18260019261134557053

`(n+1)*A116880(∑[n+1])`
-/

namespace A386843.P18260019261134557053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A116880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386843.P18260019261134557053

namespace A386843

/-- `(n+1)*A116880(∑[n+1])` -/
def P18260019261134557053.Spec : Prop :=
  ∀ n, P18260019261134557053.a n = A386843 n

end A386843

/-!
# A386844: a(n) = Sum_{k=0..n} binomial(3*n+2,k) * binomial(3*n-k,n-k).

The programs for A386844, the canonical program `A386844.P7971572578763651495` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386844 has offset 0).

The definition of A386844 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(3*n+2, #)*C(3*n-#, n-#)]` (program `A386844.P7971572578763651495`, by `A386844.P7971572578763651495.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386844.P15393247390320190588

`∑{#}[n, 2^#*(n-#+1)*C(2*n+#, #)]`
-/

namespace A386844.P15393247390320190588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 ^ k : ℤ) * ((n : ℤ) - (k : ℤ) + 1) * (Nat.choose (2 * n + k) k : ℤ)

end

end A386844.P15393247390320190588

namespace A386844

/-- `∑{#}[n, 2^#*(n-#+1)*C(2*n+#, #)]` -/
def P15393247390320190588.Spec : Prop :=
  ∀ n, P15393247390320190588.a n = A386844 n

end A386844

/-! ## A386844.P7971572578763651495

`∑{#}[n, C(3*n+2, #)*C(3*n-#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386844

/-- `∑{#}[n, C(3*n+2, #)*C(3*n-#, n-#)]` -/
def P7971572578763651495.Spec : Prop :=
  ∀ n, (P7971572578763651495.a n : ℤ) = A386844 n

theorem P7971572578763651495.correct : P7971572578763651495.Spec := by
  intro n
  simp only [A386844]

end A386844

/-!
# A386845: a(n) = Sum_{k=0..n} binomial(4*n+2,k) * binomial(4*n-k,n-k).

The programs for A386845, the canonical program `A386845.P9652281223840926024` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386845 has offset 0).

The definition of A386845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+2, #)*C(4*n-#, n-#)]` (program `A386845.P9652281223840926024`, by `A386845.P9652281223840926024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386845.P17960811802194050725

`∑{#}[n, 2^#*(n-#+1)*C(3*n+#, #)]`
-/

namespace A386845.P17960811802194050725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 ^ k : ℤ) * ((n : ℤ) - (k : ℤ) + 1) * (Nat.choose (3 * n + k) k : ℤ)

end

end A386845.P17960811802194050725

namespace A386845

/-- `∑{#}[n, 2^#*(n-#+1)*C(3*n+#, #)]` -/
def P17960811802194050725.Spec : Prop :=
  ∀ n, P17960811802194050725.a n = A386845 n

end A386845

/-! ## A386845.P9652281223840926024

`∑{#}[n, C(4*n+2, #)*C(4*n-#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386845

/-- `∑{#}[n, C(4*n+2, #)*C(4*n-#, n-#)]` -/
def P9652281223840926024.Spec : Prop :=
  ∀ n, (P9652281223840926024.a n : ℤ) = A386845 n

theorem P9652281223840926024.correct : P9652281223840926024.Spec := by
  intro n
  simp only [A386845]

end A386845

/-!
# A386846: a(n) is the number of sets of distinct four-cuboid combinations that fill an n X n X n cube excluding combinations that contain strict cuboids.

The programs for A386846, there is no canonical definition to state claims against.
-/

/-! ## A386846.P13675354832801149444

`A386848(A141214(n+1))`
-/

namespace A386846.P13675354832801149444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386848 (A141214 (n + 1)).toNat

end

end A386846.P13675354832801149444

/-! ## A386846.P16906040765788554099

`A386848(A000217(n+3)+n+1)`
-/

namespace A386846.P16906040765788554099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386848 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A386846.P16906040765788554099

/-! ## A386846.P6260942675844050443

`A386848(lt[A208510(n+3), A008284(n+1)])`
-/

namespace A386846.P6260942675844050443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386848 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A386846.P6260942675844050443

/-! ## A386846.P6265133431002525353

`A334861(∪[A113734(n+1), A290576(n)])`
-/

namespace A386846.P6265133431002525353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290576 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A386846.P6265133431002525353

/-!
# A386848: Array read by descending antidiagonals: T(n,k) is the number of ways to partition n X n X n cube into k noncongruent cuboids excluding strict cuboids.

The programs for A386848, there is no canonical definition to state claims against.
-/

/-! ## A386848.P491867392641238159

`and(A124747(n), A181377(A124781(n)))`
-/

namespace A386848.P491867392641238159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124747 n) (A181377 (A124781 n).toNat)

end

end A386848.P491867392641238159

/-! ## A386848.P8440208103202124619

`A035162(A113369(n))`
-/

namespace A386848.P8440208103202124619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (A113369 n).toNat

end

end A386848.P8440208103202124619

/-! ## A386848.P16792264237020877014

`1-A049347(A338275(3*n+4))`
-/

namespace A386848.P16792264237020877014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049347 (A338275 (3 * n + 4)).toNat

end

end A386848.P16792264237020877014

/-! ## A386848.P12386356674280528328

`A350532(A324563(n+1))`
-/

namespace A386848.P12386356674280528328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350532 (A324563 (n + 1)).toNat

end

end A386848.P12386356674280528328

/-! ## A386848.P10576285110995742070

`A124788(lt[n, A304818(3*(n+1))])`
-/

namespace A386848.P10576285110995742070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A386848.P10576285110995742070

/-!
# A386851: a(n) = floor(5*n^2/6).

The programs for A386851, the canonical program `A386851.P14240077391279146294` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386851 has offset 1).

The definition of A386851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*(n+1)²/6)` (program `A386851.P14240077391279146294`, by `A386851.P14240077391279146294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386851.P14240077391279146294

`floor(5*(n+1)²/6)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386851

/-- `floor(5*(n+1)²/6)` -/
def P14240077391279146294.Spec : Prop :=
  ∀ n, P14240077391279146294.a n = A386851 (n + 1)

theorem P14240077391279146294.correct : P14240077391279146294.Spec := by
  intro n
  simp only [A386851, Nat.add_sub_cancel]

end A386851

/-! ## A386851.P461291007601352881

`ogf((3x+4x^2+3x^3)/(1-x-x^2+x^4+x^5-x^6))`
-/

namespace A386851.P461291007601352881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 4, 3] [1, -1, -1, 0, 1, 1, -1] n

end

end A386851.P461291007601352881

namespace A386851

/-- `ogf((3x+4x^2+3x^3)/(1-x-x^2+x^4+x^5-x^6))` -/
def P461291007601352881.Spec : Prop :=
  ∀ n, P461291007601352881.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P8758644605112396257

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=0, a(1)=3, a(2)=7, a(3)=13, a(4)=20, a(5)=30`
-/

namespace A386851.P8758644605112396257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 7, 13, 20, 30] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5) + a (n - 6)

end

end A386851.P8758644605112396257

namespace A386851

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P8758644605112396257.Spec : Prop :=
  ∀ n, P8758644605112396257.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P7091722832168800937

`∑[∑[xor(2, a(n-3))]]` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A386851.P7091722832168800937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1] fun n f2 =>
  Nat.xor 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386851.P7091722832168800937

namespace A386851

/-- `∑[∑[xor(2, a(n-3))]]` -/
def P7091722832168800937.Spec : Prop :=
  ∀ n, (P7091722832168800937.a n : ℤ) = A386851 (n + 1)

end A386851

/-! ## A386851.P269482279659815023

`ceil(5/(n+1)*C(n+2, 3))`
-/

namespace A386851.P269482279659815023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 / (n + 1 : ℚ) * (Nat.choose (n + 2) 3 : ℚ)⌉

end

end A386851.P269482279659815023

namespace A386851

/-- `ceil(5/(n+1)*C(n+2, 3))` -/
def P269482279659815023.Spec : Prop :=
  ∀ n, P269482279659815023.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P1659313422032808022

`∑[floor(∑[floor(a(n-2))]/3)]` with `a(0)=2, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A386851.P1659313422032808022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386851.P1659313422032808022

namespace A386851

/-- `∑[floor(∑[floor(a(n-2))]/3)]` -/
def P1659313422032808022.Spec : Prop :=
  ∀ n, P1659313422032808022.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P16084446834319416437

`(n+1)²-A008747(n)`
-/

namespace A386851.P16084446834319416437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A008747 n

end

end A386851.P16084446834319416437

namespace A386851

/-- `(n+1)²-A008747(n)` -/
def P16084446834319416437.Spec : Prop :=
  ∀ n, P16084446834319416437.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P12147236283851735944

`(n+1)²-∑[A051274(n)]`
-/

namespace A386851.P12147236283851735944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386851.P12147236283851735944

namespace A386851

/-- `(n+1)²-∑[A051274(n)]` -/
def P12147236283851735944.Spec : Prop :=
  ∀ n, P12147236283851735944.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P16457889953173599966

`(n+1)²-Δ[A175812(n)]`
-/

namespace A386851.P16457889953173599966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A386851.P16457889953173599966

namespace A386851

/-- `(n+1)²-Δ[A175812(n)]` -/
def P16457889953173599966.Spec : Prop :=
  ∀ n, P16457889953173599966.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P13686897212330471994

`A211784(n+1)-(n+1)²`
-/

namespace A386851.P13686897212330471994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211784 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A386851.P13686897212330471994

namespace A386851

/-- `A211784(n+1)-(n+1)²` -/
def P13686897212330471994.Spec : Prop :=
  ∀ n, P13686897212330471994.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P8064064969588989803

`A156859(n)-A130518(n)`
-/

namespace A386851.P8064064969588989803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156859 n - A130518 n

end

end A386851.P8064064969588989803

namespace A386851

/-- `A156859(n)-A130518(n)` -/
def P8064064969588989803.Spec : Prop :=
  ∀ n, P8064064969588989803.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P6244865878207167244

`A115006(n)-A242771(n+1)`
-/

namespace A386851.P6244865878207167244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115006 n - A242771 (n + 1)

end

end A386851.P6244865878207167244

namespace A386851

/-- `A115006(n)-A242771(n+1)` -/
def P6244865878207167244.Spec : Prop :=
  ∀ n, P6244865878207167244.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P10287402922506394762

`A322598(n+1)-A060022(n)`
-/

namespace A386851.P10287402922506394762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322598 (n + 1) - A060022 n

end

end A386851.P10287402922506394762

namespace A386851

/-- `A322598(n+1)-A060022(n)` -/
def P10287402922506394762.Spec : Prop :=
  ∀ n, P10287402922506394762.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P4658299804032704132

`A211784(n+1)%A162395(n+1)`
-/

namespace A386851.P4658299804032704132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211784 (n + 1)) (A162395 (n + 1))

end

end A386851.P4658299804032704132

namespace A386851

/-- `A211784(n+1)%A162395(n+1)` -/
def P4658299804032704132.Spec : Prop :=
  ∀ n, P4658299804032704132.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P9291436545364575996

`A000217(n+1)+A000217(n)-A008747(n)`
-/

namespace A386851.P9291436545364575996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A008747 n)

end

end A386851.P9291436545364575996

namespace A386851

/-- `A000217(n+1)+A000217(n)-A008747(n)` -/
def P9291436545364575996.Spec : Prop :=
  ∀ n, P9291436545364575996.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P5026899795897606457

`A007590(n+1)+A000212(n+1)`
-/

namespace A386851.P5026899795897606457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 1) + A000212 (n + 1)

end

end A386851.P5026899795897606457

namespace A386851

/-- `A007590(n+1)+A000212(n+1)` -/
def P5026899795897606457.Spec : Prop :=
  ∀ n, P5026899795897606457.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P5829446325273338671

`A242477(n+1)+A069905(n+1)`
-/

namespace A386851.P5829446325273338671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 (n + 1) + A069905 (n + 1)

end

end A386851.P5829446325273338671

namespace A386851

/-- `A242477(n+1)+A069905(n+1)` -/
def P5829446325273338671.Spec : Prop :=
  ∀ n, P5829446325273338671.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P9300208821446358553

`A249547(n+1)-A002789(n+1)`
-/

namespace A386851.P9300208821446358553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 (n + 1) - A002789 (n + 1)

end

end A386851.P9300208821446358553

namespace A386851

/-- `A249547(n+1)-A002789(n+1)` -/
def P9300208821446358553.Spec : Prop :=
  ∀ n, P9300208821446358553.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P5068763169377922506

`A397972(n+1)+A156859(n)-(n+1)²`
-/

namespace A386851.P5068763169377922506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 (n + 1) + (A156859 n - ((n + 1) ^ 2 : ℤ))

end

end A386851.P5068763169377922506

namespace A386851

/-- `A397972(n+1)+A156859(n)-(n+1)²` -/
def P5068763169377922506.Spec : Prop :=
  ∀ n, P5068763169377922506.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P4640833507196538876

`A393678(n+1)+A393678(n)-A393680(n)`
-/

namespace A386851.P4640833507196538876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393678 (n + 1) + (A393678 n - A393680 n)

end

end A386851.P4640833507196538876

namespace A386851

/-- `A393678(n+1)+A393678(n)-A393680(n)` -/
def P4640833507196538876.Spec : Prop :=
  ∀ n, P4640833507196538876.a n = A386851 (n + 1)

end A386851

/-!
# A386856: Least k such that A056100(k) = 2*n+1 or -1 if no such k exists.

The programs for A386856, there is no canonical definition to state claims against.
-/

/-! ## A386856.P2986944959018147650

`A386871(Δ[n²])`
-/

namespace A386856.P2986944959018147650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386871 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A386856.P2986944959018147650

/-!
# A386857: Numbers k such that both 9*2^k - 1 and 9*2^k + 1 are prime.

The programs for A386857, there is no canonical definition to state claims against.
-/

/-! ## A386857.P13340393311829791992

`A401006(A310249(n))`
-/

namespace A386857.P13340393311829791992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401006 (A310249 n).toNat

end

end A386857.P13340393311829791992

/-!
# A386858: a(n) = floor(5*n^2/8).

The programs for A386858, the canonical program `A386858.P9817683384981520497` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386858 has offset 1).

The definition of A386858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*(n+1)²/8)` (program `A386858.P9817683384981520497`, by `A386858.P9817683384981520497.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386858.P9817683384981520497

`floor(5*(n+1)²/8)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386858

/-- `floor(5*(n+1)²/8)` -/
def P9817683384981520497.Spec : Prop :=
  ∀ n, P9817683384981520497.a n = A386858 (n + 1)

theorem P9817683384981520497.correct : P9817683384981520497.Spec := by
  intro n
  simp only [A386858, Nat.add_sub_cancel]

end A386858

/-! ## A386858.P7405786815342673071

`ogf((2x+x^2+2x^3)/(1-2x+x^2-x^4+2x^5-x^6))`
-/

namespace A386858.P7405786815342673071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 2] [1, -2, 1, 0, -1, 2, -1] n

end

end A386858.P7405786815342673071

namespace A386858

/-- `ogf((2x+x^2+2x^3)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P7405786815342673071.Spec : Prop :=
  ∀ n, P7405786815342673071.a n = A386858 (n + 1)

end A386858

/-! ## A386858.P6668416802495773167

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=10, a(4)=15, a(5)=22`
-/

namespace A386858.P6668416802495773167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 10, 15, 22] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4) - 2 * a (n - 5) + a (n - 6)

end

end A386858.P6668416802495773167

namespace A386858

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P6668416802495773167.Spec : Prop :=
  ∀ n, P6668416802495773167.a n = A386858 (n + 1)

end A386858

/-! ## A386858.P4050341152253082573

`∑[∑[log2(4/gcd(4, n))]]`
-/

namespace A386858.P4050341152253082573
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (4 / (Nat.gcd 4 n : ℚ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386858.P4050341152253082573

namespace A386858

/-- `∑[∑[log2(4/gcd(4, n))]]` -/
def P4050341152253082573.Spec : Prop :=
  ∀ n, P4050341152253082573.a n = (A386858 (n + 1) : ℝ)

end A386858

/-! ## A386858.P592851449297812874

`∑[a(n-4)+5]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A386858.P592851449297812874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 5] fun n f1 =>
  f1 (n - 4) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386858.P592851449297812874

namespace A386858

/-- `∑[a(n-4)+5]` -/
def P592851449297812874.Spec : Prop :=
  ∀ n, (P592851449297812874.a n : ℤ) = A386858 (n + 1)

end A386858

/-! ## A386858.P11194405496810273871

`∑[∑[abs(a(n-4))]]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A386858.P11194405496810273871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386858.P11194405496810273871

namespace A386858

/-- `∑[∑[abs(a(n-4))]]` -/
def P11194405496810273871.Spec : Prop :=
  ∀ n, (P11194405496810273871.a n : ℤ) = A386858 (n + 1)

end A386858

/-! ## A386858.P3587658106165232678

`∑[∑[dr(a(n-4))]]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A386858.P3587658106165232678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 4) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386858.P3587658106165232678

namespace A386858

/-- `∑[∑[dr(a(n-4))]]` -/
def P3587658106165232678.Spec : Prop :=
  ∀ n, (P3587658106165232678.a n : ℤ) = A386858 (n + 1)

end A386858

/-! ## A386858.P4205190802428787837

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A386858.P4205190802428787837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386858.P4205190802428787837

namespace A386858

/-- `∑[∑[floor(a(n-4))]]` -/
def P4205190802428787837.Spec : Prop :=
  ∀ n, (P4205190802428787837.a n : ℤ) = A386858 (n + 1)

end A386858

/-! ## A386858.P5300679930010990483

`∑[∑[ceil(a(n-4))]]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A386858.P5300679930010990483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386858.P5300679930010990483

namespace A386858

/-- `∑[∑[ceil(a(n-4))]]` -/
def P5300679930010990483.Spec : Prop :=
  ∀ n, (P5300679930010990483.a n : ℤ) = A386858 (n + 1)

end A386858

/-! ## A386858.P12769608861053393546

`∑[∑[round(a(n-4))]]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A386858.P12769608861053393546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386858.P12769608861053393546

namespace A386858

/-- `∑[∑[round(a(n-4))]]` -/
def P12769608861053393546.Spec : Prop :=
  ∀ n, (P12769608861053393546.a n : ℤ) = A386858 (n + 1)

end A386858

/-! ## A386858.P4105386585371824013

`∑[∑[val(∑[n+1]², n+2)]]`
-/

namespace A386858.P4105386585371824013
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2) (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386858.P4105386585371824013

namespace A386858

/-- `∑[∑[val(∑[n+1]², n+2)]]` -/
def P4105386585371824013.Spec : Prop :=
  ∀ n, (P4105386585371824013.a n : ℤ) = A386858 (n + 1)

end A386858

/-! ## A386858.P3238531272629877918

`∑[∑[5-a(n-2)]-a(n-1)]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A386858.P3238531272629877918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n f2 =>
  5 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386858.P3238531272629877918

namespace A386858

/-- `∑[∑[5-a(n-2)]-a(n-1)]` -/
def P3238531272629877918.Spec : Prop :=
  ∀ n, P3238531272629877918.a n = A386858 (n + 1)

end A386858

/-! ## A386858.P14361694303989043955

`A001859(n)-A130519(n)`
-/

namespace A386858.P14361694303989043955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n - A130519 n

end

end A386858.P14361694303989043955

namespace A386858

/-- `A001859(n)-A130519(n)` -/
def P14361694303989043955.Spec : Prop :=
  ∀ n, P14361694303989043955.a n = A386858 (n + 1)

end A386858

/-! ## A386858.P7034817219107945075

`∪[A028895(n), A032526(n)]`
-/

namespace A386858.P7034817219107945075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032526 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A386858.P7034817219107945075

namespace A386858

/-- `∪[A028895(n), A032526(n)]` -/
def P7034817219107945075.Spec : Prop :=
  ∀ n, (P7034817219107945075.a n : ℤ) = A386858 (n + 1)

end A386858

/-! ## A386858.P2508770757688931818

`A330133(n)+A032769(n+1)`
-/

namespace A386858.P2508770757688931818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330133 n + A032769 (n + 1)

end

end A386858.P2508770757688931818

namespace A386858

/-- `A330133(n)+A032769(n+1)` -/
def P2508770757688931818.Spec : Prop :=
  ∀ n, P2508770757688931818.a n = A386858 (n + 1)

end A386858

/-! ## A386858.P5829101345679395245

`A033436(n+1)+A002620(n+1)`
-/

namespace A386858.P5829101345679395245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 (n + 1) + A002620 (n + 1)

end

end A386858.P5829101345679395245

namespace A386858

/-- `A033436(n+1)+A002620(n+1)` -/
def P5829101345679395245.Spec : Prop :=
  ∀ n, P5829101345679395245.a n = A386858 (n + 1)

end A386858

/-! ## A386858.P3955644998013824637

`A184005(n+1)-A186349(n+1)`
-/

namespace A386858.P3955644998013824637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184005 (n + 1) - A186349 (n + 1)

end

end A386858.P3955644998013824637

namespace A386858

/-- `A184005(n+1)-A186349(n+1)` -/
def P3955644998013824637.Spec : Prop :=
  ∀ n, P3955644998013824637.a n = A386858 (n + 1)

end A386858

/-! ## A386858.P9934531071884739376

`∑[A187322(n+1)]`
-/

namespace A386858.P9934531071884739376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386858.P9934531071884739376

namespace A386858

/-- `∑[A187322(n+1)]` -/
def P9934531071884739376.Spec : Prop :=
  ∀ n, P9934531071884739376.a n = A386858 (n + 1)

end A386858

/-! ## A386858.P17096167918641666036

`∑[A008624(n+1)+n]`
-/

namespace A386858.P17096167918641666036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386858.P17096167918641666036

namespace A386858

/-- `∑[A008624(n+1)+n]` -/
def P17096167918641666036.Spec : Prop :=
  ∀ n, P17096167918641666036.a n = A386858 (n + 1)

end A386858

/-!
# A386860: The total number of big descents in all parking functions of length n.

The programs for A386860, the canonical program `A386860.P4448378947613652940` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386860 has offset 1).

The definition of A386860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386860.P4448378947613652940

`C(n, 2)*(n+2)^(n-1)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386860

/-- `C(n, 2)*(n+2)^(n-1)` -/
def P4448378947613652940.Spec : Prop :=
  ∀ n, P4448378947613652940.a n = (A386860 (n + 1) : ℚ)

end A386860

/-! ## A386860.P2819406151480873360

`A386861(n+1)*2/(n+1)`
-/

namespace A386860.P2819406151480873360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386861 (n + 1) * 2 : ℚ) / (n + 1 : ℚ)

end

end A386860.P2819406151480873360

namespace A386860

/-- `A386861(n+1)*2/(n+1)` -/
def P2819406151480873360.Spec : Prop :=
  ∀ n, P2819406151480873360.a n = (A386860 (n + 1) : ℚ)

end A386860

/-! ## A386860.P9133214750786237435

`(n+2)^(n-1)*C(n, 2)`
-/

namespace A386860.P9133214750786237435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose n 2 : ℚ)

end

end A386860.P9133214750786237435

namespace A386860

/-- `(n+2)^(n-1)*C(n, 2)` -/
def P9133214750786237435.Spec : Prop :=
  ∀ n, P9133214750786237435.a n = (A386860 (n + 1) : ℚ)

end A386860

/-! ## A386860.P6844362341116076984

`(∑[n]-n)*(n+2)^(n-1)`
-/

namespace A386860.P6844362341116076984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℚ) * (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A386860.P6844362341116076984

namespace A386860

/-- `(∑[n]-n)*(n+2)^(n-1)` -/
def P6844362341116076984.Spec : Prop :=
  ∀ n, P6844362341116076984.a n = (A386860 (n + 1) : ℚ)

end A386860

/-! ## A386860.P13812907729134810499

`∑{#}[n-1, #*(n+2)^(n-1)]`
-/

namespace A386860.P13812907729134810499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k : ℚ) * (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A386860.P13812907729134810499

namespace A386860

/-- `∑{#}[n-1, #*(n+2)^(n-1)]` -/
def P13812907729134810499.Spec : Prop :=
  ∀ n, P13812907729134810499.a n = (A386860 (n + 1) : ℚ)

end A386860

/-! ## A386860.P289145292210310379

`2*A386861(n+1)/(n+1)`
-/

namespace A386860.P289145292210310379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A386861 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A386860.P289145292210310379

namespace A386860

/-- `2*A386861(n+1)/(n+1)` -/
def P289145292210310379.Spec : Prop :=
  ∀ n, P289145292210310379.a n = (A386860 (n + 1) : ℚ)

end A386860

/-!
# A386861: The total number of big inversions in all parking functions of length n.

The programs for A386861, the canonical program `A386861.P12718987367945739866` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386861 has offset 1).

The definition of A386861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386861.P12718987367945739866

`(n+1)/4*n*(n-1)*(n+2)^(n-1)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386861

/-- `(n+1)/4*n*(n-1)*(n+2)^(n-1)` -/
def P12718987367945739866.Spec : Prop :=
  ∀ n, P12718987367945739866.a n = (A386861 (n + 1) : ℚ)

end A386861

/-! ## A386861.P17753587008481133837

`A386860(n+1)*(n+1)/2`
-/

namespace A386861.P17753587008481133837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386860 (n + 1) * (n + 1 : ℤ) : ℚ) / 2

end

end A386861.P17753587008481133837

namespace A386861

/-- `A386860(n+1)*(n+1)/2` -/
def P17753587008481133837.Spec : Prop :=
  ∀ n, P17753587008481133837.a n = (A386861 (n + 1) : ℚ)

end A386861

/-! ## A386861.P5255841086267966989

`(n+1)*A386860(n+1)/2`
-/

namespace A386861.P5255841086267966989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A386860 (n + 1) : ℚ) / 2

end

end A386861.P5255841086267966989

namespace A386861

/-- `(n+1)*A386860(n+1)/2` -/
def P5255841086267966989.Spec : Prop :=
  ∀ n, P5255841086267966989.a n = (A386861 (n + 1) : ℚ)

end A386861

/-! ## A386861.P1951089379320884409

`C(n, 2)*A055865(n+1)/2`
-/

namespace A386861.P1951089379320884409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 : ℤ) * A055865 (n + 1) : ℚ) / 2

end

end A386861.P1951089379320884409

namespace A386861

/-- `C(n, 2)*A055865(n+1)/2` -/
def P1951089379320884409.Spec : Prop :=
  ∀ n, P1951089379320884409.a n = (A386861 (n + 1) : ℚ)

end A386861

/-!
# A386862: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(2*n+1,k) * binomial(2*n-k-1,n-k).

The programs for A386862, the canonical program `A386862.P7391576744623274741` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386862 has offset 0).

The definition of A386862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386862.P7391576744623274741

`∑{#}[n, 3^#*(-2)^(n-#)*(n-#+1)*C(2*n+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386862

/-- `∑{#}[n, 3^#*(-2)^(n-#)*(n-#+1)*C(2*n+1, #)]` -/
def P7391576744623274741.Spec : Prop :=
  ∀ n, P7391576744623274741.a n = (A386862 n : ℚ)

end A386862

/-!
# A386863: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(3*n+1,k) * binomial(3*n-k-1,n-k).

The programs for A386863, the canonical program `A386863.P3932317777055391843` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386863 has offset 0).

The definition of A386863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386863.P3932317777055391843

`∑{#}[n, 3^#*(-2)^(n-#)*(n-#+1)*C(3*n+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386863

/-- `∑{#}[n, 3^#*(-2)^(n-#)*(n-#+1)*C(3*n+1, #)]` -/
def P3932317777055391843.Spec : Prop :=
  ∀ n, P3932317777055391843.a n = (A386863 n : ℚ)

end A386863

/-!
# A386864: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(4*n+1,k) * binomial(4*n-k-1,n-k).

The programs for A386864, the canonical program `A386864.P8577506734338982585` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386864 has offset 0).

The definition of A386864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386864.P8577506734338982585

`∑{#}[n, 3^#*(-2)^(n-#)*(n-#+1)*C(4*n+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386864

/-- `∑{#}[n, 3^#*(-2)^(n-#)*(n-#+1)*C(4*n+1, #)]` -/
def P8577506734338982585.Spec : Prop :=
  ∀ n, P8577506734338982585.a n = (A386864 n : ℚ)

end A386864

/-!
# A386865: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(2*n+2,k) * binomial(2*n-k-1,n-k).

The programs for A386865, the canonical program `A386865.P15169276596359680762` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386865 has offset 0).

The definition of A386865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386865.P15169276596359680762

`∑{#}[n, 3^#*(-2)^(n-#)*C(2*n+2, #)*C(n-#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386865

/-- `∑{#}[n, 3^#*(-2)^(n-#)*C(2*n+2, #)*C(n-#+2, n-#)]` -/
def P15169276596359680762.Spec : Prop :=
  ∀ n, P15169276596359680762.a n = (A386865 n : ℚ)

end A386865

/-!
# A386866: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(3*n+2,k) * binomial(3*n-k-1,n-k).

The programs for A386866, the canonical program `A386866.P17276892877999509732` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386866 has offset 0).

The definition of A386866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386866.P17276892877999509732

`∑{#}[n, 3^#*(-2)^(n-#)*C(3*n+2, #)*C(n-#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386866

/-- `∑{#}[n, 3^#*(-2)^(n-#)*C(3*n+2, #)*C(n-#+2, n-#)]` -/
def P17276892877999509732.Spec : Prop :=
  ∀ n, P17276892877999509732.a n = (A386866 n : ℚ)

end A386866

/-!
# A386867: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(4*n+2,k) * binomial(4*n-k-1,n-k).

The programs for A386867, the canonical program `A386867.P7210205194617788728` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386867 has offset 0).

The definition of A386867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386867.P7210205194617788728

`∑{#}[n, 3^#*(-2)^(n-#)*C(4*n+2, #)*C(n-#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386867

/-- `∑{#}[n, 3^#*(-2)^(n-#)*C(4*n+2, #)*C(n-#+2, n-#)]` -/
def P7210205194617788728.Spec : Prop :=
  ∀ n, P7210205194617788728.a n = (A386867 n : ℚ)

end A386867

/-!
# A386868: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(2*n+2,k) * binomial(2*n-k,n-k).

The programs for A386868, the canonical program `A386868.P1519418502581854909` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386868 has offset 0).

The definition of A386868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386868.P1519418502581854909

`∑{#}[n, 3^#*(n-#+1)*C(n+#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386868

/-- `∑{#}[n, 3^#*(n-#+1)*C(n+#, #)]` -/
def P1519418502581854909.Spec : Prop :=
  ∀ n, P1519418502581854909.a n = A386868 n

theorem P1519418502581854909.correct : P1519418502581854909.Spec := by
  intro n
  simp only [A386868]

end A386868

/-! ## A386868.P14501874070184774773

`∑{#}[n, 2^(n-#)*C(2*n+2, #)*C(2*n-#, n)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386868.P14501874070184774773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * n + 2) k : ℚ) * (Nat.choose ((2 * n : ℤ) - (k : ℤ)).toNat n : ℚ)

end

end A386868.P14501874070184774773

namespace A386868

/-- `∑{#}[n, 2^(n-#)*C(2*n+2, #)*C(2*n-#, n)]` -/
def P14501874070184774773.Spec : Prop :=
  ∀ n, P14501874070184774773.a n = (A386868 n : ℚ)

end A386868

/-! ## A386868.P13591970920684610616

`∑{#}[n, 2^(n-#)*C(2*n+2, #)*C(2*n-#, n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386868.P13591970920684610616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * n + 2) k : ℚ) * (Nat.choose ((2 * n : ℤ) - (k : ℤ)).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A386868.P13591970920684610616

namespace A386868

/-- `∑{#}[n, 2^(n-#)*C(2*n+2, #)*C(2*n-#, n-#)]` -/
def P13591970920684610616.Spec : Prop :=
  ∀ n, P13591970920684610616.a n = (A386868 n : ℚ)

end A386868

/-! ## A386868.P14375284348919085939

`(n+1)*A064063(n+1)`
-/

namespace A386868.P14375284348919085939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064063 (n + 1)

end

end A386868.P14375284348919085939

namespace A386868

/-- `(n+1)*A064063(n+1)` -/
def P14375284348919085939.Spec : Prop :=
  ∀ n, P14375284348919085939.a n = A386868 n

end A386868

/-! ## A386868.P10134459673607635174

`(n+1)*A110519(∑[n+1])`
-/

namespace A386868.P10134459673607635174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110519 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386868.P10134459673607635174

namespace A386868

/-- `(n+1)*A110519(∑[n+1])` -/
def P10134459673607635174.Spec : Prop :=
  ∀ n, P10134459673607635174.a n = A386868 n

end A386868

/-!
# A386869: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(3*n+2,k) * binomial(3*n-k,n-k).

The programs for A386869, the canonical program `A386869.P12107579435260179164` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386869 has offset 0).

The definition of A386869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386869.P12107579435260179164

`∑{#}[n, 3^#*(n-#+1)*C(2*n+#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386869

/-- `∑{#}[n, 3^#*(n-#+1)*C(2*n+#, #)]` -/
def P12107579435260179164.Spec : Prop :=
  ∀ n, P12107579435260179164.a n = A386869 n

theorem P12107579435260179164.correct : P12107579435260179164.Spec := by
  intro n
  simp only [A386869]

end A386869

/-! ## A386869.P16284603124052541249

`∑{#}[n, 2^(n-#)*C(3*n+2, #)*C(3*n-#, n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386869.P16284603124052541249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (3 * n + 2) k : ℚ) * (Nat.choose ((3 * n : ℤ) - (k : ℤ)).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A386869.P16284603124052541249

namespace A386869

/-- `∑{#}[n, 2^(n-#)*C(3*n+2, #)*C(3*n-#, n-#)]` -/
def P16284603124052541249.Spec : Prop :=
  ∀ n, P16284603124052541249.a n = (A386869 n : ℚ)

end A386869

/-!
# A386870: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(4*n+2,k) * binomial(4*n-k,n-k).

The programs for A386870, the canonical program `A386870.P1369823715575577920` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386870 has offset 0).

The definition of A386870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386870.P1369823715575577920

`∑{#}[n, 3^#*(n-#+1)*C(3*n+#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386870

/-- `∑{#}[n, 3^#*(n-#+1)*C(3*n+#, #)]` -/
def P1369823715575577920.Spec : Prop :=
  ∀ n, P1369823715575577920.a n = A386870 n

theorem P1369823715575577920.correct : P1369823715575577920.Spec := by
  intro n
  simp only [A386870]

end A386870

/-! ## A386870.P7359938306922317096

`∑{#}[n, 2^(n-#)*C(4*n+2, #)*C(4*n-#, n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386870.P7359938306922317096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (4 * n + 2) k : ℚ) * (Nat.choose ((4 * n : ℤ) - (k : ℤ)).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A386870.P7359938306922317096

namespace A386870

/-- `∑{#}[n, 2^(n-#)*C(4*n+2, #)*C(4*n-#, n-#)]` -/
def P7359938306922317096.Spec : Prop :=
  ∀ n, P7359938306922317096.a n = (A386870 n : ℚ)

end A386870

/-!
# A386875: a(n) is the maximum number of strong sub-tournaments in an n-tournament.

The programs for A386875, the canonical program `A386875.P16821797197821133959` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386875 has offset 0).

The definition of A386875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386875.P16821797197821133959

`ogf(x^3/(1-3x-2x^2+12x^3-4x^4-12x^5+8x^6))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386875

/-- `ogf(x^3/(1-3x-2x^2+12x^3-4x^4-12x^5+8x^6))` -/
def P16821797197821133959.Spec : Prop :=
  ∀ n, P16821797197821133959.a n = A386875 n

theorem P16821797197821133959.correct : P16821797197821133959.Spec := by
  intro n
  simp only [A386875]

end A386875

/-!
# A386876: a(n) = (1/2) * (3*n)! / n!^3 for n > 0, a(0) = 1.

The programs for A386876, there is no canonical definition to state claims against.
-/

/-! ## A386876.P12337759816444718111

`ceil(A006480(n)/2)`
-/

namespace A386876.P12337759816444718111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006480 n : ℚ) / 2⌉

end

end A386876.P12337759816444718111

/-! ## A386876.P17480687688563865389

`A005809(n)*A088218(n)`
-/

namespace A386876.P17480687688563865389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A088218 n

end

end A386876.P17480687688563865389

/-! ## A386876.P14350308284920917979

`A006480(n)/A040000(n)`
-/

namespace A386876.P14350308284920917979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 n : ℚ) / (A040000 n : ℚ)

end

end A386876.P14350308284920917979

/-! ## A386876.P1033920218479295898

`A005809(n)*A210736(A005843(n))`
-/

namespace A386876.P1033920218479295898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A210736 (A005843 n).toNat

end

end A386876.P1033920218479295898

/-! ## A386876.P8736633771229659434

`3*(3*n-1)*(3*n-2)*a(n-1)/n²` with `a(0)=1, a(1)=3`
-/

namespace A386876.P8736633771229659434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * (((3 * n : ℤ) - 1 : ℚ) * (((3 * n : ℤ) - 2 : ℚ) * a (n - 1))) / (n ^ 2 : ℚ)

end

end A386876.P8736633771229659434

/-! ## A386876.P17332272065729058288

`3*(3*n-1)*(3*n-2)*a(n-1)/(n*n)` with `a(0)=1, a(1)=3`
-/

namespace A386876.P17332272065729058288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (3 * ((3 * n : ℤ) - 1) * ((3 * n : ℤ) - 2) : ℚ) * a (n - 1) / (n * n : ℚ)

end

end A386876.P17332272065729058288

/-! ## A386876.P626128622958236886

`A178301(2*n²)`
-/

namespace A386876.P626128622958236886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178301 (2 * n ^ 2)

end

end A386876.P626128622958236886

/-! ## A386876.P4752592193870274520

`A386789(∑[4*n])`
-/

namespace A386876.P4752592193870274520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386789 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386876.P4752592193870274520

/-!
# A386877: Triangle read by rows: T(n, k) = n! / (k! * (n/k)!) if k divides n otherwise 0; T(n, 0) = 0^n.

The programs for A386877, there is no canonical definition to state claims against.
-/

/-! ## A386877.P14123718852069662324

`A259567(A294522(n+1))`
-/

namespace A386877.P14123718852069662324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259567 (A294522 (n + 1)).toNat

end

end A386877.P14123718852069662324

/-! ## A386877.P15608353131577762851

`and(A114293(A207607(n+1)), A382881(n))`
-/

namespace A386877.P15608353131577762851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114293 (A207607 (n + 1)).toNat) (A382881 n)

end

end A386877.P15608353131577762851

/-! ## A386877.P8208387115808206922

`A269444(A400421(n))`
-/

namespace A386877.P8208387115808206922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269444 (A400421 n).toNat

end

end A386877.P8208387115808206922

/-! ## A386877.P17441465407086644954

`A259481(A269945(n))`
-/

namespace A386877.P17441465407086644954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A269945 n).toNat

end

end A386877.P17441465407086644954

/-! ## A386877.P3914076469195066127

`A259567(A269955(n))`
-/

namespace A386877.P3914076469195066127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259567 (A269955 n).toNat

end

end A386877.P3914076469195066127

/-!
# A386878: Number of runs of 1's of length <= 3 over all binary strings of length n.

The programs for A386878, the canonical program `A386878.P3525845935937245273` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386878 has offset 0).

The definition of A386878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386878.P3525845935937245273

`ogf((x-x^2-x^4+x^5)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386878

/-- `ogf((x-x^2-x^4+x^5)/(1-4x+4x^2))` -/
def P3525845935937245273.Spec : Prop :=
  ∀ n, P3525845935937245273.a n = A386878 n

theorem P3525845935937245273.correct : P3525845935937245273.Spec := by
  intro n
  simp only [A386878]

end A386878

/-! ## A386878.P3005931377779945239

`A123621(A123569(n)+A001787(n))`
-/

namespace A386878.P3005931377779945239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A123569 n + A001787 n).toNat

end

end A386878.P3005931377779945239

namespace A386878

/-- `A123621(A123569(n)+A001787(n))` -/
def P3005931377779945239.Spec : Prop :=
  ∀ n, P3005931377779945239.a n = A386878 n

end A386878

/-! ## A386878.P15748838041767491062

`A050231(n+2)-A089310(A375445(n))`
-/

namespace A386878.P15748838041767491062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050231 (n + 2) - A089310 (A375445 n).toNat

end

end A386878.P15748838041767491062

namespace A386878

/-- `A050231(n+2)-A089310(A375445(n))` -/
def P15748838041767491062.Spec : Prop :=
  ∀ n, P15748838041767491062.a n = A386878 n

end A386878

/-!
# A386879: a(n) = [x^n] 1/(1 - x)^(n*(n-1)/2).

The programs for A386879, there is no canonical definition to state claims against.
-/

/-! ## A386879.P7843371564349490281

`C(abs(1-∑[n]), n)`
-/

namespace A386879.P7843371564349490281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat n

end

end A386879.P7843371564349490281

/-! ## A386879.P10941797735249212942

`A206735(A176145(n+3))`
-/

namespace A386879.P10941797735249212942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A176145 (n + 3)).toNat

end

end A386879.P10941797735249212942

/-! ## A386879.P17870377549485585918

`A071919(A000217(A000217(n))+n)`
-/

namespace A386879.P17870377549485585918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A000217 (A000217 n).toNat + (n : ℤ)).toNat

end

end A386879.P17870377549485585918

/-! ## A386879.P1789377174049579166

`A052553(A086602(n+1))`
-/

namespace A386879.P1789377174049579166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (A086602 (n + 1)).toNat

end

end A386879.P1789377174049579166

/-! ## A386879.P8063185330051593403

`A221857(A176145(n+4))`
-/

namespace A386879.P8063185330051593403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A176145 (n + 4)).toNat

end

end A386879.P8063185330051593403

/-!
# A386880: a(n) = [x^n] 1/(1 - x)^(n*(n+1)/2).

The programs for A386880, there is no canonical definition to state claims against.
-/

/-! ## A386880.P17311372562135250553

`C(abs(2-∑[n+1]), n)`
-/

namespace A386880.P17311372562135250553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat n

end

end A386880.P17311372562135250553

/-! ## A386880.P14964457808906426714

`A122178(∑[n])`
-/

namespace A386880.P14964457808906426714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122178 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386880.P14964457808906426714

/-! ## A386880.P5521434589823050322

`A098568(A004273(n²))`
-/

namespace A386880.P5521434589823050322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098568 (A004273 (n ^ 2)).toNat

end

end A386880.P5521434589823050322

/-! ## A386880.P17429206183423339531

`A046899(A176145(n+3))`
-/

namespace A386880.P17429206183423339531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A176145 (n + 3)).toNat

end

end A386880.P17429206183423339531

/-! ## A386880.P17395164128768895000

`A046899(A050534(n+1)+n)`
-/

namespace A386880.P17395164128768895000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A050534 (n + 1) + (n : ℤ)).toNat

end

end A386880.P17395164128768895000

/-!
# A386882: a(n) = Sum_{k=0..n} 2^k * binomial(n,k) * binomial(n+4,k).

The programs for A386882, the canonical program `A386882.P11323336368955768225` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386882 has offset 0).

The definition of A386882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 2^#*C(n, #)*C(n+4, #)]` (program `A386882.P11323336368955768225`, by `A386882.P11323336368955768225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386882.P214546610181637461

`∑{#}[n, C(n, #)*C(n+#+4, n)]`
-/

namespace A386882.P214546610181637461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * Nat.choose (n + k + 4) n

end

end A386882.P214546610181637461

namespace A386882

/-- `∑{#}[n, C(n, #)*C(n+#+4, n)]` -/
def P214546610181637461.Spec : Prop :=
  ∀ n, (P214546610181637461.a n : ℤ) = A386882 n

end A386882

/-! ## A386882.P11323336368955768225

`∑{#}[n, 2^#*C(n, #)*C(n+4, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386882

/-- `∑{#}[n, 2^#*C(n, #)*C(n+4, #)]` -/
def P11323336368955768225.Spec : Prop :=
  ∀ n, (P11323336368955768225.a n : ℤ) = A386882 n

theorem P11323336368955768225.correct : P11323336368955768225.Spec := by
  intro n
  simp only [A386882]

end A386882

/-! ## A386882.P15528461823524466532

`A297192(∑[n+3])`
-/

namespace A386882.P15528461823524466532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297192 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386882.P15528461823524466532

namespace A386882

/-- `A297192(∑[n+3])` -/
def P15528461823524466532.Spec : Prop :=
  ∀ n, P15528461823524466532.a n = A386882 n

end A386882

/-! ## A386882.P13148242770455314280

`A297191(A028552(n+1))`
-/

namespace A386882.P13148242770455314280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 (A028552 (n + 1)).toNat

end

end A386882.P13148242770455314280

namespace A386882

/-- `A297191(A028552(n+1))` -/
def P13148242770455314280.Spec : Prop :=
  ∀ n, P13148242770455314280.a n = A386882 n

end A386882

/-! ## A386882.P870756911126809153

`A297191(A217748(n+4))`
-/

namespace A386882.P870756911126809153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 (A217748 (n + 4)).toNat

end

end A386882.P870756911126809153

namespace A386882

/-- `A297191(A217748(n+4))` -/
def P870756911126809153.Spec : Prop :=
  ∀ n, P870756911126809153.a n = A386882 n

end A386882

/-! ## A386882.P7882931488606508437

`A008288(A090288(n+1))`
-/

namespace A386882.P7882931488606508437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A090288 (n + 1)).toNat

end

end A386882.P7882931488606508437

namespace A386882

/-- `A008288(A090288(n+1))` -/
def P7882931488606508437.Spec : Prop :=
  ∀ n, P7882931488606508437.a n = A386882 n

end A386882

/-! ## A386882.P10957691628156429412

`A008288(A059993(n+1)+1)`
-/

namespace A386882.P10957691628156429412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A059993 (n + 1) + 1).toNat

end

end A386882.P10957691628156429412

namespace A386882

/-- `A008288(A059993(n+1)+1)` -/
def P10957691628156429412.Spec : Prop :=
  ∀ n, P10957691628156429412.a n = A386882 n

end A386882

/-! ## A386882.P12370245127484031819

`A008288(A001844(n+2)+1)`
-/

namespace A386882.P12370245127484031819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A001844 (n + 2) + 1).toNat

end

end A386882.P12370245127484031819

namespace A386882

/-- `A008288(A001844(n+2)+1)` -/
def P12370245127484031819.Spec : Prop :=
  ∀ n, P12370245127484031819.a n = A386882 n

end A386882

/-! ## A386882.P8596713896714630212

`A008288(A046092(n+2)+2)`
-/

namespace A386882.P8596713896714630212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A046092 (n + 2) + 2).toNat

end

end A386882.P8596713896714630212

namespace A386882

/-- `A008288(A046092(n+2)+2)` -/
def P8596713896714630212.Spec : Prop :=
  ∀ n, P8596713896714630212.a n = A386882 n

end A386882

/-!
# A386883: Define a sequence of rationals by f(0) = 0, thereafter f(n) = f(n-1) - 1/n if that is >= 0, otherwise f(n) = f(n-1) + 1/n; a(n) corresponds to the number of addition steps minus the number of subtraction steps involved in calculating f(n).

The programs for A386883, there is no canonical definition to state claims against.
-/

/-! ## A386883.P16145923372989090608

`A000122(A306005(n+1))-gcd(2, ∏{p}[n, #])`
-/

namespace A386883.P16145923372989090608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A306005 (n + 1)).toNat - (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A386883.P16145923372989090608

/-! ## A386883.P9724597480805015668

`A000122(A025506(n))-A134451(n)`
-/

namespace A386883.P9724597480805015668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A025506 n).toNat - A134451 n

end

end A386883.P9724597480805015668

/-! ## A386883.P721028155947884487

`A000122(A005703(n))-A000034(n+1)`
-/

namespace A386883.P721028155947884487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A005703 n).toNat - A000034 (n + 1)

end

end A386883.P721028155947884487

/-! ## A386883.P1834783875225029001

`A356680(A306214(n+3))-A306242(n)`
-/

namespace A386883.P1834783875225029001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356680 (A306214 (n + 3)).toNat - A306242 n

end

end A386883.P1834783875225029001

/-!
# A386884: a(n) is the number of distinct four-cuboid combinations that fill an n X n X n cube using only strict cuboids.

The programs for A386884, the canonical program `A386884.P4556650635656247242` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386884 has offset 1).

The definition of A386884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386884.P4556650635656247242

`(n-3)*C(A004526(n), 2)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A386884

/-- `(n-3)*C(A004526(n), 2)` -/
def P4556650635656247242.Spec : Prop :=
  ∀ n, P4556650635656247242.a n = A386884 (n + 1)

theorem P4556650635656247242.correct : P4556650635656247242.Spec := by
  intro n
  simp only [A386884, Nat.add_sub_cancel]

end A386884

/-! ## A386884.P42471752120002487

`A024163(3*n+1)*A228441(2^n)`
-/

namespace A386884.P42471752120002487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024163 (3 * n + 1) * A228441 (2 ^ n)

end

end A386884.P42471752120002487

namespace A386884

/-- `A024163(3*n+1)*A228441(2^n)` -/
def P42471752120002487.Spec : Prop :=
  ∀ n, P42471752120002487.a n = A386884 (n + 1)

end A386884

/-!
# A386885: a(n) is the number of iterations that -n requires to reach 1 under the map x -> -x/2 if x is even, 3x + 1 if x is odd.

The programs for A386885, there is no canonical definition to state claims against.
-/

/-! ## A386885.P13928655186745555076

`A383131(2*(n+1))-1`
-/

namespace A386885.P13928655186745555076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383131 (2 * (n + 1)) - 1

end

end A386885.P13928655186745555076

/-!
# A386888: Number of ways to write n as u + (1+(n mod 2))*v with v <= n/2, where u and v are both sums of three consecutive primes.

The programs for A386888, there is no canonical definition to state claims against.
-/

/-! ## A386888.P10252034039971023103

`A354948(A246444(n+1))`
-/

namespace A386888.P10252034039971023103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354948 (A246444 (n + 1)).toNat

end

end A386888.P10252034039971023103

/-! ## A386888.P14842099494734289085

`A028827(n)%A352085(n+1)`
-/

namespace A386888.P14842099494734289085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028827 n) (A352085 (n + 1))

end

end A386888.P14842099494734289085

/-! ## A386888.P18299443517786984759

`A079979(A242351(n)+A056239(n+1))`
-/

namespace A386888.P18299443517786984759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A242351 n + A056239 (n + 1)).toNat

end

end A386888.P18299443517786984759

/-! ## A386888.P7728610939018958403

`val(A008330(n+3), A022097(A375128(2*(n+1))))`
-/

namespace A386888.P7728610939018958403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008330 (n + 3)).toNat (A022097 (A375128 (2 * (n + 1))).toNat).toNat

end

end A386888.P7728610939018958403

/-! ## A386888.P1796437776631863013

`val(A125128(n+1), A372433(A074253(2*n+5)))`
-/

namespace A386888.P1796437776631863013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A125128 (n + 1)).toNat (A372433 (A074253 (2 * n + 5)).toNat).toNat

end

end A386888.P1796437776631863013

/-!
# A386889: Number of ways to use 1 X 1 squares and 1 X 2 dominos (in any orientation) to tile a 3 X (2*n - 1) strip with every other cell in the top row removed.

The programs for A386889, the canonical program `A386889.P17467461584644384473` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386889 has offset 0).

The definition of A386889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386889.P17467461584644384473

`16*a(n-1)-25*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=46, a(3)=660`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386889

/-- `16*a(n-1)-25*a(n-2)+10*a(n-3)-a(n-4)` -/
def P17467461584644384473.Spec : Prop :=
  ∀ n, P17467461584644384473.a n = A386889 n

theorem P17467461584644384473.correct : P17467461584644384473.Spec := by
  intro n
  simp only [A386889]

end A386889

/-!
# A386891: Irregular triangle read by rows: T(n,k) is the number of compositions of n such that the maximal cardinality of C is k, where C is a subset of the set of parts such that all elements in C appear in weakly increasing order within the composition.

The programs for A386891, there is no canonical definition to state claims against.
-/

/-! ## A386891.P12754972179769108695

`A373954(A124280(n))+A321878(n)`
-/

namespace A386891.P12754972179769108695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A124280 n).toNat + A321878 n

end

end A386891.P12754972179769108695

/-! ## A386891.P11964106002066371487

`A001222(A093328(n)^A291895(n))`
-/

namespace A386891.P11964106002066371487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A093328 n : ℚ) ^ (A291895 n : ℤ))).toNat

end

end A386891.P11964106002066371487

/-! ## A386891.P6976668961972579013

`A321878(n)+A011731(A132393(3*n+2))`
-/

namespace A386891.P6976668961972579013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 n + A011731 (A132393 (3 * n + 2)).toNat

end

end A386891.P6976668961972579013

/-! ## A386891.P11547334211257722912

`A060502(A291929(n)^4)+A025457(A097333(n))`
-/

namespace A386891.P11547334211257722912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A291929 n ^ 4).toNat + A025457 (A097333 n).toNat

end

end A386891.P11547334211257722912

/-!
# A386894: Markoff numbers that are powers of one odd prime or twice powers of one odd prime.

The programs for A386894, there is no canonical definition to state claims against.
-/

/-! ## A386894.P14191100027810353543

`filter[A002559(n+1), A354923(#)]`
-/

namespace A386894.P14191100027810353543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A386894.P14191100027810353543

/-! ## A386894.P2006754567325403637

`filter[A002559(n+1), A354924(#)]`
-/

namespace A386894.P2006754567325403637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A386894.P2006754567325403637

/-! ## A386894.P12790921827754608967

`filter[A002559(n+1), A340363(#)]`
-/

namespace A386894.P12790921827754608967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A386894.P12790921827754608967

/-!
# A386895: a(n) = Sum_{k=0..n} binomial(5*n+1,k) * binomial(2*n-k,n-k).

The programs for A386895, the canonical program `A386895.P9773101393462051459` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386895 has offset 0).

The definition of A386895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(5*n+1, #)*C(2*n-#, n)]` (program `A386895.P9773101393462051459`, by `A386895.P9773101393462051459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386895.P9773101393462051459

`∑{#}[n, C(5*n+1, #)*C(2*n-#, n)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386895

/-- `∑{#}[n, C(5*n+1, #)*C(2*n-#, n)]` -/
def P9773101393462051459.Spec : Prop :=
  ∀ n, (P9773101393462051459.a n : ℤ) = A386895 n

theorem P9773101393462051459.correct : P9773101393462051459.Spec := by
  intro n
  simp only [A386895]

end A386895

/-! ## A386895.P9254701118479671516

`∑{#}[n, C(5*n+1, #)*C(2*n-#, n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386895.P9254701118479671516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (5 * n + 1) k * Nat.choose ((2 * n : ℤ) - (k : ℤ)).toNat ((n : ℤ) - (k : ℤ)).toNat

end

end A386895.P9254701118479671516

namespace A386895

/-- `∑{#}[n, C(5*n+1, #)*C(2*n-#, n-#)]` -/
def P9254701118479671516.Spec : Prop :=
  ∀ n, (P9254701118479671516.a n : ℤ) = A386895 n

end A386895

/-!
# A386896: a(n) = Sum_{k=0..n} binomial(5*n+1,k) * binomial(3*n-k,n-k).

The programs for A386896, the canonical program `A386896.P5959086255907103033` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386896 has offset 0).

The definition of A386896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(5*n+1, #)*C(3*n-#, n-#)]` (program `A386896.P5959086255907103033`, by `A386896.P5959086255907103033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386896.P5959086255907103033

`∑{#}[n, C(5*n+1, #)*C(3*n-#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386896

/-- `∑{#}[n, C(5*n+1, #)*C(3*n-#, n-#)]` -/
def P5959086255907103033.Spec : Prop :=
  ∀ n, (P5959086255907103033.a n : ℤ) = A386896 n

theorem P5959086255907103033.correct : P5959086255907103033.Spec := by
  intro n
  simp only [A386896]

end A386896

/-! ## A386896.P18036081698725233026

`A110441(A062728(n))`
-/

namespace A386896.P18036081698725233026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 (A062728 n).toNat

end

end A386896.P18036081698725233026

namespace A386896

/-- `A110441(A062728(n))` -/
def P18036081698725233026.Spec : Prop :=
  ∀ n, P18036081698725233026.a n = A386896 n

end A386896

/-! ## A386896.P8801659167056628854

`A110441(A062725(n)+n)`
-/

namespace A386896.P8801659167056628854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 (A062725 n + (n : ℤ)).toNat

end

end A386896.P8801659167056628854

namespace A386896

/-- `A110441(A062725(n)+n)` -/
def P8801659167056628854.Spec : Prop :=
  ∀ n, P8801659167056628854.a n = A386896 n

end A386896

/-! ## A386896.P8202941070263893844

`A206306(A062708(n+1))`
-/

namespace A386896.P8202941070263893844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 (A062708 (n + 1)).toNat

end

end A386896.P8202941070263893844

namespace A386896

/-- `A206306(A062708(n+1))` -/
def P8202941070263893844.Spec : Prop :=
  ∀ n, P8202941070263893844.a n = A386896 n

end A386896

/-! ## A386896.P16833313267068377441

`A206306(A198392(2*n)+n)`
-/

namespace A386896.P16833313267068377441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 (A198392 (2 * n) + (n : ℤ)).toNat

end

end A386896.P16833313267068377441

namespace A386896

/-- `A206306(A198392(2*n)+n)` -/
def P16833313267068377441.Spec : Prop :=
  ∀ n, P16833313267068377441.a n = A386896 n

end A386896

/-!
# A386897: a(n) = 4^n * binomial(5*n/2,n).

The programs for A386897, the canonical program `A386897.P13442944400934857888` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386897 has offset 0).

The definition of A386897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386897.P13442944400934857888

`∑{#}[n, C(5*n+1, #)*C(4*n-#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386897

/-- `∑{#}[n, C(5*n+1, #)*C(4*n-#, n-#)]` -/
def P13442944400934857888.Spec : Prop :=
  ∀ n, (P13442944400934857888.a n : ℤ) = A386897 n

theorem P13442944400934857888.correct : P13442944400934857888.Spec := by
  intro n
  simp only [A386897]

end A386897

/-! ## A386897.P11538037791891698912

`A054335(A125201(n+1))`
-/

namespace A386897.P11538037791891698912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A125201 (n + 1)).toNat

end

end A386897.P11538037791891698912

namespace A386897

/-- `A054335(A125201(n+1))` -/
def P11538037791891698912.Spec : Prop :=
  ∀ n, P11538037791891698912.a n = A386897 n

end A386897

/-! ## A386897.P690470070051292550

`A205813(A139273(n+1))`
-/

namespace A386897.P690470070051292550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205813 (A139273 (n + 1)).toNat

end

end A386897.P690470070051292550

namespace A386897

/-- `A205813(A139273(n+1))` -/
def P690470070051292550.Spec : Prop :=
  ∀ n, P690470070051292550.a n = A386897 n

end A386897

/-! ## A386897.P2275679602688306006

`A054335(A069129(n+1)+n+1)`
-/

namespace A386897.P2275679602688306006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A069129 (n + 1) + (n + 1 : ℤ)).toNat

end

end A386897.P2275679602688306006

namespace A386897

/-- `A054335(A069129(n+1)+n+1)` -/
def P2275679602688306006.Spec : Prop :=
  ∀ n, P2275679602688306006.a n = A386897 n

end A386897

/-! ## A386897.P2375313691638236108

`A054335(A001105(2*n+1)+n)`
-/

namespace A386897.P2375313691638236108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A001105 (2 * n + 1) + (n : ℤ)).toNat

end

end A386897.P2375313691638236108

namespace A386897

/-- `A054335(A001105(2*n+1)+n)` -/
def P2375313691638236108.Spec : Prop :=
  ∀ n, P2375313691638236108.a n = A386897 n

end A386897

/-!
# A386898: a(n) = Sum_{k=0..n} binomial(5*n+1,k) * binomial(5*n-k,n-k).

The programs for A386898, the canonical program `A386898.P17543824757809929292` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386898 has offset 0).

The definition of A386898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(5*n+1, #)*C(5*n-#, n-#)]` (program `A386898.P17543824757809929292`, by `A386898.P17543824757809929292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386898.P15999605916345836468

`∑{#}[n, 2^#*C(4*n+#, #)]`
-/

namespace A386898.P15999605916345836468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose (4 * n + k) k

end

end A386898.P15999605916345836468

namespace A386898

/-- `∑{#}[n, 2^#*C(4*n+#, #)]` -/
def P15999605916345836468.Spec : Prop :=
  ∀ n, (P15999605916345836468.a n : ℤ) = A386898 n

end A386898

/-! ## A386898.P17543824757809929292

`∑{#}[n, C(5*n+1, #)*C(5*n-#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386898

/-- `∑{#}[n, C(5*n+1, #)*C(5*n-#, n-#)]` -/
def P17543824757809929292.Spec : Prop :=
  ∀ n, (P17543824757809929292.a n : ℤ) = A386898 n

theorem P17543824757809929292.correct : P17543824757809929292.Spec := by
  intro n
  simp only [A386898]

end A386898

/-! ## A386898.P17818378325535764613

`A193844(A022282(n)+A008574(n))`
-/

namespace A386898.P17818378325535764613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A022282 n + A008574 n).toNat

end

end A386898.P17818378325535764613

namespace A386898

/-- `A193844(A022282(n)+A008574(n))` -/
def P17818378325535764613.Spec : Prop :=
  ∀ n, P17818378325535764613.a n = A386898 n

end A386898

/-!
# A386899: a(n) = Sum_{k=0..n} 3^k * 2^(n-k) * binomial(3*n+1,k) * binomial(2*n-k,n-k).

The programs for A386899, the canonical program `A386899.P437708967866186356` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386899 has offset 0).

The definition of A386899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386899.P437708967866186356

`∑{#}[n, 5^#*3^(n-#)*C(n+#, #)*C(2*n-#, n)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386899

/-- `∑{#}[n, 5^#*3^(n-#)*C(n+#, #)*C(2*n-#, n)]` -/
def P437708967866186356.Spec : Prop :=
  ∀ n, P437708967866186356.a n = (A386899 n : ℚ)

end A386899

/-! ## A386899.P10547327715853762069

`∑{#}[n, 3^#*2^(n-#)*C(3*n+1, #)*C(2*n-#, n)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386899.P10547327715853762069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (3 * n + 1) k : ℚ) * (Nat.choose ((2 * n : ℤ) - (k : ℤ)).toNat n : ℚ)

end

end A386899.P10547327715853762069

namespace A386899

/-- `∑{#}[n, 3^#*2^(n-#)*C(3*n+1, #)*C(2*n-#, n)]` -/
def P10547327715853762069.Spec : Prop :=
  ∀ n, P10547327715853762069.a n = (A386899 n : ℚ)

end A386899

/-! ## A386899.P1849274260458660796

`∑{#}[n, 3^#*2^(n-#)*C(3*n+1, #)*C(2*n-#, n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386899.P1849274260458660796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (3 * n + 1) k : ℚ) * (Nat.choose ((2 * n : ℤ) - (k : ℤ)).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A386899.P1849274260458660796

namespace A386899

/-- `∑{#}[n, 3^#*2^(n-#)*C(3*n+1, #)*C(2*n-#, n-#)]` -/
def P1849274260458660796.Spec : Prop :=
  ∀ n, P1849274260458660796.a n = (A386899 n : ℚ)

end A386899

