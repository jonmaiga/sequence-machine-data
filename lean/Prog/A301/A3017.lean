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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
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
# A301700: Number of aperiodic rooted trees with n nodes.

The programs for A301700, there is no canonical definition to state claims against.
-/

/-! ## A301700.P10526524064176037453

`A187451(A051573(n))+A036625(n)`
-/

namespace A301700.P10526524064176037453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187451 (A051573 n).toNat + A036625 n

end

end A301700.P10526524064176037453

/-! ## A301700.P2871016598377263416

`A262689(A279573(n))+A185651(n)`
-/

namespace A301700.P2871016598377263416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A279573 n).toNat + A185651 n

end

end A301700.P2871016598377263416

/-! ## A301700.P3598221097832662368

`A001399(A291553(n+1)%A291595(n+1))`
-/

namespace A301700.P3598221097832662368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (Int.tmod (A291553 (n + 1)) (A291595 (n + 1))).toNat

end

end A301700.P3598221097832662368

/-! ## A301700.P1925521419631783700

`A342382(A118871(n))+A331995(A000992(n+1))`
-/

namespace A301700.P1925521419631783700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342382 (A118871 n).toNat + A331995 (A000992 (n + 1)).toNat

end

end A301700.P1925521419631783700

/-!
# A301702: a(n) = [x^n] Product_{k>=0} 1/(1 - x^(2^k))^n.

The programs for A301702, there is no canonical definition to state claims against.
-/

/-! ## A301702.P17368689136302093533

`A028234(A091056(n)+A008346(3*n))`
-/

namespace A301702.P17368689136302093533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A091056 n + A008346 (3 * n)).toNat

end

end A301702.P17368689136302093533

/-! ## A301702.P16181279651319294762

`A241184(4*C(n, 2))+1`
-/

namespace A301702.P16181279651319294762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241184 (4 * Nat.choose n 2) + 1

end

end A301702.P16181279651319294762

/-!
# A301703: a(n) is the number of positive coefficients of the polynomial (x-1)*(x^2-1)*...*(x^n-1).

The programs for A301703, there is no canonical definition to state claims against.
-/

/-! ## A301703.P6706650259841270517

`A086781(n+1)-A301704(n+1)`
-/

namespace A301703.P6706650259841270517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086781 (n + 1) - A301704 (n + 1)

end

end A301703.P6706650259841270517

/-! ## A301703.P15553340476036865793

`A086781(n+1)-A068509(A129361(n+1))`
-/

namespace A301703.P15553340476036865793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086781 (n + 1) - A068509 (A129361 (n + 1)).toNat

end

end A301703.P15553340476036865793

/-!
# A301704: a(n) is the number of negative coefficients of polynomial (x-1)*(x^2-1)*...*(x^n-1).

The programs for A301704, there is no canonical definition to state claims against.
-/

/-! ## A301704.P1350579593326560886

`A086781(n+1)-A301703(n+1)`
-/

namespace A301704.P1350579593326560886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086781 (n + 1) - A301703 (n + 1)

end

end A301704.P1350579593326560886

/-! ## A301704.P10545265143019733667

`A068509(A129361(n+1))`
-/

namespace A301704.P10545265143019733667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (A129361 (n + 1)).toNat

end

end A301704.P10545265143019733667

/-! ## A301704.P4328582308865692970

`A068509(A098787(n+4)-1)`
-/

namespace A301704.P4328582308865692970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (A098787 (n + 4) - 1).toNat

end

end A301704.P4328582308865692970

/-! ## A301704.P3000327341300952113

`record[and(A122913(n+1), A123108(n))]`
-/

namespace A301704.P3000327341300952113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122913 (n + 1)) (A123108 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301704.P3000327341300952113

/-! ## A301704.P5532576454025394533

`A068509(A294562(n+1)-A294413(n))`
-/

namespace A301704.P5532576454025394533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (A294562 (n + 1) - A294413 n).toNat

end

end A301704.P5532576454025394533

/-!
# A301705: a(n) is the number of zero coefficients of the polynomial (x-1)*(x^2-1)*...*(x^n-1) below the leading coefficient.

The programs for A301705, there is no canonical definition to state claims against.
-/

/-! ## A301705.P764337304662324554

`1+(n+1)*(n+2)/2-A086781(n+1)`
-/

namespace A301705.P764337304662324554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ((n + 1) * (n + 2) : ℚ) / 2 - (A086781 (n + 1) : ℚ)

end

end A301705.P764337304662324554

/-! ## A301705.P4676631826608444397

`A000217(n+1)+1-A086781(n+1)`
-/

namespace A301705.P4676631826608444397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (1 - A086781 (n + 1))

end

end A301705.P4676631826608444397

/-! ## A301705.P14406244735666251837

`A000096(n+1)-(A086781(n+1)+n)`
-/

namespace A301705.P14406244735666251837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) - (A086781 (n + 1) + (n : ℤ))

end

end A301705.P14406244735666251837

/-! ## A301705.P2515277213362863805

`∑[A086781(n)+n+1-A086781(n+1)]`
-/

namespace A301705.P2515277213362863805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086781 n + ((n + 1 : ℤ) - A086781 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301705.P2515277213362863805

/-!
# A301706: Number of rooted thrice-partitions of n.

The programs for A301706, there is no canonical definition to state claims against.
-/

/-! ## A301706.P14682240397858742123

`A318584(A344294(n+1))+A184936(n)`
-/

namespace A301706.P14682240397858742123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318584 (A344294 (n + 1)).toNat + A184936 n

end

end A301706.P14682240397858742123

/-! ## A301706.P3565818179793042847

`A226390(A232622(n)-n)`
-/

namespace A301706.P3565818179793042847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 (A232622 n - (n : ℤ)).toNat

end

end A301706.P3565818179793042847

/-! ## A301706.P11654738604299203771

`A000006(A151430(n)+A000111(n))`
-/

namespace A301706.P11654738604299203771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A151430 n + A000111 n).toNat

end

end A301706.P11654738604299203771

/-! ## A301706.P11100009699984880070

`A191524(n)+A000005(A309861(n))`
-/

namespace A301706.P11100009699984880070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191524 n + A000005 (A309861 n).toNat

end

end A301706.P11100009699984880070

/-! ## A301706.P3230330520414352031

`A307464(n)+A077267(A184510(n))`
-/

namespace A301706.P3230330520414352031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307464 n + A077267 (A184510 n).toNat

end

end A301706.P3230330520414352031

/-!
# A301707: a(n) = n * Sum_{k prime<=n} k.

The programs for A301707, the canonical program `A301707.P6059089496890772417` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301707 has offset 1).

The definition of A301707 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A301707.P6059089496890772417

`(n+1)*A034387(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A301707

/-- `(n+1)*A034387(n+1)` -/
def P6059089496890772417.Spec : Prop :=
  ∀ n, P6059089496890772417.a n = A301707 (n + 1)

theorem P6059089496890772417.correct : P6059089496890772417.Spec := by
  intro n
  simp only [A301707, Nat.add_sub_cancel]

end A301707

/-! ## A301707.P18269078544049856549

`(n+1)*∑[∑{p}[n+1, C(#, n)]]`
-/

namespace A301707.P18269078544049856549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301707.P18269078544049856549

namespace A301707

/-- `(n+1)*∑[∑{p}[n+1, C(#, n)]]` -/
def P18269078544049856549.Spec : Prop :=
  ∀ n, (P18269078544049856549.a n : ℤ) = A301707 (n + 1)

end A301707

/-! ## A301707.P10664166580527118794

`(n+1)*∑[A061397(n+1)]`
-/

namespace A301707.P10664166580527118794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301707.P10664166580527118794

namespace A301707

/-- `(n+1)*∑[A061397(n+1)]` -/
def P10664166580527118794.Spec : Prop :=
  ∀ n, P10664166580527118794.a n = A301707 (n + 1)

end A301707

/-! ## A301707.P3670640077791329752

`(n+1)*(A158662(n+1)-1)`
-/

namespace A301707.P3670640077791329752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158662 (n + 1) - 1)

end

end A301707.P3670640077791329752

namespace A301707

/-- `(n+1)*(A158662(n+1)-1)` -/
def P3670640077791329752.Spec : Prop :=
  ∀ n, P3670640077791329752.a n = A301707 (n + 1)

end A301707

/-! ## A301707.P4085789871509540449

`(n+1)*∑[(n+1)*A010051(n+1)]`
-/

namespace A301707.P4085789871509540449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301707.P4085789871509540449

namespace A301707

/-- `(n+1)*∑[(n+1)*A010051(n+1)]` -/
def P4085789871509540449.Spec : Prop :=
  ∀ n, P4085789871509540449.a n = A301707 (n + 1)

end A301707

/-! ## A301707.P14677836819441895075

`(n+1)*(∑[C(A006530(n+1), n)]-1)`
-/

namespace A301707.P14677836819441895075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A301707.P14677836819441895075

namespace A301707

/-- `(n+1)*(∑[C(A006530(n+1), n)]-1)` -/
def P14677836819441895075.Spec : Prop :=
  ∀ n, P14677836819441895075.a n = A301707 (n + 1)

end A301707

/-! ## A301707.P9087375197007841024

`(n+1)*(∑[C(A014963(n+1), n)]-1)`
-/

namespace A301707.P9087375197007841024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A301707.P9087375197007841024

namespace A301707

/-- `(n+1)*(∑[C(A014963(n+1), n)]-1)` -/
def P9087375197007841024.Spec : Prop :=
  ∀ n, P9087375197007841024.a n = A301707 (n + 1)

end A301707

/-! ## A301707.P12784298380750149441

`(n+1)*(∑[C(A020639(n+1), n)]-1)`
-/

namespace A301707.P12784298380750149441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A301707.P12784298380750149441

namespace A301707

/-- `(n+1)*(∑[C(A020639(n+1), n)]-1)` -/
def P12784298380750149441.Spec : Prop :=
  ∀ n, P12784298380750149441.a n = A301707 (n + 1)

end A301707

/-! ## A301707.P10083080142150888304

`(n+1)*∑[(n+1)*char[record[A000010(n+1)]]]`
-/

namespace A301707.P10083080142150888304
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301707.P10083080142150888304

namespace A301707

/-- `(n+1)*∑[(n+1)*char[record[A000010(n+1)]]]` -/
def P10083080142150888304.Spec : Prop :=
  ∀ n, (P10083080142150888304.a n : ℤ) = A301707 (n + 1)

end A301707

/-! ## A301707.P2511473934570129659

`(n+1)*A007504(A000720(n+1))`
-/

namespace A301707.P2511473934570129659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007504 (A000720 (n + 1)).toNat

end

end A301707.P2511473934570129659

namespace A301707

/-- `(n+1)*A007504(A000720(n+1))` -/
def P2511473934570129659.Spec : Prop :=
  ∀ n, P2511473934570129659.a n = A301707 (n + 1)

end A301707

/-! ## A301707.P9759827505406869895

`A007504(∑[A010051(n+1)])*(n+1)`
-/

namespace A301707.P9759827505406869895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * (n + 1 : ℤ)

end

end A301707.P9759827505406869895

namespace A301707

/-- `A007504(∑[A010051(n+1)])*(n+1)` -/
def P9759827505406869895.Spec : Prop :=
  ∀ n, P9759827505406869895.a n = A301707 (n + 1)

end A301707

/-! ## A301707.P11940146538763368175

`(n+1)*(∑[A000203(A089026(n+1))]-(n+1))`
-/

namespace A301707.P11940146538763368175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ))

end

end A301707.P11940146538763368175

namespace A301707

/-- `(n+1)*(∑[A000203(A089026(n+1))]-(n+1))` -/
def P11940146538763368175.Spec : Prop :=
  ∀ n, P11940146538763368175.a n = A301707 (n + 1)

end A301707

/-! ## A301707.P16882343401889696884

`(n+1)*A007504(A230980(n+1))`
-/

namespace A301707.P16882343401889696884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007504 (A230980 (n + 1)).toNat

end

end A301707.P16882343401889696884

namespace A301707

/-- `(n+1)*A007504(A230980(n+1))` -/
def P16882343401889696884.Spec : Prop :=
  ∀ n, P16882343401889696884.a n = A301707 (n + 1)

end A301707

/-! ## A301707.P4347376591999809205

`(n+1)*A063960(2*(n+1))`
-/

namespace A301707.P4347376591999809205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A063960 (2 * (n + 1))

end

end A301707.P4347376591999809205

namespace A301707

/-- `(n+1)*A063960(2*(n+1))` -/
def P4347376591999809205.Spec : Prop :=
  ∀ n, P4347376591999809205.a n = A301707 (n + 1)

end A301707

/-! ## A301707.P13479694091670258812

`A063960(A103517(n))/2*A103517(n)`
-/

namespace A301707.P13479694091670258812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063960 (A103517 n).toNat : ℚ) / 2 * (A103517 n : ℚ)

end

end A301707.P13479694091670258812

namespace A301707

/-- `A063960(A103517(n))/2*A103517(n)` -/
def P13479694091670258812.Spec : Prop :=
  ∀ n, P13479694091670258812.a n = (A301707 (n + 1) : ℚ)

end A301707

/-! ## A301707.P3991301173087500157

`(n+1)*∑[A097975((n+1)²)]`
-/

namespace A301707.P3991301173087500157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301707.P3991301173087500157

namespace A301707

/-- `(n+1)*∑[A097975((n+1)²)]` -/
def P3991301173087500157.Spec : Prop :=
  ∀ n, P3991301173087500157.a n = A301707 (n + 1)

end A301707

/-! ## A301707.P17324040369011850528

`(n+1)*∑[A369865((n+1)²)]`
-/

namespace A301707.P17324040369011850528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369865 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301707.P17324040369011850528

namespace A301707

/-- `(n+1)*∑[A369865((n+1)²)]` -/
def P17324040369011850528.Spec : Prop :=
  ∀ n, P17324040369011850528.a n = A301707 (n + 1)

end A301707

/-!
# A301708: Coordination sequence for node of type V1 in "krc" 2-D tiling (or net).

The programs for A301708, the canonical program `A301708.P6138556331728841483` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301708 has offset 0).

The definition of A301708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301708.P6138556331728841483

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=5, a(2)=5, a(3)=5, a(4)=6, a(5)=6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301708

/-- `∑[floor(a(n-4))]` -/
def P6138556331728841483.Spec : Prop :=
  ∀ n, (P6138556331728841483.a n : ℤ) = A301708 n

theorem P6138556331728841483.correct : P6138556331728841483.Spec := by
  intro n
  simp only [A301708]

end A301708

/-! ## A301708.P4749735072816604692

`∑[a(n-2)%2+5]` with `a(0)=1, a(1)=5, a(2)=5, a(3)=5`
-/

namespace A301708.P4749735072816604692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 5, 5] fun n f1 =>
  f1 (n - 2) % 2 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301708.P4749735072816604692

namespace A301708

/-- `∑[a(n-2)%2+5]` -/
def P4749735072816604692.Spec : Prop :=
  ∀ n, (P4749735072816604692.a n : ℤ) = A301708 n

end A301708

/-! ## A301708.P8368773660470899516

`∑[9-a(n-2)]+n` with `a(0)=1, a(1)=4, a(2)=4, a(3)=4`
-/

namespace A301708.P8368773660470899516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 4, 4] fun n f1 =>
  9 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A301708.P8368773660470899516

namespace A301708

/-- `∑[9-a(n-2)]+n` -/
def P8368773660470899516.Spec : Prop :=
  ∀ n, P8368773660470899516.a n = A301708 n

end A301708

/-! ## A301708.P2289858672647690704

`A301291(n)+n`
-/

namespace A301708.P2289858672647690704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + (n : ℤ)

end

end A301708.P2289858672647690704

namespace A301708

/-- `A301291(n)+n` -/
def P2289858672647690704.Spec : Prop :=
  ∀ n, P2289858672647690704.a n = A301708 n

end A301708

/-! ## A301708.P16199266245830766059

`A301729(3*n)+n`
-/

namespace A301708.P16199266245830766059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 (3 * n) + (n : ℤ)

end

end A301708.P16199266245830766059

namespace A301708

/-- `A301729(3*n)+n` -/
def P16199266245830766059.Spec : Prop :=
  ∀ n, P16199266245830766059.a n = A301708 n

end A301708

/-! ## A301708.P18095582360115550023

`A008458(n)-∑[char[or(2, n)]]`
-/

namespace A301708.P18095582360115550023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A301708.P18095582360115550023

namespace A301708

/-- `A008458(n)-∑[char[or(2, n)]]` -/
def P18095582360115550023.Spec : Prop :=
  ∀ n, P18095582360115550023.a n = A301708 n

end A301708

/-! ## A301708.P11502260887761564064

`A008706(n)+Δ[ceil(C(n, 2)/2)]`
-/

namespace A301708.P11502260887761564064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (f1 (n + 1) - f1 n)

end

end A301708.P11502260887761564064

namespace A301708

/-- `A008706(n)+Δ[ceil(C(n, 2)/2)]` -/
def P11502260887761564064.Spec : Prop :=
  ∀ n, P11502260887761564064.a n = A301708 n

end A301708

/-! ## A301708.P9890332248448128926

`4*n+lt[A020639(n+1), 4]+1`
-/

namespace A301708.P9890332248448128926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A301708.P9890332248448128926

namespace A301708

/-- `4*n+lt[A020639(n+1), 4]+1` -/
def P9890332248448128926.Spec : Prop :=
  ∀ n, (P9890332248448128926.a n : ℤ) = A301708 n

end A301708

/-! ## A301708.P15154320336534315557

`A008706(n)+A004525(n)`
-/

namespace A301708.P15154320336534315557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A004525 n

end

end A301708.P15154320336534315557

namespace A301708

/-- `A008706(n)+A004525(n)` -/
def P15154320336534315557.Spec : Prop :=
  ∀ n, P15154320336534315557.a n = A301708 n

end A301708

/-! ## A301708.P7323930078085709549

`A313575(n)+A004396(n)`
-/

namespace A301708.P7323930078085709549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313575 n + A004396 n

end

end A301708.P7323930078085709549

namespace A301708

/-- `A313575(n)+A004396(n)` -/
def P7323930078085709549.Spec : Prop :=
  ∀ n, P7323930078085709549.a n = A301708 n

end A301708

/-! ## A301708.P4358785764350160296

`A301710(n)+A101455(n)`
-/

namespace A301708.P4358785764350160296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n + A101455 n

end

end A301708.P4358785764350160296

namespace A301708

/-- `A301710(n)+A101455(n)` -/
def P4358785764350160296.Spec : Prop :=
  ∀ n, P4358785764350160296.a n = A301708 n

end A301708

/-! ## A301708.P3236630119808849359

`A047273(A008486(n)+1)+n`
-/

namespace A301708.P3236630119808849359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (A008486 n + 1).toNat + (n : ℤ)

end

end A301708.P3236630119808849359

namespace A301708

/-- `A047273(A008486(n)+1)+n` -/
def P3236630119808849359.Spec : Prop :=
  ∀ n, P3236630119808849359.a n = A301708 n

end A301708

/-! ## A301708.P8378814558137020823

`A047229(n+1)+A008574(n)`
-/

namespace A301708.P8378814558137020823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + A008574 n

end

end A301708.P8378814558137020823

namespace A301708

/-- `A047229(n+1)+A008574(n)` -/
def P8378814558137020823.Spec : Prop :=
  ∀ n, P8378814558137020823.a n = A301708 n

end A301708

/-! ## A301708.P10928951457931161588

`A008458(n)-A004524(n+1)`
-/

namespace A301708.P10928951457931161588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004524 (n + 1)

end

end A301708.P10928951457931161588

namespace A301708

/-- `A008458(n)-A004524(n+1)` -/
def P10928951457931161588.Spec : Prop :=
  ∀ n, P10928951457931161588.a n = A301708 n

end A301708

/-! ## A301708.P11055946440861166473

`A047273(A033627(n+2))+n`
-/

namespace A301708.P11055946440861166473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (A033627 (n + 2)).toNat + (n : ℤ)

end

end A301708.P11055946440861166473

namespace A301708

/-- `A047273(A033627(n+2))+n` -/
def P11055946440861166473.Spec : Prop :=
  ∀ n, P11055946440861166473.a n = A301708 n

end A301708

/-! ## A301708.P15401007499629129215

`A301710(n)+A046978(2*n)`
-/

namespace A301708.P15401007499629129215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n + A046978 (2 * n)

end

end A301708.P15401007499629129215

namespace A301708

/-- `A301710(n)+A046978(2*n)` -/
def P15401007499629129215.Spec : Prop :=
  ∀ n, P15401007499629129215.a n = A301708 n

end A301708

/-! ## A301708.P14510673662685796013

`A008458(n)-A201629(n)/2`
-/

namespace A301708.P14510673662685796013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) - (A201629 n : ℚ) / 2

end

end A301708.P14510673662685796013

namespace A301708

/-- `A008458(n)-A201629(n)/2` -/
def P14510673662685796013.Spec : Prop :=
  ∀ n, P14510673662685796013.a n = (A301708 n : ℚ)

end A301708

/-! ## A301708.P10610690711270946320

`A004525(n)+A008574(n)+n`
-/

namespace A301708.P10610690711270946320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A008574 n + (n : ℤ))

end

end A301708.P10610690711270946320

namespace A301708

/-- `A004525(n)+A008574(n)+n` -/
def P10610690711270946320.Spec : Prop :=
  ∀ n, P10610690711270946320.a n = A301708 n

end A301708

/-! ## A301708.P11965549836041625416

`A004525(n)+A008458(n)-n`
-/

namespace A301708.P11965549836041625416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A008458 n - (n : ℤ))

end

end A301708.P11965549836041625416

namespace A301708

/-- `A004525(n)+A008458(n)-n` -/
def P11965549836041625416.Spec : Prop :=
  ∀ n, P11965549836041625416.a n = A301708 n

end A301708

/-! ## A301708.P7226574615409390480

`A315274(n)+n-A004396(n)`
-/

namespace A301708.P7226574615409390480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315274 n + ((n : ℤ) - A004396 n)

end

end A301708.P7226574615409390480

namespace A301708

/-- `A315274(n)+n-A004396(n)` -/
def P7226574615409390480.Spec : Prop :=
  ∀ n, P7226574615409390480.a n = A301708 n

end A301708

/-!
# A301709: Partial sums of A301708.

The programs for A301709, the canonical program `A301709.P4657111931688524109` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301709 has offset 0).

The definition of A301709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301709.P4657111931688524109

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=7, a(2)=18, a(3)=34, a(4)=56`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301709

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P4657111931688524109.Spec : Prop :=
  ∀ n, P4657111931688524109.a n = A301709 n

theorem P4657111931688524109.correct : P4657111931688524109.Spec := by
  intro n
  simp only [A301709]

end A301709

/-! ## A301709.P13701124174379900124

`ceil(11/2*∑[n])+1`
-/

namespace A301709.P13701124174379900124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(11 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉ + 1

end

end A301709.P13701124174379900124

namespace A301709

/-- `ceil(11/2*∑[n])+1` -/
def P13701124174379900124.Spec : Prop :=
  ∀ n, P13701124174379900124.a n = A301709 n

end A301709

/-! ## A301709.P4728328589749284833

`round((11*C(n+1, 2)+2)/2)`
-/

namespace A301709.P4728328589749284833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((11 * Nat.choose (n + 1) 2 + 2 : ℚ) / 2)

end

end A301709.P4728328589749284833

namespace A301709

/-- `round((11*C(n+1, 2)+2)/2)` -/
def P4728328589749284833.Spec : Prop :=
  ∀ n, P4728328589749284833.a n = A301709 n

end A301709

/-! ## A301709.P4927327819622590425

`∑[∑[floor(a(n-4))]]` with `a(0)=1, a(1)=5, a(2)=5, a(3)=5, a(4)=6, a(5)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A301709.P4927327819622590425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 5, 5, 6, 6] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301709.P4927327819622590425

namespace A301709

/-- `∑[∑[floor(a(n-4))]]` -/
def P4927327819622590425.Spec : Prop :=
  ∀ n, (P4927327819622590425.a n : ℤ) = A301709 n

end A301709

/-! ## A301709.P86120732365241603

`ceil(A006222(n)/4)`
-/

namespace A301709.P86120732365241603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006222 n : ℚ) / 4⌉

end

end A301709.P86120732365241603

namespace A301709

/-- `ceil(A006222(n)/4)` -/
def P86120732365241603.Spec : Prop :=
  ∀ n, P86120732365241603.a n = A301709 n

end A301709

/-! ## A301709.P11130382215404943616

`∑[A301291(n)+n]`
-/

namespace A301709.P11130382215404943616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301709.P11130382215404943616

namespace A301709

/-- `∑[A301291(n)+n]` -/
def P11130382215404943616.Spec : Prop :=
  ∀ n, P11130382215404943616.a n = A301709 n

end A301709

/-! ## A301709.P13885586483634598611

`∑[lt[A020639(n+1), 4]+4*n+1]`
-/

namespace A301709.P13885586483634598611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301709.P13885586483634598611

namespace A301709

/-- `∑[lt[A020639(n+1), 4]+4*n+1]` -/
def P13885586483634598611.Spec : Prop :=
  ∀ n, (P13885586483634598611.a n : ℤ) = A301709 n

end A301709

/-! ## A301709.P882864850047401042

`∑[A004525(n)+A008574(n)+n]`
-/

namespace A301709.P882864850047401042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A008574 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301709.P882864850047401042

namespace A301709

/-- `∑[A004525(n)+A008574(n)+n]` -/
def P882864850047401042.Spec : Prop :=
  ∀ n, P882864850047401042.a n = A301709 n

end A301709

/-! ## A301709.P8457392563108853642

`∑[A004525(n)+A008458(n)-n]`
-/

namespace A301709.P8457392563108853642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A008458 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301709.P8457392563108853642

namespace A301709

/-- `∑[A004525(n)+A008458(n)-n]` -/
def P8457392563108853642.Spec : Prop :=
  ∀ n, P8457392563108853642.a n = A301709 n

end A301709

/-! ## A301709.P3309850783438853651

`∑[A008486(2*n)-A004524(n+1)]`
-/

namespace A301709.P3309850783438853651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301709.P3309850783438853651

namespace A301709

/-- `∑[A008486(2*n)-A004524(n+1)]` -/
def P3309850783438853651.Spec : Prop :=
  ∀ n, P3309850783438853651.a n = A301709 n

end A301709

/-! ## A301709.P15209776880278070930

`∑[A301708(n)]`
-/

namespace A301709.P15209776880278070930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301709.P15209776880278070930

namespace A301709

/-- `∑[A301708(n)]` -/
def P15209776880278070930.Spec : Prop :=
  ∀ n, P15209776880278070930.a n = A301709 n

end A301709

/-! ## A301709.P16123568511924084709

`∑[A313687(3*n)-10*n+n]`
-/

namespace A301709.P16123568511924084709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313687 (3 * n) - (10 * n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301709.P16123568511924084709

namespace A301709

/-- `∑[A313687(3*n)-10*n+n]` -/
def P16123568511924084709.Spec : Prop :=
  ∀ n, P16123568511924084709.a n = A301709 n

end A301709

/-! ## A301709.P11868717337505896267

`floor((A000027((n+1)*n*11/2+1)+2)/2)`
-/

namespace A301709.P11868717337505896267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n : ℚ) * ((11 : ℚ) / 2)) + 1)).toNat + 2 : ℚ) / 2⌋

end

end A301709.P11868717337505896267

namespace A301709

/-- `floor((A000027((n+1)*n*11/2+1)+2)/2)` -/
def P11868717337505896267.Spec : Prop :=
  ∀ n, P11868717337505896267.a n = A301709 n

end A301709

/-! ## A301709.P12039367213493944076

`A131912(∑[n]+1)`
-/

namespace A301709.P12039367213493944076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131912 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301709.P12039367213493944076

namespace A301709

/-- `A131912(∑[n]+1)` -/
def P12039367213493944076.Spec : Prop :=
  ∀ n, P12039367213493944076.a n = A301709 n

end A301709

/-!
# A301710: Coordination sequence for node of type V2 in "krc" 2-D tiling (or net).

The programs for A301710, the canonical program `A301710.P7337108903377045277` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301710 has offset 0).

The definition of A301710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301710.P7337108903377045277

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=4, a(2)=6, a(3)=6, a(4)=5, a(5)=5`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301710

/-- `∑[floor(a(n-4))]` -/
def P7337108903377045277.Spec : Prop :=
  ∀ n, (P7337108903377045277.a n : ℤ) = A301710 n

theorem P7337108903377045277.correct : P7337108903377045277.Spec := by
  intro n
  simp only [A301710]

end A301710

/-! ## A301710.P13991049524707683692

`∑[a(n-2)²%3+5]` with `a(0)=1, a(1)=4`
-/

namespace A301710.P13991049524707683692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) ^ 2 % 3 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301710.P13991049524707683692

namespace A301710

/-- `∑[a(n-2)²%3+5]` -/
def P13991049524707683692.Spec : Prop :=
  ∀ n, (P13991049524707683692.a n : ℤ) = A301710 n

end A301710

/-! ## A301710.P5551883555135025096

`∑[and(2, n)!-char[1]]+4*n`
-/

namespace A301710.P5551883555135025096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 2 n) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 * n : ℤ)

end

end A301710.P5551883555135025096

namespace A301710

/-- `∑[and(2, n)!-char[1]]+4*n` -/
def P5551883555135025096.Spec : Prop :=
  ∀ n, P5551883555135025096.a n = A301710 n

end A301710

/-! ## A301710.P4957722767071822477

`∑[9-a(n-2)]+n` with `a(0)=1, a(1)=3, a(2)=5, a(3)=5`
-/

namespace A301710.P4957722767071822477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 5] fun n f1 =>
  9 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A301710.P4957722767071822477

namespace A301710

/-- `∑[9-a(n-2)]+n` -/
def P4957722767071822477.Spec : Prop :=
  ∀ n, P4957722767071822477.a n = A301710 n

end A301710

/-! ## A301710.P9642375671056412743

`∑[gcd(2, ∑[n+1])-char[1]]+4*n`
-/

namespace A301710.P9642375671056412743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 * n : ℤ)

end

end A301710.P9642375671056412743

namespace A301710

/-- `∑[gcd(2, ∑[n+1])-char[1]]+4*n` -/
def P9642375671056412743.Spec : Prop :=
  ∀ n, P9642375671056412743.a n = A301710 n

end A301710

/-! ## A301710.P4366585656064409730

`4*n+2*n+1-Δ[floor(((n+1)²/(2*n+1))²)]`
-/

namespace A301710.P4366585656064409730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) ^ 2 : ℚ) / (2 * n + 1 : ℚ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + ((2 * n + 1 : ℤ) - (f1 (n + 1) - f1 n))

end

end A301710.P4366585656064409730

namespace A301710

/-- `4*n+2*n+1-Δ[floor(((n+1)²/(2*n+1))²)]` -/
def P4366585656064409730.Spec : Prop :=
  ∀ n, P4366585656064409730.a n = A301710 n

end A301710

/-! ## A301710.P5415388483176300730

`round(A310530(2*n)/2)`
-/

namespace A301710.P5415388483176300730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A310530 (2 * n) : ℚ) / 2)

end

end A301710.P5415388483176300730

namespace A301710

/-- `round(A310530(2*n)/2)` -/
def P5415388483176300730.Spec : Prop :=
  ∀ n, P5415388483176300730.a n = A301710 n

end A301710

/-! ## A301710.P6608985681632893639

`(A315116(2*n)+1)/2`
-/

namespace A301710.P6608985681632893639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315116 (2 * n) + 1 : ℚ) / 2

end

end A301710.P6608985681632893639

namespace A301710

/-- `(A315116(2*n)+1)/2` -/
def P6608985681632893639.Spec : Prop :=
  ∀ n, P6608985681632893639.a n = (A301710 n : ℚ)

end A301710

/-! ## A301710.P7868583585925950837

`ceil(A313926(2*n)/2)`
-/

namespace A301710.P7868583585925950837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A313926 (2 * n) : ℚ) / 2⌉

end

end A301710.P7868583585925950837

namespace A301710

/-- `ceil(A313926(2*n)/2)` -/
def P7868583585925950837.Spec : Prop :=
  ∀ n, P7868583585925950837.a n = A301710 n

end A301710

/-! ## A301710.P4568811753342081026

`A004525(A310530(2*n))`
-/

namespace A301710.P4568811753342081026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310530 (2 * n)).toNat

end

end A301710.P4568811753342081026

namespace A301710

/-- `A004525(A310530(2*n))` -/
def P4568811753342081026.Spec : Prop :=
  ∀ n, P4568811753342081026.a n = A301710 n

end A301710

/-! ## A301710.P4356921851699150174

`A004525(A313926(2*n))`
-/

namespace A301710.P4356921851699150174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313926 (2 * n)).toNat

end

end A301710.P4356921851699150174

namespace A301710

/-- `A004525(A313926(2*n))` -/
def P4356921851699150174.Spec : Prop :=
  ∀ n, P4356921851699150174.a n = A301710 n

end A301710

/-! ## A301710.P3686948585913347489

`A004525(A314151(2*n))`
-/

namespace A301710.P3686948585913347489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314151 (2 * n)).toNat

end

end A301710.P3686948585913347489

namespace A301710

/-- `A004525(A314151(2*n))` -/
def P3686948585913347489.Spec : Prop :=
  ∀ n, P3686948585913347489.a n = A301710 n

end A301710

/-! ## A301710.P13674177127099378467

`A004525(A314159(2*n))`
-/

namespace A301710.P13674177127099378467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314159 (2 * n)).toNat

end

end A301710.P13674177127099378467

namespace A301710

/-- `A004525(A314159(2*n))` -/
def P13674177127099378467.Spec : Prop :=
  ∀ n, P13674177127099378467.a n = A301710 n

end A301710

/-! ## A301710.P16217447331890530546

`A004525(A314161(2*n))`
-/

namespace A301710.P16217447331890530546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314161 (2 * n)).toNat

end

end A301710.P16217447331890530546

namespace A301710

/-- `A004525(A314161(2*n))` -/
def P16217447331890530546.Spec : Prop :=
  ∀ n, P16217447331890530546.a n = A301710 n

end A301710

/-! ## A301710.P15228248172349663271

`A004525(A315342(2*n))`
-/

namespace A301710.P15228248172349663271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315342 (2 * n)).toNat

end

end A301710.P15228248172349663271

namespace A301710

/-- `A004525(A315342(2*n))` -/
def P15228248172349663271.Spec : Prop :=
  ∀ n, P15228248172349663271.a n = A301710 n

end A301710

/-! ## A301710.P11582570391470065394

`A004525(A315520(2*n))`
-/

namespace A301710.P11582570391470065394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315520 (2 * n)).toNat

end

end A301710.P11582570391470065394

namespace A301710

/-- `A004525(A315520(2*n))` -/
def P11582570391470065394.Spec : Prop :=
  ∀ n, P11582570391470065394.a n = A301710 n

end A301710

/-! ## A301710.P4192872424904022231

`A004525(A315522(2*n))`
-/

namespace A301710.P4192872424904022231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315522 (2 * n)).toNat

end

end A301710.P4192872424904022231

namespace A301710

/-- `A004525(A315522(2*n))` -/
def P4192872424904022231.Spec : Prop :=
  ∀ n, P4192872424904022231.a n = A301710 n

end A301710

/-! ## A301710.P6510152539719192566

`A004525(A008706(2*n)+n)`
-/

namespace A301710.P6510152539719192566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008706 (2 * n) + (n : ℤ)).toNat

end

end A301710.P6510152539719192566

namespace A301710

/-- `A004525(A008706(2*n)+n)` -/
def P6510152539719192566.Spec : Prop :=
  ∀ n, P6510152539719192566.a n = A301710 n

end A301710

/-! ## A301710.P1109184320474701535

`A004525(A310457(2*n)+n)`
-/

namespace A301710.P1109184320474701535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310457 (2 * n) + (n : ℤ)).toNat

end

end A301710.P1109184320474701535

namespace A301710

/-- `A004525(A310457(2*n)+n)` -/
def P1109184320474701535.Spec : Prop :=
  ∀ n, P1109184320474701535.a n = A301710 n

end A301710

/-! ## A301710.P2950213730406538391

`A004525(A310458(2*n)+n)`
-/

namespace A301710.P2950213730406538391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310458 (2 * n) + (n : ℤ)).toNat

end

end A301710.P2950213730406538391

namespace A301710

/-- `A004525(A310458(2*n)+n)` -/
def P2950213730406538391.Spec : Prop :=
  ∀ n, P2950213730406538391.a n = A301710 n

end A301710

/-!
# A301711: Partial sums of A301710.

The programs for A301711, the canonical program `A301711.P2240658532403509623` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301711 has offset 0).

The definition of A301711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301711.P2240658532403509623

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=6, a(2)=17, a(3)=34, a(4)=56`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301711

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P2240658532403509623.Spec : Prop :=
  ∀ n, P2240658532403509623.a n = A301711 n

theorem P2240658532403509623.correct : P2240658532403509623.Spec := by
  intro n
  simp only [A301711]

end A301711

/-! ## A301711.P6623698784313066904

`floor(11/2*∑[n])+1`
-/

namespace A301711.P6623698784313066904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(11 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ + 1

end

end A301711.P6623698784313066904

namespace A301711

/-- `floor(11/2*∑[n])+1` -/
def P6623698784313066904.Spec : Prop :=
  ∀ n, P6623698784313066904.a n = A301711 n

end A301711

/-! ## A301711.P5517527129793870825

`∑[∑[floor(a(n-4))]]` with `a(0)=1, a(1)=4, a(2)=6, a(3)=6, a(4)=5, a(5)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A301711.P5517527129793870825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6, 6, 5, 5] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301711.P5517527129793870825

namespace A301711

/-- `∑[∑[floor(a(n-4))]]` -/
def P5517527129793870825.Spec : Prop :=
  ∀ n, (P5517527129793870825.a n : ℤ) = A301711 n

end A301711

/-! ## A301711.P1292051332639720370

`∑[∑[a(n-2)²%3+5]]` with `a(0)=1, a(1)=4`
-/

namespace A301711.P1292051332639720370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  f2 (n - 2) ^ 2 % 3 + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301711.P1292051332639720370

namespace A301711

/-- `∑[∑[a(n-2)²%3+5]]` -/
def P1292051332639720370.Spec : Prop :=
  ∀ n, (P1292051332639720370.a n : ℤ) = A301711 n

end A301711

/-! ## A301711.P16551706625122517277

`round(A006222(n)/4)`
-/

namespace A301711.P16551706625122517277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006222 n : ℚ) / 4)

end

end A301711.P16551706625122517277

namespace A301711

/-- `round(A006222(n)/4)` -/
def P16551706625122517277.Spec : Prop :=
  ∀ n, P16551706625122517277.a n = A301711 n

end A301711

/-! ## A301711.P14361998780076261438

`ceil(A001536(n)/44)`
-/

namespace A301711.P14361998780076261438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001536 n : ℚ) / 44⌉

end

end A301711.P14361998780076261438

namespace A301711

/-- `ceil(A001536(n)/44)` -/
def P14361998780076261438.Spec : Prop :=
  ∀ n, P14361998780076261438.a n = A301711 n

end A301711

/-! ## A301711.P16349620057738832751

`∑[A301293(n)+n]`
-/

namespace A301711.P16349620057738832751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301711.P16349620057738832751

namespace A301711

/-- `∑[A301293(n)+n]` -/
def P16349620057738832751.Spec : Prop :=
  ∀ n, P16349620057738832751.a n = A301711 n

end A301711

/-! ## A301711.P4077704548796078974

`∑[∑[A307327(a(n-2))]]` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A301711.P4077704548796078974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6] fun n f2 =>
  A307327 (f2 (n - 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301711.P4077704548796078974

namespace A301711

/-- `∑[∑[A307327(a(n-2))]]` -/
def P4077704548796078974.Spec : Prop :=
  ∀ n, P4077704548796078974.a n = A301711 n

end A301711

/-! ## A301711.P12914109327661851015

`∑[A008458(n)-A004525(n)]`
-/

namespace A301711.P12914109327661851015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301711.P12914109327661851015

namespace A301711

/-- `∑[A008458(n)-A004525(n)]` -/
def P12914109327661851015.Spec : Prop :=
  ∀ n, P12914109327661851015.a n = A301711 n

end A301711

/-! ## A301711.P14192024884342245974

`∑[A008486(2*n)-A004525(n)]`
-/

namespace A301711.P14192024884342245974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301711.P14192024884342245974

namespace A301711

/-- `∑[A008486(2*n)-A004525(n)]` -/
def P14192024884342245974.Spec : Prop :=
  ∀ n, P14192024884342245974.a n = A301711 n

end A301711

/-! ## A301711.P15932243332166471526

`round(∑[A004277(4*n)+3*n]/2)`
-/

namespace A301711.P15932243332166471526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (4 * n) + (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A301711.P15932243332166471526

namespace A301711

/-- `round(∑[A004277(4*n)+3*n]/2)` -/
def P15932243332166471526.Spec : Prop :=
  ∀ n, P15932243332166471526.a n = A301711 n

end A301711

/-! ## A301711.P9229456057358578445

`∑[A301710(n)]`
-/

namespace A301711.P9229456057358578445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301711.P9229456057358578445

namespace A301711

/-- `∑[A301710(n)]` -/
def P9229456057358578445.Spec : Prop :=
  ∀ n, P9229456057358578445.a n = A301711 n

end A301711

/-! ## A301711.P1568568026982899884

`∑[A110654(A315061(2*n)+n)]`
-/

namespace A301711.P1568568026982899884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A315061 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301711.P1568568026982899884

namespace A301711

/-- `∑[A110654(A315061(2*n)+n)]` -/
def P1568568026982899884.Spec : Prop :=
  ∀ n, P1568568026982899884.a n = A301711 n

end A301711

/-! ## A301711.P14361148855477491612

`A025790(A161709(n))`
-/

namespace A301711.P14361148855477491612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025790 (A161709 n).toNat

end

end A301711.P14361148855477491612

namespace A301711

/-- `A025790(A161709(n))` -/
def P14361148855477491612.Spec : Prop :=
  ∀ n, P14361148855477491612.a n = A301711 n

end A301711

/-!
# A301712: Coordination sequence for node of type V1 in "usm" 2-D tiling (or net).

The programs for A301712, the canonical program `A301712.P15404367670106466828` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301712 has offset 0).

The definition of A301712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301712.P15404367670106466828

`A315061(n)+Δ[A011858(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A301712

/-- `A315061(n)+Δ[A011858(n)]` -/
def P15404367670106466828.Spec : Prop :=
  ∀ n, P15404367670106466828.a n = A301712 n

theorem P15404367670106466828.correct : P15404367670106466828.Spec := by
  intro n
  simp only [A301712]

end A301712

/-! ## A301712.P10324653370011466191

`A315061(n)+A057354(n+1)`
-/

namespace A301712.P10324653370011466191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A057354 (n + 1)

end

end A301712.P10324653370011466191

namespace A301712

/-- `A315061(n)+A057354(n+1)` -/
def P10324653370011466191.Spec : Prop :=
  ∀ n, P10324653370011466191.a n = A301712 n

end A301712

/-! ## A301712.P3524070365315785936

`A315061(n)+A134119(2*n)`
-/

namespace A301712.P3524070365315785936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A134119 (2 * n)

end

end A301712.P3524070365315785936

namespace A301712

/-- `A315061(n)+A134119(2*n)` -/
def P3524070365315785936.Spec : Prop :=
  ∀ n, P3524070365315785936.a n = A301712 n

end A301712

/-! ## A301712.P5059432033587983305

`A315061(n)+A110654(A090223(n))`
-/

namespace A301712.P5059432033587983305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A110654 (A090223 n).toNat

end

end A301712.P5059432033587983305

namespace A301712

/-- `A315061(n)+A110654(A090223(n))` -/
def P5059432033587983305.Spec : Prop :=
  ∀ n, P5059432033587983305.a n = A301712 n

end A301712

/-! ## A301712.P3103090515553798767

`A315061(n)+∑[A021913(A047486(n+1))]`
-/

namespace A301712.P3103090515553798767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A047486 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301712.P3103090515553798767

namespace A301712

/-- `A315061(n)+∑[A021913(A047486(n+1))]` -/
def P3103090515553798767.Spec : Prop :=
  ∀ n, P3103090515553798767.a n = A301712 n

end A301712

/-!
# A301713: Partial sums of A301712.

The programs for A301713, the canonical program `A301713.P9976292229456665362` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301713 has offset 0).

The definition of A301713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301713.P9976292229456665362

`∑[A315061(n)+Δ[A011858(n)]]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A301713

/-- `∑[A315061(n)+Δ[A011858(n)]]` -/
def P9976292229456665362.Spec : Prop :=
  ∀ n, P9976292229456665362.a n = A301713 n

theorem P9976292229456665362.correct : P9976292229456665362.Spec := by
  intro n
  simp only [A301713]

end A301713

/-! ## A301713.P15620094142076555664

`A011858(n+1)+∑[A315061(n)]`
-/

namespace A301713.P15620094142076555664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301713.P15620094142076555664

namespace A301713

/-- `A011858(n+1)+∑[A315061(n)]` -/
def P15620094142076555664.Spec : Prop :=
  ∀ n, P15620094142076555664.a n = A301713 n

end A301713

/-! ## A301713.P9467300151423502286

`∑[A315061(n)+A057354(n+1)]`
-/

namespace A301713.P9467300151423502286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A057354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301713.P9467300151423502286

namespace A301713

/-- `∑[A315061(n)+A057354(n+1)]` -/
def P9467300151423502286.Spec : Prop :=
  ∀ n, P9467300151423502286.a n = A301713 n

end A301713

/-! ## A301713.P6173726668025164274

`∑[A315061(n)+A134119(2*n)]`
-/

namespace A301713.P6173726668025164274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A134119 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301713.P6173726668025164274

namespace A301713

/-- `∑[A315061(n)+A134119(2*n)]` -/
def P6173726668025164274.Spec : Prop :=
  ∀ n, P6173726668025164274.a n = A301713 n

end A301713

/-! ## A301713.P8113942837983221298

`∑[A315061(n)+A110654(A090223(n))]`
-/

namespace A301713.P8113942837983221298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A110654 (A090223 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301713.P8113942837983221298

namespace A301713

/-- `∑[A315061(n)+A110654(A090223(n))]` -/
def P8113942837983221298.Spec : Prop :=
  ∀ n, P8113942837983221298.a n = A301713 n

end A301713

/-! ## A301713.P7296889523092140212

`∑[A301712(n)]`
-/

namespace A301713.P7296889523092140212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301713.P7296889523092140212

namespace A301713

/-- `∑[A301712(n)]` -/
def P7296889523092140212.Spec : Prop :=
  ∀ n, P7296889523092140212.a n = A301713 n

end A301713

/-! ## A301713.P12755725007213522

`A301712(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301713.P12755725007213522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301712 n + a (A023443 n).toNat

end

end A301713.P12755725007213522

namespace A301713

/-- `A301712(n)+a(A023443(n))` -/
def P12755725007213522.Spec : Prop :=
  ∀ n, P12755725007213522.a n = A301713 n

end A301713

/-! ## A301713.P3775760300849534468

`A057354(∑[n])+∑[A315061(n)]`
-/

namespace A301713.P3775760300849534468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (∑ j ∈ Finset.range (n + 1), f1 j) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A301713.P3775760300849534468

namespace A301713

/-- `A057354(∑[n])+∑[A315061(n)]` -/
def P3775760300849534468.Spec : Prop :=
  ∀ n, P3775760300849534468.a n = A301713 n

end A301713

/-!
# A301714: Coordination sequence for node of type V2 in "usm" 2-D tiling (or net).

The programs for A301714, there is no canonical definition to state claims against.
-/

/-! ## A301714.P6465457282873785699

`A314129(A087051(n))+A028422(2*n+5)`
-/

namespace A301714.P6465457282873785699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314129 (A087051 n).toNat + A028422 (2 * n + 5)

end

end A301714.P6465457282873785699

/-! ## A301714.P460499729462172034

`A001222(A001222(2*n+5))+A127322(A000032(n))+5*n`
-/

namespace A301714.P460499729462172034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (2 * n + 5)).toNat + (A127322 (A000032 n).toNat + (5 * n : ℤ))

end

end A301714.P460499729462172034

/-! ## A301714.P13180208156197773499

`A354807(A000142(n))+A314062(n)`
-/

namespace A301714.P13180208156197773499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354807 (A000142 n).toNat + A314062 n

end

end A301714.P13180208156197773499

/-! ## A301714.P5450247786663784048

`A314129(n)+A293162(A087788(n+1))`
-/

namespace A301714.P5450247786663784048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314129 n + A293162 (A087788 (n + 1)).toNat

end

end A301714.P5450247786663784048

/-! ## A301714.P6124436935776366735

`A063089(n+1)-A293162(A016791(n))`
-/

namespace A301714.P6124436935776366735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) - A293162 (A016791 n).toNat

end

end A301714.P6124436935776366735

/-!
# A301715: Partial sums of A301714.

The programs for A301715, there is no canonical definition to state claims against.
-/

/-! ## A301715.P6520568293030616138

`∑[A301714(n)]`
-/

namespace A301715.P6520568293030616138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301715.P6520568293030616138

/-! ## A301715.P11041147890370091415

`A301714(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301715.P11041147890370091415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301714 n + a (A023443 n).toNat

end

end A301715.P11041147890370091415

/-! ## A301715.P15301099146559800227

`a(n-1)+A301714(n)%A008597(n)` with `a(0)=1`
-/

namespace A301715.P15301099146559800227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A301714 n) (A008597 n)

end

end A301715.P15301099146559800227

/-! ## A301715.P6947354596610702270

`a(n-1)-(A000007(n)-1)*A301714(n)` with `a(0)=1`
-/

namespace A301715.P6947354596610702270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - 1) * A301714 n

end

end A301715.P6947354596610702270

/-! ## A301715.P13836713504277858548

`A301714(n)+a(n%A299636(n)-1)` with `a(0)=1`
-/

namespace A301715.P13836713504277858548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301714 n + a (Int.tmod (n : ℤ) (A299636 n) - 1).toNat

end

end A301715.P13836713504277858548

/-! ## A301715.P5730149624835548817

`a(n-1)+A097325(A000124(n))*A301714(n)` with `a(0)=1`
-/

namespace A301715.P5730149624835548817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A097325 (A000124 n).toNat * A301714 n

end

end A301715.P5730149624835548817

/-!
# A301716: Coordination sequence for node of type V1 in "kre" 2-D tiling (or net).

The programs for A301716, the canonical program `A301716.P177371536151067765` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301716 has offset 0).

The definition of A301716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301716.P177371536151067765

`A008458(A219529(n)-A312928(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A301716

/-- `A008458(A219529(n)-A312928(n))` -/
def P177371536151067765.Spec : Prop :=
  ∀ n, P177371536151067765.a n = A301716 n

theorem P177371536151067765.correct : P177371536151067765.Spec := by
  intro n
  simp only [A301716]

end A301716

/-! ## A301716.P7462262143809126831

`A008458(A231001(n)%A301298(n))`
-/

namespace A301716.P7462262143809126831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A231001 n) (A301298 n)).toNat

end

end A301716.P7462262143809126831

namespace A301716

/-- `A008458(A231001(n)%A301298(n))` -/
def P7462262143809126831.Spec : Prop :=
  ∀ n, P7462262143809126831.a n = A301716 n

end A301716

/-! ## A301716.P14120608905347458274

`A008458(A219529(n)%A312928(n))`
-/

namespace A301716.P14120608905347458274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A219529 n) (A312928 n)).toNat

end

end A301716.P14120608905347458274

namespace A301716

/-- `A008458(A219529(n)%A312928(n))` -/
def P14120608905347458274.Spec : Prop :=
  ∀ n, P14120608905347458274.a n = A301716 n

end A301716

/-! ## A301716.P13324575840276334212

`A008458(A047448(n+1)-A004396(n))`
-/

namespace A301716.P13324575840276334212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A047448 (n + 1) - A004396 n).toNat

end

end A301716.P13324575840276334212

namespace A301716

/-- `A008458(A047448(n+1)-A004396(n))` -/
def P13324575840276334212.Spec : Prop :=
  ∀ n, P13324575840276334212.a n = A301716 n

end A301716

/-! ## A301716.P12791763794731302200

`A008458(A042965(n+1)-Δ[A011858(n)])`
-/

namespace A301716.P12791763794731302200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A042965 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A301716.P12791763794731302200

namespace A301716

/-- `A008458(A042965(n+1)-Δ[A011858(n)])` -/
def P12791763794731302200.Spec : Prop :=
  ∀ n, P12791763794731302200.a n = A301716 n

end A301716

/-! ## A301716.P4764328044954856725

`A008458(A004396(2*n)-A057354(n+1))`
-/

namespace A301716.P4764328044954856725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A004396 (2 * n) - A057354 (n + 1)).toNat

end

end A301716.P4764328044954856725

namespace A301716

/-- `A008458(A004396(2*n)-A057354(n+1))` -/
def P4764328044954856725.Spec : Prop :=
  ∀ n, P4764328044954856725.a n = A301716 n

end A301716

/-! ## A301716.P5700974363407229257

`A008458(A047448(n+1)-A002264(2*n+1))`
-/

namespace A301716.P5700974363407229257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A047448 (n + 1) - A002264 (2 * n + 1)).toNat

end

end A301716.P5700974363407229257

namespace A301716

/-- `A008458(A047448(n+1)-A002264(2*n+1))` -/
def P5700974363407229257.Spec : Prop :=
  ∀ n, P5700974363407229257.a n = A301716 n

end A301716

/-! ## A301716.P9615696628717617843

`A008486((A250120(n)+A072154(n))%A008576(n))`
-/

namespace A301716.P9615696628717617843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A250120 n + A072154 n) (A008576 n)).toNat

end

end A301716.P9615696628717617843

namespace A301716

/-- `A008486((A250120(n)+A072154(n))%A008576(n))` -/
def P9615696628717617843.Spec : Prop :=
  ∀ n, P9615696628717617843.a n = A301716 n

end A301716

/-! ## A301716.P7537579468528088427

`2*A315617(n)-A315581(n)`
-/

namespace A301716.P7537579468528088427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315617 n - A315581 n

end

end A301716.P7537579468528088427

namespace A301716

/-- `2*A315617(n)-A315581(n)` -/
def P7537579468528088427.Spec : Prop :=
  ∀ n, P7537579468528088427.a n = A301716 n

end A301716

/-! ## A301716.P5084717406035430089

`A315617(n)+A315623(n)-A315596(n)`
-/

namespace A301716.P5084717406035430089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315617 n + (A315623 n - A315596 n)

end

end A301716.P5084717406035430089

namespace A301716

/-- `A315617(n)+A315623(n)-A315596(n)` -/
def P5084717406035430089.Spec : Prop :=
  ∀ n, P5084717406035430089.a n = A301716 n

end A301716

/-!
# A301717: Partial sums of A301716.

The programs for A301717, the canonical program `A301717.P10797501216361738203` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301717 has offset 0).

The definition of A301717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301717.P10797501216361738203

`∑[A008458(A219529(n)-A312928(n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A301717

/-- `∑[A008458(A219529(n)-A312928(n))]` -/
def P10797501216361738203.Spec : Prop :=
  ∀ n, P10797501216361738203.a n = A301717 n

theorem P10797501216361738203.correct : P10797501216361738203.Spec := by
  intro n
  simp only [A301717]

end A301717

/-! ## A301717.P1532554525840192974

`∑[A008458(A219529(n)%A312928(n))]`
-/

namespace A301717.P1532554525840192974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A219529 n) (A312928 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301717.P1532554525840192974

namespace A301717

/-- `∑[A008458(A219529(n)%A312928(n))]` -/
def P1532554525840192974.Spec : Prop :=
  ∀ n, P1532554525840192974.a n = A301717 n

end A301717

/-! ## A301717.P10519691532937887682

`∑[A008458(A047448(n+1)-A004396(n))]`
-/

namespace A301717.P10519691532937887682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A047448 (n + 1) - A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301717.P10519691532937887682

namespace A301717

/-- `∑[A008458(A047448(n+1)-A004396(n))]` -/
def P10519691532937887682.Spec : Prop :=
  ∀ n, P10519691532937887682.a n = A301717 n

end A301717

/-! ## A301717.P15966383985782272268

`∑[A301716(n)]`
-/

namespace A301717.P15966383985782272268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301717.P15966383985782272268

namespace A301717

/-- `∑[A301716(n)]` -/
def P15966383985782272268.Spec : Prop :=
  ∀ n, P15966383985782272268.a n = A301717 n

end A301717

/-! ## A301717.P12069748566821547795

`A301716(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301717.P12069748566821547795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301716 n + a (A023443 n).toNat

end

end A301717.P12069748566821547795

namespace A301717

/-- `A301716(n)+a(A023443(n))` -/
def P12069748566821547795.Spec : Prop :=
  ∀ n, P12069748566821547795.a n = A301717 n

end A301717

/-! ## A301717.P4372203679427243933

`record[2-a(n-1)-A301716(A026741(n))]` with `a(0)=1`
-/

namespace A301717.P4372203679427243933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - f1 (n - 1) - A301716 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301717.P4372203679427243933

namespace A301717

/-- `record[2-a(n-1)-A301716(A026741(n))]` -/
def P4372203679427243933.Spec : Prop :=
  ∀ n, P4372203679427243933.a n = A301717 n

end A301717

/-!
# A301718: Coordination sequence for node of type V2 in "kre" 2-D tiling (or net).

The programs for A301718, the canonical program `A301718.P12470946639720229977` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301718 has offset 0).

The definition of A301718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301718.P12470946639720229977

`∑[floor(a(n-5))]+n` with `a(0)=1, a(1)=3, a(2)=5, a(3)=5, a(4)=5, a(5)=4, a(6)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301718

/-- `∑[floor(a(n-5))]+n` -/
def P12470946639720229977.Spec : Prop :=
  ∀ n, (P12470946639720229977.a n : ℤ) = A301718 n

theorem P12470946639720229977.correct : P12470946639720229977.Spec := by
  intro n
  simp only [A301718]

end A301718

/-! ## A301718.P6366538491634080817

`A313090(n)+n`
-/

namespace A301718.P6366538491634080817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313090 n + (n : ℤ)

end

end A301718.P6366538491634080817

namespace A301718

/-- `A313090(n)+n` -/
def P6366538491634080817.Spec : Prop :=
  ∀ n, P6366538491634080817.a n = A301718 n

end A301718

/-! ## A301718.P12725994736622619106

`A250120(2*n)-4*n`
-/

namespace A301718.P12725994736622619106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (2 * n) - (4 * n : ℤ)

end

end A301718.P12725994736622619106

namespace A301718

/-- `A250120(2*n)-4*n` -/
def P12725994736622619106.Spec : Prop :=
  ∀ n, P12725994736622619106.a n = A301718 n

end A301718

/-! ## A301718.P13623330615463072780

`A318516(A310532(2*n))`
-/

namespace A301718.P13623330615463072780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A310532 (2 * n)).toNat

end

end A301718.P13623330615463072780

namespace A301718

/-- `A318516(A310532(2*n))` -/
def P13623330615463072780.Spec : Prop :=
  ∀ n, P13623330615463072780.a n = A301718 n

end A301718

/-! ## A301718.P8010484975355062333

`A330025(n)+A310532(n)`
-/

namespace A301718.P8010484975355062333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A310532 n

end

end A301718.P8010484975355062333

namespace A301718

/-- `A330025(n)+A310532(n)` -/
def P8010484975355062333.Spec : Prop :=
  ∀ n, P8010484975355062333.a n = A301718 n

end A301718

/-! ## A301718.P11226527703609321904

`A315654(n)-A244895(n)`
-/

namespace A301718.P11226527703609321904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315654 n - A244895 n

end

end A301718.P11226527703609321904

namespace A301718

/-- `A315654(n)-A244895(n)` -/
def P11226527703609321904.Spec : Prop :=
  ∀ n, P11226527703609321904.a n = A301718 n

end A301718

/-! ## A301718.P6261643266866114278

`A315755(n)-A330025(n)`
-/

namespace A301718.P6261643266866114278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315755 n - A330025 n

end

end A301718.P6261643266866114278

namespace A301718

/-- `A315755(n)-A330025(n)` -/
def P6261643266866114278.Spec : Prop :=
  ∀ n, P6261643266866114278.a n = A301718 n

end A301718

/-! ## A301718.P7909762030251581937

`A047486(n+1)+A008574(n)`
-/

namespace A301718.P7909762030251581937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + A008574 n

end

end A301718.P7909762030251581937

namespace A301718

/-- `A047486(n+1)+A008574(n)` -/
def P7909762030251581937.Spec : Prop :=
  ∀ n, P7909762030251581937.a n = A301718 n

end A301718

/-! ## A301718.P15929255639182667073

`A311807(n)+A047299(n+1)`
-/

namespace A301718.P15929255639182667073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A047299 (n + 1)

end

end A301718.P15929255639182667073

namespace A301718

/-- `A311807(n)+A047299(n+1)` -/
def P15929255639182667073.Spec : Prop :=
  ∀ n, P15929255639182667073.a n = A301718 n

end A301718

/-! ## A301718.P2843963610917715072

`A312928(n)+A047263(n+1)`
-/

namespace A301718.P2843963610917715072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312928 n + A047263 (n + 1)

end

end A301718.P2843963610917715072

namespace A301718

/-- `A312928(n)+A047263(n+1)` -/
def P2843963610917715072.Spec : Prop :=
  ∀ n, P2843963610917715072.a n = A301718 n

end A301718

/-! ## A301718.P4070527224509769814

`2*A008574(n)-A072154(n)`
-/

namespace A301718.P4070527224509769814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A072154 n

end

end A301718.P4070527224509769814

namespace A301718

/-- `2*A008574(n)-A072154(n)` -/
def P4070527224509769814.Spec : Prop :=
  ∀ n, P4070527224509769814.a n = A301718 n

end A301718

/-! ## A301718.P11151617330398597751

`(A310518(n)+A008458(n))/2`
-/

namespace A301718.P11151617330398597751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310518 n + A008458 n : ℚ) / 2

end

end A301718.P11151617330398597751

namespace A301718

/-- `(A310518(n)+A008458(n))/2` -/
def P11151617330398597751.Spec : Prop :=
  ∀ n, P11151617330398597751.a n = (A301718 n : ℚ)

end A301718

/-! ## A301718.P8655370389930509019

`A047486(n+1)+A004277(2*n)`
-/

namespace A301718.P8655370389930509019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + A004277 (2 * n)

end

end A301718.P8655370389930509019

namespace A301718

/-- `A047486(n+1)+A004277(2*n)` -/
def P8655370389930509019.Spec : Prop :=
  ∀ n, P8655370389930509019.a n = A301718 n

end A301718

/-! ## A301718.P15962996744764504609

`A072154(n)+2*A047486(n+1)`
-/

namespace A301718.P15962996744764504609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + 2 * A047486 (n + 1)

end

end A301718.P15962996744764504609

namespace A301718

/-- `A072154(n)+2*A047486(n+1)` -/
def P15962996744764504609.Spec : Prop :=
  ∀ n, P15962996744764504609.a n = A301718 n

end A301718

/-! ## A301718.P4006324294068002971

`A348237(2*n)-A244895(2*n)`
-/

namespace A301718.P4006324294068002971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348237 (2 * n) - A244895 (2 * n)

end

end A301718.P4006324294068002971

namespace A301718

/-- `A348237(2*n)-A244895(2*n)` -/
def P4006324294068002971.Spec : Prop :=
  ∀ n, P4006324294068002971.a n = A301718 n

end A301718

/-! ## A301718.P11285353043523280148

`A047486(n+1)+A008486(n)+n`
-/

namespace A301718.P11285353043523280148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A008486 n + (n : ℤ))

end

end A301718.P11285353043523280148

namespace A301718

/-- `A047486(n+1)+A008486(n)+n` -/
def P11285353043523280148.Spec : Prop :=
  ∀ n, P11285353043523280148.a n = A301718 n

end A301718

/-! ## A301718.P12499585402088966049

`A008458(n)-A047363(n+1)+n`
-/

namespace A301718.P12499585402088966049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047363 (n + 1) + (n : ℤ)

end

end A301718.P12499585402088966049

namespace A301718

/-- `A008458(n)-A047363(n+1)+n` -/
def P12499585402088966049.Spec : Prop :=
  ∀ n, P12499585402088966049.a n = A301718 n

end A301718

/-! ## A301718.P9873312336919686608

`A022144(n)-(A047363(n+1)+n)`
-/

namespace A301718.P9873312336919686608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - (A047363 (n + 1) + (n : ℤ))

end

end A301718.P9873312336919686608

namespace A301718

/-- `A022144(n)-(A047363(n+1)+n)` -/
def P9873312336919686608.Spec : Prop :=
  ∀ n, P9873312336919686608.a n = A301718 n

end A301718

/-! ## A301718.P12360240702942636582

`A271114(n)-A047309(n+1)+n`
-/

namespace A301718.P12360240702942636582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A047309 (n + 1) + (n : ℤ)

end

end A301718.P12360240702942636582

namespace A301718

/-- `A271114(n)-A047309(n+1)+n` -/
def P12360240702942636582.Spec : Prop :=
  ∀ n, P12360240702942636582.a n = A301718 n

end A301718

/-! ## A301718.P11927680758145158864

`A072154(2*n)+2*A057354(n+1)`
-/

namespace A301718.P11927680758145158864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + 2 * A057354 (n + 1)

end

end A301718.P11927680758145158864

namespace A301718

/-- `A072154(2*n)+2*A057354(n+1)` -/
def P11927680758145158864.Spec : Prop :=
  ∀ n, P11927680758145158864.a n = A301718 n

end A301718

/-!
# A301719: Partial sums of A301718.

The programs for A301719, the canonical program `A301719.P3348940328878256115` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301719 has offset 0).

The definition of A301719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301719.P3348940328878256115

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=6, a(2)=17, a(3)=34, a(4)=57, a(5)=85, a(6)=118`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301719

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P3348940328878256115.Spec : Prop :=
  ∀ n, P3348940328878256115.a n = A301719 n

theorem P3348940328878256115.correct : P3348940328878256115.Spec := by
  intro n
  simp only [A301719]

end A301719

/-! ## A301719.P8385128470149997617

`ceil((∑[28*n]+1)/5)`
-/

namespace A301719.P8385128470149997617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 5⌉

end

end A301719.P8385128470149997617

namespace A301719

/-- `ceil((∑[28*n]+1)/5)` -/
def P8385128470149997617.Spec : Prop :=
  ∀ n, P8385128470149997617.a n = A301719 n

end A301719

/-! ## A301719.P3928640447852303386

`A001844(n)+∑[comp[or(2, n)+n]]`
-/

namespace A301719.P3928640447852303386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A301719.P3928640447852303386

namespace A301719

/-- `A001844(n)+∑[comp[or(2, n)+n]]` -/
def P3928640447852303386.Spec : Prop :=
  ∀ n, P3928640447852303386.a n = A301719 n

end A301719

/-! ## A301719.P6264686272404320295

`∑[A047486(n+1)]+∑[4*n]+1`
-/

namespace A301719.P6264686272404320295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

end

end A301719.P6264686272404320295

namespace A301719

/-- `∑[A047486(n+1)]+∑[4*n]+1` -/
def P6264686272404320295.Spec : Prop :=
  ∀ n, P6264686272404320295.a n = A301719 n

end A301719

/-! ## A301719.P8236499719660195403

`A281151(n)+A001844(n)`
-/

namespace A301719.P8236499719660195403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281151 n + A001844 n

end

end A301719.P8236499719660195403

namespace A301719

/-- `A281151(n)+A001844(n)` -/
def P8236499719660195403.Spec : Prop :=
  ∀ n, P8236499719660195403.a n = A301719 n

end A301719

/-! ## A301719.P9866602714278648414

`A069894(n)-A265078(n)`
-/

namespace A301719.P9866602714278648414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - A265078 n

end

end A301719.P9866602714278648414

namespace A301719

/-- `A069894(n)-A265078(n)` -/
def P9866602714278648414.Spec : Prop :=
  ∀ n, P9866602714278648414.a n = A301719 n

end A301719

/-! ## A301719.P7945795272107537451

`2*A001844(n)-A265078(n)`
-/

namespace A301719.P7945795272107537451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001844 n - A265078 n

end

end A301719.P7945795272107537451

namespace A301719

/-- `2*A001844(n)-A265078(n)` -/
def P7945795272107537451.Spec : Prop :=
  ∀ n, P7945795272107537451.a n = A301719 n

end A301719

/-! ## A301719.P11205914676836222081

`∑[A047486(n+1)+A008574(n)]`
-/

namespace A301719.P11205914676836222081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301719.P11205914676836222081

namespace A301719

/-- `∑[A047486(n+1)+A008574(n)]` -/
def P11205914676836222081.Spec : Prop :=
  ∀ n, P11205914676836222081.a n = A301719 n

end A301719

/-! ## A301719.P1801779897478725334

`A398052(n+1)+A398052(n)+n²`
-/

namespace A301719.P1801779897478725334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398052 (n + 1) + (A398052 n + (n ^ 2 : ℤ))

end

end A301719.P1801779897478725334

namespace A301719

/-- `A398052(n+1)+A398052(n)+n²` -/
def P1801779897478725334.Spec : Prop :=
  ∀ n, P1801779897478725334.a n = A301719 n

end A301719

/-! ## A301719.P15818869766952089490

`∑[A250120(2*n)-4*n]`
-/

namespace A301719.P15818869766952089490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (2 * n) - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301719.P15818869766952089490

namespace A301719

/-- `∑[A250120(2*n)-4*n]` -/
def P15818869766952089490.Spec : Prop :=
  ∀ n, P15818869766952089490.a n = A301719 n

end A301719

/-! ## A301719.P16037387781712266445

`A000217(2*n+1)+A011858(2*n)+A002266(n+1)`
-/

namespace A301719.P16037387781712266445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) + (A011858 (2 * n) + A002266 (n + 1))

end

end A301719.P16037387781712266445

namespace A301719

/-- `A000217(2*n+1)+A011858(2*n)+A002266(n+1)` -/
def P16037387781712266445.Spec : Prop :=
  ∀ n, P16037387781712266445.a n = A301719 n

end A301719

/-! ## A301719.P15875732585723017440

`A398051(Δ[n²])-(n+1)`
-/

namespace A301719.P15875732585723017440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A301719.P15875732585723017440

namespace A301719

/-- `A398051(Δ[n²])-(n+1)` -/
def P15875732585723017440.Spec : Prop :=
  ∀ n, P15875732585723017440.a n = A301719 n

end A301719

/-! ## A301719.P3990295212210719465

`n²+n+A033442(2*n+1)+1`
-/

namespace A301719.P3990295212210719465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) + (A033442 (2 * n + 1) + 1)

end

end A301719.P3990295212210719465

namespace A301719

/-- `n²+n+A033442(2*n+1)+1` -/
def P3990295212210719465.Spec : Prop :=
  ∀ n, P3990295212210719465.a n = A301719 n

end A301719

/-! ## A301719.P420353528724132006

`A036404(2*n+1)+n*2*(n+1)`
-/

namespace A301719.P420353528724132006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 (2 * n + 1) + (n * (2 * (n + 1)) : ℤ)

end

end A301719.P420353528724132006

namespace A301719

/-- `A036404(2*n+1)+n*2*(n+1)` -/
def P420353528724132006.Spec : Prop :=
  ∀ n, P420353528724132006.a n = A301719 n

end A301719

/-! ## A301719.P7202251863695577392

`A397976(2*n+1)-A398056(2*n+1)`
-/

namespace A301719.P7202251863695577392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397976 (2 * n + 1) - A398056 (2 * n + 1)

end

end A301719.P7202251863695577392

namespace A301719

/-- `A397976(2*n+1)-A398056(2*n+1)` -/
def P7202251863695577392.Spec : Prop :=
  ∀ n, P7202251863695577392.a n = A301719 n

end A301719

/-! ## A301719.P11296624871922616020

`A069894(n)-∑[A072154(n)]`
-/

namespace A301719.P11296624871922616020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301719.P11296624871922616020

namespace A301719

/-- `A069894(n)-∑[A072154(n)]` -/
def P11296624871922616020.Spec : Prop :=
  ∀ n, P11296624871922616020.a n = A301719 n

end A301719

/-! ## A301719.P7848195279117189723

`∑[A072154(n)+2*A047486(n+1)]`
-/

namespace A301719.P7848195279117189723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + 2 * A047486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301719.P7848195279117189723

namespace A301719

/-- `∑[A072154(n)+2*A047486(n+1)]` -/
def P7848195279117189723.Spec : Prop :=
  ∀ n, P7848195279117189723.a n = A301719 n

end A301719

/-! ## A301719.P13613340344612415475

`∑[A313090(n)+n]`
-/

namespace A301719.P13613340344612415475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313090 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301719.P13613340344612415475

namespace A301719

/-- `∑[A313090(n)+n]` -/
def P13613340344612415475.Spec : Prop :=
  ∀ n, P13613340344612415475.a n = A301719 n

end A301719

/-! ## A301719.P10313896587547396487

`∑[A301718(n)]`
-/

namespace A301719.P10313896587547396487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301719.P10313896587547396487

namespace A301719

/-- `∑[A301718(n)]` -/
def P10313896587547396487.Spec : Prop :=
  ∀ n, P10313896587547396487.a n = A301719 n

end A301719

/-! ## A301719.P15065641956036357625

`∑[A072154(4*n)-4*n]`
-/

namespace A301719.P15065641956036357625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (4 * n) - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301719.P15065641956036357625

namespace A301719

/-- `∑[A072154(4*n)-4*n]` -/
def P15065641956036357625.Spec : Prop :=
  ∀ n, P15065641956036357625.a n = A301719 n

end A301719

/-!
# A301720: Coordination sequence for node of type V1 in "krb" 2-D tiling (or net).

The programs for A301720, the canonical program `A301720.P13865746006239503731` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301720 has offset 0).

The definition of A301720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301720.P1678781602232732143

`A315943(n)+A087509(n)`
-/

namespace A301720.P1678781602232732143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315943 n + A087509 n

end

end A301720.P1678781602232732143

namespace A301720

/-- `A315943(n)+A087509(n)` -/
def P1678781602232732143.Spec : Prop :=
  ∀ n, P1678781602232732143.a n = A301720 n

end A301720

/-! ## A301720.P3797719502778626607

`A315943(n)+Δ[A008133(n)]`
-/

namespace A301720.P3797719502778626607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315943 n + (f1 (n + 1) - f1 n)

end

end A301720.P3797719502778626607

namespace A301720

/-- `A315943(n)+Δ[A008133(n)]` -/
def P3797719502778626607.Spec : Prop :=
  ∀ n, P3797719502778626607.a n = A301720 n

end A301720

/-! ## A301720.P7648419173620135288

`A315847(n)+2*A087509(n)`
-/

namespace A301720.P7648419173620135288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315847 n + 2 * A087509 n

end

end A301720.P7648419173620135288

namespace A301720

/-- `A315847(n)+2*A087509(n)` -/
def P7648419173620135288.Spec : Prop :=
  ∀ n, P7648419173620135288.a n = A301720 n

end A301720

/-! ## A301720.P13865746006239503731

`A008486(2*n-A087509(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A301720

/-- `A008486(2*n-A087509(n))` -/
def P13865746006239503731.Spec : Prop :=
  ∀ n, P13865746006239503731.a n = A301720 n

theorem P13865746006239503731.correct : P13865746006239503731.Spec := by
  intro n
  simp only [A301720]

end A301720

/-! ## A301720.P6044173074489489548

`(A301682(n)+A008458(n))/2`
-/

namespace A301720.P6044173074489489548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301682 n + A008458 n : ℚ) / 2

end

end A301720.P6044173074489489548

namespace A301720

/-- `(A301682(n)+A008458(n))/2` -/
def P6044173074489489548.Spec : Prop :=
  ∀ n, P6044173074489489548.a n = (A301720 n : ℚ)

end A301720

/-! ## A301720.P12635085155802672899

`A008486(n-A087509(n)+n)`
-/

namespace A301720.P12635085155802672899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ((n : ℤ) - A087509 n + (n : ℤ)).toNat

end

end A301720.P12635085155802672899

namespace A301720

/-- `A008486(n-A087509(n)+n)` -/
def P12635085155802672899.Spec : Prop :=
  ∀ n, P12635085155802672899.a n = A301720 n

theorem P12635085155802672899.correct : P12635085155802672899.Spec := by
  intro n
  simp only [A301720, Nat.add_sub_cancel, A301720.P12635085155802672899.a, A301720.P13865746006239503731.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A301720

/-! ## A301720.P6340452060431436710

`A008486(n-(A087509(n)-n))`
-/

namespace A301720.P6340452060431436710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ((n : ℤ) - (A087509 n - (n : ℤ))).toNat

end

end A301720.P6340452060431436710

namespace A301720

/-- `A008486(n-(A087509(n)-n))` -/
def P6340452060431436710.Spec : Prop :=
  ∀ n, P6340452060431436710.a n = A301720 n

theorem P6340452060431436710.correct : P6340452060431436710.Spec := by
  intro n
  simp only [A301720, Nat.add_sub_cancel, A301720.P6340452060431436710.a, A301720.P13865746006239503731.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A301720

/-! ## A301720.P13077592606752659116

`A315847(n)+Δ[2*A008133(n)]`
-/

namespace A301720.P13077592606752659116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315847 n + (f1 (n + 1) - f1 n)

end

end A301720.P13077592606752659116

namespace A301720

/-- `A315847(n)+Δ[2*A008133(n)]` -/
def P13077592606752659116.Spec : Prop :=
  ∀ n, P13077592606752659116.a n = A301720 n

end A301720

/-! ## A301720.P1396985100225624761

`A008486(2*n-Δ[A008133(n)])`
-/

namespace A301720.P1396985100225624761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ((2 * n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A301720.P1396985100225624761

namespace A301720

/-- `A008486(2*n-Δ[A008133(n)])` -/
def P1396985100225624761.Spec : Prop :=
  ∀ n, P1396985100225624761.a n = A301720 n

end A301720

/-! ## A301720.P5042106331845081172

`A301686(n)+A184727(2*n+1)`
-/

namespace A301720.P5042106331845081172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 n + A184727 (2 * n + 1)

end

end A301720.P5042106331845081172

namespace A301720

/-- `A301686(n)+A184727(2*n+1)` -/
def P5042106331845081172.Spec : Prop :=
  ∀ n, P5042106331845081172.a n = A301720 n

end A301720

/-! ## A301720.P8814274153001640686

`A008486(2*n-A105964(2*n))`
-/

namespace A301720.P8814274153001640686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ((2 * n : ℤ) - A105964 (2 * n)).toNat

end

end A301720.P8814274153001640686

namespace A301720

/-- `A008486(2*n-A105964(2*n))` -/
def P8814274153001640686.Spec : Prop :=
  ∀ n, P8814274153001640686.a n = A301720 n

end A301720

/-! ## A301720.P11366467825028616557

`A014682(A301682(n)+A008458(n))`
-/

namespace A301720.P11366467825028616557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A301682 n + A008458 n).toNat

end

end A301720.P11366467825028616557

namespace A301720

/-- `A014682(A301682(n)+A008458(n))` -/
def P11366467825028616557.Spec : Prop :=
  ∀ n, P11366467825028616557.a n = A301720 n

end A301720

/-! ## A301720.P2560886575788379025

`A302032(A301682(n)+A008458(n))`
-/

namespace A301720.P2560886575788379025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A301682 n + A008458 n).toNat

end

end A301720.P2560886575788379025

namespace A301720

/-- `A302032(A301682(n)+A008458(n))` -/
def P2560886575788379025.Spec : Prop :=
  ∀ n, P2560886575788379025.a n = A301720 n

end A301720

/-! ## A301720.P9209853937646429145

`A006368(A301686(n)-A004396(n))`
-/

namespace A301720.P9209853937646429145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A301686 n - A004396 n).toNat

end

end A301720.P9209853937646429145

namespace A301720

/-- `A006368(A301686(n)-A004396(n))` -/
def P9209853937646429145.Spec : Prop :=
  ∀ n, P9209853937646429145.a n = A301720 n

end A301720

/-! ## A301720.P5098815502685399228

`A006368(A301298(n)-A006369(n))`
-/

namespace A301720.P5098815502685399228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A301298 n - A006369 n).toNat

end

end A301720.P5098815502685399228

namespace A301720

/-- `A006368(A301298(n)-A006369(n))` -/
def P5098815502685399228.Spec : Prop :=
  ∀ n, P5098815502685399228.a n = A301720 n

end A301720

/-! ## A301720.P5207800730920104683

`A008486(A008458(n)-A301688(n))`
-/

namespace A301720.P5207800730920104683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008458 n - A301688 n).toNat

end

end A301720.P5207800730920104683

namespace A301720

/-- `A008486(A008458(n)-A301688(n))` -/
def P5207800730920104683.Spec : Prop :=
  ∀ n, P5207800730920104683.a n = A301720 n

end A301720

/-! ## A301720.P1560510147298266957

`A026430(A301686(n)-A004396(n))`
-/

namespace A301720.P1560510147298266957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A301686 n - A004396 n).toNat

end

end A301720.P1560510147298266957

namespace A301720

/-- `A026430(A301686(n)-A004396(n))` -/
def P1560510147298266957.Spec : Prop :=
  ∀ n, P1560510147298266957.a n = A301720 n

end A301720

/-! ## A301720.P13067228565597025695

`A032766(A301686(n)-A004396(n))`
-/

namespace A301720.P13067228565597025695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A301686 n - A004396 n).toNat

end

end A301720.P13067228565597025695

namespace A301720

/-- `A032766(A301686(n)-A004396(n))` -/
def P13067228565597025695.Spec : Prop :=
  ∀ n, P13067228565597025695.a n = A301720 n

end A301720

/-! ## A301720.P18083219395734340886

`A301690(A047222(n+1))`
-/

namespace A301720.P18083219395734340886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 (A047222 (n + 1)).toNat

end

end A301720.P18083219395734340886

namespace A301720

/-- `A301690(A047222(n+1))` -/
def P18083219395734340886.Spec : Prop :=
  ∀ n, P18083219395734340886.a n = A301720 n

end A301720

/-!
# A301721: Partial sums of A301720.

The programs for A301721, the canonical program `A301721.P2724817209755998873` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301721 has offset 0).

The definition of A301721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301721.P2724817209755998873

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=7, a(2)=16, a(3)=34, a(4)=55, a(5)=79, a(6)=115`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301721

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P2724817209755998873.Spec : Prop :=
  ∀ n, P2724817209755998873.a n = A301721 n

theorem P2724817209755998873.correct : P2724817209755998873.Spec := by
  intro n
  simp only [A301721]

end A301721

/-! ## A301721.P13692453475797331630

`A301696(n)+Δ[A087509(n)]`
-/

namespace A301721.P13692453475797331630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301696 n + (f1 (n + 1) - f1 n)

end

end A301721.P13692453475797331630

namespace A301721

/-- `A301696(n)+Δ[A087509(n)]` -/
def P13692453475797331630.Spec : Prop :=
  ∀ n, P13692453475797331630.a n = A301721 n

end A301721

/-! ## A301721.P10289602900736984898

`∑[A008486(2*n-A087509(n))]`
-/

namespace A301721.P10289602900736984898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ((2 * n : ℤ) - A087509 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301721.P10289602900736984898

namespace A301721

/-- `∑[A008486(2*n-A087509(n))]` -/
def P10289602900736984898.Spec : Prop :=
  ∀ n, P10289602900736984898.a n = A301721 n

end A301721

/-! ## A301721.P967255578121655924

`∑[A315943(n)+A087509(n)]`
-/

namespace A301721.P967255578121655924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315943 n + A087509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301721.P967255578121655924

namespace A301721

/-- `∑[A315943(n)+A087509(n)]` -/
def P967255578121655924.Spec : Prop :=
  ∀ n, P967255578121655924.a n = A301721 n

end A301721

/-! ## A301721.P7219659827538373056

`∑[A301720(n)]`
-/

namespace A301721.P7219659827538373056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301721.P7219659827538373056

namespace A301721

/-- `∑[A301720(n)]` -/
def P7219659827538373056.Spec : Prop :=
  ∀ n, P7219659827538373056.a n = A301721 n

end A301721

/-! ## A301721.P13197642467618787218

`∑[A301690(A047222(n+1))]`
-/

namespace A301721.P13197642467618787218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 (A047222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301721.P13197642467618787218

namespace A301721

/-- `∑[A301690(A047222(n+1))]` -/
def P13197642467618787218.Spec : Prop :=
  ∀ n, P13197642467618787218.a n = A301721 n

end A301721

/-! ## A301721.P10003958548530723684

`∑[A301690(A004396(n)+n)]`
-/

namespace A301721.P10003958548530723684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 (A004396 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301721.P10003958548530723684

namespace A301721

/-- `∑[A301690(A004396(n)+n)]` -/
def P10003958548530723684.Spec : Prop :=
  ∀ n, P10003958548530723684.a n = A301721 n

end A301721

/-! ## A301721.P6797987768404885229

`A016777(A002378(n)-A008133(n+1))`
-/

namespace A301721.P6797987768404885229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A002378 n - A008133 (n + 1)).toNat

end

end A301721.P6797987768404885229

namespace A301721

/-- `A016777(A002378(n)-A008133(n+1))` -/
def P6797987768404885229.Spec : Prop :=
  ∀ n, P6797987768404885229.a n = A301721 n

end A301721

/-! ## A301721.P7303208686274640093

`A168233(A298790(n))`
-/

namespace A301721.P7303208686274640093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (A298790 n).toNat

end

end A301721.P7303208686274640093

namespace A301721

/-- `A168233(A298790(n))` -/
def P7303208686274640093.Spec : Prop :=
  ∀ n, P7303208686274640093.a n = A301721 n

end A301721

/-! ## A301721.P14302110944070162522

`∑[A315361(n)-A087509(n)]`
-/

namespace A301721.P14302110944070162522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315361 n - A087509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301721.P14302110944070162522

namespace A301721

/-- `∑[A315361(n)-A087509(n)]` -/
def P14302110944070162522.Spec : Prop :=
  ∀ n, P14302110944070162522.a n = A301721 n

end A301721

/-!
# A301722: Coordination sequence for node of type V2 in "krb" 2-D tiling (or net).

The programs for A301722, the canonical program `A301722.P11193906374397601992` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301722 has offset 0).

The definition of A301722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301722.P18065488789097749382

`or(a(n-1)+3, A002828(a(n-1)))` with `a(0)=1`
-/

namespace A301722.P18065488789097749382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1) + 3) (A002828 (a (n - 1)).toNat)

end

end A301722.P18065488789097749382

namespace A301722

/-- `or(a(n-1)+3, A002828(a(n-1)))` -/
def P18065488789097749382.Spec : Prop :=
  ∀ n, P18065488789097749382.a n = A301722 n

end A301722

/-! ## A301722.P5994858854838518103

`A301676(n)+A186101(n)`
-/

namespace A301722.P5994858854838518103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A186101 n

end

end A301722.P5994858854838518103

namespace A301722

/-- `A301676(n)+A186101(n)` -/
def P5994858854838518103.Spec : Prop :=
  ∀ n, P5994858854838518103.a n = A301722 n

end A301722

/-! ## A301722.P397294555298648006

`A301676(n)+abs(A255368(n))`
-/

namespace A301722.P397294555298648006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + |A255368 n|

end

end A301722.P397294555298648006

namespace A301722

/-- `A301676(n)+abs(A255368(n))` -/
def P397294555298648006.Spec : Prop :=
  ∀ n, P397294555298648006.a n = A301722 n

end A301722

/-! ## A301722.P11193906374397601992

`A265035(2*n)-A004396(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A301722

/-- `A265035(2*n)-A004396(n)` -/
def P11193906374397601992.Spec : Prop :=
  ∀ n, P11193906374397601992.a n = A301722 n

theorem P11193906374397601992.correct : P11193906374397601992.Spec := by
  intro n
  simp only [A301722]

end A301722

/-! ## A301722.P18041571109354665877

`A265035(2*n)-A002264(2*n+1)`
-/

namespace A301722.P18041571109354665877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (2 * n) - A002264 (2 * n + 1)

end

end A301722.P18041571109354665877

namespace A301722

/-- `A265035(2*n)-A002264(2*n+1)` -/
def P18041571109354665877.Spec : Prop :=
  ∀ n, P18041571109354665877.a n = A301722 n

end A301722

/-! ## A301722.P17879263692228529200

`A008615(2*n+1)+A265035(2*n)-n`
-/

namespace A301722.P17879263692228529200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * n + 1) + (A265035 (2 * n) - (n : ℤ))

end

end A301722.P17879263692228529200

namespace A301722

/-- `A008615(2*n+1)+A265035(2*n)-n` -/
def P17879263692228529200.Spec : Prop :=
  ∀ n, P17879263692228529200.a n = A301722 n

end A301722

/-! ## A301722.P17943153253356246005

`A301676(n)+A002264(A066393(n))`
-/

namespace A301722.P17943153253356246005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A002264 (A066393 n).toNat

end

end A301722.P17943153253356246005

namespace A301722

/-- `A301676(n)+A002264(A066393(n))` -/
def P17943153253356246005.Spec : Prop :=
  ∀ n, P17943153253356246005.a n = A301722 n

end A301722

/-! ## A301722.P8981391468122862513

`A008458(n)-A083219(A107750(n))`
-/

namespace A301722.P8981391468122862513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A083219 (A107750 n).toNat

end

end A301722.P8981391468122862513

namespace A301722

/-- `A008458(n)-A083219(A107750(n))` -/
def P8981391468122862513.Spec : Prop :=
  ∀ n, P8981391468122862513.a n = A301722 n

end A301722

/-! ## A301722.P2963221324102704613

`A265035(2*n)-A008615(A016813(n))`
-/

namespace A301722.P2963221324102704613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (2 * n) - A008615 (A016813 n).toNat

end

end A301722.P2963221324102704613

namespace A301722

/-- `A265035(2*n)-A008615(A016813(n))` -/
def P2963221324102704613.Spec : Prop :=
  ∀ n, P2963221324102704613.a n = A301722 n

end A301722

/-! ## A301722.P6094409134058943044

`A004396(2*n)+A004396(A265035(2*n))`
-/

namespace A301722.P6094409134058943044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A265035 (2 * n)).toNat

end

end A301722.P6094409134058943044

namespace A301722

/-- `A004396(2*n)+A004396(A265035(2*n))` -/
def P6094409134058943044.Spec : Prop :=
  ∀ n, P6094409134058943044.a n = A301722 n

end A301722

/-! ## A301722.P14250083039460857136

`A004396(A301676(n)+A298789(n))`
-/

namespace A301722.P14250083039460857136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301676 n + A298789 n).toNat

end

end A301722.P14250083039460857136

namespace A301722

/-- `A004396(A301676(n)+A298789(n))` -/
def P14250083039460857136.Spec : Prop :=
  ∀ n, P14250083039460857136.a n = A301722 n

end A301722

/-! ## A301722.P6295873614223429425

`record[A004396(A265035(n)+A038608(n))]`
-/

namespace A301722.P6295873614223429425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A265035 n + A038608 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301722.P6295873614223429425

namespace A301722

/-- `record[A004396(A265035(n)+A038608(n))]` -/
def P6295873614223429425.Spec : Prop :=
  ∀ n, P6295873614223429425.a n = A301722 n

end A301722

/-! ## A301722.P6766344053822606793

`A004396(A265035(2*n)+A005843(n))`
-/

namespace A301722.P6766344053822606793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A265035 (2 * n) + A005843 n).toNat

end

end A301722.P6766344053822606793

namespace A301722

/-- `A004396(A265035(2*n)+A005843(n))` -/
def P6766344053822606793.Spec : Prop :=
  ∀ n, P6766344053822606793.a n = A301722 n

end A301722

/-! ## A301722.P8820713968776067424

`A274616(A301676(n)+A298789(n))`
-/

namespace A301722.P8820713968776067424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A301676 n + A298789 n).toNat

end

end A301722.P8820713968776067424

namespace A301722

/-- `A274616(A301676(n)+A298789(n))` -/
def P8820713968776067424.Spec : Prop :=
  ∀ n, P8820713968776067424.a n = A301722 n

end A301722

/-!
# A301723: Partial sums of A301722.

The programs for A301723, the canonical program `A301723.P3070922205377370931` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301723 has offset 0).

The definition of A301723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301723.P3070922205377370931

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=6, a(2)=16, a(3)=31, a(4)=53, a(5)=80, a(6)=111`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301723

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P3070922205377370931.Spec : Prop :=
  ∀ n, P3070922205377370931.a n = A301723 n

theorem P3070922205377370931.correct : P3070922205377370931.Spec := by
  intro n
  simp only [A301723]

end A301723

/-! ## A301723.P17230366618331324620

`∑[A265035(2*n)-A004396(n)]`
-/

namespace A301723.P17230366618331324620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (2 * n) - A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301723.P17230366618331324620

namespace A301723

/-- `∑[A265035(2*n)-A004396(n)]` -/
def P17230366618331324620.Spec : Prop :=
  ∀ n, P17230366618331324620.a n = A301723 n

end A301723

/-! ## A301723.P14230906833040341506

`A299259(n)+A107750(A004273(n))`
-/

namespace A301723.P14230906833040341506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299259 n + A107750 (A004273 n).toNat

end

end A301723.P14230906833040341506

namespace A301723

/-- `A299259(n)+A107750(A004273(n))` -/
def P14230906833040341506.Spec : Prop :=
  ∀ n, P14230906833040341506.a n = A301723 n

end A301723

/-! ## A301723.P3623801210236405398

`∑[A265035(2*n)-A002264(2*n+1)]`
-/

namespace A301723.P3623801210236405398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (2 * n) - A002264 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301723.P3623801210236405398

namespace A301723

/-- `∑[A265035(2*n)-A002264(2*n+1)]` -/
def P3623801210236405398.Spec : Prop :=
  ∀ n, P3623801210236405398.a n = A301723 n

end A301723

/-! ## A301723.P14630392484785408991

`A301677(n)+∑[A186101(n)]`
-/

namespace A301723.P14630392484785408991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301677 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301723.P14630392484785408991

namespace A301723

/-- `A301677(n)+∑[A186101(n)]` -/
def P14630392484785408991.Spec : Prop :=
  ∀ n, P14630392484785408991.a n = A301723 n

end A301723

/-! ## A301723.P2776389189802245778

`∑[A301676(n)+A186101(n)]`
-/

namespace A301723.P2776389189802245778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A186101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301723.P2776389189802245778

namespace A301723

/-- `∑[A301676(n)+A186101(n)]` -/
def P2776389189802245778.Spec : Prop :=
  ∀ n, P2776389189802245778.a n = A301723 n

end A301723

/-! ## A301723.P17395681901894355317

`∑[A301722(n)]`
-/

namespace A301723.P17395681901894355317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301723.P17395681901894355317

namespace A301723

/-- `∑[A301722(n)]` -/
def P17395681901894355317.Spec : Prop :=
  ∀ n, P17395681901894355317.a n = A301723 n

end A301723

/-! ## A301723.P7459909841740079006

`A301722(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301723.P7459909841740079006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301722 n + a (A023443 n).toNat

end

end A301723.P7459909841740079006

namespace A301723

/-- `A301722(n)+a(A023443(n))` -/
def P7459909841740079006.Spec : Prop :=
  ∀ n, P7459909841740079006.a n = A301723 n

end A301723

/-! ## A301723.P2869781915969964554

`∑[A004396(2*n)+A004396(A265035(2*n))]`
-/

namespace A301723.P2869781915969964554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A265035 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301723.P2869781915969964554

namespace A301723

/-- `∑[A004396(2*n)+A004396(A265035(2*n))]` -/
def P2869781915969964554.Spec : Prop :=
  ∀ n, P2869781915969964554.a n = A301723 n

end A301723

/-!
# A301724: Coordination sequence for node of type V1 in "kra" 2-D tiling (or net).

The programs for A301724, the canonical program `A301724.P3038787070238484686` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301724 has offset 0).

The definition of A301724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301724.P3038787070238484686

`A330033(n)+A314209(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A301724

/-- `A330033(n)+A314209(n)` -/
def P3038787070238484686.Spec : Prop :=
  ∀ n, P3038787070238484686.a n = A301724 n

theorem P3038787070238484686.correct : P3038787070238484686.Spec := by
  intro n
  simp only [A301724]

end A301724

/-! ## A301724.P177208602760443254

`A042965(A314943(n)+1)-n`
-/

namespace A301724.P177208602760443254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A314943 n + 1).toNat - (n : ℤ)

end

end A301724.P177208602760443254

namespace A301724

/-- `A042965(A314943(n)+1)-n` -/
def P177208602760443254.Spec : Prop :=
  ∀ n, P177208602760443254.a n = A301724 n

end A301724

/-! ## A301724.P2932087501141155479

`A064429(A315518(n)+A000007(n))`
-/

namespace A301724.P2932087501141155479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A315518 n + A000007 n).toNat

end

end A301724.P2932087501141155479

namespace A301724

/-- `A064429(A315518(n)+A000007(n))` -/
def P2932087501141155479.Spec : Prop :=
  ∀ n, P2932087501141155479.a n = A301724 n

end A301724

/-! ## A301724.P3753823061637849510

`A064429(A314827(n)+A028310(n))`
-/

namespace A301724.P3753823061637849510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A314827 n + A028310 n).toNat

end

end A301724.P3753823061637849510

namespace A301724

/-- `A064429(A314827(n)+A028310(n))` -/
def P3753823061637849510.Spec : Prop :=
  ∀ n, P3753823061637849510.a n = A301724 n

end A301724

/-! ## A301724.P148094356468360941

`A004396(2*A314943(n))-n`
-/

namespace A301724.P148094356468360941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A314943 n).toNat - (n : ℤ)

end

end A301724.P148094356468360941

namespace A301724

/-- `A004396(2*A314943(n))-n` -/
def P148094356468360941.Spec : Prop :=
  ∀ n, P148094356468360941.a n = A301724 n

end A301724

/-! ## A301724.P5744703368912106619

`A004396(A005843(A314943(n)))-n`
-/

namespace A301724.P5744703368912106619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A314943 n).toNat).toNat - (n : ℤ)

end

end A301724.P5744703368912106619

namespace A301724

/-- `A004396(A005843(A314943(n)))-n` -/
def P5744703368912106619.Spec : Prop :=
  ∀ n, P5744703368912106619.a n = A301724 n

end A301724

/-!
# A301725: Partial sums of A301724.

The programs for A301725, the canonical program `A301725.P2295522434011153661` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301725 has offset 0).

The definition of A301725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301725.P2295522434011153661

`∑[A301724(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A301725

/-- `∑[A301724(n)]` -/
def P2295522434011153661.Spec : Prop :=
  ∀ n, P2295522434011153661.a n = A301725 n

theorem P2295522434011153661.correct : P2295522434011153661.Spec := by
  intro n
  simp only [A301725]

end A301725

/-! ## A301725.P5335747078821697188

`A301724(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301725.P5335747078821697188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301724 n + a (A023443 n).toNat

end

end A301725.P5335747078821697188

namespace A301725

/-- `A301724(n)+a(A023443(n))` -/
def P5335747078821697188.Spec : Prop :=
  ∀ n, P5335747078821697188.a n = A301725 n

end A301725

/-! ## A301725.P16883517737972229511

`A301724(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A301725.P16883517737972229511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301724 n + a (A028310 n - 1).toNat

end

end A301725.P16883517737972229511

namespace A301725

/-- `A301724(n)+a(A028310(n)-1)` -/
def P16883517737972229511.Spec : Prop :=
  ∀ n, P16883517737972229511.a n = A301725 n

end A301725

/-! ## A301725.P14067699077569419868

`∑[A330033(n)+A314209(n)]`
-/

namespace A301725.P14067699077569419868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 n + A314209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301725.P14067699077569419868

namespace A301725

/-- `∑[A330033(n)+A314209(n)]` -/
def P14067699077569419868.Spec : Prop :=
  ∀ n, P14067699077569419868.a n = A301725 n

end A301725

/-! ## A301725.P15126881887280022462

`∑[A042965(A314943(n)+1)-n]`
-/

namespace A301725.P15126881887280022462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A314943 n + 1).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301725.P15126881887280022462

namespace A301725

/-- `∑[A042965(A314943(n)+1)-n]` -/
def P15126881887280022462.Spec : Prop :=
  ∀ n, P15126881887280022462.a n = A301725 n

end A301725

/-! ## A301725.P1026669827326813476

`∑[A064429(A315518(n))]-1`
-/

namespace A301725.P1026669827326813476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A315518 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A301725.P1026669827326813476

namespace A301725

/-- `∑[A064429(A315518(n))]-1` -/
def P1026669827326813476.Spec : Prop :=
  ∀ n, P1026669827326813476.a n = A301725 n

end A301725

/-! ## A301725.P11401373271363957682

`∑[A004396(2*A314943(n))-n]`
-/

namespace A301725.P11401373271363957682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A314943 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301725.P11401373271363957682

namespace A301725

/-- `∑[A004396(2*A314943(n))-n]` -/
def P11401373271363957682.Spec : Prop :=
  ∀ n, P11401373271363957682.a n = A301725 n

end A301725

/-!
# A301726: Coordination sequence for node of type V2 in "kra" 2-D tiling (or net).

The programs for A301726, the canonical program `A301726.P1101597542674240363` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301726 has offset 0).

The definition of A301726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301726.P1101597542674240363

`A008706(n)+A151988(n)-A004396(A151988(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A301726

/-- `A008706(n)+A151988(n)-A004396(A151988(n))` -/
def P1101597542674240363.Spec : Prop :=
  ∀ n, P1101597542674240363.a n = A301726 n

theorem P1101597542674240363.correct : P1101597542674240363.Spec := by
  intro n
  simp only [A301726]

end A301726

/-! ## A301726.P7545906153952567471

`A008458(n)-A004525(A047263(n+1))`
-/

namespace A301726.P7545906153952567471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A047263 (n + 1)).toNat

end

end A301726.P7545906153952567471

namespace A301726

/-- `A008458(n)-A004525(A047263(n+1))` -/
def P7545906153952567471.Spec : Prop :=
  ∀ n, P7545906153952567471.a n = A301726 n

end A301726

/-! ## A301726.P15145477700316431784

`A008706(n)-A004525(A047263(n+1))+n`
-/

namespace A301726.P15145477700316431784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A004525 (A047263 (n + 1)).toNat + (n : ℤ)

end

end A301726.P15145477700316431784

namespace A301726

/-- `A008706(n)-A004525(A047263(n+1))+n` -/
def P15145477700316431784.Spec : Prop :=
  ∀ n, P15145477700316431784.a n = A301726 n

end A301726

/-! ## A301726.P11801148389772374721

`record[A165998(n)]-A004525(A047263(n+1))`
-/

namespace A301726.P11801148389772374721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004525 (A047263 (n + 1)).toNat

end

end A301726.P11801148389772374721

namespace A301726

/-- `record[A165998(n)]-A004525(A047263(n+1))` -/
def P11801148389772374721.Spec : Prop :=
  ∀ n, P11801148389772374721.a n = A301726 n

end A301726

/-! ## A301726.P790767840195933534

`A008486(2*n)-A004525(A047263(n+1))`
-/

namespace A301726.P790767840195933534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004525 (A047263 (n + 1)).toNat

end

end A301726.P790767840195933534

namespace A301726

/-- `A008486(2*n)-A004525(A047263(n+1))` -/
def P790767840195933534.Spec : Prop :=
  ∀ n, P790767840195933534.a n = A301726 n

end A301726

/-! ## A301726.P8648873498075004799

`A004275(A016777(n))-A004525(A047263(n+1))`
-/

namespace A301726.P8648873498075004799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A016777 n).toNat - A004525 (A047263 (n + 1)).toNat

end

end A301726.P8648873498075004799

namespace A301726

/-- `A004275(A016777(n))-A004525(A047263(n+1))` -/
def P8648873498075004799.Spec : Prop :=
  ∀ n, P8648873498075004799.a n = A301726 n

end A301726

/-! ## A301726.P12014000169178728461

`A312892(n)+A151988(n)`
-/

namespace A301726.P12014000169178728461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312892 n + A151988 n

end

end A301726.P12014000169178728461

namespace A301726

/-- `A312892(n)+A151988(n)` -/
def P12014000169178728461.Spec : Prop :=
  ∀ n, P12014000169178728461.a n = A301726 n

end A301726

/-! ## A301726.P11975337914069954793

`A312903(n)+n`
-/

namespace A301726.P11975337914069954793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + (n : ℤ)

end

end A301726.P11975337914069954793

namespace A301726

/-- `A312903(n)+n` -/
def P11975337914069954793.Spec : Prop :=
  ∀ n, P11975337914069954793.a n = A301726 n

end A301726

/-! ## A301726.P10770485692248326060

`A005843(n)-(n-A312903(n))`
-/

namespace A301726.P10770485692248326060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A312903 n)

end

end A301726.P10770485692248326060

namespace A301726

/-- `A005843(n)-(n-A312903(n))` -/
def P10770485692248326060.Spec : Prop :=
  ∀ n, P10770485692248326060.a n = A301726 n

end A301726

/-! ## A301726.P2035159166318836612

`A313476(n)+n-A330025(n)`
-/

namespace A301726.P2035159166318836612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n + ((n : ℤ) - A330025 n)

end

end A301726.P2035159166318836612

namespace A301726

/-- `A313476(n)+n-A330025(n)` -/
def P2035159166318836612.Spec : Prop :=
  ∀ n, P2035159166318836612.a n = A301726 n

end A301726

/-! ## A301726.P3475405471902611159

`A006368(A008574(n))-A004525(A047263(n+1))`
-/

namespace A301726.P3475405471902611159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A008574 n).toNat - A004525 (A047263 (n + 1)).toNat

end

end A301726.P3475405471902611159

namespace A301726

/-- `A006368(A008574(n))-A004525(A047263(n+1))` -/
def P3475405471902611159.Spec : Prop :=
  ∀ n, P3475405471902611159.a n = A301726 n

end A301726

/-! ## A301726.P10280895997246860283

`A008458(n)+A008574(n)-A314886(n)`
-/

namespace A301726.P10280895997246860283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314886 n)

end

end A301726.P10280895997246860283

namespace A301726

/-- `A008458(n)+A008574(n)-A314886(n)` -/
def P10280895997246860283.Spec : Prop :=
  ∀ n, P10280895997246860283.a n = A301726 n

end A301726

/-! ## A301726.P8687781699352252664

`(A310379(n)+A008458(n))/2`
-/

namespace A301726.P8687781699352252664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310379 n + A008458 n : ℚ) / 2

end

end A301726.P8687781699352252664

namespace A301726

/-- `(A310379(n)+A008458(n))/2` -/
def P8687781699352252664.Spec : Prop :=
  ∀ n, P8687781699352252664.a n = (A301726 n : ℚ)

end A301726

/-! ## A301726.P8367370390147317531

`A315684(n)-A330025(n)`
-/

namespace A301726.P8367370390147317531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315684 n - A330025 n

end

end A301726.P8367370390147317531

namespace A301726

/-- `A315684(n)-A330025(n)` -/
def P8367370390147317531.Spec : Prop :=
  ∀ n, P8367370390147317531.a n = A301726 n

end A301726

/-! ## A301726.P5059320467777457726

`A314220(n)-A047263(n+1)+n`
-/

namespace A301726.P5059320467777457726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n - A047263 (n + 1) + (n : ℤ)

end

end A301726.P5059320467777457726

namespace A301726

/-- `A314220(n)-A047263(n+1)+n` -/
def P5059320467777457726.Spec : Prop :=
  ∀ n, P5059320467777457726.a n = A301726 n

end A301726

/-! ## A301726.P13087860899794974576

`A004396(A314164(n)+n)+n`
-/

namespace A301726.P13087860899794974576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314164 n + (n : ℤ)).toNat + (n : ℤ)

end

end A301726.P13087860899794974576

namespace A301726

/-- `A004396(A314164(n)+n)+n` -/
def P13087860899794974576.Spec : Prop :=
  ∀ n, P13087860899794974576.a n = A301726 n

end A301726

/-! ## A301726.P5598025535929621067

`A004396(A314220(n)+n)+n`
-/

namespace A301726.P5598025535929621067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314220 n + (n : ℤ)).toNat + (n : ℤ)

end

end A301726.P5598025535929621067

namespace A301726

/-- `A004396(A314220(n)+n)+n` -/
def P5598025535929621067.Spec : Prop :=
  ∀ n, P5598025535929621067.a n = A301726 n

end A301726

/-! ## A301726.P6445069612042135999

`A274616(A022144(n)+round(n/10))`
-/

namespace A301726.P6445069612042135999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A022144 n + SequenceMachineLib.roundAway ((n : ℚ) / 10)).toNat

end

end A301726.P6445069612042135999

namespace A301726

/-- `A274616(A022144(n)+round(n/10))` -/
def P6445069612042135999.Spec : Prop :=
  ∀ n, P6445069612042135999.a n = A301726 n

end A301726

/-! ## A301726.P8079181762381571793

`A004525(A250120(2*n)+A151988(n))`
-/

namespace A301726.P8079181762381571793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A250120 (2 * n) + A151988 n).toNat

end

end A301726.P8079181762381571793

namespace A301726

/-- `A004525(A250120(2*n)+A151988(n))` -/
def P8079181762381571793.Spec : Prop :=
  ∀ n, P8079181762381571793.a n = A301726 n

end A301726

/-! ## A301726.P565147826041919239

`A004525(A301718(2*n)-A057354(n+1))`
-/

namespace A301726.P565147826041919239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301718 (2 * n) - A057354 (n + 1)).toNat

end

end A301726.P565147826041919239

namespace A301726

/-- `A004525(A301718(2*n)-A057354(n+1))` -/
def P565147826041919239.Spec : Prop :=
  ∀ n, P565147826041919239.a n = A301726 n

end A301726

/-!
# A301727: Partial sums of A301726.

The programs for A301727, the canonical program `A301727.P4383276684323886608` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301727 has offset 0).

The definition of A301727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301727.P4383276684323886608

`∑[A301726(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A301727

/-- `∑[A301726(n)]` -/
def P4383276684323886608.Spec : Prop :=
  ∀ n, P4383276684323886608.a n = A301727 n

theorem P4383276684323886608.correct : P4383276684323886608.Spec := by
  intro n
  simp only [A301727]

end A301727

/-! ## A301727.P4296351613399143178

`A301726(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301727.P4296351613399143178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301726 n + a (A023443 n).toNat

end

end A301727.P4296351613399143178

namespace A301727

/-- `A301726(n)+a(A023443(n))` -/
def P4296351613399143178.Spec : Prop :=
  ∀ n, P4296351613399143178.a n = A301727 n

end A301727

/-! ## A301727.P9643154280972808165

`a(n-1)+A301726(n)+A000038(n)` with `a(0)=1`
-/

namespace A301727.P9643154280972808165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A301726 n + A000038 n)

end

end A301727.P9643154280972808165

namespace A301727

/-- `a(n-1)+A301726(n)+A000038(n)` -/
def P9643154280972808165.Spec : Prop :=
  ∀ n, P9643154280972808165.a n = A301727 n

end A301727

/-! ## A301727.P11544095781747046924

`a(n-1)+A301726(n)%A096942(n)` with `a(0)=1`
-/

namespace A301727.P11544095781747046924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A301726 n) (A096942 n)

end

end A301727.P11544095781747046924

namespace A301727

/-- `a(n-1)+A301726(n)%A096942(n)` -/
def P11544095781747046924.Spec : Prop :=
  ∀ n, P11544095781747046924.a n = A301727 n

end A301727

/-! ## A301727.P11822341711062555471

`Δ[n^3]-∑[A004525(A047263(n+1))]`
-/

namespace A301727.P11822341711062555471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A301727.P11822341711062555471

namespace A301727

/-- `Δ[n^3]-∑[A004525(A047263(n+1))]` -/
def P11822341711062555471.Spec : Prop :=
  ∀ n, P11822341711062555471.a n = A301727 n

end A301727

/-! ## A301727.P4801134704667824745

`∑[A008458(n)-A004525(A047263(n+1))]`
-/

namespace A301727.P4801134704667824745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A047263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301727.P4801134704667824745

namespace A301727

/-- `∑[A008458(n)-A004525(A047263(n+1))]` -/
def P4801134704667824745.Spec : Prop :=
  ∀ n, P4801134704667824745.a n = A301727 n

end A301727

/-! ## A301727.P7497750577777398216

`∑[A008486(2*n)-A004525(A047263(n+1))]`
-/

namespace A301727.P7497750577777398216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004525 (A047263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301727.P7497750577777398216

namespace A301727

/-- `∑[A008486(2*n)-A004525(A047263(n+1))]` -/
def P7497750577777398216.Spec : Prop :=
  ∀ n, P7497750577777398216.a n = A301727 n

end A301727

/-! ## A301727.P7677354478497127655

`∑[A312903(n)+n]`
-/

namespace A301727.P7677354478497127655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301727.P7677354478497127655

namespace A301727

/-- `∑[A312903(n)+n]` -/
def P7677354478497127655.Spec : Prop :=
  ∀ n, P7677354478497127655.a n = A301727 n

end A301727

/-! ## A301727.P4908341845043016047

`∑[A004525(A301718(2*n)-A057354(n+1))]`
-/

namespace A301727.P4908341845043016047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301718 (2 * n) - A057354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301727.P4908341845043016047

namespace A301727

/-- `∑[A004525(A301718(2*n)-A057354(n+1))]` -/
def P4908341845043016047.Spec : Prop :=
  ∀ n, P4908341845043016047.a n = A301727 n

end A301727

/-!
# A301728: a(0)=1; thereafter, a(n) = 2n-1 if n == 0 (mod 3), (5n+1)/3 if n == 1 (mod 3), (5n+2)/3 if n == 2 (mod 3).

The programs for A301728, the canonical program `A301728.P6847930870303185735` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301728 has offset 0).

The definition of A301728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301728.P6847930870303185735

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=7, a(5)=9, a(6)=11`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301728

/-- `2*a(n-3)-a(n-6)` -/
def P6847930870303185735.Spec : Prop :=
  ∀ n, P6847930870303185735.a n = A301728 n

theorem P6847930870303185735.correct : P6847930870303185735.Spec := by
  intro n
  simp only [A301728]

end A301728

/-! ## A301728.P13091123351612603332

`abs(A057979(A004396(n))-A005843(n))`
-/

namespace A301728.P13091123351612603332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057979 (A004396 n).toNat - A005843 n|

end

end A301728.P13091123351612603332

namespace A301728

/-- `abs(A057979(A004396(n))-A005843(n))` -/
def P13091123351612603332.Spec : Prop :=
  ∀ n, P13091123351612603332.a n = A301728 n

end A301728

/-! ## A301728.P15888785539908137015

`A066393(n)-A057979(A008576(n))`
-/

namespace A301728.P15888785539908137015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066393 n - A057979 (A008576 n).toNat

end

end A301728.P15888785539908137015

namespace A301728

/-- `A066393(n)-A057979(A008576(n))` -/
def P15888785539908137015.Spec : Prop :=
  ∀ n, P15888785539908137015.a n = A301728 n

end A301728

/-! ## A301728.P5623128785430768647

`A121496(A298788(n))`
-/

namespace A301728.P5623128785430768647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121496 (A298788 n).toNat

end

end A301728.P5623128785430768647

namespace A301728

/-- `A121496(A298788(n))` -/
def P5623128785430768647.Spec : Prop :=
  ∀ n, P5623128785430768647.a n = A301728 n

end A301728

/-! ## A301728.P5606587512409838732

`A028242(A298788(n)-1)`
-/

namespace A301728.P5606587512409838732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A298788 n - 1).toNat

end

end A301728.P5606587512409838732

namespace A301728

/-- `A028242(A298788(n)-1)` -/
def P5606587512409838732.Spec : Prop :=
  ∀ n, P5606587512409838732.a n = A301728 n

end A301728

/-! ## A301728.P3194917341402079321

`A087507(A310444(n))%A016789(n)`
-/

namespace A301728.P3194917341402079321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087507 (A310444 n).toNat) (A016789 n)

end

end A301728.P3194917341402079321

namespace A301728

/-- `A087507(A310444(n))%A016789(n)` -/
def P3194917341402079321.Spec : Prop :=
  ∀ n, P3194917341402079321.a n = A301728 n

end A301728

/-! ## A301728.P2515282433734773350

`A233583(2*n+1)-A057979(A002264(2*n+1))`
-/

namespace A301728.P2515282433734773350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (2 * n + 1) - A057979 (A002264 (2 * n + 1)).toNat

end

end A301728.P2515282433734773350

namespace A301728

/-- `A233583(2*n+1)-A057979(A002264(2*n+1))` -/
def P2515282433734773350.Spec : Prop :=
  ∀ n, P2515282433734773350.a n = A301728 n

end A301728

/-!
# A301729: a(0)=1; thereafter positive numbers that are congruent to {0, 1, 3, 5} mod 6.

The programs for A301729, the canonical program `A301729.P1672909306721827796` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301729 has offset 0).

The definition of A301729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301729.P6117716247630312745

`∑[and(2, n)!-char[1]]`
-/

namespace A301729.P6117716247630312745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 2 n) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301729.P6117716247630312745

namespace A301729

/-- `∑[and(2, n)!-char[1]]` -/
def P6117716247630312745.Spec : Prop :=
  ∀ n, P6117716247630312745.a n = A301729 n

end A301729

/-! ## A301729.P9613162239752422292

`∑[xor(and(2, n)!, char[1])]`
-/

namespace A301729.P9613162239752422292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.factorial (Nat.land 2 n)) (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301729.P9613162239752422292

namespace A301729

/-- `∑[xor(and(2, n)!, char[1])]` -/
def P9613162239752422292.Spec : Prop :=
  ∀ n, (P9613162239752422292.a n : ℤ) = A301729 n

end A301729

/-! ## A301729.P1672909306721827796

`∑[abs(a(and(2, n)))]` with `a(0)=1, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301729

/-- `∑[abs(a(and(2, n)))]` -/
def P1672909306721827796.Spec : Prop :=
  ∀ n, (P1672909306721827796.a n : ℤ) = A301729 n

theorem P1672909306721827796.correct : P1672909306721827796.Spec := by
  intro n
  simp only [A301729]

end A301729

/-! ## A301729.P12260635239614568521

`∑[a(and(2, n))!]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A301729.P12260635239614568521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  Nat.factorial (f1 (Nat.land 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301729.P12260635239614568521

namespace A301729

/-- `∑[a(and(2, n))!]` -/
def P12260635239614568521.Spec : Prop :=
  ∀ n, (P12260635239614568521.a n : ℤ) = A301729 n

end A301729

/-! ## A301729.P13817438624349704740

`∑[floor(a(and(2, n)))]` with `a(0)=1, a(1)=0, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A301729.P13817438624349704740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301729.P13817438624349704740

namespace A301729

/-- `∑[floor(a(and(2, n)))]` -/
def P13817438624349704740.Spec : Prop :=
  ∀ n, (P13817438624349704740.a n : ℤ) = A301729 n

theorem P13817438624349704740.correct : P13817438624349704740.Spec := by
  intro n
  simp only [A301729, Nat.add_sub_cancel, A301729.P13817438624349704740.f1, A301729.P13817438624349704740.a, A301729.P1672909306721827796.f1, A301729.P1672909306721827796.a, SequenceMachineLib.memo_apply]

end A301729

/-! ## A301729.P2552800167259457493

`∑[ceil(a(and(2, n)))]` with `a(0)=1, a(1)=0, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A301729.P2552800167259457493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301729.P2552800167259457493

namespace A301729

/-- `∑[ceil(a(and(2, n)))]` -/
def P2552800167259457493.Spec : Prop :=
  ∀ n, (P2552800167259457493.a n : ℤ) = A301729 n

theorem P2552800167259457493.correct : P2552800167259457493.Spec := by
  intro n
  simp only [A301729, Nat.add_sub_cancel, A301729.P2552800167259457493.f1, A301729.P2552800167259457493.a, A301729.P1672909306721827796.f1, A301729.P1672909306721827796.a, SequenceMachineLib.memo_apply]

end A301729

/-! ## A301729.P18203653630340386521

`∑[a(n-4)!]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A301729.P18203653630340386521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f1 =>
  Nat.factorial (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301729.P18203653630340386521

namespace A301729

/-- `∑[a(n-4)!]` -/
def P18203653630340386521.Spec : Prop :=
  ∀ n, (P18203653630340386521.a n : ℤ) = A301729 n

end A301729

/-! ## A301729.P13008940017266160794

`∑[gcd(2, ∑[n+1])-char[1]]`
-/

namespace A301729.P13008940017266160794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301729.P13008940017266160794

namespace A301729

/-- `∑[gcd(2, ∑[n+1])-char[1]]` -/
def P13008940017266160794.Spec : Prop :=
  ∀ n, P13008940017266160794.a n = A301729 n

end A301729

/-! ## A301729.P5339454310165349263

`a(n-4)+6` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=6`
-/

namespace A301729.P5339454310165349263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 5, 6] fun n a =>
  a (n - 4) + 6

end

end A301729.P5339454310165349263

namespace A301729

/-- `a(n-4)+6` -/
def P5339454310165349263.Spec : Prop :=
  ∀ n, (P5339454310165349263.a n : ℤ) = A301729 n

end A301729

/-! ## A301729.P16065519803116642207

`∑[3-a(n-2)]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A301729.P16065519803116642207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f1 =>
  3 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301729.P16065519803116642207

namespace A301729

/-- `∑[3-a(n-2)]` -/
def P16065519803116642207.Spec : Prop :=
  ∀ n, P16065519803116642207.a n = A301729 n

end A301729

/-! ## A301729.P5664840372232067336

`∑[2/a(and(2, n+2))]` with `a(0)=1, a(1)=0`
-/

namespace A301729.P5664840372232067336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 / f1 (Nat.land 2 (n + 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301729.P5664840372232067336

namespace A301729

/-- `∑[2/a(and(2, n+2))]` -/
def P5664840372232067336.Spec : Prop :=
  ∀ n, P5664840372232067336.a n = (A301729 n : ℚ)

end A301729

/-! ## A301729.P12498136204850461971

`3*(n-1)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A301729.P12498136204850461971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  3 * ((n : ℤ) - 1) - a (n - 2)

end

end A301729.P12498136204850461971

namespace A301729

/-- `3*(n-1)-a(n-2)` -/
def P12498136204850461971.Spec : Prop :=
  ∀ n, P12498136204850461971.a n = A301729 n

end A301729

/-! ## A301729.P15102081677601541511

`2*n+1-Δ[floor(((n+1)²/(2*n+1))²)]`
-/

namespace A301729.P15102081677601541511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) ^ 2 : ℚ) / (2 * n + 1 : ℚ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A301729.P15102081677601541511

namespace A301729

/-- `2*n+1-Δ[floor(((n+1)²/(2*n+1))²)]` -/
def P15102081677601541511.Spec : Prop :=
  ∀ n, P15102081677601541511.a n = A301729 n

end A301729

/-! ## A301729.P11652998182936329169

`A047273(A028310(n)+1)`
-/

namespace A301729.P11652998182936329169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (A028310 n + 1).toNat

end

end A301729.P11652998182936329169

namespace A301729

/-- `A047273(A028310(n)+1)` -/
def P11652998182936329169.Spec : Prop :=
  ∀ n, P11652998182936329169.a n = A301729 n

end A301729

/-! ## A301729.P4577910082286340436

`xor(A000007(n), A047273(n+1))`
-/

namespace A301729.P4577910082286340436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A047273 (n + 1))

end

end A301729.P4577910082286340436

namespace A301729

/-- `xor(A000007(n), A047273(n+1))` -/
def P4577910082286340436.Spec : Prop :=
  ∀ n, P4577910082286340436.a n = A301729 n

end A301729

/-! ## A301729.P17756936802761175595

`A047273(A254667(n+1))`
-/

namespace A301729.P17756936802761175595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (A254667 (n + 1)).toNat

end

end A301729.P17756936802761175595

namespace A301729

/-- `A047273(A254667(n+1))` -/
def P17756936802761175595.Spec : Prop :=
  ∀ n, P17756936802761175595.a n = A301729 n

end A301729

/-! ## A301729.P4289060290883019992

`A028310(A004524(n+1)+n)`
-/

namespace A301729.P4289060290883019992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004524 (n + 1) + (n : ℤ)).toNat

end

end A301729.P4289060290883019992

namespace A301729

/-- `A028310(A004524(n+1)+n)` -/
def P4289060290883019992.Spec : Prop :=
  ∀ n, P4289060290883019992.a n = A301729 n

end A301729

/-! ## A301729.P16486330516670525385

`A171950(A047255(n+2))`
-/

namespace A301729.P16486330516670525385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A047255 (n + 2)).toNat

end

end A301729.P16486330516670525385

namespace A301729

/-- `A171950(A047255(n+2))` -/
def P16486330516670525385.Spec : Prop :=
  ∀ n, P16486330516670525385.a n = A301729 n

end A301729

/-! ## A301729.P17718180289965229567

`filter[A103354(n+1), A093719(#)]`
-/

namespace A301729.P17718180289965229567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A301729.P17718180289965229567

namespace A301729

/-- `filter[A103354(n+1), A093719(#)]` -/
def P17718180289965229567.Spec : Prop :=
  ∀ n, P17718180289965229567.a n = A301729 n

end A301729

/-! ## A301729.P803286937233411415

`A267807(A004273(n))`
-/

namespace A301729.P803286937233411415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267807 (A004273 n).toNat

end

end A301729.P803286937233411415

namespace A301729

/-- `A267807(A004273(n))` -/
def P803286937233411415.Spec : Prop :=
  ∀ n, P803286937233411415.a n = A301729 n

end A301729

/-!
# A301730: Expansion of (x^8-x^7+x^6+5*x^5+4*x^4+3*x^3+5*x^2+5*x+1)/(x^6-x^5-x+1).

The programs for A301730, the canonical program `A301730.P9588251162826547481` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301730 has offset 0).

The definition of A301730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x+5x^2+3x^3+4x^4+5x^5+x^6-x^7+x^8)/(1-x-x^5+x^6))` (program `A301730.P9588251162826547481`, by `A301730.P9588251162826547481.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A301730.P9588251162826547481

`ogf((1+5x+5x^2+3x^3+4x^4+5x^5+x^6-x^7+x^8)/(1-x-x^5+x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301730

/-- `ogf((1+5x+5x^2+3x^3+4x^4+5x^5+x^6-x^7+x^8)/(1-x-x^5+x^6))` -/
def P9588251162826547481.Spec : Prop :=
  ∀ n, P9588251162826547481.a n = A301730 n

theorem P9588251162826547481.correct : P9588251162826547481.Spec := by
  intro n
  simp only [A301730]

end A301730

/-! ## A301730.P11424531432151116996

`char[2]+A330025(2*n)+A250120(n)`
-/

namespace A301730.P11424531432151116996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A330025 (2 * n) + A250120 n)

end

end A301730.P11424531432151116996

namespace A301730

/-- `char[2]+A330025(2*n)+A250120(n)` -/
def P11424531432151116996.Spec : Prop :=
  ∀ n, P11424531432151116996.a n = A301730 n

end A301730

/-! ## A301730.P7309136414164445718

`char[2]+A008458(n)/A008486(n)*A072154(n)`
-/

namespace A301730.P7309136414164445718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A008458 n : ℚ) / (A008486 n : ℚ) * (A072154 n : ℚ)

end

end A301730.P7309136414164445718

namespace A301730

/-- `char[2]+A008458(n)/A008486(n)*A072154(n)` -/
def P7309136414164445718.Spec : Prop :=
  ∀ n, P7309136414164445718.a n = (A301730 n : ℚ)

end A301730

/-! ## A301730.P11835895154638307555

`A103517(A072154(n)-1)+char[2]`
-/

namespace A301730.P11835895154638307555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A072154 n - 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301730.P11835895154638307555

namespace A301730

/-- `A103517(A072154(n)-1)+char[2]` -/
def P11835895154638307555.Spec : Prop :=
  ∀ n, P11835895154638307555.a n = A301730 n

end A301730

/-! ## A301730.P5971869699416567710

`A294619(n)+A004273(A072154(n))`
-/

namespace A301730.P5971869699416567710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n + A004273 (A072154 n).toNat

end

end A301730.P5971869699416567710

namespace A301730

/-- `A294619(n)+A004273(A072154(n))` -/
def P5971869699416567710.Spec : Prop :=
  ∀ n, P5971869699416567710.a n = A301730 n

end A301730

/-! ## A301730.P15567563499965064380

`A005843(n)+A163985(A072154(n))-A163985(n)`
-/

namespace A301730.P15567563499965064380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A163985 (A072154 n).toNat - A163985 n)

end

end A301730.P15567563499965064380

namespace A301730

/-- `A005843(n)+A163985(A072154(n))-A163985(n)` -/
def P15567563499965064380.Spec : Prop :=
  ∀ n, P15567563499965064380.a n = A301730 n

end A301730

/-! ## A301730.P13265033515890920044

`A163985(A072154(n)+n)-A163985(n)`
-/

namespace A301730.P13265033515890920044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A072154 n + (n : ℤ)).toNat - A163985 n

end

end A301730.P13265033515890920044

namespace A301730

/-- `A163985(A072154(n)+n)-A163985(n)` -/
def P13265033515890920044.Spec : Prop :=
  ∀ n, P13265033515890920044.a n = A301730 n

end A301730

/-! ## A301730.P12367028706389076194

`A315187(n)+char[2]`
-/

namespace A301730.P12367028706389076194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301730.P12367028706389076194

namespace A301730

/-- `A315187(n)+char[2]` -/
def P12367028706389076194.Spec : Prop :=
  ∀ n, P12367028706389076194.a n = A301730 n

end A301730

/-! ## A301730.P7171939253664091357

`xor(A185012(n), A315187(n))`
-/

namespace A301730.P7171939253664091357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A315187 n)

end

end A301730.P7171939253664091357

namespace A301730

/-- `xor(A185012(n), A315187(n))` -/
def P7171939253664091357.Spec : Prop :=
  ∀ n, P7171939253664091357.a n = A301730 n

end A301730

/-! ## A301730.P15397516639958067577

`A014684(2*A072154(n))+char[2]`
-/

namespace A301730.P15397516639958067577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (2 * A072154 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301730.P15397516639958067577

namespace A301730

/-- `A014684(2*A072154(n))+char[2]` -/
def P15397516639958067577.Spec : Prop :=
  ∀ n, P15397516639958067577.a n = A301730 n

end A301730

/-! ## A301730.P6315906872926771047

`A005843(A072154(n))-A015325(A163985(n))`
-/

namespace A301730.P6315906872926771047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A072154 n).toNat - A015325 (A163985 n).toNat

end

end A301730.P6315906872926771047

namespace A301730

/-- `A005843(A072154(n))-A015325(A163985(n))` -/
def P6315906872926771047.Spec : Prop :=
  ∀ n, P6315906872926771047.a n = A301730 n

end A301730

/-! ## A301730.P11259712835749873192

`2*A072154(n)-A008683(A273766(n))`
-/

namespace A301730.P11259712835749873192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072154 n - A008683 (A273766 n).toNat

end

end A301730.P11259712835749873192

namespace A301730

/-- `2*A072154(n)-A008683(A273766(n))` -/
def P11259712835749873192.Spec : Prop :=
  ∀ n, P11259712835749873192.a n = A301730 n

end A301730

/-! ## A301730.P7027571892988218668

`A005843(A072154(n))-A008683(A273766(n))`
-/

namespace A301730.P7027571892988218668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A072154 n).toNat - A008683 (A273766 n).toNat

end

end A301730.P7027571892988218668

namespace A301730

/-- `A005843(A072154(n))-A008683(A273766(n))` -/
def P7027571892988218668.Spec : Prop :=
  ∀ n, P7027571892988218668.a n = A301730 n

end A301730

/-!
# A301733: Denominators of rational coefficients arising from the Kashaev invariant for the 4_1 knot.

The programs for A301733, there is no canonical definition to state claims against.
-/

/-! ## A301733.P17391305415890538165

`A065330(∑[n+1]*A027423(n))`
-/

namespace A301733.P17391305415890538165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A027423 n).toNat

end

end A301733.P17391305415890538165

/-! ## A301733.P9420473365356942984

`gcd(A000265(A224085(n)), A008544(n))`
-/

namespace A301733.P9420473365356942984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (A224085 n).toNat) (A008544 n)

end

end A301733.P9420473365356942984

/-! ## A301733.P1190884060933489549

`gcd(A224085(A004882(n+1)), A224086(n))`
-/

namespace A301733.P1190884060933489549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224085 (A004882 (n + 1)).toNat) (A224086 n)

end

end A301733.P1190884060933489549

/-!
# A301734: Coefficients of q-series associated with the 8_5 knot.

The programs for A301734, there is no canonical definition to state claims against.
-/

/-! ## A301734.P16023239468645144003

`A292378(n+1)+A121373(A288586(n))`
-/

namespace A301734.P16023239468645144003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292378 (n + 1) + A121373 (A288586 n).toNat

end

end A301734.P16023239468645144003

/-! ## A301734.P3841515476591892873

`A010059(A001255(n))+A008836(n+4)`
-/

namespace A301734.P3841515476591892873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A001255 n).toNat + A008836 (n + 4)

end

end A301734.P3841515476591892873

/-!
# A301736: Numerator of cumulative weight of certain D-forests on n nodes.

The programs for A301736, there is no canonical definition to state claims against.
-/

/-! ## A301736.P18132357900686050436

`A117366(A160720(round(ϕ*a(n-1))))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A301736.P18132357900686050436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  A117366 (A160720 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat).toNat

end

end A301736.P18132357900686050436

/-! ## A301736.P16326775267004945358

`A198195(A336101(round(ϕ*a(n-1))))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A301736.P16326775267004945358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  A198195 (A336101 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat).toNat

end

end A301736.P16326775267004945358

/-! ## A301736.P2422526730344871741

`A324327(n)+A117753(A000124(n))`
-/

namespace A301736.P2422526730344871741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324327 n + A117753 (A000124 n).toNat

end

end A301736.P2422526730344871741

/-!
# A301737: Denominator of cumulative weight of certain D-forests on n nodes.

The programs for A301737, there is no canonical definition to state claims against.
-/

/-! ## A301737.P15368273992470788769

`abs(A238385(∑[n]+1))`
-/

namespace A301737.P15368273992470788769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238385 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A301737.P15368273992470788769

/-! ## A301737.P15567316371411791997

`gcd(n!, A199580(C(n, 2)))`
-/

namespace A301737.P15567316371411791997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A199580 (Nat.choose n 2))

end

end A301737.P15567316371411791997

/-! ## A301737.P13299585524768233365

`n!/gcd(n-1, A000045(n)!)`
-/

namespace A301737.P13299585524768233365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Int.gcd ((n : ℤ) - 1) (Nat.factorial (A000045 n).toNat : ℤ) : ℚ)

end

end A301737.P13299585524768233365

/-! ## A301737.P1992119951958897895

`A111492(A212342(n))`
-/

namespace A301737.P1992119951958897895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111492 (A212342 n).toNat

end

end A301737.P1992119951958897895

/-! ## A301737.P15758980402620291725

`A130478(A238531(n))`
-/

namespace A301737.P15758980402620291725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130478 (A238531 n).toNat

end

end A301737.P15758980402620291725

/-!
# A301739: The number of trees with 4 nodes labeled by positive integers, where each tree's label sum is n.

The programs for A301739, the canonical program `A301739.P2807132835622847976` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301739 has offset 4).

The definition of A301739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301739.P2807132835622847976

`A005993(n)+A000601(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A301739

/-- `A005993(n)+A000601(n)` -/
def P2807132835622847976.Spec : Prop :=
  ∀ n, P2807132835622847976.a n = A301739 (n + 4)

theorem P2807132835622847976.correct : P2807132835622847976.Spec := by
  intro n
  simp only [A301739, Nat.add_sub_cancel]

end A301739

/-! ## A301739.P3982708852241821252

`A005993(n)+∑[A001399(n)]`
-/

namespace A301739.P3982708852241821252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P3982708852241821252

namespace A301739

/-- `A005993(n)+∑[A001399(n)]` -/
def P3982708852241821252.Spec : Prop :=
  ∀ n, P3982708852241821252.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P10955036787873569512

`A002623(n)+∑[A008796(n)]`
-/

namespace A301739.P10955036787873569512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P10955036787873569512

namespace A301739

/-- `A002623(n)+∑[A008796(n)]` -/
def P10955036787873569512.Spec : Prop :=
  ∀ n, P10955036787873569512.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P6906936769824920654

`A008805(n)+∑[A007980(n)]`
-/

namespace A301739.P6906936769824920654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P6906936769824920654

namespace A301739

/-- `A008805(n)+∑[A007980(n)]` -/
def P6906936769824920654.Spec : Prop :=
  ∀ n, P6906936769824920654.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P14501950898728465813

`∑[A023054(n)+A008805(n)]`
-/

namespace A301739.P14501950898728465813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023054 n + A008805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P14501950898728465813

namespace A301739

/-- `∑[A023054(n)+A008805(n)]` -/
def P14501950898728465813.Spec : Prop :=
  ∀ n, P14501950898728465813.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P13691330611234973661

`A111711(n+1)+A007979(n)`
-/

namespace A301739.P13691330611234973661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111711 (n + 1) + A007979 n

end

end A301739.P13691330611234973661

namespace A301739

/-- `A111711(n+1)+A007979(n)` -/
def P13691330611234973661.Spec : Prop :=
  ∀ n, P13691330611234973661.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P11750282925068250998

`∑[A001399(n)+A008619(n)²]`
-/

namespace A301739.P11750282925068250998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + A008619 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P11750282925068250998

namespace A301739

/-- `∑[A001399(n)+A008619(n)²]` -/
def P11750282925068250998.Spec : Prop :=
  ∀ n, P11750282925068250998.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P44040374371534912

`∑[A008796(n)+∑[A008619(n)]]`
-/

namespace A301739.P44040374371534912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P44040374371534912

namespace A301739

/-- `∑[A008796(n)+∑[A008619(n)]]` -/
def P44040374371534912.Spec : Prop :=
  ∀ n, P44040374371534912.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P10817622621260422690

`∑[∑[A103221(n)]+A008619(n)²]`
-/

namespace A301739.P10817622621260422690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + A008619 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P10817622621260422690

namespace A301739

/-- `∑[∑[A103221(n)]+A008619(n)²]` -/
def P10817622621260422690.Spec : Prop :=
  ∀ n, P10817622621260422690.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P2447302270062157659

`A060999(n+1)+A266769(n)-A008763(n+1)`
-/

namespace A301739.P2447302270062157659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060999 (n + 1) + (A266769 n - A008763 (n + 1))

end

end A301739.P2447302270062157659

namespace A301739

/-- `A060999(n+1)+A266769(n)-A008763(n+1)` -/
def P2447302270062157659.Spec : Prop :=
  ∀ n, P2447302270062157659.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P1387290095793657149

`A008805(n)+∑[A001399(2*n)]`
-/

namespace A301739.P1387290095793657149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P1387290095793657149

namespace A301739

/-- `A008805(n)+∑[A001399(2*n)]` -/
def P1387290095793657149.Spec : Prop :=
  ∀ n, P1387290095793657149.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P9713067908894484801

`∑[A001399(2*n)+∑[A001057(n+1)]]`
-/

namespace A301739.P9713067908894484801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P9713067908894484801

namespace A301739

/-- `∑[A001399(2*n)+∑[A001057(n+1)]]` -/
def P9713067908894484801.Spec : Prop :=
  ∀ n, P9713067908894484801.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P3508830860026184376

`A254594(2*n)+A005993(n)`
-/

namespace A301739.P3508830860026184376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (2 * n) + A005993 n

end

end A301739.P3508830860026184376

namespace A301739

/-- `A254594(2*n)+A005993(n)` -/
def P3508830860026184376.Spec : Prop :=
  ∀ n, P3508830860026184376.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P11716900237362882091

`∑[A008743(2*n)+A001057(n+1)²]`
-/

namespace A301739.P11716900237362882091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 (2 * n) + A001057 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P11716900237362882091

namespace A301739

/-- `∑[A008743(2*n)+A001057(n+1)²]` -/
def P11716900237362882091.Spec : Prop :=
  ∀ n, P11716900237362882091.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P192438468307712212

`∑[A008743(2*n)+A110654(n+1)²]`
-/

namespace A301739.P192438468307712212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 (2 * n) + A110654 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P192438468307712212

namespace A301739

/-- `∑[A008743(2*n)+A110654(n+1)²]` -/
def P192438468307712212.Spec : Prop :=
  ∀ n, P192438468307712212.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P15261622372231927922

`∑[A008796(2*n)+∑[A001057(n+1)]]`
-/

namespace A301739.P15261622372231927922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P15261622372231927922

namespace A301739

/-- `∑[A008796(2*n)+∑[A001057(n+1)]]` -/
def P15261622372231927922.Spec : Prop :=
  ∀ n, P15261622372231927922.a n = A301739 (n + 4)

end A301739

/-! ## A301739.P6362977095355484523

`A005993(n)+record[A029223(n)]`
-/

namespace A301739.P6362977095355484523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301739.P6362977095355484523

namespace A301739

/-- `A005993(n)+record[A029223(n)]` -/
def P6362977095355484523.Spec : Prop :=
  ∀ n, P6362977095355484523.a n = A301739 (n + 4)

end A301739

/-!
# A301740: The number of trees with 5 nodes labeled by positive integers, where each tree's label sum is n.

The programs for A301740, the canonical program `A301740.P17223865403902709241` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301740 has offset 5).

The definition of A301740 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A301740.P17223865403902709241

`A005994(n)+A001752(n)+A002621(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A301740

/-- `A005994(n)+A001752(n)+A002621(n)` -/
def P17223865403902709241.Spec : Prop :=
  ∀ n, P17223865403902709241.a n = A301740 (n + 5)

theorem P17223865403902709241.correct : P17223865403902709241.Spec := by
  intro n
  simp only [A301740, Nat.add_sub_cancel]

end A301740

/-! ## A301740.P14878086428017255267

`∑[A049779(n+2)+A001400(n)]`
-/

namespace A301740.P14878086428017255267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049779 (n + 2) + A001400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301740.P14878086428017255267

namespace A301740

/-- `∑[A049779(n+2)+A001400(n)]` -/
def P14878086428017255267.Spec : Prop :=
  ∀ n, P14878086428017255267.a n = A301740 (n + 5)

end A301740

/-! ## A301740.P10453702786201734224

`A002621(n)+∑[A049779(n+2)]`
-/

namespace A301740.P10453702786201734224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049779 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002621 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301740.P10453702786201734224

namespace A301740

/-- `A002621(n)+∑[A049779(n+2)]` -/
def P10453702786201734224.Spec : Prop :=
  ∀ n, P10453702786201734224.a n = A301740 (n + 5)

end A301740

/-! ## A301740.P15647782822142074500

`A007009(n+1)+A002624(n)+A002621(n)`
-/

namespace A301740.P15647782822142074500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007009 (n + 1) + (A002624 n + A002621 n)

end

end A301740.P15647782822142074500

namespace A301740

/-- `A007009(n+1)+A002624(n)+A002621(n)` -/
def P15647782822142074500.Spec : Prop :=
  ∀ n, P15647782822142074500.a n = A301740 (n + 5)

end A301740

/-! ## A301740.P2832477805865694518

`∑[A008667(5*n+4)+A001399(n)]`
-/

namespace A301740.P2832477805865694518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (5 * n + 4) + A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301740.P2832477805865694518

namespace A301740

/-- `∑[A008667(5*n+4)+A001399(n)]` -/
def P2832477805865694518.Spec : Prop :=
  ∀ n, P2832477805865694518.a n = A301740 (n + 5)

end A301740

/-!
# A301741: a(n) = n! * [x^n] exp((n + 1)*x + x^2/2).

The programs for A301741, there is no canonical definition to state claims against.
-/

/-! ## A301741.P13567227377042874169

`A057355((n+2)^n)+1`
-/

namespace A301741.P13567227377042874169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 ((n + 2) ^ n) + 1

end

end A301741.P13567227377042874169

/-!
# A301742: a(n) = [x^n] 1/(1 - n*Sum_{k>=1} x^(k^3)).

The programs for A301742, there is no canonical definition to state claims against.
-/

/-! ## A301742.P8396318497835422180

`C(A097154(p?[or(2, 3*n)]), 7)+n^n`
-/

namespace A301742.P8396318497835422180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A097154 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat 7 + n ^ n

end

end A301742.P8396318497835422180

/-! ## A301742.P9702144605061902077

`or(n^n, A048105(A006847(n)))`
-/

namespace A301742.P9702144605061902077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ n : ℤ) (A048105 (A006847 n).toNat)

end

end A301742.P9702144605061902077

/-! ## A301742.P11857512423689370118

`or(n^n, A029578(A309861(n)))`
-/

namespace A301742.P11857512423689370118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ n : ℤ) (A029578 (A309861 n).toNat)

end

end A301742.P11857512423689370118

/-! ## A301742.P8892353015568387018

`A137748(A279445(n+1))+n^n`
-/

namespace A301742.P8892353015568387018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137748 (A279445 (n + 1)).toNat + (n ^ n : ℤ)

end

end A301742.P8892353015568387018

/-! ## A301742.P4775861553282098878

`or(∑{digits}[n, #^n], A004018(A089484(n+4)))`
-/

namespace A301742.P4775861553282098878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ n).sum : ℕ) : ℤ) (A004018 (A089484 (n + 4)).toNat)

end

end A301742.P4775861553282098878

/-!
# A301746: Expansion of Product_{k>=1} (1 + x^k)^(sigma_0(k)^2).

The programs for A301746, there is no canonical definition to state claims against.
-/

/-! ## A301746.P14609801682371067155

`A352515(A364756(n))+A318099(n)`
-/

namespace A301746.P14609801682371067155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 (A364756 n).toNat + A318099 n

end

end A301746.P14609801682371067155

/-!
# A301747: Expansion of Product_{k>=1} (1/(1 - x^k))^(sigma_0(k)^2).

The programs for A301747, there is no canonical definition to state claims against.
-/

/-! ## A301747.P14735229964954440200

`A134478(A026981(n)-A005836(n+1))`
-/

namespace A301747.P14735229964954440200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A026981 n - A005836 (n + 1)).toNat

end

end A301747.P14735229964954440200

/-!
# A301748: Number of faces in the n-polygon diagonal intersection graph.

The programs for A301748, there is no canonical definition to state claims against.
-/

/-! ## A301748.P5941869687744098828

`2-A007569(n+4)+A135565(n+4)`
-/

namespace A301748.P5941869687744098828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007569 (n + 4) + A135565 (n + 4)

end

end A301748.P5941869687744098828

/-! ## A301748.P16189543728914051981

`A007678(n+4)+1`
-/

namespace A301748.P16189543728914051981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (n + 4) + 1

end

end A301748.P16189543728914051981

/-! ## A301748.P6989032025923328767

`A006533(n+4)-(n+3)`
-/

namespace A301748.P6989032025923328767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006533 (n + 4) - (n + 3 : ℤ)

end

end A301748.P6989032025923328767

/-! ## A301748.P8778932998955679898

`A024000(n+4)+A006533(n+4)`
-/

namespace A301748.P8778932998955679898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 4) + A006533 (n + 4)

end

end A301748.P8778932998955679898

/-! ## A301748.P3539425068371883735

`A020725(A007678(n+4))`
-/

namespace A301748.P3539425068371883735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A007678 (n + 4)).toNat

end

end A301748.P3539425068371883735

/-!
# A301749: Clique covering number of the n-odd graph.

The programs for A301749, there is no canonical definition to state claims against.
-/

/-! ## A301749.P17549511883503690707

`ceil(C(Δ[n²]-char[1], n)/2)`
-/

namespace A301749.P17549511883503690707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat n : ℚ) / 2⌉

end

end A301749.P17549511883503690707

/-! ## A301749.P15875736320804609877

`ogf((-1+3x-2x^2+x^3+4x^4+3x^5+3x^6)/(-1+4x-x^2))`
-/

namespace A301749.P15875736320804609877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2, -1, -4, -3, -3] [1, -4, 1] n

end

end A301749.P15875736320804609877

/-! ## A301749.P18434367964794129060

`ceil(C(2*n+1, n)/2)-char[1]`
-/

namespace A301749.P18434367964794129060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n + 1) n : ℚ) / 2⌉ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301749.P18434367964794129060

/-!
# A301750: Number of rooted twice-partitions of n where the composite rooted partition is strict.

The programs for A301750, there is no canonical definition to state claims against.
-/

/-! ## A301750.P2719167843968482251

`A369422(A147869(n+1))`
-/

namespace A301750.P2719167843968482251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369422 (A147869 (n + 1)).toNat

end

end A301750.P2719167843968482251

/-! ## A301750.P9284075825889683763

`A204164(A147869(n+1)²)`
-/

namespace A301750.P9284075825889683763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A147869 (n + 1) ^ 2).toNat

end

end A301750.P9284075825889683763

/-! ## A301750.P6260412938131491768

`A342096(2*n+1)-A353788(A026299(n))`
-/

namespace A301750.P6260412938131491768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342096 (2 * n + 1) - A353788 (A026299 n).toNat

end

end A301750.P6260412938131491768

/-! ## A301750.P225809285168169222

`A083023(A107231(n))`
-/

namespace A301750.P225809285168169222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A107231 n).toNat

end

end A301750.P225809285168169222

/-! ## A301750.P5427877420939112001

`A179182(A241727(n))`
-/

namespace A301750.P5427877420939112001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179182 (A241727 (n + 45)).toNat

end

end A301750.P5427877420939112001

/-!
# A301751: Number of ways to choose a rooted partition of each part in a strict rooted partition of n.

The programs for A301751, there is no canonical definition to state claims against.
-/

/-! ## A301751.P14158148266376516746

`A344154(A378672(n+1))`
-/

namespace A301751.P14158148266376516746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344154 (A378672 (n + 1)).toNat

end

end A301751.P14158148266376516746

/-! ## A301751.P7315117517508845573

`A069623(A091231(2*n)+A047210(n+2))`
-/

namespace A301751.P7315117517508845573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A091231 (2 * n) + A047210 (n + 2)).toNat

end

end A301751.P7315117517508845573

/-! ## A301751.P1678059942916348029

`A220845(A007562(n+1))+A004001(A072493(2*(n+1)))`
-/

namespace A301751.P1678059942916348029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (A007562 (n + 1)).toNat + A004001 (A072493 (2 * (n + 1))).toNat

end

end A301751.P1678059942916348029

/-! ## A301751.P17086237463503412398

`A220845(A345973(n+1))+A004001(A072493(2*(n+1)))`
-/

namespace A301751.P17086237463503412398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (A345973 (n + 1)).toNat + A004001 (A072493 (2 * (n + 1))).toNat

end

end A301751.P17086237463503412398

/-! ## A301751.P6760129610319789555

`A333937(A017988(n))`
-/

namespace A301751.P6760129610319789555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333937 (A017988 n).toNat

end

end A301751.P6760129610319789555

/-!
# A301752: Clique covering number of the n-triangular grid graph.

The programs for A301752, the canonical program `A301752.P16734824768978691247` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301752 has offset 1).

The definition of A301752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301752.P16734824768978691247

`A131735(A052938(n))+∑[A008620(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A301752

/-- `A131735(A052938(n))+∑[A008620(n)]` -/
def P16734824768978691247.Spec : Prop :=
  ∀ n, P16734824768978691247.a n = A301752 (n + 1)

theorem P16734824768978691247.correct : P16734824768978691247.Spec := by
  intro n
  simp only [A301752, Nat.add_sub_cancel]

end A301752

/-! ## A301752.P589323855233832783

`A007980(n+1)-A289233(n+2)`
-/

namespace A301752.P589323855233832783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 (n + 1) - A289233 (n + 2)

end

end A301752.P589323855233832783

namespace A301752

/-- `A007980(n+1)-A289233(n+2)` -/
def P589323855233832783.Spec : Prop :=
  ∀ n, P589323855233832783.a n = A301752 (n + 1)

end A301752

/-! ## A301752.P2937443316053114428

`A289233(n+8)-2*(n+5)`
-/

namespace A301752.P2937443316053114428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289233 (n + 8) - (2 * (n + 5) : ℤ)

end

end A301752.P2937443316053114428

namespace A301752

/-- `A289233(n+8)-2*(n+5)` -/
def P2937443316053114428.Spec : Prop :=
  ∀ n, P2937443316053114428.a n = A301752 (n + 1)

end A301752

/-! ## A301752.P13631289044980901136

`∑[Δ[A289233(n+7)]-2]+1`
-/

namespace A301752.P13631289044980901136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289233 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A301752.P13631289044980901136

namespace A301752

/-- `∑[Δ[A289233(n+7)]-2]+1` -/
def P13631289044980901136.Spec : Prop :=
  ∀ n, P13631289044980901136.a n = A301752 (n + 1)

end A301752

/-! ## A301752.P18286917093838588448

`record[A289233(n+3)-A005843(n)]`
-/

namespace A301752.P18286917093838588448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289233 (n + 3) - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301752.P18286917093838588448

namespace A301752

/-- `record[A289233(n+3)-A005843(n)]` -/
def P18286917093838588448.Spec : Prop :=
  ∀ n, P18286917093838588448.a n = A301752 (n + 1)

end A301752

/-! ## A301752.P2852310893617447515

`A110654(A001840(n+2))+A110654(A001840(n))`
-/

namespace A301752.P2852310893617447515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001840 (n + 2)).toNat + A110654 (A001840 n).toNat

end

end A301752.P2852310893617447515

namespace A301752

/-- `A110654(A001840(n+2))+A110654(A001840(n))` -/
def P2852310893617447515.Spec : Prop :=
  ∀ n, P2852310893617447515.a n = A301752 (n + 1)

end A301752

/-! ## A301752.P14469886572208999585

`A004526(A008748(n+1))+A004526(A008748(n+3))`
-/

namespace A301752.P14469886572208999585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008748 (n + 1)).toNat + A004526 (A008748 (n + 3)).toNat

end

end A301752.P14469886572208999585

namespace A301752

/-- `A004526(A008748(n+1))+A004526(A008748(n+3))` -/
def P14469886572208999585.Spec : Prop :=
  ∀ n, P14469886572208999585.a n = A301752 (n + 1)

end A301752

/-! ## A301752.P15055342476813907764

`A008619(A000096(n+1)-A289233(n+2))`
-/

namespace A301752.P15055342476813907764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000096 (n + 1) - A289233 (n + 2)).toNat

end

end A301752.P15055342476813907764

namespace A301752

/-- `A008619(A000096(n+1)-A289233(n+2))` -/
def P15055342476813907764.Spec : Prop :=
  ∀ n, P15055342476813907764.a n = A301752 (n + 1)

end A301752

/-! ## A301752.P3916541149075723686

`A110654(A000217(n+2)-A289233(n+2))`
-/

namespace A301752.P3916541149075723686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000217 (n + 2) - A289233 (n + 2)).toNat

end

end A301752.P3916541149075723686

namespace A301752

/-- `A110654(A000217(n+2)-A289233(n+2))` -/
def P3916541149075723686.Spec : Prop :=
  ∀ n, P3916541149075723686.a n = A301752 (n + 1)

end A301752

/-! ## A301752.P11108349241357802764

`A002264(A167614(n+1)-A280261(n+1))`
-/

namespace A301752.P11108349241357802764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A167614 (n + 1) - A280261 (n + 1)).toNat

end

end A301752.P11108349241357802764

namespace A301752

/-- `A002264(A167614(n+1)-A280261(n+1))` -/
def P11108349241357802764.Spec : Prop :=
  ∀ n, P11108349241357802764.a n = A301752 (n + 1)

end A301752

/-! ## A301752.P14677600352785590893

`A131735(A052938(n))+A008620(A055998(n))`
-/

namespace A301752.P14677600352785590893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 (A052938 n).toNat + A008620 (A055998 n).toNat

end

end A301752.P14677600352785590893

namespace A301752

/-- `A131735(A052938(n))+A008620(A055998(n))` -/
def P14677600352785590893.Spec : Prop :=
  ∀ n, P14677600352785590893.a n = A301752 (n + 1)

end A301752

/-!
# A301753: Number of ways to choose a strict rooted partition of each part in a rooted partition of n.

The programs for A301753, there is no canonical definition to state claims against.
-/

/-! ## A301753.P1195542383978567131

`A319642(n)+char[8]`
-/

namespace A301753.P1195542383978567131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301753.P1195542383978567131

/-! ## A301753.P2242223770106229907

`or(Δ[A104147(n)], A319642(n))`
-/

namespace A301753.P2242223770106229907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A319642 n)

end

end A301753.P2242223770106229907

/-! ## A301753.P3994730320589915703

`A336757(n+1)+A319642(n)`
-/

namespace A301753.P3994730320589915703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336757 (n + 1) + A319642 n

end

end A301753.P3994730320589915703

/-! ## A301753.P8515942381173262723

`A205573(n)+A319642(n)-1`
-/

namespace A301753.P8515942381173262723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205573 n + (A319642 n - 1)

end

end A301753.P8515942381173262723

/-! ## A301753.P715138279061491230

`or(A033183(n+1), A319642(n))`
-/

namespace A301753.P715138279061491230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033183 (n + 1)) (A319642 n)

end

end A301753.P715138279061491230

/-!
# A301754: Number of ways to choose a strict rooted partition of each part in a strict rooted partition of n.

The programs for A301754, there is no canonical definition to state claims against.
-/

/-! ## A301754.P16256070561334193915

`A002024(A143591(2*n+1)+1)-A143586(A128227(n))`
-/

namespace A301754.P16256070561334193915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A143591 (2 * n + 1) + 1).toNat - A143586 (A128227 n).toNat

end

end A301754.P16256070561334193915

/-! ## A301754.P17408461258249340104

`A245636(A291248(n))`
-/

namespace A301754.P17408461258249340104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (A291248 n).toNat

end

end A301754.P17408461258249340104

/-! ## A301754.P3875016524467561557

`A245636(2*A304961(n))`
-/

namespace A301754.P3875016524467561557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (2 * A304961 n).toNat

end

end A301754.P3875016524467561557

/-! ## A301754.P17659094067961774024

`A245636(2*A122745(n+3))`
-/

namespace A301754.P17659094067961774024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (2 * A122745 (n + 3)).toNat

end

end A301754.P17659094067961774024

/-! ## A301754.P17098090503592405614

`A245636(A122745(n+3)+A122745(n+3)-1)`
-/

namespace A301754.P17098090503592405614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (A122745 (n + 3) + (A122745 (n + 3) - 1)).toNat

end

end A301754.P17098090503592405614

/-!
# A301755: Decimal expansion of 3/8.

The programs for A301755, the canonical program `A301755.P5052725699116475788` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301755 has offset 0).

The definition of A301755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301755.P5052725699116475788

`a(n-1)` with `a(0)=3, a(1)=7, a(2)=5, a(3)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301755

/-- `a(n-1)` -/
def P5052725699116475788.Spec : Prop :=
  ∀ n, (P5052725699116475788.a n : ℤ) = A301755 n

theorem P5052725699116475788.correct : P5052725699116475788.Spec := by
  intro n
  simp only [A301755]

end A301755

/-!
# A301756: Number of ways to choose disjoint strict rooted partitions of each part in a strict rooted partition of n.

The programs for A301756, there is no canonical definition to state claims against.
-/

/-! ## A301756.P11950181578139287061

`A000196(A103196(n))+char[9]`
-/

namespace A301756.P11950181578139287061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A103196 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301756.P11950181578139287061

/-! ## A301756.P1016208997928271553

`A037860(n+1)+A000196(A103196(n))`
-/

namespace A301756.P1016208997928271553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (n + 1) + A000196 (A103196 n).toNat

end

end A301756.P1016208997928271553

/-! ## A301756.P16348506432445577241

`A000196(or(A049949(n+1), A155803(n)))`
-/

namespace A301756.P16348506432445577241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (A049949 (n + 1)) (A155803 n)).toNat

end

end A301756.P16348506432445577241

/-! ## A301756.P7920487902607862855

`A137735(xor(A053088(n+1), A060143(n)))`
-/

namespace A301756.P7920487902607862855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.xor (A053088 (n + 1)) (A060143 n)).toNat

end

end A301756.P7920487902607862855

/-! ## A301756.P9772559210455488798

`A085736(A211666(n+1)+A062121(n+1))-A197637(n+1)`
-/

namespace A301756.P9772559210455488798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A211666 (n + 1) + A062121 (n + 1)).toNat - A197637 (n + 1)

end

end A301756.P9772559210455488798

/-!
# A301758: Clique covering number of the n X n fiveleaper graph.

The programs for A301758, the canonical program `A301758.P10305834136560512474` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301758 has offset 1).

The definition of A301758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301758.P10305834136560512474

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=16, a(4)=21, a(5)=22, a(6)=25, a(7)=32, a(8)=41, a(9)=50`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301758

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P10305834136560512474.Spec : Prop :=
  ∀ n, P10305834136560512474.a n = A301758 (n + 1)

theorem P10305834136560512474.correct : P10305834136560512474.Spec := by
  intro n
  simp only [A301758, Nat.add_sub_cancel]

end A301758

/-!
# A301759: Semiperiods of the Fibonacci sequence mod n.

The programs for A301759, there is no canonical definition to state claims against.
-/

/-! ## A301759.P3714184024937439387

`floor((A000056(n+1)/A345209(n+1)+1)/2)`
-/

namespace A301759.P3714184024937439387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000056 (n + 1) : ℚ) / (A345209 (n + 1) : ℚ) + 1) / 2⌋

end

end A301759.P3714184024937439387

/-! ## A301759.P1555856531456812574

`A004525(A000056(n+1)/A345209(n+1))`
-/

namespace A301759.P1555856531456812574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (A345209 (n + 1) : ℚ))).toNat

end

end A301759.P1555856531456812574

/-! ## A301759.P15344406654482582105

`A026741(A000056(n+1)/A345209(n+1))`
-/

namespace A301759.P15344406654482582105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (A345209 (n + 1) : ℚ))).toNat

end

end A301759.P15344406654482582105

/-! ## A301759.P4327248785161308623

`A032742(A000056(n+1)/A345209(n+1))`
-/

namespace A301759.P4327248785161308623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (A345209 (n + 1) : ℚ))).toNat

end

end A301759.P4327248785161308623

/-! ## A301759.P8466949265055275260

`A065033(A000056(n+1)/A345209(n+1))`
-/

namespace A301759.P8466949265055275260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (A345209 (n + 1) : ℚ))).toNat

end

end A301759.P8466949265055275260

/-! ## A301759.P6714305131047920501

`A117818(A000056(n+1)/A345209(n+1))`
-/

namespace A301759.P6714305131047920501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (A345209 (n + 1) : ℚ))).toNat

end

end A301759.P6714305131047920501

/-! ## A301759.P3688130308210172516

`A123684(A000056(n+1)/A345209(n+1))`
-/

namespace A301759.P3688130308210172516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (A345209 (n + 1) : ℚ))).toNat

end

end A301759.P3688130308210172516

/-! ## A301759.P9019127303435707804

`gcd(A001766(n+1)/A345209(n+1), A001175(n+1))`
-/

namespace A301759.P9019127303435707804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A001766 (n + 1) : ℚ) / (A345209 (n + 1) : ℚ))) (A001175 (n + 1))

end

end A301759.P9019127303435707804

/-!
# A301760: Number of rooted twice-partitions of n where the composite rooted partition is constant.

The programs for A301760, there is no canonical definition to state claims against.
-/

/-! ## A301760.P531488476924436522

`A078346(n+1)+∑{e}[A294962(n), val(#!, 2)]`
-/

namespace A301760.P531488476924436522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078346 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n).natAbs p)) 2 : ℕ) : ℤ)

end

end A301760.P531488476924436522

/-!
# A301761: Number of ways to choose a rooted partition of each part in a constant rooted partition of n.

The programs for A301761, there is no canonical definition to state claims against.
-/

/-! ## A301761.P13377514672404749639

`A319631(n)+A102679(A319641(n))`
-/

namespace A301761.P13377514672404749639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319631 n + A102679 (A319641 n).toNat

end

end A301761.P13377514672404749639

/-! ## A301761.P16411402431361240590

`or(A000792(n), A225639(A078159(n+1)))`
-/

namespace A301761.P16411402431361240590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000792 n) (A225639 (A078159 (n + 1)).toNat)

end

end A301761.P16411402431361240590

/-! ## A301761.P11048121114054481908

`A316844(A036722(n+1)*A185048(n+1))`
-/

namespace A301761.P11048121114054481908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316844 (A036722 (n + 1) * A185048 (n + 1)).toNat

end

end A301761.P11048121114054481908

/-! ## A301761.P12876107473466969930

`A319659(2*n+3)+A319631(A010785(n))`
-/

namespace A301761.P12876107473466969930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319659 (2 * n + 3) + A319631 (A010785 n).toNat

end

end A301761.P12876107473466969930

/-! ## A301761.P16339345769505911739

`A319659(2*n+3)+A319631(A002113(n+1))`
-/

namespace A301761.P16339345769505911739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319659 (2 * n + 3) + A319631 (A002113 (n + 1)).toNat

end

end A301761.P16339345769505911739

/-!
# A301762: Number of ways to choose a constant rooted partition of each part in a rooted partition of n.

The programs for A301762, there is no canonical definition to state claims against.
-/

/-! ## A301762.P17845343226535564253

`A016389(A001037(n))+A003293(n)`
-/

namespace A301762.P17845343226535564253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A001037 n).toNat + A003293 n

end

end A301762.P17845343226535564253

/-! ## A301762.P5596651405531656755

`A113430(A104473(n))+A003293(n)`
-/

namespace A301762.P5596651405531656755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113430 (A104473 n).toNat + A003293 n

end

end A301762.P5596651405531656755

/-! ## A301762.P10012790154087845290

`A113430(A113412(n))+A003293(n)`
-/

namespace A301762.P10012790154087845290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113430 (A113412 n).toNat + A003293 n

end

end A301762.P10012790154087845290

/-! ## A301762.P5197944697485678472

`A003293(n)-A025469(A000085(n))`
-/

namespace A301762.P5197944697485678472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003293 n - A025469 (A000085 n).toNat

end

end A301762.P5197944697485678472

/-! ## A301762.P2238126767144459584

`A003293(n)-A014045(A108479(n))`
-/

namespace A301762.P2238126767144459584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003293 n - A014045 (A108479 n).toNat

end

end A301762.P2238126767144459584

/-!
# A301764: Number of ways to choose a constant rooted partition of each part in a constant rooted partition of n such that the flattened sequence is also constant.

The programs for A301764, the canonical program `A301764.P11755840573215303962` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301764 has offset 1).

The definition of A301764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301764.P1236598615321600904

`∑{d}[n, A277692(#-1+#)]+1`
-/

namespace A301764.P1236598615321600904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A277692 ((d : ℤ) - 1 + (d : ℤ)).toNat + 1

end

end A301764.P1236598615321600904

namespace A301764

/-- `∑{d}[n, A277692(#-1+#)]+1` -/
def P1236598615321600904.Spec : Prop :=
  ∀ n, P1236598615321600904.a n = A301764 (n + 1)

end A301764

/-! ## A301764.P11755840573215303962

`A086898(A028310(n))+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A301764

/-- `A086898(A028310(n))+1` -/
def P11755840573215303962.Spec : Prop :=
  ∀ n, P11755840573215303962.a n = A301764 (n + 1)

theorem P11755840573215303962.correct : P11755840573215303962.Spec := by
  intro n
  simp only [A301764, Nat.add_sub_cancel]

end A301764

/-! ## A301764.P11154153115651137449

`A086898(A065033(2*n))+1`
-/

namespace A301764.P11154153115651137449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086898 (A065033 (2 * n)).toNat + 1

end

end A301764.P11154153115651137449

namespace A301764

/-- `A086898(A065033(2*n))+1` -/
def P11154153115651137449.Spec : Prop :=
  ∀ n, P11154153115651137449.a n = A301764 (n + 1)

end A301764

/-! ## A301764.P13752009649394936595

`A086898(A000007(n)+n)+1`
-/

namespace A301764.P13752009649394936595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086898 (A000007 n + (n : ℤ)).toNat + 1

end

end A301764.P13752009649394936595

namespace A301764

/-- `A086898(A000007(n)+n)+1` -/
def P13752009649394936595.Spec : Prop :=
  ∀ n, P13752009649394936595.a n = A301764 (n + 1)

end A301764

/-! ## A301764.P12006977474178437528

`A086898(A060819(A008574(n)))+1`
-/

namespace A301764.P12006977474178437528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086898 (A060819 (A008574 n).toNat).toNat + 1

end

end A301764.P12006977474178437528

namespace A301764

/-- `A086898(A060819(A008574(n)))+1` -/
def P12006977474178437528.Spec : Prop :=
  ∀ n, P12006977474178437528.a n = A301764 (n + 1)

end A301764

/-! ## A301764.P9175543126946878318

`A086898(A007318(A000124(n)))+1`
-/

namespace A301764.P9175543126946878318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086898 (A007318 (A000124 n).toNat).toNat + 1

end

end A301764.P9175543126946878318

namespace A301764

/-- `A086898(A007318(A000124(n)))+1` -/
def P9175543126946878318.Spec : Prop :=
  ∀ n, P9175543126946878318.a n = A301764 (n + 1)

end A301764

/-! ## A301764.P16659705784469813679

`∑{d}[n, A181833(#)-#]+n+1`
-/

namespace A301764.P16659705784469813679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A181833 d - (d : ℤ)) + (n + 1 : ℤ)

end

end A301764.P16659705784469813679

namespace A301764

/-- `∑{d}[n, A181833(#)-#]+n+1` -/
def P16659705784469813679.Spec : Prop :=
  ∀ n, P16659705784469813679.a n = A301764 (n + 1)

end A301764

/-!
# A301767: Number of ways to choose a constant rooted partition of each part in a strict rooted partition of n.

The programs for A301767, there is no canonical definition to state claims against.
-/

/-! ## A301767.P18398900932149337447

`A085516(A147953(n))`
-/

namespace A301767.P18398900932149337447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A147953 n).toNat

end

end A301767.P18398900932149337447

/-!
# A301769: Number of 5-cycles in the n-Mycielski graph.

The programs for A301769, there is no canonical definition to state claims against.
-/

/-! ## A301769.P14207609029827093950

`A178898(A005995(n))`
-/

namespace A301769.P14207609029827093950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178898 (A005995 n).toNat

end

end A301769.P14207609029827093950

/-!
# A301770: G.f. A(x) satisfies: A(x) = 1/(1 - x*A(x) - x^2*A(x)^2/(1 - x*A(x) - 2*x^2*A(x)^2/(1 - x*A(x) - 3*x^2*A(x)^2/(1 - ...)))), a continued fraction.

The programs for A301770, there is no canonical definition to state claims against.
-/

/-! ## A301770.P1494010270030792923

`A004525(∑[A152807(n)])`
-/

namespace A301770.P1494010270030792923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301770.P1494010270030792923

/-! ## A301770.P10789865518393977331

`A026741(∑[A152807(n)])`
-/

namespace A301770.P10789865518393977331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301770.P10789865518393977331

/-! ## A301770.P9748211350689295852

`A030065(∑[A152807(n)])`
-/

namespace A301770.P9748211350689295852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301770.P9748211350689295852

/-!
# A301771: Number of odd chordless cycles in the n-Andrásfai graph.

The programs for A301771, there is no canonical definition to state claims against.
-/

/-! ## A301771.P15733914409217472138

`n*(A328085(2*n+1)-1)`
-/

namespace A301771.P15733914409217472138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A328085 (2 * n + 1) - 1)

end

end A301771.P15733914409217472138

/-! ## A301771.P10344228257377548164

`n*A320448(∑[round((n+4)²/20)])`
-/

namespace A301771.P10344228257377548164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 4) ^ 2 : ℚ) / 20)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A320448 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301771.P10344228257377548164

/-!
# A301772: Number of odd chordless cycles in the n-antiprism graph.

The programs for A301772, the canonical program `A301772.P12902737404970754569` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301772 has offset 0).

The definition of A301772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301772.P12902737404970754569

`2*a(n-2)+2*a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=0, a(1)=2, a(2)=0, a(3)=2, a(4)=8, a(5)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301772

/-- `2*a(n-2)+2*a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P12902737404970754569.Spec : Prop :=
  ∀ n, P12902737404970754569.a n = A301772 n

theorem P12902737404970754569.correct : P12902737404970754569.Spec := by
  intro n
  simp only [A301772]

end A301772

/-!
# A301773: Number of odd chordless cycles in the 2n-Moebius ladder graph.

The programs for A301773, the canonical program `A301773.P15227222893180145887` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301773 has offset 0).

The definition of A301773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301773.P15227222893180145887

`2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=8, a(3)=16`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301773

/-- `2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` -/
def P15227222893180145887.Spec : Prop :=
  ∀ n, P15227222893180145887.a n = A301773 n

theorem P15227222893180145887.correct : P15227222893180145887.Spec := by
  intro n
  simp only [A301773]

end A301773

/-! ## A301773.P17096007430134654714

`A005248(n)-2*cos(2*n*π/3)`
-/

namespace A301773.P17096007430134654714
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005248 n : ℝ) - 2 * Real.cos ((2 * n : ℝ) * Real.pi / 3)

end

end A301773.P17096007430134654714

namespace A301773

/-- `A005248(n)-2*cos(2*n*π/3)` -/
def P17096007430134654714.Spec : Prop :=
  ∀ n, P17096007430134654714.a n = (A301773 n : ℝ)

end A301773

/-! ## A301773.P6965795671873870730

`4*round(ϕ^(2*n)/4)`
-/

namespace A301773.P6965795671873870730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway (Real.goldenRatio ^ (2 * n) / 4)

end

end A301773.P6965795671873870730

namespace A301773

/-- `4*round(ϕ^(2*n)/4)` -/
def P6965795671873870730.Spec : Prop :=
  ∀ n, P6965795671873870730.a n = A301773 n

end A301773

/-! ## A301773.P4783852903270955316

`ogf((-4x+4x^3)/(-1+2x+x^2+2x^3-x^4))`
-/

namespace A301773.P4783852903270955316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 0, -4] [1, -2, -1, -2, 1] n

end

end A301773.P4783852903270955316

namespace A301773

/-- `ogf((-4x+4x^3)/(-1+2x+x^2+2x^3-x^4))` -/
def P4783852903270955316.Spec : Prop :=
  ∀ n, P4783852903270955316.a n = A301773 n

end A301773

/-! ## A301773.P7946900772574026264

`and(A000032(2*n)+1, -4)`
-/

namespace A301773.P7946900772574026264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000032 (2 * n) + 1) (-4)

end

end A301773.P7946900772574026264

namespace A301773

/-- `and(A000032(2*n)+1, -4)` -/
def P7946900772574026264.Spec : Prop :=
  ∀ n, P7946900772574026264.a n = A301773 n

end A301773

/-! ## A301773.P8375712098790889716

`A110391(n)-A079757(n)`
-/

namespace A301773.P8375712098790889716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110391 n - A079757 n

end

end A301773.P8375712098790889716

namespace A301773

/-- `A110391(n)-A079757(n)` -/
def P8375712098790889716.Spec : Prop :=
  ∀ n, P8375712098790889716.a n = A301773 n

end A301773

/-! ## A301773.P4096453344365817168

`and(A065034(n), A092387(n))`
-/

namespace A301773.P4096453344365817168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065034 n) (A092387 n)

end

end A301773.P4096453344365817168

namespace A301773

/-- `and(A065034(n), A092387(n))` -/
def P4096453344365817168.Spec : Prop :=
  ∀ n, P4096453344365817168.a n = A301773 n

end A301773

/-! ## A301773.P2209497890824843786

`A131713(n+1)+A005248(n)`
-/

namespace A301773.P2209497890824843786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 1) + A005248 n

end

end A301773.P2209497890824843786

namespace A301773

/-- `A131713(n+1)+A005248(n)` -/
def P2209497890824843786.Spec : Prop :=
  ∀ n, P2209497890824843786.a n = A301773 n

end A301773

/-! ## A301773.P5116425181094725210

`A061347(n+3)+A005248(n)`
-/

namespace A301773.P5116425181094725210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 3) + A005248 n

end

end A301773.P5116425181094725210

namespace A301773

/-- `A061347(n+3)+A005248(n)` -/
def P5116425181094725210.Spec : Prop :=
  ∀ n, P5116425181094725210.a n = A301773 n

end A301773

/-! ## A301773.P17251141310696765020

`A005248(n)-A099837(n+3)`
-/

namespace A301773.P17251141310696765020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - A099837 (n + 3)

end

end A301773.P17251141310696765020

namespace A301773

/-- `A005248(n)-A099837(n+3)` -/
def P17251141310696765020.Spec : Prop :=
  ∀ n, P17251141310696765020.a n = A301773 n

end A301773

/-! ## A301773.P8321356439289902007

`A131713(n+1)+A000032(2*n)`
-/

namespace A301773.P8321356439289902007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 1) + A000032 (2 * n)

end

end A301773.P8321356439289902007

namespace A301773

/-- `A131713(n+1)+A000032(2*n)` -/
def P8321356439289902007.Spec : Prop :=
  ∀ n, P8321356439289902007.a n = A301773 n

end A301773

/-! ## A301773.P16251356189310825648

`A005248(n)-A057079(2*n+1)`
-/

namespace A301773.P16251356189310825648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - A057079 (2 * n + 1)

end

end A301773.P16251356189310825648

namespace A301773

/-- `A005248(n)-A057079(2*n+1)` -/
def P16251356189310825648.Spec : Prop :=
  ∀ n, P16251356189310825648.a n = A301773 n

end A301773

/-! ## A301773.P12014175633172637988

`A061347(n+3)+A000032(2*n)`
-/

namespace A301773.P12014175633172637988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 3) + A000032 (2 * n)

end

end A301773.P12014175633172637988

namespace A301773

/-- `A061347(n+3)+A000032(2*n)` -/
def P12014175633172637988.Spec : Prop :=
  ∀ n, P12014175633172637988.a n = A301773 n

end A301773

/-! ## A301773.P3179915403615227931

`A000032(2*n)-A087204(2*n)`
-/

namespace A301773.P3179915403615227931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - A087204 (2 * n)

end

end A301773.P3179915403615227931

namespace A301773

/-- `A000032(2*n)-A087204(2*n)` -/
def P3179915403615227931.Spec : Prop :=
  ∀ n, P3179915403615227931.a n = A301773 n

end A301773

/-! ## A301773.P503263989457240639

`A098600(2*n)-A079757(2*n)`
-/

namespace A301773.P503263989457240639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 (2 * n) - A079757 (2 * n)

end

end A301773.P503263989457240639

namespace A301773

/-- `A098600(2*n)-A079757(2*n)` -/
def P503263989457240639.Spec : Prop :=
  ∀ n, P503263989457240639.a n = A301773 n

end A301773

/-! ## A301773.P5737103418204569878

`A098600(2*n)-A100219(2*n)`
-/

namespace A301773.P5737103418204569878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 (2 * n) - A100219 (2 * n)

end

end A301773.P5737103418204569878

namespace A301773

/-- `A098600(2*n)-A100219(2*n)` -/
def P5737103418204569878.Spec : Prop :=
  ∀ n, P5737103418204569878.a n = A301773 n

end A301773

/-! ## A301773.P13140615780575615509

`A355021(2*n)-A100219(2*n)`
-/

namespace A301773.P13140615780575615509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355021 (2 * n) - A100219 (2 * n)

end

end A301773.P13140615780575615509

namespace A301773

/-- `A355021(2*n)-A100219(2*n)` -/
def P13140615780575615509.Spec : Prop :=
  ∀ n, P13140615780575615509.a n = A301773 n

end A301773

/-! ## A301773.P6758328329110967325

`and(A000211(2*n), A001612(2*n))`
-/

namespace A301773.P6758328329110967325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000211 (2 * n)) (A001612 (2 * n))

end

end A301773.P6758328329110967325

namespace A301773

/-- `and(A000211(2*n), A001612(2*n))` -/
def P6758328329110967325.Spec : Prop :=
  ∀ n, P6758328329110967325.a n = A301773 n

end A301773

/-! ## A301773.P1947739326691691336

`A000032(2*n)-A057079(2*n+1)`
-/

namespace A301773.P1947739326691691336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - A057079 (2 * n + 1)

end

end A301773.P1947739326691691336

namespace A301773

/-- `A000032(2*n)-A057079(2*n+1)` -/
def P1947739326691691336.Spec : Prop :=
  ∀ n, P1947739326691691336.a n = A301773 n

end A301773

/-! ## A301773.P5849082617640208727

`A007039(2*(n+1))-A007039(2*n+1)`
-/

namespace A301773.P5849082617640208727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007039 (2 * (n + 1)) - A007039 (2 * n + 1)

end

end A301773.P5849082617640208727

namespace A301773

/-- `A007039(2*(n+1))-A007039(2*n+1)` -/
def P5849082617640208727.Spec : Prop :=
  ∀ n, P5849082617640208727.a n = A301773 n

end A301773

/-!
# A301774: Number of odd chordless cycles in the (2n+1)-prism graph.

The programs for A301774, the canonical program `A301774.P9688905515196524126` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301774 has offset 1).

The definition of A301774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301774.P9688905515196524126

`2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=12, a(2)=30, a(3)=74`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301774

/-- `2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` -/
def P9688905515196524126.Spec : Prop :=
  ∀ n, P9688905515196524126.a n = A301774 (n + 1)

theorem P9688905515196524126.correct : P9688905515196524126.Spec := by
  intro n
  simp only [A301774, Nat.add_sub_cancel]

end A301774

/-! ## A301774.P5626220599221767209

`A002878(n+1)+A131713(n+1)`
-/

namespace A301774.P5626220599221767209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (n + 1) + A131713 (n + 1)

end

end A301774.P5626220599221767209

namespace A301774

/-- `A002878(n+1)+A131713(n+1)` -/
def P5626220599221767209.Spec : Prop :=
  ∀ n, P5626220599221767209.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P10083508904727142228

`A007039(2*n+3)`
-/

namespace A301774.P10083508904727142228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007039 (2 * n + 3)

end

end A301774.P10083508904727142228

namespace A301774

/-- `A007039(2*n+3)` -/
def P10083508904727142228.Spec : Prop :=
  ∀ n, P10083508904727142228.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P4458512839403743099

`A290608(2*n+3)`
-/

namespace A301774.P4458512839403743099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290608 (2 * n + 3)

end

end A301774.P4458512839403743099

namespace A301774

/-- `A290608(2*n+3)` -/
def P4458512839403743099.Spec : Prop :=
  ∀ n, P4458512839403743099.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P10758760225070127022

`A395933(2*n+3)`
-/

namespace A301774.P10758760225070127022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395933 (2 * n + 3)

end

end A301774.P10758760225070127022

namespace A301774

/-- `A395933(2*n+3)` -/
def P10758760225070127022.Spec : Prop :=
  ∀ n, P10758760225070127022.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P8569179470792557393

`2*A366043(2*n+3)`
-/

namespace A301774.P8569179470792557393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A366043 (2 * n + 3)

end

end A301774.P8569179470792557393

namespace A301774

/-- `2*A366043(2*n+3)` -/
def P8569179470792557393.Spec : Prop :=
  ∀ n, P8569179470792557393.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P13838572937133559955

`Δ[2*Δ[A173714(2*n)]]`
-/

namespace A301774.P13838572937133559955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301774.P13838572937133559955

namespace A301774

/-- `Δ[2*Δ[A173714(2*n)]]` -/
def P13838572937133559955.Spec : Prop :=
  ∀ n, P13838572937133559955.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P17661607399850414940

`2*(A199935(2*n+3)+1)`
-/

namespace A301774.P17661607399850414940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199935 (2 * n + 3) + 1)

end

end A301774.P17661607399850414940

namespace A301774

/-- `2*(A199935(2*n+3)+1)` -/
def P17661607399850414940.Spec : Prop :=
  ∀ n, P17661607399850414940.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P3274262502758296028

`Δ[A000032(2*(n+1))-(2*n)%3]`
-/

namespace A301774.P3274262502758296028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * (n + 1)) - ((2 * n % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301774.P3274262502758296028

namespace A301774

/-- `Δ[A000032(2*(n+1))-(2*n)%3]` -/
def P3274262502758296028.Spec : Prop :=
  ∀ n, P3274262502758296028.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P2033199050268629209

`A301775(n+1)+A000038(n)`
-/

namespace A301774.P2033199050268629209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301775 (n + 1) + A000038 n

end

end A301774.P2033199050268629209

namespace A301774

/-- `A301775(n+1)+A000038(n)` -/
def P2033199050268629209.Spec : Prop :=
  ∀ n, P2033199050268629209.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P13940651835707616588

`A301773(n)+2*A002878(n)`
-/

namespace A301774.P13940651835707616588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301773 n + 2 * A002878 n

end

end A301774.P13940651835707616588

namespace A301774

/-- `A301773(n)+2*A002878(n)` -/
def P13940651835707616588.Spec : Prop :=
  ∀ n, P13940651835707616588.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P16922574325266581073

`record[A007039(n+1)/A028920(n)]`
-/

namespace A301774.P16922574325266581073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007039 (n + 1) : ℚ) / (A028920 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301774.P16922574325266581073

namespace A301774

/-- `record[A007039(n+1)/A028920(n)]` -/
def P16922574325266581073.Spec : Prop :=
  ∀ n, P16922574325266581073.a n = (A301774 (n + 1) : ℚ)

end A301774

/-! ## A301774.P16034923569966313920

`A061347(n+3)+A002878(n+1)`
-/

namespace A301774.P16034923569966313920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 3) + A002878 (n + 1)

end

end A301774.P16034923569966313920

namespace A301774

/-- `A061347(n+3)+A002878(n+1)` -/
def P16034923569966313920.Spec : Prop :=
  ∀ n, P16034923569966313920.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P3765212493845964813

`A281387(2*n+1)+A131713(n+1)`
-/

namespace A301774.P3765212493845964813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281387 (2 * n + 1) + A131713 (n + 1)

end

end A301774.P3765212493845964813

namespace A301774

/-- `A281387(2*n+1)+A131713(n+1)` -/
def P3765212493845964813.Spec : Prop :=
  ∀ n, P3765212493845964813.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P5342758567732561778

`A002878(n+1)-A057079(2*n+1)`
-/

namespace A301774.P5342758567732561778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (n + 1) - A057079 (2 * n + 1)

end

end A301774.P5342758567732561778

namespace A301774

/-- `A002878(n+1)-A057079(2*n+1)` -/
def P5342758567732561778.Spec : Prop :=
  ∀ n, P5342758567732561778.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P17861417862499311939

`A000204(2*n+3)-A099837(n+3)`
-/

namespace A301774.P17861417862499311939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * n + 3) - A099837 (n + 3)

end

end A301774.P17861417862499311939

namespace A301774

/-- `A000204(2*n+3)-A099837(n+3)` -/
def P17861417862499311939.Spec : Prop :=
  ∀ n, P17861417862499311939.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P9661977282449049060

`A001350(2*n+3)-A099837(n+3)`
-/

namespace A301774.P9661977282449049060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (2 * n + 3) - A099837 (n + 3)

end

end A301774.P9661977282449049060

namespace A301774

/-- `A001350(2*n+3)-A099837(n+3)` -/
def P9661977282449049060.Spec : Prop :=
  ∀ n, P9661977282449049060.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P1551715770244921168

`A007040(2*(n+1))+2*A100886(2*n)`
-/

namespace A301774.P1551715770244921168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007040 (2 * (n + 1)) + 2 * A100886 (2 * n)

end

end A301774.P1551715770244921168

namespace A301774

/-- `A007040(2*(n+1))+2*A100886(2*n)` -/
def P1551715770244921168.Spec : Prop :=
  ∀ n, P1551715770244921168.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P14154693790500143408

`2*(A100886(2*n+1)+A100886(2*n))`
-/

namespace A301774.P14154693790500143408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A100886 (2 * n + 1) + A100886 (2 * n))

end

end A301774.P14154693790500143408

namespace A301774

/-- `2*(A100886(2*n+1)+A100886(2*n))` -/
def P14154693790500143408.Spec : Prop :=
  ∀ n, P14154693790500143408.a n = A301774 (n + 1)

end A301774

/-! ## A301774.P14407665393450627903

`A098554(2*n+3)+A001350(2*n+3)`
-/

namespace A301774.P14407665393450627903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098554 (2 * n + 3) + A001350 (2 * n + 3)

end

end A301774.P14407665393450627903

namespace A301774

/-- `A098554(2*n+3)+A001350(2*n+3)` -/
def P14407665393450627903.Spec : Prop :=
  ∀ n, P14407665393450627903.a n = A301774 (n + 1)

end A301774

/-!
# A301775: Number of odd chordless cycles in the (2n+1)-web graph.

The programs for A301775, the canonical program `A301775.P4523209668637440982` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301775 has offset 1).

The definition of A301775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301775.P4523209668637440982

`2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=12, a(2)=30, a(3)=74, a(4)=200`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301775

/-- `2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` -/
def P4523209668637440982.Spec : Prop :=
  ∀ n, P4523209668637440982.a n = A301775 (n + 1)

theorem P4523209668637440982.correct : P4523209668637440982.Spec := by
  intro n
  simp only [A301775, Nat.add_sub_cancel]

end A301775

/-! ## A301775.P16433569928726936152

`A301774(n+1)-A000038(n)`
-/

namespace A301775.P16433569928726936152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301774 (n + 1) - A000038 n

end

end A301775.P16433569928726936152

namespace A301775

/-- `A301774(n+1)-A000038(n)` -/
def P16433569928726936152.Spec : Prop :=
  ∀ n, P16433569928726936152.a n = A301775 (n + 1)

end A301775

/-! ## A301775.P7778784055045265606

`A057427(n)*A301774(n+1)`
-/

namespace A301775.P7778784055045265606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A301774 (n + 1)

end

end A301775.P7778784055045265606

namespace A301775

/-- `A057427(n)*A301774(n+1)` -/
def P7778784055045265606.Spec : Prop :=
  ∀ n, P7778784055045265606.a n = A301775 (n + 1)

end A301775

/-! ## A301775.P248835234170379953

`and(A057428(n), A301774(n+1))`
-/

namespace A301775.P248835234170379953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A301774 (n + 1))

end

end A301775.P248835234170379953

namespace A301775

/-- `and(A057428(n), A301774(n+1))` -/
def P248835234170379953.Spec : Prop :=
  ∀ n, P248835234170379953.a n = A301775 (n + 1)

end A301775

/-! ## A301775.P4684836198037136006

`and(A260196(n), A301774(n+1))`
-/

namespace A301775.P4684836198037136006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A301774 (n + 1))

end

end A301775.P4684836198037136006

namespace A301775

/-- `and(A260196(n), A301774(n+1))` -/
def P4684836198037136006.Spec : Prop :=
  ∀ n, P4684836198037136006.a n = A301775 (n + 1)

end A301775

/-! ## A301775.P65158459197843815

`record[A000035(n)*A007039(n+4)]`
-/

namespace A301775.P65158459197843815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A007039 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301775.P65158459197843815

namespace A301775

/-- `record[A000035(n)*A007039(n+4)]` -/
def P65158459197843815.Spec : Prop :=
  ∀ n, P65158459197843815.a n = A301775 (n + 1)

end A301775

/-! ## A301775.P3352413805921679266

`A301774(n+1)%A003695(n+1)`
-/

namespace A301775.P3352413805921679266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301774 (n + 1)) (A003695 (n + 1))

end

end A301775.P3352413805921679266

namespace A301775

/-- `A301774(n+1)%A003695(n+1)` -/
def P3352413805921679266.Spec : Prop :=
  ∀ n, P3352413805921679266.a n = A301775 (n + 1)

end A301775

/-! ## A301775.P11192722449059592214

`and(A153881(n+1), A301774(n+1))`
-/

namespace A301775.P11192722449059592214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A301774 (n + 1))

end

end A301775.P11192722449059592214

namespace A301775

/-- `and(A153881(n+1), A301774(n+1))` -/
def P11192722449059592214.Spec : Prop :=
  ∀ n, P11192722449059592214.a n = A301775 (n + 1)

end A301775

/-! ## A301775.P15352443880966692655

`A007039(A144396(n+1))-A000038(n)`
-/

namespace A301775.P15352443880966692655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007039 (A144396 (n + 1)).toNat - A000038 n

end

end A301775.P15352443880966692655

namespace A301775

/-- `A007039(A144396(n+1))-A000038(n)` -/
def P15352443880966692655.Spec : Prop :=
  ∀ n, P15352443880966692655.a n = A301775 (n + 1)

end A301775

/-! ## A301775.P4055997910023545803

`A007039(A144396(n+1))*A057427(n)`
-/

namespace A301775.P4055997910023545803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007039 (A144396 (n + 1)).toNat * A057427 n

end

end A301775.P4055997910023545803

namespace A301775

/-- `A007039(A144396(n+1))*A057427(n)` -/
def P4055997910023545803.Spec : Prop :=
  ∀ n, P4055997910023545803.a n = A301775 (n + 1)

end A301775

/-! ## A301775.P3686569192976484968

`record[A007039(n+1)*A157928(A142150(n))]`
-/

namespace A301775.P3686569192976484968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007039 (n + 1) * A157928 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301775.P3686569192976484968

namespace A301775

/-- `record[A007039(n+1)*A157928(A142150(n))]` -/
def P3686569192976484968.Spec : Prop :=
  ∀ n, P3686569192976484968.a n = A301775 (n + 1)

end A301775

/-! ## A301775.P13085490751007255070

`(A133263(n)-A000124(n))*A007039(2*n+3)`
-/

namespace A301775.P13085490751007255070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133263 n - A000124 n) * A007039 (2 * n + 3)

end

end A301775.P13085490751007255070

namespace A301775

/-- `(A133263(n)-A000124(n))*A007039(2*n+3)` -/
def P13085490751007255070.Spec : Prop :=
  ∀ n, P13085490751007255070.a n = A301775 (n + 1)

end A301775

/-! ## A301775.P10795077278873921963

`A301774(n+1)%A006043(n)`
-/

namespace A301775.P10795077278873921963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301774 (n + 1)) (A006043 n)

end

end A301775.P10795077278873921963

namespace A301775

/-- `A301774(n+1)%A006043(n)` -/
def P10795077278873921963.Spec : Prop :=
  ∀ n, P10795077278873921963.a n = A301775 (n + 1)

end A301775

/-!
# A301776: Prime numbers p with the property that all even numbers n (2 < n <= 2p) are the sum of two primes <= p.

The programs for A301776, there is no canonical definition to state claims against.
-/

/-! ## A301776.P10181767493171586300

`p?[∑[round(log(3*n+1))]+2]`
-/

namespace A301776.P10181767493171586300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (3 * n + 1 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A301776.P10181767493171586300

/-! ## A301776.P9185562523750875259

`∑[6*C(a(n-2), 2)]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A301776.P9185562523750875259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 2] fun n f1 =>
  6 * Nat.choose (f1 (n - 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301776.P9185562523750875259

/-! ## A301776.P12316424293129371649

`record[p?[A302236(2*n)]]`
-/

namespace A301776.P12316424293129371649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302236 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301776.P12316424293129371649

/-!
# A301777: Expansion of Product_{k>=1} (1 + x^k)^A001001(k).

The programs for A301777, there is no canonical definition to state claims against.
-/

/-! ## A301777.P5047613433455732990

`A026362(A205561(n+1)^n)`
-/

namespace A301777.P5047613433455732990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026362 (A205561 (n + 1) ^ n).toNat

end

end A301777.P5047613433455732990

/-! ## A301777.P8038450699494807556

`A355489(A063834(n))-A154097(n)`
-/

namespace A301777.P8038450699494807556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355489 (A063834 n).toNat - A154097 n

end

end A301777.P8038450699494807556

/-!
# A301778: Number of n X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301778, there is no canonical definition to state claims against.
-/

/-! ## A301778.P6157364405877638166

`A301784(∑[4*n]+1)`
-/

namespace A301778.P6157364405877638166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301778.P6157364405877638166

/-! ## A301778.P8575815962196718778

`record[A003982(n)*A301784(n+1)]`
-/

namespace A301778.P8575815962196718778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301778.P8575815962196718778

/-! ## A301778.P9368676138894168875

`record[gcd(A037012(n), A301784(n+1))]`
-/

namespace A301778.P9368676138894168875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A301784 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301778.P9368676138894168875

/-! ## A301778.P7055393629186822195

`A014808(n)*A301784(A001844(n))`
-/

namespace A301778.P7055393629186822195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014808 n * A301784 (A001844 n).toNat

end

end A301778.P7055393629186822195

/-! ## A301778.P10717739021355224100

`gcd(A000038(n), A301784(A001844(n)))`
-/

namespace A301778.P10717739021355224100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A301784 (A001844 n).toNat)

end

end A301778.P10717739021355224100

/-!
# A301779: Number of nX3 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301779, the canonical program `A301779.P13719700875791773203` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301779 has offset 1).

The definition of A301779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301779.P11825251624334811011

`ogf((4+4x)/(1-7x-4x^2))`
-/

namespace A301779.P11825251624334811011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4] [1, -7, -4] n

end

end A301779.P11825251624334811011

namespace A301779

/-- `ogf((4+4x)/(1-7x-4x^2))` -/
def P11825251624334811011.Spec : Prop :=
  ∀ n, P11825251624334811011.a n = A301779 (n + 1)

end A301779

/-! ## A301779.P13719700875791773203

`7*a(n-1)+4*a(n-2)` with `a(0)=4, a(1)=32`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301779

/-- `7*a(n-1)+4*a(n-2)` -/
def P13719700875791773203.Spec : Prop :=
  ∀ n, (P13719700875791773203.a n : ℤ) = A301779 (n + 1)

theorem P13719700875791773203.correct : P13719700875791773203.Spec := by
  intro n
  simp only [A301779, Nat.add_sub_cancel]

end A301779

/-! ## A301779.P5402398961579552573

`4*A254658(n)`
-/

namespace A301779.P5402398961579552573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A254658 n

end

end A301779.P5402398961579552573

namespace A301779

/-- `4*A254658(n)` -/
def P5402398961579552573.Spec : Prop :=
  ∀ n, P5402398961579552573.a n = A301779 (n + 1)

end A301779

/-! ## A301779.P17676718482313782393

`4*(A015561(n+1)+A015561(n))`
-/

namespace A301779.P17676718482313782393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A015561 (n + 1) + A015561 n)

end

end A301779.P17676718482313782393

namespace A301779

/-- `4*(A015561(n+1)+A015561(n))` -/
def P17676718482313782393.Spec : Prop :=
  ∀ n, P17676718482313782393.a n = A301779 (n + 1)

end A301779

/-! ## A301779.P12902888259339423113

`Δ[A254658(n+1)]%A254658(n+1)`
-/

namespace A301779.P12902888259339423113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A254658 (n + 1))

end

end A301779.P12902888259339423113

namespace A301779

/-- `Δ[A254658(n+1)]%A254658(n+1)` -/
def P12902888259339423113.Spec : Prop :=
  ∀ n, P12902888259339423113.a n = A301779 (n + 1)

end A301779

/-!
# A301780: Number of nX4 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301780, there is no canonical definition to state claims against.
-/

/-! ## A301780.P16918311866436140950

`A301784(A374004(n+1))`
-/

namespace A301780.P16918311866436140950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A374004 (n + 1)).toNat

end

end A301780.P16918311866436140950

/-! ## A301780.P7322139311247089011

`A301784(A141214(n)+7)`
-/

namespace A301780.P7322139311247089011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A141214 n + 7).toNat

end

end A301780.P7322139311247089011

/-! ## A301780.P9103443449022848422

`A301784(A055999(n)+10)`
-/

namespace A301780.P9103443449022848422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A055999 n + 10).toNat

end

end A301780.P9103443449022848422

/-! ## A301780.P10637289965842270229

`A301784(A167614(n+2)+1)`
-/

namespace A301780.P10637289965842270229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A167614 (n + 2) + 1).toNat

end

end A301780.P10637289965842270229

/-! ## A301780.P8488169014352343433

`A301784(A166136(n+2)-2)`
-/

namespace A301780.P8488169014352343433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A166136 (n + 2) - 2).toNat

end

end A301780.P8488169014352343433

/-!
# A301781: Number of nX5 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301781, there is no canonical definition to state claims against.
-/

/-! ## A301781.P14617931886657255724

`A301784(A374005(n+1))`
-/

namespace A301781.P14617931886657255724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A374005 (n + 1)).toNat

end

end A301781.P14617931886657255724

/-! ## A301781.P9392284139489471754

`A301784(A167499(n+3))`
-/

namespace A301781.P9392284139489471754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A167499 (n + 3)).toNat

end

end A301781.P9392284139489471754

/-! ## A301781.P9887496908769465850

`A301784(A155212(n)+13)`
-/

namespace A301781.P9887496908769465850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A155212 n + 13).toNat

end

end A301781.P9887496908769465850

/-! ## A301781.P10306827887933090156

`A301784(A056000(n)+15)`
-/

namespace A301781.P10306827887933090156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A056000 n + 15).toNat

end

end A301781.P10306827887933090156

/-! ## A301781.P8324073849316432861

`A301784(eq[7, A066657(n)])`
-/

namespace A301781.P8324073849316432861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301781.P8324073849316432861

/-!
# A301782: Number of nX6 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301782, there is no canonical definition to state claims against.
-/

/-! ## A301782.P11680043208857678420

`A301784(A374007(n+1))`
-/

namespace A301782.P11680043208857678420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A374007 (n + 1)).toNat

end

end A301782.P11680043208857678420

/-! ## A301782.P11407982007911806560

`A301784(A166136(n+4))`
-/

namespace A301782.P11407982007911806560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A166136 (n + 4)).toNat

end

end A301782.P11407982007911806560

/-! ## A301782.P6625529648437131499

`A301784(A056115(n)+21)`
-/

namespace A301782.P6625529648437131499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A056115 n + 21).toNat

end

end A301782.P6625529648437131499

/-! ## A301782.P16422958310185026409

`A301784(A052905(n+3))`
-/

namespace A301782.P16422958310185026409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A052905 (n + 3)).toNat

end

end A301782.P16422958310185026409

/-! ## A301782.P16770251291777988622

`A301784(eq[3, A219347(n)])`
-/

namespace A301782.P16770251291777988622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301782.P16770251291777988622

/-!
# A301783: Number of n X 7 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301783, there is no canonical definition to state claims against.
-/

/-! ## A301783.P9412059310428312540

`A301784(A374008(n+1))`
-/

namespace A301783.P9412059310428312540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A374008 (n + 1)).toNat

end

end A301783.P9412059310428312540

/-! ## A301783.P16221238517873842853

`A301784(eq[11, A066657(n)])`
-/

namespace A301783.P16221238517873842853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301783.P16221238517873842853

/-! ## A301783.P8576589443884229569

`A301784(A167499(n+5)+2)`
-/

namespace A301783.P8576589443884229569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A167499 (n + 5) + 2).toNat

end

end A301783.P8576589443884229569

/-! ## A301783.P6808290045775849708

`A301784(eq[8, A131818(n+1)])`
-/

namespace A301783.P6808290045775849708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301783.P6808290045775849708

/-! ## A301783.P9842325464956769372

`A301784(Δ[A023551(n+1)]+13)`
-/

namespace A301783.P9842325464956769372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (f1 (n + 1) - f1 n + 13).toNat

end

end A301783.P9842325464956769372

/-!
# A301785: Number of n X n 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301785, there is no canonical definition to state claims against.
-/

/-! ## A301785.P12136904098978752916

`A301790((n+1)²+n²)`
-/

namespace A301785.P12136904098978752916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 ((n + 1) ^ 2 + n ^ 2)

end

end A301785.P12136904098978752916

/-! ## A301785.P14023542273927010484

`record[gcd(A049581(n), A301790(n+1))]`
-/

namespace A301785.P14023542273927010484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A301790 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301785.P14023542273927010484

/-! ## A301785.P2331499705378633013

`lcm(A033999(n), A301790(A001844(n)))`
-/

namespace A301785.P2331499705378633013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A301790 (A001844 n).toNat)

end

end A301785.P2331499705378633013

/-! ## A301785.P10279974182059723583

`A301790(A001844(n))+A034582(n+1)`
-/

namespace A301785.P10279974182059723583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A001844 n).toNat + A034582 (n + 1)

end

end A301785.P10279974182059723583

/-! ## A301785.P18164338474789150041

`A000045(A014963(2*(n+1)))*A301790(A001844(n))`
-/

namespace A301785.P18164338474789150041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (2 * (n + 1))).toNat * A301790 (A001844 n).toNat

end

end A301785.P18164338474789150041

/-!
# A301786: Number of nX4 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301786, the canonical program `A301786.P1098213523434076427` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301786 has offset 1).

The definition of A301786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301786.P13478638199210726741

`ogf((5+4x-2x^2-3x^3)/(1-x-2x^2+x^4))`
-/

namespace A301786.P13478638199210726741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 4, -2, -3] [1, -1, -2, 0, 1] n

end

end A301786.P13478638199210726741

namespace A301786

/-- `ogf((5+4x-2x^2-3x^3)/(1-x-2x^2+x^4))` -/
def P13478638199210726741.Spec : Prop :=
  ∀ n, P13478638199210726741.a n = A301786 (n + 1)

end A301786

/-! ## A301786.P1098213523434076427

`record[a(n-4)-a(n-1)]` with `a(0)=5, a(1)=4, a(2)=3, a(3)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301786

/-- `record[a(n-4)-a(n-1)]` -/
def P1098213523434076427.Spec : Prop :=
  ∀ n, P1098213523434076427.a n = A301786 (n + 1)

theorem P1098213523434076427.correct : P1098213523434076427.Spec := by
  intro n
  simp only [A301786, Nat.add_sub_cancel]

end A301786

/-! ## A301786.P13037046093041468679

`a(n-1)+2*a(n-2)-a(n-4)` with `a(0)=5, a(1)=9, a(2)=17, a(3)=32`
-/

namespace A301786.P13037046093041468679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 9, 17, 32] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 4)

end

end A301786.P13037046093041468679

namespace A301786

/-- `a(n-1)+2*a(n-2)-a(n-4)` -/
def P13037046093041468679.Spec : Prop :=
  ∀ n, P13037046093041468679.a n = A301786 (n + 1)

end A301786

/-! ## A301786.P16312172399243067306

`∑[A003411(Δ[n²])]+3`
-/

namespace A301786.P16312172399243067306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003411 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A301786.P16312172399243067306

namespace A301786

/-- `∑[A003411(Δ[n²])]+3` -/
def P16312172399243067306.Spec : Prop :=
  ∀ n, P16312172399243067306.a n = A301786 (n + 1)

end A301786

/-! ## A301786.P18281667981724783215

`∑[∑[A052535(n+1)]+1]+3`
-/

namespace A301786.P18281667981724783215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A301786.P18281667981724783215

namespace A301786

/-- `∑[∑[A052535(n+1)]+1]+3` -/
def P18281667981724783215.Spec : Prop :=
  ∀ n, P18281667981724783215.a n = A301786 (n + 1)

end A301786

/-! ## A301786.P7702764358356781682

`A109222(n+1)+A109222(n+2)`
-/

namespace A301786.P7702764358356781682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109222 (n + 1) + A109222 (n + 2)

end

end A301786.P7702764358356781682

namespace A301786

/-- `A109222(n+1)+A109222(n+2)` -/
def P7702764358356781682.Spec : Prop :=
  ∀ n, P7702764358356781682.a n = A301786 (n + 1)

end A301786

/-! ## A301786.P14704647215911613218

`A103632(2*(n+1))+A052535(n+3)`
-/

namespace A301786.P14704647215911613218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (2 * (n + 1)) + A052535 (n + 3)

end

end A301786.P14704647215911613218

namespace A301786

/-- `A103632(2*(n+1))+A052535(n+3)` -/
def P14704647215911613218.Spec : Prop :=
  ∀ n, P14704647215911613218.a n = A301786 (n + 1)

end A301786

/-! ## A301786.P18033510839893395615

`A103632(2*n)+A003411(2*n+3)`
-/

namespace A301786.P18033510839893395615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (2 * n) + A003411 (2 * n + 3)

end

end A301786.P18033510839893395615

namespace A301786

/-- `A103632(2*n)+A003411(2*n+3)` -/
def P18033510839893395615.Spec : Prop :=
  ∀ n, P18033510839893395615.a n = A301786 (n + 1)

end A301786

/-! ## A301786.P17751446441329775564

`A003411(A051755(n+2))+A003411(A005843(n))`
-/

namespace A301786.P17751446441329775564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003411 (A051755 (n + 2)).toNat + A003411 (A005843 n).toNat

end

end A301786.P17751446441329775564

namespace A301786

/-- `A003411(A051755(n+2))+A003411(A005843(n))` -/
def P17751446441329775564.Spec : Prop :=
  ∀ n, P17751446441329775564.a n = A301786 (n + 1)

end A301786

/-! ## A301786.P18285108753803840147

`Δ[A048590(2*n+1)]-A103632(2*n+1)`
-/

namespace A301786.P18285108753803840147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048590 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A103632 (2 * n + 1)

end

end A301786.P18285108753803840147

namespace A301786

/-- `Δ[A048590(2*n+1)]-A103632(2*n+1)` -/
def P18285108753803840147.Spec : Prop :=
  ∀ n, P18285108753803840147.a n = A301786 (n + 1)

end A301786

/-! ## A301786.P17159135125885067792

`Δ[A048592(2*n+1)]-A103632(2*n+1)`
-/

namespace A301786.P17159135125885067792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048592 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A103632 (2 * n + 1)

end

end A301786.P17159135125885067792

namespace A301786

/-- `Δ[A048592(2*n+1)]-A103632(2*n+1)` -/
def P17159135125885067792.Spec : Prop :=
  ∀ n, P17159135125885067792.a n = A301786 (n + 1)

end A301786

/-!
# A301787: Number of nX5 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301787, the canonical program `A301787.P7347291002500351062` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301787 has offset 1).

The definition of A301787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301787.P7347291002500351062

`2*a(n-1)-a(n-4)` with `a(0)=8, a(1)=14, a(2)=25, a(3)=45`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301787

/-- `2*a(n-1)-a(n-4)` -/
def P7347291002500351062.Spec : Prop :=
  ∀ n, P7347291002500351062.a n = A301787 (n + 1)

theorem P7347291002500351062.correct : P7347291002500351062.Spec := by
  intro n
  simp only [A301787, Nat.add_sub_cancel]

end A301787

/-! ## A301787.P5619931985353664321

`A282718(n+4)+1`
-/

namespace A301787.P5619931985353664321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282718 (n + 4) + 1

end

end A301787.P5619931985353664321

namespace A301787

/-- `A282718(n+4)+1` -/
def P5619931985353664321.Spec : Prop :=
  ∀ n, P5619931985353664321.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P8637064686646153642

`A000073(n+6)+1`
-/

namespace A301787.P8637064686646153642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 6) + 1

end

end A301787.P8637064686646153642

namespace A301787

/-- `A000073(n+6)+1` -/
def P8637064686646153642.Spec : Prop :=
  ∀ n, P8637064686646153642.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P8024490460233854689

`A027114(n+2)+5`
-/

namespace A301787.P8024490460233854689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027114 (n + 2) + 5

end

end A301787.P8024490460233854689

namespace A301787

/-- `A027114(n+2)+5` -/
def P8024490460233854689.Spec : Prop :=
  ∀ n, P8024490460233854689.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P16790868074868199327

`∑[A001590(n+5)]+5`
-/

namespace A301787.P16790868074868199327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A301787.P16790868074868199327

namespace A301787

/-- `∑[A001590(n+5)]+5` -/
def P16790868074868199327.Spec : Prop :=
  ∀ n, P16790868074868199327.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P13552159569479923416

`A308189(2*n+7)+1`
-/

namespace A301787.P13552159569479923416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (2 * n + 7) + 1

end

end A301787.P13552159569479923416

namespace A301787

/-- `A308189(2*n+7)+1` -/
def P13552159569479923416.Spec : Prop :=
  ∀ n, P13552159569479923416.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P17701293907136322755

`A089068(2*(n+2)-n)+2`
-/

namespace A301787.P17701293907136322755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 (2 * (n + 2) - n) + 2

end

end A301787.P17701293907136322755

namespace A301787

/-- `A089068(2*(n+2)-n)+2` -/
def P17701293907136322755.Spec : Prop :=
  ∀ n, P17701293907136322755.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P2786141347077522480

`A180668(n+2)+2*n+7`
-/

namespace A301787.P2786141347077522480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180668 (n + 2) + (2 * n + 7 : ℤ)

end

end A301787.P2786141347077522480

namespace A301787

/-- `A180668(n+2)+2*n+7` -/
def P2786141347077522480.Spec : Prop :=
  ∀ n, P2786141347077522480.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P11896103873375474613

`A027053(n+2)+a(n-1)+2` with `a(0)=8`
-/

namespace A301787.P11896103873375474613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A027053 (n + 2) + (a (n - 1) + 2)

end

end A301787.P11896103873375474613

namespace A301787

/-- `A027053(n+2)+a(n-1)+2` -/
def P11896103873375474613.Spec : Prop :=
  ∀ n, P11896103873375474613.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P7804115466206707142

`A018921(n+1)+1-A008937(n+1)`
-/

namespace A301787.P7804115466206707142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018921 (n + 1) + (1 - A008937 (n + 1))

end

end A301787.P7804115466206707142

namespace A301787

/-- `A018921(n+1)+1-A008937(n+1)` -/
def P7804115466206707142.Spec : Prop :=
  ∀ n, P7804115466206707142.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P11880453079902358263

`A000382(n+5)-(A145027(n+1)+A001644(n+1))`
-/

namespace A301787.P11880453079902358263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000382 (n + 5) - (A145027 (n + 1) + A001644 (n + 1))

end

end A301787.P11880453079902358263

namespace A301787

/-- `A000382(n+5)-(A145027(n+1)+A001644(n+1))` -/
def P11880453079902358263.Spec : Prop :=
  ∀ n, P11880453079902358263.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P8629389288678646454

`A288599(n+4)/2`
-/

namespace A301787.P8629389288678646454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288599 (n + 4) : ℚ) / 2

end

end A301787.P8629389288678646454

namespace A301787

/-- `A288599(n+4)/2` -/
def P8629389288678646454.Spec : Prop :=
  ∀ n, P8629389288678646454.a n = (A301787 (n + 1) : ℚ)

end A301787

/-! ## A301787.P13274455601311457701

`Δ[A018921(n+1)]+1`
-/

namespace A301787.P13274455601311457701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A301787.P13274455601311457701

namespace A301787

/-- `Δ[A018921(n+1)]+1` -/
def P13274455601311457701.Spec : Prop :=
  ∀ n, P13274455601311457701.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P4282704048940870351

`Δ[A008937(n+4)]+1`
-/

namespace A301787.P4282704048940870351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A301787.P4282704048940870351

namespace A301787

/-- `Δ[A008937(n+4)]+1` -/
def P4282704048940870351.Spec : Prop :=
  ∀ n, P4282704048940870351.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P2934713100760489547

`A018921(n+2)-A027084(n+4)`
-/

namespace A301787.P2934713100760489547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018921 (n + 2) - A027084 (n + 4)

end

end A301787.P2934713100760489547

namespace A301787

/-- `A018921(n+2)-A027084(n+4)` -/
def P2934713100760489547.Spec : Prop :=
  ∀ n, P2934713100760489547.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P16546404924046545130

`A164398(n+6)-Δ[A164398(n+6)]`
-/

namespace A301787.P16546404924046545130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164398 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164398 (n + 6) - (f1 (n + 1) - f1 n)

end

end A301787.P16546404924046545130

namespace A301787

/-- `A164398(n+6)-Δ[A164398(n+6)]` -/
def P16546404924046545130.Spec : Prop :=
  ∀ n, P16546404924046545130.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P7187579612397216286

`A225605(n+2)-A008937(n+1)`
-/

namespace A301787.P7187579612397216286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225605 (n + 2) - A008937 (n + 1)

end

end A301787.P7187579612397216286

namespace A301787

/-- `A225605(n+2)-A008937(n+1)` -/
def P7187579612397216286.Spec : Prop :=
  ∀ n, P7187579612397216286.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P2531395498203475199

`Δ[A225605(n+2)]+1`
-/

namespace A301787.P2531395498203475199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A301787.P2531395498203475199

namespace A301787

/-- `Δ[A225605(n+2)]+1` -/
def P2531395498203475199.Spec : Prop :=
  ∀ n, P2531395498203475199.a n = A301787 (n + 1)

end A301787

/-! ## A301787.P17759458190327736580

`A243044(∑[n+1])+1`
-/

namespace A301787.P17759458190327736580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A301787.P17759458190327736580

namespace A301787

/-- `A243044(∑[n+1])+1` -/
def P17759458190327736580.Spec : Prop :=
  ∀ n, P17759458190327736580.a n = A301787 (n + 1)

end A301787

/-!
# A301788: Number of nX6 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301788, the canonical program `A301788.P5070282676580752106` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301788 has offset 1).

The definition of A301788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301788.P5070282676580752106

`a(n-1)+2*a(n-2)-a(n-4)-a(n-5)-a(n-6)` with `a(0)=13, a(1)=22, a(2)=38, a(3)=66, a(4)=116, a(5)=205`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301788

/-- `a(n-1)+2*a(n-2)-a(n-4)-a(n-5)-a(n-6)` -/
def P5070282676580752106.Spec : Prop :=
  ∀ n, P5070282676580752106.a n = A301788 (n + 1)

theorem P5070282676580752106.correct : P5070282676580752106.Spec := by
  intro n
  simp only [A301788, Nat.add_sub_cancel]

end A301788

/-! ## A301788.P12485475133756666159

`A301790(A052905(n+3))`
-/

namespace A301788.P12485475133756666159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A052905 (n + 3)).toNat

end

end A301788.P12485475133756666159

namespace A301788

/-- `A301790(A052905(n+3))` -/
def P12485475133756666159.Spec : Prop :=
  ∀ n, P12485475133756666159.a n = A301788 (n + 1)

end A301788

/-! ## A301788.P17834478873677870468

`A301790(A055998(n+4)-2)`
-/

namespace A301788.P17834478873677870468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A055998 (n + 4) - 2).toNat

end

end A301788.P17834478873677870468

namespace A301788

/-- `A301790(A055998(n+4)-2)` -/
def P17834478873677870468.Spec : Prop :=
  ∀ n, P17834478873677870468.a n = A301788 (n + 1)

end A301788

/-! ## A301788.P2266617533880627762

`A301790(A000096(n+5)-4)`
-/

namespace A301788.P2266617533880627762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A000096 (n + 5) - 4).toNat

end

end A301788.P2266617533880627762

namespace A301788

/-- `A301790(A000096(n+5)-4)` -/
def P2266617533880627762.Spec : Prop :=
  ∀ n, P2266617533880627762.a n = A301788 (n + 1)

end A301788

/-! ## A301788.P3416850209518071557

`A301790(A000124(n+6)-6)`
-/

namespace A301788.P3416850209518071557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A000124 (n + 6) - 6).toNat

end

end A301788.P3416850209518071557

namespace A301788

/-- `A301790(A000124(n+6)-6)` -/
def P3416850209518071557.Spec : Prop :=
  ∀ n, P3416850209518071557.a n = A301788 (n + 1)

end A301788

/-! ## A301788.P3691047714408189268

`A301790(Δ[Δ[A006504(n+1)]])`
-/

namespace A301788.P3691047714408189268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (f1 (n + 1) - f1 n).toNat

end

end A301788.P3691047714408189268

namespace A301788

/-- `A301790(Δ[Δ[A006504(n+1)]])` -/
def P3691047714408189268.Spec : Prop :=
  ∀ n, P3691047714408189268.a n = A301788 (n + 1)

end A301788

/-! ## A301788.P10876334776031095313

`A301790(A167499(n+3)+2*n+1)`
-/

namespace A301788.P10876334776031095313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A167499 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A301788.P10876334776031095313

namespace A301788

/-- `A301790(A167499(n+3)+2*n+1)` -/
def P10876334776031095313.Spec : Prop :=
  ∀ n, P10876334776031095313.a n = A301788 (n + 1)

end A301788

/-!
# A301789: Number of n X 7 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301789, the canonical program `A301789.P7146991118033482218` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301789 has offset 1).

The definition of A301789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301789.P2135300838470254876

`2*a(n-1)-a(n-4)-a(n-6)` with `a(0)=21, a(1)=35, a(2)=59, a(3)=100, a(4)=171, a(5)=294`
-/

namespace A301789.P2135300838470254876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21, 35, 59, 100, 171, 294] fun n a =>
  2 * a (n - 1) - a (n - 4) - a (n - 6)

end

end A301789.P2135300838470254876

namespace A301789

/-- `2*a(n-1)-a(n-4)-a(n-6)` -/
def P2135300838470254876.Spec : Prop :=
  ∀ n, P2135300838470254876.a n = A301789 (n + 1)

end A301789

/-! ## A301789.P7146991118033482218

`A005683(n+9)-A005682(n+5)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A301789

/-- `A005683(n+9)-A005682(n+5)` -/
def P7146991118033482218.Spec : Prop :=
  ∀ n, P7146991118033482218.a n = A301789 (n + 1)

theorem P7146991118033482218.correct : P7146991118033482218.Spec := by
  intro n
  simp only [A301789, Nat.add_sub_cancel]

end A301789

/-! ## A301789.P5985981498314267223

`A301790(A055999(n+4))`
-/

namespace A301789.P5985981498314267223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A055999 (n + 4)).toNat

end

end A301789.P5985981498314267223

namespace A301789

/-- `A301790(A055999(n+4))` -/
def P5985981498314267223.Spec : Prop :=
  ∀ n, P5985981498314267223.a n = A301789 (n + 1)

end A301789

/-! ## A301789.P11855622206723366869

`A301790(A000124(n+7)-7)`
-/

namespace A301789.P11855622206723366869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A000124 (n + 7) - 7).toNat

end

end A301789.P11855622206723366869

namespace A301789

/-- `A301790(A000124(n+7)-7)` -/
def P11855622206723366869.Spec : Prop :=
  ∀ n, P11855622206723366869.a n = A301789 (n + 1)

end A301789

/-! ## A301789.P4048070955638635191

`A301790(A000096(n+5)+n+2)`
-/

namespace A301789.P4048070955638635191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A301789.P4048070955638635191

namespace A301789

/-- `A301790(A000096(n+5)+n+2)` -/
def P4048070955638635191.Spec : Prop :=
  ∀ n, P4048070955638635191.a n = A301789 (n + 1)

end A301789

/-! ## A301789.P666119962125455878

`A301790(A000217(n+6)+n+1)`
-/

namespace A301789.P666119962125455878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A301789.P666119962125455878

namespace A301789

/-- `A301790(A000217(n+6)+n+1)` -/
def P666119962125455878.Spec : Prop :=
  ∀ n, P666119962125455878.a n = A301789 (n + 1)

end A301789

/-! ## A301789.P9393138727284346405

`A301790(A055998(n+4)+n+4)`
-/

namespace A301789.P9393138727284346405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A055998 (n + 4) + (n + 4 : ℤ)).toNat

end

end A301789.P9393138727284346405

namespace A301789

/-- `A301790(A055998(n+4)+n+4)` -/
def P9393138727284346405.Spec : Prop :=
  ∀ n, P9393138727284346405.a n = A301789 (n + 1)

end A301789

/-!
# A301790: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301790, there is no canonical definition to state claims against.
-/

/-! ## A301790.P4485086499316267305

`A301964(n+1)+A088194(A294950(n))`
-/

namespace A301790.P4485086499316267305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (n + 1) + A088194 (A294950 n).toNat

end

end A301790.P4485086499316267305

/-! ## A301790.P3817938499898834173

`A301964(n+1)-A070202(A157149(n))`
-/

namespace A301790.P3817938499898834173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (n + 1) - A070202 (A157149 n).toNat

end

end A301790.P3817938499898834173

/-! ## A301790.P7240622337050726076

`A301964(n+1)-A325801(A038247(n))`
-/

namespace A301790.P7240622337050726076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (n + 1) - A325801 (A038247 n).toNat

end

end A301790.P7240622337050726076

/-! ## A301790.P15148070756735587741

`A301964(n+1)-A174875(A168288(n))²`
-/

namespace A301790.P15148070756735587741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (n + 1) - A174875 (A168288 n).toNat ^ 2

end

end A301790.P15148070756735587741

/-! ## A301790.P2474568415275041091

`A301964(n+1)-A324802(A202549(n+1))`
-/

namespace A301790.P2474568415275041091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301964 (n + 1) - A324802 (A202549 (n + 1)).toNat

end

end A301790.P2474568415275041091

/-!
# A301791: Number of 2Xn 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301791, the canonical program `A301791.P11654080258668520194` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301791 has offset 1).

The definition of A301791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301791.P18406423158909889020

`floor(ϕ*a(n-1))` with `a(0)=2, a(1)=5, a(2)=6`
-/

namespace A301791.P18406423158909889020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 6] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A301791.P18406423158909889020

namespace A301791

/-- `floor(ϕ*a(n-1))` -/
def P18406423158909889020.Spec : Prop :=
  ∀ n, P18406423158909889020.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P9998422122155009842

`ogf((-2-x+4x^2+x^3-x^4)/(-1+2x-x^3))`
-/

namespace A301791.P9998422122155009842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -4, -1, 1] [1, -2, 0, 1] n

end

end A301791.P9998422122155009842

namespace A301791

/-- `ogf((-2-x+4x^2+x^3-x^4)/(-1+2x-x^3))` -/
def P9998422122155009842.Spec : Prop :=
  ∀ n, P9998422122155009842.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P656960238525623735

`floor(a(n-1)/(ϕ-1))` with `a(0)=2, a(1)=5, a(2)=6`
-/

namespace A301791.P656960238525623735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 6] fun n a =>
  ⌊(a (n - 1) : ℝ) / (Real.goldenRatio - 1)⌋

end

end A301791.P656960238525623735

namespace A301791

/-- `floor(a(n-1)/(ϕ-1))` -/
def P656960238525623735.Spec : Prop :=
  ∀ n, P656960238525623735.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P14056017830675997132

`round(ϕ*a(n-1))-1` with `a(0)=2, a(1)=5, a(2)=6`
-/

namespace A301791.P14056017830675997132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 6] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) - 1

end

end A301791.P14056017830675997132

namespace A301791

/-- `round(ϕ*a(n-1))-1` -/
def P14056017830675997132.Spec : Prop :=
  ∀ n, P14056017830675997132.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P11654080258668520194

`∑[a(n-1)+a(n-2)]` with `a(0)=2, a(1)=3, a(2)=1, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301791

/-- `∑[a(n-1)+a(n-2)]` -/
def P11654080258668520194.Spec : Prop :=
  ∀ n, (P11654080258668520194.a n : ℤ) = A301791 (n + 1)

theorem P11654080258668520194.correct : P11654080258668520194.Spec := by
  intro n
  simp only [A301791, Nat.add_sub_cancel]

end A301791

/-! ## A301791.P18114088005527860244

`a(n-1)+a(n-2)-char[3]-1` with `a(0)=2, a(1)=5`
-/

namespace A301791.P18114088005527860244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + (a (n - 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) - 1

end

end A301791.P18114088005527860244

namespace A301791

/-- `a(n-1)+a(n-2)-char[3]-1` -/
def P18114088005527860244.Spec : Prop :=
  ∀ n, P18114088005527860244.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P9575775674665447249

`A000045(n+1)+a(n-1)` with `a(0)=2, a(1)=5, a(2)=6`
-/

namespace A301791.P9575775674665447249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 6] fun n a =>
  A000045 (n + 1) + a (n - 1)

end

end A301791.P9575775674665447249

namespace A301791

/-- `A000045(n+1)+a(n-1)` -/
def P9575775674665447249.Spec : Prop :=
  ∀ n, P9575775674665447249.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P8565193150702773285

`A169985(n)+A001588(n)`
-/

namespace A301791.P8565193150702773285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n + A001588 n

end

end A301791.P8565193150702773285

namespace A301791

/-- `A169985(n)+A001588(n)` -/
def P8565193150702773285.Spec : Prop :=
  ∀ n, P8565193150702773285.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P9357872442698689789

`A187893(n)+A163733(n+1)`
-/

namespace A301791.P9357872442698689789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A163733 (n + 1)

end

end A301791.P9357872442698689789

namespace A301791

/-- `A187893(n)+A163733(n+1)` -/
def P9357872442698689789.Spec : Prop :=
  ∀ n, P9357872442698689789.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P15615328506514880549

`A373565(n)+A071679(n+1)`
-/

namespace A301791.P15615328506514880549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n + A071679 (n + 1)

end

end A301791.P15615328506514880549

namespace A301791

/-- `A373565(n)+A071679(n+1)` -/
def P15615328506514880549.Spec : Prop :=
  ∀ n, P15615328506514880549.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P4520060117776476347

`A048577(n)-A154955(n+1)`
-/

namespace A301791.P4520060117776476347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - A154955 (n + 1)

end

end A301791.P4520060117776476347

namespace A301791

/-- `A048577(n)-A154955(n+1)` -/
def P4520060117776476347.Spec : Prop :=
  ∀ n, P4520060117776476347.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P12283227215198666073

`xor(A019590(n+1), A048577(n))`
-/

namespace A301791.P12283227215198666073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (n + 1)) (A048577 n)

end

end A301791.P12283227215198666073

namespace A301791

/-- `xor(A019590(n+1), A048577(n))` -/
def P12283227215198666073.Spec : Prop :=
  ∀ n, P12283227215198666073.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P6472761102337258420

`A226271(n+1)+A019590(n+1)`
-/

namespace A301791.P6472761102337258420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226271 (n + 1) + A019590 (n + 1)

end

end A301791.P6472761102337258420

namespace A301791

/-- `A226271(n+1)+A019590(n+1)` -/
def P6472761102337258420.Spec : Prop :=
  ∀ n, P6472761102337258420.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P15380979543598211398

`2*a(n-1)-a(n-3)` with `a(0)=2, a(1)=5, a(2)=6, a(3)=9, a(4)=14`
-/

namespace A301791.P15380979543598211398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 6, 9, 14] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A301791.P15380979543598211398

namespace A301791

/-- `2*a(n-1)-a(n-3)` -/
def P15380979543598211398.Spec : Prop :=
  ∀ n, P15380979543598211398.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P13343414012179675077

`A163695(n+1)-A000071(n+1)`
-/

namespace A301791.P13343414012179675077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163695 (n + 1) - A000071 (n + 1)

end

end A301791.P13343414012179675077

namespace A301791

/-- `A163695(n+1)-A000071(n+1)` -/
def P13343414012179675077.Spec : Prop :=
  ∀ n, P13343414012179675077.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P17715010691764155550

`Δ[A199969(n+1)+A020701(n)]`
-/

namespace A301791.P17715010691764155550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (n + 1) + A020701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301791.P17715010691764155550

namespace A301791

/-- `Δ[A199969(n+1)+A020701(n)]` -/
def P17715010691764155550.Spec : Prop :=
  ∀ n, P17715010691764155550.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P6168285443624363679

`floor(A000045(n+2)²/A000045(n+1)+ϕ)`
-/

namespace A301791.P6168285443624363679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000045 (n + 2) ^ 2 : ℚ) / (A000045 (n + 1) : ℚ) : ℝ) + Real.goldenRatio⌋

end

end A301791.P6168285443624363679

namespace A301791

/-- `floor(A000045(n+2)²/A000045(n+1)+ϕ)` -/
def P6168285443624363679.Spec : Prop :=
  ∀ n, P6168285443624363679.a n = A301791 (n + 1)

end A301791

/-! ## A301791.P15699766241657833646

`A131127(A000217(n))+∑[A000045(n+1)]`
-/

namespace A301791.P15699766241657833646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131127 (A000217 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301791.P15699766241657833646

namespace A301791

/-- `A131127(A000217(n))+∑[A000045(n+1)]` -/
def P15699766241657833646.Spec : Prop :=
  ∀ n, P15699766241657833646.a n = A301791 (n + 1)

end A301791

/-!
# A301792: Number of 3Xn 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301792, the canonical program `A301792.P13730800482216419997` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301792 has offset 1).

The definition of A301792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301792.P13802458694712914313

`A034856(A020639(A105321(n)))+A020701(n)`
-/

namespace A301792.P13802458694712914313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A020639 (A105321 n).toNat).toNat + A020701 n

end

end A301792.P13802458694712914313

namespace A301792

/-- `A034856(A020639(A105321(n)))+A020701(n)` -/
def P13802458694712914313.Spec : Prop :=
  ∀ n, P13802458694712914313.a n = A301792 (n + 1)

end A301792

/-! ## A301792.P13730800482216419997

`2*a(n-1)-a(n-3)` with `a(0)=4, a(1)=13, a(2)=12, a(3)=17, a(4)=25`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301792

/-- `2*a(n-1)-a(n-3)` -/
def P13730800482216419997.Spec : Prop :=
  ∀ n, P13730800482216419997.a n = A301792 (n + 1)

theorem P13730800482216419997.correct : P13730800482216419997.Spec := by
  intro n
  simp only [A301792, Nat.add_sub_cancel]

end A301792

/-! ## A301792.P15029049087981234184

`ceil(A301793(n+1)²/A301794(n+1))`
-/

namespace A301792.P15029049087981234184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A301793 (n + 1) ^ 2 : ℚ) / (A301794 (n + 1) : ℚ)⌉

end

end A301792.P15029049087981234184

namespace A301792

/-- `ceil(A301793(n+1)²/A301794(n+1))` -/
def P15029049087981234184.Spec : Prop :=
  ∀ n, P15029049087981234184.a n = A301792 (n + 1)

end A301792

/-! ## A301792.P13845173344562032403

`A191532(A167614(n+1))+A020706(n)`
-/

namespace A301792.P13845173344562032403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 (A167614 (n + 1)).toNat + A020706 n

end

end A301792.P13845173344562032403

namespace A301792

/-- `A191532(A167614(n+1))+A020706(n)` -/
def P13845173344562032403.Spec : Prop :=
  ∀ n, P13845173344562032403.a n = A301792 (n + 1)

end A301792

/-! ## A301792.P17579405388392180425

`A301790(∑[n+2]+4)`
-/

namespace A301792.P17579405388392180425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301792.P17579405388392180425

namespace A301792

/-- `A301790(∑[n+2]+4)` -/
def P17579405388392180425.Spec : Prop :=
  ∀ n, P17579405388392180425.a n = A301792 (n + 1)

end A301792

/-! ## A301792.P17451351504474354537

`A301790(A167614(n+1))%A017239(n)`
-/

namespace A301792.P17451351504474354537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301790 (A167614 (n + 1)).toNat) (A017239 n)

end

end A301792.P17451351504474354537

namespace A301792

/-- `A301790(A167614(n+1))%A017239(n)` -/
def P17451351504474354537.Spec : Prop :=
  ∀ n, P17451351504474354537.a n = A301792 (n + 1)

end A301792

/-! ## A301792.P280741333413089010

`lcm(A033999(n), A301790(A167614(n+1)))`
-/

namespace A301792.P280741333413089010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A301790 (A167614 (n + 1)).toNat)

end

end A301792.P280741333413089010

namespace A301792

/-- `lcm(A033999(n), A301790(A167614(n+1)))` -/
def P280741333413089010.Spec : Prop :=
  ∀ n, (P280741333413089010.a n : ℤ) = A301792 (n + 1)

end A301792

/-! ## A301792.P13534473513917617296

`or(A178333(n), A301790(A167614(n+1)))`
-/

namespace A301792.P13534473513917617296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178333 n) (A301790 (A167614 (n + 1)).toNat)

end

end A301792.P13534473513917617296

namespace A301792

/-- `or(A178333(n), A301790(A167614(n+1)))` -/
def P13534473513917617296.Spec : Prop :=
  ∀ n, P13534473513917617296.a n = A301792 (n + 1)

end A301792

/-!
# A301793: Number of 4Xn 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301793, the canonical program `A301793.P9569279867110708322` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301793 has offset 1).

The definition of A301793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301793.P9569279867110708322

`2*a(n-1)-a(n-3)` with `a(0)=8, a(1)=34, a(2)=24, a(3)=32, a(4)=45`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301793

/-- `2*a(n-1)-a(n-3)` -/
def P9569279867110708322.Spec : Prop :=
  ∀ n, P9569279867110708322.a n = A301793 (n + 1)

theorem P9569279867110708322.correct : P9569279867110708322.Spec := by
  intro n
  simp only [A301793, Nat.add_sub_cancel]

end A301793

/-! ## A301793.P2828800219834559243

`A301790(A052905(n)+9)`
-/

namespace A301793.P2828800219834559243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A052905 n + 9).toNat

end

end A301793.P2828800219834559243

namespace A301793

/-- `A301790(A052905(n)+9)` -/
def P2828800219834559243.Spec : Prop :=
  ∀ n, P2828800219834559243.a n = A301793 (n + 1)

end A301793

/-! ## A301793.P7603936101322340212

`A301790(A055999(n)+10)`
-/

namespace A301793.P7603936101322340212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A055999 n + 10).toNat

end

end A301793.P7603936101322340212

namespace A301793

/-- `A301790(A055999(n)+10)` -/
def P7603936101322340212.Spec : Prop :=
  ∀ n, P7603936101322340212.a n = A301793 (n + 1)

end A301793

/-! ## A301793.P3128344014181437814

`A301790(A167614(n+2)+1)`
-/

namespace A301793.P3128344014181437814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A167614 (n + 2) + 1).toNat

end

end A301793.P3128344014181437814

namespace A301793

/-- `A301790(A167614(n+2)+1)` -/
def P3128344014181437814.Spec : Prop :=
  ∀ n, P3128344014181437814.a n = A301793 (n + 1)

end A301793

/-! ## A301793.P9745896351388634389

`A301790(A167499(n+2)-1)`
-/

namespace A301793.P9745896351388634389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A167499 (n + 2) - 1).toNat

end

end A301793.P9745896351388634389

namespace A301793

/-- `A301790(A167499(n+2)-1)` -/
def P9745896351388634389.Spec : Prop :=
  ∀ n, P9745896351388634389.a n = A301793 (n + 1)

end A301793

/-! ## A301793.P10578988265606771677

`A301790(A133263(n+3)+2)`
-/

namespace A301793.P10578988265606771677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A133263 (n + 3) + 2).toNat

end

end A301793.P10578988265606771677

namespace A301793

/-- `A301790(A133263(n+3)+2)` -/
def P10578988265606771677.Spec : Prop :=
  ∀ n, P10578988265606771677.a n = A301793 (n + 1)

end A301793

/-! ## A301793.P2324524436670510387

`A301790(A000124(n+3)+3)`
-/

namespace A301793.P2324524436670510387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A000124 (n + 3) + 3).toNat

end

end A301793.P2324524436670510387

namespace A301793

/-- `A301790(A000124(n+3)+3)` -/
def P2324524436670510387.Spec : Prop :=
  ∀ n, P2324524436670510387.a n = A301793 (n + 1)

end A301793

/-! ## A301793.P14909553790740489863

`A301790(A000217(n+3)+4)`
-/

namespace A301793.P14909553790740489863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A000217 (n + 3) + 4).toNat

end

end A301793.P14909553790740489863

namespace A301793

/-- `A301790(A000217(n+3)+4)` -/
def P14909553790740489863.Spec : Prop :=
  ∀ n, P14909553790740489863.a n = A301793 (n + 1)

end A301793

/-!
# A301794: Number of 5Xn 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301794, the canonical program `A301794.P8002647348350902609` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301794 has offset 1).

The definition of A301794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301794.P8002647348350902609

`2*a(n-1)-a(n-3)` with `a(0)=16, a(1)=89, a(2)=48, a(3)=61, a(4)=82`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301794

/-- `2*a(n-1)-a(n-3)` -/
def P8002647348350902609.Spec : Prop :=
  ∀ n, P8002647348350902609.a n = A301794 (n + 1)

theorem P8002647348350902609.correct : P8002647348350902609.Spec := by
  intro n
  simp only [A301794, Nat.add_sub_cancel]

end A301794

/-! ## A301794.P16823661608715640874

`A301790(A167499(n+3))`
-/

namespace A301794.P16823661608715640874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A167499 (n + 3)).toNat

end

end A301794.P16823661608715640874

namespace A301794

/-- `A301790(A167499(n+3))` -/
def P16823661608715640874.Spec : Prop :=
  ∀ n, P16823661608715640874.a n = A301794 (n + 1)

end A301794

/-! ## A301794.P3524105468826438081

`A301790(A155212(n)+13)`
-/

namespace A301794.P3524105468826438081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A155212 n + 13).toNat

end

end A301794.P3524105468826438081

namespace A301794

/-- `A301790(A155212(n)+13)` -/
def P3524105468826438081.Spec : Prop :=
  ∀ n, P3524105468826438081.a n = A301794 (n + 1)

end A301794

/-! ## A301794.P9727111425978806703

`A301790(A133263(n+4)+3)`
-/

namespace A301794.P9727111425978806703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A133263 (n + 4) + 3).toNat

end

end A301794.P9727111425978806703

namespace A301794

/-- `A301790(A133263(n+4)+3)` -/
def P9727111425978806703.Spec : Prop :=
  ∀ n, P9727111425978806703.a n = A301794 (n + 1)

end A301794

/-! ## A301794.P7035562510268387886

`A301790(A000217(n+4)+5)`
-/

namespace A301794.P7035562510268387886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A000217 (n + 4) + 5).toNat

end

end A301794.P7035562510268387886

namespace A301794

/-- `A301790(A000217(n+4)+5)` -/
def P7035562510268387886.Spec : Prop :=
  ∀ n, P7035562510268387886.a n = A301794 (n + 1)

end A301794

/-! ## A301794.P5269972922475567492

`A301790(Δ[A034857(n+1)]+8)`
-/

namespace A301794.P5269972922475567492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (f1 (n + 1) - f1 n + 8).toNat

end

end A301794.P5269972922475567492

namespace A301794

/-- `A301790(Δ[A034857(n+1)]+8)` -/
def P5269972922475567492.Spec : Prop :=
  ∀ n, P5269972922475567492.a n = A301794 (n + 1)

end A301794

/-!
# A301795: Number of 6 X n 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301795, the canonical program `A301795.P5853297250705807111` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301795 has offset 1).

The definition of A301795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301795.P5853297250705807111

`2*a(n-1)-a(n-3)` with `a(0)=32, a(1)=233, a(2)=96, a(3)=116, a(4)=150, a(5)=205`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301795

/-- `2*a(n-1)-a(n-3)` -/
def P5853297250705807111.Spec : Prop :=
  ∀ n, P5853297250705807111.a n = A301795 (n + 1)

theorem P5853297250705807111.correct : P5853297250705807111.Spec := by
  intro n
  simp only [A301795, Nat.add_sub_cancel]

end A301795

/-! ## A301795.P15674226859935576057

`A301790(A167499(n+4)+1)`
-/

namespace A301795.P15674226859935576057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A167499 (n + 4) + 1).toNat

end

end A301795.P15674226859935576057

namespace A301795

/-- `A301790(A167499(n+4)+1)` -/
def P15674226859935576057.Spec : Prop :=
  ∀ n, P15674226859935576057.a n = A301795 (n + 1)

end A301795

/-! ## A301795.P12207429556664273345

`A301790(A000217(n+5)+6)`
-/

namespace A301795.P12207429556664273345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A000217 (n + 5) + 6).toNat

end

end A301795.P12207429556664273345

namespace A301795

/-- `A301790(A000217(n+5)+6)` -/
def P12207429556664273345.Spec : Prop :=
  ∀ n, P12207429556664273345.a n = A301795 (n + 1)

end A301795

/-! ## A301795.P7938137088370531679

`A301790(A034856(n+4)+8)`
-/

namespace A301795.P7938137088370531679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A034856 (n + 4) + 8).toNat

end

end A301795.P7938137088370531679

namespace A301795

/-- `A301790(A034856(n+4)+8)` -/
def P7938137088370531679.Spec : Prop :=
  ∀ n, P7938137088370531679.a n = A301795 (n + 1)

end A301795

/-! ## A301795.P15575270362762272195

`A301790(A055998(n+3)+9)`
-/

namespace A301795.P15575270362762272195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A055998 (n + 3) + 9).toNat

end

end A301795.P15575270362762272195

namespace A301795

/-- `A301790(A055998(n+3)+9)` -/
def P15575270362762272195.Spec : Prop :=
  ∀ n, P15575270362762272195.a n = A301795 (n + 1)

end A301795

/-! ## A301795.P2037207746848959940

`A301790(A001489(n+1)+A000124(n+6))`
-/

namespace A301795.P2037207746848959940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A001489 (n + 1) + A000124 (n + 6)).toNat

end

end A301795.P2037207746848959940

namespace A301795

/-- `A301790(A001489(n+1)+A000124(n+6))` -/
def P2037207746848959940.Spec : Prop :=
  ∀ n, P2037207746848959940.a n = A301795 (n + 1)

end A301795

/-!
# A301796: Number of 7 X n 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301796, the canonical program `A301796.P18101433155467911184` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301796 has offset 1).

The definition of A301796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301796.P18101433155467911184

`2*a(n-1)-a(n-3)` with `a(0)=64, a(1)=610, a(2)=192, a(3)=221, a(4)=275, a(5)=364, a(6)=508`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301796

/-- `2*a(n-1)-a(n-3)` -/
def P18101433155467911184.Spec : Prop :=
  ∀ n, P18101433155467911184.a n = A301796 (n + 1)

theorem P18101433155467911184.correct : P18101433155467911184.Spec := by
  intro n
  simp only [A301796, Nat.add_sub_cancel]

end A301796

/-! ## A301796.P14953981051129813478

`A301790(A056119(n)+28)`
-/

namespace A301796.P14953981051129813478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A056119 n + 28).toNat

end

end A301796.P14953981051129813478

namespace A301796

/-- `A301790(A056119(n)+28)` -/
def P14953981051129813478.Spec : Prop :=
  ∀ n, P14953981051129813478.a n = A301796 (n + 1)

end A301796

/-! ## A301796.P7784776156432102542

`A301790(A167499(n+5)+2)`
-/

namespace A301796.P7784776156432102542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A167499 (n + 5) + 2).toNat

end

end A301796.P7784776156432102542

namespace A301796

/-- `A301790(A167499(n+5)+2)` -/
def P7784776156432102542.Spec : Prop :=
  ∀ n, P7784776156432102542.a n = A301796 (n + 1)

end A301796

/-! ## A301796.P2537069952421887018

`A301790(A000124(n+6)+6)`
-/

namespace A301796.P2537069952421887018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A000124 (n + 6) + 6).toNat

end

end A301796.P2537069952421887018

namespace A301796

/-- `A301790(A000124(n+6)+6)` -/
def P2537069952421887018.Spec : Prop :=
  ∀ n, P2537069952421887018.a n = A301796 (n + 1)

end A301796

/-! ## A301796.P9265875010718132404

`A301790(A000217(n+6)+7)`
-/

namespace A301796.P9265875010718132404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A000217 (n + 6) + 7).toNat

end

end A301796.P9265875010718132404

namespace A301796

/-- `A301790(A000217(n+6)+7)` -/
def P9265875010718132404.Spec : Prop :=
  ∀ n, P9265875010718132404.a n = A301796 (n + 1)

end A301796

/-! ## A301796.P2965601635568656824

`A301790(A167614(n+3)+A004273(n+8))`
-/

namespace A301796.P2965601635568656824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301790 (A167614 (n + 3) + A004273 (n + 8)).toNat

end

end A301796.P2965601635568656824

namespace A301796

/-- `A301790(A167614(n+3)+A004273(n+8))` -/
def P2965601635568656824.Spec : Prop :=
  ∀ n, P2965601635568656824.a n = A301796 (n + 1)

end A301796

/-!
# A301797: a(n) = (4^prime(n) - 1)/3.

The programs for A301797, the canonical program `A301797.P3853926274997277584` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301797 has offset 1).

The definition of A301797 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A301797.P3853926274997277584

`A002450(A000040(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A301797

/-- `A002450(A000040(n+1))` -/
def P3853926274997277584.Spec : Prop :=
  ∀ n, P3853926274997277584.a n = A301797 (n + 1)

theorem P3853926274997277584.correct : P3853926274997277584.Spec := by
  intro n
  simp only [A301797, Nat.add_sub_cancel]

end A301797

/-! ## A301797.P15610076427802596030

`floor(2^(2*p?[xor(1, n)+1])/3)`
-/

namespace A301797.P15610076427802596030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 3⌋

end

end A301797.P15610076427802596030

namespace A301797

/-- `floor(2^(2*p?[xor(1, n)+1])/3)` -/
def P15610076427802596030.Spec : Prop :=
  ∀ n, P15610076427802596030.a n = A301797 (n + 1)

end A301797

/-! ## A301797.P4065771488207079

`record[A019322(n+2)]`
-/

namespace A301797.P4065771488207079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019322 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301797.P4065771488207079

namespace A301797

/-- `record[A019322(n+2)]` -/
def P4065771488207079.Spec : Prop :=
  ∀ n, P4065771488207079.a n = A301797 (n + 1)

end A301797

/-! ## A301797.P17620963399916801534

`A019322(p?[comp[n²]])`
-/

namespace A301797.P17620963399916801534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019322 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A301797.P17620963399916801534

namespace A301797

/-- `A019322(p?[comp[n²]])` -/
def P17620963399916801534.Spec : Prop :=
  ∀ n, P17620963399916801534.a n = A301797 (n + 1)

end A301797

/-! ## A301797.P13299452472821260564

`A152099(n+1)/3`
-/

namespace A301797.P13299452472821260564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152099 (n + 1) : ℚ) / 3

end

end A301797.P13299452472821260564

namespace A301797

/-- `A152099(n+1)/3` -/
def P13299452472821260564.Spec : Prop :=
  ∀ n, P13299452472821260564.a n = (A301797 (n + 1) : ℚ)

end A301797

/-!
# A301798: Expansion of Product_{k>=1} (1 + x^k)^A002131(k).

The programs for A301798, there is no canonical definition to state claims against.
-/

/-! ## A301798.P2416707075493646034

`A003056(A034472(n))-A324337(n)`
-/

namespace A301798.P2416707075493646034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A034472 n).toNat - A324337 n

end

end A301798.P2416707075493646034

/-! ## A301798.P8068875821728760183

`A003056(A103457(n))-A324337(n)`
-/

namespace A301798.P8068875821728760183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A103457 n).toNat - A324337 n

end

end A301798.P8068875821728760183

/-! ## A301798.P18172853272470632063

`A003056(A168607(n))-A194968(n+1)`
-/

namespace A301798.P18172853272470632063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A168607 n).toNat - A194968 (n + 1)

end

end A301798.P18172853272470632063

/-! ## A301798.P2319361411423988447

`A003056(A168607(n))-A194980(n+1)`
-/

namespace A301798.P2319361411423988447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A168607 n).toNat - A194980 (n + 1)

end

end A301798.P2319361411423988447

