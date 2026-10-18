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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C013
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C023

/-!
# A029100: Expansion of 1/((1-x)*(1-x^5)*(1-x^9)*(1-x^10)).

The programs for A029100, the canonical program `A029100.P6452191095425632711` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029100 has offset 0).

The definition of A029100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029100.P11266718710311865050

`∑[A025891(n)]`
-/

namespace A029100.P11266718710311865050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029100.P11266718710311865050

namespace A029100

/-- `∑[A025891(n)]` -/
def P11266718710311865050.Spec : Prop :=
  ∀ n, P11266718710311865050.a n = A029100 n

end A029100

/-! ## A029100.P10290352583980950832

`A025891(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A029100.P10290352583980950832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025891 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A029100.P10290352583980950832

namespace A029100

/-- `A025891(char[1]+n)+a(n-1)` -/
def P10290352583980950832.Spec : Prop :=
  ∀ n, P10290352583980950832.a n = A029100 n

end A029100

/-! ## A029100.P6452191095425632711

`A029208(abs(1-n))+A029208(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029100

/-- `A029208(abs(1-n))+A029208(n)` -/
def P6452191095425632711.Spec : Prop :=
  ∀ n, P6452191095425632711.a n = A029100 n

theorem P6452191095425632711.correct : P6452191095425632711.Spec := by
  intro n
  simp only [A029100]

end A029100

/-! ## A029100.P14174256652489494209

`∑[A025862(n)+A025904(n)-A025865(n)]`
-/

namespace A029100.P14174256652489494209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025862 n + (A025904 n - A025865 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029100.P14174256652489494209

namespace A029100

/-- `∑[A025862(n)+A025904(n)-A025865(n)]` -/
def P14174256652489494209.Spec : Prop :=
  ∀ n, P14174256652489494209.a n = A029100 n

end A029100

/-! ## A029100.P11248988323843564640

`∑[A025888(n+1)-Δ[A029403(n)]]`
-/

namespace A029100.P11248988323843564640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029403 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029100.P11248988323843564640

namespace A029100

/-- `∑[A025888(n+1)-Δ[A029403(n)]]` -/
def P11248988323843564640.Spec : Prop :=
  ∀ n, P11248988323843564640.a n = A029100 n

end A029100

/-! ## A029100.P4267465968571539795

`A028310(a(n-1))+A025891(n)` with `a(0)=1`
-/

namespace A029100.P4267465968571539795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025891 n

end

end A029100.P4267465968571539795

namespace A029100

/-- `A028310(a(n-1))+A025891(n)` -/
def P4267465968571539795.Spec : Prop :=
  ∀ n, P4267465968571539795.a n = A029100 n

end A029100

/-! ## A029100.P12980586388716052263

`a(n-1)+A025891(n)*A088347(A088347(n))` with `a(0)=1`
-/

namespace A029100.P12980586388716052263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A025891 n * A088347 (A088347 n).toNat

end

end A029100.P12980586388716052263

namespace A029100

/-- `a(n-1)+A025891(n)*A088347(A088347(n))` -/
def P12980586388716052263.Spec : Prop :=
  ∀ n, P12980586388716052263.a n = A029100 n

end A029100

/-!
# A029101: Expansion of 1/((1-x)*(1-x^5)*(1-x^9)*(1-x^11)).

The programs for A029101, the canonical program `A029101.P11302684764065804664` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029101 has offset 0).

The definition of A029101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029101.P1340179661487478

`∑[A025892(n)]`
-/

namespace A029101.P1340179661487478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029101.P1340179661487478

namespace A029101

/-- `∑[A025892(n)]` -/
def P1340179661487478.Spec : Prop :=
  ∀ n, P1340179661487478.a n = A029101 n

end A029101

/-! ## A029101.P11302684764065804664

`A029209(abs(1-n))+A029209(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029101

/-- `A029209(abs(1-n))+A029209(n)` -/
def P11302684764065804664.Spec : Prop :=
  ∀ n, P11302684764065804664.a n = A029101 n

theorem P11302684764065804664.correct : P11302684764065804664.Spec := by
  intro n
  simp only [A029101]

end A029101

/-! ## A029101.P13074993655822949060

`A029211(abs(1-n))+A029208(n)`
-/

namespace A029101.P13074993655822949060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029211 |1 - (n : ℤ)|.toNat + A029208 n

end

end A029101.P13074993655822949060

namespace A029101

/-- `A029211(abs(1-n))+A029208(n)` -/
def P13074993655822949060.Spec : Prop :=
  ∀ n, P13074993655822949060.a n = A029101 n

end A029101

/-! ## A029101.P12497793566600449380

`A025892(n%A020463(n))+a(n-1)` with `a(0)=1`
-/

namespace A029101.P12497793566600449380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025892 (Int.tmod (n : ℤ) (A020463 n)).toNat + a (n - 1)

end

end A029101.P12497793566600449380

namespace A029101

/-- `A025892(n%A020463(n))+a(n-1)` -/
def P12497793566600449380.Spec : Prop :=
  ∀ n, P12497793566600449380.a n = A029101 n

end A029101

/-! ## A029101.P4952851403083200347

`A025892(n)+a(n-1)%A023354(n)` with `a(0)=1`
-/

namespace A029101.P4952851403083200347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025892 n + Int.tmod (a (n - 1)) (A023354 n)

end

end A029101.P4952851403083200347

namespace A029101

/-- `A025892(n)+a(n-1)%A023354(n)` -/
def P4952851403083200347.Spec : Prop :=
  ∀ n, P4952851403083200347.a n = A029101 n

end A029101

/-! ## A029101.P1820847205075665935

`∑[A025893(n)]+A029411(n)-A025893(n)`
-/

namespace A029101.P1820847205075665935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A029411 n - A025893 n)

end

end A029101.P1820847205075665935

namespace A029101

/-- `∑[A025893(n)]+A029411(n)-A025893(n)` -/
def P1820847205075665935.Spec : Prop :=
  ∀ n, P1820847205075665935.a n = A029101 n

end A029101

/-! ## A029101.P3512097538096581865

`A029081(n+1)-A029342(n+1)`
-/

namespace A029101.P3512097538096581865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029081 (n + 1) - A029342 (n + 1)

end

end A029101.P3512097538096581865

namespace A029101

/-- `A029081(n+1)-A029342(n+1)` -/
def P3512097538096581865.Spec : Prop :=
  ∀ n, P3512097538096581865.a n = A029101 n

end A029101

/-! ## A029101.P11912456267526192349

`A029098(n+1)-A029404(n+1)`
-/

namespace A029101.P11912456267526192349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029098 (n + 1) - A029404 (n + 1)

end

end A029101.P11912456267526192349

namespace A029101

/-- `A029098(n+1)-A029404(n+1)` -/
def P11912456267526192349.Spec : Prop :=
  ∀ n, P11912456267526192349.a n = A029101 n

end A029101

/-! ## A029101.P11442282929635715629

`A025892(n)+a(A123108(A004273(n)))` with `a(0)=1`
-/

namespace A029101.P11442282929635715629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025892 n + a (A123108 (A004273 n).toNat).toNat

end

end A029101.P11442282929635715629

namespace A029101

/-- `A025892(n)+a(A123108(A004273(n)))` -/
def P11442282929635715629.Spec : Prop :=
  ∀ n, P11442282929635715629.a n = A029101 n

end A029101

/-! ## A029101.P12072958476890243998

`A029374(2*n+9)`
-/

namespace A029101.P12072958476890243998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029374 (2 * n + 9)

end

end A029101.P12072958476890243998

namespace A029101

/-- `A029374(2*n+9)` -/
def P12072958476890243998.Spec : Prop :=
  ∀ n, P12072958476890243998.a n = A029101 n

end A029101

/-! ## A029101.P9854895289298911415

`A061579(A061579(a(n-1)))+A025892(n)` with `a(0)=1`
-/

namespace A029101.P9854895289298911415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061579 (A061579 (a (n - 1)).toNat).toNat + A025892 n

end

end A029101.P9854895289298911415

namespace A029101

/-- `A061579(A061579(a(n-1)))+A025892(n)` -/
def P9854895289298911415.Spec : Prop :=
  ∀ n, P9854895289298911415.a n = A029101 n

end A029101

/-!
# A029102: Expansion of 1/((1-x)*(1-x^5)*(1-x^9)*(1-x^12)).

The programs for A029102, the canonical program `A029102.P15887035511913371875` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029102 has offset 0).

The definition of A029102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029102.P15887035511913371875

`∑[A025893(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029102

/-- `∑[A025893(n)]` -/
def P15887035511913371875.Spec : Prop :=
  ∀ n, P15887035511913371875.a n = A029102 n

theorem P15887035511913371875.correct : P15887035511913371875.Spec := by
  intro n
  simp only [A029102]

end A029102

/-! ## A029102.P15305029941102409313

`A025893(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029102.P15305029941102409313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025893 n + a (A023443 n).toNat

end

end A029102.P15305029941102409313

namespace A029102

/-- `A025893(n)+a(A023443(n))` -/
def P15305029941102409313.Spec : Prop :=
  ∀ n, P15305029941102409313.a n = A029102 n

end A029102

/-! ## A029102.P6813842633489826665

`A029210(abs(1-n))+A029210(n)`
-/

namespace A029102.P6813842633489826665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029210 |1 - (n : ℤ)|.toNat + A029210 n

end

end A029102.P6813842633489826665

namespace A029102

/-- `A029210(abs(1-n))+A029210(n)` -/
def P6813842633489826665.Spec : Prop :=
  ∀ n, P6813842633489826665.a n = A029102 n

end A029102

/-! ## A029102.P16052144807706304365

`∑[A025877(A008596(n)%A008576(n))]`
-/

namespace A029102.P16052144807706304365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (Int.tmod (A008596 n) (A008576 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029102.P16052144807706304365

namespace A029102

/-- `∑[A025877(A008596(n)%A008576(n))]` -/
def P16052144807706304365.Spec : Prop :=
  ∀ n, P16052144807706304365.a n = A029102 n

end A029102

/-! ## A029102.P386391614241773891

`A025893(n)+A029113(n)-A025924(n)`
-/

namespace A029102.P386391614241773891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 n + (A029113 n - A025924 n)

end

end A029102.P386391614241773891

namespace A029102

/-- `A025893(n)+A029113(n)-A025924(n)` -/
def P386391614241773891.Spec : Prop :=
  ∀ n, P386391614241773891.a n = A029102 n

end A029102

/-! ## A029102.P12491196376272167797

`A029114(n)+A029411(n)-A025925(n)`
-/

namespace A029102.P12491196376272167797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029411 n - A025925 n)

end

end A029102.P12491196376272167797

namespace A029102

/-- `A029114(n)+A029411(n)-A025925(n)` -/
def P12491196376272167797.Spec : Prop :=
  ∀ n, P12491196376272167797.a n = A029102 n

end A029102

/-! ## A029102.P13219869891231777357

`Δ[∑[A029113(n)]-A029133(n)]`
-/

namespace A029102.P13219869891231777357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029113 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029102.P13219869891231777357

namespace A029102

/-- `Δ[∑[A029113(n)]-A029133(n)]` -/
def P13219869891231777357.Spec : Prop :=
  ∀ n, P13219869891231777357.a n = A029102 n

end A029102

/-! ## A029102.P7140140594935908850

`A029113(n+1)-Δ[A029133(n)]`
-/

namespace A029102.P7140140594935908850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029113 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029102.P7140140594935908850

namespace A029102

/-- `A029113(n+1)-Δ[A029133(n)]` -/
def P7140140594935908850.Spec : Prop :=
  ∀ n, P7140140594935908850.a n = A029102 n

end A029102

/-! ## A029102.P9504952418987349292

`A029113(n+1)-A025924(n+1)`
-/

namespace A029102.P9504952418987349292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029113 (n + 1) - A025924 (n + 1)

end

end A029102.P9504952418987349292

namespace A029102

/-- `A029113(n+1)-A025924(n+1)` -/
def P9504952418987349292.Spec : Prop :=
  ∀ n, P9504952418987349292.a n = A029102 n

end A029102

/-! ## A029102.P719514826496478755

`A065033(2*a(n-1))+A025893(n)` with `a(0)=1`
-/

namespace A029102.P719514826496478755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065033 (2 * a (n - 1)).toNat + A025893 n

end

end A029102.P719514826496478755

namespace A029102

/-- `A065033(2*a(n-1))+A025893(n)` -/
def P719514826496478755.Spec : Prop :=
  ∀ n, P719514826496478755.a n = A029102 n

end A029102

/-!
# A029103: Expansion of 1/((1-x)(1-x^5)(1-x^10)(1-x^11)).

The programs for A029103, the canonical program `A029103.P10183585008874479580` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029103 has offset 0).

The definition of A029103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029103.P2531466172791464402

`∑[A025894(n)]`
-/

namespace A029103.P2531466172791464402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029103.P2531466172791464402

namespace A029103

/-- `∑[A025894(n)]` -/
def P2531466172791464402.Spec : Prop :=
  ∀ n, P2531466172791464402.a n = A029103 n

end A029103

/-! ## A029103.P6276909061822921786

`A025894(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029103.P6276909061822921786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025894 n + a (A023443 n).toNat

end

end A029103.P6276909061822921786

namespace A029103

/-- `A025894(n)+a(A023443(n))` -/
def P6276909061822921786.Spec : Prop :=
  ∀ n, P6276909061822921786.a n = A029103 n

end A029103

/-! ## A029103.P8467650360388464947

`A029211(abs(1-n))+A029211(n)`
-/

namespace A029103.P8467650360388464947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029211 |1 - (n : ℤ)|.toNat + A029211 n

end

end A029103.P8467650360388464947

namespace A029103

/-- `A029211(abs(1-n))+A029211(n)` -/
def P8467650360388464947.Spec : Prop :=
  ∀ n, P8467650360388464947.a n = A029103 n

end A029103

/-! ## A029103.P10183585008874479580

`A029104(n)+A029412(n)-A025895(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029103

/-- `A029104(n)+A029412(n)-A025895(n)` -/
def P10183585008874479580.Spec : Prop :=
  ∀ n, P10183585008874479580.a n = A029103 n

theorem P10183585008874479580.correct : P10183585008874479580.Spec := by
  intro n
  simp only [A029103]

end A029103

/-! ## A029103.P13830228181332068343

`A029083(n)+A029088(n)-A029072(n)`
-/

namespace A029103.P13830228181332068343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029083 n + (A029088 n - A029072 n)

end

end A029103.P13830228181332068343

namespace A029103

/-- `A029083(n)+A029088(n)-A029072(n)` -/
def P13830228181332068343.Spec : Prop :=
  ∀ n, P13830228181332068343.a n = A029103 n

end A029103

/-! ## A029103.P3648731841241430547

`A029083(n+1)-A029344(n+1)`
-/

namespace A029103.P3648731841241430547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029083 (n + 1) - A029344 (n + 1)

end

end A029103.P3648731841241430547

namespace A029103

/-- `A029083(n+1)-A029344(n+1)` -/
def P3648731841241430547.Spec : Prop :=
  ∀ n, P3648731841241430547.a n = A029103 n

end A029103

/-! ## A029103.P335099751974634175

`A029101(n+1)-A029409(n+1)`
-/

namespace A029103.P335099751974634175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029101 (n + 1) - A029409 (n + 1)

end

end A029103.P335099751974634175

namespace A029103

/-- `A029101(n+1)-A029409(n+1)` -/
def P335099751974634175.Spec : Prop :=
  ∀ n, P335099751974634175.a n = A029103 n

end A029103

/-! ## A029103.P18279216268517678708

`A029101(n+1)+A029409(n+1)*A057428(n+1)`
-/

namespace A029103.P18279216268517678708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029101 (n + 1) + A029409 (n + 1) * A057428 (n + 1)

end

end A029103.P18279216268517678708

namespace A029103

/-- `A029101(n+1)+A029409(n+1)*A057428(n+1)` -/
def P18279216268517678708.Spec : Prop :=
  ∀ n, P18279216268517678708.a n = A029103 n

end A029103

/-! ## A029103.P15857556990637824707

`A064429(A064429(a(n-1)))+A025894(n)` with `a(0)=1`
-/

namespace A029103.P15857556990637824707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064429 (A064429 (a (n - 1)).toNat).toNat + A025894 n

end

end A029103.P15857556990637824707

namespace A029103

/-- `A064429(A064429(a(n-1)))+A025894(n)` -/
def P15857556990637824707.Spec : Prop :=
  ∀ n, P15857556990637824707.a n = A029103 n

end A029103

/-! ## A029103.P10823320520170856345

`a(n-1)+A053186(n*n)+A025894(n)` with `a(0)=1`
-/

namespace A029103.P10823320520170856345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A053186 (n * n) + A025894 n)

end

end A029103.P10823320520170856345

namespace A029103

/-- `a(n-1)+A053186(n*n)+A025894(n)` -/
def P10823320520170856345.Spec : Prop :=
  ∀ n, P10823320520170856345.a n = A029103 n

end A029103

/-!
# A029104: Expansion of 1/((1-x)*(1-x^5)*(1-x^10)*(1-x^12)).

The programs for A029104, the canonical program `A029104.P11171262085675889674` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029104 has offset 0).

The definition of A029104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029104.P11171262085675889674

`∑[A025895(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029104

/-- `∑[A025895(n)]` -/
def P11171262085675889674.Spec : Prop :=
  ∀ n, P11171262085675889674.a n = A029104 n

theorem P11171262085675889674.correct : P11171262085675889674.Spec := by
  intro n
  simp only [A029104]

end A029104

/-! ## A029104.P4343299177072103974

`A029391(n)+A029169(xor(1, n))`
-/

namespace A029104.P4343299177072103974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029391 n + A029169 (Nat.xor 1 n)

end

end A029104.P4343299177072103974

namespace A029104

/-- `A029391(n)+A029169(xor(1, n))` -/
def P4343299177072103974.Spec : Prop :=
  ∀ n, P4343299177072103974.a n = A029104 n

end A029104

/-! ## A029104.P6782112295220032302

`A029212(abs(1-n))+A029212(n)`
-/

namespace A029104.P6782112295220032302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029212 |1 - (n : ℤ)|.toNat + A029212 n

end

end A029104.P6782112295220032302

namespace A029104

/-- `A029212(abs(1-n))+A029212(n)` -/
def P6782112295220032302.Spec : Prop :=
  ∀ n, P6782112295220032302.a n = A029104 n

end A029104

/-! ## A029104.P12094697786887437170

`A029213(abs(1-n))+A029211(n)`
-/

namespace A029104.P12094697786887437170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029213 |1 - (n : ℤ)|.toNat + A029211 n

end

end A029104.P12094697786887437170

namespace A029104

/-- `A029213(abs(1-n))+A029211(n)` -/
def P12094697786887437170.Spec : Prop :=
  ∀ n, P12094697786887437170.a n = A029104 n

end A029104

/-! ## A029104.P14471345383665250490

`a(n-1)+A025895(n)%A000124(n)` with `a(0)=1`
-/

namespace A029104.P14471345383665250490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025895 n) (A000124 n)

end

end A029104.P14471345383665250490

namespace A029104

/-- `a(n-1)+A025895(n)%A000124(n)` -/
def P14471345383665250490.Spec : Prop :=
  ∀ n, P14471345383665250490.a n = A029104 n

end A029104

/-! ## A029104.P10154112046407643073

`A029391(n)+A029169(A004442(n))`
-/

namespace A029104.P10154112046407643073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029391 n + A029169 (A004442 n).toNat

end

end A029104.P10154112046407643073

namespace A029104

/-- `A029391(n)+A029169(A004442(n))` -/
def P10154112046407643073.Spec : Prop :=
  ∀ n, P10154112046407643073.a n = A029104 n

end A029104

/-! ## A029104.P15353377578410184371

`A029115(n)+A029412(n)-A025926(n)`
-/

namespace A029104.P15353377578410184371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029115 n + (A029412 n - A025926 n)

end

end A029104.P15353377578410184371

namespace A029104

/-- `A029115(n)+A029412(n)-A025926(n)` -/
def P15353377578410184371.Spec : Prop :=
  ∀ n, P15353377578410184371.a n = A029104 n

end A029104

/-! ## A029104.P5002854083469313624

`A029115(n)+A029391(n)-A029431(n)`
-/

namespace A029104.P5002854083469313624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029115 n + (A029391 n - A029431 n)

end

end A029104.P5002854083469313624

namespace A029104

/-- `A029115(n)+A029391(n)-A029431(n)` -/
def P5002854083469313624.Spec : Prop :=
  ∀ n, P5002854083469313624.a n = A029104 n

end A029104

/-!
# A029105: Expansion of 1/((1-x)(1-x^5)(1-x^11)(1-x^12)).

The programs for A029105, the canonical program `A029105.P17542753174349569294` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029105 has offset 0).

The definition of A029105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029105.P7065491573810790415

`∑[A025896(n)]`
-/

namespace A029105.P7065491573810790415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029105.P7065491573810790415

namespace A029105

/-- `∑[A025896(n)]` -/
def P7065491573810790415.Spec : Prop :=
  ∀ n, P7065491573810790415.a n = A029105 n

end A029105

/-! ## A029105.P11325745316652481501

`A025896(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029105.P11325745316652481501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025896 n + a (A023443 n).toNat

end

end A029105.P11325745316652481501

namespace A029105

/-- `A025896(n)+a(A023443(n))` -/
def P11325745316652481501.Spec : Prop :=
  ∀ n, P11325745316652481501.a n = A029105 n

end A029105

/-! ## A029105.P17542753174349569294

`A029213(abs(1-n))+A029213(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029105

/-- `A029213(abs(1-n))+A029213(n)` -/
def P17542753174349569294.Spec : Prop :=
  ∀ n, P17542753174349569294.a n = A029105 n

theorem P17542753174349569294.correct : P17542753174349569294.Spec := by
  intro n
  simp only [A029105]

end A029105

/-! ## A029105.P2440675051609016086

`A025896(n)+A029115(n)-A025926(n)`
-/

namespace A029105.P2440675051609016086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025896 n + (A029115 n - A025926 n)

end

end A029105.P2440675051609016086

namespace A029105

/-- `A025896(n)+A029115(n)-A025926(n)` -/
def P2440675051609016086.Spec : Prop :=
  ∀ n, P2440675051609016086.a n = A029105 n

end A029105

/-! ## A029105.P12914276740768994128

`∑[A025875(n)+A025885(n)-A025871(n)]`
-/

namespace A029105.P12914276740768994128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n + (A025885 n - A025871 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029105.P12914276740768994128

namespace A029105

/-- `∑[A025875(n)+A025885(n)-A025871(n)]` -/
def P12914276740768994128.Spec : Prop :=
  ∀ n, P12914276740768994128.a n = A029105 n

end A029105

/-! ## A029105.P1602631958233121068

`A029115(n+1)-A025926(n+1)`
-/

namespace A029105.P1602631958233121068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029115 (n + 1) - A025926 (n + 1)

end

end A029105.P1602631958233121068

namespace A029105

/-- `A029115(n+1)-A025926(n+1)` -/
def P1602631958233121068.Spec : Prop :=
  ∀ n, P1602631958233121068.a n = A029105 n

end A029105

/-! ## A029105.P16573603354694921681

`A029104(n+1)-A029412(n+1)`
-/

namespace A029105.P16573603354694921681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 (n + 1) - A029412 (n + 1)

end

end A029105.P16573603354694921681

namespace A029105

/-- `A029104(n+1)-A029412(n+1)` -/
def P16573603354694921681.Spec : Prop :=
  ∀ n, P16573603354694921681.a n = A029105 n

end A029105

/-!
# A029106: Expansion of 1/((1-x)(1-x^6)(1-x^7)(1-x^8)).

The programs for A029106, the canonical program `A029106.P13297306788925450376` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029106 has offset 0).

The definition of A029106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029106.P13297306788925450376

`∑[A025897(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029106

/-- `∑[A025897(n)]` -/
def P13297306788925450376.Spec : Prop :=
  ∀ n, P13297306788925450376.a n = A029106 n

theorem P13297306788925450376.correct : P13297306788925450376.Spec := by
  intro n
  simp only [A029106]

end A029106

/-! ## A029106.P7047416210330165843

`A029049(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029106.P7047416210330165843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029049 n - a (n - 3)

end

end A029106.P7047416210330165843

namespace A029106

/-- `A029049(n)-a(n-3)` -/
def P7047416210330165843.Spec : Prop :=
  ∀ n, P7047416210330165843.a n = A029106 n

end A029106

/-! ## A029106.P3350143715454470110

`∑[A025845(n)-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029106.P3350143715454470110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  A025845 n - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029106.P3350143715454470110

namespace A029106

/-- `∑[A025845(n)-a(n-3)]` -/
def P3350143715454470110.Spec : Prop :=
  ∀ n, P3350143715454470110.a n = A029106 n

end A029106

/-! ## A029106.P10401669141531967752

`∑[A008622(n)-a(n-4)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029106.P10401669141531967752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n f1 =>
  A008622 n - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029106.P10401669141531967752

namespace A029106

/-- `∑[A008622(n)-a(n-4)]` -/
def P10401669141531967752.Spec : Prop :=
  ∀ n, P10401669141531967752.a n = A029106 n

end A029106

/-! ## A029106.P15368966434486143860

`A025897(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A029106.P15368966434486143860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025897 (n % (n + 1)) + a (n - 1)

end

end A029106.P15368966434486143860

namespace A029106

/-- `A025897(n%(n+1))+a(n-1)` -/
def P15368966434486143860.Spec : Prop :=
  ∀ n, P15368966434486143860.a n = A029106 n

end A029106

/-! ## A029106.P6295827337119342531

`A025897(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029106.P6295827337119342531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025897 n + a (A023443 n).toNat

end

end A029106.P6295827337119342531

namespace A029106

/-- `A025897(n)+a(A023443(n))` -/
def P6295827337119342531.Spec : Prop :=
  ∀ n, P6295827337119342531.a n = A029106 n

end A029106

/-! ## A029106.P5384320432271829150

`A029214(abs(1-n))+A029214(n)`
-/

namespace A029106.P5384320432271829150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 |1 - (n : ℤ)|.toNat + A029214 n

end

end A029106.P5384320432271829150

namespace A029106

/-- `A029214(abs(1-n))+A029214(n)` -/
def P5384320432271829150.Spec : Prop :=
  ∀ n, P5384320432271829150.a n = A029106 n

end A029106

/-! ## A029106.P17525592256360864248

`A029091(n+1)-A029378(n+1)`
-/

namespace A029106.P17525592256360864248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029091 (n + 1) - A029378 (n + 1)

end

end A029106.P17525592256360864248

namespace A029106

/-- `A029091(n+1)-A029378(n+1)` -/
def P17525592256360864248.Spec : Prop :=
  ∀ n, P17525592256360864248.a n = A029106 n

end A029106

/-! ## A029106.P3268922250378306481

`A025897(n)+a(A004524(A004273(n)))` with `a(0)=1`
-/

namespace A029106.P3268922250378306481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025897 n + a (A004524 (A004273 n).toNat).toNat

end

end A029106.P3268922250378306481

namespace A029106

/-- `A025897(n)+a(A004524(A004273(n)))` -/
def P3268922250378306481.Spec : Prop :=
  ∀ n, P3268922250378306481.a n = A029106 n

end A029106

/-!
# A029107: Expansion of 1/((1-x)*(1-x^6)*(1-x^7)*(1-x^9)).

The programs for A029107, the canonical program `A029107.P8511110870594465342` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029107 has offset 0).

The definition of A029107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029107.P8511110870594465342

`∑[A025898(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029107

/-- `∑[A025898(n)]` -/
def P8511110870594465342.Spec : Prop :=
  ∀ n, P8511110870594465342.a n = A029107 n

theorem P8511110870594465342.correct : P8511110870594465342.Spec := by
  intro n
  simp only [A029107]

end A029107

/-! ## A029107.P1696722648387062024

`A029050(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029107.P1696722648387062024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029050 n - a (n - 3)

end

end A029107.P1696722648387062024

namespace A029107

/-- `A029050(n)-a(n-3)` -/
def P1696722648387062024.Spec : Prop :=
  ∀ n, P1696722648387062024.a n = A029107 n

end A029107

/-! ## A029107.P11720312946564217476

`A029215(abs(1-n))+A029215(n)`
-/

namespace A029107.P11720312946564217476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029215 |1 - (n : ℤ)|.toNat + A029215 n

end

end A029107.P11720312946564217476

namespace A029107

/-- `A029215(abs(1-n))+A029215(n)` -/
def P11720312946564217476.Spec : Prop :=
  ∀ n, P11720312946564217476.a n = A029107 n

end A029107

/-! ## A029107.P12514756278789579276

`A029219(abs(1-n))+A029214(n)`
-/

namespace A029107.P12514756278789579276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029219 |1 - (n : ℤ)|.toNat + A029214 n

end

end A029107.P12514756278789579276

namespace A029107

/-- `A029219(abs(1-n))+A029214(n)` -/
def P12514756278789579276.Spec : Prop :=
  ∀ n, P12514756278789579276.a n = A029107 n

end A029107

/-! ## A029107.P6079914927214287264

`A025898(n%A058189(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A029107.P6079914927214287264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025898 (Int.tmod (n : ℤ) (A058189 (n + 1))).toNat + a (n - 1)

end

end A029107.P6079914927214287264

namespace A029107

/-- `A025898(n%A058189(n+1))+a(n-1)` -/
def P6079914927214287264.Spec : Prop :=
  ∀ n, P6079914927214287264.a n = A029107 n

end A029107

/-! ## A029107.P16218933526021396923

`∑[A025911(7*A002264(n+2)-n)]`
-/

namespace A029107.P16218933526021396923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 (7 * A002264 (n + 2) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029107.P16218933526021396923

namespace A029107

/-- `∑[A025911(7*A002264(n+2)-n)]` -/
def P16218933526021396923.Spec : Prop :=
  ∀ n, P16218933526021396923.a n = A029107 n

end A029107

/-! ## A029107.P142101718223367331

`A025898(A142150(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A029107.P142101718223367331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025898 (A142150 (n + n)).toNat + a (n - 1)

end

end A029107.P142101718223367331

namespace A029107

/-- `A025898(A142150(n+n))+a(n-1)` -/
def P142101718223367331.Spec : Prop :=
  ∀ n, P142101718223367331.a n = A029107 n

end A029107

/-! ## A029107.P87732269508552722

`A029365(2*n+7)`
-/

namespace A029107.P87732269508552722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029365 (2 * n + 7)

end

end A029107.P87732269508552722

namespace A029107

/-- `A029365(2*n+7)` -/
def P87732269508552722.Spec : Prop :=
  ∀ n, P87732269508552722.a n = A029107 n

end A029107

/-! ## A029107.P10411346799466854841

`A029232(2*n+7)-a(n-1)` with `a(0)=1`
-/

namespace A029107.P10411346799466854841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029232 (2 * n + 7) - a (n - 1)

end

end A029107.P10411346799466854841

namespace A029107

/-- `A029232(2*n+7)-a(n-1)` -/
def P10411346799466854841.Spec : Prop :=
  ∀ n, P10411346799466854841.a n = A029107 n

end A029107

/-!
# A029108: Expansion of g.f. 1/((1-x)*(1-x^6)*(1-x^7)*(1-x^10)).

The programs for A029108, the canonical program `A029108.P7657049067647274667` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029108 has offset 0).

The definition of A029108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029108.P15571033661696318731

`∑[A025899(n)]`
-/

namespace A029108.P15571033661696318731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029108.P15571033661696318731

namespace A029108

/-- `∑[A025899(n)]` -/
def P15571033661696318731.Spec : Prop :=
  ∀ n, P15571033661696318731.a n = A029108 n

end A029108

/-! ## A029108.P7657049067647274667

`A029051(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029108

/-- `A029051(n)-a(n-3)` -/
def P7657049067647274667.Spec : Prop :=
  ∀ n, P7657049067647274667.a n = A029108 n

theorem P7657049067647274667.correct : P7657049067647274667.Spec := by
  intro n
  simp only [A029108]

end A029108

/-! ## A029108.P476568528429578999

`A025899(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029108.P476568528429578999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025899 n + a (A023443 n).toNat

end

end A029108.P476568528429578999

namespace A029108

/-- `A025899(n)+a(A023443(n))` -/
def P476568528429578999.Spec : Prop :=
  ∀ n, P476568528429578999.a n = A029108 n

end A029108

/-! ## A029108.P15917630521323549640

`A029216(abs(1-n))+A029216(n)`
-/

namespace A029108.P15917630521323549640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 |1 - (n : ℤ)|.toNat + A029216 n

end

end A029108.P15917630521323549640

namespace A029108

/-- `A029216(abs(1-n))+A029216(n)` -/
def P15917630521323549640.Spec : Prop :=
  ∀ n, P15917630521323549640.a n = A029108 n

end A029108

/-! ## A029108.P4093462546174770263

`A029193(abs(A023443(n)))+A025818(n)`
-/

namespace A029108.P4093462546174770263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029193 |A023443 n|.toNat + A025818 n

end

end A029108.P4093462546174770263

namespace A029108

/-- `A029193(abs(A023443(n)))+A025818(n)` -/
def P4093462546174770263.Spec : Prop :=
  ∀ n, P4093462546174770263.a n = A029108 n

end A029108

/-! ## A029108.P406942147869174464

`A029158(n)+A025899(abs(A023443(n)))`
-/

namespace A029108.P406942147869174464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029158 n + A025899 |A023443 n|.toNat

end

end A029108.P406942147869174464

namespace A029108

/-- `A029158(n)+A025899(abs(A023443(n)))` -/
def P406942147869174464.Spec : Prop :=
  ∀ n, P406942147869174464.a n = A029108 n

end A029108

/-! ## A029108.P11791184834910896513

`A029158(n+1)-Δ[A025899(n)]`
-/

namespace A029108.P11791184834910896513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029158 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029108.P11791184834910896513

namespace A029108

/-- `A029158(n+1)-Δ[A025899(n)]` -/
def P11791184834910896513.Spec : Prop :=
  ∀ n, P11791184834910896513.a n = A029108 n

end A029108

/-! ## A029108.P5643506936078412138

`A029093(n+1)-A029380(n+1)`
-/

namespace A029108.P5643506936078412138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 (n + 1) - A029380 (n + 1)

end

end A029108.P5643506936078412138

namespace A029108

/-- `A029093(n+1)-A029380(n+1)` -/
def P5643506936078412138.Spec : Prop :=
  ∀ n, P5643506936078412138.a n = A029108 n

end A029108

/-!
# A029109: Expansion of 1/((1-x)(1-x^6)(1-x^7)(1-x^11)).

The programs for A029109, the canonical program `A029109.P11947086070463586918` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029109 has offset 0).

The definition of A029109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029109.P11947086070463586918

`∑[A025900(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029109

/-- `∑[A025900(n)]` -/
def P11947086070463586918.Spec : Prop :=
  ∀ n, P11947086070463586918.a n = A029109 n

theorem P11947086070463586918.correct : P11947086070463586918.Spec := by
  intro n
  simp only [A029109]

end A029109

/-! ## A029109.P7343947954963635994

`A029052(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029109.P7343947954963635994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029052 n - a (n - 3)

end

end A029109.P7343947954963635994

namespace A029109

/-- `A029052(n)-a(n-3)` -/
def P7343947954963635994.Spec : Prop :=
  ∀ n, P7343947954963635994.a n = A029109 n

end A029109

/-! ## A029109.P1449527497350882526

`A025900(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029109.P1449527497350882526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025900 n + a (A023443 n).toNat

end

end A029109.P1449527497350882526

namespace A029109

/-- `A025900(n)+a(A023443(n))` -/
def P1449527497350882526.Spec : Prop :=
  ∀ n, P1449527497350882526.a n = A029109 n

end A029109

/-! ## A029109.P7837680949431345467

`A029217(abs(1-n))+A029217(n)`
-/

namespace A029109.P7837680949431345467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029217 |1 - (n : ℤ)|.toNat + A029217 n

end

end A029109.P7837680949431345467

namespace A029109

/-- `A029217(abs(1-n))+A029217(n)` -/
def P7837680949431345467.Spec : Prop :=
  ∀ n, P7837680949431345467.a n = A029109 n

end A029109

/-! ## A029109.P14847689259102221935

`A025900(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A029109.P14847689259102221935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025900 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A029109.P14847689259102221935

namespace A029109

/-- `A025900(A000007(n)+n)+a(n-1)` -/
def P14847689259102221935.Spec : Prop :=
  ∀ n, P14847689259102221935.a n = A029109 n

end A029109

/-! ## A029109.P14372196226244449117

`A025787(n)+A029085(n)-A029094(n)`
-/

namespace A029109.P14372196226244449117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025787 n + (A029085 n - A029094 n)

end

end A029109.P14372196226244449117

namespace A029109

/-- `A025787(n)+A029085(n)-A029094(n)` -/
def P14372196226244449117.Spec : Prop :=
  ∀ n, P14372196226244449117.a n = A029109 n

end A029109

/-! ## A029109.P1262890564065575343

`A029108(n+1)-A029420(n+1)`
-/

namespace A029109.P1262890564065575343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029108 (n + 1) - A029420 (n + 1)

end

end A029109.P1262890564065575343

namespace A029109

/-- `A029108(n+1)-A029420(n+1)` -/
def P1262890564065575343.Spec : Prop :=
  ∀ n, P1262890564065575343.a n = A029109 n

end A029109

/-! ## A029109.P8453427610894792980

`A029437(A005818(n+1))+A029217(n)`
-/

namespace A029109.P8453427610894792980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (A005818 (n + 1)).toNat + A029217 n

end

end A029109.P8453427610894792980

namespace A029109

/-- `A029437(A005818(n+1))+A029217(n)` -/
def P8453427610894792980.Spec : Prop :=
  ∀ n, P8453427610894792980.a n = A029109 n

end A029109

/-! ## A029109.P5983654479577347870

`A029437(A020735(n+1))+A029217(n)`
-/

namespace A029109.P5983654479577347870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (A020735 (n + 1)).toNat + A029217 n

end

end A029109.P5983654479577347870

namespace A029109

/-- `A029437(A020735(n+1))+A029217(n)` -/
def P5983654479577347870.Spec : Prop :=
  ∀ n, P5983654479577347870.a n = A029109 n

end A029109

/-!
# A029110: Expansion of 1/((1-x)*(1-x^6)*(1-x^7)*(1-x^12)).

The programs for A029110, the canonical program `A029110.P11583160216419689029` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029110 has offset 0).

The definition of A029110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029110.P12441552841197418828

`∑[A025901(n)]`
-/

namespace A029110.P12441552841197418828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029110.P12441552841197418828

namespace A029110

/-- `∑[A025901(n)]` -/
def P12441552841197418828.Spec : Prop :=
  ∀ n, P12441552841197418828.a n = A029110 n

end A029110

/-! ## A029110.P11583160216419689029

`A029053(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029110

/-- `A029053(n)-a(n-3)` -/
def P11583160216419689029.Spec : Prop :=
  ∀ n, P11583160216419689029.a n = A029110 n

theorem P11583160216419689029.correct : P11583160216419689029.Spec := by
  intro n
  simp only [A029110]

end A029110

/-! ## A029110.P17410437338618422485

`A025901(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A029110.P17410437338618422485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025901 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A029110.P17410437338618422485

namespace A029110

/-- `A025901(char[1]+n)+a(n-1)` -/
def P17410437338618422485.Spec : Prop :=
  ∀ n, P17410437338618422485.a n = A029110 n

end A029110

/-! ## A029110.P14689703995593059774

`A029218(abs(1-n))+A029218(n)`
-/

namespace A029110.P14689703995593059774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 |1 - (n : ℤ)|.toNat + A029218 n

end

end A029110.P14689703995593059774

namespace A029110

/-- `A029218(abs(1-n))+A029218(n)` -/
def P14689703995593059774.Spec : Prop :=
  ∀ n, P14689703995593059774.a n = A029110 n

end A029110

/-! ## A029110.P12977860390132472119

`A029160(n)+A025901(abs(A023443(n)))`
-/

namespace A029110.P12977860390132472119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029160 n + A025901 |A023443 n|.toNat

end

end A029110.P12977860390132472119

namespace A029110

/-- `A029160(n)+A025901(abs(A023443(n)))` -/
def P12977860390132472119.Spec : Prop :=
  ∀ n, P12977860390132472119.a n = A029110 n

end A029110

/-! ## A029110.P1707844759177733019

`A029095(n+1)-A029382(n+1)`
-/

namespace A029110.P1707844759177733019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029095 (n + 1) - A029382 (n + 1)

end

end A029110.P1707844759177733019

namespace A029110

/-- `A029095(n+1)-A029382(n+1)` -/
def P1707844759177733019.Spec : Prop :=
  ∀ n, P1707844759177733019.a n = A029110 n

end A029110

/-!
# A029111: Expansion of 1/((1-x)(1-x^6)(1-x^8)(1-x^9)).

The programs for A029111, the canonical program `A029111.P18190003655687312260` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029111 has offset 0).

The definition of A029111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029111.P18190003655687312260

`∑[A025902(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029111

/-- `∑[A025902(n)]` -/
def P18190003655687312260.Spec : Prop :=
  ∀ n, P18190003655687312260.a n = A029111 n

theorem P18190003655687312260.correct : P18190003655687312260.Spec := by
  intro n
  simp only [A029111]

end A029111

/-! ## A029111.P15023824825317536878

`A029054(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029111.P15023824825317536878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029054 n - a (n - 3)

end

end A029111.P15023824825317536878

namespace A029111

/-- `A029054(n)-a(n-3)` -/
def P15023824825317536878.Spec : Prop :=
  ∀ n, P15023824825317536878.a n = A029111 n

end A029111

/-! ## A029111.P14872378217103347112

`A025902(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A029111.P14872378217103347112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025902 (n % (n + 1)) + a (n - 1)

end

end A029111.P14872378217103347112

namespace A029111

/-- `A025902(n%(n+1))+a(n-1)` -/
def P14872378217103347112.Spec : Prop :=
  ∀ n, P14872378217103347112.a n = A029111 n

end A029111

/-! ## A029111.P8139706306256227835

`A025902(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029111.P8139706306256227835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025902 n + a (A023443 n).toNat

end

end A029111.P8139706306256227835

namespace A029111

/-- `A025902(n)+a(A023443(n))` -/
def P8139706306256227835.Spec : Prop :=
  ∀ n, P8139706306256227835.a n = A029111 n

end A029111

/-! ## A029111.P7095460715707121233

`a(n-1)+A025902(n)%A000217(n)` with `a(0)=1`
-/

namespace A029111.P7095460715707121233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025902 n) (A000217 n)

end

end A029111.P7095460715707121233

namespace A029111

/-- `a(n-1)+A025902(n)%A000217(n)` -/
def P7095460715707121233.Spec : Prop :=
  ∀ n, P7095460715707121233.a n = A029111 n

end A029111

/-! ## A029111.P11779450574218993245

`A025902(n-A003982(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A029111.P11779450574218993245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025902 ((n : ℤ) - A003982 (n + 1)).toNat + a (n - 1)

end

end A029111.P11779450574218993245

namespace A029111

/-- `A025902(n-A003982(n+1))+a(n-1)` -/
def P11779450574218993245.Spec : Prop :=
  ∀ n, P11779450574218993245.a n = A029111 n

end A029111

/-!
# A029112: Expansion of 1/((1-x)(1-x^6)(1-x^8)(1-x^11)).

The programs for A029112, the canonical program `A029112.P6551359032380966895` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029112 has offset 0).

The definition of A029112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029112.P11268170683298450040

`∑[A025903(n)]`
-/

namespace A029112.P11268170683298450040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029112.P11268170683298450040

namespace A029112

/-- `∑[A025903(n)]` -/
def P11268170683298450040.Spec : Prop :=
  ∀ n, P11268170683298450040.a n = A029112 n

end A029112

/-! ## A029112.P1187473307181500680

`A029056(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029112.P1187473307181500680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029056 n - a (n - 3)

end

end A029112.P1187473307181500680

namespace A029112

/-- `A029056(n)-a(n-3)` -/
def P1187473307181500680.Spec : Prop :=
  ∀ n, P1187473307181500680.a n = A029112 n

end A029112

/-! ## A029112.P12661956173065351034

`A025903(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029112.P12661956173065351034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025903 n + a (A023443 n).toNat

end

end A029112.P12661956173065351034

namespace A029112

/-- `A025903(n)+a(A023443(n))` -/
def P12661956173065351034.Spec : Prop :=
  ∀ n, P12661956173065351034.a n = A029112 n

end A029112

/-! ## A029112.P9328035026745604285

`A029163(n)+A025903(abs(1-n))`
-/

namespace A029112.P9328035026745604285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029163 n + A025903 |1 - (n : ℤ)|.toNat

end

end A029112.P9328035026745604285

namespace A029112

/-- `A029163(n)+A025903(abs(1-n))` -/
def P9328035026745604285.Spec : Prop :=
  ∀ n, P9328035026745604285.a n = A029112 n

end A029112

/-! ## A029112.P6551359032380966895

`A029220(abs(1-n))+A029220(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029112

/-- `A029220(abs(1-n))+A029220(n)` -/
def P6551359032380966895.Spec : Prop :=
  ∀ n, P6551359032380966895.a n = A029112 n

theorem P6551359032380966895.correct : P6551359032380966895.Spec := by
  intro n
  simp only [A029112]

end A029112

/-! ## A029112.P7456100907100417302

`A029228(abs(1-n))+A029217(n)`
-/

namespace A029112.P7456100907100417302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 |1 - (n : ℤ)|.toNat + A029217 n

end

end A029112.P7456100907100417302

namespace A029112

/-- `A029228(abs(1-n))+A029217(n)` -/
def P7456100907100417302.Spec : Prop :=
  ∀ n, P7456100907100417302.a n = A029112 n

end A029112

/-! ## A029112.P17215692192895026472

`A029119(n)+A029415(n)-A025910(n)`
-/

namespace A029112.P17215692192895026472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029119 n + (A029415 n - A025910 n)

end

end A029112.P17215692192895026472

namespace A029112

/-- `A029119(n)+A029415(n)-A025910(n)` -/
def P17215692192895026472.Spec : Prop :=
  ∀ n, P17215692192895026472.a n = A029112 n

end A029112

/-! ## A029112.P2972275902047238493

`A029163(n+1)-Δ[A025903(n)]`
-/

namespace A029112.P2972275902047238493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029163 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029112.P2972275902047238493

namespace A029112

/-- `A029163(n+1)-Δ[A025903(n)]` -/
def P2972275902047238493.Spec : Prop :=
  ∀ n, P2972275902047238493.a n = A029112 n

end A029112

/-! ## A029112.P8859209742166406459

`∑[A025925(A168197(n+1))]`
-/

namespace A029112.P8859209742166406459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 (A168197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029112.P8859209742166406459

namespace A029112

/-- `∑[A025925(A168197(n+1))]` -/
def P8859209742166406459.Spec : Prop :=
  ∀ n, P8859209742166406459.a n = A029112 n

end A029112

/-!
# A029113: Expansion of 1/((1-x)*(1-x^6)*(1-x^9)*(1-x^10)).

The programs for A029113, the canonical program `A029113.P16175053738849920081` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029113 has offset 0).

The definition of A029113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029113.P11122752240408798409

`∑[A025904(n)]`
-/

namespace A029113.P11122752240408798409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029113.P11122752240408798409

namespace A029113

/-- `∑[A025904(n)]` -/
def P11122752240408798409.Spec : Prop :=
  ∀ n, P11122752240408798409.a n = A029113 n

end A029113

/-! ## A029113.P5456839180527029869

`A029058(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029113.P5456839180527029869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029058 n - a (n - 3)

end

end A029113.P5456839180527029869

namespace A029113

/-- `A029058(n)-a(n-3)` -/
def P5456839180527029869.Spec : Prop :=
  ∀ n, P5456839180527029869.a n = A029113 n

end A029113

/-! ## A029113.P12849261828469761133

`A025904(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029113.P12849261828469761133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025904 n + a (A023443 n).toNat

end

end A029113.P12849261828469761133

namespace A029113

/-- `A025904(n)+a(A023443(n))` -/
def P12849261828469761133.Spec : Prop :=
  ∀ n, P12849261828469761133.a n = A029113 n

end A029113

/-! ## A029113.P15741912978292138528

`A029221(abs(1-n))+A029221(n)`
-/

namespace A029113.P15741912978292138528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 |1 - (n : ℤ)|.toNat + A029221 n

end

end A029113.P15741912978292138528

namespace A029113

/-- `A029221(abs(1-n))+A029221(n)` -/
def P15741912978292138528.Spec : Prop :=
  ∀ n, P15741912978292138528.a n = A029113 n

end A029113

/-! ## A029113.P16175053738849920081

`A029114(n)+A029428(n)-A025905(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029113

/-- `A029114(n)+A029428(n)-A025905(n)` -/
def P16175053738849920081.Spec : Prop :=
  ∀ n, P16175053738849920081.a n = A029113 n

theorem P16175053738849920081.correct : P16175053738849920081.Spec := by
  intro n
  simp only [A029113]

end A029113

/-! ## A029113.P1709370012869047544

`A029080(n+1)-A029328(n+1)`
-/

namespace A029113.P1709370012869047544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029080 (n + 1) - A029328 (n + 1)

end

end A029113.P1709370012869047544

namespace A029113

/-- `A029080(n+1)-A029328(n+1)` -/
def P1709370012869047544.Spec : Prop :=
  ∀ n, P1709370012869047544.a n = A029113 n

end A029113

/-! ## A029113.P15932203056502194587

`A029428(n)+A029376(A020742(n))`
-/

namespace A029113.P15932203056502194587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029428 n + A029376 (A020742 n).toNat

end

end A029113.P15932203056502194587

namespace A029113

/-- `A029428(n)+A029376(A020742(n))` -/
def P15932203056502194587.Spec : Prop :=
  ∀ n, P15932203056502194587.a n = A029113 n

end A029113

/-! ## A029113.P1524685438726397989

`∑[A048766(A029429(n)²)]`
-/

namespace A029113.P1524685438726397989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A029429 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029113.P1524685438726397989

namespace A029113

/-- `∑[A048766(A029429(n)²)]` -/
def P1524685438726397989.Spec : Prop :=
  ∀ n, P1524685438726397989.a n = A029113 n

end A029113

/-! ## A029113.P5386307705140687523

`∑[A048766(A029429(n)*A029429(n))]`
-/

namespace A029113.P5386307705140687523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A029429 n * A029429 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029113.P5386307705140687523

namespace A029113

/-- `∑[A048766(A029429(n)*A029429(n))]` -/
def P5386307705140687523.Spec : Prop :=
  ∀ n, P5386307705140687523.a n = A029113 n

end A029113

/-!
# A029114: Expansion of 1/((1-x)*(1-x^6)*(1-x^9)*(1-x^11)).

The programs for A029114, the canonical program `A029114.P3228547095557846636` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029114 has offset 0).

The definition of A029114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029114.P3228547095557846636

`∑[A025905(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029114

/-- `∑[A025905(n)]` -/
def P3228547095557846636.Spec : Prop :=
  ∀ n, P3228547095557846636.a n = A029114 n

theorem P3228547095557846636.correct : P3228547095557846636.Spec := by
  intro n
  simp only [A029114]

end A029114

/-! ## A029114.P11366749795713152302

`A029059(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029114.P11366749795713152302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029059 n - a (n - 3)

end

end A029114.P11366749795713152302

namespace A029114

/-- `A029059(n)-a(n-3)` -/
def P11366749795713152302.Spec : Prop :=
  ∀ n, P11366749795713152302.a n = A029114 n

end A029114

/-! ## A029114.P13594694058914059323

`A025905(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029114.P13594694058914059323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025905 n + a (A023443 n).toNat

end

end A029114.P13594694058914059323

namespace A029114

/-- `A025905(n)+a(A023443(n))` -/
def P13594694058914059323.Spec : Prop :=
  ∀ n, P13594694058914059323.a n = A029114 n

end A029114

/-! ## A029114.P2151574087685699429

`A029222(abs(1-n))+A029222(n)`
-/

namespace A029114.P2151574087685699429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029222 |1 - (n : ℤ)|.toNat + A029222 n

end

end A029114.P2151574087685699429

namespace A029114

/-- `A029222(abs(1-n))+A029222(n)` -/
def P2151574087685699429.Spec : Prop :=
  ∀ n, P2151574087685699429.a n = A029114 n

end A029114

/-! ## A029114.P12267782497633813526

`A025905(A002378(n)/(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A029114.P12267782497633813526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025905 (SequenceMachineLib.roundAway ((A002378 n : ℚ) / (n + 1 : ℚ))).toNat + a (n - 1)

end

end A029114.P12267782497633813526

namespace A029114

/-- `A025905(A002378(n)/(n+1))+a(n-1)` -/
def P12267782497633813526.Spec : Prop :=
  ∀ n, P12267782497633813526.a n = A029114 n

end A029114

/-! ## A029114.P7084692325983440176

`A029166(n)+A025905(abs(A023443(n)))`
-/

namespace A029114.P7084692325983440176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029166 n + A025905 |A023443 n|.toNat

end

end A029114.P7084692325983440176

namespace A029114

/-- `A029166(n)+A025905(abs(A023443(n)))` -/
def P7084692325983440176.Spec : Prop :=
  ∀ n, P7084692325983440176.a n = A029114 n

end A029114

/-! ## A029114.P14831897257143624790

`∑[A025893(n)]+A025925(n)-A029411(n)`
-/

namespace A029114.P14831897257143624790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A025925 n - A029411 n)

end

end A029114.P14831897257143624790

namespace A029114

/-- `∑[A025893(n)]+A025925(n)-A029411(n)` -/
def P14831897257143624790.Spec : Prop :=
  ∀ n, P14831897257143624790.a n = A029114 n

end A029114

/-! ## A029114.P5162697187982665247

`A029166(n+1)-Δ[A025905(n)]`
-/

namespace A029114.P5162697187982665247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029166 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029114.P5162697187982665247

namespace A029114

/-- `A029166(n+1)-Δ[A025905(n)]` -/
def P5162697187982665247.Spec : Prop :=
  ∀ n, P5162697187982665247.a n = A029114 n

end A029114

/-! ## A029114.P9808630259232537955

`A029113(n+1)-A029428(n+1)`
-/

namespace A029114.P9808630259232537955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029113 (n + 1) - A029428 (n + 1)

end

end A029114.P9808630259232537955

namespace A029114

/-- `A029113(n+1)-A029428(n+1)` -/
def P9808630259232537955.Spec : Prop :=
  ∀ n, P9808630259232537955.a n = A029114 n

end A029114

/-! ## A029114.P16236333944700813568

`A029376(2*n+9)`
-/

namespace A029114.P16236333944700813568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 (2 * n + 9)

end

end A029114.P16236333944700813568

namespace A029114

/-- `A029376(2*n+9)` -/
def P16236333944700813568.Spec : Prop :=
  ∀ n, P16236333944700813568.a n = A029114 n

end A029114

/-! ## A029114.P17900618919519778464

`A063946(A063946(a(n-1)))+A025905(n)` with `a(0)=1`
-/

namespace A029114.P17900618919519778464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063946 (A063946 (a (n - 1)).toNat).toNat + A025905 n

end

end A029114.P17900618919519778464

namespace A029114

/-- `A063946(A063946(a(n-1)))+A025905(n)` -/
def P17900618919519778464.Spec : Prop :=
  ∀ n, P17900618919519778464.a n = A029114 n

end A029114

/-!
# A029115: Expansion of 1/((1-x)(1-x^6)(1-x^10)(1-x^11)).

The programs for A029115, the canonical program `A029115.P10103153616038408918` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029115 has offset 0).

The definition of A029115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029115.P7239232957734525648

`∑[A025906(n)]`
-/

namespace A029115.P7239232957734525648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029115.P7239232957734525648

namespace A029115

/-- `∑[A025906(n)]` -/
def P7239232957734525648.Spec : Prop :=
  ∀ n, P7239232957734525648.a n = A029115 n

end A029115

/-! ## A029115.P8563987453418961111

`A029060(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029115.P8563987453418961111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029060 n - a (n - 3)

end

end A029115.P8563987453418961111

namespace A029115

/-- `A029060(n)-a(n-3)` -/
def P8563987453418961111.Spec : Prop :=
  ∀ n, P8563987453418961111.a n = A029115 n

end A029115

/-! ## A029115.P10103153616038408918

`A029431(n)+A029169(xor(1, n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029115

/-- `A029431(n)+A029169(xor(1, n))` -/
def P10103153616038408918.Spec : Prop :=
  ∀ n, P10103153616038408918.a n = A029115 n

theorem P10103153616038408918.correct : P10103153616038408918.Spec := by
  intro n
  simp only [A029115]

end A029115

/-! ## A029115.P9000801362813527478

`A029224(abs(1-n))+A029224(n)`
-/

namespace A029115.P9000801362813527478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 |1 - (n : ℤ)|.toNat + A029224 n

end

end A029115.P9000801362813527478

namespace A029115

/-- `A029224(abs(1-n))+A029224(n)` -/
def P9000801362813527478.Spec : Prop :=
  ∀ n, P9000801362813527478.a n = A029115 n

end A029115

/-! ## A029115.P5946750946992678171

`∑[A025926(abs(6-n))+A025926(n)]`
-/

namespace A029115.P5946750946992678171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 |6 - (n : ℤ)|.toNat + A025926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029115.P5946750946992678171

namespace A029115

/-- `∑[A025926(abs(6-n))+A025926(n)]` -/
def P5946750946992678171.Spec : Prop :=
  ∀ n, P5946750946992678171.a n = A029115 n

end A029115

/-! ## A029115.P2664233651152240191

`A029431(n)+A029169(A004442(n))`
-/

namespace A029115.P2664233651152240191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 n + A029169 (A004442 n).toNat

end

end A029115.P2664233651152240191

namespace A029115

/-- `A029431(n)+A029169(A004442(n))` -/
def P2664233651152240191.Spec : Prop :=
  ∀ n, P2664233651152240191.a n = A029115 n

end A029115

/-! ## A029115.P14626645746642287535

`A025906(n)+A029114(n)-A029428(n)`
-/

namespace A029115.P14626645746642287535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 n + (A029114 n - A029428 n)

end

end A029115.P14626645746642287535

namespace A029115

/-- `A025906(n)+A029114(n)-A029428(n)` -/
def P14626645746642287535.Spec : Prop :=
  ∀ n, P14626645746642287535.a n = A029115 n

end A029115

/-! ## A029115.P282648846916191004

`A025926(n)+A029104(n)-A029412(n)`
-/

namespace A029115.P282648846916191004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n + (A029104 n - A029412 n)

end

end A029115.P282648846916191004

namespace A029115

/-- `A025926(n)+A029104(n)-A029412(n)` -/
def P282648846916191004.Spec : Prop :=
  ∀ n, P282648846916191004.a n = A029115 n

end A029115

/-! ## A029115.P14392528864537849929

`A029103(n+1)-A029390(n+1)`
-/

namespace A029115.P14392528864537849929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029103 (n + 1) - A029390 (n + 1)

end

end A029115.P14392528864537849929

namespace A029115

/-- `A029103(n+1)-A029390(n+1)` -/
def P14392528864537849929.Spec : Prop :=
  ∀ n, P14392528864537849929.a n = A029115 n

end A029115

/-! ## A029115.P3578509704617164342

`A029114(n+1)-A029428(n+1)`
-/

namespace A029115.P3578509704617164342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 (n + 1) - A029428 (n + 1)

end

end A029115.P3578509704617164342

namespace A029115

/-- `A029114(n+1)-A029428(n+1)` -/
def P3578509704617164342.Spec : Prop :=
  ∀ n, P3578509704617164342.a n = A029115 n

end A029115

/-!
# A029116: Expansion of 1/((1-x)(1-x^6)(1-x^11)(1-x^12)).

The programs for A029116, the canonical program `A029116.P2286183440171770193` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029116 has offset 0).

The definition of A029116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029116.P2286183440171770193

`∑[A025907(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029116

/-- `∑[A025907(n)]` -/
def P2286183440171770193.Spec : Prop :=
  ∀ n, P2286183440171770193.a n = A029116 n

theorem P2286183440171770193.correct : P2286183440171770193.Spec := by
  intro n
  simp only [A029116]

end A029116

/-! ## A029116.P16953971155202796582

`A029062(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029116.P16953971155202796582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029062 n - a (n - 3)

end

end A029116.P16953971155202796582

namespace A029116

/-- `A029062(n)-a(n-3)` -/
def P16953971155202796582.Spec : Prop :=
  ∀ n, P16953971155202796582.a n = A029116 n

end A029116

/-! ## A029116.P3644268095217745847

`A025907(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029116.P3644268095217745847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025907 n + a (A023443 n).toNat

end

end A029116.P3644268095217745847

namespace A029116

/-- `A025907(n)+a(A023443(n))` -/
def P3644268095217745847.Spec : Prop :=
  ∀ n, P3644268095217745847.a n = A029116 n

end A029116

/-! ## A029116.P16707504446992554064

`A029225(abs(1-n))+A029225(n)`
-/

namespace A029116.P16707504446992554064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 |1 - (n : ℤ)|.toNat + A029225 n

end

end A029116.P16707504446992554064

namespace A029116

/-- `A029225(abs(1-n))+A029225(n)` -/
def P16707504446992554064.Spec : Prop :=
  ∀ n, P16707504446992554064.a n = A029116 n

end A029116

/-! ## A029116.P14079944127285467028

`A029170(n)+A025907(abs(A023443(n)))`
-/

namespace A029116.P14079944127285467028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029170 n + A025907 |A023443 n|.toNat

end

end A029116.P14079944127285467028

namespace A029116

/-- `A029170(n)+A025907(abs(A023443(n)))` -/
def P14079944127285467028.Spec : Prop :=
  ∀ n, P14079944127285467028.a n = A029116 n

end A029116

/-! ## A029116.P5581616235906862467

`A025907(n)+a(n-1)%A038754(n)` with `a(0)=1`
-/

namespace A029116.P5581616235906862467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025907 n + Int.tmod (a (n - 1)) (A038754 n)

end

end A029116.P5581616235906862467

namespace A029116

/-- `A025907(n)+a(n-1)%A038754(n)` -/
def P5581616235906862467.Spec : Prop :=
  ∀ n, P5581616235906862467.a n = A029116 n

end A029116

/-!
# A029117: Expansion of 1/((1-x)(1-x^7)(1-x^8)(1-x^9)).

The programs for A029117, the canonical program `A029117.P8702314831021357971` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029117 has offset 0).

The definition of A029117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029117.P8702314831021357971

`∑[A025908(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029117

/-- `∑[A025908(n)]` -/
def P8702314831021357971.Spec : Prop :=
  ∀ n, P8702314831021357971.a n = A029117 n

theorem P8702314831021357971.correct : P8702314831021357971.Spec := by
  intro n
  simp only [A029117]

end A029117

/-! ## A029117.P11673070817462299171

`A029226(abs(1-n))+A029226(n)`
-/

namespace A029117.P11673070817462299171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029226 |1 - (n : ℤ)|.toNat + A029226 n

end

end A029117.P11673070817462299171

namespace A029117

/-- `A029226(abs(1-n))+A029226(n)` -/
def P11673070817462299171.Spec : Prop :=
  ∀ n, P11673070817462299171.a n = A029117 n

end A029117

/-! ## A029117.P13069586423421871704

`A025785(n)+∑[A025784(n)-A025785(n)]`
-/

namespace A029117.P13069586423421871704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025784 n - A025785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025785 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029117.P13069586423421871704

namespace A029117

/-- `A025785(n)+∑[A025784(n)-A025785(n)]` -/
def P13069586423421871704.Spec : Prop :=
  ∀ n, P13069586423421871704.a n = A029117 n

end A029117

/-! ## A029117.P15156534798081878394

`A025789(n)+∑[A025785(n)-A025789(n)]`
-/

namespace A029117.P15156534798081878394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025785 n - A025789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025789 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029117.P15156534798081878394

namespace A029117

/-- `A025789(n)+∑[A025785(n)-A025789(n)]` -/
def P15156534798081878394.Spec : Prop :=
  ∀ n, P15156534798081878394.a n = A029117 n

end A029117

/-! ## A029117.P17514930102820270212

`∑[A029020(n)+A029413(n)-A029018(n)]`
-/

namespace A029117.P17514930102820270212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029020 n + (A029413 n - A029018 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029117.P17514930102820270212

namespace A029117

/-- `∑[A029020(n)+A029413(n)-A029018(n)]` -/
def P17514930102820270212.Spec : Prop :=
  ∀ n, P17514930102820270212.a n = A029117 n

end A029117

/-!
# A029118: Expansion of 1/((1-x)(1-x^7)(1-x^8)(1-x^10)).

The programs for A029118, the canonical program `A029118.P4801159284001752694` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029118 has offset 0).

The definition of A029118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029118.P4801159284001752694

`∑[A025909(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029118

/-- `∑[A025909(n)]` -/
def P4801159284001752694.Spec : Prop :=
  ∀ n, P4801159284001752694.a n = A029118 n

theorem P4801159284001752694.correct : P4801159284001752694.Spec := by
  intro n
  simp only [A029118]

end A029118

/-! ## A029118.P9064796655183186164

`A025909(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029118.P9064796655183186164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025909 n + a (A023443 n).toNat

end

end A029118.P9064796655183186164

namespace A029118

/-- `A025909(n)+a(A023443(n))` -/
def P9064796655183186164.Spec : Prop :=
  ∀ n, P9064796655183186164.a n = A029118 n

end A029118

/-! ## A029118.P15948375854717668762

`A029227(abs(1-n))+A029227(n)`
-/

namespace A029118.P15948375854717668762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029227 |1 - (n : ℤ)|.toNat + A029227 n

end

end A029118.P15948375854717668762

namespace A029118

/-- `A029227(abs(1-n))+A029227(n)` -/
def P15948375854717668762.Spec : Prop :=
  ∀ n, P15948375854717668762.a n = A029118 n

end A029118

/-! ## A029118.P5160570485970258421

`A029230(abs(1-n))+A029226(n)`
-/

namespace A029118.P5160570485970258421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029230 |1 - (n : ℤ)|.toNat + A029226 n

end

end A029118.P5160570485970258421

namespace A029118

/-- `A029230(abs(1-n))+A029226(n)` -/
def P5160570485970258421.Spec : Prop :=
  ∀ n, P5160570485970258421.a n = A029118 n

end A029118

/-! ## A029118.P13246980876632450948

`a(n-1)+A025909(n)+2*A000007(n)` with `a(0)=1`
-/

namespace A029118.P13246980876632450948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A025909 n + 2 * A000007 n)

end

end A029118.P13246980876632450948

namespace A029118

/-- `a(n-1)+A025909(n)+2*A000007(n)` -/
def P13246980876632450948.Spec : Prop :=
  ∀ n, P13246980876632450948.a n = A029118 n

end A029118

/-!
# A029119: Expansion of 1/((1-x)(1-x^7)(1-x^8)(1-x^11)).

The programs for A029119, the canonical program `A029119.P9739790713922927078` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029119 has offset 0).

The definition of A029119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029119.P9739790713922927078

`∑[A025910(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029119

/-- `∑[A025910(n)]` -/
def P9739790713922927078.Spec : Prop :=
  ∀ n, P9739790713922927078.a n = A029119 n

theorem P9739790713922927078.correct : P9739790713922927078.Spec := by
  intro n
  simp only [A029119]

end A029119

/-! ## A029119.P9425623116797388233

`A025910(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A029119.P9425623116797388233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025910 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A029119.P9425623116797388233

namespace A029119

/-- `A025910(char[1]+n)+a(n-1)` -/
def P9425623116797388233.Spec : Prop :=
  ∀ n, P9425623116797388233.a n = A029119 n

end A029119

/-! ## A029119.P18170314065545844345

`A029228(abs(1-n))+A029228(n)`
-/

namespace A029119.P18170314065545844345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 |1 - (n : ℤ)|.toNat + A029228 n

end

end A029119.P18170314065545844345

namespace A029119

/-- `A029228(abs(1-n))+A029228(n)` -/
def P18170314065545844345.Spec : Prop :=
  ∀ n, P18170314065545844345.a n = A029119 n

end A029119

/-! ## A029119.P8608045168175249678

`A025910(n)+A029112(n)-A029415(n)`
-/

namespace A029119.P8608045168175249678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025910 n + (A029112 n - A029415 n)

end

end A029119.P8608045168175249678

namespace A029119

/-- `A025910(n)+A029112(n)-A029415(n)` -/
def P8608045168175249678.Spec : Prop :=
  ∀ n, P8608045168175249678.a n = A029119 n

end A029119

/-! ## A029119.P15253938274765260303

`∑[A025913(n)]+A029433(n)-A025913(n)`
-/

namespace A029119.P15253938274765260303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A029433 n - A025913 n)

end

end A029119.P15253938274765260303

namespace A029119

/-- `∑[A025913(n)]+A029433(n)-A025913(n)` -/
def P15253938274765260303.Spec : Prop :=
  ∀ n, P15253938274765260303.a n = A029119 n

end A029119

/-! ## A029119.P15675037255966129675

`A029112(n+1)-A029415(n+1)`
-/

namespace A029119.P15675037255966129675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029112 (n + 1) - A029415 (n + 1)

end

end A029119.P15675037255966129675

namespace A029119

/-- `A029112(n+1)-A029415(n+1)` -/
def P15675037255966129675.Spec : Prop :=
  ∀ n, P15675037255966129675.a n = A029119 n

end A029119

/-!
# A029120: Expansion of 1/((1-x)*(1-x^7)*(1-x^8)*(1-x^12)).

The programs for A029120, the canonical program `A029120.P7286583677430843617` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029120 has offset 0).

The definition of A029120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029120.P7286583677430843617

`∑[A025911(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029120

/-- `∑[A025911(n)]` -/
def P7286583677430843617.Spec : Prop :=
  ∀ n, P7286583677430843617.a n = A029120 n

theorem P7286583677430843617.correct : P7286583677430843617.Spec := by
  intro n
  simp only [A029120]

end A029120

/-! ## A029120.P3522728308857994826

`A029077(n)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A029120.P3522728308857994826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A029077 n - a (n - 4)

end

end A029120.P3522728308857994826

namespace A029120

/-- `A029077(n)-a(n-4)` -/
def P3522728308857994826.Spec : Prop :=
  ∀ n, P3522728308857994826.a n = A029120 n

end A029120

/-! ## A029120.P3472511865674637894

`A025911(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A029120.P3472511865674637894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025911 (n % (n + 1)) + a (n - 1)

end

end A029120.P3472511865674637894

namespace A029120

/-- `A025911(n%(n+1))+a(n-1)` -/
def P3472511865674637894.Spec : Prop :=
  ∀ n, P3472511865674637894.a n = A029120 n

end A029120

/-! ## A029120.P7355179607997688797

`A025911(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029120.P7355179607997688797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025911 n + a (A023443 n).toNat

end

end A029120.P7355179607997688797

namespace A029120

/-- `A025911(n)+a(A023443(n))` -/
def P7355179607997688797.Spec : Prop :=
  ∀ n, P7355179607997688797.a n = A029120 n

end A029120

/-! ## A029120.P8855984573433334665

`A029229(abs(1-n))+A029229(n)`
-/

namespace A029120.P8855984573433334665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 |1 - (n : ℤ)|.toNat + A029229 n

end

end A029120.P8855984573433334665

namespace A029120

/-- `A029229(abs(1-n))+A029229(n)` -/
def P8855984573433334665.Spec : Prop :=
  ∀ n, P8855984573433334665.a n = A029120 n

end A029120

/-! ## A029120.P8114350567751781621

`A029053(n)+A029073(n)-A029038(n)`
-/

namespace A029120.P8114350567751781621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 n + (A029073 n - A029038 n)

end

end A029120.P8114350567751781621

namespace A029120

/-- `A029053(n)+A029073(n)-A029038(n)` -/
def P8114350567751781621.Spec : Prop :=
  ∀ n, P8114350567751781621.a n = A029120 n

end A029120

/-!
# A029121: Expansion of 1/((1-x)(1-x^7)(1-x^9)(1-x^10)).

The programs for A029121, the canonical program `A029121.P9286238857012295137` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029121 has offset 0).

The definition of A029121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029121.P9286238857012295137

`∑[A025912(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029121

/-- `∑[A025912(n)]` -/
def P9286238857012295137.Spec : Prop :=
  ∀ n, P9286238857012295137.a n = A029121 n

theorem P9286238857012295137.correct : P9286238857012295137.Spec := by
  intro n
  simp only [A029121]

end A029121

/-! ## A029121.P4238599844670307116

`A025912(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029121.P4238599844670307116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025912 n + a (A023443 n).toNat

end

end A029121.P4238599844670307116

namespace A029121

/-- `A025912(n)+a(A023443(n))` -/
def P4238599844670307116.Spec : Prop :=
  ∀ n, P4238599844670307116.a n = A029121 n

end A029121

/-! ## A029121.P6267321134035488712

`A029230(abs(1-n))+A029230(n)`
-/

namespace A029121.P6267321134035488712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029230 |1 - (n : ℤ)|.toNat + A029230 n

end

end A029121.P6267321134035488712

namespace A029121

/-- `A029230(abs(1-n))+A029230(n)` -/
def P6267321134035488712.Spec : Prop :=
  ∀ n, P6267321134035488712.a n = A029121 n

end A029121

/-! ## A029121.P4330733524051143138

`A029236(abs(1-n))+A029227(n)`
-/

namespace A029121.P4330733524051143138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 |1 - (n : ℤ)|.toNat + A029227 n

end

end A029121.P4330733524051143138

namespace A029121

/-- `A029236(abs(1-n))+A029227(n)` -/
def P4330733524051143138.Spec : Prop :=
  ∀ n, P4330733524051143138.a n = A029121 n

end A029121

/-! ## A029121.P14259737803704715747

`∑[A025913(n)]+A029438(n)-A025913(n)`
-/

namespace A029121.P14259737803704715747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A029438 n - A025913 n)

end

end A029121.P14259737803704715747

namespace A029121

/-- `∑[A025913(n)]+A029438(n)-A025913(n)` -/
def P14259737803704715747.Spec : Prop :=
  ∀ n, P14259737803704715747.a n = A029121 n

end A029121

/-!
# A029122: Expansion of 1/((1-x)(1-x^7)(1-x^9)(1-x^11)).

The programs for A029122, the canonical program `A029122.P14169569520904483456` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029122 has offset 0).

The definition of A029122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029122.P14169569520904483456

`∑[A025913(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A029122

/-- `∑[A025913(n)]` -/
def P14169569520904483456.Spec : Prop :=
  ∀ n, P14169569520904483456.a n = A029122 n

theorem P14169569520904483456.correct : P14169569520904483456.Spec := by
  intro n
  simp only [A029122]

end A029122

/-! ## A029122.P15656470188070308731

`A025913(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A029122.P15656470188070308731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025913 (n % (n + 1)) + a (n - 1)

end

end A029122.P15656470188070308731

namespace A029122

/-- `A025913(n%(n+1))+a(n-1)` -/
def P15656470188070308731.Spec : Prop :=
  ∀ n, P15656470188070308731.a n = A029122 n

end A029122

/-! ## A029122.P5267719043580161897

`A025913(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029122.P5267719043580161897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025913 n + a (A023443 n).toNat

end

end A029122.P5267719043580161897

namespace A029122

/-- `A025913(n)+a(A023443(n))` -/
def P5267719043580161897.Spec : Prop :=
  ∀ n, P5267719043580161897.a n = A029122 n

end A029122

/-! ## A029122.P5076930629379755640

`A029231(abs(1-n))+A029231(n)`
-/

namespace A029122.P5076930629379755640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029231 |1 - (n : ℤ)|.toNat + A029231 n

end

end A029122.P5076930629379755640

namespace A029122

/-- `A029231(abs(1-n))+A029231(n)` -/
def P5076930629379755640.Spec : Prop :=
  ∀ n, P5076930629379755640.a n = A029122 n

end A029122

/-! ## A029122.P9547523483085905594

`A029233(abs(1-n))+A029230(n)`
-/

namespace A029122.P9547523483085905594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029233 |1 - (n : ℤ)|.toNat + A029230 n

end

end A029122.P9547523483085905594

namespace A029122

/-- `A029233(abs(1-n))+A029230(n)` -/
def P9547523483085905594.Spec : Prop :=
  ∀ n, P9547523483085905594.a n = A029122 n

end A029122

/-! ## A029122.P592711287759005035

`a(n-1)+A025913(n)*A057427(n)` with `a(0)=1`
-/

namespace A029122.P592711287759005035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A025913 n * A057427 n

end

end A029122.P592711287759005035

namespace A029122

/-- `a(n-1)+A025913(n)*A057427(n)` -/
def P592711287759005035.Spec : Prop :=
  ∀ n, P592711287759005035.a n = A029122 n

end A029122

/-!
# A029123: Expansion of 1/((1-x)*(1-x^7)*(1-x^9)*(1-x^12)).

The programs for A029123, the canonical program `A029123.P5153650302212498034` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029123 has offset 0).

The definition of A029123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029123.P5153650302212498034

`∑[A025914(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029123

/-- `∑[A025914(n)]` -/
def P5153650302212498034.Spec : Prop :=
  ∀ n, P5153650302212498034.a n = A029123 n

theorem P5153650302212498034.correct : P5153650302212498034.Spec := by
  intro n
  simp only [A029123]

end A029123

/-! ## A029123.P8185249008140189727

`A025914(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029123.P8185249008140189727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025914 n + a (A023443 n).toNat

end

end A029123.P8185249008140189727

namespace A029123

/-- `A025914(n)+a(A023443(n))` -/
def P8185249008140189727.Spec : Prop :=
  ∀ n, P8185249008140189727.a n = A029123 n

end A029123

/-! ## A029123.P7585754735122320379

`A029232(abs(1-n))+A029232(n)`
-/

namespace A029123.P7585754735122320379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029232 |1 - (n : ℤ)|.toNat + A029232 n

end

end A029123.P7585754735122320379

namespace A029123

/-- `A029232(abs(1-n))+A029232(n)` -/
def P7585754735122320379.Spec : Prop :=
  ∀ n, P7585754735122320379.a n = A029123 n

end A029123

/-! ## A029123.P10296410205546728792

`A029238(abs(1-n))+A029229(n)`
-/

namespace A029123.P10296410205546728792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 |1 - (n : ℤ)|.toNat + A029229 n

end

end A029123.P10296410205546728792

namespace A029123

/-- `A029238(abs(1-n))+A029229(n)` -/
def P10296410205546728792.Spec : Prop :=
  ∀ n, P10296410205546728792.a n = A029123 n

end A029123

/-! ## A029123.P16816469082284554132

`∑[A025874(n)+A025883(n)-A025864(n)]`
-/

namespace A029123.P16816469082284554132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 n + (A025883 n - A025864 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029123.P16816469082284554132

namespace A029123

/-- `∑[A025874(n)+A025883(n)-A025864(n)]` -/
def P16816469082284554132.Spec : Prop :=
  ∀ n, P16816469082284554132.a n = A029123 n

end A029123

/-! ## A029123.P11374338914522075481

`A025914(n)+a(n-1)%A303853(n+3)` with `a(0)=1`
-/

namespace A029123.P11374338914522075481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025914 n + Int.tmod (a (n - 1)) (A303853 (n + 3))

end

end A029123.P11374338914522075481

namespace A029123

/-- `A025914(n)+a(n-1)%A303853(n+3)` -/
def P11374338914522075481.Spec : Prop :=
  ∀ n, P11374338914522075481.a n = A029123 n

end A029123

/-! ## A029123.P12195098630322245691

`a(n-1)+1-(A291168(A087467(n+1))-A025914(n))` with `a(0)=1`
-/

namespace A029123.P12195098630322245691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A291168 (A087467 (n + 1)).toNat - A025914 n)

end

end A029123.P12195098630322245691

namespace A029123

/-- `a(n-1)+1-(A291168(A087467(n+1))-A025914(n))` -/
def P12195098630322245691.Spec : Prop :=
  ∀ n, P12195098630322245691.a n = A029123 n

end A029123

/-!
# A029124: Expansion of 1/((1-x)(1-x^7)(1-x^10)(1-x^11)).

The programs for A029124, the canonical program `A029124.P10923443697703344622` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029124 has offset 0).

The definition of A029124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029124.P10923443697703344622

`∑[A025915(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029124

/-- `∑[A025915(n)]` -/
def P10923443697703344622.Spec : Prop :=
  ∀ n, P10923443697703344622.a n = A029124 n

theorem P10923443697703344622.correct : P10923443697703344622.Spec := by
  intro n
  simp only [A029124]

end A029124

/-! ## A029124.P5646844801442242334

`A025915(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A029124.P5646844801442242334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025915 (n % (n + 1)) + a (n - 1)

end

end A029124.P5646844801442242334

namespace A029124

/-- `A025915(n%(n+1))+a(n-1)` -/
def P5646844801442242334.Spec : Prop :=
  ∀ n, P5646844801442242334.a n = A029124 n

end A029124

/-! ## A029124.P4492090213878574138

`A025915(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029124.P4492090213878574138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025915 n + a (A023443 n).toNat

end

end A029124.P4492090213878574138

namespace A029124

/-- `A025915(n)+a(A023443(n))` -/
def P4492090213878574138.Spec : Prop :=
  ∀ n, P4492090213878574138.a n = A029124 n

end A029124

/-! ## A029124.P5021534266619501258

`a(n-1)+A025915(n)+A000007(n)` with `a(0)=1`
-/

namespace A029124.P5021534266619501258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A025915 n + A000007 n)

end

end A029124.P5021534266619501258

namespace A029124

/-- `a(n-1)+A025915(n)+A000007(n)` -/
def P5021534266619501258.Spec : Prop :=
  ∀ n, P5021534266619501258.a n = A029124 n

end A029124

/-! ## A029124.P2408559157341920327

`A029233(abs(A024000(n)))+A029233(n)`
-/

namespace A029124.P2408559157341920327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029233 |A024000 n|.toNat + A029233 n

end

end A029124.P2408559157341920327

namespace A029124

/-- `A029233(abs(A024000(n)))+A029233(n)` -/
def P2408559157341920327.Spec : Prop :=
  ∀ n, P2408559157341920327.a n = A029124 n

end A029124

/-! ## A029124.P14468748877723621897

`∑[A025913(n+1)+A025913(n)-A025912(n+1)]`
-/

namespace A029124.P14468748877723621897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 (n + 1) + (A025913 n - A025912 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029124.P14468748877723621897

namespace A029124

/-- `∑[A025913(n+1)+A025913(n)-A025912(n+1)]` -/
def P14468748877723621897.Spec : Prop :=
  ∀ n, P14468748877723621897.a n = A029124 n

end A029124

/-! ## A029124.P10357831169363559189

`A222238(A222238(a(n-1)))+A025915(n)` with `a(0)=1`
-/

namespace A029124.P10357831169363559189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A222238 (A222238 (a (n - 1)).toNat).toNat + A025915 n

end

end A029124.P10357831169363559189

namespace A029124

/-- `A222238(A222238(a(n-1)))+A025915(n)` -/
def P10357831169363559189.Spec : Prop :=
  ∀ n, P10357831169363559189.a n = A029124 n

end A029124

/-! ## A029124.P7208912782525476260

`A025915(n)+a(n-1)%A000079(n)` with `a(0)=1`
-/

namespace A029124.P7208912782525476260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025915 n + Int.tmod (a (n - 1)) (A000079 n)

end

end A029124.P7208912782525476260

namespace A029124

/-- `A025915(n)+a(n-1)%A000079(n)` -/
def P7208912782525476260.Spec : Prop :=
  ∀ n, P7208912782525476260.a n = A029124 n

end A029124

/-!
# A029125: Expansion of 1/((1-x)(1-x^7)(1-x^10)(1-x^12)).

The programs for A029125, the canonical program `A029125.P2235379853175947616` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029125 has offset 0).

The definition of A029125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029125.P9623209109336849685

`∑[A025916(n)]`
-/

namespace A029125.P9623209109336849685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029125.P9623209109336849685

namespace A029125

/-- `∑[A025916(n)]` -/
def P9623209109336849685.Spec : Prop :=
  ∀ n, P9623209109336849685.a n = A029125 n

end A029125

/-! ## A029125.P8484524531920135231

`A025916(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029125.P8484524531920135231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025916 n + a (A023443 n).toNat

end

end A029125.P8484524531920135231

namespace A029125

/-- `A025916(n)+a(A023443(n))` -/
def P8484524531920135231.Spec : Prop :=
  ∀ n, P8484524531920135231.a n = A029125 n

end A029125

/-! ## A029125.P1189859970044818818

`A029234(abs(1-n))+A029234(n)`
-/

namespace A029125.P1189859970044818818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 |1 - (n : ℤ)|.toNat + A029234 n

end

end A029125.P1189859970044818818

namespace A029125

/-- `A029234(abs(1-n))+A029234(n)` -/
def P1189859970044818818.Spec : Prop :=
  ∀ n, P1189859970044818818.a n = A029125 n

end A029125

/-! ## A029125.P2235379853175947616

`A029235(abs(1-n))+A029233(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029125

/-- `A029235(abs(1-n))+A029233(n)` -/
def P2235379853175947616.Spec : Prop :=
  ∀ n, P2235379853175947616.a n = A029125 n

theorem P2235379853175947616.correct : P2235379853175947616.Spec := by
  intro n
  simp only [A029125]

end A029125

/-! ## A029125.P5472669295446721327

`a(n-1)+A025916(n)%A008532(n)` with `a(0)=1`
-/

namespace A029125.P5472669295446721327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025916 n) (A008532 n)

end

end A029125.P5472669295446721327

namespace A029125

/-- `a(n-1)+A025916(n)%A008532(n)` -/
def P5472669295446721327.Spec : Prop :=
  ∀ n, P5472669295446721327.a n = A029125 n

end A029125

/-!
# A029126: Expansion of 1/((1-x)(1-x^7)(1-x^11)(1-x^12)).

The programs for A029126, the canonical program `A029126.P854497210763489086` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029126 has offset 0).

The definition of A029126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029126.P4520110241658047815

`∑[A025917(n)]`
-/

namespace A029126.P4520110241658047815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029126.P4520110241658047815

namespace A029126

/-- `∑[A025917(n)]` -/
def P4520110241658047815.Spec : Prop :=
  ∀ n, P4520110241658047815.a n = A029126 n

end A029126

/-! ## A029126.P8138549729433779353

`A025917(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029126.P8138549729433779353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025917 n + a (A023443 n).toNat

end

end A029126.P8138549729433779353

namespace A029126

/-- `A025917(n)+a(A023443(n))` -/
def P8138549729433779353.Spec : Prop :=
  ∀ n, P8138549729433779353.a n = A029126 n

end A029126

/-! ## A029126.P854497210763489086

`A029235(abs(1-n))+A029235(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029126

/-- `A029235(abs(1-n))+A029235(n)` -/
def P854497210763489086.Spec : Prop :=
  ∀ n, P854497210763489086.a n = A029126 n

theorem P854497210763489086.correct : P854497210763489086.Spec := by
  intro n
  simp only [A029126]

end A029126

/-! ## A029126.P10627713892995311109

`A029094(n)+A029116(n)-A029090(n)`
-/

namespace A029126.P10627713892995311109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029094 n + (A029116 n - A029090 n)

end

end A029126.P10627713892995311109

namespace A029126

/-- `A029094(n)+A029116(n)-A029090(n)` -/
def P10627713892995311109.Spec : Prop :=
  ∀ n, P10627713892995311109.a n = A029126 n

end A029126

/-! ## A029126.P18169034160557004977

`A028310(a(n-1))+A025917(n)` with `a(0)=1`
-/

namespace A029126.P18169034160557004977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025917 n

end

end A029126.P18169034160557004977

namespace A029126

/-- `A028310(a(n-1))+A025917(n)` -/
def P18169034160557004977.Spec : Prop :=
  ∀ n, P18169034160557004977.a n = A029126 n

end A029126

/-!
# A029127: Expansion of 1/((1-x)(1-x^8)(1-x^9)(1-x^10)).

The programs for A029127, the canonical program `A029127.P16971124767418111993` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029127 has offset 0).

The definition of A029127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029127.P16971124767418111993

`∑[A025918(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029127

/-- `∑[A025918(n)]` -/
def P16971124767418111993.Spec : Prop :=
  ∀ n, P16971124767418111993.a n = A029127 n

theorem P16971124767418111993.correct : P16971124767418111993.Spec := by
  intro n
  simp only [A029127]

end A029127

/-! ## A029127.P1252813260928665600

`A025918(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A029127.P1252813260928665600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025918 (n % (n + 1)) + a (n - 1)

end

end A029127.P1252813260928665600

namespace A029127

/-- `A025918(n%(n+1))+a(n-1)` -/
def P1252813260928665600.Spec : Prop :=
  ∀ n, P1252813260928665600.a n = A029127 n

end A029127

/-! ## A029127.P14970682212846864305

`A025918(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029127.P14970682212846864305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025918 n + a (A023443 n).toNat

end

end A029127.P14970682212846864305

namespace A029127

/-- `A025918(n)+a(A023443(n))` -/
def P14970682212846864305.Spec : Prop :=
  ∀ n, P14970682212846864305.a n = A029127 n

end A029127

/-! ## A029127.P18160998435045847775

`A029236(abs(1-n))+A029236(n)`
-/

namespace A029127.P18160998435045847775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 |1 - (n : ℤ)|.toNat + A029236 n

end

end A029127.P18160998435045847775

namespace A029127

/-- `A029236(abs(1-n))+A029236(n)` -/
def P18160998435045847775.Spec : Prop :=
  ∀ n, P18160998435045847775.a n = A029127 n

end A029127

/-! ## A029127.P6417682529471281934

`A025918(A000027(n))+a(n-1)` with `a(0)=1`
-/

namespace A029127.P6417682529471281934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025918 (A000027 n).toNat + a (n - 1)

end

end A029127.P6417682529471281934

namespace A029127

/-- `A025918(A000027(n))+a(n-1)` -/
def P6417682529471281934.Spec : Prop :=
  ∀ n, P6417682529471281934.a n = A029127 n

end A029127

/-! ## A029127.P5330325363528150472

`a(n-1)+A025918(n)%A000041(n)` with `a(0)=1`
-/

namespace A029127.P5330325363528150472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A025918 n) (A000041 n)

end

end A029127.P5330325363528150472

namespace A029127

/-- `a(n-1)+A025918(n)%A000041(n)` -/
def P5330325363528150472.Spec : Prop :=
  ∀ n, P5330325363528150472.a n = A029127 n

end A029127

/-! ## A029127.P16214703770837260466

`A028310(a(n-1))+A025918(n)` with `a(0)=1`
-/

namespace A029127.P16214703770837260466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025918 n

end

end A029127.P16214703770837260466

namespace A029127

/-- `A028310(a(n-1))+A025918(n)` -/
def P16214703770837260466.Spec : Prop :=
  ∀ n, P16214703770837260466.a n = A029127 n

end A029127

/-!
# A029128: Expansion of 1/((1-x)(1-x^8)(1-x^9)(1-x^11)).

The programs for A029128, the canonical program `A029128.P7892556659566413608` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029128 has offset 0).

The definition of A029128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029128.P14404011442114632178

`∑[A025919(n)]`
-/

namespace A029128.P14404011442114632178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029128.P14404011442114632178

namespace A029128

/-- `∑[A025919(n)]` -/
def P14404011442114632178.Spec : Prop :=
  ∀ n, P14404011442114632178.a n = A029128 n

end A029128

/-! ## A029128.P7892556659566413608

`A029081(n)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029128

/-- `A029081(n)-a(n-4)` -/
def P7892556659566413608.Spec : Prop :=
  ∀ n, P7892556659566413608.a n = A029128 n

theorem P7892556659566413608.correct : P7892556659566413608.Spec := by
  intro n
  simp only [A029128]

end A029128

/-! ## A029128.P8049753973936268192

`A025919(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029128.P8049753973936268192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025919 n + a (A023443 n).toNat

end

end A029128.P8049753973936268192

namespace A029128

/-- `A025919(n)+a(A023443(n))` -/
def P8049753973936268192.Spec : Prop :=
  ∀ n, P8049753973936268192.a n = A029128 n

end A029128

/-! ## A029128.P14486003880635289449

`A029237(abs(1-n))+A029237(n)`
-/

namespace A029128.P14486003880635289449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029237 |1 - (n : ℤ)|.toNat + A029237 n

end

end A029128.P14486003880635289449

namespace A029128

/-- `A029237(abs(1-n))+A029237(n)` -/
def P14486003880635289449.Spec : Prop :=
  ∀ n, P14486003880635289449.a n = A029128 n

end A029128

/-! ## A029128.P11615668525344868615

`A029239(abs(1-n))+A029236(n)`
-/

namespace A029128.P11615668525344868615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 |1 - (n : ℤ)|.toNat + A029236 n

end

end A029128.P11615668525344868615

namespace A029128

/-- `A029239(abs(1-n))+A029236(n)` -/
def P11615668525344868615.Spec : Prop :=
  ∀ n, P11615668525344868615.a n = A029128 n

end A029128

/-! ## A029128.P9766079466257466333

`A029130(n)+A029236(n)-A029239(n)`
-/

namespace A029128.P9766079466257466333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029130 n + (A029236 n - A029239 n)

end

end A029128.P9766079466257466333

namespace A029128

/-- `A029130(n)+A029236(n)-A029239(n)` -/
def P9766079466257466333.Spec : Prop :=
  ∀ n, P9766079466257466333.a n = A029128 n

end A029128

/-! ## A029128.P2610963089594167938

`A029124(n)+A029442(n)-A029435(n)`
-/

namespace A029128.P2610963089594167938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029124 n + (A029442 n - A029435 n)

end

end A029128.P2610963089594167938

namespace A029128

/-- `A029124(n)+A029442(n)-A029435(n)` -/
def P2610963089594167938.Spec : Prop :=
  ∀ n, P2610963089594167938.a n = A029128 n

end A029128

/-! ## A029128.P3105943707120080679

`A025919(n)+a(A025581(A167614(n+1)))` with `a(0)=1`
-/

namespace A029128.P3105943707120080679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025919 n + a (A025581 (A167614 (n + 1)).toNat).toNat

end

end A029128.P3105943707120080679

namespace A029128

/-- `A025919(n)+a(A025581(A167614(n+1)))` -/
def P3105943707120080679.Spec : Prop :=
  ∀ n, P3105943707120080679.a n = A029128 n

end A029128

/-!
# A029129: Expansion of 1/((1-x)*(1-x^8)*(1-x^9)*(1-x^12)).

The programs for A029129, the canonical program `A029129.P9138012199681895200` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029129 has offset 0).

The definition of A029129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029129.P9138012199681895200

`∑[A025920(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029129

/-- `∑[A025920(n)]` -/
def P9138012199681895200.Spec : Prop :=
  ∀ n, P9138012199681895200.a n = A029129 n

theorem P9138012199681895200.correct : P9138012199681895200.Spec := by
  intro n
  simp only [A029129]

end A029129

/-! ## A029129.P8425503696001158598

`A025920(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A029129.P8425503696001158598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025920 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A029129.P8425503696001158598

namespace A029129

/-- `A025920(char[1]+n)+a(n-1)` -/
def P8425503696001158598.Spec : Prop :=
  ∀ n, P8425503696001158598.a n = A029129 n

end A029129

/-! ## A029129.P11244087190918007477

`A029238(abs(1-n))+A029238(n)`
-/

namespace A029129.P11244087190918007477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 |1 - (n : ℤ)|.toNat + A029238 n

end

end A029129.P11244087190918007477

namespace A029129

/-- `A029238(abs(1-n))+A029238(n)` -/
def P11244087190918007477.Spec : Prop :=
  ∀ n, P11244087190918007477.a n = A029129 n

end A029129

/-! ## A029129.P12835622528392599256

`A025920(n)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A029129.P12835622528392599256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025920 n - (A000007 n - a (n - 1))

end

end A029129.P12835622528392599256

namespace A029129

/-- `A025920(n)-(A000007(n)-a(n-1))` -/
def P12835622528392599256.Spec : Prop :=
  ∀ n, P12835622528392599256.a n = A029129 n

end A029129

/-! ## A029129.P17927194189126849014

`∑[A025850(n)+A025890(n)-A025840(n)]`
-/

namespace A029129.P17927194189126849014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025850 n + (A025890 n - A025840 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029129.P17927194189126849014

namespace A029129

/-- `∑[A025850(n)+A025890(n)-A025840(n)]` -/
def P17927194189126849014.Spec : Prop :=
  ∀ n, P17927194189126849014.a n = A029129 n

end A029129

/-! ## A029129.P13137586125681120157

`A028310(a(n-1))+A025920(n)` with `a(0)=1`
-/

namespace A029129.P13137586125681120157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025920 n

end

end A029129.P13137586125681120157

namespace A029129

/-- `A028310(a(n-1))+A025920(n)` -/
def P13137586125681120157.Spec : Prop :=
  ∀ n, P13137586125681120157.a n = A029129 n

end A029129

/-!
# A029130: Expansion of 1/((1-x)(1-x^8)(1-x^10)(1-x^11)).

The programs for A029130, the canonical program `A029130.P9139947445189529959` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029130 has offset 0).

The definition of A029130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029130.P8943661448335281666

`∑[A025921(n)]`
-/

namespace A029130.P8943661448335281666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029130.P8943661448335281666

namespace A029130

/-- `∑[A025921(n)]` -/
def P8943661448335281666.Spec : Prop :=
  ∀ n, P8943661448335281666.a n = A029130 n

end A029130

/-! ## A029130.P4413614794647438713

`A025921(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029130.P4413614794647438713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025921 n + a (A023443 n).toNat

end

end A029130.P4413614794647438713

namespace A029130

/-- `A025921(n)+a(A023443(n))` -/
def P4413614794647438713.Spec : Prop :=
  ∀ n, P4413614794647438713.a n = A029130 n

end A029130

/-! ## A029130.P4389128220655211717

`A029239(abs(1-n))+A029239(n)`
-/

namespace A029130.P4389128220655211717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 |1 - (n : ℤ)|.toNat + A029239 n

end

end A029130.P4389128220655211717

namespace A029130

/-- `A029239(abs(1-n))+A029239(n)` -/
def P4389128220655211717.Spec : Prop :=
  ∀ n, P4389128220655211717.a n = A029130 n

end A029130

/-! ## A029130.P5924436540571993793

`A025921(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A029130.P5924436540571993793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025921 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A029130.P5924436540571993793

namespace A029130

/-- `A025921(n%A000040(n))+a(n-1)` -/
def P5924436540571993793.Spec : Prop :=
  ∀ n, P5924436540571993793.a n = A029130 n

end A029130

/-! ## A029130.P9139947445189529959

`A029241(abs(A024000(n)))+A029237(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029130

/-- `A029241(abs(A024000(n)))+A029237(n)` -/
def P9139947445189529959.Spec : Prop :=
  ∀ n, P9139947445189529959.a n = A029130 n

theorem P9139947445189529959.correct : P9139947445189529959.Spec := by
  intro n
  simp only [A029130]

end A029130

/-! ## A029130.P5687609408126365285

`A029124(n+1)-A029435(n+1)`
-/

namespace A029130.P5687609408126365285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029124 (n + 1) - A029435 (n + 1)

end

end A029130.P5687609408126365285

namespace A029130

/-- `A029124(n+1)-A029435(n+1)` -/
def P5687609408126365285.Spec : Prop :=
  ∀ n, P5687609408126365285.a n = A029130 n

end A029130

/-! ## A029130.P15269199603652946456

`A029128(n+1)-A029442(n+1)`
-/

namespace A029130.P15269199603652946456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029128 (n + 1) - A029442 (n + 1)

end

end A029130.P15269199603652946456

namespace A029130

/-- `A029128(n+1)-A029442(n+1)` -/
def P15269199603652946456.Spec : Prop :=
  ∀ n, P15269199603652946456.a n = A029130 n

end A029130

/-! ## A029130.P12704665419505311929

`∑[A025919(n+1)+A025919(n)-A025918(n+1)]`
-/

namespace A029130.P12704665419505311929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025919 (n + 1) + (A025919 n - A025918 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029130.P12704665419505311929

namespace A029130

/-- `∑[A025919(n+1)+A025919(n)-A025918(n+1)]` -/
def P12704665419505311929.Spec : Prop :=
  ∀ n, P12704665419505311929.a n = A029130 n

end A029130

/-! ## A029130.P3421908531299699054

`A025921(n)+a(A004526(A004273(n)))` with `a(0)=1`
-/

namespace A029130.P3421908531299699054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025921 n + a (A004526 (A004273 n).toNat).toNat

end

end A029130.P3421908531299699054

namespace A029130

/-- `A025921(n)+a(A004526(A004273(n)))` -/
def P3421908531299699054.Spec : Prop :=
  ∀ n, P3421908531299699054.a n = A029130 n

end A029130

/-! ## A029130.P15792018704144961162

`A064429(A064429(a(n-1)))+A025921(n)` with `a(0)=1`
-/

namespace A029130.P15792018704144961162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064429 (A064429 (a (n - 1)).toNat).toNat + A025921 n

end

end A029130.P15792018704144961162

namespace A029130

/-- `A064429(A064429(a(n-1)))+A025921(n)` -/
def P15792018704144961162.Spec : Prop :=
  ∀ n, P15792018704144961162.a n = A029130 n

end A029130

/-!
# A029131: Expansion of 1/((1-x)(1-x^8)(1-x^11)(1-x^12)).

The programs for A029131, the canonical program `A029131.P14368034963084575048` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029131 has offset 0).

The definition of A029131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029131.P14368034963084575048

`∑[A025922(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029131

/-- `∑[A025922(n)]` -/
def P14368034963084575048.Spec : Prop :=
  ∀ n, P14368034963084575048.a n = A029131 n

theorem P14368034963084575048.correct : P14368034963084575048.Spec := by
  intro n
  simp only [A029131]

end A029131

/-! ## A029131.P2814856681518783343

`A025922(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029131.P2814856681518783343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025922 n + a (A023443 n).toNat

end

end A029131.P2814856681518783343

namespace A029131

/-- `A025922(n)+a(A023443(n))` -/
def P2814856681518783343.Spec : Prop :=
  ∀ n, P2814856681518783343.a n = A029131 n

end A029131

/-! ## A029131.P7675827386958121497

`A029240(abs(1-n))+A029240(n)`
-/

namespace A029131.P7675827386958121497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 |1 - (n : ℤ)|.toNat + A029240 n

end

end A029131.P7675827386958121497

namespace A029131

/-- `A029240(abs(1-n))+A029240(n)` -/
def P7675827386958121497.Spec : Prop :=
  ∀ n, P7675827386958121497.a n = A029131 n

end A029131

/-! ## A029131.P7302280633029609084

`a(n-1)+A025922(n)+A000007(n)` with `a(0)=1`
-/

namespace A029131.P7302280633029609084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A025922 n + A000007 n)

end

end A029131.P7302280633029609084

namespace A029131

/-- `a(n-1)+A025922(n)+A000007(n)` -/
def P7302280633029609084.Spec : Prop :=
  ∀ n, P7302280633029609084.a n = A029131 n

end A029131

/-! ## A029131.P12672199871954775969

`a(n-1)+A025922(n)+A008683(A008574(n))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029131.P12672199871954775969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + (A025922 n + A008683 (A008574 n).toNat)

end

end A029131.P12672199871954775969

namespace A029131

/-- `a(n-1)+A025922(n)+A008683(A008574(n))` -/
def P12672199871954775969.Spec : Prop :=
  ∀ n, P12672199871954775969.a n = A029131 n

end A029131

/-! ## A029131.P11048780108996784255

`A025922(n)+a(A004526(A004275(n)))` with `a(0)=1`
-/

namespace A029131.P11048780108996784255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025922 n + a (A004526 (A004275 n).toNat).toNat

end

end A029131.P11048780108996784255

namespace A029131

/-- `A025922(n)+a(A004526(A004275(n)))` -/
def P11048780108996784255.Spec : Prop :=
  ∀ n, P11048780108996784255.a n = A029131 n

end A029131

/-! ## A029131.P12977089375217537480

`A028310(a(n-1))+A025922(n)` with `a(0)=1`
-/

namespace A029131.P12977089375217537480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025922 n

end

end A029131.P12977089375217537480

namespace A029131

/-- `A028310(a(n-1))+A025922(n)` -/
def P12977089375217537480.Spec : Prop :=
  ∀ n, P12977089375217537480.a n = A029131 n

end A029131

/-!
# A029132: Expansion of 1/((1-x)(1-x^9)(1-x^10)(1-x^11)).

The programs for A029132, the canonical program `A029132.P3141422924859193471` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029132 has offset 0).

The definition of A029132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029132.P4162264117794427421

`∑[A025923(n)]`
-/

namespace A029132.P4162264117794427421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029132.P4162264117794427421

namespace A029132

/-- `∑[A025923(n)]` -/
def P4162264117794427421.Spec : Prop :=
  ∀ n, P4162264117794427421.a n = A029132 n

end A029132

/-! ## A029132.P6837385076384876410

`A025923(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029132.P6837385076384876410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025923 n + a (A023443 n).toNat

end

end A029132.P6837385076384876410

namespace A029132

/-- `A025923(n)+a(A023443(n))` -/
def P6837385076384876410.Spec : Prop :=
  ∀ n, P6837385076384876410.a n = A029132 n

end A029132

/-! ## A029132.P3141422924859193471

`A029241(abs(1-n))+A029241(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029132

/-- `A029241(abs(1-n))+A029241(n)` -/
def P3141422924859193471.Spec : Prop :=
  ∀ n, P3141422924859193471.a n = A029132 n

theorem P3141422924859193471.correct : P3141422924859193471.Spec := by
  intro n
  simp only [A029132]

end A029132

/-! ## A029132.P893812451097712285

`a(n-1)+A025923(n)+A000038(n)` with `a(0)=1`
-/

namespace A029132.P893812451097712285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A025923 n + A000038 n)

end

end A029132.P893812451097712285

namespace A029132

/-- `a(n-1)+A025923(n)+A000038(n)` -/
def P893812451097712285.Spec : Prop :=
  ∀ n, P893812451097712285.a n = A029132 n

end A029132

/-! ## A029132.P3678659644539472071

`A029130(n+1)-A029442(n+1)`
-/

namespace A029132.P3678659644539472071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029130 (n + 1) - A029442 (n + 1)

end

end A029132.P3678659644539472071

namespace A029132

/-- `A029130(n+1)-A029442(n+1)` -/
def P3678659644539472071.Spec : Prop :=
  ∀ n, P3678659644539472071.a n = A029132 n

end A029132

/-! ## A029132.P1288953664208004925

`A028310(a(n-1))+A025923(n)` with `a(0)=1`
-/

namespace A029132.P1288953664208004925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025923 n

end

end A029132.P1288953664208004925

namespace A029132

/-- `A028310(a(n-1))+A025923(n)` -/
def P1288953664208004925.Spec : Prop :=
  ∀ n, P1288953664208004925.a n = A029132 n

end A029132

/-! ## A029132.P7805024451280297037

`∑[A025926(A007095(n))%A088046(n+1)]`
-/

namespace A029132.P7805024451280297037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025926 (A007095 n).toNat) (A088046 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029132.P7805024451280297037

namespace A029132

/-- `∑[A025926(A007095(n))%A088046(n+1)]` -/
def P7805024451280297037.Spec : Prop :=
  ∀ n, P7805024451280297037.a n = A029132 n

end A029132

/-!
# A029133: Expansion of 1/((1-x)(1-x^9)(1-x^10)(1-x^12)).

The programs for A029133, the canonical program `A029133.P2070420607738981676` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029133 has offset 0).

The definition of A029133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029133.P2070420607738981676

`∑[A025924(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029133

/-- `∑[A025924(n)]` -/
def P2070420607738981676.Spec : Prop :=
  ∀ n, P2070420607738981676.a n = A029133 n

theorem P2070420607738981676.correct : P2070420607738981676.Spec := by
  intro n
  simp only [A029133]

end A029133

/-! ## A029133.P17712754761319583871

`A029242(abs(1-n))+A029242(n)`
-/

namespace A029133.P17712754761319583871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029242 |1 - (n : ℤ)|.toNat + A029242 n

end

end A029133.P17712754761319583871

namespace A029133

/-- `A029242(abs(1-n))+A029242(n)` -/
def P17712754761319583871.Spec : Prop :=
  ∀ n, P17712754761319583871.a n = A029133 n

end A029133

/-! ## A029133.P8124783328530720485

`A029243(abs(1-n))+A029241(n)`
-/

namespace A029133.P8124783328530720485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029243 |1 - (n : ℤ)|.toNat + A029241 n

end

end A029133.P8124783328530720485

namespace A029133

/-- `A029243(abs(1-n))+A029241(n)` -/
def P8124783328530720485.Spec : Prop :=
  ∀ n, P8124783328530720485.a n = A029133 n

end A029133

/-! ## A029133.P18224821284740234492

`A025924(n%A114562(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A029133.P18224821284740234492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025924 (Int.tmod (n : ℤ) (A114562 (n + 1))).toNat + a (n - 1)

end

end A029133.P18224821284740234492

namespace A029133

/-- `A025924(n%A114562(n+1))+a(n-1)` -/
def P18224821284740234492.Spec : Prop :=
  ∀ n, P18224821284740234492.a n = A029133 n

end A029133

/-! ## A029133.P11622669967290908714

`A025924(n)+a(n-1)%A083683(n)` with `a(0)=1`
-/

namespace A029133.P11622669967290908714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025924 n + Int.tmod (a (n - 1)) (A083683 n)

end

end A029133.P11622669967290908714

namespace A029133

/-- `A025924(n)+a(n-1)%A083683(n)` -/
def P11622669967290908714.Spec : Prop :=
  ∀ n, P11622669967290908714.a n = A029133 n

end A029133

/-! ## A029133.P18327614321473406712

`A025924(n)+a(A053188(A028552(n)))` with `a(0)=1`
-/

namespace A029133.P18327614321473406712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025924 n + a (A053188 (A028552 n).toNat).toNat

end

end A029133.P18327614321473406712

namespace A029133

/-- `A025924(n)+a(A053188(A028552(n)))` -/
def P18327614321473406712.Spec : Prop :=
  ∀ n, P18327614321473406712.a n = A029133 n

end A029133

/-!
# A029134: Expansion of 1/((1-x)(1-x^9)(1-x^11)(1-x^12)).

The programs for A029134, the canonical program `A029134.P1779727754259986526` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029134 has offset 0).

The definition of A029134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029134.P1779727754259986526

`∑[A025925(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029134

/-- `∑[A025925(n)]` -/
def P1779727754259986526.Spec : Prop :=
  ∀ n, P1779727754259986526.a n = A029134 n

theorem P1779727754259986526.correct : P1779727754259986526.Spec := by
  intro n
  simp only [A029134]

end A029134

/-! ## A029134.P9581071471327734022

`A025925(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A029134.P9581071471327734022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025925 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A029134.P9581071471327734022

namespace A029134

/-- `A025925(char[1]+n)+a(n-1)` -/
def P9581071471327734022.Spec : Prop :=
  ∀ n, P9581071471327734022.a n = A029134 n

end A029134

/-! ## A029134.P10108035743518413649

`A029243(abs(1-n))+A029243(n)`
-/

namespace A029134.P10108035743518413649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029243 |1 - (n : ℤ)|.toNat + A029243 n

end

end A029134.P10108035743518413649

namespace A029134

/-- `A029243(abs(1-n))+A029243(n)` -/
def P10108035743518413649.Spec : Prop :=
  ∀ n, P10108035743518413649.a n = A029134 n

end A029134

/-! ## A029134.P17227615968501554975

`A029244(abs(1-n))+A029242(n)`
-/

namespace A029134.P17227615968501554975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 |1 - (n : ℤ)|.toNat + A029242 n

end

end A029134.P17227615968501554975

namespace A029134

/-- `A029244(abs(1-n))+A029242(n)` -/
def P17227615968501554975.Spec : Prop :=
  ∀ n, P17227615968501554975.a n = A029134 n

end A029134

/-! ## A029134.P895419775126482824

`A029133(n)+A029243(n)-A029241(n)`
-/

namespace A029134.P895419775126482824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029133 n + (A029243 n - A029241 n)

end

end A029134.P895419775126482824

namespace A029134

/-- `A029133(n)+A029243(n)-A029241(n)` -/
def P895419775126482824.Spec : Prop :=
  ∀ n, P895419775126482824.a n = A029134 n

end A029134

/-! ## A029134.P15747021140178359000

`A029133(n+1)-A029446(n+1)`
-/

namespace A029134.P15747021140178359000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029133 (n + 1) - A029446 (n + 1)

end

end A029134.P15747021140178359000

namespace A029134

/-- `A029133(n+1)-A029446(n+1)` -/
def P15747021140178359000.Spec : Prop :=
  ∀ n, P15747021140178359000.a n = A029134 n

end A029134

/-!
# A029135: Expansion of 1/((1-x)(1-x^10)(1-x^11)(1-x^12)).

The programs for A029135, the canonical program `A029135.P15456997748692065419` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029135 has offset 0).

The definition of A029135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029135.P15456997748692065419

`∑[A025926(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029135

/-- `∑[A025926(n)]` -/
def P15456997748692065419.Spec : Prop :=
  ∀ n, P15456997748692065419.a n = A029135 n

theorem P15456997748692065419.correct : P15456997748692065419.Spec := by
  intro n
  simp only [A029135]

end A029135

/-! ## A029135.P7684627553277381166

`A025926(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A029135.P7684627553277381166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025926 n + a (A023443 n).toNat

end

end A029135.P7684627553277381166

namespace A029135

/-- `A025926(n)+a(A023443(n))` -/
def P7684627553277381166.Spec : Prop :=
  ∀ n, P7684627553277381166.a n = A029135 n

end A029135

/-! ## A029135.P13073238808724124697

`A029244(abs(1-n))+A029244(n)`
-/

namespace A029135.P13073238808724124697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 |1 - (n : ℤ)|.toNat + A029244 n

end

end A029135.P13073238808724124697

namespace A029135

/-- `A029244(abs(1-n))+A029244(n)` -/
def P13073238808724124697.Spec : Prop :=
  ∀ n, P13073238808724124697.a n = A029135 n

end A029135

/-! ## A029135.P5358155993638681799

`a(n-1)+A025926(n)+A000007(n)` with `a(0)=1`
-/

namespace A029135.P5358155993638681799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A025926 n + A000007 n)

end

end A029135.P5358155993638681799

namespace A029135

/-- `a(n-1)+A025926(n)+A000007(n)` -/
def P5358155993638681799.Spec : Prop :=
  ∀ n, P5358155993638681799.a n = A029135 n

end A029135

/-! ## A029135.P11680350001130436481

`A025926(n)+a(n-A019426(2*n))` with `a(0)=1`
-/

namespace A029135.P11680350001130436481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025926 n + a ((n : ℤ) - A019426 (2 * n)).toNat

end

end A029135.P11680350001130436481

namespace A029135

/-- `A025926(n)+a(n-A019426(2*n))` -/
def P11680350001130436481.Spec : Prop :=
  ∀ n, P11680350001130436481.a n = A029135 n

end A029135

/-! ## A029135.P10076527130087948845

`A025926(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A029135.P10076527130087948845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025926 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A029135.P10076527130087948845

namespace A029135

/-- `A025926(n%A000040(n))+a(n-1)` -/
def P10076527130087948845.Spec : Prop :=
  ∀ n, P10076527130087948845.a n = A029135 n

end A029135

/-! ## A029135.P918010614652555530

`A038722(A038722(a(n-1)))+A025926(n)` with `a(0)=1`
-/

namespace A029135.P918010614652555530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038722 (A038722 (a (n - 1)).toNat).toNat + A025926 n

end

end A029135.P918010614652555530

namespace A029135

/-- `A038722(A038722(a(n-1)))+A025926(n)` -/
def P918010614652555530.Spec : Prop :=
  ∀ n, P918010614652555530.a n = A029135 n

end A029135

/-! ## A029135.P18315980123629814150

`A028310(a(n-1))+A025926(n)` with `a(0)=1`
-/

namespace A029135.P18315980123629814150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025926 n

end

end A029135.P18315980123629814150

namespace A029135

/-- `A028310(a(n-1))+A025926(n)` -/
def P18315980123629814150.Spec : Prop :=
  ∀ n, P18315980123629814150.a n = A029135 n

end A029135

/-!
# A029136: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^6)).

The programs for A029136, the canonical program `A029136.P6833100279942692144` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029136 has offset 0).

The definition of A029136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029136.P6833100279942692144

`A008670(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029136

/-- `A008670(n)-a(n-1)` -/
def P6833100279942692144.Spec : Prop :=
  ∀ n, P6833100279942692144.a n = A029136 n

theorem P6833100279942692144.correct : P6833100279942692144.Spec := by
  intro n
  simp only [A029136]

end A029136

/-! ## A029136.P3476340752272843426

`A025828(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029136.P3476340752272843426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025828 n + a (n - 2)

end

end A029136.P3476340752272843426

namespace A029136

/-- `A025828(n)+a(n-2)` -/
def P3476340752272843426.Spec : Prop :=
  ∀ n, P3476340752272843426.a n = A029136 n

end A029136

/-! ## A029136.P7913851780815761807

`A307872(A052938(n+1))`
-/

namespace A029136.P7913851780815761807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (A052938 (n + 1)).toNat

end

end A029136.P7913851780815761807

namespace A029136

/-- `A307872(A052938(n+1))` -/
def P7913851780815761807.Spec : Prop :=
  ∀ n, P7913851780815761807.a n = A029136 n

end A029136

/-! ## A029136.P340140467851920707

`A307872(A028242(n)+2)`
-/

namespace A029136.P340140467851920707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (A028242 n + 2).toNat

end

end A029136.P340140467851920707

namespace A029136

/-- `A307872(A028242(n)+2)` -/
def P340140467851920707.Spec : Prop :=
  ∀ n, P340140467851920707.a n = A029136 n

end A029136

/-! ## A029136.P8007154132540104828

`A387209(n)+A059841(n)`
-/

namespace A029136.P8007154132540104828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387209 n + A059841 n

end

end A029136.P8007154132540104828

namespace A029136

/-- `A387209(n)+A059841(n)` -/
def P8007154132540104828.Spec : Prop :=
  ∀ n, P8007154132540104828.a n = A029136 n

end A029136

/-! ## A029136.P13250025396488513365

`A037145(n)-Δ[A026812(n)]`
-/

namespace A029136.P13250025396488513365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n - (f1 (n + 1) - f1 n)

end

end A029136.P13250025396488513365

namespace A029136

/-- `A037145(n)-Δ[A026812(n)]` -/
def P13250025396488513365.Spec : Prop :=
  ∀ n, P13250025396488513365.a n = A029136 n

end A029136

/-! ## A029136.P8004420119657526304

`A008670(n)-A307872(A052938(n))`
-/

namespace A029136.P8004420119657526304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 n - A307872 (A052938 n).toNat

end

end A029136.P8004420119657526304

namespace A029136

/-- `A008670(n)-A307872(A052938(n))` -/
def P8004420119657526304.Spec : Prop :=
  ∀ n, P8004420119657526304.a n = A029136 n

end A029136

/-! ## A029136.P3963440479058252793

`A026812(n)+A037145(n)-A026812(n+1)`
-/

namespace A029136.P3963440479058252793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n + (A037145 n - A026812 (n + 1))

end

end A029136.P3963440479058252793

namespace A029136

/-- `A026812(n)+A037145(n)-A026812(n+1)` -/
def P3963440479058252793.Spec : Prop :=
  ∀ n, P3963440479058252793.a n = A029136 n

end A029136

/-! ## A029136.P14526169953410837158

`A008667(n+1)+A037145(n)-A037145(n+1)`
-/

namespace A029136.P14526169953410837158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (n + 1) + (A037145 n - A037145 (n + 1))

end

end A029136.P14526169953410837158

namespace A029136

/-- `A008667(n+1)+A037145(n)-A037145(n+1)` -/
def P14526169953410837158.Spec : Prop :=
  ∀ n, P14526169953410837158.a n = A029136 n

end A029136

/-! ## A029136.P10274150512804112578

`A029265(2*n)`
-/

namespace A029136.P10274150512804112578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 (2 * n)

end

end A029136.P10274150512804112578

namespace A029136

/-- `A029265(2*n)` -/
def P10274150512804112578.Spec : Prop :=
  ∀ n, P10274150512804112578.a n = A029136 n

end A029136

/-! ## A029136.P5802482839366239537

`A029164(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029136.P5802482839366239537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029164 (2 * n) - a (n - 1)

end

end A029136.P5802482839366239537

namespace A029136

/-- `A029164(2*n)-a(n-1)` -/
def P5802482839366239537.Spec : Prop :=
  ∀ n, P5802482839366239537.a n = A029136 n

end A029136

/-! ## A029136.P8525378285646869434

`A029265(n+n)+A000035(n+n)`
-/

namespace A029136.P8525378285646869434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 (n + n) + A000035 (n + n)

end

end A029136.P8525378285646869434

namespace A029136

/-- `A029265(n+n)+A000035(n+n)` -/
def P8525378285646869434.Spec : Prop :=
  ∀ n, P8525378285646869434.a n = A029136 n

end A029136

/-! ## A029136.P17809328836314227155

`A319988(A046109(n)+1)+A029265(n+n)`
-/

namespace A029136.P17809328836314227155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319988 (A046109 n + 1).toNat + A029265 (n + n)

end

end A029136.P17809328836314227155

namespace A029136

/-- `A319988(A046109(n)+1)+A029265(n+n)` -/
def P17809328836314227155.Spec : Prop :=
  ∀ n, P17809328836314227155.a n = A029136 n

end A029136

/-! ## A029136.P11672810333889356204

`A102683(A007090(n))+A029265(n+n)`
-/

namespace A029136.P11672810333889356204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A007090 n).toNat + A029265 (n + n)

end

end A029136.P11672810333889356204

namespace A029136

/-- `A102683(A007090(n))+A029265(n+n)` -/
def P11672810333889356204.Spec : Prop :=
  ∀ n, P11672810333889356204.a n = A029136 n

end A029136

/-! ## A029136.P8912266610362774304

`A029265(Δ[(n+1)²])/A014963(∑[n+1])`
-/

namespace A029136.P8912266610362774304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029265 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A029136.P8912266610362774304

namespace A029136

/-- `A029265(Δ[(n+1)²])/A014963(∑[n+1])` -/
def P8912266610362774304.Spec : Prop :=
  ∀ n, P8912266610362774304.a n = (A029136 n : ℚ)

end A029136

/-!
# A029137: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^7)).

The programs for A029137, the canonical program `A029137.P7048144239765514684` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029137 has offset 0).

The definition of A029137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029137.P7048144239765514684

`A029033(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029137

/-- `A029033(n)-a(n-1)` -/
def P7048144239765514684.Spec : Prop :=
  ∀ n, P7048144239765514684.a n = A029137 n

theorem P7048144239765514684.correct : P7048144239765514684.Spec := by
  intro n
  simp only [A029137]

end A029137

/-! ## A029137.P16130942725601304851

`A025829(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029137.P16130942725601304851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025829 n + a (n - 2)

end

end A029137.P16130942725601304851

namespace A029137

/-- `A025829(n)+a(n-2)` -/
def P16130942725601304851.Spec : Prop :=
  ∀ n, P16130942725601304851.a n = A029137 n

end A029137

/-! ## A029137.P18185041129455501519

`A025803(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029137.P18185041129455501519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025803 n + a (n - 3)

end

end A029137.P18185041129455501519

namespace A029137

/-- `A025803(n)+a(n-3)` -/
def P18185041129455501519.Spec : Prop :=
  ∀ n, P18185041129455501519.a n = A029137 n

end A029137

/-! ## A029137.P1548399202273805744

`A029150(n)+A029251(n)-A025841(n)`
-/

namespace A029137.P1548399202273805744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029150 n + (A029251 n - A025841 n)

end

end A029137.P1548399202273805744

namespace A029137

/-- `A029150(n)+A029251(n)-A025841(n)` -/
def P1548399202273805744.Spec : Prop :=
  ∀ n, P1548399202273805744.a n = A029137 n

end A029137

/-! ## A029137.P18150077969916246129

`A029347(2*n)`
-/

namespace A029137.P18150077969916246129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029347 (2 * n)

end

end A029137.P18150077969916246129

namespace A029137

/-- `A029347(2*n)` -/
def P18150077969916246129.Spec : Prop :=
  ∀ n, P18150077969916246129.a n = A029137 n

end A029137

/-! ## A029137.P1966413282810703065

`A029214(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029137.P1966413282810703065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029214 (2 * n) - a (n - 1)

end

end A029137.P1966413282810703065

namespace A029137

/-- `A029214(2*n)-a(n-1)` -/
def P1966413282810703065.Spec : Prop :=
  ∀ n, P1966413282810703065.a n = A029137 n

end A029137

/-! ## A029137.P5480386126896469801

`A029120(2*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A029137.P5480386126896469801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029120 (2 * n + 1) - a (n - 1)

end

end A029137.P5480386126896469801

namespace A029137

/-- `A029120(2*n+1)-a(n-1)` -/
def P5480386126896469801.Spec : Prop :=
  ∀ n, P5480386126896469801.a n = A029137 n

end A029137

/-! ## A029137.P2972237685422464621

`A029229(Δ[n²])+A025813(n)`
-/

namespace A029137.P2972237685422464621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A025813 n

end

end A029137.P2972237685422464621

namespace A029137

/-- `A029229(Δ[n²])+A025813(n)` -/
def P2972237685422464621.Spec : Prop :=
  ∀ n, P2972237685422464621.a n = A029137 n

end A029137

/-! ## A029137.P12007282724679201627

`A029362(2*n+1)+A029362(2*n)`
-/

namespace A029137.P12007282724679201627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029362 (2 * n + 1) + A029362 (2 * n)

end

end A029137.P12007282724679201627

namespace A029137

/-- `A029362(2*n+1)+A029362(2*n)` -/
def P12007282724679201627.Spec : Prop :=
  ∀ n, P12007282724679201627.a n = A029137 n

end A029137

/-! ## A029137.P10790857766863205028

`A029414(2*n+1)+A029360(2*n)`
-/

namespace A029137.P10790857766863205028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 (2 * n + 1) + A029360 (2 * n)

end

end A029137.P10790857766863205028

namespace A029137

/-- `A029414(2*n+1)+A029360(2*n)` -/
def P10790857766863205028.Spec : Prop :=
  ∀ n, P10790857766863205028.a n = A029137 n

end A029137

/-! ## A029137.P16907595842249606178

`A025867(2*n)+A029178(2*n)-A029181(2*n)`
-/

namespace A029137.P16907595842249606178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025867 (2 * n) + (A029178 (2 * n) - A029181 (2 * n))

end

end A029137.P16907595842249606178

namespace A029137

/-- `A025867(2*n)+A029178(2*n)-A029181(2*n)` -/
def P16907595842249606178.Spec : Prop :=
  ∀ n, P16907595842249606178.a n = A029137 n

end A029137

/-! ## A029137.P18369735321324731317

`A025897(2*n)+A029181(2*n)-A029214(2*n)`
-/

namespace A029137.P18369735321324731317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (2 * n) + (A029181 (2 * n) - A029214 (2 * n))

end

end A029137.P18369735321324731317

namespace A029137

/-- `A025897(2*n)+A029181(2*n)-A029214(2*n)` -/
def P18369735321324731317.Spec : Prop :=
  ∀ n, P18369735321324731317.a n = A029137 n

end A029137

/-! ## A029137.P7163824599609268794

`A029360(2*n)-(A025909(2*n)-A029414(2*n))`
-/

namespace A029137.P7163824599609268794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029360 (2 * n) - (A025909 (2 * n) - A029414 (2 * n))

end

end A029137.P7163824599609268794

namespace A029137

/-- `A029360(2*n)-(A025909(2*n)-A029414(2*n))` -/
def P7163824599609268794.Spec : Prop :=
  ∀ n, P7163824599609268794.a n = A029137 n

end A029137

/-! ## A029137.P8138549059447950791

`A029229(2*n+1)+A029351(2*n)-A029351(2*n+1)`
-/

namespace A029137.P8138549059447950791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (2 * n + 1) + (A029351 (2 * n) - A029351 (2 * n + 1))

end

end A029137.P8138549059447950791

namespace A029137

/-- `A029229(2*n+1)+A029351(2*n)-A029351(2*n+1)` -/
def P8138549059447950791.Spec : Prop :=
  ∀ n, P8138549059447950791.a n = A029137 n

end A029137

/-! ## A029137.P7237683215402943219

`A029229(2*n+3)+A008622(n)`
-/

namespace A029137.P7237683215402943219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (2 * n + 3) + A008622 n

end

end A029137.P7237683215402943219

namespace A029137

/-- `A029229(2*n+3)+A008622(n)` -/
def P7237683215402943219.Spec : Prop :=
  ∀ n, P7237683215402943219.a n = A029137 n

end A029137

/-! ## A029137.P15291397936058255948

`A029017(n)-A029229(A005818(n+1))`
-/

namespace A029137.P15291397936058255948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029017 n - A029229 (A005818 (n + 1)).toNat

end

end A029137.P15291397936058255948

namespace A029137

/-- `A029017(n)-A029229(A005818(n+1))` -/
def P15291397936058255948.Spec : Prop :=
  ∀ n, P15291397936058255948.a n = A029137 n

end A029137

/-! ## A029137.P15754479555790817047

`A029017(n)-A029229(A020735(n+1))`
-/

namespace A029137.P15754479555790817047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029017 n - A029229 (A020735 (n + 1)).toNat

end

end A029137.P15754479555790817047

namespace A029137

/-- `A029017(n)-A029229(A020735(n+1))` -/
def P15754479555790817047.Spec : Prop :=
  ∀ n, P15754479555790817047.a n = A029137 n

end A029137

/-! ## A029137.P17041669438040908948

`∑[A025803(n)]-A029214(A005818(n+1))`
-/

namespace A029137.P17041669438040908948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029214 (A005818 (n + 1)).toNat

end

end A029137.P17041669438040908948

namespace A029137

/-- `∑[A025803(n)]-A029214(A005818(n+1))` -/
def P17041669438040908948.Spec : Prop :=
  ∀ n, P17041669438040908948.a n = A029137 n

end A029137

/-! ## A029137.P2428527405311118697

`A029229(2*n)-Δ[A029229(A267872(n+1))]`
-/

namespace A029137.P2428527405311118697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (A267872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (2 * n) - (f1 (n + 1) - f1 n)

end

end A029137.P2428527405311118697

namespace A029137

/-- `A029229(2*n)-Δ[A029229(A267872(n+1))]` -/
def P2428527405311118697.Spec : Prop :=
  ∀ n, P2428527405311118697.a n = A029137 n

end A029137

/-! ## A029137.P2483772779249286666

`A029419(3*n)`
-/

namespace A029137.P2483772779249286666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029419 (3 * n)

end

end A029137.P2483772779249286666

namespace A029137

/-- `A029419(3*n)` -/
def P2483772779249286666.Spec : Prop :=
  ∀ n, P2483772779249286666.a n = A029137 n

end A029137

/-!
# A029138: Expansion of 1/((1-x^2)(1-x^3)(1-x^4)(1-x^8)).

The programs for A029138, the canonical program `A029138.P17947836681290005128` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029138 has offset 0).

The definition of A029138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029138.P17947836681290005128

`A029034(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029138

/-- `A029034(n)-a(n-1)` -/
def P17947836681290005128.Spec : Prop :=
  ∀ n, P17947836681290005128.a n = A029138 n

theorem P17947836681290005128.correct : P17947836681290005128.Spec := by
  intro n
  simp only [A029138]

end A029138

/-! ## A029138.P4761210462478112547

`A025830(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029138.P4761210462478112547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025830 n + a (n - 2)

end

end A029138.P4761210462478112547

namespace A029138

/-- `A025830(n)+a(n-2)` -/
def P4761210462478112547.Spec : Prop :=
  ∀ n, P4761210462478112547.a n = A029138 n

end A029138

/-! ## A029138.P468414873034434648

`A026810(ceil(xor(1, n)/2)+3)`
-/

namespace A029138.P468414873034434648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (⌈(Nat.xor 1 n : ℚ) / 2⌉ + 3).toNat

end

end A029138.P468414873034434648

namespace A029138

/-- `A026810(ceil(xor(1, n)/2)+3)` -/
def P468414873034434648.Spec : Prop :=
  ∀ n, P468414873034434648.a n = A029138 n

end A029138

/-! ## A029138.P16232785270603442903

`A026810(A028242(n)+3)`
-/

namespace A029138.P16232785270603442903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A028242 n + 3).toNat

end

end A029138.P16232785270603442903

namespace A029138

/-- `A026810(A028242(n)+3)` -/
def P16232785270603442903.Spec : Prop :=
  ∀ n, P16232785270603442903.a n = A029138 n

end A029138

/-! ## A029138.P1743297677529428859

`A026810(A052938(n+1)+1)`
-/

namespace A029138.P1743297677529428859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A052938 (n + 1) + 1).toNat

end

end A029138.P1743297677529428859

namespace A029138

/-- `A026810(A052938(n+1)+1)` -/
def P1743297677529428859.Spec : Prop :=
  ∀ n, P1743297677529428859.a n = A029138 n

end A029138

/-! ## A029138.P9439337080934362505

`A026810(A060762(n+2))`
-/

namespace A029138.P9439337080934362505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A060762 (n + 2)).toNat

end

end A029138.P9439337080934362505

namespace A029138

/-- `A026810(A060762(n+2))` -/
def P9439337080934362505.Spec : Prop :=
  ∀ n, P9439337080934362505.a n = A029138 n

end A029138

/-! ## A029138.P13078669919171354096

`A026810(A052938(n+3))`
-/

namespace A029138.P13078669919171354096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A052938 (n + 3)).toNat

end

end A029138.P13078669919171354096

namespace A029138

/-- `A026810(A052938(n+3))` -/
def P13078669919171354096.Spec : Prop :=
  ∀ n, P13078669919171354096.a n = A029138 n

end A029138

/-! ## A029138.P14797239879401082381

`A029253(floor(3*n/2))`
-/

namespace A029138.P14797239879401082381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 ⌊3 * ((n : ℚ) / 2)⌋.toNat

end

end A029138.P14797239879401082381

namespace A029138

/-- `A029253(floor(3*n/2))` -/
def P14797239879401082381.Spec : Prop :=
  ∀ n, P14797239879401082381.a n = A029138 n

end A029138

/-! ## A029138.P1918125096178210165

`A029167(A032766(n))`
-/

namespace A029138.P1918125096178210165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (A032766 n).toNat

end

end A029138.P1918125096178210165

namespace A029138

/-- `A029167(A032766(n))` -/
def P1918125096178210165.Spec : Prop :=
  ∀ n, P1918125096178210165.a n = A029138 n

end A029138

/-! ## A029138.P2723607998699615269

`A029167(A166517(n))`
-/

namespace A029138.P2723607998699615269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (A166517 n).toNat

end

end A029138.P2723607998699615269

namespace A029138

/-- `A029167(A166517(n))` -/
def P2723607998699615269.Spec : Prop :=
  ∀ n, P2723607998699615269.a n = A029138 n

end A029138

/-! ## A029138.P467969325102066891

`A029167((A136320(n)+1)/2)`
-/

namespace A029138.P467969325102066891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (SequenceMachineLib.roundAway ((A136320 n + 1 : ℚ) / 2)).toNat

end

end A029138.P467969325102066891

namespace A029138

/-- `A029167((A136320(n)+1)/2)` -/
def P467969325102066891.Spec : Prop :=
  ∀ n, P467969325102066891.a n = A029138 n

end A029138

/-! ## A029138.P4767315048711499292

`A288165(A168411(n+1)+n-A004767(n))`
-/

namespace A029138.P4767315048711499292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A168411 (n + 1) + ((n : ℤ) - A004767 n)).toNat

end

end A029138.P4767315048711499292

namespace A029138

/-- `A288165(A168411(n+1)+n-A004767(n))` -/
def P4767315048711499292.Spec : Prop :=
  ∀ n, P4767315048711499292.a n = A029138 n

end A029138

/-! ## A029138.P7677784479942395187

`A288165(A168195(n+1)+n-A028242(n))`
-/

namespace A029138.P7677784479942395187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A168195 (n + 1) + ((n : ℤ) - A028242 n)).toNat

end

end A029138.P7677784479942395187

namespace A029138

/-- `A288165(A168195(n+1)+n-A028242(n))` -/
def P7677784479942395187.Spec : Prop :=
  ∀ n, P7677784479942395187.a n = A029138 n

end A029138

/-! ## A029138.P686334049907480359

`A288165(A001651(n+3))`
-/

namespace A029138.P686334049907480359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A001651 (n + 3)).toNat

end

end A029138.P686334049907480359

namespace A029138

/-- `A288165(A001651(n+3))` -/
def P686334049907480359.Spec : Prop :=
  ∀ n, P686334049907480359.a n = A029138 n

end A029138

/-! ## A029138.P6739009680619701548

`A288165(A008619(n)+n+3)`
-/

namespace A029138.P6739009680619701548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A008619 n + (n + 3 : ℤ)).toNat

end

end A029138.P6739009680619701548

namespace A029138

/-- `A288165(A008619(n)+n+3)` -/
def P6739009680619701548.Spec : Prop :=
  ∀ n, P6739009680619701548.a n = A029138 n

end A029138

/-! ## A029138.P12840414182500291529

`A029425(3*n)`
-/

namespace A029138.P12840414182500291529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 (3 * n)

end

end A029138.P12840414182500291529

namespace A029138

/-- `A029425(3*n)` -/
def P12840414182500291529.Spec : Prop :=
  ∀ n, P12840414182500291529.a n = A029138 n

end A029138

/-!
# A029139: Expansion of 1/((1-x^2)(1-x^3)(1-x^4)(1-x^9)).

The programs for A029139, the canonical program `A029139.P14340650104495804196` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029139 has offset 0).

The definition of A029139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029139.P14340650104495804196

`A029035(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029139

/-- `A029035(n)-a(n-1)` -/
def P14340650104495804196.Spec : Prop :=
  ∀ n, P14340650104495804196.a n = A029139 n

theorem P14340650104495804196.correct : P14340650104495804196.Spec := by
  intro n
  simp only [A029139]

end A029139

/-! ## A029139.P13836759932194078443

`A025831(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029139.P13836759932194078443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025831 n + a (n - 2)

end

end A029139.P13836759932194078443

namespace A029139

/-- `A025831(n)+a(n-2)` -/
def P13836759932194078443.Spec : Prop :=
  ∀ n, P13836759932194078443.a n = A029139 n

end A029139

/-! ## A029139.P16263011241377605918

`A025804(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029139.P16263011241377605918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025804 n + a (n - 3)

end

end A029139.P16263011241377605918

namespace A029139

/-- `A025804(n)+a(n-3)` -/
def P16263011241377605918.Spec : Prop :=
  ∀ n, P16263011241377605918.a n = A029139 n

end A029139

/-! ## A029139.P10807633682061668307

`A025798(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A029139.P10807633682061668307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  A025798 n + a (n - 4)

end

end A029139.P10807633682061668307

namespace A029139

/-- `A025798(n)+a(n-4)` -/
def P10807633682061668307.Spec : Prop :=
  ∀ n, P10807633682061668307.a n = A029139 n

end A029139

/-! ## A029139.P16858488912982620644

`A288165(n)+A029152(n)`
-/

namespace A029139.P16858488912982620644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 n + A029152 n

end

end A029139.P16858488912982620644

namespace A029139

/-- `A288165(n)+A029152(n)` -/
def P16858488912982620644.Spec : Prop :=
  ∀ n, P16858488912982620644.a n = A029139 n

end A029139

/-! ## A029139.P5064006345473466579

`A029352(2*n)`
-/

namespace A029139.P5064006345473466579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029352 (2 * n)

end

end A029139.P5064006345473466579

namespace A029139

/-- `A029352(2*n)` -/
def P5064006345473466579.Spec : Prop :=
  ∀ n, P5064006345473466579.a n = A029139 n

end A029139

/-! ## A029139.P9847128504104055200

`A029219(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029139.P9847128504104055200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029219 (2 * n) - a (n - 1)

end

end A029139.P9847128504104055200

namespace A029139

/-- `A029219(2*n)-a(n-1)` -/
def P9847128504104055200.Spec : Prop :=
  ∀ n, P9847128504104055200.a n = A029139 n

end A029139

/-! ## A029139.P9435887568134501775

`abs(a(n-1)-A029219(A005843(n)))` with `a(0)=1`
-/

namespace A029139.P9435887568134501775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A029219 (A005843 n).toNat|

end

end A029139.P9435887568134501775

namespace A029139

/-- `abs(a(n-1)-A029219(A005843(n)))` -/
def P9435887568134501775.Spec : Prop :=
  ∀ n, P9435887568134501775.a n = A029139 n

end A029139

/-! ## A029139.P2457089449995785109

`A029425(2*n+1)+A029356(2*n)`
-/

namespace A029139.P2457089449995785109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 (2 * n + 1) + A029356 (2 * n)

end

end A029139.P2457089449995785109

namespace A029139

/-- `A029425(2*n+1)+A029356(2*n)` -/
def P2457089449995785109.Spec : Prop :=
  ∀ n, P2457089449995785109.a n = A029139 n

end A029139

/-! ## A029139.P14873035532038366913

`A029238(2*n)-A025920(abs(A023444(2*n)))`
-/

namespace A029139.P14873035532038366913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (2 * n) - A025920 |A023444 (2 * n)|.toNat

end

end A029139.P14873035532038366913

namespace A029139

/-- `A029238(2*n)-A025920(abs(A023444(2*n)))` -/
def P14873035532038366913.Spec : Prop :=
  ∀ n, P14873035532038366913.a n = A029139 n

end A029139

/-! ## A029139.P6619745487507976576

`A025920(2*n)+A029190(2*n)-A029238(2*n)`
-/

namespace A029139.P6619745487507976576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 (2 * n) + (A029190 (2 * n) - A029238 (2 * n))

end

end A029139.P6619745487507976576

namespace A029139

/-- `A025920(2*n)+A029190(2*n)-A029238(2*n)` -/
def P6619745487507976576.Spec : Prop :=
  ∀ n, P6619745487507976576.a n = A029139 n

end A029139

/-! ## A029139.P13627229076545011076

`A029190(2*n)+A029425(2*n)-A029223(2*n)`
-/

namespace A029139.P13627229076545011076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 (2 * n) + (A029425 (2 * n) - A029223 (2 * n))

end

end A029139.P13627229076545011076

namespace A029139

/-- `A029190(2*n)+A029425(2*n)-A029223(2*n)` -/
def P13627229076545011076.Spec : Prop :=
  ∀ n, P13627229076545011076.a n = A029139 n

end A029139

/-! ## A029139.P5925904979505668284

`A029371(2*n+3)+A029371(2*n)`
-/

namespace A029139.P5925904979505668284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029371 (2 * n + 3) + A029371 (2 * n)

end

end A029139.P5925904979505668284

namespace A029139

/-- `A029371(2*n+3)+A029371(2*n)` -/
def P5925904979505668284.Spec : Prop :=
  ∀ n, P5925904979505668284.a n = A029139 n

end A029139

/-! ## A029139.P17059904377732733651

`A029238(record[A165754(n)])+A025814(n)`
-/

namespace A029139.P17059904377732733651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A025814 n

end

end A029139.P17059904377732733651

namespace A029139

/-- `A029238(record[A165754(n)])+A025814(n)` -/
def P17059904377732733651.Spec : Prop :=
  ∀ n, P17059904377732733651.a n = A029139 n

end A029139

/-! ## A029139.P12124051578724635302

`A029238(A165754(2*n))+A025814(n)`
-/

namespace A029139.P12124051578724635302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A165754 (2 * n)).toNat + A025814 n

end

end A029139.P12124051578724635302

namespace A029139

/-- `A029238(A165754(2*n))+A025814(n)` -/
def P12124051578724635302.Spec : Prop :=
  ∀ n, P12124051578724635302.a n = A029139 n

end A029139

/-! ## A029139.P15296957998716673544

`A029238(2*n)-A025920(2*n+7)`
-/

namespace A029139.P15296957998716673544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (2 * n) - A025920 (2 * n + 7)

end

end A029139.P15296957998716673544

namespace A029139

/-- `A029238(2*n)-A025920(2*n+7)` -/
def P15296957998716673544.Spec : Prop :=
  ∀ n, P15296957998716673544.a n = A029139 n

end A029139

/-! ## A029139.P14573928911965195765

`A029238(2*n)-Δ[A029238(2*n+5)]`
-/

namespace A029139.P14573928911965195765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (2 * n) - (f1 (n + 1) - f1 n)

end

end A029139.P14573928911965195765

namespace A029139

/-- `A029238(2*n)-Δ[A029238(2*n+5)]` -/
def P14573928911965195765.Spec : Prop :=
  ∀ n, P14573928911965195765.a n = A029139 n

end A029139

/-!
# A029140: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^10)).

The programs for A029140, the canonical program `A029140.P7619574260066122741` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029140 has offset 0).

The definition of A029140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029140.P7619574260066122741

`A029036(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029140

/-- `A029036(n)-a(n-1)` -/
def P7619574260066122741.Spec : Prop :=
  ∀ n, P7619574260066122741.a n = A029140 n

theorem P7619574260066122741.correct : P7619574260066122741.Spec := by
  intro n
  simp only [A029140]

end A029140

/-! ## A029140.P6276027997889681282

`A025832(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029140.P6276027997889681282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025832 n + a (n - 2)

end

end A029140.P6276027997889681282

namespace A029140

/-- `A025832(n)+a(n-2)` -/
def P6276027997889681282.Spec : Prop :=
  ∀ n, P6276027997889681282.a n = A029140 n

end A029140

/-! ## A029140.P11527795810347277339

`A029145(n+1)-Δ[A029162(n)]`
-/

namespace A029140.P11527795810347277339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029145 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029140.P11527795810347277339

namespace A029140

/-- `A029145(n+1)-Δ[A029162(n)]` -/
def P11527795810347277339.Spec : Prop :=
  ∀ n, P11527795810347277339.a n = A029140 n

end A029140

/-! ## A029140.P10477396929217561581

`A029171(xor(1, n+1))`
-/

namespace A029140.P10477396929217561581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029171 (Nat.xor 1 (n + 1))

end

end A029140.P10477396929217561581

namespace A029140

/-- `A029171(xor(1, n+1))` -/
def P10477396929217561581.Spec : Prop :=
  ∀ n, P10477396929217561581.a n = A029140 n

end A029140

/-! ## A029140.P8261684356407752913

`A029171(n+1-(-1)^n)`
-/

namespace A029140.P8261684356407752913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029171 ((n + 1 : ℤ) - (-1) ^ n).toNat

end

end A029140.P8261684356407752913

namespace A029140

/-- `A029171(n+1-(-1)^n)` -/
def P8261684356407752913.Spec : Prop :=
  ∀ n, P8261684356407752913.a n = A029140 n

end A029140

/-! ## A029140.P4743245250126517727

`Δ[A309831(n+9)]`
-/

namespace A029140.P4743245250126517727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309831 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029140.P4743245250126517727

namespace A029140

/-- `Δ[A309831(n+9)]` -/
def P4743245250126517727.Spec : Prop :=
  ∀ n, P4743245250126517727.a n = A029140 n

end A029140

/-! ## A029140.P1857298961984828486

`A029274(∑[and(1, n)]+n)`
-/

namespace A029140.P1857298961984828486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A029140.P1857298961984828486

namespace A029140

/-- `A029274(∑[and(1, n)]+n)` -/
def P1857298961984828486.Spec : Prop :=
  ∀ n, P1857298961984828486.a n = A029140 n

end A029140

/-! ## A029140.P14048670605686404341

`A029274(A007494(n))`
-/

namespace A029140.P14048670605686404341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (A007494 n).toNat

end

end A029140.P14048670605686404341

namespace A029140

/-- `A029274(A007494(n))` -/
def P14048670605686404341.Spec : Prop :=
  ∀ n, P14048670605686404341.a n = A029140 n

end A029140

/-! ## A029140.P9136701178659305110

`A029274(record[A064429(n)])`
-/

namespace A029140.P9136701178659305110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029140.P9136701178659305110

namespace A029140

/-- `A029274(record[A064429(n)])` -/
def P9136701178659305110.Spec : Prop :=
  ∀ n, P9136701178659305110.a n = A029140 n

end A029140

/-! ## A029140.P2617447119294993700

`A029274(∑[A000034(n)]-1)`
-/

namespace A029140.P2617447119294993700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A029140.P2617447119294993700

namespace A029140

/-- `A029274(∑[A000034(n)]-1)` -/
def P2617447119294993700.Spec : Prop :=
  ∀ n, P2617447119294993700.a n = A029140 n

end A029140

/-! ## A029140.P14657287757922442296

`A029274(record[A061800(n)-1])`
-/

namespace A029140.P14657287757922442296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029140.P14657287757922442296

namespace A029140

/-- `A029274(record[A061800(n)-1])` -/
def P14657287757922442296.Spec : Prop :=
  ∀ n, P14657287757922442296.a n = A029140 n

end A029140

/-! ## A029140.P16109704914111168736

`A029274(A032766(n+1)-1)`
-/

namespace A029140.P16109704914111168736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (A032766 (n + 1) - 1).toNat

end

end A029140.P16109704914111168736

namespace A029140

/-- `A029274(A032766(n+1)-1)` -/
def P16109704914111168736.Spec : Prop :=
  ∀ n, P16109704914111168736.a n = A029140 n

end A029140

/-! ## A029140.P1509321032348944172

`A029274(A001651(n+2)-2)`
-/

namespace A029140.P1509321032348944172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (A001651 (n + 2) - 2).toNat

end

end A029140.P1509321032348944172

namespace A029140

/-- `A029274(A001651(n+2)-2)` -/
def P1509321032348944172.Spec : Prop :=
  ∀ n, P1509321032348944172.a n = A029140 n

end A029140

/-! ## A029140.P4903777466025464851

`A029274(A004526(n+1)+n)`
-/

namespace A029140.P4903777466025464851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (A004526 (n + 1) + (n : ℤ)).toNat

end

end A029140.P4903777466025464851

namespace A029140

/-- `A029274(A004526(n+1)+n)` -/
def P4903777466025464851.Spec : Prop :=
  ∀ n, P4903777466025464851.a n = A029140 n

end A029140

/-! ## A029140.P12772064972166239817

`A029274(2*n-A004526(n))`
-/

namespace A029140.P12772064972166239817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 ((2 * n : ℤ) - A004526 n).toNat

end

end A029140.P12772064972166239817

namespace A029140

/-- `A029274(2*n-A004526(n))` -/
def P12772064972166239817.Spec : Prop :=
  ∀ n, P12772064972166239817.a n = A029140 n

end A029140

/-! ## A029140.P12121821460453993668

`A029274(n-(A004526(n)-n))`
-/

namespace A029140.P12121821460453993668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 ((n : ℤ) - (A004526 n - (n : ℤ))).toNat

end

end A029140.P12121821460453993668

namespace A029140

/-- `A029274(n-(A004526(n)-n))` -/
def P12121821460453993668.Spec : Prop :=
  ∀ n, P12121821460453993668.a n = A029140 n

end A029140

/-! ## A029140.P2137253060774975886

`A029274(A168202(n+1))`
-/

namespace A029140.P2137253060774975886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (A168202 (n + 1)).toNat

end

end A029140.P2137253060774975886

namespace A029140

/-- `A029274(A168202(n+1))` -/
def P2137253060774975886.Spec : Prop :=
  ∀ n, P2137253060774975886.a n = A029140 n

end A029140

/-! ## A029140.P10373592280317291918

`A029274(A168197(n+1))`
-/

namespace A029140.P10373592280317291918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (A168197 (n + 1)).toNat

end

end A029140.P10373592280317291918

namespace A029140

/-- `A029274(A168197(n+1))` -/
def P10373592280317291918.Spec : Prop :=
  ∀ n, P10373592280317291918.a n = A029140 n

end A029140

/-! ## A029140.P15840299874950590409

`A029340(A042948(n))`
-/

namespace A029140.P15840299874950590409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029340 (A042948 n).toNat

end

end A029140.P15840299874950590409

namespace A029140

/-- `A029340(A042948(n))` -/
def P15840299874950590409.Spec : Prop :=
  ∀ n, P15840299874950590409.a n = A029140 n

end A029140

/-! ## A029140.P19094774823498844

`A029340(A142954(n+2))`
-/

namespace A029140.P19094774823498844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029340 (A142954 (n + 2)).toNat

end

end A029140.P19094774823498844

namespace A029140

/-- `A029340(A142954(n+2))` -/
def P19094774823498844.Spec : Prop :=
  ∀ n, P19094774823498844.a n = A029140 n

end A029140

/-!
# A029141: Expansion of 1/((1-x^2)(1-x^3)(1-x^4)(1-x^11)).

The programs for A029141, the canonical program `A029141.P18405955012558555081` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029141 has offset 0).

The definition of A029141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029141.P18405955012558555081

`A029037(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029141

/-- `A029037(n)-a(n-1)` -/
def P18405955012558555081.Spec : Prop :=
  ∀ n, P18405955012558555081.a n = A029141 n

theorem P18405955012558555081.correct : P18405955012558555081.Spec := by
  intro n
  simp only [A029141]

end A029141

/-! ## A029141.P6140344133675228709

`A025833(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029141.P6140344133675228709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025833 n + a (n - 2)

end

end A029141.P6140344133675228709

namespace A029141

/-- `A025833(n)+a(n-2)` -/
def P6140344133675228709.Spec : Prop :=
  ∀ n, P6140344133675228709.a n = A029141 n

end A029141

/-! ## A029141.P16631928690458139065

`A025805(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029141.P16631928690458139065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025805 n + a (n - 3)

end

end A029141.P16631928690458139065

namespace A029141

/-- `A025805(n)+a(n-3)` -/
def P16631928690458139065.Spec : Prop :=
  ∀ n, P16631928690458139065.a n = A029141 n

end A029141

/-! ## A029141.P5590900732120432766

`A029056(n)-A025822(abs(A023443(n)))`
-/

namespace A029141.P5590900732120432766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029056 n - A025822 |A023443 n|.toNat

end

end A029141.P5590900732120432766

namespace A029141

/-- `A029056(n)-A025822(abs(A023443(n)))` -/
def P5590900732120432766.Spec : Prop :=
  ∀ n, P5590900732120432766.a n = A029141 n

end A029141

/-! ## A029141.P12585706941198579337

`A029072(n)-A025866(abs(A023443(n)))`
-/

namespace A029141.P12585706941198579337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 n - A025866 |A023443 n|.toNat

end

end A029141.P12585706941198579337

namespace A029141

/-- `A029072(n)-A025866(abs(A023443(n)))` -/
def P12585706941198579337.Spec : Prop :=
  ∀ n, P12585706941198579337.a n = A029141 n

end A029141

/-! ## A029141.P4458200663505124686

`A025822(n)+A029056(n)-A025790(n)`
-/

namespace A029141.P4458200663505124686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 n + (A029056 n - A025790 n)

end

end A029141.P4458200663505124686

namespace A029141

/-- `A025822(n)+A029056(n)-A025790(n)` -/
def P4458200663505124686.Spec : Prop :=
  ∀ n, P4458200663505124686.a n = A029141 n

end A029141

/-! ## A029141.P5683852249526186737

`A029353(2*n)`
-/

namespace A029141.P5683852249526186737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029353 (2 * n)

end

end A029141.P5683852249526186737

namespace A029141

/-- `A029353(2*n)` -/
def P5683852249526186737.Spec : Prop :=
  ∀ n, P5683852249526186737.a n = A029141 n

end A029141

/-! ## A029141.P14556179595364462096

`A029220(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029141.P14556179595364462096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029220 (2 * n) - a (n - 1)

end

end A029141.P14556179595364462096

namespace A029141

/-- `A029220(2*n)-a(n-1)` -/
def P14556179595364462096.Spec : Prop :=
  ∀ n, P14556179595364462096.a n = A029141 n

end A029141

/-! ## A029141.P12509547573432214477

`A025875(2*n)+A029220(2*n)-A029240(2*n)`
-/

namespace A029141.P12509547573432214477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (2 * n) + (A029220 (2 * n) - A029240 (2 * n))

end

end A029141.P12509547573432214477

namespace A029141

/-- `A025875(2*n)+A029220(2*n)-A029240(2*n)` -/
def P12509547573432214477.Spec : Prop :=
  ∀ n, P12509547573432214477.a n = A029141 n

end A029141

/-! ## A029141.P14920994359277468874

`A025873(2*n)+A029327(2*n)-A029339(2*n)`
-/

namespace A029141.P14920994359277468874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025873 (2 * n) + (A029327 (2 * n) - A029339 (2 * n))

end

end A029141.P14920994359277468874

namespace A029141

/-- `A025873(2*n)+A029327(2*n)-A029339(2*n)` -/
def P14920994359277468874.Spec : Prop :=
  ∀ n, P14920994359277468874.a n = A029141 n

end A029141

/-! ## A029141.P10978659601466104047

`A029372(2*n)+A029384(2*n)-A029406(2*n)`
-/

namespace A029141.P10978659601466104047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 (2 * n) + (A029384 (2 * n) - A029406 (2 * n))

end

end A029141.P10978659601466104047

namespace A029141

/-- `A029372(2*n)+A029384(2*n)-A029406(2*n)` -/
def P10978659601466104047.Spec : Prop :=
  ∀ n, P10978659601466104047.a n = A029141 n

end A029141

/-! ## A029141.P2732278608685771190

`A029240(2*n)-Δ[A029240(2*n+7)]`
-/

namespace A029141.P2732278608685771190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n) - (f1 (n + 1) - f1 n)

end

end A029141.P2732278608685771190

namespace A029141

/-- `A029240(2*n)-Δ[A029240(2*n+7)]` -/
def P2732278608685771190.Spec : Prop :=
  ∀ n, P2732278608685771190.a n = A029141 n

end A029141

/-! ## A029141.P7990052975119147811

`A029430(3*n)`
-/

namespace A029141.P7990052975119147811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029430 (3 * n)

end

end A029141.P7990052975119147811

namespace A029141

/-- `A029430(3*n)` -/
def P7990052975119147811.Spec : Prop :=
  ∀ n, P7990052975119147811.a n = A029141 n

end A029141

/-!
# A029142: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^12)).

The programs for A029142, the canonical program `A029142.P12447840997050375461` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029142 has offset 0).

The definition of A029142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029142.P12447840997050375461

`A029038(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029142

/-- `A029038(n)-a(n-1)` -/
def P12447840997050375461.Spec : Prop :=
  ∀ n, P12447840997050375461.a n = A029142 n

theorem P12447840997050375461.correct : P12447840997050375461.Spec := by
  intro n
  simp only [A029142]

end A029142

/-! ## A029142.P15871589130064205959

`A025834(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029142.P15871589130064205959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025834 n + a (n - 2)

end

end A029142.P15871589130064205959

namespace A029142

/-- `A025834(n)+a(n-2)` -/
def P15871589130064205959.Spec : Prop :=
  ∀ n, P15871589130064205959.a n = A029142 n

end A029142

/-! ## A029142.P884399327652177722

`abs(∑[A029038(n)*A033999(n)])`
-/

namespace A029142.P884399327652177722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029038 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029142.P884399327652177722

namespace A029142

/-- `abs(∑[A029038(n)*A033999(n)])` -/
def P884399327652177722.Spec : Prop :=
  ∀ n, P884399327652177722.a n = A029142 n

end A029142

/-! ## A029142.P13810802644732774125

`A008719(n)-A025796(A057979(n))`
-/

namespace A029142.P13810802644732774125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008719 n - A025796 (A057979 n).toNat

end

end A029142.P13810802644732774125

namespace A029142

/-- `A008719(n)-A025796(A057979(n))` -/
def P13810802644732774125.Spec : Prop :=
  ∀ n, P13810802644732774125.a n = A029142 n

end A029142

/-! ## A029142.P13617628251547434328

`A029044(n)-A029177(abs(A024000(n)))`
-/

namespace A029142.P13617628251547434328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029044 n - A029177 |A024000 n|.toNat

end

end A029142.P13617628251547434328

namespace A029142

/-- `A029044(n)-A029177(abs(A024000(n)))` -/
def P13617628251547434328.Spec : Prop :=
  ∀ n, P13617628251547434328.a n = A029142 n

end A029142

/-! ## A029142.P6627654090435385125

`A029177(n)+A029250(n)-A025864(n)`
-/

namespace A029142.P6627654090435385125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029177 n + (A029250 n - A025864 n)

end

end A029142.P6627654090435385125

namespace A029142

/-- `A029177(n)+A029250(n)-A025864(n)` -/
def P6627654090435385125.Spec : Prop :=
  ∀ n, P6627654090435385125.a n = A029142 n

end A029142

/-! ## A029142.P7901785246314056267

`A029000(A028242(n))-A025796(A028242(n))`
-/

namespace A029142.P7901785246314056267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029000 (A028242 n).toNat - A025796 (A028242 n).toNat

end

end A029142.P7901785246314056267

namespace A029142

/-- `A029000(A028242(n))-A025796(A028242(n))` -/
def P7901785246314056267.Spec : Prop :=
  ∀ n, P7901785246314056267.a n = A029142 n

end A029142

/-! ## A029142.P2683705504664757419

`A029000(A004526(n))-A025796(A057979(n))`
-/

namespace A029142.P2683705504664757419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029000 (A004526 n).toNat - A025796 (A057979 n).toNat

end

end A029142.P2683705504664757419

namespace A029142

/-- `A029000(A004526(n))-A025796(A057979(n))` -/
def P2683705504664757419.Spec : Prop :=
  ∀ n, P2683705504664757419.a n = A029142 n

end A029142

/-! ## A029142.P10655637889853258896

`A029057(A052928(n))-A025796(A057979(n))`
-/

namespace A029142.P10655637889853258896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 (A052928 n).toNat - A025796 (A057979 n).toNat

end

end A029142.P10655637889853258896

namespace A029142

/-- `A029057(A052928(n))-A025796(A057979(n))` -/
def P10655637889853258896.Spec : Prop :=
  ∀ n, P10655637889853258896.a n = A029142 n

end A029142

/-! ## A029142.P14983635331070480617

`A029000(A123108(n))-A025796(A057979(n))`
-/

namespace A029142.P14983635331070480617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029000 (A123108 n).toNat - A025796 (A057979 n).toNat

end

end A029142.P14983635331070480617

namespace A029142

/-- `A029000(A123108(n))-A025796(A057979(n))` -/
def P14983635331070480617.Spec : Prop :=
  ∀ n, P14983635331070480617.a n = A029142 n

end A029142

/-!
# A029143: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^6)). Molien series for u.g.g.r. #31 of order 46080. Poincaré series [or Poincare series] for ring of even weight Siegel modular forms of genus 2.

The programs for A029143, the canonical program `A029143.P15609554736967013213` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029143 has offset 0).

The definition of A029143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029143.P15609554736967013213

`A029039(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029143

/-- `A029039(n)-a(n-1)` -/
def P15609554736967013213.Spec : Prop :=
  ∀ n, P15609554736967013213.a n = A029143 n

theorem P15609554736967013213.correct : P15609554736967013213.Spec := by
  intro n
  simp only [A029143]

end A029143

/-! ## A029143.P14730108477072114231

`A025835(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029143.P14730108477072114231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025835 n + a (n - 2)

end

end A029143.P14730108477072114231

namespace A029143

/-- `A025835(n)+a(n-2)` -/
def P14730108477072114231.Spec : Prop :=
  ∀ n, P14730108477072114231.a n = A029143 n

end A029143

/-! ## A029143.P3325389164461422308

`A025806(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029143.P3325389164461422308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025806 n + a (n - 3)

end

end A029143.P3325389164461422308

namespace A029143

/-- `A025806(n)+a(n-3)` -/
def P3325389164461422308.Spec : Prop :=
  ∀ n, P3325389164461422308.a n = A029143 n

end A029143

/-! ## A029143.P3182014936137383153

`A027634(n)-A352095(n)`
-/

namespace A029143.P3182014936137383153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027634 n - A352095 n

end

end A029143.P3182014936137383153

namespace A029143

/-- `A027634(n)-A352095(n)` -/
def P3182014936137383153.Spec : Prop :=
  ∀ n, P3182014936137383153.a n = A029143 n

end A029143

/-! ## A029143.P10508145391566088868

`A008669(n)-∑[A000217(A008615(n+1))]`
-/

namespace A029143.P10508145391566088868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029143.P10508145391566088868

namespace A029143

/-- `A008669(n)-∑[A000217(A008615(n+1))]` -/
def P10508145391566088868.Spec : Prop :=
  ∀ n, P10508145391566088868.a n = A029143 n

end A029143

/-! ## A029143.P13945452379444672350

`Δ[A091498(n)-A001402(n)]`
-/

namespace A029143.P13945452379444672350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091498 n - A001402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029143.P13945452379444672350

namespace A029143

/-- `Δ[A091498(n)-A001402(n)]` -/
def P13945452379444672350.Spec : Prop :=
  ∀ n, P13945452379444672350.a n = A029143 n

end A029143

/-! ## A029143.P15362465312008054068

`Δ[A091498(n)-∑[A037145(n)]]`
-/

namespace A029143.P15362465312008054068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091498 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029143.P15362465312008054068

namespace A029143

/-- `Δ[A091498(n)-∑[A037145(n)]]` -/
def P15362465312008054068.Spec : Prop :=
  ∀ n, P15362465312008054068.a n = A029143 n

end A029143

/-! ## A029143.P17819874527718757300

`A037145(n)-Δ[A026812(n+1)]`
-/

namespace A029143.P17819874527718757300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n - (f1 (n + 1) - f1 n)

end

end A029143.P17819874527718757300

namespace A029143

/-- `A037145(n)-Δ[A026812(n+1)]` -/
def P17819874527718757300.Spec : Prop :=
  ∀ n, P17819874527718757300.a n = A029143 n

end A029143

/-! ## A029143.P7575463143135835599

`Δ[A091498(n)]-A037145(n+1)`
-/

namespace A029143.P7575463143135835599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A037145 (n + 1)

end

end A029143.P7575463143135835599

namespace A029143

/-- `Δ[A091498(n)]-A037145(n+1)` -/
def P7575463143135835599.Spec : Prop :=
  ∀ n, P7575463143135835599.a n = A029143 n

end A029143

/-! ## A029143.P1424385054944833257

`Δ[A091498(n)-A026812(n+6)]`
-/

namespace A029143.P1424385054944833257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091498 n - A026812 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029143.P1424385054944833257

namespace A029143

/-- `Δ[A091498(n)-A026812(n+6)]` -/
def P1424385054944833257.Spec : Prop :=
  ∀ n, P1424385054944833257.a n = A029143 n

end A029143

/-! ## A029143.P12408673967296642503

`A027640(2*n)`
-/

namespace A029143.P12408673967296642503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027640 (2 * n)

end

end A029143.P12408673967296642503

namespace A029143

/-- `A027640(2*n)` -/
def P12408673967296642503.Spec : Prop :=
  ∀ n, P12408673967296642503.a n = A029143 n

end A029143

/-! ## A029143.P13767781645527611443

`A029270(2*n)`
-/

namespace A029143.P13767781645527611443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029270 (2 * n)

end

end A029143.P13767781645527611443

namespace A029143

/-- `A029270(2*n)` -/
def P13767781645527611443.Spec : Prop :=
  ∀ n, P13767781645527611443.a n = A029143 n

end A029143

/-! ## A029143.P11112009325800632375

`A029331(2*n)`
-/

namespace A029143.P11112009325800632375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (2 * n)

end

end A029143.P11112009325800632375

namespace A029143

/-- `A029331(2*n)` -/
def P11112009325800632375.Spec : Prop :=
  ∀ n, P11112009325800632375.a n = A029143 n

end A029143

/-! ## A029143.P5363279580419002882

`A029169(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029143.P5363279580419002882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029169 (2 * n) - a (n - 1)

end

end A029143.P5363279580419002882

namespace A029143

/-- `A029169(2*n)-a(n-1)` -/
def P5363279580419002882.Spec : Prop :=
  ∀ n, P5363279580419002882.a n = A029143 n

end A029143

/-! ## A029143.P8574707417917088989

`A029198(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029143.P8574707417917088989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029198 (2 * n) - a (n - 1)

end

end A029143.P8574707417917088989

namespace A029143

/-- `A029198(2*n)-a(n-1)` -/
def P8574707417917088989.Spec : Prop :=
  ∀ n, P8574707417917088989.a n = A029143 n

end A029143

/-! ## A029143.P8860612296884038901

`A029386(2*n+1)+A029386(2*n)`
-/

namespace A029143.P8860612296884038901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 (2 * n + 1) + A029386 (2 * n)

end

end A029143.P8860612296884038901

namespace A029143

/-- `A029386(2*n+1)+A029386(2*n)` -/
def P8860612296884038901.Spec : Prop :=
  ∀ n, P8860612296884038901.a n = A029143 n

end A029143

/-! ## A029143.P7785791080600405177

`A029177(2*n)-A029250(2*n+1)`
-/

namespace A029143.P7785791080600405177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029177 (2 * n) - A029250 (2 * n + 1)

end

end A029143.P7785791080600405177

namespace A029143

/-- `A029177(2*n)-A029250(2*n+1)` -/
def P7785791080600405177.Spec : Prop :=
  ∀ n, P7785791080600405177.a n = A029143 n

end A029143

/-! ## A029143.P2121092553719931925

`Δ[∑[A029298(2*n)]-A029320(2*n)]`
-/

namespace A029143.P2121092553719931925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029298 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029320 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029143.P2121092553719931925

namespace A029143

/-- `Δ[∑[A029298(2*n)]-A029320(2*n)]` -/
def P2121092553719931925.Spec : Prop :=
  ∀ n, P2121092553719931925.a n = A029143 n

end A029143

/-! ## A029143.P1468875951674330069

`A008615(A016945(A027640(n+n)))`
-/

namespace A029143.P1468875951674330069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A016945 (A027640 (n + n)).toNat).toNat

end

end A029143.P1468875951674330069

namespace A029143

/-- `A008615(A016945(A027640(n+n)))` -/
def P1468875951674330069.Spec : Prop :=
  ∀ n, P1468875951674330069.a n = A029143 n

end A029143

/-!
# A029144: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^7)).

The programs for A029144, the canonical program `A029144.P2597428797392926511` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029144 has offset 0).

The definition of A029144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029144.P2597428797392926511

`A008673(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029144

/-- `A008673(n)-a(n-1)` -/
def P2597428797392926511.Spec : Prop :=
  ∀ n, P2597428797392926511.a n = A029144 n

theorem P2597428797392926511.correct : P2597428797392926511.Spec := by
  intro n
  simp only [A029144]

end A029144

/-! ## A029144.P4259559966094727618

`A008677(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029144.P4259559966094727618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008677 n + a (n - 2)

end

end A029144.P4259559966094727618

namespace A029144

/-- `A008677(n)+a(n-2)` -/
def P4259559966094727618.Spec : Prop :=
  ∀ n, P4259559966094727618.a n = A029144 n

end A029144

/-! ## A029144.P1583370644571838429

`A025807(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029144.P1583370644571838429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025807 n + a (n - 3)

end

end A029144.P1583370644571838429

namespace A029144

/-- `A025807(n)+a(n-3)` -/
def P1583370644571838429.Spec : Prop :=
  ∀ n, P1583370644571838429.a n = A029144 n

end A029144

/-! ## A029144.P3171340023091132476

`A029349(2*n)`
-/

namespace A029144.P3171340023091132476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029349 (2 * n)

end

end A029144.P3171340023091132476

namespace A029144

/-- `A029349(2*n)` -/
def P3171340023091132476.Spec : Prop :=
  ∀ n, P3171340023091132476.a n = A029144 n

end A029144

/-! ## A029144.P5986100606454869935

`A029216(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029144.P5986100606454869935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029216 (2 * n) - a (n - 1)

end

end A029144.P5986100606454869935

namespace A029144

/-- `A029216(2*n)-a(n-1)` -/
def P5986100606454869935.Spec : Prop :=
  ∀ n, P5986100606454869935.a n = A029144 n

end A029144

/-! ## A029144.P14028333449321984794

`A029367(2*n+1)+A029367(2*n)`
-/

namespace A029144.P14028333449321984794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 (2 * n + 1) + A029367 (2 * n)

end

end A029144.P14028333449321984794

namespace A029144

/-- `A029367(2*n+1)+A029367(2*n)` -/
def P14028333449321984794.Spec : Prop :=
  ∀ n, P14028333449321984794.a n = A029144 n

end A029144

/-! ## A029144.P17136127584520853694

`abs(∑[A029125(2*n+1)*A033999(n+1)])`
-/

namespace A029144.P17136127584520853694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029125 (2 * n + 1) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029144.P17136127584520853694

namespace A029144

/-- `abs(∑[A029125(2*n+1)*A033999(n+1)])` -/
def P17136127584520853694.Spec : Prop :=
  ∀ n, P17136127584520853694.a n = A029144 n

end A029144

/-! ## A029144.P7199643280270347875

`A025899(2*n)+A029183(2*n)-A029216(2*n)`
-/

namespace A029144.P7199643280270347875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 (2 * n) + (A029183 (2 * n) - A029216 (2 * n))

end

end A029144.P7199643280270347875

namespace A029144

/-- `A025899(2*n)+A029183(2*n)-A029216(2*n)` -/
def P7199643280270347875.Spec : Prop :=
  ∀ n, P7199643280270347875.a n = A029144 n

end A029144

/-! ## A029144.P16435217635096188174

`A029295(2*n)+A029357(2*n)-A029303(2*n)`
-/

namespace A029144.P16435217635096188174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029295 (2 * n) + (A029357 (2 * n) - A029303 (2 * n))

end

end A029144.P16435217635096188174

namespace A029144

/-- `A029295(2*n)+A029357(2*n)-A029303(2*n)` -/
def P16435217635096188174.Spec : Prop :=
  ∀ n, P16435217635096188174.a n = A029144 n

end A029144

/-! ## A029144.P11665579960724947176

`A029307(2*n+3)`
-/

namespace A029144.P11665579960724947176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029307 (2 * n + 3)

end

end A029144.P11665579960724947176

namespace A029144

/-- `A029307(2*n+3)` -/
def P11665579960724947176.Spec : Prop :=
  ∀ n, P11665579960724947176.a n = A029144 n

end A029144

/-! ## A029144.P17116666912958076647

`A029414(2*n+3)+A029414(2*n)`
-/

namespace A029144.P17116666912958076647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 (2 * n + 3) + A029414 (2 * n)

end

end A029144.P17116666912958076647

namespace A029144

/-- `A029414(2*n+3)+A029414(2*n)` -/
def P17116666912958076647.Spec : Prop :=
  ∀ n, P17116666912958076647.a n = A029144 n

end A029144

/-! ## A029144.P8126507972641728601

`A029234(A144396(n+1))+A025876(n)`
-/

namespace A029144.P8126507972641728601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (A144396 (n + 1)).toNat + A025876 n

end

end A029144.P8126507972641728601

namespace A029144

/-- `A029234(A144396(n+1))+A025876(n)` -/
def P8126507972641728601.Spec : Prop :=
  ∀ n, P8126507972641728601.a n = A029144 n

end A029144

/-! ## A029144.P14899752467694446859

`A029234(2*n)-Δ[A029234(2*n+3)]`
-/

namespace A029144.P14899752467694446859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (2 * n) - (f1 (n + 1) - f1 n)

end

end A029144.P14899752467694446859

namespace A029144

/-- `A029234(2*n)-Δ[A029234(2*n+3)]` -/
def P14899752467694446859.Spec : Prop :=
  ∀ n, P14899752467694446859.a n = A029144 n

end A029144

/-! ## A029144.P6488778071159744806

`A029085(n)-Δ[A029234(A144396(n+1))]`
-/

namespace A029144.P6488778071159744806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (A144396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029085 n - (f1 (n + 1) - f1 n)

end

end A029144.P6488778071159744806

namespace A029144

/-- `A029085(n)-Δ[A029234(A144396(n+1))]` -/
def P6488778071159744806.Spec : Prop :=
  ∀ n, P6488778071159744806.a n = A029144 n

end A029144

/-!
# A029145: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^8)).

The programs for A029145, the canonical program `A029145.P7520990149888030438` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029145 has offset 0).

The definition of A029145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029145.P7520990149888030438

`A029040(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029145

/-- `A029040(n)-a(n-1)` -/
def P7520990149888030438.Spec : Prop :=
  ∀ n, P7520990149888030438.a n = A029145 n

theorem P7520990149888030438.correct : P7520990149888030438.Spec := by
  intro n
  simp only [A029145]

end A029145

/-! ## A029145.P11604304275998329819

`A025836(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029145.P11604304275998329819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025836 n + a (n - 2)

end

end A029145.P11604304275998329819

namespace A029145

/-- `A025836(n)+a(n-2)` -/
def P11604304275998329819.Spec : Prop :=
  ∀ n, P11604304275998329819.a n = A029145 n

end A029145

/-! ## A029145.P9863510421716390429

`A025808(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029145.P9863510421716390429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025808 n + a (n - 3)

end

end A029145.P9863510421716390429

namespace A029145

/-- `A025808(n)+a(n-3)` -/
def P9863510421716390429.Spec : Prop :=
  ∀ n, P9863510421716390429.a n = A029145 n

end A029145

/-! ## A029145.P17949693118880447766

`A029246(abs(2-n))+A029246(n)`
-/

namespace A029145.P17949693118880447766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029246 |2 - (n : ℤ)|.toNat + A029246 n

end

end A029145.P17949693118880447766

namespace A029145

/-- `A029246(abs(2-n))+A029246(n)` -/
def P17949693118880447766.Spec : Prop :=
  ∀ n, P17949693118880447766.a n = A029145 n

end A029145

/-! ## A029145.P8796839199254634516

`2*A028290(n)-∑[A029040(n)]`
-/

namespace A029145.P8796839199254634516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028290 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029145.P8796839199254634516

namespace A029145

/-- `2*A028290(n)-∑[A029040(n)]` -/
def P8796839199254634516.Spec : Prop :=
  ∀ n, P8796839199254634516.a n = A029145 n

end A029145

/-! ## A029145.P10116923114057633000

`a(n-2)+∑[A291985(n)]*A033999(n)` with `a(0)=1, a(1)=0`
-/

namespace A029145.P10116923114057633000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291985 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A029145.P10116923114057633000

namespace A029145

/-- `a(n-2)+∑[A291985(n)]*A033999(n)` -/
def P10116923114057633000.Spec : Prop :=
  ∀ n, P10116923114057633000.a n = A029145 n

end A029145

/-! ## A029145.P17450240858228367001

`A000008(n)+A029283(n)-A029042(n)`
-/

namespace A029145.P17450240858228367001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000008 n + (A029283 n - A029042 n)

end

end A029145.P17450240858228367001

namespace A029145

/-- `A000008(n)+A029283(n)-A029042(n)` -/
def P17450240858228367001.Spec : Prop :=
  ∀ n, P17450240858228367001.a n = A029145 n

end A029145

/-! ## A029145.P11795099443175020446

`A029147(n)+A029283(n)-A025838(n)`
-/

namespace A029145.P11795099443175020446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029147 n + (A029283 n - A025838 n)

end

end A029145.P11795099443175020446

namespace A029145

/-- `A029147(n)+A029283(n)-A025838(n)` -/
def P11795099443175020446.Spec : Prop :=
  ∀ n, P11795099443175020446.a n = A029145 n

end A029145

/-! ## A029145.P3669715327885496497

`Δ[∑[A029040(n)]-A028290(n)]`
-/

namespace A029145.P3669715327885496497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A028290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029145.P3669715327885496497

namespace A029145

/-- `Δ[∑[A029040(n)]-A028290(n)]` -/
def P3669715327885496497.Spec : Prop :=
  ∀ n, P3669715327885496497.a n = A029145 n

end A029145

/-! ## A029145.P16799052365319390964

`A029040(n+1)-Δ[A028290(n)]`
-/

namespace A029145.P16799052365319390964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029040 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029145.P16799052365319390964

namespace A029145

/-- `A029040(n+1)-Δ[A028290(n)]` -/
def P16799052365319390964.Spec : Prop :=
  ∀ n, P16799052365319390964.a n = A029145 n

end A029145

/-! ## A029145.P939890251832312951

`A025877(n)+∑[A025893(A166517(n))]`
-/

namespace A029145.P939890251832312951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A166517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029145.P939890251832312951

namespace A029145

/-- `A025877(n)+∑[A025893(A166517(n))]` -/
def P939890251832312951.Spec : Prop :=
  ∀ n, P939890251832312951.a n = A029145 n

end A029145

/-!
# A029146: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^9)).

The programs for A029146, the canonical program `A029146.P8790891714199585326` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029146 has offset 0).

The definition of A029146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029146.P8790891714199585326

`A029041(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029146

/-- `A029041(n)-a(n-1)` -/
def P8790891714199585326.Spec : Prop :=
  ∀ n, P8790891714199585326.a n = A029146 n

theorem P8790891714199585326.correct : P8790891714199585326.Spec := by
  intro n
  simp only [A029146]

end A029146

/-! ## A029146.P369148018855329194

`A025837(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029146.P369148018855329194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025837 n + a (n - 2)

end

end A029146.P369148018855329194

namespace A029146

/-- `A025837(n)+a(n-2)` -/
def P369148018855329194.Spec : Prop :=
  ∀ n, P369148018855329194.a n = A029146 n

end A029146

/-! ## A029146.P10805780875591112317

`A025809(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029146.P10805780875591112317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025809 n + a (n - 3)

end

end A029146.P10805780875591112317

namespace A029146

/-- `A025809(n)+a(n-3)` -/
def P10805780875591112317.Spec : Prop :=
  ∀ n, P10805780875591112317.a n = A029146 n

end A029146

/-! ## A029146.P9417659471239680218

`A029354(2*n)`
-/

namespace A029146.P9417659471239680218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 (2 * n)

end

end A029146.P9417659471239680218

namespace A029146

/-- `A029354(2*n)` -/
def P9417659471239680218.Spec : Prop :=
  ∀ n, P9417659471239680218.a n = A029146 n

end A029146

/-! ## A029146.P13020991728246332216

`A029221(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029146.P13020991728246332216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029221 (2 * n) - a (n - 1)

end

end A029146.P13020991728246332216

namespace A029146

/-- `A029221(2*n)-a(n-1)` -/
def P13020991728246332216.Spec : Prop :=
  ∀ n, P13020991728246332216.a n = A029146 n

end A029146

/-! ## A029146.P2491909087354681195

`A029389(2*n+1)+A029274(n)`
-/

namespace A029146.P2491909087354681195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029389 (2 * n + 1) + A029274 n

end

end A029146.P2491909087354681195

namespace A029146

/-- `A029389(2*n+1)+A029274(n)` -/
def P2491909087354681195.Spec : Prop :=
  ∀ n, P2491909087354681195.a n = A029146 n

end A029146

/-! ## A029146.P11026425460266223950

`A029429(2*n)+A029389(2*n+1)`
-/

namespace A029146.P11026425460266223950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 (2 * n) + A029389 (2 * n + 1)

end

end A029146.P11026425460266223950

namespace A029146

/-- `A029429(2*n)+A029389(2*n+1)` -/
def P11026425460266223950.Spec : Prop :=
  ∀ n, P11026425460266223950.a n = A029146 n

end A029146

/-! ## A029146.P15041953539514136914

`A025904(2*n)+A029188(2*n)-A029221(2*n)`
-/

namespace A029146.P15041953539514136914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (2 * n) + (A029188 (2 * n) - A029221 (2 * n))

end

end A029146.P15041953539514136914

namespace A029146

/-- `A025904(2*n)+A029188(2*n)-A029221(2*n)` -/
def P15041953539514136914.Spec : Prop :=
  ∀ n, P15041953539514136914.a n = A029146 n

end A029146

/-! ## A029146.P15253667488238456659

`A029221(2*n+1)+A029188(2*n)-A029165(2*n+1)`
-/

namespace A029146.P15253667488238456659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (2 * n + 1) + (A029188 (2 * n) - A029165 (2 * n + 1))

end

end A029146.P15253667488238456659

namespace A029146

/-- `A029221(2*n+1)+A029188(2*n)-A029165(2*n+1)` -/
def P15253667488238456659.Spec : Prop :=
  ∀ n, P15253667488238456659.a n = A029146 n

end A029146

/-! ## A029146.P7536568906875555945

`A029375(2*n+3)+A029375(2*n)`
-/

namespace A029146.P7536568906875555945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029375 (2 * n + 3) + A029375 (2 * n)

end

end A029146.P7536568906875555945

namespace A029146

/-- `A029375(2*n+3)+A029375(2*n)` -/
def P7536568906875555945.Spec : Prop :=
  ∀ n, P7536568906875555945.a n = A029146 n

end A029146

/-! ## A029146.P12949380722563025948

`A029383(2*n+5)`
-/

namespace A029146.P12949380722563025948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029383 (2 * n + 5)

end

end A029146.P12949380722563025948

namespace A029146

/-- `A029383(2*n+5)` -/
def P12949380722563025948.Spec : Prop :=
  ∀ n, P12949380722563025948.a n = A029146 n

end A029146

/-! ## A029146.P14609371270627650589

`A029242(2*n)-Δ[A029242(2*n+5)]`
-/

namespace A029146.P14609371270627650589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029242 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029242 (2 * n) - (f1 (n + 1) - f1 n)

end

end A029146.P14609371270627650589

namespace A029146

/-- `A029242(2*n)-Δ[A029242(2*n+5)]` -/
def P14609371270627650589.Spec : Prop :=
  ∀ n, P14609371270627650589.a n = A029146 n

end A029146

/-!
# A029147: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^10)).

The programs for A029147, the canonical program `A029147.P10536231143943599281` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029147 has offset 0).

The definition of A029147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029147.P10536231143943599281

`A029042(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029147

/-- `A029042(n)-a(n-1)` -/
def P10536231143943599281.Spec : Prop :=
  ∀ n, P10536231143943599281.a n = A029147 n

theorem P10536231143943599281.correct : P10536231143943599281.Spec := by
  intro n
  simp only [A029147]

end A029147

/-! ## A029147.P12875907041817944195

`A025838(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029147.P12875907041817944195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025838 n + a (n - 2)

end

end A029147.P12875907041817944195

namespace A029147

/-- `A025838(n)+a(n-2)` -/
def P12875907041817944195.Spec : Prop :=
  ∀ n, P12875907041817944195.a n = A029147 n

end A029147

/-! ## A029147.P18381480184326725844

`A025810(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029147.P18381480184326725844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025810 n + a (n - 3)

end

end A029147.P18381480184326725844

namespace A029147

/-- `A025810(n)+a(n-3)` -/
def P18381480184326725844.Spec : Prop :=
  ∀ n, P18381480184326725844.a n = A029147 n

end A029147

/-! ## A029147.P10627494937474488093

`A029088(n)-A025879(abs(A023443(n)))`
-/

namespace A029147.P10627494937474488093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029088 n - A025879 |A023443 n|.toNat

end

end A029147.P10627494937474488093

namespace A029147

/-- `A029088(n)-A025879(abs(A023443(n)))` -/
def P10627494937474488093.Spec : Prop :=
  ∀ n, P10627494937474488093.a n = A029147 n

end A029147

/-! ## A029147.P16535796322108167669

`A000008(n)+A025838(n)-A029042(n)`
-/

namespace A029147.P16535796322108167669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000008 n + (A025838 n - A029042 n)

end

end A029147.P16535796322108167669

namespace A029147

/-- `A000008(n)+A025838(n)-A029042(n)` -/
def P16535796322108167669.Spec : Prop :=
  ∀ n, P16535796322108167669.a n = A029147 n

end A029147

/-! ## A029147.P9284509573971141805

`A000008(n)+A029286(n)-A029041(n)`
-/

namespace A029147.P9284509573971141805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000008 n + (A029286 n - A029041 n)

end

end A029147.P9284509573971141805

namespace A029147

/-- `A000008(n)+A029286(n)-A029041(n)` -/
def P9284509573971141805.Spec : Prop :=
  ∀ n, P9284509573971141805.a n = A029147 n

end A029147

/-! ## A029147.P14245599046709982443

`A025838(n)+A029145(n)-A029283(n)`
-/

namespace A029147.P14245599046709982443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025838 n + (A029145 n - A029283 n)

end

end A029147.P14245599046709982443

namespace A029147

/-- `A025838(n)+A029145(n)-A029283(n)` -/
def P14245599046709982443.Spec : Prop :=
  ∀ n, P14245599046709982443.a n = A029147 n

end A029147

/-! ## A029147.P8298393751799885308

`A029145(n+2)-A029283(n+2)`
-/

namespace A029147.P8298393751799885308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029145 (n + 2) - A029283 (n + 2)

end

end A029147.P8298393751799885308

namespace A029147

/-- `A029145(n+2)-A029283(n+2)` -/
def P8298393751799885308.Spec : Prop :=
  ∀ n, P8298393751799885308.a n = A029147 n

end A029147

/-!
# A029148: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^11)).

The programs for A029148, the canonical program `A029148.P3955780201210385014` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029148 has offset 0).

The definition of A029148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029148.P3955780201210385014

`A029043(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029148

/-- `A029043(n)-a(n-1)` -/
def P3955780201210385014.Spec : Prop :=
  ∀ n, P3955780201210385014.a n = A029148 n

theorem P3955780201210385014.correct : P3955780201210385014.Spec := by
  intro n
  simp only [A029148]

end A029148

/-! ## A029148.P8820826731289411795

`A025839(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029148.P8820826731289411795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025839 n + a (n - 2)

end

end A029148.P8820826731289411795

namespace A029148

/-- `A025839(n)+a(n-2)` -/
def P8820826731289411795.Spec : Prop :=
  ∀ n, P8820826731289411795.a n = A029148 n

end A029148

/-! ## A029148.P2705635850846967512

`A025811(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029148.P2705635850846967512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025811 n + a (n - 3)

end

end A029148.P2705635850846967512

namespace A029148

/-- `A025811(n)+a(n-3)` -/
def P2705635850846967512.Spec : Prop :=
  ∀ n, P2705635850846967512.a n = A029148 n

end A029148

/-! ## A029148.P13832911391663454695

`A029357(2*n)`
-/

namespace A029148.P13832911391663454695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 (2 * n)

end

end A029148.P13832911391663454695

namespace A029148

/-- `A029357(2*n)` -/
def P13832911391663454695.Spec : Prop :=
  ∀ n, P13832911391663454695.a n = A029148 n

end A029148

/-! ## A029148.P4080317727751603502

`A029224(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029148.P4080317727751603502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029224 (2 * n) - a (n - 1)

end

end A029148.P4080317727751603502

namespace A029148

/-- `A029224(2*n)-a(n-1)` -/
def P4080317727751603502.Spec : Prop :=
  ∀ n, P4080317727751603502.a n = A029148 n

end A029148

/-! ## A029148.P12045490161019886693

`A029303(2*n)+A029349(2*n)-A029295(2*n)`
-/

namespace A029148.P12045490161019886693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029303 (2 * n) + (A029349 (2 * n) - A029295 (2 * n))

end

end A029148.P12045490161019886693

namespace A029148

/-- `A029303(2*n)+A029349(2*n)-A029295(2*n)` -/
def P12045490161019886693.Spec : Prop :=
  ∀ n, P12045490161019886693.a n = A029148 n

end A029148

/-! ## A029148.P15611131332984336592

`A029385(2*n+1)+A029426(2*n)-A029426(2*n+1)`
-/

namespace A029148.P15611131332984336592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029385 (2 * n + 1) + (A029426 (2 * n) - A029426 (2 * n + 1))

end

end A029148.P15611131332984336592

namespace A029148

/-- `A029385(2*n+1)+A029426(2*n)-A029426(2*n+1)` -/
def P15611131332984336592.Spec : Prop :=
  ∀ n, P15611131332984336592.a n = A029148 n

end A029148

/-! ## A029148.P12805407303898773474

`A029346(2*n+5)`
-/

namespace A029148.P12805407303898773474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029346 (2 * n + 5)

end

end A029148.P12805407303898773474

namespace A029148

/-- `A029346(2*n+5)` -/
def P12805407303898773474.Spec : Prop :=
  ∀ n, P12805407303898773474.a n = A029148 n

end A029148

/-! ## A029148.P14540443779385309286

`A029244(2*n)-Δ[A029244(A004273(n+4))]`
-/

namespace A029148.P14540443779385309286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (A004273 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (2 * n) - (f1 (n + 1) - f1 n)

end

end A029148.P14540443779385309286

namespace A029148

/-- `A029244(2*n)-Δ[A029244(A004273(n+4))]` -/
def P14540443779385309286.Spec : Prop :=
  ∀ n, P14540443779385309286.a n = A029148 n

end A029148

/-!
# A029149: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^12)).

The programs for A029149, the canonical program `A029149.P5062923561193490487` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029149 has offset 0).

The definition of A029149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029149.P6497107020523396510

`A029044(n)-a(n-1)` with `a(0)=1`
-/

namespace A029149.P6497107020523396510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029044 n - a (n - 1)

end

end A029149.P6497107020523396510

namespace A029149

/-- `A029044(n)-a(n-1)` -/
def P6497107020523396510.Spec : Prop :=
  ∀ n, P6497107020523396510.a n = A029149 n

end A029149

/-! ## A029149.P14174209563005455792

`A025840(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029149.P14174209563005455792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025840 n + a (n - 2)

end

end A029149.P14174209563005455792

namespace A029149

/-- `A025840(n)+a(n-2)` -/
def P14174209563005455792.Spec : Prop :=
  ∀ n, P14174209563005455792.a n = A029149 n

end A029149

/-! ## A029149.P4645880521457815567

`A025812(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029149.P4645880521457815567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025812 n + a (n - 3)

end

end A029149.P4645880521457815567

namespace A029149

/-- `A025812(n)+a(n-3)` -/
def P4645880521457815567.Spec : Prop :=
  ∀ n, P4645880521457815567.a n = A029149 n

end A029149

/-! ## A029149.P17018711449727208041

`A029250(abs(2-n))+A029250(n)`
-/

namespace A029149.P17018711449727208041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029250 |2 - (n : ℤ)|.toNat + A029250 n

end

end A029149.P17018711449727208041

namespace A029149

/-- `A029250(abs(2-n))+A029250(n)` -/
def P17018711449727208041.Spec : Prop :=
  ∀ n, P17018711449727208041.a n = A029149 n

end A029149

/-! ## A029149.P5062923561193490487

`A029090(n)-A025881(abs(A023443(n)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029149

/-- `A029090(n)-A025881(abs(A023443(n)))` -/
def P5062923561193490487.Spec : Prop :=
  ∀ n, P5062923561193490487.a n = A029149 n

theorem P5062923561193490487.correct : P5062923561193490487.Spec := by
  intro n
  simp only [A029149]

end A029149

/-! ## A029149.P13443817212385046666

`A029069(n)-A029250(abs(A024000(n)))`
-/

namespace A029149.P13443817212385046666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029069 n - A029250 |A024000 n|.toNat

end

end A029149.P13443817212385046666

namespace A029149

/-- `A029069(n)-A029250(abs(A024000(n)))` -/
def P13443817212385046666.Spec : Prop :=
  ∀ n, P13443817212385046666.a n = A029149 n

end A029149

/-! ## A029149.P1662251293508710626

`A025840(n)+A029016(n)-A029044(n)`
-/

namespace A029149.P1662251293508710626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 n + (A029016 n - A029044 n)

end

end A029149.P1662251293508710626

namespace A029149

/-- `A025840(n)+A029016(n)-A029044(n)` -/
def P1662251293508710626.Spec : Prop :=
  ∀ n, P1662251293508710626.a n = A029149 n

end A029149

/-! ## A029149.P4023600860453282264

`A025857(n)+A029016(n)-A029047(n)`
-/

namespace A029149.P4023600860453282264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 n + (A029016 n - A029047 n)

end

end A029149.P4023600860453282264

namespace A029149

/-- `A025857(n)+A029016(n)-A029047(n)` -/
def P4023600860453282264.Spec : Prop :=
  ∀ n, P4023600860453282264.a n = A029149 n

end A029149

/-! ## A029149.P11622921207511137876

`A029016(n+2)-A029044(n+2)`
-/

namespace A029149.P11622921207511137876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029016 (n + 2) - A029044 (n + 2)

end

end A029149.P11622921207511137876

namespace A029149

/-- `A029016(n+2)-A029044(n+2)` -/
def P11622921207511137876.Spec : Prop :=
  ∀ n, P11622921207511137876.a n = A029149 n

end A029149

/-!
# A029150: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^6)*(1-x^7)).

The programs for A029150, the canonical program `A029150.P2877327488263682648` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029150 has offset 0).

The definition of A029150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029150.P2877327488263682648

`A029045(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029150

/-- `A029045(n)-a(n-1)` -/
def P2877327488263682648.Spec : Prop :=
  ∀ n, P2877327488263682648.a n = A029150 n

theorem P2877327488263682648.correct : P2877327488263682648.Spec := by
  intro n
  simp only [A029150]

end A029150

/-! ## A029150.P11754412846954160296

`A025841(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029150.P11754412846954160296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025841 n + a (n - 2)

end

end A029150.P11754412846954160296

namespace A029150

/-- `A025841(n)+a(n-2)` -/
def P11754412846954160296.Spec : Prop :=
  ∀ n, P11754412846954160296.a n = A029150 n

end A029150

/-! ## A029150.P816681851985586457

`A025813(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029150.P816681851985586457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025813 n + a (n - 3)

end

end A029150.P816681851985586457

namespace A029150

/-- `A025813(n)+a(n-3)` -/
def P816681851985586457.Spec : Prop :=
  ∀ n, P816681851985586457.a n = A029150 n

end A029150

/-! ## A029150.P2458478684129189658

`A029251(abs(2-n))+A029251(n)`
-/

namespace A029150.P2458478684129189658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029251 |2 - (n : ℤ)|.toNat + A029251 n

end

end A029150.P2458478684129189658

namespace A029150

/-- `A029251(abs(2-n))+A029251(n)` -/
def P2458478684129189658.Spec : Prop :=
  ∀ n, P2458478684129189658.a n = A029150 n

end A029150

/-! ## A029150.P12634734466538650118

`A029351(2*n)`
-/

namespace A029150.P12634734466538650118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029351 (2 * n)

end

end A029150.P12634734466538650118

namespace A029150

/-- `A029351(2*n)` -/
def P12634734466538650118.Spec : Prop :=
  ∀ n, P12634734466538650118.a n = A029150 n

end A029150

/-! ## A029150.P3352816902558090214

`A029218(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029150.P3352816902558090214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029218 (2 * n) - a (n - 1)

end

end A029150.P3352816902558090214

namespace A029150

/-- `A029218(2*n)-a(n-1)` -/
def P3352816902558090214.Spec : Prop :=
  ∀ n, P3352816902558090214.a n = A029150 n

end A029150

/-! ## A029150.P974954478603769947

`A029421(2*n+1)+A029367(2*n)`
-/

namespace A029150.P974954478603769947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029421 (2 * n + 1) + A029367 (2 * n)

end

end A029150.P974954478603769947

namespace A029150

/-- `A029421(2*n+1)+A029367(2*n)` -/
def P974954478603769947.Spec : Prop :=
  ∀ n, P974954478603769947.a n = A029150 n

end A029150

/-! ## A029150.P11048802857720159758

`A029309(2*n+3)`
-/

namespace A029150.P11048802857720159758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029309 (2 * n + 3)

end

end A029150.P11048802857720159758

namespace A029150

/-- `A029309(2*n+3)` -/
def P11048802857720159758.Spec : Prop :=
  ∀ n, P11048802857720159758.a n = A029150 n

end A029150

/-! ## A029150.P8199020852736513471

`A029416(2*n+3)+A029416(2*n)`
-/

namespace A029150.P8199020852736513471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029416 (2 * n + 3) + A029416 (2 * n)

end

end A029150.P8199020852736513471

namespace A029150

/-- `A029416(2*n+3)+A029416(2*n)` -/
def P8199020852736513471.Spec : Prop :=
  ∀ n, P8199020852736513471.a n = A029150 n

end A029150

/-! ## A029150.P14798680864281094628

`A029017(n)-A029218(A005818(n+1))`
-/

namespace A029150.P14798680864281094628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029017 n - A029218 (A005818 (n + 1)).toNat

end

end A029150.P14798680864281094628

namespace A029150

/-- `A029017(n)-A029218(A005818(n+1))` -/
def P14798680864281094628.Spec : Prop :=
  ∀ n, P14798680864281094628.a n = A029150 n

end A029150

/-! ## A029150.P12960310549705466315

`A029017(n)-A029218(A005408(n+2))`
-/

namespace A029150.P12960310549705466315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029017 n - A029218 (A005408 (n + 2)).toNat

end

end A029150.P12960310549705466315

namespace A029150

/-- `A029017(n)-A029218(A005408(n+2))` -/
def P12960310549705466315.Spec : Prop :=
  ∀ n, P12960310549705466315.a n = A029150 n

end A029150

/-!
# A029151: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^6)*(1-x^8)).

The programs for A029151, the canonical program `A029151.P16221892164589723558` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029151 has offset 0).

The definition of A029151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029151.P16221892164589723558

`A029046(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029151

/-- `A029046(n)-a(n-1)` -/
def P16221892164589723558.Spec : Prop :=
  ∀ n, P16221892164589723558.a n = A029151 n

theorem P16221892164589723558.correct : P16221892164589723558.Spec := by
  intro n
  simp only [A029151]

end A029151

/-! ## A029151.P13482039192630054253

`A025842(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029151.P13482039192630054253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025842 n + a (n - 2)

end

end A029151.P13482039192630054253

namespace A029151

/-- `A025842(n)+a(n-2)` -/
def P13482039192630054253.Spec : Prop :=
  ∀ n, P13482039192630054253.a n = A029151 n

end A029151

/-! ## A029151.P14664184846528831120

`∑[A025842(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A029151.P14664184846528831120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025842 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029151.P14664184846528831120

namespace A029151

/-- `∑[A025842(n)-a(A023443(n))]` -/
def P14664184846528831120.Spec : Prop :=
  ∀ n, P14664184846528831120.a n = A029151 n

end A029151

/-! ## A029151.P307658357340046132

`Δ[a(n-2)+A029013(n)-A029143(n)]` with `a(0)=0, a(1)=1`
-/

namespace A029151.P307658357340046132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (A029013 n - A029143 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029151.P307658357340046132

namespace A029151

/-- `Δ[a(n-2)+A029013(n)-A029143(n)]` -/
def P307658357340046132.Spec : Prop :=
  ∀ n, P307658357340046132.a n = A029151 n

end A029151

/-! ## A029151.P2805329352821721847

`Δ[a(n-2)+A029045(n)-A029292(n)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A029151.P2805329352821721847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 2) + (A029045 n - A029292 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029151.P2805329352821721847

namespace A029151

/-- `Δ[a(n-2)+A029045(n)-A029292(n)]` -/
def P2805329352821721847.Spec : Prop :=
  ∀ n, P2805329352821721847.a n = A029151 n

end A029151

/-! ## A029151.P16372247043267186014

`A029045(n+1)-A029292(n+1)-a(A023443(n))` with `a(0)=1`
-/

namespace A029151.P16372247043267186014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029045 (n + 1) - A029292 (n + 1) - a (A023443 n).toNat

end

end A029151.P16372247043267186014

namespace A029151

/-- `A029045(n+1)-A029292(n+1)-a(A023443(n))` -/
def P16372247043267186014.Spec : Prop :=
  ∀ n, P16372247043267186014.a n = A029151 n

end A029151

/-!
# A029152: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^6)*(1-x^9)).

The programs for A029152, the canonical program `A029152.P13475756094041442321` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029152 has offset 0).

The definition of A029152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029152.P13475756094041442321

`A025814(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029152

/-- `A025814(n)+a(n-3)` -/
def P13475756094041442321.Spec : Prop :=
  ∀ n, P13475756094041442321.a n = A029152 n

theorem P13475756094041442321.correct : P13475756094041442321.Spec := by
  intro n
  simp only [A029152]

end A029152

/-! ## A029152.P142398391484515847

`A008763(A008611(n)+3)`
-/

namespace A029152.P142398391484515847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A008611 n + 3).toNat

end

end A029152.P142398391484515847

namespace A029152

/-- `A008763(A008611(n)+3)` -/
def P142398391484515847.Spec : Prop :=
  ∀ n, P142398391484515847.a n = A029152 n

end A029152

/-! ## A029152.P16198685010330099657

`A029139(n)-A288165(n)`
-/

namespace A029152.P16198685010330099657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029139 n - A288165 n

end

end A029152.P16198685010330099657

namespace A029152

/-- `A029139(n)-A288165(n)` -/
def P16198685010330099657.Spec : Prop :=
  ∀ n, P16198685010330099657.a n = A029152 n

end A029152

/-! ## A029152.P508170848818101994

`A008763(A291357(2*n+1)+A002264(n))`
-/

namespace A029152.P508170848818101994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A291357 (2 * n + 1) + A002264 n).toNat

end

end A029152.P508170848818101994

namespace A029152

/-- `A008763(A291357(2*n+1)+A002264(n))` -/
def P508170848818101994.Spec : Prop :=
  ∀ n, P508170848818101994.a n = A029152 n

end A029152

/-! ## A029152.P4006608941616102719

`A288165(n+2)+A029253(n)`
-/

namespace A029152.P4006608941616102719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (n + 2) + A029253 n

end

end A029152.P4006608941616102719

namespace A029152

/-- `A288165(n+2)+A029253(n)` -/
def P4006608941616102719.Spec : Prop :=
  ∀ n, P4006608941616102719.a n = A029152 n

end A029152

/-! ## A029152.P15579361219538679461

`A008763(A008611(A020723(n)))`
-/

namespace A029152.P15579361219538679461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A008611 (A020723 n).toNat).toNat

end

end A029152.P15579361219538679461

namespace A029152

/-- `A008763(A008611(A020723(n)))` -/
def P15579361219538679461.Spec : Prop :=
  ∀ n, P15579361219538679461.a n = A029152 n

end A029152

/-! ## A029152.P2951258569547487521

`A029356(2*n)`
-/

namespace A029152.P2951258569547487521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029356 (2 * n)

end

end A029152.P2951258569547487521

namespace A029152

/-- `A029356(2*n)` -/
def P2951258569547487521.Spec : Prop :=
  ∀ n, P2951258569547487521.a n = A029152 n

end A029152

/-! ## A029152.P3117720519471334540

`A029223(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029152.P3117720519471334540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029223 (2 * n) - a (n - 1)

end

end A029152.P3117720519471334540

namespace A029152

/-- `A029223(2*n)-a(n-1)` -/
def P3117720519471334540.Spec : Prop :=
  ∀ n, P3117720519471334540.a n = A029152 n

end A029152

/-! ## A029152.P142819972166437796

`A008763(A008612(A005843(n))+3)`
-/

namespace A029152.P142819972166437796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A008612 (A005843 n).toNat + 3).toNat

end

end A029152.P142819972166437796

namespace A029152

/-- `A008763(A008612(A005843(n))+3)` -/
def P142819972166437796.Spec : Prop :=
  ∀ n, P142819972166437796.a n = A029152 n

end A029152

/-! ## A029152.P11969196049091455133

`A340760(2*(A008611(n)+1))`
-/

namespace A029152.P11969196049091455133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340760 (2 * (A008611 n + 1)).toNat

end

end A029152.P11969196049091455133

namespace A029152

/-- `A340760(2*(A008611(n)+1))` -/
def P11969196049091455133.Spec : Prop :=
  ∀ n, P11969196049091455133.a n = A029152 n

end A029152

/-! ## A029152.P5545271650731147657

`A340760(A103517(A008611(n)))`
-/

namespace A029152.P5545271650731147657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340760 (A103517 (A008611 n).toNat).toNat

end

end A029152.P5545271650731147657

namespace A029152

/-- `A340760(A103517(A008611(n)))` -/
def P5545271650731147657.Spec : Prop :=
  ∀ n, P5545271650731147657.a n = A029152 n

end A029152

/-! ## A029152.P14227508356463385742

`A340760(A005843(A008611(n)+1))`
-/

namespace A029152.P14227508356463385742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340760 (A005843 (A008611 n + 1).toNat).toNat

end

end A029152.P14227508356463385742

namespace A029152

/-- `A340760(A005843(A008611(n)+1))` -/
def P14227508356463385742.Spec : Prop :=
  ∀ n, P14227508356463385742.a n = A029152 n

end A029152

/-! ## A029152.P7801550261200103682

`A340760(A008611(n)+A008611(n)+2)`
-/

namespace A029152.P7801550261200103682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340760 (A008611 n + (A008611 n + 2)).toNat

end

end A029152.P7801550261200103682

namespace A029152

/-- `A340760(A008611(n)+A008611(n)+2)` -/
def P7801550261200103682.Spec : Prop :=
  ∀ n, P7801550261200103682.a n = A029152 n

end A029152

/-! ## A029152.P10533682391359446846

`A340760(A133310(n)+3)`
-/

namespace A029152.P10533682391359446846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340760 (A133310 n + 3).toNat

end

end A029152.P10533682391359446846

namespace A029152

/-- `A340760(A133310(n)+3)` -/
def P10533682391359446846.Spec : Prop :=
  ∀ n, P10533682391359446846.a n = A029152 n

end A029152

/-!
# A029153: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^6)*(1-x^10)).

The programs for A029153, the canonical program `A029153.P17836664122249653159` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029153 has offset 0).

The definition of A029153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029153.P17836664122249653159

`A029047(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029153

/-- `A029047(n)-a(n-1)` -/
def P17836664122249653159.Spec : Prop :=
  ∀ n, P17836664122249653159.a n = A029153 n

theorem P17836664122249653159.correct : P17836664122249653159.Spec := by
  intro n
  simp only [A029153]

end A029153

/-! ## A029153.P4671482062826939441

`A025843(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029153.P4671482062826939441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025843 n + a (n - 2)

end

end A029153.P4671482062826939441

namespace A029153

/-- `A025843(n)+a(n-2)` -/
def P4671482062826939441.Spec : Prop :=
  ∀ n, P4671482062826939441.a n = A029153 n

end A029153

/-! ## A029153.P12982851668204468146

`A008681(A097062(n+2))`
-/

namespace A029153.P12982851668204468146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (A097062 (n + 2)).toNat

end

end A029153.P12982851668204468146

namespace A029153

/-- `A008681(A097062(n+2))` -/
def P12982851668204468146.Spec : Prop :=
  ∀ n, P12982851668204468146.a n = A029153 n

end A029153

/-! ## A029153.P3899798205347620898

`A008681(or(1, A165754(n)))`
-/

namespace A029153.P3899798205347620898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (Int.lor 1 (A165754 n)).toNat

end

end A029153.P3899798205347620898

namespace A029153

/-- `A008681(or(1, A165754(n)))` -/
def P3899798205347620898.Spec : Prop :=
  ∀ n, P3899798205347620898.a n = A029153 n

end A029153

/-! ## A029153.P9239344124697865706

`A008681(abs(Δ[A059029(n)]))`
-/

namespace A029153.P9239344124697865706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 |f1 (n + 1) - f1 n|.toNat

end

end A029153.P9239344124697865706

namespace A029153

/-- `A008681(abs(Δ[A059029(n)]))` -/
def P9239344124697865706.Spec : Prop :=
  ∀ n, P9239344124697865706.a n = A029153 n

end A029153

/-! ## A029153.P8426451317455966202

`A008681(Δ[A236283(n+1)])`
-/

namespace A029153.P8426451317455966202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (f1 (n + 1) - f1 n).toNat

end

end A029153.P8426451317455966202

namespace A029153

/-- `A008681(Δ[A236283(n+1)])` -/
def P8426451317455966202.Spec : Prop :=
  ∀ n, P8426451317455966202.a n = A029153 n

end A029153

/-! ## A029153.P17125415559683685501

`A008681(2*A028242(n)+1)`
-/

namespace A029153.P17125415559683685501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (2 * A028242 n + 1).toNat

end

end A029153.P17125415559683685501

namespace A029153

/-- `A008681(2*A028242(n)+1)` -/
def P17125415559683685501.Spec : Prop :=
  ∀ n, P17125415559683685501.a n = A029153 n

end A029153

/-! ## A029153.P1715148688536628656

`A008681(A005408(A028242(n)))`
-/

namespace A029153.P1715148688536628656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (A005408 (A028242 n).toNat).toNat

end

end A029153.P1715148688536628656

namespace A029153

/-- `A008681(A005408(A028242(n)))` -/
def P1715148688536628656.Spec : Prop :=
  ∀ n, P1715148688536628656.a n = A029153 n

end A029153

/-! ## A029153.P14902188580979581072

`A008681(A005408(Δ[A004652(n)]))`
-/

namespace A029153.P14902188580979581072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (A005408 (f1 (n + 1) - f1 n).toNat).toNat

end

end A029153.P14902188580979581072

namespace A029153

/-- `A008681(A005408(Δ[A004652(n)]))` -/
def P14902188580979581072.Spec : Prop :=
  ∀ n, P14902188580979581072.a n = A029153 n

end A029153

/-! ## A029153.P12651804956759280421

`A008681(A028242(n)+A028242(n)+1)`
-/

namespace A029153.P12651804956759280421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (A028242 n + (A028242 n + 1)).toNat

end

end A029153.P12651804956759280421

namespace A029153

/-- `A008681(A028242(n)+A028242(n)+1)` -/
def P12651804956759280421.Spec : Prop :=
  ∀ n, P12651804956759280421.a n = A029153 n

end A029153

/-! ## A029153.P6560355606897741602

`A008681(A028242(4*A028242(n)))`
-/

namespace A029153.P6560355606897741602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (A028242 (4 * A028242 n).toNat).toNat

end

end A029153.P6560355606897741602

namespace A029153

/-- `A008681(A028242(4*A028242(n)))` -/
def P6560355606897741602.Spec : Prop :=
  ∀ n, P6560355606897741602.a n = A029153 n

end A029153

/-! ## A029153.P12597545607391018793

`A008681(A005408(log2(A135530(n))))`
-/

namespace A029153.P12597545607391018793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (A005408 (SequenceMachineLib.roundAway (Real.logb 2 (A135530 n : ℝ))).toNat).toNat

end

end A029153.P12597545607391018793

namespace A029153

/-- `A008681(A005408(log2(A135530(n))))` -/
def P12597545607391018793.Spec : Prop :=
  ∀ n, P12597545607391018793.a n = A029153 n

end A029153

/-! ## A029153.P3499323126361127775

`A008681(log2(A135530(n)²)+1)`
-/

namespace A029153.P3499323126361127775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (SequenceMachineLib.roundAway (Real.logb 2 (A135530 n ^ 2 : ℝ) + 1)).toNat

end

end A029153.P3499323126361127775

namespace A029153

/-- `A008681(log2(A135530(n)²)+1)` -/
def P3499323126361127775.Spec : Prop :=
  ∀ n, P3499323126361127775.a n = A029153 n

end A029153

/-! ## A029153.P1537466367156364620

`A008681(log2(2*A135530(n)²))`
-/

namespace A029153.P1537466367156364620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A135530 n ^ 2 : ℝ))).toNat

end

end A029153.P1537466367156364620

namespace A029153

/-- `A008681(log2(2*A135530(n)²))` -/
def P1537466367156364620.Spec : Prop :=
  ∀ n, P1537466367156364620.a n = A029153 n

end A029153

/-!
# A029154: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^6)*(1-x^11)).

The programs for A029154, the canonical program `A029154.P15883492566712472573` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029154 has offset 0).

The definition of A029154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029154.P15883492566712472573

`A029048(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029154

/-- `A029048(n)-a(n-1)` -/
def P15883492566712472573.Spec : Prop :=
  ∀ n, P15883492566712472573.a n = A029154 n

theorem P15883492566712472573.correct : P15883492566712472573.Spec := by
  intro n
  simp only [A029154]

end A029154

/-! ## A029154.P16859598137254067677

`A025844(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029154.P16859598137254067677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025844 n + a (n - 2)

end

end A029154.P16859598137254067677

namespace A029154

/-- `A025844(n)+a(n-2)` -/
def P16859598137254067677.Spec : Prop :=
  ∀ n, P16859598137254067677.a n = A029154 n

end A029154

/-! ## A029154.P12157621886222423412

`A025815(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029154.P12157621886222423412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025815 n + a (n - 3)

end

end A029154.P12157621886222423412

namespace A029154

/-- `A025815(n)+a(n-3)` -/
def P12157621886222423412.Spec : Prop :=
  ∀ n, P12157621886222423412.a n = A029154 n

end A029154

/-! ## A029154.P3538180897946026144

`A025800(n)+A029143(n)-A029148(n)`
-/

namespace A029154.P3538180897946026144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025800 n + (A029143 n - A029148 n)

end

end A029154.P3538180897946026144

namespace A029154

/-- `A025800(n)+A029143(n)-A029148(n)` -/
def P3538180897946026144.Spec : Prop :=
  ∀ n, P3538180897946026144.a n = A029154 n

end A029154

/-! ## A029154.P3014434696207233182

`A029166(n)+A029195(n)-A029209(n)`
-/

namespace A029154.P3014434696207233182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029166 n + (A029195 n - A029209 n)

end

end A029154.P3014434696207233182

namespace A029154

/-- `A029166(n)+A029195(n)-A029209(n)` -/
def P3014434696207233182.Spec : Prop :=
  ∀ n, P3014434696207233182.a n = A029154 n

end A029154

/-! ## A029154.P2852470793206690369

`A029358(2*n)`
-/

namespace A029154.P2852470793206690369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029358 (2 * n)

end

end A029154.P2852470793206690369

namespace A029154

/-- `A029358(2*n)` -/
def P2852470793206690369.Spec : Prop :=
  ∀ n, P2852470793206690369.a n = A029154 n

end A029154

/-! ## A029154.P16892545855544062590

`A029225(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029154.P16892545855544062590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029225 (2 * n) - a (n - 1)

end

end A029154.P16892545855544062590

namespace A029154

/-- `A029225(2*n)-a(n-1)` -/
def P16892545855544062590.Spec : Prop :=
  ∀ n, P16892545855544062590.a n = A029154 n

end A029154

/-! ## A029154.P17537143658646521011

`A025875(2*n)+A029331(2*n)-A029346(2*n)`
-/

namespace A029154.P17537143658646521011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (2 * n) + (A029331 (2 * n) - A029346 (2 * n))

end

end A029154.P17537143658646521011

namespace A029154

/-- `A025875(2*n)+A029331(2*n)-A029346(2*n)` -/
def P17537143658646521011.Spec : Prop :=
  ∀ n, P17537143658646521011.a n = A029154 n

end A029154

/-! ## A029154.P4889129099982543009

`A029331(2*n)+A029368(2*n)-A029335(2*n)`
-/

namespace A029154.P4889129099982543009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (2 * n) + (A029368 (2 * n) - A029335 (2 * n))

end

end A029154.P4889129099982543009

namespace A029154

/-- `A029331(2*n)+A029368(2*n)-A029335(2*n)` -/
def P4889129099982543009.Spec : Prop :=
  ∀ n, P4889129099982543009.a n = A029154 n

end A029154

/-! ## A029154.P8850193587802616885

`A029351(2*n)+A029392(2*n)-A029381(2*n)`
-/

namespace A029154.P8850193587802616885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029351 (2 * n) + (A029392 (2 * n) - A029381 (2 * n))

end

end A029154.P8850193587802616885

namespace A029154

/-- `A029351(2*n)+A029392(2*n)-A029381(2*n)` -/
def P8850193587802616885.Spec : Prop :=
  ∀ n, P8850193587802616885.a n = A029154 n

end A029154

/-! ## A029154.P3579772409552362572

`A029367(2*n)+A029391(2*n)-A029400(2*n)`
-/

namespace A029154.P3579772409552362572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 (2 * n) + (A029391 (2 * n) - A029400 (2 * n))

end

end A029154.P3579772409552362572

namespace A029154

/-- `A029367(2*n)+A029391(2*n)-A029400(2*n)` -/
def P3579772409552362572.Spec : Prop :=
  ∀ n, P3579772409552362572.a n = A029154 n

end A029154

/-! ## A029154.P15523284139963503492

`A029377(2*n)+A029391(2*n)-A029412(2*n)`
-/

namespace A029154.P15523284139963503492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 (2 * n) + (A029391 (2 * n) - A029412 (2 * n))

end

end A029154.P15523284139963503492

namespace A029154

/-- `A029377(2*n)+A029391(2*n)-A029412(2*n)` -/
def P15523284139963503492.Spec : Prop :=
  ∀ n, P15523284139963503492.a n = A029154 n

end A029154

/-! ## A029154.P15944483550974072390

`A029372(2*n)+A029431(2*n)-A029445(2*n)`
-/

namespace A029154.P15944483550974072390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 (2 * n) + (A029431 (2 * n) - A029445 (2 * n))

end

end A029154.P15944483550974072390

namespace A029154

/-- `A029372(2*n)+A029431(2*n)-A029445(2*n)` -/
def P15944483550974072390.Spec : Prop :=
  ∀ n, P15944483550974072390.a n = A029154 n

end A029154

/-!
# A029155: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^6)*(1-x^12)).

The programs for A029155, the canonical program `A029155.P14032463646699761525` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029155 has offset 0).

The definition of A029155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029155.P14032463646699761525

`A173196(A103221(n)+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029155

/-- `A173196(A103221(n)+1)` -/
def P14032463646699761525.Spec : Prop :=
  ∀ n, P14032463646699761525.a n = A029155 n

theorem P14032463646699761525.correct : P14032463646699761525.Spec := by
  intro n
  simp only [A029155]

end A029155

/-! ## A029155.P5987558791214912896

`A173196(A080513(A008611(n)))`
-/

namespace A029155.P5987558791214912896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A080513 (A008611 n).toNat).toNat

end

end A029155.P5987558791214912896

namespace A029155

/-- `A173196(A080513(A008611(n)))` -/
def P5987558791214912896.Spec : Prop :=
  ∀ n, P5987558791214912896.a n = A029155 n

end A029155

/-! ## A029155.P832094321270928823

`A173196(A026806(n+2))`
-/

namespace A029155.P832094321270928823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A026806 (n + 2)).toNat

end

end A029155.P832094321270928823

namespace A029155

/-- `A173196(A026806(n+2))` -/
def P832094321270928823.Spec : Prop :=
  ∀ n, P832094321270928823.a n = A029155 n

end A029155

/-! ## A029155.P3203548316584095147

`A173196(A008615(n+8))`
-/

namespace A029155.P3203548316584095147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A008615 (n + 8)).toNat

end

end A029155.P3203548316584095147

namespace A029155

/-- `A173196(A008615(n+8))` -/
def P3203548316584095147.Spec : Prop :=
  ∀ n, P3203548316584095147.a n = A029155 n

end A029155

/-! ## A029155.P8455304224731363669

`A327672(A025801(n))`
-/

namespace A029155.P8455304224731363669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 (A025801 n).toNat

end

end A029155.P8455304224731363669

namespace A029155

/-- `A327672(A025801(n))` -/
def P8455304224731363669.Spec : Prop :=
  ∀ n, P8455304224731363669.a n = A029155 n

end A029155

/-! ## A029155.P6738035164915232664

`A173196(A000005(A060548(n+1)))`
-/

namespace A029155.P6738035164915232664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A000005 (A060548 (n + 1)).toNat).toNat

end

end A029155.P6738035164915232664

namespace A029155

/-- `A173196(A000005(A060548(n+1)))` -/
def P6738035164915232664.Spec : Prop :=
  ∀ n, P6738035164915232664.a n = A029155 n

end A029155

/-!
# A029156: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^7)*(1-x^8)).

The programs for A029156, the canonical program `A029156.P8988054540789904733` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029156 has offset 0).

The definition of A029156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029156.P8988054540789904733

`A029049(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029156

/-- `A029049(n)-a(n-1)` -/
def P8988054540789904733.Spec : Prop :=
  ∀ n, P8988054540789904733.a n = A029156 n

theorem P8988054540789904733.correct : P8988054540789904733.Spec := by
  intro n
  simp only [A029156]

end A029156

/-! ## A029156.P15088679748485500301

`A025845(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029156.P15088679748485500301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025845 n + a (n - 2)

end

end A029156.P15088679748485500301

namespace A029156

/-- `A025845(n)+a(n-2)` -/
def P15088679748485500301.Spec : Prop :=
  ∀ n, P15088679748485500301.a n = A029156 n

end A029156

/-! ## A029156.P5000108621594919475

`A025816(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029156.P5000108621594919475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025816 n + a (n - 3)

end

end A029156.P5000108621594919475

namespace A029156

/-- `A025816(n)+a(n-3)` -/
def P5000108621594919475.Spec : Prop :=
  ∀ n, P5000108621594919475.a n = A029156 n

end A029156

/-! ## A029156.P3745471983170731164

`A029106(n)-A025897(abs(A023443(n)))`
-/

namespace A029156.P3745471983170731164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029106 n - A025897 |A023443 n|.toNat

end

end A029156.P3745471983170731164

namespace A029156

/-- `A029106(n)-A025897(abs(A023443(n)))` -/
def P3745471983170731164.Spec : Prop :=
  ∀ n, P3745471983170731164.a n = A029156 n

end A029156

/-! ## A029156.P10811163859179292613

`A025845(n)+A029020(n)-A029049(n)`
-/

namespace A029156.P10811163859179292613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 n + (A029020 n - A029049 n)

end

end A029156.P10811163859179292613

namespace A029156

/-- `A025845(n)+A029020(n)-A029049(n)` -/
def P10811163859179292613.Spec : Prop :=
  ∀ n, P10811163859179292613.a n = A029156 n

end A029156

/-! ## A029156.P874078093986194901

`A029288(A001651(n+1))+A029227(n)`
-/

namespace A029156.P874078093986194901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (A001651 (n + 1)).toNat + A029227 n

end

end A029156.P874078093986194901

namespace A029156

/-- `A029288(A001651(n+1))+A029227(n)` -/
def P874078093986194901.Spec : Prop :=
  ∀ n, P874078093986194901.a n = A029156 n

end A029156

/-!
# A029157: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^7)*(1-x^9)).

The programs for A029157, the canonical program `A029157.P5576030815765251080` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029157 has offset 0).

The definition of A029157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029157.P5576030815765251080

`A029050(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029157

/-- `A029050(n)-a(n-1)` -/
def P5576030815765251080.Spec : Prop :=
  ∀ n, P5576030815765251080.a n = A029157 n

theorem P5576030815765251080.correct : P5576030815765251080.Spec := by
  intro n
  simp only [A029157]

end A029157

/-! ## A029157.P6905206720808272070

`A025846(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029157.P6905206720808272070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025846 n + a (n - 2)

end

end A029157.P6905206720808272070

namespace A029157

/-- `A025846(n)+a(n-2)` -/
def P6905206720808272070.Spec : Prop :=
  ∀ n, P6905206720808272070.a n = A029157 n

end A029157

/-! ## A029157.P5338888612321009147

`A025817(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029157.P5338888612321009147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025817 n + a (n - 3)

end

end A029157.P5338888612321009147

namespace A029157

/-- `A025817(n)+a(n-3)` -/
def P5338888612321009147.Spec : Prop :=
  ∀ n, P5338888612321009147.a n = A029157 n

end A029157

/-! ## A029157.P1578030443339027725

`A029258(abs(2-n))+A029258(n)`
-/

namespace A029157.P1578030443339027725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029258 |2 - (n : ℤ)|.toNat + A029258 n

end

end A029157.P1578030443339027725

namespace A029157

/-- `A029258(abs(2-n))+A029258(n)` -/
def P1578030443339027725.Spec : Prop :=
  ∀ n, P1578030443339027725.a n = A029157 n

end A029157

/-! ## A029157.P2599216226125916918

`A029365(A144396(n+1))+A025898(n)`
-/

namespace A029157.P2599216226125916918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029365 (A144396 (n + 1)).toNat + A025898 n

end

end A029157.P2599216226125916918

namespace A029157

/-- `A029365(A144396(n+1))+A025898(n)` -/
def P2599216226125916918.Spec : Prop :=
  ∀ n, P2599216226125916918.a n = A029157 n

end A029157

/-! ## A029157.P16147837013971129953

`A029365(A163985(n+2))+A025898(n)`
-/

namespace A029157.P16147837013971129953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029365 (A163985 (n + 2)).toNat + A025898 n

end

end A029157.P16147837013971129953

namespace A029157

/-- `A029365(A163985(n+2))+A025898(n)` -/
def P16147837013971129953.Spec : Prop :=
  ∀ n, P16147837013971129953.a n = A029157 n

end A029157

/-!
# A029158: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^7)*(1-x^10)).

The programs for A029158, the canonical program `A029158.P9530038267913608749` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029158 has offset 0).

The definition of A029158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029158.P9530038267913608749

`A029051(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029158

/-- `A029051(n)-a(n-1)` -/
def P9530038267913608749.Spec : Prop :=
  ∀ n, P9530038267913608749.a n = A029158 n

theorem P9530038267913608749.correct : P9530038267913608749.Spec := by
  intro n
  simp only [A029158]

end A029158

/-! ## A029158.P5515406092421652925

`A025847(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029158.P5515406092421652925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025847 n + a (n - 2)

end

end A029158.P5515406092421652925

namespace A029158

/-- `A025847(n)+a(n-2)` -/
def P5515406092421652925.Spec : Prop :=
  ∀ n, P5515406092421652925.a n = A029158 n

end A029158

/-! ## A029158.P14191597827856253069

`A025818(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029158.P14191597827856253069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025818 n + a (n - 3)

end

end A029158.P14191597827856253069

namespace A029158

/-- `A025818(n)+a(n-3)` -/
def P14191597827856253069.Spec : Prop :=
  ∀ n, P14191597827856253069.a n = A029158 n

end A029158

/-! ## A029158.P9653666582270122707

`A029108(n)-A025899(abs(A023443(n)))`
-/

namespace A029158.P9653666582270122707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029108 n - A025899 |A023443 n|.toNat

end

end A029158.P9653666582270122707

namespace A029158

/-- `A029108(n)-A025899(abs(A023443(n)))` -/
def P9653666582270122707.Spec : Prop :=
  ∀ n, P9653666582270122707.a n = A029158 n

end A029158

/-! ## A029158.P6936493332343093909

`A025847(n)+A029193(n)-A025899(n)`
-/

namespace A029158.P6936493332343093909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025847 n + (A029193 n - A025899 n)

end

end A029158.P6936493332343093909

namespace A029158

/-- `A025847(n)+A029193(n)-A025899(n)` -/
def P6936493332343093909.Spec : Prop :=
  ∀ n, P6936493332343093909.a n = A029158 n

end A029158

/-! ## A029158.P18363684730936829795

`A025847(n)+A029022(n)-A029051(n)`
-/

namespace A029158.P18363684730936829795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025847 n + (A029022 n - A029051 n)

end

end A029158.P18363684730936829795

namespace A029158

/-- `A025847(n)+A029022(n)-A029051(n)` -/
def P18363684730936829795.Spec : Prop :=
  ∀ n, P18363684730936829795.a n = A029158 n

end A029158

/-! ## A029158.P12758441166213776386

`A029022(n+2)-A029051(n+2)`
-/

namespace A029158.P12758441166213776386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029022 (n + 2) - A029051 (n + 2)

end

end A029158.P12758441166213776386

namespace A029158

/-- `A029022(n+2)-A029051(n+2)` -/
def P12758441166213776386.Spec : Prop :=
  ∀ n, P12758441166213776386.a n = A029158 n

end A029158

/-! ## A029158.P14743358809006373677

`A029144(n+5)-(A029216(n+2)+A029216(n+5))`
-/

namespace A029158.P14743358809006373677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029144 (n + 5) - (A029216 (n + 2) + A029216 (n + 5))

end

end A029158.P14743358809006373677

namespace A029158

/-- `A029144(n+5)-(A029216(n+2)+A029216(n+5))` -/
def P14743358809006373677.Spec : Prop :=
  ∀ n, P14743358809006373677.a n = A029158 n

end A029158

/-!
# A029159: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^7)*(1-x^11)).

The programs for A029159, the canonical program `A029159.P3197666481008141904` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029159 has offset 0).

The definition of A029159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029159.P3197666481008141904

`A029052(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029159

/-- `A029052(n)-a(n-1)` -/
def P3197666481008141904.Spec : Prop :=
  ∀ n, P3197666481008141904.a n = A029159 n

theorem P3197666481008141904.correct : P3197666481008141904.Spec := by
  intro n
  simp only [A029159]

end A029159

/-! ## A029159.P5382108837984307871

`A025848(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029159.P5382108837984307871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025848 n + a (n - 2)

end

end A029159.P5382108837984307871

namespace A029159

/-- `A025848(n)+a(n-2)` -/
def P5382108837984307871.Spec : Prop :=
  ∀ n, P5382108837984307871.a n = A029159 n

end A029159

/-! ## A029159.P10445657852492903874

`A025819(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029159.P10445657852492903874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025819 n + a (n - 3)

end

end A029159.P10445657852492903874

namespace A029159

/-- `A025819(n)+a(n-3)` -/
def P10445657852492903874.Spec : Prop :=
  ∀ n, P10445657852492903874.a n = A029159 n

end A029159

/-! ## A029159.P4082715304526175054

`A029168(n)+A029183(n)-A029191(n)`
-/

namespace A029159.P4082715304526175054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029168 n + (A029183 n - A029191 n)

end

end A029159.P4082715304526175054

namespace A029159

/-- `A029168(n)+A029183(n)-A029191(n)` -/
def P4082715304526175054.Spec : Prop :=
  ∀ n, P4082715304526175054.a n = A029159 n

end A029159

/-! ## A029159.P16611197909215105164

`A029437(2*n+1)+A029217(n)`
-/

namespace A029159.P16611197909215105164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (2 * n + 1) + A029217 n

end

end A029159.P16611197909215105164

namespace A029159

/-- `A029437(2*n+1)+A029217(n)` -/
def P16611197909215105164.Spec : Prop :=
  ∀ n, P16611197909215105164.a n = A029159 n

end A029159

/-! ## A029159.P7367286101830576284

`A029415(2*n+7)`
-/

namespace A029159.P7367286101830576284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029415 (2 * n + 7)

end

end A029159.P7367286101830576284

namespace A029159

/-- `A029415(2*n+7)` -/
def P7367286101830576284.Spec : Prop :=
  ∀ n, P7367286101830576284.a n = A029159 n

end A029159

/-! ## A029159.P8704319416482203488

`A029437(2*n+1)+A029437(A020742(n))`
-/

namespace A029159.P8704319416482203488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (2 * n + 1) + A029437 (A020742 n).toNat

end

end A029159.P8704319416482203488

namespace A029159

/-- `A029437(2*n+1)+A029437(A020742(n))` -/
def P8704319416482203488.Spec : Prop :=
  ∀ n, P8704319416482203488.a n = A029159 n

end A029159

/-! ## A029159.P16391540979463599122

`A029437(2*n+1)+A029437(A005818(n+2))`
-/

namespace A029159.P16391540979463599122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (2 * n + 1) + A029437 (A005818 (n + 2)).toNat

end

end A029159.P16391540979463599122

namespace A029159

/-- `A029437(2*n+1)+A029437(A005818(n+2))` -/
def P16391540979463599122.Spec : Prop :=
  ∀ n, P16391540979463599122.a n = A029159 n

end A029159

/-! ## A029159.P192967550051639012

`A029437(2*n+1)+A029437(A020735(n+2))`
-/

namespace A029159.P192967550051639012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (2 * n + 1) + A029437 (A020735 (n + 2)).toNat

end

end A029159.P192967550051639012

namespace A029159

/-- `A029437(2*n+1)+A029437(A020735(n+2))` -/
def P192967550051639012.Spec : Prop :=
  ∀ n, P192967550051639012.a n = A029159 n

end A029159

/-!
# A029160: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^7)*(1-x^12)).

The programs for A029160, the canonical program `A029160.P15609541812980759005` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029160 has offset 0).

The definition of A029160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029160.P15969214722170225507

`A029053(n)-a(n-1)` with `a(0)=1`
-/

namespace A029160.P15969214722170225507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029053 n - a (n - 1)

end

end A029160.P15969214722170225507

namespace A029160

/-- `A029053(n)-a(n-1)` -/
def P15969214722170225507.Spec : Prop :=
  ∀ n, P15969214722170225507.a n = A029160 n

end A029160

/-! ## A029160.P3665081789316617255

`A025849(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029160.P3665081789316617255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025849 n + a (n - 2)

end

end A029160.P3665081789316617255

namespace A029160

/-- `A025849(n)+a(n-2)` -/
def P3665081789316617255.Spec : Prop :=
  ∀ n, P3665081789316617255.a n = A029160 n

end A029160

/-! ## A029160.P15609541812980759005

`A025820(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029160

/-- `A025820(n)+a(n-3)` -/
def P15609541812980759005.Spec : Prop :=
  ∀ n, P15609541812980759005.a n = A029160 n

theorem P15609541812980759005.correct : P15609541812980759005.Spec := by
  intro n
  simp only [A029160]

end A029160

/-! ## A029160.P11663690758367873491

`abs(∑[A029053(n)*A033999(n)])`
-/

namespace A029160.P11663690758367873491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029160.P11663690758367873491

namespace A029160

/-- `abs(∑[A029053(n)*A033999(n)])` -/
def P11663690758367873491.Spec : Prop :=
  ∀ n, P11663690758367873491.a n = A029160 n

end A029160

/-! ## A029160.P1565193689873438607

`A029261(abs(2-n))+A029261(n)`
-/

namespace A029160.P1565193689873438607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029261 |2 - (n : ℤ)|.toNat + A029261 n

end

end A029160.P1565193689873438607

namespace A029160

/-- `A029261(abs(2-n))+A029261(n)` -/
def P1565193689873438607.Spec : Prop :=
  ∀ n, P1565193689873438607.a n = A029160 n

end A029160

/-! ## A029160.P4180782019838420601

`A029110(n)-A025901(abs(A023443(n)))`
-/

namespace A029160.P4180782019838420601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029110 n - A025901 |A023443 n|.toNat

end

end A029160.P4180782019838420601

namespace A029160

/-- `A029110(n)-A025901(abs(A023443(n)))` -/
def P4180782019838420601.Spec : Prop :=
  ∀ n, P4180782019838420601.a n = A029160 n

end A029160

/-! ## A029160.P5791896835245405039

`A025849(n)+A029024(n)-A029053(n)`
-/

namespace A029160.P5791896835245405039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025849 n + (A029024 n - A029053 n)

end

end A029160.P5791896835245405039

namespace A029160

/-- `A025849(n)+A029024(n)-A029053(n)` -/
def P5791896835245405039.Spec : Prop :=
  ∀ n, P5791896835245405039.a n = A029160 n

end A029160

/-!
# A029161: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^8)*(1-x^9)).

The programs for A029161, the canonical program `A029161.P12244907669660074842` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029161 has offset 0).

The definition of A029161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029161.P12244907669660074842

`A029054(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029161

/-- `A029054(n)-a(n-1)` -/
def P12244907669660074842.Spec : Prop :=
  ∀ n, P12244907669660074842.a n = A029161 n

theorem P12244907669660074842.correct : P12244907669660074842.Spec := by
  intro n
  simp only [A029161]

end A029161

/-! ## A029161.P2159097481259719482

`A025850(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029161.P2159097481259719482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025850 n + a (n - 2)

end

end A029161.P2159097481259719482

namespace A029161

/-- `A025850(n)+a(n-2)` -/
def P2159097481259719482.Spec : Prop :=
  ∀ n, P2159097481259719482.a n = A029161 n

end A029161

/-! ## A029161.P12523359398272338969

`A025821(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029161.P12523359398272338969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025821 n + a (n - 3)

end

end A029161.P12523359398272338969

namespace A029161

/-- `A025821(n)+a(n-3)` -/
def P12523359398272338969.Spec : Prop :=
  ∀ n, P12523359398272338969.a n = A029161 n

end A029161

/-! ## A029161.P17511570517520701542

`abs(∑[A029054(n)*A033999(n)])`
-/

namespace A029161.P17511570517520701542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029054 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029161.P17511570517520701542

namespace A029161

/-- `abs(∑[A029054(n)*A033999(n)])` -/
def P17511570517520701542.Spec : Prop :=
  ∀ n, P17511570517520701542.a n = A029161 n

end A029161

/-! ## A029161.P14794762916785399243

`A029262(abs(2-n))+A029262(n)`
-/

namespace A029161.P14794762916785399243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029262 |2 - (n : ℤ)|.toNat + A029262 n

end

end A029161.P14794762916785399243

namespace A029161

/-- `A029262(abs(2-n))+A029262(n)` -/
def P14794762916785399243.Spec : Prop :=
  ∀ n, P14794762916785399243.a n = A029161 n

end A029161

/-! ## A029161.P6559917745389761008

`A029111(n)-A025902(abs(A023443(n)))`
-/

namespace A029161.P6559917745389761008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029111 n - A025902 |A023443 n|.toNat

end

end A029161.P6559917745389761008

namespace A029161

/-- `A029111(n)-A025902(abs(A023443(n)))` -/
def P6559917745389761008.Spec : Prop :=
  ∀ n, P6559917745389761008.a n = A029161 n

end A029161

/-! ## A029161.P2849667901012089889

`A272584(n)%2*∑[A029054(n)*A033999(n)]`
-/

namespace A029161.P2849667901012089889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029054 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272584 n) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029161.P2849667901012089889

namespace A029161

/-- `A272584(n)%2*∑[A029054(n)*A033999(n)]` -/
def P2849667901012089889.Spec : Prop :=
  ∀ n, P2849667901012089889.a n = A029161 n

end A029161

/-!
# A029162: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^8)*(1-x^10)).

The programs for A029162, the canonical program `A029162.P60174029039991701` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029162 has offset 0).

The definition of A029162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029162.P60174029039991701

`A029055(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029162

/-- `A029055(n)-a(n-1)` -/
def P60174029039991701.Spec : Prop :=
  ∀ n, P60174029039991701.a n = A029162 n

theorem P60174029039991701.correct : P60174029039991701.Spec := by
  intro n
  simp only [A029162]

end A029162

/-! ## A029162.P7105271543744189410

`A025851(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029162.P7105271543744189410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025851 n + a (n - 2)

end

end A029162.P7105271543744189410

namespace A029162

/-- `A025851(n)+a(n-2)` -/
def P7105271543744189410.Spec : Prop :=
  ∀ n, P7105271543744189410.a n = A029162 n

end A029162

/-! ## A029162.P967814666809739738

`A029194(xor(1, n+1))`
-/

namespace A029162.P967814666809739738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029194 (Nat.xor 1 (n + 1))

end

end A029162.P967814666809739738

namespace A029162

/-- `A029194(xor(1, n+1))` -/
def P967814666809739738.Spec : Prop :=
  ∀ n, P967814666809739738.a n = A029162 n

end A029162

/-! ## A029162.P5509836124275791371

`A029194(n+1-(-1)^n)`
-/

namespace A029162.P5509836124275791371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029194 ((n + 1 : ℤ) - (-1) ^ n).toNat

end

end A029162.P5509836124275791371

namespace A029162

/-- `A029194(n+1-(-1)^n)` -/
def P5509836124275791371.Spec : Prop :=
  ∀ n, P5509836124275791371.a n = A029162 n

end A029162

/-! ## A029162.P15545198373424496985

`A029246(A097062(n+2))`
-/

namespace A029162.P15545198373424496985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029246 (A097062 (n + 2)).toNat

end

end A029162.P15545198373424496985

namespace A029162

/-- `A029246(A097062(n+2))` -/
def P15545198373424496985.Spec : Prop :=
  ∀ n, P15545198373424496985.a n = A029162 n

end A029162

/-! ## A029162.P2421560480146847957

`A029288(A007494(n))`
-/

namespace A029162.P2421560480146847957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (A007494 n).toNat

end

end A029162.P2421560480146847957

namespace A029162

/-- `A029288(A007494(n))` -/
def P2421560480146847957.Spec : Prop :=
  ∀ n, P2421560480146847957.a n = A029162 n

end A029162

/-! ## A029162.P8231765783200383726

`A029288(record[A064429(n)])`
-/

namespace A029162.P8231765783200383726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029162.P8231765783200383726

namespace A029162

/-- `A029288(record[A064429(n)])` -/
def P8231765783200383726.Spec : Prop :=
  ∀ n, P8231765783200383726.a n = A029162 n

end A029162

/-! ## A029162.P14833043329068322776

`A029288(A001651(n+2)-2)`
-/

namespace A029162.P14833043329068322776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (A001651 (n + 2) - 2).toNat

end

end A029162.P14833043329068322776

namespace A029162

/-- `A029288(A001651(n+2)-2)` -/
def P14833043329068322776.Spec : Prop :=
  ∀ n, P14833043329068322776.a n = A029162 n

end A029162

/-! ## A029162.P5110982049301031465

`A029288(A004526(n+1)+n)`
-/

namespace A029162.P5110982049301031465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (A004526 (n + 1) + (n : ℤ)).toNat

end

end A029162.P5110982049301031465

namespace A029162

/-- `A029288(A004526(n+1)+n)` -/
def P5110982049301031465.Spec : Prop :=
  ∀ n, P5110982049301031465.a n = A029162 n

end A029162

/-! ## A029162.P2043578409189400700

`A029288(2*n-A004526(n))`
-/

namespace A029162.P2043578409189400700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 ((2 * n : ℤ) - A004526 n).toNat

end

end A029162.P2043578409189400700

namespace A029162

/-- `A029288(2*n-A004526(n))` -/
def P2043578409189400700.Spec : Prop :=
  ∀ n, P2043578409189400700.a n = A029162 n

end A029162

/-! ## A029162.P987182506510505430

`A029288(n-(A004526(n)-n))`
-/

namespace A029162.P987182506510505430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 ((n : ℤ) - (A004526 n - (n : ℤ))).toNat

end

end A029162.P987182506510505430

namespace A029162

/-- `A029288(n-(A004526(n)-n))` -/
def P987182506510505430.Spec : Prop :=
  ∀ n, P987182506510505430.a n = A029162 n

end A029162

/-! ## A029162.P14425455254190687034

`A029288(A168202(n+1))`
-/

namespace A029162.P14425455254190687034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (A168202 (n + 1)).toNat

end

end A029162.P14425455254190687034

namespace A029162

/-- `A029288(A168202(n+1))` -/
def P14425455254190687034.Spec : Prop :=
  ∀ n, P14425455254190687034.a n = A029162 n

end A029162

/-! ## A029162.P14539276148843878356

`A029288(A168197(n+1))`
-/

namespace A029162.P14539276148843878356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (A168197 (n + 1)).toNat

end

end A029162.P14539276148843878356

namespace A029162

/-- `A029288(A168197(n+1))` -/
def P14539276148843878356.Spec : Prop :=
  ∀ n, P14539276148843878356.a n = A029162 n

end A029162

/-! ## A029162.P14860516158136582532

`A029288(A001651(n+4))`
-/

namespace A029162.P14860516158136582532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (A001651 (n + 4)).toNat

end

end A029162.P14860516158136582532

namespace A029162

/-- `A029288(A001651(n+4))` -/
def P14860516158136582532.Spec : Prop :=
  ∀ n, P14860516158136582532.a n = A029162 n

end A029162

/-!
# A029163: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^8)*(1-x^11)).

The programs for A029163, the canonical program `A029163.P13423958739968930241` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029163 has offset 0).

The definition of A029163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029163.P17584101927442140073

`A029056(n)-a(n-1)` with `a(0)=1`
-/

namespace A029163.P17584101927442140073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029056 n - a (n - 1)

end

end A029163.P17584101927442140073

namespace A029163

/-- `A029056(n)-a(n-1)` -/
def P17584101927442140073.Spec : Prop :=
  ∀ n, P17584101927442140073.a n = A029163 n

end A029163

/-! ## A029163.P16130915009078514529

`A025852(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029163.P16130915009078514529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025852 n + a (n - 2)

end

end A029163.P16130915009078514529

namespace A029163

/-- `A025852(n)+a(n-2)` -/
def P16130915009078514529.Spec : Prop :=
  ∀ n, P16130915009078514529.a n = A029163 n

end A029163

/-! ## A029163.P13423958739968930241

`A025822(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029163

/-- `A025822(n)+a(n-3)` -/
def P13423958739968930241.Spec : Prop :=
  ∀ n, P13423958739968930241.a n = A029163 n

theorem P13423958739968930241.correct : P13423958739968930241.Spec := by
  intro n
  simp only [A029163]

end A029163

/-! ## A029163.P9150617208252118229

`A029112(n)-A025903(abs(1-n))`
-/

namespace A029163.P9150617208252118229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029112 n - A025903 |1 - (n : ℤ)|.toNat

end

end A029163.P9150617208252118229

namespace A029163

/-- `A029112(n)-A025903(abs(1-n))` -/
def P9150617208252118229.Spec : Prop :=
  ∀ n, P9150617208252118229.a n = A029163 n

end A029163

/-! ## A029163.P11905623309383791397

`A025852(n)+A029026(n)-A029056(n)`
-/

namespace A029163.P11905623309383791397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025852 n + (A029026 n - A029056 n)

end

end A029163.P11905623309383791397

namespace A029163

/-- `A025852(n)+A029026(n)-A029056(n)` -/
def P11905623309383791397.Spec : Prop :=
  ∀ n, P11905623309383791397.a n = A029163 n

end A029163

/-! ## A029163.P8228096422357447512

`Δ[a(n-2)+A029072(n)-A025903(n)]` with `a(0)=0, a(1)=1`
-/

namespace A029163.P8228096422357447512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (A029072 n - A025903 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029163.P8228096422357447512

namespace A029163

/-- `Δ[a(n-2)+A029072(n)-A025903(n)]` -/
def P8228096422357447512.Spec : Prop :=
  ∀ n, P8228096422357447512.a n = A029163 n

end A029163

/-! ## A029163.P17288450364285968080

`A029026(n+2)-A029056(n+2)`
-/

namespace A029163.P17288450364285968080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029026 (n + 2) - A029056 (n + 2)

end

end A029163.P17288450364285968080

namespace A029163

/-- `A029026(n+2)-A029056(n+2)` -/
def P17288450364285968080.Spec : Prop :=
  ∀ n, P17288450364285968080.a n = A029163 n

end A029163

/-!
# A029164: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^8)*(1-x^12)).

The programs for A029164, the canonical program `A029164.P776658935013959894` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029164 has offset 0).

The definition of A029164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029164.P776658935013959894

`A029057(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029164

/-- `A029057(n)-a(n-1)` -/
def P776658935013959894.Spec : Prop :=
  ∀ n, P776658935013959894.a n = A029164 n

theorem P776658935013959894.correct : P776658935013959894.Spec := by
  intro n
  simp only [A029164]

end A029164

/-! ## A029164.P7223307605464955980

`A025853(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029164.P7223307605464955980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025853 n + a (n - 2)

end

end A029164.P7223307605464955980

namespace A029164

/-- `A025853(n)+a(n-2)` -/
def P7223307605464955980.Spec : Prop :=
  ∀ n, P7223307605464955980.a n = A029164 n

end A029164

/-! ## A029164.P8788568242746499561

`abs(∑[A029057(n)*A033999(n)])`
-/

namespace A029164.P8788568242746499561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029164.P8788568242746499561

namespace A029164

/-- `abs(∑[A029057(n)*A033999(n)])` -/
def P8788568242746499561.Spec : Prop :=
  ∀ n, P8788568242746499561.a n = A029164 n

end A029164

/-! ## A029164.P6432449034798581951

`A025853(n)+A029155(n)-A029300(n)`
-/

namespace A029164.P6432449034798581951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 n + (A029155 n - A029300 n)

end

end A029164.P6432449034798581951

namespace A029164

/-- `A025853(n)+A029155(n)-A029300(n)` -/
def P6432449034798581951.Spec : Prop :=
  ∀ n, P6432449034798581951.a n = A029164 n

end A029164

/-! ## A029164.P7763120203769037095

`A029170(n)+A029187(n)-A029192(n)`
-/

namespace A029164.P7763120203769037095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029170 n + (A029187 n - A029192 n)

end

end A029164.P7763120203769037095

namespace A029164

/-- `A029170(n)+A029187(n)-A029192(n)` -/
def P7763120203769037095.Spec : Prop :=
  ∀ n, P7763120203769037095.a n = A029164 n

end A029164

/-! ## A029164.P556144647252785633

`A029155(n+2)-A029300(n+2)`
-/

namespace A029164.P556144647252785633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029155 (n + 2) - A029300 (n + 2)

end

end A029164.P556144647252785633

namespace A029164

/-- `A029155(n+2)-A029300(n+2)` -/
def P556144647252785633.Spec : Prop :=
  ∀ n, P556144647252785633.a n = A029164 n

end A029164

/-!
# A029165: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^9)*(1-x^10)).

The programs for A029165, the canonical program `A029165.P430472255033191100` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029165 has offset 0).

The definition of A029165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029165.P13296010113558588583

`A029058(n)-a(n-1)` with `a(0)=1`
-/

namespace A029165.P13296010113558588583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029058 n - a (n - 1)

end

end A029165.P13296010113558588583

namespace A029165

/-- `A029058(n)-a(n-1)` -/
def P13296010113558588583.Spec : Prop :=
  ∀ n, P13296010113558588583.a n = A029165 n

end A029165

/-! ## A029165.P8789154042335616602

`A025854(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029165.P8789154042335616602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025854 n + a (n - 2)

end

end A029165.P8789154042335616602

namespace A029165

/-- `A025854(n)+a(n-2)` -/
def P8789154042335616602.Spec : Prop :=
  ∀ n, P8789154042335616602.a n = A029165 n

end A029165

/-! ## A029165.P430472255033191100

`A025823(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029165

/-- `A025823(n)+a(n-3)` -/
def P430472255033191100.Spec : Prop :=
  ∀ n, P430472255033191100.a n = A029165 n

theorem P430472255033191100.correct : P430472255033191100.Spec := by
  intro n
  simp only [A029165]

end A029165

/-! ## A029165.P13219855814259908317

`A029153(n)+A029188(n)-A029179(n)`
-/

namespace A029165.P13219855814259908317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029153 n + (A029188 n - A029179 n)

end

end A029165.P13219855814259908317

namespace A029165

/-- `A029153(n)+A029188(n)-A029179(n)` -/
def P13219855814259908317.Spec : Prop :=
  ∀ n, P13219855814259908317.a n = A029165 n

end A029165

/-! ## A029165.P7957886206705289490

`A025854(n)+∑[A025823(n)-A025854(n)]`
-/

namespace A029165.P7957886206705289490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025823 n - A025854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025854 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029165.P7957886206705289490

namespace A029165

/-- `A025854(n)+∑[A025823(n)-A025854(n)]` -/
def P7957886206705289490.Spec : Prop :=
  ∀ n, P7957886206705289490.a n = A029165 n

end A029165

/-! ## A029165.P7084099079926989899

`∑[A214772(2*n)-a(n-1)]` with `a(0)=1`
-/

namespace A029165.P7084099079926989899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A214772 (2 * n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029165.P7084099079926989899

namespace A029165

/-- `∑[A214772(2*n)-a(n-1)]` -/
def P7084099079926989899.Spec : Prop :=
  ∀ n, P7084099079926989899.a n = A029165 n

end A029165

/-!
# A029166: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^9)*(1-x^11)).

The programs for A029166, the canonical program `A029166.P10852139919608764401` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029166 has offset 0).

The definition of A029166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029166.P10852139919608764401

`A029059(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029166

/-- `A029059(n)-a(n-1)` -/
def P10852139919608764401.Spec : Prop :=
  ∀ n, P10852139919608764401.a n = A029166 n

theorem P10852139919608764401.correct : P10852139919608764401.Spec := by
  intro n
  simp only [A029166]

end A029166

/-! ## A029166.P4442633277255766374

`A025855(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029166.P4442633277255766374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025855 n + a (n - 2)

end

end A029166.P4442633277255766374

namespace A029166

/-- `A025855(n)+a(n-2)` -/
def P4442633277255766374.Spec : Prop :=
  ∀ n, P4442633277255766374.a n = A029166 n

end A029166

/-! ## A029166.P105968326064303564

`A025824(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029166.P105968326064303564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025824 n + a (n - 3)

end

end A029166.P105968326064303564

namespace A029166

/-- `A025824(n)+a(n-3)` -/
def P105968326064303564.Spec : Prop :=
  ∀ n, P105968326064303564.a n = A029166 n

end A029166

/-! ## A029166.P3108980912367332166

`A029114(n)-A025905(abs(1-n))`
-/

namespace A029166.P3108980912367332166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n - A025905 |1 - (n : ℤ)|.toNat

end

end A029166.P3108980912367332166

namespace A029166

/-- `A029114(n)-A025905(abs(1-n))` -/
def P3108980912367332166.Spec : Prop :=
  ∀ n, P3108980912367332166.a n = A029166 n

end A029166

/-! ## A029166.P17518544699934646646

`∑[A025855(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A029166.P17518544699934646646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025855 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029166.P17518544699934646646

namespace A029166

/-- `∑[A025855(n)-a(A023443(n))]` -/
def P17518544699934646646.Spec : Prop :=
  ∀ n, P17518544699934646646.a n = A029166 n

end A029166

/-!
# A029167: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^9)*(1-x^12)).

The programs for A029167, the canonical program `A029167.P12251937552887312073` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029167 has offset 0).

The definition of A029167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029167.P12251937552887312073

`A025825(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029167

/-- `A025825(n)+a(n-3)` -/
def P12251937552887312073.Spec : Prop :=
  ∀ n, P12251937552887312073.a n = A029167 n

theorem P12251937552887312073.correct : P12251937552887312073.Spec := by
  intro n
  simp only [A029167]

end A029167

/-! ## A029167.P2984940252676418202

`A026810(A008611(n)+3)`
-/

namespace A029167.P2984940252676418202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A008611 n + 3).toNat

end

end A029167.P2984940252676418202

namespace A029167

/-- `A026810(A008611(n)+3)` -/
def P2984940252676418202.Spec : Prop :=
  ∀ n, P2984940252676418202.a n = A029167 n

end A029167

/-! ## A029167.P3033314092252415010

`A029138(2*A008611(n)+1)`
-/

namespace A029167.P3033314092252415010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 (2 * A008611 n + 1).toNat

end

end A029167.P3033314092252415010

namespace A029167

/-- `A029138(2*A008611(n)+1)` -/
def P3033314092252415010.Spec : Prop :=
  ∀ n, P3033314092252415010.a n = A029167 n

end A029167

/-! ## A029167.P9028012220614976302

`A029268(abs(2-n))+A029268(n)`
-/

namespace A029167.P9028012220614976302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029268 |2 - (n : ℤ)|.toNat + A029268 n

end

end A029167.P9028012220614976302

namespace A029167

/-- `A029268(abs(2-n))+A029268(n)` -/
def P9028012220614976302.Spec : Prop :=
  ∀ n, P9028012220614976302.a n = A029167 n

end A029167

/-! ## A029167.P3155712842534466161

`A029138(A005408(A008611(n)))`
-/

namespace A029167.P3155712842534466161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 (A005408 (A008611 n).toNat).toNat

end

end A029167.P3155712842534466161

namespace A029167

/-- `A029138(A005408(A008611(n)))` -/
def P3155712842534466161.Spec : Prop :=
  ∀ n, P3155712842534466161.a n = A029167 n

end A029167

/-! ## A029167.P12250836413543667819

`A026810(4-A024000(A008611(n)))`
-/

namespace A029167.P12250836413543667819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (4 - A024000 (A008611 n).toNat).toNat

end

end A029167.P12250836413543667819

namespace A029167

/-- `A026810(4-A024000(A008611(n)))` -/
def P12250836413543667819.Spec : Prop :=
  ∀ n, P12250836413543667819.a n = A029167 n

end A029167

/-! ## A029167.P604335730798292182

`A029138(A008611(n)+A008611(n)+1)`
-/

namespace A029167.P604335730798292182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 (A008611 n + (A008611 n + 1)).toNat

end

end A029167.P604335730798292182

namespace A029167

/-- `A029138(A008611(n)+A008611(n)+1)` -/
def P604335730798292182.Spec : Prop :=
  ∀ n, P604335730798292182.a n = A029167 n

end A029167

/-! ## A029167.P3453773591981585870

`A029253(A061800(A061800(n)))`
-/

namespace A029167.P3453773591981585870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 (A061800 (A061800 n).toNat).toNat

end

end A029167.P3453773591981585870

namespace A029167

/-- `A029253(A061800(A061800(n)))` -/
def P3453773591981585870.Spec : Prop :=
  ∀ n, P3453773591981585870.a n = A029167 n

end A029167

/-! ## A029167.P9182878779811792692

`A288165(A144437(n+1)+1+n)`
-/

namespace A029167.P9182878779811792692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A144437 (n + 1) + 1 + (n : ℤ)).toNat

end

end A029167.P9182878779811792692

namespace A029167

/-- `A288165(A144437(n+1)+1+n)` -/
def P9182878779811792692.Spec : Prop :=
  ∀ n, P9182878779811792692.a n = A029167 n

end A029167

/-! ## A029167.P8638057703344057042

`A029253(A144437(n+1)+1+n)`
-/

namespace A029167.P8638057703344057042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 (A144437 (n + 1) + 1 + (n : ℤ)).toNat

end

end A029167.P8638057703344057042

namespace A029167

/-- `A029253(A144437(n+1)+1+n)` -/
def P8638057703344057042.Spec : Prop :=
  ∀ n, P8638057703344057042.a n = A029167 n

end A029167

/-! ## A029167.P1425906742655278696

`A029253(A016789(A008611(n)+1))`
-/

namespace A029167.P1425906742655278696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 (A016789 (A008611 n + 1).toNat).toNat

end

end A029167.P1425906742655278696

namespace A029167

/-- `A029253(A016789(A008611(n)+1))` -/
def P1425906742655278696.Spec : Prop :=
  ∀ n, P1425906742655278696.a n = A029167 n

end A029167

/-! ## A029167.P8172626604387138050

`A026810(A008611(A020723(n)))`
-/

namespace A029167.P8172626604387138050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A008611 (A020723 n).toNat).toNat

end

end A029167.P8172626604387138050

namespace A029167

/-- `A026810(A008611(A020723(n)))` -/
def P8172626604387138050.Spec : Prop :=
  ∀ n, P8172626604387138050.a n = A029167 n

end A029167

/-! ## A029167.P3797048724185150422

`A026810(A008612(A005843(n))+3)`
-/

namespace A029167.P3797048724185150422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A008612 (A005843 n).toNat + 3).toNat

end

end A029167.P3797048724185150422

namespace A029167

/-- `A026810(A008612(A005843(n))+3)` -/
def P3797048724185150422.Spec : Prop :=
  ∀ n, P3797048724185150422.a n = A029167 n

end A029167

/-! ## A029167.P8859651043313889558

`A029253(A008611(9*A008611(n)))`
-/

namespace A029167.P8859651043313889558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 (A008611 (9 * A008611 n).toNat).toNat

end

end A029167.P8859651043313889558

namespace A029167

/-- `A029253(A008611(9*A008611(n)))` -/
def P8859651043313889558.Spec : Prop :=
  ∀ n, P8859651043313889558.a n = A029167 n

end A029167

/-!
# A029168: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^10)*(1-x^11)).

The programs for A029168, the canonical program `A029168.P16484112271336617921` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029168 has offset 0).

The definition of A029168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029168.P16484112271336617921

`A029060(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029168

/-- `A029060(n)-a(n-1)` -/
def P16484112271336617921.Spec : Prop :=
  ∀ n, P16484112271336617921.a n = A029168 n

theorem P16484112271336617921.correct : P16484112271336617921.Spec := by
  intro n
  simp only [A029168]

end A029168

/-! ## A029168.P9281387555158448701

`A025856(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029168.P9281387555158448701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025856 n + a (n - 2)

end

end A029168.P9281387555158448701

namespace A029168

/-- `A025856(n)+a(n-2)` -/
def P9281387555158448701.Spec : Prop :=
  ∀ n, P9281387555158448701.a n = A029168 n

end A029168

/-! ## A029168.P2139747203249879445

`A025826(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029168.P2139747203249879445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025826 n + a (n - 3)

end

end A029168.P2139747203249879445

namespace A029168

/-- `A025826(n)+a(n-3)` -/
def P2139747203249879445.Spec : Prop :=
  ∀ n, P2139747203249879445.a n = A029168 n

end A029168

/-! ## A029168.P726578388242313584

`A029269(abs(2-n))+A029269(n)`
-/

namespace A029168.P726578388242313584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029269 |2 - (n : ℤ)|.toNat + A029269 n

end

end A029168.P726578388242313584

namespace A029168

/-- `A029269(abs(2-n))+A029269(n)` -/
def P726578388242313584.Spec : Prop :=
  ∀ n, P726578388242313584.a n = A029168 n

end A029168

/-! ## A029168.P5715712931140281942

`∑[A025906(n)]-A025906(abs(1-n))`
-/

namespace A029168.P5715712931140281942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025906 |1 - (n : ℤ)|.toNat

end

end A029168.P5715712931140281942

namespace A029168

/-- `∑[A025906(n)]-A025906(abs(1-n))` -/
def P5715712931140281942.Spec : Prop :=
  ∀ n, P5715712931140281942.a n = A029168 n

end A029168

/-! ## A029168.P14135631045076878609

`A029159(n)+A029191(n)-A029183(n)`
-/

namespace A029168.P14135631045076878609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029159 n + (A029191 n - A029183 n)

end

end A029168.P14135631045076878609

namespace A029168

/-- `A029159(n)+A029191(n)-A029183(n)` -/
def P14135631045076878609.Spec : Prop :=
  ∀ n, P14135631045076878609.a n = A029168 n

end A029168

/-!
# A029169: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^10)*(1-x^12)).

The programs for A029169, the canonical program `A029169.P3240028449716027117` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029169 has offset 0).

The definition of A029169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029169.P3240028449716027117

`A029061(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029169

/-- `A029061(n)-a(n-1)` -/
def P3240028449716027117.Spec : Prop :=
  ∀ n, P3240028449716027117.a n = A029169 n

theorem P3240028449716027117.correct : P3240028449716027117.Spec := by
  intro n
  simp only [A029169]

end A029169

/-! ## A029169.P14089394297926264569

`A025857(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029169.P14089394297926264569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025857 n + a (n - 2)

end

end A029169.P14089394297926264569

namespace A029169

/-- `A025857(n)+a(n-2)` -/
def P14089394297926264569.Spec : Prop :=
  ∀ n, P14089394297926264569.a n = A029169 n

end A029169

/-! ## A029169.P10636327460166988379

`A029270(abs(2-n))+A029270(n)`
-/

namespace A029169.P10636327460166988379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029270 |2 - (n : ℤ)|.toNat + A029270 n

end

end A029169.P10636327460166988379

namespace A029169

/-- `A029270(abs(2-n))+A029270(n)` -/
def P10636327460166988379.Spec : Prop :=
  ∀ n, P10636327460166988379.a n = A029169 n

end A029169

/-! ## A029169.P5814113695506774301

`A029198(xor(1, n+1))`
-/

namespace A029169.P5814113695506774301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 (Nat.xor 1 (n + 1))

end

end A029169.P5814113695506774301

namespace A029169

/-- `A029198(xor(1, n+1))` -/
def P5814113695506774301.Spec : Prop :=
  ∀ n, P5814113695506774301.a n = A029169 n

end A029169

/-! ## A029169.P18435759763851941077

`A029198(A004442(n+1))`
-/

namespace A029169.P18435759763851941077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 (A004442 (n + 1)).toNat

end

end A029169.P18435759763851941077

namespace A029169

/-- `A029198(A004442(n+1))` -/
def P18435759763851941077.Spec : Prop :=
  ∀ n, P18435759763851941077.a n = A029169 n

end A029169

/-! ## A029169.P7065484048180990033

`A029198(A010673(n)+n)`
-/

namespace A029169.P7065484048180990033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 (A010673 n + (n : ℤ)).toNat

end

end A029169.P7065484048180990033

namespace A029169

/-- `A029198(A010673(n)+n)` -/
def P7065484048180990033.Spec : Prop :=
  ∀ n, P7065484048180990033.a n = A029169 n

end A029169

/-! ## A029169.P12863571040416647165

`A029250(xor(1, n)+gcd(2, n))`
-/

namespace A029169.P12863571040416647165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029250 (Nat.xor 1 n + Nat.gcd 2 n)

end

end A029169.P12863571040416647165

namespace A029169

/-- `A029250(xor(1, n)+gcd(2, n))` -/
def P12863571040416647165.Spec : Prop :=
  ∀ n, P12863571040416647165.a n = A029169 n

end A029169

/-! ## A029169.P477642866209495264

`A029250(A097062(n+2))`
-/

namespace A029169.P477642866209495264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029250 (A097062 (n + 2)).toNat

end

end A029169.P477642866209495264

namespace A029169

/-- `A029250(A097062(n+2))` -/
def P477642866209495264.Spec : Prop :=
  ∀ n, P477642866209495264.a n = A029169 n

end A029169

/-! ## A029169.P12764735351032448053

`A029250(abs(Δ[A059029(n)]))`
-/

namespace A029169.P12764735351032448053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029250 |f1 (n + 1) - f1 n|.toNat

end

end A029169.P12764735351032448053

namespace A029169

/-- `A029250(abs(Δ[A059029(n)]))` -/
def P12764735351032448053.Spec : Prop :=
  ∀ n, P12764735351032448053.a n = A029169 n

end A029169

/-! ## A029169.P4309549594204535875

`A029198(A097062(n+2))+A025857(n)`
-/

namespace A029169.P4309549594204535875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 (A097062 (n + 2)).toNat + A025857 n

end

end A029169.P4309549594204535875

namespace A029169

/-- `A029198(A097062(n+2))+A025857(n)` -/
def P4309549594204535875.Spec : Prop :=
  ∀ n, P4309549594204535875.a n = A029169 n

end A029169

/-! ## A029169.P16946622579903371898

`A029198(A097062(n+4))`
-/

namespace A029169.P16946622579903371898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 (A097062 (n + 4)).toNat

end

end A029169.P16946622579903371898

namespace A029169

/-- `A029198(A097062(n+4))` -/
def P16946622579903371898.Spec : Prop :=
  ∀ n, P16946622579903371898.a n = A029169 n

end A029169

/-! ## A029169.P6714209722835235285

`A029198(A004442(2*n)-A004442(n))`
-/

namespace A029169.P6714209722835235285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 (A004442 (2 * n) - A004442 n).toNat

end

end A029169.P6714209722835235285

namespace A029169

/-- `A029198(A004442(2*n)-A004442(n))` -/
def P6714209722835235285.Spec : Prop :=
  ∀ n, P6714209722835235285.a n = A029169 n

end A029169

/-!
# A029170: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^11)*(1-x^12)).

The programs for A029170, the canonical program `A029170.P17474200054274196928` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029170 has offset 0).

The definition of A029170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029170.P17474200054274196928

`A029062(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029170

/-- `A029062(n)-a(n-1)` -/
def P17474200054274196928.Spec : Prop :=
  ∀ n, P17474200054274196928.a n = A029170 n

theorem P17474200054274196928.correct : P17474200054274196928.Spec := by
  intro n
  simp only [A029170]

end A029170

/-! ## A029170.P15904282027100873315

`A025858(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029170.P15904282027100873315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025858 n + a (n - 2)

end

end A029170.P15904282027100873315

namespace A029170

/-- `A025858(n)+a(n-2)` -/
def P15904282027100873315.Spec : Prop :=
  ∀ n, P15904282027100873315.a n = A029170 n

end A029170

/-! ## A029170.P8406227106644276695

`A025827(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029170.P8406227106644276695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025827 n + a (n - 3)

end

end A029170.P8406227106644276695

namespace A029170

/-- `A025827(n)+a(n-3)` -/
def P8406227106644276695.Spec : Prop :=
  ∀ n, P8406227106644276695.a n = A029170 n

end A029170

/-! ## A029170.P15934192314070551551

`A029271(abs(2-n))+A029271(n)`
-/

namespace A029170.P15934192314070551551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029271 |2 - (n : ℤ)|.toNat + A029271 n

end

end A029170.P15934192314070551551

namespace A029170

/-- `A029271(abs(2-n))+A029271(n)` -/
def P15934192314070551551.Spec : Prop :=
  ∀ n, P15934192314070551551.a n = A029170 n

end A029170

/-! ## A029170.P10074382479415507156

`∑[A025907(n)]-A025907(abs(1-n))`
-/

namespace A029170.P10074382479415507156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025907 |1 - (n : ℤ)|.toNat

end

end A029170.P10074382479415507156

namespace A029170

/-- `∑[A025907(n)]-A025907(abs(1-n))` -/
def P10074382479415507156.Spec : Prop :=
  ∀ n, P10074382479415507156.a n = A029170 n

end A029170

/-! ## A029170.P11276292010315288484

`A029116(n)-A025907(abs(A023443(n)))`
-/

namespace A029170.P11276292010315288484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029116 n - A025907 |A023443 n|.toNat

end

end A029170.P11276292010315288484

namespace A029170

/-- `A029116(n)-A025907(abs(A023443(n)))` -/
def P11276292010315288484.Spec : Prop :=
  ∀ n, P11276292010315288484.a n = A029170 n

end A029170

/-! ## A029170.P11020136751828611059

`A029213(n)+A029291(n)-A025896(n)`
-/

namespace A029170.P11020136751828611059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029213 n + (A029291 n - A025896 n)

end

end A029170.P11020136751828611059

namespace A029170

/-- `A029213(n)+A029291(n)-A025896(n)` -/
def P11020136751828611059.Spec : Prop :=
  ∀ n, P11020136751828611059.a n = A029170 n

end A029170

/-! ## A029170.P16757570337104737198

`A029164(n)+A029192(n)-A029187(n)`
-/

namespace A029170.P16757570337104737198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029164 n + (A029192 n - A029187 n)

end

end A029170.P16757570337104737198

namespace A029170

/-- `A029164(n)+A029192(n)-A029187(n)` -/
def P16757570337104737198.Spec : Prop :=
  ∀ n, P16757570337104737198.a n = A029170 n

end A029170

/-!
# A029171: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^6)).

The programs for A029171, the canonical program `A029171.P1523925124885283882` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029171 has offset 0).

The definition of A029171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029171.P1523925124885283882

`A029063(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029171

/-- `A029063(n)-a(n-1)` -/
def P1523925124885283882.Spec : Prop :=
  ∀ n, P1523925124885283882.a n = A029171 n

theorem P1523925124885283882.correct : P1523925124885283882.Spec := by
  intro n
  simp only [A029171]

end A029171

/-! ## A029171.P12164718233247024490

`A008682(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029171.P12164718233247024490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008682 n + a (n - 2)

end

end A029171.P12164718233247024490

namespace A029171

/-- `A008682(n)+a(n-2)` -/
def P12164718233247024490.Spec : Prop :=
  ∀ n, P12164718233247024490.a n = A029171 n

end A029171

/-! ## A029171.P2206776565905490133

`A008667(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029171.P2206776565905490133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A008667 n - a (n - 3)

end

end A029171.P2206776565905490133

namespace A029171

/-- `A008667(n)-a(n-3)` -/
def P2206776565905490133.Spec : Prop :=
  ∀ n, P2206776565905490133.a n = A029171 n

end A029171

/-! ## A029171.P2262335738127023235

`A029140(abs(1-A004442(n)))`
-/

namespace A029171.P2262335738127023235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029140 |1 - A004442 n|.toNat

end

end A029171.P2262335738127023235

namespace A029171

/-- `A029140(abs(1-A004442(n)))` -/
def P2262335738127023235.Spec : Prop :=
  ∀ n, P2262335738127023235.a n = A029171 n

end A029171

/-! ## A029171.P5533457446699840284

`A029140(A047621(n+1)%(n+1))`
-/

namespace A029171.P5533457446699840284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029140 (Int.tmod (A047621 (n + 1)) (n + 1 : ℤ)).toNat

end

end A029171.P5533457446699840284

namespace A029171

/-- `A029140(A047621(n+1)%(n+1))` -/
def P5533457446699840284.Spec : Prop :=
  ∀ n, P5533457446699840284.a n = A029171 n

end A029171

/-! ## A029171.P10134082128683845238

`A029140(abs(A024000(A004442(n))))`
-/

namespace A029171.P10134082128683845238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029140 |A024000 (A004442 n).toNat|.toNat

end

end A029171.P10134082128683845238

namespace A029171

/-- `A029140(abs(A024000(A004442(n))))` -/
def P10134082128683845238.Spec : Prop :=
  ∀ n, P10134082128683845238.a n = A029171 n

end A029171

/-! ## A029171.P6417366595712105328

`A097852(A010681(n)+n)`
-/

namespace A029171.P6417366595712105328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097852 (A010681 n + (n : ℤ)).toNat

end

end A029171.P6417366595712105328

namespace A029171

/-- `A097852(A010681(n)+n)` -/
def P6417366595712105328.Spec : Prop :=
  ∀ n, P6417366595712105328.a n = A029171 n

end A029171

/-! ## A029171.P567339160383603395

`A029274(A166517(n+1)-1)`
-/

namespace A029171.P567339160383603395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (A166517 (n + 1) - 1).toNat

end

end A029171.P567339160383603395

namespace A029171

/-- `A029274(A166517(n+1)-1)` -/
def P567339160383603395.Spec : Prop :=
  ∀ n, P567339160383603395.a n = A029171 n

end A029171

/-! ## A029171.P12433708549223930897

`A029274(A061800(∑[A000034(n)]))`
-/

namespace A029171.P12433708549223930897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (A061800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A029171.P12433708549223930897

namespace A029171

/-- `A029274(A061800(∑[A000034(n)]))` -/
def P12433708549223930897.Spec : Prop :=
  ∀ n, P12433708549223930897.a n = A029171 n

end A029171

/-! ## A029171.P16380178412232061364

`A029274(A061800(record[A061800(n)]))`
-/

namespace A029171.P16380178412232061364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (A061800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A029171.P16380178412232061364

namespace A029171

/-- `A029274(A061800(record[A061800(n)]))` -/
def P16380178412232061364.Spec : Prop :=
  ∀ n, P16380178412232061364.a n = A029171 n

end A029171

/-! ## A029171.P17164555929742468273

`A029274(A166517(n+2))`
-/

namespace A029171.P17164555929742468273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (A166517 (n + 2)).toNat

end

end A029171.P17164555929742468273

namespace A029171

/-- `A029274(A166517(n+2))` -/
def P17164555929742468273.Spec : Prop :=
  ∀ n, P17164555929742468273.a n = A029171 n

end A029171

/-! ## A029171.P14878545480445847322

`A029274(A166598(n+1)-n)`
-/

namespace A029171.P14878545480445847322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (A166598 (n + 1) - (n : ℤ)).toNat

end

end A029171.P14878545480445847322

namespace A029171

/-- `A029274(A166598(n+1)-n)` -/
def P14878545480445847322.Spec : Prop :=
  ∀ n, P14878545480445847322.a n = A029171 n

end A029171

/-! ## A029171.P3845119243735282765

`A029274(A008706(A008619(n))-n)`
-/

namespace A029171.P3845119243735282765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (A008706 (A008619 n).toNat - (n : ℤ)).toNat

end

end A029171.P3845119243735282765

namespace A029171

/-- `A029274(A008706(A008619(n))-n)` -/
def P3845119243735282765.Spec : Prop :=
  ∀ n, P3845119243735282765.a n = A029171 n

end A029171

/-! ## A029171.P14587127651641400315

`A029340(2*n)`
-/

namespace A029171.P14587127651641400315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029340 (2 * n)

end

end A029171.P14587127651641400315

namespace A029171

/-- `A029340(2*n)` -/
def P14587127651641400315.Spec : Prop :=
  ∀ n, P14587127651641400315.a n = A029171 n

end A029171

/-! ## A029171.P14686946561837865215

`A029207(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029171.P14686946561837865215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029207 (2 * n) - a (n - 1)

end

end A029171.P14686946561837865215

namespace A029171

/-- `A029207(2*n)-a(n-1)` -/
def P14686946561837865215.Spec : Prop :=
  ∀ n, P14686946561837865215.a n = A029171 n

end A029171

/-! ## A029171.P7120211400973001192

`A029169(2*(n+1))-A029136(n+1)`
-/

namespace A029171.P7120211400973001192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029169 (2 * (n + 1)) - A029136 (n + 1)

end

end A029171.P7120211400973001192

namespace A029171

/-- `A029169(2*(n+1))-A029136(n+1)` -/
def P7120211400973001192.Spec : Prop :=
  ∀ n, P7120211400973001192.a n = A029171 n

end A029171

/-! ## A029171.P17668756752932700693

`A029429(A166542(n+1)-2)`
-/

namespace A029171.P17668756752932700693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 (A166542 (n + 1) - 2).toNat

end

end A029171.P17668756752932700693

namespace A029171

/-- `A029429(A166542(n+1)-2)` -/
def P17668756752932700693.Spec : Prop :=
  ∀ n, P17668756752932700693.a n = A029171 n

end A029171

/-! ## A029171.P8769334681977456378

`A029429(A166542(n+2))`
-/

namespace A029171.P8769334681977456378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 (A166542 (n + 2)).toNat

end

end A029171.P8769334681977456378

namespace A029171

/-- `A029429(A166542(n+2))` -/
def P8769334681977456378.Spec : Prop :=
  ∀ n, P8769334681977456378.a n = A029171 n

end A029171

/-!
# A029172: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^7)).

The programs for A029172, the canonical program `A029172.P7881889128371546076` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029172 has offset 0).

The definition of A029172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029172.P7881889128371546076

`A029064(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029172

/-- `A029064(n)-a(n-1)` -/
def P7881889128371546076.Spec : Prop :=
  ∀ n, P7881889128371546076.a n = A029172 n

theorem P7881889128371546076.correct : P7881889128371546076.Spec := by
  intro n
  simp only [A029172]

end A029172

/-! ## A029172.P17795321286684250943

`A025859(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029172.P17795321286684250943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025859 n + a (n - 2)

end

end A029172.P17795321286684250943

namespace A029172

/-- `A025859(n)+a(n-2)` -/
def P17795321286684250943.Spec : Prop :=
  ∀ n, P17795321286684250943.a n = A029172 n

end A029172

/-! ## A029172.P11024596513568788084

`A008673(n+1)-A029137(n+1)`
-/

namespace A029172.P11024596513568788084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008673 (n + 1) - A029137 (n + 1)

end

end A029172.P11024596513568788084

namespace A029172

/-- `A008673(n+1)-A029137(n+1)` -/
def P11024596513568788084.Spec : Prop :=
  ∀ n, P11024596513568788084.a n = A029172 n

end A029172

/-! ## A029172.P9060867889937612140

`A029137(n+2)-A029245(n+2)`
-/

namespace A029172.P9060867889937612140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029137 (n + 2) - A029245 (n + 2)

end

end A029172.P9060867889937612140

namespace A029172

/-- `A029137(n+2)-A029245(n+2)` -/
def P9060867889937612140.Spec : Prop :=
  ∀ n, P9060867889937612140.a n = A029172 n

end A029172

/-! ## A029172.P4558026750053839311

`A029360(2*n)`
-/

namespace A029172.P4558026750053839311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029360 (2 * n)

end

end A029172.P4558026750053839311

namespace A029172

/-- `A029360(2*n)` -/
def P4558026750053839311.Spec : Prop :=
  ∀ n, P4558026750053839311.a n = A029172 n

end A029172

/-! ## A029172.P16655670064402546984

`A029227(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029172.P16655670064402546984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029227 (2 * n) - a (n - 1)

end

end A029172.P16655670064402546984

namespace A029172

/-- `A029227(2*n)-a(n-1)` -/
def P16655670064402546984.Spec : Prop :=
  ∀ n, P16655670064402546984.a n = A029172 n

end A029172

/-! ## A029172.P10389776317421813061

`A029347(2*n)-A029414(2*n+1)`
-/

namespace A029172.P10389776317421813061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029347 (2 * n) - A029414 (2 * n + 1)

end

end A029172.P10389776317421813061

namespace A029172

/-- `A029347(2*n)-A029414(2*n+1)` -/
def P10389776317421813061.Spec : Prop :=
  ∀ n, P10389776317421813061.a n = A029172 n

end A029172

/-! ## A029172.P7229432265619715048

`A029372(2*n)+A029435(2*n)-A025921(2*n)`
-/

namespace A029172.P7229432265619715048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 (2 * n) + (A029435 (2 * n) - A025921 (2 * n))

end

end A029172.P7229432265619715048

namespace A029172

/-- `A029372(2*n)+A029435(2*n)-A025921(2*n)` -/
def P7229432265619715048.Spec : Prop :=
  ∀ n, P7229432265619715048.a n = A029172 n

end A029172

/-! ## A029172.P4202968519997290768

`A029124(2*n)+A029372(2*n)-A029130(2*n)`
-/

namespace A029172.P4202968519997290768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029124 (2 * n) + (A029372 (2 * n) - A029130 (2 * n))

end

end A029172.P4202968519997290768

namespace A029172

/-- `A029124(2*n)+A029372(2*n)-A029130(2*n)` -/
def P4202968519997290768.Spec : Prop :=
  ∀ n, P4202968519997290768.a n = A029172 n

end A029172

/-! ## A029172.P1522929827646368449

`A029308(2*n)+A029372(2*n)-A029319(2*n)`
-/

namespace A029172.P1522929827646368449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029308 (2 * n) + (A029372 (2 * n) - A029319 (2 * n))

end

end A029172.P1522929827646368449

namespace A029172

/-- `A029308(2*n)+A029372(2*n)-A029319(2*n)` -/
def P1522929827646368449.Spec : Prop :=
  ∀ n, P1522929827646368449.a n = A029172 n

end A029172

/-! ## A029172.P603742660524578548

`A025909(2*n)-(A029414(2*n)-A029347(2*n))`
-/

namespace A029172.P603742660524578548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 (2 * n) - (A029414 (2 * n) - A029347 (2 * n))

end

end A029172.P603742660524578548

namespace A029172

/-- `A025909(2*n)-(A029414(2*n)-A029347(2*n))` -/
def P603742660524578548.Spec : Prop :=
  ∀ n, P603742660524578548.a n = A029172 n

end A029172

/-!
# A029173: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^8)).

The programs for A029173, the canonical program `A029173.P5401055336084168647` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029173 has offset 0).

The definition of A029173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029173.P5401055336084168647

`A029065(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029173

/-- `A029065(n)-a(n-1)` -/
def P5401055336084168647.Spec : Prop :=
  ∀ n, P5401055336084168647.a n = A029173 n

theorem P5401055336084168647.correct : P5401055336084168647.Spec := by
  intro n
  simp only [A029173]

end A029173

/-! ## A029173.P13512989224980185530

`A025860(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029173.P13512989224980185530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025860 n + a (n - 2)

end

end A029173.P13512989224980185530

namespace A029173

/-- `A025860(n)+a(n-2)` -/
def P13512989224980185530.Spec : Prop :=
  ∀ n, P13512989224980185530.a n = A029173 n

end A029173

/-! ## A029173.P18389098593602775245

`A008667(n)-A026810(A052938(n))`
-/

namespace A029173.P18389098593602775245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n - A026810 (A052938 n).toNat

end

end A029173.P18389098593602775245

namespace A029173

/-- `A008667(n)-A026810(A052938(n))` -/
def P18389098593602775245.Spec : Prop :=
  ∀ n, P18389098593602775245.a n = A029173 n

end A029173

/-! ## A029173.P10837978795682406247

`A266768(n)-A026811(A084964(n))`
-/

namespace A029173.P10837978795682406247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 n - A026811 (A084964 n).toNat

end

end A029173.P10837978795682406247

namespace A029173

/-- `A266768(n)-A026811(A084964(n))` -/
def P10837978795682406247.Spec : Prop :=
  ∀ n, P10837978795682406247.a n = A029173 n

end A029173

/-! ## A029173.P11556888801378993718

`A029277(A166517(n+1)-1)`
-/

namespace A029173.P11556888801378993718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 (A166517 (n + 1) - 1).toNat

end

end A029173.P11556888801378993718

namespace A029173

/-- `A029277(A166517(n+1)-1)` -/
def P11556888801378993718.Spec : Prop :=
  ∀ n, P11556888801378993718.a n = A029173 n

end A029173

/-! ## A029173.P2443858520823384455

`A029277(A061800(∑[A000034(n)]))`
-/

namespace A029173.P2443858520823384455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 (A061800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A029173.P2443858520823384455

namespace A029173

/-- `A029277(A061800(∑[A000034(n)]))` -/
def P2443858520823384455.Spec : Prop :=
  ∀ n, P2443858520823384455.a n = A029173 n

end A029173

/-! ## A029173.P16909849516332537237

`A029277(A010673(n)+A007494(n))`
-/

namespace A029173.P16909849516332537237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 (A010673 n + A007494 n).toNat

end

end A029173.P16909849516332537237

namespace A029173

/-- `A029277(A010673(n)+A007494(n))` -/
def P16909849516332537237.Spec : Prop :=
  ∀ n, P16909849516332537237.a n = A029173 n

end A029173

/-! ## A029173.P8681530453395808798

`A029277(A016789(n)-A166517(n))`
-/

namespace A029173.P8681530453395808798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 (A016789 n - A166517 n).toNat

end

end A029173.P8681530453395808798

namespace A029173

/-- `A029277(A016789(n)-A166517(n))` -/
def P8681530453395808798.Spec : Prop :=
  ∀ n, P8681530453395808798.a n = A029173 n

end A029173

/-! ## A029173.P8298695054690854009

`A029277(A166517(n+2))`
-/

namespace A029173.P8298695054690854009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 (A166517 (n + 2)).toNat

end

end A029173.P8298695054690854009

namespace A029173

/-- `A029277(A166517(n+2))` -/
def P8298695054690854009.Spec : Prop :=
  ∀ n, P8298695054690854009.a n = A029173 n

end A029173

/-! ## A029173.P15917877176818024973

`A266768(n)-A288166(A004275(n))`
-/

namespace A029173.P15917877176818024973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 n - A288166 (A004275 n).toNat

end

end A029173.P15917877176818024973

namespace A029173

/-- `A266768(n)-A288166(A004275(n))` -/
def P15917877176818024973.Spec : Prop :=
  ∀ n, P15917877176818024973.a n = A029173 n

end A029173

/-!
# A029174: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^9)).

The programs for A029174, the canonical program `A029174.P3493084766565644547` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029174 has offset 0).

The definition of A029174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029174.P3493084766565644547

`A029066(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029174

/-- `A029066(n)-a(n-1)` -/
def P3493084766565644547.Spec : Prop :=
  ∀ n, P3493084766565644547.a n = A029174 n

theorem P3493084766565644547.correct : P3493084766565644547.Spec := by
  intro n
  simp only [A029174]

end A029174

/-! ## A029174.P18080065436545968408

`A025861(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029174.P18080065436545968408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025861 n + a (n - 2)

end

end A029174.P18080065436545968408

namespace A029174

/-- `A025861(n)+a(n-2)` -/
def P18080065436545968408.Spec : Prop :=
  ∀ n, P18080065436545968408.a n = A029174 n

end A029174

/-! ## A029174.P135777721102788890

`A029080(n)-A025823(abs(A023443(n)))`
-/

namespace A029174.P135777721102788890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029080 n - A025823 |A023443 n|.toNat

end

end A029174.P135777721102788890

namespace A029174

/-- `A029080(n)-A025823(abs(A023443(n)))` -/
def P135777721102788890.Spec : Prop :=
  ∀ n, P135777721102788890.a n = A029174 n

end A029174

/-! ## A029174.P11655207992406747819

`A025821(n)+A029066(n)-A029096(n)`
-/

namespace A029174.P11655207992406747819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025821 n + (A029066 n - A029096 n)

end

end A029174.P11655207992406747819

namespace A029174

/-- `A025821(n)+A029066(n)-A029096(n)` -/
def P11655207992406747819.Spec : Prop :=
  ∀ n, P11655207992406747819.a n = A029174 n

end A029174

/-! ## A029174.P10642561248452814705

`A029096(n+1)-A025821(n+1)`
-/

namespace A029174.P10642561248452814705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029096 (n + 1) - A025821 (n + 1)

end

end A029174.P10642561248452814705

namespace A029174

/-- `A029096(n+1)-A025821(n+1)` -/
def P10642561248452814705.Spec : Prop :=
  ∀ n, P10642561248452814705.a n = A029174 n

end A029174

/-! ## A029174.P2624187088459366656

`A029369(2*n)`
-/

namespace A029174.P2624187088459366656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029369 (2 * n)

end

end A029174.P2624187088459366656

namespace A029174

/-- `A029369(2*n)` -/
def P2624187088459366656.Spec : Prop :=
  ∀ n, P2624187088459366656.a n = A029174 n

end A029174

/-! ## A029174.P593133704070506952

`A029236(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029174.P593133704070506952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029236 (2 * n) - a (n - 1)

end

end A029174.P593133704070506952

namespace A029174

/-- `A029236(2*n)-a(n-1)` -/
def P593133704070506952.Spec : Prop :=
  ∀ n, P593133704070506952.a n = A029174 n

end A029174

/-! ## A029174.P5510066693085013971

`A029443(2*n)+A029405(2*n+1)`
-/

namespace A029174.P5510066693085013971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029443 (2 * n) + A029405 (2 * n + 1)

end

end A029174.P5510066693085013971

namespace A029174

/-- `A029443(2*n)+A029405(2*n+1)` -/
def P5510066693085013971.Spec : Prop :=
  ∀ n, P5510066693085013971.a n = A029174 n

end A029174

/-! ## A029174.P17052766131372731309

`A029236(2*n)+A029352(2*n)-A029221(2*n)`
-/

namespace A029174.P17052766131372731309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (2 * n) + (A029352 (2 * n) - A029221 (2 * n))

end

end A029174.P17052766131372731309

namespace A029174

/-- `A029236(2*n)+A029352(2*n)-A029221(2*n)` -/
def P17052766131372731309.Spec : Prop :=
  ∀ n, P17052766131372731309.a n = A029174 n

end A029174

/-!
# A029175: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^10)).

The programs for A029175, the canonical program `A029175.P15516604453972084017` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029175 has offset 0).

The definition of A029175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029175.P15516604453972084017

`A029067(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029175

/-- `A029067(n)-a(n-1)` -/
def P15516604453972084017.Spec : Prop :=
  ∀ n, P15516604453972084017.a n = A029175 n

theorem P15516604453972084017.correct : P15516604453972084017.Spec := by
  intro n
  simp only [A029175]

end A029175

/-! ## A029175.P9787309299152599253

`A025862(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029175.P9787309299152599253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025862 n + a (n - 2)

end

end A029175.P9787309299152599253

namespace A029175

/-- `A025862(n)+a(n-2)` -/
def P9787309299152599253.Spec : Prop :=
  ∀ n, P9787309299152599253.a n = A029175 n

end A029175

/-! ## A029175.P11945956178844182142

`a(n-2)-(A000007(n)-A025862(n))` with `a(0)=1, a(1)=0`
-/

namespace A029175.P11945956178844182142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - (A000007 n - A025862 n)

end

end A029175.P11945956178844182142

namespace A029175

/-- `a(n-2)-(A000007(n)-A025862(n))` -/
def P11945956178844182142.Spec : Prop :=
  ∀ n, P11945956178844182142.a n = A029175 n

end A029175

/-! ## A029175.P14100375140499516009

`a(n-2)-(1-A057427(n)-A025862(n))` with `a(0)=1, a(1)=0`
-/

namespace A029175.P14100375140499516009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - (1 - A057427 n - A025862 n)

end

end A029175.P14100375140499516009

namespace A029175

/-- `a(n-2)-(1-A057427(n)-A025862(n))` -/
def P14100375140499516009.Spec : Prop :=
  ∀ n, P14100375140499516009.a n = A029175 n

end A029175

/-! ## A029175.P16658068351003016961

`A029196(n)+A029329(n)-A025879(n)`
-/

namespace A029175.P16658068351003016961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029196 n + (A029329 n - A025879 n)

end

end A029175.P16658068351003016961

namespace A029175

/-- `A029196(n)+A029329(n)-A025879(n)` -/
def P16658068351003016961.Spec : Prop :=
  ∀ n, P16658068351003016961.a n = A029175 n

end A029175

/-! ## A029175.P11860147253948736974

`A029179(n)+A029208(n)-A029221(n)`
-/

namespace A029175.P11860147253948736974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029179 n + (A029208 n - A029221 n)

end

end A029175.P11860147253948736974

namespace A029175

/-- `A029179(n)+A029208(n)-A029221(n)` -/
def P11860147253948736974.Spec : Prop :=
  ∀ n, P11860147253948736974.a n = A029175 n

end A029175

/-!
# A029176: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^11)).

The programs for A029176, the canonical program `A029176.P1107500298987403073` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029176 has offset 0).

The definition of A029176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029176.P1107500298987403073

`A029068(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029176

/-- `A029068(n)-a(n-1)` -/
def P1107500298987403073.Spec : Prop :=
  ∀ n, P1107500298987403073.a n = A029176 n

theorem P1107500298987403073.correct : P1107500298987403073.Spec := by
  intro n
  simp only [A029176]

end A029176

/-! ## A029176.P4886442024615413160

`A025863(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029176.P4886442024615413160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025863 n + a (n - 2)

end

end A029176.P4886442024615413160

namespace A029176

/-- `A025863(n)+a(n-2)` -/
def P4886442024615413160.Spec : Prop :=
  ∀ n, P4886442024615413160.a n = A029176 n

end A029176

/-! ## A029176.P4782100445824547754

`A029189(n)+A029195(n)-A029222(n)`
-/

namespace A029176.P4782100445824547754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029189 n + (A029195 n - A029222 n)

end

end A029176.P4782100445824547754

namespace A029176

/-- `A029189(n)+A029195(n)-A029222(n)` -/
def P4782100445824547754.Spec : Prop :=
  ∀ n, P4782100445824547754.a n = A029176 n

end A029176

/-! ## A029176.P10960829126596380173

`A029182(n)+A029209(n)-A029231(n)`
-/

namespace A029176.P10960829126596380173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029182 n + (A029209 n - A029231 n)

end

end A029176.P10960829126596380173

namespace A029176

/-- `A029182(n)+A029209(n)-A029231(n)` -/
def P10960829126596380173.Spec : Prop :=
  ∀ n, P10960829126596380173.a n = A029176 n

end A029176

/-! ## A029176.P5636161927356429262

`A029372(2*n)`
-/

namespace A029176.P5636161927356429262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 (2 * n)

end

end A029176.P5636161927356429262

namespace A029176

/-- `A029372(2*n)` -/
def P5636161927356429262.Spec : Prop :=
  ∀ n, P5636161927356429262.a n = A029176 n

end A029176

/-! ## A029176.P5880620790502887658

`A029239(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029176.P5880620790502887658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029239 (2 * n) - a (n - 1)

end

end A029176.P5880620790502887658

namespace A029176

/-- `A029239(2*n)-a(n-1)` -/
def P5880620790502887658.Spec : Prop :=
  ∀ n, P5880620790502887658.a n = A029176 n

end A029176

/-! ## A029176.P5044093028192404336

`A029377(2*n)+A029445(2*n)-A025926(2*n)`
-/

namespace A029176.P5044093028192404336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 (2 * n) + (A029445 (2 * n) - A025926 (2 * n))

end

end A029176.P5044093028192404336

namespace A029176

/-- `A029377(2*n)+A029445(2*n)-A025926(2*n)` -/
def P5044093028192404336.Spec : Prop :=
  ∀ n, P5044093028192404336.a n = A029176 n

end A029176

/-! ## A029176.P3677199049239794947

`A029192(2*n)+A029445(2*n)-A029224(2*n)`
-/

namespace A029176.P3677199049239794947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029192 (2 * n) + (A029445 (2 * n) - A029224 (2 * n))

end

end A029176.P3677199049239794947

namespace A029176

/-- `A029192(2*n)+A029445(2*n)-A029224(2*n)` -/
def P3677199049239794947.Spec : Prop :=
  ∀ n, P3677199049239794947.a n = A029176 n

end A029176

/-! ## A029176.P13894600837325090647

`A029240(2*n)+A029377(2*n)-A029244(2*n)`
-/

namespace A029176.P13894600837325090647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n) + (A029377 (2 * n) - A029244 (2 * n))

end

end A029176.P13894600837325090647

namespace A029176

/-- `A029240(2*n)+A029377(2*n)-A029244(2*n)` -/
def P13894600837325090647.Spec : Prop :=
  ∀ n, P13894600837325090647.a n = A029176 n

end A029176

/-! ## A029176.P5195189504656201059

`A029353(2*n)+A029406(2*n)-A029384(2*n)`
-/

namespace A029176.P5195189504656201059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029353 (2 * n) + (A029406 (2 * n) - A029384 (2 * n))

end

end A029176.P5195189504656201059

namespace A029176

/-- `A029353(2*n)+A029406(2*n)-A029384(2*n)` -/
def P5195189504656201059.Spec : Prop :=
  ∀ n, P5195189504656201059.a n = A029176 n

end A029176

/-! ## A029176.P14524897432327870238

`A029358(2*n)+A029445(2*n)-A029431(2*n)`
-/

namespace A029176.P14524897432327870238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029358 (2 * n) + (A029445 (2 * n) - A029431 (2 * n))

end

end A029176.P14524897432327870238

namespace A029176

/-- `A029358(2*n)+A029445(2*n)-A029431(2*n)` -/
def P14524897432327870238.Spec : Prop :=
  ∀ n, P14524897432327870238.a n = A029176 n

end A029176

/-! ## A029176.P12244151691610890648

`A029437(A005408(n+1))+A029326(n)`
-/

namespace A029176.P12244151691610890648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (A005408 (n + 1)).toNat + A029326 n

end

end A029176.P12244151691610890648

namespace A029176

/-- `A029437(A005408(n+1))+A029326(n)` -/
def P12244151691610890648.Spec : Prop :=
  ∀ n, P12244151691610890648.a n = A029176 n

end A029176

/-! ## A029176.P14817333994301000304

`A029437(A267872(n+1))+A029326(n)`
-/

namespace A029176.P14817333994301000304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (A267872 (n + 1)).toNat + A029326 n

end

end A029176.P14817333994301000304

namespace A029176

/-- `A029437(A267872(n+1))+A029326(n)` -/
def P14817333994301000304.Spec : Prop :=
  ∀ n, P14817333994301000304.a n = A029176 n

end A029176

/-! ## A029176.P9392103578567463990

`A029437(A004273(n+2))+A029326(n)`
-/

namespace A029176.P9392103578567463990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (A004273 (n + 2)).toNat + A029326 n

end

end A029176.P9392103578567463990

namespace A029176

/-- `A029437(A004273(n+2))+A029326(n)` -/
def P9392103578567463990.Spec : Prop :=
  ∀ n, P9392103578567463990.a n = A029176 n

end A029176

/-!
# A029177: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^5)*(1-x^12)).

The programs for A029177, the canonical program `A029177.P6003917001418373779` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029177 has offset 0).

The definition of A029177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029177.P6003917001418373779

`A029069(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029177

/-- `A029069(n)-a(n-1)` -/
def P6003917001418373779.Spec : Prop :=
  ∀ n, P6003917001418373779.a n = A029177 n

theorem P6003917001418373779.correct : P6003917001418373779.Spec := by
  intro n
  simp only [A029177]

end A029177

/-! ## A029177.P17178639352593947907

`A025864(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029177.P17178639352593947907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025864 n + a (n - 2)

end

end A029177.P17178639352593947907

namespace A029177

/-- `A025864(n)+a(n-2)` -/
def P17178639352593947907.Spec : Prop :=
  ∀ n, P17178639352593947907.a n = A029177 n

end A029177

/-! ## A029177.P11437203154494161642

`A029190(n)+A029200(n)-A029232(n)`
-/

namespace A029177.P11437203154494161642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 n + (A029200 n - A029232 n)

end

end A029177.P11437203154494161642

namespace A029177

/-- `A029190(n)+A029200(n)-A029232(n)` -/
def P11437203154494161642.Spec : Prop :=
  ∀ n, P11437203154494161642.a n = A029177 n

end A029177

/-! ## A029177.P335760549435924570

`A029011(A084964(n))-A025776(A084964(n))`
-/

namespace A029177.P335760549435924570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029011 (A084964 n).toNat - A025776 (A084964 n).toNat

end

end A029177.P335760549435924570

namespace A029177

/-- `A029011(A084964(n))-A025776(A084964(n))` -/
def P335760549435924570.Spec : Prop :=
  ∀ n, P335760549435924570.a n = A029177 n

end A029177

/-! ## A029177.P10760339026023583114

`A029172(n+5)-A029185(n+5)`
-/

namespace A029177.P10760339026023583114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029172 (n + 5) - A029185 (n + 5)

end

end A029177.P10760339026023583114

namespace A029177

/-- `A029172(n+5)-A029185(n+5)` -/
def P10760339026023583114.Spec : Prop :=
  ∀ n, P10760339026023583114.a n = A029177 n

end A029177

/-!
# A029178: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^6)*(1-x^7)).

The programs for A029178, the canonical program `A029178.P2783044879236484133` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029178 has offset 0).

The definition of A029178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029178.P2783044879236484133

`A029070(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029178

/-- `A029070(n)-a(n-1)` -/
def P2783044879236484133.Spec : Prop :=
  ∀ n, P2783044879236484133.a n = A029178 n

theorem P2783044879236484133.correct : P2783044879236484133.Spec := by
  intro n
  simp only [A029178]

end A029178

/-! ## A029178.P10395120910749642424

`A008622(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029178.P10395120910749642424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008622 n + a (n - 2)

end

end A029178.P10395120910749642424

namespace A029178

/-- `A008622(n)+a(n-2)` -/
def P10395120910749642424.Spec : Prop :=
  ∀ n, P10395120910749642424.a n = A029178 n

end A029178

/-! ## A029178.P16740994306358810999

`A029137(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029178.P16740994306358810999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029137 n - a (n - 3)

end

end A029178.P16740994306358810999

namespace A029178

/-- `A029137(n)-a(n-3)` -/
def P16740994306358810999.Spec : Prop :=
  ∀ n, P16740994306358810999.a n = A029178 n

end A029178

/-! ## A029178.P8806527829302395143

`A029181(n)+A029347(n)-A025867(n)`
-/

namespace A029178.P8806527829302395143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029181 n + (A029347 n - A025867 n)

end

end A029178.P8806527829302395143

namespace A029178

/-- `A029181(n)+A029347(n)-A025867(n)` -/
def P8806527829302395143.Spec : Prop :=
  ∀ n, P8806527829302395143.a n = A029178 n

end A029178

/-! ## A029178.P7210919439193855265

`A029293(A166539(n+1)-(n+2))`
-/

namespace A029178.P7210919439193855265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029293 (A166539 (n + 1) - (n + 2 : ℤ)).toNat

end

end A029178.P7210919439193855265

namespace A029178

/-- `A029293(A166539(n+1)-(n+2))` -/
def P7210919439193855265.Spec : Prop :=
  ∀ n, P7210919439193855265.a n = A029178 n

end A029178

/-! ## A029178.P5923185550677549363

`A029293(A001651(A004442(n+4)))`
-/

namespace A029178.P5923185550677549363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029293 (A001651 (A004442 (n + 4)).toNat).toNat

end

end A029178.P5923185550677549363

namespace A029178

/-- `A029293(A001651(A004442(n+4)))` -/
def P5923185550677549363.Spec : Prop :=
  ∀ n, P5923185550677549363.a n = A029178 n

end A029178

/-! ## A029178.P15708580900062530840

`A029362(2*n)`
-/

namespace A029178.P15708580900062530840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029362 (2 * n)

end

end A029178.P15708580900062530840

namespace A029178

/-- `A029362(2*n)` -/
def P15708580900062530840.Spec : Prop :=
  ∀ n, P15708580900062530840.a n = A029178 n

end A029178

/-! ## A029178.P7300416192082604015

`A029229(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029178.P7300416192082604015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029229 (2 * n) - a (n - 1)

end

end A029178.P7300416192082604015

namespace A029178

/-- `A029229(2*n)-a(n-1)` -/
def P7300416192082604015.Spec : Prop :=
  ∀ n, P7300416192082604015.a n = A029178 n

end A029178

/-! ## A029178.P15623215247342448835

`A029373(2*n)+A029437(2*n)-A025922(2*n)`
-/

namespace A029178.P15623215247342448835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029373 (2 * n) + (A029437 (2 * n) - A025922 (2 * n))

end

end A029178.P15623215247342448835

namespace A029178

/-- `A029373(2*n)+A029437(2*n)-A025922(2*n)` -/
def P15623215247342448835.Spec : Prop :=
  ∀ n, P15623215247342448835.a n = A029178 n

end A029178

/-! ## A029178.P12244140162549489404

`A029373(2*n)+A029395(2*n)-A029408(2*n)`
-/

namespace A029178.P12244140162549489404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029373 (2 * n) + (A029395 (2 * n) - A029408 (2 * n))

end

end A029178.P12244140162549489404

namespace A029178

/-- `A029373(2*n)+A029395(2*n)-A029408(2*n)` -/
def P12244140162549489404.Spec : Prop :=
  ∀ n, P12244140162549489404.a n = A029178 n

end A029178

/-!
# A029179: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^6)*(1-x^9)).

The programs for A029179, the canonical program `A029179.P18333107731535860648` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029179 has offset 0).

The definition of A029179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029179.P18333107731535860648

`A029071(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029179

/-- `A029071(n)-a(n-1)` -/
def P18333107731535860648.Spec : Prop :=
  ∀ n, P18333107731535860648.a n = A029179 n

theorem P18333107731535860648.correct : P18333107731535860648.Spec := by
  intro n
  simp only [A029179]

end A029179

/-! ## A029179.P16601321175691332717

`A025865(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029179.P16601321175691332717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025865 n + a (n - 2)

end

end A029179.P16601321175691332717

namespace A029179

/-- `A025865(n)+a(n-2)` -/
def P16601321175691332717.Spec : Prop :=
  ∀ n, P16601321175691332717.a n = A029179 n

end A029179

/-! ## A029179.P2595326238631740832

`A029139(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029179.P2595326238631740832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029139 n - a (n - 3)

end

end A029179.P2595326238631740832

namespace A029179

/-- `A029139(n)-a(n-3)` -/
def P2595326238631740832.Spec : Prop :=
  ∀ n, P2595326238631740832.a n = A029179 n

end A029179

/-! ## A029179.P6745876322708775730

`abs(∑[A029071(n)*A033999(n)])`
-/

namespace A029179.P6745876322708775730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029071 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029179.P6745876322708775730

namespace A029179

/-- `abs(∑[A029071(n)*A033999(n)])` -/
def P6745876322708775730.Spec : Prop :=
  ∀ n, P6745876322708775730.a n = A029179 n

end A029179

/-! ## A029179.P11437454735417741598

`A029153(n)+A029188(n)-A029165(n)`
-/

namespace A029179.P11437454735417741598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029153 n + (A029188 n - A029165 n)

end

end A029179.P11437454735417741598

namespace A029179

/-- `A029153(n)+A029188(n)-A029165(n)` -/
def P11437454735417741598.Spec : Prop :=
  ∀ n, P11437454735417741598.a n = A029179 n

end A029179

/-! ## A029179.P10208074286972440587

`A029175(n)+A029221(n)-A029208(n)`
-/

namespace A029179.P10208074286972440587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029175 n + (A029221 n - A029208 n)

end

end A029179.P10208074286972440587

namespace A029179

/-- `A029175(n)+A029221(n)-A029208(n)` -/
def P10208074286972440587.Spec : Prop :=
  ∀ n, P10208074286972440587.a n = A029179 n

end A029179

/-! ## A029179.P9791075062836024533

`A029371(2*n)`
-/

namespace A029179.P9791075062836024533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029371 (2 * n)

end

end A029179.P9791075062836024533

namespace A029179

/-- `A029371(2*n)` -/
def P9791075062836024533.Spec : Prop :=
  ∀ n, P9791075062836024533.a n = A029179 n

end A029179

/-! ## A029179.P13395021209389690745

`A029238(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029179.P13395021209389690745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029238 (2 * n) - a (n - 1)

end

end A029179.P13395021209389690745

namespace A029179

/-- `A029238(2*n)-a(n-1)` -/
def P13395021209389690745.Spec : Prop :=
  ∀ n, P13395021209389690745.a n = A029179 n

end A029179

/-!
# A029180: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^6)*(1-x^11)).

The programs for A029180, the canonical program `A029180.P8281748570085510314` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029180 has offset 0).

The definition of A029180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029180.P8281748570085510314

`A029072(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029180

/-- `A029072(n)-a(n-1)` -/
def P8281748570085510314.Spec : Prop :=
  ∀ n, P8281748570085510314.a n = A029180 n

theorem P8281748570085510314.correct : P8281748570085510314.Spec := by
  intro n
  simp only [A029180]

end A029180

/-! ## A029180.P9594403747188640004

`A025866(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029180.P9594403747188640004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025866 n + a (n - 2)

end

end A029180.P9594403747188640004

namespace A029180

/-- `A025866(n)+a(n-2)` -/
def P9594403747188640004.Spec : Prop :=
  ∀ n, P9594403747188640004.a n = A029180 n

end A029180

/-! ## A029180.P13007236806667239404

`A029141(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029180.P13007236806667239404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029141 n - a (n - 3)

end

end A029180.P13007236806667239404

namespace A029180

/-- `A029141(n)-a(n-3)` -/
def P13007236806667239404.Spec : Prop :=
  ∀ n, P13007236806667239404.a n = A029180 n

end A029180

/-! ## A029180.P5185130524391689936

`A029191(n)+A029196(n)-A029211(n)`
-/

namespace A029180.P5185130524391689936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029191 n + (A029196 n - A029211 n)

end

end A029180.P5185130524391689936

namespace A029180

/-- `A029191(n)+A029196(n)-A029211(n)` -/
def P5185130524391689936.Spec : Prop :=
  ∀ n, P5185130524391689936.a n = A029180 n

end A029180

/-! ## A029180.P14655191533100782036

`A029302(A168197(n+1))`
-/

namespace A029180.P14655191533100782036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029302 (A168197 (n + 1)).toNat

end

end A029180.P14655191533100782036

namespace A029180

/-- `A029302(A168197(n+1))` -/
def P14655191533100782036.Spec : Prop :=
  ∀ n, P14655191533100782036.a n = A029180 n

end A029180

/-! ## A029180.P13127436583937351191

`A029373(2*n)`
-/

namespace A029180.P13127436583937351191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029373 (2 * n)

end

end A029180.P13127436583937351191

namespace A029180

/-- `A029373(2*n)` -/
def P13127436583937351191.Spec : Prop :=
  ∀ n, P13127436583937351191.a n = A029180 n

end A029180

/-! ## A029180.P6274402913690634927

`A029240(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029180.P6274402913690634927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029240 (2 * n) - a (n - 1)

end

end A029180.P6274402913690634927

namespace A029180

/-- `A029240(2*n)-a(n-1)` -/
def P6274402913690634927.Spec : Prop :=
  ∀ n, P6274402913690634927.a n = A029180 n

end A029180

/-! ## A029180.P12072800627896264672

`A025922(2*n)+A029362(2*n)-A029437(2*n)`
-/

namespace A029180.P12072800627896264672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (2 * n) + (A029362 (2 * n) - A029437 (2 * n))

end

end A029180.P12072800627896264672

namespace A029180

/-- `A025922(2*n)+A029362(2*n)-A029437(2*n)` -/
def P12072800627896264672.Spec : Prop :=
  ∀ n, P12072800627896264672.a n = A029180 n

end A029180

/-! ## A029180.P5426977869221892999

`A029079(2*n)+A029265(2*n)-A029057(2*n)`
-/

namespace A029180.P5426977869221892999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029079 (2 * n) + (A029265 (2 * n) - A029057 (2 * n))

end

end A029180.P5426977869221892999

namespace A029180

/-- `A029079(2*n)+A029265(2*n)-A029057(2*n)` -/
def P5426977869221892999.Spec : Prop :=
  ∀ n, P5426977869221892999.a n = A029180 n

end A029180

/-! ## A029180.P7903700857624285778

`A029362(2*n)+A029408(2*n)-A029395(2*n)`
-/

namespace A029180.P7903700857624285778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029362 (2 * n) + (A029408 (2 * n) - A029395 (2 * n))

end

end A029180.P7903700857624285778

namespace A029180

/-- `A029362(2*n)+A029408(2*n)-A029395(2*n)` -/
def P7903700857624285778.Spec : Prop :=
  ∀ n, P7903700857624285778.a n = A029180 n

end A029180

/-!
# A029181: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^7)*(1-x^8)).

The programs for A029181, the canonical program `A029181.P402436439018266049` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029181 has offset 0).

The definition of A029181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029181.P402436439018266049

`A029073(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029181

/-- `A029073(n)-a(n-1)` -/
def P402436439018266049.Spec : Prop :=
  ∀ n, P402436439018266049.a n = A029181 n

theorem P402436439018266049.correct : P402436439018266049.Spec := by
  intro n
  simp only [A029181]

end A029181

/-! ## A029181.P1533876053862824921

`A025867(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029181.P1533876053862824921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025867 n + a (n - 2)

end

end A029181.P1533876053862824921

namespace A029181

/-- `A025867(n)+a(n-2)` -/
def P1533876053862824921.Spec : Prop :=
  ∀ n, P1533876053862824921.a n = A029181 n

end A029181

/-! ## A029181.P14946782084654810875

`abs(∑[A029073(n)*A033999(n)])`
-/

namespace A029181.P14946782084654810875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029073 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029181.P14946782084654810875

namespace A029181

/-- `abs(∑[A029073(n)*A033999(n)])` -/
def P14946782084654810875.Spec : Prop :=
  ∀ n, P14946782084654810875.a n = A029181 n

end A029181

/-! ## A029181.P814916596666904894

`A025867(n)+A029178(n)-A029347(n)`
-/

namespace A029181.P814916596666904894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025867 n + (A029178 n - A029347 n)

end

end A029181.P814916596666904894

namespace A029181

/-- `A025867(n)+A029178(n)-A029347(n)` -/
def P814916596666904894.Spec : Prop :=
  ∀ n, P814916596666904894.a n = A029181 n

end A029181

/-! ## A029181.P862673070602361029

`A029186(n)+A029359(n)-A025872(n)`
-/

namespace A029181.P862673070602361029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029186 n + (A029359 n - A025872 n)

end

end A029181.P862673070602361029

namespace A029181

/-- `A029186(n)+A029359(n)-A025872(n)` -/
def P862673070602361029.Spec : Prop :=
  ∀ n, P862673070602361029.a n = A029181 n

end A029181

/-! ## A029181.P13837134337377247579

`A029214(n)+A029347(n)-A025897(n)`
-/

namespace A029181.P13837134337377247579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 n + (A029347 n - A025897 n)

end

end A029181.P13837134337377247579

namespace A029181

/-- `A029214(n)+A029347(n)-A025897(n)` -/
def P13837134337377247579.Spec : Prop :=
  ∀ n, P13837134337377247579.a n = A029181 n

end A029181

/-! ## A029181.P15489656239229036216

`A029178(n+2)-A029347(n+2)`
-/

namespace A029181.P15489656239229036216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029178 (n + 2) - A029347 (n + 2)

end

end A029181.P15489656239229036216

namespace A029181

/-- `A029178(n+2)-A029347(n+2)` -/
def P15489656239229036216.Spec : Prop :=
  ∀ n, P15489656239229036216.a n = A029181 n

end A029181

/-! ## A029181.P695175136610748688

`A029359(A005843(n+7))-A029186(n+7)`
-/

namespace A029181.P695175136610748688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A005843 (n + 7)).toNat - A029186 (n + 7)

end

end A029181.P695175136610748688

namespace A029181

/-- `A029359(A005843(n+7))-A029186(n+7)` -/
def P695175136610748688.Spec : Prop :=
  ∀ n, P695175136610748688.a n = A029181 n

end A029181

/-!
# A029182: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^7)*(1-x^9)).

The programs for A029182, the canonical program `A029182.P11771640333311739023` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029182 has offset 0).

The definition of A029182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029182.P11771640333311739023

`A029074(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029182

/-- `A029074(n)-a(n-1)` -/
def P11771640333311739023.Spec : Prop :=
  ∀ n, P11771640333311739023.a n = A029182 n

theorem P11771640333311739023.correct : P11771640333311739023.Spec := by
  intro n
  simp only [A029182]

end A029182

/-! ## A029182.P13401785859010153092

`A025868(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029182.P13401785859010153092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025868 n + a (n - 2)

end

end A029182.P13401785859010153092

namespace A029182

/-- `A025868(n)+a(n-2)` -/
def P13401785859010153092.Spec : Prop :=
  ∀ n, P13401785859010153092.a n = A029182 n

end A029182

/-! ## A029182.P431031319097293308

`Δ[a(n-2)+A029071(n)-A029348(n)]` with `a(0)=1, a(1)=2`
-/

namespace A029182.P431031319097293308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + (A029071 n - A029348 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029182.P431031319097293308

namespace A029182

/-- `Δ[a(n-2)+A029071(n)-A029348(n)]` -/
def P431031319097293308.Spec : Prop :=
  ∀ n, P431031319097293308.a n = A029182 n

end A029182

/-! ## A029182.P2314762152968170215

`A029359(2*n+7)-a((2*n)%(n+1))` with `a(0)=1`
-/

namespace A029182.P2314762152968170215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029359 (2 * n + 7) - a (2 * n % (n + 1))

end

end A029182.P2314762152968170215

namespace A029182

/-- `A029359(2*n+7)-a((2*n)%(n+1))` -/
def P2314762152968170215.Spec : Prop :=
  ∀ n, P2314762152968170215.a n = A029182 n

end A029182

/-! ## A029182.P17084322185540929403

`abs(a(n-1)-A029359(A020742(n)))` with `a(0)=1`
-/

namespace A029182.P17084322185540929403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A029359 (A020742 n).toNat|

end

end A029182.P17084322185540929403

namespace A029182

/-- `abs(a(n-1)-A029359(A020742(n)))` -/
def P17084322185540929403.Spec : Prop :=
  ∀ n, P17084322185540929403.a n = A029182 n

end A029182

/-!
# A029183: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^7)*(1-x^10)).

The programs for A029183, the canonical program `A029183.P12325617636140847852` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029183 has offset 0).

The definition of A029183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029183.P12325617636140847852

`A029075(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029183

/-- `A029075(n)-a(n-1)` -/
def P12325617636140847852.Spec : Prop :=
  ∀ n, P12325617636140847852.a n = A029183 n

theorem P12325617636140847852.correct : P12325617636140847852.Spec := by
  intro n
  simp only [A029183]

end A029183

/-! ## A029183.P10463405631089614680

`A025869(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029183.P10463405631089614680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025869 n + a (n - 2)

end

end A029183.P10463405631089614680

namespace A029183

/-- `A025869(n)+a(n-2)` -/
def P10463405631089614680.Spec : Prop :=
  ∀ n, P10463405631089614680.a n = A029183 n

end A029183

/-! ## A029183.P2584529525628097729

`A029216(n)+A029349(n)-A025899(n)`
-/

namespace A029183.P2584529525628097729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 n + (A029349 n - A025899 n)

end

end A029183.P2584529525628097729

namespace A029183

/-- `A029216(n)+A029349(n)-A025899(n)` -/
def P2584529525628097729.Spec : Prop :=
  ∀ n, P2584529525628097729.a n = A029183 n

end A029183

/-! ## A029183.P7558276691617155534

`A029180(n)+A029233(n)-A029224(n)`
-/

namespace A029183.P7558276691617155534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029180 n + (A029233 n - A029224 n)

end

end A029183.P7558276691617155534

namespace A029183

/-- `A029180(n)+A029233(n)-A029224(n)` -/
def P7558276691617155534.Spec : Prop :=
  ∀ n, P7558276691617155534.a n = A029183 n

end A029183

/-! ## A029183.P18431756308361451060

`A029137(n)-A029274(A001651(n+1))`
-/

namespace A029183.P18431756308361451060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029137 n - A029274 (A001651 (n + 1)).toNat

end

end A029183.P18431756308361451060

namespace A029183

/-- `A029137(n)-A029274(A001651(n+1))` -/
def P18431756308361451060.Spec : Prop :=
  ∀ n, P18431756308361451060.a n = A029183 n

end A029183

/-!
# A029184: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^7)*(1-x^11)).

The programs for A029184, the canonical program `A029184.P15944351178532472799` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029184 has offset 0).

The definition of A029184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029184.P15944351178532472799

`A029076(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029184

/-- `A029076(n)-a(n-1)` -/
def P15944351178532472799.Spec : Prop :=
  ∀ n, P15944351178532472799.a n = A029184 n

theorem P15944351178532472799.correct : P15944351178532472799.Spec := by
  intro n
  simp only [A029184]

end A029184

/-! ## A029184.P8476285936217469639

`A025870(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029184.P8476285936217469639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025870 n + a (n - 2)

end

end A029184.P8476285936217469639

namespace A029184

/-- `A025870(n)+a(n-2)` -/
def P8476285936217469639.Spec : Prop :=
  ∀ n, P8476285936217469639.a n = A029184 n

end A029184

/-! ## A029184.P16239659411710653717

`∑[A025870(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A029184.P16239659411710653717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025870 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029184.P16239659411710653717

namespace A029184

/-- `∑[A025870(n)-a(A023443(n))]` -/
def P16239659411710653717.Spec : Prop :=
  ∀ n, P16239659411710653717.a n = A029184 n

end A029184

/-! ## A029184.P10913023848394275588

`A029228(n+3)+A029228(n)-A025822(n+3)`
-/

namespace A029184.P10913023848394275588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 (n + 3) + (A029228 n - A025822 (n + 3))

end

end A029184.P10913023848394275588

namespace A029184

/-- `A029228(n+3)+A029228(n)-A025822(n+3)` -/
def P10913023848394275588.Spec : Prop :=
  ∀ n, P10913023848394275588.a n = A029184 n

end A029184

/-! ## A029184.P281160212417630358

`A029437(2*n+3)+A029350(n)`
-/

namespace A029184.P281160212417630358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (2 * n + 3) + A029350 n

end

end A029184.P281160212417630358

namespace A029184

/-- `A029437(2*n+3)+A029350(n)` -/
def P281160212417630358.Spec : Prop :=
  ∀ n, P281160212417630358.a n = A029184 n

end A029184

/-!
# A029185: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^7)*(1-x^12)).

The programs for A029185, the canonical program `A029185.P671418008566287190` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029185 has offset 0).

The definition of A029185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029185.P671418008566287190

`A029077(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029185

/-- `A029077(n)-a(n-1)` -/
def P671418008566287190.Spec : Prop :=
  ∀ n, P671418008566287190.a n = A029185 n

theorem P671418008566287190.correct : P671418008566287190.Spec := by
  intro n
  simp only [A029185]

end A029185

/-! ## A029185.P9387621571009970456

`A025871(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029185.P9387621571009970456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025871 n + a (n - 2)

end

end A029185.P9387621571009970456

namespace A029185

/-- `A025871(n)+a(n-2)` -/
def P9387621571009970456.Spec : Prop :=
  ∀ n, P9387621571009970456.a n = A029185 n

end A029185

/-! ## A029185.P16686284294318819897

`A025871(n)+A029214(n)-A025911(n)`
-/

namespace A029185.P16686284294318819897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 n + (A029214 n - A025911 n)

end

end A029185.P16686284294318819897

namespace A029185

/-- `A025871(n)+A029214(n)-A025911(n)` -/
def P16686284294318819897.Spec : Prop :=
  ∀ n, P16686284294318819897.a n = A029185 n

end A029185

/-! ## A029185.P3833033923945304573

`A029229(n)+A029347(n)-A025911(n)`
-/

namespace A029185.P3833033923945304573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 n + (A029347 n - A025911 n)

end

end A029185.P3833033923945304573

namespace A029185

/-- `A029229(n)+A029347(n)-A025911(n)` -/
def P3833033923945304573.Spec : Prop :=
  ∀ n, P3833033923945304573.a n = A029185 n

end A029185

/-! ## A029185.P3187379994531838554

`A029192(n)+A029202(n)-A029213(n)`
-/

namespace A029185.P3187379994531838554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029192 n + (A029202 n - A029213 n)

end

end A029185.P3187379994531838554

namespace A029185

/-- `A029192(n)+A029202(n)-A029213(n)` -/
def P3187379994531838554.Spec : Prop :=
  ∀ n, P3187379994531838554.a n = A029185 n

end A029185

/-! ## A029185.P10793646139410486297

`Δ[a(n-2)+A029053(n)-A029261(n)]` with `a(0)=0, a(1)=1`
-/

namespace A029185.P10793646139410486297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (A029053 n - A029261 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029185.P10793646139410486297

namespace A029185

/-- `Δ[a(n-2)+A029053(n)-A029261(n)]` -/
def P10793646139410486297.Spec : Prop :=
  ∀ n, P10793646139410486297.a n = A029185 n

end A029185

/-! ## A029185.P5009919032207266648

`A029214(n+2)-A025911(n+2)`
-/

namespace A029185.P5009919032207266648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (n + 2) - A025911 (n + 2)

end

end A029185.P5009919032207266648

namespace A029185

/-- `A029214(n+2)-A025911(n+2)` -/
def P5009919032207266648.Spec : Prop :=
  ∀ n, P5009919032207266648.a n = A029185 n

end A029185

/-!
# A029186: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^8)*(1-x^9)).

The programs for A029186, the canonical program `A029186.P6782394421883097105` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029186 has offset 0).

The definition of A029186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029186.P6782394421883097105

`A029078(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029186

/-- `A029078(n)-a(n-1)` -/
def P6782394421883097105.Spec : Prop :=
  ∀ n, P6782394421883097105.a n = A029186 n

theorem P6782394421883097105.correct : P6782394421883097105.Spec := by
  intro n
  simp only [A029186]

end A029186

/-! ## A029186.P18146682356242988630

`A025872(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029186.P18146682356242988630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025872 n + a (n - 2)

end

end A029186.P18146682356242988630

namespace A029186

/-- `A025872(n)+a(n-2)` -/
def P18146682356242988630.Spec : Prop :=
  ∀ n, P18146682356242988630.a n = A029186 n

end A029186

/-! ## A029186.P4827189301450263060

`abs(∑[A029078(n)*A033999(n)])`
-/

namespace A029186.P4827189301450263060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029078 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029186.P4827189301450263060

namespace A029186

/-- `abs(∑[A029078(n)*A033999(n)])` -/
def P4827189301450263060.Spec : Prop :=
  ∀ n, P4827189301450263060.a n = A029186 n

end A029186

/-! ## A029186.P8361135634149429221

`A008643(n)+A025804(n)-A029009(n)`
-/

namespace A029186.P8361135634149429221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008643 n + (A025804 n - A029009 n)

end

end A029186.P8361135634149429221

namespace A029186

/-- `A008643(n)+A025804(n)-A029009(n)` -/
def P8361135634149429221.Spec : Prop :=
  ∀ n, P8361135634149429221.a n = A029186 n

end A029186

/-! ## A029186.P14800647826695565533

`A029190(n)+A029238(n)-A025825(n)`
-/

namespace A029186.P14800647826695565533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 n + (A029238 n - A025825 n)

end

end A029186.P14800647826695565533

namespace A029186

/-- `A029190(n)+A029238(n)-A025825(n)` -/
def P14800647826695565533.Spec : Prop :=
  ∀ n, P14800647826695565533.a n = A029186 n

end A029186

/-! ## A029186.P13203145740626826230

`A025872(n)+A029181(n)-A029359(n)`
-/

namespace A029186.P13203145740626826230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 n + (A029181 n - A029359 n)

end

end A029186.P13203145740626826230

namespace A029186

/-- `A025872(n)+A029181(n)-A029359(n)` -/
def P13203145740626826230.Spec : Prop :=
  ∀ n, P13203145740626826230.a n = A029186 n

end A029186

/-! ## A029186.P14985303824452944965

`A029187(n)+A029370(n)-A025873(n)`
-/

namespace A029186.P14985303824452944965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029187 n + (A029370 n - A025873 n)

end

end A029186.P14985303824452944965

namespace A029186

/-- `A029187(n)+A029370(n)-A025873(n)` -/
def P14985303824452944965.Spec : Prop :=
  ∀ n, P14985303824452944965.a n = A029186 n

end A029186

/-! ## A029186.P10183521977249139196

`A029177(n)+A029238(n)-A029210(n)`
-/

namespace A029186.P10183521977249139196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029177 n + (A029238 n - A029210 n)

end

end A029186.P10183521977249139196

namespace A029186

/-- `A029177(n)+A029238(n)-A029210(n)` -/
def P10183521977249139196.Spec : Prop :=
  ∀ n, P10183521977249139196.a n = A029186 n

end A029186

/-!
# A029187: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^8)*(1-x^11)).

The programs for A029187, the canonical program `A029187.P10626193036163881036` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029187 has offset 0).

The definition of A029187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029187.P17117183380641692940

`A029079(n)-a(n-1)` with `a(0)=1`
-/

namespace A029187.P17117183380641692940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029079 n - a (n - 1)

end

end A029187.P17117183380641692940

namespace A029187

/-- `A029079(n)-a(n-1)` -/
def P17117183380641692940.Spec : Prop :=
  ∀ n, P17117183380641692940.a n = A029187 n

end A029187

/-! ## A029187.P11590000589850575389

`A025873(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029187.P11590000589850575389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025873 n + a (n - 2)

end

end A029187.P11590000589850575389

namespace A029187

/-- `A025873(n)+a(n-2)` -/
def P11590000589850575389.Spec : Prop :=
  ∀ n, P11590000589850575389.a n = A029187 n

end A029187

/-! ## A029187.P787039095205254056

`A029220(n)+A029353(n)-A025903(n)`
-/

namespace A029187.P787039095205254056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029220 n + (A029353 n - A025903 n)

end

end A029187.P787039095205254056

namespace A029187

/-- `A029220(n)+A029353(n)-A025903(n)` -/
def P787039095205254056.Spec : Prop :=
  ∀ n, P787039095205254056.a n = A029187 n

end A029187

/-! ## A029187.P10626193036163881036

`A029164(n)+A029192(n)-A029170(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029187

/-- `A029164(n)+A029192(n)-A029170(n)` -/
def P10626193036163881036.Spec : Prop :=
  ∀ n, P10626193036163881036.a n = A029187 n

theorem P10626193036163881036.correct : P10626193036163881036.Spec := by
  intro n
  simp only [A029187]

end A029187

/-! ## A029187.P11735897847323293493

`A029305(A168197(n+1))`
-/

namespace A029187.P11735897847323293493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029305 (A168197 (n + 1)).toNat

end

end A029187.P11735897847323293493

namespace A029187

/-- `A029305(A168197(n+1))` -/
def P11735897847323293493.Spec : Prop :=
  ∀ n, P11735897847323293493.a n = A029187 n

end A029187

/-!
# A029188: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^9)*(1-x^10)).

The programs for A029188, the canonical program `A029188.P8573810268578993572` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029188 has offset 0).

The definition of A029188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029188.P8573810268578993572

`A029080(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029188

/-- `A029080(n)-a(n-1)` -/
def P8573810268578993572.Spec : Prop :=
  ∀ n, P8573810268578993572.a n = A029188 n

theorem P8573810268578993572.correct : P8573810268578993572.Spec := by
  intro n
  simp only [A029188]

end A029188

/-! ## A029188.P11133180368794941742

`A029190(n)+A029375(n)-A025874(n)`
-/

namespace A029188.P11133180368794941742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 n + (A029375 n - A025874 n)

end

end A029188.P11133180368794941742

namespace A029188

/-- `A029190(n)+A029375(n)-A025874(n)` -/
def P11133180368794941742.Spec : Prop :=
  ∀ n, P11133180368794941742.a n = A029188 n

end A029188

/-! ## A029188.P16012452196528488500

`A029221(n)+A029354(n)-A025904(n)`
-/

namespace A029188.P16012452196528488500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 n + (A029354 n - A025904 n)

end

end A029188.P16012452196528488500

namespace A029188

/-- `A029221(n)+A029354(n)-A025904(n)` -/
def P16012452196528488500.Spec : Prop :=
  ∀ n, P16012452196528488500.a n = A029188 n

end A029188

/-! ## A029188.P15016054258545095108

`A029165(n)+A029179(n)-A029153(n)`
-/

namespace A029188.P15016054258545095108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029165 n + (A029179 n - A029153 n)

end

end A029188.P15016054258545095108

namespace A029188

/-- `A029165(n)+A029179(n)-A029153(n)` -/
def P15016054258545095108.Spec : Prop :=
  ∀ n, P15016054258545095108.a n = A029188 n

end A029188

/-! ## A029188.P8916781632069025051

`Δ[∑[A029204(n)]-A029236(n)]`
-/

namespace A029188.P8916781632069025051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029188.P8916781632069025051

namespace A029188

/-- `Δ[∑[A029204(n)]-A029236(n)]` -/
def P8916781632069025051.Spec : Prop :=
  ∀ n, P8916781632069025051.a n = A029188 n

end A029188

/-! ## A029188.P1816152019464304337

`A029204(n+1)-Δ[A029236(n)]`
-/

namespace A029188.P1816152019464304337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029188.P1816152019464304337

namespace A029188

/-- `A029204(n+1)-Δ[A029236(n)]` -/
def P1816152019464304337.Spec : Prop :=
  ∀ n, P1816152019464304337.a n = A029188 n

end A029188

/-! ## A029188.P17605081969235827027

`A029204(n+1)+A029236(n)-A029236(n+1)`
-/

namespace A029188.P17605081969235827027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 (n + 1) + (A029236 n - A029236 (n + 1))

end

end A029188.P17605081969235827027

namespace A029188

/-- `A029204(n+1)+A029236(n)-A029236(n+1)` -/
def P17605081969235827027.Spec : Prop :=
  ∀ n, P17605081969235827027.a n = A029188 n

end A029188

/-!
# A029189: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^9)*(1-x^11)).

The programs for A029189, the canonical program `A029189.P4411775248308145977` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029189 has offset 0).

The definition of A029189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029189.P4411775248308145977

`A029081(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029189

/-- `A029081(n)-a(n-1)` -/
def P4411775248308145977.Spec : Prop :=
  ∀ n, P4411775248308145977.a n = A029189 n

theorem P4411775248308145977.correct : P4411775248308145977.Spec := by
  intro n
  simp only [A029189]

end A029189

/-! ## A029189.P8360628799611669148

`abs(∑[A029081(n)*A033999(n)])`
-/

namespace A029189.P8360628799611669148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029081 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029189.P8360628799611669148

namespace A029189

/-- `abs(∑[A029081(n)*A033999(n)])` -/
def P8360628799611669148.Spec : Prop :=
  ∀ n, P8360628799611669148.a n = A029189 n

end A029189

/-! ## A029189.P3342473155476192901

`A029222(n)+A029355(n)-A025905(n)`
-/

namespace A029189.P3342473155476192901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029222 n + (A029355 n - A025905 n)

end

end A029189.P3342473155476192901

namespace A029189

/-- `A029222(n)+A029355(n)-A025905(n)` -/
def P3342473155476192901.Spec : Prop :=
  ∀ n, P3342473155476192901.a n = A029189 n

end A029189

/-! ## A029189.P6645343946590219426

`A029176(n)+A029222(n)-A029195(n)`
-/

namespace A029189.P6645343946590219426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029176 n + (A029222 n - A029195 n)

end

end A029189.P6645343946590219426

namespace A029189

/-- `A029176(n)+A029222(n)-A029195(n)` -/
def P6645343946590219426.Spec : Prop :=
  ∀ n, P6645343946590219426.a n = A029189 n

end A029189

/-! ## A029189.P4430038170665633099

`∑[A029081(n)*A033999(n)]*A033999(3*n)`
-/

namespace A029189.P4430038170665633099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029081 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (3 * n)

end

end A029189.P4430038170665633099

namespace A029189

/-- `∑[A029081(n)*A033999(n)]*A033999(3*n)` -/
def P4430038170665633099.Spec : Prop :=
  ∀ n, P4430038170665633099.a n = A029189 n

end A029189

/-! ## A029189.P4933669782102700865

`A000196(∑[A029081(n)*A033999(n)]²)`
-/

namespace A029189.P4933669782102700865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029081 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A029189.P4933669782102700865

namespace A029189

/-- `A000196(∑[A029081(n)*A033999(n)]²)` -/
def P4933669782102700865.Spec : Prop :=
  ∀ n, P4933669782102700865.a n = A029189 n

end A029189

/-! ## A029189.P3056043113698809533

`A000196(∑[A029081(n)/A033999(n)]²)`
-/

namespace A029189.P3056043113698809533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029081 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A029189.P3056043113698809533

namespace A029189

/-- `A000196(∑[A029081(n)/A033999(n)]²)` -/
def P3056043113698809533.Spec : Prop :=
  ∀ n, P3056043113698809533.a n = A029189 n

end A029189

/-!
# A029190: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^9)*(1-x^12)).

The programs for A029190, the canonical program `A029190.P3048061555265255243` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029190 has offset 0).

The definition of A029190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029190.P3048061555265255243

`A029082(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029190

/-- `A029082(n)-a(n-1)` -/
def P3048061555265255243.Spec : Prop :=
  ∀ n, P3048061555265255243.a n = A029190 n

theorem P3048061555265255243.correct : P3048061555265255243.Spec := by
  intro n
  simp only [A029190]

end A029190

/-! ## A029190.P13974024344168269915

`A025874(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029190.P13974024344168269915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025874 n + a (n - 2)

end

end A029190.P13974024344168269915

namespace A029190

/-- `A025874(n)+a(n-2)` -/
def P13974024344168269915.Spec : Prop :=
  ∀ n, P13974024344168269915.a n = A029190 n

end A029190

/-! ## A029190.P1528950076558413386

`A025874(n)+A029219(n)-A025920(n)`
-/

namespace A029190.P1528950076558413386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 n + (A029219 n - A025920 n)

end

end A029190.P1528950076558413386

namespace A029190

/-- `A025874(n)+A029219(n)-A025920(n)` -/
def P1528950076558413386.Spec : Prop :=
  ∀ n, P1528950076558413386.a n = A029190 n

end A029190

/-! ## A029190.P17403084048221527567

`A025874(n)+A029188(n)-A029375(n)`
-/

namespace A029190.P17403084048221527567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 n + (A029188 n - A029375 n)

end

end A029190.P17403084048221527567

namespace A029190

/-- `A025874(n)+A029188(n)-A029375(n)` -/
def P17403084048221527567.Spec : Prop :=
  ∀ n, P17403084048221527567.a n = A029190 n

end A029190

/-! ## A029190.P17278440277984973505

`A029177(n)+A029232(n)-A029200(n)`
-/

namespace A029190.P17278440277984973505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029177 n + (A029232 n - A029200 n)

end

end A029190.P17278440277984973505

namespace A029190

/-- `A029177(n)+A029232(n)-A029200(n)` -/
def P17278440277984973505.Spec : Prop :=
  ∀ n, P17278440277984973505.a n = A029190 n

end A029190

/-!
# A029191: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^10)*(1-x^11)).

The programs for A029191, the canonical program `A029191.P13934192219691745760` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029191 has offset 0).

The definition of A029191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029191.P2611690542505009240

`A029083(n)-a(n-1)` with `a(0)=1`
-/

namespace A029191.P2611690542505009240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029083 n - a (n - 1)

end

end A029191.P2611690542505009240

namespace A029191

/-- `A029083(n)-a(n-1)` -/
def P2611690542505009240.Spec : Prop :=
  ∀ n, P2611690542505009240.a n = A029191 n

end A029191

/-! ## A029191.P13934192219691745760

`A029192(n)+A029377(n)-A025875(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A029191

/-- `A029192(n)+A029377(n)-A025875(n)` -/
def P13934192219691745760.Spec : Prop :=
  ∀ n, P13934192219691745760.a n = A029191 n

theorem P13934192219691745760.correct : P13934192219691745760.Spec := by
  intro n
  simp only [A029191]

end A029191

/-! ## A029191.P4540810510231558402

`A029168(n)+A029183(n)-A029159(n)`
-/

namespace A029191.P4540810510231558402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029168 n + (A029183 n - A029159 n)

end

end A029191.P4540810510231558402

namespace A029191

/-- `A029168(n)+A029183(n)-A029159(n)` -/
def P4540810510231558402.Spec : Prop :=
  ∀ n, P4540810510231558402.a n = A029191 n

end A029191

/-! ## A029191.P12168208559389249935

`A029180(n)+A029211(n)-A029196(n)`
-/

namespace A029191.P12168208559389249935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029180 n + (A029211 n - A029196 n)

end

end A029191.P12168208559389249935

namespace A029191

/-- `A029180(n)+A029211(n)-A029196(n)` -/
def P12168208559389249935.Spec : Prop :=
  ∀ n, P12168208559389249935.a n = A029191 n

end A029191

/-! ## A029191.P6086343872635808133

`Δ[∑[A029206(n)]-A029239(n)]`
-/

namespace A029191.P6086343872635808133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029191.P6086343872635808133

namespace A029191

/-- `Δ[∑[A029206(n)]-A029239(n)]` -/
def P6086343872635808133.Spec : Prop :=
  ∀ n, P6086343872635808133.a n = A029191 n

end A029191

/-! ## A029191.P135763782111703701

`A029206(n+1)-Δ[A029239(n)]`
-/

namespace A029191.P135763782111703701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029206 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029191.P135763782111703701

namespace A029191

/-- `A029206(n+1)-Δ[A029239(n)]` -/
def P135763782111703701.Spec : Prop :=
  ∀ n, P135763782111703701.a n = A029191 n

end A029191

/-!
# A029192: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^11)*(1-x^12)).

The programs for A029192, the canonical program `A029192.P625533738884100242` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029192 has offset 0).

The definition of A029192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029192.P625533738884100242

`A029084(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029192

/-- `A029084(n)-a(n-1)` -/
def P625533738884100242.Spec : Prop :=
  ∀ n, P625533738884100242.a n = A029192 n

theorem P625533738884100242.correct : P625533738884100242.Spec := by
  intro n
  simp only [A029192]

end A029192

/-! ## A029192.P7129676377137030734

`A025875(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029192.P7129676377137030734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025875 n + a (n - 2)

end

end A029192.P7129676377137030734

namespace A029192

/-- `A025875(n)+a(n-2)` -/
def P7129676377137030734.Spec : Prop :=
  ∀ n, P7129676377137030734.a n = A029192 n

end A029192

/-! ## A029192.P15511792351876769546

`A029224(n)+A029377(n)-A025926(n)`
-/

namespace A029192.P15511792351876769546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 n + (A029377 n - A025926 n)

end

end A029192.P15511792351876769546

namespace A029192

/-- `A029224(n)+A029377(n)-A025926(n)` -/
def P15511792351876769546.Spec : Prop :=
  ∀ n, P15511792351876769546.a n = A029192 n

end A029192

/-! ## A029192.P1123180590078712465

`A029170(n)+A029187(n)-A029164(n)`
-/

namespace A029192.P1123180590078712465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029170 n + (A029187 n - A029164 n)

end

end A029192.P1123180590078712465

namespace A029192

/-- `A029170(n)+A029187(n)-A029164(n)` -/
def P1123180590078712465.Spec : Prop :=
  ∀ n, P1123180590078712465.a n = A029192 n

end A029192

/-! ## A029192.P1795014028502751513

`A029185(n)+A029213(n)-A029202(n)`
-/

namespace A029192.P1795014028502751513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029185 n + (A029213 n - A029202 n)

end

end A029192.P1795014028502751513

namespace A029192

/-- `A029185(n)+A029213(n)-A029202(n)` -/
def P1795014028502751513.Spec : Prop :=
  ∀ n, P1795014028502751513.a n = A029192 n

end A029192

/-!
# A029193: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^6)*(1-x^7)).

The programs for A029193, the canonical program `A029193.P5391882705904809498` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029193 has offset 0).

The definition of A029193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029193.P5391882705904809498

`A029085(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029193

/-- `A029085(n)-a(n-1)` -/
def P5391882705904809498.Spec : Prop :=
  ∀ n, P5391882705904809498.a n = A029193 n

theorem P5391882705904809498.correct : P5391882705904809498.Spec := by
  intro n
  simp only [A029193]

end A029193

/-! ## A029193.P575978914016399450

`A025876(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029193.P575978914016399450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025876 n + a (n - 2)

end

end A029193.P575978914016399450

namespace A029193

/-- `A025876(n)+a(n-2)` -/
def P575978914016399450.Spec : Prop :=
  ∀ n, P575978914016399450.a n = A029193 n

end A029193

/-! ## A029193.P7055925248458335345

`A029144(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029193.P7055925248458335345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029144 n - a (n - 3)

end

end A029193.P7055925248458335345

namespace A029193

/-- `A029144(n)-a(n-3)` -/
def P7055925248458335345.Spec : Prop :=
  ∀ n, P7055925248458335345.a n = A029193 n

end A029193

/-! ## A029193.P12307124766800066565

`A025899(n)+A029158(n)-A025847(n)`
-/

namespace A029193.P12307124766800066565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n + (A029158 n - A025847 n)

end

end A029193.P12307124766800066565

namespace A029193

/-- `A025899(n)+A029158(n)-A025847(n)` -/
def P12307124766800066565.Spec : Prop :=
  ∀ n, P12307124766800066565.a n = A029193 n

end A029193

/-! ## A029193.P6346196896734815437

`A029367(2*n)`
-/

namespace A029193.P6346196896734815437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 (2 * n)

end

end A029193.P6346196896734815437

namespace A029193

/-- `A029367(2*n)` -/
def P6346196896734815437.Spec : Prop :=
  ∀ n, P6346196896734815437.a n = A029193 n

end A029193

/-! ## A029193.P13076885241012905050

`A029234(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029193.P13076885241012905050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029234 (2 * n) - a (n - 1)

end

end A029193.P13076885241012905050

namespace A029193

/-- `A029234(2*n)-a(n-1)` -/
def P13076885241012905050.Spec : Prop :=
  ∀ n, P13076885241012905050.a n = A029193 n

end A029193

/-! ## A029193.P14729903468575843474

`A029358(2*n)+A029400(2*n)-A029391(2*n)`
-/

namespace A029193.P14729903468575843474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029358 (2 * n) + (A029400 (2 * n) - A029391 (2 * n))

end

end A029193.P14729903468575843474

namespace A029193

/-- `A029358(2*n)+A029400(2*n)-A029391(2*n)` -/
def P14729903468575843474.Spec : Prop :=
  ∀ n, P14729903468575843474.a n = A029193 n

end A029193

/-! ## A029193.P14540118028314041651

`A029377(2*n)+A029400(2*n)-A029412(2*n)`
-/

namespace A029193.P14540118028314041651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 (2 * n) + (A029400 (2 * n) - A029412 (2 * n))

end

end A029193.P14540118028314041651

namespace A029193

/-- `A029377(2*n)+A029400(2*n)-A029412(2*n)` -/
def P14540118028314041651.Spec : Prop :=
  ∀ n, P14540118028314041651.a n = A029193 n

end A029193

/-! ## A029193.P10263830948013026193

`A029396(2*n+1)+A029436(2*n)-A029436(2*n+1)`
-/

namespace A029193.P10263830948013026193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029396 (2 * n + 1) + (A029436 (2 * n) - A029436 (2 * n + 1))

end

end A029193.P10263830948013026193

namespace A029193

/-- `A029396(2*n+1)+A029436(2*n)-A029436(2*n+1)` -/
def P10263830948013026193.Spec : Prop :=
  ∀ n, P10263830948013026193.a n = A029193 n

end A029193

/-! ## A029193.P1131926981102077248

`A029436(2*n+3)+A029436(2*n)`
-/

namespace A029193.P1131926981102077248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029436 (2 * n + 3) + A029436 (2 * n)

end

end A029193.P1131926981102077248

namespace A029193

/-- `A029436(2*n+3)+A029436(2*n)` -/
def P1131926981102077248.Spec : Prop :=
  ∀ n, P1131926981102077248.a n = A029193 n

end A029193

/-! ## A029193.P14392370631513983562

`Δ[∑[A029414(2*n)]-A029436(2*n)]`
-/

namespace A029193.P14392370631513983562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029436 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029193.P14392370631513983562

namespace A029193

/-- `Δ[∑[A029414(2*n)]-A029436(2*n)]` -/
def P14392370631513983562.Spec : Prop :=
  ∀ n, P14392370631513983562.a n = A029193 n

end A029193

/-! ## A029193.P11603037819687307050

`abs(a(n-1)-A029234(A020742(n)))` with `a(0)=1`
-/

namespace A029193.P11603037819687307050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A029234 (A020742 n).toNat|

end

end A029193.P11603037819687307050

namespace A029193

/-- `abs(a(n-1)-A029234(A020742(n)))` -/
def P11603037819687307050.Spec : Prop :=
  ∀ n, P11603037819687307050.a n = A029193 n

end A029193

/-!
# A029194: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^6)*(1-x^8)).

The programs for A029194, the canonical program `A029194.P6053703161313486365` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029194 has offset 0).

The definition of A029194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029194.P6053703161313486365

`A029086(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029194

/-- `A029086(n)-a(n-1)` -/
def P6053703161313486365.Spec : Prop :=
  ∀ n, P6053703161313486365.a n = A029194 n

theorem P6053703161313486365.correct : P6053703161313486365.Spec := by
  intro n
  simp only [A029194]

end A029194

/-! ## A029194.P16337280729672991215

`A025877(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029194.P16337280729672991215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025877 n + a (n - 2)

end

end A029194.P16337280729672991215

namespace A029194

/-- `A025877(n)+a(n-2)` -/
def P16337280729672991215.Spec : Prop :=
  ∀ n, P16337280729672991215.a n = A029194 n

end A029194

/-! ## A029194.P5269291204928416901

`A029145(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029194.P5269291204928416901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029145 n - a (n - 3)

end

end A029194.P5269291204928416901

namespace A029194

/-- `A029145(n)-a(n-3)` -/
def P5269291204928416901.Spec : Prop :=
  ∀ n, P5269291204928416901.a n = A029194 n

end A029194

/-! ## A029194.P9609522294006132377

`A029162((xor(1, n)+n)%(n+1))`
-/

namespace A029194.P9609522294006132377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029162 ((Nat.xor 1 n + n) % (n + 1))

end

end A029194.P9609522294006132377

namespace A029194

/-- `A029162((xor(1, n)+n)%(n+1))` -/
def P9609522294006132377.Spec : Prop :=
  ∀ n, P9609522294006132377.a n = A029194 n

end A029194

/-! ## A029194.P4002112658666192416

`A029327(abs(2-n))+A029327(n)`
-/

namespace A029194.P4002112658666192416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 |2 - (n : ℤ)|.toNat + A029327 n

end

end A029194.P4002112658666192416

namespace A029194

/-- `A029327(abs(2-n))+A029327(n)` -/
def P4002112658666192416.Spec : Prop :=
  ∀ n, P4002112658666192416.a n = A029194 n

end A029194

/-! ## A029194.P5429968603812998637

`A266768(n)-A026811(A084964(n)+1)`
-/

namespace A029194.P5429968603812998637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 n - A026811 (A084964 n + 1).toNat

end

end A029194.P5429968603812998637

namespace A029194

/-- `A266768(n)-A026811(A084964(n)+1)` -/
def P5429968603812998637.Spec : Prop :=
  ∀ n, P5429968603812998637.a n = A029194 n

end A029194

/-! ## A029194.P9673058483046511559

`A029288(∑[5-a(n-1)]-n)` with `a(0)=0`
-/

namespace A029194.P9673058483046511559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A029194.P9673058483046511559

namespace A029194

/-- `A029288(∑[5-a(n-1)]-n)` -/
def P9673058483046511559.Spec : Prop :=
  ∀ n, P9673058483046511559.a n = A029194 n

end A029194

/-! ## A029194.P13716243975941766057

`A029288(A166517(n+1)-1)`
-/

namespace A029194.P13716243975941766057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (A166517 (n + 1) - 1).toNat

end

end A029194.P13716243975941766057

namespace A029194

/-- `A029288(A166517(n+1)-1)` -/
def P13716243975941766057.Spec : Prop :=
  ∀ n, P13716243975941766057.a n = A029194 n

end A029194

/-! ## A029194.P2916578648636793402

`A029288(∑[5*A010060(n)]-n)`
-/

namespace A029194.P2916578648636793402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A029194.P2916578648636793402

namespace A029194

/-- `A029288(∑[5*A010060(n)]-n)` -/
def P2916578648636793402.Spec : Prop :=
  ∀ n, P2916578648636793402.a n = A029194 n

end A029194

/-! ## A029194.P5668101436225069495

`A029288(A166517(n+2))`
-/

namespace A029194.P5668101436225069495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (A166517 (n + 2)).toNat

end

end A029194.P5668101436225069495

namespace A029194

/-- `A029288(A166517(n+2))` -/
def P5668101436225069495.Spec : Prop :=
  ∀ n, P5668101436225069495.a n = A029194 n

end A029194

/-! ## A029194.P1035148525097544802

`A266768(n)-A288166(2*(n+1))`
-/

namespace A029194.P1035148525097544802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 n - A288166 (2 * (n + 1))

end

end A029194.P1035148525097544802

namespace A029194

/-- `A266768(n)-A288166(2*(n+1))` -/
def P1035148525097544802.Spec : Prop :=
  ∀ n, P1035148525097544802.a n = A029194 n

end A029194

/-!
# A029195: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^6)*(1-x^9)).

The programs for A029195, the canonical program `A029195.P11890290906593188320` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029195 has offset 0).

The definition of A029195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029195.P11890290906593188320

`A029087(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029195

/-- `A029087(n)-a(n-1)` -/
def P11890290906593188320.Spec : Prop :=
  ∀ n, P11890290906593188320.a n = A029195 n

theorem P11890290906593188320.correct : P11890290906593188320.Spec := by
  intro n
  simp only [A029195]

end A029195

/-! ## A029195.P6819529339394356839

`A025878(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029195.P6819529339394356839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025878 n + a (n - 2)

end

end A029195.P6819529339394356839

namespace A029195

/-- `A025878(n)+a(n-2)` -/
def P6819529339394356839.Spec : Prop :=
  ∀ n, P6819529339394356839.a n = A029195 n

end A029195

/-! ## A029195.P896931882453646903

`A029146(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029195.P896931882453646903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029146 n - a (n - 3)

end

end A029195.P896931882453646903

namespace A029195

/-- `A029146(n)-a(n-3)` -/
def P896931882453646903.Spec : Prop :=
  ∀ n, P896931882453646903.a n = A029195 n

end A029195

/-! ## A029195.P10154026696310401294

`A029176(n)+A029222(n)-A029189(n)`
-/

namespace A029195.P10154026696310401294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029176 n + (A029222 n - A029189 n)

end

end A029195.P10154026696310401294

namespace A029195

/-- `A029176(n)+A029222(n)-A029189(n)` -/
def P10154026696310401294.Spec : Prop :=
  ∀ n, P10154026696310401294.a n = A029195 n

end A029195

/-! ## A029195.P5348955680487025967

`A029153(n+1)+A025904(n)-A029221(n+1)`
-/

namespace A029195.P5348955680487025967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029153 (n + 1) + (A025904 n - A029221 (n + 1))

end

end A029195.P5348955680487025967

namespace A029195

/-- `A029153(n+1)+A025904(n)-A029221(n+1)` -/
def P5348955680487025967.Spec : Prop :=
  ∀ n, P5348955680487025967.a n = A029195 n

end A029195

/-! ## A029195.P15932094291055897036

`A029153(n+1)+A029221(n)-A029165(n+1)`
-/

namespace A029195.P15932094291055897036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029153 (n + 1) + (A029221 n - A029165 (n + 1))

end

end A029195.P15932094291055897036

namespace A029195

/-- `A029153(n+1)+A029221(n)-A029165(n+1)` -/
def P15932094291055897036.Spec : Prop :=
  ∀ n, P15932094291055897036.a n = A029195 n

end A029195

/-! ## A029195.P17095351975993715409

`A029179(n+1)+A029221(n)-A029188(n+1)`
-/

namespace A029195.P17095351975993715409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029179 (n + 1) + (A029221 n - A029188 (n + 1))

end

end A029195.P17095351975993715409

namespace A029195

/-- `A029179(n+1)+A029221(n)-A029188(n+1)` -/
def P17095351975993715409.Spec : Prop :=
  ∀ n, P17095351975993715409.a n = A029195 n

end A029195

/-! ## A029195.P7671603176343476232

`A029375(2*n)`
-/

namespace A029195.P7671603176343476232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029375 (2 * n)

end

end A029195.P7671603176343476232

namespace A029195

/-- `A029375(2*n)` -/
def P7671603176343476232.Spec : Prop :=
  ∀ n, P7671603176343476232.a n = A029195 n

end A029195

/-! ## A029195.P2173181369811902260

`A029242(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029195.P2173181369811902260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029242 (2 * n) - a (n - 1)

end

end A029195.P2173181369811902260

namespace A029195

/-- `A029242(2*n)-a(n-1)` -/
def P2173181369811902260.Spec : Prop :=
  ∀ n, P2173181369811902260.a n = A029195 n

end A029195

/-! ## A029195.P2152782025163774981

`A025874(2*n)+A029188(2*n)-A029190(2*n)`
-/

namespace A029195.P2152782025163774981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 (2 * n) + (A029188 (2 * n) - A029190 (2 * n))

end

end A029195.P2152782025163774981

namespace A029195

/-- `A025874(2*n)+A029188(2*n)-A029190(2*n)` -/
def P2152782025163774981.Spec : Prop :=
  ∀ n, P2152782025163774981.a n = A029195 n

end A029195

/-! ## A029195.P15431192454889628023

`A025920(2*n)+A029188(2*n)-A029219(2*n)`
-/

namespace A029195.P15431192454889628023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 (2 * n) + (A029188 (2 * n) - A029219 (2 * n))

end

end A029195.P15431192454889628023

namespace A029195

/-- `A025920(2*n)+A029188(2*n)-A029219(2*n)` -/
def P15431192454889628023.Spec : Prop :=
  ∀ n, P15431192454889628023.a n = A029195 n

end A029195

/-! ## A029195.P9491808998520422390

`A029405(2*n+1)+A029443(2*n)-A029443(2*n+1)`
-/

namespace A029195.P9491808998520422390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029405 (2 * n + 1) + (A029443 (2 * n) - A029443 (2 * n + 1))

end

end A029195.P9491808998520422390

namespace A029195

/-- `A029405(2*n+1)+A029443(2*n)-A029443(2*n+1)` -/
def P9491808998520422390.Spec : Prop :=
  ∀ n, P9491808998520422390.a n = A029195 n

end A029195

/-! ## A029195.P580095263321307410

`Δ[∑[A029423(2*n)]-A029443(2*n)]`
-/

namespace A029195.P580095263321307410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029443 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029195.P580095263321307410

namespace A029195

/-- `Δ[∑[A029423(2*n)]-A029443(2*n)]` -/
def P580095263321307410.Spec : Prop :=
  ∀ n, P580095263321307410.a n = A029195 n

end A029195

/-! ## A029195.P5197240836676218193

`A029405(2*n+5)`
-/

namespace A029195.P5197240836676218193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029405 (2 * n + 5)

end

end A029195.P5197240836676218193

namespace A029195

/-- `A029405(2*n+5)` -/
def P5197240836676218193.Spec : Prop :=
  ∀ n, P5197240836676218193.a n = A029195 n

end A029195

/-!
# A029196: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^6)*(1-x^10)).

The programs for A029196, the canonical program `A029196.P17074011412360568660` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029196 has offset 0).

The definition of A029196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029196.P17074011412360568660

`A029088(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029196

/-- `A029088(n)-a(n-1)` -/
def P17074011412360568660.Spec : Prop :=
  ∀ n, P17074011412360568660.a n = A029196 n

theorem P17074011412360568660.correct : P17074011412360568660.Spec := by
  intro n
  simp only [A029196]

end A029196

/-! ## A029196.P13479192331893757523

`A025879(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029196.P13479192331893757523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025879 n + a (n - 2)

end

end A029196.P13479192331893757523

namespace A029196

/-- `A025879(n)+a(n-2)` -/
def P13479192331893757523.Spec : Prop :=
  ∀ n, P13479192331893757523.a n = A029196 n

end A029196

/-! ## A029196.P6060980340278900678

`A029147(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029196.P6060980340278900678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029147 n - a (n - 3)

end

end A029196.P6060980340278900678

namespace A029196

/-- `A029147(n)-a(n-3)` -/
def P6060980340278900678.Spec : Prop :=
  ∀ n, P6060980340278900678.a n = A029196 n

end A029196

/-! ## A029196.P2426521983365334522

`A029329(abs(2-n))+A029329(n)`
-/

namespace A029196.P2426521983365334522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029329 |2 - (n : ℤ)|.toNat + A029329 n

end

end A029196.P2426521983365334522

namespace A029196

/-- `A029329(abs(2-n))+A029329(n)` -/
def P2426521983365334522.Spec : Prop :=
  ∀ n, P2426521983365334522.a n = A029196 n

end A029196

/-! ## A029196.P7662865008027039487

`A025879(n)+A029175(n)-A029329(n)`
-/

namespace A029196.P7662865008027039487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025879 n + (A029175 n - A029329 n)

end

end A029196.P7662865008027039487

namespace A029196

/-- `A025879(n)+A029175(n)-A029329(n)` -/
def P7662865008027039487.Spec : Prop :=
  ∀ n, P7662865008027039487.a n = A029196 n

end A029196

/-!
# A029197: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^6)*(1-x^11)).

The programs for A029197, the canonical program `A029197.P15272158842523695462` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029197 has offset 0).

The definition of A029197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029197.P15272158842523695462

`A029089(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029197

/-- `A029089(n)-a(n-1)` -/
def P15272158842523695462.Spec : Prop :=
  ∀ n, P15272158842523695462.a n = A029197 n

theorem P15272158842523695462.correct : P15272158842523695462.Spec := by
  intro n
  simp only [A029197]

end A029197

/-! ## A029197.P15976238334722086591

`A025880(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029197.P15976238334722086591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025880 n + a (n - 2)

end

end A029197.P15976238334722086591

namespace A029197

/-- `A025880(n)+a(n-2)` -/
def P15976238334722086591.Spec : Prop :=
  ∀ n, P15976238334722086591.a n = A029197 n

end A029197

/-! ## A029197.P18343148903198817924

`A029148(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029197.P18343148903198817924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029148 n - a (n - 3)

end

end A029197.P18343148903198817924

namespace A029197

/-- `A029148(n)-a(n-3)` -/
def P18343148903198817924.Spec : Prop :=
  ∀ n, P18343148903198817924.a n = A029197 n

end A029197

/-! ## A029197.P11700486576717196663

`A029377(2*n)`
-/

namespace A029197.P11700486576717196663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 (2 * n)

end

end A029197.P11700486576717196663

namespace A029197

/-- `A029377(2*n)` -/
def P11700486576717196663.Spec : Prop :=
  ∀ n, P11700486576717196663.a n = A029197 n

end A029197

/-! ## A029197.P7703310995733775274

`A029244(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A029197.P7703310995733775274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029244 (2 * n) - a (n - 1)

end

end A029197.P7703310995733775274

namespace A029197

/-- `A029244(2*n)-a(n-1)` -/
def P7703310995733775274.Spec : Prop :=
  ∀ n, P7703310995733775274.a n = A029197 n

end A029197

/-! ## A029197.P9337905757683167163

`∑[A025926(2*n)-a(n-1)]` with `a(0)=1`
-/

namespace A029197.P9337905757683167163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025926 (2 * n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029197.P9337905757683167163

namespace A029197

/-- `∑[A025926(2*n)-a(n-1)]` -/
def P9337905757683167163.Spec : Prop :=
  ∀ n, P9337905757683167163.a n = A029197 n

end A029197

/-! ## A029197.P11148875000191812430

`A029408(2*n+1)+A025922(2*n)`
-/

namespace A029197.P11148875000191812430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 (2 * n + 1) + A025922 (2 * n)

end

end A029197.P11148875000191812430

namespace A029197

/-- `A029408(2*n+1)+A025922(2*n)` -/
def P11148875000191812430.Spec : Prop :=
  ∀ n, P11148875000191812430.a n = A029197 n

end A029197

/-! ## A029197.P11164372875762543559

`A029377(A004277(n))+A000007(n)`
-/

namespace A029197.P11164372875762543559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 (A004277 n).toNat + A000007 n

end

end A029197.P11164372875762543559

namespace A029197

/-- `A029377(A004277(n))+A000007(n)` -/
def P11164372875762543559.Spec : Prop :=
  ∀ n, P11164372875762543559.a n = A029197 n

end A029197

/-! ## A029197.P6462954070688648984

`A025875(2*n)+A029191(2*n)-A029192(2*n)`
-/

namespace A029197.P6462954070688648984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (2 * n) + (A029191 (2 * n) - A029192 (2 * n))

end

end A029197.P6462954070688648984

namespace A029197

/-- `A025875(2*n)+A029191(2*n)-A029192(2*n)` -/
def P6462954070688648984.Spec : Prop :=
  ∀ n, P6462954070688648984.a n = A029197 n

end A029197

/-! ## A029197.P17802247701044970917

`A025926(2*n)+A029192(2*n)-A029224(2*n)`
-/

namespace A029197.P17802247701044970917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (2 * n) + (A029192 (2 * n) - A029224 (2 * n))

end

end A029197.P17802247701044970917

namespace A029197

/-- `A025926(2*n)+A029192(2*n)-A029224(2*n)` -/
def P17802247701044970917.Spec : Prop :=
  ∀ n, P17802247701044970917.a n = A029197 n

end A029197

/-! ## A029197.P18401561042797921583

`A029358(2*n)+A029412(2*n)-A029391(2*n)`
-/

namespace A029197.P18401561042797921583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029358 (2 * n) + (A029412 (2 * n) - A029391 (2 * n))

end

end A029197.P18401561042797921583

namespace A029197

/-- `A029358(2*n)+A029412(2*n)-A029391(2*n)` -/
def P18401561042797921583.Spec : Prop :=
  ∀ n, P18401561042797921583.a n = A029197 n

end A029197

/-! ## A029197.P11688079203570799172

`A029367(2*n)+A029412(2*n)-A029400(2*n)`
-/

namespace A029197.P11688079203570799172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 (2 * n) + (A029412 (2 * n) - A029400 (2 * n))

end

end A029197.P11688079203570799172

namespace A029197

/-- `A029367(2*n)+A029412(2*n)-A029400(2*n)` -/
def P11688079203570799172.Spec : Prop :=
  ∀ n, P11688079203570799172.a n = A029197 n

end A029197

/-! ## A029197.P17287652321439199926

`A029408(2*n+1)+A029445(2*n)-A029445(2*n+1)`
-/

namespace A029197.P17287652321439199926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 (2 * n + 1) + (A029445 (2 * n) - A029445 (2 * n + 1))

end

end A029197.P17287652321439199926

namespace A029197

/-- `A029408(2*n+1)+A029445(2*n)-A029445(2*n+1)` -/
def P17287652321439199926.Spec : Prop :=
  ∀ n, P17287652321439199926.a n = A029197 n

end A029197

/-! ## A029197.P919002403470185201

`Δ[∑[A029426(2*n)]-A029445(2*n)]`
-/

namespace A029197.P919002403470185201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029426 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029445 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029197.P919002403470185201

namespace A029197

/-- `Δ[∑[A029426(2*n)]-A029445(2*n)]` -/
def P919002403470185201.Spec : Prop :=
  ∀ n, P919002403470185201.a n = A029197 n

end A029197

/-! ## A029197.P14009538723585789700

`A029377(A005843(n))%A000914(n+1)`
-/

namespace A029197.P14009538723585789700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029377 (A005843 n).toNat) (A000914 (n + 1))

end

end A029197.P14009538723585789700

namespace A029197

/-- `A029377(A005843(n))%A000914(n+1)` -/
def P14009538723585789700.Spec : Prop :=
  ∀ n, P14009538723585789700.a n = A029197 n

end A029197

/-!
# A029198: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^6)*(1-x^12)).

The programs for A029198, the canonical program `A029198.P17340044344010173099` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029198 has offset 0).

The definition of A029198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029198.P17340044344010173099

`A029090(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029198

/-- `A029090(n)-a(n-1)` -/
def P17340044344010173099.Spec : Prop :=
  ∀ n, P17340044344010173099.a n = A029198 n

theorem P17340044344010173099.correct : P17340044344010173099.Spec := by
  intro n
  simp only [A029198]

end A029198

/-! ## A029198.P6916900013085568862

`A025881(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029198.P6916900013085568862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025881 n + a (n - 2)

end

end A029198.P6916900013085568862

namespace A029198

/-- `A025881(n)+a(n-2)` -/
def P6916900013085568862.Spec : Prop :=
  ∀ n, P6916900013085568862.a n = A029198 n

end A029198

/-! ## A029198.P3382096922309864291

`A029149(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029198.P3382096922309864291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029149 n - a (n - 3)

end

end A029198.P3382096922309864291

namespace A029198

/-- `A029149(n)-a(n-3)` -/
def P3382096922309864291.Spec : Prop :=
  ∀ n, P3382096922309864291.a n = A029198 n

end A029198

/-! ## A029198.P13283137363286159722

`A029169(abs(1-A004442(n)))`
-/

namespace A029198.P13283137363286159722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029169 |1 - A004442 n|.toNat

end

end A029198.P13283137363286159722

namespace A029198

/-- `A029169(abs(1-A004442(n)))` -/
def P13283137363286159722.Spec : Prop :=
  ∀ n, P13283137363286159722.a n = A029198 n

end A029198

/-! ## A029198.P12214676771112807712

`abs(∑[A029090(n)*A033999(n)])`
-/

namespace A029198.P12214676771112807712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029090 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029198.P12214676771112807712

namespace A029198

/-- `abs(∑[A029090(n)*A033999(n)])` -/
def P12214676771112807712.Spec : Prop :=
  ∀ n, P12214676771112807712.a n = A029198 n

end A029198

/-! ## A029198.P7437921181702591720

`A029202(n)+A029225(n)-A029235(n)`
-/

namespace A029198.P7437921181702591720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029202 n + (A029225 n - A029235 n)

end

end A029198.P7437921181702591720

namespace A029198

/-- `A029202(n)+A029225(n)-A029235(n)` -/
def P7437921181702591720.Spec : Prop :=
  ∀ n, P7437921181702591720.a n = A029198 n

end A029198

/-! ## A029198.P1601532562862668144

`∑[A029090(n)*A033999(n)]*A009001(2*n)`
-/

namespace A029198.P1601532562862668144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029090 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A029198.P1601532562862668144

namespace A029198

/-- `∑[A029090(n)*A033999(n)]*A009001(2*n)` -/
def P1601532562862668144.Spec : Prop :=
  ∀ n, P1601532562862668144.a n = A029198 n

end A029198

/-!
# A029199: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^7)*(1-x^8)).

The programs for A029199, the canonical program `A029199.P326149095581380570` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029199 has offset 0).

The definition of A029199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029199.P326149095581380570

`A029091(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029199

/-- `A029091(n)-a(n-1)` -/
def P326149095581380570.Spec : Prop :=
  ∀ n, P326149095581380570.a n = A029199 n

theorem P326149095581380570.correct : P326149095581380570.Spec := by
  intro n
  simp only [A029199]

end A029199

/-! ## A029199.P4537295924672104839

`A025882(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029199.P4537295924672104839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025882 n + a (n - 2)

end

end A029199.P4537295924672104839

namespace A029199

/-- `A025882(n)+a(n-2)` -/
def P4537295924672104839.Spec : Prop :=
  ∀ n, P4537295924672104839.a n = A029199 n

end A029199

/-! ## A029199.P13279651917644719374

`A029332(abs(2-n))+A029332(n)`
-/

namespace A029199.P13279651917644719374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029332 |2 - (n : ℤ)|.toNat + A029332 n

end

end A029199.P13279651917644719374

namespace A029199

/-- `A029332(abs(2-n))+A029332(n)` -/
def P13279651917644719374.Spec : Prop :=
  ∀ n, P13279651917644719374.a n = A029199 n

end A029199

/-! ## A029199.P4380155014093568107

`A025808(n)+A029012(n)-A029013(n)`
-/

namespace A029199.P4380155014093568107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025808 n + (A029012 n - A029013 n)

end

end A029199.P4380155014093568107

namespace A029199

/-- `A025808(n)+A029012(n)-A029013(n)` -/
def P4380155014093568107.Spec : Prop :=
  ∀ n, P4380155014093568107.a n = A029199 n

end A029199

/-! ## A029199.P15459850197021894916

`A029012(A020719(n))-A029013(A020719(n))`
-/

namespace A029199.P15459850197021894916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029012 (A020719 n).toNat - A029013 (A020719 n).toNat

end

end A029199.P15459850197021894916

namespace A029199

/-- `A029012(A020719(n))-A029013(A020719(n))` -/
def P15459850197021894916.Spec : Prop :=
  ∀ n, P15459850197021894916.a n = A029199 n

end A029199

