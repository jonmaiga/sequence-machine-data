import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

/-!
# A364100: Sum of divisors of 5*n-1 of form 5*k+4.

The programs for A364100, the canonical program `A364100.P4905110227889402594` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364100 has offset 1).

The definition of A364100 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364100.P4905110227889402594

`A284103(5*(n+1)-1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364100

/-- `A284103(5*(n+1)-1)` -/
def P4905110227889402594.Spec : Prop :=
  ∀ n, P4905110227889402594.a n = A364100 (n + 1)

theorem P4905110227889402594.correct : P4905110227889402594.Spec := by
  intro n
  simp only [A364100, Nat.add_sub_cancel]

end A364100

/-! ## A364100.P4758212068686959661

`A363897(5*(n+1)-1)`
-/

namespace A364100.P4758212068686959661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363897 (5 * (n + 1) - 1)

end

end A364100.P4758212068686959661

namespace A364100

/-- `A363897(5*(n+1)-1)` -/
def P4758212068686959661.Spec : Prop :=
  ∀ n, P4758212068686959661.a n = A364100 (n + 1)

end A364100

/-! ## A364100.P3328679997980515206

`record[A284103(n+4)]%A128340(n+1)`
-/

namespace A364100.P3328679997980515206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A128340 (n + 1))

end

end A364100.P3328679997980515206

namespace A364100

/-- `record[A284103(n+4)]%A128340(n+1)` -/
def P3328679997980515206.Spec : Prop :=
  ∀ n, P3328679997980515206.a n = A364100 (n + 1)

end A364100

/-!
# A364101: Sum of divisors of 5*n-2 of form 5*k+4.

The programs for A364101, the canonical program `A364101.P9144366412033008636` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364101 has offset 1).

The definition of A364101 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364101.P9144366412033008636

`A284103(5*(n+1)-2)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364101

/-- `A284103(5*(n+1)-2)` -/
def P9144366412033008636.Spec : Prop :=
  ∀ n, P9144366412033008636.a n = A364101 (n + 1)

theorem P9144366412033008636.correct : P9144366412033008636.Spec := by
  intro n
  simp only [A364101, Nat.add_sub_cancel]

end A364101

/-! ## A364101.P3842333180924285980

`A363898(3+5*n)`
-/

namespace A364101.P3842333180924285980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363898 (3 + 5 * n)

end

end A364101.P3842333180924285980

namespace A364101

/-- `A363898(3+5*n)` -/
def P3842333180924285980.Spec : Prop :=
  ∀ n, P3842333180924285980.a n = A364101 (n + 1)

end A364101

/-! ## A364101.P9514622179012131096

`A284103(5*n+3)%(5*n+1)`
-/

namespace A364101.P9514622179012131096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284103 (5 * n + 3)) (5 * n + 1 : ℤ)

end

end A364101.P9514622179012131096

namespace A364101

/-- `A284103(5*n+3)%(5*n+1)` -/
def P9514622179012131096.Spec : Prop :=
  ∀ n, P9514622179012131096.a n = A364101 (n + 1)

end A364101

/-! ## A364101.P14078960316710222203

`A284103(A016885(n))+A083912(2*n+3)`
-/

namespace A364101.P14078960316710222203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (A016885 n).toNat + A083912 (2 * n + 3)

end

end A364101.P14078960316710222203

namespace A364101

/-- `A284103(A016885(n))+A083912(2*n+3)` -/
def P14078960316710222203.Spec : Prop :=
  ∀ n, P14078960316710222203.a n = A364101 (n + 1)

end A364101

/-!
# A364102: Sum of divisors of 5*n-3 of form 5*k+4.

The programs for A364102, the canonical program `A364102.P4198180457250018198` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364102 has offset 1).

The definition of A364102 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364102.P4198180457250018198

`A284103(5*(n+1)-3)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364102

/-- `A284103(5*(n+1)-3)` -/
def P4198180457250018198.Spec : Prop :=
  ∀ n, P4198180457250018198.a n = A364102 (n + 1)

theorem P4198180457250018198.correct : P4198180457250018198.Spec := by
  intro n
  simp only [A364102, Nat.add_sub_cancel]

end A364102

/-! ## A364102.P13490814967209473082

`A363899(2+5*n)`
-/

namespace A364102.P13490814967209473082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (2 + 5 * n)

end

end A364102.P13490814967209473082

namespace A364102

/-- `A363899(2+5*n)` -/
def P13490814967209473082.Spec : Prop :=
  ∀ n, P13490814967209473082.a n = A364102 (n + 1)

end A364102

/-! ## A364102.P15752309498914643231

`and(A363899(A008587(n)+2), -1)`
-/

namespace A364102.P15752309498914643231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A363899 (A008587 n + 2).toNat) (-1)

end

end A364102.P15752309498914643231

namespace A364102

/-- `and(A363899(A008587(n)+2), -1)` -/
def P15752309498914643231.Spec : Prop :=
  ∀ n, P15752309498914643231.a n = A364102 (n + 1)

end A364102

/-! ## A364102.P7450975023662072657

`A284103(A016873(n))%A016873(n)`
-/

namespace A364102.P7450975023662072657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284103 (A016873 n).toNat) (A016873 n)

end

end A364102.P7450975023662072657

namespace A364102

/-- `A284103(A016873(n))%A016873(n)` -/
def P7450975023662072657.Spec : Prop :=
  ∀ n, P7450975023662072657.a n = A364102 (n + 1)

end A364102

/-!
# A364103: Sum of divisors of 5*n-4 of form 5*k+4.

The programs for A364103, the canonical program `A364103.P12973535211442151015` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364103 has offset 1).

The definition of A364103 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364103.P12973535211442151015

`A284103(5*n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364103

/-- `A284103(5*n+1)` -/
def P12973535211442151015.Spec : Prop :=
  ∀ n, P12973535211442151015.a n = A364103 (n + 1)

theorem P12973535211442151015.correct : P12973535211442151015.Spec := by
  intro n
  simp only [A364103, Nat.add_sub_cancel]

end A364103

/-! ## A364103.P5659146517167925999

`A363900(1+5*n)`
-/

namespace A364103.P5659146517167925999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363900 (1 + 5 * n)

end

end A364103.P5659146517167925999

namespace A364103

/-- `A363900(1+5*n)` -/
def P5659146517167925999.Spec : Prop :=
  ∀ n, P5659146517167925999.a n = A364103 (n + 1)

end A364103

/-! ## A364103.P3605627641516895514

`A363900(A016861(n))^gcd(n, n+1)`
-/

namespace A364103.P3605627641516895514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363900 (A016861 n).toNat ^ Nat.gcd n (n + 1)

end

end A364103.P3605627641516895514

namespace A364103

/-- `A363900(A016861(n))^gcd(n, n+1)` -/
def P3605627641516895514.Spec : Prop :=
  ∀ n, P3605627641516895514.a n = A364103 (n + 1)

end A364103

/-! ## A364103.P14684410735639991318

`A141044(n)*A363900(A016861(n))`
-/

namespace A364103.P14684410735639991318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n * A363900 (A016861 n).toNat

end

end A364103.P14684410735639991318

namespace A364103

/-- `A141044(n)*A363900(A016861(n))` -/
def P14684410735639991318.Spec : Prop :=
  ∀ n, P14684410735639991318.a n = A364103 (n + 1)

end A364103

/-! ## A364103.P2231206268245606588

`A363900(A016861(n))%A016825(n)`
-/

namespace A364103.P2231206268245606588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363900 (A016861 n).toNat) (A016825 n)

end

end A364103.P2231206268245606588

namespace A364103

/-- `A363900(A016861(n))%A016825(n)` -/
def P2231206268245606588.Spec : Prop :=
  ∀ n, P2231206268245606588.a n = A364103 (n + 1)

end A364103

/-! ## A364103.P4346305327631387722

`A284150(A166520(2*n+1))-A363897(5*n+1)`
-/

namespace A364103.P4346305327631387722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284150 (A166520 (2 * n + 1)).toNat - A363897 (5 * n + 1)

end

end A364103.P4346305327631387722

namespace A364103

/-- `A284150(A166520(2*n+1))-A363897(5*n+1)` -/
def P4346305327631387722.Spec : Prop :=
  ∀ n, P4346305327631387722.a n = A364103 (n + 1)

end A364103

/-!
# A364104: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-1)).

The programs for A364104, the canonical program `A364104.P16883579566316415671` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364104 has offset 1).

The definition of A364104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364104.P16883579566316415671

`A363929(4+5*n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A364104

/-- `A363929(4+5*n)` -/
def P16883579566316415671.Spec : Prop :=
  ∀ n, P16883579566316415671.a n = A364104 (n + 1)

theorem P16883579566316415671.correct : P16883579566316415671.Spec := by
  intro n
  simp only [A364104, Nat.add_sub_cancel]

end A364104

/-! ## A364104.P7298877011180291969

`A363929(A016897(n))%A389207(n+1)`
-/

namespace A364104.P7298877011180291969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363929 (A016897 n).toNat) (A389207 (n + 1))

end

end A364104.P7298877011180291969

namespace A364104

/-- `A363929(A016897(n))%A389207(n+1)` -/
def P7298877011180291969.Spec : Prop :=
  ∀ n, P7298877011180291969.a n = A364104 (n + 1)

end A364104

/-! ## A364104.P13923483236467016720

`A334097(A286025(n)+1)`
-/

namespace A364104.P13923483236467016720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A286025 n + 1).toNat

end

end A364104.P13923483236467016720

namespace A364104

/-- `A334097(A286025(n)+1)` -/
def P13923483236467016720.Spec : Prop :=
  ∀ n, P13923483236467016720.a n = A364104 (n + 1)

end A364104

/-! ## A364104.P14413211731444407923

`A336643(A285819(n))+n`
-/

namespace A364104.P14413211731444407923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A285819 n).toNat + (n : ℤ)

end

end A364104.P14413211731444407923

namespace A364104

/-- `A336643(A285819(n))+n` -/
def P14413211731444407923.Spec : Prop :=
  ∀ n, P14413211731444407923.a n = A364104 (n + 1)

end A364104

/-! ## A364104.P8037792499345372808

`A357180(A002088(n+1))+n`
-/

namespace A364104.P8037792499345372808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357180 (A002088 (n + 1)).toNat + (n : ℤ)

end

end A364104.P8037792499345372808

namespace A364104

/-- `A357180(A002088(n+1))+n` -/
def P8037792499345372808.Spec : Prop :=
  ∀ n, P8037792499345372808.a n = A364104 (n + 1)

end A364104

/-!
# A364105: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(5*k-1)).

The programs for A364105, the canonical program `A364105.P1924825563724486364` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364105 has offset 1).

The definition of A364105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364105.P1924825563724486364

`A363929(3+5*n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A364105

/-- `A363929(3+5*n)` -/
def P1924825563724486364.Spec : Prop :=
  ∀ n, P1924825563724486364.a n = A364105 (n + 1)

theorem P1924825563724486364.correct : P1924825563724486364.Spec := by
  intro n
  simp only [A364105, Nat.add_sub_cancel]

end A364105

/-! ## A364105.P4778892119783849709

`(col(A000989(A375963(2*n))%4)+∑[n])%(n+1)`
-/

namespace A364105.P4778892119783849709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol (Int.tmod (A000989 (A375963 (2 * n)).toNat) 4).toNat + ∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A364105.P4778892119783849709

namespace A364105

/-- `(col(A000989(A375963(2*n))%4)+∑[n])%(n+1)` -/
def P4778892119783849709.Spec : Prop :=
  ∀ n, (P4778892119783849709.a n : ℤ) = A364105 (n + 1)

end A364105

/-! ## A364105.P1886816347779674736

`A000035(n)*A000120(A217858(n+1))`
-/

namespace A364105.P1886816347779674736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A000120 (A217858 (n + 1)).toNat

end

end A364105.P1886816347779674736

namespace A364105

/-- `A000035(n)*A000120(A217858(n+1))` -/
def P1886816347779674736.Spec : Prop :=
  ∀ n, P1886816347779674736.a n = A364105 (n + 1)

end A364105

/-! ## A364105.P6875343188433447448

`A000007(A117776(n+1))*A001223(A250259(n))`
-/

namespace A364105.P6875343188433447448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A117776 (n + 1)).toNat * A001223 (A250259 n).toNat

end

end A364105.P6875343188433447448

namespace A364105

/-- `A000007(A117776(n+1))*A001223(A250259(n))` -/
def P6875343188433447448.Spec : Prop :=
  ∀ n, P6875343188433447448.a n = A364105 (n + 1)

end A364105

/-!
# A364106: Expansion of Sum_{k>0} k * x^(3*k) / (1 - x^(5*k-1)).

The programs for A364106, the canonical program `A364106.P3387051768492882436` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364106 has offset 1).

The definition of A364106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364106.P3387051768492882436

`A363929(2+5*n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A364106

/-- `A363929(2+5*n)` -/
def P3387051768492882436.Spec : Prop :=
  ∀ n, P3387051768492882436.a n = A364106 (n + 1)

theorem P3387051768492882436.correct : P3387051768492882436.Spec := by
  intro n
  simp only [A364106, Nat.add_sub_cancel]

end A364106

/-! ## A364106.P11764299350986557777

`A141044(n)*A363929(A016873(n))`
-/

namespace A364106.P11764299350986557777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n * A363929 (A016873 n).toNat

end

end A364106.P11764299350986557777

namespace A364106

/-- `A141044(n)*A363929(A016873(n))` -/
def P11764299350986557777.Spec : Prop :=
  ∀ n, P11764299350986557777.a n = A364106 (n + 1)

end A364106

/-! ## A364106.P2177425611494223140

`A363929(A016873(n))%A016825(n)`
-/

namespace A364106.P2177425611494223140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363929 (A016873 n).toNat) (A016825 n)

end

end A364106.P2177425611494223140

namespace A364106

/-- `A363929(A016873(n))%A016825(n)` -/
def P2177425611494223140.Spec : Prop :=
  ∀ n, P2177425611494223140.a n = A364106 (n + 1)

end A364106

/-! ## A364106.P2069296945924917373

`A363929(A016873(n))%A001519(n)`
-/

namespace A364106.P2069296945924917373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363929 (A016873 n).toNat) (A001519 n)

end

end A364106.P2069296945924917373

namespace A364106

/-- `A363929(A016873(n))%A001519(n)` -/
def P2069296945924917373.Spec : Prop :=
  ∀ n, P2069296945924917373.a n = A364106 (n + 1)

end A364106

/-! ## A364106.P15026721980319039315

`A363929(A016873(n))%A000165(n)`
-/

namespace A364106.P15026721980319039315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363929 (A016873 n).toNat) (A000165 n)

end

end A364106.P15026721980319039315

namespace A364106

/-- `A363929(A016873(n))%A000165(n)` -/
def P15026721980319039315.Spec : Prop :=
  ∀ n, P15026721980319039315.a n = A364106 (n + 1)

end A364106

/-!
# A364107: Expansion of Sum_{k>0} k * x^(4*k) / (1 - x^(5*k-1)).

The programs for A364107, the canonical program `A364107.P11243191280621098222` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364107 has offset 1).

The definition of A364107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364107.P11243191280621098222

`A363929(1+5*n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A364107

/-- `A363929(1+5*n)` -/
def P11243191280621098222.Spec : Prop :=
  ∀ n, P11243191280621098222.a n = A364107 (n + 1)

theorem P11243191280621098222.correct : P11243191280621098222.Spec := by
  intro n
  simp only [A364107, Nat.add_sub_cancel]

end A364107

/-! ## A364107.P4871677958468002253

`A363929(A016861(n))%(n+1)`
-/

namespace A364107.P4871677958468002253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363929 (A016861 n).toNat) (n + 1 : ℤ)

end

end A364107.P4871677958468002253

namespace A364107

/-- `A363929(A016861(n))%(n+1)` -/
def P4871677958468002253.Spec : Prop :=
  ∀ n, P4871677958468002253.a n = A364107 (n + 1)

end A364107

/-! ## A364107.P17865697715864561493

`A141044(n)*A363929(A016861(n))`
-/

namespace A364107.P17865697715864561493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n * A363929 (A016861 n).toNat

end

end A364107.P17865697715864561493

namespace A364107

/-- `A141044(n)*A363929(A016861(n))` -/
def P17865697715864561493.Spec : Prop :=
  ∀ n, P17865697715864561493.a n = A364107 (n + 1)

end A364107

/-! ## A364107.P6301673244748005444

`A363929(A016861(n))^A001221(xor(n, n+1)+1)`
-/

namespace A364107.P6301673244748005444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363929 (A016861 n).toNat : ℚ) ^ (A001221 (Nat.xor n (n + 1) + 1) : ℤ)

end

end A364107.P6301673244748005444

namespace A364107

/-- `A363929(A016861(n))^A001221(xor(n, n+1)+1)` -/
def P6301673244748005444.Spec : Prop :=
  ∀ n, P6301673244748005444.a n = (A364107 (n + 1) : ℚ)

end A364107

/-! ## A364107.P7447377944290050212

`A363929(A016861(n))/A244895(A016861(n)+1)`
-/

namespace A364107.P7447377944290050212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363929 (A016861 n).toNat : ℚ) / (A244895 (A016861 n + 1).toNat : ℚ)

end

end A364107.P7447377944290050212

namespace A364107

/-- `A363929(A016861(n))/A244895(A016861(n)+1)` -/
def P7447377944290050212.Spec : Prop :=
  ∀ n, P7447377944290050212.a n = (A364107 (n + 1) : ℚ)

end A364107

/-! ## A364107.P4931481321668793896

`and(A000225(n), A363929(A016861(n)))`
-/

namespace A364107.P4931481321668793896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A363929 (A016861 n).toNat)

end

end A364107.P4931481321668793896

namespace A364107

/-- `and(A000225(n), A363929(A016861(n)))` -/
def P4931481321668793896.Spec : Prop :=
  ∀ n, P4931481321668793896.a n = A364107 (n + 1)

end A364107

/-!
# A364110: a(n) = sqrt((x^2 - y^2)*x*y/c) where x is A364108(n), y is A364109(n) and c is A006991(n).

The programs for A364110, there is no canonical definition to state claims against.
-/

/-! ## A364110.P11461700159491007994

`A268603(A284601(n+1))`
-/

namespace A364110.P11461700159491007994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268603 (A284601 (n + 1)).toNat

end

end A364110.P11461700159491007994

/-! ## A364110.P16446366104575348853

`A268603(A039004(n+2))`
-/

namespace A364110.P16446366104575348853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268603 (A039004 (n + 2)).toNat

end

end A364110.P16446366104575348853

/-! ## A364110.P14216829642814861507

`A268603(3*A020658(n+1))`
-/

namespace A364110.P14216829642814861507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268603 (3 * A020658 (n + 1)).toNat

end

end A364110.P14216829642814861507

/-! ## A364110.P7418459927672710293

`A268603(3*A059561(n+1))`
-/

namespace A364110.P7418459927672710293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268603 (3 * A059561 (n + 1)).toNat

end

end A364110.P7418459927672710293

/-!
# A364113: Square array read by ascending antidiagonals: T(n,k) = [x^k] 1/(1 - x) * Legendre_P(k, (1 + x)/(1 - x))^n for n, k >= 0.

The programs for A364113, there is no canonical definition to state claims against.
-/

/-! ## A364113.P8586499496121681516

`A364838(A195522(n+2))`
-/

namespace A364113.P8586499496121681516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364838 (A195522 (n + 2)).toNat

end

end A364113.P8586499496121681516

/-! ## A364113.P16308421690125970940

`A364838(A195892(n+2))`
-/

namespace A364113.P16308421690125970940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364838 (A195892 (n + 2)).toNat

end

end A364113.P16308421690125970940

/-! ## A364113.P12226231768428263771

`A255407(A008288(n)^A180662(n))`
-/

namespace A364113.P12226231768428263771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (SequenceMachineLib.roundAway ((A008288 n : ℚ) ^ (A180662 n : ℤ))).toNat

end

end A364113.P12226231768428263771

/-!
# A364114: a(n) = [x^n] 1/(1 - x) * Legendre_P(n, (1 + x)/(1 - x))^3 for n >= 0.

The programs for A364114, there is no canonical definition to state claims against.
-/

/-! ## A364114.P11120489740748073656

`A364113(∑[n+4]+2)`
-/

namespace A364114.P11120489740748073656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364113 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A364114.P11120489740748073656

/-! ## A364114.P16126996479750972167

`or(1, A364113(A046691(n+2)))`
-/

namespace A364114.P16126996479750972167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A364113 (A046691 (n + 2)).toNat)

end

end A364114.P16126996479750972167

/-! ## A364114.P7871888423812864778

`A364113(A155212(n)+4)-A326549(n)`
-/

namespace A364114.P7871888423812864778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364113 (A155212 n + 4).toNat - A326549 n

end

end A364114.P7871888423812864778

/-!
# A364115: a(n) = [x^n] 1/(1 - x) * Legendre_P(n, (1 + x)/(1 - x))^4 for n >= 0.

The programs for A364115, there is no canonical definition to state claims against.
-/

/-! ## A364115.P13806822832204786944

`A364113(eq[4, row(n)-col(n)])`
-/

namespace A364115.P13806822832204786944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364115.P13806822832204786944

/-! ## A364115.P9123756920785602278

`A364113(2*n+∑[n+3]+7)`
-/

namespace A364115.P9123756920785602278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364113 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A364115.P9123756920785602278

/-!
# A364116: a(n) = [x^n] 1/(1 - x) * Legendre_P(n, (1 + x)/(1 - x))^n for n >= 0.

The programs for A364116, there is no canonical definition to state claims against.
-/

/-! ## A364116.P11426440191859900284

`A364113(∑[4*n])`
-/

namespace A364116.P11426440191859900284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364113 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364116.P11426440191859900284

/-!
# A364117: a(n) = [x^n] 1/(1 - x) * Legendre_P(n, (1 + x)/(1 - x))^(n+1) for n >= 0.

The programs for A364117, there is no canonical definition to state claims against.
-/

/-! ## A364117.P10534673483383843351

`A364113(Δ[n²]+∑[4*n])`
-/

namespace A364117.P10534673483383843351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364113 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A364117.P10534673483383843351

/-!
# A364118: a(n) = 3*A364114(n) - 11*A364114(n-1).

The programs for A364118, there is no canonical definition to state claims against.
-/

/-! ## A364118.P15371326940768432640

`3*A364114(n+1)-11*A364114(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364118.P15371326940768432640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A364114 (n + 1) - 11 * A364114 n

end

end A364118.P15371326940768432640

/-!
# A364119: a(n) = 7*A364115(n) - 17*A364115(n-1).

The programs for A364119, there is no canonical definition to state claims against.
-/

/-! ## A364119.P18388322954512741260

`7*A364115(n+1)-17*A364115(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364119.P18388322954512741260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A364115 (n + 1) - 17 * A364115 n

end

end A364119.P18388322954512741260

/-!
# A364121: Stolarsky representation of n.

The programs for A364121, there is no canonical definition to state claims against.
-/

/-! ## A364121.P4402221325519414044

`A007088(A200714(n+1))`
-/

namespace A364121.P4402221325519414044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A200714 (n + 1)).toNat

end

end A364121.P4402221325519414044

/-! ## A364121.P3550647652302079203

`A007088(A358654(n)%A363191(n+1))`
-/

namespace A364121.P3550647652302079203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A358654 n) (A363191 (n + 1))).toNat

end

end A364121.P3550647652302079203

/-! ## A364121.P18326110333095095241

`A007088(A358654(n)%A221849(n))`
-/

namespace A364121.P18326110333095095241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A358654 n) (A221849 n)).toNat

end

end A364121.P18326110333095095241

/-!
# A364124: Numbers k such that k and k+1 are both Stolarsky-Niven numbers (A364123).

The programs for A364124, there is no canonical definition to state claims against.
-/

/-! ## A364124.P341143768823946432

`∩[A364123(n+1)-1, A364123(n+1)]`
-/

namespace A364124.P341143768823946432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364123 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364124.P341143768823946432

/-!
# A364127: The number of trailing 0's in the Stolarsky representation of n (A364121).

The programs for A364127, there is no canonical definition to state claims against.
-/

/-! ## A364127.P3503969188103241635

`val(A200714(n+2), 2)`
-/

namespace A364127.P3503969188103241635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A200714 (n + 2)).toNat 2

end

end A364127.P3503969188103241635

/-! ## A364127.P2720050721175018033

`val(A364121(2+n), 2)`
-/

namespace A364127.P2720050721175018033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A364121 (2 + n)).toNat 2

end

end A364127.P2720050721175018033

/-! ## A364127.P8573762134460605101

`A007814(A200714(2+n))`
-/

namespace A364127.P8573762134460605101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A200714 (2 + n)).toNat

end

end A364127.P8573762134460605101

/-! ## A364127.P9149420743520534961

`A001511(A200714(n+2))-A057427(3*n+2)`
-/

namespace A364127.P9149420743520534961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A200714 (n + 2)).toNat - A057427 (3 * n + 2)

end

end A364127.P9149420743520534961

/-! ## A364127.P9070038553220523333

`A235127(A200714(n+2)²)`
-/

namespace A364127.P9070038553220523333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A200714 (n + 2) ^ 2).toNat

end

end A364127.P9070038553220523333

/-!
# A364129: Order of Aut^3(C_n) = Aut(Aut(Aut(C_n))), where C_n is the cyclic group of order n.

The programs for A364129, there is no canonical definition to state claims against.
-/

/-! ## A364129.P5541200901356332779

`lcm(A049099(n+1), A364917(n+1))`
-/

namespace A364129.P5541200901356332779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049099 (n + 1)) (A364917 (n + 1))

end

end A364129.P5541200901356332779

/-!
# A364131: Numbers k for which A348717(k) is a multiple of A348717(sigma(k)).

The programs for A364131, there is no canonical definition to state claims against.
-/

/-! ## A364131.P1067780116852447249

`∩[A110878(n+1), A362184(n+1)]`
-/

namespace A364131.P1067780116852447249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364131.P1067780116852447249

/-! ## A364131.P10804798140604876998

`A281882(n+1)-A036987(A091148(n))`
-/

namespace A364131.P10804798140604876998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281882 (n + 1) - A036987 (A091148 n).toNat

end

end A364131.P10804798140604876998

/-! ## A364131.P16996870139955605891

`A281882(n+1)-A010052(A173110(n))`
-/

namespace A364131.P16996870139955605891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281882 (n + 1) - A010052 (A173110 n).toNat

end

end A364131.P16996870139955605891

/-! ## A364131.P14214096645322193400

`A281882(n+1)-A010052(A365929(n))`
-/

namespace A364131.P14214096645322193400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281882 (n + 1) - A010052 (A365929 n).toNat

end

end A364131.P14214096645322193400

/-! ## A364131.P6772636868449498868

`A281882(n+1)-A010054(A033155(n+1))`
-/

namespace A364131.P6772636868449498868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281882 (n + 1) - A010054 (A033155 (n + 1)).toNat

end

end A364131.P6772636868449498868

/-!
# A364132: a(n) is the smallest positive integer such that from the set {1, 2, ..., a(n)} one can choose an increasing sequence (s(1), s(2), ..., s(n)) in which every segment has a unique sum of elements.

The programs for A364132, there is no canonical definition to state claims against.
-/

/-! ## A364132.P17689909646969104701

`eq[A165587(A347689(3*n+1)), A166301(n)]`
-/

namespace A364132.P17689909646969104701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 (A347689 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364132.P17689909646969104701

/-! ## A364132.P11577650932986087232

`∑[A124769(A002088(∏{p}[n+1, #+1]))]`
-/

namespace A364132.P11577650932986087232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A002088 (∏ p ∈ Nat.primeFactors (f2 n), (p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364132.P11577650932986087232

/-!
# A364133: Index k of A007814(A000127(k)) at record terms.

The programs for A364133, there is no canonical definition to state claims against.
-/

/-! ## A364133.P11962180880882978738

`∑[4^a(n-1)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=5`
-/

namespace A364133.P11962180880882978738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 5] fun n f1 =>
  4 ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364133.P11962180880882978738

/-! ## A364133.P7252372216673748682

`∑[A000302(a(n-1))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=5`
-/

namespace A364133.P7252372216673748682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 5] fun n f1 =>
  A000302 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364133.P7252372216673748682

/-! ## A364133.P4296727140571255663

`∑[A300121(A354552(n))]`
-/

namespace A364133.P4296727140571255663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (A354552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364133.P4296727140571255663

/-!
# A364136: a(n) is the number of distinct products of nonempty submultisets of the digits of n.

The programs for A364136, there is no canonical definition to state claims against.
-/

/-! ## A364136.P17332075318533795557

`A055640(A317588(2*n+5)-3)`
-/

namespace A364136.P17332075318533795557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A317588 (2 * n + 5) - 3).toNat

end

end A364136.P17332075318533795557

/-! ## A364136.P2758210916065514432

`A097795(A032727(n+2))`
-/

namespace A364136.P2758210916065514432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A032727 (n + 2)).toNat

end

end A364136.P2758210916065514432

/-! ## A364136.P8111661226555063059

`A004216(lcm(2, A339453(n+5)))`
-/

namespace A364136.P8111661226555063059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (Int.lcm 2 (A339453 (n + 5)))

end

end A364136.P8111661226555063059

/-! ## A364136.P6147223169572971027

`ceil(A331936(2*n+1)/A374052(n+5))`
-/

namespace A364136.P6147223169572971027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A331936 (2 * n + 1) : ℚ) / (A374052 (n + 5) : ℚ)⌉

end

end A364136.P6147223169572971027

/-! ## A364136.P2661056143284893218

`round(A334967(2*n+5)/A002808(n+3))`
-/

namespace A364136.P2661056143284893218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A334967 (2 * n + 5) : ℚ) / (A002808 (n + 3) : ℚ))

end

end A364136.P2661056143284893218

/-!
# A364137: a(1) = 1; for n > 1, a(n) is the smallest positive number such that the sum of all terms a(1) + ... + a(n) has the same number of distinct prime factors as the product of all terms a(1) * ... * a(n).

The programs for A364137, there is no canonical definition to state claims against.
-/

/-! ## A364137.P4664019435880162335

`A348041(A212455(n+1))`
-/

namespace A364137.P4664019435880162335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348041 (A212455 (n + 1)).toNat

end

end A364137.P4664019435880162335

/-! ## A364137.P5019028382430823654

`A001221(A200082(n+1)+A000041(3*n+1))`
-/

namespace A364137.P5019028382430823654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A200082 (n + 1) + A000041 (3 * n + 1)).toNat

end

end A364137.P5019028382430823654

/-! ## A364137.P4683518450220116240

`gcd(A000005(2*n+3), A034693(A083831(n+2)))`
-/

namespace A364137.P4683518450220116240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (2 * n + 3)) (A034693 (A083831 (n + 2)).toNat)

end

end A364137.P4683518450220116240

/-! ## A364137.P15462550429044775101

`A275849(and(A003242(2*n+3), A237500(n+1)))`
-/

namespace A364137.P15462550429044775101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (Int.land (A003242 (2 * n + 3)) (A237500 (n + 1))).toNat

end

end A364137.P15462550429044775101

/-! ## A364137.P10158751178545791093

`A353849(2*(n+2))+A106216(A171013(3*n+4))`
-/

namespace A364137.P10158751178545791093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (2 * (n + 2)) + A106216 (A171013 (3 * n + 4)).toNat

end

end A364137.P10158751178545791093

/-!
# A364140: a(1) = 1; for n > 1, a(n) is the smallest positive number that has not yet appeared such that the sum of all terms a(1) + ... + a(n) has the same number of prime factors, counted with multiplicity, as the product of all terms a(1) * ... * a(n).

The programs for A364140, there is no canonical definition to state claims against.
-/

/-! ## A364140.P596900324030078236

`A146639(n²+4)+n`
-/

namespace A364140.P596900324030078236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146639 (n ^ 2 + 4) + (n : ℤ)

end

end A364140.P596900324030078236

/-!
# A364142: Sophie Germain primes p such that both p and the corresponding safe prime 2*p+1 have distinct digits.

The programs for A364142, there is no canonical definition to state claims against.
-/

/-! ## A364142.P10082067909167431471

`∩[A029743(n+1), A349136(A029743(n+1))]`
-/

namespace A364142.P10082067909167431471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (A029743 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364142.P10082067909167431471

/-! ## A364142.P14381071720221220892

`∩[A029743(n+1), A095972(A029743(n+1))]`
-/

namespace A364142.P14381071720221220892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095972 (A029743 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364142.P14381071720221220892

/-! ## A364142.P10697849517254810379

`A005384(lt[A057077(n+1), A147307(n+1)])`
-/

namespace A364142.P10697849517254810379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364142.P10697849517254810379

/-! ## A364142.P11719681997366145161

`A005384(∑[A000188(3*(n+1))^((A201644(n+1)-n)%2)])`
-/

namespace A364142.P11719681997366145161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (3 * (n + 1)) : ℚ) ^ (Int.tmod (A201644 (n + 1) - (n : ℤ)) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A364142.P11719681997366145161

/-!
# A364143: a(n) is the minimal number of consecutive squares needed to sum to A216446(n).

The programs for A364143, there is no canonical definition to state claims against.
-/

/-! ## A364143.P1503382238123857947

`A299173(A216446(n+1))`
-/

namespace A364143.P1503382238123857947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A216446 (n + 1)).toNat

end

end A364143.P1503382238123857947

/-! ## A364143.P7726336000305808688

`A299173(∩[A002113(n+1), A174069(n+1)])`
-/

namespace A364143.P7726336000305808688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A364143.P7726336000305808688

/-! ## A364143.P13822647593514921877

`A299173(∩[A110751(n+1), A174069(n+1)])`
-/

namespace A364143.P13822647593514921877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A364143.P13822647593514921877

/-! ## A364143.P11528932999038302570

`A299173(∩[A174069(n+1), A180436(n+1)])`
-/

namespace A364143.P11528932999038302570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180436 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A364143.P11528932999038302570

/-! ## A364143.P1081082449074421953

`A299173(∩[A180436(n+1), A212015(n+1)])`
-/

namespace A364143.P1081082449074421953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212015 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A364143.P1081082449074421953

/-!
# A364144: Number of distinct representations for n in base 2, using digits -1,0,1, whose sum of digits is 0.

The programs for A364144, there is no canonical definition to state claims against.
-/

/-! ## A364144.P2838478089820159594

`A087116(n²*A286536(2*n+1))`
-/

namespace A364144.P2838478089820159594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 ((n ^ 2 : ℤ) * A286536 (2 * n + 1)).toNat

end

end A364144.P2838478089820159594

/-! ## A364144.P14191114702814695950

`A003849(A286375(n))+A000120(n)`
-/

namespace A364144.P14191114702814695950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A286375 n).toNat + A000120 n

end

end A364144.P14191114702814695950

/-! ## A364144.P9664551148711967181

`A160093(A304117(n+4)^A333224(n))`
-/

namespace A364144.P9664551148711967181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (SequenceMachineLib.roundAway ((A304117 (n + 4) : ℚ) ^ (A333224 n : ℤ))).toNat

end

end A364144.P9664551148711967181

/-! ## A364144.P6831742216278059826

`A010060(A003204(n))+A000120(n)`
-/

namespace A364144.P6831742216278059826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A003204 n).toNat + A000120 n

end

end A364144.P6831742216278059826

/-! ## A364144.P6827598910634458548

`A323239(A005669(n+1))+A000120(n)`
-/

namespace A364144.P6827598910634458548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A005669 (n + 1)).toNat + A000120 n

end

end A364144.P6827598910634458548

/-!
# A364145: a(n) is the sum of the first 2*n nonzero n-bonacci numbers.

The programs for A364145, the canonical program `A364145.P5853408969703421763` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364145 has offset 0).

The definition of A364145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364145.P5853408969703421763

`ogf((2x-9x^2+12x^3)/(1-8x+20x^2-16x^3))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364145

/-- `ogf((2x-9x^2+12x^3)/(1-8x+20x^2-16x^3))` -/
def P5853408969703421763.Spec : Prop :=
  ∀ n, P5853408969703421763.a n = A364145 n

theorem P5853408969703421763.correct : P5853408969703421763.Spec := by
  intro n
  simp only [A364145]

end A364145

/-! ## A364145.P258558499146190556

`A081294(n)-A097067(n)`
-/

namespace A364145.P258558499146190556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A097067 n

end

end A364145.P258558499146190556

namespace A364145

/-- `A081294(n)-A097067(n)` -/
def P258558499146190556.Spec : Prop :=
  ∀ n, P258558499146190556.a n = A364145 n

end A364145

/-! ## A364145.P11864156797909107729

`A011782(2*n)-A097067(n)`
-/

namespace A364145.P11864156797909107729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) - A097067 n

end

end A364145.P11864156797909107729

namespace A364145

/-- `A011782(2*n)-A097067(n)` -/
def P11864156797909107729.Spec : Prop :=
  ∀ n, P11864156797909107729.a n = A364145 n

end A364145

/-! ## A364145.P8223669237867152512

`A131577(2*n)-A139756(n)`
-/

namespace A364145.P8223669237867152512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 * n) - A139756 n

end

end A364145.P8223669237867152512

namespace A364145

/-- `A131577(2*n)-A139756(n)` -/
def P8223669237867152512.Spec : Prop :=
  ∀ n, P8223669237867152512.a n = A364145 n

end A364145

/-! ## A364145.P6398199329493703123

`A034008(2*n+1)-A139756(n)`
-/

namespace A364145.P6398199329493703123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (2 * n + 1) - A139756 n

end

end A364145.P6398199329493703123

namespace A364145

/-- `A034008(2*n+1)-A139756(n)` -/
def P6398199329493703123.Spec : Prop :=
  ∀ n, P6398199329493703123.a n = A364145 n

end A364145

/-! ## A364145.P15123121180063020747

`A166444(2*n+1)-A097067(n)`
-/

namespace A364145.P15123121180063020747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (2 * n + 1) - A097067 n

end

end A364145.P15123121180063020747

namespace A364145

/-- `A166444(2*n+1)-A097067(n)` -/
def P15123121180063020747.Spec : Prop :=
  ∀ n, P15123121180063020747.a n = A364145 n

end A364145

/-! ## A364145.P15149872087153160386

`A154383(2*n+1)-A139756(n)`
-/

namespace A364145.P15149872087153160386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154383 (2 * n + 1) - A139756 n

end

end A364145.P15149872087153160386

namespace A364145

/-- `A154383(2*n+1)-A139756(n)` -/
def P15149872087153160386.Spec : Prop :=
  ∀ n, P15149872087153160386.a n = A364145 n

end A364145

/-! ## A364145.P1676430440033647810

`A349055(2*n+1)-A336103(2*n)`
-/

namespace A364145.P1676430440033647810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349055 (2 * n + 1) - A336103 (2 * n)

end

end A364145.P1676430440033647810

namespace A364145

/-- `A349055(2*n+1)-A336103(2*n)` -/
def P1676430440033647810.Spec : Prop :=
  ∀ n, P1676430440033647810.a n = A364145 n

end A364145

/-! ## A364145.P11806143540532814780

`A349055(2*n+1)-A349055(2*n)`
-/

namespace A364145.P11806143540532814780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349055 (2 * n + 1) - A349055 (2 * n)

end

end A364145.P11806143540532814780

namespace A364145

/-- `A349055(2*n+1)-A349055(2*n)` -/
def P11806143540532814780.Spec : Prop :=
  ∀ n, P11806143540532814780.a n = A364145 n

end A364145

/-! ## A364145.P7857638235521557412

`A011782(n+1)*A094373(n)-A045623(n)`
-/

namespace A364145.P7857638235521557412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A094373 n - A045623 n

end

end A364145.P7857638235521557412

namespace A364145

/-- `A011782(n+1)*A094373(n)-A045623(n)` -/
def P7857638235521557412.Spec : Prop :=
  ∀ n, P7857638235521557412.a n = A364145 n

end A364145

/-!
# A364151: Tetrahedral numbers that are products of smaller tetrahedral numbers.

The programs for A364151, there is no canonical definition to state claims against.
-/

/-! ## A364151.P11440926078868751725

`A374498(∑[n+1]+3)`
-/

namespace A364151.P11440926078868751725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374498 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A364151.P11440926078868751725

/-! ## A364151.P18063100374095479380

`record[gcd(A286335(n), A374498(n+4))]`
-/

namespace A364151.P18063100374095479380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286335 n) (A374498 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364151.P18063100374095479380

/-!
# A364152: Least n-simplex number (i.e., number of the form C(m,n) = binomial(m,n), m >= n), that can be written as a product of two or more smaller n-simplex numbers, or 0 if no such number exists.

The programs for A364152, there is no canonical definition to state claims against.
-/

/-! ## A364152.P7381625458986858805

`C(A162207(A250745(n+1)), n+1)`
-/

namespace A364152.P7381625458986858805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A162207 (A250745 (n + 1)).toNat).toNat (n + 1)

end

end A364152.P7381625458986858805

/-!
# A364153: a(n) is the smallest positive integer such that from the set {1, 2, ..., a(n)} one can choose a sequence (s(1), s(2), ..., s(n)) in which every segment has a unique sum.

The programs for A364153, there is no canonical definition to state claims against.
-/

/-! ## A364153.P16136108416919987942

`∪[A075750(n+1), A176587(n+1)]`
-/

namespace A364153.P16136108416919987942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364153.P16136108416919987942

/-! ## A364153.P8724659624177282471

`∪[A044904(n+1), A335911(n+1)]`
-/

namespace A364153.P8724659624177282471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364153.P8724659624177282471

/-! ## A364153.P6401878873928345753

`A087817(A091497(A001401(n)))+n`
-/

namespace A364153.P6401878873928345753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087817 (A091497 (A001401 n).toNat).toNat + (n : ℤ)

end

end A364153.P6401878873928345753

/-!
# A364155: Number of tilings of a 4 X n rectangle using dominoes and trominoes (of any shape).

The programs for A364155, there is no canonical definition to state claims against.
-/

/-! ## A364155.P48594255224894279

`A364457(A000217(n+4)+4)`
-/

namespace A364155.P48594255224894279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A000217 (n + 4) + 4).toNat

end

end A364155.P48594255224894279

/-! ## A364155.P4700957500734617390

`A364457(eq[4, A130270(n+1)])`
-/

namespace A364155.P4700957500734617390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364155.P4700957500734617390

/-! ## A364155.P853899043356655027

`A364457(eq[5, A002260(n+1)])`
-/

namespace A364155.P853899043356655027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364155.P853899043356655027

/-! ## A364155.P17538220418728019255

`A364457(A000096(n+4)-n)`
-/

namespace A364155.P17538220418728019255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (A000096 (n + 4) - (n : ℤ)).toNat

end

end A364155.P17538220418728019255

/-! ## A364155.P4889504334940312921

`A364457(n+2+A034856(n+3))`
-/

namespace A364155.P4889504334940312921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 ((n + 2 : ℤ) + A034856 (n + 3)).toNat

end

end A364155.P4889504334940312921

/-!
# A364156: Ceiling of the mean of the prime factors of n (with multiplicity).

The programs for A364156, the canonical program `A364156.P1962214446407021690` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364156 has offset 1).

The definition of A364156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364156.P1962214446407021690

`ceil(A001414(n+1)/∑{e}[abs(1-n)+2, #])`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A364156

/-- `ceil(A001414(n+1)/∑{e}[abs(1-n)+2, #])` -/
def P1962214446407021690.Spec : Prop :=
  ∀ n, P1962214446407021690.a n = A364156 (n + 1)

theorem P1962214446407021690.correct : P1962214446407021690.Spec := by
  intro n
  simp only [A364156, Nat.add_sub_cancel]

end A364156

/-! ## A364156.P8799688055741632885

`A363944(A064988(1+n))`
-/

namespace A364156.P8799688055741632885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363944 (A064988 (1 + n)).toNat

end

end A364156.P8799688055741632885

namespace A364156

/-- `A363944(A064988(1+n))` -/
def P8799688055741632885.Spec : Prop :=
  ∀ n, P8799688055741632885.a n = A364156 (n + 1)

end A364156

/-! ## A364156.P14189945895780022612

`A363944(∑{d}[A290641(1+n), A003972(#)])`
-/

namespace A364156.P14189945895780022612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363944 (∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d).toNat

end

end A364156.P14189945895780022612

namespace A364156

/-- `A363944(∑{d}[A290641(1+n), A003972(#)])` -/
def P14189945895780022612.Spec : Prop :=
  ∀ n, P14189945895780022612.a n = A364156 (n + 1)

end A364156

/-! ## A364156.P11301320417659344748

`A079870(n+1)-A010815(A213502(n))`
-/

namespace A364156.P11301320417659344748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079870 (n + 1) - A010815 (A213502 n).toNat

end

end A364156.P11301320417659344748

namespace A364156

/-- `A079870(n+1)-A010815(A213502(n))` -/
def P11301320417659344748.Spec : Prop :=
  ∀ n, P11301320417659344748.a n = A364156 (n + 1)

end A364156

/-! ## A364156.P6999301949877190854

`A363944(A301315(n+1))`
-/

namespace A364156.P6999301949877190854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363944 (A301315 (n + 1)).toNat

end

end A364156.P6999301949877190854

namespace A364156

/-- `A363944(A301315(n+1))` -/
def P6999301949877190854.Spec : Prop :=
  ∀ n, P6999301949877190854.a n = A364156 (n + 1)

end A364156

/-!
# A364157: Numbers whose rounded-down (floor) mean of prime factors (with multiplicity) is 2.

The programs for A364157, there is no canonical definition to state claims against.
-/

/-! ## A364157.P5675927512639703241

`eq[2, A126594(n+2)]+2`
-/

namespace A364157.P5675927512639703241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126594 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A364157.P5675927512639703241

/-! ## A364157.P14068034555695399371

`2*A351870(A279542(n+1))`
-/

namespace A364157.P14068034555695399371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351870 (A279542 (n + 1)).toNat

end

end A364157.P14068034555695399371

/-! ## A364157.P6314617387426191249

`A067947(n+1)*A077462(A077497(n+1))`
-/

namespace A364157.P6314617387426191249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067947 (n + 1) * A077462 (A077497 (n + 1)).toNat

end

end A364157.P6314617387426191249

/-! ## A364157.P9309020130261260493

`A040008(A006521(n+1))*A279542(n+1)`
-/

namespace A364157.P9309020130261260493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 (A006521 (n + 1)).toNat * A279542 (n + 1)

end

end A364157.P9309020130261260493

/-! ## A364157.P13868405063828396433

`A000005(A257163(n+5))*A067947(n+1)`
-/

namespace A364157.P13868405063828396433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A257163 (n + 5)).toNat * A067947 (n + 1)

end

end A364157.P13868405063828396433

/-!
# A364158: Numbers whose multiset of prime factors has low (i.e. least) co-mode 2.

The programs for A364158, there is no canonical definition to state claims against.
-/

/-! ## A364158.P13077868287747260049

`lt[A364191(1+n), 2]+1`
-/

namespace A364158.P13077868287747260049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A364158.P13077868287747260049

/-! ## A364158.P16738032001972034100

`lt[A067695(1+n), 3]+1`
-/

namespace A364158.P16738032001972034100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A364158.P16738032001972034100

/-! ## A364158.P6040554850085770056

`eq[2, 1+row(A067695(n+1))]+1`
-/

namespace A364158.P6040554850085770056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.triRow (A067695 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A364158.P6040554850085770056

/-! ## A364158.P8978858819468005063

`eq[val(n+1, 2), A051904(n+1)]+1`
-/

namespace A364158.P8978858819468005063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364158.P8978858819468005063

/-! ## A364158.P13948235449689465603

`eq[2, A000005(A067695(n+1)+1)]+1`
-/

namespace A364158.P13948235449689465603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A067695 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364158.P13948235449689465603

/-! ## A364158.P158326571178660289

`eq[A007814(n+1), A051904(n+1)]+1`
-/

namespace A364158.P158326571178660289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A364158.P158326571178660289

/-! ## A364158.P6239999156493370041

`eq[A067695(n+1), A126773(2*(n+2))]+1`
-/

namespace A364158.P6239999156493370041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A364158.P6239999156493370041

/-!
# A364160: Numbers whose least prime factor has the greatest exponent.

The programs for A364160, there is no canonical definition to state claims against.
-/

/-! ## A364160.P3150467090921596090

`record[A285109(n+1)/A261969(n+1)]`
-/

namespace A364160.P3150467090921596090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285109 (n + 1) : ℚ) / (A261969 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364160.P3150467090921596090

/-! ## A364160.P682213604291778584

`eq[A020639(n+1), A261969(n+1)]+1`
-/

namespace A364160.P682213604291778584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A364160.P682213604291778584

/-!
# A364161: G.f. satisfies A(x) = 1 + x*A(x)^2/(1 - x^3*A(x)).

The programs for A364161, there is no canonical definition to state claims against.
-/

/-! ## A364161.P4584580072709168536

`A350434(n+1)+A106747(A309861(n))`
-/

namespace A364161.P4584580072709168536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350434 (n + 1) + A106747 (A309861 n).toNat

end

end A364161.P4584580072709168536

/-! ## A364161.P655294351445435103

`A321018(A012886(n+1))`
-/

namespace A364161.P655294351445435103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321018 (A012886 (n + 1)).toNat

end

end A364161.P655294351445435103

/-! ## A364161.P14451146012193543416

`A152467(2*A038076(n+1))`
-/

namespace A364161.P14451146012193543416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (2 * A038076 (n + 1)).toNat

end

end A364161.P14451146012193543416

/-! ## A364161.P5874965189196743594

`A324588(A005578(n))+A002264(n)`
-/

namespace A364161.P5874965189196743594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324588 (A005578 n).toNat + A002264 n

end

end A364161.P5874965189196743594

/-!
# A364162: Number of chordless cycles (of length > 3) in the complement of the n X n queen graph.

The programs for A364162, there is no canonical definition to state claims against.
-/

/-! ## A364162.P2583868102901626573

`∑{d}[A012351(n), A025884(#)]`
-/

namespace A364162.P2583868102901626573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A025884 d

end

end A364162.P2583868102901626573

/-!
# A364163: Least number k such that average of {prime(i) | k - n <= i <= k + n} is prime(k), or -1 if no such number exists.

The programs for A364163, there is no canonical definition to state claims against.
-/

/-! ## A364163.P13728764044172433127

`A000720(A082080(n))`
-/

namespace A364163.P13728764044172433127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A082080 n).toNat

end

end A364163.P13728764044172433127

/-! ## A364163.P1017741628795000817

`A061395(A082080(n))+A000007(n+1)`
-/

namespace A364163.P1017741628795000817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A082080 n).toNat + A000007 (n + 1)

end

end A364163.P1017741628795000817

/-! ## A364163.P4938271136881476317

`A061395(A082080(n))+A000038(n+1)`
-/

namespace A364163.P4938271136881476317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A082080 n).toNat + A000038 (n + 1)

end

end A364163.P4938271136881476317

/-! ## A364163.P10091353275986041191

`A061395(A082080(n))%A067239(n+1)`
-/

namespace A364163.P10091353275986041191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A082080 n).toNat) (A067239 (n + 1))

end

end A364163.P10091353275986041191

/-! ## A364163.P14312330284406354289

`A061395(or(A082080(n), A101605(n+1)))`
-/

namespace A364163.P14312330284406354289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A082080 n) (A101605 (n + 1))).toNat

end

end A364163.P14312330284406354289

/-! ## A364163.P7839753193241397663

`A061395(A082080(n))+char[A004944(n+1)]`
-/

namespace A364163.P7839753193241397663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004944 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A082080 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A364163.P7839753193241397663

/-! ## A364163.P12403279804733365104

`A061395(A082080(n))/gcd(n+1, A011600(n))`
-/

namespace A364163.P12403279804733365104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061395 (A082080 n).toNat : ℚ) / (Int.gcd (n + 1 : ℤ) (A011600 n) : ℚ)

end

end A364163.P12403279804733365104

/-! ## A364163.P9730157968553398093

`A061395(A082080(n))+(n+1)%A007947(n+1)`
-/

namespace A364163.P9730157968553398093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A082080 n).toNat + Int.tmod (n + 1 : ℤ) (A007947 (n + 1))

end

end A364163.P9730157968553398093

/-!
# A364166: Indices k such that A002375(k) = A002375(k+1) = number of decompositions of 2k into a sum of two odd primes.

The programs for A364166, there is no canonical definition to state claims against.
-/

/-! ## A364166.P12523025924097325884

`eq[0, A280008(n+1)]+1`
-/

namespace A364166.P12523025924097325884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364166.P12523025924097325884

/-! ## A364166.P17851146710694682426

`eq[0, Δ[A002375(n+1)]]+1`
-/

namespace A364166.P17851146710694682426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364166.P17851146710694682426

/-! ## A364166.P3351594575354432887

`eq[C(2, n²), Δ[A045917(n+1)]]+1`
-/

namespace A364166.P3351594575354432887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n ^ 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364166.P3351594575354432887

/-! ## A364166.P4456278025009390273

`eq[A002375(n+1), A002375(n+2)]+1`
-/

namespace A364166.P4456278025009390273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A364166.P4456278025009390273

/-! ## A364166.P1014077903739213619

`record[gcd(A004526(2*n+3), A280008(n+1))]`
-/

namespace A364166.P1014077903739213619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004526 (2 * n + 3)) (A280008 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364166.P1014077903739213619

/-!
# A364167: Expansion of g.f. A(x) satisfying A(x) = 1 + x * A(x)^3 * (1 + A(x)^3).

The programs for A364167, the canonical program `A364167.P4896308846176821340` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364167 has offset 0).

The definition of A364167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364167.P4896308846176821340

`∑{#}[n, C(n, #)*C(3*n+3*#+1, n)/(3*n+3*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364167

/-- `∑{#}[n, C(n, #)*C(3*n+3*#+1, n)/(3*n+3*#+1)]` -/
def P4896308846176821340.Spec : Prop :=
  ∀ n, P4896308846176821340.a n = (A364167 n : ℚ)

end A364167

/-! ## A364167.P12736584954771370195

`A378240(∑[n+1]+n)`
-/

namespace A364167.P12736584954771370195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378240 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A364167.P12736584954771370195

namespace A364167

/-- `A378240(∑[n+1]+n)` -/
def P12736584954771370195.Spec : Prop :=
  ∀ n, P12736584954771370195.a n = A364167 n

end A364167

/-! ## A364167.P3433936350143255349

`record[A378240(A061579(n))]`
-/

namespace A364167.P3433936350143255349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378240 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364167.P3433936350143255349

namespace A364167

/-- `record[A378240(A061579(n))]` -/
def P3433936350143255349.Spec : Prop :=
  ∀ n, P3433936350143255349.a n = A364167 n

end A364167

/-! ## A364167.P3120310723053510423

`record[gcd(A065600(n), A378240(n))]`
-/

namespace A364167.P3120310723053510423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065600 n) (A378240 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364167.P3120310723053510423

namespace A364167

/-- `record[gcd(A065600(n), A378240(n))]` -/
def P3120310723053510423.Spec : Prop :=
  ∀ n, (P3120310723053510423.a n : ℤ) = A364167 n

end A364167

/-! ## A364167.P10351750826095225293

`A378240(A034856(n+1))+A000007(3*(n+1))`
-/

namespace A364167.P10351750826095225293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378240 (A034856 (n + 1)).toNat + A000007 (3 * (n + 1))

end

end A364167.P10351750826095225293

namespace A364167

/-- `A378240(A034856(n+1))+A000007(3*(n+1))` -/
def P10351750826095225293.Spec : Prop :=
  ∀ n, P10351750826095225293.a n = A364167 n

end A364167

/-! ## A364167.P17243885350293914194

`A378240(A034856(n+1))+A121373(A014754(n+1))`
-/

namespace A364167.P17243885350293914194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378240 (A034856 (n + 1)).toNat + A121373 (A014754 (n + 1)).toNat

end

end A364167.P17243885350293914194

namespace A364167

/-- `A378240(A034856(n+1))+A121373(A014754(n+1))` -/
def P17243885350293914194.Spec : Prop :=
  ∀ n, P17243885350293914194.a n = A364167 n

end A364167

/-! ## A364167.P17094162112903443415

`A378240(A034856(n+1))+A121373(A082796(n+1))`
-/

namespace A364167.P17094162112903443415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378240 (A034856 (n + 1)).toNat + A121373 (A082796 (n + 1)).toNat

end

end A364167.P17094162112903443415

namespace A364167

/-- `A378240(A034856(n+1))+A121373(A082796(n+1))` -/
def P17094162112903443415.Spec : Prop :=
  ∀ n, P17094162112903443415.a n = A364167 n

end A364167

/-! ## A364167.P2495409142378215065

`A378240(A034856(n+1))+A035205(A061240(n+1)+1)`
-/

namespace A364167.P2495409142378215065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378240 (A034856 (n + 1)).toNat + A035205 (A061240 (n + 1) + 1).toNat

end

end A364167.P2495409142378215065

namespace A364167

/-- `A378240(A034856(n+1))+A035205(A061240(n+1)+1)` -/
def P2495409142378215065.Spec : Prop :=
  ∀ n, P2495409142378215065.a n = A364167 n

end A364167

/-! ## A364167.P3968625479473657989

`record[A378240(n+1)/A008275(n+3)]`
-/

namespace A364167.P3968625479473657989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378240 (n + 1) : ℚ) / (A008275 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364167.P3968625479473657989

namespace A364167

/-- `record[A378240(n+1)/A008275(n+3)]` -/
def P3968625479473657989.Spec : Prop :=
  ∀ n, P3968625479473657989.a n = (A364167 n : ℚ)

end A364167

/-!
# A364168: Numbers that can be written in more than one way in the form (j+2k)^2-(j+k)^2-j^2 with j,k>0.

The programs for A364168, there is no canonical definition to state claims against.
-/

/-! ## A364168.P15736301235629427069

`lt[1, A334566(n+1)]+1`
-/

namespace A364168.P15736301235629427069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A364168.P15736301235629427069

/-!
# A364169: Smallest integer m = b*c which satisfies (b + c)*n = m - 1.

The programs for A364169, there is no canonical definition to state claims against.
-/

/-! ## A364169.P8914375077462572306

`A364171(A100793(n))`
-/

namespace A364169.P8914375077462572306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364171 (A100793 n).toNat

end

end A364169.P8914375077462572306

/-! ## A364169.P15640284592802163596

`A364171(A001096(n)+1)`
-/

namespace A364169.P15640284592802163596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364171 (A001096 n + 1).toNat

end

end A364169.P15640284592802163596

/-!
# A364170: Related to expression as an alternating sum of k-th powers.

The programs for A364170, the canonical program `A364170.P12995600981072078621` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364170 has offset 1).

The definition of A364170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364170.P12995600981072078621

`1/4*(a(n-1)+2)²-a(n-1)` with `a(0)=1, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364170

/-- `1/4*(a(n-1)+2)²-a(n-1)` -/
def P12995600981072078621.Spec : Prop :=
  ∀ n, P12995600981072078621.a n = (A364170 (n + 1) : ℚ)

end A364170

/-! ## A364170.P5773728812355968309

`(a(n-1)/2)²+1` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A364170.P5773728812355968309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  (a (n - 1) / 2) ^ 2 + 1

end

end A364170.P5773728812355968309

namespace A364170

/-- `(a(n-1)/2)²+1` -/
def P5773728812355968309.Spec : Prop :=
  ∀ n, P5773728812355968309.a n = (A364170 (n + 1) : ℚ)

end A364170

/-! ## A364170.P6688006105314400148

`A025486(n)+A025464(A349136(n+1))`
-/

namespace A364170.P6688006105314400148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025486 n + A025464 (A349136 (n + 1)).toNat

end

end A364170.P6688006105314400148

namespace A364170

/-- `A025486(n)+A025464(A349136(n+1))` -/
def P6688006105314400148.Spec : Prop :=
  ∀ n, P6688006105314400148.a n = A364170 (n + 1)

end A364170

/-! ## A364170.P7797327246499572183

`A349136(A067128(n+1))+A025486(n)`
-/

namespace A364170.P7797327246499572183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (A067128 (n + 1)).toNat + A025486 n

end

end A364170.P7797327246499572183

namespace A364170

/-- `A349136(A067128(n+1))+A025486(n)` -/
def P7797327246499572183.Spec : Prop :=
  ∀ n, P7797327246499572183.a n = A364170 (n + 1)

end A364170

/-! ## A364170.P15157272462055964685

`A025486(n)+A025464(A123285(n))`
-/

namespace A364170.P15157272462055964685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025486 n + A025464 (A123285 (n + 21)).toNat

end

end A364170.P15157272462055964685

namespace A364170

/-- `A025486(n)+A025464(A123285(n))` -/
def P15157272462055964685.Spec : Prop :=
  ∀ n, P15157272462055964685.a n = A364170 (n + 1)

end A364170

/-!
# A364185: Leading digit of 11^n.

The programs for A364185, there is no canonical definition to state claims against.
-/

/-! ## A364185.P17501146774204561210

`A004086(A091946(n))%10`
-/

namespace A364185.P17501146774204561210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A091946 n).toNat) 10

end

end A364185.P17501146774204561210

/-! ## A364185.P4658131908372605613

`A000030(A091946(n))`
-/

namespace A364185.P4658131908372605613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A091946 n).toNat

end

end A364185.P4658131908372605613

/-! ## A364185.P14828623635827768349

`A004086(A204590(n))%10`
-/

namespace A364185.P14828623635827768349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A204590 n).toNat) 10

end

end A364185.P14828623635827768349

/-! ## A364185.P6796042904536285807

`A000030(A204590(n))`
-/

namespace A364185.P6796042904536285807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A204590 n).toNat

end

end A364185.P6796042904536285807

/-! ## A364185.P6352853651091064317

`A008571(A000217(n)%A339225(n+1))`
-/

namespace A364185.P6352853651091064317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008571 (Int.tmod (A000217 n) (A339225 (n + 1))).toNat

end

end A364185.P6352853651091064317

/-!
# A364186: Primes p such that p divides 2^((p-1)/x) - 1, where x is the smallest odd prime factor of p - 1.

The programs for A364186, there is no canonical definition to state claims against.
-/

/-! ## A364186.P12935316505439101993

`A342974(lt[A000165(n), A342931(n+1)])`
-/

namespace A364186.P12935316505439101993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342974 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364186.P12935316505439101993

/-!
# A364191: Low co-mode in the multiset of prime indices of n.

The programs for A364191, there is no canonical definition to state claims against.
-/

/-! ## A364191.P10213461734458161337

`A000720(A067695(n+1))`
-/

namespace A364191.P10213461734458161337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067695 (n + 1)).toNat

end

end A364191.P10213461734458161337

/-! ## A364191.P8345028235365141864

`A061395(A067695(1+n))`
-/

namespace A364191.P8345028235365141864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A067695 (1 + n)).toNat

end

end A364191.P8345028235365141864

/-! ## A364191.P16330402620255369685

`A277697(A304776(1+n))`
-/

namespace A364191.P16330402620255369685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A304776 (1 + n)).toNat

end

end A364191.P16330402620255369685

/-! ## A364191.P48901754970669056

`∑{d}[A067695(n+1), A049084(#)]`
-/

namespace A364191.P48901754970669056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A364191.P48901754970669056

/-! ## A364191.P5568751173747407629

`∑{d}[A067695(n+1), A065770(#)]`
-/

namespace A364191.P5568751173747407629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A065770 d

end

end A364191.P5568751173747407629

/-! ## A364191.P306680679002802683

`∑{d}[A067695(n+1), A263297(#)]`
-/

namespace A364191.P306680679002802683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A263297 d

end

end A364191.P306680679002802683

/-! ## A364191.P1051967911801529380

`∑{d}[A067695(n+1), A335603(#)]`
-/

namespace A364191.P1051967911801529380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A335603 d

end

end A364191.P1051967911801529380

/-! ## A364191.P2161676806792659898

`A335603(A067695(n+1)%A016825(n))`
-/

namespace A364191.P2161676806792659898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 (Int.tmod (A067695 (n + 1)) (A016825 n)).toNat

end

end A364191.P2161676806792659898

/-! ## A364191.P4252314928572670737

`A335603(A067695(n+1)²)/2`
-/

namespace A364191.P4252314928572670737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335603 (A067695 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A364191.P4252314928572670737

/-! ## A364191.P12866568013130247768

`A364192(A067695((n+1)²))`
-/

namespace A364191.P12866568013130247768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364192 (A067695 ((n + 1) ^ 2)).toNat

end

end A364191.P12866568013130247768

/-!
# A364192: High (i.e., greatest) co-mode in the multiset of prime indices of n.

The programs for A364192, there is no canonical definition to state claims against.
-/

/-! ## A364192.P9816422114592375577

`A364191(A342768(1+n))`
-/

namespace A364192.P9816422114592375577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 (A342768 (1 + n)).toNat

end

end A364192.P9816422114592375577

/-! ## A364192.P4916420170234054348

`A364191(A353694(n+1))`
-/

namespace A364192.P4916420170234054348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 (A353694 (n + 1)).toNat

end

end A364192.P4916420170234054348

/-! ## A364192.P11367389111490440896

`A364191(A052126((1+n)²))`
-/

namespace A364192.P11367389111490440896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 (A052126 ((1 + n) ^ 2)).toNat

end

end A364192.P11367389111490440896

/-! ## A364192.P847474600630572495

`A390430(n+1)-A363486(n+1)`
-/

namespace A364192.P847474600630572495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390430 (n + 1) - A363486 (n + 1)

end

end A364192.P847474600630572495

/-! ## A364192.P6417615407014310881

`A364191((n+1)*A052126(n+1))`
-/

namespace A364192.P6417615407014310881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 ((n + 1 : ℤ) * A052126 (n + 1)).toNat

end

end A364192.P6417615407014310881

/-!
# A364193: Number of integer partitions of n where the least part is the unique mode.

The programs for A364193, there is no canonical definition to state claims against.
-/

/-! ## A364193.P10302706928088035129

`A113512(A108950(n+2))`
-/

namespace A364193.P10302706928088035129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113512 (A108950 (n + 2)).toNat

end

end A364193.P10302706928088035129

/-! ## A364193.P6057449340606512955

`A121900(A000041(n+3)*A356236(n))`
-/

namespace A364193.P6057449340606512955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A000041 (n + 3) * A356236 n).toNat

end

end A364193.P6057449340606512955

/-! ## A364193.P11114642150967050406

`A320278(A361852(2*n+3)+A320236(n))`
-/

namespace A364193.P11114642150967050406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A361852 (2 * n + 3) + A320236 n).toNat

end

end A364193.P11114642150967050406

/-!
# A364194: a(n) = Sum_{k=1..n} k^3*sigma(k), where sigma is A000203.

The programs for A364194, the canonical program `A364194.P12745892002767379182` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364194 has offset 1).

The definition of A364194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364194.P12745892002767379182

`∑{#}[n, (#+1)^4*A000537(floor((n+1)/(#+1)))]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A364194

/-- `∑{#}[n, (#+1)^4*A000537(floor((n+1)/(#+1)))]` -/
def P12745892002767379182.Spec : Prop :=
  ∀ n, P12745892002767379182.a n = A364194 (n + 1)

theorem P12745892002767379182.correct : P12745892002767379182.Spec := by
  intro n
  simp only [A364194, Nat.add_sub_cancel]

end A364194

/-! ## A364194.P3404298536694122562

`∑[Δ[∑[n]²]*∑{d}[n+1, #]]`
-/

namespace A364194.P3404298536694122562
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * ((∑ d ∈ Nat.divisors (f4 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364194.P3404298536694122562

namespace A364194

/-- `∑[Δ[∑[n]²]*∑{d}[n+1, #]]` -/
def P3404298536694122562.Spec : Prop :=
  ∀ n, P3404298536694122562.a n = A364194 (n + 1)

end A364194

/-! ## A364194.P2333703608441582261

`∑[∑{d}[n+1, #]*(n+1)^3]`
-/

namespace A364194.P2333703608441582261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), d) * (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364194.P2333703608441582261

namespace A364194

/-- `∑[∑{d}[n+1, #]*(n+1)^3]` -/
def P2333703608441582261.Spec : Prop :=
  ∀ n, (P2333703608441582261.a n : ℤ) = A364194 (n + 1)

end A364194

/-! ## A364194.P12419941102143960445

`∑[∑{d}[n+1, (n+1)^4/#]]`
-/

namespace A364194.P12419941102143960445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((n + 1) ^ 4 : ℚ) / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364194.P12419941102143960445

namespace A364194

/-- `∑[∑{d}[n+1, (n+1)^4/#]]` -/
def P12419941102143960445.Spec : Prop :=
  ∀ n, P12419941102143960445.a n = (A364194 (n + 1) : ℚ)

end A364194

/-! ## A364194.P5013436288188158734

`∑{d}[n+1, #]*(n+1)^3+a(n-1)` with `a(0)=1`
-/

namespace A364194.P5013436288188158734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ d ∈ Nat.divisors (f1 n), d) * (n + 1) ^ 3 + a (n - 1)

end

end A364194.P5013436288188158734

namespace A364194

/-- `∑{d}[n+1, #]*(n+1)^3+a(n-1)` -/
def P5013436288188158734.Spec : Prop :=
  ∀ n, (P5013436288188158734.a n : ℤ) = A364194 (n + 1)

end A364194

/-! ## A364194.P3681168087250409405

`∑[(n+1)²*A064987(n+1)]`
-/

namespace A364194.P3681168087250409405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A064987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364194.P3681168087250409405

namespace A364194

/-- `∑[(n+1)²*A064987(n+1)]` -/
def P3681168087250409405.Spec : Prop :=
  ∀ n, P3681168087250409405.a n = A364194 (n + 1)

end A364194

/-! ## A364194.P16874517962115690274

`∑[∑[A003215(n)]*A000203(n+1)]`
-/

namespace A364194.P16874517962115690274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364194.P16874517962115690274

namespace A364194

/-- `∑[∑[A003215(n)]*A000203(n+1)]` -/
def P16874517962115690274.Spec : Prop :=
  ∀ n, P16874517962115690274.a n = A364194 (n + 1)

end A364194

/-! ## A364194.P31850332345639929

`∑[A282211(n+1)]`
-/

namespace A364194.P31850332345639929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364194.P31850332345639929

namespace A364194

/-- `∑[A282211(n+1)]` -/
def P31850332345639929.Spec : Prop :=
  ∀ n, P31850332345639929.a n = A364194 (n + 1)

end A364194

/-! ## A364194.P1151869211934114771

`∑[(n+1)*A282097(n+1)]`
-/

namespace A364194.P1151869211934114771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A282097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364194.P1151869211934114771

namespace A364194

/-- `∑[(n+1)*A282097(n+1)]` -/
def P1151869211934114771.Spec : Prop :=
  ∀ n, P1151869211934114771.a n = A364194 (n + 1)

end A364194

/-! ## A364194.P16556468684436214365

`∑[A280022(n+1)/(n+1)]`
-/

namespace A364194.P16556468684436214365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280022 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364194.P16556468684436214365

namespace A364194

/-- `∑[A280022(n+1)/(n+1)]` -/
def P16556468684436214365.Spec : Prop :=
  ∀ n, P16556468684436214365.a n = (A364194 (n + 1) : ℚ)

end A364194

/-!
# A364195: Expansion of g.f. A(x) satisfying A(x) = 1 + x * A(x)^5 * (1 + A(x)^2).

The programs for A364195, the canonical program `A364195.P3319582575745020618` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364195 has offset 0).

The definition of A364195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364195.P3319582575745020618

`∑{#}[n, C(n, #)*C(5*n+2*#+1, n)/(5*n+2*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364195

/-- `∑{#}[n, C(n, #)*C(5*n+2*#+1, n)/(5*n+2*#+1)]` -/
def P3319582575745020618.Spec : Prop :=
  ∀ n, P3319582575745020618.a n = (A364195 n : ℚ)

end A364195

/-!
# A364196: Expansion of g.f. A(x) satisfying A(x) = 1 + x * A(x)^5 * (1 + A(x)^3).

The programs for A364196, the canonical program `A364196.P15726993492801722666` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364196 has offset 0).

The definition of A364196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364196.P15726993492801722666

`∑{#}[n, C(n, #)*C(5*n+3*#+1, n)/(5*n+3*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364196

/-- `∑{#}[n, C(n, #)*C(5*n+3*#+1, n)/(5*n+3*#+1)]` -/
def P15726993492801722666.Spec : Prop :=
  ∀ n, P15726993492801722666.a n = (A364196 n : ℚ)

end A364196

/-!
# A364197: a(n+1) = a(|n-a(n)^2|) + 1, a(0) = 0.

The programs for A364197, the canonical program `A364197.P8505701004977640` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364197 has offset 0).

The definition of A364197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364197.P8505701004977640

`a(abs(n-1-a(n-1)²))+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364197

/-- `a(abs(n-1-a(n-1)²))+1` -/
def P8505701004977640.Spec : Prop :=
  ∀ n, (P8505701004977640.a n : ℤ) = A364197 n

theorem P8505701004977640.correct : P8505701004977640.Spec := by
  intro n
  simp only [A364197]

end A364197

/-! ## A364197.P10730913008672564713

`A000120(n)-A005094(A003432(n))`
-/

namespace A364197.P10730913008672564713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A005094 (A003432 n).toNat

end

end A364197.P10730913008672564713

namespace A364197

/-- `A000120(n)-A005094(A003432(n))` -/
def P10730913008672564713.Spec : Prop :=
  ∀ n, P10730913008672564713.a n = A364197 n

end A364197

/-! ## A364197.P1754497816444203423

`A031346(A000040(2*n+3)*A191927(3*n+1)+9)`
-/

namespace A364197.P1754497816444203423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A000040 (2 * n + 3) * A191927 (3 * n + 1) + 9).toNat

end

end A364197.P1754497816444203423

namespace A364197

/-- `A031346(A000040(2*n+3)*A191927(3*n+1)+9)` -/
def P1754497816444203423.Spec : Prop :=
  ∀ n, P1754497816444203423.a n = A364197 n

end A364197

/-! ## A364197.P11587781698892421346

`A276729(A016777(n)*A101135(n+2))`
-/

namespace A364197.P11587781698892421346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A016777 n * A101135 (n + 2)).toNat

end

end A364197.P11587781698892421346

namespace A364197

/-- `A276729(A016777(n)*A101135(n+2))` -/
def P11587781698892421346.Spec : Prop :=
  ∀ n, P11587781698892421346.a n = A364197 n

end A364197

/-! ## A364197.P5260505933330009638

`A001221(xor(A001906(n), A168233(n+1)))`
-/

namespace A364197.P5260505933330009638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A001906 n) (A168233 (n + 1))).toNat

end

end A364197.P5260505933330009638

namespace A364197

/-- `A001221(xor(A001906(n), A168233(n+1)))` -/
def P5260505933330009638.Spec : Prop :=
  ∀ n, P5260505933330009638.a n = A364197 n

end A364197

/-!
# A364198: Index of first occurrence of n in A364197.

The programs for A364198, there is no canonical definition to state claims against.
-/

/-! ## A364198.P10792831423497385869

`fo[A364197(n)]`
-/

namespace A364198.P10792831423497385869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364197 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A364198.P10792831423497385869

/-! ## A364198.P15050174871505885311

`A067085(A001792(n))-A249790(n)`
-/

namespace A364198.P15050174871505885311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A001792 n).toNat - A249790 n

end

end A364198.P15050174871505885311

/-! ## A364198.P12187730594060421009

`A169780(n)+A026814(2*(n+1))%A147087(3*(n+1))`
-/

namespace A364198.P12187730594060421009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169780 n + Int.tmod (A026814 (2 * (n + 1))) (A147087 (3 * (n + 1)))

end

end A364198.P12187730594060421009

