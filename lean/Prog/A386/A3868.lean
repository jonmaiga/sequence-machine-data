import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
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
# A386800: Numbers that have exactly one exponent in their prime factorization that is equal to 3.

The programs for A386800, the canonical program `A386800.P6206644617528223844` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386800 has offset 1).

The definition of A386800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1939 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386800.P6206644617528223844

`∩[A176297(n+1), A356862(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A386800

/-- `∩[A176297(n+1), A356862(n+1)]` -/
def P6206644617528223844.Spec : Prop :=
  ∀ n, (P6206644617528223844.a n : ℤ) = A386800 (n + 1)

theorem P6206644617528223844.correct : P6206644617528223844.Spec := by
  intro n
  simp only [A386800, Nat.add_sub_cancel]

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

/-! ## A386800.P5427400523190270887

`A381315(n+1)+A000038(A325799(2*n+5))`
-/

namespace A386800.P5427400523190270887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381315 (n + 1) + A000038 (A325799 (2 * n + 5)).toNat

end

end A386800.P5427400523190270887

namespace A386800

/-- `A381315(n+1)+A000038(A325799(2*n+5))` -/
def P5427400523190270887.Spec : Prop :=
  ∀ n, P5427400523190270887.a n = A386800 (n + 1)

end A386800

/-! ## A386800.P8139726286839523755

`∩[A259241(n+1), A381315(n+1)]`
-/

namespace A386800.P8139726286839523755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386800.P8139726286839523755

namespace A386800

/-- `∩[A259241(n+1), A381315(n+1)]` -/
def P8139726286839523755.Spec : Prop :=
  ∀ n, (P8139726286839523755.a n : ℤ) = A386800 (n + 1)

end A386800

/-! ## A386800.P8309162650269616185

`A124767(A272919(n+1))*A381315(n+1)`
-/

namespace A386800.P8309162650269616185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A272919 (n + 1)).toNat * A381315 (n + 1)

end

end A386800.P8309162650269616185

namespace A386800

/-- `A124767(A272919(n+1))*A381315(n+1)` -/
def P8309162650269616185.Spec : Prop :=
  ∀ n, P8309162650269616185.a n = A386800 (n + 1)

end A386800

/-!
# A386801: Numbers that have exactly two exponents in their prime factorization that are equal to 3.

The programs for A386801, there is no canonical definition to state claims against.
-/

/-! ## A386801.P8964777250399964071

`A109399(n+1)+A057918(A160353(n+1))`
-/

namespace A386801.P8964777250399964071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1) + A057918 (A160353 (n + 1)).toNat

end

end A386801.P8964777250399964071

/-! ## A386801.P14989588126803799119

`A109399(n+1)%A109399(A381097(n+1))`
-/

namespace A386801.P14989588126803799119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109399 (n + 1)) (A109399 (A381097 (n + 1)).toNat)

end

end A386801.P14989588126803799119

/-! ## A386801.P7326016880450753069

`A109399(n+1)+A057918(A065727(2*(n+1)))`
-/

namespace A386801.P7326016880450753069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1) + A057918 (A065727 (2 * (n + 1))).toNat

end

end A386801.P7326016880450753069

/-! ## A386801.P11160212859085845788

`A109399(n+1)+A010054(A001694(3*n+4))`
-/

namespace A386801.P11160212859085845788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1) + A010054 (A001694 (3 * n + 4)).toNat

end

end A386801.P11160212859085845788

/-! ## A386801.P6585243212344097499

`filter[A109399(n+1), A093521(#)]`
-/

namespace A386801.P6585243212344097499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A386801.P6585243212344097499

/-! ## A386801.P20111702557837874

`A109399(n+1)+A063524(A325235(n+1))`
-/

namespace A386801.P20111702557837874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1) + A063524 (A325235 (n + 1)).toNat

end

end A386801.P20111702557837874

/-! ## A386801.P5146690202166383937

`filter[A109399(n+1), A123110(#)]`
-/

namespace A386801.P5146690202166383937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A386801.P5146690202166383937

/-!
# A386802: 

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

/-! ## A386802.P3001513966768375251

`A176359(n+1)+A007814(A106856(3*n+4))`
-/

namespace A386802.P3001513966768375251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176359 (n + 1) + A007814 (A106856 (3 * n + 4)).toNat

end

end A386802.P3001513966768375251

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
# A386804: Numbers that have exactly one exponent in their prime factorization that is equal to 4.

The programs for A386804, there is no canonical definition to state claims against.
-/

/-! ## A386804.P17956569497670373467

`A336595(n+1)%A045940(A000032(n))`
-/

namespace A386804.P17956569497670373467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336595 (n + 1)) (A045940 (A000032 n).toNat)

end

end A386804.P17956569497670373467

/-! ## A386804.P7030376307058684780

`A336595(n+1)+A010815(A304660(2*n+3))`
-/

namespace A386804.P7030376307058684780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336595 (n + 1) + A010815 (A304660 (2 * n + 3)).toNat

end

end A386804.P7030376307058684780

/-! ## A386804.P13805848893350106384

`A369427(A000230(n))+A336595(n+1)`
-/

namespace A386804.P13805848893350106384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (A000230 n).toNat + A336595 (n + 1)

end

end A386804.P13805848893350106384

/-! ## A386804.P5460363544238854236

`A336595(n+1)+A185012(A000032(n+1))`
-/

namespace A386804.P5460363544238854236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336595 (n + 1) + A185012 (A000032 (n + 1)).toNat

end

end A386804.P5460363544238854236

/-! ## A386804.P2081194984252905470

`A336595(n+1)+A151673(A305672(n+4))`
-/

namespace A386804.P2081194984252905470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336595 (n + 1) + A151673 (A305672 (n + 4)).toNat

end

end A386804.P2081194984252905470

/-!
# A386807: Numbers without an exponent 5 in their prime factorization.

The programs for A386807, there is no canonical definition to state claims against.
-/

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

/-! ## A386807.P11260762753153530800

`A123068(n+1)+1`
-/

namespace A386807.P11260762753153530800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (n + 1) + 1

end

end A386807.P11260762753153530800

/-! ## A386807.P10018762964723747232

`A178489(15*A096300(n+1)/3)+n`
-/

namespace A386807.P10018762964723747232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (SequenceMachineLib.roundAway (15 * ((A096300 (n + 1) : ℚ) / 3))).toNat + (n : ℤ)

end

end A386807.P10018762964723747232

/-!
# A386808: 

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
# A386811: a(n) = Sum_{k=0..n} binomial(4*n+1,k).

The programs for A386811, there is no canonical definition to state claims against.
-/

/-! ## A386811.P14839007804566698973

`A054143(A139276(n))`
-/

namespace A386811.P14839007804566698973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A139276 n).toNat

end

end A386811.P14839007804566698973

/-! ## A386811.P7592982086057507032

`A104709(A139277(n))`
-/

namespace A386811.P7592982086057507032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 (A139277 n).toNat

end

end A386811.P7592982086057507032

/-! ## A386811.P1037328022889395331

`A008949(A194268(n))`
-/

namespace A386811.P1037328022889395331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A194268 n).toNat

end

end A386811.P1037328022889395331

/-! ## A386811.P1151278683898467827

`A055248(A125201(n+1))`
-/

namespace A386811.P1151278683898467827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A125201 (n + 1)).toNat

end

end A386811.P1151278683898467827

/-! ## A386811.P18317139386226664633

`A193820(A139272(n+1))`
-/

namespace A386811.P18317139386226664633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A139272 (n + 1)).toNat

end

end A386811.P18317139386226664633

/-!
# A386812: a(n) = Sum_{k=0..n} binomial(5*n+1,k).

The programs for A386812, there is no canonical definition to state claims against.
-/

/-! ## A386812.P3198441674316289725

`A054143(A144312(n)+n)`
-/

namespace A386812.P3198441674316289725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A144312 n + (n : ℤ)).toNat

end

end A386812.P3198441674316289725

/-! ## A386812.P3772576354462492279

`A187926(A139277(n))`
-/

namespace A386812.P3772576354462492279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187926 (A139277 n).toNat

end

end A386812.P3772576354462492279

/-! ## A386812.P16974254269924226862

`A187926(A139276(n)+A004442(2*n+1))`
-/

namespace A386812.P16974254269924226862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187926 (A139276 n + A004442 (2 * n + 1)).toNat

end

end A386812.P16974254269924226862

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

The programs for A386821, there is no canonical definition to state claims against.
-/

/-! ## A386821.P9301112297517741795

`A109244(A062708(n+1))`
-/

namespace A386821.P9301112297517741795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A062708 (n + 1)).toNat

end

end A386821.P9301112297517741795

/-! ## A386821.P1292046399646061399

`A035317(A139276(n))`
-/

namespace A386821.P1292046399646061399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A139276 n).toNat

end

end A386821.P1292046399646061399

/-! ## A386821.P8668234244612094078

`A080242(A139277(n))`
-/

namespace A386821.P8668234244612094078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080242 (A139277 n).toNat

end

end A386821.P8668234244612094078

/-! ## A386821.P12655881509831444146

`A059259(A194268(n))`
-/

namespace A386821.P12655881509831444146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (A194268 n).toNat

end

end A386821.P12655881509831444146

/-! ## A386821.P2633903745232972045

`A059260(A125201(n+1))`
-/

namespace A386821.P2633903745232972045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (A125201 (n + 1)).toNat

end

end A386821.P2633903745232972045

/-!
# A386822: Irregular table T(n,k) = Product_{j = 1..k} prime(j)^(n-j+1), n >= 0, k = 1..n.

The programs for A386822, the canonical program `A386822.P5436816925973816835` is in `Seq.B007.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386822 has offset 0).

The definition of A386822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386822.P5436816925973816835

`A362227(A023758(n+1))`

The canonical program, it is in `Seq.B007.C002`.
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

The programs for A386825, the canonical program `A386825.P13800824448105910529` is in `Seq.B007.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386825 has offset 0).

The definition of A386825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386825.P13800824448105910529

`A094527(n)*A140303(n)`

The canonical program, it is in `Seq.B007.C002`.
-/

namespace A386825

/-- `A094527(n)*A140303(n)` -/
def P13800824448105910529.Spec : Prop :=
  ∀ n, P13800824448105910529.a n = A386825 n

theorem P13800824448105910529.correct : P13800824448105910529.Spec := by
  intro n
  simp only [A386825]

end A386825

/-!
# A386832: Triangle read by rows: T(n,k) is the number of the sets of partitions of n with length k grouped by largest part.

The programs for A386832, the canonical program `A386832.P17191505806885496330` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386832 has offset 1).

The definition of A386832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386832.P17191505806885496330

`ceil(A077028(n)/A002260(n+1))`

The canonical program, it is in `Seq.B005.C002`.
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

The programs for A386833, there is no canonical definition to state claims against.
-/

/-! ## A386833.P18070164075937945928

`A159856(A062728(n))`
-/

namespace A386833.P18070164075937945928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159856 (A062728 n).toNat

end

end A386833.P18070164075937945928

/-!
# A386835: a(n) = Sum_{k=0..n} binomial(2*n+2,k) * binomial(2*n-k-1,n-k).

The programs for A386835, there is no canonical definition to state claims against.
-/

/-! ## A386835.P11211938769363859925

`A008619(A003950(n)+n)`
-/

namespace A386835.P11211938769363859925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003950 n + (n : ℤ)).toNat

end

end A386835.P11211938769363859925

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

The programs for A386839, there is no canonical definition to state claims against.
-/

/-! ## A386839.P5709756420068921263

`A291603(A091054(n)+A006880(n))`
-/

namespace A386839.P5709756420068921263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291603 (A091054 n + A006880 n).toNat

end

end A386839.P5709756420068921263

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

The programs for A386843, the canonical program `A386843.P18321489374068669319` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386843 has offset 0).

The definition of A386843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386843.P18321489374068669319

`(n+1)*A062992(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A386843

/-- `(n+1)*A062992(n)` -/
def P18321489374068669319.Spec : Prop :=
  ∀ n, P18321489374068669319.a n = A386843 n

theorem P18321489374068669319.correct : P18321489374068669319.Spec := by
  intro n
  simp only [A386843]

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

The programs for A386844, there is no canonical definition to state claims against.
-/

/-! ## A386844.P2039352458380127235

`A005843(A383326(n))-A386833(n)`
-/

namespace A386844.P2039352458380127235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A383326 n).toNat - A386833 n

end

end A386844.P2039352458380127235

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

/-! ## A386848.P3045050987162733619

`A000361(A324563(n+1))`
-/

namespace A386848.P3045050987162733619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000361 (A324563 (n + 1)).toNat

end

end A386848.P3045050987162733619

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

/-! ## A386848.P3878305786300207939

`A123594(A196388(n+1))*A124747(n)`
-/

namespace A386848.P3878305786300207939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (A196388 (n + 1)).toNat * A124747 n

end

end A386848.P3878305786300207939

/-!
# A386851: a(n) = floor(5*n^2/6).

The programs for A386851, the canonical program `A386851.P14240077391279146294` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386851 has offset 1).

The definition of A386851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*(n+1)²/6)` (program `A386851.P14240077391279146294`, by `A386851.P14240077391279146294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386851.P14240077391279146294

`floor(5*(n+1)²/6)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A386851

/-- `floor(5*(n+1)²/6)` -/
def P14240077391279146294.Spec : Prop :=
  ∀ n, P14240077391279146294.a n = A386851 (n + 1)

theorem P14240077391279146294.correct : P14240077391279146294.Spec := by
  intro n
  simp only [A386851, Nat.add_sub_cancel]

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

/-! ## A386851.P3749955391064534506

`A000217(n+1)+A242771(n+2)-A001399(n)`
-/

namespace A386851.P3749955391064534506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A242771 (n + 2) - A001399 n)

end

end A386851.P3749955391064534506

namespace A386851

/-- `A000217(n+1)+A242771(n+2)-A001399(n)` -/
def P3749955391064534506.Spec : Prop :=
  ∀ n, P3749955391064534506.a n = A386851 (n + 1)

end A386851

/-! ## A386851.P15565372833741194831

`A000212(n+1)+A002620(n+1)+A002620(n+1)`
-/

namespace A386851.P15565372833741194831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 1) + (A002620 (n + 1) + A002620 (n + 1))

end

end A386851.P15565372833741194831

namespace A386851

/-- `A000212(n+1)+A002620(n+1)+A002620(n+1)` -/
def P15565372833741194831.Spec : Prop :=
  ∀ n, P15565372833741194831.a n = A386851 (n + 1)

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

/-! ## A386856.P14892250408448701067

`filter[A386871(2*n+1), A005171(#)]`
-/

namespace A386856.P14892250408448701067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386871 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A386856.P14892250408448701067

/-! ## A386856.P3315750849229898042

`filter[A386871(2*n+1), A066247(#)]`
-/

namespace A386856.P3315750849229898042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386871 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A386856.P3315750849229898042

/-! ## A386856.P7799576569884788035

`filter[A386871(2*n+1), A105586(#)]`
-/

namespace A386856.P7799576569884788035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386871 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105586 (f1 j).toNat = 1) n)

end

end A386856.P7799576569884788035

/-! ## A386856.P6048194131851730571

`filter[A386871(2*n+1), A145568(#)]`
-/

namespace A386856.P6048194131851730571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386871 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A386856.P6048194131851730571

/-!
# A386857: Numbers k such that both 9*2^k - 1 and 9*2^k + 1 are prime.

The programs for A386857, there is no canonical definition to state claims against.
-/

/-! ## A386857.P5445530191926161634

`A002236(A003307(n+1))`
-/

namespace A386857.P5445530191926161634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002236 (A003307 (n + 1)).toNat

end

end A386857.P5445530191926161634

/-!
# A386858: a(n) = floor(5*n^2/8).

The programs for A386858, the canonical program `A386858.P9817683384981520497` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386858 has offset 1).

The definition of A386858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*(n+1)²/8)` (program `A386858.P9817683384981520497`, by `A386858.P9817683384981520497.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386858.P9817683384981520497

`floor(5*(n+1)²/8)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A386858

/-- `floor(5*(n+1)²/8)` -/
def P9817683384981520497.Spec : Prop :=
  ∀ n, P9817683384981520497.a n = A386858 (n + 1)

theorem P9817683384981520497.correct : P9817683384981520497.Spec := by
  intro n
  simp only [A386858, Nat.add_sub_cancel]

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

/-! ## A386858.P970511234514722536

`∑[A214068(n+1)-(n+1)]`
-/

namespace A386858.P970511234514722536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214068 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386858.P970511234514722536

namespace A386858

/-- `∑[A214068(n+1)-(n+1)]` -/
def P970511234514722536.Spec : Prop :=
  ∀ n, P970511234514722536.a n = A386858 (n + 1)

end A386858

/-! ## A386858.P6747964496100846943

`A130519(n+2)+A007590(n+1)`
-/

namespace A386858.P6747964496100846943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n + 2) + A007590 (n + 1)

end

end A386858.P6747964496100846943

namespace A386858

/-- `A130519(n+2)+A007590(n+1)` -/
def P6747964496100846943.Spec : Prop :=
  ∀ n, P6747964496100846943.a n = A386858 (n + 1)

end A386858

/-!
# A386860: The total number of big descents in all parking functions of length n.

The programs for A386860, the canonical program `A386860.P4448378947613652940` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386860 has offset 1).

The definition of A386860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386860.P4448378947613652940

`C(n, 2)*(n+2)^(n-1)`

The canonical program, it is in `Seq.B000.C039`.
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

/-!
# A386861: The total number of big inversions in all parking functions of length n.

The programs for A386861, the canonical program `A386861.P12718987367945739866` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386861 has offset 1).

The definition of A386861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386861.P12718987367945739866

`(n+1)/4*n*(n-1)*(n+2)^(n-1)`

The canonical program, it is in `Seq.B000.C039`.
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
# A386868: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(2*n+2,k) * binomial(2*n-k,n-k).

The programs for A386868, there is no canonical definition to state claims against.
-/

/-! ## A386868.P14375284348919085939

`(n+1)*A064063(n+1)`
-/

namespace A386868.P14375284348919085939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064063 (n + 1)

end

end A386868.P14375284348919085939

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

/-! ## A386868.P12397383200777686204

`A064063(A077168(n))*A077168(n)`
-/

namespace A386868.P12397383200777686204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064063 (A077168 n).toNat * A077168 n

end

end A386868.P12397383200777686204

/-! ## A386868.P15272703777420706382

`(n+1)*A116866(∑[n+1])`
-/

namespace A386868.P15272703777420706382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A116866 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386868.P15272703777420706382

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

/-! ## A386877.P5490182979005684601

`A259567(A281891(n))`
-/

namespace A386877.P5490182979005684601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259567 (A281891 n).toNat

end

end A386877.P5490182979005684601

/-!
# A386878: Number of runs of 1's of length <= 3 over all binary strings of length n.

The programs for A386878, the canonical program `A386878.P3525845935937245273` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386878 has offset 0).

The definition of A386878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386878.P3525845935937245273

`ogf((x-x^2-x^4+x^5)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C039`.
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

/-! ## A386880.P6518705442141654959

`A059481(A000217(A000217(n))+n)`
-/

namespace A386880.P6518705442141654959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A000217 (A000217 n).toNat + (n : ℤ)).toNat

end

end A386880.P6518705442141654959

/-!
# A386882: a(n) = Sum_{k=0..n} 2^k * binomial(n,k) * binomial(n+4,k).

The programs for A386882, there is no canonical definition to state claims against.
-/

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

/-! ## A386882.P13148242770455314280

`A297191(A028552(n+1))`
-/

namespace A386882.P13148242770455314280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 (A028552 (n + 1)).toNat

end

end A386882.P13148242770455314280

/-! ## A386882.P870756911126809153

`A297191(A217748(n+4))`
-/

namespace A386882.P870756911126809153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 (A217748 (n + 4)).toNat

end

end A386882.P870756911126809153

/-! ## A386882.P7882931488606508437

`A008288(A090288(n+1))`
-/

namespace A386882.P7882931488606508437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A090288 (n + 1)).toNat

end

end A386882.P7882931488606508437

/-! ## A386882.P10957691628156429412

`A008288(A059993(n+1)+1)`
-/

namespace A386882.P10957691628156429412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A059993 (n + 1) + 1).toNat

end

end A386882.P10957691628156429412

/-! ## A386882.P12370245127484031819

`A008288(A001844(n+2)+1)`
-/

namespace A386882.P12370245127484031819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A001844 (n + 2) + 1).toNat

end

end A386882.P12370245127484031819

/-! ## A386882.P8596713896714630212

`A008288(A046092(n+2)+2)`
-/

namespace A386882.P8596713896714630212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A046092 (n + 2) + 2).toNat

end

end A386882.P8596713896714630212

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

The programs for A386884, the canonical program `A386884.P4556650635656247242` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386884 has offset 1).

The definition of A386884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386884.P4556650635656247242

`(n-3)*C(A004526(n), 2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A386884

/-- `(n-3)*C(A004526(n), 2)` -/
def P4556650635656247242.Spec : Prop :=
  ∀ n, P4556650635656247242.a n = A386884 (n + 1)

theorem P4556650635656247242.correct : P4556650635656247242.Spec := by
  intro n
  simp only [A386884, Nat.add_sub_cancel]

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

The programs for A386889, the canonical program `A386889.P17467461584644384473` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386889 has offset 0).

The definition of A386889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386889.P17467461584644384473

`16*a(n-1)-25*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=46, a(3)=660`

The canonical program, it is in `Seq.B000.C039`.
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

/-! ## A386891.P17648179029239504140

`A276134(A291929(n)^4)+A025457(A097333(n))`
-/

namespace A386891.P17648179029239504140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 (A291929 n ^ 4).toNat + A025457 (A097333 n).toNat

end

end A386891.P17648179029239504140

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
# A386896: a(n) = Sum_{k=0..n} binomial(5*n+1,k) * binomial(3*n-k,n-k).

The programs for A386896, there is no canonical definition to state claims against.
-/

/-! ## A386896.P18036081698725233026

`A110441(A062728(n))`
-/

namespace A386896.P18036081698725233026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 (A062728 n).toNat

end

end A386896.P18036081698725233026

/-! ## A386896.P8801659167056628854

`A110441(A062725(n)+n)`
-/

namespace A386896.P8801659167056628854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 (A062725 n + (n : ℤ)).toNat

end

end A386896.P8801659167056628854

/-! ## A386896.P8202941070263893844

`A206306(A062708(n+1))`
-/

namespace A386896.P8202941070263893844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 (A062708 (n + 1)).toNat

end

end A386896.P8202941070263893844

/-! ## A386896.P16833313267068377441

`A206306(A198392(2*n)+n)`
-/

namespace A386896.P16833313267068377441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 (A198392 (2 * n) + (n : ℤ)).toNat

end

end A386896.P16833313267068377441

/-! ## A386896.P14650094433474568208

`A206306(A051682(n+1)+n+1)`
-/

namespace A386896.P14650094433474568208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 (A051682 (n + 1) + (n + 1 : ℤ)).toNat

end

end A386896.P14650094433474568208

/-!
# A386897: a(n) = 4^n * binomial(5*n/2,n).

The programs for A386897, there is no canonical definition to state claims against.
-/

/-! ## A386897.P11538037791891698912

`A054335(A125201(n+1))`
-/

namespace A386897.P11538037791891698912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A125201 (n + 1)).toNat

end

end A386897.P11538037791891698912

/-! ## A386897.P690470070051292550

`A205813(A139273(n+1))`
-/

namespace A386897.P690470070051292550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205813 (A139273 (n + 1)).toNat

end

end A386897.P690470070051292550

/-! ## A386897.P2275679602688306006

`A054335(A069129(n+1)+n+1)`
-/

namespace A386897.P2275679602688306006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A069129 (n + 1) + (n + 1 : ℤ)).toNat

end

end A386897.P2275679602688306006

/-! ## A386897.P2375313691638236108

`A054335(A001105(2*n+1)+n)`
-/

namespace A386897.P2375313691638236108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A001105 (2 * n + 1) + (n : ℤ)).toNat

end

end A386897.P2375313691638236108

/-! ## A386897.P12630588467645071616

`A205813(A014106(2*n+1)-n)`
-/

namespace A386897.P12630588467645071616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205813 (A014106 (2 * n + 1) - (n : ℤ)).toNat

end

end A386897.P12630588467645071616

/-!
# A386898: a(n) = Sum_{k=0..n} binomial(5*n+1,k) * binomial(5*n-k,n-k).

The programs for A386898, there is no canonical definition to state claims against.
-/

/-! ## A386898.P17818378325535764613

`A193844(A022282(n)+A008574(n))`
-/

namespace A386898.P17818378325535764613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A022282 n + A008574 n).toNat

end

end A386898.P17818378325535764613

