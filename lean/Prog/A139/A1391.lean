import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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
import Seq.Opaque.C025

/-!
# A139101: Numbers that show the distribution of prime numbers up to the n-th prime minus 1, using "0" for primes and "1" for nonprime numbers.

The programs for A139101, there is no canonical definition to state claims against.
-/

/-! ## A139101.P14802556479747247214

`A118256(record[A000010(n+1)])`
-/

namespace A139101.P14802556479747247214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118256 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139101.P14802556479747247214

/-! ## A139101.P16656328126397350454

`A118256(A000040(n+1)-1)`
-/

namespace A139101.P16656328126397350454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118256 (A000040 (n + 1) - 1).toNat

end

end A139101.P16656328126397350454

/-! ## A139101.P17403888029824710873

`A118256(eq[0, A005171(n+1)])`
-/

namespace A139101.P17403888029824710873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139101.P17403888029824710873

/-! ## A139101.P14612605690045575038

`A118256(lt[A005171(n+1), 1])`
-/

namespace A139101.P14612605690045575038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118256 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A139101.P14612605690045575038

/-! ## A139101.P8233794715888286019

`A118256(eq[2, A329607(n+1)])`
-/

namespace A139101.P8233794715888286019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139101.P8233794715888286019

/-!
# A139102: Numbers whose binary representation shows the distribution of prime numbers up to the n-th prime minus 1, using "0" for primes and "1" for nonprime numbers.

The programs for A139102, the canonical program `A139102.P10379063909804235442` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139102 has offset 1).

The definition of A139102 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139104, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139102.P10379063909804235442

`A139104(n+1)/2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A139102

/-- `A139104(n+1)/2` -/
def P10379063909804235442.Spec : Prop :=
  ∀ n, P10379063909804235442.a n = (A139102 (n + 1) : ℚ)

end A139102

/-! ## A139102.P10278398750597800516

`A118255(A006093(n+1))`
-/

namespace A139102.P10278398750597800516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A006093 (n + 1)).toNat

end

end A139102.P10278398750597800516

namespace A139102

/-- `A118255(A006093(n+1))` -/
def P10278398750597800516.Spec : Prop :=
  ∀ n, P10278398750597800516.a n = A139102 (n + 1)

end A139102

/-! ## A139102.P6690213735430040559

`A118255(record[A000010(n+1)])`
-/

namespace A139102.P6690213735430040559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139102.P6690213735430040559

namespace A139102

/-- `A118255(record[A000010(n+1)])` -/
def P6690213735430040559.Spec : Prop :=
  ∀ n, P6690213735430040559.a n = A139102 (n + 1)

end A139102

/-! ## A139102.P11752675054516821868

`record[A118255(A000010(Δ[n²]))]`
-/

namespace A139102.P11752675054516821868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A000010 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139102.P11752675054516821868

namespace A139102

/-- `record[A118255(A000010(Δ[n²]))]` -/
def P11752675054516821868.Spec : Prop :=
  ∀ n, P11752675054516821868.a n = A139102 (n + 1)

end A139102

/-! ## A139102.P4731994683938399381

`A118255(A000040(n+1)-1)`
-/

namespace A139102.P4731994683938399381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A000040 (n + 1) - 1).toNat

end

end A139102.P4731994683938399381

namespace A139102

/-- `A118255(A000040(n+1)-1)` -/
def P4731994683938399381.Spec : Prop :=
  ∀ n, P4731994683938399381.a n = A139102 (n + 1)

end A139102

/-! ## A139102.P1492006421038534490

`A118255(A008578(n+2)-1)`
-/

namespace A139102.P1492006421038534490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A008578 (n + 2) - 1).toNat

end

end A139102.P1492006421038534490

namespace A139102

/-- `A118255(A008578(n+2)-1)` -/
def P1492006421038534490.Spec : Prop :=
  ∀ n, P1492006421038534490.a n = A139102 (n + 1)

end A139102

/-! ## A139102.P3965014516562764873

`A118255(A015919(n+2)-1)`
-/

namespace A139102.P3965014516562764873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A015919 (n + 2) - 1).toNat

end

end A139102.P3965014516562764873

namespace A139102

/-- `A118255(A015919(n+2)-1)` -/
def P3965014516562764873.Spec : Prop :=
  ∀ n, P3965014516562764873.a n = A139102 (n + 1)

end A139102

/-! ## A139102.P6312811110445769344

`A118255(eq[1, A001222(n+1)])`
-/

namespace A139102.P6312811110445769344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139102.P6312811110445769344

namespace A139102

/-- `A118255(eq[1, A001222(n+1)])` -/
def P6312811110445769344.Spec : Prop :=
  ∀ n, P6312811110445769344.a n = A139102 (n + 1)

end A139102

/-! ## A139102.P18138656756622625470

`A118255(record[A006530(n+2)-1])`
-/

namespace A139102.P18138656756622625470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139102.P18138656756622625470

namespace A139102

/-- `A118255(record[A006530(n+2)-1])` -/
def P18138656756622625470.Spec : Prop :=
  ∀ n, P18138656756622625470.a n = A139102 (n + 1)

end A139102

/-! ## A139102.P10137192578739179638

`A118255(record[A020639(n+2)-1])`
-/

namespace A139102.P10137192578739179638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139102.P10137192578739179638

namespace A139102

/-- `A118255(record[A020639(n+2)-1])` -/
def P10137192578739179638.Spec : Prop :=
  ∀ n, P10137192578739179638.a n = A139102 (n + 1)

end A139102

/-!
# A139103: Numbers that show the distribution of prime numbers up to the n-th prime using "0" for primes and "1" for nonprime numbers.

The programs for A139103, there is no canonical definition to state claims against.
-/

/-! ## A139103.P16415813094883210305

`10*A139101(n+1)`
-/

namespace A139103.P16415813094883210305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A139101 (n + 1)

end

end A139103.P16415813094883210305

/-! ## A139103.P15033593198889248236

`A118256(A000040(n+1))`
-/

namespace A139103.P15033593198889248236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118256 (A000040 (n + 1)).toNat

end

end A139103.P15033593198889248236

/-! ## A139103.P13738645883287536861

`A118256(record[A006530(n+2)])`
-/

namespace A139103.P13738645883287536861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118256 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139103.P13738645883287536861

/-! ## A139103.P2331119936176484681

`A118256(record[A020639(n+2)])`
-/

namespace A139103.P2331119936176484681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118256 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139103.P2331119936176484681

/-! ## A139103.P16192556489428587558

`A118256(record[A000010(n+1)+1])`
-/

namespace A139103.P16192556489428587558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118256 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139103.P16192556489428587558

/-!
# A139104: Numbers whose binary representation shows the distribution of prime numbers up to the n-th prime, using "0" for primes and "1" for nonprime numbers.

The programs for A139104, the canonical program `A139104.P15577029041380592062` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139104 has offset 1).

The definition of A139104 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A118255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139104.P10138601798520258900

`2*A139102(n+1)`
-/

namespace A139104.P10138601798520258900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139102 (n + 1)

end

end A139104.P10138601798520258900

namespace A139104

/-- `2*A139102(n+1)` -/
def P10138601798520258900.Spec : Prop :=
  ∀ n, P10138601798520258900.a n = A139104 (n + 1)

end A139104

/-! ## A139104.P15577029041380592062

`A118255(A000040(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A139104

/-- `A118255(A000040(n+1))` -/
def P15577029041380592062.Spec : Prop :=
  ∀ n, P15577029041380592062.a n = A139104 (n + 1)

theorem P15577029041380592062.correct : P15577029041380592062.Spec := by
  intro n
  simp only [A139104, Nat.add_sub_cancel]

end A139104

/-! ## A139104.P4996063300010325603

`A001348(n+1)-A121240(n+1)`
-/

namespace A139104.P4996063300010325603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 1) - A121240 (n + 1)

end

end A139104.P4996063300010325603

namespace A139104

/-- `A001348(n+1)-A121240(n+1)` -/
def P4996063300010325603.Spec : Prop :=
  ∀ n, P4996063300010325603.a n = A139104 (n + 1)

end A139104

/-! ## A139104.P4673029381208054199

`A118255(p?[comp[n²]])`
-/

namespace A139104.P4673029381208054199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A139104.P4673029381208054199

namespace A139104

/-- `A118255(p?[comp[n²]])` -/
def P4673029381208054199.Spec : Prop :=
  ∀ n, P4673029381208054199.a n = A139104 (n + 1)

end A139104

/-! ## A139104.P8769425094836425819

`A118255(A008578(n+2))`
-/

namespace A139104.P8769425094836425819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A008578 (n + 2)).toNat

end

end A139104.P8769425094836425819

namespace A139104

/-- `A118255(A008578(n+2))` -/
def P8769425094836425819.Spec : Prop :=
  ∀ n, P8769425094836425819.a n = A139104 (n + 1)

end A139104

/-! ## A139104.P12418998726266382945

`A118255(A015919(n+2))`
-/

namespace A139104.P12418998726266382945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A015919 (n + 2)).toNat

end

end A139104.P12418998726266382945

namespace A139104

/-- `A118255(A015919(n+2))` -/
def P12418998726266382945.Spec : Prop :=
  ∀ n, P12418998726266382945.a n = A139104 (n + 1)

end A139104

/-! ## A139104.P9215447401622879953

`A118255(record[A006530(n+2)])`
-/

namespace A139104.P9215447401622879953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139104.P9215447401622879953

namespace A139104

/-- `A118255(record[A006530(n+2)])` -/
def P9215447401622879953.Spec : Prop :=
  ∀ n, P9215447401622879953.a n = A139104 (n + 1)

end A139104

/-! ## A139104.P8806508835192099918

`A118255(record[A014963(n+2)])`
-/

namespace A139104.P8806508835192099918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139104.P8806508835192099918

namespace A139104

/-- `A118255(record[A014963(n+2)])` -/
def P8806508835192099918.Spec : Prop :=
  ∀ n, P8806508835192099918.a n = A139104 (n + 1)

end A139104

/-! ## A139104.P5603378292104403309

`A118255(record[A020639(n+2)])`
-/

namespace A139104.P5603378292104403309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139104.P5603378292104403309

namespace A139104

/-- `A118255(record[A020639(n+2)])` -/
def P5603378292104403309.Spec : Prop :=
  ∀ n, P5603378292104403309.a n = A139104 (n + 1)

end A139104

/-! ## A139104.P12353957314932302895

`A118255(A006093(n+1)+1)`
-/

namespace A139104.P12353957314932302895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A006093 (n + 1) + 1).toNat

end

end A139104.P12353957314932302895

namespace A139104

/-- `A118255(A006093(n+1)+1)` -/
def P12353957314932302895.Spec : Prop :=
  ∀ n, P12353957314932302895.a n = A139104 (n + 1)

end A139104

/-!
# A139105: 

The programs for A139105, there is no canonical definition to state claims against.
-/

/-! ## A139105.P5536072872974970025

`A139101(Δ[n²])`
-/

namespace A139105.P5536072872974970025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139101 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A139105.P5536072872974970025

/-!
# A139106: 

The programs for A139106, there is no canonical definition to state claims against.
-/

/-! ## A139106.P13366836054658306172

`A139101(2*(n+1))`
-/

namespace A139106.P13366836054658306172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139101 (2 * (n + 1))

end

end A139106.P13366836054658306172

/-!
# A139107: Bisection of A139102.

The programs for A139107, the canonical program `A139107.P14608379276421399089` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139107 has offset 1).

The definition of A139107 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139102, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139107.P14608379276421399089

`A139102(2*n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A139107

/-- `A139102(2*n+1)` -/
def P14608379276421399089.Spec : Prop :=
  ∀ n, P14608379276421399089.a n = A139107 (n + 1)

theorem P14608379276421399089.correct : P14608379276421399089.Spec := by
  intro n
  simp only [A139107, Nat.add_sub_cancel]

end A139107

/-! ## A139107.P7482495126928636878

`A139111(n+1)/2`
-/

namespace A139107.P7482495126928636878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139111 (n + 1) : ℚ) / 2

end

end A139107.P7482495126928636878

namespace A139107

/-- `A139111(n+1)/2` -/
def P7482495126928636878.Spec : Prop :=
  ∀ n, P7482495126928636878.a n = (A139107 (n + 1) : ℚ)

end A139107

/-! ## A139107.P10342353030148553683

`A139104(Δ[n²])/2`
-/

namespace A139107.P10342353030148553683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139104 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A139107.P10342353030148553683

namespace A139107

/-- `A139104(Δ[n²])/2` -/
def P10342353030148553683.Spec : Prop :=
  ∀ n, P10342353030148553683.a n = (A139107 (n + 1) : ℚ)

end A139107

/-! ## A139107.P3851235718650841266

`floor(A139104(2*n+1)/2)`
-/

namespace A139107.P3851235718650841266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139104 (2 * n + 1) : ℚ) / 2⌋

end

end A139107.P3851235718650841266

namespace A139107

/-- `floor(A139104(2*n+1)/2)` -/
def P3851235718650841266.Spec : Prop :=
  ∀ n, P3851235718650841266.a n = A139107 (n + 1)

end A139107

/-! ## A139107.P6702928921160682588

`A118255(A031368(n+1)-1)`
-/

namespace A139107.P6702928921160682588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A031368 (n + 1) - 1).toNat

end

end A139107.P6702928921160682588

namespace A139107

/-- `A118255(A031368(n+1)-1)` -/
def P6702928921160682588.Spec : Prop :=
  ∀ n, P6702928921160682588.a n = A139107 (n + 1)

end A139107

/-!
# A139108: Bisection of A139102.

The programs for A139108, the canonical program `A139108.P8819243163543541878` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139108 has offset 1).

The definition of A139108 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139102, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139108.P8819243163543541878

`A139102(2*(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A139108

/-- `A139102(2*(n+1))` -/
def P8819243163543541878.Spec : Prop :=
  ∀ n, P8819243163543541878.a n = A139108 (n + 1)

theorem P8819243163543541878.correct : P8819243163543541878.Spec := by
  intro n
  simp only [A139108, Nat.add_sub_cancel]

end A139108

/-! ## A139108.P3571013603518777292

`A139112(n+1)/2`
-/

namespace A139108.P3571013603518777292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139112 (n + 1) : ℚ) / 2

end

end A139108.P3571013603518777292

namespace A139108

/-- `A139112(n+1)/2` -/
def P3571013603518777292.Spec : Prop :=
  ∀ n, P3571013603518777292.a n = (A139108 (n + 1) : ℚ)

end A139108

/-! ## A139108.P3513598986367601558

`A139104(2*(n+1))/2`
-/

namespace A139108.P3513598986367601558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139104 (2 * (n + 1)) : ℚ) / 2

end

end A139108.P3513598986367601558

namespace A139108

/-- `A139104(2*(n+1))/2` -/
def P3513598986367601558.Spec : Prop :=
  ∀ n, P3513598986367601558.a n = (A139108 (n + 1) : ℚ)

end A139108

/-! ## A139108.P7268128087311756004

`A118255(A031215(n+1)-1)`
-/

namespace A139108.P7268128087311756004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A031215 (n + 1) - 1).toNat

end

end A139108.P7268128087311756004

namespace A139108

/-- `A118255(A031215(n+1)-1)` -/
def P7268128087311756004.Spec : Prop :=
  ∀ n, P7268128087311756004.a n = A139108 (n + 1)

end A139108

/-!
# A139109: 

The programs for A139109, there is no canonical definition to state claims against.
-/

/-! ## A139109.P6751301744500647409

`A139103(Δ[n²])`
-/

namespace A139109.P6751301744500647409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139103 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A139109.P6751301744500647409

/-! ## A139109.P16375678857171037985

`lcm(2, A139103(A005408(n)))`
-/

namespace A139109.P16375678857171037985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A139103 (A005408 n).toNat)

end

end A139109.P16375678857171037985

/-! ## A139109.P14998206526212379458

`record[root(A139103(n+1), A328580(n))]`
-/

namespace A139109.P14998206526212379458
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A139103 (n + 1) : ℝ) ^ (1 / (A328580 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139109.P14998206526212379458

/-!
# A139110: 

The programs for A139110, there is no canonical definition to state claims against.
-/

/-! ## A139110.P3015641677126076257

`A139103(2*(n+1))`
-/

namespace A139110.P3015641677126076257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139103 (2 * (n + 1))

end

end A139110.P3015641677126076257

/-!
# A139111: Bisection of A139104.

The programs for A139111, there is no canonical definition to state claims against.
-/

/-! ## A139111.P5875820638428043674

`A139104(Δ[n²])`
-/

namespace A139111.P5875820638428043674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139104 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A139111.P5875820638428043674

/-! ## A139111.P18099234019878547398

`2*A139107(n+1)`
-/

namespace A139111.P18099234019878547398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139107 (n + 1)

end

end A139111.P18099234019878547398

/-! ## A139111.P252969596881613939

`2*A139102(Δ[n²])`
-/

namespace A139111.P252969596881613939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139102 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A139111.P252969596881613939

/-! ## A139111.P7715587513462205349

`lcm(2, A139104(2*n+1))`
-/

namespace A139111.P7715587513462205349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A139104 (2 * n + 1))

end

end A139111.P7715587513462205349

/-! ## A139111.P10096105178080223654

`A118255(A031368(n+1))`
-/

namespace A139111.P10096105178080223654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A031368 (n + 1)).toNat

end

end A139111.P10096105178080223654

/-!
# A139112: Bisection of A139104.

The programs for A139112, there is no canonical definition to state claims against.
-/

/-! ## A139112.P4587051252772787215

`A139104(2*(n+1))`
-/

namespace A139112.P4587051252772787215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139104 (2 * (n + 1))

end

end A139112.P4587051252772787215

/-! ## A139112.P9324937187269654739

`2*A139108(n+1)`
-/

namespace A139112.P9324937187269654739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139108 (n + 1)

end

end A139112.P9324937187269654739

/-! ## A139112.P8951151883957547731

`2*A139102(2*(n+1))`
-/

namespace A139112.P8951151883957547731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139102 (2 * (n + 1))

end

end A139112.P8951151883957547731

/-! ## A139112.P17915514828152005196

`A118255(A031215(n+1))`
-/

namespace A139112.P17915514828152005196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A031215 (n + 1)).toNat

end

end A139112.P17915514828152005196

/-! ## A139112.P8295966265016496947

`A118255(A000040(2*(n+1)))`
-/

namespace A139112.P8295966265016496947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A000040 (2 * (n + 1))).toNat

end

end A139112.P8295966265016496947

/-!
# A139114: Concatenation of n-th Fibonacci number and n.

The programs for A139114, there is no canonical definition to state claims against.
-/

/-! ## A139114.P1135106373645277136

`A022093(A032555(n+1))+1+n`
-/

namespace A139114.P1135106373645277136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 (A032555 (n + 1)).toNat + 1 + (n : ℤ)

end

end A139114.P1135106373645277136

/-! ## A139114.P1232985052731944071

`A022093(A032559(n+1))+1+n`
-/

namespace A139114.P1232985052731944071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 (A032559 (n + 1)).toNat + 1 + (n : ℤ)

end

end A139114.P1232985052731944071

/-! ## A139114.P9901051143227706453

`10*A000045(A032557(n+1))+n+1`
-/

namespace A139114.P9901051143227706453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000045 (A032557 (n + 1)).toNat + (n + 1 : ℤ)

end

end A139114.P9901051143227706453

/-! ## A139114.P8067405547508948759

`A032557(n+1)+A022093(A032557(n+1))`
-/

namespace A139114.P8067405547508948759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032557 (n + 1) + A022093 (A032557 (n + 1)).toNat

end

end A139114.P8067405547508948759

/-! ## A139114.P11558867191054037024

`A077727(n+1)+A022093(A077727(n+1))`
-/

namespace A139114.P11558867191054037024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077727 (n + 1) + A022093 (A077727 (n + 1)).toNat

end

end A139114.P11558867191054037024

/-!
# A139115: a(n) = p*(p - 1), where p is A000043(n).

The programs for A139115, there is no canonical definition to state claims against.
-/

/-! ## A139115.P8809478469350587265

`A000043(n+1)*(A000043(n+1)-1)`
-/

namespace A139115.P8809478469350587265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) * (A000043 (n + 1) - 1)

end

end A139115.P8809478469350587265

/-! ## A139115.P6694690021541262822

`2*A139116(n+1)`
-/

namespace A139115.P6694690021541262822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139116 (n + 1)

end

end A139115.P6694690021541262822

/-! ## A139115.P5568400693324726266

`2*C(A000043(n+1), 2)`
-/

namespace A139115.P5568400693324726266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000043 (n + 1)).toNat 2

end

end A139115.P5568400693324726266

/-! ## A139115.P17793009321286385238

`floor((A133033(n+1)/2)²)`
-/

namespace A139115.P17793009321286385238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A133033 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A139115.P17793009321286385238

/-! ## A139115.P14931089651952708453

`2*C(A090748(n+1)+1, 2)`
-/

namespace A139115.P14931089651952708453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A090748 (n + 1) + 1).toNat 2

end

end A139115.P14931089651952708453

/-!
# A139116: a(n) = p*(p-1)/2, where p is A000043(n).

The programs for A139116, there is no canonical definition to state claims against.
-/

/-! ## A139116.P2811745749083095276

`A000043(n+1)*(A000043(n+1)-1)/2`
-/

namespace A139116.P2811745749083095276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000043 (n + 1) : ℚ) * ((A000043 (n + 1) - 1 : ℚ) / 2)

end

end A139116.P2811745749083095276

/-! ## A139116.P7450308513785014398

`A139115(n+1)/2`
-/

namespace A139116.P7450308513785014398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139115 (n + 1) : ℚ) / 2

end

end A139116.P7450308513785014398

/-! ## A139116.P700542804745220345

`C(A000043(n+1), 2)`
-/

namespace A139116.P700542804745220345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000043 (n + 1)).toNat 2

end

end A139116.P700542804745220345

/-! ## A139116.P16207650363418572533

`C(A090748(n+1)+1, 2)`
-/

namespace A139116.P16207650363418572533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090748 (n + 1) + 1).toNat 2

end

end A139116.P16207650363418572533

/-! ## A139116.P122413777904181010

`C(A050475(n+1)-1, 2)`
-/

namespace A139116.P122413777904181010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050475 (n + 1) - 1).toNat 2

end

end A139116.P122413777904181010

/-!
# A139117: Triangular numbers (A000217) with indices A000043.

The programs for A139117, there is no canonical definition to state claims against.
-/

/-! ## A139117.P16682971360107297286

`A000217(A000043(n+1))`
-/

namespace A139117.P16682971360107297286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000043 (n + 1)).toNat

end

end A139117.P16682971360107297286

/-! ## A139117.P4163884737034932622

`C(A050475(n+1), 2)`
-/

namespace A139117.P4163884737034932622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050475 (n + 1)).toNat 2

end

end A139117.P4163884737034932622

/-! ## A139117.P14824794146056166294

`C(A090748(n+1)+2, 2)`
-/

namespace A139117.P14824794146056166294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090748 (n + 1) + 2).toNat 2

end

end A139117.P14824794146056166294

/-! ## A139117.P5424057135291172265

`C(A153798(n+1)+3, 2)`
-/

namespace A139117.P5424057135291172265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A153798 (n + 1) + 3).toNat 2

end

end A139117.P5424057135291172265

/-! ## A139117.P1609548026254405915

`C(A061645(n+1)/2+1, 2)`
-/

namespace A139117.P1609548026254405915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2 + 1)).toNat 2

end

end A139117.P1609548026254405915

/-!
# A139118: Numbers with a nonprime number of divisors.

The programs for A139118, the canonical program `A139118.P11844917898150596679` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139118 has offset 1).

The definition of A139118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139118.P1407129995598621095

`eq[1, A005171(A000005(n+1))]+1`
-/

namespace A139118.P1407129995598621095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139118.P1407129995598621095

namespace A139118

/-- `eq[1, A005171(A000005(n+1))]+1` -/
def P1407129995598621095.Spec : Prop :=
  ∀ n, (P1407129995598621095.a n : ℤ) = A139118 (n + 1)

end A139118

/-! ## A139118.P389345689139015338

`∪[A024619(n+1), A060476(n+1)]`
-/

namespace A139118.P389345689139015338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139118.P389345689139015338

namespace A139118

/-- `∪[A024619(n+1), A060476(n+1)]` -/
def P389345689139015338.Spec : Prop :=
  ∀ n, (P389345689139015338.a n : ℤ) = A139118 (n + 1)

end A139118

/-! ## A139118.P11844917898150596679

`eq[0, A010051(A100995(n+1)+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139118

/-- `eq[0, A010051(A100995(n+1)+1)]+1` -/
def P11844917898150596679.Spec : Prop :=
  ∀ n, (P11844917898150596679.a n : ℤ) = A139118 (n + 1)

theorem P11844917898150596679.correct : P11844917898150596679.Spec := by
  intro n
  simp only [A139118, Nat.add_sub_cancel]

end A139118

/-! ## A139118.P7416947192033873856

`lt[0, A328458(∏{e}[n+1, #+1])]+1`
-/

namespace A139118.P7416947192033873856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A139118.P7416947192033873856

namespace A139118

/-- `lt[0, A328458(∏{e}[n+1, #+1])]+1` -/
def P7416947192033873856.Spec : Prop :=
  ∀ n, (P7416947192033873856.a n : ℤ) = A139118 (n + 1)

end A139118

/-! ## A139118.P527588723686548486

`eq[1, A014963(A140635(n+1))]+1`
-/

namespace A139118.P527588723686548486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A140635 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139118.P527588723686548486

namespace A139118

/-- `eq[1, A014963(A140635(n+1))]+1` -/
def P527588723686548486.Spec : Prop :=
  ∀ n, (P527588723686548486.a n : ℤ) = A139118 (n + 1)

end A139118

/-! ## A139118.P11329057042973866815

`record[(n+1)*A005171(A032741(n+1)+1)]`
-/

namespace A139118.P11329057042973866815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005171 (A032741 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139118.P11329057042973866815

namespace A139118

/-- `record[(n+1)*A005171(A032741(n+1)+1)]` -/
def P11329057042973866815.Spec : Prop :=
  ∀ n, P11329057042973866815.a n = A139118 (n + 1)

end A139118

/-!
# A139119: Primes whose binary representation shows the distribution of prime numbers using "0" for primes and "1" for nonprime numbers.

The programs for A139119, there is no canonical definition to state claims against.
-/

/-! ## A139119.P4023833375683358770

`A118255(A118257(n+1))`
-/

namespace A139119.P4023833375683358770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A118257 (n + 1)).toNat

end

end A139119.P4023833375683358770

/-!
# A139122: Primes whose binary representation shows the distribution of prime numbers up to some prime minus 1, using "0" for primes and "1" for nonprime numbers.

The programs for A139122, there is no canonical definition to state claims against.
-/

/-! ## A139122.P16762282789063872416

`A139119(comp[3*n])`
-/

namespace A139122.P16762282789063872416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139119 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A139122.P16762282789063872416

/-!
# A139124: Starting from 1, at any step count the appearances of k, where k ranges from the highest number to 1.

The programs for A139124, there is no canonical definition to state claims against.
-/

/-! ## A139124.P5034858206473543683

`A001222(eq[5, A338878(n+10)])`
-/

namespace A139124.P5034858206473543683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338878 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139124.P5034858206473543683

/-! ## A139124.P1780700116599941609

`∑{e}[eq[5, A338878(n+10)], A006530(#)]`
-/

namespace A139124.P1780700116599941609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338878 (n + 10)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A006530 (Nat.factorization (f1 n) p)

end

end A139124.P1780700116599941609

/-! ## A139124.P14817276395613432167

`∑{e}[eq[5, A338878(n+10)], A014963(#)]`
-/

namespace A139124.P14817276395613432167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338878 (n + 10)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A014963 (Nat.factorization (f1 n) p)

end

end A139124.P14817276395613432167

/-! ## A139124.P18015527468322272439

`A001221(xor(A018804(2*n+5), A286701(n+1)))`
-/

namespace A139124.P18015527468322272439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A018804 (2 * n + 5)) (A286701 (n + 1))).toNat

end

end A139124.P18015527468322272439

/-!
# A139125: a(0) = 0; a(n) = a(n-1) + binomial( n(n+1)/2, n) mod n.

The programs for A139125, there is no canonical definition to state claims against.
-/

/-! ## A139125.P1460648364072596533

`∑[A137345(n+1)]`
-/

namespace A139125.P1460648364072596533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139125.P1460648364072596533

/-! ## A139125.P348277940528127258

`∑[A137345(Δ[n²]-n)]*A054977(n)`
-/

namespace A139125.P348277940528127258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137345 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A054977 n

end

end A139125.P348277940528127258

/-! ## A139125.P2302333366523271865

`∑[A137345(Δ[n²]-n)]*A057427(n)`
-/

namespace A139125.P2302333366523271865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137345 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A139125.P2302333366523271865

/-! ## A139125.P8881499056106462444

`∑[A007318(C(2, n))*A137345(Δ[n²]-n)]`
-/

namespace A139125.P8881499056106462444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A137345 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139125.P8881499056106462444

/-! ## A139125.P16714607143178461107

`a(n-1)+A137345(n+1)%A004273(n)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A139125.P16714607143178461107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) + Int.tmod (A137345 (n + 1)) (A004273 n)

end

end A139125.P16714607143178461107

/-! ## A139125.P18050321541753149155

`∑[A000196(A137345(Δ[n²]-n)²)]`
-/

namespace A139125.P18050321541753149155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A137345 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139125.P18050321541753149155

/-! ## A139125.P16416940886126670564

`∑[C(∑[n+1], ∑[n])%(n+1)]`
-/

namespace A139125.P16416940886126670564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139125.P16416940886126670564

/-!
# A139128: Number of distinct representations A005244(n) = A005244(i)*A005244(j)-1 with i < j.

The programs for A139128, there is no canonical definition to state claims against.
-/

/-! ## A139128.P7539384748149627900

`A124766(A255425(3*n+1)%A006073(n+1))`
-/

namespace A139128.P7539384748149627900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (Int.tmod (A255425 (3 * n + 1)) (A006073 (n + 1))).toNat

end

end A139128.P7539384748149627900

/-! ## A139128.P10506965648733557787

`A025474(A324587(n+1)-A072613(n+5))`
-/

namespace A139128.P10506965648733557787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (A324587 (n + 1) - A072613 (n + 5)).toNat

end

end A139128.P10506965648733557787

/-! ## A139128.P15307317638309850912

`A340102(A000040(n+1)%A163466(n))`
-/

namespace A139128.P15307317638309850912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (Int.tmod (A000040 (n + 1)) (A163466 n)).toNat

end

end A139128.P15307317638309850912

/-! ## A139128.P16354426618346761370

`A275656(A275656(n+1))%A334268(n)`
-/

namespace A139128.P16354426618346761370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275656 (A275656 (n + 1)).toNat) (A334268 n)

end

end A139128.P16354426618346761370

/-! ## A139128.P4737978272304528663

`A074761(A216665(2*n+5))%A347576(n)`
-/

namespace A139128.P4737978272304528663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074761 (A216665 (2 * n + 5)).toNat) (A347576 (n + 45))

end

end A139128.P4737978272304528663

/-!
# A139130: a(n) = Sum_{k=1..n} d(d(k)), where d(k) = number of divisors of k.

The programs for A139130, the canonical program `A139130.P17811166348124897729` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139130 has offset 1).

The definition of A139130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139130.P17811166348124897729

`∑[∏{e}[∏{e}[n+1, #+1], #+1]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139130

/-- `∑[∏{e}[∏{e}[n+1, #+1], #+1]]` -/
def P17811166348124897729.Spec : Prop :=
  ∀ n, (P17811166348124897729.a n : ℤ) = A139130 (n + 1)

theorem P17811166348124897729.correct : P17811166348124897729.Spec := by
  intro n
  simp only [A139130, Nat.add_sub_cancel]

end A139130

/-! ## A139130.P5926144267028272787

`∑[∑[A111407(n)]]`
-/

namespace A139130.P5926144267028272787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111407 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P5926144267028272787

namespace A139130

/-- `∑[∑[A111407(n)]]` -/
def P5926144267028272787.Spec : Prop :=
  ∀ n, P5926144267028272787.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P521205910277254976

`∑[A010553(n+1)]`
-/

namespace A139130.P521205910277254976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P521205910277254976

namespace A139130

/-- `∑[A010553(n+1)]` -/
def P521205910277254976.Spec : Prop :=
  ∀ n, P521205910277254976.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P14931771360787619074

`∑[A000005(∏{e}[n+1, #+1])]`
-/

namespace A139130.P14931771360787619074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P14931771360787619074

namespace A139130

/-- `∑[A000005(∏{e}[n+1, #+1])]` -/
def P14931771360787619074.Spec : Prop :=
  ∀ n, P14931771360787619074.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P8538723225715825884

`∑[A000005(∑{d}[n+1, gcd(n, #)])]`
-/

namespace A139130.P8538723225715825884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P8538723225715825884

namespace A139130

/-- `∑[A000005(∑{d}[n+1, gcd(n, #)])]` -/
def P8538723225715825884.Spec : Prop :=
  ∀ n, P8538723225715825884.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P2441900196176632158

`∑[A322483(∏{e}[n+1, #+1]²)]`
-/

namespace A139130.P2441900196176632158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P2441900196176632158

namespace A139130

/-- `∑[A322483(∏{e}[n+1, #+1]²)]` -/
def P2441900196176632158.Spec : Prop :=
  ∀ n, P2441900196176632158.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P1232319923913328476

`∑[A046951(∑{d}[n+1, lcm(#, n+1)-n]²)]`
-/

namespace A139130.P1232319923913328476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((∑ d ∈ Nat.divisors (f2 n), ((Nat.lcm d (n + 1) : ℤ) - (n : ℤ))) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P1232319923913328476

namespace A139130

/-- `∑[A046951(∑{d}[n+1, lcm(#, n+1)-n]²)]` -/
def P1232319923913328476.Spec : Prop :=
  ∀ n, P1232319923913328476.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P13094192807377219392

`∑[A000005(Δ[A006218(n)])]`
-/

namespace A139130.P13094192807377219392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P13094192807377219392

namespace A139130

/-- `∑[A000005(Δ[A006218(n)])]` -/
def P13094192807377219392.Spec : Prop :=
  ∀ n, P13094192807377219392.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P12483008808187774886

`∑[A000005(Δ[A054519(n)])]`
-/

namespace A139130.P12483008808187774886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P12483008808187774886

namespace A139130

/-- `∑[A000005(Δ[A054519(n)])]` -/
def P12483008808187774886.Spec : Prop :=
  ∀ n, P12483008808187774886.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P14076094870316842221

`∑[A000005(A000005(n+1))]`
-/

namespace A139130.P14076094870316842221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P14076094870316842221

namespace A139130

/-- `∑[A000005(A000005(n+1))]` -/
def P14076094870316842221.Spec : Prop :=
  ∀ n, P14076094870316842221.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P17426178517669570280

`∑[A046951(A035116(n+1))]`
-/

namespace A139130.P17426178517669570280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A035116 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P17426178517669570280

namespace A139130

/-- `∑[A046951(A035116(n+1))]` -/
def P17426178517669570280.Spec : Prop :=
  ∀ n, P17426178517669570280.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P9829576065606819866

`∑[A069157(A062011(n+1))]`
-/

namespace A139130.P9829576065606819866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A062011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P9829576065606819866

namespace A139130

/-- `∑[A069157(A062011(n+1))]` -/
def P9829576065606819866.Spec : Prop :=
  ∀ n, P9829576065606819866.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P3674856522446081785

`∑[A109974(A066446(n+1))]`
-/

namespace A139130.P3674856522446081785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A066446 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P3674856522446081785

namespace A139130

/-- `∑[A109974(A066446(n+1))]` -/
def P3674856522446081785.Spec : Prop :=
  ∀ n, P3674856522446081785.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P17126389771143846433

`∑[A112329(A145154(n+1))]`
-/

namespace A139130.P17126389771143846433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A145154 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P17126389771143846433

namespace A139130

/-- `∑[A112329(A145154(n+1))]` -/
def P17126389771143846433.Spec : Prop :=
  ∀ n, P17126389771143846433.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P2141286681292384417

`∑[A325765(A325765(n))]+n`
-/

namespace A139130.P2141286681292384417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (A325765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A139130.P2141286681292384417

namespace A139130

/-- `∑[A325765(A325765(n))]+n` -/
def P2141286681292384417.Spec : Prop :=
  ∀ n, P2141286681292384417.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P5297218656435714307

`∑[A320111(2*A320111(2*(n+1)))]`
-/

namespace A139130.P5297218656435714307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A320111 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P5297218656435714307

namespace A139130

/-- `∑[A320111(2*A320111(2*(n+1)))]` -/
def P5297218656435714307.Spec : Prop :=
  ∀ n, P5297218656435714307.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P3753359212286756359

`A000005(A000005(2*n+1-n))+a(n-1)` with `a(0)=1`
-/

namespace A139130.P3753359212286756359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (A000005 (2 * n + 1 - n)).toNat + a (n - 1)

end

end A139130.P3753359212286756359

namespace A139130

/-- `A000005(A000005(2*n+1-n))+a(n-1)` -/
def P3753359212286756359.Spec : Prop :=
  ∀ n, P3753359212286756359.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P5898281558239237815

`∑[A069157(2*A069157(2*(n+1)))]`
-/

namespace A139130.P5898281558239237815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (2 * A069157 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P5898281558239237815

namespace A139130

/-- `∑[A069157(2*A069157(2*(n+1)))]` -/
def P5898281558239237815.Spec : Prop :=
  ∀ n, P5898281558239237815.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P318683540849980750

`∑[A183063(2*A183063(2*(n+1)))]`
-/

namespace A139130.P318683540849980750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A183063 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P318683540849980750

namespace A139130

/-- `∑[A183063(2*A183063(2*(n+1)))]` -/
def P318683540849980750.Spec : Prop :=
  ∀ n, P318683540849980750.a n = A139130 (n + 1)

end A139130

/-! ## A139130.P6102839787843466936

`∑[A239614(A239614(2*(n+1)))/2]`
-/

namespace A139130.P6102839787843466936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239614 (A239614 (2 * (n + 1))).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139130.P6102839787843466936

namespace A139130

/-- `∑[A239614(A239614(2*(n+1)))/2]` -/
def P6102839787843466936.Spec : Prop :=
  ∀ n, P6102839787843466936.a n = (A139130 (n + 1) : ℚ)

end A139130

/-!
# A139131: Squarefree kernel of n*(n+1)/2.

The programs for A139131, the canonical program `A139131.P15139585479701718835` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139131 has offset 1).

The definition of A139131 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139131.P16712773342797300203

`A078636(n+1)/A014695(n+1)`
-/

namespace A139131.P16712773342797300203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078636 (n + 1) : ℚ) / (A014695 (n + 1) : ℚ)

end

end A139131.P16712773342797300203

namespace A139131

/-- `A078636(n+1)/A014695(n+1)` -/
def P16712773342797300203.Spec : Prop :=
  ∀ n, P16712773342797300203.a n = (A139131 (n + 1) : ℚ)

end A139131

/-! ## A139131.P15139585479701718835

`A007947(A000217(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139131

/-- `A007947(A000217(n+1))` -/
def P15139585479701718835.Spec : Prop :=
  ∀ n, P15139585479701718835.a n = A139131 (n + 1)

theorem P15139585479701718835.correct : P15139585479701718835.Spec := by
  intro n
  simp only [A139131, Nat.add_sub_cancel]

end A139131

/-! ## A139131.P5439073689323807322

`gcd(A059977(n), A078636(n+1))`
-/

namespace A139131.P5439073689323807322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059977 n) (A078636 (n + 1))

end

end A139131.P5439073689323807322

namespace A139131

/-- `gcd(A059977(n), A078636(n+1))` -/
def P5439073689323807322.Spec : Prop :=
  ∀ n, (P5439073689323807322.a n : ℤ) = A139131 (n + 1)

end A139131

/-! ## A139131.P2428933415947395393

`gcd(A078637(n+1), A212760(n))`
-/

namespace A139131.P2428933415947395393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078637 (n + 1)) (A212760 n)

end

end A139131.P2428933415947395393

namespace A139131

/-- `gcd(A078637(n+1), A212760(n))` -/
def P2428933415947395393.Spec : Prop :=
  ∀ n, (P2428933415947395393.a n : ℤ) = A139131 (n + 1)

end A139131

/-! ## A139131.P3397257089589477587

`gcd(A078638(n+1), A257942(n))`
-/

namespace A139131.P3397257089589477587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078638 (n + 1)) (A257942 n)

end

end A139131.P3397257089589477587

namespace A139131

/-- `gcd(A078638(n+1), A257942(n))` -/
def P3397257089589477587.Spec : Prop :=
  ∀ n, (P3397257089589477587.a n : ℤ) = A139131 (n + 1)

end A139131

/-! ## A139131.P4061858459178905543

`A078636(n+1)/2*A130658(n)`
-/

namespace A139131.P4061858459178905543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078636 (n + 1) : ℚ) / 2 * (A130658 n : ℚ)

end

end A139131.P4061858459178905543

namespace A139131

/-- `A078636(n+1)/2*A130658(n)` -/
def P4061858459178905543.Spec : Prop :=
  ∀ n, P4061858459178905543.a n = (A139131 (n + 1) : ℚ)

end A139131

/-! ## A139131.P9088584620319957527

`gcd(A089594(n+1), A226734(n+1))`
-/

namespace A139131.P9088584620319957527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089594 (n + 1)) (A226734 (n + 1))

end

end A139131.P9088584620319957527

namespace A139131

/-- `gcd(A089594(n+1), A226734(n+1))` -/
def P9088584620319957527.Spec : Prop :=
  ∀ n, (P9088584620319957527.a n : ℤ) = A139131 (n + 1)

end A139131

/-! ## A139131.P10106255924672680660

`A007947(n+1)/A014695(n+1)*A007947(n+2)`
-/

namespace A139131.P10106255924672680660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A014695 (n + 1) : ℚ) * (A007947 (n + 2) : ℚ)

end

end A139131.P10106255924672680660

namespace A139131

/-- `A007947(n+1)/A014695(n+1)*A007947(n+2)` -/
def P10106255924672680660.Spec : Prop :=
  ∀ n, P10106255924672680660.a n = (A139131 (n + 1) : ℚ)

end A139131

/-! ## A139131.P98255188057677139

`A078636(n+1)/A130658(n+2)`
-/

namespace A139131.P98255188057677139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078636 (n + 1) : ℚ) / (A130658 (n + 2) : ℚ)

end

end A139131.P98255188057677139

namespace A139131

/-- `A078636(n+1)/A130658(n+2)` -/
def P98255188057677139.Spec : Prop :=
  ∀ n, P98255188057677139.a n = (A139131 (n + 1) : ℚ)

end A139131

/-! ## A139131.P10231156276907583592

`∏{p}[∑[n+1], #]`
-/

namespace A139131.P10231156276907583592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A139131.P10231156276907583592

namespace A139131

/-- `∏{p}[∑[n+1], #]` -/
def P10231156276907583592.Spec : Prop :=
  ∀ n, (P10231156276907583592.a n : ℤ) = A139131 (n + 1)

end A139131

/-! ## A139131.P14758324857809148036

`exp(∑{p}[∑[n+1], log(#)])`
-/

namespace A139131.P14758324857809148036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ))

end

end A139131.P14758324857809148036

namespace A139131

/-- `exp(∑{p}[∑[n+1], log(#)])` -/
def P14758324857809148036.Spec : Prop :=
  ∀ n, P14758324857809148036.a n = (A139131 (n + 1) : ℝ)

end A139131

/-! ## A139131.P17903436054778697690

`2^∑{p}[∑[n+1], log2(#)]`
-/

namespace A139131.P17903436054778697690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ))

end

end A139131.P17903436054778697690

namespace A139131

/-- `2^∑{p}[∑[n+1], log2(#)]` -/
def P17903436054778697690.Spec : Prop :=
  ∀ n, P17903436054778697690.a n = (A139131 (n + 1) : ℝ)

end A139131

/-! ## A139131.P7668641906017319080

`A007947(∑[n+1])`
-/

namespace A139131.P7668641906017319080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139131.P7668641906017319080

namespace A139131

/-- `A007947(∑[n+1])` -/
def P7668641906017319080.Spec : Prop :=
  ∀ n, P7668641906017319080.a n = A139131 (n + 1)

end A139131

/-! ## A139131.P16975638288359546718

`gcd(A059977(n), A163640(n))`
-/

namespace A139131.P16975638288359546718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059977 n) (A163640 n)

end

end A139131.P16975638288359546718

namespace A139131

/-- `gcd(A059977(n), A163640(n))` -/
def P16975638288359546718.Spec : Prop :=
  ∀ n, (P16975638288359546718.a n : ℤ) = A139131 (n + 1)

end A139131

/-! ## A139131.P16769682480153393425

`A015053(∑[n+1])`
-/

namespace A139131.P16769682480153393425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139131.P16769682480153393425

namespace A139131

/-- `A015053(∑[n+1])` -/
def P16769682480153393425.Spec : Prop :=
  ∀ n, P16769682480153393425.a n = A139131 (n + 1)

end A139131

/-! ## A139131.P11446561558923890787

`A066069(∑[n+1])`
-/

namespace A139131.P11446561558923890787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066069 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139131.P11446561558923890787

namespace A139131

/-- `A066069(∑[n+1])` -/
def P11446561558923890787.Spec : Prop :=
  ∀ n, P11446561558923890787.a n = A139131 (n + 1)

end A139131

/-! ## A139131.P8761177299704634788

`abs(A062953(∑[n+1]))`
-/

namespace A139131.P8761177299704634788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062953 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A139131.P8761177299704634788

namespace A139131

/-- `abs(A062953(∑[n+1]))` -/
def P8761177299704634788.Spec : Prop :=
  ∀ n, P8761177299704634788.a n = A139131 (n + 1)

end A139131

/-! ## A139131.P10205371954837835907

`sqrt(A078615(∑[n+1]))`
-/

namespace A139131.P10205371954837835907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A139131.P10205371954837835907

namespace A139131

/-- `sqrt(A078615(∑[n+1]))` -/
def P10205371954837835907.Spec : Prop :=
  ∀ n, P10205371954837835907.a n = (A139131 (n + 1) : ℝ)

end A139131

/-! ## A139131.P6878970651869638604

`A075423(∑[n+1])+1`
-/

namespace A139131.P6878970651869638604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A139131.P6878970651869638604

namespace A139131

/-- `A075423(∑[n+1])+1` -/
def P6878970651869638604.Spec : Prop :=
  ∀ n, P6878970651869638604.a n = A139131 (n + 1)

end A139131

/-! ## A139131.P10587674257514850551

`A076618(∑[n+1])-1`
-/

namespace A139131.P10587674257514850551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A139131.P10587674257514850551

namespace A139131

/-- `A076618(∑[n+1])-1` -/
def P10587674257514850551.Spec : Prop :=
  ∀ n, P10587674257514850551.a n = A139131 (n + 1)

end A139131

/-!
# A139134: a(n) = n-th derivative of Sec(Exp(z)-1) at z=0.

The programs for A139134, there is no canonical definition to state claims against.
-/

/-! ## A139134.P9254336008348128690

`A008616(A152335(n+1)+A011971(n))`
-/

namespace A139134.P9254336008348128690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A152335 (n + 1) + A011971 n).toNat

end

end A139134.P9254336008348128690

/-! ## A139134.P11412024181510432778

`A008616(A189846(n+1)+A041033(n))`
-/

namespace A139134.P11412024181510432778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A189846 (n + 1) + A041033 n).toNat

end

end A139134.P11412024181510432778

/-! ## A139134.P8145715727698091214

`A008616(A152335(n+1)+A095149(n))`
-/

namespace A139134.P8145715727698091214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A152335 (n + 1) + A095149 n).toNat

end

end A139134.P8145715727698091214

/-!
# A139135: Expansion of psi(-q^3) / f(q) where psi(), f() are Ramanujan theta functions.

The programs for A139135, there is no canonical definition to state claims against.
-/

/-! ## A139135.P323176682596142638

`A097197(n)/(xor(1, n)-n)`
-/

namespace A139135.P323176682596142638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097197 n : ℚ) / ((Nat.xor 1 n : ℤ) - (n : ℤ) : ℚ)

end

end A139135.P323176682596142638

/-! ## A139135.P10080333452904510093

`A033999(n)*A097197(n)`
-/

namespace A139135.P10080333452904510093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A097197 n

end

end A139135.P10080333452904510093

/-! ## A139135.P5097608270842001218

`A139139(3*n+1)`
-/

namespace A139135.P5097608270842001218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139139 (3 * n + 1)

end

end A139135.P5097608270842001218

/-! ## A139135.P2690817830449173703

`A139137(3*n+1)/2`
-/

namespace A139135.P2690817830449173703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139137 (3 * n + 1) : ℚ) / 2

end

end A139135.P2690817830449173703

/-!
# A139136: Expansion of psi(-q) / f(q^3) where psi(), f() are Ramanujan theta functions.

The programs for A139136, there is no canonical definition to state claims against.
-/

/-! ## A139136.P3759267124334639056

`(-1)^n*A122792(n)`
-/

namespace A139136.P3759267124334639056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122792 n

end

end A139136.P3759267124334639056

/-! ## A139136.P15730946052939403658

`A139137(n)/A131713(n)`
-/

namespace A139136.P15730946052939403658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139137 n : ℚ) / (A131713 n : ℚ)

end

end A139136.P15730946052939403658

/-! ## A139136.P16532089061600033885

`A252706(n)/A057079(n)`
-/

namespace A139136.P16532089061600033885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252706 n : ℚ) / (A057079 n : ℚ)

end

end A139136.P16532089061600033885

/-! ## A139136.P3654178499621105138

`A252706(n)/A132954(n)`
-/

namespace A139136.P3654178499621105138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252706 n : ℚ) / (A132954 n : ℚ)

end

end A139136.P3654178499621105138

/-! ## A139136.P12092490539906985123

`A139137(n)/(2-A057079(n)²)`
-/

namespace A139136.P12092490539906985123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139137 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A139136.P12092490539906985123

/-! ## A139136.P71837131871152757

`A139137(n)/(2-A132954(n)²)`
-/

namespace A139136.P71837131871152757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139137 n : ℚ) / (2 - A132954 n ^ 2 : ℚ)

end

end A139136.P71837131871152757

/-! ## A139136.P15074521189142635082

`A122792(n)/A262930(n)*A293387(n)`
-/

namespace A139136.P15074521189142635082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122792 n : ℚ) / (A262930 n : ℚ) * (A293387 n : ℚ)

end

end A139136.P15074521189142635082

/-! ## A139136.P4925498047588763618

`A122792(n)*A293306(n)/A385520(n)`
-/

namespace A139136.P4925498047588763618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122792 n * A293306 n : ℚ) / (A385520 n : ℚ)

end

end A139136.P4925498047588763618

/-! ## A139136.P8774711157787496922

`A097197(n)*A122792(n)/A139135(n)`
-/

namespace A139136.P8774711157787496922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097197 n * A122792 n : ℚ) / (A139135 n : ℚ)

end

end A139136.P8774711157787496922

/-! ## A139136.P5771860564714110906

`A139137(n)/A057079(4*n)`
-/

namespace A139136.P5771860564714110906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139137 n : ℚ) / (A057079 (4 * n) : ℚ)

end

end A139136.P5771860564714110906

/-!
# A139137: Expansion of phi(q) / phi(q^3) in powers of q where phi() is a Ramanujan theta function.

The programs for A139137, there is no canonical definition to state claims against.
-/

/-! ## A139137.P8784506804785928739

`(-1)^n*A252706(n)`
-/

namespace A139137.P8784506804785928739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A252706 n

end

end A139137.P8784506804785928739

/-! ## A139137.P13063886081975093861

`A057079(n)*A122792(n)`
-/

namespace A139137.P13063886081975093861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A122792 n

end

end A139137.P13063886081975093861

/-! ## A139137.P7906744521319098407

`A122792(n)*A132954(n)`
-/

namespace A139137.P7906744521319098407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122792 n * A132954 n

end

end A139137.P7906744521319098407

/-! ## A139137.P13018382036620266700

`A131713(n)*A139136(n)`
-/

namespace A139137.P13018382036620266700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A139136 n

end

end A139137.P13018382036620266700

/-! ## A139137.P2628524321774215327

`Δ[A117966(n)]*A139136(n)`
-/

namespace A139137.P2628524321774215327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A139136 n

end

end A139137.P2628524321774215327

/-! ## A139137.P17350678617640563938

`(2-A057079(n)²)*A139136(n)`
-/

namespace A139137.P17350678617640563938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A139136 n

end

end A139137.P17350678617640563938

/-! ## A139137.P14894531262098109972

`(2-A132954(n)²)*A139136(n)`
-/

namespace A139137.P14894531262098109972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A132954 n ^ 2) * A139136 n

end

end A139137.P14894531262098109972

/-! ## A139137.P18102531274208804005

`A139136(n)/A260215(n)*A261321(n)`
-/

namespace A139137.P18102531274208804005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139136 n : ℚ) / (A260215 n : ℚ) * (A261321 n : ℚ)

end

end A139137.P18102531274208804005

/-! ## A139137.P11838878096251264168

`A139136(n)/A261326(n)*A260215(n)`
-/

namespace A139137.P11838878096251264168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139136 n : ℚ) / (A261326 n : ℚ) * (A260215 n : ℚ)

end

end A139137.P11838878096251264168

/-! ## A139137.P5205616809936705710

`A139136(n)/A261326(n)*A262930(n)`
-/

namespace A139137.P5205616809936705710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139136 n : ℚ) / (A261326 n : ℚ) * (A262930 n : ℚ)

end

end A139137.P5205616809936705710

/-! ## A139137.P8090692999006829388

`A139136(n)/A262930(n)*A261321(n)`
-/

namespace A139137.P8090692999006829388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139136 n : ℚ) / (A262930 n : ℚ) * (A261321 n : ℚ)

end

end A139137.P8090692999006829388

/-! ## A139137.P18202097288534790900

`A057079(4*n)*A139136(n)`
-/

namespace A139137.P18202097288534790900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (4 * n) * A139136 n

end

end A139137.P18202097288534790900

/-!
# A139138: Numbers divisible by at least two of their digits.

The programs for A139138, there is no canonical definition to state claims against.
-/

/-! ## A139138.P2376889144389894871

`lt[1, A038769(n+1)]+1`
-/

namespace A139138.P2376889144389894871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A139138.P2376889144389894871

/-! ## A139138.P286098699903608612

`lt[1, A038769(A028310(n))]`
-/

namespace A139138.P286098699903608612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139138.P286098699903608612

/-! ## A139138.P13117452484720683348

`lt[1, A038769(A004277(n)-n)]`
-/

namespace A139138.P13117452484720683348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139138.P13117452484720683348

/-! ## A139138.P8135825111768972576

`eq[1, A236842(a(A038769(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A139138.P8135825111768972576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A236842 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139138.P8135825111768972576

/-! ## A139138.P14060298590726616884

`eq[1, A236843(a(A038769(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A139138.P14060298590726616884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A236843 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139138.P14060298590726616884

/-! ## A139138.P7551921254076543912

`eq[1, A236850(a(A038769(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A139138.P7551921254076543912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A236850 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139138.P7551921254076543912

/-! ## A139138.P7304321474354806273

`eq[1, A004526(a(A038769(n)))]` with `a(0)=4, a(1)=5`
-/

namespace A139138.P7304321474354806273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n f2 =>
  A004526 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139138.P7304321474354806273

/-! ## A139138.P1050391592163830224

`eq[1, A008279(a(A038769(n)))]` with `a(0)=4, a(1)=5`
-/

namespace A139138.P1050391592163830224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n f2 =>
  A008279 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139138.P1050391592163830224

/-! ## A139138.P17827559053284231795

`eq[1, A096570(a(A038769(n)))]` with `a(0)=4, a(1)=5`
-/

namespace A139138.P17827559053284231795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n f2 =>
  A096570 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139138.P17827559053284231795

/-! ## A139138.P13794650312056931895

`eq[1, A000122(a(A038769(n)))]` with `a(0)=5, a(1)=5`
-/

namespace A139138.P13794650312056931895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f2 =>
  A000122 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139138.P13794650312056931895

/-! ## A139138.P5421974893066789873

`eq[1, A003983(a(A038769(n)))]` with `a(0)=5, a(1)=5`
-/

namespace A139138.P5421974893066789873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f2 =>
  A003983 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139138.P5421974893066789873

/-! ## A139138.P10448992854948508724

`eq[1, A004525(a(A038769(n)))]` with `a(0)=5, a(1)=5`
-/

namespace A139138.P10448992854948508724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f2 =>
  A004525 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139138.P10448992854948508724

/-! ## A139138.P4859133382938614083

`eq[1, A240671(a(A038769(n)))]` with `a(0)=5, a(1)=5`
-/

namespace A139138.P4859133382938614083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f2 =>
  A240671 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139138.P4859133382938614083

/-! ## A139138.P5174396694529933954

`eq[1, A240690(a(A038769(n)))]` with `a(0)=5, a(1)=5`
-/

namespace A139138.P5174396694529933954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f2 =>
  A240690 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139138.P5174396694529933954

/-! ## A139138.P1862010286012651754

`eq[1, A007599(a(A038769(n)))]` with `a(0)=6, a(1)=6`
-/

namespace A139138.P1862010286012651754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 6] fun n f2 =>
  A007599 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139138.P1862010286012651754

/-! ## A139138.P7210230193024478081

`eq[1, A008616(a(A038769(n))²)]` with `a(0)=5, a(1)=5`
-/

namespace A139138.P7210230193024478081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f2 =>
  A008616 (f2 (A038769 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139138.P7210230193024478081

/-!
# A139139: Expansion of (phi(q) / phi(q^3) - 1) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A139139, there is no canonical definition to state claims against.
-/

/-! ## A139139.P10350652245418828077

`A139137(n+1)/2`
-/

namespace A139139.P10350652245418828077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139137 (n + 1) : ℚ) / 2

end

end A139139.P10350652245418828077

/-! ## A139139.P1638227820180748686

`Δ[∑[A139137(n)]/2]`
-/

namespace A139139.P1638227820180748686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139137 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139139.P1638227820180748686

/-! ## A139139.P8260839018839960819

`A139136(n+1)/(A131713(n+1)+1)`
-/

namespace A139139.P8260839018839960819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139136 (n + 1) : ℚ) / (A131713 (n + 1) + 1 : ℚ)

end

end A139139.P8260839018839960819

/-! ## A139139.P5826622022326738175

`A057079(n+1)/2*A122792(n+1)`
-/

namespace A139139.P5826622022326738175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057079 (n + 1) : ℚ) / 2 * (A122792 (n + 1) : ℚ)

end

end A139139.P5826622022326738175

/-! ## A139139.P17992240894199185676

`A122792(n+1)/2*A132954(n+1)`
-/

namespace A139139.P17992240894199185676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122792 (n + 1) : ℚ) / 2 * (A132954 (n + 1) : ℚ)

end

end A139139.P17992240894199185676

/-! ## A139139.P5606816014952550300

`A033999(n+1)/2*A252706(n+1)`
-/

namespace A139139.P5606816014952550300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) : ℚ) / 2 * (A252706 (n + 1) : ℚ)

end

end A139139.P5606816014952550300

/-! ## A139139.P44013773791066567

`A139136(n+1)/(A117966(2*n)-A117966(2*n+1))`
-/

namespace A139139.P44013773791066567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139136 (n + 1) : ℚ) / (A117966 (2 * n) - A117966 (2 * n + 1) : ℚ)

end

end A139139.P44013773791066567

/-! ## A139139.P8891823972259229597

`-A113306(2*(n+1))`
-/

namespace A139139.P8891823972259229597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A113306 (2 * (n + 1))

end

end A139139.P8891823972259229597

/-! ## A139139.P242324218773984058

`A139137(n+1)+A113306(2*(n+1))`
-/

namespace A139139.P242324218773984058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139137 (n + 1) + A113306 (2 * (n + 1))

end

end A139139.P242324218773984058

/-! ## A139139.P14983130912325153884

`A139136(n+1)/(1-A057079(2*n+1))`
-/

namespace A139139.P14983130912325153884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139136 (n + 1) : ℚ) / (1 - A057079 (2 * n + 1) : ℚ)

end

end A139139.P14983130912325153884

/-! ## A139139.P5287721573920004436

`A113306(2*n+2)-2*A113306(2*n+2)`
-/

namespace A139139.P5287721573920004436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113306 (2 * n + 2) - 2 * A113306 (2 * n + 2)

end

end A139139.P5287721573920004436

/-! ## A139139.P11954032142397471758

`A139136(n+1)/(A132954(2*n)-A132954(2*n+1))`
-/

namespace A139139.P11954032142397471758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139136 (n + 1) : ℚ) / (A132954 (2 * n) - A132954 (2 * n + 1) : ℚ)

end

end A139139.P11954032142397471758

/-! ## A139139.P15703887456933375472

`A122792(n+1)/A057079(n²)`
-/

namespace A139139.P15703887456933375472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122792 (n + 1) : ℚ) / (A057079 (n ^ 2) : ℚ)

end

end A139139.P15703887456933375472

/-! ## A139139.P7833944123361006500

`A122792(n+1)/A132954(n²)`
-/

namespace A139139.P7833944123361006500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122792 (n + 1) : ℚ) / (A132954 (n ^ 2) : ℚ)

end

end A139139.P7833944123361006500

/-!
# A139140: For n>=1, a(n) = d(prime(n)+1) + d(prime(n)+2) + d(prime(n)+3) + ... + d(prime(n+1)), where d(m) is the number of positive divisors of m and prime(n) is the n-th prime. a(0) = d(1) + d(2).

The programs for A139140, the canonical program `A139140.P15434870677707820248` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139140 has offset 0).

The definition of A139140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139140.P15434870677707820248

`Δ[A253769(A028310(n))%A001844(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139140

/-- `Δ[A253769(A028310(n))%A001844(n)]` -/
def P15434870677707820248.Spec : Prop :=
  ∀ n, P15434870677707820248.a n = A139140 n

theorem P15434870677707820248.correct : P15434870677707820248.Spec := by
  intro n
  simp only [A139140]

end A139140

/-! ## A139140.P3194962484229533990

`Δ[A006218(A182986(n+1))]`
-/

namespace A139140.P3194962484229533990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A182986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139140.P3194962484229533990

namespace A139140

/-- `Δ[A006218(A182986(n+1))]` -/
def P3194962484229533990.Spec : Prop :=
  ∀ n, P3194962484229533990.a n = A139140 n

end A139140

/-! ## A139140.P14021644857346962062

`Δ[A006218(record[A008472(n+1)])]`
-/

namespace A139140.P14021644857346962062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139140.P14021644857346962062

namespace A139140

/-- `Δ[A006218(record[A008472(n+1)])]` -/
def P14021644857346962062.Spec : Prop :=
  ∀ n, P14021644857346962062.a n = A139140 n

end A139140

/-! ## A139140.P18048400018793998216

`Δ[A006218(A001414(A008578(n+1)))]`
-/

namespace A139140.P18048400018793998216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A001414 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139140.P18048400018793998216

namespace A139140

/-- `Δ[A006218(A001414(A008578(n+1)))]` -/
def P18048400018793998216.Spec : Prop :=
  ∀ n, P18048400018793998216.a n = A139140 n

end A139140

/-! ## A139140.P5540093858394046398

`A000007(n)+Δ[A006218(A008578(n+1))]`
-/

namespace A139140.P5540093858394046398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A139140.P5540093858394046398

namespace A139140

/-- `A000007(n)+Δ[A006218(A008578(n+1))]` -/
def P5540093858394046398.Spec : Prop :=
  ∀ n, P5540093858394046398.a n = A139140 n

end A139140

/-! ## A139140.P14200978472901682662

`Δ[A006218(A008578(n+1)%A001937(n))]`
-/

namespace A139140.P14200978472901682662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Int.tmod (A008578 (n + 1)) (A001937 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139140.P14200978472901682662

namespace A139140

/-- `Δ[A006218(A008578(n+1)%A001937(n))]` -/
def P14200978472901682662.Spec : Prop :=
  ∀ n, P14200978472901682662.a n = A139140 n

end A139140

/-! ## A139140.P14115344678546118636

`Δ[A006218(A000040(n+1)-A054541(n+1))]`
-/

namespace A139140.P14115344678546118636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A000040 (n + 1) - A054541 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139140.P14115344678546118636

namespace A139140

/-- `Δ[A006218(A000040(n+1)-A054541(n+1))]` -/
def P14115344678546118636.Spec : Prop :=
  ∀ n, P14115344678546118636.a n = A139140 n

end A139140

/-! ## A139140.P4708025056064195197

`Δ[A006218(eq[n, n*A032741(n)])]`
-/

namespace A139140.P4708025056064195197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139140.P4708025056064195197

namespace A139140

/-- `Δ[A006218(eq[n, n*A032741(n)])]` -/
def P4708025056064195197.Spec : Prop :=
  ∀ n, P4708025056064195197.a n = A139140 n

end A139140

/-! ## A139140.P15063246219883974891

`Δ[A006218(eq[n, n*A105700(n)])]`
-/

namespace A139140.P15063246219883974891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105700 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139140.P15063246219883974891

namespace A139140

/-- `Δ[A006218(eq[n, n*A105700(n)])]` -/
def P15063246219883974891.Spec : Prop :=
  ∀ n, P15063246219883974891.a n = A139140 n

end A139140

/-! ## A139140.P3006549586114829866

`A065033(Δ[A143236(A008578(n+1))])`
-/

namespace A139140.P3006549586114829866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143236 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A139140.P3006549586114829866

namespace A139140

/-- `A065033(Δ[A143236(A008578(n+1))])` -/
def P3006549586114829866.Spec : Prop :=
  ∀ n, P3006549586114829866.a n = A139140 n

end A139140

/-! ## A139140.P15827165926082549679

`Δ[A006218(A020513(A001747(n+1)))]`
-/

namespace A139140.P15827165926082549679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A020513 (A001747 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139140.P15827165926082549679

namespace A139140

/-- `Δ[A006218(A020513(A001747(n+1)))]` -/
def P15827165926082549679.Spec : Prop :=
  ∀ n, P15827165926082549679.a n = A139140 n

end A139140

/-!
# A139141: For n>=1, a(n) = floor((d(p(n)+1) + d(p(n)+2) + d(p(n)+3) + ... +d(p(n+1)))/(p(n+1) - p(n))), where d(m) is the number of positive divisors of m and p(n) is the n-th prime. a(0) = floor((d(1) + d(2))/2).

The programs for A139141, there is no canonical definition to state claims against.
-/

/-! ## A139141.P15351300109190292828

`A212625(A154579(n+1))`
-/

namespace A139141.P15351300109190292828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (A154579 (n + 1)).toNat

end

end A139141.P15351300109190292828

/-! ## A139141.P6504917275026509367

`A097849(A168260(2*n+1)+n+n)`
-/

namespace A139141.P6504917275026509367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 (A168260 (2 * n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A139141.P6504917275026509367

/-! ## A139141.P17055457583946626304

`A267145(A002559(n+5))+A070939(n+1)`
-/

namespace A139141.P17055457583946626304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267145 (A002559 (n + 5)).toNat + A070939 (n + 1)

end

end A139141.P17055457583946626304

/-! ## A139141.P15188756559510136382

`A384480(A384488(2*(n+1))+n)`
-/

namespace A139141.P15188756559510136382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384480 (A384488 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A139141.P15188756559510136382

/-! ## A139141.P8192275225440558244

`A356229(A113454(3*n+1))+floor(log2(n+1))`
-/

namespace A139141.P8192275225440558244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356229 (A113454 (3 * n + 1)).toNat + (Nat.log 2 (n + 1) : ℤ)

end

end A139141.P8192275225440558244

/-!
# A139142: This sequence and A139143 are complements. a(1) = 1, A139143(1) = 2, a(n+1) = a(n) + Sum_{k = 1..n} A139143(k).

The programs for A139142, there is no canonical definition to state claims against.
-/

/-! ## A139142.P1597620484243521171

`1-∑[a(n-1)-A139143(n)]` with `a(0)=0`
-/

namespace A139142.P1597620484243521171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A139143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139142.P1597620484243521171

/-! ## A139142.P13900059220249951602

`∑[∑[A139143(n+1)]-A139143(n+1)]+1`
-/

namespace A139142.P13900059220249951602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139143 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A139143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A139142.P13900059220249951602

/-! ## A139142.P1715543299189106404

`∑[∑[comp[A329002(3*n+1)]]+1]`
-/

namespace A139142.P1715543299189106404
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329002 (3 * n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139142.P1715543299189106404

/-! ## A139142.P10430929615262391483

`∑[∑[A047306(n+1)%A076315(n+1)+1]]`
-/

namespace A139142.P10430929615262391483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047306 (n + 1)) (A076315 (n + 1)) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139142.P10430929615262391483

/-! ## A139142.P11530275739499899085

`∑[∑[A187947(n+1)%A119112(n+1)+1]]`
-/

namespace A139142.P11530275739499899085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187947 (n + 1)) (A119112 (n + 1)) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139142.P11530275739499899085

/-!
# A139143: This sequence and A139142 are complements. a(1)=2. A139142(1)=1. A139142(n+1) = A139142(n) + sum{k=1 to n} a(k).

The programs for A139143, there is no canonical definition to state claims against.
-/

/-! ## A139143.P15749288747801515638

`comp[round(C(2*n, 3)/6)]`
-/

namespace A139143.P15749288747801515638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n) 3 : ℚ) / 6)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139143.P15749288747801515638

/-! ## A139143.P4208972996767331845

`comp[round(∑[2/3*n²])]`
-/

namespace A139143.P4208972996767331845
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (n ^ 2 : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139143.P4208972996767331845

/-! ## A139143.P17894239721144232020

`comp[C(n+2, 3)+n²]+1`
-/

namespace A139143.P17894239721144232020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A139143.P17894239721144232020

/-! ## A139143.P5002255519614964267

`comp[∑[∑[n+1-C(2, n)]]]+1`
-/

namespace A139143.P5002255519614964267
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A139143.P5002255519614964267

/-! ## A139143.P9715043997344066498

`comp[∑[a(n-1)+n]]+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A139143.P9715043997344066498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A139143.P9715043997344066498

/-! ## A139143.P1069803625385037478

`comp[∑[∑[n]-3%(n+1)-1]]+1`
-/

namespace A139143.P1069803625385037478
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - ((3 % (n + 1) : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A139143.P1069803625385037478

/-! ## A139143.P4568998760616728978

`comp[∑[n%2*∑[∏{e}[n, #+1]]]]+1`
-/

namespace A139143.P4568998760616728978
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A139143.P4568998760616728978

/-! ## A139143.P5637404314205376873

`comp[∑[A347315(n)]]+1`
-/

namespace A139143.P5637404314205376873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347315 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A139143.P5637404314205376873

/-! ## A139143.P4991052401154862434

`comp[∑[A046691(n)]]+2`
-/

namespace A139143.P4991052401154862434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A139143.P4991052401154862434

/-! ## A139143.P13429154945834586014

`comp[∑[A000045(n+2)+4*n]]+2`
-/

namespace A139143.P13429154945834586014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + (4 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A139143.P13429154945834586014

/-!
# A139147: Triangle read by rows: replace A003983(n,k) with F(n).

The programs for A139147, there is no canonical definition to state claims against.
-/

/-! ## A139147.P15719354720857624324

`floor(sqrt(A152719(n)))`
-/

namespace A139147.P15719354720857624324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A152719 n)

end

end A139147.P15719354720857624324

/-! ## A139147.P2186572729068186519

`floor(root(A144464(n), ϕ))`
-/

namespace A139147.P2186572729068186519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144464 n : ℝ) ^ (1 / Real.goldenRatio)⌋

end

end A139147.P2186572729068186519

/-! ## A139147.P9770963875759847742

`ceil(sqrt(A152714(n))/2)`
-/

namespace A139147.P9770963875759847742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A152714 n : ℝ) / 2⌉

end

end A139147.P9770963875759847742

/-! ## A139147.P9904172132672775165

`round(γ*A204026(n+1))`
-/

namespace A139147.P9904172132672775165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant * (A204026 (n + 1) : ℝ))

end

end A139147.P9904172132672775165

/-! ## A139147.P5331085793977397293

`ceil(sqrt(A155050(n)-1))+1`
-/

namespace A139147.P5331085793977397293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A155050 n - 1 : ℝ)⌉ + 1

end

end A139147.P5331085793977397293

/-! ## A139147.P508172849968039454

`ceil((ceil(A143086(n)/3)+2)/3)`
-/

namespace A139147.P508172849968039454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A143086 n : ℚ) / 3⌉ + 2 : ℚ) / 3⌉

end

end A139147.P508172849968039454

/-! ## A139147.P16580622080996271117

`A026702(A004197(n))`
-/

namespace A139147.P16580622080996271117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026702 (A004197 n).toNat

end

end A139147.P16580622080996271117

/-! ## A139147.P8465161110543841846

`A054495(A058071(n))`
-/

namespace A139147.P8465161110543841846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054495 (A058071 n).toNat

end

end A139147.P8465161110543841846

/-! ## A139147.P15346956211384068808

`A000194(A152719(n))`
-/

namespace A139147.P15346956211384068808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A152719 n).toNat

end

end A139147.P15346956211384068808

/-! ## A139147.P12411248996610009703

`A046155(A144464(n))`
-/

namespace A139147.P12411248996610009703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A144464 n).toNat

end

end A139147.P12411248996610009703

/-!
# A139148: Smallest positive integer of the form (m!+n)/n.

The programs for A139148, there is no canonical definition to state claims against.
-/

/-! ## A139148.P11800937883588776156

`A007672(n+1)+1`
-/

namespace A139148.P11800937883588776156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007672 (n + 1) + 1

end

end A139148.P11800937883588776156

/-! ## A139148.P12203286587533829911

`(n+1+A002034(n+1)!)/(n+1)`
-/

namespace A139148.P12203286587533829911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 + Nat.factorial (A002034 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A139148.P12203286587533829911

/-! ## A139148.P18064684469937332737

`A092495(n+1)/(n+1)+1`
-/

namespace A139148.P18064684469937332737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092495 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A139148.P18064684469937332737

/-! ## A139148.P7100341014761192263

`1+A002034(n+1)!/(n+1)`
-/

namespace A139148.P7100341014761192263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (Nat.factorial (A002034 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A139148.P7100341014761192263

/-! ## A139148.P9230613175593019211

`A000142(A064760(n+1))/(n+1)+1`
-/

namespace A139148.P9230613175593019211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A064760 (n + 1)).toNat : ℚ) / (n + 1 : ℚ) + 1

end

end A139148.P9230613175593019211

/-! ## A139148.P9355105783383004812

`A000142(A002034(n+1))/A000027(n+1)+1`
-/

namespace A139148.P9355105783383004812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A002034 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ) + 1

end

end A139148.P9355105783383004812

/-!
# A139149: a(n) = (n!+2)/2.

The programs for A139149, the canonical program `A139149.P11222494852166994898` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139149 has offset 2).

The definition of A139149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139149.P11222494852166994898

`(n+2)!/2+1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139149

/-- `(n+2)!/2+1` -/
def P11222494852166994898.Spec : Prop :=
  ∀ n, P11222494852166994898.a n = (A139149 (n + 2) : ℚ)

end A139149

/-! ## A139149.P2501323901956227530

`((n+2)!+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139149.P2501323901956227530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) + 2 : ℚ) / 2

end

end A139149.P2501323901956227530

namespace A139149

/-- `((n+2)!+2)/2` -/
def P2501323901956227530.Spec : Prop :=
  ∀ n, P2501323901956227530.a n = (A139149 (n + 2) : ℚ)

end A139149

/-! ## A139149.P12952788095280672592

`n!*∑[n+1]+1`
-/

namespace A139149.P12952788095280672592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A139149.P12952788095280672592

namespace A139149

/-- `n!*∑[n+1]+1` -/
def P12952788095280672592.Spec : Prop :=
  ∀ n, (P12952788095280672592.a n : ℤ) = A139149 (n + 2)

end A139149

/-! ## A139149.P6513901140002549835

`∏[n+2-floor(acot(n))]+1`
-/

namespace A139149.P6513901140002549835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A139149.P6513901140002549835

namespace A139149

/-- `∏[n+2-floor(acot(n))]+1` -/
def P6513901140002549835.Spec : Prop :=
  ∀ n, P6513901140002549835.a n = A139149 (n + 2)

end A139149

/-! ## A139149.P1848319379215369535

`∏[(n+2)^ceil(tanh(n))]+1`
-/

namespace A139149.P1848319379215369535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (⌈Real.tanh (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A139149.P1848319379215369535

namespace A139149

/-- `∏[(n+2)^ceil(tanh(n))]+1` -/
def P1848319379215369535.Spec : Prop :=
  ∀ n, P1848319379215369535.a n = (A139149 (n + 2) : ℚ)

end A139149

/-! ## A139149.P13418470850067869646

`∏[a(n-1)+1]+1` with `a(0)=1, a(1)=3`
-/

namespace A139149.P13418470850067869646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A139149.P13418470850067869646

namespace A139149

/-- `∏[a(n-1)+1]+1` -/
def P13418470850067869646.Spec : Prop :=
  ∀ n, (P13418470850067869646.a n : ℤ) = A139149 (n + 2)

end A139149

/-! ## A139149.P16856613638523974931

`∏[ceil(sqrt(∑[2*n]))+1]+1`
-/

namespace A139149.P16856613638523974931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A139149.P16856613638523974931

namespace A139149

/-- `∏[ceil(sqrt(∑[2*n]))+1]+1` -/
def P16856613638523974931.Spec : Prop :=
  ∀ n, P16856613638523974931.a n = A139149 (n + 2)

end A139149

/-! ## A139149.P3666044320478404788

`abs(n+1-(n+2)*a(n-1))` with `a(0)=2`
-/

namespace A139149.P3666044320478404788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |(n + 1 : ℤ) - (n + 2 : ℤ) * a (n - 1)|

end

end A139149.P3666044320478404788

namespace A139149

/-- `abs(n+1-(n+2)*a(n-1))` -/
def P3666044320478404788.Spec : Prop :=
  ∀ n, P3666044320478404788.a n = A139149 (n + 2)

end A139149

/-! ## A139149.P17821527614423444795

`floor((n+2)*(a(n-1)-1)+ϕ)` with `a(0)=2`
-/

namespace A139149.P17821527614423444795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊((n + 2 : ℤ) * (a (n - 1) - 1) : ℝ) + Real.goldenRatio⌋

end

end A139149.P17821527614423444795

namespace A139149

/-- `floor((n+2)*(a(n-1)-1)+ϕ)` -/
def P17821527614423444795.Spec : Prop :=
  ∀ n, P17821527614423444795.a n = A139149 (n + 2)

end A139149

/-! ## A139149.P2731210267642789691

`floor((n+2)*a(n-1)-(n+1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A139149.P2731210267642789691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n + 2 : ℤ) * a (n - 1) - (n + 1 : ℤ)

end

end A139149.P2731210267642789691

namespace A139149

/-- `floor((n+2)*a(n-1)-(n+1))` -/
def P2731210267642789691.Spec : Prop :=
  ∀ n, P2731210267642789691.a n = A139149 (n + 2)

end A139149

/-!
# A139150: a(n) = (n!+3)/3.

The programs for A139150, the canonical program `A139150.P3842910290868980269` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139150 has offset 3).

The definition of A139150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139150.P3842910290868980269

`((n+3)!+3)/3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139150

/-- `((n+3)!+3)/3` -/
def P3842910290868980269.Spec : Prop :=
  ∀ n, P3842910290868980269.a n = (A139150 (n + 3) : ℚ)

end A139150

/-! ## A139150.P10089765078392700154

`2/3*∏[n+3]+1`
-/

namespace A139150.P10089765078392700154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + 1

end

end A139150.P10089765078392700154

namespace A139150

/-- `2/3*∏[n+3]+1` -/
def P10089765078392700154.Spec : Prop :=
  ∀ n, P10089765078392700154.a n = (A139150 (n + 3) : ℚ)

end A139150

/-! ## A139150.P16536322019039615003

`abs(∏[a(n-1)+1]+1)` with `a(0)=2, a(1)=4`
-/

namespace A139150.P16536322019039615003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A139150.P16536322019039615003

namespace A139150

/-- `abs(∏[a(n-1)+1]+1)` -/
def P16536322019039615003.Spec : Prop :=
  ∀ n, (P16536322019039615003.a n : ℤ) = A139150 (n + 3)

end A139150

/-! ## A139150.P17588078706366609340

`or(1, (n+3)*(a(n-1)-1))` with `a(0)=3`
-/

namespace A139150.P17588078706366609340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 1 ((n + 3 : ℤ) * (a (n - 1) - 1))

end

end A139150.P17588078706366609340

namespace A139150

/-- `or(1, (n+3)*(a(n-1)-1))` -/
def P17588078706366609340.Spec : Prop :=
  ∀ n, P17588078706366609340.a n = A139150 (n + 3)

end A139150

/-! ## A139150.P12811714454846881344

`xor(1, (n+3)*(a(n-1)-1))` with `a(0)=3`
-/

namespace A139150.P12811714454846881344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor 1 ((n + 3 : ℤ) * (a (n - 1) - 1))

end

end A139150.P12811714454846881344

namespace A139150

/-- `xor(1, (n+3)*(a(n-1)-1))` -/
def P12811714454846881344.Spec : Prop :=
  ∀ n, P12811714454846881344.a n = A139150 (n + 3)

end A139150

/-! ## A139150.P12447023817619060690

`abs(n+2-(n+3)*a(n-1))` with `a(0)=3`
-/

namespace A139150.P12447023817619060690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |(n + 2 : ℤ) - (n + 3 : ℤ) * a (n - 1)|

end

end A139150.P12447023817619060690

namespace A139150

/-- `abs(n+2-(n+3)*a(n-1))` -/
def P12447023817619060690.Spec : Prop :=
  ∀ n, P12447023817619060690.a n = A139150 (n + 3)

end A139150

/-! ## A139150.P6097653361035030916

`floor((n+3)*a(n-1)-(n+2))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A139150.P6097653361035030916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (n + 3 : ℤ) * a (n - 1) - (n + 2 : ℤ)

end

end A139150.P6097653361035030916

namespace A139150

/-- `floor((n+3)*a(n-1)-(n+2))` -/
def P6097653361035030916.Spec : Prop :=
  ∀ n, P6097653361035030916.a n = A139150 (n + 3)

end A139150

/-! ## A139150.P17243682572080301588

`ceil((n+3)*a(n-1)-(n+2))` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A139150.P17243682572080301588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (n + 3 : ℤ) * a (n - 1) - (n + 2 : ℤ)

end

end A139150.P17243682572080301588

namespace A139150

/-- `ceil((n+3)*a(n-1)-(n+2))` -/
def P17243682572080301588.Spec : Prop :=
  ∀ n, P17243682572080301588.a n = A139150 (n + 3)

end A139150

/-! ## A139150.P14010960203036657149

`round((n+3)*a(n-1)-(n+2))` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A139150.P14010960203036657149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (n + 3 : ℤ) * a (n - 1) - (n + 2 : ℤ)

end

end A139150.P14010960203036657149

namespace A139150

/-- `round((n+3)*a(n-1)-(n+2))` -/
def P14010960203036657149.Spec : Prop :=
  ∀ n, P14010960203036657149.a n = A139150 (n + 3)

end A139150

/-! ## A139150.P6767067667459032869

`Δ[∑[(n+2)*a(n-1)]+n]` with `a(0)=0, a(1)=2`
-/

namespace A139150.P6767067667459032869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  (n + 2) * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A139150.P6767067667459032869

namespace A139150

/-- `Δ[∑[(n+2)*a(n-1)]+n]` -/
def P6767067667459032869.Spec : Prop :=
  ∀ n, P6767067667459032869.a n = A139150 (n + 3)

end A139150

/-!
# A139151: a(n) = (n!+4)/4.

The programs for A139151, the canonical program `A139151.P13620984075549297940` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139151 has offset 4).

The definition of A139151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139151.P13620984075549297940

`(n+4)!/4+1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139151

/-- `(n+4)!/4+1` -/
def P13620984075549297940.Spec : Prop :=
  ∀ n, P13620984075549297940.a n = (A139151 (n + 4) : ℚ)

end A139151

/-! ## A139151.P10883640519865518548

`((n+4)!+4)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139151.P10883640519865518548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 4) + 4 : ℚ) / 4

end

end A139151.P10883640519865518548

namespace A139151

/-- `((n+4)!+4)/4` -/
def P10883640519865518548.Spec : Prop :=
  ∀ n, P10883640519865518548.a n = (A139151 (n + 4) : ℚ)

end A139151

/-! ## A139151.P1689251101258702561

`∏[abs(1-n)+5]+1`
-/

namespace A139151.P1689251101258702561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A139151.P1689251101258702561

namespace A139151

/-- `∏[abs(1-n)+5]+1` -/
def P1689251101258702561.Spec : Prop :=
  ∀ n, P1689251101258702561.a n = A139151 (n + 4)

end A139151

/-! ## A139151.P17113096819313103401

`or(1, ∏[a(n-1)+1])` with `a(0)=6, a(1)=5`
-/

namespace A139151.P17113096819313103401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A139151.P17113096819313103401

namespace A139151

/-- `or(1, ∏[a(n-1)+1])` -/
def P17113096819313103401.Spec : Prop :=
  ∀ n, (P17113096819313103401.a n : ℤ) = A139151 (n + 4)

end A139151

/-! ## A139151.P18349350395793431610

`xor(1, ∏[a(n-1)+1])` with `a(0)=6, a(1)=5`
-/

namespace A139151.P18349350395793431610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A139151.P18349350395793431610

namespace A139151

/-- `xor(1, ∏[a(n-1)+1])` -/
def P18349350395793431610.Spec : Prop :=
  ∀ n, (P18349350395793431610.a n : ℤ) = A139151 (n + 4)

end A139151

/-! ## A139151.P7018825431479549888

`abs((n+4)*a(n-1)-3-n)` with `a(0)=7`
-/

namespace A139151.P7018825431479549888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  |(n + 4 : ℤ) * a (n - 1) - 3 - (n : ℤ)|

end

end A139151.P7018825431479549888

namespace A139151

/-- `abs((n+4)*a(n-1)-3-n)` -/
def P7018825431479549888.Spec : Prop :=
  ∀ n, P7018825431479549888.a n = A139151 (n + 4)

end A139151

/-! ## A139151.P5996490970475976903

`ceil((3*∏[a(n-1)+1]+1)/2)` with `a(0)=4`
-/

namespace A139151.P5996490970475976903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 * (∏ j ∈ Finset.range (n + 1), f1 j) + 1 : ℕ) : ℚ) / 2⌉

end

end A139151.P5996490970475976903

namespace A139151

/-- `ceil((3*∏[a(n-1)+1]+1)/2)` -/
def P5996490970475976903.Spec : Prop :=
  ∀ n, P5996490970475976903.a n = A139151 (n + 4)

end A139151

/-! ## A139151.P5301794388098422635

`2*(A139174(n+4)/2+1)`
-/

namespace A139151.P5301794388098422635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A139174 (n + 4) : ℚ) / 2 + 1)

end

end A139151.P5301794388098422635

namespace A139151

/-- `2*(A139174(n+4)/2+1)` -/
def P5301794388098422635.Spec : Prop :=
  ∀ n, P5301794388098422635.a n = (A139151 (n + 4) : ℚ)

end A139151

/-! ## A139151.P6864742603838459869

`or(1, A092583(A167614(n+2)))`
-/

namespace A139151.P6864742603838459869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A092583 (A167614 (n + 2)).toNat)

end

end A139151.P6864742603838459869

namespace A139151

/-- `or(1, A092583(A167614(n+2)))` -/
def P6864742603838459869.Spec : Prop :=
  ∀ n, P6864742603838459869.a n = A139151 (n + 4)

end A139151

/-! ## A139151.P11912571797799179045

`(A000142(n+4)+4)/4`
-/

namespace A139151.P11912571797799179045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 4) + 4 : ℚ) / 4

end

end A139151.P11912571797799179045

namespace A139151

/-- `(A000142(n+4)+4)/4` -/
def P11912571797799179045.Spec : Prop :=
  ∀ n, P11912571797799179045.a n = (A139151 (n + 4) : ℚ)

end A139151

/-!
# A139152: a(n) = (n!+5)/5.

The programs for A139152, the canonical program `A139152.P5563027913017586745` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139152 has offset 5).

The definition of A139152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139152.P5563027913017586745

`((n+5)!+5)/5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139152

/-- `((n+5)!+5)/5` -/
def P5563027913017586745.Spec : Prop :=
  ∀ n, P5563027913017586745.a n = (A139152 (n + 5) : ℚ)

end A139152

/-! ## A139152.P12246609694884308849

`24*∏[n+5]/5+1`
-/

namespace A139152.P12246609694884308849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  24 * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5) + 1

end

end A139152.P12246609694884308849

namespace A139152

/-- `24*∏[n+5]/5+1` -/
def P12246609694884308849.Spec : Prop :=
  ∀ n, P12246609694884308849.a n = (A139152 (n + 5) : ℚ)

end A139152

/-! ## A139152.P16366953644505410098

`or(1, A129923(n))`
-/

namespace A139152.P16366953644505410098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A129923 n)

end

end A139152.P16366953644505410098

namespace A139152

/-- `or(1, A129923(n))` -/
def P16366953644505410098.Spec : Prop :=
  ∀ n, P16366953644505410098.a n = A139152 (n + 5)

end A139152

/-! ## A139152.P16337773003474191518

`xor(A007318(∑[n]), A129923(n))`
-/

namespace A139152.P16337773003474191518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A129923 n)

end

end A139152.P16337773003474191518

namespace A139152

/-- `xor(A007318(∑[n]), A129923(n))` -/
def P16337773003474191518.Spec : Prop :=
  ∀ n, P16337773003474191518.a n = A139152 (n + 5)

end A139152

/-! ## A139152.P7831193943004435477

`xor(A001222(A129900(n+1)), A129923(n))`
-/

namespace A139152.P7831193943004435477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A129900 (n + 1)).toNat) (A129923 n)

end

end A139152.P7831193943004435477

namespace A139152

/-- `xor(A001222(A129900(n+1)), A129923(n))` -/
def P7831193943004435477.Spec : Prop :=
  ∀ n, P7831193943004435477.a n = A139152 (n + 5)

end A139152

/-! ## A139152.P10314281502549386984

`xor(A001222(A129901(n+1)), A129923(n))`
-/

namespace A139152.P10314281502549386984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A129901 (n + 1)).toNat) (A129923 n)

end

end A139152.P10314281502549386984

namespace A139152

/-- `xor(A001222(A129901(n+1)), A129923(n))` -/
def P10314281502549386984.Spec : Prop :=
  ∀ n, P10314281502549386984.a n = A139152 (n + 5)

end A139152

/-! ## A139152.P6122622873679477959

`xor(A001222(A129919(n+1)), A129923(n))`
-/

namespace A139152.P6122622873679477959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A129919 (n + 1)).toNat) (A129923 n)

end

end A139152.P6122622873679477959

namespace A139152

/-- `xor(A001222(A129919(n+1)), A129923(n))` -/
def P6122622873679477959.Spec : Prop :=
  ∀ n, P6122622873679477959.a n = A139152 (n + 5)

end A139152

/-! ## A139152.P2487218987946295072

`xor(A001222(A129899(n+1)), A129923(n))`
-/

namespace A139152.P2487218987946295072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A129899 (n + 1)).toNat) (A129923 n)

end

end A139152.P2487218987946295072

namespace A139152

/-- `xor(A001222(A129899(n+1)), A129923(n))` -/
def P2487218987946295072.Spec : Prop :=
  ∀ n, P2487218987946295072.a n = A139152 (n + 5)

end A139152

/-!
# A139153: a(n) = (n!+6)/6.

The programs for A139153, the canonical program `A139153.P17340200470554223603` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139153 has offset 3).

The definition of A139153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139153.P17340200470554223603

`((n+3)!+6)/6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139153

/-- `((n+3)!+6)/6` -/
def P17340200470554223603.Spec : Prop :=
  ∀ n, P17340200470554223603.a n = (A139153 (n + 3) : ℚ)

end A139153

/-! ## A139153.P7406102084308161982

`∏[n+3]/3+1`
-/

namespace A139153.P7406102084308161982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 + 1

end

end A139153.P7406102084308161982

namespace A139153

/-- `∏[n+3]/3+1` -/
def P7406102084308161982.Spec : Prop :=
  ∀ n, P7406102084308161982.a n = (A139153 (n + 3) : ℚ)

end A139153

/-! ## A139153.P4516064384878514297

`abs(∏[n+3]*tan(acot(3))+1)`
-/

namespace A139153.P4516064384878514297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) * Real.tan (SequenceMachineLib.acot (3 : ℝ)) + 1|

end

end A139153.P4516064384878514297

namespace A139153

/-- `abs(∏[n+3]*tan(acot(3))+1)` -/
def P4516064384878514297.Spec : Prop :=
  ∀ n, P4516064384878514297.a n = (A139153 (n + 3) : ℝ)

end A139153

/-! ## A139153.P8117455068328173762

`abs(∏[n+3]*cot(atan(3))+1)`
-/

namespace A139153.P8117455068328173762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) * Real.cot (Real.arctan (3 : ℝ)) + 1|

end

end A139153.P8117455068328173762

namespace A139153

/-- `abs(∏[n+3]*cot(atan(3))+1)` -/
def P8117455068328173762.Spec : Prop :=
  ∀ n, P8117455068328173762.a n = (A139153 (n + 3) : ℝ)

end A139153

/-! ## A139153.P3909885772145741954

`abs(∏[a(n-1)+1]+1)` with `a(0)=1, a(1)=4`
-/

namespace A139153.P3909885772145741954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A139153.P3909885772145741954

namespace A139153

/-- `abs(∏[a(n-1)+1]+1)` -/
def P3909885772145741954.Spec : Prop :=
  ∀ n, (P3909885772145741954.a n : ℤ) = A139153 (n + 3)

end A139153

/-! ## A139153.P370898403482526229

`or(1, (n+3)*(a(n-1)-1))` with `a(0)=2`
-/

namespace A139153.P370898403482526229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor 1 ((n + 3 : ℤ) * (a (n - 1) - 1))

end

end A139153.P370898403482526229

namespace A139153

/-- `or(1, (n+3)*(a(n-1)-1))` -/
def P370898403482526229.Spec : Prop :=
  ∀ n, P370898403482526229.a n = A139153 (n + 3)

end A139153

/-! ## A139153.P18295779065798796707

`xor(1, (n+3)*(a(n-1)-1))` with `a(0)=2`
-/

namespace A139153.P18295779065798796707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor 1 ((n + 3 : ℤ) * (a (n - 1) - 1))

end

end A139153.P18295779065798796707

namespace A139153

/-- `xor(1, (n+3)*(a(n-1)-1))` -/
def P18295779065798796707.Spec : Prop :=
  ∀ n, P18295779065798796707.a n = A139153 (n + 3)

end A139153

/-! ## A139153.P11725754526545618082

`abs(n+2-(n+3)*a(n-1))` with `a(0)=2`
-/

namespace A139153.P11725754526545618082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |(n + 2 : ℤ) - (n + 3 : ℤ) * a (n - 1)|

end

end A139153.P11725754526545618082

namespace A139153

/-- `abs(n+2-(n+3)*a(n-1))` -/
def P11725754526545618082.Spec : Prop :=
  ∀ n, P11725754526545618082.a n = A139153 (n + 3)

end A139153

/-! ## A139153.P10093970962823019608

`floor((n+3)*(a(n-1)-1)+ϕ)` with `a(0)=2`
-/

namespace A139153.P10093970962823019608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊((n + 3 : ℤ) * (a (n - 1) - 1) : ℝ) + Real.goldenRatio⌋

end

end A139153.P10093970962823019608

namespace A139153

/-- `floor((n+3)*(a(n-1)-1)+ϕ)` -/
def P10093970962823019608.Spec : Prop :=
  ∀ n, P10093970962823019608.a n = A139153 (n + 3)

end A139153

/-! ## A139153.P6444457222882980276

`floor((n+3)*a(n-1)-(n+2))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A139153.P6444457222882980276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n + 3 : ℤ) * a (n - 1) - (n + 2 : ℤ)

end

end A139153.P6444457222882980276

namespace A139153

/-- `floor((n+3)*a(n-1)-(n+2))` -/
def P6444457222882980276.Spec : Prop :=
  ∀ n, P6444457222882980276.a n = A139153 (n + 3)

end A139153

/-!
# A139154: a(n) = (n!+7)/7.

The programs for A139154, the canonical program `A139154.P179793868901678839` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139154 has offset 7).

The definition of A139154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139154.P179793868901678839

`((n+7)!+7)/7`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139154

/-- `((n+7)!+7)/7` -/
def P179793868901678839.Spec : Prop :=
  ∀ n, P179793868901678839.a n = (A139154 (n + 7) : ℚ)

end A139154

/-! ## A139154.P3031937551312678484

`A139177(n+7)+2`
-/

namespace A139154.P3031937551312678484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139177 (n + 7) + 2

end

end A139154.P3031937551312678484

namespace A139154

/-- `A139177(n+7)+2` -/
def P3031937551312678484.Spec : Prop :=
  ∀ n, P3031937551312678484.a n = A139154 (n + 7)

end A139154

/-! ## A139154.P8019137643271959063

`A058298(eq[5, A193592(n)])+1`
-/

namespace A139154.P8019137643271959063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058298 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A139154.P8019137643271959063

namespace A139154

/-- `A058298(eq[5, A193592(n)])+1` -/
def P8019137643271959063.Spec : Prop :=
  ∀ n, P8019137643271959063.a n = A139154 (n + 7)

end A139154

/-! ## A139154.P8645951082684832048

`A000142(n+7)/7+1`
-/

namespace A139154.P8645951082684832048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 7) : ℚ) / 7 + 1

end

end A139154.P8645951082684832048

namespace A139154

/-- `A000142(n+7)/7+1` -/
def P8645951082684832048.Spec : Prop :=
  ∀ n, P8645951082684832048.a n = (A139154 (n + 7) : ℚ)

end A139154

/-! ## A139154.P11767718390447969154

`A094310(eq[64, A059268(n)]+1)+1`
-/

namespace A139154.P11767718390447969154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A139154.P11767718390447969154

namespace A139154

/-- `A094310(eq[64, A059268(n)]+1)+1` -/
def P11767718390447969154.Spec : Prop :=
  ∀ n, P11767718390447969154.a n = A139154 (n + 7)

end A139154

/-!
# A139155: a(n) = (n!+8)/8.

The programs for A139155, the canonical program `A139155.P3874214721629287708` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139155 has offset 4).

The definition of A139155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139155.P3874214721629287708

`((n+4)!+8)/8`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139155

/-- `((n+4)!+8)/8` -/
def P3874214721629287708.Spec : Prop :=
  ∀ n, P3874214721629287708.a n = (A139155 (n + 4) : ℚ)

end A139155

/-! ## A139155.P4802769768281049007

`3*∏[n+4]/4+1`
-/

namespace A139155.P4802769768281049007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4) + 1

end

end A139155.P4802769768281049007

namespace A139155

/-- `3*∏[n+4]/4+1` -/
def P4802769768281049007.Spec : Prop :=
  ∀ n, P4802769768281049007.a n = (A139155 (n + 4) : ℚ)

end A139155

/-! ## A139155.P2583425395521811711

`Δ[A117397(n)+n]`
-/

namespace A139155.P2583425395521811711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117397 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139155.P2583425395521811711

namespace A139155

/-- `Δ[A117397(n)+n]` -/
def P2583425395521811711.Spec : Prop :=
  ∀ n, P2583425395521811711.a n = A139155 (n + 4)

end A139155

/-! ## A139155.P7030197032773962554

`ceil(A139151(n+4)/2)`
-/

namespace A139155.P7030197032773962554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139151 (n + 4) : ℚ) / 2⌉

end

end A139155.P7030197032773962554

namespace A139155

/-- `ceil(A139151(n+4)/2)` -/
def P7030197032773962554.Spec : Prop :=
  ∀ n, P7030197032773962554.a n = A139155 (n + 4)

end A139155

/-! ## A139155.P6181306253961014491

`abs(∏[A103517(n)+2-n]+1)`
-/

namespace A139155.P6181306253961014491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j + 1|

end

end A139155.P6181306253961014491

namespace A139155

/-- `abs(∏[A103517(n)+2-n]+1)` -/
def P6181306253961014491.Spec : Prop :=
  ∀ n, P6181306253961014491.a n = A139155 (n + 4)

end A139155

/-! ## A139155.P4572127823151706578

`round(A139151(n+4)/A239374(n+2))`
-/

namespace A139155.P4572127823151706578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A139151 (n + 4) : ℚ) / (A239374 (n + 2) : ℚ))

end

end A139155.P4572127823151706578

namespace A139155

/-- `round(A139151(n+4)/A239374(n+2))` -/
def P4572127823151706578.Spec : Prop :=
  ∀ n, P4572127823151706578.a n = A139155 (n + 4)

end A139155

/-! ## A139155.P12811235303853286983

`abs(1-∏[A009005(n+1)]-A020639(2*(n+1)))`
-/

namespace A139155.P12811235303853286983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∏ j ∈ Finset.range (n + 1), f1 j - A020639 (2 * (n + 1))|

end

end A139155.P12811235303853286983

namespace A139155

/-- `abs(1-∏[A009005(n+1)]-A020639(2*(n+1)))` -/
def P12811235303853286983.Spec : Prop :=
  ∀ n, P12811235303853286983.a n = A139155 (n + 4)

end A139155

/-! ## A139155.P9893611889955194324

`(A259458(n)+A001303(n+1))/A001303(n+1)`
-/

namespace A139155.P9893611889955194324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259458 n + A001303 (n + 1) : ℚ) / (A001303 (n + 1) : ℚ)

end

end A139155.P9893611889955194324

namespace A139155

/-- `(A259458(n)+A001303(n+1))/A001303(n+1)` -/
def P9893611889955194324.Spec : Prop :=
  ∀ n, P9893611889955194324.a n = (A139155 (n + 4) : ℚ)

end A139155

/-!
# A139156: a(n) = (n!+9)/9.

The programs for A139156, the canonical program `A139156.P16722853912806983826` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139156 has offset 6).

The definition of A139156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139156.P16722853912806983826

`((n+6)!+9)/9`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139156

/-- `((n+6)!+9)/9` -/
def P16722853912806983826.Spec : Prop :=
  ∀ n, P16722853912806983826.a n = (A139156 (n + 6) : ℚ)

end A139156

/-! ## A139156.P15875458029839505159

`8*∏[a(n-1)+1]+1` with `a(0)=10, a(1)=7`
-/

namespace A139156.P15875458029839505159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∏ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A139156.P15875458029839505159

namespace A139156

/-- `8*∏[a(n-1)+1]+1` -/
def P15875458029839505159.Spec : Prop :=
  ∀ n, (P15875458029839505159.a n : ℤ) = A139156 (n + 6)

end A139156

/-! ## A139156.P1451784103200043103

`A139184(n+6)+2`
-/

namespace A139156.P1451784103200043103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139184 (n + 6) + 2

end

end A139156.P1451784103200043103

namespace A139156

/-- `A139184(n+6)+2` -/
def P1451784103200043103.Spec : Prop :=
  ∀ n, P1451784103200043103.a n = A139156 (n + 6)

end A139156

/-! ## A139156.P2927174149507091499

`ceil(A139150(n+6)/3)`
-/

namespace A139156.P2927174149507091499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139150 (n + 6) : ℚ) / 3⌉

end

end A139156.P2927174149507091499

namespace A139156

/-- `ceil(A139150(n+6)/3)` -/
def P2927174149507091499.Spec : Prop :=
  ∀ n, P2927174149507091499.a n = A139156 (n + 6)

end A139156

/-! ## A139156.P12814840383193454251

`Δ[A056199(n+5)]/3+1`
-/

namespace A139156.P12814840383193454251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056199 (n + 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 3 + 1

end

end A139156.P12814840383193454251

namespace A139156

/-- `Δ[A056199(n+5)]/3+1` -/
def P12814840383193454251.Spec : Prop :=
  ∀ n, P12814840383193454251.a n = (A139156 (n + 6) : ℚ)

end A139156

/-! ## A139156.P4354798103492624016

`A000142(n+6)/9+1`
-/

namespace A139156.P4354798103492624016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 6) : ℚ) / 9 + 1

end

end A139156.P4354798103492624016

namespace A139156

/-- `A000142(n+6)/9+1` -/
def P4354798103492624016.Spec : Prop :=
  ∀ n, P4354798103492624016.a n = (A139156 (n + 6) : ℚ)

end A139156

/-!
# A139157: a(n) = (n!+10)/10.

The programs for A139157, the canonical program `A139157.P10511775240515308670` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139157 has offset 5).

The definition of A139157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139157.P10511775240515308670

`((n+5)!+10)/10`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139157

/-- `((n+5)!+10)/10` -/
def P10511775240515308670.Spec : Prop :=
  ∀ n, P10511775240515308670.a n = (A139157 (n + 5) : ℚ)

end A139157

/-! ## A139157.P4766348073810812636

`∏[a(n-1)+1]+1` with `a(0)=12, a(1)=6`
-/

namespace A139157.P4766348073810812636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A139157.P4766348073810812636

namespace A139157

/-- `∏[a(n-1)+1]+1` -/
def P4766348073810812636.Spec : Prop :=
  ∀ n, (P4766348073810812636.a n : ℤ) = A139157 (n + 5)

end A139157

/-! ## A139157.P3951372254236192656

`A129923(n)/2+1`
-/

namespace A139157.P3951372254236192656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129923 n : ℚ) / 2 + 1

end

end A139157.P3951372254236192656

namespace A139157

/-- `A129923(n)/2+1` -/
def P3951372254236192656.Spec : Prop :=
  ∀ n, P3951372254236192656.a n = (A139157 (n + 5) : ℚ)

end A139157

/-! ## A139157.P5342909055535514546

`A139185(n+5)+2`
-/

namespace A139157.P5342909055535514546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139185 (n + 5) + 2

end

end A139157.P5342909055535514546

namespace A139157

/-- `A139185(n+5)+2` -/
def P5342909055535514546.Spec : Prop :=
  ∀ n, P5342909055535514546.a n = A139157 (n + 5)

end A139157

/-! ## A139157.P15418721282652624973

`ceil(A139152(n+5)/2)`
-/

namespace A139157.P15418721282652624973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139152 (n + 5) : ℚ) / 2⌉

end

end A139157.P15418721282652624973

namespace A139157

/-- `ceil(A139152(n+5)/2)` -/
def P15418721282652624973.Spec : Prop :=
  ∀ n, P15418721282652624973.a n = A139157 (n + 5)

end A139157

/-! ## A139157.P3581994910834825431

`(A139175(n+5)+3)/2`
-/

namespace A139157.P3581994910834825431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139175 (n + 5) + 3 : ℚ) / 2

end

end A139157.P3581994910834825431

namespace A139157

/-- `(A139175(n+5)+3)/2` -/
def P3581994910834825431.Spec : Prop :=
  ∀ n, P3581994910834825431.a n = (A139157 (n + 5) : ℚ)

end A139157

/-! ## A139157.P137193314138732713

`2*∏[A028310(n)+5]+1`
-/

namespace A139157.P137193314138732713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A139157.P137193314138732713

namespace A139157

/-- `2*∏[A028310(n)+5]+1` -/
def P137193314138732713.Spec : Prop :=
  ∀ n, P137193314138732713.a n = A139157 (n + 5)

end A139157

/-! ## A139157.P3133395445577810473

`3*∏[A009005(n+1)+1]+1`
-/

namespace A139157.P3133395445577810473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∏ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A139157.P3133395445577810473

namespace A139157

/-- `3*∏[A009005(n+1)+1]+1` -/
def P3133395445577810473.Spec : Prop :=
  ∀ n, P3133395445577810473.a n = A139157 (n + 5)

end A139157

/-! ## A139157.P2783970931219530234

`xor(A129923(n)/2, A007318(∑[n]))`
-/

namespace A139157.P2783970931219530234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A129923 n : ℚ) / 2)) (A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A139157.P2783970931219530234

namespace A139157

/-- `xor(A129923(n)/2, A007318(∑[n]))` -/
def P2783970931219530234.Spec : Prop :=
  ∀ n, P2783970931219530234.a n = A139157 (n + 5)

end A139157

/-!
# A139158: Triangle a(n,k) of the expansion coefficients of the Hermite polynomial 2*H(n/2,x) if n even, of H((n-1)/2,x)+H((n+1)/2,x) if n odd.

The programs for A139158, there is no canonical definition to state claims against.
-/

/-! ## A139158.P2576172153731756685

`A139146(n+1)*A329683(A129921(n))`
-/

namespace A139158.P2576172153731756685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139146 (n + 1) * A329683 (A129921 n).toNat

end

end A139158.P2576172153731756685

/-!
# A139159: a(n) = prime(n)! + 1.

The programs for A139159, the canonical program `A139159.P14708615725602417822` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139159 has offset 1).

The definition of A139159 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139159.P14708615725602417822

`A039716(n+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139159

/-- `A039716(n+1)+1` -/
def P14708615725602417822.Spec : Prop :=
  ∀ n, P14708615725602417822.a n = A139159 (n + 1)

theorem P14708615725602417822.correct : P14708615725602417822.Spec := by
  intro n
  simp only [A139159, Nat.add_sub_cancel]

end A139159

/-! ## A139159.P5749162809182932496

`p?[comp[n²]]!+1`
-/

namespace A139159.P5749162809182932496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A139159.P5749162809182932496

namespace A139159

/-- `p?[comp[n²]]!+1` -/
def P5749162809182932496.Spec : Prop :=
  ∀ n, (P5749162809182932496.a n : ℤ) = A139159 (n + 1)

end A139159

/-! ## A139159.P12758795288650749486

`xor(1, p?[comp[n²]]!)`
-/

namespace A139159.P12758795288650749486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A139159.P12758795288650749486

namespace A139159

/-- `xor(1, p?[comp[n²]]!)` -/
def P12758795288650749486.Spec : Prop :=
  ∀ n, (P12758795288650749486.a n : ℤ) = A139159 (n + 1)

end A139159

/-! ## A139159.P8073170544581265865

`eq[1, ∑{e}[n, #]]!+1`
-/

namespace A139159.P8073170544581265865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A139159.P8073170544581265865

namespace A139159

/-- `eq[1, ∑{e}[n, #]]!+1` -/
def P8073170544581265865.Spec : Prop :=
  ∀ n, (P8073170544581265865.a n : ℤ) = A139159 (n + 1)

end A139159

/-! ## A139159.P16194709089303081062

`or(1, p?[abs(xor(n, -2))]!)`
-/

namespace A139159.P16194709089303081062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A139159.P16194709089303081062

namespace A139159

/-- `or(1, p?[abs(xor(n, -2))]!)` -/
def P16194709089303081062.Spec : Prop :=
  ∀ n, (P16194709089303081062.a n : ℤ) = A139159 (n + 1)

end A139159

/-!
# A139160: a(n)=(prime(n)!+2)/2.

The programs for A139160, there is no canonical definition to state claims against.
-/

/-! ## A139160.P17641039478478131122

`p?[comp[n²]]!/2+1`
-/

namespace A139160.P17641039478478131122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2 + 1

end

end A139160.P17641039478478131122

/-! ## A139160.P16224257275871298698

`(p?[xor(1, n)+1]!+2)/2`
-/

namespace A139160.P16224257275871298698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 2 : ℚ) / 2

end

end A139160.P16224257275871298698

/-! ## A139160.P13779933694160557469

`(eq[2, ∏{e}[n+1, #+1]]+1)!/2+1`
-/

namespace A139160.P13779933694160557469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) : ℚ) / 2 + 1

end

end A139160.P13779933694160557469

/-! ## A139160.P12428055077472724225

`A139190(n+1)+2`
-/

namespace A139160.P12428055077472724225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139190 (n + 1) + 2

end

end A139160.P12428055077472724225

/-! ## A139160.P7103760434167127596

`ceil(A139159(n+1)/2)`
-/

namespace A139160.P7103760434167127596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139159 (n + 1) : ℚ) / 2⌉

end

end A139160.P7103760434167127596

/-!
# A139161: a(n) = prime(n)!/3 + 1.

The programs for A139161, there is no canonical definition to state claims against.
-/

/-! ## A139161.P12793247479035067384

`A139191(n+1)+2`
-/

namespace A139161.P12793247479035067384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139191 (n + 1) + 2

end

end A139161.P12793247479035067384

/-! ## A139161.P10990698574267701497

`A139150(p?[2*n+1])`
-/

namespace A139161.P10990698574267701497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139150 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A139161.P10990698574267701497

/-! ## A139161.P13960174574126606860

`2*A139164(n+2)-1`
-/

namespace A139161.P13960174574126606860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139164 (n + 2) - 1

end

end A139161.P13960174574126606860

/-! ## A139161.P2847372226973952967

`2*A139194(n+1)+3`
-/

namespace A139161.P2847372226973952967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139194 (n + 1) + 3

end

end A139161.P2847372226973952967

/-! ## A139161.P18337032964108901710

`A000040(n+2)!/3+1`
-/

namespace A139161.P18337032964108901710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 2)).toNat : ℚ) / 3 + 1

end

end A139161.P18337032964108901710

/-!
# A139162: a(n)=(prime(n)!+4)/4.

The programs for A139162, there is no canonical definition to state claims against.
-/

/-! ## A139162.P6988207949108362926

`A139192(n+3)+2`
-/

namespace A139162.P6988207949108362926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139192 (n + 3) + 2

end

end A139162.P6988207949108362926

/-! ## A139162.P18056604406992384372

`2*A139166(n+3)-1`
-/

namespace A139162.P18056604406992384372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139166 (n + 3) - 1

end

end A139162.P18056604406992384372

/-! ## A139162.P8668872271260515606

`2*A139196(n+3)+3`
-/

namespace A139162.P8668872271260515606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139196 (n + 3) + 3

end

end A139162.P8668872271260515606

/-! ## A139162.P7519894217217382271

`A000040(n+3)!/4+1`
-/

namespace A139162.P7519894217217382271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 3)).toNat : ℚ) / 4 + 1

end

end A139162.P7519894217217382271

/-! ## A139162.P16314461720999246754

`A139151(A000040(n+3))`
-/

namespace A139162.P16314461720999246754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139151 (A000040 (n + 3)).toNat

end

end A139162.P16314461720999246754

/-!
# A139163: a(n) = (prime(n)!+5)/5.

The programs for A139163, there is no canonical definition to state claims against.
-/

/-! ## A139163.P15436180614061062065

`A139193(n+1)+2`
-/

namespace A139163.P15436180614061062065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139193 (n + 1) + 2

end

end A139163.P15436180614061062065

/-! ## A139163.P16221816991425403274

`2*A139168(n+3)-1`
-/

namespace A139163.P16221816991425403274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139168 (n + 3) - 1

end

end A139163.P16221816991425403274

/-! ## A139163.P12661775067101837422

`2*A139198(n+3)+3`
-/

namespace A139163.P12661775067101837422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139198 (n + 3) + 3

end

end A139163.P12661775067101837422

/-! ## A139163.P6087098281954336741

`A000040(n+3)!/5+1`
-/

namespace A139163.P6087098281954336741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 3)).toNat : ℚ) / 5 + 1

end

end A139163.P6087098281954336741

/-! ## A139163.P11495713226026072907

`A139175(A000040(n+3))+2`
-/

namespace A139163.P11495713226026072907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139175 (A000040 (n + 3)).toNat + 2

end

end A139163.P11495713226026072907

/-!
# A139164: a(n) = (prime(n)!+6)/6.

The programs for A139164, there is no canonical definition to state claims against.
-/

/-! ## A139164.P12498371680747390883

`A139194(n+1)+2`
-/

namespace A139164.P12498371680747390883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139194 (n + 1) + 2

end

end A139164.P12498371680747390883

/-! ## A139164.P8783050963666196271

`ceil(A139161(n+2)/2)`
-/

namespace A139164.P8783050963666196271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139161 (n + 2) : ℚ) / 2⌉

end

end A139164.P8783050963666196271

/-! ## A139164.P612513836179985812

`A139153(p?[2*n+1])`
-/

namespace A139164.P612513836179985812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139153 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A139164.P612513836179985812

/-! ## A139164.P16715220476569100700

`(A139191(n+1)+3)/2`
-/

namespace A139164.P16715220476569100700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139191 (n + 1) + 3 : ℚ) / 2

end

end A139164.P16715220476569100700

/-! ## A139164.P8761789519255579210

`A000040(n+2)!/6+1`
-/

namespace A139164.P8761789519255579210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 2)).toNat : ℚ) / 6 + 1

end

end A139164.P8761789519255579210

/-!
# A139165: 

The programs for A139165, there is no canonical definition to state claims against.
-/

/-! ## A139165.P17631748812600657529

`A139154(p?[comp[A093637(n)+1]])`
-/

namespace A139165.P17631748812600657529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093637 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139154 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A139165.P17631748812600657529

/-! ## A139165.P7746909658814993917

`A139154(p?[comp[A178833(n+1)]])`
-/

namespace A139165.P7746909658814993917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178833 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139154 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A139165.P7746909658814993917

/-! ## A139165.P15986553265961800377

`A139154(p?[comp[A139134(n)+2]])`
-/

namespace A139165.P15986553265961800377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139134 n + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139154 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A139165.P15986553265961800377

/-!
# A139166: a(n) = (prime(n)!+8)/8.

The programs for A139166, there is no canonical definition to state claims against.
-/

/-! ## A139166.P10117052101282750179

`A139196(n+3)+2`
-/

namespace A139166.P10117052101282750179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139196 (n + 3) + 2

end

end A139166.P10117052101282750179

/-! ## A139166.P18355480837840917018

`ceil(A139162(n+3)/2)`
-/

namespace A139166.P18355480837840917018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139162 (n + 3) : ℚ) / 2⌉

end

end A139166.P18355480837840917018

/-! ## A139166.P11191816294690723651

`(A139192(n+3)+3)/2`
-/

namespace A139166.P11191816294690723651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139192 (n + 3) + 3 : ℚ) / 2

end

end A139166.P11191816294690723651

/-! ## A139166.P9265985825403250317

`A000040(n+3)!/8+1`
-/

namespace A139166.P9265985825403250317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 3)).toNat : ℚ) / 8 + 1

end

end A139166.P9265985825403250317

/-! ## A139166.P5413744841476366601

`A139155(A000040(n+3))`
-/

namespace A139166.P5413744841476366601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139155 (A000040 (n + 3)).toNat

end

end A139166.P5413744841476366601

/-!
# A139168: a(n) = (prime(n)! + 10)/10.

The programs for A139168, there is no canonical definition to state claims against.
-/

/-! ## A139168.P13610216179371950505

`A139198(n+3)+2`
-/

namespace A139168.P13610216179371950505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139198 (n + 3) + 2

end

end A139168.P13610216179371950505

/-! ## A139168.P5502299207161772239

`ceil(A139163(n+3)/2)`
-/

namespace A139168.P5502299207161772239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139163 (n + 3) : ℚ) / 2⌉

end

end A139168.P5502299207161772239

/-! ## A139168.P2171968685540811610

`(A139193(n+1)+3)/2`
-/

namespace A139168.P2171968685540811610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139193 (n + 1) + 3 : ℚ) / 2

end

end A139168.P2171968685540811610

/-! ## A139168.P224613261273743863

`A000040(n+3)!/10+1`
-/

namespace A139168.P224613261273743863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 3)).toNat : ℚ) / 10 + 1

end

end A139168.P224613261273743863

/-! ## A139168.P16935127212733215471

`A139185(A000040(n+3))+2`
-/

namespace A139168.P16935127212733215471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139185 (A000040 (n + 3)).toNat + 2

end

end A139168.P16935127212733215471

/-!
# A139169: a(n)=smallest k >= 1 such that n divides prime(k)!.

The programs for A139169, there is no canonical definition to state claims against.
-/

/-! ## A139169.P13488739831537519216

`A000720(A139171(n+1))`
-/

namespace A139169.P13488739831537519216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A139171 (n + 1)).toNat

end

end A139169.P13488739831537519216

/-! ## A139169.P13888021308245623340

`A056239(p?[A139171(n+1)])`
-/

namespace A139169.P13888021308245623340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A139169.P13888021308245623340

/-! ## A139169.P2575911544712158284

`A056239(∏{p}[A139171(n+1), #])`
-/

namespace A139169.P2575911544712158284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A139169.P2575911544712158284

/-! ## A139169.P11711489525430072120

`A230980(A002034(n+1)-1)+1`
-/

namespace A139169.P11711489525430072120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A002034 (n + 1) - 1).toNat + 1

end

end A139169.P11711489525430072120

/-! ## A139169.P11370943482064600721

`A056239(A139171(n+1)%(n+3))`
-/

namespace A139169.P11370943482064600721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A139171 (n + 1)) (n + 3 : ℤ)).toNat

end

end A139169.P11370943482064600721

/-! ## A139169.P7972219768837641099

`A056239(A139171(∑[n+1]-∑[n]))`
-/

namespace A139169.P7972219768837641099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A139171 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A139169.P7972219768837641099

/-! ## A139169.P11418156029609464641

`A056239(A139171(n+1))%A151800(n)`
-/

namespace A139169.P11418156029609464641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A139171 (n + 1)).toNat) (A151800 n)

end

end A139169.P11418156029609464641

/-! ## A139169.P10020735226150808992

`A056239(A139171(n+1)+A139171(n+1))-1`
-/

namespace A139169.P10020735226150808992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A139171 (n + 1) + A139171 (n + 1)).toNat - 1

end

end A139169.P10020735226150808992

/-! ## A139169.P12783610985472613867

`A036234(A002034(lcm(2, n+1))-1)`
-/

namespace A139169.P12783610985472613867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A002034 (Nat.lcm 2 (n + 1)) - 1).toNat

end

end A139169.P12783610985472613867

/-! ## A139169.P3067993897855470453

`A230774(A002034(n+1)²)`
-/

namespace A139169.P3067993897855470453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230774 (A002034 (n + 1) ^ 2).toNat

end

end A139169.P3067993897855470453

/-! ## A139169.P8568467089208975358

`A230774(A002034(n+1)*A002034(n+1))`
-/

namespace A139169.P8568467089208975358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230774 (A002034 (n + 1) * A002034 (n + 1)).toNat

end

end A139169.P8568467089208975358

/-!
# A139170: a(n) = A136156(n) + 1.

The programs for A139170, there is no canonical definition to state claims against.
-/

/-! ## A139170.P8985201427369195898

`A136156(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139170.P8985201427369195898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136156 (n + 1) + 1

end

end A139170.P8985201427369195898

/-! ## A139170.P17051709338310038507

`A139171(n+1)!/(n+1)+1`
-/

namespace A139170.P17051709338310038507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A139171 (n + 1)).toNat : ℚ) / (n + 1 : ℚ) + 1

end

end A139170.P17051709338310038507

/-! ## A139170.P11402631720904438371

`A000040(A139169(n+1))!/(n+1)+1`
-/

namespace A139170.P11402631720904438371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (A139169 (n + 1)).toNat).toNat : ℚ) / (n + 1 : ℚ) + 1

end

end A139170.P11402631720904438371

/-!
# A139171: a(n) = smallest prime number p such that p!/n is an integer.

The programs for A139171, there is no canonical definition to state claims against.
-/

/-! ## A139171.P9197874012638912853

`A007918(A002034(n+1))`
-/

namespace A139171.P9197874012638912853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A002034 (n + 1)).toNat

end

end A139171.P9197874012638912853

/-! ## A139171.P2066997012358940672

`A007918(A064760(n+1))`
-/

namespace A139171.P2066997012358940672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A064760 (n + 1)).toNat

end

end A139171.P2066997012358940672

/-! ## A139171.P15851812221917751492

`A000040(A139169(n+1))`
-/

namespace A139171.P15851812221917751492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A139169 (n + 1)).toNat

end

end A139171.P15851812221917751492

/-! ## A139171.P11907430099744003939

`A008578(A139169(n+1)+1)`
-/

namespace A139171.P11907430099744003939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A139169 (n + 1) + 1).toNat

end

end A139171.P11907430099744003939

/-! ## A139171.P13712123533002136290

`A151800(A002034(n+1)-1)`
-/

namespace A139171.P13712123533002136290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A002034 (n + 1) - 1).toNat

end

end A139171.P13712123533002136290

/-! ## A139171.P14595840074230682460

`A007918(n+1-A072480(n+1))`
-/

namespace A139171.P14595840074230682460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1 : ℤ) - A072480 (n + 1)).toNat

end

end A139171.P14595840074230682460

/-! ## A139171.P14134251031802789192

`A007918(A034699(n+1)-A057110(n+1))`
-/

namespace A139171.P14134251031802789192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A034699 (n + 1) - A057110 (n + 1)).toNat

end

end A139171.P14134251031802789192

/-! ## A139171.P8945401708337041987

`A057427(2*(n+1))+A006093(A139169(n+1))`
-/

namespace A139171.P8945401708337041987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 1)) + A006093 (A139169 (n + 1)).toNat

end

end A139171.P8945401708337041987

/-! ## A139171.P9027998586640833808

`A230775(A002034(n+1)²)`
-/

namespace A139171.P9027998586640833808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A002034 (n + 1) ^ 2).toNat

end

end A139171.P9027998586640833808

/-!
# A139172: a(n) = n!/2 - 1.

The programs for A139172, the canonical program `A139172.P9257642213506398662` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139172 has offset 2).

The definition of A139172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139172.P9257642213506398662

`(n+2)*(a(n-1)+1)-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139172

/-- `(n+2)*(a(n-1)+1)-1` -/
def P9257642213506398662.Spec : Prop :=
  ∀ n, P9257642213506398662.a n = A139172 (n + 2)

theorem P9257642213506398662.correct : P9257642213506398662.Spec := by
  intro n
  simp only [A139172, Nat.add_sub_cancel]

end A139172

/-! ## A139172.P18014556774168766662

`(n+2)!/2-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139172.P18014556774168766662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / 2 - 1

end

end A139172.P18014556774168766662

namespace A139172

/-- `(n+2)!/2-1` -/
def P18014556774168766662.Spec : Prop :=
  ∀ n, P18014556774168766662.a n = (A139172 (n + 2) : ℚ)

end A139172

/-! ## A139172.P10051789248170701046

`n!*∑[n+1]-1`
-/

namespace A139172.P10051789248170701046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A139172.P10051789248170701046

namespace A139172

/-- `n!*∑[n+1]-1` -/
def P10051789248170701046.Spec : Prop :=
  ∀ n, P10051789248170701046.a n = A139172 (n + 2)

end A139172

/-! ## A139172.P17209897608645604459

`∏[n+2-floor(acot(n))]-1`
-/

namespace A139172.P17209897608645604459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A139172.P17209897608645604459

namespace A139172

/-- `∏[n+2-floor(acot(n))]-1` -/
def P17209897608645604459.Spec : Prop :=
  ∀ n, P17209897608645604459.a n = A139172 (n + 2)

end A139172

/-! ## A139172.P11579028591469524303

`∏[(n+2)^ceil(tanh(n))]-1`
-/

namespace A139172.P11579028591469524303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (⌈Real.tanh (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A139172.P11579028591469524303

namespace A139172

/-- `∏[(n+2)^ceil(tanh(n))]-1` -/
def P11579028591469524303.Spec : Prop :=
  ∀ n, P11579028591469524303.a n = (A139172 (n + 2) : ℚ)

end A139172

/-! ## A139172.P14284796944360594573

`∏[a(n-1)+1]-1` with `a(0)=1, a(1)=3`
-/

namespace A139172.P14284796944360594573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A139172.P14284796944360594573

namespace A139172

/-- `∏[a(n-1)+1]-1` -/
def P14284796944360594573.Spec : Prop :=
  ∀ n, P14284796944360594573.a n = A139172 (n + 2)

end A139172

/-! ## A139172.P5852261452745125613

`∏[ceil(sqrt(∑[2*n]))+1]-1`
-/

namespace A139172.P5852261452745125613
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A139172.P5852261452745125613

namespace A139172

/-- `∏[ceil(sqrt(∑[2*n]))+1]-1` -/
def P5852261452745125613.Spec : Prop :=
  ∀ n, P5852261452745125613.a n = A139172 (n + 2)

end A139172

/-! ## A139172.P3907545997826356550

`∑[floor((n+1)/2*(n+1)!)]`
-/

namespace A139172.P3907545997826356550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2 * (Nat.factorial (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139172.P3907545997826356550

namespace A139172

/-- `∑[floor((n+1)/2*(n+1)!)]` -/
def P3907545997826356550.Spec : Prop :=
  ∀ n, P3907545997826356550.a n = A139172 (n + 2)

end A139172

/-!
# A139173: a(n) = n!/3 - 1.

The programs for A139173, the canonical program `A139173.P10846667605477271443` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139173 has offset 3).

The definition of A139173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139173.P10846667605477271443

`(n+3)!/3-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139173

/-- `(n+3)!/3-1` -/
def P10846667605477271443.Spec : Prop :=
  ∀ n, P10846667605477271443.a n = (A139173 (n + 3) : ℚ)

end A139173

/-! ## A139173.P8847196134711895490

`2/3*∏[n+3]-1`
-/

namespace A139173.P8847196134711895490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - 1

end

end A139173.P8847196134711895490

namespace A139173

/-- `2/3*∏[n+3]-1` -/
def P8847196134711895490.Spec : Prop :=
  ∀ n, P8847196134711895490.a n = (A139173 (n + 3) : ℚ)

end A139173

/-! ## A139173.P11911342003534495456

`floor(∑[(n+2)/3*(n+2)!])`
-/

namespace A139173.P11911342003534495456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 3 * (Nat.factorial (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A139173.P11911342003534495456

namespace A139173

/-- `floor(∑[(n+2)/3*(n+2)!])` -/
def P11911342003534495456.Spec : Prop :=
  ∀ n, P11911342003534495456.a n = A139173 (n + 3)

end A139173

/-! ## A139173.P10012874541172159409

`∑[round((n+2)/3*(n+2)!)]`
-/

namespace A139173.P10012874541172159409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / 3 * (Nat.factorial (n + 2) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139173.P10012874541172159409

namespace A139173

/-- `∑[round((n+2)/3*(n+2)!)]` -/
def P10012874541172159409.Spec : Prop :=
  ∀ n, P10012874541172159409.a n = A139173 (n + 3)

end A139173

/-! ## A139173.P15350189910300317541

`∑[record[Δ[n*a(n-1)]]]` with `a(0)=3, a(1)=4, a(2)=5, a(3)=2`
-/

namespace A139173.P15350189910300317541
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 5, 2] fun n f3 =>
  n * f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139173.P15350189910300317541

namespace A139173

/-- `∑[record[Δ[n*a(n-1)]]]` -/
def P15350189910300317541.Spec : Prop :=
  ∀ n, P15350189910300317541.a n = A139173 (n + 3)

end A139173

/-! ## A139173.P15032478468481680526

`or(2, (n+3)*a(n-1)+n)` with `a(0)=1`
-/

namespace A139173.P15032478468481680526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 2 ((n + 3) * a (n - 1) + n)

end

end A139173.P15032478468481680526

namespace A139173

/-- `or(2, (n+3)*a(n-1)+n)` -/
def P15032478468481680526.Spec : Prop :=
  ∀ n, (P15032478468481680526.a n : ℤ) = A139173 (n + 3)

end A139173

/-! ## A139173.P14961610804884503329

`xor(2, (n+3)*a(n-1)+n)` with `a(0)=1`
-/

namespace A139173.P14961610804884503329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 2 ((n + 3) * a (n - 1) + n)

end

end A139173.P14961610804884503329

namespace A139173

/-- `xor(2, (n+3)*a(n-1)+n)` -/
def P14961610804884503329.Spec : Prop :=
  ∀ n, (P14961610804884503329.a n : ℤ) = A139173 (n + 3)

end A139173

/-! ## A139173.P5630350810142167571

`floor((n+3)*a(n-1)+2+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A139173.P5630350810142167571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 3) * a (n - 1) + 2 + n

end

end A139173.P5630350810142167571

namespace A139173

/-- `floor((n+3)*a(n-1)+2+n)` -/
def P5630350810142167571.Spec : Prop :=
  ∀ n, (P5630350810142167571.a n : ℤ) = A139173 (n + 3)

end A139173

/-! ## A139173.P2284374068203310963

`Δ[∑[(n+2)*a(n-1)]-n]` with `a(0)=0, a(1)=2`
-/

namespace A139173.P2284374068203310963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  (n + 2) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139173.P2284374068203310963

namespace A139173

/-- `Δ[∑[(n+2)*a(n-1)]-n]` -/
def P2284374068203310963.Spec : Prop :=
  ∀ n, P2284374068203310963.a n = A139173 (n + 3)

end A139173

/-! ## A139173.P5606011896665797699

`(a(n-1)+(n+2)/(n+3))*(n+3)` with `a(0)=1`
-/

namespace A139173.P5606011896665797699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (n + 2 : ℚ) / (n + 3 : ℚ)) * (n + 3 : ℚ)

end

end A139173.P5606011896665797699

namespace A139173

/-- `(a(n-1)+(n+2)/(n+3))*(n+3)` -/
def P5606011896665797699.Spec : Prop :=
  ∀ n, P5606011896665797699.a n = (A139173 (n + 3) : ℚ)

end A139173

/-!
# A139174: a(n) = (n!-4)/4.

The programs for A139174, the canonical program `A139174.P4389456424274336810` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139174 has offset 4).

The definition of A139174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139174.P4389456424274336810

`((n+4)!-4)/4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139174

/-- `((n+4)!-4)/4` -/
def P4389456424274336810.Spec : Prop :=
  ∀ n, P4389456424274336810.a n = (A139174 (n + 4) : ℚ)

end A139174

/-! ## A139174.P7997252383714930653

`∏[abs(1-n)+5]-1`
-/

namespace A139174.P7997252383714930653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A139174.P7997252383714930653

namespace A139174

/-- `∏[abs(1-n)+5]-1` -/
def P7997252383714930653.Spec : Prop :=
  ∀ n, P7997252383714930653.a n = A139174 (n + 4)

end A139174

/-! ## A139174.P14781005405422172545

`∑[ceil((n+3)/4*(n+3)!)]`
-/

namespace A139174.P14781005405422172545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) / 4 * (Nat.factorial (n + 3) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139174.P14781005405422172545

namespace A139174

/-- `∑[ceil((n+3)/4*(n+3)!)]` -/
def P14781005405422172545.Spec : Prop :=
  ∀ n, P14781005405422172545.a n = A139174 (n + 4)

end A139174

/-! ## A139174.P1682697476130975635

`∑[round((n+3)/4*(n+3)!)]`
-/

namespace A139174.P1682697476130975635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 3 : ℚ) / 4 * (Nat.factorial (n + 3) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139174.P1682697476130975635

namespace A139174

/-- `∑[round((n+3)/4*(n+3)!)]` -/
def P1682697476130975635.Spec : Prop :=
  ∀ n, P1682697476130975635.a n = A139174 (n + 4)

end A139174

/-! ## A139174.P13159254970719591355

`abs(2-A139151(n+4))`
-/

namespace A139174.P13159254970719591355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A139151 (n + 4)|

end

end A139174.P13159254970719591355

namespace A139174

/-- `abs(2-A139151(n+4))` -/
def P13159254970719591355.Spec : Prop :=
  ∀ n, P13159254970719591355.a n = A139174 (n + 4)

end A139174

/-!
# A139175: a(n) = (n! - 5)/5.

The programs for A139175, the canonical program `A139175.P7915671891485856204` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139175 has offset 5).

The definition of A139175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139175.P7915671891485856204

`((n+5)!-5)/5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139175

/-- `((n+5)!-5)/5` -/
def P7915671891485856204.Spec : Prop :=
  ∀ n, P7915671891485856204.a n = (A139175 (n + 5) : ℚ)

end A139175

/-! ## A139175.P344270388020768840

`24*∏[n+5]/5-1`
-/

namespace A139175.P344270388020768840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  24 * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5) - 1

end

end A139175.P344270388020768840

namespace A139175

/-- `24*∏[n+5]/5-1` -/
def P344270388020768840.Spec : Prop :=
  ∀ n, P344270388020768840.a n = (A139175 (n + 5) : ℚ)

end A139175

/-! ## A139175.P13204525034890587117

`abs(1-A129923(n))`
-/

namespace A139175.P13204525034890587117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A129923 n|

end

end A139175.P13204525034890587117

namespace A139175

/-- `abs(1-A129923(n))` -/
def P13204525034890587117.Spec : Prop :=
  ∀ n, P13204525034890587117.a n = A139175 (n + 5)

end A139175

/-! ## A139175.P9190141773801081590

`abs(2-A139152(n+5))`
-/

namespace A139175.P9190141773801081590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A139152 (n + 5)|

end

end A139175.P9190141773801081590

namespace A139175

/-- `abs(2-A139152(n+5))` -/
def P9190141773801081590.Spec : Prop :=
  ∀ n, P9190141773801081590.a n = A139175 (n + 5)

end A139175

/-! ## A139175.P3665710562269876165

`or(A129923(n)-1, A000038(n))`
-/

namespace A139175.P3665710562269876165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129923 n - 1) (A000038 n)

end

end A139175.P3665710562269876165

namespace A139175

/-- `or(A129923(n)-1, A000038(n))` -/
def P3665710562269876165.Spec : Prop :=
  ∀ n, P3665710562269876165.a n = A139175 (n + 5)

end A139175

/-! ## A139175.P9238622054365767247

`or(A129923(n)-1, A000096(n))`
-/

namespace A139175.P9238622054365767247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129923 n - 1) (A000096 n)

end

end A139175.P9238622054365767247

namespace A139175

/-- `or(A129923(n)-1, A000096(n))` -/
def P9238622054365767247.Spec : Prop :=
  ∀ n, P9238622054365767247.a n = A139175 (n + 5)

end A139175

/-! ## A139175.P14811638966357741558

`or(A129923(n)-1, A000040(n+1))`
-/

namespace A139175.P14811638966357741558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129923 n - 1) (A000040 (n + 1))

end

end A139175.P14811638966357741558

namespace A139175

/-- `or(A129923(n)-1, A000040(n+1))` -/
def P14811638966357741558.Spec : Prop :=
  ∀ n, P14811638966357741558.a n = A139175 (n + 5)

end A139175

/-! ## A139175.P7084014992651681393

`(A129923(n)-1)/A007913((n+1)²)`
-/

namespace A139175.P7084014992651681393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129923 n - 1 : ℚ) / (A007913 ((n + 1) ^ 2) : ℚ)

end

end A139175.P7084014992651681393

namespace A139175

/-- `(A129923(n)-1)/A007913((n+1)²)` -/
def P7084014992651681393.Spec : Prop :=
  ∀ n, P7084014992651681393.a n = (A139175 (n + 5) : ℚ)

end A139175

/-! ## A139175.P11399972147786151406

`lcm(A129923(n)-1, A317939(A001358(n+1)))`
-/

namespace A139175.P11399972147786151406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129923 n - 1) (A317939 (A001358 (n + 1)).toNat)

end

end A139175.P11399972147786151406

namespace A139175

/-- `lcm(A129923(n)-1, A317939(A001358(n+1)))` -/
def P11399972147786151406.Spec : Prop :=
  ∀ n, (P11399972147786151406.a n : ℤ) = A139175 (n + 5)

end A139175

/-! ## A139175.P286468549489034075

`-(A070201(A253641(n)+1)-A139152(n+5)+2)`
-/

namespace A139175.P286468549489034075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A070201 (A253641 n + 1).toNat - A139152 (n + 5) + 2)

end

end A139175.P286468549489034075

namespace A139175

/-- `-(A070201(A253641(n)+1)-A139152(n+5)+2)` -/
def P286468549489034075.Spec : Prop :=
  ∀ n, P286468549489034075.a n = A139175 (n + 5)

end A139175

/-!
# A139176: a(n) = (n! - 6)/6.

The programs for A139176, the canonical program `A139176.P3331549257962755377` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139176 has offset 3).

The definition of A139176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139176.P3331549257962755377

`((n+3)!-6)/6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139176

/-- `((n+3)!-6)/6` -/
def P3331549257962755377.Spec : Prop :=
  ∀ n, P3331549257962755377.a n = (A139176 (n + 3) : ℚ)

end A139176

/-! ## A139176.P16634796198222886200

`∏[n+3]/3-1`
-/

namespace A139176.P16634796198222886200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 - 1

end

end A139176.P16634796198222886200

namespace A139176

/-- `∏[n+3]/3-1` -/
def P16634796198222886200.Spec : Prop :=
  ∀ n, P16634796198222886200.a n = (A139176 (n + 3) : ℚ)

end A139176

/-! ## A139176.P2881618193208155478

`xor(-1, -∏[n+3]/3)`
-/

namespace A139176.P2881618193208155478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (SequenceMachineLib.roundAway (-(((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3)))

end

end A139176.P2881618193208155478

namespace A139176

/-- `xor(-1, -∏[n+3]/3)` -/
def P2881618193208155478.Spec : Prop :=
  ∀ n, P2881618193208155478.a n = A139176 (n + 3)

end A139176

/-! ## A139176.P15855384297546738214

`abs(n!*C(n+3, 3)-1)`
-/

namespace A139176.P15855384297546738214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n * Nat.choose (n + 3) 3 : ℤ) - 1|

end

end A139176.P15855384297546738214

namespace A139176

/-- `abs(n!*C(n+3, 3)-1)` -/
def P15855384297546738214.Spec : Prop :=
  ∀ n, P15855384297546738214.a n = A139176 (n + 3)

end A139176

/-! ## A139176.P2321556117342706620

`abs(1-n!*∑[∑[n+1]])`
-/

namespace A139176.P2321556117342706620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)|

end

end A139176.P2321556117342706620

namespace A139176

/-- `abs(1-n!*∑[∑[n+1]])` -/
def P2321556117342706620.Spec : Prop :=
  ∀ n, P2321556117342706620.a n = A139176 (n + 3)

end A139176

/-! ## A139176.P8598922257977947993

`abs(∏[a(n-1)+1]-1)` with `a(0)=1, a(1)=4`
-/

namespace A139176.P8598922257977947993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1|

end

end A139176.P8598922257977947993

namespace A139176

/-- `abs(∏[a(n-1)+1]-1)` -/
def P8598922257977947993.Spec : Prop :=
  ∀ n, P8598922257977947993.a n = A139176 (n + 3)

end A139176

/-! ## A139176.P2487906565966143364

`or(2, (n+3)*a(n-1)+n)` with `a(0)=0`
-/

namespace A139176.P2487906565966143364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 2 ((n + 3) * a (n - 1) + n)

end

end A139176.P2487906565966143364

namespace A139176

/-- `or(2, (n+3)*a(n-1)+n)` -/
def P2487906565966143364.Spec : Prop :=
  ∀ n, (P2487906565966143364.a n : ℤ) = A139176 (n + 3)

end A139176

/-! ## A139176.P12875427995877122519

`∑[Δ[(n+2)*a(n-1)]/2]` with `a(0)=2, a(1)=2`
-/

namespace A139176.P12875427995877122519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  (n + 2) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139176.P12875427995877122519

namespace A139176

/-- `∑[Δ[(n+2)*a(n-1)]/2]` -/
def P12875427995877122519.Spec : Prop :=
  ∀ n, P12875427995877122519.a n = (A139176 (n + 3) : ℚ)

end A139176

/-! ## A139176.P1120025073729762497

`abs((n+3)*a(n-1)+n+2)` with `a(0)=0`
-/

namespace A139176.P1120025073729762497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 3) * a (n - 1) + (n + 2)

end

end A139176.P1120025073729762497

namespace A139176

/-- `abs((n+3)*a(n-1)+n+2)` -/
def P1120025073729762497.Spec : Prop :=
  ∀ n, (P1120025073729762497.a n : ℤ) = A139176 (n + 3)

end A139176

/-! ## A139176.P8910940920041352677

`floor((n+3)*a(n-1)+2+n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A139176.P8910940920041352677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 3) * a (n - 1) + 2 + n

end

end A139176.P8910940920041352677

namespace A139176

/-- `floor((n+3)*a(n-1)+2+n)` -/
def P8910940920041352677.Spec : Prop :=
  ∀ n, (P8910940920041352677.a n : ℤ) = A139176 (n + 3)

end A139176

/-!
# A139177: a(n) = (n! - 7)/7.

The programs for A139177, the canonical program `A139177.P4420276472244323298` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139177 has offset 7).

The definition of A139177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139177.P4420276472244323298

`((n+7)!-7)/7`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139177

/-- `((n+7)!-7)/7` -/
def P4420276472244323298.Spec : Prop :=
  ∀ n, P4420276472244323298.a n = (A139177 (n + 7) : ℚ)

end A139177

/-! ## A139177.P154651050447302767

`A139154(n+7)-2`
-/

namespace A139177.P154651050447302767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139154 (n + 7) - 2

end

end A139177.P154651050447302767

namespace A139177

/-- `A139154(n+7)-2` -/
def P154651050447302767.Spec : Prop :=
  ∀ n, P154651050447302767.a n = A139177 (n + 7)

end A139177

/-! ## A139177.P11472801517421216809

`A000142(n+7)/7-1`
-/

namespace A139177.P11472801517421216809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 7) : ℚ) / 7 - 1

end

end A139177.P11472801517421216809

namespace A139177

/-- `A000142(n+7)/7-1` -/
def P11472801517421216809.Spec : Prop :=
  ∀ n, P11472801517421216809.a n = (A139177 (n + 7) : ℚ)

end A139177

/-! ## A139177.P13544276501817917441

`A010815(Δ[A004773(n)])+A000142(n+7)/7`
-/

namespace A139177.P13544276501817917441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 (f1 (n + 1) - f1 n).toNat : ℚ) + (A000142 (n + 7) : ℚ) / 7

end

end A139177.P13544276501817917441

namespace A139177

/-- `A010815(Δ[A004773(n)])+A000142(n+7)/7` -/
def P13544276501817917441.Spec : Prop :=
  ∀ n, P13544276501817917441.a n = (A139177 (n + 7) : ℚ)

end A139177

/-! ## A139177.P14912194438697958916

`A305974(A005384(n+1))+A000142(n+7)/7`
-/

namespace A139177.P14912194438697958916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305974 (A005384 (n + 1)).toNat : ℚ) + (A000142 (n + 7) : ℚ) / 7

end

end A139177.P14912194438697958916

namespace A139177

/-- `A305974(A005384(n+1))+A000142(n+7)/7` -/
def P14912194438697958916.Spec : Prop :=
  ∀ n, P14912194438697958916.a n = (A139177 (n + 7) : ℚ)

end A139177

/-!
# A139179: Number of non-fourth-powers <= n.

The programs for A139179, the canonical program `A139179.P5646755501633390861` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139179 has offset 0).

The definition of A139179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139179.P5646755501633390861

`n-floor(n^(1/4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139179

/-- `n-floor(n^(1/4))` -/
def P5646755501633390861.Spec : Prop :=
  ∀ n, P5646755501633390861.a n = A139179 n

theorem P5646755501633390861.correct : P5646755501633390861.Spec := by
  intro n
  simp only [A139179]

end A139179

/-! ## A139179.P3620300092808843336

`∑[xor(1, char[n²²])]`
-/

namespace A139179.P3620300092808843336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139179.P3620300092808843336

namespace A139179

/-- `∑[xor(1, char[n²²])]` -/
def P3620300092808843336.Spec : Prop :=
  ∀ n, (P3620300092808843336.a n : ℤ) = A139179 n

end A139179

/-! ## A139179.P16889293306598867039

`∑[dr(1-char[n²²])]`
-/

namespace A139179.P16889293306598867039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139179.P16889293306598867039

namespace A139179

/-- `∑[dr(1-char[n²²])]` -/
def P16889293306598867039.Spec : Prop :=
  ∀ n, (P16889293306598867039.a n : ℤ) = A139179 n

end A139179

/-! ## A139179.P6736794300521781344

`∑[1-A374016(n)]`
-/

namespace A139179.P6736794300521781344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A374016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139179.P6736794300521781344

namespace A139179

/-- `∑[1-A374016(n)]` -/
def P6736794300521781344.Spec : Prop :=
  ∀ n, P6736794300521781344.a n = A139179 n

end A139179

/-! ## A139179.P5079340681253967556

`round(n-sqrt(A135662(n+1)))`
-/

namespace A139179.P5079340681253967556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (A135662 (n + 1) : ℝ))

end

end A139179.P5079340681253967556

namespace A139179

/-- `round(n-sqrt(A135662(n+1)))` -/
def P5079340681253967556.Spec : Prop :=
  ∀ n, P5079340681253967556.a n = A139179 n

end A139179

/-! ## A139179.P10293179999268908450

`(2*n)%A133137(n+1)`
-/

namespace A139179.P10293179999268908450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A133137 (n + 1))

end

end A139179.P10293179999268908450

namespace A139179

/-- `(2*n)%A133137(n+1)` -/
def P10293179999268908450.Spec : Prop :=
  ∀ n, P10293179999268908450.a n = A139179 n

end A139179

/-!
# A139183: a(n) = (n! - 8)/8.

The programs for A139183, the canonical program `A139183.P2016555765250567333` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139183 has offset 4).

The definition of A139183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139183.P2016555765250567333

`((n+4)!-8)/8`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139183

/-- `((n+4)!-8)/8` -/
def P2016555765250567333.Spec : Prop :=
  ∀ n, P2016555765250567333.a n = (A139183 (n + 4) : ℚ)

end A139183

/-! ## A139183.P1098543386880576176

`3*∏[n+4]/4-1`
-/

namespace A139183.P1098543386880576176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4) - 1

end

end A139183.P1098543386880576176

namespace A139183

/-- `3*∏[n+4]/4-1` -/
def P1098543386880576176.Spec : Prop :=
  ∀ n, P1098543386880576176.a n = (A139183 (n + 4) : ℚ)

end A139183

/-! ## A139183.P8900624558618628692

`abs(∏[a(n-1)+1]-1)` with `a(0)=3, a(1)=5`
-/

namespace A139183.P8900624558618628692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1|

end

end A139183.P8900624558618628692

namespace A139183

/-- `abs(∏[a(n-1)+1]-1)` -/
def P8900624558618628692.Spec : Prop :=
  ∀ n, P8900624558618628692.a n = A139183 (n + 4)

end A139183

/-! ## A139183.P4679192015916146596

`floor(∑[ceil((n+3)/4*(n+3)!)]/2)`
-/

namespace A139183.P4679192015916146596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) / 4 * (Nat.factorial (n + 3) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A139183.P4679192015916146596

namespace A139183

/-- `floor(∑[ceil((n+3)/4*(n+3)!)]/2)` -/
def P4679192015916146596.Spec : Prop :=
  ∀ n, P4679192015916146596.a n = A139183 (n + 4)

end A139183

/-! ## A139183.P6931911179153342562

`floor(∑[round((n+3)/4*(n+3)!)]/2)`
-/

namespace A139183.P6931911179153342562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 3 : ℚ) / 4 * (Nat.factorial (n + 3) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A139183.P6931911179153342562

namespace A139183

/-- `floor(∑[round((n+3)/4*(n+3)!)]/2)` -/
def P6931911179153342562.Spec : Prop :=
  ∀ n, P6931911179153342562.a n = A139183 (n + 4)

end A139183

/-! ## A139183.P6289449549346711931

`abs(2-A139155(n+4))`
-/

namespace A139183.P6289449549346711931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A139155 (n + 4)|

end

end A139183.P6289449549346711931

namespace A139183

/-- `abs(2-A139155(n+4))` -/
def P6289449549346711931.Spec : Prop :=
  ∀ n, P6289449549346711931.a n = A139183 (n + 4)

end A139183

/-! ## A139183.P8765518543675602003

`floor(A139174(n+4)/2)`
-/

namespace A139183.P8765518543675602003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139174 (n + 4) : ℚ) / 2⌋

end

end A139183.P8765518543675602003

namespace A139183

/-- `floor(A139174(n+4)/2)` -/
def P8765518543675602003.Spec : Prop :=
  ∀ n, P8765518543675602003.a n = A139183 (n + 4)

end A139183

/-! ## A139183.P11238980451721942837

`(A139151(n+4)-3)/2`
-/

namespace A139183.P11238980451721942837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139151 (n + 4) - 3 : ℚ) / 2

end

end A139183.P11238980451721942837

namespace A139183

/-- `(A139151(n+4)-3)/2` -/
def P11238980451721942837.Spec : Prop :=
  ∀ n, P11238980451721942837.a n = (A139183 (n + 4) : ℚ)

end A139183

/-! ## A139183.P11060812248985015498

`abs(1-∏[A009005(n+1)])`
-/

namespace A139183.P11060812248985015498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∏ j ∈ Finset.range (n + 1), f1 j|

end

end A139183.P11060812248985015498

namespace A139183

/-- `abs(1-∏[A009005(n+1)])` -/
def P11060812248985015498.Spec : Prop :=
  ∀ n, P11060812248985015498.a n = A139183 (n + 4)

end A139183

/-! ## A139183.P13154523257292923576

`ceil((3-ceil((9-A188588(n+3))/2))/2)`
-/

namespace A139183.P13154523257292923576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 - ⌈(9 - A188588 (n + 3) : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A139183.P13154523257292923576

namespace A139183

/-- `ceil((3-ceil((9-A188588(n+3))/2))/2)` -/
def P13154523257292923576.Spec : Prop :=
  ∀ n, P13154523257292923576.a n = A139183 (n + 4)

end A139183

/-!
# A139184: a(n) = (n! - 9)/9.

The programs for A139184, the canonical program `A139184.P4156465304544441237` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139184 has offset 6).

The definition of A139184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139184.P4156465304544441237

`((n+6)!-9)/9`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139184

/-- `((n+6)!-9)/9` -/
def P4156465304544441237.Spec : Prop :=
  ∀ n, P4156465304544441237.a n = (A139184 (n + 6) : ℚ)

end A139184

/-! ## A139184.P12299391970399960973

`A139156(n+6)-2`
-/

namespace A139184.P12299391970399960973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139156 (n + 6) - 2

end

end A139184.P12299391970399960973

namespace A139184

/-- `A139156(n+6)-2` -/
def P12299391970399960973.Spec : Prop :=
  ∀ n, P12299391970399960973.a n = A139184 (n + 6)

end A139184

/-! ## A139184.P6227589332696976908

`xor(n, -1)+(n+6)!/9+n`
-/

namespace A139184.P6227589332696976908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (-1) : ℚ) + ((Nat.factorial (n + 6) : ℚ) / 9 + (n : ℚ))

end

end A139184.P6227589332696976908

namespace A139184

/-- `xor(n, -1)+(n+6)!/9+n` -/
def P6227589332696976908.Spec : Prop :=
  ∀ n, P6227589332696976908.a n = (A139184 (n + 6) : ℚ)

end A139184

/-! ## A139184.P8106856230634736696

`A000142(n+6)/9-1`
-/

namespace A139184.P8106856230634736696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 6) : ℚ) / 9 - 1

end

end A139184.P8106856230634736696

namespace A139184

/-- `A000142(n+6)/9-1` -/
def P8106856230634736696.Spec : Prop :=
  ∀ n, P8106856230634736696.a n = (A139184 (n + 6) : ℚ)

end A139184

/-! ## A139184.P5470476165080501116

`A321804(A070562(n))+(n+6)!/9`
-/

namespace A139184.P5470476165080501116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321804 (A070562 n).toNat : ℚ) + (Nat.factorial (n + 6) : ℚ) / 9

end

end A139184.P5470476165080501116

namespace A139184

/-- `A321804(A070562(n))+(n+6)!/9` -/
def P5470476165080501116.Spec : Prop :=
  ∀ n, P5470476165080501116.a n = (A139184 (n + 6) : ℚ)

end A139184

/-!
# A139185: a(n) = (n! - 10)/10.

The programs for A139185, the canonical program `A139185.P12628085446828687069` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139185 has offset 5).

The definition of A139185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139185.P12628085446828687069

`((n+5)!-10)/10`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139185

/-- `((n+5)!-10)/10` -/
def P12628085446828687069.Spec : Prop :=
  ∀ n, P12628085446828687069.a n = (A139185 (n + 5) : ℚ)

end A139185

/-! ## A139185.P7693225383204761883

`floor((24*∏[n+5]/5-1)/2)`
-/

namespace A139185.P7693225383204761883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(24 * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5) - 1) / 2⌋

end

end A139185.P7693225383204761883

namespace A139185

/-- `floor((24*∏[n+5]/5-1)/2)` -/
def P7693225383204761883.Spec : Prop :=
  ∀ n, P7693225383204761883.a n = A139185 (n + 5)

end A139185

/-! ## A139185.P14251207037771021907

`A129923(n)/2-1`
-/

namespace A139185.P14251207037771021907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129923 n : ℚ) / 2 - 1

end

end A139185.P14251207037771021907

namespace A139185

/-- `A129923(n)/2-1` -/
def P14251207037771021907.Spec : Prop :=
  ∀ n, P14251207037771021907.a n = (A139185 (n + 5) : ℚ)

end A139185

/-! ## A139185.P8603255712764207255

`A139157(n+5)-2`
-/

namespace A139185.P8603255712764207255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139157 (n + 5) - 2

end

end A139185.P8603255712764207255

namespace A139185

/-- `A139157(n+5)-2` -/
def P8603255712764207255.Spec : Prop :=
  ∀ n, P8603255712764207255.a n = A139185 (n + 5)

end A139185

/-! ## A139185.P4121024463500031959

`(A139175(n+5)-1)/2`
-/

namespace A139185.P4121024463500031959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139175 (n + 5) - 1 : ℚ) / 2

end

end A139185.P4121024463500031959

namespace A139185

/-- `(A139175(n+5)-1)/2` -/
def P4121024463500031959.Spec : Prop :=
  ∀ n, P4121024463500031959.a n = (A139185 (n + 5) : ℚ)

end A139185

/-! ## A139185.P456793119522776361

`(A139152(n+5)-3)/2`
-/

namespace A139185.P456793119522776361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139152 (n + 5) - 3 : ℚ) / 2

end

end A139185.P456793119522776361

namespace A139185

/-- `(A139152(n+5)-3)/2` -/
def P456793119522776361.Spec : Prop :=
  ∀ n, P456793119522776361.a n = (A139185 (n + 5) : ℚ)

end A139185

/-! ## A139185.P4368331638592654143

`abs(12*A051338(∑[n]))-1`
-/

namespace A139185.P4368331638592654143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |12 * A051338 (∑ j ∈ Finset.range (n + 1), f1 j)| - 1

end

end A139185.P4368331638592654143

namespace A139185

/-- `abs(12*A051338(∑[n]))-1` -/
def P4368331638592654143.Spec : Prop :=
  ∀ n, P4368331638592654143.a n = A139185 (n + 5)

end A139185

/-! ## A139185.P6196601428120093190

`A317939(A001358(n+1))+A129923(n)/2`
-/

namespace A139185.P6196601428120093190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317939 (A001358 (n + 1)).toNat : ℚ) + (A129923 n : ℚ) / 2

end

end A139185.P6196601428120093190

namespace A139185

/-- `A317939(A001358(n+1))+A129923(n)/2` -/
def P6196601428120093190.Spec : Prop :=
  ∀ n, P6196601428120093190.a n = (A139185 (n + 5) : ℚ)

end A139185

/-!
# A139189: a(n) = prime(n)!-1.

The programs for A139189, the canonical program `A139189.P239424354536354143` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139189 has offset 1).

The definition of A139189 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139189.P239424354536354143

`A039716(n+1)-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139189

/-- `A039716(n+1)-1` -/
def P239424354536354143.Spec : Prop :=
  ∀ n, P239424354536354143.a n = A139189 (n + 1)

theorem P239424354536354143.correct : P239424354536354143.Spec := by
  intro n
  simp only [A139189, Nat.add_sub_cancel]

end A139189

/-! ## A139189.P7774427242000214735

`record[∏{p}[n, #!-1]]`
-/

namespace A139189.P7774427242000214735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((Nat.factorial p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139189.P7774427242000214735

namespace A139189

/-- `record[∏{p}[n, #!-1]]` -/
def P7774427242000214735.Spec : Prop :=
  ∀ n, P7774427242000214735.a n = A139189 (n + 1)

end A139189

/-! ## A139189.P10435382866333505364

`p?[comp[n²]]!-1`
-/

namespace A139189.P10435382866333505364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) - 1

end

end A139189.P10435382866333505364

namespace A139189

/-- `p?[comp[n²]]!-1` -/
def P10435382866333505364.Spec : Prop :=
  ∀ n, P10435382866333505364.a n = A139189 (n + 1)

end A139189

/-! ## A139189.P6845836557146558558

`eq[1, ∑{e}[n, #]]!-1`
-/

namespace A139189.P6845836557146558558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℤ) - 1

end

end A139189.P6845836557146558558

namespace A139189

/-- `eq[1, ∑{e}[n, #]]!-1` -/
def P6845836557146558558.Spec : Prop :=
  ∀ n, P6845836557146558558.a n = A139189 (n + 1)

end A139189

/-! ## A139189.P1364983924540228814

`record[∑{p}[n+2, #!-1]]`
-/

namespace A139189.P1364983924540228814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorial p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139189.P1364983924540228814

namespace A139189

/-- `record[∑{p}[n+2, #!-1]]` -/
def P1364983924540228814.Spec : Prop :=
  ∀ n, P1364983924540228814.a n = A139189 (n + 1)

end A139189

/-!
# A139190: a(n) = (prime(n)!-2)/2.

The programs for A139190, the canonical program `A139190.P14554345620365022831` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139190 has offset 1).

The definition of A139190 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139189, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139190.P14554345620365022831

`(A139189(n+1)-1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139190

/-- `(A139189(n+1)-1)/2` -/
def P14554345620365022831.Spec : Prop :=
  ∀ n, P14554345620365022831.a n = (A139190 (n + 1) : ℚ)

end A139190

/-! ## A139190.P3863338512297695036

`p?[comp[n²]]!/2-1`
-/

namespace A139190.P3863338512297695036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2 - 1

end

end A139190.P3863338512297695036

namespace A139190

/-- `p?[comp[n²]]!/2-1` -/
def P3863338512297695036.Spec : Prop :=
  ∀ n, P3863338512297695036.a n = (A139190 (n + 1) : ℚ)

end A139190

/-! ## A139190.P4095113488571808797

`A139160(n+1)-2`
-/

namespace A139190.P4095113488571808797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139160 (n + 1) - 2

end

end A139190.P4095113488571808797

namespace A139190

/-- `A139160(n+1)-2` -/
def P4095113488571808797.Spec : Prop :=
  ∀ n, P4095113488571808797.a n = A139190 (n + 1)

end A139190

/-! ## A139190.P16280608838078013175

`A039716(n+1)/2-1`
-/

namespace A139190.P16280608838078013175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 1) : ℚ) / 2 - 1

end

end A139190.P16280608838078013175

namespace A139190

/-- `A039716(n+1)/2-1` -/
def P16280608838078013175.Spec : Prop :=
  ∀ n, P16280608838078013175.a n = (A139190 (n + 1) : ℚ)

end A139190

/-! ## A139190.P7610878810966754400

`A131491(n+1)/4-1`
-/

namespace A139190.P7610878810966754400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131491 (n + 1) : ℚ) / 4 - 1

end

end A139190.P7610878810966754400

namespace A139190

/-- `A131491(n+1)/4-1` -/
def P7610878810966754400.Spec : Prop :=
  ∀ n, P7610878810966754400.a n = (A139190 (n + 1) : ℚ)

end A139190

/-!
# A139191: Natural numbers of the form (prime(n)!-3)/3.

The programs for A139191, the canonical program `A139191.P8556745552501629682` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139191 has offset 1).

The definition of A139191 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139189, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139191.P8556745552501629682

`(A139189(n+2)-2)/3`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139191

/-- `(A139189(n+2)-2)/3` -/
def P8556745552501629682.Spec : Prop :=
  ∀ n, P8556745552501629682.a n = (A139191 (n + 1) : ℚ)

end A139191

/-! ## A139191.P9810694338382519100

`A139161(n+2)-2`
-/

namespace A139191.P9810694338382519100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139161 (n + 2) - 2

end

end A139191.P9810694338382519100

namespace A139191

/-- `A139161(n+2)-2` -/
def P9810694338382519100.Spec : Prop :=
  ∀ n, P9810694338382519100.a n = A139191 (n + 1)

end A139191

/-! ## A139191.P5547170123241965139

`A139173(p?[2*n+1])`
-/

namespace A139191.P5547170123241965139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139173 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A139191.P5547170123241965139

namespace A139191

/-- `A139173(p?[2*n+1])` -/
def P5547170123241965139.Spec : Prop :=
  ∀ n, P5547170123241965139.a n = A139191 (n + 1)

end A139191

/-! ## A139191.P6319725202511590377

`2*A139194(n+1)+1`
-/

namespace A139191.P6319725202511590377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139194 (n + 1) + 1

end

end A139191.P6319725202511590377

namespace A139191

/-- `2*A139194(n+1)+1` -/
def P6319725202511590377.Spec : Prop :=
  ∀ n, P6319725202511590377.a n = A139191 (n + 1)

end A139191

/-! ## A139191.P5255229726527415029

`A000040(n+2)!/3-1`
-/

namespace A139191.P5255229726527415029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 2)).toNat : ℚ) / 3 - 1

end

end A139191.P5255229726527415029

namespace A139191

/-- `A000040(n+2)!/3-1` -/
def P5255229726527415029.Spec : Prop :=
  ∀ n, P5255229726527415029.a n = (A139191 (n + 1) : ℚ)

end A139191

/-!
# A139192: a(n) = (prime(n)! - 4)/4.

The programs for A139192, the canonical program `A139192.P8602614665101011949` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139192 has offset 3).

The definition of A139192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139189, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139192.P8602614665101011949

`(A139189(n+3)-3)/4`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139192

/-- `(A139189(n+3)-3)/4` -/
def P8602614665101011949.Spec : Prop :=
  ∀ n, P8602614665101011949.a n = (A139192 (n + 3) : ℚ)

end A139192

/-! ## A139192.P16582684482285257763

`A139162(n+3)-2`
-/

namespace A139192.P16582684482285257763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139162 (n + 3) - 2

end

end A139192.P16582684482285257763

namespace A139192

/-- `A139162(n+3)-2` -/
def P16582684482285257763.Spec : Prop :=
  ∀ n, P16582684482285257763.a n = A139192 (n + 3)

end A139192

/-! ## A139192.P7323861627117598656

`2*A139196(n+3)+1`
-/

namespace A139192.P7323861627117598656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139196 (n + 3) + 1

end

end A139192.P7323861627117598656

namespace A139192

/-- `2*A139196(n+3)+1` -/
def P7323861627117598656.Spec : Prop :=
  ∀ n, P7323861627117598656.a n = A139192 (n + 3)

end A139192

/-! ## A139192.P978869103036354081

`2*A139166(n+3)-3`
-/

namespace A139192.P978869103036354081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139166 (n + 3) - 3

end

end A139192.P978869103036354081

namespace A139192

/-- `2*A139166(n+3)-3` -/
def P978869103036354081.Spec : Prop :=
  ∀ n, P978869103036354081.a n = A139192 (n + 3)

end A139192

/-! ## A139192.P3799297531465731137

`A000040(n+3)!/4-1`
-/

namespace A139192.P3799297531465731137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 3)).toNat : ℚ) / 4 - 1

end

end A139192.P3799297531465731137

namespace A139192

/-- `A000040(n+3)!/4-1` -/
def P3799297531465731137.Spec : Prop :=
  ∀ n, P3799297531465731137.a n = (A139192 (n + 3) : ℚ)

end A139192

/-!
# A139193: Natural numbers of the form (prime(n)! - 5)/5.

The programs for A139193, there is no canonical definition to state claims against.
-/

/-! ## A139193.P4769130470679053660

`A139163(n+3)-2`
-/

namespace A139193.P4769130470679053660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139163 (n + 3) - 2

end

end A139193.P4769130470679053660

/-! ## A139193.P6776830291319131520

`2*A139198(n+3)+1`
-/

namespace A139193.P6776830291319131520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139198 (n + 3) + 1

end

end A139193.P6776830291319131520

/-! ## A139193.P1702830720819286439

`2*A139168(n+3)-3`
-/

namespace A139193.P1702830720819286439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139168 (n + 3) - 3

end

end A139193.P1702830720819286439

/-! ## A139193.P18199014361964510777

`A000040(n+3)!/5-1`
-/

namespace A139193.P18199014361964510777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 3)).toNat : ℚ) / 5 - 1

end

end A139193.P18199014361964510777

/-! ## A139193.P3867438183427186122

`A139175(A000040(n+3))`
-/

namespace A139193.P3867438183427186122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139175 (A000040 (n + 3)).toNat

end

end A139193.P3867438183427186122

/-!
# A139194: Natural numbers of the form (prime(n)!-6)/6.

The programs for A139194, there is no canonical definition to state claims against.
-/

/-! ## A139194.P5828681385837388609

`A139164(n+2)-2`
-/

namespace A139194.P5828681385837388609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139164 (n + 2) - 2

end

end A139194.P5828681385837388609

/-! ## A139194.P4551193944150550056

`floor(A139191(n+1)/2)`
-/

namespace A139194.P4551193944150550056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139191 (n + 1) : ℚ) / 2⌋

end

end A139194.P4551193944150550056

/-! ## A139194.P9097521547966130446

`A139176(p?[2*n+1])`
-/

namespace A139194.P9097521547966130446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139176 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A139194.P9097521547966130446

/-! ## A139194.P13011457528471015643

`A000040(n+2)!/6-1`
-/

namespace A139194.P13011457528471015643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 2)).toNat : ℚ) / 6 - 1

end

end A139194.P13011457528471015643

/-! ## A139194.P3310877592976846838

`A139176(A000040(n+2))`
-/

namespace A139194.P3310877592976846838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139176 (A000040 (n + 2)).toNat

end

end A139194.P3310877592976846838

/-!
# A139195: 

The programs for A139195, there is no canonical definition to state claims against.
-/

/-! ## A139195.P13923687455619532969

`A139177(A000040(n+4))`
-/

namespace A139195.P13923687455619532969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139177 (A000040 (n + 4)).toNat

end

end A139195.P13923687455619532969

/-!
# A139196: a(n) = (prime(n)!-8)/8.

The programs for A139196, the canonical program `A139196.P8143982788016440248` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139196 has offset 3).

The definition of A139196 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139196.P8143982788016440248

`(A039716(n+3)-8)/8`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139196

/-- `(A039716(n+3)-8)/8` -/
def P8143982788016440248.Spec : Prop :=
  ∀ n, P8143982788016440248.a n = (A139196 (n + 3) : ℚ)

end A139196

/-! ## A139196.P3326260996720650509

`A139166(n+3)-2`
-/

namespace A139196.P3326260996720650509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139166 (n + 3) - 2

end

end A139196.P3326260996720650509

namespace A139196

/-- `A139166(n+3)-2` -/
def P3326260996720650509.Spec : Prop :=
  ∀ n, P3326260996720650509.a n = A139196 (n + 3)

end A139196

/-! ## A139196.P10188957908830525176

`floor(A139192(n+3)/2)`
-/

namespace A139196.P10188957908830525176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139192 (n + 3) : ℚ) / 2⌋

end

end A139196.P10188957908830525176

namespace A139196

/-- `floor(A139192(n+3)/2)` -/
def P10188957908830525176.Spec : Prop :=
  ∀ n, P10188957908830525176.a n = A139196 (n + 3)

end A139196

/-! ## A139196.P4511980192969211517

`(A139162(n+3)-3)/2`
-/

namespace A139196.P4511980192969211517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139162 (n + 3) - 3 : ℚ) / 2

end

end A139196.P4511980192969211517

namespace A139196

/-- `(A139162(n+3)-3)/2` -/
def P4511980192969211517.Spec : Prop :=
  ∀ n, P4511980192969211517.a n = (A139196 (n + 3) : ℚ)

end A139196

/-! ## A139196.P4495855681053088902

`A000040(n+3)!/8-1`
-/

namespace A139196.P4495855681053088902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 3)).toNat : ℚ) / 8 - 1

end

end A139196.P4495855681053088902

namespace A139196

/-- `A000040(n+3)!/8-1` -/
def P4495855681053088902.Spec : Prop :=
  ∀ n, P4495855681053088902.a n = (A139196 (n + 3) : ℚ)

end A139196

/-!
# A139197: 

The programs for A139197, there is no canonical definition to state claims against.
-/

/-! ## A139197.P5915271791249768419

`A139184(A000040(n+4))`
-/

namespace A139197.P5915271791249768419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139184 (A000040 (n + 4)).toNat

end

end A139197.P5915271791249768419

/-!
# A139198: a(n) = prime(n)!/10 - 1.

The programs for A139198, the canonical program `A139198.P1615369607652417229` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139198 has offset 3).

The definition of A139198 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139198.P1615369607652417229

`A039716(n+3)/10-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139198

/-- `A039716(n+3)/10-1` -/
def P1615369607652417229.Spec : Prop :=
  ∀ n, P1615369607652417229.a n = (A139198 (n + 3) : ℚ)

end A139198

/-! ## A139198.P15375713616526651931

`A139168(n+3)-2`
-/

namespace A139198.P15375713616526651931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139168 (n + 3) - 2

end

end A139198.P15375713616526651931

namespace A139198

/-- `A139168(n+3)-2` -/
def P15375713616526651931.Spec : Prop :=
  ∀ n, P15375713616526651931.a n = A139198 (n + 3)

end A139198

/-! ## A139198.P16072008490639698506

`floor(A139193(n+1)/2)`
-/

namespace A139198.P16072008490639698506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139193 (n + 1) : ℚ) / 2⌋

end

end A139198.P16072008490639698506

namespace A139198

/-- `floor(A139193(n+1)/2)` -/
def P16072008490639698506.Spec : Prop :=
  ∀ n, P16072008490639698506.a n = A139198 (n + 3)

end A139198

/-! ## A139198.P17211398996988847425

`(A139163(n+3)-3)/2`
-/

namespace A139198.P17211398996988847425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139163 (n + 3) - 3 : ℚ) / 2

end

end A139198.P17211398996988847425

namespace A139198

/-- `(A139163(n+3)-3)/2` -/
def P17211398996988847425.Spec : Prop :=
  ∀ n, P17211398996988847425.a n = (A139198 (n + 3) : ℚ)

end A139198

/-! ## A139198.P4476722244142083232

`A000040(n+3)!/10-1`
-/

namespace A139198.P4476722244142083232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 3)).toNat : ℚ) / 10 - 1

end

end A139198.P4476722244142083232

namespace A139198

/-- `A000040(n+3)!/10-1` -/
def P4476722244142083232.Spec : Prop :=
  ∀ n, P4476722244142083232.a n = (A139198 (n + 3) : ℚ)

end A139198

