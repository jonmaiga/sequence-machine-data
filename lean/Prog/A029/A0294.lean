import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A029400: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^10)*(1-x^11)).

The programs for A029400, the canonical program `A029400.P16034242247368147644` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029400 has offset 0).

The definition of A029400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029400.P4953818442266579581

`A025915(n)+A029380(n)-A029420(n)`
-/

namespace A029400.P4953818442266579581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 n + (A029380 n - A029420 n)

end

end A029400.P4953818442266579581

namespace A029400

/-- `A025915(n)+A029380(n)-A029420(n)` -/
def P4953818442266579581.Spec : Prop :=
  ∀ n, P4953818442266579581.a n = A029400 n

end A029400

/-! ## A029400.P16034242247368147644

`A029366(n)+A029380(n)-A029350(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029400

/-- `A029366(n)+A029380(n)-A029350(n)` -/
def P16034242247368147644.Spec : Prop :=
  ∀ n, P16034242247368147644.a n = A029400 n

theorem P16034242247368147644.correct : P16034242247368147644.Spec := by
  intro n
  simp only [A029400]

end A029400

/-! ## A029400.P17317496831589221092

`A029367(n)+A029391(n)-A029358(n)`
-/

namespace A029400.P17317496831589221092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 n + (A029391 n - A029358 n)

end

end A029400.P17317496831589221092

namespace A029400

/-- `A029367(n)+A029391(n)-A029358(n)` -/
def P17317496831589221092.Spec : Prop :=
  ∀ n, P17317496831589221092.a n = A029400 n

end A029400

/-! ## A029400.P1450960126136316765

`A029367(n)+A029412(n)-A029377(n)`
-/

namespace A029400.P1450960126136316765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 n + (A029412 n - A029377 n)

end

end A029400.P1450960126136316765

namespace A029400

/-- `A029367(n)+A029412(n)-A029377(n)` -/
def P1450960126136316765.Spec : Prop :=
  ∀ n, P1450960126136316765.a n = A029400 n

end A029400

/-! ## A029400.P1387327047029408149

`A029211(n+5)-A029233(n+5)`
-/

namespace A029400.P1387327047029408149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029211 (n + 5) - A029233 (n + 5)

end

end A029400.P1387327047029408149

namespace A029400

/-- `A029211(n+5)-A029233(n+5)` -/
def P1387327047029408149.Spec : Prop :=
  ∀ n, P1387327047029408149.a n = A029400 n

end A029400

/-!
# A029401: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^10)*(1-x^12)).

The programs for A029401, the canonical program `A029401.P4755430295429988404` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029401 has offset 0).

The definition of A029401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029401.P4755430295429988404

`A029212(n+5)-A029234(n+5)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029401

/-- `A029212(n+5)-A029234(n+5)` -/
def P4755430295429988404.Spec : Prop :=
  ∀ n, P4755430295429988404.a n = A029401 n

theorem P4755430295429988404.correct : P4755430295429988404.Spec := by
  intro n
  simp only [A029401]

end A029401

/-! ## A029401.P13349056650381452696

`A080345(C(A237270(2*(n+2)), A025886(n)))`
-/

namespace A029401.P13349056650381452696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080345 (Nat.choose (A237270 (2 * (n + 2))).toNat (A025886 n).toNat)

end

end A029401.P13349056650381452696

namespace A029401

/-- `A080345(C(A237270(2*(n+2)), A025886(n)))` -/
def P13349056650381452696.Spec : Prop :=
  ∀ n, P13349056650381452696.a n = A029401 n

end A029401

/-! ## A029401.P6163086117083073241

`A086008(A294756(n))+A025884(n)`
-/

namespace A029401.P6163086117083073241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 (A294756 n).toNat + A025884 n

end

end A029401.P6163086117083073241

namespace A029401

/-- `A086008(A294756(n))+A025884(n)` -/
def P6163086117083073241.Spec : Prop :=
  ∀ n, P6163086117083073241.a n = A029401 n

end A029401

/-! ## A029401.P15275726036286979054

`A025884(n)*A353849(A008277(n+1))`
-/

namespace A029401.P15275726036286979054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025884 n * A353849 (A008277 (n + 1)).toNat

end

end A029401.P15275726036286979054

namespace A029401

/-- `A025884(n)*A353849(A008277(n+1))` -/
def P15275726036286979054.Spec : Prop :=
  ∀ n, P15275726036286979054.a n = A029401 n

end A029401

/-! ## A029401.P12745377241518497875

`A369816(n)+A212619(A163235(2*(n+1)))`
-/

namespace A029401.P12745377241518497875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369816 n + A212619 (A163235 (2 * (n + 1))).toNat

end

end A029401.P12745377241518497875

namespace A029401

/-- `A369816(n)+A212619(A163235(2*(n+1)))` -/
def P12745377241518497875.Spec : Prop :=
  ∀ n, P12745377241518497875.a n = A029401 n

end A029401

/-!
# A029402: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^11)*(1-x^12)).

The programs for A029402, the canonical program `A029402.P12129386215705779190` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029402 has offset 0).

The definition of A029402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029402.P12845391487048978653

`A025917(n)+A029382(n)-A029422(n)`
-/

namespace A029402.P12845391487048978653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025917 n + (A029382 n - A029422 n)

end

end A029402.P12845391487048978653

namespace A029402

/-- `A025917(n)+A029382(n)-A029422(n)` -/
def P12845391487048978653.Spec : Prop :=
  ∀ n, P12845391487048978653.a n = A029402 n

end A029402

/-! ## A029402.P12129386215705779190

`A029094(n)+A029382(n)-A029090(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029402

/-- `A029094(n)+A029382(n)-A029090(n)` -/
def P12129386215705779190.Spec : Prop :=
  ∀ n, P12129386215705779190.a n = A029402 n

theorem P12129386215705779190.correct : P12129386215705779190.Spec := by
  intro n
  simp only [A029402]

end A029402

/-! ## A029402.P12356826451108371405

`A029126(n)+A029382(n)-A029116(n)`
-/

namespace A029402.P12356826451108371405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029126 n + (A029382 n - A029116 n)

end

end A029402.P12356826451108371405

namespace A029402

/-- `A029126(n)+A029382(n)-A029116(n)` -/
def P12356826451108371405.Spec : Prop :=
  ∀ n, P12356826451108371405.a n = A029402 n

end A029402

/-! ## A029402.P7058560494979801017

`Δ[∑[A029420(n)]-A029441(n)]`
-/

namespace A029402.P7058560494979801017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029402.P7058560494979801017

namespace A029402

/-- `Δ[∑[A029420(n)]-A029441(n)]` -/
def P7058560494979801017.Spec : Prop :=
  ∀ n, P7058560494979801017.a n = A029402 n

end A029402

/-! ## A029402.P841869566118406536

`A029420(n+1)-Δ[A029441(n)]`
-/

namespace A029402.P841869566118406536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029420 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029402.P841869566118406536

namespace A029402

/-- `A029420(n+1)-Δ[A029441(n)]` -/
def P841869566118406536.Spec : Prop :=
  ∀ n, P841869566118406536.a n = A029402 n

end A029402

/-!
# A029403: Expansion of 1/((1-x^5)*(1-x^8)*(1-x^9)*(1-x^10)).

The programs for A029403, there is no canonical definition to state claims against.
-/

/-! ## A029403.P2463239661197723918

`A025862(A107128(n))^A022168(n)`
-/

namespace A029403.P2463239661197723918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025862 (A107128 n).toNat : ℚ) ^ (A022168 n : ℤ)

end

end A029403.P2463239661197723918

/-! ## A029403.P4765326281203427909

`A025862(A107128(n))^A059328(n)`
-/

namespace A029403.P4765326281203427909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025862 (A107128 n).toNat : ℚ) ^ (A059328 n : ℤ)

end

end A029403.P4765326281203427909

/-! ## A029403.P9660313819157101870

`A025881(A151988(n))^A022168(n)`
-/

namespace A029403.P9660313819157101870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025881 (A151988 n).toNat : ℚ) ^ (A022168 n : ℤ)

end

end A029403.P9660313819157101870

/-! ## A029403.P716993012233759817

`A025881(A151988(n))^A059328(n)`
-/

namespace A029403.P716993012233759817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025881 (A151988 n).toNat : ℚ) ^ (A059328 n : ℤ)

end

end A029403.P716993012233759817

/-! ## A029403.P17208436776482263879

`A025862(A107128(n))^A255494(n)`
-/

namespace A029403.P17208436776482263879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025862 (A107128 n).toNat : ℚ) ^ (A255494 n : ℤ)

end

end A029403.P17208436776482263879

/-!
# A029404: Expansion of 1/((1-x^5)*(1-x^8)*(1-x^9)*(1-x^11)).

The programs for A029404, the canonical program `A029404.P15874426153803631495` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029404 has offset 0).

The definition of A029404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029404.P8943441984811282527

`A029442(abs(5-n))+A029442(n)`
-/

namespace A029404.P8943441984811282527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029442 |5 - (n : ℤ)|.toNat + A029442 n

end

end A029404.P8943441984811282527

namespace A029404

/-- `A029442(abs(5-n))+A029442(n)` -/
def P8943441984811282527.Spec : Prop :=
  ∀ n, P8943441984811282527.a n = A029404 n

end A029404

/-! ## A029404.P16051348989304430684

`(A029342(n)-a(n-4))*A060576(n)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029404.P16051348989304430684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  (A029342 n - a (n - 4)) * A060576 n

end

end A029404.P16051348989304430684

namespace A029404

/-- `(A029342(n)-a(n-4))*A060576(n)` -/
def P16051348989304430684.Spec : Prop :=
  ∀ n, P16051348989304430684.a n = A029404 n

end A029404

/-! ## A029404.P15874426153803631495

`A025892(n)+A029098(n)-A029101(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029404

/-- `A025892(n)+A029098(n)-A029101(n)` -/
def P15874426153803631495.Spec : Prop :=
  ∀ n, P15874426153803631495.a n = A029404 n

theorem P15874426153803631495.correct : P15874426153803631495.Spec := by
  intro n
  simp only [A029404]

end A029404

/-! ## A029404.P16641966688039138225

`A025921(n)+A029342(n)-A029374(n)`
-/

namespace A029404.P16641966688039138225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 n + (A029342 n - A029374 n)

end

end A029404.P16641966688039138225

namespace A029404

/-- `A025921(n)+A029342(n)-A029374(n)` -/
def P16641966688039138225.Spec : Prop :=
  ∀ n, P16641966688039138225.a n = A029404 n

end A029404

/-! ## A029404.P6926891054366458418

`A029098(n)+A029342(n)-A029081(n)`
-/

namespace A029404.P6926891054366458418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029098 n + (A029342 n - A029081 n)

end

end A029404.P6926891054366458418

namespace A029404

/-- `A029098(n)+A029342(n)-A029081(n)` -/
def P6926891054366458418.Spec : Prop :=
  ∀ n, P6926891054366458418.a n = A029404 n

end A029404

/-!
# A029405: Expansion of 1/((1-x^5)(1-x^8)(1-x^9)(1-x^12)).

The programs for A029405, the canonical program `A029405.P3828113110595546139` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029405 has offset 0).

The definition of A029405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029405.P3828113110595546139

`Δ[∑[A029423(n)]-A029443(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029405

/-- `Δ[∑[A029423(n)]-A029443(n)]` -/
def P3828113110595546139.Spec : Prop :=
  ∀ n, P3828113110595546139.a n = A029405 n

theorem P3828113110595546139.correct : P3828113110595546139.Spec := by
  intro n
  simp only [A029405]

end A029405

/-! ## A029405.P6130514727109244023

`A029423(n+1)-Δ[A029443(n)]`
-/

namespace A029405.P6130514727109244023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029405.P6130514727109244023

namespace A029405

/-- `A029423(n+1)-Δ[A029443(n)]` -/
def P6130514727109244023.Spec : Prop :=
  ∀ n, P6130514727109244023.a n = A029405 n

end A029405

/-! ## A029405.P1875013091136225646

`A025900(eq[1, A299203(3*n+2)])`
-/

namespace A029405.P1875013091136225646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299203 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029405.P1875013091136225646

namespace A029405

/-- `A025900(eq[1, A299203(3*n+2)])` -/
def P1875013091136225646.Spec : Prop :=
  ∀ n, P1875013091136225646.a n = A029405 n

end A029405

/-! ## A029405.P3161291828640797799

`A085975(A126808(A057237(n+1)+A020705(n)))`
-/

namespace A029405.P3161291828640797799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085975 (A126808 (A057237 (n + 1) + A020705 n).toNat).toNat

end

end A029405.P3161291828640797799

namespace A029405

/-- `A085975(A126808(A057237(n+1)+A020705(n)))` -/
def P3161291828640797799.Spec : Prop :=
  ∀ n, P3161291828640797799.a n = A029405 n

end A029405

/-!
# A029406: Expansion of 1/((1-x^5)(1-x^8)(1-x^10)(1-x^11)).

The programs for A029406, the canonical program `A029406.P550328618006401562` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029406 has offset 0).

The definition of A029406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029406.P550328618006401562

`A029372(n)+A029384(n)-A029353(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A029406

/-- `A029372(n)+A029384(n)-A029353(n)` -/
def P550328618006401562.Spec : Prop :=
  ∀ n, P550328618006401562.a n = A029406 n

theorem P550328618006401562.correct : P550328618006401562.Spec := by
  intro n
  simp only [A029406]

end A029406

/-! ## A029406.P5858597787331072919

`A029206(n+8)-A029211(n+8)`
-/

namespace A029406.P5858597787331072919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029206 (n + 8) - A029211 (n + 8)

end

end A029406.P5858597787331072919

namespace A029406

/-- `A029206(n+8)-A029211(n+8)` -/
def P5858597787331072919.Spec : Prop :=
  ∀ n, P5858597787331072919.a n = A029406 n

end A029406

/-! ## A029406.P2044447123065865253

`A010213(A001588(n))*A025889(n)`
-/

namespace A029406.P2044447123065865253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010213 (A001588 n).toNat * A025889 n

end

end A029406.P2044447123065865253

namespace A029406

/-- `A010213(A001588(n))*A025889(n)` -/
def P2044447123065865253.Spec : Prop :=
  ∀ n, P2044447123065865253.a n = A029406 n

end A029406

/-! ## A029406.P2432075151732080379

`and(A029384(n), A220672(A349914(n+1)))`
-/

namespace A029406.P2432075151732080379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029384 n) (A220672 (A349914 (n + 1)).toNat)

end

end A029406.P2432075151732080379

namespace A029406

/-- `and(A029384(n), A220672(A349914(n+1)))` -/
def P2432075151732080379.Spec : Prop :=
  ∀ n, P2432075151732080379.a n = A029406 n

end A029406

/-! ## A029406.P10069266829539942451

`and(A008616(n), A171865(A023484(n)))`
-/

namespace A029406.P10069266829539942451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008616 n) (A171865 (A023484 n).toNat)

end

end A029406.P10069266829539942451

namespace A029406

/-- `and(A008616(n), A171865(A023484(n)))` -/
def P10069266829539942451.Spec : Prop :=
  ∀ n, P10069266829539942451.a n = A029406 n

end A029406

/-!
# A029407: Expansion of 1/((1-x^5)(1-x^8)(1-x^10)(1-x^12)).

The programs for A029407, there is no canonical definition to state claims against.
-/

/-! ## A029407.P11383129256495935278

`and(A025862(n), A165909(A090288(3*n+1)))`
-/

namespace A029407.P11383129256495935278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025862 n) (A165909 (A090288 (3 * n + 1)).toNat)

end

end A029407.P11383129256495935278

/-! ## A029407.P2509003421087329880

`and(A029384(n), A165909(A090288(3*n+1)))`
-/

namespace A029407.P2509003421087329880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029384 n) (A165909 (A090288 (3 * n + 1)).toNat)

end

end A029407.P2509003421087329880

/-! ## A029407.P4006634288142419289

`C(A025862(n), A040734(lcm(6, (n+1)^3)/6))`
-/

namespace A029407.P4006634288142419289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025862 n).toNat (A040734 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)).toNat).toNat

end

end A029407.P4006634288142419289

/-! ## A029407.P3336646258522275782

`and(A351722(n)+A055999(n), A029384(n))`
-/

namespace A029407.P3336646258522275782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A351722 n + A055999 n) (A029384 n)

end

end A029407.P3336646258522275782

/-! ## A029407.P16218229358892993591

`A025862(n^A025890(n)²)`
-/

namespace A029407.P16218229358892993591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025862 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025890 n ^ 2 : ℤ))).toNat

end

end A029407.P16218229358892993591

/-!
# A029408: Expansion of 1/((1-x^5)(1-x^8)(1-x^11)(1-x^12)).

The programs for A029408, the canonical program `A029408.P16904419876965662283` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029408 has offset 0).

The definition of A029408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029408.P170499442627986173

`A025922(n)+A029386(n)-A029427(n)`
-/

namespace A029408.P170499442627986173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 n + (A029386 n - A029427 n)

end

end A029408.P170499442627986173

namespace A029408

/-- `A025922(n)+A029386(n)-A029427(n)` -/
def P170499442627986173.Spec : Prop :=
  ∀ n, P170499442627986173.a n = A029408 n

end A029408

/-! ## A029408.P17620591120434734022

`A025922(n)+A029395(n)-A029437(n)`
-/

namespace A029408.P17620591120434734022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 n + (A029395 n - A029437 n)

end

end A029408.P17620591120434734022

namespace A029408

/-- `A025922(n)+A029395(n)-A029437(n)` -/
def P17620591120434734022.Spec : Prop :=
  ∀ n, P17620591120434734022.a n = A029408 n

end A029408

/-! ## A029408.P16904419876965662283

`A029240(n)+A029386(n)-A029225(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029408

/-- `A029240(n)+A029386(n)-A029225(n)` -/
def P16904419876965662283.Spec : Prop :=
  ∀ n, P16904419876965662283.a n = A029408 n

theorem P16904419876965662283.correct : P16904419876965662283.Spec := by
  intro n
  simp only [A029408]

end A029408

/-! ## A029408.P2557631795660759179

`A029373(n)+A029395(n)-A029362(n)`
-/

namespace A029408.P2557631795660759179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029373 n + (A029395 n - A029362 n)

end

end A029408.P2557631795660759179

namespace A029408

/-- `A029373(n)+A029395(n)-A029362(n)` -/
def P2557631795660759179.Spec : Prop :=
  ∀ n, P2557631795660759179.a n = A029408 n

end A029408

/-! ## A029408.P8398956973047401668

`Δ[∑[A029426(n)]-A029445(n)]`
-/

namespace A029408.P8398956973047401668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029408.P8398956973047401668

namespace A029408

/-- `Δ[∑[A029426(n)]-A029445(n)]` -/
def P8398956973047401668.Spec : Prop :=
  ∀ n, P8398956973047401668.a n = A029408 n

end A029408

/-! ## A029408.P3571381947619378671

`A029426(n+1)-Δ[A029445(n)]`
-/

namespace A029408.P3571381947619378671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029426 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029408.P3571381947619378671

namespace A029408

/-- `A029426(n+1)-Δ[A029445(n)]` -/
def P3571381947619378671.Spec : Prop :=
  ∀ n, P3571381947619378671.a n = A029408 n

end A029408

/-!
# A029409: Expansion of 1/((1-x^5)(1-x^9)(1-x^10)(1-x^11)).

The programs for A029409, the canonical program `A029409.P7184523161704019906` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029409 has offset 0).

The definition of A029409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029409.P6182826887347315883

`A025894(n)+A029101(n)-A029103(n)`
-/

namespace A029409.P6182826887347315883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025894 n + (A029101 n - A029103 n)

end

end A029409.P6182826887347315883

namespace A029409

/-- `A025894(n)+A029101(n)-A029103(n)` -/
def P6182826887347315883.Spec : Prop :=
  ∀ n, P6182826887347315883.a n = A029409 n

end A029409

/-! ## A029409.P7184523161704019906

`A029374(n)+A029387(n)-A029355(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029409

/-- `A029374(n)+A029387(n)-A029355(n)` -/
def P7184523161704019906.Spec : Prop :=
  ∀ n, P7184523161704019906.a n = A029409 n

theorem P7184523161704019906.correct : P7184523161704019906.Spec := by
  intro n
  simp only [A029409]

end A029409

/-! ## A029409.P1827559505142369386

`A114833(A025923(2*n))%A253723(n+1)`
-/

namespace A029409.P1827559505142369386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114833 (A025923 (2 * n)).toNat) (A253723 (n + 1))

end

end A029409.P1827559505142369386

namespace A029409

/-- `A114833(A025923(2*n))%A253723(n+1)` -/
def P1827559505142369386.Spec : Prop :=
  ∀ n, P1827559505142369386.a n = A029409 n

end A029409

/-! ## A029409.P7380768275978589816

`A000071(A025923(2*n)+A020639(A229489(2*(n+1))))`
-/

namespace A029409.P7380768275978589816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A025923 (2 * n) + A020639 (A229489 (2 * (n + 1))).toNat).toNat

end

end A029409.P7380768275978589816

namespace A029409

/-- `A000071(A025923(2*n)+A020639(A229489(2*(n+1))))` -/
def P7380768275978589816.Spec : Prop :=
  ∀ n, P7380768275978589816.a n = A029409 n

end A029409

/-! ## A029409.P9538025303355364359

`A001222(71^A025923(2*n))`
-/

namespace A029409.P9538025303355364359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((71 : ℚ) ^ (A025923 (2 * n) : ℤ))).toNat

end

end A029409.P9538025303355364359

namespace A029409

/-- `A001222(71^A025923(2*n))` -/
def P9538025303355364359.Spec : Prop :=
  ∀ n, P9538025303355364359.a n = A029409 n

end A029409

/-!
# A029410: Expansion of 1/((1-x^5)(1-x^9)(1-x^10)(1-x^12)).

The programs for A029410, there is no canonical definition to state claims against.
-/

/-! ## A029410.P11316969774347066784

`A025891(n)^A226873(A294212(n))`
-/

namespace A029410.P11316969774347066784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025891 n : ℚ) ^ (A226873 (A294212 n).toNat : ℤ)

end

end A029410.P11316969774347066784

/-! ## A029410.P16197378021973427650

`A025891(n)^A293024(A329816(n))`
-/

namespace A029410.P16197378021973427650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025891 n : ℚ) ^ (A293024 (A329816 n).toNat : ℤ)

end

end A029410.P16197378021973427650

/-! ## A029410.P13156045175849498636

`or(A025895(n), A059448(A156953(n)))`
-/

namespace A029410.P13156045175849498636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025895 n) (A059448 (A156953 n).toNat)

end

end A029410.P13156045175849498636

/-! ## A029410.P11089973387812139683

`A055641(A056960(n)*A189545(n+1))`
-/

namespace A029410.P11089973387812139683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A056960 n * A189545 (n + 1)).toNat

end

end A029410.P11089973387812139683

/-! ## A029410.P11103534334713318970

`A275592(n)%A001222(A095054(n+4))`
-/

namespace A029410.P11103534334713318970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275592 n) (A001222 (A095054 (n + 4)).toNat)

end

end A029410.P11103534334713318970

/-!
# A029411: Expansion of 1/((1-x^5)(1-x^9)(1-x^11)(1-x^12)).

The programs for A029411, the canonical program `A029411.P3027199765007840635` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029411 has offset 0).

The definition of A029411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029411.P8253833894787806351

`A025925(n)+A029102(n)-A029114(n)`
-/

namespace A029411.P8253833894787806351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n + (A029102 n - A029114 n)

end

end A029411.P8253833894787806351

namespace A029411

/-- `A025925(n)+A029102(n)-A029114(n)` -/
def P8253833894787806351.Spec : Prop :=
  ∀ n, P8253833894787806351.a n = A029411 n

end A029411

/-! ## A029411.P8115010701159987110

`A025925(n)+A029346(n)-A029376(n)`
-/

namespace A029411.P8115010701159987110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n + (A029346 n - A029376 n)

end

end A029411.P8115010701159987110

namespace A029411

/-- `A025925(n)+A029346(n)-A029376(n)` -/
def P8115010701159987110.Spec : Prop :=
  ∀ n, P8115010701159987110.a n = A029411 n

end A029411

/-! ## A029411.P13409422947915725466

`A025924(n)+A029388(n)-A029428(n)`
-/

namespace A029411.P13409422947915725466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 n + (A029388 n - A029428 n)

end

end A029411.P13409422947915725466

namespace A029411

/-- `A025924(n)+A029388(n)-A029428(n)` -/
def P13409422947915725466.Spec : Prop :=
  ∀ n, P13409422947915725466.a n = A029411 n

end A029411

/-! ## A029411.P3027199765007840635

`A029376(n)+A029398(n)-A029365(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029411

/-- `A029376(n)+A029398(n)-A029365(n)` -/
def P3027199765007840635.Spec : Prop :=
  ∀ n, P3027199765007840635.a n = A029411 n

theorem P3027199765007840635.correct : P3027199765007840635.Spec := by
  intro n
  simp only [A029411]

end A029411

/-! ## A029411.P7778207413826919004

`Δ[∑[A029428(n)]-A029446(n)]`
-/

namespace A029411.P7778207413826919004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029428 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029446 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029411.P7778207413826919004

namespace A029411

/-- `Δ[∑[A029428(n)]-A029446(n)]` -/
def P7778207413826919004.Spec : Prop :=
  ∀ n, P7778207413826919004.a n = A029411 n

end A029411

/-! ## A029411.P3511635842356904003

`A029428(n+1)-Δ[A029446(n)]`
-/

namespace A029411.P3511635842356904003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029446 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029428 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029411.P3511635842356904003

namespace A029411

/-- `A029428(n+1)-Δ[A029446(n)]` -/
def P3511635842356904003.Spec : Prop :=
  ∀ n, P3511635842356904003.a n = A029411 n

end A029411

/-!
# A029412: Expansion of 1/((1-x^5)*(1-x^10)*(1-x^11)*(1-x^12)).

The programs for A029412, the canonical program `A029412.P8218405848832406386` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029412 has offset 0).

The definition of A029412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029412.P9772816589097310271

`A025926(n)+A029104(n)-A029115(n)`
-/

namespace A029412.P9772816589097310271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n + (A029104 n - A029115 n)

end

end A029412.P9772816589097310271

namespace A029412

/-- `A025926(n)+A029104(n)-A029115(n)` -/
def P9772816589097310271.Spec : Prop :=
  ∀ n, P9772816589097310271.a n = A029412 n

end A029412

/-! ## A029412.P4206085997809029362

`A025926(n)+A029391(n)-A029431(n)`
-/

namespace A029412.P4206085997809029362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n + (A029391 n - A029431 n)

end

end A029412.P4206085997809029362

namespace A029412

/-- `A025926(n)+A029391(n)-A029431(n)` -/
def P4206085997809029362.Spec : Prop :=
  ∀ n, P4206085997809029362.a n = A029412 n

end A029412

/-! ## A029412.P8218405848832406386

`A029377(n)+A029391(n)-A029358(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029412

/-- `A029377(n)+A029391(n)-A029358(n)` -/
def P8218405848832406386.Spec : Prop :=
  ∀ n, P8218405848832406386.a n = A029412 n

theorem P8218405848832406386.correct : P8218405848832406386.Spec := by
  intro n
  simp only [A029412]

end A029412

/-! ## A029412.P3321987392379608596

`A029377(n)+A029400(n)-A029367(n)`
-/

namespace A029412.P3321987392379608596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 n + (A029400 n - A029367 n)

end

end A029412.P3321987392379608596

namespace A029412

/-- `A029377(n)+A029400(n)-A029367(n)` -/
def P3321987392379608596.Spec : Prop :=
  ∀ n, P3321987392379608596.a n = A029412 n

end A029412

/-! ## A029412.P16290284261841915862

`A029104(A020710(n))-A029115(A020710(n))`
-/

namespace A029412.P16290284261841915862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 (A020710 n).toNat - A029115 (A020710 n).toNat

end

end A029412.P16290284261841915862

namespace A029412

/-- `A029104(A020710(n))-A029115(A020710(n))` -/
def P16290284261841915862.Spec : Prop :=
  ∀ n, P16290284261841915862.a n = A029412 n

end A029412

/-!
# A029413: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^8)*(1-x^9)).

The programs for A029413, the canonical program `A029413.P9052862419176915359` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029413 has offset 0).

The definition of A029413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029413.P9052862419176915359

`A029306(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029413

/-- `A029306(n)-a(n-3)` -/
def P9052862419176915359.Spec : Prop :=
  ∀ n, P9052862419176915359.a n = A029413 n

theorem P9052862419176915359.correct : P9052862419176915359.Spec := by
  intro n
  simp only [A029413]

end A029413

/-! ## A029413.P10615466949832994491

`A029018(n+6)-A029020(n+6)`
-/

namespace A029413.P10615466949832994491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029018 (n + 6) - A029020 (n + 6)

end

end A029413.P10615466949832994491

namespace A029413

/-- `A029018(n+6)-A029020(n+6)` -/
def P10615466949832994491.Spec : Prop :=
  ∀ n, P10615466949832994491.a n = A029413 n

end A029413

/-!
# A029414: Expansion of 1/((1-x^6)(1-x^7)(1-x^8)(1-x^10)).

The programs for A029414, the canonical program `A029414.P9882378605437634280` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029414 has offset 0).

The definition of A029414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029414.P9882378605437634280

`A029307(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029414

/-- `A029307(n)-a(n-3)` -/
def P9882378605437634280.Spec : Prop :=
  ∀ n, P9882378605437634280.a n = A029414 n

theorem P9882378605437634280.correct : P9882378605437634280.Spec := by
  intro n
  simp only [A029414]

end A029414

/-! ## A029414.P15765216090933390035

`A025909(n)+A029216(n)-A029227(n)`
-/

namespace A029414.P15765216090933390035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 n + (A029216 n - A029227 n)

end

end A029414.P15765216090933390035

namespace A029414

/-- `A025909(n)+A029216(n)-A029227(n)` -/
def P15765216090933390035.Spec : Prop :=
  ∀ n, P15765216090933390035.a n = A029414 n

end A029414

/-! ## A029414.P1040819547528511276

`A025909(n)+A029347(n)-A029360(n)`
-/

namespace A029414.P1040819547528511276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 n + (A029347 n - A029360 n)

end

end A029414.P1040819547528511276

namespace A029414

/-- `A025909(n)+A029347(n)-A029360(n)` -/
def P1040819547528511276.Spec : Prop :=
  ∀ n, P1040819547528511276.a n = A029414 n

end A029414

/-! ## A029414.P4104523618729786413

`and(A186726(A112055(n+1)), A186726(n))`
-/

namespace A029414.P4104523618729786413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186726 (A112055 (n + 1)).toNat) (A186726 n)

end

end A029414.P4104523618729786413

namespace A029414

/-- `and(A186726(A112055(n+1)), A186726(n))` -/
def P4104523618729786413.Spec : Prop :=
  ∀ n, P4104523618729786413.a n = A029414 n

end A029414

/-! ## A029414.P7049381079508843039

`A379666(A310783(n))`
-/

namespace A029414.P7049381079508843039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379666 (A310783 n).toNat

end

end A029414.P7049381079508843039

namespace A029414

/-- `A379666(A310783(n))` -/
def P7049381079508843039.Spec : Prop :=
  ∀ n, P7049381079508843039.a n = A029414 n

end A029414

/-!
# A029415: Expansion of 1/((1-x^6)(1-x^7)(1-x^8)(1-x^11)).

The programs for A029415, the canonical program `A029415.P3348494937150710083` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029415 has offset 0).

The definition of A029415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029415.P3348494937150710083

`A029308(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029415

/-- `A029308(n)-a(n-3)` -/
def P3348494937150710083.Spec : Prop :=
  ∀ n, P3348494937150710083.a n = A029415 n

theorem P3348494937150710083.correct : P3348494937150710083.Spec := by
  intro n
  simp only [A029415]

end A029415

/-! ## A029415.P547574070288630277

`A025910(n)+A029112(n)-A029119(n)`
-/

namespace A029415.P547574070288630277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025910 n + (A029112 n - A029119 n)

end

end A029415.P547574070288630277

namespace A029415

/-- `A025910(n)+A029112(n)-A029119(n)` -/
def P547574070288630277.Spec : Prop :=
  ∀ n, P547574070288630277.a n = A029415 n

end A029415

/-! ## A029415.P14536257916660001698

`A025910(n)+A029217(n)-A029228(n)`
-/

namespace A029415.P14536257916660001698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025910 n + (A029217 n - A029228 n)

end

end A029415.P14536257916660001698

namespace A029415

/-- `A025910(n)+A029217(n)-A029228(n)` -/
def P14536257916660001698.Spec : Prop :=
  ∀ n, P14536257916660001698.a n = A029415 n

end A029415

/-! ## A029415.P16472749898860004157

`A025910(n)+A029378(n)-A029395(n)`
-/

namespace A029415.P16472749898860004157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025910 n + (A029378 n - A029395 n)

end

end A029415.P16472749898860004157

namespace A029415

/-- `A025910(n)+A029378(n)-A029395(n)` -/
def P16472749898860004157.Spec : Prop :=
  ∀ n, P16472749898860004157.a n = A029415 n

end A029415

/-! ## A029415.P6636820612008926340

`A029228(n+2)-A029350(n+2)`
-/

namespace A029415.P6636820612008926340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 (n + 2) - A029350 (n + 2)

end

end A029415.P6636820612008926340

namespace A029415

/-- `A029228(n+2)-A029350(n+2)` -/
def P6636820612008926340.Spec : Prop :=
  ∀ n, P6636820612008926340.a n = A029415 n

end A029415

/-!
# A029416: Expansion of 1/((1-x^6)(1-x^7)(1-x^8)(1-x^12)).

The programs for A029416, the canonical program `A029416.P8726267304708303081` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029416 has offset 0).

The definition of A029416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029416.P8726267304708303081

`A029309(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029416

/-- `A029309(n)-a(n-3)` -/
def P8726267304708303081.Spec : Prop :=
  ∀ n, P8726267304708303081.a n = A029416 n

theorem P8726267304708303081.correct : P8726267304708303081.Spec := by
  intro n
  simp only [A029416]

end A029416

/-! ## A029416.P12270192980488979864

`A029229(n+2)-A029351(n+2)`
-/

namespace A029416.P12270192980488979864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (n + 2) - A029351 (n + 2)

end

end A029416.P12270192980488979864

namespace A029416

/-- `A029229(n+2)-A029351(n+2)` -/
def P12270192980488979864.Spec : Prop :=
  ∀ n, P12270192980488979864.a n = A029416 n

end A029416

/-! ## A029416.P6333879624095190477

`A005136(A025897(n)*A193513(n))`
-/

namespace A029416.P6333879624095190477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A025897 n * A193513 n).toNat

end

end A029416.P6333879624095190477

namespace A029416

/-- `A005136(A025897(n)*A193513(n))` -/
def P6333879624095190477.Spec : Prop :=
  ∀ n, P6333879624095190477.a n = A029416 n

end A029416

/-! ## A029416.P9022948189173178905

`A000034(A004068(n)+A000332(n))*A025897(n)`
-/

namespace A029416.P9022948189173178905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004068 n + A000332 n).toNat * A025897 n

end

end A029416.P9022948189173178905

namespace A029416

/-- `A000034(A004068(n)+A000332(n))*A025897(n)` -/
def P9022948189173178905.Spec : Prop :=
  ∀ n, P9022948189173178905.a n = A029416 n

end A029416

/-! ## A029416.P17071384693324884601

`A000034(A001592(n+1))*A025897(n)`
-/

namespace A029416.P17071384693324884601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A001592 (n + 1)).toNat * A025897 n

end

end A029416.P17071384693324884601

namespace A029416

/-- `A000034(A001592(n+1))*A025897(n)` -/
def P17071384693324884601.Spec : Prop :=
  ∀ n, P17071384693324884601.a n = A029416 n

end A029416

/-!
# A029417: Expansion of 1/((1-x^6)(1-x^7)(1-x^9)(1-x^10)).

The programs for A029417, the canonical program `A029417.P3771744636440757540` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029417 has offset 0).

The definition of A029417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029417.P3771744636440757540

`A029310(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029417

/-- `A029310(n)-a(n-3)` -/
def P3771744636440757540.Spec : Prop :=
  ∀ n, P3771744636440757540.a n = A029417 n

theorem P3771744636440757540.correct : P3771744636440757540.Spec := by
  intro n
  simp only [A029417]

end A029417

/-! ## A029417.P17338920537081526393

`A037833(A210677(abs(3-n)))`
-/

namespace A029417.P17338920537081526393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A210677 |3 - (n : ℤ)|.toNat).toNat

end

end A029417.P17338920537081526393

namespace A029417

/-- `A037833(A210677(abs(3-n)))` -/
def P17338920537081526393.Spec : Prop :=
  ∀ n, P17338920537081526393.a n = A029417 n

end A029417

/-! ## A029417.P5916857575458375903

`A025893(eq[A025887(n), A025912(n)])`
-/

namespace A029417.P5916857575458375903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029417.P5916857575458375903

namespace A029417

/-- `A025893(eq[A025887(n), A025912(n)])` -/
def P5916857575458375903.Spec : Prop :=
  ∀ n, P5916857575458375903.a n = A029417 n

end A029417

/-! ## A029417.P11767704021836676143

`A025919(∑[A062756(A163588(n+1))])`
-/

namespace A029417.P11767704021836676143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A163588 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025919 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A029417.P11767704021836676143

namespace A029417

/-- `A025919(∑[A062756(A163588(n+1))])` -/
def P11767704021836676143.Spec : Prop :=
  ∀ n, P11767704021836676143.a n = A029417 n

end A029417

/-! ## A029417.P774097976185120640

`A087116(or(A306400(n+1), A364132(n+4)))`
-/

namespace A029417.P774097976185120640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (Int.lor (A306400 (n + 1)) (A364132 (n + 4))).toNat

end

end A029417.P774097976185120640

namespace A029417

/-- `A087116(or(A306400(n+1), A364132(n+4)))` -/
def P774097976185120640.Spec : Prop :=
  ∀ n, P774097976185120640.a n = A029417 n

end A029417

/-!
# A029418: Expansion of 1/((1-x^6)(1-x^7)(1-x^9)(1-x^11)).

The programs for A029418, the canonical program `A029418.P10273884798273690927` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029418 has offset 0).

The definition of A029418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029418.P10273884798273690927

`A029311(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029418

/-- `A029311(n)-a(n-3)` -/
def P10273884798273690927.Spec : Prop :=
  ∀ n, P10273884798273690927.a n = A029418 n

theorem P10273884798273690927.correct : P10273884798273690927.Spec := by
  intro n
  simp only [A029418]

end A029418

/-! ## A029418.P11952876599419122937

`A029215(n)-A029437(2*n+3)`
-/

namespace A029418.P11952876599419122937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029215 n - A029437 (2 * n + 3)

end

end A029418.P11952876599419122937

namespace A029418

/-- `A029215(n)-A029437(2*n+3)` -/
def P11952876599419122937.Spec : Prop :=
  ∀ n, P11952876599419122937.a n = A029418 n

end A029418

/-!
# A029419: Expansion of 1/((1-x^6)(1-x^7)(1-x^9)(1-x^12)).

The programs for A029419, the canonical program `A029419.P717126810226042508` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029419 has offset 0).

The definition of A029419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029419.P717126810226042508

`A029312(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029419

/-- `A029312(n)-a(n-3)` -/
def P717126810226042508.Spec : Prop :=
  ∀ n, P717126810226042508.a n = A029419 n

theorem P717126810226042508.correct : P717126810226042508.Spec := by
  intro n
  simp only [A029419]

end A029419

/-! ## A029419.P3111093517489099191

`A262448(A340099(n+1))+A025898(n)`
-/

namespace A029419.P3111093517489099191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262448 (A340099 (n + 1)).toNat + A025898 n

end

end A029419.P3111093517489099191

namespace A029419

/-- `A262448(A340099(n+1))+A025898(n)` -/
def P3111093517489099191.Spec : Prop :=
  ∀ n, P3111093517489099191.a n = A029419 n

end A029419

/-! ## A029419.P12892012246098320507

`C(A341778(n+10), A160096(A055999(3*n+4)))`
-/

namespace A029419.P12892012246098320507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A341778 (n + 10)).toNat (A160096 (A055999 (3 * n + 4)).toNat).toNat

end

end A029419.P12892012246098320507

namespace A029419

/-- `C(A341778(n+10), A160096(A055999(3*n+4)))` -/
def P12892012246098320507.Spec : Prop :=
  ∀ n, (P12892012246098320507.a n : ℤ) = A029419 n

end A029419

/-!
# A029420: Expansion of 1/((1-x^6)(1-x^7)(1-x^10)(1-x^11)).

The programs for A029420, the canonical program `A029420.P6798218575498447443` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029420 has offset 0).

The definition of A029420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029420.P6798218575498447443

`A029313(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029420

/-- `A029313(n)-a(n-3)` -/
def P6798218575498447443.Spec : Prop :=
  ∀ n, P6798218575498447443.a n = A029420 n

theorem P6798218575498447443.correct : P6798218575498447443.Spec := by
  intro n
  simp only [A029420]

end A029420

/-! ## A029420.P7905186706072738660

`A029441(abs(6-n))+A029441(n)`
-/

namespace A029420.P7905186706072738660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029441 |6 - (n : ℤ)|.toNat + A029441 n

end

end A029420.P7905186706072738660

namespace A029420

/-- `A029441(abs(6-n))+A029441(n)` -/
def P7905186706072738660.Spec : Prop :=
  ∀ n, P7905186706072738660.a n = A029420 n

end A029420

/-! ## A029420.P3771197189828830839

`A025915(n)+A029380(n)-A029400(n)`
-/

namespace A029420.P3771197189828830839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 n + (A029380 n - A029400 n)

end

end A029420.P3771197189828830839

namespace A029420

/-- `A025915(n)+A029380(n)-A029400(n)` -/
def P3771197189828830839.Spec : Prop :=
  ∀ n, P3771197189828830839.a n = A029420 n

end A029420

/-! ## A029420.P251857827462497254

`∑[A025885(n+5)-A025899(n+5)]`
-/

namespace A029420.P251857827462497254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025885 (n + 5) - A025899 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029420.P251857827462497254

namespace A029420

/-- `∑[A025885(n+5)-A025899(n+5)]` -/
def P251857827462497254.Spec : Prop :=
  ∀ n, P251857827462497254.a n = A029420 n

end A029420

/-! ## A029420.P11499968279652861720

`A087116(A146574(n+2)%A299972(n+1))`
-/

namespace A029420.P11499968279652861720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (Int.tmod (A146574 (n + 2)) (A299972 (n + 1))).toNat

end

end A029420.P11499968279652861720

namespace A029420

/-- `A087116(A146574(n+2)%A299972(n+1))` -/
def P11499968279652861720.Spec : Prop :=
  ∀ n, P11499968279652861720.a n = A029420 n

end A029420

/-!
# A029421: Expansion of 1/((1-x^6)(1-x^7)(1-x^10)(1-x^12)).

The programs for A029421, the canonical program `A029421.P13299800104140675938` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029421 has offset 0).

The definition of A029421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029421.P13299800104140675938

`A029314(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029421

/-- `A029314(n)-a(n-3)` -/
def P13299800104140675938.Spec : Prop :=
  ∀ n, P13299800104140675938.a n = A029421 n

theorem P13299800104140675938.correct : P13299800104140675938.Spec := by
  intro n
  simp only [A029421]

end A029421

/-! ## A029421.P11093831513323215306

`A025916(n)+A029351(n)-A029367(n)`
-/

namespace A029421.P11093831513323215306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025916 n + (A029351 n - A029367 n)

end

end A029421.P11093831513323215306

namespace A029421

/-- `A025916(n)+A029351(n)-A029367(n)` -/
def P11093831513323215306.Spec : Prop :=
  ∀ n, P11093831513323215306.a n = A029421 n

end A029421

/-! ## A029421.P12627312819770144381

`lcm(A025899(n), A061347(A015128(n)))`
-/

namespace A029421.P12627312819770144381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025899 n) (A061347 (A015128 n).toNat)

end

end A029421.P12627312819770144381

namespace A029421

/-- `lcm(A025899(n), A061347(A015128(n)))` -/
def P12627312819770144381.Spec : Prop :=
  ∀ n, (P12627312819770144381.a n : ℤ) = A029421 n

end A029421

/-! ## A029421.P8163767135336275289

`A124766(A226371(n)%A361160(3*n+1))`
-/

namespace A029421.P8163767135336275289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (Int.tmod (A226371 n) (A361160 (3 * n + 1))).toNat

end

end A029421.P8163767135336275289

namespace A029421

/-- `A124766(A226371(n)%A361160(3*n+1))` -/
def P8163767135336275289.Spec : Prop :=
  ∀ n, P8163767135336275289.a n = A029421 n

end A029421

/-! ## A029421.P11317476530436668732

`and(A025849(n), A121653(A091087(n)))`
-/

namespace A029421.P11317476530436668732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025849 n) (A121653 (A091087 n).toNat)

end

end A029421.P11317476530436668732

namespace A029421

/-- `and(A025849(n), A121653(A091087(n)))` -/
def P11317476530436668732.Spec : Prop :=
  ∀ n, P11317476530436668732.a n = A029421 n

end A029421

/-!
# A029422: Expansion of 1/((1-x^6)(1-x^7)(1-x^11)(1-x^12)).

The programs for A029422, the canonical program `A029422.P14037114085577055039` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029422 has offset 0).

The definition of A029422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029422.P14037114085577055039

`A029315(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029422

/-- `A029315(n)-a(n-3)` -/
def P14037114085577055039.Spec : Prop :=
  ∀ n, P14037114085577055039.a n = A029422 n

theorem P14037114085577055039.correct : P14037114085577055039.Spec := by
  intro n
  simp only [A029422]

end A029422

/-! ## A029422.P1207539531550790150

`A025917(n)+A029090(n)-A029094(n)`
-/

namespace A029422.P1207539531550790150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025917 n + (A029090 n - A029094 n)

end

end A029422.P1207539531550790150

namespace A029422

/-- `A025917(n)+A029090(n)-A029094(n)` -/
def P1207539531550790150.Spec : Prop :=
  ∀ n, P1207539531550790150.a n = A029422 n

end A029422

/-! ## A029422.P11525765803977731946

`A025917(n)+A029116(n)-A029126(n)`
-/

namespace A029422.P11525765803977731946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025917 n + (A029116 n - A029126 n)

end

end A029422.P11525765803977731946

namespace A029422

/-- `A025917(n)+A029116(n)-A029126(n)` -/
def P11525765803977731946.Spec : Prop :=
  ∀ n, P11525765803977731946.a n = A029422 n

end A029422

/-! ## A029422.P10486296369089783636

`A025917(n)+A029382(n)-A029402(n)`
-/

namespace A029422.P10486296369089783636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025917 n + (A029382 n - A029402 n)

end

end A029422.P10486296369089783636

namespace A029422

/-- `A025917(n)+A029382(n)-A029402(n)` -/
def P10486296369089783636.Spec : Prop :=
  ∀ n, P10486296369089783636.a n = A029422 n

end A029422

/-! ## A029422.P12537815377364086226

`or(A025901(n), A089311(A174449(n)))`
-/

namespace A029422.P12537815377364086226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025901 n) (A089311 (A174449 n).toNat)

end

end A029422.P12537815377364086226

namespace A029422

/-- `or(A025901(n), A089311(A174449(n)))` -/
def P12537815377364086226.Spec : Prop :=
  ∀ n, P12537815377364086226.a n = A029422 n

end A029422

/-!
# A029423: Expansion of 1/((1-x^6)(1-x^8)(1-x^9)(1-x^10)).

The programs for A029423, the canonical program `A029423.P3269653636500518624` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029423 has offset 0).

The definition of A029423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029423.P3269653636500518624

`A029316(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029423

/-- `A029316(n)-a(n-3)` -/
def P3269653636500518624.Spec : Prop :=
  ∀ n, P3269653636500518624.a n = A029423 n

theorem P3269653636500518624.correct : P3269653636500518624.Spec := by
  intro n
  simp only [A029423]

end A029423

/-! ## A029423.P17346961701129683442

`A025918(n)+A029221(n)-A029236(n)`
-/

namespace A029423.P17346961701129683442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025918 n + (A029221 n - A029236 n)

end

end A029423.P17346961701129683442

namespace A029423

/-- `A025918(n)+A029221(n)-A029236(n)` -/
def P17346961701129683442.Spec : Prop :=
  ∀ n, P17346961701129683442.a n = A029423 n

end A029423

/-! ## A029423.P17696704141072769520

`A029236(n+2)-A029354(n+2)`
-/

namespace A029423.P17696704141072769520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (n + 2) - A029354 (n + 2)

end

end A029423.P17696704141072769520

namespace A029423

/-- `A029236(n+2)-A029354(n+2)` -/
def P17696704141072769520.Spec : Prop :=
  ∀ n, P17696704141072769520.a n = A029423 n

end A029423

/-! ## A029423.P1861908290491630572

`A029236(n+2)+A029221(n)-A029188(n+2)`
-/

namespace A029423.P1861908290491630572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (n + 2) + (A029221 n - A029188 (n + 2))

end

end A029423.P1861908290491630572

namespace A029423

/-- `A029236(n+2)+A029221(n)-A029188(n+2)` -/
def P1861908290491630572.Spec : Prop :=
  ∀ n, P1861908290491630572.a n = A029423 n

end A029423

/-! ## A029423.P2577548226497957135

`A029188(n+4)-A029219(n+4)`
-/

namespace A029423.P2577548226497957135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029188 (n + 4) - A029219 (n + 4)

end

end A029423.P2577548226497957135

namespace A029423

/-- `A029188(n+4)-A029219(n+4)` -/
def P2577548226497957135.Spec : Prop :=
  ∀ n, P2577548226497957135.a n = A029423 n

end A029423

/-!
# A029424: Expansion of 1/((1-x^6)(1-x^8)(1-x^9)(1-x^11)).

The programs for A029424, the canonical program `A029424.P3660127937913149376` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029424 has offset 0).

The definition of A029424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029424.P4790873073052549497

`A029317(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029424.P4790873073052549497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029317 n - a (n - 3)

end

end A029424.P4790873073052549497

namespace A029424

/-- `A029317(n)-a(n-3)` -/
def P4790873073052549497.Spec : Prop :=
  ∀ n, P4790873073052549497.a n = A029424 n

end A029424

/-! ## A029424.P3660127937913149376

`A029355(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029424

/-- `A029355(n)-a(n-4)` -/
def P3660127937913149376.Spec : Prop :=
  ∀ n, P3660127937913149376.a n = A029424 n

theorem P3660127937913149376.correct : P3660127937913149376.Spec := by
  intro n
  simp only [A029424]

end A029424

/-! ## A029424.P9710175607503298613

`A366851(A313157(n)-A353849(3*n))`
-/

namespace A029424.P9710175607503298613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366851 (A313157 n - A353849 (3 * n)).toNat

end

end A029424.P9710175607503298613

namespace A029424

/-- `A366851(A313157(n)-A353849(3*n))` -/
def P9710175607503298613.Spec : Prop :=
  ∀ n, P9710175607503298613.a n = A029424 n

end A029424

/-! ## A029424.P13239915707723966458

`A025893(A233931(record[A131308(n)]))`
-/

namespace A029424.P13239915707723966458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (A233931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A029424.P13239915707723966458

namespace A029424

/-- `A025893(A233931(record[A131308(n)]))` -/
def P13239915707723966458.Spec : Prop :=
  ∀ n, P13239915707723966458.a n = A029424 n

end A029424

/-! ## A029424.P11491442361019802801

`A103221(n)-A262257(A134951(n+3))`
-/

namespace A029424.P11491442361019802801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n - A262257 (A134951 (n + 3)).toNat

end

end A029424.P11491442361019802801

namespace A029424

/-- `A103221(n)-A262257(A134951(n+3))` -/
def P11491442361019802801.Spec : Prop :=
  ∀ n, P11491442361019802801.a n = A029424 n

end A029424

/-!
# A029425: Expansion of 1/((1-x^6)(1-x^8)(1-x^9)(1-x^12)).

The programs for A029425, the canonical program `A029425.P9386777479452355456` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029425 has offset 0).

The definition of A029425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029425.P9386777479452355456

`A029318(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029425

/-- `A029318(n)-a(n-3)` -/
def P9386777479452355456.Spec : Prop :=
  ∀ n, P9386777479452355456.a n = A029425 n

theorem P9386777479452355456.correct : P9386777479452355456.Spec := by
  intro n
  simp only [A029425]

end A029425

/-! ## A029425.P14767188293981823905

`A288165(2-A152832(n)+n)`
-/

namespace A029425.P14767188293981823905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (2 - A152832 n + (n : ℤ)).toNat

end

end A029425.P14767188293981823905

namespace A029425

/-- `A288165(2-A152832(n)+n)` -/
def P14767188293981823905.Spec : Prop :=
  ∀ n, P14767188293981823905.a n = A029425 n

end A029425

/-! ## A029425.P17571381752741027408

`A288165(2-(A152832(n)-n))`
-/

namespace A029425.P17571381752741027408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (2 - (A152832 n - (n : ℤ))).toNat

end

end A029425.P17571381752741027408

namespace A029425

/-- `A288165(2-(A152832(n)-n))` -/
def P17571381752741027408.Spec : Prop :=
  ∀ n, P17571381752741027408.a n = A029425 n

end A029425

/-! ## A029425.P5005636182478957692

`A288165(A168411(n+1)-A004767(n))`
-/

namespace A029425.P5005636182478957692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A168411 (n + 1) - A004767 n).toNat

end

end A029425.P5005636182478957692

namespace A029425

/-- `A288165(A168411(n+1)-A004767(n))` -/
def P5005636182478957692.Spec : Prop :=
  ∀ n, P5005636182478957692.a n = A029425 n

end A029425

/-! ## A029425.P13178442164590585610

`A288165(A168195(n+1)-A028242(n))`
-/

namespace A029425.P13178442164590585610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A168195 (n + 1) - A028242 n).toNat

end

end A029425.P13178442164590585610

namespace A029425

/-- `A288165(A168195(n+1)-A028242(n))` -/
def P13178442164590585610.Spec : Prop :=
  ∀ n, P13178442164590585610.a n = A029425 n

end A029425

/-! ## A029425.P9565082795000615237

`A288165(A168195(n+1)-∑[A280193(n)])`
-/

namespace A029425.P9565082795000615237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A168195 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A029425.P9565082795000615237

namespace A029425

/-- `A288165(A168195(n+1)-∑[A280193(n)])` -/
def P9565082795000615237.Spec : Prop :=
  ∀ n, P9565082795000615237.a n = A029425 n

end A029425

/-! ## A029425.P11010030514268891964

`A026810(A052938(A008611(n))+A049347(n))`
-/

namespace A029425.P11010030514268891964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A052938 (A008611 n).toNat + A049347 n).toNat

end

end A029425.P11010030514268891964

namespace A029425

/-- `A026810(A052938(A008611(n))+A049347(n))` -/
def P11010030514268891964.Spec : Prop :=
  ∀ n, P11010030514268891964.a n = A029425 n

end A029425

/-! ## A029425.P7551586357396394769

`A288165(A152832(n+1)+1)`
-/

namespace A029425.P7551586357396394769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A152832 (n + 1) + 1).toNat

end

end A029425.P7551586357396394769

namespace A029425

/-- `A288165(A152832(n+1)+1)` -/
def P7551586357396394769.Spec : Prop :=
  ∀ n, P7551586357396394769.a n = A029425 n

end A029425

/-! ## A029425.P16124375230426049917

`A288165(A280193(n+2)+A028242(n)+1)`
-/

namespace A029425.P16124375230426049917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A280193 (n + 2) + (A028242 n + 1)).toNat

end

end A029425.P16124375230426049917

namespace A029425

/-- `A288165(A280193(n+2)+A028242(n)+1)` -/
def P16124375230426049917.Spec : Prop :=
  ∀ n, P16124375230426049917.a n = A029425 n

end A029425

/-! ## A029425.P1965632337861486902

`A288165(A152832(n+3))`
-/

namespace A029425.P1965632337861486902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A152832 (n + 3)).toNat

end

end A029425.P1965632337861486902

namespace A029425

/-- `A288165(A152832(n+3))` -/
def P1965632337861486902.Spec : Prop :=
  ∀ n, P1965632337861486902.a n = A029425 n

end A029425

/-! ## A029425.P14136731907214854989

`A029223(A020715(n))-A029238(A020715(n))`
-/

namespace A029425.P14136731907214854989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029223 (A020715 n).toNat - A029238 (A020715 n).toNat

end

end A029425.P14136731907214854989

namespace A029425

/-- `A029223(A020715(n))-A029238(A020715(n))` -/
def P14136731907214854989.Spec : Prop :=
  ∀ n, P14136731907214854989.a n = A029425 n

end A029425

/-!
# A029426: Expansion of 1/((1-x^6)(1-x^8)(1-x^10)(1-x^11)).

The programs for A029426, the canonical program `A029426.P5316000396173003913` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029426 has offset 0).

The definition of A029426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029426.P5316000396173003913

`A029319(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029426

/-- `A029319(n)-a(n-3)` -/
def P5316000396173003913.Spec : Prop :=
  ∀ n, P5316000396173003913.a n = A029426 n

theorem P5316000396173003913.correct : P5316000396173003913.Spec := by
  intro n
  simp only [A029426]

end A029426

/-! ## A029426.P2204310505922962625

`A025893(A003188(n)%A235197(n+1))`
-/

namespace A029426.P2204310505922962625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (Int.tmod (A003188 n) (A235197 (n + 1))).toNat

end

end A029426.P2204310505922962625

namespace A029426

/-- `A025893(A003188(n)%A235197(n+1))` -/
def P2204310505922962625.Spec : Prop :=
  ∀ n, P2204310505922962625.a n = A029426 n

end A029426

/-! ## A029426.P1789198973815338886

`A025893(A003188(n))%A360556(3*(n+1))`
-/

namespace A029426.P1789198973815338886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025893 (A003188 n).toNat) (A360556 (3 * (n + 1)))

end

end A029426.P1789198973815338886

namespace A029426

/-- `A025893(A003188(n))%A360556(3*(n+1))` -/
def P1789198973815338886.Spec : Prop :=
  ∀ n, P1789198973815338886.a n = A029426 n

end A029426

/-! ## A029426.P12973739481861201668

`A183054(3*n+2)%A064989(A183041(n))`
-/

namespace A029426.P12973739481861201668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183054 (3 * n + 2)) (A064989 (A183041 n).toNat)

end

end A029426.P12973739481861201668

namespace A029426

/-- `A183054(3*n+2)%A064989(A183041(n))` -/
def P12973739481861201668.Spec : Prop :=
  ∀ n, P12973739481861201668.a n = A029426 n

end A029426

/-! ## A029426.P5815427355490555589

`A025893(A003188(n))%A006530(A022117(n))`
-/

namespace A029426.P5815427355490555589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025893 (A003188 n).toNat) (A006530 (A022117 n).toNat)

end

end A029426.P5815427355490555589

namespace A029426

/-- `A025893(A003188(n))%A006530(A022117(n))` -/
def P5815427355490555589.Spec : Prop :=
  ∀ n, P5815427355490555589.a n = A029426 n

end A029426

/-!
# A029427: Expansion of 1/((1-x^6)(1-x^8)(1-x^11)(1-x^12)).

The programs for A029427, the canonical program `A029427.P7393202542857614358` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029427 has offset 0).

The definition of A029427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029427.P12593004439383509952

`A029321(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029427.P12593004439383509952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029321 n - a (n - 3)

end

end A029427.P12593004439383509952

namespace A029427

/-- `A029321(n)-a(n-3)` -/
def P12593004439383509952.Spec : Prop :=
  ∀ n, P12593004439383509952.a n = A029427 n

end A029427

/-! ## A029427.P14549983276387336404

`A025922(n)+A029225(n)-A029240(n)`
-/

namespace A029427.P14549983276387336404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 n + (A029225 n - A029240 n)

end

end A029427.P14549983276387336404

namespace A029427

/-- `A025922(n)+A029225(n)-A029240(n)` -/
def P14549983276387336404.Spec : Prop :=
  ∀ n, P14549983276387336404.a n = A029427 n

end A029427

/-! ## A029427.P17859464785512132206

`A025922(n)+A029386(n)-A029408(n)`
-/

namespace A029427.P17859464785512132206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 n + (A029386 n - A029408 n)

end

end A029427.P17859464785512132206

namespace A029427

/-- `A025922(n)+A029386(n)-A029408(n)` -/
def P17859464785512132206.Spec : Prop :=
  ∀ n, P17859464785512132206.a n = A029427 n

end A029427

/-! ## A029427.P7393202542857614358

`A029225(n)+A029444(n)-A029238(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029427

/-- `A029225(n)+A029444(n)-A029238(n)` -/
def P7393202542857614358.Spec : Prop :=
  ∀ n, P7393202542857614358.a n = A029427 n

theorem P7393202542857614358.correct : P7393202542857614358.Spec := by
  intro n
  simp only [A029427]

end A029427

/-! ## A029427.P9892460822260166461

`A029386(n)+A029437(n)-A029395(n)`
-/

namespace A029427.P9892460822260166461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 n + (A029437 n - A029395 n)

end

end A029427.P9892460822260166461

namespace A029427

/-- `A029386(n)+A029437(n)-A029395(n)` -/
def P9892460822260166461.Spec : Prop :=
  ∀ n, P9892460822260166461.a n = A029427 n

end A029427

/-! ## A029427.P5453128288932159308

`A029225(n+6)-A029240(n+6)`
-/

namespace A029427.P5453128288932159308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (n + 6) - A029240 (n + 6)

end

end A029427.P5453128288932159308

namespace A029427

/-- `A029225(n+6)-A029240(n+6)` -/
def P5453128288932159308.Spec : Prop :=
  ∀ n, P5453128288932159308.a n = A029427 n

end A029427

/-!
# A029428: Expansion of 1/((1-x^6)(1-x^9)(1-x^10)(1-x^11)).

The programs for A029428, the canonical program `A029428.P15062183357670920441` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029428 has offset 0).

The definition of A029428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029428.P13532207811420204318

`A029322(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029428.P13532207811420204318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029322 n - a (n - 3)

end

end A029428.P13532207811420204318

namespace A029428

/-- `A029322(n)-a(n-3)` -/
def P13532207811420204318.Spec : Prop :=
  ∀ n, P13532207811420204318.a n = A029428 n

end A029428

/-! ## A029428.P6208019505673616276

`A025905(n)+A029113(n)-A029114(n)`
-/

namespace A029428.P6208019505673616276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 n + (A029113 n - A029114 n)

end

end A029428.P6208019505673616276

namespace A029428

/-- `A025905(n)+A029113(n)-A029114(n)` -/
def P6208019505673616276.Spec : Prop :=
  ∀ n, P6208019505673616276.a n = A029428 n

end A029428

/-! ## A029428.P15062183357670920441

`A025906(n)+A029114(n)-A029115(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029428

/-- `A025906(n)+A029114(n)-A029115(n)` -/
def P15062183357670920441.Spec : Prop :=
  ∀ n, P15062183357670920441.a n = A029428 n

theorem P15062183357670920441.correct : P15062183357670920441.Spec := by
  intro n
  simp only [A029428]

end A029428

/-! ## A029428.P237255079314912689

`A025924(n)+A029388(n)-A029411(n)`
-/

namespace A029428.P237255079314912689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 n + (A029388 n - A029411 n)

end

end A029428.P237255079314912689

namespace A029428

/-- `A025924(n)+A029388(n)-A029411(n)` -/
def P237255079314912689.Spec : Prop :=
  ∀ n, P237255079314912689.a n = A029428 n

end A029428

/-! ## A029428.P7014228140227952159

`A029113(n)-A029376(A020742(n))`
-/

namespace A029428.P7014228140227952159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029113 n - A029376 (A020742 n).toNat

end

end A029428.P7014228140227952159

namespace A029428

/-- `A029113(n)-A029376(A020742(n))` -/
def P7014228140227952159.Spec : Prop :=
  ∀ n, P7014228140227952159.a n = A029428 n

end A029428

/-! ## A029428.P8414434768348484332

`∑[A025904(n)]-A029376(A020742(n))`
-/

namespace A029428.P8414434768348484332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029376 (A020742 n).toNat

end

end A029428.P8414434768348484332

namespace A029428

/-- `∑[A025904(n)]-A029376(A020742(n))` -/
def P8414434768348484332.Spec : Prop :=
  ∀ n, P8414434768348484332.a n = A029428 n

end A029428

/-!
# A029429: Expansion of 1/((1-x^6)(1-x^9)(1-x^10)(1-x^12)).

The programs for A029429, the canonical program `A029429.P6125197273790252985` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029429 has offset 0).

The definition of A029429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029429.P6125197273790252985

`A029323(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029429

/-- `A029323(n)-a(n-3)` -/
def P6125197273790252985.Spec : Prop :=
  ∀ n, P6125197273790252985.a n = A029429 n

theorem P6125197273790252985.correct : P6125197273790252985.Spec := by
  intro n
  simp only [A029429]

end A029429

/-! ## A029429.P4294796976788192659

`A029430(A064429(n)%A200327(n+1)²)`
-/

namespace A029429.P4294796976788192659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029430 (Int.tmod (A064429 n) (A200327 (n + 1) ^ 2)).toNat

end

end A029429.P4294796976788192659

namespace A029429

/-- `A029430(A064429(n)%A200327(n+1)²)` -/
def P4294796976788192659.Spec : Prop :=
  ∀ n, P4294796976788192659.a n = A029429 n

end A029429

/-! ## A029429.P7863262796841908456

`xor(A321378(n), A340988(A193092(n)))`
-/

namespace A029429.P7863262796841908456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A321378 n) (A340988 ((A193092 n).toNat + 91))

end

end A029429.P7863262796841908456

namespace A029429

/-- `xor(A321378(n), A340988(A193092(n)))` -/
def P7863262796841908456.Spec : Prop :=
  ∀ n, P7863262796841908456.a n = A029429 n

end A029429

/-! ## A029429.P7868625240812329107

`A029430(A064429(n)%A216560(n+1))`
-/

namespace A029429.P7868625240812329107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029430 (Int.tmod (A064429 n) (A216560 (n + 1))).toNat

end

end A029429.P7868625240812329107

namespace A029429

/-- `A029430(A064429(n)%A216560(n+1))` -/
def P7868625240812329107.Spec : Prop :=
  ∀ n, P7868625240812329107.a n = A029429 n

end A029429

/-! ## A029429.P6983264448928402297

`A214772(A022998(n)%A216560(n+1))`
-/

namespace A029429.P6983264448928402297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (Int.tmod (A022998 n) (A216560 (n + 1))).toNat

end

end A029429.P6983264448928402297

namespace A029429

/-- `A214772(A022998(n)%A216560(n+1))` -/
def P6983264448928402297.Spec : Prop :=
  ∀ n, P6983264448928402297.a n = A029429 n

end A029429

/-!
# A029430: Expansion of 1/((1-x^6)(1-x^9)(1-x^11)(1-x^12)).

The programs for A029430, the canonical program `A029430.P1090642862795637503` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029430 has offset 0).

The definition of A029430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029430.P8396942027188015001

`A029324(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029430.P8396942027188015001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029324 n - a (n - 3)

end

end A029430.P8396942027188015001

namespace A029430

/-- `A029324(n)-a(n-3)` -/
def P8396942027188015001.Spec : Prop :=
  ∀ n, P8396942027188015001.a n = A029430 n

end A029430

/-! ## A029430.P3768104313153387871

`A025907(n)+A029302(n)-A029305(n)`
-/

namespace A029430.P3768104313153387871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 n + (A029302 n - A029305 n)

end

end A029430.P3768104313153387871

namespace A029430

/-- `A025907(n)+A029302(n)-A029305(n)` -/
def P3768104313153387871.Spec : Prop :=
  ∀ n, P3768104313153387871.a n = A029430 n

end A029430

/-! ## A029430.P13600444832410405585

`A025925(n)+A029389(n)-A029411(n)`
-/

namespace A029430.P13600444832410405585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n + (A029389 n - A029411 n)

end

end A029430.P13600444832410405585

namespace A029430

/-- `A025925(n)+A029389(n)-A029411(n)` -/
def P13600444832410405585.Spec : Prop :=
  ∀ n, P13600444832410405585.a n = A029430 n

end A029430

/-! ## A029430.P1090642862795637503

`A029114(n)+A029389(n)-A029102(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029430

/-- `A029114(n)+A029389(n)-A029102(n)` -/
def P1090642862795637503.Spec : Prop :=
  ∀ n, P1090642862795637503.a n = A029430 n

theorem P1090642862795637503.correct : P1090642862795637503.Spec := by
  intro n
  simp only [A029430]

end A029430

/-! ## A029430.P8567679503519394733

`A029376(n)+A029389(n)-A029346(n)`
-/

namespace A029430.P8567679503519394733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 n + (A029389 n - A029346 n)

end

end A029430.P8567679503519394733

namespace A029430

/-- `A029376(n)+A029389(n)-A029346(n)` -/
def P8567679503519394733.Spec : Prop :=
  ∀ n, P8567679503519394733.a n = A029430 n

end A029430

/-!
# A029431: Expansion of 1/((1-x^6)(1-x^10)(1-x^11)(1-x^12)).

The programs for A029431, the canonical program `A029431.P15634929436894288519` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029431 has offset 0).

The definition of A029431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029431.P9182584579744413673

`A029325(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029431.P9182584579744413673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029325 n - a (n - 3)

end

end A029431.P9182584579744413673

namespace A029431

/-- `A029325(n)-a(n-3)` -/
def P9182584579744413673.Spec : Prop :=
  ∀ n, P9182584579744413673.a n = A029431 n

end A029431

/-! ## A029431.P15634929436894288519

`A025907(n)+A029224(n)-A029225(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029431

/-- `A025907(n)+A029224(n)-A029225(n)` -/
def P15634929436894288519.Spec : Prop :=
  ∀ n, P15634929436894288519.a n = A029431 n

theorem P15634929436894288519.correct : P15634929436894288519.Spec := by
  intro n
  simp only [A029431]

end A029431

/-! ## A029431.P10954090328563189578

`A025926(n)+A029358(n)-A029377(n)`
-/

namespace A029431.P10954090328563189578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n + (A029358 n - A029377 n)

end

end A029431.P10954090328563189578

namespace A029431

/-- `A025926(n)+A029358(n)-A029377(n)` -/
def P10954090328563189578.Spec : Prop :=
  ∀ n, P10954090328563189578.a n = A029431 n

end A029431

/-! ## A029431.P18442083205242785987

`A025926(n)+A029391(n)-A029412(n)`
-/

namespace A029431.P18442083205242785987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n + (A029391 n - A029412 n)

end

end A029431.P18442083205242785987

namespace A029431

/-- `A025926(n)+A029391(n)-A029412(n)` -/
def P18442083205242785987.Spec : Prop :=
  ∀ n, P18442083205242785987.a n = A029431 n

end A029431

/-! ## A029431.P8254719878986836984

`A029358(n)+A029445(n)-A029372(n)`
-/

namespace A029431.P8254719878986836984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029358 n + (A029445 n - A029372 n)

end

end A029431.P8254719878986836984

namespace A029431

/-- `A029358(n)+A029445(n)-A029372(n)` -/
def P8254719878986836984.Spec : Prop :=
  ∀ n, P8254719878986836984.a n = A029431 n

end A029431

/-! ## A029431.P15985684273474967601

`A029244(n+4)+A029244(n)-A029225(n+4)`
-/

namespace A029431.P15985684273474967601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (n + 4) + (A029244 n - A029225 (n + 4))

end

end A029431.P15985684273474967601

namespace A029431

/-- `A029244(n+4)+A029244(n)-A029225(n+4)` -/
def P15985684273474967601.Spec : Prop :=
  ∀ n, P15985684273474967601.a n = A029431 n

end A029431

/-!
# A029432: Expansion of 1/((1-x^7)*(1-x^8)*(1-x^9)*(1-x^10)).

The programs for A029432, the canonical program `A029432.P8426870499552025551` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029432 has offset 0).

The definition of A029432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029432.P8426870499552025551

`∑[A025818(n+7)-A025821(n+7)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029432

/-- `∑[A025818(n+7)-A025821(n+7)]` -/
def P8426870499552025551.Spec : Prop :=
  ∀ n, P8426870499552025551.a n = A029432 n

theorem P8426870499552025551.correct : P8426870499552025551.Spec := by
  intro n
  simp only [A029432]

end A029432

/-!
# A029433: Expansion of 1/((1-x^7)(1-x^8)(1-x^9)(1-x^11)).

The programs for A029433, there is no canonical definition to state claims against.
-/

/-! ## A029433.P4381559586409302047

`A143262(gcd(A053742(n), A243823(n+1)))`
-/

namespace A029433.P4381559586409302047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143262 (Int.gcd (A053742 n) (A243823 (n + 1)))

end

end A029433.P4381559586409302047

/-! ## A029433.P13839882880351274290

`A029443(eq[A161313(n+1), A161314(n+1)])`
-/

namespace A029433.P13839882880351274290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029443 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029433.P13839882880351274290

/-! ## A029433.P16527770079758242183

`A025868(n)%A007318(A236108(n+1))`
-/

namespace A029433.P16527770079758242183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025868 n) (A007318 (A236108 (n + 1)).toNat)

end

end A029433.P16527770079758242183

/-! ## A029433.P2140811228480778102

`A286520(n+2)%A007318(A236108(n+1))`
-/

namespace A029433.P2140811228480778102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286520 (n + 2)) (A007318 (A236108 (n + 1)).toNat)

end

end A029433.P2140811228480778102

/-! ## A029433.P2387706949107586624

`C(A000010(n+1), n)-A244895(A123438(n+2))`
-/

namespace A029433.P2387706949107586624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000010 (n + 1)).toNat n : ℤ) - A244895 (A123438 (n + 2)).toNat

end

end A029433.P2387706949107586624

/-!
# A029434: Expansion of 1/((1-x^7)(1-x^8)(1-x^9)(1-x^12)).

The programs for A029434, the canonical program `A029434.P6149917277553803081` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029434 has offset 0).

The definition of A029434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029434.P6149917277553803081

`A029365(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029434

/-- `A029365(n)-a(n-4)` -/
def P6149917277553803081.Spec : Prop :=
  ∀ n, P6149917277553803081.a n = A029434 n

theorem P6149917277553803081.correct : P6149917277553803081.Spec := by
  intro n
  simp only [A029434]

end A029434

/-! ## A029434.P11423849346005377121

`A025427(A029416(n+6)*A104667(n+7))`
-/

namespace A029434.P11423849346005377121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A029416 (n + 6) * A104667 (n + 7)).toNat

end

end A029434.P11423849346005377121

namespace A029434

/-- `A025427(A029416(n+6)*A104667(n+7))` -/
def P11423849346005377121.Spec : Prop :=
  ∀ n, P11423849346005377121.a n = A029434 n

end A029434

/-!
# A029435: Expansion of 1/((1-x^7)(1-x^8)(1-x^10)(1-x^11)).

The programs for A029435, the canonical program `A029435.P8450062844158075990` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029435 has offset 0).

The definition of A029435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029435.P14347734510777564381

`A025921(n)+A029124(n)-A029130(n)`
-/

namespace A029435.P14347734510777564381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 n + (A029124 n - A029130 n)

end

end A029435.P14347734510777564381

namespace A029435

/-- `A025921(n)+A029124(n)-A029130(n)` -/
def P14347734510777564381.Spec : Prop :=
  ∀ n, P14347734510777564381.a n = A029435 n

end A029435

/-! ## A029435.P11621524583451190766

`A025921(n)+A029360(n)-A029372(n)`
-/

namespace A029435.P11621524583451190766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 n + (A029360 n - A029372 n)

end

end A029435.P11621524583451190766

namespace A029435

/-- `A025921(n)+A029360(n)-A029372(n)` -/
def P11621524583451190766.Spec : Prop :=
  ∀ n, P11621524583451190766.a n = A029435 n

end A029435

/-! ## A029435.P8450062844158075990

`A029124(n)+A029442(n)-A029128(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029435

/-- `A029124(n)+A029442(n)-A029128(n)` -/
def P8450062844158075990.Spec : Prop :=
  ∀ n, P8450062844158075990.a n = A029435 n

theorem P8450062844158075990.correct : P8450062844158075990.Spec := by
  intro n
  simp only [A029435]

end A029435

/-! ## A029435.P11146517725776377876

`A029269(n+4)-A029307(n+4)`
-/

namespace A029435.P11146517725776377876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029269 (n + 4) - A029307 (n + 4)

end

end A029435.P11146517725776377876

namespace A029435

/-- `A029269(n+4)-A029307(n+4)` -/
def P11146517725776377876.Spec : Prop :=
  ∀ n, P11146517725776377876.a n = A029435 n

end A029435

/-! ## A029435.P18333101478129992995

`A029124(A020719(n))-A029130(A020719(n))`
-/

namespace A029435.P18333101478129992995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029124 (A020719 n).toNat - A029130 (A020719 n).toNat

end

end A029435.P18333101478129992995

namespace A029435

/-- `A029124(A020719(n))-A029130(A020719(n))` -/
def P18333101478129992995.Spec : Prop :=
  ∀ n, P18333101478129992995.a n = A029435 n

end A029435

/-!
# A029436: Expansion of 1/((1-x^7)(1-x^8)(1-x^10)(1-x^12)).

The programs for A029436, there is no canonical definition to state claims against.
-/

/-! ## A029436.P16492579478555568149

`A334297(and(A107770(n+1), A244461(n+8)))`
-/

namespace A029436.P16492579478555568149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (Int.land (A107770 (n + 1)) (A244461 (n + 8))).toNat

end

end A029436.P16492579478555568149

/-! ## A029436.P15873216309607397129

`A104637(A216052(n+1)+1)`
-/

namespace A029436.P15873216309607397129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104637 (A216052 (n + 1) + 1).toNat

end

end A029436.P15873216309607397129

/-! ## A029436.P4506374076235527159

`A080540(n)%A043559(A129497(n+1))`
-/

namespace A029436.P4506374076235527159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080540 n) (A043559 (A129497 (n + 1)).toNat)

end

end A029436.P4506374076235527159

/-! ## A029436.P11834013255837948936

`A244063(A094501(n)*A337260(n+1))`
-/

namespace A029436.P11834013255837948936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244063 (A094501 n * A337260 (n + 1)).toNat

end

end A029436.P11834013255837948936

/-! ## A029436.P6066153141183661665

`A244063(lcm(A094501(n), A337260(n+1)))`
-/

namespace A029436.P6066153141183661665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244063 (Int.lcm (A094501 n) (A337260 (n + 1)))

end

end A029436.P6066153141183661665

/-!
# A029437: Expansion of 1/((1-x^7)(1-x^8)(1-x^11)(1-x^12)).

The programs for A029437, the canonical program `A029437.P16437964794762885094` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029437 has offset 0).

The definition of A029437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029437.P16437964794762885094

`A025922(n)+A029362(n)-A029373(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029437

/-- `A025922(n)+A029362(n)-A029373(n)` -/
def P16437964794762885094.Spec : Prop :=
  ∀ n, P16437964794762885094.a n = A029437 n

theorem P16437964794762885094.correct : P16437964794762885094.Spec := by
  intro n
  simp only [A029437]

end A029437

/-! ## A029437.P11201411862937566567

`A025922(n)+A029395(n)-A029408(n)`
-/

namespace A029437.P11201411862937566567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 n + (A029395 n - A029408 n)

end

end A029437.P11201411862937566567

namespace A029437

/-- `A025922(n)+A029395(n)-A029408(n)` -/
def P11201411862937566567.Spec : Prop :=
  ∀ n, P11201411862937566567.a n = A029437 n

end A029437

/-! ## A029437.P7326577885054323943

`A029395(n)+A029427(n)-A029386(n)`
-/

namespace A029437.P7326577885054323943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029395 n + (A029427 n - A029386 n)

end

end A029437.P7326577885054323943

namespace A029437

/-- `A029395(n)+A029427(n)-A029386(n)` -/
def P7326577885054323943.Spec : Prop :=
  ∀ n, P7326577885054323943.a n = A029437 n

end A029437

/-! ## A029437.P928849934765590652

`A029240(n+2)-A029353(n+2)+A029395(n)-A029408(n)`
-/

namespace A029437.P928849934765590652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (n + 2) - A029353 (n + 2) + (A029395 n - A029408 n)

end

end A029437.P928849934765590652

namespace A029437

/-- `A029240(n+2)-A029353(n+2)+A029395(n)-A029408(n)` -/
def P928849934765590652.Spec : Prop :=
  ∀ n, P928849934765590652.a n = A029437 n

end A029437

/-!
# A029438: Expansion of 1/((1-x^7)(1-x^9)(1-x^10)(1-x^11)).

The programs for A029438, the canonical program `A029438.P11031953031316890893` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029438 has offset 0).

The definition of A029438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029438.P11031953031316890893

`A025913(n)+∑[A025912(n)-A025913(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029438

/-- `A025913(n)+∑[A025912(n)-A025913(n)]` -/
def P11031953031316890893.Spec : Prop :=
  ∀ n, P11031953031316890893.a n = A029438 n

theorem P11031953031316890893.correct : P11031953031316890893.Spec := by
  intro n
  simp only [A029438]

end A029438

/-! ## A029438.P15295921051907253685

`A001842(or(2, A251745(n+1)))`
-/

namespace A029438.P15295921051907253685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (Int.lor 2 (A251745 (n + 1))).toNat

end

end A029438.P15295921051907253685

namespace A029438

/-- `A001842(or(2, A251745(n+1)))` -/
def P15295921051907253685.Spec : Prop :=
  ∀ n, P15295921051907253685.a n = A029438 n

end A029438

/-! ## A029438.P8515052249951189238

`A025913(n)^A216577(A282133(n+1))`
-/

namespace A029438.P8515052249951189238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025913 n : ℚ) ^ (A216577 (A282133 (n + 1)).toNat : ℤ)

end

end A029438.P8515052249951189238

namespace A029438

/-- `A025913(n)^A216577(A282133(n+1))` -/
def P8515052249951189238.Spec : Prop :=
  ∀ n, P8515052249951189238.a n = (A029438 n : ℚ)

end A029438

/-! ## A029438.P10820541941218882683

`A259479(gcd(A300120(n+1), A301038(n)))`
-/

namespace A029438.P10820541941218882683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259479 (Int.gcd (A300120 (n + 1)) (A301038 n))

end

end A029438.P10820541941218882683

namespace A029438

/-- `A259479(gcd(A300120(n+1), A301038(n)))` -/
def P10820541941218882683.Spec : Prop :=
  ∀ n, P10820541941218882683.a n = A029438 n

end A029438

/-! ## A029438.P13160385786705382832

`A297155(A061645(n+1)+A039649(n+2))`
-/

namespace A029438.P13160385786705382832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A061645 (n + 1) + A039649 (n + 2)).toNat

end

end A029438.P13160385786705382832

namespace A029438

/-- `A297155(A061645(n+1)+A039649(n+2))` -/
def P13160385786705382832.Spec : Prop :=
  ∀ n, P13160385786705382832.a n = A029438 n

end A029438

/-!
# A029439: Expansion of 1/((1-x^7)(1-x^9)(1-x^10)(1-x^12)).

The programs for A029439, the canonical program `A029439.P16598392286380300323` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029439 has offset 0).

The definition of A029439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029439.P16598392286380300323

`A029160(n+7)-A029165(n+7)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029439

/-- `A029160(n+7)-A029165(n+7)` -/
def P16598392286380300323.Spec : Prop :=
  ∀ n, P16598392286380300323.a n = A029439 n

theorem P16598392286380300323.correct : P16598392286380300323.Spec := by
  intro n
  simp only [A029439]

end A029439

/-! ## A029439.P1616994516292142528

`A025917(eq[A025913(n)², A025915(n)])`
-/

namespace A029439.P1616994516292142528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025917 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029439.P1616994516292142528

namespace A029439

/-- `A025917(eq[A025913(n)², A025915(n)])` -/
def P1616994516292142528.Spec : Prop :=
  ∀ n, P1616994516292142528.a n = A029439 n

end A029439

/-! ## A029439.P4130111558570858299

`A345197(xor(A276445(3*n+4), A321912(2*(n+2))))`
-/

namespace A029439.P4130111558570858299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (Int.xor (A276445 (3 * n + 4)) (A321912 (2 * (n + 2)))).toNat

end

end A029439.P4130111558570858299

namespace A029439

/-- `A345197(xor(A276445(3*n+4), A321912(2*(n+2))))` -/
def P4130111558570858299.Spec : Prop :=
  ∀ n, P4130111558570858299.a n = A029439 n

end A029439

/-! ## A029439.P16695089664489016281

`A011721(A341634(n))`
-/

namespace A029439.P16695089664489016281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011721 (A341634 n).toNat

end

end A029439.P16695089664489016281

namespace A029439

/-- `A011721(A341634(n))` -/
def P16695089664489016281.Spec : Prop :=
  ∀ n, P16695089664489016281.a n = A029439 n

end A029439

/-! ## A029439.P2839322118591642421

`A141743(A313933(n))`
-/

namespace A029439.P2839322118591642421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141743 (A313933 n).toNat

end

end A029439.P2839322118591642421

namespace A029439

/-- `A141743(A313933(n))` -/
def P2839322118591642421.Spec : Prop :=
  ∀ n, P2839322118591642421.a n = A029439 n

end A029439

/-!
# A029440: Expansion of 1/((1-x^7)(1-x^9)(1-x^11)(1-x^12)).

The programs for A029440, the canonical program `A029440.P14008336459079568971` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029440 has offset 0).

The definition of A029440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029440.P8044655316627577969

`A025925(n)+A029398(n)-A029411(n)`
-/

namespace A029440.P8044655316627577969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n + (A029398 n - A029411 n)

end

end A029440.P8044655316627577969

namespace A029440

/-- `A025925(n)+A029398(n)-A029411(n)` -/
def P8044655316627577969.Spec : Prop :=
  ∀ n, P8044655316627577969.a n = A029440 n

end A029440

/-! ## A029440.P14008336459079568971

`A029114(n)+A029398(n)-A029102(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029440

/-- `A029114(n)+A029398(n)-A029102(n)` -/
def P14008336459079568971.Spec : Prop :=
  ∀ n, P14008336459079568971.a n = A029440 n

theorem P14008336459079568971.correct : P14008336459079568971.Spec := by
  intro n
  simp only [A029440]

end A029440

/-! ## A029440.P889132069270250459

`A029365(n)+A029411(n)-A029346(n)`
-/

namespace A029440.P889132069270250459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029365 n + (A029411 n - A029346 n)

end

end A029440.P889132069270250459

namespace A029440

/-- `A029365(n)+A029411(n)-A029346(n)` -/
def P889132069270250459.Spec : Prop :=
  ∀ n, P889132069270250459.a n = A029440 n

end A029440

/-! ## A029440.P5222100583944701031

`A029376(n)+A029398(n)-A029346(n)`
-/

namespace A029440.P5222100583944701031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 n + (A029398 n - A029346 n)

end

end A029440.P5222100583944701031

namespace A029440

/-- `A029376(n)+A029398(n)-A029346(n)` -/
def P5222100583944701031.Spec : Prop :=
  ∀ n, P5222100583944701031.a n = A029440 n

end A029440

/-! ## A029440.P4245285661740810456

`A029398(n)+A029430(n)-A029389(n)`
-/

namespace A029440.P4245285661740810456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029398 n + (A029430 n - A029389 n)

end

end A029440.P4245285661740810456

namespace A029440

/-- `A029398(n)+A029430(n)-A029389(n)` -/
def P4245285661740810456.Spec : Prop :=
  ∀ n, P4245285661740810456.a n = A029440 n

end A029440

/-!
# A029441: Expansion of 1/((1-x^7)(1-x^10)(1-x^11)(1-x^12)).

The programs for A029441, the canonical program `A029441.P7731090560958311187` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029441 has offset 0).

The definition of A029441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029441.P4267999221178503312

`A025926(n)+A029367(n)-A029377(n)`
-/

namespace A029441.P4267999221178503312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n + (A029367 n - A029377 n)

end

end A029441.P4267999221178503312

namespace A029441

/-- `A025926(n)+A029367(n)-A029377(n)` -/
def P4267999221178503312.Spec : Prop :=
  ∀ n, P4267999221178503312.a n = A029441 n

end A029441

/-! ## A029441.P18061876231396875114

`A025926(n)+A029400(n)-A029412(n)`
-/

namespace A029441.P18061876231396875114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n + (A029400 n - A029412 n)

end

end A029441.P18061876231396875114

namespace A029441

/-- `A025926(n)+A029400(n)-A029412(n)` -/
def P18061876231396875114.Spec : Prop :=
  ∀ n, P18061876231396875114.a n = A029441 n

end A029441

/-! ## A029441.P8030220149847989293

`A029115(n)+A029400(n)-A029104(n)`
-/

namespace A029441.P8030220149847989293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029115 n + (A029400 n - A029104 n)

end

end A029441.P8030220149847989293

namespace A029441

/-- `A029115(n)+A029400(n)-A029104(n)` -/
def P8030220149847989293.Spec : Prop :=
  ∀ n, P8030220149847989293.a n = A029441 n

end A029441

/-! ## A029441.P17785778792392611642

`A029367(n)+A029445(n)-A029372(n)`
-/

namespace A029441.P17785778792392611642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 n + (A029445 n - A029372 n)

end

end A029441.P17785778792392611642

namespace A029441

/-- `A029367(n)+A029445(n)-A029372(n)` -/
def P17785778792392611642.Spec : Prop :=
  ∀ n, P17785778792392611642.a n = A029441 n

end A029441

/-! ## A029441.P7731090560958311187

`A029400(n)+A029431(n)-A029391(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029441

/-- `A029400(n)+A029431(n)-A029391(n)` -/
def P7731090560958311187.Spec : Prop :=
  ∀ n, P7731090560958311187.a n = A029441 n

theorem P7731090560958311187.correct : P7731090560958311187.Spec := by
  intro n
  simp only [A029441]

end A029441

/-! ## A029441.P10707383876549583662

`∑[A025906(n)]+A029400(n)-A029104(n)`
-/

namespace A029441.P10707383876549583662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A029400 n - A029104 n)

end

end A029441.P10707383876549583662

namespace A029441

/-- `∑[A025906(n)]+A029400(n)-A029104(n)` -/
def P10707383876549583662.Spec : Prop :=
  ∀ n, P10707383876549583662.a n = A029441 n

end A029441

/-!
# A029442: Expansion of 1/((1-x^8)(1-x^9)(1-x^10)(1-x^11)).

The programs for A029442, the canonical program `A029442.P15677434544600436367` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029442 has offset 0).

The definition of A029442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029442.P8451903645658314603

`A025921(n)+A029128(n)-A029130(n)`
-/

namespace A029442.P8451903645658314603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 n + (A029128 n - A029130 n)

end

end A029442.P8451903645658314603

namespace A029442

/-- `A025921(n)+A029128(n)-A029130(n)` -/
def P8451903645658314603.Spec : Prop :=
  ∀ n, P8451903645658314603.a n = A029442 n

end A029442

/-! ## A029442.P8259650117273059529

`A025921(n)+A029236(n)-A029239(n)`
-/

namespace A029442.P8259650117273059529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 n + (A029236 n - A029239 n)

end

end A029442.P8259650117273059529

namespace A029442

/-- `A025921(n)+A029236(n)-A029239(n)` -/
def P8259650117273059529.Spec : Prop :=
  ∀ n, P8259650117273059529.a n = A029442 n

end A029442

/-! ## A029442.P849238630365516669

`A029128(n)+A029435(n)-A029124(n)`
-/

namespace A029442.P849238630365516669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029128 n + (A029435 n - A029124 n)

end

end A029442.P849238630365516669

namespace A029442

/-- `A029128(n)+A029435(n)-A029124(n)` -/
def P849238630365516669.Spec : Prop :=
  ∀ n, P849238630365516669.a n = A029442 n

end A029442

/-! ## A029442.P15677434544600436367

`A025919(n)+∑[A025918(n)-A025919(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029442

/-- `A025919(n)+∑[A025918(n)-A025919(n)]` -/
def P15677434544600436367.Spec : Prop :=
  ∀ n, P15677434544600436367.a n = A029442 n

theorem P15677434544600436367.correct : P15677434544600436367.Spec := by
  intro n
  simp only [A029442]

end A029442

/-!
# A029443: Expansion of 1/((1-x^8)(1-x^9)(1-x^10)(1-x^12)).

The programs for A029443, the canonical program `A029443.P11202586114507324951` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029443 has offset 0).

The definition of A029443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029443.P11202586114507324951

`A029236(n)+A029352(n)-A029190(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A029443

/-- `A029236(n)+A029352(n)-A029190(n)` -/
def P11202586114507324951.Spec : Prop :=
  ∀ n, P11202586114507324951.a n = A029443 n

theorem P11202586114507324951.correct : P11202586114507324951.Spec := by
  intro n
  simp only [A029443]

end A029443

/-! ## A029443.P9228875649699730763

`A093956(A033873(n))+A025918(n)`
-/

namespace A029443.P9228875649699730763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093956 (A033873 n).toNat + A025918 n

end

end A029443.P9228875649699730763

namespace A029443

/-- `A093956(A033873(n))+A025918(n)` -/
def P9228875649699730763.Spec : Prop :=
  ∀ n, P9228875649699730763.a n = A029443 n

end A029443

/-!
# A029444: Expansion of 1/((1-x^8)(1-x^9)(1-x^11)(1-x^12)).

The programs for A029444, the canonical program `A029444.P3494668632536997832` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029444 has offset 0).

The definition of A029444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029444.P3494668632536997832

`A025925(n)+A029057(n)-A029059(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029444

/-- `A025925(n)+A029057(n)-A029059(n)` -/
def P3494668632536997832.Spec : Prop :=
  ∀ n, P3494668632536997832.a n = A029444 n

theorem P3494668632536997832.correct : P3494668632536997832.Spec := by
  intro n
  simp only [A029444]

end A029444

/-! ## A029444.P38501892446703675

`A025922(n)+A029238(n)-A029240(n)`
-/

namespace A029444.P38501892446703675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 n + (A029238 n - A029240 n)

end

end A029444.P38501892446703675

namespace A029444

/-- `A025922(n)+A029238(n)-A029240(n)` -/
def P38501892446703675.Spec : Prop :=
  ∀ n, P38501892446703675.a n = A029444 n

end A029444

/-! ## A029444.P8718916932407373797

`A029238(n)+A029427(n)-A029225(n)`
-/

namespace A029444.P8718916932407373797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 n + (A029427 n - A029225 n)

end

end A029444.P8718916932407373797

namespace A029444

/-- `A029238(n)+A029427(n)-A029225(n)` -/
def P8718916932407373797.Spec : Prop :=
  ∀ n, P8718916932407373797.a n = A029444 n

end A029444

/-! ## A029444.P14573946335072827804

`A029240(n+2)-A029353(n+2)+A029238(n)-A029240(n)`
-/

namespace A029444.P14573946335072827804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (n + 2) - A029353 (n + 2) + (A029238 n - A029240 n)

end

end A029444.P14573946335072827804

namespace A029444

/-- `A029240(n+2)-A029353(n+2)+A029238(n)-A029240(n)` -/
def P14573946335072827804.Spec : Prop :=
  ∀ n, P14573946335072827804.a n = A029444 n

end A029444

/-! ## A029444.P2317876755743545929

`A025925(n)+A029057(n)%(A029059(n)%A114872(n+1))`
-/

namespace A029444.P2317876755743545929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n + Int.tmod (A029057 n) (Int.tmod (A029059 n) (A114872 (n + 1)))

end

end A029444.P2317876755743545929

namespace A029444

/-- `A025925(n)+A029057(n)%(A029059(n)%A114872(n+1))` -/
def P2317876755743545929.Spec : Prop :=
  ∀ n, P2317876755743545929.a n = A029444 n

end A029444

/-!
# A029445: Expansion of 1/((1-x^8)(1-x^10)(1-x^11)(1-x^12)).

The programs for A029445, the canonical program `A029445.P17442222994120643145` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029445 has offset 0).

The definition of A029445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029445.P13429849733155177354

`A025926(n)+A029240(n)-A029244(n)`
-/

namespace A029445.P13429849733155177354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n + (A029240 n - A029244 n)

end

end A029445.P13429849733155177354

namespace A029445

/-- `A025926(n)+A029240(n)-A029244(n)` -/
def P13429849733155177354.Spec : Prop :=
  ∀ n, P13429849733155177354.a n = A029445 n

end A029445

/-! ## A029445.P17442222994120643145

`A025926(n)+A029372(n)-A029377(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A029445

/-- `A025926(n)+A029372(n)-A029377(n)` -/
def P17442222994120643145.Spec : Prop :=
  ∀ n, P17442222994120643145.a n = A029445 n

theorem P17442222994120643145.correct : P17442222994120643145.Spec := by
  intro n
  simp only [A029445]

end A029445

/-! ## A029445.P15872000917840724070

`A029224(n)+A029372(n)-A029192(n)`
-/

namespace A029445.P15872000917840724070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 n + (A029372 n - A029192 n)

end

end A029445.P15872000917840724070

namespace A029445

/-- `A029224(n)+A029372(n)-A029192(n)` -/
def P15872000917840724070.Spec : Prop :=
  ∀ n, P15872000917840724070.a n = A029445 n

end A029445

/-! ## A029445.P7892861759872947266

`A029372(n)+A029431(n)-A029358(n)`
-/

namespace A029445.P7892861759872947266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 n + (A029431 n - A029358 n)

end

end A029445.P7892861759872947266

namespace A029445

/-- `A029372(n)+A029431(n)-A029358(n)` -/
def P7892861759872947266.Spec : Prop :=
  ∀ n, P7892861759872947266.a n = A029445 n

end A029445

/-! ## A029445.P2211329913894461373

`A029224(n)-(A000035(4*n)-(A029372(n)-A029192(n)))`
-/

namespace A029445.P2211329913894461373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 n - (A000035 (4 * n) - (A029372 n - A029192 n))

end

end A029445.P2211329913894461373

namespace A029445

/-- `A029224(n)-(A000035(4*n)-(A029372(n)-A029192(n)))` -/
def P2211329913894461373.Spec : Prop :=
  ∀ n, P2211329913894461373.a n = A029445 n

end A029445

/-!
# A029446: Expansion of 1/((1-x^9)(1-x^10)(1-x^11)(1-x^12)).

The programs for A029446, the canonical program `A029446.P13331593502067792089` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029446 has offset 0).

The definition of A029446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029446.P1783386084534422605

`A025925(n)+A029133(n)-A029134(n)`
-/

namespace A029446.P1783386084534422605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n + (A029133 n - A029134 n)

end

end A029446.P1783386084534422605

namespace A029446

/-- `A025925(n)+A029133(n)-A029134(n)` -/
def P1783386084534422605.Spec : Prop :=
  ∀ n, P1783386084534422605.a n = A029446 n

end A029446

/-! ## A029446.P10118879460915215724

`A025925(n)+A029241(n)-A029243(n)`
-/

namespace A029446.P10118879460915215724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n + (A029241 n - A029243 n)

end

end A029446.P10118879460915215724

namespace A029446

/-- `A025925(n)+A029241(n)-A029243(n)` -/
def P10118879460915215724.Spec : Prop :=
  ∀ n, P10118879460915215724.a n = A029446 n

end A029446

/-! ## A029446.P13331593502067792089

`A029411(n)+∑[A029428(n)-A029411(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029446

/-- `A029411(n)+∑[A029428(n)-A029411(n)]` -/
def P13331593502067792089.Spec : Prop :=
  ∀ n, P13331593502067792089.a n = A029446 n

theorem P13331593502067792089.correct : P13331593502067792089.Spec := by
  intro n
  simp only [A029446]

end A029446

/-!
# A029447: Numbers k that divide the (right) concatenation of all numbers <= k written in base 2 (most significant digit on left).

The programs for A029447, there is no canonical definition to state claims against.
-/

/-! ## A029447.P4515055770474719827

`∑[A352104(A265590(n+1)²)]`
-/

namespace A029447.P4515055770474719827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352104 (A265590 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029447.P4515055770474719827

/-! ## A029447.P11269410460437073697

`record[A340791(∑[A162609(n+1)])]`
-/

namespace A029447.P11269410460437073697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340791 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029447.P11269410460437073697

/-! ## A029447.P236193843092501120

`eq[A101446(n+2), A248777(n+1)]`
-/

namespace A029447.P236193843092501120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101446 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029447.P236193843092501120

/-! ## A029447.P16341973839771857697

`∩[A261888(n+1), A394543(n+1)]`
-/

namespace A029447.P16341973839771857697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029447.P16341973839771857697

/-! ## A029447.P6996555477336658592

`∑[A103493(A351190(2*(n+1))+2)]`
-/

namespace A029447.P6996555477336658592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103493 (A351190 (2 * (n + 1)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029447.P6996555477336658592

/-!
# A029449: Numbers k that divide the (right) concatenation of all numbers <= k written in base 4 (most significant digit on left).

The programs for A029449, there is no canonical definition to state claims against.
-/

/-! ## A029449.P3226200977238915767

`record[A309196(A054531(A056105(n)))]`
-/

namespace A029449.P3226200977238915767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309196 (A054531 (A056105 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029449.P3226200977238915767

/-! ## A029449.P7917573530573279982

`record[A056239(A330943(n+2))]`
-/

namespace A029449.P7917573530573279982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A330943 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029449.P7917573530573279982

/-! ## A029449.P2372856540804576292

`∑[A086342(A183125(A253671(n+1)))]`
-/

namespace A029449.P2372856540804576292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A183125 (A253671 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029449.P2372856540804576292

/-! ## A029449.P724414670930338742

`A020664(lt[A089505(n+1), A001969(n+1)])`
-/

namespace A029449.P724414670930338742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020664 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029449.P724414670930338742

/-! ## A029449.P5603681876145688340

`A020664(lt[A089505(n+1), A159482(n+3)])`
-/

namespace A029449.P5603681876145688340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159482 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020664 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029449.P5603681876145688340

/-!
# A029451: Numbers k that divide the (right) concatenation of all numbers <= k written in base 6 (most significant digit on left).

The programs for A029451, there is no canonical definition to state claims against.
-/

/-! ## A029451.P10457658009955204306

`lt[1-A082494(n+1)+n, A225404(A240894(n+1))]`
-/

namespace A029451.P10457658009955204306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082494 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (A240894 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A029451.P10457658009955204306

/-! ## A029451.P10613881097447905245

`lt[A191561(n+1)%(n+1), A225404(A240894(n+1))]`
-/

namespace A029451.P10613881097447905245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191561 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (A240894 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A029451.P10613881097447905245

/-!
# A029455: Numbers k that divide the (right) concatenation of all numbers <= k written in base 10 (most significant digit on left).

The programs for A029455, there is no canonical definition to state claims against.
-/

/-! ## A029455.P9333180552206567979

`eq[1, A075001(n+1)]+1`
-/

namespace A029455.P9333180552206567979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A029455.P9333180552206567979

/-! ## A029455.P18274048364664154208

`record[A000027(n+1)/A075001(n+1)]`
-/

namespace A029455.P18274048364664154208
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A075001 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029455.P18274048364664154208

/-! ## A029455.P8622480741400146257

`record[A008619(n)/A075001(A008619(n))]`
-/

namespace A029455.P8622480741400146257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A075001 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029455.P8622480741400146257

/-! ## A029455.P2593922065139902165

`record[A126759(n)/A075001(A126759(n))]`
-/

namespace A029455.P2593922065139902165
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126759 n : ℚ) / (A075001 (A126759 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029455.P2593922065139902165

/-!
# A029459: Numbers k that divide the (right) concatenation of all numbers <= k written in base 14 (most significant digit on left).

The programs for A029459, there is no canonical definition to state claims against.
-/

/-! ## A029459.P17773648351654171362

`lt[A136388(A057145(3*n+4)), A340851(3*n+2)]`
-/

namespace A029459.P17773648351654171362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136388 (A057145 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340851 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A029459.P17773648351654171362

/-!
# A029461: Numbers k that divide the (right) concatenation of all numbers <= k written in base 16 (most significant digit on left).

The programs for A029461, there is no canonical definition to state claims against.
-/

/-! ## A029461.P15955185821161016835

`record[A242603(n+1)%A338855(A132741(n+1))]`
-/

namespace A029461.P15955185821161016835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242603 (n + 1)) (A338855 (A132741 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029461.P15955185821161016835

/-! ## A029461.P5100328305378976929

`eq[A004956(A114099(n)!), A141256(n)]`
-/

namespace A029461.P5100328305378976929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (Nat.factorial (A114099 n).toNat)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029461.P5100328305378976929

/-! ## A029461.P14172986521768682598

`record[gcd((n+1)*Δ[n^3], A048447(n+1))]`
-/

namespace A029461.P14172986521768682598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) (A048447 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029461.P14172986521768682598

/-!
# A029466: Numbers k that divide the (right) concatenation of all numbers <= k written in base 21 (most significant digit on left).

The programs for A029466, there is no canonical definition to state claims against.
-/

/-! ## A029466.P11998302765096329497

`record[gcd(or(1, n), A144355(n+1))]`
-/

namespace A029466.P11998302765096329497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.lor 1 n : ℤ) (A144355 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029466.P11998302765096329497

/-! ## A029466.P17919253624486700922

`record[gcd(1-2*n, A061218(n+1))]`
-/

namespace A029466.P17919253624486700922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (2 * n : ℤ)) (A061218 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029466.P17919253624486700922

/-! ## A029466.P4319619751913770784

`record[gcd((n+1)/2^val(n+1, 2), A355334(n+1))]`
-/

namespace A029466.P4319619751913770784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A355334 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029466.P4319619751913770784

/-! ## A029466.P728472312220190748

`A373461(A080114(n+2))`
-/

namespace A029466.P728472312220190748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373461 (A080114 (n + 2)).toNat

end

end A029466.P728472312220190748

/-! ## A029466.P14780974399324381984

`or(1, A055572(A077171(n)))`
-/

namespace A029466.P14780974399324381984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055572 (A077171 n).toNat)

end

end A029466.P14780974399324381984

/-!
# A029467: Numbers k that divide the (right) concatenation of all numbers <= k written in base 22 (most significant digit on left).

The programs for A029467, there is no canonical definition to state claims against.
-/

/-! ## A029467.P2781139379725107068

`lt[A300979(A000695(n)), A170884(n)]`
-/

namespace A029467.P2781139379725107068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300979 (A000695 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A029467.P2781139379725107068

/-! ## A029467.P14540795010211131288

`lt[A300979(A000695(n)), A160160(n+1)]`
-/

namespace A029467.P14540795010211131288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300979 (A000695 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A029467.P14540795010211131288

/-!
# A029468: Numbers k that divide the (right) concatenation of all numbers <= k written in base 23 (most significant digit on left).

The programs for A029468, there is no canonical definition to state claims against.
-/

/-! ## A029468.P5936857619675237300

`A136803(or(A003680(n+1), A308179(n)))`
-/

namespace A029468.P5936857619675237300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136803 (Int.lor (A003680 (n + 1)) (A308179 n)).toNat

end

end A029468.P5936857619675237300

/-!
# A029469: Numbers k that divide the (right) concatenation of all numbers <= k written in base 24 (most significant digit on left).

The programs for A029469, there is no canonical definition to state claims against.
-/

/-! ## A029469.P1418566079321754368

`record[and(A165025(n+1), A165105(n+1))]`
-/

namespace A029469.P1418566079321754368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165025 (n + 1)) (A165105 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029469.P1418566079321754368

/-! ## A029469.P3087823711976769520

`lt[A225455(3*n+1), 6-A000196(n)]+1`
-/

namespace A029469.P3087823711976769520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225455 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A000196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A029469.P3087823711976769520

/-! ## A029469.P17420820601091137348

`A308427(A309864(n))+A014875(n+1)`
-/

namespace A029469.P17420820601091137348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A309864 n).toNat + A014875 (n + 1)

end

end A029469.P17420820601091137348

/-!
# A029474: Numbers k that divide the (left) concatenation of all numbers <= k written in base 5 (most significant digit on left).

The programs for A029474, there is no canonical definition to state claims against.
-/

/-! ## A029474.P1736557439112430130

`A033492(2*a(n-1))` with `a(0)=1, a(1)=7, a(2)=9, a(3)=11`
-/

namespace A029474.P1736557439112430130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 9, 11] fun n a =>
  A033492 (2 * a (n - 1)).toNat

end

end A029474.P1736557439112430130

/-!
# A029475: Numbers k that divide the (left) concatenation of all numbers <= k written in base 6 (most significant digit on left).

The programs for A029475, there is no canonical definition to state claims against.
-/

/-! ## A029475.P8325418225532664850

`A026741(A093844(n+1)+A093833(n))`
-/

namespace A029475.P8325418225532664850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A093844 (n + 1) + A093833 n).toNat

end

end A029475.P8325418225532664850

/-!
# A029478: Numbers k that divide the (left) concatenation of all numbers <= k written in base 9 (most significant digit on left).

The programs for A029478, there is no canonical definition to state claims against.
-/

/-! ## A029478.P11466751107086988481

`A071450(A034260(n+1)^3)`
-/

namespace A029478.P11466751107086988481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071450 (A034260 (n + 1) ^ 3).toNat

end

end A029478.P11466751107086988481

/-!
# A029479: Numbers k that divide the (left) concatenation of all numbers <= k written in base 10 (most significant digit on left).

The programs for A029479, there is no canonical definition to state claims against.
-/

/-! ## A029479.P1500217000303696448

`eq[0, A114795(n+1)]+1`
-/

namespace A029479.P1500217000303696448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A029479.P1500217000303696448

/-! ## A029479.P8025067218256843152

`A004442(eq[0, A114795(n+1)])`
-/

namespace A029479.P8025067218256843152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029479.P8025067218256843152

/-! ## A029479.P881924744867401097

`A109613(eq[0, A114795(n+1)])`
-/

namespace A029479.P881924744867401097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029479.P881924744867401097

/-! ## A029479.P2083867148108438904

`A141310(eq[0, A114795(n+1)])`
-/

namespace A029479.P2083867148108438904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029479.P2083867148108438904

/-! ## A029479.P17857220913730426986

`record[gcd(A109613(n), A114795(n+1))]`
-/

namespace A029479.P17857220913730426986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109613 n) (A114795 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029479.P17857220913730426986

/-!
# A029483: Numbers k that divide the (left) concatenation of all numbers <= k written in base 14 (most significant digit on left).

The programs for A029483, there is no canonical definition to state claims against.
-/

/-! ## A029483.P2446872327285555231

`∩[A109860(n), A312065(n)]`
-/

namespace A029483.P2446872327285555231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029483.P2446872327285555231

/-!
# A029485: Numbers k that divide the (left) concatenation of all numbers <= k written in base 16 (most significant digit on left).

The programs for A029485, there is no canonical definition to state claims against.
-/

/-! ## A029485.P6241245904217262999

`record[gcd(A008740(n+1), A156695(2*(n+1)))]`
-/

namespace A029485.P6241245904217262999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008740 (n + 1)) (A156695 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029485.P6241245904217262999

/-! ## A029485.P14940658730683126301

`A003961(A092061(n+1)+A002988(n))`
-/

namespace A029485.P14940658730683126301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A092061 (n + 1) + A002988 n).toNat

end

end A029485.P14940658730683126301

/-!
# A029487: Numbers k that divide the (left) concatenation of all numbers <= k written in base 18 (most significant digit on left).

The programs for A029487, there is no canonical definition to state claims against.
-/

/-! ## A029487.P12381803087910704667

`A208883(A051027(n+1))-4`
-/

namespace A029487.P12381803087910704667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208883 (A051027 (n + 1)).toNat - 4

end

end A029487.P12381803087910704667

/-!
# A029494: Numbers k that divide the (left) concatenation of all numbers <= k written in base 25 (most significant digit on left).

The programs for A029494, there is no canonical definition to state claims against.
-/

/-! ## A029494.P12990576938385210326

`∑[A000005(Δ[A261467(n+1)²])]`
-/

namespace A029494.P12990576938385210326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261467 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029494.P12990576938385210326

/-! ## A029494.P10370655126718258443

`A047732(n)-A091951(A088688(n))`
-/

namespace A029494.P10370655126718258443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047732 n - A091951 (A088688 n).toNat

end

end A029494.P10370655126718258443

/-! ## A029494.P6748183876814919185

`A101771(A062799(n+1)+A000384(n))`
-/

namespace A029494.P6748183876814919185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101771 (A062799 (n + 1) + A000384 n).toNat

end

end A029494.P6748183876814919185

/-!
# A029496: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 3 (most significant digit on right).

The programs for A029496, there is no canonical definition to state claims against.
-/

/-! ## A029496.P1880011223525398858

`A153141(∏[A135141(∑{d}[n+1, #])])`
-/

namespace A029496.P1880011223525398858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A029496.P1880011223525398858

/-!
# A029497: Numbers k such that k divides the (right) concatenation of all numbers <= k written in base 4 (most significant digit on right).

The programs for A029497, there is no canonical definition to state claims against.
-/

/-! ## A029497.P2393512541177582825

`A026272(A274579(n+1)+A227739(n+1))`
-/

namespace A029497.P2393512541177582825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A274579 (n + 1) + A227739 (n + 1)).toNat

end

end A029497.P2393512541177582825

/-!
# A029498: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 5 (most significant digit on right).

The programs for A029498, there is no canonical definition to state claims against.
-/

/-! ## A029498.P5606057041968665463

`A384992(A270288(n))`
-/

namespace A029498.P5606057041968665463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384992 (A270288 n).toNat

end

end A029498.P5606057041968665463

