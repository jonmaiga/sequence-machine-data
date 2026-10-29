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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C049
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
import Seq.B001.C012
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
import Seq.B003.C005
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A089900: Square array, read by antidiagonals, where the n-th row is the n-th binomial transform of the factorials, starting with row 0: {1!,2!,3!,...}.

The programs for A089900, there is no canonical definition to state claims against.
-/

/-! ## A089900.P12016753488259420544

`A173333(n+1)-A064911(A041331(n))`
-/

namespace A089900.P12016753488259420544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1) - A064911 (A041331 n).toNat

end

end A089900.P12016753488259420544

/-! ## A089900.P12924030669121683229

`A173333(n+1)-A102683(A027219(n))`
-/

namespace A089900.P12924030669121683229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1) - A102683 (A027219 n).toNat

end

end A089900.P12924030669121683229

/-! ## A089900.P5282918089202928036

`A173333(n+1)-A037908(A111835(n))`
-/

namespace A089900.P5282918089202928036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1) - A037908 (A111835 n).toNat

end

end A089900.P5282918089202928036

/-! ## A089900.P17117596328931929682

`A173333(n+1)-A185238(A019565(n))`
-/

namespace A089900.P17117596328931929682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1) - A185238 (A019565 n).toNat

end

end A089900.P17117596328931929682

/-! ## A089900.P15845251086713888082

`A173333(n+1)-A122841(A264812(n))`
-/

namespace A089900.P15845251086713888082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1) - A122841 (A264812 n).toNat

end

end A089900.P15845251086713888082

/-!
# A089901: Main diagonal of A089900, also the inverse hyperbinomial of A000312 (offset 1).

The programs for A089901, the canonical program `A089901.P18048685788681407838` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089901 has offset 0).

The definition of A089901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089901.P18048685788681407838

`∑{#}[n, n^(n-#)*C(n, #)*(#+1)!]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089901

/-- `∑{#}[n, n^(n-#)*C(n, #)*(#+1)!]` -/
def P18048685788681407838.Spec : Prop :=
  ∀ n, P18048685788681407838.a n = (A089901 n : ℚ)

end A089901

/-! ## A089901.P10027832909979306202

`n^(n+1)+A063170(n)`
-/

namespace A089901.P10027832909979306202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ (n + 1) : ℤ) + A063170 n

end

end A089901.P10027832909979306202

namespace A089901

/-- `n^(n+1)+A063170(n)` -/
def P10027832909979306202.Spec : Prop :=
  ∀ n, P10027832909979306202.a n = A089901 n

end A089901

/-! ## A089901.P16443940507457162656

`A007778(n)+record[A244137(n)]-A219706(n)`
-/

namespace A089901.P16443940507457162656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A219706 n)

end

end A089901.P16443940507457162656

namespace A089901

/-- `A007778(n)+record[A244137(n)]-A219706(n)` -/
def P16443940507457162656.Spec : Prop :=
  ∀ n, P16443940507457162656.a n = A089901 n

end A089901

/-! ## A089901.P9317153800792025689

`A304866(n+1)+A190314(n)+A007778(n)`
-/

namespace A089901.P9317153800792025689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304866 (n + 1) + (A190314 n + A007778 n)

end

end A089901.P9317153800792025689

namespace A089901

/-- `A304866(n+1)+A190314(n)+A007778(n)` -/
def P9317153800792025689.Spec : Prop :=
  ∀ n, P9317153800792025689.a n = A089901 n

end A089901

/-! ## A089901.P17254314849256304928

`A225723(A000124(n))+A007778(n)-A219706(n)`
-/

namespace A089901.P17254314849256304928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225723 (A000124 n).toNat + (A007778 n - A219706 n)

end

end A089901.P17254314849256304928

namespace A089901

/-- `A225723(A000124(n))+A007778(n)-A219706(n)` -/
def P17254314849256304928.Spec : Prop :=
  ∀ n, P17254314849256304928.a n = A089901 n

end A089901

/-!
# A089902: Antidiagonal sums of array A089900.

The programs for A089902, there is no canonical definition to state claims against.
-/

/-! ## A089902.P495817611882594250

`∑[A171181(A189846(n+1))]+(n+1)!`
-/

namespace A089902.P495817611882594250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A189846 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial (n + 1) : ℤ)

end

end A089902.P495817611882594250

/-! ## A089902.P1426359680977755778

`A063733(n)+A004526(A059371(n+2))`
-/

namespace A089902.P1426359680977755778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n + A004526 (A059371 (n + 2)).toNat

end

end A089902.P1426359680977755778

/-!
# A089903: Sum of digits of numbers between 0 and (1/9)*(10^n-1).

The programs for A089903, there is no canonical definition to state claims against.
-/

/-! ## A089903.P9384637015201872670

`A089905(n)-A089906(n)/2`
-/

namespace A089903.P9384637015201872670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089905 n : ℚ) - (A089906 n : ℚ) / 2

end

end A089903.P9384637015201872670

/-! ## A089903.P19612021152385414

`A089904(n)-A089905(n)/3`
-/

namespace A089903.P19612021152385414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089904 n : ℚ) - (A089905 n : ℚ) / 3

end

end A089903.P19612021152385414

/-! ## A089903.P13874769039803507624

`A089905(n)-(A087330(n)-n*10^n/2)/2`
-/

namespace A089903.P13874769039803507624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089905 n : ℚ) - ((A087330 n : ℚ) - (n : ℚ) * ((10 ^ n : ℚ) / 2)) / 2

end

end A089903.P13874769039803507624

/-! ## A089903.P14693845211583618779

`A089907(n)-A034967(n)/3-A089906(n)/2`
-/

namespace A089903.P14693845211583618779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089907 n : ℚ) - (A034967 n : ℚ) / 3 - (A089906 n : ℚ) / 2

end

end A089903.P14693845211583618779

/-! ## A089903.P8596080322998303466

`A089907(n)-A089909(n)/2-A089905(n)/3`
-/

namespace A089903.P8596080322998303466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089907 n : ℚ) - (A089909 n : ℚ) / 2 - (A089905 n : ℚ) / 3

end

end A089903.P8596080322998303466

/-! ## A089903.P17721544359183172393

`A089904(n)-(A089907(n)-A034967(n)/3)/3`
-/

namespace A089903.P17721544359183172393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089904 n : ℚ) - ((A089907 n : ℚ) - (A034967 n : ℚ) / 3) / 3

end

end A089903.P17721544359183172393

/-! ## A089903.P17459454356713935470

`A089904(n)+A087330(n)/5-A089906(n)/2`
-/

namespace A089903.P17459454356713935470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089904 n : ℚ) + (A087330 n : ℚ) / 5 - (A089906 n : ℚ) / 2

end

end A089903.P17459454356713935470

/-! ## A089903.P17987466893721790961

`A087330(n)-A089909(n)/4-A089906(n)/2`
-/

namespace A089903.P17987466893721790961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087330 n : ℚ) - (A089909 n : ℚ) / 4 - (A089906 n : ℚ) / 2

end

end A089903.P17987466893721790961

/-! ## A089903.P1959007661152683190

`A089904(n)-(A087330(n)-A089909(n)/4)/3`
-/

namespace A089903.P1959007661152683190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089904 n : ℚ) - ((A087330 n : ℚ) - (A089909 n : ℚ) / 4) / 3

end

end A089903.P1959007661152683190

/-! ## A089903.P10720284819576037779

`A089905(n)-A087330(n)/5-A089905(n)/3`
-/

namespace A089903.P10720284819576037779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089905 n : ℚ) - (A087330 n : ℚ) / 5 - (A089905 n : ℚ) / 3

end

end A089903.P10720284819576037779

/-!
# A089904: Sum of digits of numbers between 0 and (2/9)*(10^n-1).

The programs for A089904, there is no canonical definition to state claims against.
-/

/-! ## A089904.P15531504966054782366

`A089903(n)+A089905(n)/3`
-/

namespace A089904.P15531504966054782366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089903 n : ℚ) + (A089905 n : ℚ) / 3

end

end A089904.P15531504966054782366

/-! ## A089904.P8119413993263753963

`A089907(n)-A089909(n)/2`
-/

namespace A089904.P8119413993263753963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089907 n : ℚ) - (A089909 n : ℚ) / 2

end

end A089904.P8119413993263753963

/-! ## A089904.P3301186277445738525

`A089906(n)-A089907(n)/3`
-/

namespace A089904.P3301186277445738525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089906 n : ℚ) - (A089907 n : ℚ) / 3

end

end A089904.P3301186277445738525

/-! ## A089904.P12438885254085631967

`A089905(n)-A087330(n)/5`
-/

namespace A089904.P12438885254085631967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089905 n : ℚ) - (A087330 n : ℚ) / 5

end

end A089904.P12438885254085631967

/-! ## A089904.P16263756105513019207

`A087330(n)-n*10^n/2-A089907(n)/3`
-/

namespace A089904.P16263756105513019207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087330 n : ℚ) - (n : ℚ) * ((10 ^ n : ℚ) / 2) - (A089907 n : ℚ) / 3

end

end A089904.P16263756105513019207

/-! ## A089904.P15926991339928456974

`A089905(n)-(A089906(n)+n*10^n/2)/5`
-/

namespace A089904.P15926991339928456974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089905 n : ℚ) - ((A089906 n : ℚ) + (n : ℚ) * ((10 ^ n : ℚ) / 2)) / 5

end

end A089904.P15926991339928456974

/-! ## A089904.P6474677991025913205

`A089905(n)+A034967(n)/3-A089909(n)/2`
-/

namespace A089904.P6474677991025913205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089905 n : ℚ) + (A034967 n : ℚ) / 3 - (A089909 n : ℚ) / 2

end

end A089904.P6474677991025913205

/-! ## A089904.P15735511155156511000

`2*(A089905(n)-A089903(n))-A089907(n)/3`
-/

namespace A089904.P15735511155156511000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (A089905 n - A089903 n) : ℚ) - (A089907 n : ℚ) / 3

end

end A089904.P15735511155156511000

/-! ## A089904.P6668273736254345008

`A089903(n)+A089906(n)/2-A087330(n)/5`
-/

namespace A089904.P6668273736254345008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089903 n : ℚ) + (A089906 n : ℚ) / 2 - (A087330 n : ℚ) / 5

end

end A089904.P6668273736254345008

/-! ## A089904.P4468782978912598818

`A089907(n)-A034967(n)/3-A087330(n)/5`
-/

namespace A089904.P4468782978912598818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089907 n : ℚ) - (A034967 n : ℚ) / 3 - (A087330 n : ℚ) / 5

end

end A089904.P4468782978912598818

/-!
# A089905: Sum of digits of numbers between 0 and (3/9)*(10^n-1).

The programs for A089905, there is no canonical definition to state claims against.
-/

/-! ## A089905.P9913663348942672233

`A089903(n)+A089906(n)/2`
-/

namespace A089905.P9913663348942672233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089903 n : ℚ) + (A089906 n : ℚ) / 2

end

end A089905.P9913663348942672233

/-! ## A089905.P3655103614997207288

`3*(A089904(n)-A089903(n))`
-/

namespace A089905.P3655103614997207288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A089904 n - A089903 n)

end

end A089905.P3655103614997207288

/-! ## A089905.P8731548115130348077

`A089907(n)-A034967(n)/3`
-/

namespace A089905.P8731548115130348077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089907 n : ℚ) - (A034967 n : ℚ) / 3

end

end A089905.P8731548115130348077

/-! ## A089905.P16944839631574450165

`A089904(n)+A087330(n)/5`
-/

namespace A089905.P16944839631574450165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089904 n : ℚ) + (A087330 n : ℚ) / 5

end

end A089905.P16944839631574450165

/-! ## A089905.P13005607022222681181

`A087330(n)-A089909(n)/4`
-/

namespace A089905.P13005607022222681181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087330 n : ℚ) - (A089909 n : ℚ) / 4

end

end A089905.P13005607022222681181

/-!
# A089906: Sum of digits of numbers between 0 and (4/9)*(10^n-1).

The programs for A089906, there is no canonical definition to state claims against.
-/

/-! ## A089906.P6882345169777555540

`A087330(n)-n*10^n/2`
-/

namespace A089906.P6882345169777555540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087330 n : ℚ) - (n : ℚ) * ((10 ^ n : ℚ) / 2)

end

end A089906.P6882345169777555540

/-! ## A089906.P15951350125357966785

`2*(A089905(n)-A089903(n))`
-/

namespace A089906.P15951350125357966785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089905 n - A089903 n)

end

end A089906.P15951350125357966785

/-! ## A089906.P193533519233570079

`A089904(n)+A089907(n)/3`
-/

namespace A089906.P193533519233570079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089904 n : ℚ) + (A089907 n : ℚ) / 3

end

end A089906.P193533519233570079

/-! ## A089906.P6945232193119611779

`A089905(n)+A089908(n)/7`
-/

namespace A089906.P6945232193119611779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089905 n : ℚ) + (A089908 n : ℚ) / 7

end

end A089906.P6945232193119611779

/-! ## A089906.P15424711872887387476

`A089904(n)+(A089904(n)+A089909(n)/2)/3`
-/

namespace A089906.P15424711872887387476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089904 n : ℚ) + ((A089904 n : ℚ) + (A089909 n : ℚ) / 2) / 3

end

end A089906.P15424711872887387476

/-! ## A089906.P17928015059573970136

`A089904(n)+(A089905(n)+A034967(n)/3)/3`
-/

namespace A089906.P17928015059573970136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089904 n : ℚ) + ((A089905 n : ℚ) + (A034967 n : ℚ) / 3) / 3

end

end A089906.P17928015059573970136

/-! ## A089906.P6421457351353819235

`2*(A089907(n)-A034967(n)/3-A089903(n))`
-/

namespace A089906.P6421457351353819235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A089907 n : ℚ) - (A034967 n : ℚ) / 3 - (A089903 n : ℚ))

end

end A089906.P6421457351353819235

/-! ## A089906.P4108890750804901920

`A089907(n)/3+A089903(n)+A089905(n)/3`
-/

namespace A089906.P4108890750804901920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089907 n : ℚ) / 3 + ((A089903 n : ℚ) + (A089905 n : ℚ) / 3)

end

end A089906.P4108890750804901920

/-! ## A089906.P10130885882347938374

`A089907(n)/3+A089905(n)-A087330(n)/5`
-/

namespace A089906.P10130885882347938374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089907 n : ℚ) / 3 + ((A089905 n : ℚ) - (A087330 n : ℚ) / 5)

end

end A089906.P10130885882347938374

/-! ## A089906.P4019555733957118018

`A089908(n)/7+A089907(n)-A034967(n)/3`
-/

namespace A089906.P4019555733957118018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089908 n : ℚ) / 7 + ((A089907 n : ℚ) - (A034967 n : ℚ) / 3)

end

end A089906.P4019555733957118018

/-!
# A089907: Sum of digits of numbers between 0 and (6/9)*(10^n-1).

The programs for A089907, there is no canonical definition to state claims against.
-/

/-! ## A089907.P2583138766626470344

`A089904(n)+A089909(n)/2`
-/

namespace A089907.P2583138766626470344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089904 n : ℚ) + (A089909 n : ℚ) / 2

end

end A089907.P2583138766626470344

/-! ## A089907.P7226369342047251941

`A089905(n)+A034967(n)/3`
-/

namespace A089907.P7226369342047251941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089905 n : ℚ) + (A034967 n : ℚ) / 3

end

end A089907.P7226369342047251941

/-! ## A089907.P7173822396136906662

`3*(A089906(n)-A089904(n))`
-/

namespace A089907.P7173822396136906662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A089906 n - A089904 n)

end

end A089907.P7173822396136906662

/-! ## A089907.P5714230540125319806

`A089905(n)+n*Δ[A093143(n)]/3`
-/

namespace A089907.P5714230540125319806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089905 n : ℚ) + ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 3

end

end A089907.P5714230540125319806

/-! ## A089907.P17818928945403276620

`A089905(n)+45*(A094797(n)-1)/3`
-/

namespace A089907.P17818928945403276620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089905 n : ℚ) + (45 * (A094797 n - 1) : ℚ) / 3

end

end A089907.P17818928945403276620

/-! ## A089907.P4792367924233578825

`A089905(n)+n/2*Δ[A002283(n)]/3`
-/

namespace A089907.P4792367924233578825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089905 n : ℚ) + (n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ) / 3

end

end A089907.P4792367924233578825

/-! ## A089907.P6662533451618236220

`A089905(n)+lcm(3, n*A137233(n+1))/3`
-/

namespace A089907.P6662533451618236220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089905 n : ℚ) + (Int.lcm 3 ((n : ℤ) * A137233 (n + 1)) : ℚ) / 3

end

end A089907.P6662533451618236220

/-! ## A089907.P13078487228628667614

`3*(A087330(n)-n*10^n/2-A089904(n))`
-/

namespace A089907.P13078487228628667614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A087330 n : ℚ) - (n : ℚ) * ((10 ^ n : ℚ) / 2) - (A089904 n : ℚ))

end

end A089907.P13078487228628667614

/-! ## A089907.P10182262220195088040

`n/2*Δ[10^n]/3+A089903(n)+A089906(n)/2`
-/

namespace A089907.P10182262220195088040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3 + ((A089903 n : ℚ) + (A089906 n : ℚ) / 2)

end

end A089907.P10182262220195088040

/-! ## A089907.P9308794843189594530

`n/2*Δ[10^n]/3+A087330(n)-A089909(n)/4`
-/

namespace A089907.P9308794843189594530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3 + ((A087330 n : ℚ) - (A089909 n : ℚ) / 4)

end

end A089907.P9308794843189594530

/-!
# A089908: Sum of digits of numbers between 0 and (7/9)*(10^n-1).

The programs for A089908, there is no canonical definition to state claims against.
-/

/-! ## A089908.P4906659480341814163

`7*(A089906(n)-A089905(n))`
-/

namespace A089908.P4906659480341814163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A089906 n - A089905 n)

end

end A089908.P4906659480341814163

/-! ## A089908.P4925916423526107904

`7*(A087330(n)-n*10^n/2-A089905(n))`
-/

namespace A089908.P4925916423526107904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A087330 n : ℚ) - (n : ℚ) * ((10 ^ n : ℚ) / 2) - (A089905 n : ℚ))

end

end A089908.P4925916423526107904

/-! ## A089908.P6232332231801879535

`7*(2*(A089905(n)-A089903(n))-A089905(n))`
-/

namespace A089908.P6232332231801879535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (2 * (A089905 n - A089903 n) - A089905 n)

end

end A089908.P6232332231801879535

/-! ## A089908.P2442027047876376671

`7*(A089906(n)-(A089903(n)+A089906(n)/2))`
-/

namespace A089908.P2442027047876376671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A089906 n : ℚ) - ((A089903 n : ℚ) + (A089906 n : ℚ) / 2))

end

end A089908.P2442027047876376671

/-! ## A089908.P5281588765969483981

`7*(A089904(n)+A089907(n)/3-A089905(n))`
-/

namespace A089908.P5281588765969483981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A089904 n : ℚ) + (A089907 n : ℚ) / 3 - (A089905 n : ℚ))

end

end A089908.P5281588765969483981

/-! ## A089908.P381198570010350029

`7*(A089906(n)-(A089907(n)-A034967(n)/3))`
-/

namespace A089908.P381198570010350029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A089906 n : ℚ) - ((A089907 n : ℚ) - (A034967 n : ℚ) / 3))

end

end A089908.P381198570010350029

/-! ## A089908.P7401046594150738984

`7*(A087330(n)-n*10^n/2-(A089907(n)-A034967(n)/3))`
-/

namespace A089908.P7401046594150738984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A087330 n : ℚ) - (n : ℚ) * ((10 ^ n : ℚ) / 2) - ((A089907 n : ℚ) - (A034967 n : ℚ) / 3))

end

end A089908.P7401046594150738984

/-! ## A089908.P10896516321005006048

`7*(A089904(n)+A089907(n)/3-(A089907(n)-A034967(n)/3))`
-/

namespace A089908.P10896516321005006048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A089904 n : ℚ) + (A089907 n : ℚ) / 3 - ((A089907 n : ℚ) - (A034967 n : ℚ) / 3))

end

end A089908.P10896516321005006048

/-! ## A089908.P11808905050408426237

`7*(A089904(n)+A089907(n)/3-(A087330(n)-A089909(n)/4))`
-/

namespace A089908.P11808905050408426237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A089904 n : ℚ) + (A089907 n : ℚ) / 3 - ((A087330 n : ℚ) - (A089909 n : ℚ) / 4))

end

end A089908.P11808905050408426237

/-!
# A089909: Sum of digits of numbers between 0 and (8/9)*(10^n-1).

The programs for A089909, there is no canonical definition to state claims against.
-/

/-! ## A089909.P17902323397135656109

`2*(A089907(n)-A089904(n))`
-/

namespace A089909.P17902323397135656109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089907 n - A089904 n)

end

end A089909.P17902323397135656109

/-! ## A089909.P321535700852660877

`4*(A087330(n)-A089905(n))`
-/

namespace A089909.P321535700852660877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A087330 n - A089905 n)

end

end A089909.P321535700852660877

/-! ## A089909.P13324342615383021133

`4*(A089906(n)+n*10^n/2-A089905(n))`
-/

namespace A089909.P13324342615383021133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A089906 n : ℚ) + (n : ℚ) * ((10 ^ n : ℚ) / 2) - (A089905 n : ℚ))

end

end A089909.P13324342615383021133

/-! ## A089909.P11660429256178464041

`2*(A089905(n)+A034967(n)/3-A089904(n))`
-/

namespace A089909.P11660429256178464041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A089905 n : ℚ) + (A034967 n : ℚ) / 3 - (A089904 n : ℚ))

end

end A089909.P11660429256178464041

/-! ## A089909.P12727860847937999104

`2*(3*(A089906(n)-A089904(n))-A089904(n))`
-/

namespace A089909.P12727860847937999104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * (A089906 n - A089904 n) - A089904 n)

end

end A089909.P12727860847937999104

/-! ## A089909.P17911579047706047697

`2*(A089907(n)-(A089903(n)+A089905(n)/3))`
-/

namespace A089909.P17911579047706047697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A089907 n : ℚ) - ((A089903 n : ℚ) + (A089905 n : ℚ) / 3))

end

end A089909.P17911579047706047697

/-! ## A089909.P2903276092572618959

`2*(A089907(n)-(A089906(n)-A089907(n)/3))`
-/

namespace A089909.P2903276092572618959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A089907 n : ℚ) - ((A089906 n : ℚ) - (A089907 n : ℚ) / 3))

end

end A089909.P2903276092572618959

/-! ## A089909.P18360984524948138403

`2*(A089905(n)+A034967(n)/3-(A089903(n)+A089905(n)/3))`
-/

namespace A089909.P18360984524948138403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A089905 n : ℚ) + (A034967 n : ℚ) / 3 - ((A089903 n : ℚ) + (A089905 n : ℚ) / 3))

end

end A089909.P18360984524948138403

/-!
# A089910: Indices n at which blocks (1;1) occur in infinite Fibonacci word, i.e., such that A005614(n-1) = A005614(n-2) = 1.

The programs for A089910, the canonical program `A089910.P10830793790608428764` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089910 has offset 1).

The definition of A089910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089910.P10830793790608428764

`floor(ϕ*floor((n+1)*ϕ²))+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089910

/-- `floor(ϕ*floor((n+1)*ϕ²))+1` -/
def P10830793790608428764.Spec : Prop :=
  ∀ n, P10830793790608428764.a n = A089910 (n + 1)

theorem P10830793790608428764.correct : P10830793790608428764.Spec := by
  intro n
  simp only [A089910, Nat.add_sub_cancel]

end A089910

/-! ## A089910.P2314291016687159371

`∩[floor(ϕ*(n+1)), ceil(ϕ*n)]`
-/

namespace A089910.P2314291016687159371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089910.P2314291016687159371

namespace A089910

/-- `∩[floor(ϕ*(n+1)), ceil(ϕ*n)]` -/
def P2314291016687159371.Spec : Prop :=
  ∀ n, (P2314291016687159371.a n : ℤ) = A089910 (n + 1)

end A089910

/-! ## A089910.P7357927810960793589

`xor(-∑[Δ[2*ceil(ϕ*n)]+1], -1)`
-/

namespace A089910.P7357927810960793589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.goldenRatio * (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(∑ j ∈ Finset.range (n + 1), f1 j)) (-1)

end

end A089910.P7357927810960793589

namespace A089910

/-- `xor(-∑[Δ[2*ceil(ϕ*n)]+1], -1)` -/
def P7357927810960793589.Spec : Prop :=
  ∀ n, P7357927810960793589.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P11107199288864515393

`A003622(A004956(n+1))`
-/

namespace A089910.P11107199288864515393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A004956 (n + 1)).toNat

end

end A089910.P11107199288864515393

namespace A089910

/-- `A003622(A004956(n+1))` -/
def P11107199288864515393.Spec : Prop :=
  ∀ n, P11107199288864515393.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P4576273661138205814

`A003622(A026351(n+1))`
-/

namespace A089910.P4576273661138205814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A026351 (n + 1)).toNat

end

end A089910.P4576273661138205814

namespace A089910

/-- `A003622(A026351(n+1))` -/
def P4576273661138205814.Spec : Prop :=
  ∀ n, P4576273661138205814.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P2293936547539165950

`A003622(A000201(n+1)+1)`
-/

namespace A089910.P2293936547539165950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A000201 (n + 1) + 1).toNat

end

end A089910.P2293936547539165950

namespace A089910

/-- `A003622(A000201(n+1)+1)` -/
def P2293936547539165950.Spec : Prop :=
  ∀ n, P2293936547539165950.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P13551775960878565566

`A003622(A066096(n+1)+1)`
-/

namespace A089910.P13551775960878565566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A066096 (n + 1) + 1).toNat

end

end A089910.P13551775960878565566

namespace A089910

/-- `A003622(A066096(n+1)+1)` -/
def P13551775960878565566.Spec : Prop :=
  ∀ n, P13551775960878565566.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P7508418890849458193

`A276885(n+2)`
-/

namespace A089910.P7508418890849458193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276885 (n + 2)

end

end A089910.P7508418890849458193

namespace A089910

/-- `A276885(n+2)` -/
def P7508418890849458193.Spec : Prop :=
  ∀ n, P7508418890849458193.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P3187519800070992761

`record[Δ[A026353(n+2)]]`
-/

namespace A089910.P3187519800070992761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026353 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089910.P3187519800070992761

namespace A089910

/-- `record[Δ[A026353(n+2)]]` -/
def P3187519800070992761.Spec : Prop :=
  ∀ n, P3187519800070992761.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P3685343317968354674

`A007064(A000201(n+1)+1)`
-/

namespace A089910.P3685343317968354674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A000201 (n + 1) + 1).toNat

end

end A089910.P3685343317968354674

namespace A089910

/-- `A007064(A000201(n+1)+1)` -/
def P3685343317968354674.Spec : Prop :=
  ∀ n, P3685343317968354674.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P17718909040282514087

`A007066(A000201(n+1)+1)`
-/

namespace A089910.P17718909040282514087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (A000201 (n + 1) + 1).toNat

end

end A089910.P17718909040282514087

namespace A089910

/-- `A007066(A000201(n+1)+1)` -/
def P17718909040282514087.Spec : Prop :=
  ∀ n, P17718909040282514087.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P243550957057477680

`A026356(A000201(n+1)+1)`
-/

namespace A089910.P243550957057477680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (A000201 (n + 1) + 1).toNat

end

end A089910.P243550957057477680

namespace A089910

/-- `A026356(A000201(n+1)+1)` -/
def P243550957057477680.Spec : Prop :=
  ∀ n, P243550957057477680.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P16724608548237074960

`filter[A026356(n+1), A096270(#)]`
-/

namespace A089910.P16724608548237074960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A089910.P16724608548237074960

namespace A089910

/-- `filter[A026356(n+1), A096270(#)]` -/
def P16724608548237074960.Spec : Prop :=
  ∀ n, P16724608548237074960.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P11393300964947370765

`filter[A026356(n+1), A339052(#)]`
-/

namespace A089910.P11393300964947370765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339052 (f1 j).toNat = 1) n)

end

end A089910.P11393300964947370765

namespace A089910

/-- `filter[A026356(n+1), A339052(#)]` -/
def P11393300964947370765.Spec : Prop :=
  ∀ n, P11393300964947370765.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P13690616716603376408

`filter[A279934(n+1), A096270(#)]`
-/

namespace A089910.P13690616716603376408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A089910.P13690616716603376408

namespace A089910

/-- `filter[A279934(n+1), A096270(#)]` -/
def P13690616716603376408.Spec : Prop :=
  ∀ n, P13690616716603376408.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P2586770315281112101

`filter[A007066(n+2), A096270(#)]`
-/

namespace A089910.P2586770315281112101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A089910.P2586770315281112101

namespace A089910

/-- `filter[A007066(n+2), A096270(#)]` -/
def P2586770315281112101.Spec : Prop :=
  ∀ n, P2586770315281112101.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P763373425513667112

`filter[A007066(n+2), A339052(#)]`
-/

namespace A089910.P763373425513667112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339052 (f1 j).toNat = 1) n)

end

end A089910.P763373425513667112

namespace A089910

/-- `filter[A007066(n+2), A339052(#)]` -/
def P763373425513667112.Spec : Prop :=
  ∀ n, P763373425513667112.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P14798133084939449531

`A004956(A001950(n+1))`
-/

namespace A089910.P14798133084939449531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A001950 (n + 1)).toNat

end

end A089910.P14798133084939449531

namespace A089910

/-- `A004956(A001950(n+1))` -/
def P14798133084939449531.Spec : Prop :=
  ∀ n, P14798133084939449531.a n = A089910 (n + 1)

end A089910

/-! ## A089910.P11801288887229816744

`A050411(A003622(n+1))`
-/

namespace A089910.P11801288887229816744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050411 (A003622 (n + 1)).toNat

end

end A089910.P11801288887229816744

namespace A089910

/-- `A050411(A003622(n+1))` -/
def P11801288887229816744.Spec : Prop :=
  ∀ n, P11801288887229816744.a n = A089910 (n + 1)

end A089910

/-!
# A089911: a(n) = Fibonacci(n) mod 12.

The programs for A089911, the canonical program `A089911.P703489817726938726` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089911 has offset 0).

The definition of A089911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)%12` (program `A089911.P703489817726938726`, by `A089911.P703489817726938726.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089911.P1365226828547073777

`(a(n-1)+a(n-2))%12` with `a(0)=0, a(1)=1`
-/

namespace A089911.P1365226828547073777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + a (n - 2)) % 12

end

end A089911.P1365226828547073777

namespace A089911

/-- `(a(n-1)+a(n-2))%12` -/
def P1365226828547073777.Spec : Prop :=
  ∀ n, (P1365226828547073777.a n : ℤ) = A089911 n

end A089911

/-! ## A089911.P703489817726938726

`A000045(n)%12`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089911

/-- `A000045(n)%12` -/
def P703489817726938726.Spec : Prop :=
  ∀ n, P703489817726938726.a n = A089911 n

theorem P703489817726938726.correct : P703489817726938726.Spec := by
  intro n
  simp only [A089911]

end A089911

/-!
# A089913: Table T(n,k) = lcm(n,k)/gcd(n,k) = n*k/gcd(n,k)^2 read by antidiagonals (n >= 1, k >= 1).

The programs for A089913, the canonical program `A089913.P4006175656484384448` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089913 has offset 1).

The definition of A089913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089913.P4006175656484384448

`lcm(col(n)+1, row(n)-col(n)+1)/gcd(col(n)+1, row(n)-col(n)+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089913

/-- `lcm(col(n)+1, row(n)-col(n)+1)/gcd(col(n)+1, row(n)-col(n)+1)` -/
def P4006175656484384448.Spec : Prop :=
  ∀ n, P4006175656484384448.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P7276218212098126107

`lcm(row(n)-col(n)+1, col(n)+1)/gcd(row(n)-col(n)+1, col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089913.P7276218212098126107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) / (Int.gcd ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ)

end

end A089913.P7276218212098126107

namespace A089913

/-- `lcm(row(n)-col(n)+1, col(n)+1)/gcd(row(n)-col(n)+1, col(n)+1)` -/
def P7276218212098126107.Spec : Prop :=
  ∀ n, P7276218212098126107.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P4812589704500835487

`(col(n)+1)*(row(n)-col(n)+1)/gcd(col(n)+1, row(n)-col(n)+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089913.P4812589704500835487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℚ) / (Int.gcd (SequenceMachineLib.triCol n + 1 : ℤ) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) ^ 2 : ℚ)

end

end A089913.P4812589704500835487

namespace A089913

/-- `(col(n)+1)*(row(n)-col(n)+1)/gcd(col(n)+1, row(n)-col(n)+1)²` -/
def P4812589704500835487.Spec : Prop :=
  ∀ n, P4812589704500835487.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P971533718748308229

`(row(n)-col(n)+1)*(col(n)+1)/gcd(row(n)-col(n)+1, col(n)+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089913.P971533718748308229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) / (Int.gcd ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) (SequenceMachineLib.triCol n + 1 : ℤ) ^ 2 : ℚ)

end

end A089913.P971533718748308229

namespace A089913

/-- `(row(n)-col(n)+1)*(col(n)+1)/gcd(row(n)-col(n)+1, col(n)+1)²` -/
def P971533718748308229.Spec : Prop :=
  ∀ n, P971533718748308229.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P2777045925386981524

`A316431(A098350(n+1))`
-/

namespace A089913.P2777045925386981524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (A098350 (n + 1)).toNat

end

end A089913.P2777045925386981524

namespace A089913

/-- `A316431(A098350(n+1))` -/
def P2777045925386981524.Spec : Prop :=
  ∀ n, P2777045925386981524.a n = A089913 (n + 1)

end A089913

/-! ## A089913.P18212373860991936420

`A003990(n+1)/A003989(n+1)`
-/

namespace A089913.P18212373860991936420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A089913.P18212373860991936420

namespace A089913

/-- `A003990(n+1)/A003989(n+1)` -/
def P18212373860991936420.Spec : Prop :=
  ∀ n, P18212373860991936420.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P9691156656544215839

`A003991(n+1)/A003989(n+1)²`
-/

namespace A089913.P9691156656544215839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A003989 (n + 1) ^ 2 : ℚ)

end

end A089913.P9691156656544215839

namespace A089913

/-- `A003991(n+1)/A003989(n+1)²` -/
def P9691156656544215839.Spec : Prop :=
  ∀ n, P9691156656544215839.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P4445799261152860507

`A003990(n+1)²/A003991(n+1)`
-/

namespace A089913.P4445799261152860507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) ^ 2 : ℚ) / (A003991 (n + 1) : ℚ)

end

end A089913.P4445799261152860507

namespace A089913

/-- `A003990(n+1)²/A003991(n+1)` -/
def P4445799261152860507.Spec : Prop :=
  ∀ n, P4445799261152860507.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P9489901734866584939

`A003990(n+1)/gcd(A103217(n), A309557(n))`
-/

namespace A089913.P9489901734866584939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (Int.gcd (A103217 n) (A309557 n) : ℚ)

end

end A089913.P9489901734866584939

namespace A089913

/-- `A003990(n+1)/gcd(A103217(n), A309557(n))` -/
def P9489901734866584939.Spec : Prop :=
  ∀ n, P9489901734866584939.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P9260545173144712048

`A109042(lt[0, A109042(n)])²/A003991(n+1)`
-/

namespace A089913.P9260545173144712048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109042 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2 : ℚ) / (A003991 (n + 1) : ℚ)

end

end A089913.P9260545173144712048

namespace A089913

/-- `A109042(lt[0, A109042(n)])²/A003991(n+1)` -/
def P9260545173144712048.Spec : Prop :=
  ∀ n, P9260545173144712048.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P17140011142493488679

`A003990(n+1)/gcd(A003990(n+1), A049581(n))`
-/

namespace A089913.P17140011142493488679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (Int.gcd (A003990 (n + 1)) (A049581 n) : ℚ)

end

end A089913.P17140011142493488679

namespace A089913

/-- `A003990(n+1)/gcd(A003990(n+1), A049581(n))` -/
def P17140011142493488679.Spec : Prop :=
  ∀ n, P17140011142493488679.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P304340032684184652

`A003991(n+1)/gcd(A141387(n)², A003991(n+1))`
-/

namespace A089913.P304340032684184652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (Int.gcd (A141387 n ^ 2) (A003991 (n + 1)) : ℚ)

end

end A089913.P304340032684184652

namespace A089913

/-- `A003991(n+1)/gcd(A141387(n)², A003991(n+1))` -/
def P304340032684184652.Spec : Prop :=
  ∀ n, P304340032684184652.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P12309326433071023995

`lcm(A003983(n+1), A051125(n+1))/A003989(n+1)`
-/

namespace A089913.P12309326433071023995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003983 (n + 1)) (A051125 (n + 1)) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A089913.P12309326433071023995

namespace A089913

/-- `lcm(A003983(n+1), A051125(n+1))/A003989(n+1)` -/
def P12309326433071023995.Spec : Prop :=
  ∀ n, P12309326433071023995.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P7566639112357515177

`lcm(A003989(n+1), A257522(n+1))/A003989(n+1)`
-/

namespace A089913.P7566639112357515177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003989 (n + 1)) (A257522 (n + 1)) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A089913.P7566639112357515177

namespace A089913

/-- `lcm(A003989(n+1), A257522(n+1))/A003989(n+1)` -/
def P7566639112357515177.Spec : Prop :=
  ∀ n, P7566639112357515177.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P11796533890505487888

`A002260(n+1)/A003989(n+1)²*A004736(n+1)`
-/

namespace A089913.P11796533890505487888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A003989 (n + 1) ^ 2 : ℚ) * (A004736 (n + 1) : ℚ)

end

end A089913.P11796533890505487888

namespace A089913

/-- `A002260(n+1)/A003989(n+1)²*A004736(n+1)` -/
def P11796533890505487888.Spec : Prop :=
  ∀ n, P11796533890505487888.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P9940687998535326749

`A003990(n+1)/A003991(n+1)*A003990(A038722(n+1))`
-/

namespace A089913.P9940687998535326749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A003991 (n + 1) : ℚ) * (A003990 (A038722 (n + 1)).toNat : ℚ)

end

end A089913.P9940687998535326749

namespace A089913

/-- `A003990(n+1)/A003991(n+1)*A003990(A038722(n+1))` -/
def P9940687998535326749.Spec : Prop :=
  ∀ n, P9940687998535326749.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P8631072546903651677

`A322550(n+1)/A112543(n+1)`
-/

namespace A089913.P8631072546903651677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322550 (n + 1) : ℚ) / (A112543 (n + 1) : ℚ)

end

end A089913.P8631072546903651677

namespace A089913

/-- `A322550(n+1)/A112543(n+1)` -/
def P8631072546903651677.Spec : Prop :=
  ∀ n, P8631072546903651677.a n = (A089913 (n + 1) : ℚ)

end A089913

/-! ## A089913.P17807014393153712935

`A112543(A038722(n+1))*A112543(n+1)`
-/

namespace A089913.P17807014393153712935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (A038722 (n + 1)).toNat * A112543 (n + 1)

end

end A089913.P17807014393153712935

namespace A089913

/-- `A112543(A038722(n+1))*A112543(n+1)` -/
def P17807014393153712935.Spec : Prop :=
  ∀ n, P17807014393153712935.a n = A089913 (n + 1)

end A089913

/-! ## A089913.P7992004051916815728

`A112543(n+1)*A112543(A061579(n)+1)`
-/

namespace A089913.P7992004051916815728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (n + 1) * A112543 (A061579 n + 1).toNat

end

end A089913.P7992004051916815728

namespace A089913

/-- `A112543(n+1)*A112543(A061579(n)+1)` -/
def P7992004051916815728.Spec : Prop :=
  ∀ n, P7992004051916815728.a n = A089913 (n + 1)

end A089913

/-! ## A089913.P4533999912522342222

`(A106448(n+1)-A112543(n+1))*A112543(n+1)`
-/

namespace A089913.P4533999912522342222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106448 (n + 1) - A112543 (n + 1)) * A112543 (n + 1)

end

end A089913.P4533999912522342222

namespace A089913

/-- `(A106448(n+1)-A112543(n+1))*A112543(n+1)` -/
def P4533999912522342222.Spec : Prop :=
  ∀ n, P4533999912522342222.a n = A089913 (n + 1)

end A089913

/-!
# A089914: a(n) = 3^n *n! *L_{n}^{-1/3}(-1), where L_n^{alpha}(x) are generalized Laguerre polynomials.

The programs for A089914, the canonical program `A089914.P16783542462791558771` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089914 has offset 0).

The definition of A089914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089914.P16783542462791558771

`(6*n-1)*a(n-1)-(n-1)*(9*n-12)*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089914

/-- `(6*n-1)*a(n-1)-(n-1)*(9*n-12)*a(n-2)` -/
def P16783542462791558771.Spec : Prop :=
  ∀ n, P16783542462791558771.a n = A089914 n

theorem P16783542462791558771.correct : P16783542462791558771.Spec := by
  intro n
  simp only [A089914]

end A089914

/-!
# A089915: Special values of generalized Laguerre polynomials L_n^(alpha)(x): a(n) = 4^n *n! *L_n^(-1/4)(-1).

The programs for A089915, the canonical program `A089915.P17686273027501132623` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089915 has offset 0).

The definition of A089915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089915.P17686273027501132623

`(8*n-1)*a(n-1)-4*(n-1)*(4*n-5)*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089915

/-- `(8*n-1)*a(n-1)-4*(n-1)*(4*n-5)*a(n-2)` -/
def P17686273027501132623.Spec : Prop :=
  ∀ n, P17686273027501132623.a n = A089915 n

theorem P17686273027501132623.correct : P17686273027501132623.Spec := by
  intro n
  simp only [A089915]

end A089915

/-!
# A089916: a(n) = 5^n *n! *L_n^{-1/5}(-1), where L_n^(alpha)(x) are generalized Laguerre polynomials.

The programs for A089916, the canonical program `A089916.P6836422507146890835` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089916 has offset 0).

The definition of A089916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089916.P6836422507146890835

`(10*n-1)*a(n-1)-(n-1)*(25*n-30)*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089916

/-- `(10*n-1)*a(n-1)-(n-1)*(25*n-30)*a(n-2)` -/
def P6836422507146890835.Spec : Prop :=
  ∀ n, P6836422507146890835.a n = A089916 n

theorem P6836422507146890835.correct : P6836422507146890835.Spec := by
  intro n
  simp only [A089916]

end A089916

/-!
# A089917: a(n) = 6^n *n! *L_n^{-1/6}(-1), where L_n^(alpha)(x) are generalized Laguerre polynomials.

The programs for A089917, the canonical program `A089917.P11516991342525361664` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089917 has offset 0).

The definition of A089917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089917.P11516991342525361664

`(12*n-1)*a(n-1)-(n-1)*(36*n-42)*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089917

/-- `(12*n-1)*a(n-1)-(n-1)*(36*n-42)*a(n-2)` -/
def P11516991342525361664.Spec : Prop :=
  ∀ n, P11516991342525361664.a n = A089917 n

theorem P11516991342525361664.correct : P11516991342525361664.Spec := by
  intro n
  simp only [A089917]

end A089917

/-!
# A089918: (n+1)*a(n) equals the (n+1)-th term of the n-th binomial transform of this sequence.

The programs for A089918, there is no canonical definition to state claims against.
-/

/-! ## A089918.P4444412000417815201

`A018252(C(n!, gcd(n, ∑[n])))`
-/

namespace A089918.P4444412000417815201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.choose (Nat.factorial n) (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A089918.P4444412000417815201

/-!
# A089919: Numbers k such that 3^prime(k) - 2 is prime.

The programs for A089919, there is no canonical definition to state claims against.
-/

/-! ## A089919.P754874995476877694

`A000720(A086218(n+1))`
-/

namespace A089919.P754874995476877694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A086218 (n + 1)).toNat

end

end A089919.P754874995476877694

/-! ## A089919.P11805759237838193609

`record[A049084(A014224(n+1))]`
-/

namespace A089919.P11805759237838193609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A014224 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089919.P11805759237838193609

/-! ## A089919.P13350198976072899219

`A000720(p?[A014224(n+1)])`
-/

namespace A089919.P13350198976072899219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A089919.P13350198976072899219

/-!
# A089924: Number of plane partitions of n with 3 or more columns.

The programs for A089924, there is no canonical definition to state claims against.
-/

/-! ## A089924.P3915964489080858347

`A000219(n+1)-A000990(n+1)`
-/

namespace A089924.P3915964489080858347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (n + 1) - A000990 (n + 1)

end

end A089924.P3915964489080858347

/-! ## A089924.P13126665263722963499

`A000219(n+1)+A000712(n)-A000712(n+1)`
-/

namespace A089924.P13126665263722963499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (n + 1) + (A000712 n - A000712 (n + 1))

end

end A089924.P13126665263722963499

/-! ## A089924.P7015591209635918478

`A115982(n+1)+A000712(n)-A001523(n+1)`
-/

namespace A089924.P7015591209635918478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115982 (n + 1) + (A000712 n - A001523 (n + 1))

end

end A089924.P7015591209635918478

/-! ## A089924.P1917859423312086338

`Δ[A091360(n)-A000712(n)]`
-/

namespace A089924.P1917859423312086338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 n - A000712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089924.P1917859423312086338

/-! ## A089924.P3329069620740978395

`A091360(n+1)-(A091360(n)+A000990(n+1))`
-/

namespace A089924.P3329069620740978395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 (n + 1) - (A091360 n + A000990 (n + 1))

end

end A089924.P3329069620740978395

/-! ## A089924.P17694258145227026043

`A116600(n+1)+A000712(n)-A011782(n+1)`
-/

namespace A089924.P17694258145227026043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116600 (n + 1) + (A000712 n - A011782 (n + 1))

end

end A089924.P17694258145227026043

/-! ## A089924.P12061121619350398921

`A242642(A000217(n+1))-A000990(n+1)`
-/

namespace A089924.P12061121619350398921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A000217 (n + 1)).toNat - A000990 (n + 1)

end

end A089924.P12061121619350398921

/-! ## A089924.P2982269987941984263

`A000219(n+1)-Δ[A144064(A055998(n+1))]`
-/

namespace A089924.P2982269987941984263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A055998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (n + 1) - (f1 (n + 1) - f1 n)

end

end A089924.P2982269987941984263

/-! ## A089924.P2872558085844714339

`A242641(2*(n+1)²+1)-A000990(n+1)`
-/

namespace A089924.P2872558085844714339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (2 * (n + 1) ^ 2 + 1) - A000990 (n + 1)

end

end A089924.P2872558085844714339

/-!
# A089926: a(n) = 12*a(n-1) + a(n-2), a(0)=1, a(1)=6.

The programs for A089926, the canonical program `A089926.P3021254368068663451` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089926 has offset 0).

The definition of A089926 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)+a(n-2)` (program `A089926.P3021254368068663451`, by `A089926.P3021254368068663451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089926.P2858332999307170518

`ogf((1-6x)/(1-12x-x^2))`
-/

namespace A089926.P2858332999307170518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -12, -1] n

end

end A089926.P2858332999307170518

namespace A089926

/-- `ogf((1-6x)/(1-12x-x^2))` -/
def P2858332999307170518.Spec : Prop :=
  ∀ n, P2858332999307170518.a n = A089926 n

end A089926

/-! ## A089926.P3021254368068663451

`12*a(n-1)+a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089926

/-- `12*a(n-1)+a(n-2)` -/
def P3021254368068663451.Spec : Prop :=
  ∀ n, (P3021254368068663451.a n : ℤ) = A089926 n

theorem P3021254368068663451.correct : P3021254368068663451.Spec := by
  intro n
  simp only [A089926]

end A089926

/-! ## A089926.P8103023468038360443

`((6+sqrt(37))^n+(6-sqrt(37))^n)/2`
-/

namespace A089926.P8103023468038360443
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (37 : ℝ)) ^ n + (6 - Real.sqrt (37 : ℝ)) ^ n) / 2

end

end A089926.P8103023468038360443

namespace A089926

/-- `((6+sqrt(37))^n+(6-sqrt(37))^n)/2` -/
def P8103023468038360443.Spec : Prop :=
  ∀ n, P8103023468038360443.a n = (A089926 n : ℝ)

theorem P8103023468038360443.correct : P8103023468038360443.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A089926, Nat.add_sub_cancel, A089926.P8103023468038360443.a, A089926.P3021254368068663451.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A089926, Nat.add_sub_cancel, A089926.P8103023468038360443.a, A089926.P3021254368068663451.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A089926

/-! ## A089926.P14129418887198703950

`floor(A086928(n)/2)`
-/

namespace A089926.P14129418887198703950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086928 n : ℚ) / 2⌋

end

end A089926.P14129418887198703950

namespace A089926

/-- `floor(A086928(n)/2)` -/
def P14129418887198703950.Spec : Prop :=
  ∀ n, P14129418887198703950.a n = A089926 n

end A089926

/-! ## A089926.P7257936244876922227

`gcd(A057427(n)-1, A086928(n)/2)`
-/

namespace A089926.P7257936244876922227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057427 n - 1) (SequenceMachineLib.roundAway ((A086928 n : ℚ) / 2))

end

end A089926.P7257936244876922227

namespace A089926

/-- `gcd(A057427(n)-1, A086928(n)/2)` -/
def P7257936244876922227.Spec : Prop :=
  ∀ n, (P7257936244876922227.a n : ℤ) = A089926 n

end A089926

/-! ## A089926.P14541886381336196724

`A041060(xor(1, n))%A041060(n)`
-/

namespace A089926.P14541886381336196724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041060 (Nat.xor 1 n)) (A041060 n)

end

end A089926.P14541886381336196724

namespace A089926

/-- `A041060(xor(1, n))%A041060(n)` -/
def P14541886381336196724.Spec : Prop :=
  ∀ n, P14541886381336196724.a n = A089926 n

end A089926

/-! ## A089926.P12237320786563758076

`A041060(A004442(n))%A041060(n)`
-/

namespace A089926.P12237320786563758076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041060 (A004442 n).toNat) (A041060 n)

end

end A089926.P12237320786563758076

namespace A089926

/-- `A041060(A004442(n))%A041060(n)` -/
def P12237320786563758076.Spec : Prop :=
  ∀ n, P12237320786563758076.a n = A089926 n

end A089926

/-! ## A089926.P1472099541747476706

`A041060(n+1)-12*A041060(n)`
-/

namespace A089926.P1472099541747476706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041060 (n + 1) - 12 * A041060 n

end

end A089926.P1472099541747476706

namespace A089926

/-- `A041060(n+1)-12*A041060(n)` -/
def P1472099541747476706.Spec : Prop :=
  ∀ n, P1472099541747476706.a n = A089926 n

end A089926

/-!
# A089927: Expansion of 1/((1-x^2)(1-5x+x^2)).

The programs for A089927, the canonical program `A089927.P929513925822048465` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089927 has offset 0).

The definition of A089927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+5x^3-x^4))` (program `A089927.P929513925822048465`, by `A089927.P929513925822048465.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089927.P929513925822048465

`ogf(1/(1-5x+5x^3-x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089927

/-- `ogf(1/(1-5x+5x^3-x^4))` -/
def P929513925822048465.Spec : Prop :=
  ∀ n, P929513925822048465.a n = A089927 n

theorem P929513925822048465.correct : P929513925822048465.Spec := by
  intro n
  simp only [A089927]

end A089927

/-! ## A089927.P4937711325905294550

`5*a(n-1)-5*a(n-3)+a(n-4)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=120`
-/

namespace A089927.P4937711325905294550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25, 120] fun n a =>
  5 * a (n - 1) - 5 * a (n - 3) + a (n - 4)

end

end A089927.P4937711325905294550

namespace A089927

/-- `5*a(n-1)-5*a(n-3)+a(n-4)` -/
def P4937711325905294550.Spec : Prop :=
  ∀ n, P4937711325905294550.a n = A089927 n

end A089927

/-! ## A089927.P7051087269800372739

`(-1)^n/14-1/6+(23*A004254(n+1)-5*A004254(n))/21`
-/

namespace A089927.P7051087269800372739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) / 14 - (1 : ℚ) / 6 + (23 * A004254 (n + 1) - 5 * A004254 n : ℚ) / 21

end

end A089927.P7051087269800372739

namespace A089927

/-- `(-1)^n/14-1/6+(23*A004254(n+1)-5*A004254(n))/21` -/
def P7051087269800372739.Spec : Prop :=
  ∀ n, P7051087269800372739.a n = (A089927 n : ℚ)

end A089927

/-! ## A089927.P13548031152352234004

`∑[5*a(n-1)-a(n-2)]-a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A089927.P13548031152352234004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  5 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A089927.P13548031152352234004

namespace A089927

/-- `∑[5*a(n-1)-a(n-2)]-a(n-1)` -/
def P13548031152352234004.Spec : Prop :=
  ∀ n, P13548031152352234004.a n = A089927 n

end A089927

/-! ## A089927.P11301081074956676397

`∑[A099025(n)]`
-/

namespace A089927.P11301081074956676397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089927.P11301081074956676397

namespace A089927

/-- `∑[A099025(n)]` -/
def P11301081074956676397.Spec : Prop :=
  ∀ n, P11301081074956676397.a n = A089927 n

end A089927

/-! ## A089927.P14087982346088096302

`∑[∑[A005386(n+1)]]`
-/

namespace A089927.P14087982346088096302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005386 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089927.P14087982346088096302

namespace A089927

/-- `∑[∑[A005386(n+1)]]` -/
def P14087982346088096302.Spec : Prop :=
  ∀ n, P14087982346088096302.a n = A089927 n

end A089927

/-! ## A089927.P6524158450221843209

`floor(A003769(n+1)/3)`
-/

namespace A089927.P6524158450221843209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003769 (n + 1) : ℚ) / 3⌋

end

end A089927.P6524158450221843209

namespace A089927

/-- `floor(A003769(n+1)/3)` -/
def P6524158450221843209.Spec : Prop :=
  ∀ n, P6524158450221843209.a n = A089927 n

end A089927

/-! ## A089927.P18196902278799828553

`floor(A005386(n+2)/3)`
-/

namespace A089927.P18196902278799828553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005386 (n + 2) : ℚ) / 3⌋

end

end A089927.P18196902278799828553

namespace A089927

/-- `floor(A005386(n+2)/3)` -/
def P18196902278799828553.Spec : Prop :=
  ∀ n, P18196902278799828553.a n = A089927 n

end A089927

/-! ## A089927.P1235558409729522005

`A089817(n)-a(n-1)` with `a(0)=1`
-/

namespace A089927.P1235558409729522005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089817 n - a (n - 1)

end

end A089927.P1235558409729522005

namespace A089927

/-- `A089817(n)-a(n-1)` -/
def P1235558409729522005.Spec : Prop :=
  ∀ n, P1235558409729522005.a n = A089927 n

end A089927

/-! ## A089927.P17266741319146728162

`∑[∑[A003769(A028310(n))]-2]`
-/

namespace A089927.P17266741319146728162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003769 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089927.P17266741319146728162

namespace A089927

/-- `∑[∑[A003769(A028310(n))]-2]` -/
def P17266741319146728162.Spec : Prop :=
  ∀ n, P17266741319146728162.a n = A089927 n

end A089927

/-! ## A089927.P4545411024742104302

`floor(A003501(n+2)/21)`
-/

namespace A089927.P4545411024742104302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003501 (n + 2) : ℚ) / 21⌋

end

end A089927.P4545411024742104302

namespace A089927

/-- `floor(A003501(n+2)/21)` -/
def P4545411024742104302.Spec : Prop :=
  ∀ n, P4545411024742104302.a n = A089927 n

end A089927

/-!
# A089928: a(n) = 2*a(n-1) + 2*a(n-3) + a(n-4), with a(0)=1, a(1)=2, a(3)=4, a(4)=10.

The programs for A089928, the canonical program `A089928.P8670546800943924011` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089928 has offset 0).

The definition of A089928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-3)+a(n-4)` (program `A089928.P8670546800943924011`, by `A089928.P8670546800943924011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089928.P8670546800943924011

`2*a(n-1)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089928

/-- `2*a(n-1)+2*a(n-3)+a(n-4)` -/
def P8670546800943924011.Spec : Prop :=
  ∀ n, (P8670546800943924011.a n : ℤ) = A089928 n

theorem P8670546800943924011.correct : P8670546800943924011.Spec := by
  intro n
  simp only [A089928]

end A089928

/-! ## A089928.P2969668150665647926

`ogf(-1/(-1+2x+2x^3+x^4))`
-/

namespace A089928.P2969668150665647926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, -2, -1] n

end

end A089928.P2969668150665647926

namespace A089928

/-- `ogf(-1/(-1+2x+2x^3+x^4))` -/
def P2969668150665647926.Spec : Prop :=
  ∀ n, P2969668150665647926.a n = A089928 n

end A089928

/-! ## A089928.P13676628671517463867

`(a(n-3)/a(n-2)+2)*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A089928.P13676628671517463867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (a (n - 3) / a (n - 2) + 2) * a (n - 1)

end

end A089928.P13676628671517463867

namespace A089928

/-- `(a(n-3)/a(n-2)+2)*a(n-1)` -/
def P13676628671517463867.Spec : Prop :=
  ∀ n, P13676628671517463867.a n = (A089928 n : ℚ)

end A089928

/-! ## A089928.P14356336332024800058

`xor(1, and(1, n)+a(n-2)+2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A089928.P14356336332024800058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (Nat.land 1 n + (a (n - 2) + 2 * a (n - 1)))

end

end A089928.P14356336332024800058

namespace A089928

/-- `xor(1, and(1, n)+a(n-2)+2*a(n-1))` -/
def P14356336332024800058.Spec : Prop :=
  ∀ n, (P14356336332024800058.a n : ℤ) = A089928 n

end A089928

/-! ## A089928.P11041040717030949343

`xor(1, a(n-2))-(and(1, n)-2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A089928.P11041040717030949343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 1 (a (n - 2)) - ((Nat.land 1 n : ℤ) - 2 * a (n - 1))

end

end A089928.P11041040717030949343

namespace A089928

/-- `xor(1, a(n-2))-(and(1, n)-2*a(n-1))` -/
def P11041040717030949343.Spec : Prop :=
  ∀ n, P11041040717030949343.a n = A089928 n

end A089928

/-! ## A089928.P3599511240696763391

`xor(or(1, n)-n, a(n-2))+2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A089928.P3599511240696763391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor ((Nat.lor 1 n : ℤ) - (n : ℤ)) (a (n - 2)) + 2 * a (n - 1)

end

end A089928.P3599511240696763391

namespace A089928

/-- `xor(or(1, n)-n, a(n-2))+2*a(n-1)` -/
def P3599511240696763391.Spec : Prop :=
  ∀ n, P3599511240696763391.a n = A089928 n

end A089928

/-! ## A089928.P7803601953339965509

`a(n-1)/a(n-2)*xor(n%2, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A089928.P7803601953339965509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / a (n - 2) * (Int.xor ((n % 2 : ℕ) : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A089928.P7803601953339965509

namespace A089928

/-- `a(n-1)/a(n-2)*xor(n%2, a(n-1))` -/
def P7803601953339965509.Spec : Prop :=
  ∀ n, P7803601953339965509.a n = (A089928 n : ℚ)

end A089928

/-! ## A089928.P1750002497880472642

`∑[A116404(n)]`
-/

namespace A089928.P1750002497880472642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089928.P1750002497880472642

namespace A089928

/-- `∑[A116404(n)]` -/
def P1750002497880472642.Spec : Prop :=
  ∀ n, P1750002497880472642.a n = A089928 n

end A089928

/-! ## A089928.P14674859837881077062

`ceil(∑[∑[A001333(n)/2]])`
-/

namespace A089928.P14674859837881077062
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A089928.P14674859837881077062

namespace A089928

/-- `ceil(∑[∑[A001333(n)/2]])` -/
def P14674859837881077062.Spec : Prop :=
  ∀ n, P14674859837881077062.a n = A089928 n

end A089928

/-! ## A089928.P13877432641058147593

`round(∑[A000129(n+1)/2])`
-/

namespace A089928.P13877432641058147593
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089928.P13877432641058147593

namespace A089928

/-- `round(∑[A000129(n+1)/2])` -/
def P13877432641058147593.Spec : Prop :=
  ∀ n, P13877432641058147593.a n = A089928 n

end A089928

/-! ## A089928.P14069683414901252327

`∑[A121262(n)+A105635(n)]`
-/

namespace A089928.P14069683414901252327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n + A105635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089928.P14069683414901252327

namespace A089928

/-- `∑[A121262(n)+A105635(n)]` -/
def P14069683414901252327.Spec : Prop :=
  ∀ n, P14069683414901252327.a n = A089928 n

end A089928

/-! ## A089928.P7736619538228535618

`A135153(n+2)*A135153(n+3)`
-/

namespace A089928.P7736619538228535618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (n + 2) * A135153 (n + 3)

end

end A089928.P7736619538228535618

namespace A089928

/-- `A135153(n+2)*A135153(n+3)` -/
def P7736619538228535618.Spec : Prop :=
  ∀ n, P7736619538228535618.a n = A089928 n

end A089928

/-! ## A089928.P856328316969487383

`∑[A002965(n+1)*A002965(n+2)]`
-/

namespace A089928.P856328316969487383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (n + 1) * A002965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089928.P856328316969487383

namespace A089928

/-- `∑[A002965(n+1)*A002965(n+2)]` -/
def P856328316969487383.Spec : Prop :=
  ∀ n, P856328316969487383.a n = A089928 n

end A089928

/-! ## A089928.P14834110806127722153

`floor((A048739(n)+1)/2)`
-/

namespace A089928.P14834110806127722153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048739 n + 1 : ℚ) / 2⌋

end

end A089928.P14834110806127722153

namespace A089928

/-- `floor((A048739(n)+1)/2)` -/
def P14834110806127722153.Spec : Prop :=
  ∀ n, P14834110806127722153.a n = A089928 n

end A089928

/-! ## A089928.P4151480407022521386

`ceil(A213667(n+1)/4)`
-/

namespace A089928.P4151480407022521386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A213667 (n + 1) : ℚ) / 4⌉

end

end A089928.P4151480407022521386

namespace A089928

/-- `ceil(A213667(n+1)/4)` -/
def P4151480407022521386.Spec : Prop :=
  ∀ n, P4151480407022521386.a n = A089928 n

end A089928

/-! ## A089928.P2281651620492266728

`round(A078057(n+1)/4)`
-/

namespace A089928.P2281651620492266728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A078057 (n + 1) : ℚ) / 4)

end

end A089928.P2281651620492266728

namespace A089928

/-- `round(A078057(n+1)/4)` -/
def P2281651620492266728.Spec : Prop :=
  ∀ n, P2281651620492266728.a n = A089928 n

end A089928

/-! ## A089928.P13077047386145688577

`Δ[ceil((A105635(n+1)+1)/2)]`
-/

namespace A089928.P13077047386145688577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105635 (n + 1) + 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089928.P13077047386145688577

namespace A089928

/-- `Δ[ceil((A105635(n+1)+1)/2)]` -/
def P13077047386145688577.Spec : Prop :=
  ∀ n, P13077047386145688577.a n = A089928 n

end A089928

/-! ## A089928.P3329208773552115209

`round(A002203(n+2)/8)`
-/

namespace A089928.P3329208773552115209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002203 (n + 2) : ℚ) / 8)

end

end A089928.P3329208773552115209

namespace A089928

/-- `round(A002203(n+2)/8)` -/
def P3329208773552115209.Spec : Prop :=
  ∀ n, P3329208773552115209.a n = A089928 n

end A089928

/-! ## A089928.P9141054524625449443

`A284127(A000982(n+1))`
-/

namespace A089928.P9141054524625449443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284127 (A000982 (n + 1)).toNat

end

end A089928.P9141054524625449443

namespace A089928

/-- `A284127(A000982(n+1))` -/
def P9141054524625449443.Spec : Prop :=
  ∀ n, P9141054524625449443.a n = A089928 n

end A089928

/-! ## A089928.P1833554862439808907

`A284127(A074133(n+1))`
-/

namespace A089928.P1833554862439808907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284127 (A074133 (n + 1)).toNat

end

end A089928.P1833554862439808907

namespace A089928

/-- `A284127(A074133(n+1))` -/
def P1833554862439808907.Spec : Prop :=
  ∀ n, P1833554862439808907.a n = A089928 n

end A089928

/-!
# A089929: Algebraic degree of cot(Pi/n).

The programs for A089929, the canonical program `A089929.P2512725958832967487` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089929 has offset 2).

The definition of A089929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089929.P2512725958832967487

`A000010((n+2)/gcd(n+2, 2))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089929

/-- `A000010((n+2)/gcd(n+2, 2))` -/
def P2512725958832967487.Spec : Prop :=
  ∀ n, P2512725958832967487.a n = A089929 (n + 2)

theorem P2512725958832967487.correct : P2512725958832967487.Spec := by
  intro n
  simp only [A089929, Nat.add_sub_cancel]

end A089929

/-! ## A089929.P17277430726677363238

`A000010(gcd(n+2, ∑[n+1]))`
-/

namespace A089929.P17277430726677363238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A089929.P17277430726677363238

namespace A089929

/-- `A000010(gcd(n+2, ∑[n+1]))` -/
def P17277430726677363238.Spec : Prop :=
  ∀ n, P17277430726677363238.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P15804141800144622394

`A000010((n+2)/(2-and(1, n)))`
-/

namespace A089929.P15804141800144622394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ))).toNat

end

end A089929.P15804141800144622394

namespace A089929

/-- `A000010((n+2)/(2-and(1, n)))` -/
def P15804141800144622394.Spec : Prop :=
  ∀ n, P15804141800144622394.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P5191923404002907681

`A086700(n+1)/a(n-1)` with `a(0)=1`
-/

namespace A089929.P5191923404002907681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A086700 (n + 1) : ℚ) / a (n - 1)

end

end A089929.P5191923404002907681

namespace A089929

/-- `A086700(n+1)/a(n-1)` -/
def P5191923404002907681.Spec : Prop :=
  ∀ n, P5191923404002907681.a n = (A089929 (n + 2) : ℚ)

end A089929

/-! ## A089929.P6823041972552192117

`A000010(-((n+2)/or(n, -2)))`
-/

namespace A089929.P6823041972552192117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (-((n + 2 : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)))).toNat

end

end A089929.P6823041972552192117

namespace A089929

/-- `A000010(-((n+2)/or(n, -2)))` -/
def P6823041972552192117.Spec : Prop :=
  ∀ n, P6823041972552192117.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P7893960766524726190

`A000010(∑[n+2]%(n+2)+1)`
-/

namespace A089929.P7893960766524726190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) + 1)

end

end A089929.P7893960766524726190

namespace A089929

/-- `A000010(∑[n+2]%(n+2)+1)` -/
def P7893960766524726190.Spec : Prop :=
  ∀ n, P7893960766524726190.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P18028936784328270668

`A000010((n+2)/(and(1, n+1)+1))`
-/

namespace A089929.P18028936784328270668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (Nat.land 1 (n + 1) + 1 : ℚ))).toNat

end

end A089929.P18028936784328270668

namespace A089929

/-- `A000010((n+2)/(and(1, n+1)+1))` -/
def P18028936784328270668.Spec : Prop :=
  ∀ n, P18028936784328270668.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P14934669276909048842

`A000010((n+2)/(or(1, n)-(n-1)))`
-/

namespace A089929.P14934669276909048842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1) : ℚ))).toNat

end

end A089929.P14934669276909048842

namespace A089929

/-- `A000010((n+2)/(or(1, n)-(n-1)))` -/
def P14934669276909048842.Spec : Prop :=
  ∀ n, P14934669276909048842.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P9043418865597084851

`A000010(A176743(n))`
-/

namespace A089929.P9043418865597084851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A176743 n).toNat

end

end A089929.P9043418865597084851

namespace A089929

/-- `A000010(A176743(n))` -/
def P9043418865597084851.Spec : Prop :=
  ∀ n, P9043418865597084851.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P1616610997305257786

`A000010(A145051(n+1))`
-/

namespace A089929.P1616610997305257786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A145051 (n + 1)).toNat

end

end A089929.P1616610997305257786

namespace A089929

/-- `A000010(A145051(n+1))` -/
def P1616610997305257786.Spec : Prop :=
  ∀ n, P1616610997305257786.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P13880318227402450850

`A067541(n+1)*A177704(n)`
-/

namespace A089929.P13880318227402450850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (n + 1) * A177704 n

end

end A089929.P13880318227402450850

namespace A089929

/-- `A067541(n+1)*A177704(n)` -/
def P13880318227402450850.Spec : Prop :=
  ∀ n, P13880318227402450850.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P1066795163338875792

`A000010((n+2)/A040001(n))`
-/

namespace A089929.P1066795163338875792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A040001 n : ℚ))).toNat

end

end A089929.P1066795163338875792

namespace A089929

/-- `A000010((n+2)/A040001(n))` -/
def P1066795163338875792.Spec : Prop :=
  ∀ n, P1066795163338875792.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P2945747960109185602

`A000010((n+2)/A134451(n+2))`
-/

namespace A089929.P2945747960109185602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A134451 (n + 2) : ℚ))).toNat

end

end A089929.P2945747960109185602

namespace A089929

/-- `A000010((n+2)/A134451(n+2))` -/
def P2945747960109185602.Spec : Prop :=
  ∀ n, P2945747960109185602.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P14280442786484145199

`A000010(Δ[A144065(n)])`
-/

namespace A089929.P14280442786484145199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A089929.P14280442786484145199

namespace A089929

/-- `A000010(Δ[A144065(n)])` -/
def P14280442786484145199.Spec : Prop :=
  ∀ n, P14280442786484145199.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P16118009148148872524

`A000010(A026741(n+2))`
-/

namespace A089929.P16118009148148872524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A026741 (n + 2)).toNat

end

end A089929.P16118009148148872524

namespace A089929

/-- `A000010(A026741(n+2))` -/
def P16118009148148872524.Spec : Prop :=
  ∀ n, P16118009148148872524.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P15742811305271087130

`A000010(A062828(n+2))`
-/

namespace A089929.P15742811305271087130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062828 (n + 2)).toNat

end

end A089929.P15742811305271087130

namespace A089929

/-- `A000010(A062828(n+2))` -/
def P15742811305271087130.Spec : Prop :=
  ∀ n, P15742811305271087130.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P12413278077288276438

`A062570(A060819(n+2))`
-/

namespace A089929.P12413278077288276438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A060819 (n + 2)).toNat

end

end A089929.P12413278077288276438

namespace A089929

/-- `A062570(A060819(n+2))` -/
def P12413278077288276438.Spec : Prop :=
  ∀ n, P12413278077288276438.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P3882740796952310968

`A000010(A186646(n+2))`
-/

namespace A089929.P3882740796952310968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A186646 (n + 2)).toNat

end

end A089929.P3882740796952310968

namespace A089929

/-- `A000010(A186646(n+2))` -/
def P3882740796952310968.Spec : Prop :=
  ∀ n, P3882740796952310968.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P2931687603805128215

`A349137(A042963(n+2))`
-/

namespace A089929.P2931687603805128215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (A042963 (n + 2)).toNat

end

end A089929.P2931687603805128215

namespace A089929

/-- `A349137(A042963(n+2))` -/
def P2931687603805128215.Spec : Prop :=
  ∀ n, P2931687603805128215.a n = A089929 (n + 2)

end A089929

/-! ## A089929.P5778290861732553371

`A349137(A047445(n+2))`
-/

namespace A089929.P5778290861732553371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (A047445 (n + 2)).toNat

end

end A089929.P5778290861732553371

namespace A089929

/-- `A349137(A047445(n+2))` -/
def P5778290861732553371.Spec : Prop :=
  ∀ n, P5778290861732553371.a n = A089929 (n + 2)

end A089929

/-!
# A089931: a(n) = 3*a(n-1) + 3*a(n-3) + a(n-4).

The programs for A089931, the canonical program `A089931.P10015025367346126149` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089931 has offset 0).

The definition of A089931 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-3)+a(n-4)` (program `A089931.P10015025367346126149`, by `A089931.P10015025367346126149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089931.P581212862572364569

`ogf(1/(1-3x-3x^3-x^4))`
-/

namespace A089931.P581212862572364569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 0, -3, -1] n

end

end A089931.P581212862572364569

namespace A089931

/-- `ogf(1/(1-3x-3x^3-x^4))` -/
def P581212862572364569.Spec : Prop :=
  ∀ n, P581212862572364569.a n = A089931 n

end A089931

/-! ## A089931.P10015025367346126149

`3*a(n-1)+3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=30`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089931

/-- `3*a(n-1)+3*a(n-3)+a(n-4)` -/
def P10015025367346126149.Spec : Prop :=
  ∀ n, (P10015025367346126149.a n : ℤ) = A089931 n

theorem P10015025367346126149.correct : P10015025367346126149.Spec := by
  intro n
  simp only [A089931]

end A089931

/-! ## A089931.P12048876724276220463

`(a(n-3)/a(n-2)+3)*a(n-1)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A089931.P12048876724276220463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  (a (n - 3) / a (n - 2) + 3) * a (n - 1)

end

end A089931.P12048876724276220463

namespace A089931

/-- `(a(n-3)/a(n-2)+3)*a(n-1)` -/
def P12048876724276220463.Spec : Prop :=
  ∀ n, P12048876724276220463.a n = (A089931 n : ℚ)

end A089931

/-! ## A089931.P12156061425587513171

`A006190(A008619(n))*A006190(A080513(n))`
-/

namespace A089931.P12156061425587513171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (A008619 n).toNat * A006190 (A080513 n).toNat

end

end A089931.P12156061425587513171

namespace A089931

/-- `A006190(A008619(n))*A006190(A080513(n))` -/
def P12156061425587513171.Spec : Prop :=
  ∀ n, P12156061425587513171.a n = A089931 n

end A089931

/-! ## A089931.P11234610094745606439

`A006190(A110654(n+1))*A006190(A110654(n)+1)`
-/

namespace A089931.P11234610094745606439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (A110654 (n + 1)).toNat * A006190 (A110654 n + 1).toNat

end

end A089931.P11234610094745606439

namespace A089931

/-- `A006190(A110654(n+1))*A006190(A110654(n)+1)` -/
def P11234610094745606439.Spec : Prop :=
  ∀ n, P11234610094745606439.a n = A089931 n

end A089931

/-! ## A089931.P356671329771352216

`round(A006497(n+2)/13)`
-/

namespace A089931.P356671329771352216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006497 (n + 2) : ℚ) / 13)

end

end A089931.P356671329771352216

namespace A089931

/-- `round(A006497(n+2)/13)` -/
def P356671329771352216.Spec : Prop :=
  ∀ n, P356671329771352216.a n = A089931 n

end A089931

/-!
# A089932: G.f.: (1-x)^5/((-1+4*x-3*x^2+x^3)*(1-3*x+x^2)*(-1+2*x)).

The programs for A089932, there is no canonical definition to state claims against.
-/

/-! ## A089932.P7589211060896372832

`A180601(A154638(n))+A089883(n)`
-/

namespace A089932.P7589211060896372832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180601 (A154638 n).toNat + A089883 n

end

end A089932.P7589211060896372832

/-! ## A089932.P9787171369442461566

`A154638(n)-A095861(A002315(n))`
-/

namespace A089932.P9787171369442461566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154638 n - A095861 (A002315 n).toNat

end

end A089932.P9787171369442461566

/-!
# A089933: Concatenate the first n odd primes.

The programs for A089933, there is no canonical definition to state claims against.
-/

/-! ## A089933.P8665182753322699529

`A086043(A166099(n)+1)`
-/

namespace A089933.P8665182753322699529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086043 (A166099 n + 1).toNat

end

end A089933.P8665182753322699529

/-! ## A089933.P10065437783787142692

`A086043(A077528(n+2)-2)`
-/

namespace A089933.P10065437783787142692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086043 (A077528 (n + 2) - 2).toNat

end

end A089933.P10065437783787142692

/-! ## A089933.P15201441912635955704

`A086043(A157103(n)^n+n)`
-/

namespace A089933.P15201441912635955704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086043 (A157103 n ^ n + (n : ℤ)).toNat

end

end A089933.P15201441912635955704

/-!
# A089934: Table T(n,k) of the number of n X k matrices on {0,1} without adjacent 0's in any row or column.

The programs for A089934, there is no canonical definition to state claims against.
-/

/-! ## A089934.P18119925729746493900

`A089980(lt[1, A089980(n)])`
-/

namespace A089934.P18119925729746493900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A089934.P18119925729746493900

/-! ## A089934.P3880698631740140195

`A268750(n+1)-A268740(n+1)`
-/

namespace A089934.P3880698631740140195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268750 (n + 1) - A268740 (n + 1)

end

end A089934.P3880698631740140195

/-!
# A089935: a(n) = order of recurrence generating row (or column) n of A089934.

The programs for A089935, there is no canonical definition to state claims against.
-/

/-! ## A089935.P14151318576360836838

`A001224(n+2)-char[5]`
-/

namespace A089935.P14151318576360836838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A089935.P14151318576360836838

/-! ## A089935.P11111760176574406912

`A156728(3*(n+1))+Δ[A066067(n+1)]`
-/

namespace A089935.P11111760176574406912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (3 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A089935.P11111760176574406912

/-! ## A089935.P18151664684942535109

`A123192(A337195(n+3))+A001224(n+2)`
-/

namespace A089935.P18151664684942535109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123192 (A337195 (n + 3)).toNat + A001224 (n + 2)

end

end A089935.P18151664684942535109

/-! ## A089935.P12911849730943350962

`A068928(n+2)-A010052(A061033(n+3))`
-/

namespace A089935.P12911849730943350962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068928 (n + 2) - A010052 (A061033 (n + 3)).toNat

end

end A089935.P12911849730943350962

/-! ## A089935.P9563646749411352253

`A239086(A001224(n+2))`
-/

namespace A089935.P9563646749411352253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A001224 (n + 2)).toNat

end

end A089935.P9563646749411352253

/-!
# A089936: Number of 5 X n matrices with entries {0,1} without adjacent 0's in any row or column. 5th row of A089934.

The programs for A089936, there is no canonical definition to state claims against.
-/

/-! ## A089936.P10316451207055402992

`A268747(n+1)-A268737(n+1)`
-/

namespace A089936.P10316451207055402992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268747 (n + 1) - A268737 (n + 1)

end

end A089936.P10316451207055402992

/-! ## A089936.P6513690405184019781

`A089934(A374005(n+1))`
-/

namespace A089936.P6513690405184019781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (A374005 (n + 1)).toNat

end

end A089936.P6513690405184019781

/-! ## A089936.P12974976812410787367

`A089934(A155212(n)+13)`
-/

namespace A089936.P12974976812410787367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (A155212 n + 13).toNat

end

end A089936.P12974976812410787367

/-! ## A089936.P13299850071437346923

`A089934(A167614(n+3)+2)`
-/

namespace A089936.P13299850071437346923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (A167614 (n + 3) + 2).toNat

end

end A089936.P13299850071437346923

/-! ## A089936.P14415680113310405165

`A089934(A055999(n+3)+1-A005408(n))`
-/

namespace A089936.P14415680113310405165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (A055999 (n + 3) + 1 - A005408 n).toNat

end

end A089936.P14415680113310405165

/-!
# A089937: Number of 6 X n matrices with entries {0,1} without adjacent 0's in any row or column. 6th row of A089934.

The programs for A089937, there is no canonical definition to state claims against.
-/

/-! ## A089937.P16692756943021346105

`A268748(n+1)-A268738(n+1)`
-/

namespace A089937.P16692756943021346105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268748 (n + 1) - A268738 (n + 1)

end

end A089937.P16692756943021346105

/-! ## A089937.P9772727922989981915

`A089934(A374007(n+1))`
-/

namespace A089937.P9772727922989981915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (A374007 (n + 1)).toNat

end

end A089937.P9772727922989981915

/-! ## A089937.P17679965788452332217

`A089934(A052905(n+2)+11)`
-/

namespace A089937.P17679965788452332217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (A052905 (n + 2) + 11).toNat

end

end A089937.P17679965788452332217

/-! ## A089937.P10089728229889880824

`A089934(A052905(n+3))`
-/

namespace A089937.P10089728229889880824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (A052905 (n + 3)).toNat

end

end A089937.P10089728229889880824

/-! ## A089937.P7540154642916379482

`A089934(A055999(n+3)+1)`
-/

namespace A089937.P7540154642916379482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (A055999 (n + 3) + 1).toNat

end

end A089937.P7540154642916379482

/-!
# A089938: Number of 7 X n matrices with entries {0,1} without adjacent 0's in any row or column. 7th row of A089934.

The programs for A089938, there is no canonical definition to state claims against.
-/

/-! ## A089938.P5675577182871957490

`A268749(n+1)-A268739(n+1)`
-/

namespace A089938.P5675577182871957490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268749 (n + 1) - A268739 (n + 1)

end

end A089938.P5675577182871957490

/-! ## A089938.P2963830320056014440

`A089934(A374008(n+1))`
-/

namespace A089938.P2963830320056014440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (A374008 (n + 1)).toNat

end

end A089938.P2963830320056014440

/-! ## A089938.P1392353040776576560

`A089934(A000124(n+6)+6)`
-/

namespace A089938.P1392353040776576560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (A000124 (n + 6) + 6).toNat

end

end A089938.P1392353040776576560

/-! ## A089938.P16443524516778507154

`A089934(A055999(n+4))`
-/

namespace A089938.P16443524516778507154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (A055999 (n + 4)).toNat

end

end A089938.P16443524516778507154

/-! ## A089938.P11103228127468631777

`A089934(eq[6, A193592(n)])`
-/

namespace A089938.P11103228127468631777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089938.P11103228127468631777

/-!
# A089939: T(i,j) = 1 if F(i) AND F(j) = 0, otherwise 0, where F is A003714 and AND is the bitwise logical-and operation. Table read by antidiagonals.

The programs for A089939, there is no canonical definition to state claims against.
-/

/-! ## A089939.P15304513849078463114

`floor(acot(A334348(n)))`
-/

namespace A089939.P15304513849078463114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A334348 n : ℝ)⌋

end

end A089939.P15304513849078463114

/-! ## A089939.P13212838463504436676

`A000007(A334348(n))`
-/

namespace A089939.P13212838463504436676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A334348 n).toNat

end

end A089939.P13212838463504436676

/-! ## A089939.P15124487117407055281

`A005369(A334348(n)²)`
-/

namespace A089939.P15124487117407055281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A334348 n ^ 2).toNat

end

end A089939.P15124487117407055281

/-! ## A089939.P9183046968111150406

`A028967(A334348(n)²)`
-/

namespace A089939.P9183046968111150406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 (A334348 n ^ 2).toNat

end

end A089939.P9183046968111150406

/-! ## A089939.P4093670381254936896

`A055641(A334348(n)²)`
-/

namespace A089939.P4093670381254936896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A334348 n ^ 2).toNat

end

end A089939.P4093670381254936896

/-! ## A089939.P9561533347287780154

`A010057(A334348(n)+1)`
-/

namespace A089939.P9561533347287780154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A334348 n + 1).toNat

end

end A089939.P9561533347287780154

/-! ## A089939.P1106131564288703691

`A063524(A334348(n)+1)`
-/

namespace A089939.P1106131564288703691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A334348 n + 1).toNat

end

end A089939.P1106131564288703691

/-! ## A089939.P18041973258909833344

`A070536(A334348(n)+1)`
-/

namespace A089939.P18041973258909833344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (A334348 n + 1).toNat

end

end A089939.P18041973258909833344

/-! ## A089939.P5522219925415748465

`A268643(A334348(n)+1)`
-/

namespace A089939.P5522219925415748465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A334348 n + 1).toNat

end

end A089939.P5522219925415748465

/-! ## A089939.P13694491778536114183

`A347246(A334348(n)+1)`
-/

namespace A089939.P13694491778536114183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347246 (A334348 n + 1).toNat

end

end A089939.P13694491778536114183

/-! ## A089939.P3843018482890788500

`A080300(A334348(n)+2)`
-/

namespace A089939.P3843018482890788500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A334348 n + 2).toNat

end

end A089939.P3843018482890788500

/-! ## A089939.P1129811842197402772

`A004198(A334348(n)+4)`
-/

namespace A089939.P1129811842197402772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (A334348 n + 4).toNat

end

end A089939.P1129811842197402772

/-! ## A089939.P13919812275419354217

`A334348(A334348(n)+4)`
-/

namespace A089939.P13919812275419354217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334348 (A334348 n + 4).toNat

end

end A089939.P13919812275419354217

/-! ## A089939.P310323297867050878

`A000122(7*A334348(n))`
-/

namespace A089939.P310323297867050878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (7 * A334348 n).toNat

end

end A089939.P310323297867050878

/-! ## A089939.P8354680911402241467

`A000035(2^A334348(n))`
-/

namespace A089939.P8354680911402241467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A334348 n : ℤ))).toNat

end

end A089939.P8354680911402241467

/-! ## A089939.P7170114919166812853

`A318517(2^A334348(n))`
-/

namespace A089939.P7170114919166812853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318517 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A334348 n : ℤ))).toNat

end

end A089939.P7170114919166812853

/-! ## A089939.P3472387962157451734

`A000089(3^A334348(n))`
-/

namespace A089939.P3472387962157451734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A334348 n : ℤ))).toNat

end

end A089939.P3472387962157451734

/-! ## A089939.P6149027541780270087

`A000122(lcm(3, A334348(n)))`
-/

namespace A089939.P6149027541780270087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.lcm 3 (A334348 n))

end

end A089939.P6149027541780270087

/-! ## A089939.P1489294354327947257

`A334348(xor(4, A334348(n)))`
-/

namespace A089939.P1489294354327947257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334348 (Int.xor 4 (A334348 n)).toNat

end

end A089939.P1489294354327947257

/-! ## A089939.P6430971126057945215

`A000038(n)^A334348(n)`
-/

namespace A089939.P6430971126057945215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A334348 n : ℤ)

end

end A089939.P6430971126057945215

/-!
# A089940: Triangle read by rows: T(n,k)=binomial(n+k,floor((n-k)/2)).

The programs for A089940, the canonical program `A089940.P14537612486538944788` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089940 has offset 0).

The definition of A089940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+col(n), floor((row(n)-col(n))/2))` (program `A089940.P14537612486538944788`, by `A089940.P14537612486538944788.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089940.P14537612486538944788

`C(row(n)+col(n), floor((row(n)-col(n))/2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089940

/-- `C(row(n)+col(n), floor((row(n)-col(n))/2))` -/
def P14537612486538944788.Spec : Prop :=
  ∀ n, (P14537612486538944788.a n : ℤ) = A089940 n

theorem P14537612486538944788.correct : P14537612486538944788.Spec := by
  intro n
  simp only [A089940]

end A089940

/-! ## A089940.P2656944053247264837

`C(n-C(∑[char[∑[n+1]]], 2), A004526(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A089940.P2656944053247264837
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat (A004526 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))).toNat

end

end A089940.P2656944053247264837

namespace A089940

/-- `C(n-C(∑[char[∑[n+1]]], 2), A004526(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P2656944053247264837.Spec : Prop :=
  ∀ n, (P2656944053247264837.a n : ℤ) = A089940 n

end A089940

/-! ## A089940.P245354648299823651

`A140751(A214661(n+1))`
-/

namespace A089940.P245354648299823651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140751 (A214661 (n + 1)).toNat

end

end A089940.P245354648299823651

namespace A089940

/-- `A140751(A214661(n+1))` -/
def P245354648299823651.Spec : Prop :=
  ∀ n, P245354648299823651.a n = A089940 n

end A089940

/-! ## A089940.P8492759044579203252

`A034869(A056537(n+1)-1)`
-/

namespace A089940.P8492759044579203252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 (A056537 (n + 1) - 1).toNat

end

end A089940.P8492759044579203252

namespace A089940

/-- `A034869(A056537(n+1)-1)` -/
def P8492759044579203252.Spec : Prop :=
  ∀ n, P8492759044579203252.a n = A089940 n

end A089940

/-! ## A089940.P14220505413667114009

`C(A051162(n), floor(A025581(n)/2))`
-/

namespace A089940.P14220505413667114009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n).toNat ⌊(A025581 n : ℚ) / 2⌋.toNat

end

end A089940.P14220505413667114009

namespace A089940

/-- `C(A051162(n), floor(A025581(n)/2))` -/
def P14220505413667114009.Spec : Prop :=
  ∀ n, (P14220505413667114009.a n : ℤ) = A089940 n

end A089940

/-! ## A089940.P3302534791909640648

`C(A051162(n), A004526(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A089940.P3302534791909640648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n).toNat (A004526 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))).toNat

end

end A089940.P3302534791909640648

namespace A089940

/-- `C(A051162(n), A004526(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P3302534791909640648.Spec : Prop :=
  ∀ n, (P3302534791909640648.a n : ℤ) = A089940 n

end A089940

/-! ## A089940.P12286487445028923880

`A061554(A245300(n)+A002262(n))`
-/

namespace A089940.P12286487445028923880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A245300 n + A002262 n).toNat

end

end A089940.P12286487445028923880

namespace A089940

/-- `A061554(A245300(n)+A002262(n))` -/
def P12286487445028923880.Spec : Prop :=
  ∀ n, P12286487445028923880.a n = A089940 n

end A089940

/-! ## A089940.P7252315838193438002

`A107430(A245300(n)+A114327(n))`
-/

namespace A089940.P7252315838193438002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A245300 n + A114327 n).toNat

end

end A089940.P7252315838193438002

namespace A089940

/-- `A107430(A245300(n)+A114327(n))` -/
def P7252315838193438002.Spec : Prop :=
  ∀ n, P7252315838193438002.a n = A089940 n

end A089940

/-! ## A089940.P13865473809397783716

`A265848(A245300(n)+A025581(n))`
-/

namespace A089940.P13865473809397783716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265848 (A245300 n + A025581 n).toNat

end

end A089940.P13865473809397783716

namespace A089940

/-- `A265848(A245300(n)+A025581(n))` -/
def P13865473809397783716.Spec : Prop :=
  ∀ n, P13865473809397783716.a n = A089940 n

end A089940

/-! ## A089940.P638070838396741148

`C(A051162(n), A004526(A025581(n)))`
-/

namespace A089940.P638070838396741148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n).toNat (A004526 (A025581 n).toNat).toNat

end

end A089940.P638070838396741148

namespace A089940

/-- `C(A051162(n), A004526(A025581(n)))` -/
def P638070838396741148.Spec : Prop :=
  ∀ n, (P638070838396741148.a n : ℤ) = A089940 n

end A089940

/-!
# A089941: Row sums of triangle A089940.

The programs for A089941, there is no canonical definition to state claims against.
-/

/-! ## A089941.P13696434259147934286

`record[A224747(n)]-A037952(n)`
-/

namespace A089941.P13696434259147934286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A037952 n

end

end A089941.P13696434259147934286

/-! ## A089941.P8317102730771975275

`record[A224747(n)]-Δ[A001405(n)]`
-/

namespace A089941.P8317102730771975275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (n + 1) - f2 n)

end

end A089941.P8317102730771975275

/-! ## A089941.P468591811079211637

`A224747(n+3)-C(n, ceil(xor(1, n)/2))`
-/

namespace A089941.P468591811079211637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224747 (n + 3) - (Nat.choose n ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat : ℤ)

end

end A089941.P468591811079211637

/-! ## A089941.P9514007355221997109

`A307464(A077739(n+1))-char[8]`
-/

namespace A089941.P9514007355221997109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307464 (A077739 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A089941.P9514007355221997109

/-!
# A089942: Inverse binomial matrix applied to A039599.

The programs for A089942, there is no canonical definition to state claims against.
-/

/-! ## A089942.P14613742474838832396

`A071947(A061579(n))`
-/

namespace A089942.P14613742474838832396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071947 (A061579 n).toNat

end

end A089942.P14613742474838832396

/-! ## A089942.P14850611775323519255

`A071947(A114327(n)+n)`
-/

namespace A089942.P14850611775323519255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071947 (A114327 n + (n : ℤ)).toNat

end

end A089942.P14850611775323519255

/-! ## A089942.P6788297047435114803

`A071947(A038722(n+1)-1)`
-/

namespace A089942.P6788297047435114803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071947 (A038722 (n + 1) - 1).toNat

end

end A089942.P6788297047435114803

/-! ## A089942.P13356421654265156641

`A071947(A093995(n+1)-(n+1))`
-/

namespace A089942.P13356421654265156641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071947 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A089942.P13356421654265156641

/-! ## A089942.P8018569451639298392

`A071947(A038722(n+2))`
-/

namespace A089942.P8018569451639298392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071947 (A038722 (n + 2)).toNat

end

end A089942.P8018569451639298392

/-!
# A089943: Number of digits in candidates Sierpiński numbers of the first kind.

The programs for A089943, there is no canonical definition to state claims against.
-/

/-! ## A089943.P4533767734962934066

`A057755(record[A034444(n+1)]+n)`
-/

namespace A089943.P4533767734962934066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057755 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A089943.P4533767734962934066

/-!
# A089944: Square array, read by antidiagonals, where the n-th row is the n-th binomial transform of the natural numbers, with T(0,k) = (k+1) for k>=0.

The programs for A089944, the canonical program `A089944.P785157555384208964` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089944 has offset 0).

The definition of A089944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089944.P7947027714835198149

`(1+col(n))^(row(n)-col(n)-1)*(1+row(n))`
-/

namespace A089944.P7947027714835198149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) - 1 : ℤ) * (1 + SequenceMachineLib.triRow n : ℚ)

end

end A089944.P7947027714835198149

namespace A089944

/-- `(1+col(n))^(row(n)-col(n)-1)*(1+row(n))` -/
def P7947027714835198149.Spec : Prop :=
  ∀ n, P7947027714835198149.a n = (A089944 n : ℚ)

end A089944

/-! ## A089944.P15392100217520844569

`abs(A055136(lt[1, A002262(n)]))`
-/

namespace A089944.P15392100217520844569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)|

end

end A089944.P15392100217520844569

namespace A089944

/-- `abs(A055136(lt[1, A002262(n)]))` -/
def P15392100217520844569.Spec : Prop :=
  ∀ n, P15392100217520844569.a n = A089944 n

end A089944

/-! ## A089944.P785157555384208964

`A059298(n)/A007318(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089944

/-- `A059298(n)/A007318(n)` -/
def P785157555384208964.Spec : Prop :=
  ∀ n, P785157555384208964.a n = (A089944 n : ℚ)

end A089944

/-! ## A089944.P12227165095189406479

`abs(A059298(n)/A108086(n))`
-/

namespace A089944.P12227165095189406479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A059298 n : ℚ) / (A108086 n : ℚ)|

end

end A089944.P12227165095189406479

namespace A089944

/-- `abs(A059298(n)/A108086(n))` -/
def P12227165095189406479.Spec : Prop :=
  ∀ n, P12227165095189406479.a n = (A089944 n : ℚ)

end A089944

/-! ## A089944.P14639202073113086718

`abs(A059298(n)/A130595(n))`
-/

namespace A089944.P14639202073113086718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A059298 n : ℚ) / (A130595 n : ℚ)|

end

end A089944.P14639202073113086718

namespace A089944

/-- `abs(A059298(n)/A130595(n))` -/
def P14639202073113086718.Spec : Prop :=
  ∀ n, P14639202073113086718.a n = (A089944 n : ℚ)

end A089944

/-! ## A089944.P11834793665849335702

`A059298(n)/sqrt(A008459(n))`
-/

namespace A089944.P11834793665849335702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059298 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A089944.P11834793665849335702

namespace A089944

/-- `A059298(n)/sqrt(A008459(n))` -/
def P11834793665849335702.Spec : Prop :=
  ∀ n, P11834793665849335702.a n = (A089944 n : ℝ)

end A089944

/-! ## A089944.P6139086387666208589

`A059298(n)/Δ[A102363(n)]`
-/

namespace A089944.P6139086387666208589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059298 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A089944.P6139086387666208589

namespace A089944

/-- `A059298(n)/Δ[A102363(n)]` -/
def P6139086387666208589.Spec : Prop :=
  ∀ n, P6139086387666208589.a n = (A089944 n : ℚ)

end A089944

/-! ## A089944.P6863729639027639070

`2/A028326(n)*A059298(n)`
-/

namespace A089944.P6863729639027639070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A059298 n : ℚ)

end

end A089944.P6863729639027639070

namespace A089944

/-- `2/A028326(n)*A059298(n)` -/
def P6863729639027639070.Spec : Prop :=
  ∀ n, P6863729639027639070.a n = (A089944 n : ℚ)

end A089944

/-! ## A089944.P4529614979238820278

`A059297(comp[∑[n]])/A007318(n)`
-/

namespace A089944.P4529614979238820278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059297 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (A007318 n : ℚ)

end

end A089944.P4529614979238820278

namespace A089944

/-- `A059297(comp[∑[n]])/A007318(n)` -/
def P4529614979238820278.Spec : Prop :=
  ∀ n, P4529614979238820278.a n = (A089944 n : ℚ)

end A089944

/-! ## A089944.P16710297476770162924

`A059300(A061579(n))/A007318(n)`
-/

namespace A089944.P16710297476770162924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059300 (A061579 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A089944.P16710297476770162924

namespace A089944

/-- `A059300(A061579(n))/A007318(n)` -/
def P16710297476770162924.Spec : Prop :=
  ∀ n, P16710297476770162924.a n = (A089944 n : ℚ)

end A089944

/-! ## A089944.P6370838103527807516

`A199673(n+1)/A121757(n)`
-/

namespace A089944.P6370838103527807516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199673 (n + 1) : ℚ) / (A121757 n : ℚ)

end

end A089944.P6370838103527807516

namespace A089944

/-- `A199673(n+1)/A121757(n)` -/
def P6370838103527807516.Spec : Prop :=
  ∀ n, P6370838103527807516.a n = (A089944 n : ℚ)

end A089944

/-!
# A089945: Main diagonal of array A089944, in which the n-th row is the n-th binomial transform of the natural numbers.

The programs for A089945, the canonical program `A089945.P1106982908387300213` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089945 has offset 0).

The definition of A089945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089945.P1106982908387300213

`(2*n+1)*(n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089945

/-- `(2*n+1)*(n+1)^(n-1)` -/
def P1106982908387300213.Spec : Prop :=
  ∀ n, P1106982908387300213.a n = (A089945 n : ℚ)

end A089945

/-! ## A089945.P12654812705532855095

`lcm((n+1)^(n-1), Δ[n²])`
-/

namespace A089945.P12654812705532855095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A089945.P12654812705532855095

namespace A089945

/-- `lcm((n+1)^(n-1), Δ[n²])` -/
def P12654812705532855095.Spec : Prop :=
  ∀ n, (P12654812705532855095.a n : ℤ) = A089945 n

end A089945

/-! ## A089945.P14141231821940699157

`A053506(n+1)+A000169(n+1)`
-/

namespace A089945.P14141231821940699157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053506 (n + 1) + A000169 (n + 1)

end

end A089945.P14141231821940699157

namespace A089945

/-- `A053506(n+1)+A000169(n+1)` -/
def P14141231821940699157.Spec : Prop :=
  ∀ n, P14141231821940699157.a n = A089945 n

end A089945

/-! ## A089945.P14775104594348632730

`A053506(n+1)+A053506(n+1)+A000272(n+1)`
-/

namespace A089945.P14775104594348632730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053506 (n + 1) + (A053506 (n + 1) + A000272 (n + 1))

end

end A089945.P14775104594348632730

namespace A089945

/-- `A053506(n+1)+A053506(n+1)+A000272(n+1)` -/
def P14775104594348632730.Spec : Prop :=
  ∀ n, P14775104594348632730.a n = A089945 n

end A089945

/-! ## A089945.P2118680374879796946

`A000169(n+1)+A000169(n+1)-A000272(n+1)`
-/

namespace A089945.P2118680374879796946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) + (A000169 (n + 1) - A000272 (n + 1))

end

end A089945.P2118680374879796946

namespace A089945

/-- `A000169(n+1)+A000169(n+1)-A000272(n+1)` -/
def P2118680374879796946.Spec : Prop :=
  ∀ n, P2118680374879796946.a n = A089945 n

end A089945

/-! ## A089945.P17731143595219067408

`A245348(∑[n+1]+1)`
-/

namespace A089945.P17731143595219067408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245348 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A089945.P17731143595219067408

namespace A089945

/-- `A245348(∑[n+1]+1)` -/
def P17731143595219067408.Spec : Prop :=
  ∀ n, P17731143595219067408.a n = A089945 n

end A089945

/-! ## A089945.P70360928038080623

`A000312(n+1)-A076728(n+1)`
-/

namespace A089945.P70360928038080623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) - A076728 (n + 1)

end

end A089945.P70360928038080623

namespace A089945

/-- `A000312(n+1)-A076728(n+1)` -/
def P70360928038080623.Spec : Prop :=
  ∀ n, P70360928038080623.a n = A089945 n

end A089945

/-! ## A089945.P15885262495067682633

`A055541(n+2)+A053506(n+1)-A000312(n+1)`
-/

namespace A089945.P15885262495067682633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055541 (n + 2) + A053506 (n + 1) - A000312 (n + 1)

end

end A089945.P15885262495067682633

namespace A089945

/-- `A055541(n+2)+A053506(n+1)-A000312(n+1)` -/
def P15885262495067682633.Spec : Prop :=
  ∀ n, P15885262495067682633.a n = A089945 n

end A089945

/-!
# A089946: Secondary diagonal of array A089944, in which the n-th row is the n-th binomial transform of the natural numbers.

The programs for A089946, the canonical program `A089946.P7056448879017426492` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089946 has offset 0).

The definition of A089946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089946.P7056448879017426492

`2*(n+1)*(n+2)^(n-1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089946

/-- `2*(n+1)*(n+2)^(n-1)` -/
def P7056448879017426492.Spec : Prop :=
  ∀ n, P7056448879017426492.a n = (A089946 n : ℚ)

end A089946

/-! ## A089946.P12873431251502628983

`A122525(∑[n+2])`
-/

namespace A089946.P12873431251502628983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122525 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089946.P12873431251502628983

namespace A089946

/-- `A122525(∑[n+2])` -/
def P12873431251502628983.Spec : Prop :=
  ∀ n, P12873431251502628983.a n = A089946 n

end A089946

/-! ## A089946.P2332845341528107675

`A089460(∑[n+1]+1)`
-/

namespace A089946.P2332845341528107675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089460 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A089946.P2332845341528107675

namespace A089946

/-- `A089460(∑[n+1]+1)` -/
def P2332845341528107675.Spec : Prop :=
  ∀ n, P2332845341528107675.a n = A089946 n

end A089946

/-! ## A089946.P15129536965385981203

`A259334(∑[n+1]+2)`
-/

namespace A089946.P15129536965385981203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259334 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A089946.P15129536965385981203

namespace A089946

/-- `A259334(∑[n+1]+2)` -/
def P15129536965385981203.Spec : Prop :=
  ∀ n, P15129536965385981203.a n = A089946 n

end A089946

/-! ## A089946.P7283028303161152272

`A395611(∑[n+1]+n)`
-/

namespace A089946.P7283028303161152272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395611 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A089946.P7283028303161152272

namespace A089946

/-- `A395611(∑[n+1]+n)` -/
def P7283028303161152272.Spec : Prop :=
  ∀ n, P7283028303161152272.a n = A089946 n

end A089946

/-! ## A089946.P10642813661100796696

`A085389(n+1)+A055865(n+1)`
-/

namespace A089946.P10642813661100796696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085389 (n + 1) + A055865 (n + 1)

end

end A089946.P10642813661100796696

namespace A089946

/-- `A085389(n+1)+A055865(n+1)` -/
def P10642813661100796696.Spec : Prop :=
  ∀ n, P10642813661100796696.a n = A089946 n

end A089946

/-! ## A089946.P13968689645207504842

`A000007(n)+2*A055865(n+1)`
-/

namespace A089946.P13968689645207504842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A055865 (n + 1)

end

end A089946.P13968689645207504842

namespace A089946

/-- `A000007(n)+2*A055865(n+1)` -/
def P13968689645207504842.Spec : Prop :=
  ∀ n, P13968689645207504842.a n = A089946 n

end A089946

/-! ## A089946.P325412176084041602

`A206855(n+2)/(n+2)`
-/

namespace A089946.P325412176084041602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206855 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A089946.P325412176084041602

namespace A089946

/-- `A206855(n+2)/(n+2)` -/
def P325412176084041602.Spec : Prop :=
  ∀ n, P325412176084041602.a n = (A089946 n : ℚ)

end A089946

/-! ## A089946.P4205284716129894263

`A219694(∑[n+2])/(n+2)`
-/

namespace A089946.P4205284716129894263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219694 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 2 : ℚ)

end

end A089946.P4205284716129894263

namespace A089946

/-- `A219694(∑[n+2])/(n+2)` -/
def P4205284716129894263.Spec : Prop :=
  ∀ n, P4205284716129894263.a n = (A089946 n : ℚ)

end A089946

/-! ## A089946.P8881937533846401495

`A053506(n+2)-2*A053507(n+2)`
-/

namespace A089946.P8881937533846401495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053506 (n + 2) - 2 * A053507 (n + 2)

end

end A089946.P8881937533846401495

namespace A089946

/-- `A053506(n+2)-2*A053507(n+2)` -/
def P8881937533846401495.Spec : Prop :=
  ∀ n, P8881937533846401495.a n = A089946 n

end A089946

/-!
# A089947: G.f.: (1-x)^9/((1-5*x+6*x^2-4*x^3+x^4)*(-1+4*x-3*x^2+x^3)*(1-3*x+x^2)*(-1+2*x)).

The programs for A089947, there is no canonical definition to state claims against.
-/

/-! ## A089947.P7831058663188975895

`A247914(A008353(n))`
-/

namespace A089947.P7831058663188975895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A008353 n).toNat

end

end A089947.P7831058663188975895

/-!
# A089949: Triangle T(n,k), read by rows, given by [0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, ...] DELTA [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, ...] where DELTA is the operator defined in A084938.

The programs for A089949, there is no canonical definition to state claims against.
-/

/-! ## A089949.P13233584945178457233

`A111184(A038722(n+1)%comp[∑[n-2]])`
-/

namespace A089949.P13233584945178457233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111184 (Int.tmod (A038722 (n + 1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A089949.P13233584945178457233

/-! ## A089949.P7291156901917432661

`A111184(A123578(n)+A056943(n))`
-/

namespace A089949.P7291156901917432661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111184 (A123578 n + A056943 n).toNat

end

end A089949.P7291156901917432661

/-! ## A089949.P12048568949141542242

`A111184(∑[2*n]%comp[∑[n]]+n²%(n+1))`
-/

namespace A089949.P12048568949141542242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111184 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n ^ 2 % (n + 1))

end

end A089949.P12048568949141542242

/-! ## A089949.P6368842706854617615

`A111184(a(C(2, n+2))*A038722(n+1))` with `a(0)=1`
-/

namespace A089949.P6368842706854617615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111184 (a (Nat.choose 2 (n + 2)) * A038722 (n + 1)).toNat

end

end A089949.P6368842706854617615

/-! ## A089949.P1717832770955840015

`A111184((∑[char[∑[n]]]²-n)%(2^n))`
-/

namespace A089949.P1717832770955840015
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111184 (Int.tmod ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)) (2 ^ n : ℤ)).toNat

end

end A089949.P1717832770955840015

/-!
# A089950: Partial sums of A001652.

The programs for A089950, the canonical program `A089950.P18075982429225354271` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089950 has offset 0).

The definition of A089950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089950.P4350793418702040029

`ogf((3x-x^2)/(1-8x+14x^2-8x^3+x^4))`
-/

namespace A089950.P4350793418702040029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -1] [1, -8, 14, -8, 1] n

end

end A089950.P4350793418702040029

namespace A089950

/-- `ogf((3x-x^2)/(1-8x+14x^2-8x^3+x^4))` -/
def P4350793418702040029.Spec : Prop :=
  ∀ n, P4350793418702040029.a n = A089950 n

end A089950

/-! ## A089950.P18075982429225354271

`A000129(n+1)²-floor((n+2)/2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089950

/-- `A000129(n+1)²-floor((n+2)/2)` -/
def P18075982429225354271.Spec : Prop :=
  ∀ n, P18075982429225354271.a n = A089950 n

theorem P18075982429225354271.correct : P18075982429225354271.Spec := by
  intro n
  simp only [A089950]

end A089950

/-! ## A089950.P11614107107975606437

`∑[∑[ogf((3x-x^2)/(1-6x+x^2))]]`
-/

namespace A089950.P11614107107975606437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -1] [1, -6, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089950.P11614107107975606437

namespace A089950

/-- `∑[∑[ogf((3x-x^2)/(1-6x+x^2))]]` -/
def P11614107107975606437.Spec : Prop :=
  ∀ n, P11614107107975606437.a n = A089950 n

end A089950

/-! ## A089950.P14488863708494118364

`∑[floor(a(n-1)/(3-sqrt(8)))+3]` with `a(0)=0`
-/

namespace A089950.P14488863708494118364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089950.P14488863708494118364

namespace A089950

/-- `∑[floor(a(n-1)/(3-sqrt(8)))+3]` -/
def P14488863708494118364.Spec : Prop :=
  ∀ n, P14488863708494118364.a n = A089950 n

end A089950

/-! ## A089950.P3285058170130626608

`∑[(floor((sqrt(2)+1)^(2*n+1))-2)/4]`
-/

namespace A089950.P3285058170130626608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Real.sqrt (2 : ℝ) + 1) ^ (2 * n + 1)⌋ - 2 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089950.P3285058170130626608

namespace A089950

/-- `∑[(floor((sqrt(2)+1)^(2*n+1))-2)/4]` -/
def P3285058170130626608.Spec : Prop :=
  ∀ n, P3285058170130626608.a n = (A089950 n : ℚ)

end A089950

/-! ## A089950.P10200701752872978555

`abs(∑[A046090(n)-1])`
-/

namespace A089950.P10200701752872978555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046090 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A089950.P10200701752872978555

namespace A089950

/-- `abs(∑[A046090(n)-1])` -/
def P10200701752872978555.Spec : Prop :=
  ∀ n, P10200701752872978555.a n = A089950 n

end A089950

/-! ## A089950.P7242639043424790960

`abs(∑[A009759(n)+3])`
-/

namespace A089950.P7242639043424790960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009759 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A089950.P7242639043424790960

namespace A089950

/-- `abs(∑[A009759(n)+3])` -/
def P7242639043424790960.Spec : Prop :=
  ∀ n, P7242639043424790960.a n = A089950 n

end A089950

/-! ## A089950.P5678864439981162122

`∑[A241976(n+1)]/3`
-/

namespace A089950.P5678864439981162122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241976 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A089950.P5678864439981162122

namespace A089950

/-- `∑[A241976(n+1)]/3` -/
def P5678864439981162122.Spec : Prop :=
  ∀ n, P5678864439981162122.a n = (A089950 n : ℚ)

end A089950

/-! ## A089950.P7812962584729648866

`∑[2*A001652(n)]/2`
-/

namespace A089950.P7812962584729648866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001652 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A089950.P7812962584729648866

namespace A089950

/-- `∑[2*A001652(n)]/2` -/
def P7812962584729648866.Spec : Prop :=
  ∀ n, P7812962584729648866.a n = (A089950 n : ℚ)

end A089950

/-! ## A089950.P17668168416180523547

`∑[A293004(Δ[n²])]/2`
-/

namespace A089950.P17668168416180523547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A089950.P17668168416180523547

namespace A089950

/-- `∑[A293004(Δ[n²])]/2` -/
def P17668168416180523547.Spec : Prop :=
  ∀ n, P17668168416180523547.a n = (A089950 n : ℚ)

end A089950

/-! ## A089950.P1035884989051710139

`∑[∑[A001541(n)]]-(n+1)`
-/

namespace A089950.P1035884989051710139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A089950.P1035884989051710139

namespace A089950

/-- `∑[∑[A001541(n)]]-(n+1)` -/
def P1035884989051710139.Spec : Prop :=
  ∀ n, P1035884989051710139.a n = A089950 n

end A089950

/-! ## A089950.P2485487470947756711

`∑[A077444(n+1)-2]/4`
-/

namespace A089950.P2485487470947756711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077444 (n + 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A089950.P2485487470947756711

namespace A089950

/-- `∑[A077444(n+1)-2]/4` -/
def P2485487470947756711.Spec : Prop :=
  ∀ n, P2485487470947756711.a n = (A089950 n : ℚ)

end A089950

/-! ## A089950.P15357605103346139186

`(A001108(n+1)-(n+1))/2`
-/

namespace A089950.P15357605103346139186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001108 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A089950.P15357605103346139186

namespace A089950

/-- `(A001108(n+1)-(n+1))/2` -/
def P15357605103346139186.Spec : Prop :=
  ∀ n, P15357605103346139186.a n = (A089950 n : ℚ)

end A089950

/-! ## A089950.P4296040586332181729

`(A115598(n+1)-(n+1))/2`
-/

namespace A089950.P4296040586332181729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115598 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A089950.P4296040586332181729

namespace A089950

/-- `(A115598(n+1)-(n+1))/2` -/
def P4296040586332181729.Spec : Prop :=
  ∀ n, P4296040586332181729.a n = (A089950 n : ℚ)

end A089950

/-! ## A089950.P5960327455578375502

`(A048739(2*n)-(n+1))/2`
-/

namespace A089950.P5960327455578375502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048739 (2 * n) - (n + 1 : ℤ) : ℚ) / 2

end

end A089950.P5960327455578375502

namespace A089950

/-- `(A048739(2*n)-(n+1))/2` -/
def P5960327455578375502.Spec : Prop :=
  ∀ n, P5960327455578375502.a n = (A089950 n : ℚ)

end A089950

/-! ## A089950.P2173121613926048084

`∑[A171842(2*n+1)]-(n+1)`
-/

namespace A089950.P2173121613926048084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A089950.P2173121613926048084

namespace A089950

/-- `∑[A171842(2*n+1)]-(n+1)` -/
def P2173121613926048084.Spec : Prop :=
  ∀ n, P2173121613926048084.a n = A089950 n

end A089950

/-! ## A089950.P7651305261883878055

`A053141(n)+∑[A001108(n)]`
-/

namespace A089950.P7651305261883878055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089950.P7651305261883878055

namespace A089950

/-- `A053141(n)+∑[A001108(n)]` -/
def P7651305261883878055.Spec : Prop :=
  ∀ n, P7651305261883878055.a n = A089950 n

end A089950

/-! ## A089950.P6060154064891296465

`A053142(n)+∑[A053141(n)]`
-/

namespace A089950.P6060154064891296465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089950.P6060154064891296465

namespace A089950

/-- `A053142(n)+∑[A053141(n)]` -/
def P6060154064891296465.Spec : Prop :=
  ∀ n, P6060154064891296465.a n = A089950 n

end A089950

/-! ## A089950.P15690322341539757882

`∑[A001652(n)]%A002315(n)`
-/

namespace A089950.P15690322341539757882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A002315 n)

end

end A089950.P15690322341539757882

namespace A089950

/-- `∑[A001652(n)]%A002315(n)` -/
def P15690322341539757882.Spec : Prop :=
  ∀ n, P15690322341539757882.a n = A089950 n

end A089950

/-! ## A089950.P12934187979001972339

`A089928(2*n)-A008619(n)`
-/

namespace A089950.P12934187979001972339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089928 (2 * n) - A008619 n

end

end A089950.P12934187979001972339

namespace A089950

/-- `A089928(2*n)-A008619(n)` -/
def P12934187979001972339.Spec : Prop :=
  ∀ n, P12934187979001972339.a n = A089950 n

end A089950

/-!
# A089951: Numbers having the same leading decimal digits as their squares.

The programs for A089951, the canonical program `A089951.P17069640243098434441` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089951 has offset 1).

The definition of A089951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1093 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089951.P17069640243098434441

`eq[A000030(n), A002993(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089951

/-- `eq[A000030(n), A002993(n)]` -/
def P17069640243098434441.Spec : Prop :=
  ∀ n, (P17069640243098434441.a n : ℤ) = A089951 (n + 1)

theorem P17069640243098434441.correct : P17069640243098434441.Spec := by
  intro n
  simp only [A089951, Nat.add_sub_cancel]

end A089951

/-! ## A089951.P2616437613883212493

`eq[2, A073601(A000007(n)+n)]`
-/

namespace A089951.P2616437613883212493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073601 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089951.P2616437613883212493

namespace A089951

/-- `eq[2, A073601(A000007(n)+n)]` -/
def P2616437613883212493.Spec : Prop :=
  ∀ n, (P2616437613883212493.a n : ℤ) = A089951 (n + 1)

end A089951

/-! ## A089951.P17709695774901919677

`eq[val(A061509(n), 2), A002993(n)]`
-/

namespace A089951.P17709695774901919677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061509 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089951.P17709695774901919677

namespace A089951

/-- `eq[val(A061509(n), 2), A002993(n)]` -/
def P17709695774901919677.Spec : Prop :=
  ∀ n, (P17709695774901919677.a n : ℤ) = A089951 (n + 1)

end A089951

/-! ## A089951.P14948809517656574312

`eq[A004086(n)%10, A002993(n)]`
-/

namespace A089951.P14948809517656574312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089951.P14948809517656574312

namespace A089951

/-- `eq[A004086(n)%10, A002993(n)]` -/
def P14948809517656574312.Spec : Prop :=
  ∀ n, (P14948809517656574312.a n : ℤ) = A089951 (n + 1)

end A089951

/-! ## A089951.P984223036426285404

`eq[A002993(n)+n, A182324(n)]`
-/

namespace A089951.P984223036426285404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089951.P984223036426285404

namespace A089951

/-- `eq[A002993(n)+n, A182324(n)]` -/
def P984223036426285404.Spec : Prop :=
  ∀ n, (P984223036426285404.a n : ℤ) = A089951 (n + 1)

end A089951

/-! ## A089951.P6472990533806423175

`eq[A032760(n+1)%10, A000030(n)]`
-/

namespace A089951.P6472990533806423175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032760 (n + 1)) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089951.P6472990533806423175

namespace A089951

/-- `eq[A032760(n+1)%10, A000030(n)]` -/
def P6472990533806423175.Spec : Prop :=
  ∀ n, (P6472990533806423175.a n : ℤ) = A089951 (n + 1)

end A089951

/-! ## A089951.P1359119724977186448

`eq[A002993(n), A007376(A229186(n))]`
-/

namespace A089951.P1359119724977186448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A229186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089951.P1359119724977186448

namespace A089951

/-- `eq[A002993(n), A007376(A229186(n))]` -/
def P1359119724977186448.Spec : Prop :=
  ∀ n, (P1359119724977186448.a n : ℤ) = A089951 (n + 1)

end A089951

/-! ## A089951.P12577088798824357213

`eq[A000796(A014777(n)), A002993(n)]`
-/

namespace A089951.P12577088798824357213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A014777 n).toNat + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089951.P12577088798824357213

namespace A089951

/-- `eq[A000796(A014777(n)), A002993(n)]` -/
def P12577088798824357213.Spec : Prop :=
  ∀ n, (P12577088798824357213.a n : ℤ) = A089951 (n + 1)

end A089951

/-! ## A089951.P9217016203475907395

`eq[A000796(A176341(n)), A002993(n)]`
-/

namespace A089951.P9217016203475907395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A176341 n).toNat + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089951.P9217016203475907395

namespace A089951

/-- `eq[A000796(A176341(n)), A002993(n)]` -/
def P9217016203475907395.Spec : Prop :=
  ∀ n, (P9217016203475907395.a n : ℤ) = A089951 (n + 1)

end A089951

/-!
# A089952: Numbers n such that n+1 and phi(n)+1 are both perfect squares.

The programs for A089952, there is no canonical definition to state claims against.
-/

/-! ## A089952.P17274057825850195692

`∩[A063530(n+1), n²-1]`
-/

namespace A089952.P17274057825850195692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089952.P17274057825850195692

/-! ## A089952.P17520299063998547938

`∩[A005563(n), A063530(n+1)]`
-/

namespace A089952.P17520299063998547938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089952.P17520299063998547938

/-! ## A089952.P14149801552787244472

`∩[A082562(n), A063530(n+1)]`
-/

namespace A089952.P14149801552787244472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089952.P14149801552787244472

/-! ## A089952.P7629028316535951201

`∩[A132411(n), A063530(n+1)]`
-/

namespace A089952.P7629028316535951201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089952.P7629028316535951201

/-! ## A089952.P16063232128786881047

`filter[A063530(n+1), A266326(#)]`
-/

namespace A089952.P16063232128786881047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266326 (f1 j).toNat = 1) n)

end

end A089952.P16063232128786881047

/-!
# A089953: Numbers n such that 3*n+7 is prime.

The programs for A089953, the canonical program `A089953.P3265903741196432824` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089953 has offset 1).

The definition of A089953 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034936, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089953.P3265903741196432824

`A034936(n+1)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A089953

/-- `A034936(n+1)-1` -/
def P3265903741196432824.Spec : Prop :=
  ∀ n, P3265903741196432824.a n = A089953 (n + 1)

theorem P3265903741196432824.correct : P3265903741196432824.Spec := by
  intro n
  simp only [A089953, Nat.add_sub_cancel]

end A089953

/-! ## A089953.P3536099272594418794

`A024892(n+1)-2`
-/

namespace A089953.P3536099272594418794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) - 2

end

end A089953.P3536099272594418794

namespace A089953

/-- `A024892(n+1)-2` -/
def P3536099272594418794.Spec : Prop :=
  ∀ n, P3536099272594418794.a n = A089953 (n + 1)

theorem P3536099272594418794.correct : P3536099272594418794.Spec := by
  intro n
  simp only [A089953, Nat.add_sub_cancel, A089953.P3536099272594418794.a, A089953.P3265903741196432824.a, A024892, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089953

/-! ## A089953.P54348712011656210

`2*A024899(n+1)-2`
-/

namespace A089953.P54348712011656210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024899 (n + 1) - 2

end

end A089953.P54348712011656210

namespace A089953

/-- `2*A024899(n+1)-2` -/
def P54348712011656210.Spec : Prop :=
  ∀ n, P54348712011656210.a n = A089953 (n + 1)

end A089953

/-! ## A089953.P17267923170206857352

`A153183(n+1)-3`
-/

namespace A089953.P17267923170206857352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1) - 3

end

end A089953.P17267923170206857352

namespace A089953

/-- `A153183(n+1)-3` -/
def P17267923170206857352.Spec : Prop :=
  ∀ n, P17267923170206857352.a n = A089953 (n + 1)

theorem P17267923170206857352.correct : P17267923170206857352.Spec := by
  intro n
  simp only [A089953, Nat.add_sub_cancel, A089953.P17267923170206857352.a, A089953.P3265903741196432824.a, A034936, A034936.P1115765045630556781.a, A153183, A153183.P10933182994355425075.a, A024892, A024892.P16415756405401507162.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089953

/-! ## A089953.P16837102695830642727

`2*A153218(n+1)`
-/

namespace A089953.P16837102695830642727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153218 (n + 1)

end

end A089953.P16837102695830642727

namespace A089953

/-- `2*A153218(n+1)` -/
def P16837102695830642727.Spec : Prop :=
  ∀ n, P16837102695830642727.a n = A089953 (n + 1)

theorem P16837102695830642727.correct : P16837102695830642727.Spec := by
  intro n
  simp only [A089953, Nat.add_sub_cancel, A089953.P16837102695830642727.a, A089953.P3265903741196432824.a, A034936, A034936.P1115765045630556781.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A016777, A016777.P9931792138852554157.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089953

/-! ## A089953.P5728802478154975087

`A107303(n+1)-4`
-/

namespace A089953.P5728802478154975087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107303 (n + 1) - 4

end

end A089953.P5728802478154975087

namespace A089953

/-- `A107303(n+1)-4` -/
def P5728802478154975087.Spec : Prop :=
  ∀ n, P5728802478154975087.a n = A089953 (n + 1)

theorem P5728802478154975087.correct : P5728802478154975087.Spec := by
  intro n
  simp only [A089953, Nat.add_sub_cancel, A089953.P5728802478154975087.a, A089953.P3265903741196432824.a, A034936, A034936.P1115765045630556781.a, A107303, A107303.P6905371674303678170.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089953

/-! ## A089953.P10014800851915879279

`2*(A024899(n+1)-1)`
-/

namespace A089953.P10014800851915879279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024899 (n + 1) - 1)

end

end A089953.P10014800851915879279

namespace A089953

/-- `2*(A024899(n+1)-1)` -/
def P10014800851915879279.Spec : Prop :=
  ∀ n, P10014800851915879279.a n = A089953 (n + 1)

end A089953

/-! ## A089953.P12153634377395248584

`2*eq[1, A245838(2*(n+1))]`
-/

namespace A089953.P12153634377395248584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089953.P12153634377395248584

namespace A089953

/-- `2*eq[1, A245838(2*(n+1))]` -/
def P12153634377395248584.Spec : Prop :=
  ∀ n, (P12153634377395248584.a n : ℤ) = A089953 (n + 1)

theorem P12153634377395248584.correct : P12153634377395248584.Spec := by
  intro n
  simp only [A089953, Nat.add_sub_cancel, A089953.P12153634377395248584.f1, A089953.P12153634377395248584.f2, A089953.P12153634377395248584.a, A089953.P3265903741196432824.a, A034936, A034936.P1115765045630556781.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A016777, A016777.P9931792138852554157.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089953

/-! ## A089953.P13263392446551535520

`A024899(n+1)+A153218(n+1)-1`
-/

namespace A089953.P13263392446551535520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) + (A153218 (n + 1) - 1)

end

end A089953.P13263392446551535520

namespace A089953

/-- `A024899(n+1)+A153218(n+1)-1` -/
def P13263392446551535520.Spec : Prop :=
  ∀ n, P13263392446551535520.a n = A089953 (n + 1)

end A089953

/-! ## A089953.P798916871808089395

`eq[1, A245838(n+2)]`
-/

namespace A089953.P798916871808089395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089953.P798916871808089395

namespace A089953

/-- `eq[1, A245838(n+2)]` -/
def P798916871808089395.Spec : Prop :=
  ∀ n, (P798916871808089395.a n : ℤ) = A089953 (n + 1)

end A089953

/-! ## A089953.P410887237943943372

`A144769(A091178(n+1))-2`
-/

namespace A089953.P410887237943943372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (A091178 (n + 1)).toNat - 2

end

end A089953.P410887237943943372

namespace A089953

/-- `A144769(A091178(n+1))-2` -/
def P410887237943943372.Spec : Prop :=
  ∀ n, P410887237943943372.a n = A089953 (n + 1)

end A089953

/-! ## A089953.P11518460604056641896

`A144769(A171820(n+2))-2`
-/

namespace A089953.P11518460604056641896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (A171820 (n + 2)).toNat - 2

end

end A089953.P11518460604056641896

namespace A089953

/-- `A144769(A171820(n+2))-2` -/
def P11518460604056641896.Spec : Prop :=
  ∀ n, P11518460604056641896.a n = A089953 (n + 1)

end A089953

/-! ## A089953.P17475285658429827855

`eq[1, A156706(n+2)]`
-/

namespace A089953.P17475285658429827855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089953.P17475285658429827855

namespace A089953

/-- `eq[1, A156706(n+2)]` -/
def P17475285658429827855.Spec : Prop :=
  ∀ n, (P17475285658429827855.a n : ℤ) = A089953 (n + 1)

end A089953

/-! ## A089953.P14788189782611003025

`eq[1, A001222(3*n+7)]`
-/

namespace A089953.P14788189782611003025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089953.P14788189782611003025

namespace A089953

/-- `eq[1, A001222(3*n+7)]` -/
def P14788189782611003025.Spec : Prop :=
  ∀ n, (P14788189782611003025.a n : ℤ) = A089953 (n + 1)

end A089953

/-! ## A089953.P15190838101778528771

`eq[2, A000005(3*n+7)]`
-/

namespace A089953.P15190838101778528771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089953.P15190838101778528771

namespace A089953

/-- `eq[2, A000005(3*n+7)]` -/
def P15190838101778528771.Spec : Prop :=
  ∀ n, (P15190838101778528771.a n : ℤ) = A089953 (n + 1)

end A089953

/-! ## A089953.P6965590484529656200

`2*eq[1, A075743(2*(n+1))]`
-/

namespace A089953.P6965590484529656200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089953.P6965590484529656200

namespace A089953

/-- `2*eq[1, A075743(2*(n+1))]` -/
def P6965590484529656200.Spec : Prop :=
  ∀ n, (P6965590484529656200.a n : ℤ) = A089953 (n + 1)

end A089953

/-! ## A089953.P13679376930442932305

`lt[A001222(3*(n+1)+4), 2]`
-/

namespace A089953.P13679376930442932305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (n + 1) + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089953.P13679376930442932305

namespace A089953

/-- `lt[A001222(3*(n+1)+4), 2]` -/
def P13679376930442932305.Spec : Prop :=
  ∀ n, (P13679376930442932305.a n : ℤ) = A089953 (n + 1)

end A089953

/-! ## A089953.P8243901416569643954

`lt[A000005(3*(n+1)+4), 3]`
-/

namespace A089953.P8243901416569643954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 1) + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089953.P8243901416569643954

namespace A089953

/-- `lt[A000005(3*(n+1)+4), 3]` -/
def P8243901416569643954.Spec : Prop :=
  ∀ n, (P8243901416569643954.a n : ℤ) = A089953 (n + 1)

end A089953

/-! ## A089953.P3493166551141106682

`lt[n+1, A020639(3*n+7)]`
-/

namespace A089953.P3493166551141106682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A089953.P3493166551141106682

namespace A089953

/-- `lt[n+1, A020639(3*n+7)]` -/
def P3493166551141106682.Spec : Prop :=
  ∀ n, (P3493166551141106682.a n : ℤ) = A089953 (n + 1)

end A089953

/-! ## A089953.P5768782366088148421

`eq[1, A001222(lcm(2, n+3)+n+1)²]`
-/

namespace A089953.P5768782366088148421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lcm 2 (n + 3) + (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089953.P5768782366088148421

namespace A089953

/-- `eq[1, A001222(lcm(2, n+3)+n+1)²]` -/
def P5768782366088148421.Spec : Prop :=
  ∀ n, (P5768782366088148421.a n : ℤ) = A089953 (n + 1)

end A089953

/-!
# A089954: Numbers k such that k+1 and sigma(k)+1 are both perfect squares.

The programs for A089954, there is no canonical definition to state claims against.
-/

/-! ## A089954.P15610695985253999932

`∩[A063531(n+1), n²-1]`
-/

namespace A089954.P15610695985253999932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089954.P15610695985253999932

/-! ## A089954.P9047922601131377116

`∩[A005563(n), A063531(n+1)]`
-/

namespace A089954.P9047922601131377116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089954.P9047922601131377116

/-! ## A089954.P8800213655801233625

`∩[A132411(n), A063531(n+1)]`
-/

namespace A089954.P8800213655801233625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089954.P8800213655801233625

/-! ## A089954.P14164635938488434808

`∩[A000096(n)+∑[n], A063531(n+1)]`
-/

namespace A089954.P14164635938488434808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A089954.P14164635938488434808

/-!
# A089956: Number of chess games that end in check (but not checkmate) after exactly n plies.

The programs for A089956, there is no canonical definition to state claims against.
-/

/-! ## A089956.P638599578072269070

`floor(∑[A351011(n!)]/(n+2))`
-/

namespace A089956.P638599578072269070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351011 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 2 : ℚ)⌋

end

end A089956.P638599578072269070

/-!
# A089958: Number of partitions of n in which every part occurs 2, 3, or 5 times.

The programs for A089958, there is no canonical definition to state claims against.
-/

/-! ## A089958.P3393351247850152172

`A162932(n+6)-A001899(A203074(n))`
-/

namespace A089958.P3393351247850152172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162932 (n + 6) - A001899 (A203074 n).toNat

end

end A089958.P3393351247850152172

/-! ## A089958.P4605743533100934947

`A162932(n+6)-A185284(A327516(n))`
-/

namespace A089958.P4605743533100934947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162932 (n + 6) - A185284 (A327516 n).toNat

end

end A089958.P4605743533100934947

/-! ## A089958.P12536572201997562446

`A162932(n+6)-A102683(A007030(n+1))`
-/

namespace A089958.P12536572201997562446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162932 (n + 6) - A102683 (A007030 (n + 1)).toNat

end

end A089958.P12536572201997562446

/-! ## A089958.P5180324349278945759

`A162932(n+6)-A185036(A187829(n+1))`
-/

namespace A089958.P5180324349278945759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162932 (n + 6) - A185036 (A187829 (n + 1)).toNat

end

end A089958.P5180324349278945759

/-!
# A089959: a(n) = floor(1/(f(n) - f(n)^2)) with f(n) = frac(n*(sqrt(5) - 1)/2) (fractional part).

The programs for A089959, there is no canonical definition to state claims against.
-/

/-! ## A089959.P3300695842980467458

`A089961(n+1)+1`
-/

namespace A089959.P3300695842980467458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089961 (n + 1) + 1

end

end A089959.P3300695842980467458

/-! ## A089959.P2464050083040010837

`A020725(A089961(n+1))`
-/

namespace A089959.P2464050083040010837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A089961 (n + 1)).toNat

end

end A089959.P2464050083040010837

/-!
# A089960: Positions in A089959 where 4 occurs.

The programs for A089960, the canonical program `A089960.P1978568559231808263` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089960 has offset 1).

The definition of A089960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089960.P1978568559231808263

`∩[A003233(n+1), A247425(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089960

/-- `∩[A003233(n+1), A247425(n+1)]` -/
def P1978568559231808263.Spec : Prop :=
  ∀ n, (P1978568559231808263.a n : ℤ) = A089960 (n + 1)

theorem P1978568559231808263.correct : P1978568559231808263.Spec := by
  intro n
  simp only [A089960, Nat.add_sub_cancel]

end A089960

/-! ## A089960.P15148540531317946752

`eq[3, A089961(n+1)]+1`
-/

namespace A089960.P15148540531317946752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089960.P15148540531317946752

namespace A089960

/-- `eq[3, A089961(n+1)]+1` -/
def P15148540531317946752.Spec : Prop :=
  ∀ n, (P15148540531317946752.a n : ℤ) = A089960 (n + 1)

end A089960

/-! ## A089960.P8842145754584884779

`eq[4, A089959(n+1)]+1`
-/

namespace A089960.P8842145754584884779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089960.P8842145754584884779

namespace A089960

/-- `eq[4, A089959(n+1)]+1` -/
def P8842145754584884779.Spec : Prop :=
  ∀ n, (P8842145754584884779.a n : ℤ) = A089960 (n + 1)

end A089960

/-! ## A089960.P6430990809263176633

`eq[0, A189661(floor(n*(ϕ+2))+2)]`
-/

namespace A089960.P6430990809263176633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (⌊(n : ℝ) * (Real.goldenRatio + 2)⌋ + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089960.P6430990809263176633

namespace A089960

/-- `eq[0, A189661(floor(n*(ϕ+2))+2)]` -/
def P6430990809263176633.Spec : Prop :=
  ∀ n, (P6430990809263176633.a n : ℤ) = A089960 (n + 1)

end A089960

/-! ## A089960.P15577005718145017383

`lt[0, A287523(floor(ϕ*n+2*(n+1)))]`
-/

namespace A089960.P15577005718145017383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 ⌊Real.goldenRatio * (n : ℝ) + (2 * (n + 1) : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A089960.P15577005718145017383

namespace A089960

/-- `lt[0, A287523(floor(ϕ*n+2*(n+1)))]` -/
def P15577005718145017383.Spec : Prop :=
  ∀ n, (P15577005718145017383.a n : ℤ) = A089960 (n + 1)

end A089960

/-! ## A089960.P8545969993186763337

`eq[C(2, n+2), A188432(floor(n*(ϕ+2))+1)]`
-/

namespace A089960.P8545969993186763337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (⌊(n : ℝ) * (Real.goldenRatio + 2)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089960.P8545969993186763337

namespace A089960

/-- `eq[C(2, n+2), A188432(floor(n*(ϕ+2))+1)]` -/
def P8545969993186763337.Spec : Prop :=
  ∀ n, (P8545969993186763337.a n : ℤ) = A089960 (n + 1)

end A089960

/-! ## A089960.P8105784080207945496

`lt[A189661(A284624(n+1)), 1]`
-/

namespace A089960.P8105784080207945496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A284624 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089960.P8105784080207945496

namespace A089960

/-- `lt[A189661(A284624(n+1)), 1]` -/
def P8105784080207945496.Spec : Prop :=
  ∀ n, (P8105784080207945496.a n : ℤ) = A089960 (n + 1)

end A089960

/-! ## A089960.P1623962530629080424

`lt[1, A284749(5*n+1)]`
-/

namespace A089960.P1623962530629080424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A089960.P1623962530629080424

namespace A089960

/-- `lt[1, A284749(5*n+1)]` -/
def P1623962530629080424.Spec : Prop :=
  ∀ n, (P1623962530629080424.a n : ℤ) = A089960 (n + 1)

end A089960

/-! ## A089960.P15580877647506984441

`lt[1, A083368(A214971(n+1))]`
-/

namespace A089960.P15580877647506984441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (A214971 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A089960.P15580877647506984441

namespace A089960

/-- `lt[1, A083368(A214971(n+1))]` -/
def P15580877647506984441.Spec : Prop :=
  ∀ n, (P15580877647506984441.a n : ℤ) = A089960 (n + 1)

end A089960

/-! ## A089960.P6765920421526096897

`eq[1, A096270(A214971(n+1)-1)]`
-/

namespace A089960.P6765920421526096897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A214971 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089960.P6765920421526096897

namespace A089960

/-- `eq[1, A096270(A214971(n+1)-1)]` -/
def P6765920421526096897.Spec : Prop :=
  ∀ n, (P6765920421526096897.a n : ℤ) = A089960 (n + 1)

end A089960

/-!
# A089961: a(n) = floor( 1/( {n/phi}-{n/phi}^2 ) )-1, where {} is the fractional part and phi the golden ratio.

The programs for A089961, there is no canonical definition to state claims against.
-/

/-! ## A089961.P11865599403980541067

`A089959(n+1)-1`
-/

namespace A089961.P11865599403980541067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089959 (n + 1) - 1

end

end A089961.P11865599403980541067

/-! ## A089961.P8742978010548103648

`A317939(A001358(n+1))+A089959(n+1)`
-/

namespace A089961.P8742978010548103648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317939 (A001358 (n + 1)).toNat + A089959 (n + 1)

end

end A089961.P8742978010548103648

/-! ## A089961.P4939158060355225388

`A260196(n+2)+A089959(n+1)`
-/

namespace A089961.P4939158060355225388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A089959 (n + 1)

end

end A089961.P4939158060355225388

/-! ## A089961.P13615129741738607225

`A023443(A089959(n+1))`
-/

namespace A089961.P13615129741738607225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A089959 (n + 1)).toNat

end

end A089961.P13615129741738607225

/-! ## A089961.P16467604102536360160

`lcm(A024000(A089959(n+1)), A033999(n))`
-/

namespace A089961.P16467604102536360160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024000 (A089959 (n + 1)).toNat) (A033999 n)

end

end A089961.P16467604102536360160

/-! ## A089961.P326755890796523433

`A099837(A026138(n+1))+A089959(n+1)`
-/

namespace A089961.P326755890796523433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A026138 (n + 1)).toNat + A089959 (n + 1)

end

end A089961.P326755890796523433

/-! ## A089961.P876620742896725918

`A089962(A028920(2*n))+A089959(n+1)`
-/

namespace A089961.P876620742896725918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089962 (A028920 (2 * n)).toNat + A089959 (n + 1)

end

end A089961.P876620742896725918

/-! ## A089961.P8907955473918106915

`A210826(A048976(n+1))+A089959(n+1)`
-/

namespace A089961.P8907955473918106915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (A048976 (n + 1)).toNat + A089959 (n + 1)

end

end A089961.P8907955473918106915

/-! ## A089961.P12924420106391985441

`A210826(A048975(n+1))+A089959(n+1)`
-/

namespace A089961.P12924420106391985441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (A048975 (n + 1)).toNat + A089959 (n + 1)

end

end A089961.P12924420106391985441

/-! ## A089961.P1670139504884208994

`A089962(A007318(∑[n]))+A089959(n+1)`
-/

namespace A089961.P1670139504884208994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089962 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A089959 (n + 1)

end

end A089961.P1670139504884208994

/-!
# A089962: Triangle, read by rows, that equals the matrix inverse of A071207 when treated as a lower triangular matrix.

The programs for A089962, there is no canonical definition to state claims against.
-/

/-! ## A089962.P16506015153299284083

`A007318(n)*A055136(A014132(n+1))`
-/

namespace A089962.P16506015153299284083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055136 (A014132 (n + 1)).toNat

end

end A089962.P16506015153299284083

/-! ## A089962.P16258360023319054543

`abs(A117440(n))*A055136(A014132(n+1))`
-/

namespace A089962.P16258360023319054543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n| * A055136 (A014132 (n + 1)).toNat

end

end A089962.P16258360023319054543

/-! ## A089962.P9151577257337894579

`abs(A055136(A014132(n+1)))*A130595(n)`
-/

namespace A089962.P9151577257337894579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055136 (A014132 (n + 1)).toNat| * A130595 n

end

end A089962.P9151577257337894579

/-! ## A089962.P8161485246314762352

`sqrt(A008459(n))*A055136(A014132(n+1))`
-/

namespace A089962.P8161485246314762352
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A055136 (A014132 (n + 1)).toNat : ℝ)

end

end A089962.P8161485246314762352

/-! ## A089962.P2649607562574552914

`Δ[A102363(n)]*A055136(A014132(n+1))`
-/

namespace A089962.P2649607562574552914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A055136 (A014132 (n + 1)).toNat

end

end A089962.P2649607562574552914

/-! ## A089962.P8149857527285663892

`A055136(A014132(n+1))/2*A028326(n)`
-/

namespace A089962.P8149857527285663892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055136 (A014132 (n + 1)).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A089962.P8149857527285663892

/-! ## A089962.P13622766368626087795

`A055136(A014132(n+1))*A071919(A007401(n+1))`
-/

namespace A089962.P13622766368626087795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055136 (A014132 (n + 1)).toNat * A071919 (A007401 (n + 1)).toNat

end

end A089962.P13622766368626087795

/-! ## A089962.P14580254627114635990

`A004525(A028326(n))*A055136(A014132(n+1))`
-/

namespace A089962.P14580254627114635990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A055136 (A014132 (n + 1)).toNat

end

end A089962.P14580254627114635990

/-!
# A089964: Numbers k such that the denominator of Sum_{j=1..k} mu(j)/j equals Product_{prime p<=k} p.

The programs for A089964, there is no canonical definition to state claims against.
-/

/-! ## A089964.P13536791262632723886

`∑[dr(A147052(A287692(n+1)))]`
-/

namespace A089964.P13536791262632723886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A147052 (A287692 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089964.P13536791262632723886

/-! ## A089964.P2986832221411407538

`lt[A110298(n+1)+A110281(n), A110268(3*n+4)]`
-/

namespace A089964.P2986832221411407538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110298 (n + 1) + A110281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110268 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089964.P2986832221411407538

/-!
# A089965: Both n + 1 and n/2 + 1 are primes.

The programs for A089965, the canonical program `A089965.P14211704364200362511` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089965 has offset 1).

The definition of A089965 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005383, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089965.P14211704364200362511

`A005383(n+1)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A089965

/-- `A005383(n+1)-1` -/
def P14211704364200362511.Spec : Prop :=
  ∀ n, P14211704364200362511.a n = A089965 (n + 1)

theorem P14211704364200362511.correct : P14211704364200362511.Spec := by
  intro n
  simp only [A089965, Nat.add_sub_cancel]

end A089965

/-! ## A089965.P8356900977665738956

`A077068(n+1)-2`
-/

namespace A089965.P8356900977665738956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) - 2

end

end A089965.P8356900977665738956

namespace A089965

/-- `A077068(n+1)-2` -/
def P8356900977665738956.Spec : Prop :=
  ∀ n, P8356900977665738956.a n = A089965 (n + 1)

theorem P8356900977665738956.correct : P8356900977665738956.Spec := by
  intro n
  simp only [A089965, Nat.add_sub_cancel, A089965.P8356900977665738956.a, A089965.P14211704364200362511.a, A005383, A005383.P14491179252099632441.a, A077068, A077068.P14869786235870196485.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089965

/-! ## A089965.P334297425642667493

`2*A351875(n+1)`
-/

namespace A089965.P334297425642667493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351875 (n + 1)

end

end A089965.P334297425642667493

namespace A089965

/-- `2*A351875(n+1)` -/
def P334297425642667493.Spec : Prop :=
  ∀ n, P334297425642667493.a n = A089965 (n + 1)

theorem P334297425642667493.correct : P334297425642667493.Spec := by
  intro n
  simp only [A089965, Nat.add_sub_cancel, A089965.P334297425642667493.a, A089965.P14211704364200362511.a, A005383, A005383.P14491179252099632441.a, A351875, A351875.P8085341493502060080.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089965

/-! ## A089965.P1657131747027190956

`2*(A005382(n+1)-1)`
-/

namespace A089965.P1657131747027190956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005382 (n + 1) - 1)

end

end A089965.P1657131747027190956

namespace A089965

/-- `2*(A005382(n+1)-1)` -/
def P1657131747027190956.Spec : Prop :=
  ∀ n, P1657131747027190956.a n = A089965 (n + 1)

theorem P1657131747027190956.correct : P1657131747027190956.Spec := by
  intro n
  simp only [A089965, Nat.add_sub_cancel, A089965.P1657131747027190956.a, A089965.P14211704364200362511.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089965

/-! ## A089965.P16322927306029864530

`abs(1-A005383(Δ[n²]-n))`
-/

namespace A089965.P16322927306029864530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A005383 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A089965.P16322927306029864530

namespace A089965

/-- `abs(1-A005383(Δ[n²]-n))` -/
def P16322927306029864530.Spec : Prop :=
  ∀ n, P16322927306029864530.a n = A089965 (n + 1)

end A089965

/-! ## A089965.P10233695035820830454

`xor(1, A005383(A000027(n+1)))`
-/

namespace A089965.P10233695035820830454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A005383 (A000027 (n + 1)).toNat)

end

end A089965.P10233695035820830454

namespace A089965

/-- `xor(1, A005383(A000027(n+1)))` -/
def P10233695035820830454.Spec : Prop :=
  ∀ n, P10233695035820830454.a n = A089965 (n + 1)

end A089965

/-! ## A089965.P7897843961170286419

`A340509(n+1)-(A005382(n+1)+1)`
-/

namespace A089965.P7897843961170286419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340509 (n + 1) - (A005382 (n + 1) + 1)

end

end A089965.P7897843961170286419

namespace A089965

/-- `A340509(n+1)-(A005382(n+1)+1)` -/
def P7897843961170286419.Spec : Prop :=
  ∀ n, P7897843961170286419.a n = A089965 (n + 1)

theorem P7897843961170286419.correct : P7897843961170286419.Spec := by
  intro n
  simp only [A089965, Nat.add_sub_cancel, A089965.P7897843961170286419.a, A089965.P14211704364200362511.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A340509, A340509.P8307359629526885014.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089965

/-! ## A089965.P10773472215244668994

`A005382(n+1)+A351875(n+1)-1`
-/

namespace A089965.P10773472215244668994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1) + (A351875 (n + 1) - 1)

end

end A089965.P10773472215244668994

namespace A089965

/-- `A005382(n+1)+A351875(n+1)-1` -/
def P10773472215244668994.Spec : Prop :=
  ∀ n, P10773472215244668994.a n = A089965 (n + 1)

theorem P10773472215244668994.correct : P10773472215244668994.Spec := by
  intro n
  simp only [A089965, Nat.add_sub_cancel, A089965.P10773472215244668994.a, A089965.P14211704364200362511.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A351875, A351875.P8085341493502060080.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089965

/-! ## A089965.P3458440325598318336

`A077065(n+1)+A232342(n+1)-2`
-/

namespace A089965.P3458440325598318336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1) + (A232342 (n + 1) - 2)

end

end A089965.P3458440325598318336

namespace A089965

/-- `A077065(n+1)+A232342(n+1)-2` -/
def P3458440325598318336.Spec : Prop :=
  ∀ n, P3458440325598318336.a n = A089965 (n + 1)

theorem P3458440325598318336.correct : P3458440325598318336.Spec := by
  intro n
  simp only [A089965, Nat.add_sub_cancel, A089965.P3458440325598318336.a, A089965.P14211704364200362511.a, A005383, A005383.P14491179252099632441.a, A077065, A077065.P3431251406781570749.a, A232342, A232342.P12753495415627519153.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005385, A005385.P12850744102754472242.a, A077068, A077068.P14869786235870196485.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089965

/-! ## A089965.P14529917115014778678

`(A129521(n+1)-A005382(n+1))/A005382(n+1)`
-/

namespace A089965.P14529917115014778678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129521 (n + 1) - A005382 (n + 1) : ℚ) / (A005382 (n + 1) : ℚ)

end

end A089965.P14529917115014778678

namespace A089965

/-- `(A129521(n+1)-A005382(n+1))/A005382(n+1)` -/
def P14529917115014778678.Spec : Prop :=
  ∀ n, P14529917115014778678.a n = (A089965 (n + 1) : ℚ)

end A089965

/-! ## A089965.P5647121372668962398

`A079147(n+2)-1`
-/

namespace A089965.P5647121372668962398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 2) - 1

end

end A089965.P5647121372668962398

namespace A089965

/-- `A079147(n+2)-1` -/
def P5647121372668962398.Spec : Prop :=
  ∀ n, P5647121372668962398.a n = A089965 (n + 1)

end A089965

/-! ## A089965.P9539155317273402749

`p?[A048968(n+1)]-1`
-/

namespace A089965.P9539155317273402749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A089965.P9539155317273402749

namespace A089965

/-- `p?[A048968(n+1)]-1` -/
def P9539155317273402749.Spec : Prop :=
  ∀ n, P9539155317273402749.a n = A089965 (n + 1)

end A089965

/-! ## A089965.P5091615537590136604

`p?[A057920(n+1)]-1`
-/

namespace A089965.P5091615537590136604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A089965.P5091615537590136604

namespace A089965

/-- `p?[A057920(n+1)]-1` -/
def P5091615537590136604.Spec : Prop :=
  ∀ n, P5091615537590136604.a n = A089965 (n + 1)

end A089965

/-! ## A089965.P3689883006790125157

`p?[A064519(n+1)]-1`
-/

namespace A089965.P3689883006790125157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A089965.P3689883006790125157

namespace A089965

/-- `p?[A064519(n+1)]-1` -/
def P3689883006790125157.Spec : Prop :=
  ∀ n, P3689883006790125157.a n = A089965 (n + 1)

end A089965

/-! ## A089965.P7767087965851103710

`p?[A164977(n+1)]-1`
-/

namespace A089965.P7767087965851103710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A089965.P7767087965851103710

namespace A089965

/-- `p?[A164977(n+1)]-1` -/
def P7767087965851103710.Spec : Prop :=
  ∀ n, P7767087965851103710.a n = A089965 (n + 1)

end A089965

/-! ## A089965.P3886160435865651649

`p?[A192577(n+1)]-1`
-/

namespace A089965.P3886160435865651649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A089965.P3886160435865651649

namespace A089965

/-- `p?[A192577(n+1)]-1` -/
def P3886160435865651649.Spec : Prop :=
  ∀ n, P3886160435865651649.a n = A089965 (n + 1)

end A089965

/-! ## A089965.P10373438845245696269

`p?[A348659(n+1)]-1`
-/

namespace A089965.P10373438845245696269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A089965.P10373438845245696269

namespace A089965

/-- `p?[A348659(n+1)]-1` -/
def P10373438845245696269.Spec : Prop :=
  ∀ n, P10373438845245696269.a n = A089965 (n + 1)

end A089965

/-! ## A089965.P4945941448767489815

`p?[A352908(n+1)]-1`
-/

namespace A089965.P4945941448767489815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A089965.P4945941448767489815

namespace A089965

/-- `p?[A352908(n+1)]-1` -/
def P4945941448767489815.Spec : Prop :=
  ∀ n, P4945941448767489815.a n = A089965 (n + 1)

end A089965

/-! ## A089965.P11129120865939228374

`2*(p?[A068080(n+1)]-1)`
-/

namespace A089965.P11129120865939228374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A089965.P11129120865939228374

namespace A089965

/-- `2*(p?[A068080(n+1)]-1)` -/
def P11129120865939228374.Spec : Prop :=
  ∀ n, P11129120865939228374.a n = A089965 (n + 1)

end A089965

/-!
# A089966: Numbers k such that omega(k) = gpf(k) mod lpf(k), where omega=A001221, gpf=A006530 and lpf=A020639.

The programs for A089966, there is no canonical definition to state claims against.
-/

/-! ## A089966.P15622827860164615872

`eq[A001221(n+1), A069859(n+1)]+1`
-/

namespace A089966.P15622827860164615872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089966.P15622827860164615872

/-! ## A089966.P14388886221126850826

`eq[A008481(A007947(n+1)), A069859(n+1)]+1`
-/

namespace A089966.P14388886221126850826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A007947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089966.P14388886221126850826

/-! ## A089966.P16844264699987274082

`eq[A001222(A034444(n+1)), A069859(n+1)]+1`
-/

namespace A089966.P16844264699987274082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034444 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089966.P16844264699987274082

/-! ## A089966.P17155547394956085839

`eq[A001222(A181819(n+1)), A069859(n+1)]+1`
-/

namespace A089966.P17155547394956085839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181819 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089966.P17155547394956085839

/-! ## A089966.P17740934345690290069

`eq[A001222(A195637(n+1)), A069859(n+1)]+1`
-/

namespace A089966.P17740934345690290069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A195637 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089966.P17740934345690290069

/-!
# A089967: Numbers k such that Omega(k) = gpf(k) mod lpf(n), where Omega=A001222, gpf=A006530 and lpf=A020639.

The programs for A089967, there is no canonical definition to state claims against.
-/

/-! ## A089967.P12783328641688935118

`eq[A001222(n+1), A069859(n+1)]+1`
-/

namespace A089967.P12783328641688935118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089967.P12783328641688935118

/-! ## A089967.P10259371502668733000

`eq[A008481(n+1), A069859(n+1)]+1`
-/

namespace A089967.P10259371502668733000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089967.P10259371502668733000

/-! ## A089967.P2588559240322969023

`A004442(eq[A001222(n+1), A069859(n+1)])`
-/

namespace A089967.P2588559240322969023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089967.P2588559240322969023

/-! ## A089967.P15293862372401227250

`A004442(eq[A008481(n+1), A069859(n+1)])`
-/

namespace A089967.P15293862372401227250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089967.P15293862372401227250

/-! ## A089967.P12113209618276842580

`A141310(eq[A001222(n+1), A069859(n+1)])`
-/

namespace A089967.P12113209618276842580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089967.P12113209618276842580

/-! ## A089967.P4510596702993164753

`A165998(eq[A001222(n+1), A069859(n+1)])`
-/

namespace A089967.P4510596702993164753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089967.P4510596702993164753

/-!
# A089968: Decimal primes whose decimal representation in base 16 is also prime.

The programs for A089968, there is no canonical definition to state claims against.
-/

/-! ## A089968.P6054336070970885890

`A102489(A103144(n+1))`
-/

namespace A089968.P6054336070970885890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A103144 (n + 1)).toNat

end

end A089968.P6054336070970885890

/-! ## A089968.P14397240773213309497

`∩[A000040(n+1), A102489(A158611(n+1))]`
-/

namespace A089968.P14397240773213309497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A158611 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089968.P14397240773213309497

/-! ## A089968.P15459096646908928887

`∩[A000040(n+1), A102489(A173919(n+1))]`
-/

namespace A089968.P15459096646908928887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A173919 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089968.P15459096646908928887

/-! ## A089968.P9204070115053934040

`∩[A008578(n+1), A102489(A008578(n+2))]`
-/

namespace A089968.P9204070115053934040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A008578 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089968.P9204070115053934040

/-! ## A089968.P7537248378269443730

`∩[A158611(n+1), A102489(A240960(n+1))]`
-/

namespace A089968.P7537248378269443730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A240960 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089968.P7537248378269443730

/-!
# A089970: Numbers n such that for increasing b the numbers of zeros in base b representation of n are not monotonically decreasing, 1<b<n.

The programs for A089970, there is no canonical definition to state claims against.
-/

/-! ## A089970.P13390898608525210156

`comp[A089969(n+1)-1]+1`
-/

namespace A089970.P13390898608525210156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089969 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A089970.P13390898608525210156

/-! ## A089970.P2827856283269999283

`comp[A023443(A089969(n+1))]+1`
-/

namespace A089970.P2827856283269999283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A089969 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A089970.P2827856283269999283

/-! ## A089970.P1065537039254468798

`eq[char[A089969(n+1)], A000007(n)]`
-/

namespace A089970.P1065537039254468798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089969 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A089970.P1065537039254468798

/-! ## A089970.P15301448759012913923

`eq[char[A089969(n+1)], A000038(n)]`
-/

namespace A089970.P15301448759012913923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089969 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A089970.P15301448759012913923

/-! ## A089970.P5188181693953938262

`eq[char[A089969(n+1)], A151878(n)]`
-/

namespace A089970.P5188181693953938262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089969 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A089970.P5188181693953938262

/-! ## A089970.P9060015641261022587

`eq[char[A089969(n+1)], A036987(2*n)]`
-/

namespace A089970.P9060015641261022587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089969 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A089970.P9060015641261022587

/-! ## A089970.P3015637579354834078

`eq[char[A089969(n+1)], A173858(n²+1)]`
-/

namespace A089970.P3015637579354834078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089969 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173858 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A089970.P3015637579354834078

/-!
# A089971: Primes whose decimal representation also represents a prime in base 2.

The programs for A089971, there is no canonical definition to state claims against.
-/

/-! ## A089971.P11747006804147543147

`∩[A004676(n+1), A020449(n+1)]`
-/

namespace A089971.P11747006804147543147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089971.P11747006804147543147

/-! ## A089971.P1675846023279765683

`∩[A004676(n+1), A069598(n+1)]`
-/

namespace A089971.P1675846023279765683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089971.P1675846023279765683

/-! ## A089971.P4357073969238115944

`∩[A004676(n+1), A385345(n+1)]`
-/

namespace A089971.P4357073969238115944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089971.P4357073969238115944

/-! ## A089971.P11919923953284313382

`A007088(A065720(n+1))`
-/

namespace A089971.P11919923953284313382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A065720 (n + 1)).toNat

end

end A089971.P11919923953284313382

/-! ## A089971.P5514660203456798385

`A007088(p?[A036952(n+1)])`
-/

namespace A089971.P5514660203456798385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A089971.P5514660203456798385

/-! ## A089971.P7519946085051671734

`A007088(record[A006530(A036952(n+1))])`
-/

namespace A089971.P7519946085051671734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A036952 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089971.P7519946085051671734

/-! ## A089971.P9086054365761188632

`A007088(record[A020639(A036952(n+1))])`
-/

namespace A089971.P9086054365761188632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A036952 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089971.P9086054365761188632

/-! ## A089971.P1437439957215076800

`A236174(eq[2, A235354(n+1)]+1)`
-/

namespace A089971.P1437439957215076800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A089971.P1437439957215076800

/-! ## A089971.P8333916032978997978

`record[A077805(p?[2*n+1])]`
-/

namespace A089971.P8333916032978997978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089971.P8333916032978997978

/-! ## A089971.P7008807758388728549

`record[A077805(A065091(n+1))]`
-/

namespace A089971.P7008807758388728549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089971.P7008807758388728549

/-! ## A089971.P10924313817802806306

`record[A077805(A000040(n+2))]`
-/

namespace A089971.P10924313817802806306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089971.P10924313817802806306

/-! ## A089971.P10474464593882706031

`record[A077805(A006530(n+3))]`
-/

namespace A089971.P10474464593882706031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A006530 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089971.P10474464593882706031

/-! ## A089971.P8443983508177190892

`record[A077805(A020639(n+3))]`
-/

namespace A089971.P8443983508177190892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A020639 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089971.P8443983508177190892

/-! ## A089971.P8477656474717335831

`record[A077805(A014963(n+3))]`
-/

namespace A089971.P8477656474717335831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A014963 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089971.P8477656474717335831

/-! ## A089971.P8067030689974745018

`A007088(record[A014963(A036952(n+1))])`
-/

namespace A089971.P8067030689974745018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A036952 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089971.P8067030689974745018

/-!
# A089973: Number of maximum-length 2-surprising sequences in n symbols.

The programs for A089973, there is no canonical definition to state claims against.
-/

/-! ## A089973.P15773386051143979140

`∏[A360179(A004111(3*n+4))]`
-/

namespace A089973.P15773386051143979140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360179 (A004111 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089973.P15773386051143979140

/-!
# A089974: (n+1)-st term of the n-th binomial transform of this sequence equals 1 for all n>=0.

The programs for A089974, there is no canonical definition to state claims against.
-/

/-! ## A089974.P11794557260604065177

`Δ[A033999(n)*A356818(n)]`
-/

namespace A089974.P11794557260604065177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A356818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089974.P11794557260604065177

/-! ## A089974.P8981245159767883370

`Δ[A009001(2*n)*A356818(n)]`
-/

namespace A089974.P8981245159767883370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A356818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089974.P8981245159767883370

/-! ## A089974.P14597088337331086524

`Δ[A057079(3*n)*A356818(n)]`
-/

namespace A089974.P14597088337331086524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (3 * n) * A356818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089974.P14597088337331086524

/-! ## A089974.P6439169524930374746

`Δ[A117569(2*n+1)*A356818(n)]`
-/

namespace A089974.P6439169524930374746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (2 * n + 1) * A356818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089974.P6439169524930374746

/-! ## A089974.P14135942671582887991

`Δ[A163810(3*n+4)*A356818(n)]`
-/

namespace A089974.P14135942671582887991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (3 * n + 4) * A356818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089974.P14135942671582887991

/-!
# A089975: Array read by ascending antidiagonals: T(n,k) is the number of n-letter words from a k-letter alphabet such that no letter appears more than twice.

The programs for A089975, there is no canonical definition to state claims against.
-/

/-! ## A089975.P1891367529718989683

`A058716(n)*A289481(A135814(n))`
-/

namespace A089975.P1891367529718989683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058716 n * A289481 (A135814 n).toNat

end

end A089975.P1891367529718989683

/-! ## A089975.P17063387521739602215

`A058716(n)*A265170(A208879(n))`
-/

namespace A089975.P17063387521739602215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058716 n * A265170 (A208879 n).toNat

end

end A089975.P17063387521739602215

/-! ## A089975.P3979660327402805537

`A350364(A061579(n)^A255212(n))`
-/

namespace A089975.P3979660327402805537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350364 (SequenceMachineLib.roundAway ((A061579 n : ℚ) ^ (A255212 n : ℤ))).toNat

end

end A089975.P3979660327402805537

/-! ## A089975.P16492135212956962323

`lcm(A119328(n), A289481(A135814(n)))`
-/

namespace A089975.P16492135212956962323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A119328 n) (A289481 (A135814 n).toNat)

end

end A089975.P16492135212956962323

/-! ## A089975.P13970514962899573202

`A350364(C(A061579(n), A255212(n)))`
-/

namespace A089975.P13970514962899573202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350364 (Nat.choose (A061579 n).toNat (A255212 n).toNat)

end

end A089975.P13970514962899573202

/-!
# A089976: Antidiagonal sums of array A089975.

The programs for A089976, there is no canonical definition to state claims against.
-/

/-! ## A089976.P15890893781563148375

`A100196(A351049(n)+A200743(n+1))`
-/

namespace A089976.P15890893781563148375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A351049 n + A200743 (n + 1)).toNat

end

end A089976.P15890893781563148375

/-! ## A089976.P13692561371163204025

`ceil(sqrt(A004612(n!)))`
-/

namespace A089976.P13692561371163204025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004612 (Nat.factorial n) : ℝ)⌉

end

end A089976.P13692561371163204025

/-! ## A089976.P15969064343832438171

`ceil(sqrt(A024618(n!)))`
-/

namespace A089976.P15969064343832438171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A024618 (Nat.factorial n) : ℝ)⌉

end

end A089976.P15969064343832438171

/-! ## A089976.P13788202120562208874

`A001462(A109153(n))`
-/

namespace A089976.P13788202120562208874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A109153 n).toNat

end

end A089976.P13788202120562208874

/-!
# A089977: Expansion of 1/((1-2*x)*(1+x+2*x^2)).

The programs for A089977, the canonical program `A089977.P8813238022205222858` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089977 has offset 0).

The definition of A089977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-4x^3))` (program `A089977.P8813238022205222858`, by `A089977.P8813238022205222858.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089977.P8813238022205222858

`ogf(1/(1-x-4x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089977

/-- `ogf(1/(1-x-4x^3))` -/
def P8813238022205222858.Spec : Prop :=
  ∀ n, P8813238022205222858.a n = A089977 n

theorem P8813238022205222858.correct : P8813238022205222858.Spec := by
  intro n
  simp only [A089977]

end A089977

/-! ## A089977.P13929959886465927201

`a(n-1)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A089977.P13929959886465927201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + 4 * a (n - 3)

end

end A089977.P13929959886465927201

namespace A089977

/-- `a(n-1)+4*a(n-3)` -/
def P13929959886465927201.Spec : Prop :=
  ∀ n, (P13929959886465927201.a n : ℤ) = A089977 n

end A089977

/-! ## A089977.P15008417840735012081

`∑{#}[floor(n/2), C(n-2*#, #)*4^#]`
-/

namespace A089977.P15008417840735012081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((n : ℤ) - (2 * k : ℤ)).toNat k * 4 ^ k

end

end A089977.P15008417840735012081

namespace A089977

/-- `∑{#}[floor(n/2), C(n-2*#, #)*4^#]` -/
def P15008417840735012081.Spec : Prop :=
  ∀ n, (P15008417840735012081.a n : ℤ) = A089977 n

end A089977

/-! ## A089977.P4042997333746771434

`2^(n-1)+A110512(n)/2`
-/

namespace A089977.P4042997333746771434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (A110512 n : ℚ) / 2

end

end A089977.P4042997333746771434

namespace A089977

/-- `2^(n-1)+A110512(n)/2` -/
def P4042997333746771434.Spec : Prop :=
  ∀ n, P4042997333746771434.a n = (A089977 n : ℚ)

end A089977

/-! ## A089977.P11505669601232731571

`a(n-1)+lcm(4, a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A089977.P11505669601232731571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + Nat.lcm 4 (a (n - 3))

end

end A089977.P11505669601232731571

namespace A089977

/-- `a(n-1)+lcm(4, a(n-3))` -/
def P11505669601232731571.Spec : Prop :=
  ∀ n, (P11505669601232731571.a n : ℤ) = A089977 n

end A089977

/-! ## A089977.P13313645090095348696

`5*a(n-3)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A089977.P13313645090095348696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  5 * a (n - 3) - (a (n - 3) - a (n - 1))

end

end A089977.P13313645090095348696

namespace A089977

/-- `5*a(n-3)-(a(n-3)-a(n-1))` -/
def P13313645090095348696.Spec : Prop :=
  ∀ n, P13313645090095348696.a n = A089977 n

end A089977

/-! ## A089977.P15200074382643310740

`A122946(n+1)+A001607(n+1)`
-/

namespace A089977.P15200074382643310740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122946 (n + 1) + A001607 (n + 1)

end

end A089977.P15200074382643310740

namespace A089977

/-- `A122946(n+1)+A001607(n+1)` -/
def P15200074382643310740.Spec : Prop :=
  ∀ n, P15200074382643310740.a n = A089977 n

end A089977

/-! ## A089977.P8476793803167458425

`A122946(n+2)/2`
-/

namespace A089977.P8476793803167458425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122946 (n + 2) : ℚ) / 2

end

end A089977.P8476793803167458425

namespace A089977

/-- `A122946(n+2)/2` -/
def P8476793803167458425.Spec : Prop :=
  ∀ n, P8476793803167458425.a n = (A089977 n : ℚ)

end A089977

/-! ## A089977.P15494195285038461359

`A266007(n)-a(n-1)` with `a(0)=1`
-/

namespace A089977.P15494195285038461359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266007 n - a (n - 1)

end

end A089977.P15494195285038461359

namespace A089977

/-- `A266007(n)-a(n-1)` -/
def P15494195285038461359.Spec : Prop :=
  ∀ n, P15494195285038461359.a n = A089977 n

end A089977

/-! ## A089977.P6991589616260581686

`A097334(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A089977.P6991589616260581686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097334 n - (a (n - 1) + a (n - 1))

end

end A089977.P6991589616260581686

namespace A089977

/-- `A097334(n)-(a(n-1)+a(n-1))` -/
def P6991589616260581686.Spec : Prop :=
  ∀ n, P6991589616260581686.a n = A089977 n

end A089977

/-! ## A089977.P12615653426208702374

`A097334(n)-A122946(n+1)`
-/

namespace A089977.P12615653426208702374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097334 n - A122946 (n + 1)

end

end A089977.P12615653426208702374

namespace A089977

/-- `A097334(n)-A122946(n+1)` -/
def P12615653426208702374.Spec : Prop :=
  ∀ n, P12615653426208702374.a n = A089977 n

end A089977

/-! ## A089977.P2728616776041378753

`(A110512(n)+A000079(n))/2`
-/

namespace A089977.P2728616776041378753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110512 n + A000079 n : ℚ) / 2

end

end A089977.P2728616776041378753

namespace A089977

/-- `(A110512(n)+A000079(n))/2` -/
def P2728616776041378753.Spec : Prop :=
  ∀ n, P2728616776041378753.a n = (A089977 n : ℚ)

end A089977

/-! ## A089977.P3319896398655989143

`floor((A110512(n)+A000051(n))/2)`
-/

namespace A089977.P3319896398655989143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110512 n + A000051 n : ℚ) / 2⌋

end

end A089977.P3319896398655989143

namespace A089977

/-- `floor((A110512(n)+A000051(n))/2)` -/
def P3319896398655989143.Spec : Prop :=
  ∀ n, P3319896398655989143.a n = A089977 n

end A089977

/-! ## A089977.P4873091572488603850

`A193515(∑[n+3])`
-/

namespace A089977.P4873091572488603850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193515 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089977.P4873091572488603850

namespace A089977

/-- `A193515(∑[n+3])` -/
def P4873091572488603850.Spec : Prop :=
  ∀ n, P4873091572488603850.a n = A089977 n

end A089977

/-!
# A089978: Expansion of 1/(1-3x-3x^3).

The programs for A089978, the canonical program `A089978.P13254983578425587013` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089978 has offset 0).

The definition of A089978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-3x^3))` (program `A089978.P13254983578425587013`, by `A089978.P13254983578425587013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089978.P13254983578425587013

`ogf(1/(1-3x-3x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089978

/-- `ogf(1/(1-3x-3x^3))` -/
def P13254983578425587013.Spec : Prop :=
  ∀ n, P13254983578425587013.a n = A089978 n

theorem P13254983578425587013.correct : P13254983578425587013.Spec := by
  intro n
  simp only [A089978]

end A089978

/-! ## A089978.P8442305775758344157

`3*a(n-1)+3*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A089978.P8442305775758344157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * a (n - 1) + 3 * a (n - 3)

end

end A089978.P8442305775758344157

namespace A089978

/-- `3*a(n-1)+3*a(n-3)` -/
def P8442305775758344157.Spec : Prop :=
  ∀ n, (P8442305775758344157.a n : ℤ) = A089978 n

end A089978

/-! ## A089978.P2316985557481335218

`∑{#}[floor(n/2), C(n-2*#, #)*3^(n-2*#)]`
-/

namespace A089978.P2316985557481335218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (2 * k : ℤ)).toNat k : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ)

end

end A089978.P2316985557481335218

namespace A089978

/-- `∑{#}[floor(n/2), C(n-2*#, #)*3^(n-2*#)]` -/
def P2316985557481335218.Spec : Prop :=
  ∀ n, P2316985557481335218.a n = (A089978 n : ℚ)

end A089978

/-! ## A089978.P2571896179970882217

`3*(a(n-1)+a(n-3))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A089978.P2571896179970882217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * (a (n - 1) + a (n - 3))

end

end A089978.P2571896179970882217

namespace A089978

/-- `3*(a(n-1)+a(n-3))` -/
def P2571896179970882217.Spec : Prop :=
  ∀ n, (P2571896179970882217.a n : ℤ) = A089978 n

end A089978

/-! ## A089978.P4702325256942037714

`A255116(n)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A089978.P4702325256942037714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A255116 n - a (n - 2)

end

end A089978.P4702325256942037714

namespace A089978

/-- `A255116(n)-a(n-2)` -/
def P4702325256942037714.Spec : Prop :=
  ∀ n, P4702325256942037714.a n = A089978 n

end A089978

/-! ## A089978.P9883304676524283344

`A255116(n+2)%A255116(n+1)`
-/

namespace A089978.P9883304676524283344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255116 (n + 2)) (A255116 (n + 1))

end

end A089978.P9883304676524283344

namespace A089978

/-- `A255116(n+2)%A255116(n+1)` -/
def P9883304676524283344.Spec : Prop :=
  ∀ n, P9883304676524283344.a n = A089978 n

end A089978

/-!
# A089979: Expansion of 1/(1-4x-4x^3).

The programs for A089979, the canonical program `A089979.P10041494094316359541` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089979 has offset 0).

The definition of A089979 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x-4x^3))` (program `A089979.P10041494094316359541`, by `A089979.P10041494094316359541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089979.P10041494094316359541

`ogf(1/(1-4x-4x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089979

/-- `ogf(1/(1-4x-4x^3))` -/
def P10041494094316359541.Spec : Prop :=
  ∀ n, P10041494094316359541.a n = A089979 n

theorem P10041494094316359541.correct : P10041494094316359541.Spec := by
  intro n
  simp only [A089979]

end A089979

/-! ## A089979.P10062721158121551329

`4*a(n-1)+4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A089979.P10062721158121551329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  4 * a (n - 1) + 4 * a (n - 3)

end

end A089979.P10062721158121551329

namespace A089979

/-- `4*a(n-1)+4*a(n-3)` -/
def P10062721158121551329.Spec : Prop :=
  ∀ n, (P10062721158121551329.a n : ℤ) = A089979 n

end A089979

/-! ## A089979.P15555123204896306562

`∑{#}[floor(n/2), C(n-2*#, #)*4^(n-2*#)]`
-/

namespace A089979.P15555123204896306562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (2 * k : ℤ)).toNat k : ℚ) * (4 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ)

end

end A089979.P15555123204896306562

namespace A089979

/-- `∑{#}[floor(n/2), C(n-2*#, #)*4^(n-2*#)]` -/
def P15555123204896306562.Spec : Prop :=
  ∀ n, P15555123204896306562.a n = (A089979 n : ℚ)

end A089979

/-! ## A089979.P4920850133630518590

`4*(a(n-1)+a(n-3))` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A089979.P4920850133630518590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  4 * (a (n - 1) + a (n - 3))

end

end A089979.P4920850133630518590

namespace A089979

/-- `4*(a(n-1)+a(n-3))` -/
def P4920850133630518590.Spec : Prop :=
  ∀ n, (P4920850133630518590.a n : ℤ) = A089979 n

end A089979

/-! ## A089979.P2581265088977924708

`A255117(n)-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A089979.P2581265088977924708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A255117 n - a (n - 2)

end

end A089979.P2581265088977924708

namespace A089979

/-- `A255117(n)-a(n-2)` -/
def P2581265088977924708.Spec : Prop :=
  ∀ n, P2581265088977924708.a n = A089979 n

end A089979

/-! ## A089979.P11932421412269189091

`A255117(n+2)%A255117(n+1)`
-/

namespace A089979.P11932421412269189091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255117 (n + 2)) (A255117 (n + 1))

end

end A089979.P11932421412269189091

namespace A089979

/-- `A255117(n+2)%A255117(n+1)` -/
def P11932421412269189091.Spec : Prop :=
  ∀ n, P11932421412269189091.a n = A089979 n

end A089979

/-!
# A089981: Primes whose decimal representation also represents a prime in base 3.

The programs for A089981, there is no canonical definition to state claims against.
-/

/-! ## A089981.P2425709579342354316

`∩[A001363(n+1), A036953(n+1)]`
-/

namespace A089981.P2425709579342354316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089981.P2425709579342354316

/-! ## A089981.P3501693211279556609

`∩[A001363(n+1), A386021(n+1)]`
-/

namespace A089981.P3501693211279556609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089981.P3501693211279556609

/-! ## A089981.P2259219181591218880

`∩[A001363(n+1), A386017(n+1)]`
-/

namespace A089981.P2259219181591218880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089981.P2259219181591218880

/-! ## A089981.P16028057047257928233

`∩[A001363(n+1), A386018(n+1)]`
-/

namespace A089981.P16028057047257928233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089981.P16028057047257928233

/-! ## A089981.P7946270983875676956

`∩[A001363(n+1), A386019(n+1)]`
-/

namespace A089981.P7946270983875676956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089981.P7946270983875676956

/-! ## A089981.P15437611799081187634

`∩[A001363(n+1), A385344(n+1)]`
-/

namespace A089981.P15437611799081187634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089981.P15437611799081187634

/-! ## A089981.P18390798234368832148

`∩[A001363(n+1), A107715(n+1)]`
-/

namespace A089981.P18390798234368832148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089981.P18390798234368832148

/-! ## A089981.P3652816030501786360

`∩[A001363(n+1), A386020(n+1)]`
-/

namespace A089981.P3652816030501786360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089981.P3652816030501786360

/-! ## A089981.P17620501994713877363

`∩[A001363(n+1), A386022(n+1)]`
-/

namespace A089981.P17620501994713877363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089981.P17620501994713877363

/-! ## A089981.P4897537953562362381

`A007089(A065721(n+1))`
-/

namespace A089981.P4897537953562362381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A065721 (n + 1)).toNat

end

end A089981.P4897537953562362381

/-! ## A089981.P10017227368414867751

`A007089(p?[A036954(n+1)])`
-/

namespace A089981.P10017227368414867751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A089981.P10017227368414867751

/-! ## A089981.P1099109880874338570

`A007089(∩[A008578(n+1), A036954(n+1)])`
-/

namespace A089981.P1099109880874338570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A089981.P1099109880874338570

/-! ## A089981.P4210387853133509315

`A007089(∩[A036954(n+1), A040116(n+1)])`
-/

namespace A089981.P4210387853133509315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A089981.P4210387853133509315

/-! ## A089981.P13456237606210360218

`∩[A001363(n+1), A173580(n+1)]`
-/

namespace A089981.P13456237606210360218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089981.P13456237606210360218

/-!
# A089982: Triangular numbers that can be expressed as the sum of 2 positive triangular numbers.

The programs for A089982, the canonical program `A089982.P1312020099685533765` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089982 has offset 1).

The definition of A089982 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A012132, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089982.P1312020099685533765

`A000217(A012132(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A089982

/-- `A000217(A012132(n+1))` -/
def P1312020099685533765.Spec : Prop :=
  ∀ n, P1312020099685533765.a n = A089982 (n + 1)

theorem P1312020099685533765.correct : P1312020099685533765.Spec := by
  intro n
  simp only [A089982, Nat.add_sub_cancel]

end A089982

/-! ## A089982.P14007031235826320576

`A000217(lt[2, A160651(n)])`
-/

namespace A089982.P14007031235826320576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A089982.P14007031235826320576

namespace A089982

/-- `A000217(lt[2, A160651(n)])` -/
def P14007031235826320576.Spec : Prop :=
  ∀ n, P14007031235826320576.a n = A089982 (n + 1)

end A089982

/-! ## A089982.P11497633762167881088

`A000217(lt[2, A278244(n)])`
-/

namespace A089982.P11497633762167881088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A089982.P11497633762167881088

namespace A089982

/-- `A000217(lt[2, A278244(n)])` -/
def P11497633762167881088.Spec : Prop :=
  ∀ n, P11497633762167881088.a n = A089982 (n + 1)

end A089982

/-! ## A089982.P177601162456474435

`A161680(A012132(n+1)+1)`
-/

namespace A089982.P177601162456474435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A012132 (n + 1) + 1).toNat

end

end A089982.P177601162456474435

namespace A089982

/-- `A161680(A012132(n+1)+1)` -/
def P177601162456474435.Spec : Prop :=
  ∀ n, P177601162456474435.a n = A089982 (n + 1)

end A089982

/-! ## A089982.P14728491844179114543

`A161680(lt[2, A160651(n)]+1)`
-/

namespace A089982.P14728491844179114543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A089982.P14728491844179114543

namespace A089982

/-- `A161680(lt[2, A160651(n)]+1)` -/
def P14728491844179114543.Spec : Prop :=
  ∀ n, P14728491844179114543.a n = A089982 (n + 1)

end A089982

/-! ## A089982.P17710541668813617512

`A133263(lt[2, A160651(n)])-2`
-/

namespace A089982.P17710541668813617512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 2

end

end A089982.P17710541668813617512

namespace A089982

/-- `A133263(lt[2, A160651(n)])-2` -/
def P17710541668813617512.Spec : Prop :=
  ∀ n, P17710541668813617512.a n = A089982 (n + 1)

end A089982

/-! ## A089982.P16899688636528234329

`A000124(A012132(n+1))-A309332(A108769(n+1))`
-/

namespace A089982.P16899688636528234329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A012132 (n + 1)).toNat - A309332 (A108769 (n + 1)).toNat

end

end A089982.P16899688636528234329

namespace A089982

/-- `A000124(A012132(n+1))-A309332(A108769(n+1))` -/
def P16899688636528234329.Spec : Prop :=
  ∀ n, P16899688636528234329.a n = A089982 (n + 1)

end A089982

/-! ## A089982.P12892037231424667314

`A001971(A180263(n+2))`
-/

namespace A089982.P12892037231424667314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A180263 (n + 2)).toNat

end

end A089982.P12892037231424667314

namespace A089982

/-- `A001971(A180263(n+2))` -/
def P12892037231424667314.Spec : Prop :=
  ∀ n, P12892037231424667314.a n = A089982 (n + 1)

end A089982

/-! ## A089982.P15927405287257959370

`A000124(A012132(n+1))-A035263(A234100(n+1))`
-/

namespace A089982.P15927405287257959370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A012132 (n + 1)).toNat - A035263 (A234100 (n + 1)).toNat

end

end A089982.P15927405287257959370

namespace A089982

/-- `A000124(A012132(n+1))-A035263(A234100(n+1))` -/
def P15927405287257959370.Spec : Prop :=
  ∀ n, P15927405287257959370.a n = A089982 (n + 1)

end A089982

/-! ## A089982.P7068700271171759787

`∩[A118139(n+1), A000217(n)]`
-/

namespace A089982.P7068700271171759787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089982.P7068700271171759787

namespace A089982

/-- `∩[A118139(n+1), A000217(n)]` -/
def P7068700271171759787.Spec : Prop :=
  ∀ n, (P7068700271171759787.a n : ℤ) = A089982 (n + 1)

end A089982

/-! ## A089982.P31553561776471082

`∩[A118139(n+1), A122493(n)]`
-/

namespace A089982.P31553561776471082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122493 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089982.P31553561776471082

namespace A089982

/-- `∩[A118139(n+1), A122493(n)]` -/
def P31553561776471082.Spec : Prop :=
  ∀ n, (P31553561776471082.a n : ℤ) = A089982 (n + 1)

end A089982

/-! ## A089982.P11218343100234884006

`∩[A118139(n+1), A253145(n)]`
-/

namespace A089982.P11218343100234884006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089982.P11218343100234884006

namespace A089982

/-- `∩[A118139(n+1), A253145(n)]` -/
def P11218343100234884006.Spec : Prop :=
  ∀ n, (P11218343100234884006.a n : ℤ) = A089982 (n + 1)

end A089982

/-! ## A089982.P5163653243499113473

`∩[A118139(n+1), A186783(n+1)]`
-/

namespace A089982.P5163653243499113473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089982.P5163653243499113473

namespace A089982

/-- `∩[A118139(n+1), A186783(n+1)]` -/
def P5163653243499113473.Spec : Prop :=
  ∀ n, (P5163653243499113473.a n : ℤ) = A089982 (n + 1)

end A089982

/-! ## A089982.P7607794554465487360

`∩[A118139(n+1), A350295(n+3)]`
-/

namespace A089982.P7607794554465487360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089982.P7607794554465487360

namespace A089982

/-- `∩[A118139(n+1), A350295(n+3)]` -/
def P7607794554465487360.Spec : Prop :=
  ∀ n, (P7607794554465487360.a n : ℤ) = A089982 (n + 1)

end A089982

/-! ## A089982.P11210358662734698666

`∩[A118139(n+1), A258264(n+1)]`
-/

namespace A089982.P11210358662734698666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089982.P11210358662734698666

namespace A089982

/-- `∩[A118139(n+1), A258264(n+1)]` -/
def P11210358662734698666.Spec : Prop :=
  ∀ n, (P11210358662734698666.a n : ℤ) = A089982 (n + 1)

end A089982

/-! ## A089982.P6383860689564427731

`A000217(lt[1, A001222(∑[4*n]+1)])`
-/

namespace A089982.P6383860689564427731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A089982.P6383860689564427731

namespace A089982

/-- `A000217(lt[1, A001222(∑[4*n]+1)])` -/
def P6383860689564427731.Spec : Prop :=
  ∀ n, P6383860689564427731.a n = A089982 (n + 1)

end A089982

/-! ## A089982.P5703524234204156667

`∩[A051533(n+1), A000217(n)]`
-/

namespace A089982.P5703524234204156667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089982.P5703524234204156667

namespace A089982

/-- `∩[A051533(n+1), A000217(n)]` -/
def P5703524234204156667.Spec : Prop :=
  ∀ n, (P5703524234204156667.a n : ℤ) = A089982 (n + 1)

end A089982

/-! ## A089982.P13261922012217299300

`∩[A051533(n+1), A253145(n)]`
-/

namespace A089982.P13261922012217299300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089982.P13261922012217299300

namespace A089982

/-- `∩[A051533(n+1), A253145(n)]` -/
def P13261922012217299300.Spec : Prop :=
  ∀ n, (P13261922012217299300.a n : ℤ) = A089982 (n + 1)

end A089982

/-! ## A089982.P4160813635532043527

`∩[A051533(n+1), A350295(n+3)]`
-/

namespace A089982.P4160813635532043527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089982.P4160813635532043527

namespace A089982

/-- `∩[A051533(n+1), A350295(n+3)]` -/
def P4160813635532043527.Spec : Prop :=
  ∀ n, (P4160813635532043527.a n : ℤ) = A089982 (n + 1)

end A089982

/-! ## A089982.P14784815319645969334

`∩[A380509(n+1), A000217(n)]`
-/

namespace A089982.P14784815319645969334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089982.P14784815319645969334

namespace A089982

/-- `∩[A380509(n+1), A000217(n)]` -/
def P14784815319645969334.Spec : Prop :=
  ∀ n, (P14784815319645969334.a n : ℤ) = A089982 (n + 1)

end A089982

/-!
# A089983: 1, 1, 1, 1, ... a, b, c, d, ab-cd, ...

The programs for A089983, the canonical program `A089983.P18048190191828474581` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089983 has offset 1).

The definition of A089983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089983.P18048190191828474581

`a(n-4)*a(n-3)-a(n-2)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089983

/-- `a(n-4)*a(n-3)-a(n-2)*a(n-1)` -/
def P18048190191828474581.Spec : Prop :=
  ∀ n, P18048190191828474581.a n = A089983 (n + 1)

theorem P18048190191828474581.correct : P18048190191828474581.Spec := by
  intro n
  simp only [A089983, Nat.add_sub_cancel]

end A089983

/-!
# A089984: 1, 1, 1, 1, ... a, b, c, d, ac-bd, ...

The programs for A089984, the canonical program `A089984.P8050831024218224939` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089984 has offset 1).

The definition of A089984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089984.P8050831024218224939

`a(n-4)*a(n-2)-a(n-3)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089984

/-- `a(n-4)*a(n-2)-a(n-3)*a(n-1)` -/
def P8050831024218224939.Spec : Prop :=
  ∀ n, P8050831024218224939.a n = A089984 (n + 1)

theorem P8050831024218224939.correct : P8050831024218224939.Spec := by
  intro n
  simp only [A089984, Nat.add_sub_cancel]

end A089984

/-! ## A089984.P7470847299294885766

`A259875(A187829(n+1)+∑[A049310(n)])`
-/

namespace A089984.P7470847299294885766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259875 (A187829 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089984.P7470847299294885766

namespace A089984

/-- `A259875(A187829(n+1)+∑[A049310(n)])` -/
def P7470847299294885766.Spec : Prop :=
  ∀ n, P7470847299294885766.a n = A089984 (n + 1)

end A089984

/-! ## A089984.P1433946225083200636

`A343640(A313106(n+2)+A078174(n+8))`
-/

namespace A089984.P1433946225083200636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343640 (A313106 (n + 2) + A078174 (n + 8)).toNat

end

end A089984.P1433946225083200636

namespace A089984

/-- `A343640(A313106(n+2)+A078174(n+8))` -/
def P1433946225083200636.Spec : Prop :=
  ∀ n, P1433946225083200636.a n = A089984 (n + 1)

end A089984

/-! ## A089984.P17080025857650883442

`A281010(A330813(n+1))`
-/

namespace A089984.P17080025857650883442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281010 (A330813 (n + 1)).toNat

end

end A089984.P17080025857650883442

namespace A089984

/-- `A281010(A330813(n+1))` -/
def P17080025857650883442.Spec : Prop :=
  ∀ n, P17080025857650883442.a n = A089984 (n + 1)

end A089984

/-! ## A089984.P13026734057495199135

`1-A091950(A284731(2*n+1))`
-/

namespace A089984.P13026734057495199135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A091950 (A284731 (2 * n + 1)).toNat

end

end A089984.P13026734057495199135

namespace A089984

/-- `1-A091950(A284731(2*n+1))` -/
def P13026734057495199135.Spec : Prop :=
  ∀ n, P13026734057495199135.a n = A089984 (n + 1)

end A089984

/-!
# A089985: a(n) = A089709(n+1)/A089709(n).

The programs for A089985, the canonical program `A089985.P9527897224987280569` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089985 has offset 1).

The definition of A089985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089985.P17843790558727009017

`ogf((2-3x+x^2-2x^3)/(1-3x+2x^2))`
-/

namespace A089985.P17843790558727009017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 1, -2] [1, -3, 2] n

end

end A089985.P17843790558727009017

namespace A089985

/-- `ogf((2-3x+x^2-2x^3)/(1-3x+2x^2))` -/
def P17843790558727009017.Spec : Prop :=
  ∀ n, P17843790558727009017.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P9527897224987280569

`3*a(n-1)-2*a(n-2)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A089985

/-- `3*a(n-1)-2*a(n-2)` -/
def P9527897224987280569.Spec : Prop :=
  ∀ n, P9527897224987280569.a n = A089985 (n + 1)

theorem P9527897224987280569.correct : P9527897224987280569.Spec := by
  intro n
  simp only [A089985, Nat.add_sub_cancel]

end A089985

/-! ## A089985.P1486587241897693475

`A089709(n+2)/A089709(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089985.P1486587241897693475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089709 (n + 2) : ℚ) / (A089709 (n + 1) : ℚ)

end

end A089985.P1486587241897693475

namespace A089985

/-- `A089709(n+2)/A089709(n+1)` -/
def P1486587241897693475.Spec : Prop :=
  ∀ n, P1486587241897693475.a n = (A089985 (n + 1) : ℚ)

end A089985

/-! ## A089985.P4019487003114574009

`ceil(acot(acot(n))+2^n)`
-/

namespace A089985.P4019487003114574009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ)) + (2 ^ n : ℝ)⌉

end

end A089985.P4019487003114574009

namespace A089985

/-- `ceil(acot(acot(n))+2^n)` -/
def P4019487003114574009.Spec : Prop :=
  ∀ n, P4019487003114574009.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P12934933082228760273

`record[or(2, floor(2^(n-1)))]`
-/

namespace A089985.P12934933082228760273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089985.P12934933082228760273

namespace A089985

/-- `record[or(2, floor(2^(n-1)))]` -/
def P12934933082228760273.Spec : Prop :=
  ∀ n, P12934933082228760273.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P7035541522548128021

`record[xor(2, floor(2^(n-1)))]`
-/

namespace A089985.P7035541522548128021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089985.P7035541522548128021

namespace A089985

/-- `record[xor(2, floor(2^(n-1)))]` -/
def P7035541522548128021.Spec : Prop :=
  ∀ n, P7035541522548128021.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P2331451124241467502

`or(1, 2^n)+1-char[1]`
-/

namespace A089985.P2331451124241467502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 ^ n) + 1 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A089985.P2331451124241467502

namespace A089985

/-- `or(1, 2^n)+1-char[1]` -/
def P2331451124241467502.Spec : Prop :=
  ∀ n, P2331451124241467502.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P11346566502539820282

`(2%(n+1))!+2^n`
-/

namespace A089985.P11346566502539820282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 % (n + 1)) + 2 ^ n

end

end A089985.P11346566502539820282

namespace A089985

/-- `(2%(n+1))!+2^n` -/
def P11346566502539820282.Spec : Prop :=
  ∀ n, (P11346566502539820282.a n : ℤ) = A089985 (n + 1)

end A089985

/-! ## A089985.P5666003323268764819

`round(2^n+atan(n+1)²)`
-/

namespace A089985.P5666003323268764819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) + Real.arctan (n + 1 : ℝ) ^ 2)

end

end A089985.P5666003323268764819

namespace A089985

/-- `round(2^n+atan(n+1)²)` -/
def P5666003323268764819.Spec : Prop :=
  ∀ n, P5666003323268764819.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P5164665295360594432

`2*(a(n-1)-1)` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A089985.P5164665295360594432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  2 * (a (n - 1) - 1)

end

end A089985.P5164665295360594432

namespace A089985

/-- `2*(a(n-1)-1)` -/
def P5164665295360594432.Spec : Prop :=
  ∀ n, P5164665295360594432.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P1487560299024860684

`floor(2^n+3^(n/(n+1)))`
-/

namespace A089985.P1487560299024860684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) + (3 : ℝ) ^ ((n : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A089985.P1487560299024860684

namespace A089985

/-- `floor(2^n+3^(n/(n+1)))` -/
def P1487560299024860684.Spec : Prop :=
  ∀ n, P1487560299024860684.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P11060090290649918919

`a(n-1)+a(n-1)-2` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A089985.P11060090290649918919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  a (n - 1) + (a (n - 1) - 2)

end

end A089985.P11060090290649918919

namespace A089985

/-- `a(n-1)+a(n-1)-2` -/
def P11060090290649918919.Spec : Prop :=
  ∀ n, P11060090290649918919.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P1302429267356262733

`a(n-1)-(2-a(n-1))` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A089985.P1302429267356262733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  a (n - 1) - (2 - a (n - 1))

end

end A089985.P1302429267356262733

namespace A089985

/-- `a(n-1)-(2-a(n-1))` -/
def P1302429267356262733.Spec : Prop :=
  ∀ n, P1302429267356262733.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P14275914281268361879

`A256994(n+2)-1`
-/

namespace A089985.P14275914281268361879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256994 (n + 2) - 1

end

end A089985.P14275914281268361879

namespace A089985

/-- `A256994(n+2)-1` -/
def P14275914281268361879.Spec : Prop :=
  ∀ n, P14275914281268361879.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P17834368096542340545

`or(2, A283592(n)+1)`
-/

namespace A089985.P17834368096542340545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A283592 n + 1)

end

end A089985.P17834368096542340545

namespace A089985

/-- `or(2, A283592(n)+1)` -/
def P17834368096542340545.Spec : Prop :=
  ∀ n, P17834368096542340545.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P3596443043256909065

`or(2, A244750(n+2))`
-/

namespace A089985.P3596443043256909065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A244750 (n + 2))

end

end A089985.P3596443043256909065

namespace A089985

/-- `or(2, A244750(n+2))` -/
def P3596443043256909065.Spec : Prop :=
  ∀ n, P3596443043256909065.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P13667063413929134492

`or(2, A296965(n)+2)`
-/

namespace A089985.P13667063413929134492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A296965 n + 2)

end

end A089985.P13667063413929134492

namespace A089985

/-- `or(2, A296965(n)+2)` -/
def P13667063413929134492.Spec : Prop :=
  ∀ n, P13667063413929134492.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P4790543153622940686

`A083318(n)+1-char[1]`
-/

namespace A089985.P4790543153622940686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A089985.P4790543153622940686

namespace A089985

/-- `A083318(n)+1-char[1]` -/
def P4790543153622940686.Spec : Prop :=
  ∀ n, P4790543153622940686.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P2585028691170052682

`A155559(n)-char[1]+2`
-/

namespace A089985.P2585028691170052682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2

end

end A089985.P2585028691170052682

namespace A089985

/-- `A155559(n)-char[1]+2` -/
def P2585028691170052682.Spec : Prop :=
  ∀ n, P2585028691170052682.a n = A089985 (n + 1)

end A089985

/-! ## A089985.P7280638774468114860

`2*A094373(n)-char[1]`
-/

namespace A089985.P7280638774468114860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094373 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A089985.P7280638774468114860

namespace A089985

/-- `2*A094373(n)-char[1]` -/
def P7280638774468114860.Spec : Prop :=
  ∀ n, P7280638774468114860.a n = A089985 (n + 1)

end A089985

/-!
# A089986: Numbers n such that 4n + 7 is prime.

The programs for A089986, the canonical program `A089986.P3429274986940726883` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089986 has offset 1).

The definition of A089986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089986.P4565497588572729843

`A095278(n+1)-1`
-/

namespace A089986.P4565497588572729843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1) - 1

end

end A089986.P4565497588572729843

namespace A089986

/-- `A095278(n+1)-1` -/
def P4565497588572729843.Spec : Prop :=
  ∀ n, P4565497588572729843.a n = A089986 (n + 1)

end A089986

/-! ## A089986.P3429274986940726883

`A005099(n+1)-2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089986

/-- `A005099(n+1)-2` -/
def P3429274986940726883.Spec : Prop :=
  ∀ n, P3429274986940726883.a n = A089986 (n + 1)

theorem P3429274986940726883.correct : P3429274986940726883.Spec := by
  intro n
  simp only [A089986, Nat.add_sub_cancel]

end A089986

/-! ## A089986.P5076239929533907808

`(p?[4*n-1]-7)/4`
-/

namespace A089986.P5076239929533907808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 7 : ℚ) / 4

end

end A089986.P5076239929533907808

namespace A089986

/-- `(p?[4*n-1]-7)/4` -/
def P5076239929533907808.Spec : Prop :=
  ∀ n, P5076239929533907808.a n = (A089986 (n + 1) : ℚ)

end A089986

/-! ## A089986.P14879898553929752971

`A156287(n+1)-3`
-/

namespace A089986.P14879898553929752971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1) - 3

end

end A089986.P14879898553929752971

namespace A089986

/-- `A156287(n+1)-3` -/
def P14879898553929752971.Spec : Prop :=
  ∀ n, P14879898553929752971.a n = A089986 (n + 1)

theorem P14879898553929752971.correct : P14879898553929752971.Spec := by
  intro n
  simp only [A089986, Nat.add_sub_cancel, A089986.P14879898553929752971.a, A089986.P3429274986940726883.a, A005099, A005099.P16814233129974845155.a, A156287, A156287.P14892850201557753402.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089986

/-! ## A089986.P18413198597277279178

`A087915(n+1)/2-1`
-/

namespace A089986.P18413198597277279178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087915 (n + 1) : ℚ) / 2 - 1

end

end A089986.P18413198597277279178

namespace A089986

/-- `A087915(n+1)/2-1` -/
def P18413198597277279178.Spec : Prop :=
  ∀ n, P18413198597277279178.a n = (A089986 (n + 1) : ℚ)

theorem P18413198597277279178.correct : P18413198597277279178.Spec := by
  intro n
  simp only [A089986, Nat.add_sub_cancel, A089986.P18413198597277279178.a, A089986.P3429274986940726883.a, A005099, A005099.P16814233129974845155.a, A087915, A087915.P15618837605475670392.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089986

/-! ## A089986.P15557993313145467137

`A089257(n+1)/2-3`
-/

namespace A089986.P15557993313145467137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089257 (n + 1) : ℚ) / 2 - 3

end

end A089986.P15557993313145467137

namespace A089986

/-- `A089257(n+1)/2-3` -/
def P15557993313145467137.Spec : Prop :=
  ∀ n, P15557993313145467137.a n = (A089986 (n + 1) : ℚ)

theorem P15557993313145467137.correct : P15557993313145467137.Spec := by
  intro n
  simp only [A089986, Nat.add_sub_cancel, A089986.P15557993313145467137.a, A089986.P3429274986940726883.a, A005099, A005099.P16814233129974845155.a, A089257, A089257.P243562782731200786.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A089193, A089193.P2689755802632067634.a, A087915, A087915.P15618837605475670392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089986

/-! ## A089986.P3875213177362861245

`(A104635(n+1)-3)/2`
-/

namespace A089986.P3875213177362861245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104635 (n + 1) - 3 : ℚ) / 2

end

end A089986.P3875213177362861245

namespace A089986

/-- `(A104635(n+1)-3)/2` -/
def P3875213177362861245.Spec : Prop :=
  ∀ n, P3875213177362861245.a n = (A089986 (n + 1) : ℚ)

end A089986

/-! ## A089986.P9959475020677511542

`A090658(n+1)/4-2`
-/

namespace A089986.P9959475020677511542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090658 (n + 1) : ℚ) / 4 - 2

end

end A089986.P9959475020677511542

namespace A089986

/-- `A090658(n+1)/4-2` -/
def P9959475020677511542.Spec : Prop :=
  ∀ n, P9959475020677511542.a n = (A089986 (n + 1) : ℚ)

theorem P9959475020677511542.correct : P9959475020677511542.Spec := by
  intro n
  simp only [A089986, Nat.add_sub_cancel, A089986.P9959475020677511542.a, A089986.P3429274986940726883.a, A005099, A005099.P16814233129974845155.a, A090658, A090658.P13517223795634800117.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A087915, A087915.P15618837605475670392.a, A089257, A089257.P243562782731200786.a, A089193, A089193.P2689755802632067634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089986

/-! ## A089986.P417709014983066743

`(A090670(n+1)-5)/2`
-/

namespace A089986.P417709014983066743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090670 (n + 1) - 5 : ℚ) / 2

end

end A089986.P417709014983066743

namespace A089986

/-- `(A090670(n+1)-5)/2` -/
def P417709014983066743.Spec : Prop :=
  ∀ n, P417709014983066743.a n = (A089986 (n + 1) : ℚ)

theorem P417709014983066743.correct : P417709014983066743.Spec := by
  intro n
  simp only [A089986, Nat.add_sub_cancel, A089986.P417709014983066743.a, A089986.P3429274986940726883.a, A005099, A005099.P16814233129974845155.a, A090670, A090670.P8610966387605569098.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A087915, A087915.P15618837605475670392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089986

/-! ## A089986.P17279340376528059234

`(A190105(n+1)-5)/3`
-/

namespace A089986.P17279340376528059234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190105 (n + 1) - 5 : ℚ) / 3

end

end A089986.P17279340376528059234

namespace A089986

/-- `(A190105(n+1)-5)/3` -/
def P17279340376528059234.Spec : Prop :=
  ∀ n, P17279340376528059234.a n = (A089986 (n + 1) : ℚ)

end A089986

/-! ## A089986.P4977345145626691919

`(A002145(n+1)+1)/4-2`
-/

namespace A089986.P4977345145626691919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) + 1 : ℚ) / 4 - 2

end

end A089986.P4977345145626691919

namespace A089986

/-- `(A002145(n+1)+1)/4-2` -/
def P4977345145626691919.Spec : Prop :=
  ∀ n, P4977345145626691919.a n = (A089986 (n + 1) : ℚ)

end A089986

/-! ## A089986.P15391762418322277662

`A190105(n+1)-A090670(n+1)`
-/

namespace A089986.P15391762418322277662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1) - A090670 (n + 1)

end

end A089986.P15391762418322277662

namespace A089986

/-- `A190105(n+1)-A090670(n+1)` -/
def P15391762418322277662.Spec : Prop :=
  ∀ n, P15391762418322277662.a n = A089986 (n + 1)

end A089986

/-! ## A089986.P2287680709500780251

`A111215(n+1)-(A118480(n+1)+1)`
-/

namespace A089986.P2287680709500780251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) - (A118480 (n + 1) + 1)

end

end A089986.P2287680709500780251

namespace A089986

/-- `A111215(n+1)-(A118480(n+1)+1)` -/
def P2287680709500780251.Spec : Prop :=
  ∀ n, P2287680709500780251.a n = A089986 (n + 1)

end A089986

/-! ## A089986.P4133826572579610446

`A022758(n+1)-(A005098(n+1)+2)`
-/

namespace A089986.P4133826572579610446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022758 (n + 1) - (A005098 (n + 1) + 2)

end

end A089986.P4133826572579610446

namespace A089986

/-- `A022758(n+1)-(A005098(n+1)+2)` -/
def P4133826572579610446.Spec : Prop :=
  ∀ n, P4133826572579610446.a n = A089986 (n + 1)

end A089986

/-! ## A089986.P15733682547130385207

`A005098(n+1)-(A118480(n+1)+2)`
-/

namespace A089986.P15733682547130385207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) - (A118480 (n + 1) + 2)

end

end A089986.P15733682547130385207

namespace A089986

/-- `A005098(n+1)-(A118480(n+1)+2)` -/
def P15733682547130385207.Spec : Prop :=
  ∀ n, P15733682547130385207.a n = A089986 (n + 1)

end A089986

/-! ## A089986.P5954000519034732809

`A002145(n+1)-(A190105(n+1)+2)`
-/

namespace A089986.P5954000519034732809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) - (A190105 (n + 1) + 2)

end

end A089986.P5954000519034732809

namespace A089986

/-- `A002145(n+1)-(A190105(n+1)+2)` -/
def P5954000519034732809.Spec : Prop :=
  ∀ n, P5954000519034732809.a n = A089986 (n + 1)

end A089986

/-! ## A089986.P13733879286667845025

`A190105(n+1)-(A104635(n+1)+2)`
-/

namespace A089986.P13733879286667845025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1) - (A104635 (n + 1) + 2)

end

end A089986.P13733879286667845025

namespace A089986

/-- `A190105(n+1)-(A104635(n+1)+2)` -/
def P13733879286667845025.Spec : Prop :=
  ∀ n, P13733879286667845025.a n = A089986 (n + 1)

end A089986

/-! ## A089986.P1608709648417255259

`A024698(A138971(n+1))-2`
-/

namespace A089986.P1608709648417255259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024698 (A138971 (n + 1)).toNat - 2

end

end A089986.P1608709648417255259

namespace A089986

/-- `A024698(A138971(n+1))-2` -/
def P1608709648417255259.Spec : Prop :=
  ∀ n, P1608709648417255259.a n = A089986 (n + 1)

end A089986

/-! ## A089986.P11833399956213023134

`A075518(A080148(n+1))-1`
-/

namespace A089986.P11833399956213023134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075518 (A080148 (n + 1)).toNat - 1

end

end A089986.P11833399956213023134

namespace A089986

/-- `A075518(A080148(n+1))-1` -/
def P11833399956213023134.Spec : Prop :=
  ∀ n, P11833399956213023134.a n = A089986 (n + 1)

end A089986

/-! ## A089986.P2748061619883599654

`eq[1, A001222(4*n+3)]-1`
-/

namespace A089986.P2748061619883599654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A089986.P2748061619883599654

namespace A089986

/-- `eq[1, A001222(4*n+3)]-1` -/
def P2748061619883599654.Spec : Prop :=
  ∀ n, P2748061619883599654.a n = A089986 (n + 1)

end A089986

/-!
# A089988: Possible differences of n^2*(n+1)/2.

The programs for A089988, there is no canonical definition to state claims against.
-/

/-! ## A089988.P92190889699695756

`∩[A319184(n+1), A376745(n+1)]`
-/

namespace A089988.P92190889699695756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089988.P92190889699695756

/-! ## A089988.P4130190781363165214

`∩[A319184(n+1), comp[A321450(n+1)]]`
-/

namespace A089988.P4130190781363165214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319184 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321450 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A089988.P4130190781363165214

/-!
# A089990: a(n) = n step nested walk based on (A004001[n]+ (-1)^lastsum).

The programs for A089990, there is no canonical definition to state claims against.
-/

/-! ## A089990.P14410082012630119422

`A243759(xor(A014844(n), A165580(3*n+4)))`
-/

namespace A089990.P14410082012630119422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243759 (Int.xor (A014844 n) (A165580 (3 * n + 4))).toNat

end

end A089990.P14410082012630119422

/-!
# A089991: Maximum lengths of chaotic walks based on the A004001 sequence.

The programs for A089991, there is no canonical definition to state claims against.
-/

/-! ## A089991.P15971591696869821829

`(n+1)*A237420(A004001(n+1))`
-/

namespace A089991.P15971591696869821829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A237420 (A004001 (n + 1)).toNat

end

end A089991.P15971591696869821829

/-! ## A089991.P409540287186538506

`(n+1)*A237420(2-A080677(n+1)+n)`
-/

namespace A089991.P409540287186538506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A237420 (2 - A080677 (n + 1) + (n : ℤ)).toNat

end

end A089991.P409540287186538506

/-! ## A089991.P11415403525717335369

`(n+1)*A237420(∑[gcd(2, A276441(n+1))]-n)`
-/

namespace A089991.P11415403525717335369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A276441 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A237420 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A089991.P11415403525717335369

/-! ## A089991.P16500319816356642125

`(n+1)*A237420((A004074(n+1)+n+1)/2)`
-/

namespace A089991.P16500319816356642125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A237420 (SequenceMachineLib.roundAway ((A004074 (n + 1) + (n + 1 : ℤ) : ℚ) / 2)).toNat

end

end A089991.P16500319816356642125

/-! ## A089991.P9027006389396594844

`(n+1)*A237420(comp[A188163(n+1)+n-1]-n)`
-/

namespace A089991.P9027006389396594844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 1) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A237420 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A089991.P9027006389396594844

/-! ## A089991.P2563376539602471416

`A103517(n)*A142150(A004001(n+1))`
-/

namespace A089991.P2563376539602471416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A142150 (A004001 (n + 1)).toNat

end

end A089991.P2563376539602471416

/-! ## A089991.P4034213344703618999

`A103517(n)*A142150(2-A080677(n+1)+n)`
-/

namespace A089991.P4034213344703618999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A142150 (2 - A080677 (n + 1) + (n : ℤ)).toNat

end

end A089991.P4034213344703618999

/-! ## A089991.P572476658975190716

`(n+1)*A237420(A284019(n+1)+A005185(n+1))`
-/

namespace A089991.P572476658975190716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A237420 (A284019 (n + 1) + A005185 (n + 1)).toNat

end

end A089991.P572476658975190716

/-! ## A089991.P11300668675922364254

`(n+1)*A237420(A283472(n+1)+A283469(n+1))`
-/

namespace A089991.P11300668675922364254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A237420 (A283472 (n + 1) + A283469 (n + 1)).toNat

end

end A089991.P11300668675922364254

/-! ## A089991.P2372013744553781252

`A103517(n)*A142150((A004074(n+1)+n+1)/2)`
-/

namespace A089991.P2372013744553781252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A142150 (SequenceMachineLib.roundAway ((A004074 (n + 1) + (n + 1 : ℤ) : ℚ) / 2)).toNat

end

end A089991.P2372013744553781252

/-!
# A089992: Second prime divisor of numbers that are not powers of primes (A024619).

The programs for A089992, the canonical program `A089992.P14796854152102679484` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089992 has offset 1).

The definition of A089992 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, A119288, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089992.P14796854152102679484

`A119288(A024619(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A089992

/-- `A119288(A024619(n+1))` -/
def P14796854152102679484.Spec : Prop :=
  ∀ n, P14796854152102679484.a n = A089992 (n + 1)

theorem P14796854152102679484.correct : P14796854152102679484.Spec := by
  intro n
  simp only [A089992, Nat.add_sub_cancel]

end A089992

/-! ## A089992.P14911074371504548112

`A020639(A084365(n+1)/A020639(A084365(n+1)))`
-/

namespace A089992.P14911074371504548112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A084365 (n + 1) : ℚ) / (A020639 (A084365 (n + 1)).toNat : ℚ))).toNat

end

end A089992.P14911074371504548112

namespace A089992

/-- `A020639(A084365(n+1)/A020639(A084365(n+1)))` -/
def P14911074371504548112.Spec : Prop :=
  ∀ n, P14911074371504548112.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P7266122322370689241

`p?[A119288(n+1)]`
-/

namespace A089992.P7266122322370689241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089992.P7266122322370689241

namespace A089992

/-- `p?[A119288(n+1)]` -/
def P7266122322370689241.Spec : Prop :=
  ∀ n, P7266122322370689241.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P357514667597918722

`A014673(A084365(n+1))`
-/

namespace A089992.P357514667597918722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A084365 (n + 1)).toNat

end

end A089992.P357514667597918722

namespace A089992

/-- `A014673(A084365(n+1))` -/
def P357514667597918722.Spec : Prop :=
  ∀ n, P357514667597918722.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P14105986754243346878

`A119288(A361102(n+2))`
-/

namespace A089992.P14105986754243346878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A361102 (n + 2)).toNat

end

end A089992.P14105986754243346878

namespace A089992

/-- `A119288(A361102(n+2))` -/
def P14105986754243346878.Spec : Prop :=
  ∀ n, P14105986754243346878.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P4862088244654167329

`p?[A014673(A007947(n+1))]`
-/

namespace A089992.P4862088244654167329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089992.P4862088244654167329

namespace A089992

/-- `p?[A014673(A007947(n+1))]` -/
def P4862088244654167329.Spec : Prop :=
  ∀ n, P4862088244654167329.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P18064428781873871149

`p?[A014673(A334085(n+1))]`
-/

namespace A089992.P18064428781873871149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A334085 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089992.P18064428781873871149

namespace A089992

/-- `p?[A014673(A334085(n+1))]` -/
def P18064428781873871149.Spec : Prop :=
  ∀ n, P18064428781873871149.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P9138895645986200559

`p?[A014673(A340679(n+1))]`
-/

namespace A089992.P9138895645986200559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A340679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089992.P9138895645986200559

namespace A089992

/-- `p?[A014673(A340679(n+1))]` -/
def P9138895645986200559.Spec : Prop :=
  ∀ n, P9138895645986200559.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P6968568256696173903

`A119288(A080765(n+1)+1)`
-/

namespace A089992.P6968568256696173903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A080765 (n + 1) + 1).toNat

end

end A089992.P6968568256696173903

namespace A089992

/-- `A119288(A080765(n+1)+1)` -/
def P6968568256696173903.Spec : Prop :=
  ∀ n, P6968568256696173903.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P10125036009649223561

`filter[A119288(n+1), A010051(#)]`
-/

namespace A089992.P10125036009649223561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A089992.P10125036009649223561

namespace A089992

/-- `filter[A119288(n+1), A010051(#)]` -/
def P10125036009649223561.Spec : Prop :=
  ∀ n, P10125036009649223561.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P2144468874383582250

`filter[A119288(n+1), A014306(#)]`
-/

namespace A089992.P2144468874383582250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A089992.P2144468874383582250

namespace A089992

/-- `filter[A119288(n+1), A014306(#)]` -/
def P2144468874383582250.Spec : Prop :=
  ∀ n, P2144468874383582250.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P11354074918468493236

`filter[A119288(n+1), A049240(#)]`
-/

namespace A089992.P11354074918468493236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A089992.P11354074918468493236

namespace A089992

/-- `filter[A119288(n+1), A049240(#)]` -/
def P11354074918468493236.Spec : Prop :=
  ∀ n, P11354074918468493236.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P14896530913098362633

`filter[A119288(n+1), A053867(#)]`
-/

namespace A089992.P14896530913098362633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A089992.P14896530913098362633

namespace A089992

/-- `filter[A119288(n+1), A053867(#)]` -/
def P14896530913098362633.Spec : Prop :=
  ∀ n, P14896530913098362633.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P15823514595205448036

`filter[A119288(n+1), A066829(#)]`
-/

namespace A089992.P15823514595205448036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A089992.P15823514595205448036

namespace A089992

/-- `filter[A119288(n+1), A066829(#)]` -/
def P15823514595205448036.Spec : Prop :=
  ∀ n, P15823514595205448036.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P1296719435005139840

`filter[A119288(n+1), A069513(#)]`
-/

namespace A089992.P1296719435005139840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A089992.P1296719435005139840

namespace A089992

/-- `filter[A119288(n+1), A069513(#)]` -/
def P1296719435005139840.Spec : Prop :=
  ∀ n, P1296719435005139840.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P3419067831803021515

`filter[A119288(n+1), A092248(#)]`
-/

namespace A089992.P3419067831803021515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A089992.P3419067831803021515

namespace A089992

/-- `filter[A119288(n+1), A092248(#)]` -/
def P3419067831803021515.Spec : Prop :=
  ∀ n, P3419067831803021515.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P12077529613642949010

`filter[A119288(n+1), A099104(#)]`
-/

namespace A089992.P12077529613642949010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A089992.P12077529613642949010

namespace A089992

/-- `filter[A119288(n+1), A099104(#)]` -/
def P12077529613642949010.Spec : Prop :=
  ∀ n, P12077529613642949010.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P12939553402703379688

`filter[A119288(n+1), A101040(#)]`
-/

namespace A089992.P12939553402703379688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A089992.P12939553402703379688

namespace A089992

/-- `filter[A119288(n+1), A101040(#)]` -/
def P12939553402703379688.Spec : Prop :=
  ∀ n, P12939553402703379688.a n = A089992 (n + 1)

end A089992

/-! ## A089992.P14979153117835019679

`filter[A119288(n+1), A144101(#)]`
-/

namespace A089992.P14979153117835019679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A089992.P14979153117835019679

namespace A089992

/-- `filter[A119288(n+1), A144101(#)]` -/
def P14979153117835019679.Spec : Prop :=
  ∀ n, P14979153117835019679.a n = A089992 (n + 1)

end A089992

/-!
# A089993: Penultimate prime divisor of numbers that are not powers of primes (A024619).

The programs for A089993, the canonical program `A089993.P8970324826790462378` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089993 has offset 1).

The definition of A089993 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, A076820, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089993.P8970324826790462378

`A076820(A024619(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A089993

/-- `A076820(A024619(n+1))` -/
def P8970324826790462378.Spec : Prop :=
  ∀ n, P8970324826790462378.a n = A089993 (n + 1)

theorem P8970324826790462378.correct : P8970324826790462378.Spec := by
  intro n
  simp only [A089993, Nat.add_sub_cancel]

end A089993

/-! ## A089993.P6955574486001025768

`p?[A076820(n+1)]`
-/

namespace A089993.P6955574486001025768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089993.P6955574486001025768

namespace A089993

/-- `p?[A076820(n+1)]` -/
def P6955574486001025768.Spec : Prop :=
  ∀ n, P6955574486001025768.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P9333163520655593148

`A076820(A084365(n+1))`
-/

namespace A089993.P9333163520655593148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (A084365 (n + 1)).toNat

end

end A089993.P9333163520655593148

namespace A089993

/-- `A076820(A084365(n+1))` -/
def P9333163520655593148.Spec : Prop :=
  ∀ n, P9333163520655593148.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P7333538955925765435

`A076820(A080765(n+1)+1)`
-/

namespace A089993.P7333538955925765435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (A080765 (n + 1) + 1).toNat

end

end A089993.P7333538955925765435

namespace A089993

/-- `A076820(A080765(n+1)+1)` -/
def P7333538955925765435.Spec : Prop :=
  ∀ n, P7333538955925765435.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P15745106657009025002

`filter[A076820(n+1), A010051(#)]`
-/

namespace A089993.P15745106657009025002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A089993.P15745106657009025002

namespace A089993

/-- `filter[A076820(n+1), A010051(#)]` -/
def P15745106657009025002.Spec : Prop :=
  ∀ n, P15745106657009025002.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P5607495514594812232

`filter[A076820(n+1), A014306(#)]`
-/

namespace A089993.P5607495514594812232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A089993.P5607495514594812232

namespace A089993

/-- `filter[A076820(n+1), A014306(#)]` -/
def P5607495514594812232.Spec : Prop :=
  ∀ n, P5607495514594812232.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P14368549933836468562

`filter[A076820(n+1), A049240(#)]`
-/

namespace A089993.P14368549933836468562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A089993.P14368549933836468562

namespace A089993

/-- `filter[A076820(n+1), A049240(#)]` -/
def P14368549933836468562.Spec : Prop :=
  ∀ n, P14368549933836468562.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P12227883081863860339

`filter[A076820(n+1), A053867(#)]`
-/

namespace A089993.P12227883081863860339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A089993.P12227883081863860339

namespace A089993

/-- `filter[A076820(n+1), A053867(#)]` -/
def P12227883081863860339.Spec : Prop :=
  ∀ n, P12227883081863860339.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P11522013203854812524

`filter[A076820(n+1), A066829(#)]`
-/

namespace A089993.P11522013203854812524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A089993.P11522013203854812524

namespace A089993

/-- `filter[A076820(n+1), A066829(#)]` -/
def P11522013203854812524.Spec : Prop :=
  ∀ n, P11522013203854812524.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P1261560354638068076

`filter[A076820(n+1), A069513(#)]`
-/

namespace A089993.P1261560354638068076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A089993.P1261560354638068076

namespace A089993

/-- `filter[A076820(n+1), A069513(#)]` -/
def P1261560354638068076.Spec : Prop :=
  ∀ n, P1261560354638068076.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P7273206328020996793

`filter[A076820(n+1), A092248(#)]`
-/

namespace A089993.P7273206328020996793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A089993.P7273206328020996793

namespace A089993

/-- `filter[A076820(n+1), A092248(#)]` -/
def P7273206328020996793.Spec : Prop :=
  ∀ n, P7273206328020996793.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P4316265364378361043

`filter[A076820(n+1), A099104(#)]`
-/

namespace A089993.P4316265364378361043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A089993.P4316265364378361043

namespace A089993

/-- `filter[A076820(n+1), A099104(#)]` -/
def P4316265364378361043.Spec : Prop :=
  ∀ n, P4316265364378361043.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P16790178560526092984

`filter[A076820(n+1), A101040(#)]`
-/

namespace A089993.P16790178560526092984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A089993.P16790178560526092984

namespace A089993

/-- `filter[A076820(n+1), A101040(#)]` -/
def P16790178560526092984.Spec : Prop :=
  ∀ n, P16790178560526092984.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P16801590433759757881

`A006530(A084365(n+1)/A006530(A084365(n+1)))`
-/

namespace A089993.P16801590433759757881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A084365 (n + 1) : ℚ) / (A006530 (A084365 (n + 1)).toNat : ℚ))).toNat

end

end A089993.P16801590433759757881

namespace A089993

/-- `A006530(A084365(n+1)/A006530(A084365(n+1)))` -/
def P16801590433759757881.Spec : Prop :=
  ∀ n, P16801590433759757881.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P12552496439265941559

`A076820(A361102(n+2))`
-/

namespace A089993.P12552496439265941559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (A361102 (n + 2)).toNat

end

end A089993.P12552496439265941559

namespace A089993

/-- `A076820(A361102(n+2))` -/
def P12552496439265941559.Spec : Prop :=
  ∀ n, P12552496439265941559.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P4495803422578268938

`p?[A006530(A051119(n+1))]`
-/

namespace A089993.P4495803422578268938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089993.P4495803422578268938

namespace A089993

/-- `p?[A006530(A051119(n+1))]` -/
def P4495803422578268938.Spec : Prop :=
  ∀ n, P4495803422578268938.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P8230960523489414520

`p?[A087039(A007947(n+1))]`
-/

namespace A089993.P8230960523489414520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089993.P8230960523489414520

namespace A089993

/-- `p?[A087039(A007947(n+1))]` -/
def P8230960523489414520.Spec : Prop :=
  ∀ n, P8230960523489414520.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P8429345944409662240

`p?[A087039(A243074(n+1))]`
-/

namespace A089993.P8429345944409662240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A243074 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089993.P8429345944409662240

namespace A089993

/-- `p?[A087039(A243074(n+1))]` -/
def P8429345944409662240.Spec : Prop :=
  ∀ n, P8429345944409662240.a n = A089993 (n + 1)

end A089993

/-! ## A089993.P2606376342912014486

`p?[A087039(A334085(n+1))]`
-/

namespace A089993.P2606376342912014486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A334085 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089993.P2606376342912014486

namespace A089993

/-- `p?[A087039(A334085(n+1))]` -/
def P2606376342912014486.Spec : Prop :=
  ∀ n, P2606376342912014486.a n = A089993 (n + 1)

end A089993

/-!
# A089994: Number of primes between factors of n-th semiprime.

The programs for A089994, the canonical program `A089994.P16664375105840136208` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089994 has offset 1).

The definition of A089994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089994.P15600385656443467520

`A117370(A001358(n+1))`
-/

namespace A089994.P15600385656443467520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (A001358 (n + 1)).toNat

end

end A089994.P15600385656443467520

namespace A089994

/-- `A117370(A001358(n+1))` -/
def P15600385656443467520.Spec : Prop :=
  ∀ n, P15600385656443467520.a n = A089994 (n + 1)

end A089994

/-! ## A089994.P2120079187491273015

`A117370(sqrt(A074985(n+1)))`
-/

namespace A089994.P2120079187491273015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A089994.P2120079187491273015

namespace A089994

/-- `A117370(sqrt(A074985(n+1)))` -/
def P2120079187491273015.Spec : Prop :=
  ∀ n, P2120079187491273015.a n = A089994 (n + 1)

end A089994

/-! ## A089994.P2738377763728626785

`A117370(A186621(n+1)+1)`
-/

namespace A089994.P2738377763728626785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (A186621 (n + 1) + 1).toNat

end

end A089994.P2738377763728626785

namespace A089994

/-- `A117370(A186621(n+1)+1)` -/
def P2738377763728626785.Spec : Prop :=
  ∀ n, P2738377763728626785.a n = A089994 (n + 1)

end A089994

/-! ## A089994.P16664375105840136208

`A028310(A176506(n+1))-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A089994

/-- `A028310(A176506(n+1))-1` -/
def P16664375105840136208.Spec : Prop :=
  ∀ n, P16664375105840136208.a n = A089994 (n + 1)

theorem P16664375105840136208.correct : P16664375105840136208.Spec := by
  intro n
  simp only [A089994, Nat.add_sub_cancel]

end A089994

/-! ## A089994.P11432988414862647714

`A176506(n+1)-A072165(n+1)`
-/

namespace A089994.P11432988414862647714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176506 (n + 1) - A072165 (n + 1)

end

end A089994.P11432988414862647714

namespace A089994

/-- `A176506(n+1)-A072165(n+1)` -/
def P11432988414862647714.Spec : Prop :=
  ∀ n, P11432988414862647714.a n = A089994 (n + 1)

end A089994

/-! ## A089994.P14568642690035462498

`A176506(n+1)-A008683(A001358(n+1))`
-/

namespace A089994.P14568642690035462498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176506 (n + 1) - A008683 (A001358 (n + 1)).toNat

end

end A089994.P14568642690035462498

namespace A089994

/-- `A176506(n+1)-A008683(A001358(n+1))` -/
def P14568642690035462498.Spec : Prop :=
  ∀ n, P14568642690035462498.a n = A089994 (n + 1)

end A089994

/-! ## A089994.P5987771842364893540

`A176506(n+1)-A328457(2*A176506(n+1)+1)`
-/

namespace A089994.P5987771842364893540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176506 (n + 1) - A328457 (2 * A176506 (n + 1) + 1).toNat

end

end A089994.P5987771842364893540

namespace A089994

/-- `A176506(n+1)-A328457(2*A176506(n+1)+1)` -/
def P5987771842364893540.Spec : Prop :=
  ∀ n, P5987771842364893540.a n = A089994 (n + 1)

end A089994

/-! ## A089994.P10736961178719381139

`A117370(A176540(n+2))`
-/

namespace A089994.P10736961178719381139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (A176540 (n + 2)).toNat

end

end A089994.P10736961178719381139

namespace A089994

/-- `A117370(A176540(n+2))` -/
def P10736961178719381139.Spec : Prop :=
  ∀ n, P10736961178719381139.a n = A089994 (n + 1)

end A089994

/-! ## A089994.P6927515707237814183

`A285725(p?[A246277(n+1)])`
-/

namespace A089994.P6927515707237814183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285725 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A089994.P6927515707237814183

namespace A089994

/-- `A285725(p?[A246277(n+1)])` -/
def P6927515707237814183.Spec : Prop :=
  ∀ n, P6927515707237814183.a n = A089994 (n + 1)

end A089994

/-! ## A089994.P14568889958205614425

`A143143(eq[2, A226378(n)])`
-/

namespace A089994.P14568889958205614425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089994.P14568889958205614425

namespace A089994

/-- `A143143(eq[2, A226378(n)])` -/
def P14568889958205614425.Spec : Prop :=
  ∀ n, P14568889958205614425.a n = A089994 (n + 1)

end A089994

/-! ## A089994.P1991918757081179807

`A143143(eq[2, A001222(n+1)]+1)`
-/

namespace A089994.P1991918757081179807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A089994.P1991918757081179807

namespace A089994

/-- `A143143(eq[2, A001222(n+1)]+1)` -/
def P1991918757081179807.Spec : Prop :=
  ∀ n, P1991918757081179807.a n = A089994 (n + 1)

end A089994

/-!
# A089995: Products of pairs of distinct, non-consecutive primes.

The programs for A089995, the canonical program `A089995.P4274821303083598371` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089995 has offset 1).

The definition of A089995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089995.P1531976406936017136

`1+eq[7, A335425(n+1)]`
-/

namespace A089995.P1531976406936017136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335425 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089995.P1531976406936017136

namespace A089995

/-- `1+eq[7, A335425(n+1)]` -/
def P1531976406936017136.Spec : Prop :=
  ∀ n, (P1531976406936017136.a n : ℤ) = A089995 (n + 1)

end A089995

/-! ## A089995.P8700110918200946402

`filter[A006881(n+1), A356173(#)]`
-/

namespace A089995.P8700110918200946402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A089995.P8700110918200946402

namespace A089995

/-- `filter[A006881(n+1), A356173(#)]` -/
def P8700110918200946402.Spec : Prop :=
  ∀ n, P8700110918200946402.a n = A089995 (n + 1)

end A089995

/-! ## A089995.P11666410573069420359

`filter[A161918(n+3), A356173(#)]`
-/

namespace A089995.P11666410573069420359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A089995.P11666410573069420359

namespace A089995

/-- `filter[A161918(n+3), A356173(#)]` -/
def P11666410573069420359.Spec : Prop :=
  ∀ n, P11666410573069420359.a n = A089995 (n + 1)

end A089995

/-! ## A089995.P11131768717489125033

`filter[A073487(n+1), A064911(#)]`
-/

namespace A089995.P11131768717489125033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A089995.P11131768717489125033

namespace A089995

/-- `filter[A073487(n+1), A064911(#)]` -/
def P11131768717489125033.Spec : Prop :=
  ∀ n, P11131768717489125033.a n = A089995 (n + 1)

end A089995

/-! ## A089995.P5075919228720491623

`filter[A073487(n+1), A101040(#)]`
-/

namespace A089995.P5075919228720491623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A089995.P5075919228720491623

namespace A089995

/-- `filter[A073487(n+1), A101040(#)]` -/
def P5075919228720491623.Spec : Prop :=
  ∀ n, P5075919228720491623.a n = A089995 (n + 1)

end A089995

/-! ## A089995.P10168541155303136635

`filter[A073487(n+1), A123927(#)]`
-/

namespace A089995.P10168541155303136635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A089995.P10168541155303136635

namespace A089995

/-- `filter[A073487(n+1), A123927(#)]` -/
def P10168541155303136635.Spec : Prop :=
  ∀ n, P10168541155303136635.a n = A089995 (n + 1)

end A089995

/-! ## A089995.P7827187952262958165

`filter[A073487(n+1), A280710(#)]`
-/

namespace A089995.P7827187952262958165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A089995.P7827187952262958165

namespace A089995

/-- `filter[A073487(n+1), A280710(#)]` -/
def P7827187952262958165.Spec : Prop :=
  ∀ n, P7827187952262958165.a n = A089995 (n + 1)

end A089995

/-! ## A089995.P10456496094520028218

`filter[A073487(n+1), A353471(#)]`
-/

namespace A089995.P10456496094520028218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A089995.P10456496094520028218

namespace A089995

/-- `filter[A073487(n+1), A353471(#)]` -/
def P10456496094520028218.Spec : Prop :=
  ∀ n, P10456496094520028218.a n = A089995 (n + 1)

end A089995

/-! ## A089995.P4274821303083598371

`filter[A073487(n+1), A353788(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A089995

/-- `filter[A073487(n+1), A353788(#)]` -/
def P4274821303083598371.Spec : Prop :=
  ∀ n, P4274821303083598371.a n = A089995 (n + 1)

theorem P4274821303083598371.correct : P4274821303083598371.Spec := by
  intro n
  simp only [A089995, Nat.add_sub_cancel]

end A089995

/-! ## A089995.P12070535748431071843

`filter[A073487(n+1), A353799(#)]`
-/

namespace A089995.P12070535748431071843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A089995.P12070535748431071843

namespace A089995

/-- `filter[A073487(n+1), A353799(#)]` -/
def P12070535748431071843.Spec : Prop :=
  ∀ n, P12070535748431071843.a n = A089995 (n + 1)

end A089995

/-! ## A089995.P2325312482731862016

`filter[A073487(n+1), A354927(#)]`
-/

namespace A089995.P2325312482731862016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A089995.P2325312482731862016

namespace A089995

/-- `filter[A073487(n+1), A354927(#)]` -/
def P2325312482731862016.Spec : Prop :=
  ∀ n, P2325312482731862016.a n = A089995 (n + 1)

end A089995

/-! ## A089995.P15452426908739099217

`filter[A073487(n+1), A356173(#)]`
-/

namespace A089995.P15452426908739099217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A089995.P15452426908739099217

namespace A089995

/-- `filter[A073487(n+1), A356173(#)]` -/
def P15452426908739099217.Spec : Prop :=
  ∀ n, P15452426908739099217.a n = A089995 (n + 1)

end A089995

/-! ## A089995.P1005227912718965452

`∩[A001358(n+1), A073487(n+1)]`
-/

namespace A089995.P1005227912718965452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089995.P1005227912718965452

namespace A089995

/-- `∩[A001358(n+1), A073487(n+1)]` -/
def P1005227912718965452.Spec : Prop :=
  ∀ n, (P1005227912718965452.a n : ℤ) = A089995 (n + 1)

end A089995

/-! ## A089995.P7473361213522859296

`∩[A006881(n+1), A073487(n+1)]`
-/

namespace A089995.P7473361213522859296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089995.P7473361213522859296

namespace A089995

/-- `∩[A006881(n+1), A073487(n+1)]` -/
def P7473361213522859296.Spec : Prop :=
  ∀ n, (P7473361213522859296.a n : ℤ) = A089995 (n + 1)

end A089995

/-! ## A089995.P9634886193676199799

`∩[A007422(n+1), A073487(n+1)]`
-/

namespace A089995.P9634886193676199799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089995.P9634886193676199799

namespace A089995

/-- `∩[A007422(n+1), A073487(n+1)]` -/
def P9634886193676199799.Spec : Prop :=
  ∀ n, (P9634886193676199799.a n : ℤ) = A089995 (n + 1)

end A089995

/-! ## A089995.P13027310526632735402

`∩[A068993(n+1), A073487(n+1)]`
-/

namespace A089995.P13027310526632735402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089995.P13027310526632735402

namespace A089995

/-- `∩[A068993(n+1), A073487(n+1)]` -/
def P13027310526632735402.Spec : Prop :=
  ∀ n, (P13027310526632735402.a n : ℤ) = A089995 (n + 1)

end A089995

/-! ## A089995.P6771714505330534380

`∩[A073487(n+1), A065516(n)+a(n-1)]` with `a(0)=4`
-/

namespace A089995.P6771714505330534380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089995.P6771714505330534380

namespace A089995

/-- `∩[A073487(n+1), A065516(n)+a(n-1)]` -/
def P6771714505330534380.Spec : Prop :=
  ∀ n, (P6771714505330534380.a n : ℤ) = A089995 (n + 1)

end A089995

/-! ## A089995.P8354518861672019830

`∩[A007964(n+1), A073487(n+1)]`
-/

namespace A089995.P8354518861672019830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089995.P8354518861672019830

namespace A089995

/-- `∩[A007964(n+1), A073487(n+1)]` -/
def P8354518861672019830.Spec : Prop :=
  ∀ n, (P8354518861672019830.a n : ℤ) = A089995 (n + 1)

end A089995

/-! ## A089995.P1346725997653928238

`∩[A007774(n+1), A073487(n+1)]`
-/

namespace A089995.P1346725997653928238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089995.P1346725997653928238

namespace A089995

/-- `∩[A007774(n+1), A073487(n+1)]` -/
def P1346725997653928238.Spec : Prop :=
  ∀ n, (P1346725997653928238.a n : ℤ) = A089995 (n + 1)

end A089995

/-! ## A089995.P15586225792074220579

`filter[A325161(n+1), A064911(#)]`
-/

namespace A089995.P15586225792074220579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A089995.P15586225792074220579

namespace A089995

/-- `filter[A325161(n+1), A064911(#)]` -/
def P15586225792074220579.Spec : Prop :=
  ∀ n, P15586225792074220579.a n = A089995 (n + 1)

end A089995

/-!
# A089998: Smallest square with Hamming weight n (i.e., with exactly n 1's when written in binary).

The programs for A089998, there is no canonical definition to state claims against.
-/

/-! ## A089998.P11451728982488021896

`A231897(n)²`
-/

namespace A089998.P11451728982488021896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231897 n ^ 2

end

end A089998.P11451728982488021896

/-! ## A089998.P13496303876857586796

`A231897(n)^A006530(A001316(n))`
-/

namespace A089998.P13496303876857586796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231897 n : ℚ) ^ (A006530 (A001316 n).toNat : ℤ)

end

end A089998.P13496303876857586796

/-! ## A089998.P4754174700370640524

`A231897(n)^A020639(A004277(n))`
-/

namespace A089998.P4754174700370640524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231897 n : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

end

end A089998.P4754174700370640524

/-! ## A089998.P11270907142264300154

`A231897(n)^A020639(A008458(n))`
-/

namespace A089998.P11270907142264300154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231897 n : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A089998.P11270907142264300154

/-! ## A089998.P16824545618914204764

`A231897(n)^A020639(A008574(n))`
-/

namespace A089998.P16824545618914204764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231897 n : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A089998.P16824545618914204764

/-! ## A089998.P14036648363377257624

`A231897(n)^A020639(A016825(n))`
-/

namespace A089998.P14036648363377257624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231897 n : ℚ) ^ (A020639 (A016825 n).toNat : ℤ)

end

end A089998.P14036648363377257624

/-! ## A089998.P17809726759696172482

`A231897(n)^A020639(A017293(n))`
-/

namespace A089998.P17809726759696172482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231897 n : ℚ) ^ (A020639 (A017293 n).toNat : ℤ)

end

end A089998.P17809726759696172482

/-! ## A089998.P9289171394686251890

`A231897(n)^A020639(A027691(n))`
-/

namespace A089998.P9289171394686251890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231897 n : ℚ) ^ (A020639 (A027691 n).toNat : ℤ)

end

end A089998.P9289171394686251890

/-! ## A089998.P1558451593900578244

`A231897(n)^A000005(A151800(n))`
-/

namespace A089998.P1558451593900578244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231897 n : ℚ) ^ (A000005 (A151800 n).toNat : ℤ)

end

end A089998.P1558451593900578244

/-!
# A089999: Smallest triangular number with Hamming weight n (i.e., with exactly n 1's when written in binary).

The programs for A089999, there is no canonical definition to state claims against.
-/

/-! ## A089999.P9745382858965886825

`(A211201(n)+A211201(n)²)/2`
-/

namespace A089999.P9745382858965886825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211201 n + A211201 n ^ 2 : ℚ) / 2

end

end A089999.P9745382858965886825

/-! ## A089999.P9654887821680688618

`floor(A089998(n+1)/8)`
-/

namespace A089999.P9654887821680688618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089998 (n + 1) : ℚ) / 8⌋

end

end A089999.P9654887821680688618

/-! ## A089999.P12896878699635648206

`round(A089998(n+1)/8)*A178334(n)`
-/

namespace A089999.P12896878699635648206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A089998 (n + 1) : ℚ) / 8) * A178334 n

end

end A089999.P12896878699635648206

/-! ## A089999.P11798729575399303121

`round(A089998(n+1)/8)%A002878(n)`
-/

namespace A089999.P11798729575399303121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A089998 (n + 1) : ℚ) / 8)) (A002878 n)

end

end A089999.P11798729575399303121

/-! ## A089999.P15722781546354929447

`A007318(A000217(n))*round(A089998(n+1)/8)`
-/

namespace A089999.P15722781546354929447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * SequenceMachineLib.roundAway ((A089998 (n + 1) : ℚ) / 8)

end

end A089999.P15722781546354929447

