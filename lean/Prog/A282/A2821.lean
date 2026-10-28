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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
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
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C047
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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
# A282103: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 427", based on the 5-celled von Neumann neighborhood.

The programs for A282103, there is no canonical definition to state claims against.
-/

/-! ## A282103.P7512381635859324356

`A007088(A282105(n))`
-/

namespace A282103.P7512381635859324356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282105 n).toNat

end

end A282103.P7512381635859324356

/-! ## A282103.P14148027537321887982

`floor(A267206(n)/A007088(A000079(n)))`
-/

namespace A282103.P14148027537321887982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267206 n : ℚ) / (A007088 (A000079 n).toNat : ℚ)⌋

end

end A282103.P14148027537321887982

/-! ## A282103.P718719315655806732

`A007088(floor(A267207(n)/A000079(n)))`
-/

namespace A282103.P718719315655806732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A267207 n : ℚ) / (A000079 n : ℚ)⌋.toNat

end

end A282103.P718719315655806732

/-! ## A282103.P18019130485940326184

`A007088(floor(A267207(n)/A011782(n+1)))`
-/

namespace A282103.P18019130485940326184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A267207 n : ℚ) / (A011782 (n + 1) : ℚ)⌋.toNat

end

end A282103.P18019130485940326184

/-! ## A282103.P2079380406009151495

`A007088(floor(A267207(n)/A016116(2*n)))`
-/

namespace A282103.P2079380406009151495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A267207 n : ℚ) / (A016116 (2 * n) : ℚ)⌋.toNat

end

end A282103.P2079380406009151495

/-!
# A282104: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 427", based on the 5-celled von Neumann neighborhood.

The programs for A282104, there is no canonical definition to state claims against.
-/

/-! ## A282104.P9023268668236419623

`A007088(A282106(n))`
-/

namespace A282104.P9023268668236419623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282106 n).toNat

end

end A282104.P9023268668236419623

/-! ## A282104.P17108566118962872201

`A007088(A267207(n)%A096252(n))`
-/

namespace A282104.P17108566118962872201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A267207 n) (A096252 n)).toNat

end

end A282104.P17108566118962872201

/-! ## A282104.P18114550959667362658

`A007088(and(A126646(n), A267207(n)))`
-/

namespace A282104.P18114550959667362658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A126646 n) (A267207 n)).toNat

end

end A282104.P18114550959667362658

/-! ## A282104.P3022826697883952781

`A007088(and(A267207(n), A281482(n)))`
-/

namespace A282104.P3022826697883952781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A267207 n) (A281482 n)).toNat

end

end A282104.P3022826697883952781

/-! ## A282104.P8607024379352435078

`A007088(and(A267207(n), A290682(n)))`
-/

namespace A282104.P8607024379352435078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A267207 n) (A290682 n)).toNat

end

end A282104.P8607024379352435078

/-!
# A282105: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 427", based on the 5-celled von Neumann neighborhood.

The programs for A282105, the canonical program `A282105.P4915360113653141647` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282105 has offset 0).

The definition of A282105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282105.P4915360113653141647

`ogf((1+x+7x^2+3x^3+12x^4+8x^6-8x^7)/(1-x^3-16x^4+16x^7))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282105

/-- `ogf((1+x+7x^2+3x^3+12x^4+8x^6-8x^7)/(1-x^3-16x^4+16x^7))` -/
def P4915360113653141647.Spec : Prop :=
  ∀ n, P4915360113653141647.a n = A282105 n

theorem P4915360113653141647.correct : P4915360113653141647.Spec := by
  intro n
  simp only [A282105]

end A282105

/-! ## A282105.P14922466560996603843

`floor(A267207(n)/A000079(n))`
-/

namespace A282105.P14922466560996603843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267207 n : ℚ) / (A000079 n : ℚ)⌋

end

end A282105.P14922466560996603843

namespace A282105

/-- `floor(A267207(n)/A000079(n))` -/
def P14922466560996603843.Spec : Prop :=
  ∀ n, P14922466560996603843.a n = A282105 n

end A282105

/-! ## A282105.P8035196275003807905

`floor(A267207(n)/∑[A011782(n)])`
-/

namespace A282105.P8035196275003807905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267207 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A282105.P8035196275003807905

namespace A282105

/-- `floor(A267207(n)/∑[A011782(n)])` -/
def P8035196275003807905.Spec : Prop :=
  ∀ n, P8035196275003807905.a n = A282105 n

end A282105

/-! ## A282105.P5556953972309447836

`floor(A267207(n)/A011782(n+1))`
-/

namespace A282105.P5556953972309447836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267207 n : ℚ) / (A011782 (n + 1) : ℚ)⌋

end

end A282105.P5556953972309447836

namespace A282105

/-- `floor(A267207(n)/A011782(n+1))` -/
def P5556953972309447836.Spec : Prop :=
  ∀ n, P5556953972309447836.a n = A282105 n

end A282105

/-! ## A282105.P4618812480625446709

`floor(A267207(n)/A016116(2*n))`
-/

namespace A282105.P4618812480625446709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267207 n : ℚ) / (A016116 (2 * n) : ℚ)⌋

end

end A282105.P4618812480625446709

namespace A282105

/-- `floor(A267207(n)/A016116(2*n))` -/
def P4618812480625446709.Spec : Prop :=
  ∀ n, P4618812480625446709.a n = A282105 n

end A282105

/-! ## A282105.P15807855955844984819

`floor(A267207(n)/A017910(2*n))`
-/

namespace A282105.P15807855955844984819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267207 n : ℚ) / (A017910 (2 * n) : ℚ)⌋

end

end A282105.P15807855955844984819

namespace A282105

/-- `floor(A267207(n)/A017910(2*n))` -/
def P15807855955844984819.Spec : Prop :=
  ∀ n, P15807855955844984819.a n = A282105 n

end A282105

/-!
# A282106: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 427", based on the 5-celled von Neumann neighborhood.

The programs for A282106, the canonical program `A282106.P5811893281029708209` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282106 has offset 0).

The definition of A282106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282106.P5811893281029708209

`ogf((1+2x+7x^2-6x^3+6x^4+8x^6-16x^7)/(1-8x^3-x^4+8x^7))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282106

/-- `ogf((1+2x+7x^2-6x^3+6x^4+8x^6-16x^7)/(1-8x^3-x^4+8x^7))` -/
def P5811893281029708209.Spec : Prop :=
  ∀ n, P5811893281029708209.a n = A282106 n

theorem P5811893281029708209.correct : P5811893281029708209.Spec := by
  intro n
  simp only [A282106]

end A282106

/-! ## A282106.P10794060473408821738

`A267207(n)%A096252(n)`
-/

namespace A282106.P10794060473408821738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267207 n) (A096252 n)

end

end A282106.P10794060473408821738

namespace A282106

/-- `A267207(n)%A096252(n)` -/
def P10794060473408821738.Spec : Prop :=
  ∀ n, P10794060473408821738.a n = A282106 n

end A282106

/-! ## A282106.P5168518514476195659

`and(A126646(n), A267207(n))`
-/

namespace A282106.P5168518514476195659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A267207 n)

end

end A282106.P5168518514476195659

namespace A282106

/-- `and(A126646(n), A267207(n))` -/
def P5168518514476195659.Spec : Prop :=
  ∀ n, P5168518514476195659.a n = A282106 n

end A282106

/-! ## A282106.P13946746616783020377

`and(A267207(n), A281482(n))`
-/

namespace A282106.P13946746616783020377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267207 n) (A281482 n)

end

end A282106.P13946746616783020377

namespace A282106

/-- `and(A267207(n), A281482(n))` -/
def P13946746616783020377.Spec : Prop :=
  ∀ n, P13946746616783020377.a n = A282106 n

end A282106

/-! ## A282106.P17393043254933813685

`and(A267207(n), A290682(n))`
-/

namespace A282106.P17393043254933813685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267207 n) (A290682 n)

end

end A282106.P17393043254933813685

namespace A282106

/-- `and(A267207(n), A290682(n))` -/
def P17393043254933813685.Spec : Prop :=
  ∀ n, P17393043254933813685.a n = A282106 n

end A282106

/-! ## A282106.P5393946994777872922

`and(∑[A000079(n)], A267207(n))`
-/

namespace A282106.P5393946994777872922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A267207 n)

end

end A282106.P5393946994777872922

namespace A282106

/-- `and(∑[A000079(n)], A267207(n))` -/
def P5393946994777872922.Spec : Prop :=
  ∀ n, P5393946994777872922.a n = A282106 n

end A282106

/-!
# A282107: Numbers n with k digits in base x (MSD(n)_x=d_k, LSD(n)_x=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j+1..k}{(i-j)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 2.

The programs for A282107, there is no canonical definition to state claims against.
-/

/-! ## A282107.P15957722904367865153

`1+eq[A043545(n), A326700(n+1)]`
-/

namespace A282107.P15957722904367865153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282107.P15957722904367865153

/-! ## A282107.P1105968109857445362

`eq[A255308(n+1)+1, A326700(n+1)]+1`
-/

namespace A282107.P1105968109857445362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A282107.P1105968109857445362

/-! ## A282107.P2539197176346429157

`A065475(eq[A043545(n), A326700(n+1)])`
-/

namespace A282107.P2539197176346429157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A282107.P2539197176346429157

/-! ## A282107.P8374177420649521549

`A153152(eq[A043545(n), A326700(n+1)])`
-/

namespace A282107.P8374177420649521549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A282107.P8374177420649521549

/-! ## A282107.P9935564784942945999

`A153152(eq[A326700(n+1)+n, A153152(n)])`
-/

namespace A282107.P9935564784942945999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A282107.P9935564784942945999

/-! ## A282107.P9985434343654121771

`eq[A014963(2*(n+1)), A326700(n+1)]+1`
-/

namespace A282107.P9985434343654121771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A282107.P9985434343654121771

/-! ## A282107.P13111834219353623928

`filter[A326669(n+1), A347523(#)]`
-/

namespace A282107.P13111834219353623928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A282107.P13111834219353623928

/-! ## A282107.P12526468306933615068

`filter[A326669(n+2), A267579(#)]`
-/

namespace A282107.P12526468306933615068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326669 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A282107.P12526468306933615068

/-! ## A282107.P8477233026527597200

`∩[A057716(n), A326669(n+1)]`
-/

namespace A282107.P8477233026527597200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282107.P8477233026527597200

/-! ## A282107.P2242039569207349450

`∩[A116451(n), A326669(n+1)]`
-/

namespace A282107.P2242039569207349450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282107.P2242039569207349450

/-!
# A282108: Numbers n with k digits in base x (MSD(n)=d_k, LSD(n)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j+1..k}{(i-j)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 3.

The programs for A282108, there is no canonical definition to state claims against.
-/

/-! ## A282108.P9706178626968757803

`A183110(A285220(2*n+5)-2)`
-/

namespace A282108.P9706178626968757803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183110 (A285220 (2 * n + 5) - 2).toNat

end

end A282108.P9706178626968757803

/-! ## A282108.P17283226661750614693

`A219251(n+1)+A004233(A082113(n))`
-/

namespace A282108.P17283226661750614693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219251 (n + 1) + A004233 (A082113 n).toNat

end

end A282108.P17283226661750614693

/-! ## A282108.P3945771125159045027

`A005245(n+1)+A005245(A026644(n+4))`
-/

namespace A282108.P3945771125159045027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (n + 1) + A005245 (A026644 (n + 4)).toNat

end

end A282108.P3945771125159045027

/-!
# A282109: Numbers n with k digits in base x (MSD(n)=d_k, LSD(n)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j+1..k}{(i-j)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 4.

The programs for A282109, there is no canonical definition to state claims against.
-/

/-! ## A282109.P7177149960221240177

`eq[15, A055949(n)]+1`
-/

namespace A282109.P7177149960221240177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A282109.P7177149960221240177

/-! ## A282109.P3314490192974559716

`A011760(eq[15, A055949(n)])`
-/

namespace A282109.P3314490192974559716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282109.P3314490192974559716

/-! ## A282109.P6942103289792304865

`A020725(eq[15, A055949(n)])`
-/

namespace A282109.P6942103289792304865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282109.P6942103289792304865

/-! ## A282109.P13176879071451860915

`A065475(eq[15, A055949(n)])`
-/

namespace A282109.P13176879071451860915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282109.P13176879071451860915

/-! ## A282109.P9585330177077923250

`A204164(A016970(n+4))-4`
-/

namespace A282109.P9585330177077923250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A016970 (n + 4)).toNat - 4

end

end A282109.P9585330177077923250

/-!
# A282110: Numbers m with k digits in base x (MSD(m)=d_k, LSD(m)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j+1..k}{(i-j)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 5.

The programs for A282110, there is no canonical definition to state claims against.
-/

/-! ## A282110.P9704299222791023237

`eq[24, A055951(n)]+1`
-/

namespace A282110.P9704299222791023237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A282110.P9704299222791023237

/-! ## A282110.P780918933429233757

`eq[n, A030104(n)+24]+1`
-/

namespace A282110.P780918933429233757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A282110.P780918933429233757

/-! ## A282110.P15185402820805277920

`A065475(eq[24, A055951(n)])`
-/

namespace A282110.P15185402820805277920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282110.P15185402820805277920

/-! ## A282110.P8423236698376618817

`A153152(eq[24, A055951(n)])`
-/

namespace A282110.P8423236698376618817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282110.P8423236698376618817

/-! ## A282110.P2332256395132607011

`eq[0, A110726(A024657(2*n))]`
-/

namespace A282110.P2332256395132607011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110726 ((A024657 (2 * n)).toNat + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282110.P2332256395132607011

/-!
# A282111: Numbers n with k digits in base x (MSD(n)=d_k, LSD(n)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j+1..k}{(i-j)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 6.

The programs for A282111, there is no canonical definition to state claims against.
-/

/-! ## A282111.P7595878863798089003

`eq[35, A055953(n)]+1`
-/

namespace A282111.P7595878863798089003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A282111.P7595878863798089003

/-! ## A282111.P15697731970079201892

`eq[n, A030105(n+1)+34]+2`
-/

namespace A282111.P15697731970079201892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (n + 1) + 34

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A282111.P15697731970079201892

/-! ## A282111.P1599575425400321565

`A020725(eq[35, A055953(n)])`
-/

namespace A282111.P1599575425400321565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282111.P1599575425400321565

/-! ## A282111.P10208017379188160126

`A065475(eq[35, A055953(n)])`
-/

namespace A282111.P10208017379188160126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282111.P10208017379188160126

/-! ## A282111.P3853723571651393945

`A153152(eq[35, A055953(n)])`
-/

namespace A282111.P3853723571651393945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282111.P3853723571651393945

/-!
# A282112: Numbers n with k digits in base x (MSD(n)=d_k, LSD(n)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j+1..k}{(i-j)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 7.

The programs for A282112, there is no canonical definition to state claims against.
-/

/-! ## A282112.P1860454466627916627

`A029954(n+14)%A269816(A084457(n))`
-/

namespace A282112.P1860454466627916627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029954 (n + 14)) (A269816 (A084457 n).toNat)

end

end A282112.P1860454466627916627

/-! ## A282112.P9689946151875621885

`A029954(n+14)+A025455(A153005(n+1))`
-/

namespace A282112.P9689946151875621885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 14) + A025455 (A153005 (n + 1)).toNat

end

end A282112.P9689946151875621885

/-! ## A282112.P7088340548355968325

`A014963(A119864(n+1))*A029954(n+14)`
-/

namespace A282112.P7088340548355968325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A119864 (n + 1)).toNat * A029954 (n + 14)

end

end A282112.P7088340548355968325

/-! ## A282112.P15215066902542041625

`eq[n+98, A030106(n+2)]`
-/

namespace A282112.P15215066902542041625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 98

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282112.P15215066902542041625

/-! ## A282112.P6425826382590181635

`A029954(A077739(n+1)+13)`
-/

namespace A282112.P6425826382590181635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (A077739 (n + 1) + 13).toNat

end

end A282112.P6425826382590181635

/-!
# A282113: Numbers n with k digits in base x (MSD(n)=d_k, LSD(n)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j+1..k}{(i-j)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 8.

The programs for A282113, there is no canonical definition to state claims against.
-/

/-! ## A282113.P9676050040094857294

`A144972(A323610(n+2))`
-/

namespace A282113.P9676050040094857294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (A323610 (n + 2)).toNat

end

end A282113.P9676050040094857294

/-! ## A282113.P74550750690482630

`A029803(n+16)+A000007(A028627(n))`
-/

namespace A282113.P74550750690482630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 16) + A000007 (A028627 n).toNat

end

end A282113.P74550750690482630

/-! ## A282113.P11503615788942760947

`A029803(n+16)+A010054(A028627(n)+1)`
-/

namespace A282113.P11503615788942760947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 16) + A010054 (A028627 n + 1).toNat

end

end A282113.P11503615788942760947

/-! ## A282113.P6174115296710392476

`A083918(A128539(n+1))+A029803(n+16)`
-/

namespace A282113.P6174115296710392476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A128539 (n + 1)).toNat + A029803 (n + 16)

end

end A282113.P6174115296710392476

/-! ## A282113.P12351633793519285781

`A001222(A130903(n+1))*A029803(n+16)`
-/

namespace A282113.P12351633793519285781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A130903 (n + 1)).toNat * A029803 (n + 16)

end

end A282113.P12351633793519285781

/-! ## A282113.P670954314294885009

`A001222(A029976(n+9))*A029803(n+16)`
-/

namespace A282113.P670954314294885009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A029976 (n + 9)).toNat * A029803 (n + 16)

end

end A282113.P670954314294885009

/-! ## A282113.P13678867996592341789

`A029803(n+16)%A003215(A144591(n+1))`
-/

namespace A282113.P13678867996592341789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029803 (n + 16)) (A003215 (A144591 (n + 1)).toNat)

end

end A282113.P13678867996592341789

/-!
# A282114: Numbers n with k digits in base x (MSD(n)=d_k, LSD(n)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j+1..k}{(i-j)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 9.

The programs for A282114, there is no canonical definition to state claims against.
-/

/-! ## A282114.P5468646170478857611

`eq[n+1, A264979(A344811(n+1))]`
-/

namespace A282114.P5468646170478857611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264979 (A344811 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282114.P5468646170478857611

/-! ## A282114.P3905884416239627429

`A088481(n+9)+A022144(n+9)`
-/

namespace A282114.P3905884416239627429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088481 (n + 9) + A022144 (n + 9)

end

end A282114.P3905884416239627429

/-! ## A282114.P16953977805284752716

`A020753(n+2)+8*(n+10)`
-/

namespace A282114.P16953977805284752716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (n + 2) + (8 * (n + 10) : ℤ)

end

end A282114.P16953977805284752716

/-! ## A282114.P6994691149354962108

`A029955(A187829(n+1)+17)`
-/

namespace A282114.P6994691149354962108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (A187829 (n + 1) + 17).toNat

end

end A282114.P6994691149354962108

/-! ## A282114.P18248413923708713856

`A297268(A297287(n+1)^A208673(n))`
-/

namespace A282114.P18248413923708713856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297268 (SequenceMachineLib.roundAway ((A297287 (n + 1) : ℚ) ^ (A208673 n : ℤ))).toNat

end

end A282114.P18248413923708713856

/-!
# A282115: Numbers m with k digits in base b (MSD(m)=d_k, LSD(m)=d_1) such that, for one of their digits in position d_k < j < d_1, Sum_{i=j+1..k} (i-j)*d_i = Sum_{i=1..j-1} (j-i)*d_i. Case b = 10.

The programs for A282115, there is no canonical definition to state claims against.
-/

/-! ## A282115.P8384889291983573270

`A004086(A056142(n+10))`
-/

namespace A282115.P8384889291983573270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A056142 (n + 10)).toNat

end

end A282115.P8384889291983573270

/-! ## A282115.P5101573317900026939

`A004151(A056525(n+10))`
-/

namespace A282115.P5101573317900026939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A056525 (n + 10)).toNat

end

end A282115.P5101573317900026939

/-! ## A282115.P896811983130792450

`A059995(A020338(n+10))`
-/

namespace A282115.P896811983130792450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A020338 (n + 10)).toNat

end

end A282115.P896811983130792450

/-! ## A282115.P5512245649687007

`A062279(A002113(n+20))`
-/

namespace A282115.P5512245649687007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 (A002113 (n + 20)).toNat

end

end A282115.P5512245649687007

/-! ## A282115.P14357601642191629471

`eq[2, A056558(A139337(n))]`
-/

namespace A282115.P14357601642191629471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282115.P14357601642191629471

/-! ## A282115.P2954929698213253069

`A153152(eq[99, A056965(n)])`
-/

namespace A282115.P2954929698213253069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  99

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282115.P2954929698213253069

/-! ## A282115.P3290810098712107326

`A262038(eq[99, A056965(n)])`
-/

namespace A282115.P3290810098712107326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  99

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282115.P3290810098712107326

/-! ## A282115.P6717800235843019055

`A001281(2*A056525(n+10))`
-/

namespace A282115.P6717800235843019055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A056525 (n + 10)).toNat

end

end A282115.P6717800235843019055

/-! ## A282115.P14887180350751550641

`A004525(2*A056525(n+10))`
-/

namespace A282115.P14887180350751550641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A056525 (n + 10)).toNat

end

end A282115.P14887180350751550641

/-! ## A282115.P15122903126634165215

`A004526(2*A056525(n+10))`
-/

namespace A282115.P15122903126634165215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A056525 (n + 10)).toNat

end

end A282115.P15122903126634165215

/-!
# A282117: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 429", based on the 5-celled von Neumann neighborhood.

The programs for A282117, there is no canonical definition to state claims against.
-/

/-! ## A282117.P3424689724950987432

`A007088(A282119(n))`
-/

namespace A282117.P3424689724950987432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282119 n).toNat

end

end A282117.P3424689724950987432

/-! ## A282117.P3111594587494797353

`A185544(2*A282119(n))`
-/

namespace A282117.P3111594587494797353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282119 n).toNat

end

end A282117.P3111594587494797353

/-!
# A282118: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 429", based on the 5-celled von Neumann neighborhood.

The programs for A282118, there is no canonical definition to state claims against.
-/

/-! ## A282118.P13637635818738538069

`A007088(A282120(n))`
-/

namespace A282118.P13637635818738538069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282120 n).toNat

end

end A282118.P13637635818738538069

/-! ## A282118.P11078238111870707725

`A185544(2*A282120(n))`
-/

namespace A282118.P11078238111870707725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282120 n).toNat

end

end A282118.P11078238111870707725

/-!
# A282121: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

The programs for A282121, the canonical program `A282121.P687425894295116859` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282121 has offset 0).

The definition of A282121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282121.P687425894295116859

`or(A277926(n), A277952(A237420(n)))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A282121

/-- `or(A277926(n), A277952(A237420(n)))` -/
def P687425894295116859.Spec : Prop :=
  ∀ n, P687425894295116859.a n = A282121 n

theorem P687425894295116859.correct : P687425894295116859.Spec := by
  intro n
  simp only [A282121]

end A282121

/-! ## A282121.P2285613797950369665

`A000042(n+1)-A282088(A028310(n))`
-/

namespace A282121.P2285613797950369665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A282088 (A028310 n).toNat

end

end A282121.P2285613797950369665

namespace A282121

/-- `A000042(n+1)-A282088(A028310(n))` -/
def P2285613797950369665.Spec : Prop :=
  ∀ n, P2285613797950369665.a n = A282121 n

end A282121

/-! ## A282121.P13745560501117778750

`A000042(n+1)-A282088(n)%A000042(n+1)`
-/

namespace A282121.P13745560501117778750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A282088 n) (A000042 (n + 1))

end

end A282121.P13745560501117778750

namespace A282121

/-- `A000042(n+1)-A282088(n)%A000042(n+1)` -/
def P13745560501117778750.Spec : Prop :=
  ∀ n, P13745560501117778750.a n = A282121 n

end A282121

/-! ## A282121.P165380418073738332

`A011557(n)+A007088(A084184(n))`
-/

namespace A282121.P165380418073738332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + A007088 (A084184 n).toNat

end

end A282121.P165380418073738332

namespace A282121

/-- `A011557(n)+A007088(A084184(n))` -/
def P165380418073738332.Spec : Prop :=
  ∀ n, P165380418073738332.a n = A282121 n

end A282121

/-! ## A282121.P5255241447442379455

`A007088(A084184(n))+Δ[A002275(n)]`
-/

namespace A282121.P5255241447442379455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A084184 n).toNat + (f1 (n + 1) - f1 n)

end

end A282121.P5255241447442379455

namespace A282121

/-- `A007088(A084184(n))+Δ[A002275(n)]` -/
def P5255241447442379455.Spec : Prop :=
  ∀ n, P5255241447442379455.a n = A282121 n

end A282121

/-!
# A282122: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

The programs for A282122, the canonical program `A282122.P11801974229766094100` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282122 has offset 0).

The definition of A282122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282122.P11801974229766094100

`A056830(n*and(1, n)+1)+A056830(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A282122

/-- `A056830(n*and(1, n)+1)+A056830(n)` -/
def P11801974229766094100.Spec : Prop :=
  ∀ n, P11801974229766094100.a n = A282122 n

theorem P11801974229766094100.correct : P11801974229766094100.Spec := by
  intro n
  simp only [A282122]

end A282122

/-! ## A282122.P7091205068809741505

`or(A277926(n), A277953(A237420(n)))`
-/

namespace A282122.P7091205068809741505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277926 n) (A277953 (A237420 n).toNat)

end

end A282122.P7091205068809741505

namespace A282122

/-- `or(A277926(n), A277953(A237420(n)))` -/
def P7091205068809741505.Spec : Prop :=
  ∀ n, P7091205068809741505.a n = A282122 n

end A282122

/-! ## A282122.P17426200682048792110

`∑[A098610(n)]-A279028(n)`
-/

namespace A282122.P17426200682048792110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A279028 n

end

end A282122.P17426200682048792110

namespace A282122

/-- `∑[A098610(n)]-A279028(n)` -/
def P17426200682048792110.Spec : Prop :=
  ∀ n, P17426200682048792110.a n = A282122 n

end A282122

/-! ## A282122.P551446543615270999

`ceil(A000042(n+1)/A266327(n+1))`
-/

namespace A282122.P551446543615270999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000042 (n + 1) : ℚ) / (A266327 (n + 1) : ℚ)⌉

end

end A282122.P551446543615270999

namespace A282122

/-- `ceil(A000042(n+1)/A266327(n+1))` -/
def P551446543615270999.Spec : Prop :=
  ∀ n, P551446543615270999.a n = A282122 n

end A282122

/-! ## A282122.P1980594992686916387

`A000042(n+1)-A282142(A028310(n))`
-/

namespace A282122.P1980594992686916387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A282142 (A028310 n).toNat

end

end A282122.P1980594992686916387

namespace A282122

/-- `A000042(n+1)-A282142(A028310(n))` -/
def P1980594992686916387.Spec : Prop :=
  ∀ n, P1980594992686916387.a n = A282122 n

end A282122

/-!
# A282123: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

The programs for A282123, the canonical program `A282123.P17847171103477517914` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282123 has offset 0).

The definition of A282123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282123.P17847171103477517914

`ogf((1+3x+x^2)/(1-5x^2+4x^4))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282123

/-- `ogf((1+3x+x^2)/(1-5x^2+4x^4))` -/
def P17847171103477517914.Spec : Prop :=
  ∀ n, P17847171103477517914.a n = A282123 n

theorem P17847171103477517914.correct : P17847171103477517914.Spec := by
  intro n
  simp only [A282123]

end A282123

/-! ## A282123.P7916279688204022492

`4*a(n-2)+n%2+2` with `a(0)=1, a(1)=3`
-/

namespace A282123.P7916279688204022492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 2) + (n % 2 + 2)

end

end A282123.P7916279688204022492

namespace A282123

/-- `4*a(n-2)+n%2+2` -/
def P7916279688204022492.Spec : Prop :=
  ∀ n, (P7916279688204022492.a n : ℤ) = A282123 n

end A282123

/-! ## A282123.P8607579232499720539

`4*(a(n-2)+1)-gcd(2, n)` with `a(0)=1, a(1)=3`
-/

namespace A282123.P8607579232499720539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (a (n - 2) + 1) - (Nat.gcd 2 n : ℤ)

end

end A282123.P8607579232499720539

namespace A282123

/-- `4*(a(n-2)+1)-gcd(2, n)` -/
def P8607579232499720539.Spec : Prop :=
  ∀ n, P8607579232499720539.a n = A282123 n

end A282123

/-! ## A282123.P13649984649553635690

`4*a(n-2)+2-floor(tan(3)^n)` with `a(0)=1, a(1)=3`
-/

namespace A282123.P13649984649553635690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 2) + (2 - ⌊Real.tan (3 : ℝ) ^ n⌋)

end

end A282123.P13649984649553635690

namespace A282123

/-- `4*a(n-2)+2-floor(tan(3)^n)` -/
def P13649984649553635690.Spec : Prop :=
  ∀ n, P13649984649553635690.a n = A282123 n

end A282123

/-! ## A282123.P5620133338356784734

`3-(a(n-1)%2-4*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A282123.P5620133338356784734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - (Int.tmod (a (n - 1)) 2 - 4 * a (n - 2))

end

end A282123.P5620133338356784734

namespace A282123

/-- `3-(a(n-1)%2-4*a(n-2))` -/
def P5620133338356784734.Spec : Prop :=
  ∀ n, P5620133338356784734.a n = A282123 n

end A282123

/-! ## A282123.P1757622785139030228

`A084184(n)+2^n`
-/

namespace A282123.P1757622785139030228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 n + (2 ^ n : ℤ)

end

end A282123.P1757622785139030228

namespace A282123

/-- `A084184(n)+2^n` -/
def P1757622785139030228.Spec : Prop :=
  ∀ n, P1757622785139030228.a n = A282123 n

end A282123

/-! ## A282123.P11770065999485471580

`∑[A084183(n)]+2^n`
-/

namespace A282123.P11770065999485471580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ)

end

end A282123.P11770065999485471580

namespace A282123

/-- `∑[A084183(n)]+2^n` -/
def P11770065999485471580.Spec : Prop :=
  ∀ n, P11770065999485471580.a n = A282123 n

end A282123

/-! ## A282123.P16323438101997641594

`xor(char[2*n]+2*a(n-1), A167167(n))` with `a(0)=1`
-/

namespace A282123.P16323438101997641594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2 * a (n - 1)) (A167167 n)

end

end A282123.P16323438101997641594

namespace A282123

/-- `xor(char[2*n]+2*a(n-1), A167167(n))` -/
def P16323438101997641594.Spec : Prop :=
  ∀ n, P16323438101997641594.a n = A282123 n

end A282123

/-! ## A282123.P5949752883887544009

`A166920(n)+A131588(n)`
-/

namespace A282123.P5949752883887544009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 n + A131588 n

end

end A282123.P5949752883887544009

namespace A282123

/-- `A166920(n)+A131588(n)` -/
def P5949752883887544009.Spec : Prop :=
  ∀ n, P5949752883887544009.a n = A282123 n

end A282123

/-! ## A282123.P840799795509492966

`or(A051049(n), A060590(n))`
-/

namespace A282123.P840799795509492966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A060590 n)

end

end A282123.P840799795509492966

namespace A282123

/-- `or(A051049(n), A060590(n))` -/
def P840799795509492966.Spec : Prop :=
  ∀ n, P840799795509492966.a n = A282123 n

end A282123

/-! ## A282123.P17410423534565896432

`or(A051049(n), A084170(n))`
-/

namespace A282123.P17410423534565896432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A084170 n)

end

end A282123.P17410423534565896432

namespace A282123

/-- `or(A051049(n), A084170(n))` -/
def P17410423534565896432.Spec : Prop :=
  ∀ n, P17410423534565896432.a n = A282123 n

end A282123

/-! ## A282123.P7363474705229961711

`or(A084170(n), A084184(n))`
-/

namespace A282123.P7363474705229961711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084170 n) (A084184 n)

end

end A282123.P7363474705229961711

namespace A282123

/-- `or(A084170(n), A084184(n))` -/
def P7363474705229961711.Spec : Prop :=
  ∀ n, P7363474705229961711.a n = A282123 n

end A282123

/-! ## A282123.P14729858454526384447

`xor(A000079(n), A084184(n))`
-/

namespace A282123.P14729858454526384447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A084184 n)

end

end A282123.P14729858454526384447

namespace A282123

/-- `xor(A000079(n), A084184(n))` -/
def P14729858454526384447.Spec : Prop :=
  ∀ n, P14729858454526384447.a n = A282123 n

end A282123

/-! ## A282123.P5620133320329816067

`A000079(n)+∑[A084183(n)]`
-/

namespace A282123.P5620133320329816067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282123.P5620133320329816067

namespace A282123

/-- `A000079(n)+∑[A084183(n)]` -/
def P5620133320329816067.Spec : Prop :=
  ∀ n, P5620133320329816067.a n = A282123 n

end A282123

/-! ## A282123.P9685014377078070027

`∑[A084221(n)-A001045(n)]`
-/

namespace A282123.P9685014377078070027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n - A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282123.P9685014377078070027

namespace A282123

/-- `∑[A084221(n)-A001045(n)]` -/
def P9685014377078070027.Spec : Prop :=
  ∀ n, P9685014377078070027.a n = A282123 n

end A282123

/-! ## A282123.P8599480424337412665

`or(∑[A084183(n)], A084170(n))`
-/

namespace A282123.P8599480424337412665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A084170 n)

end

end A282123.P8599480424337412665

namespace A282123

/-- `or(∑[A084183(n)], A084170(n))` -/
def P8599480424337412665.Spec : Prop :=
  ∀ n, P8599480424337412665.a n = A282123 n

end A282123

/-! ## A282123.P11298726146611497329

`A000225(n)+A084184(n)+1`
-/

namespace A282123.P11298726146611497329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A084184 n + 1)

end

end A282123.P11298726146611497329

namespace A282123

/-- `A000225(n)+A084184(n)+1` -/
def P11298726146611497329.Spec : Prop :=
  ∀ n, P11298726146611497329.a n = A282123 n

end A282123

/-! ## A282123.P4498484672889189960

`A060590(n)+A059222(n+1)`
-/

namespace A282123.P4498484672889189960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060590 n + A059222 (n + 1)

end

end A282123.P4498484672889189960

namespace A282123

/-- `A060590(n)+A059222(n+1)` -/
def P4498484672889189960.Spec : Prop :=
  ∀ n, P4498484672889189960.a n = A282123 n

end A282123

/-! ## A282123.P14847213274603882139

`A000051(n)+A084184(n)-1`
-/

namespace A282123.P14847213274603882139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A084184 n - 1)

end

end A282123.P14847213274603882139

namespace A282123

/-- `A000051(n)+A084184(n)-1` -/
def P14847213274603882139.Spec : Prop :=
  ∀ n, P14847213274603882139.a n = A282123 n

end A282123

/-! ## A282123.P719070532967543687

`or(A000975(n), A061547(n+2))`
-/

namespace A282123.P719070532967543687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000975 n) (A061547 (n + 2))

end

end A282123.P719070532967543687

namespace A282123

/-- `or(A000975(n), A061547(n+2))` -/
def P719070532967543687.Spec : Prop :=
  ∀ n, P719070532967543687.a n = A282123 n

end A282123

/-!
# A282124: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

The programs for A282124, the canonical program `A282124.P10214142828902053638` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282124 has offset 0).

The definition of A282124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282124.P10214142828902053638

`ogf((1+3x-2x^2)/(1-5x^2+4x^4))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282124

/-- `ogf((1+3x-2x^2)/(1-5x^2+4x^4))` -/
def P10214142828902053638.Spec : Prop :=
  ∀ n, P10214142828902053638.a n = A282124 n

theorem P10214142828902053638.correct : P10214142828902053638.Spec := by
  intro n
  simp only [A282124]

end A282124

/-! ## A282124.P11525040999859470442

`4*(a(n-2)+n%2)-1` with `a(0)=1, a(1)=3`
-/

namespace A282124.P11525040999859470442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (a (n - 2) + ((n % 2 : ℕ) : ℤ)) - 1

end

end A282124.P11525040999859470442

namespace A282124

/-- `4*(a(n-2)+n%2)-1` -/
def P11525040999859470442.Spec : Prop :=
  ∀ n, P11525040999859470442.a n = A282124 n

end A282124

/-! ## A282124.P1162015610963249710

`A060590(n)+1`
-/

namespace A282124.P1162015610963249710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060590 n + 1

end

end A282124.P1162015610963249710

namespace A282124

/-- `A060590(n)+1` -/
def P1162015610963249710.Spec : Prop :=
  ∀ n, P1162015610963249710.a n = A282124 n

end A282124

/-! ## A282124.P12623941705649075693

`lcm(2, A084184(n))+1`
-/

namespace A282124.P12623941705649075693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A084184 n) + 1

end

end A282124.P12623941705649075693

namespace A282124

/-- `lcm(2, A084184(n))+1` -/
def P12623941705649075693.Spec : Prop :=
  ∀ n, (P12623941705649075693.a n : ℤ) = A282124 n

end A282124

/-! ## A282124.P638982494311887166

`A084184(n)+A066532(n+1)`
-/

namespace A282124.P638982494311887166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 n + A066532 (n + 1)

end

end A282124.P638982494311887166

namespace A282124

/-- `A084184(n)+A066532(n+1)` -/
def P638982494311887166.Spec : Prop :=
  ∀ n, P638982494311887166.a n = A282124 n

end A282124

/-! ## A282124.P14947291308734541909

`A096773(n+1)+A078008(n)`
-/

namespace A282124.P14947291308734541909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096773 (n + 1) + A078008 n

end

end A282124.P14947291308734541909

namespace A282124

/-- `A096773(n+1)+A078008(n)` -/
def P14947291308734541909.Spec : Prop :=
  ∀ n, P14947291308734541909.a n = A282124 n

end A282124

/-! ## A282124.P8422638405063775337

`A001045(n+1)*A010684(n)`
-/

namespace A282124.P8422638405063775337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A010684 n

end

end A282124.P8422638405063775337

namespace A282124

/-- `A001045(n+1)*A010684(n)` -/
def P8422638405063775337.Spec : Prop :=
  ∀ n, P8422638405063775337.a n = A282124 n

end A282124

/-! ## A282124.P11779734383617292141

`A000034(n)*A084184(n)+1`
-/

namespace A282124.P11779734383617292141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A084184 n + 1

end

end A282124.P11779734383617292141

namespace A282124

/-- `A000034(n)*A084184(n)+1` -/
def P11779734383617292141.Spec : Prop :=
  ∀ n, P11779734383617292141.a n = A282124 n

end A282124

/-! ## A282124.P16935840882314487474

`A010684(n)*A167167(n+1)`
-/

namespace A282124.P16935840882314487474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A167167 (n + 1)

end

end A282124.P16935840882314487474

namespace A282124

/-- `A010684(n)*A167167(n+1)` -/
def P16935840882314487474.Spec : Prop :=
  ∀ n, P16935840882314487474.a n = A282124 n

end A282124

/-! ## A282124.P10645310305594098710

`(1-A010673(n)²)*A077925(n)`
-/

namespace A282124.P10645310305594098710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n ^ 2) * A077925 n

end

end A282124.P10645310305594098710

namespace A282124

/-- `(1-A010673(n)²)*A077925(n)` -/
def P10645310305594098710.Spec : Prop :=
  ∀ n, P10645310305594098710.a n = A282124 n

end A282124

/-! ## A282124.P2405488145764067827

`A167030(n+1)+A166752(n+1)`
-/

namespace A282124.P2405488145764067827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 (n + 1) + A166752 (n + 1)

end

end A282124.P2405488145764067827

namespace A282124

/-- `A167030(n+1)+A166752(n+1)` -/
def P2405488145764067827.Spec : Prop :=
  ∀ n, P2405488145764067827.a n = A282124 n

end A282124

/-! ## A282124.P4173099146099008084

`A282577(n+1)+A193652(n+1)`
-/

namespace A282124.P4173099146099008084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282577 (n + 1) + A193652 (n + 1)

end

end A282124.P4173099146099008084

namespace A282124

/-- `A282577(n+1)+A193652(n+1)` -/
def P4173099146099008084.Spec : Prop :=
  ∀ n, P4173099146099008084.a n = A282124 n

end A282124

/-! ## A282124.P2572268026356085492

`A001045(n+1)*A176040(n+1)`
-/

namespace A282124.P2572268026356085492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A176040 (n + 1)

end

end A282124.P2572268026356085492

namespace A282124

/-- `A001045(n+1)*A176040(n+1)` -/
def P2572268026356085492.Spec : Prop :=
  ∀ n, P2572268026356085492.a n = A282124 n

end A282124

/-! ## A282124.P13395068624492824184

`A001045(n+1)*A153284(n+2)`
-/

namespace A282124.P13395068624492824184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A153284 (n + 2)

end

end A282124.P13395068624492824184

namespace A282124

/-- `A001045(n+1)*A153284(n+2)` -/
def P13395068624492824184.Spec : Prop :=
  ∀ n, P13395068624492824184.a n = A282124 n

end A282124

/-! ## A282124.P10860284449118733205

`(2-A033999(n))*A001045(n+1)`
-/

namespace A282124.P10860284449118733205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A001045 (n + 1)

end

end A282124.P10860284449118733205

namespace A282124

/-- `(2-A033999(n))*A001045(n+1)` -/
def P10860284449118733205.Spec : Prop :=
  ∀ n, P10860284449118733205.a n = A282124 n

end A282124

/-! ## A282124.P9971496065739250666

`A001045(n+1)*A010883(2*n)`
-/

namespace A282124.P9971496065739250666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A010883 (2 * n)

end

end A282124.P9971496065739250666

namespace A282124

/-- `A001045(n+1)*A010883(2*n)` -/
def P9971496065739250666.Spec : Prop :=
  ∀ n, P9971496065739250666.a n = A282124 n

end A282124

/-! ## A282124.P6653454493789468495

`A001045(n+1)*A068073(2*n)`
-/

namespace A282124.P6653454493789468495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A068073 (2 * n)

end

end A282124.P6653454493789468495

namespace A282124

/-- `A001045(n+1)*A068073(2*n)` -/
def P6653454493789468495.Spec : Prop :=
  ∀ n, P6653454493789468495.a n = A282124 n

end A282124

/-! ## A282124.P213329086926195386

`A001045(n+1)*A132400(2*n)`
-/

namespace A282124.P213329086926195386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A132400 (2 * n)

end

end A282124.P213329086926195386

namespace A282124

/-- `A001045(n+1)*A132400(2*n)` -/
def P213329086926195386.Spec : Prop :=
  ∀ n, P213329086926195386.a n = A282124 n

end A282124

/-! ## A282124.P12846910696598497316

`A001045(n+1)+A166752(n+1)-1`
-/

namespace A282124.P12846910696598497316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A166752 (n + 1) - 1)

end

end A282124.P12846910696598497316

namespace A282124

/-- `A001045(n+1)+A166752(n+1)-1` -/
def P12846910696598497316.Spec : Prop :=
  ∀ n, P12846910696598497316.a n = A282124 n

end A282124

/-! ## A282124.P11229088332612752220

`A001045(n+1)*A091084(2*n+1)`
-/

namespace A282124.P11229088332612752220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A091084 (2 * n + 1)

end

end A282124.P11229088332612752220

namespace A282124

/-- `A001045(n+1)*A091084(2*n+1)` -/
def P11229088332612752220.Spec : Prop :=
  ∀ n, P11229088332612752220.a n = A282124 n

end A282124

/-!
# A282125: Number of n X 2 0..2 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A282125, there is no canonical definition to state claims against.
-/

/-! ## A282125.P11073589088610322955

`A282130(∑[n+1]+2)`
-/

namespace A282125.P11073589088610322955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282125.P11073589088610322955

/-! ## A282125.P14299638147756674430

`lcm(2, A282130(A000096(n+1)))`
-/

namespace A282125.P14299638147756674430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A282130 (A000096 (n + 1)).toNat)

end

end A282125.P14299638147756674430

/-! ## A282125.P6253289677247640573

`A282130(A000096(n+1))%A340532(n)`
-/

namespace A282125.P6253289677247640573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282130 (A000096 (n + 1)).toNat) (A340532 n)

end

end A282125.P6253289677247640573

/-!
# A282126: Number of nX3 0..2 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A282126, there is no canonical definition to state claims against.
-/

/-! ## A282126.P11123812627615579768

`A282130(∑[n+2]+4)`
-/

namespace A282126.P11123812627615579768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282126.P11123812627615579768

/-! ## A282126.P15132036469626278994

`record[A010054(n)*A282130(n+3)]`
-/

namespace A282126.P15132036469626278994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A282130 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282126.P15132036469626278994

/-! ## A282126.P16703844691237891797

`A282130(A167614(n+1))/ceil(acot(n))`
-/

namespace A282126.P16703844691237891797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282130 (A167614 (n + 1)).toNat : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A282126.P16703844691237891797

/-! ## A282126.P10122599570743902438

`A282130(A167614(n+1))+A011741(n)`
-/

namespace A282126.P10122599570743902438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A167614 (n + 1)).toNat + A011741 n

end

end A282126.P10122599570743902438

/-! ## A282126.P145482864775667993

`A282130(A167614(n+1))+A025469(n)`
-/

namespace A282126.P145482864775667993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A167614 (n + 1)).toNat + A025469 n

end

end A282126.P145482864775667993

/-!
# A282127: Number of nX4 0..2 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A282127, there is no canonical definition to state claims against.
-/

/-! ## A282127.P18375267319949170259

`A282130(A374004(n+1))`
-/

namespace A282127.P18375267319949170259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A374004 (n + 1)).toNat

end

end A282127.P18375267319949170259

/-! ## A282127.P7241936111634169311

`A282130(A141214(n)+7)`
-/

namespace A282127.P7241936111634169311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A141214 n + 7).toNat

end

end A282127.P7241936111634169311

/-! ## A282127.P5547821806222379309

`A282130(A052905(n)+9)`
-/

namespace A282127.P5547821806222379309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A052905 n + 9).toNat

end

end A282127.P5547821806222379309

/-! ## A282127.P4730930004974135184

`A282130(A055999(n)+10)`
-/

namespace A282127.P4730930004974135184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A055999 n + 10).toNat

end

end A282127.P4730930004974135184

/-! ## A282127.P17472752925613067640

`A282130(eq[5, A066657(n)])`
-/

namespace A282127.P17472752925613067640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282127.P17472752925613067640

/-!
# A282128: Number of nX5 0..2 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A282128, there is no canonical definition to state claims against.
-/

/-! ## A282128.P5071333213878795996

`A282130(A374005(n+1))`
-/

namespace A282128.P5071333213878795996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A374005 (n + 1)).toNat

end

end A282128.P5071333213878795996

/-! ## A282128.P17240754803361273202

`A282130(A167499(n+3))`
-/

namespace A282128.P17240754803361273202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A167499 (n + 3)).toNat

end

end A282128.P17240754803361273202

/-! ## A282128.P7699300251634001982

`A282130(A077169(n+5))`
-/

namespace A282128.P7699300251634001982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A077169 (n + 5)).toNat

end

end A282128.P7699300251634001982

/-! ## A282128.P17144522311756786329

`A282130(A155212(n)+13)`
-/

namespace A282128.P17144522311756786329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A155212 n + 13).toNat

end

end A282128.P17144522311756786329

/-! ## A282128.P15594654073056822754

`A282130(A056000(n)+15)`
-/

namespace A282128.P15594654073056822754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A056000 n + 15).toNat

end

end A282128.P15594654073056822754

/-!
# A282129: Number of nX6 0..2 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A282129, there is no canonical definition to state claims against.
-/

/-! ## A282129.P15742389324318033268

`A282130(A374007(n+1))`
-/

namespace A282129.P15742389324318033268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A374007 (n + 1)).toNat

end

end A282129.P15742389324318033268

/-! ## A282129.P13330129296323582806

`A282130(A056115(n)+21)`
-/

namespace A282129.P13330129296323582806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A056115 n + 21).toNat

end

end A282129.P13330129296323582806

/-! ## A282129.P925709667710693659

`A282130(A167499(n+4)+1)`
-/

namespace A282129.P925709667710693659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A167499 (n + 4) + 1).toNat

end

end A282129.P925709667710693659

/-! ## A282129.P16950248257934930036

`A282130(A167614(n+4)+3)`
-/

namespace A282129.P16950248257934930036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282130 (A167614 (n + 4) + 3).toNat

end

end A282129.P16950248257934930036

/-!
# A282130: T(n,k)=Number of nXk 0..2 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A282130, there is no canonical definition to state claims against.
-/

/-! ## A282130.P5795711294956640241

`A244157((comp[∑[n]]-n)^A007318(n))`
-/

namespace A282130.P5795711294956640241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244157 (SequenceMachineLib.roundAway (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A282130.P5795711294956640241

/-! ## A282130.P5872648954634249792

`A106747(A173890(n)-A084938(n))`
-/

namespace A282130.P5872648954634249792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A173890 n - A084938 n).toNat

end

end A282130.P5872648954634249792

/-! ## A282130.P2665391171721515499

`A106747(A173890(n)-A173886(n))`
-/

namespace A282130.P2665391171721515499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A173890 n - A173886 n).toNat

end

end A282130.P2665391171721515499

/-! ## A282130.P5125833257981513743

`A320614(A242093(n)^A004396(n))`
-/

namespace A282130.P5125833257981513743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320614 (SequenceMachineLib.roundAway ((A242093 n : ℚ) ^ (A004396 n : ℤ))).toNat

end

end A282130.P5125833257981513743

/-! ## A282130.P13689729324378190584

`xor(A131063(n), A294754(A102716(n)))`
-/

namespace A282130.P13689729324378190584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131063 n) (A294754 (A102716 n).toNat)

end

end A282130.P13689729324378190584

/-!
# A282131: Records in A240542.

The programs for A282131, there is no canonical definition to state claims against.
-/

/-! ## A282131.P16253211778887607733

`record[ceil(A338723(n+1)/2)%or(2, n)]`
-/

namespace A282131.P16253211778887607733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A338723 (n + 1) : ℚ) / 2⌉ (Nat.lor 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282131.P16253211778887607733

/-! ## A282131.P15016231175863550853

`record[A240542(n+1)%(C(2, C(3, n²))+n)]`
-/

namespace A282131.P15016231175863550853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240542 (n + 1)) (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282131.P15016231175863550853

/-! ## A282131.P9951125350425226103

`A240542(A071562(n+1))`
-/

namespace A282131.P9951125350425226103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240542 (A071562 (n + 1)).toNat

end

end A282131.P9951125350425226103

/-! ## A282131.P10367215099393186679

`A240542(A276112(n+1))`
-/

namespace A282131.P10367215099393186679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240542 (A276112 (n + 1)).toNat

end

end A282131.P10367215099393186679

/-! ## A282131.P14324209267157676615

`record[A240542(A158416(n))]`
-/

namespace A282131.P14324209267157676615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240542 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282131.P14324209267157676615

/-! ## A282131.P3959209974082079150

`∑[A281007(n+1)]`
-/

namespace A282131.P3959209974082079150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282131.P3959209974082079150

/-! ## A282131.P12088520934690083882

`A281007(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A282131.P12088520934690083882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281007 (n + 1) + a (A023443 n).toNat

end

end A282131.P12088520934690083882

/-! ## A282131.P12235288414769016564

`∑[A281012(2*n+1)]`
-/

namespace A282131.P12235288414769016564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281012 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282131.P12235288414769016564

/-!
# A282132: Imaginary part of n!*Sum_{k=1..n} i^(k-1)/k, where i is sqrt(-1).

The programs for A282132, there is no canonical definition to state claims against.
-/

/-! ## A282132.P8908040534514087315

`A279683(n+1)%A000142(A303369(n+1))`
-/

namespace A282132.P8908040534514087315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279683 (n + 1)) (A000142 (A303369 (n + 1)).toNat)

end

end A282132.P8908040534514087315

/-! ## A282132.P5602306709513883224

`A002265(∏[A261831(n+1)])`
-/

namespace A282132.P5602306709513883224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282132.P5602306709513883224

/-! ## A282132.P3074239942784837273

`A131508(∏[A261831(n+1)])`
-/

namespace A282132.P3074239942784837273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282132.P3074239942784837273

/-!
# A282133: Number of maximal cubefree binary words of length n.

The programs for A282133, there is no canonical definition to state claims against.
-/

/-! ## A282133.P18059615084771624343

`2*A286270(n+1)`
-/

namespace A282133.P18059615084771624343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286270 (n + 1)

end

end A282133.P18059615084771624343

/-! ## A282133.P11654321232595681221

`A286270(C(n+1, n))+A286270(n+1)`
-/

namespace A282133.P11654321232595681221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286270 (Nat.choose (n + 1) n) + A286270 (n + 1)

end

end A282133.P11654321232595681221

/-! ## A282133.P8185270924560086877

`A286270(n+1)+A286270(n%(n+1)+1)`
-/

namespace A282133.P8185270924560086877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286270 (n + 1) + A286270 (n % (n + 1) + 1)

end

end A282133.P8185270924560086877

/-! ## A282133.P5770491878260034564

`A286270(A000027(n+1))+A286270(n+1)`
-/

namespace A282133.P5770491878260034564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286270 (A000027 (n + 1)).toNat + A286270 (n + 1)

end

end A282133.P5770491878260034564

/-! ## A282133.P6732566633220914478

`A286270(A153671(n+1))+A286270(n+1)`
-/

namespace A282133.P6732566633220914478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286270 (A153671 (n + 1)).toNat + A286270 (n + 1)

end

end A282133.P6732566633220914478

/-!
# A282134: First differences of A045876.

The programs for A282134, there is no canonical definition to state claims against.
-/

/-! ## A282134.P4975579380859985112

`A045876(n+2)-A045876(n+1)`
-/

namespace A282134.P4975579380859985112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045876 (n + 2) - A045876 (n + 1)

end

end A282134.P4975579380859985112

/-! ## A282134.P7915808838671436434

`Δ[A045876(n+1)]`
-/

namespace A282134.P7915808838671436434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282134.P7915808838671436434

/-! ## A282134.P339465953631068088

`Δ[A004086(n+1)+(n+1)%A004086(A033865(n+1))]`
-/

namespace A282134.P339465953631068088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1) + Int.tmod (n + 1 : ℤ) (A004086 (A033865 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282134.P339465953631068088

/-!
# A282137: Expansion of (24x^2-10x-1)/(16x^3-16x^2+x-1).

The programs for A282137, the canonical program `A282137.P5460944623715542602` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282137 has offset 0).

The definition of A282137 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+10x-24x^2)/(1-x+16x^2-16x^3))` (program `A282137.P5460944623715542602`, by `A282137.P5460944623715542602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282137.P5460944623715542602

`ogf((1+10x-24x^2)/(1-x+16x^2-16x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282137

/-- `ogf((1+10x-24x^2)/(1-x+16x^2-16x^3))` -/
def P5460944623715542602.Spec : Prop :=
  ∀ n, P5460944623715542602.a n = A282137 n

theorem P5460944623715542602.correct : P5460944623715542602.Spec := by
  intro n
  simp only [A282137]

end A282137

/-! ## A282137.P11034853901452622488

`a(n-1)-16*a(n-2)+16*a(n-3)` with `a(0)=1, a(1)=11, a(2)=-29`
-/

namespace A282137.P11034853901452622488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11, -29] fun n a =>
  a (n - 1) - 16 * a (n - 2) + 16 * a (n - 3)

end

end A282137.P11034853901452622488

namespace A282137

/-- `a(n-1)-16*a(n-2)+16*a(n-3)` -/
def P11034853901452622488.Spec : Prop :=
  ∀ n, P11034853901452622488.a n = A282137 n

end A282137

/-! ## A282137.P16236404975639102377

`∑[∏[-(a(n-1)%6)]]` with `a(0)=1, a(1)=10`
-/

namespace A282137.P16236404975639102377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n f2 =>
  -Int.tmod (f2 (n - 1)) 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282137.P16236404975639102377

namespace A282137

/-- `∑[∏[-(a(n-1)%6)]]` -/
def P16236404975639102377.Spec : Prop :=
  ∀ n, P16236404975639102377.a n = A282137 n

end A282137

/-! ## A282137.P8163258515937442873

`3-16*(a(n-2)+1)` with `a(0)=1, a(1)=11`
-/

namespace A282137.P8163258515937442873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  3 - 16 * (a (n - 2) + 1)

end

end A282137.P8163258515937442873

namespace A282137

/-- `3-16*(a(n-2)+1)` -/
def P8163258515937442873.Spec : Prop :=
  ∀ n, P8163258515937442873.a n = A282137 n

end A282137

/-! ## A282137.P13760959100198575631

`a(n-2)-13-17*a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A282137.P13760959100198575631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  a (n - 2) - 13 - 17 * a (n - 2)

end

end A282137.P13760959100198575631

namespace A282137

/-- `a(n-2)-13-17*a(n-2)` -/
def P13760959100198575631.Spec : Prop :=
  ∀ n, P13760959100198575631.a n = A282137 n

end A282137

/-! ## A282137.P11477475488060376233

`∑[A009545(2*n+1)*A146523(n)]`
-/

namespace A282137.P11477475488060376233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (2 * n + 1) * A146523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282137.P11477475488060376233

namespace A282137

/-- `∑[A009545(2*n+1)*A146523(n)]` -/
def P11477475488060376233.Spec : Prop :=
  ∀ n, P11477475488060376233.a n = A282137 n

end A282137

/-!
# A282138: Numbers k such that (19*10^k - 49)/3 is prime.

The programs for A282138, there is no canonical definition to state claims against.
-/

/-! ## A282138.P6318808536158658639

`∑[A205497(∑[A351293(n)])]`
-/

namespace A282138.P6318808536158658639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205497 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282138.P6318808536158658639

/-!
# A282142: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

The programs for A282142, the canonical program `A282142.P11491660470681616041` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282142 has offset 0).

The definition of A282142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282142.P6430527613730292137

`char[2*n]*A281146(n)`
-/

namespace A282142.P6430527613730292137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A281146 n

end

end A282142.P6430527613730292137

namespace A282142

/-- `char[2*n]*A281146(n)` -/
def P6430527613730292137.Spec : Prop :=
  ∀ n, P6430527613730292137.a n = A282142 n

end A282142

/-! ## A282142.P11491660470681616041

`lcm(A056594(n), A281146(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A282142

/-- `lcm(A056594(n), A281146(n))` -/
def P11491660470681616041.Spec : Prop :=
  ∀ n, (P11491660470681616041.a n : ℤ) = A282142 n

theorem P11491660470681616041.correct : P11491660470681616041.Spec := by
  intro n
  simp only [A282142]

end A282142

/-! ## A282142.P918682030507379383

`and(A115634(n), A281146(n))`
-/

namespace A282142.P918682030507379383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115634 n) (A281146 n)

end

end A282142.P918682030507379383

namespace A282142

/-- `and(A115634(n), A281146(n))` -/
def P918682030507379383.Spec : Prop :=
  ∀ n, P918682030507379383.a n = A282142 n

end A282142

/-! ## A282142.P2960443363490035789

`and(A279028(n), A281146(n))`
-/

namespace A282142.P2960443363490035789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279028 n) (A281146 n)

end

end A282142.P2960443363490035789

namespace A282142

/-- `and(A279028(n), A281146(n))` -/
def P2960443363490035789.Spec : Prop :=
  ∀ n, P2960443363490035789.a n = A282142 n

end A282142

/-! ## A282142.P6702416355457575105

`A279028(n)-Δ[A065033(n)]`
-/

namespace A282142.P6702416355457575105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 n - (f1 (n + 1) - f1 n)

end

end A282142.P6702416355457575105

namespace A282142

/-- `A279028(n)-Δ[A065033(n)]` -/
def P6702416355457575105.Spec : Prop :=
  ∀ n, P6702416355457575105.a n = A282142 n

end A282142

/-! ## A282142.P13984124776384449624

`A059841(n)*A281146(n)*A059841(n)`
-/

namespace A282142.P13984124776384449624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A281146 n * A059841 n

end

end A282142.P13984124776384449624

namespace A282142

/-- `A059841(n)*A281146(n)*A059841(n)` -/
def P13984124776384449624.Spec : Prop :=
  ∀ n, P13984124776384449624.a n = A282142 n

end A282142

/-! ## A282142.P841024578702347686

`A026644(n)+A279028(n)-A000975(n+1)`
-/

namespace A282142.P841024578702347686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 n + (A279028 n - A000975 (n + 1))

end

end A282142.P841024578702347686

namespace A282142

/-- `A026644(n)+A279028(n)-A000975(n+1)` -/
def P841024578702347686.Spec : Prop :=
  ∀ n, P841024578702347686.a n = A282142 n

end A282142

/-!
# A282143: Numbers n with k digits in base x (MSD(n)=d_k, LSD(n)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j..k}{(i-j+1)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 2.

The programs for A282143, there is no canonical definition to state claims against.
-/

/-! ## A282143.P8695716503111616189

`∑[A112605(A027441(n))+1]+1`
-/

namespace A282143.P8695716503111616189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112605 (A027441 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A282143.P8695716503111616189

/-! ## A282143.P14557197306929024779

`2*(n+1)+A269529(A063258(n))+n`
-/

namespace A282143.P14557197306929024779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + (A269529 (A063258 n).toNat + (n : ℤ))

end

end A282143.P14557197306929024779

/-! ## A282143.P5062074721052037484

`lt[A087606(n+1), Δ[A087606(2*n+3)]]`
-/

namespace A282143.P5062074721052037484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087606 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087606 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282143.P5062074721052037484

/-! ## A282143.P13037911745701660985

`3*n+2-A029883(A056487((n+1)/2^val(n+1, 2)))`
-/

namespace A282143.P13037911745701660985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - A029883 (A056487 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A282143.P13037911745701660985

/-! ## A282143.P348975035995392685

`A165581(A132308(n))+A016789(n)`
-/

namespace A282143.P348975035995392685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165581 (A132308 n).toNat + A016789 n

end

end A282143.P348975035995392685

/-!
# A282144: Numbers n with k digits in base x (MSD(n)=d_k, LSD(n)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j..k}{(i-j+1)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 3.

The programs for A282144, there is no canonical definition to state claims against.
-/

/-! ## A282144.P4140693057410525515

`A102342(2*(n+2))-A238762(A178415(n+1))`
-/

namespace A282144.P4140693057410525515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (2 * (n + 2)) - A238762 (A178415 (n + 1)).toNat

end

end A282144.P4140693057410525515

/-!
# A282147: Numbers n with k digits in base x (MSD(n)=d_k, LSD(n)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j..k}{(i-j+1)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 6.

The programs for A282147, there is no canonical definition to state claims against.
-/

/-! ## A282147.P16530299933801897596

`∑[A018248(A347592(n)²)]`
-/

namespace A282147.P16530299933801897596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 (A347592 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282147.P16530299933801897596

/-! ## A282147.P12085851934665175624

`eq[dr(A057347(n+1)), A261104(n)]`
-/

namespace A282147.P12085851934665175624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A057347 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282147.P12085851934665175624

/-! ## A282147.P4305673644540826558

`∑[A145057(or(1, A257697(n))^n+1)]`
-/

namespace A282147.P4305673644540826558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145057 (Int.lor 1 (A257697 n) ^ n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282147.P4305673644540826558

/-! ## A282147.P5114787928041586277

`A262905(A261600(n))+A003329(n+1)`
-/

namespace A282147.P5114787928041586277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262905 (A261600 n).toNat + A003329 (n + 1)

end

end A282147.P5114787928041586277

/-!
# A282148: Numbers n with k digits in base x (MSD(n)=d_k, LSD(n)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j..k}{(i-j+1)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 7.

The programs for A282148, there is no canonical definition to state claims against.
-/

/-! ## A282148.P8562589935426408853

`∑[A161813(∏[A019500(n)])]`
-/

namespace A282148.P8562589935426408853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019500 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282148.P8562589935426408853

/-! ## A282148.P15455808331615912828

`∑[dr(A133263(A007931(3*n+4)))]`
-/

namespace A282148.P15455808331615912828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A133263 (A007931 (3 * n + 4)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282148.P15455808331615912828

/-! ## A282148.P10735544454894630249

`A017089(n+1)-A025280(A139514(n))`
-/

namespace A282148.P10735544454894630249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (n + 1) - A025280 (A139514 n).toNat

end

end A282148.P10735544454894630249

/-! ## A282148.P723608058682157206

`A341793(A054543(n+2))+A037989(n+1)`
-/

namespace A282148.P723608058682157206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 ((A054543 (n + 2)).toNat + 10) + A037989 (n + 1)

end

end A282148.P723608058682157206

/-! ## A282148.P114349721974195271

`lt[A333696(A117589(3*n)*A242396(n+1)+1), n]`
-/

namespace A282148.P114349721974195271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333696 (A117589 (3 * n) * A242396 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A282148.P114349721974195271

/-!
# A282149: Numbers n with k digits in base x (MSD(n)=d_k, LSD(n)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j..k}{(i-j+1)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 8.

The programs for A282149, there is no canonical definition to state claims against.
-/

/-! ## A282149.P13631454425261031462

`∑[dr(A205986(A201461(n)))]`
-/

namespace A282149.P13631454425261031462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A205986 (A201461 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282149.P13631454425261031462

/-! ## A282149.P11973558136051122969

`∑[dr(A205986(A336009(n)))]`
-/

namespace A282149.P11973558136051122969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A205986 (A336009 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282149.P11973558136051122969

/-! ## A282149.P5130088727523502420

`∑[dr(A348160(A314677(n)))]`
-/

namespace A282149.P5130088727523502420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A348160 (A314677 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282149.P5130088727523502420

/-! ## A282149.P8621614308117619199

`∑[A083949(∑[A273411(n)])]`
-/

namespace A282149.P8621614308117619199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083949 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282149.P8621614308117619199

/-! ## A282149.P13728571587449352197

`∑[A083949(A094097(n+1)!)]`
-/

namespace A282149.P13728571587449352197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083949 (Nat.factorial (A094097 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282149.P13728571587449352197

/-!
# A282150: Numbers n with k digits in base x (MSD(n)=d_k, LSD(n)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j..k}{(i-j+1)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 9.

The programs for A282150, there is no canonical definition to state claims against.
-/

/-! ## A282150.P16035557430637006532

`∑[A231933(A250287(n+3))]`
-/

namespace A282150.P16035557430637006532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231933 (A250287 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282150.P16035557430637006532

/-! ## A282150.P2727553873063443995

`eq[A011600(n²), A055641(n)]`
-/

namespace A282150.P2727553873063443995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282150.P2727553873063443995

/-! ## A282150.P13576187955788086391

`∑[10-A198316(A185317(3*n+2))]`
-/

namespace A282150.P13576187955788086391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A198316 (A185317 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282150.P13576187955788086391

/-! ## A282150.P3146884200710540934

`eq[A010054(A002618(n+1)), A175423(n)]`
-/

namespace A282150.P3146884200710540934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A002618 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282150.P3146884200710540934

/-! ## A282150.P14954476365491879634

`eq[A070561(n), A235748(n+2)]`
-/

namespace A282150.P14954476365491879634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235748 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282150.P14954476365491879634

/-!
# A282151: Numbers n with k digits in base x (MSD(n)=d_k, LSD(n)=d_1) such that, chosen one of their digits in position d_k < j < d_1, is Sum_{i=j..k}{(i-j+1)*d_i} = Sum_{i=1..j-1}{(j-i)*d_i}. Case x = 10.

The programs for A282151, there is no canonical definition to state claims against.
-/

/-! ## A282151.P10766586410857818611

`A333614(A043317(n+2))`
-/

namespace A282151.P10766586410857818611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333614 (A043317 (n + 2)).toNat

end

end A282151.P10766586410857818611

/-! ## A282151.P9906274198140307457

`A333614(A044914(n+2))`
-/

namespace A282151.P9906274198140307457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333614 (A044914 (n + 2)).toNat

end

end A282151.P9906274198140307457

/-! ## A282151.P9504878727742526453

`A333614(A132378(n+2))`
-/

namespace A282151.P9504878727742526453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333614 (A132378 (n + 2)).toNat

end

end A282151.P9504878727742526453

/-! ## A282151.P1735908576592733152

`∩[A120685(n), A333614(n+1)]`
-/

namespace A282151.P1735908576592733152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282151.P1735908576592733152

/-! ## A282151.P9119637159229651709

`∩[A261906(n+1), A333614(n+1)]`
-/

namespace A282151.P9119637159229651709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282151.P9119637159229651709

/-!
# A282153: Expansion of x*(1 - 2*x + 3*x^2)/((1 - x)*(1 - 2*x)*(1 - x + x^2)).

The programs for A282153, the canonical program `A282153.P8643181389126550243` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282153 has offset 0).

The definition of A282153 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2+3x^3)/(1-4x+6x^2-5x^3+2x^4))` (program `A282153.P8643181389126550243`, by `A282153.P8643181389126550243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282153.P8643181389126550243

`ogf((x-2x^2+3x^3)/(1-4x+6x^2-5x^3+2x^4))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282153

/-- `ogf((x-2x^2+3x^3)/(1-4x+6x^2-5x^3+2x^4))` -/
def P8643181389126550243.Spec : Prop :=
  ∀ n, P8643181389126550243.a n = A282153 n

theorem P8643181389126550243.correct : P8643181389126550243.Spec := by
  intro n
  simp only [A282153]

end A282153

/-! ## A282153.P9620184098720676278

`2^n+((-1)^floor(n/3)+(-1)^floor((n+1)/3))/2-2`
-/

namespace A282153.P9620184098720676278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + ((-1 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ) + (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 3⌋ : ℤ)) / 2 - 2

end

end A282153.P9620184098720676278

namespace A282153

/-- `2^n+((-1)^floor(n/3)+(-1)^floor((n+1)/3))/2-2` -/
def P9620184098720676278.Spec : Prop :=
  ∀ n, P9620184098720676278.a n = (A282153 n : ℚ)

end A282153

/-! ## A282153.P13198688999669059603

`abs(2-(A010892(n)+2^n))`
-/

namespace A282153.P13198688999669059603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A010892 n + (2 ^ n : ℤ))|

end

end A282153.P13198688999669059603

namespace A282153

/-- `abs(2-(A010892(n)+2^n))` -/
def P13198688999669059603.Spec : Prop :=
  ∀ n, P13198688999669059603.a n = A282153 n

end A282153

/-! ## A282153.P9136454076563524543

`xor(∑[A131708(n)], A024495(n))`
-/

namespace A282153.P9136454076563524543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A024495 n)

end

end A282153.P9136454076563524543

namespace A282153

/-- `xor(∑[A131708(n)], A024495(n))` -/
def P9136454076563524543.Spec : Prop :=
  ∀ n, P9136454076563524543.a n = A282153 n

end A282153

/-! ## A282153.P18114731229651637685

`xor(A024495(n+1), A024495(n))`
-/

namespace A282153.P18114731229651637685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024495 (n + 1)) (A024495 n)

end

end A282153.P18114731229651637685

namespace A282153

/-- `xor(A024495(n+1), A024495(n))` -/
def P18114731229651637685.Spec : Prop :=
  ∀ n, P18114731229651637685.a n = A282153 n

end A282153

/-! ## A282153.P9549672263485160900

`abs(A010892(n)+A000051(n)-3)`
-/

namespace A282153.P9549672263485160900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010892 n + A000051 n - 3|

end

end A282153.P9549672263485160900

namespace A282153

/-- `abs(A010892(n)+A000051(n)-3)` -/
def P9549672263485160900.Spec : Prop :=
  ∀ n, P9549672263485160900.a n = A282153 n

end A282153

/-! ## A282153.P17400386296506374756

`(2^(n+1)-∑[a(n-1)-a(n-2)]-1)/2` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A282153.P17400386296506374756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 ^ (n + 1) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A282153.P17400386296506374756

namespace A282153

/-- `(2^(n+1)-∑[a(n-1)-a(n-2)]-1)/2` -/
def P17400386296506374756.Spec : Prop :=
  ∀ n, P17400386296506374756.a n = (A282153 n : ℚ)

end A282153

/-! ## A282153.P6167685627489204122

`A033484(n)%A130750(n)`
-/

namespace A282153.P6167685627489204122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033484 n) (A130750 n)

end

end A282153.P6167685627489204122

namespace A282153

/-- `A033484(n)%A130750(n)` -/
def P6167685627489204122.Spec : Prop :=
  ∀ n, P6167685627489204122.a n = A282153 n

end A282153

/-! ## A282153.P18337637642498792070

`and(∑[A130755(n)], A000225(n))`
-/

namespace A282153.P18337637642498792070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A000225 n)

end

end A282153.P18337637642498792070

namespace A282153

/-- `and(∑[A130755(n)], A000225(n))` -/
def P18337637642498792070.Spec : Prop :=
  ∀ n, P18337637642498792070.a n = A282153 n

end A282153

/-! ## A282153.P14993816560520359347

`A047859(n)%A143099(n+1)`
-/

namespace A282153.P14993816560520359347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047859 n) (A143099 (n + 1))

end

end A282153.P14993816560520359347

namespace A282153

/-- `A047859(n)%A143099(n+1)` -/
def P14993816560520359347.Spec : Prop :=
  ∀ n, P14993816560520359347.a n = A282153 n

end A282153

/-!
# A282154: Coefficients in expansion of Eisenstein series -q*(d/dq)(q*(d/dq)E_2).

The programs for A282154, the canonical program `A282154.P723453364652554422` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282154 has offset 0).

The definition of A282154 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A282097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A282154.P723453364652554422

`24*A282097(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A282154

/-- `24*A282097(n)` -/
def P723453364652554422.Spec : Prop :=
  ∀ n, P723453364652554422.a n = A282154 n

theorem P723453364652554422.correct : P723453364652554422.Spec := by
  intro n
  simp only [A282154]

end A282154

/-! ## A282154.P15910766535713059008

`24*∑{d}[n, #*n²]`
-/

namespace A282154.P15910766535713059008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * (∑ d ∈ Nat.divisors (f1 n), d * n ^ 2)

end

end A282154.P15910766535713059008

namespace A282154

/-- `24*∑{d}[n, #*n²]` -/
def P15910766535713059008.Spec : Prop :=
  ∀ n, (P15910766535713059008.a n : ℤ) = A282154 n

theorem P15910766535713059008.correct : P15910766535713059008.Spec := by
  intro n
  simp only [A282154, Nat.add_sub_cancel, A282154.P15910766535713059008.f1, A282154.P15910766535713059008.a, A282154.P723453364652554422.a, A282097, A282097.P9978893990536554872.f1, A282097.P9978893990536554872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282154

/-! ## A282154.P5442941295693638592

`abs(n²*A006352(n))`
-/

namespace A282154.P5442941295693638592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A006352 n|

end

end A282154.P5442941295693638592

namespace A282154

/-- `abs(n²*A006352(n))` -/
def P5442941295693638592.Spec : Prop :=
  ∀ n, P5442941295693638592.a n = A282154 n

end A282154

/-! ## A282154.P1612784650769792799

`∑{d}[n, #*A195824(n)]`
-/

namespace A282154.P1612784650769792799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A195824 n

end

end A282154.P1612784650769792799

namespace A282154

/-- `∑{d}[n, #*A195824(n)]` -/
def P1612784650769792799.Spec : Prop :=
  ∀ n, P1612784650769792799.a n = A282154 n

end A282154

/-! ## A282154.P592902501940087080

`∑{d}[n, #*A033581(2*n)]`
-/

namespace A282154.P592902501940087080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A033581 (2 * n)

end

end A282154.P592902501940087080

namespace A282154

/-- `∑{d}[n, #*A033581(2*n)]` -/
def P592902501940087080.Spec : Prop :=
  ∀ n, P592902501940087080.a n = A282154 n

end A282154

/-!
# A282155: Number of nX2 0..2 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A282155, there is no canonical definition to state claims against.
-/

/-! ## A282155.P18171153946447693641

`A282159(∑[n+1]+2)`
-/

namespace A282155.P18171153946447693641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282155.P18171153946447693641

/-! ## A282155.P6925447838629283478

`A141605(n+1)*A282159(A022856(n+5))`
-/

namespace A282155.P6925447838629283478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141605 (n + 1) * A282159 (A022856 (n + 5)).toNat

end

end A282155.P6925447838629283478

/-! ## A282155.P14714552395070074390

`A282159(A022856(n+5))%A179792(n+2)`
-/

namespace A282155.P14714552395070074390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282159 (A022856 (n + 5)).toNat) (A179792 (n + 2))

end

end A282155.P14714552395070074390

/-! ## A282155.P15469334859362414932

`A306637(3*(n+1))+A282159(A022856(n+5))`
-/

namespace A282155.P15469334859362414932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306637 (3 * (n + 1)) + A282159 (A022856 (n + 5)).toNat

end

end A282155.P15469334859362414932

/-! ## A282155.P1330094035795606240

`A261143(3*(n+1))*A282159(A022856(n+5))`
-/

namespace A282155.P1330094035795606240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (3 * (n + 1)) * A282159 (A022856 (n + 5)).toNat

end

end A282155.P1330094035795606240

/-!
# A282156: Number of nX3 0..2 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A282156, there is no canonical definition to state claims against.
-/

/-! ## A282156.P16470703284280248687

`A282159(∑[n+2]+4)`
-/

namespace A282156.P16470703284280248687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282156.P16470703284280248687

/-! ## A282156.P3057320321086293970

`A282159(A167614(n+1))%((2*n+1)^9)`
-/

namespace A282156.P3057320321086293970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282159 (A167614 (n + 1)).toNat) ((2 * n + 1) ^ 9 : ℤ)

end

end A282156.P3057320321086293970

/-! ## A282156.P2350619497804685931

`A282159(A167614(n+1))+A011731(n)`
-/

namespace A282156.P2350619497804685931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (A167614 (n + 1)).toNat + A011731 n

end

end A282156.P2350619497804685931

/-! ## A282156.P3961093470610670349

`A282159(A167614(n+1))+A118135(n)`
-/

namespace A282156.P3961093470610670349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (A167614 (n + 1)).toNat + A118135 n

end

end A282156.P3961093470610670349

/-! ## A282156.P240651557502134967

`A282159(A167614(n+1))+A185284(n)`
-/

namespace A282156.P240651557502134967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (A167614 (n + 1)).toNat + A185284 n

end

end A282156.P240651557502134967

/-!
# A282157: Number of nX4 0..2 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A282157, there is no canonical definition to state claims against.
-/

/-! ## A282157.P11373421639149978740

`A282159(C(n+4, 2)+4)`
-/

namespace A282157.P11373421639149978740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (Nat.choose (n + 4) 2 + 4)

end

end A282157.P11373421639149978740

/-! ## A282157.P9888335382642336486

`A282159(A374004(n+1))`
-/

namespace A282157.P9888335382642336486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (A374004 (n + 1)).toNat

end

end A282157.P9888335382642336486

/-! ## A282157.P10190457024613498657

`A282159(A141214(n)+7)`
-/

namespace A282157.P10190457024613498657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (A141214 n + 7).toNat

end

end A282157.P10190457024613498657

/-! ## A282157.P12178710768188250075

`A282159(A052905(n)+9)`
-/

namespace A282157.P12178710768188250075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (A052905 n + 9).toNat

end

end A282157.P12178710768188250075

/-! ## A282157.P3453424438128631321

`A282159(A055999(n)+10)`
-/

namespace A282157.P3453424438128631321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (A055999 n + 10).toNat

end

end A282157.P3453424438128631321

/-!
# A282158: Number of nX5 0..2 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A282158, there is no canonical definition to state claims against.
-/

/-! ## A282158.P1897366690554228037

`A282159(A374005(n+1))`
-/

namespace A282158.P1897366690554228037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (A374005 (n + 1)).toNat

end

end A282158.P1897366690554228037

/-! ## A282158.P862503664094645582

`A282159(A167499(n+3))`
-/

namespace A282158.P862503664094645582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (A167499 (n + 3)).toNat

end

end A282158.P862503664094645582

/-! ## A282158.P14384583816576592313

`A282159(A155212(n)+13)`
-/

namespace A282158.P14384583816576592313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (A155212 n + 13).toNat

end

end A282158.P14384583816576592313

/-! ## A282158.P14581532968602934459

`A282159(A056000(n)+15)`
-/

namespace A282158.P14581532968602934459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (A056000 n + 15).toNat

end

end A282158.P14581532968602934459

/-! ## A282158.P16514669923877410322

`A282159(eq[7, A066657(n)])`
-/

namespace A282158.P16514669923877410322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282158.P16514669923877410322

/-!
# A282159: T(n,k)=Number of nXk 0..2 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A282159, there is no canonical definition to state claims against.
-/

/-! ## A282159.P10039877516636938584

`A034390(A157180(n))`
-/

namespace A282159.P10039877516636938584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034390 (A157180 n).toNat

end

end A282159.P10039877516636938584

/-! ## A282159.P15311161235730027053

`A133164(A082039(n))`
-/

namespace A282159.P15311161235730027053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133164 (A082039 n).toNat

end

end A282159.P15311161235730027053

/-! ## A282159.P4911176496642490737

`A241708(A008288(n))`
-/

namespace A282159.P4911176496642490737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241708 (A008288 n).toNat

end

end A282159.P4911176496642490737

/-! ## A282159.P13530189921369213739

`A144529(A119687(n))`
-/

namespace A282159.P13530189921369213739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144529 (A119687 n).toNat

end

end A282159.P13530189921369213739

/-! ## A282159.P17843800939106662770

`A145196(A173503(n))`
-/

namespace A282159.P17843800939106662770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145196 (A173503 n).toNat

end

end A282159.P17843800939106662770

/-!
# A282162: Difference sequence of the upper Wythoff sequence, A001950, with 2 prepended.

The programs for A282162, the canonical program `A282162.P18356065537090708922` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282162 has offset 0).

The definition of A282162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282162.P18356065537090708922

`1+A001468(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A282162

/-- `1+A001468(n)` -/
def P18356065537090708922.Spec : Prop :=
  ∀ n, P18356065537090708922.a n = A282162 n

theorem P18356065537090708922.correct : P18356065537090708922.Spec := by
  intro n
  simp only [A282162]

end A282162

/-! ## A282162.P7718660286887095764

`Δ[floor(n*ϕ²)]`
-/

namespace A282162.P7718660286887095764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282162.P7718660286887095764

namespace A282162

/-- `Δ[floor(n*ϕ²)]` -/
def P7718660286887095764.Spec : Prop :=
  ∀ n, P7718660286887095764.a n = A282162 n

end A282162

/-! ## A282162.P15950864333324617850

`or(2, Δ[floor(n/ϕ)])`
-/

namespace A282162.P15950864333324617850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (n + 1) - f1 n)

end

end A282162.P15950864333324617850

namespace A282162

/-- `or(2, Δ[floor(n/ϕ)])` -/
def P15950864333324617850.Spec : Prop :=
  ∀ n, P15950864333324617850.a n = A282162 n

end A282162

/-! ## A282162.P2720926039980684468

`xor(2, Δ[floor(n/ϕ)])`
-/

namespace A282162.P2720926039980684468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (n + 1) - f1 n)

end

end A282162.P2720926039980684468

namespace A282162

/-- `xor(2, Δ[floor(n/ϕ)])` -/
def P2720926039980684468.Spec : Prop :=
  ∀ n, P2720926039980684468.a n = A282162 n

end A282162

/-! ## A282162.P437293542666712589

`Δ[floor(ϕ*n)]!+1`
-/

namespace A282162.P437293542666712589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat + 1

end

end A282162.P437293542666712589

namespace A282162

/-- `Δ[floor(ϕ*n)]!+1` -/
def P437293542666712589.Spec : Prop :=
  ∀ n, (P437293542666712589.a n : ℤ) = A282162 n

end A282162

/-! ## A282162.P5249477448028872054

`dr(Δ[floor(ϕ*n)])+1`
-/

namespace A282162.P5249477448028872054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n) + 1

end

end A282162.P5249477448028872054

namespace A282162

/-- `dr(Δ[floor(ϕ*n)])+1` -/
def P5249477448028872054.Spec : Prop :=
  ∀ n, (P5249477448028872054.a n : ℤ) = A282162 n

end A282162

/-! ## A282162.P4710703130427841639

`gcd(2, Δ[floor(ϕ*n)])+1`
-/

namespace A282162.P4710703130427841639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n) + 1

end

end A282162.P4710703130427841639

namespace A282162

/-- `gcd(2, Δ[floor(ϕ*n)])+1` -/
def P4710703130427841639.Spec : Prop :=
  ∀ n, (P4710703130427841639.a n : ℤ) = A282162 n

end A282162

/-! ## A282162.P11130755209718730136

`C(2, Δ[floor(n/ϕ)])+1`
-/

namespace A282162.P11130755209718730136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat + 1

end

end A282162.P11130755209718730136

namespace A282162

/-- `C(2, Δ[floor(n/ϕ)])+1` -/
def P11130755209718730136.Spec : Prop :=
  ∀ n, (P11130755209718730136.a n : ℤ) = A282162 n

end A282162

/-! ## A282162.P6620684922255185432

`and(1, Δ[floor(n/ϕ)])+2`
-/

namespace A282162.P6620684922255185432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n) + 2

end

end A282162.P6620684922255185432

namespace A282162

/-- `and(1, Δ[floor(n/ϕ)])+2` -/
def P6620684922255185432.Spec : Prop :=
  ∀ n, P6620684922255185432.a n = A282162 n

end A282162

/-! ## A282162.P1813641046030597385

`Δ[floor(ϕ*n)]+and(1, 2*n+1)`
-/

namespace A282162.P1813641046030597385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.land 1 (2 * n + 1) : ℤ)

end

end A282162.P1813641046030597385

namespace A282162

/-- `Δ[floor(ϕ*n)]+and(1, 2*n+1)` -/
def P1813641046030597385.Spec : Prop :=
  ∀ n, P1813641046030597385.a n = A282162 n

end A282162

/-! ## A282162.P17947427111046845282

`Δ[n+1-a(a(n-1))]+2` with `a(0)=1, a(1)=1`
-/

namespace A282162.P17947427111046845282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n + 1 : ℤ) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A282162.P17947427111046845282

namespace A282162

/-- `Δ[n+1-a(a(n-1))]+2` -/
def P17947427111046845282.Spec : Prop :=
  ∀ n, P17947427111046845282.a n = A282162 n

end A282162

/-! ## A282162.P17570816342396718684

`A096270(n)+2`
-/

namespace A282162.P17570816342396718684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n + 2

end

end A282162.P17570816342396718684

namespace A282162

/-- `A096270(n)+2` -/
def P17570816342396718684.Spec : Prop :=
  ∀ n, P17570816342396718684.a n = A282162 n

end A282162

/-! ## A282162.P3527448563984387697

`Δ[A026351(n)]+1`
-/

namespace A282162.P3527448563984387697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A282162.P3527448563984387697

namespace A282162

/-- `Δ[A026351(n)]+1` -/
def P3527448563984387697.Spec : Prop :=
  ∀ n, P3527448563984387697.a n = A282162 n

theorem P3527448563984387697.correct : P3527448563984387697.Spec := by
  intro n
  simp only [A282162, Nat.add_sub_cancel, A282162.P3527448563984387697.f1, A282162.P3527448563984387697.a, A282162.P18356065537090708922.a, A001468, A001468.P12360075344960480253.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282162

/-! ## A282162.P1150835099001092117

`Δ[A066096(n)]+1`
-/

namespace A282162.P1150835099001092117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A282162.P1150835099001092117

namespace A282162

/-- `Δ[A066096(n)]+1` -/
def P1150835099001092117.Spec : Prop :=
  ∀ n, P1150835099001092117.a n = A282162 n

theorem P1150835099001092117.correct : P1150835099001092117.Spec := by
  intro n
  simp only [A282162, Nat.add_sub_cancel, A282162.P1150835099001092117.f1, A282162.P1150835099001092117.a, A282162.P18356065537090708922.a, A001468, A001468.P12360075344960480253.a, A066096, A066096.P2651506377198414293.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282162

/-! ## A282162.P15423336982827680243

`Δ[A060143(n)]+2`
-/

namespace A282162.P15423336982827680243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A282162.P15423336982827680243

namespace A282162

/-- `Δ[A060143(n)]+2` -/
def P15423336982827680243.Spec : Prop :=
  ∀ n, P15423336982827680243.a n = A282162 n

theorem P15423336982827680243.correct : P15423336982827680243.Spec := by
  intro n
  simp only [A282162, Nat.add_sub_cancel, A282162.P15423336982827680243.f1, A282162.P15423336982827680243.a, A282162.P18356065537090708922.a, A001468, A001468.P12360075344960480253.a, A060143, A060143.P4349736368293734599.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282162

/-! ## A282162.P10405215513107737964

`Δ[A276855(n)]-2`
-/

namespace A282162.P10405215513107737964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A282162.P10405215513107737964

namespace A282162

/-- `Δ[A276855(n)]-2` -/
def P10405215513107737964.Spec : Prop :=
  ∀ n, P10405215513107737964.a n = A282162 n

end A282162

/-! ## A282162.P4951147933120428037

`4-Δ[A195121(n)]`
-/

namespace A282162.P4951147933120428037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A282162.P4951147933120428037

namespace A282162

/-- `4-Δ[A195121(n)]` -/
def P4951147933120428037.Spec : Prop :=
  ∀ n, P4951147933120428037.a n = A282162 n

end A282162

/-!
# A282164: a(n) is the minimal product of a positive integer sequence of length n with no duplicate substrings of length greater than 1.

The programs for A282164, there is no canonical definition to state claims against.
-/

/-! ## A282164.P6161167632084635006

`A257686(ceil(sqrt(A115275(n))))`
-/

namespace A282164.P6161167632084635006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257686 ⌈Real.sqrt (A115275 n : ℝ)⌉.toNat

end

end A282164.P6161167632084635006

/-! ## A282164.P10273436881168552855

`A257686(ceil(sqrt(A158829(n+1))))`
-/

namespace A282164.P10273436881168552855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257686 ⌈Real.sqrt (A158829 (n + 1) : ℝ)⌉.toNat

end

end A282164.P10273436881168552855

/-! ## A282164.P16320266954017691278

`A126064(eq[1, A127568(n)])`
-/

namespace A282164.P16320266954017691278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282164.P16320266954017691278

/-! ## A282164.P3852275854292160600

`A162608(eq[1, A127568(n)])`
-/

namespace A282164.P3852275854292160600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282164.P3852275854292160600

/-! ## A282164.P5261806029702985715

`A126064(lt[A127568(n), 2])`
-/

namespace A282164.P5261806029702985715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127568 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126064 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A282164.P5261806029702985715

/-!
# A282165: Partial products of A061017.

The programs for A282165, there is no canonical definition to state claims against.
-/

/-! ## A282165.P15265474584225813553

`∏[Δ[A397890(n)]]`
-/

namespace A282165.P15265474584225813553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397890 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282165.P15265474584225813553

/-! ## A282165.P18043218508134319562

`∏[A061017(n+1)]`
-/

namespace A282165.P18043218508134319562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282165.P18043218508134319562

/-! ## A282165.P6144753485147838776

`∏[∑[char[A006218(n)]]]`
-/

namespace A282165.P6144753485147838776
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282165.P6144753485147838776

/-! ## A282165.P14763124333836144709

`∏[A143502(n+1)-1]`
-/

namespace A282165.P14763124333836144709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143502 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282165.P14763124333836144709

/-! ## A282165.P16456279842247511791

`∏[floor(log2(A064896(n+2)))]`
-/

namespace A282165.P16456279842247511791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A064896 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282165.P16456279842247511791

/-! ## A282165.P12104642279485100843

`∏[ceil(log2(A272919(n+2)))]`
-/

namespace A282165.P12104642279485100843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A272919 (n + 2) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282165.P12104642279485100843

/-! ## A282165.P7797787359425863045

`∏[∑[char[∑[A000005(n+1)]]]+1]`
-/

namespace A282165.P7797787359425863045
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282165.P7797787359425863045

/-! ## A282165.P15860320148238550851

`∏[∑[A063524(A027750(n+1))]]`
-/

namespace A282165.P15860320148238550851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A027750 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282165.P15860320148238550851

/-! ## A282165.P9652892537101868066

`∏[∑[-A159075(A299483(n+1))]]`
-/

namespace A282165.P9652892537101868066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A159075 (A299483 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282165.P9652892537101868066

/-! ## A282165.P16805247759395801464

`∏[A027750(n+1)*A056538(n+1)]`
-/

namespace A282165.P16805247759395801464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A056538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282165.P16805247759395801464

/-!
# A282166: a(n) is the minimal sum of a positive integer sequence of length n with no duplicate substrings of length greater than 1, and every number different from its neighbors.

The programs for A282166, there is no canonical definition to state claims against.
-/

/-! ## A282166.P18302657008870688329

`∑[A000005(n*A196564(n)^n+1)]`
-/

namespace A282166.P18302657008870688329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n : ℤ) * A196564 n ^ n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282166.P18302657008870688329

/-! ## A282166.P17564111627396949744

`A378379(n+1)+A056239(A056450(n))`
-/

namespace A282166.P17564111627396949744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378379 (n + 1) + A056239 (A056450 n).toNat

end

end A282166.P17564111627396949744

/-! ## A282166.P16302774464024532880

`A358700(A081204(n))`
-/

namespace A282166.P16302774464024532880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358700 (A081204 n).toNat

end

end A282166.P16302774464024532880

/-! ## A282166.P5167871567403232846

`A031501(A007590(n+1))`
-/

namespace A282166.P5167871567403232846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031501 (A007590 (n + 1)).toNat

end

end A282166.P5167871567403232846

/-!
# A282168: a(n) is the minimal sum of a positive integer sequence of length n with no duplicate substrings (forward or backward) of length greater than 1.

The programs for A282168, there is no canonical definition to state claims against.
-/

/-! ## A282168.P10334741337486444991

`∑[round(sqrt(A167520(n+1)))]`
-/

namespace A282168.P10334741337486444991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A167520 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282168.P10334741337486444991

/-! ## A282168.P4934754702640888863

`∑[∑[char[A317186(n)]]]+1`
-/

namespace A282168.P4934754702640888863
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A282168.P4934754702640888863

/-! ## A282168.P3428756493799857122

`∑[A204164(A004277(n))]`
-/

namespace A282168.P3428756493799857122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282168.P3428756493799857122

/-! ## A282168.P3469816430220169571

`∑[A000194(comp[A140677(n)])]`
-/

namespace A282168.P3469816430220169571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282168.P3469816430220169571

/-! ## A282168.P9476754049447400769

`∑[A000194(comp[A005897(n)])]+1`
-/

namespace A282168.P9476754049447400769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A282168.P9476754049447400769

/-! ## A282168.P1821810309343826169

`∑[A000196(comp[A035618(n+1)])]`
-/

namespace A282168.P1821810309343826169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035618 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282168.P1821810309343826169

/-! ## A282168.P957664094040622281

`∑[A000194(A172474(3*n+4))]`
-/

namespace A282168.P957664094040622281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A172474 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282168.P957664094040622281

/-! ## A282168.P13682773206648312998

`∑[A000194(comp[A194278(3*n+2)])]`
-/

namespace A282168.P13682773206648312998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194278 (3 * n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282168.P13682773206648312998

/-!
# A282169: a(n) is the minimal product of a positive integer sequence of length n with no duplicate substrings of length greater than 1, and every number different from its neighbors.

The programs for A282169, there is no canonical definition to state claims against.
-/

/-! ## A282169.P13540805827563772096

`A322483(3^n)!`
-/

namespace A282169.P13540805827563772096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A322483 (3 ^ n)).toNat

end

end A282169.P13540805827563772096

/-! ## A282169.P3541692331624779440

`A320040((n+1)²)!`
-/

namespace A282169.P3541692331624779440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A320040 ((n + 1) ^ 2)).toNat

end

end A282169.P3541692331624779440

/-! ## A282169.P15388218741800801538

`A181118((n+2)²)!`
-/

namespace A282169.P15388218741800801538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A181118 ((n + 2) ^ 2)).toNat

end

end A282169.P15388218741800801538

/-! ## A282169.P17123174760467084549

`∏[A357859((n+1)²)]`
-/

namespace A282169.P17123174760467084549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357859 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282169.P17123174760467084549

/-! ## A282169.P17699475485644644904

`A261153(∑[n+2])!`
-/

namespace A282169.P17699475485644644904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A261153 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A282169.P17699475485644644904

/-!
# A282170: a(n) is the minimal product of a positive integer sequence of length n with no duplicate substrings (forward or backward) of length greater than 1, and no self-adjacent terms.

The programs for A282170, there is no canonical definition to state claims against.
-/

/-! ## A282170.P14054653453202820999

`A098361(A279083(2*n+1)-n)`
-/

namespace A282170.P14054653453202820999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A279083 (2 * n + 1) - (n : ℤ)).toNat

end

end A282170.P14054653453202820999

/-! ## A282170.P3348469152199273541

`record[A321912(n+1)]*A324387(n+1)`
-/

namespace A282170.P3348469152199273541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A324387 (n + 1)

end

end A282170.P3348469152199273541

/-! ## A282170.P16723129613266516288

`A003963(A000984(n))*A329317(n+1)`
-/

namespace A282170.P16723129613266516288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A000984 n).toNat * A329317 (n + 1)

end

end A282170.P16723129613266516288

/-! ## A282170.P13710805515844998752

`A022300(A357161(n))*A187741(n+2)`
-/

namespace A282170.P13710805515844998752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (A357161 n).toNat * A187741 (n + 2)

end

end A282170.P13710805515844998752

/-!
# A282172: Expansion of (Sum_{k>=0} x^(k*(k+1)*(k+2)/6))^5.

The programs for A282172, there is no canonical definition to state claims against.
-/

/-! ## A282172.P6372024876002851778

`A290429((n+4)²-∑[n+1])`
-/

namespace A282172.P6372024876002851778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290429 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282172.P6372024876002851778

/-! ## A282172.P720636727160030375

`gcd(A061358(6*n+5), A290429(A055999(n+3)))`
-/

namespace A282172.P720636727160030375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061358 (6 * n + 5)) (A290429 (A055999 (n + 3)).toNat)

end

end A282172.P720636727160030375

/-! ## A282172.P9719671853057365432

`A290429(A055999(n+3))*A290429(A000217(n))`
-/

namespace A282172.P9719671853057365432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290429 (A055999 (n + 3)).toNat * A290429 (A000217 n).toNat

end

end A282172.P9719671853057365432

/-! ## A282172.P17507639375359435314

`A316441(A077068(n+1))+A290429(A055999(n+3))`
-/

namespace A282172.P17507639375359435314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A077068 (n + 1)).toNat + A290429 (A055999 (n + 3)).toNat

end

end A282172.P17507639375359435314

/-! ## A282172.P15567889894743672680

`A078898(A006530(n+1))*A290429(A055999(n+3))`
-/

namespace A282172.P15567889894743672680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A006530 (n + 1)).toNat * A290429 (A055999 (n + 3)).toNat

end

end A282172.P15567889894743672680

/-!
# A282173: Expansion of (Sum_{k>=0} x^(k*(k+1)*(2*k+1)/6))^6.

The programs for A282173, there is no canonical definition to state claims against.
-/

/-! ## A282173.P1274655247660723028

`A290430(eq[6, A025581(n)])`
-/

namespace A282173.P1274655247660723028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282173.P1274655247660723028

/-! ## A282173.P12188376093560029480

`A290430(eq[7, A193739(n)])`
-/

namespace A282173.P12188376093560029480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282173.P12188376093560029480

/-! ## A282173.P10027756826922733716

`A290430(eq[13, A099375(n)])`
-/

namespace A282173.P10027756826922733716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282173.P10027756826922733716

/-! ## A282173.P9692046912715993551

`A290430(A055999(n+4)-1)`
-/

namespace A282173.P9692046912715993551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290430 (A055999 (n + 4) - 1).toNat

end

end A282173.P9692046912715993551

/-! ## A282173.P4458187221598380080

`A290430(eq[7, A004736(n+1)])`
-/

namespace A282173.P4458187221598380080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282173.P4458187221598380080

/-! ## A282173.P489440189580241556

`A290430(Δ[Δ[A055832(n+5)]])`
-/

namespace A282173.P489440189580241556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290430 (f1 (n + 1) - f1 n).toNat

end

end A282173.P489440189580241556

/-!
# A282174: Square root of the smallest square referenced in A280547 (Smallest number k such that (k+1)^n - k^n is divisible by a square > 1).

The programs for A282174, there is no canonical definition to state claims against.
-/

/-! ## A282174.P9129440159915255055

`sqrt(A281996(n+2))`
-/

namespace A282174.P9129440159915255055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A281996 (n + 2) : ℝ)

end

end A282174.P9129440159915255055

/-! ## A282174.P952377870471039593

`root(A281996(2*(n+1)-n), 2)`
-/

namespace A282174.P952377870471039593
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A281996 (2 * (n + 1) - n) : ℝ) ^ (1 / (2 : ℝ))

end

end A282174.P952377870471039593

/-! ## A282174.P2788501547443210657

`A006530(root(A281996(n+2), 2))`
-/

namespace A282174.P2788501547443210657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A281996 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282174.P2788501547443210657

/-! ## A282174.P10187186721748174702

`A007913(root(A281996(n+2), 2))`
-/

namespace A282174.P10187186721748174702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A281996 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282174.P10187186721748174702

/-! ## A282174.P8870460210579872740

`A008472(root(A281996(n+2), 2))`
-/

namespace A282174.P8870460210579872740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway ((A281996 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282174.P8870460210579872740

/-! ## A282174.P10590103080566973589

`A014963(root(A281996(n+2), 2))`
-/

namespace A282174.P10590103080566973589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A281996 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282174.P10590103080566973589

/-! ## A282174.P15923413301964958947

`A020639(root(A281996(n+2), 2))`
-/

namespace A282174.P15923413301964958947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A281996 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282174.P15923413301964958947

/-! ## A282174.P14355763929860793589

`A026741(root(A281996(n+2), 2))`
-/

namespace A282174.P14355763929860793589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A281996 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282174.P14355763929860793589

/-! ## A282174.P915835140974696822

`A126800(root(A281996(n+2), 2))`
-/

namespace A282174.P915835140974696822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126800 (SequenceMachineLib.roundAway ((A281996 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282174.P915835140974696822

/-! ## A282174.P14809313840796565345

`A000010(root(A281996(n+2), 2))+1`
-/

namespace A282174.P14809313840796565345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A281996 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat + 1

end

end A282174.P14809313840796565345

/-!
# A282175: a(n) is the smallest product M=p_1*p_2*...*p_n with distinct primes p_i such that M+2^n=B, where B=q_1*q_2*...*q_n with distinct primes q_i, or a(n)=0 if there is no such M.

The programs for A282175, there is no canonical definition to state claims against.
-/

/-! ## A282175.P6496803288944402692

`filter[A282231(n+1), A008966(#)]`
-/

namespace A282175.P6496803288944402692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A282175.P6496803288944402692

/-!
# A282176: The smallest square referenced in A280302 (Smallest k such that (n+1)^k - n^k is divisible by a square > 1).

The programs for A282176, there is no canonical definition to state claims against.
-/

/-! ## A282176.P5875132471153571955

`A282177(n+1)²`
-/

namespace A282176.P5875132471153571955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282177 (n + 1) ^ 2

end

end A282176.P5875132471153571955

/-! ## A282176.P15955893961167049857

`A000463(2*A282177(n+1))`
-/

namespace A282176.P15955893961167049857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A282177 (n + 1)).toNat

end

end A282176.P15955893961167049857

/-! ## A282176.P12065711872010880514

`A002620(2*A282177(n+1))`
-/

namespace A282176.P12065711872010880514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A282177 (n + 1)).toNat

end

end A282176.P12065711872010880514

/-! ## A282176.P848363539623044362

`A130064(2*A282177(n+1))`
-/

namespace A282176.P848363539623044362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130064 (2 * A282177 (n + 1)).toNat

end

end A282176.P848363539623044362

/-! ## A282176.P12642252945610944360

`A191871(2*A282177(n+1))`
-/

namespace A282176.P12642252945610944360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191871 (2 * A282177 (n + 1)).toNat

end

end A282176.P12642252945610944360

/-! ## A282176.P322657550226544640

`A282177(A000027(n+1))^2`
-/

namespace A282176.P322657550226544640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282177 (A000027 (n + 1)).toNat ^ 2

end

end A282176.P322657550226544640

/-! ## A282176.P5325491760932240257

`A002620(lcm(2, A282177(n+1)))`
-/

namespace A282176.P5325491760932240257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (Int.lcm 2 (A282177 (n + 1)))

end

end A282176.P5325491760932240257

/-! ## A282176.P6111224107632340641

`A000290(or(1, A282177(n+1)))`
-/

namespace A282176.P6111224107632340641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A282177 (n + 1))).toNat

end

end A282176.P6111224107632340641

/-! ## A282176.P7200388663567722748

`A006530(A282177(-xor(n, -1)))²`
-/

namespace A282176.P7200388663567722748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A282177 (-Int.xor (n : ℤ) (-1)).toNat).toNat ^ 2

end

end A282176.P7200388663567722748

/-! ## A282176.P3507103935783904784

`A006530(or(1, A282177(n+1)))^2`
-/

namespace A282176.P3507103935783904784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A282177 (n + 1))).toNat ^ 2

end

end A282176.P3507103935783904784

/-! ## A282176.P402728469109430709

`A014963(or(1, A282177(n+1)))^2`
-/

namespace A282176.P402728469109430709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lor 1 (A282177 (n + 1))).toNat ^ 2

end

end A282176.P402728469109430709

/-! ## A282176.P15143976845113563531

`A000290(∑{d}[A282177(n+1), #]-1)`
-/

namespace A282176.P15143976845113563531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∑ d ∈ Nat.divisors (f1 n).natAbs, d - 1)

end

end A282176.P15143976845113563531

/-! ## A282176.P3340870378036048717

`A282177(n+1)^A020639(2*(n+1))`
-/

namespace A282176.P3340870378036048717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282177 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A282176.P3340870378036048717

/-! ## A282176.P1861895488080954797

`A282177(n+1)^A006530(3-(-1)^n)`
-/

namespace A282176.P1861895488080954797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282177 (n + 1) : ℚ) ^ (A006530 (3 - (-1) ^ n).toNat : ℤ)

end

end A282176.P1861895488080954797

/-! ## A282176.P7689585243274378436

`A282177(n+1)^A001316(A001316(n))`
-/

namespace A282176.P7689585243274378436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282177 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A282176.P7689585243274378436

/-! ## A282176.P5241138995281833498

`A282177(A000027(n+1))*A282177(n+1)`
-/

namespace A282176.P5241138995281833498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282177 (A000027 (n + 1)).toNat * A282177 (n + 1)

end

end A282176.P5241138995281833498

/-! ## A282176.P11267269429253687187

`A006530(2*A282177(n+1))*A282177(n+1)`
-/

namespace A282176.P11267269429253687187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A282177 (n + 1)).toNat * A282177 (n + 1)

end

end A282176.P11267269429253687187

/-!
# A282177: Square root of the smallest square referenced in A280302 (Smallest k such that (n+1)^k - n^k is divisible by a square > 1).

The programs for A282177, there is no canonical definition to state claims against.
-/

/-! ## A282177.P904969753158165451

`sqrt(A282176(n+1))`
-/

namespace A282177.P904969753158165451
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A282176 (n + 1) : ℝ)

end

end A282177.P904969753158165451

/-! ## A282177.P544910885776013924

`root(A282176(4/2-1+n), 2)`
-/

namespace A282177.P544910885776013924
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A282176 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 - 1 + (n : ℚ))).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A282177.P544910885776013924

/-! ## A282177.P16191523905143634945

`A000265(root(A282176(n+1), 2))`
-/

namespace A282177.P16191523905143634945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A282176 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282177.P16191523905143634945

/-! ## A282177.P1547390571912038507

`A001414(root(A282176(n+1), 2))`
-/

namespace A282177.P1547390571912038507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A282176 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282177.P1547390571912038507

/-! ## A282177.P4681079519293023722

`A006530(root(A282176(n+1), 2))`
-/

namespace A282177.P4681079519293023722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A282176 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282177.P4681079519293023722

/-! ## A282177.P6120905439190948380

`A014963(root(A282176(n+1), 2))`
-/

namespace A282177.P6120905439190948380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A282176 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282177.P6120905439190948380

/-! ## A282177.P17042603253217309625

`A017666(root(A282176(n+1), 2))`
-/

namespace A282177.P17042603253217309625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (SequenceMachineLib.roundAway ((A282176 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282177.P17042603253217309625

/-! ## A282177.P8419219050623738742

`A020639(root(A282176(n+1), 2))`
-/

namespace A282177.P8419219050623738742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A282176 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282177.P8419219050623738742

/-! ## A282177.P16545400375379846963

`A000010(root(A282176(n+1), 2))+1`
-/

namespace A282177.P16545400375379846963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A282176 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat + 1

end

end A282177.P16545400375379846963

/-! ## A282177.P16052629043613475014

`A006530(2*A282176(n+1))`
-/

namespace A282177.P16052629043613475014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A282176 (n + 1)).toNat

end

end A282177.P16052629043613475014

/-! ## A282177.P199192312933821608

`A006530(lcm(2, A282176(n+1)))`
-/

namespace A282177.P199192312933821608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A282176 (n + 1)))

end

end A282177.P199192312933821608

/-! ## A282177.P6518056627595128548

`A006530(or(1, A282176(n+1)))`
-/

namespace A282177.P6518056627595128548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A282176 (n + 1))).toNat

end

end A282177.P6518056627595128548

/-! ## A282177.P1865902771997576229

`A020639(or(1, A282176(n+1)))`
-/

namespace A282177.P1865902771997576229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A282176 (n + 1))).toNat

end

end A282177.P1865902771997576229

/-! ## A282177.P13954012624620669977

`A020639(A282176(char[1]+1+n))`
-/

namespace A282177.P13954012624620669977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A282176 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat

end

end A282177.P13954012624620669977

/-! ## A282177.P12759292161461118934

`A006530(A282176(A003056(∑[n+1])))`
-/

namespace A282177.P12759292161461118934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A282176 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A282177.P12759292161461118934

/-! ## A282177.P9444598357853257461

`A282176(n+1)-A000010(2*A282176(n+1))`
-/

namespace A282177.P9444598357853257461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282176 (n + 1) - A000010 (2 * A282176 (n + 1)).toNat

end

end A282177.P9444598357853257461

/-!
# A282178: Primes for which the sum of all preceding odd-indexed prime gaps is exactly one greater than the sum of all preceding even-indexed prime gaps.

The programs for A282178, there is no canonical definition to state claims against.
-/

/-! ## A282178.P6075009464233662680

`∩[A299300(n+1), A330554(n+1)]`
-/

namespace A282178.P6075009464233662680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282178.P6075009464233662680

/-! ## A282178.P12290308945280613064

`p?[A299300(n+1)]`
-/

namespace A282178.P12290308945280613064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282178.P12290308945280613064

/-! ## A282178.P14744374939552832820

`p?[A064940(n+1)+1]`
-/

namespace A282178.P14744374939552832820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064940 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282178.P14744374939552832820

/-! ## A282178.P9791229144523717162

`A055670(A127596(n+1))-1`
-/

namespace A282178.P9791229144523717162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A127596 (n + 1)).toNat - 1

end

end A282178.P9791229144523717162

/-! ## A282178.P11681742334472472714

`∩[A002145(n+1), A299300(n+1)]`
-/

namespace A282178.P11681742334472472714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282178.P11681742334472472714

/-!
# A282179: E.g.f.: exp(exp(x) - 1)*(exp(3*x) - 2*exp(x) + 1).

The programs for A282179, the canonical program `A282179.P15697949423655792058` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282179 has offset 0).

The definition of A282179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282179.P15785352964591498618

`A000110(n)+A005494(n)-A186021(n+1)`
-/

namespace A282179.P15785352964591498618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n + A005494 n - A186021 (n + 1)

end

end A282179.P15785352964591498618

namespace A282179

/-- `A000110(n)+A005494(n)-A186021(n+1)` -/
def P15785352964591498618.Spec : Prop :=
  ∀ n, P15785352964591498618.a n = A282179 n

end A282179

/-! ## A282179.P15697949423655792058

`A000110(n+3)-3*A000110(n+2)+A000110(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A282179

/-- `A000110(n+3)-3*A000110(n+2)+A000110(n)` -/
def P15697949423655792058.Spec : Prop :=
  ∀ n, P15697949423655792058.a n = A282179 n

theorem P15697949423655792058.correct : P15697949423655792058.Spec := by
  intro n
  simp only [A282179]

end A282179

/-! ## A282179.P16293451675760298132

`A108458(A000096(n+3)-2)`
-/

namespace A282179.P16293451675760298132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (A000096 (n + 3) - 2).toNat

end

end A282179.P16293451675760298132

namespace A282179

/-- `A108458(A000096(n+3)-2)` -/
def P16293451675760298132.Spec : Prop :=
  ∀ n, P16293451675760298132.a n = A282179 n

end A282179

/-! ## A282179.P1836002701269643584

`Δ[∑[A226506(n)]-A000110(n)]`
-/

namespace A282179.P1836002701269643584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226506 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282179.P1836002701269643584

namespace A282179

/-- `Δ[∑[A226506(n)]-A000110(n)]` -/
def P1836002701269643584.Spec : Prop :=
  ∀ n, P1836002701269643584.a n = A282179 n

end A282179

/-! ## A282179.P6741178631963910635

`A226506(n+1)-Δ[A000110(n)]`
-/

namespace A282179.P6741178631963910635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226506 (n + 1) - (f1 (n + 1) - f1 n)

end

end A282179.P6741178631963910635

namespace A282179

/-- `A226506(n+1)-Δ[A000110(n)]` -/
def P6741178631963910635.Spec : Prop :=
  ∀ n, P6741178631963910635.a n = A282179 n

theorem P6741178631963910635.correct : P6741178631963910635.Spec := by
  intro n
  simp only [A282179, Nat.add_sub_cancel, A282179.P6741178631963910635.f1, A282179.P6741178631963910635.a, A282179.P15697949423655792058.a, A000110, A000110.P10669528326230861424.f1, A000110.P10669528326230861424.a, A226506, A226506.P17368114396451298817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282179

/-! ## A282179.P12677265621158478013

`A108458(n+1+A000217(n+3))`
-/

namespace A282179.P12677265621158478013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 ((n + 1 : ℤ) + A000217 (n + 3)).toNat

end

end A282179.P12677265621158478013

namespace A282179

/-- `A108458(n+1+A000217(n+3))` -/
def P12677265621158478013.Spec : Prop :=
  ∀ n, P12677265621158478013.a n = A282179 n

end A282179

/-! ## A282179.P1856872474883412224

`A226506(n+1)+A000110(n)-A000110(n+1)`
-/

namespace A282179.P1856872474883412224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226506 (n + 1) + (A000110 n - A000110 (n + 1))

end

end A282179.P1856872474883412224

namespace A282179

/-- `A226506(n+1)+A000110(n)-A000110(n+1)` -/
def P1856872474883412224.Spec : Prop :=
  ∀ n, P1856872474883412224.a n = A282179 n

theorem P1856872474883412224.correct : P1856872474883412224.Spec := by
  intro n
  simp only [A282179, Nat.add_sub_cancel, A282179.P1856872474883412224.a, A282179.P15697949423655792058.a, A000110, A000110.P10669528326230861424.f1, A000110.P10669528326230861424.a, A226506, A226506.P17368114396451298817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282179

/-! ## A282179.P12783671760862023322

`A033452(n+1)-A078468(n)`
-/

namespace A282179.P12783671760862023322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033452 (n + 1) - A078468 n

end

end A282179.P12783671760862023322

namespace A282179

/-- `A033452(n+1)-A078468(n)` -/
def P12783671760862023322.Spec : Prop :=
  ∀ n, P12783671760862023322.a n = A282179 n

theorem P12783671760862023322.correct : P12783671760862023322.Spec := by
  intro n
  simp only [A282179, Nat.add_sub_cancel, A282179.P12783671760862023322.a, A282179.P15697949423655792058.a, A000110, A000110.P10669528326230861424.f1, A000110.P10669528326230861424.a, A033452, A033452.P9141642302586145014.a, A078468, A078468.P1693704688615918572.a, A005493, A005493.P6615084071079212933.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282179

/-!
# A282180: 

The programs for A282180, there is no canonical definition to state claims against.
-/

/-! ## A282180.P1545177537198630136

`floor((a(n-1)²-2)^(3/2))` with `a(0)=8`
-/

namespace A282180.P1545177537198630136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  ⌊(a (n - 1) ^ 2 - 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

end

end A282180.P1545177537198630136

/-!
# A282181: 

The programs for A282181, there is no canonical definition to state claims against.
-/

/-! ## A282181.P10819027562351416096

`floor((a(n-1)²-2)^(3/2))` with `a(0)=9`
-/

namespace A282181.P10819027562351416096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  ⌊(a (n - 1) ^ 2 - 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

end

end A282181.P10819027562351416096

/-!
# A282184: a(n) = A034699(a(n-1) + a(n-2) + a(n-3)) with a(0) = a(1) = a(2) = 1.

The programs for A282184, there is no canonical definition to state claims against.
-/

/-! ## A282184.P13534975754859688887

`A034699(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A282184.P13534975754859688887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A034699 (a (n - 1) + a (n - 2) + a (n - 3)).toNat

end

end A282184.P13534975754859688887

/-!
# A282185: Number of n X 2 0..2 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A282185, the canonical program `A282185.P18210709040046691266` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282185 has offset 1).

The definition of A282185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282185.P18210709040046691266

`ogf((x^2-8x^3+24x^4+58x^5+80x^6+48x^7+18x^8)/(1-16x+48x^2+116x^3+160x^4+96x^5+36x^6))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282185

/-- `ogf((x^2-8x^3+24x^4+58x^5+80x^6+48x^7+18x^8)/(1-16x+48x^2+116x^3+160x^4+96x^5+36x^6))` -/
def P18210709040046691266.Spec : Prop :=
  ∀ n, P18210709040046691266.a n = A282185 (n + 1)

theorem P18210709040046691266.correct : P18210709040046691266.Spec := by
  intro n
  simp only [A282185, Nat.add_sub_cancel]

end A282185

/-! ## A282185.P12204203070130299126

`A282189(∑[dr(n)+2])`
-/

namespace A282185.P12204203070130299126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282185.P12204203070130299126

namespace A282185

/-- `A282189(∑[dr(n)+2])` -/
def P12204203070130299126.Spec : Prop :=
  ∀ n, P12204203070130299126.a n = A282185 (n + 1)

end A282185

/-! ## A282185.P1154941059965728660

`A282189(∑[n+1]+2)`
-/

namespace A282185.P1154941059965728660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282185.P1154941059965728660

namespace A282185

/-- `A282189(∑[n+1]+2)` -/
def P1154941059965728660.Spec : Prop :=
  ∀ n, P1154941059965728660.a n = A282185 (n + 1)

end A282185

/-! ## A282185.P89657121174080159

`lcm(A105103(n), A282189(A133263(n+1)))`
-/

namespace A282185.P89657121174080159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105103 n) (A282189 (A133263 (n + 1)).toNat)

end

end A282185.P89657121174080159

namespace A282185

/-- `lcm(A105103(n), A282189(A133263(n+1)))` -/
def P89657121174080159.Spec : Prop :=
  ∀ n, (P89657121174080159.a n : ℤ) = A282185 (n + 1)

end A282185

/-! ## A282185.P8183582961595318078

`A336121(2*n+1)+A282189(A133263(n+1))`
-/

namespace A282185.P8183582961595318078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (2 * n + 1) + A282189 (A133263 (n + 1)).toNat

end

end A282185.P8183582961595318078

namespace A282185

/-- `A336121(2*n+1)+A282189(A133263(n+1))` -/
def P8183582961595318078.Spec : Prop :=
  ∀ n, P8183582961595318078.a n = A282185 (n + 1)

end A282185

/-!
# A282186: Number of nX3 0..2 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A282186, there is no canonical definition to state claims against.
-/

/-! ## A282186.P18052430625477818333

`A282189(∑[n+2]+4)`
-/

namespace A282186.P18052430625477818333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282186.P18052430625477818333

/-! ## A282186.P15106481380636467056

`A282189(A167614(n+1))+A025443(n)`
-/

namespace A282186.P15106481380636467056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (A167614 (n + 1)).toNat + A025443 n

end

end A282186.P15106481380636467056

/-! ## A282186.P12482669853321243535

`A282189(A167614(n+1))+A062329(n)`
-/

namespace A282186.P12482669853321243535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (A167614 (n + 1)).toNat + A062329 n

end

end A282186.P12482669853321243535

/-! ## A282186.P17017559861317649165

`A282189(A167614(n+1))+A185284(n)`
-/

namespace A282186.P17017559861317649165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (A167614 (n + 1)).toNat + A185284 n

end

end A282186.P17017559861317649165

/-! ## A282186.P9326113849746326454

`A014152(n)*A282189(A167614(n+1))`
-/

namespace A282186.P9326113849746326454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014152 n * A282189 (A167614 (n + 1)).toNat

end

end A282186.P9326113849746326454

/-!
# A282187: Number of nX4 0..2 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A282187, there is no canonical definition to state claims against.
-/

/-! ## A282187.P4066983705383730583

`A282189(C(n+4, 2)+4)`
-/

namespace A282187.P4066983705383730583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (Nat.choose (n + 4) 2 + 4)

end

end A282187.P4066983705383730583

/-! ## A282187.P3930285509677294126

`A282189(∑[a(n-1)+1])` with `a(0)=10, a(1)=4`
-/

namespace A282187.P3930285509677294126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282187.P3930285509677294126

/-! ## A282187.P4069586665143450059

`A282189(A141214(n)+7)`
-/

namespace A282187.P4069586665143450059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (A141214 n + 7).toNat

end

end A282187.P4069586665143450059

/-! ## A282187.P11309266638177761369

`A282189(A052905(n)+9)`
-/

namespace A282187.P11309266638177761369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (A052905 n + 9).toNat

end

end A282187.P11309266638177761369

/-! ## A282187.P5192159165353662259

`A282189(A055999(n)+10)`
-/

namespace A282187.P5192159165353662259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (A055999 n + 10).toNat

end

end A282187.P5192159165353662259

/-!
# A282188: Number of nX5 0..2 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A282188, there is no canonical definition to state claims against.
-/

/-! ## A282188.P13606343884555959658

`A282189(A167499(n+3))`
-/

namespace A282188.P13606343884555959658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (A167499 (n + 3)).toNat

end

end A282188.P13606343884555959658

/-! ## A282188.P4498154452350479123

`A282189(A155212(n)+13)`
-/

namespace A282188.P4498154452350479123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (A155212 n + 13).toNat

end

end A282188.P4498154452350479123

/-! ## A282188.P17609044354354002953

`A282189(A056000(n)+15)`
-/

namespace A282188.P17609044354354002953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (A056000 n + 15).toNat

end

end A282188.P17609044354354002953

/-! ## A282188.P18198866215515163748

`A282189(eq[7, A066657(n)])`
-/

namespace A282188.P18198866215515163748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282188.P18198866215515163748

/-!
# A282189: T(n,k)=Number of nXk 0..2 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A282189, there is no canonical definition to state claims against.
-/

/-! ## A282189.P5583577837921954933

`A108054(A102703(n+1))%A008300(n)`
-/

namespace A282189.P5583577837921954933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108054 (A102703 (n + 1)).toNat) (A008300 n)

end

end A282189.P5583577837921954933

/-! ## A282189.P4350993711143462111

`and(A065717(A229885(n)), A229896(n+1))`
-/

namespace A282189.P4350993711143462111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065717 (A229885 n).toNat) (A229896 (n + 1))

end

end A282189.P4350993711143462111

/-! ## A282189.P10025140850051581304

`and(A109310(A109312(n+1)), A331955(n))`
-/

namespace A282189.P10025140850051581304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109310 (A109312 (n + 1)).toNat) (A331955 n)

end

end A282189.P10025140850051581304

/-! ## A282189.P12456775080399881147

`and(A003987(A283752(n)), A283784(n+1))`
-/

namespace A282189.P12456775080399881147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003987 (A283752 n).toNat) (A283784 (n + 1))

end

end A282189.P12456775080399881147

/-!
# A282190: E.g.f.: 1/(1 + LambertW(1-exp(x))), where LambertW() is the Lambert W-function.

The programs for A282190, there is no canonical definition to state claims against.
-/

/-! ## A282190.P15975918905307864758

`A083853(ceil(a(n-1)/ϕ+n+2))+n` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A282190.P15975918905307864758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A083853 ⌈(a (n - 1) : ℝ) / Real.goldenRatio + (n + 2 : ℝ)⌉.toNat + (n : ℤ)

end

end A282190.P15975918905307864758

/-!
# A282192: Number of ways of writing n as a sum of a prime and a squarefree semiprime.

The programs for A282192, there is no canonical definition to state claims against.
-/

/-! ## A282192.P17808552402366422495

`A100949(A028310(n))-A258139(A028310(n))`
-/

namespace A282192.P17808552402366422495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A028310 n).toNat - A258139 (A028310 n).toNat

end

end A282192.P17808552402366422495

/-! ## A282192.P8332070095543752209

`A100949(A233583(n+1))-A258139(A233583(n+1))`
-/

namespace A282192.P8332070095543752209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A233583 (n + 1)).toNat - A258139 (A233583 (n + 1)).toNat

end

end A282192.P8332070095543752209

/-!
# A282193: a(n) is the minimal product of a positive integer sequence of length n with no duplicate substrings (forward or backward) of length greater than 1.

The programs for A282193, there is no canonical definition to state claims against.
-/

/-! ## A282193.P11765396040474733630

`A028310(A062177(n))/A000700(n+4)`
-/

namespace A282193.P11765396040474733630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (A062177 n).toNat : ℚ) / (A000700 (n + 4) : ℚ)

end

end A282193.P11765396040474733630

/-! ## A282193.P5292898318058203873

`A141452(A355191(n))`
-/

namespace A282193.P5292898318058203873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141452 (A355191 n).toNat

end

end A282193.P5292898318058203873

/-!
# A282194: a(n) = smallest positive k such that 2*n + 2^k + 1 is composite.

The programs for A282194, there is no canonical definition to state claims against.
-/

/-! ## A282194.P475380517977481097

`A196048(A282026(n))+A010884(90*n)`
-/

namespace A282194.P475380517977481097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + A010884 (90 * n)

end

end A282194.P475380517977481097

/-! ## A282194.P13123084253064124221

`A196048(A282026(n))+A033999(90*n)`
-/

namespace A282194.P13123084253064124221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + A033999 (90 * n)

end

end A282194.P13123084253064124221

/-! ## A282194.P9196618162310787915

`A196048(A282026(n))+A132954(90*n)`
-/

namespace A282194.P9196618162310787915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + A132954 (90 * n)

end

end A282194.P9196618162310787915

/-! ## A282194.P17154036914890564529

`A196048(A282026(n))+A000035(90*n)+1`
-/

namespace A282194.P17154036914890564529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + (A000035 (90 * n) + 1)

end

end A282194.P17154036914890564529

/-! ## A282194.P6402366519447392553

`A196048(A282026(n))+A001511(90*n+1)`
-/

namespace A282194.P6402366519447392553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + A001511 (90 * n + 1)

end

end A282194.P6402366519447392553

/-! ## A282194.P5047092370716551168

`A196048(A282026(n))+A007954(90*n)+1`
-/

namespace A282194.P5047092370716551168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + (A007954 (90 * n) + 1)

end

end A282194.P5047092370716551168

/-! ## A282194.P9103342628238923718

`A196048(A282026(n))-A153881(90*n+2)`
-/

namespace A282194.P9103342628238923718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat - A153881 (90 * n + 2)

end

end A282194.P9103342628238923718

/-! ## A282194.P18338387754125112821

`A196048(A282026(n))+A040345(90*n+7)`
-/

namespace A282194.P18338387754125112821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + A040345 (90 * n + 7)

end

end A282194.P18338387754125112821

/-! ## A282194.P10782090117370511784

`A196048(A282026(n))+A295665(90*n+1)²%3`
-/

namespace A282194.P10782090117370511784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + Int.tmod (A295665 (90 * n + 1) ^ 2) 3

end

end A282194.P10782090117370511784

/-! ## A282194.P14157452376512216647

`A196048(A282026(n))+A309873(90*n+1)²^n`
-/

namespace A282194.P14157452376512216647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + (A309873 (90 * n + 1) ^ 2) ^ n

end

end A282194.P14157452376512216647

/-! ## A282194.P15002711572949517099

`A196048(A282026(n))-A057428(A068639(90*n+1))`
-/

namespace A282194.P15002711572949517099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat - A057428 (A068639 (90 * n + 1)).toNat

end

end A282194.P15002711572949517099

/-! ## A282194.P17035000307737939164

`A196048(A282026(n))+A281116(A061142(90*n+1)+1)+1`
-/

namespace A282194.P17035000307737939164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + (A281116 (A061142 (90 * n + 1) + 1).toNat + 1)

end

end A282194.P17035000307737939164

/-! ## A282194.P10859551983601518210

`A196048(A282026(n))+Δ[A006503(90*n+1)]%2`
-/

namespace A282194.P10859551983601518210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (90 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + Int.tmod (f1 (n + 1) - f1 n) 2

end

end A282194.P10859551983601518210

/-! ## A282194.P508439094291669488

`A196048(A282026(n))+A131800(A273326(n)+3)`
-/

namespace A282194.P508439094291669488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + A131800 (A273326 n + 3).toNat

end

end A282194.P508439094291669488

/-! ## A282194.P553098637937494202

`A196048(A282026(n))+A000007(A273326(n)+1)+1`
-/

namespace A282194.P553098637937494202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + A000007 (A273326 n + 1).toNat + 1

end

end A282194.P553098637937494202

/-! ## A282194.P8564222497921169576

`A317837(A107009(2*(n+1)))+A196048(A282026(n))`
-/

namespace A282194.P8564222497921169576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317837 (A107009 (2 * (n + 1))).toNat + A196048 (A282026 n).toNat

end

end A282194.P8564222497921169576

/-! ## A282194.P14700204554142320240

`A196048(A282026(n))+A014695(A044364(n+1))`
-/

namespace A282194.P14700204554142320240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A282026 n).toNat + A014695 (A044364 (n + 1)).toNat

end

end A282194.P14700204554142320240

/-! ## A282194.P18135665246471656451

`A317837(A106995(n+1))+A196048(A282026(n))`
-/

namespace A282194.P18135665246471656451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317837 (A106995 (n + 1)).toNat + A196048 (A282026 n).toNat

end

end A282194.P18135665246471656451

/-!
# A282196: a(n) is the denominator of Sum_{m=0..n}(Sum_{k=0..m} ((k+1)/(m-k+1)^2) * (Catalan(k)/(2^(2*k)))^2)*(Sum_{k=0..n-m} ((k+1)/(n-m-k+1)^2) * (Catalan(k)/(2^(2*k)))^2).

The programs for A282196, there is no canonical definition to state claims against.
-/

/-! ## A282196.P7411285554903656159

`A316297(n+1)*A353791(A316297(n+1))`
-/

namespace A282196.P7411285554903656159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316297 (n + 1) * A353791 (A316297 (n + 1)).toNat

end

end A282196.P7411285554903656159

/-!
# A282197: a(n) is the smallest number d if the point (d,d) is shared by exactly n different Dyck paths in the main diagonal of the diagram of the symmetries of sigma described in A237593.

The programs for A282197, there is no canonical definition to state claims against.
-/

/-! ## A282197.P17949355090713838520

`A282131(A390114(n+1))`
-/

namespace A282197.P17949355090713838520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282131 (A390114 (n + 1)).toNat

end

end A282197.P17949355090713838520

/-!
# A282198: a(n) = k if the last Dyck path that is counted in A279286(n) is the k-th Dyck path.

The programs for A282198, there is no canonical definition to state claims against.
-/

/-! ## A282198.P7054591977275022376

`A244367(A279286(n+1))+n`
-/

namespace A282198.P7054591977275022376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (A279286 (n + 1)).toNat + (n : ℤ)

end

end A282198.P7054591977275022376

/-! ## A282198.P3787004829949800937

`A244367(A282197(n+1))+n`
-/

namespace A282198.P3787004829949800937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (A282197 (n + 1)).toNat + (n : ℤ)

end

end A282198.P3787004829949800937

/-! ## A282198.P14756036790334553424

`A280295(n+1)+A001222(A000079(n))`
-/

namespace A282198.P14756036790334553424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280295 (n + 1) + A001222 (A000079 n).toNat

end

end A282198.P14756036790334553424

/-! ## A282198.P11041293830826921010

`A296762(n+1)-A024000(A280295(n+1))`
-/

namespace A282198.P11041293830826921010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296762 (n + 1) - A024000 (A280295 (n + 1)).toNat

end

end A282198.P11041293830826921010

/-! ## A282198.P8876738570584498679

`A276112(A390114(A280223(A280295(n+1))))`
-/

namespace A282198.P8876738570584498679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276112 (A390114 (A280223 (A280295 (n + 1)).toNat).toNat).toNat

end

end A282198.P8876738570584498679

/-!
# A282199: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 433", based on the 5-celled von Neumann neighborhood.

The programs for A282199, there is no canonical definition to state claims against.
-/

/-! ## A282199.P16585033014464337967

`A007088(A282201(n))`
-/

namespace A282199.P16585033014464337967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282201 n).toNat

end

end A282199.P16585033014464337967

/-! ## A282199.P17511755174613107214

`A185544(2*A282201(n))`
-/

namespace A282199.P17511755174613107214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282201 n).toNat

end

end A282199.P17511755174613107214

/-! ## A282199.P2460376696325831492

`A282222(A228050(n+1))`
-/

namespace A282199.P2460376696325831492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282222 (A228050 (n + 1)).toNat

end

end A282199.P2460376696325831492

