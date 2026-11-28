import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C001
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017

/-!
# A251301: Number of (n+1) X (1+1) 0..3 arrays with no 2 X 2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251301, there is no canonical definition to state claims against.
-/

/-! ## A251301.P7930510155157867674

`A251308(∑[n]+1)`
-/

namespace A251301.P7930510155157867674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251308 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251301.P7930510155157867674

/-! ## A251301.P2251806500819695657

`record[A010054(n)*A251308(n+1)]`
-/

namespace A251301.P2251806500819695657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251301.P2251806500819695657

/-! ## A251301.P6379246193927239392

`record[gcd(A112367(n), A251308(n+1))]`
-/

namespace A251301.P6379246193927239392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112367 n) (A251308 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251301.P6379246193927239392

/-! ## A251301.P8995013928545802202

`record[root(A251308(n+1), A002260(n+1))]`
-/

namespace A251301.P8995013928545802202
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251308 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251301.P8995013928545802202

/-! ## A251301.P12587267551133216276

`record[root(A251308(n+1), A138177(n+1))]`
-/

namespace A251301.P12587267551133216276
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251308 (n + 1) : ℝ) ^ (1 / (A138177 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251301.P12587267551133216276

/-!
# A251302: Number of (n+1)X(2+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251302, there is no canonical definition to state claims against.
-/

/-! ## A251302.P84874092285022654

`A251308(∑[n+1]+2)`
-/

namespace A251302.P84874092285022654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251308 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251302.P84874092285022654

/-! ## A251302.P5001080624557329345

`record[A251308(A112367(n)+2)]`
-/

namespace A251302.P5001080624557329345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251308 (A112367 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251302.P5001080624557329345

/-! ## A251302.P12660124744320949494

`record[A251308(A255548(n+1)+2)]`
-/

namespace A251302.P12660124744320949494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251308 (A255548 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251302.P12660124744320949494

/-! ## A251302.P7377762060899263703

`record[A010054(n)*A251308(n+2)]`
-/

namespace A251302.P7377762060899263703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251308 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251302.P7377762060899263703

/-!
# A251303: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251303, there is no canonical definition to state claims against.
-/

/-! ## A251303.P14643743074521205032

`A251308(A167614(n+1))`
-/

namespace A251303.P14643743074521205032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251308 (A167614 (n + 1)).toNat

end

end A251303.P14643743074521205032

/-! ## A251303.P5930107787063894640

`A251308(∑[n+3]+1)`
-/

namespace A251303.P5930107787063894640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251308 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251303.P5930107787063894640

/-!
# A251304: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251304, there is no canonical definition to state claims against.
-/

/-! ## A251304.P6629916238762562287

`A251308(∑[n+3]+7)`
-/

namespace A251304.P6629916238762562287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251308 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251304.P6629916238762562287

/-!
# A251306: Number of (n+1)X(6+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251306, there is no canonical definition to state claims against.
-/

/-! ## A251306.P13716610965799832302

`A251308(A046691(n+4)-1)`
-/

namespace A251306.P13716610965799832302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251308 (A046691 (n + 4) - 1).toNat

end

end A251306.P13716610965799832302

/-!
# A251309: Number of (n+1)X(n+1) 0..1 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251309, there is no canonical definition to state claims against.
-/

/-! ## A251309.P4814455098463784969

`A251317((n+1)²+n²)`
-/

namespace A251309.P4814455098463784969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251317 ((n + 1) ^ 2 + n ^ 2)

end

end A251309.P4814455098463784969

/-! ## A251309.P12784402634890157283

`record[gcd(A037012(n), A251317(n+1))]`
-/

namespace A251309.P12784402634890157283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A251317 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251309.P12784402634890157283

/-! ## A251309.P10527415270905026248

`record[A077606(n+1)*A251317(n+1)]`
-/

namespace A251309.P10527415270905026248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A251317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251309.P10527415270905026248

/-! ## A251309.P5528777666669499968

`record[A203994(n+1)*A251317(n+1)]`
-/

namespace A251309.P5528777666669499968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A251317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251309.P5528777666669499968

/-!
# A251310: Number of (n+1) X (1+1) 0..1 arrays with no 2 X 2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251310, the canonical program `A251310.P12347251958172288930` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251310 has offset 1).

The definition of A251310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251310.P9707760916356744955

`ogf((10-5x+6x^2-4x^3)/(1-3x+2x^2-2x^3+x^4))`
-/

namespace A251310.P9707760916356744955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -5, 6, -4] [1, -3, 2, -2, 1] n

end

end A251310.P9707760916356744955

namespace A251310

/-- `ogf((10-5x+6x^2-4x^3)/(1-3x+2x^2-2x^3+x^4))` -/
def P9707760916356744955.Spec : Prop :=
  ∀ n, P9707760916356744955.a n = A251310 (n + 1)

end A251310

/-! ## A251310.P12347251958172288930

`3*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=10, a(1)=25, a(2)=61, a(3)=149`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251310

/-- `3*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P12347251958172288930.Spec : Prop :=
  ∀ n, P12347251958172288930.a n = A251310 (n + 1)

theorem P12347251958172288930.correct : P12347251958172288930.Spec := by
  intro n
  simp only [A251310, Nat.add_sub_cancel]

end A251310

/-! ## A251310.P16464920459308656549

`A251317(∑[n]+1)`
-/

namespace A251310.P16464920459308656549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251317 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251310.P16464920459308656549

namespace A251310

/-- `A251317(∑[n]+1)` -/
def P16464920459308656549.Spec : Prop :=
  ∀ n, P16464920459308656549.a n = A251310 (n + 1)

end A251310

/-! ## A251310.P4940222084031070443

`record[A010054(n)*A251317(n+1)]`
-/

namespace A251310.P4940222084031070443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251310.P4940222084031070443

namespace A251310

/-- `record[A010054(n)*A251317(n+1)]` -/
def P4940222084031070443.Spec : Prop :=
  ∀ n, P4940222084031070443.a n = A251310 (n + 1)

end A251310

/-!
# A251311: Number of (n+1) X (2+1) 0..1 arrays with no 2 X 2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251311, the canonical program `A251311.P12520888504030949789` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251311 has offset 1).

The definition of A251311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251311.P12520888504030949789

`ogf((25-46x+68x^2-84x^3+39x^4-15x^5)/(1-5x+9x^2-13x^3+13x^4-6x^5+2x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251311

/-- `ogf((25-46x+68x^2-84x^3+39x^4-15x^5)/(1-5x+9x^2-13x^3+13x^4-6x^5+2x^6))` -/
def P12520888504030949789.Spec : Prop :=
  ∀ n, P12520888504030949789.a n = A251311 (n + 1)

theorem P12520888504030949789.correct : P12520888504030949789.Spec := by
  intro n
  simp only [A251311, Nat.add_sub_cancel]

end A251311

/-! ## A251311.P4665918638973954336

`A251317(∑[n+1]+2)`
-/

namespace A251311.P4665918638973954336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251317 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251311.P4665918638973954336

namespace A251311

/-- `A251317(∑[n+1]+2)` -/
def P4665918638973954336.Spec : Prop :=
  ∀ n, P4665918638973954336.a n = A251311 (n + 1)

end A251311

/-! ## A251311.P11617462177442004050

`record[A010054(n)*A251317(n+2)]`
-/

namespace A251311.P11617462177442004050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251317 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251311.P11617462177442004050

namespace A251311

/-- `record[A010054(n)*A251317(n+2)]` -/
def P11617462177442004050.Spec : Prop :=
  ∀ n, P11617462177442004050.a n = A251311 (n + 1)

end A251311

/-! ## A251311.P5607177717444011048

`record[gcd(A002262(n), A251317(n+2))]`
-/

namespace A251311.P5607177717444011048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251317 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251311.P5607177717444011048

namespace A251311

/-- `record[gcd(A002262(n), A251317(n+2))]` -/
def P5607177717444011048.Spec : Prop :=
  ∀ n, (P5607177717444011048.a n : ℤ) = A251311 (n + 1)

end A251311

/-! ## A251311.P16653207278519194937

`record[A251317(A133263(A110659(n)))]`
-/

namespace A251311.P16653207278519194937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251317 (A133263 (A110659 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251311.P16653207278519194937

namespace A251311

/-- `record[A251317(A133263(A110659(n)))]` -/
def P16653207278519194937.Spec : Prop :=
  ∀ n, P16653207278519194937.a n = A251311 (n + 1)

end A251311

/-!
# A251312: Number of (n+1) X (3+1) 0..1 arrays with no 2 X 2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251312, there is no canonical definition to state claims against.
-/

/-! ## A251312.P6863120277739769617

`A251317(∑[n+2]+4)`
-/

namespace A251312.P6863120277739769617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251317 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251312.P6863120277739769617

/-!
# A251313: Number of (n+1)X(4+1) 0..1 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251313, there is no canonical definition to state claims against.
-/

/-! ## A251313.P666318638944303621

`A251317(A374004(n+1))`
-/

namespace A251313.P666318638944303621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251317 (A374004 (n + 1)).toNat

end

end A251313.P666318638944303621

/-!
# A251314: Number of (n+1)X(5+1) 0..1 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251314, there is no canonical definition to state claims against.
-/

/-! ## A251314.P11428522163425435256

`A251317(A374005(n+1))`
-/

namespace A251314.P11428522163425435256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251317 (A374005 (n + 1)).toNat

end

end A251314.P11428522163425435256

/-!
# A251315: Number of (n+1)X(6+1) 0..1 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251315, there is no canonical definition to state claims against.
-/

/-! ## A251315.P18323457229178077853

`A251317(A374007(n+1))`
-/

namespace A251315.P18323457229178077853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251317 (A374007 (n + 1)).toNat

end

end A251315.P18323457229178077853

/-!
# A251316: Number of (n+1)X(7+1) 0..1 arrays with no 2X2 subblock having the maximum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251316, there is no canonical definition to state claims against.
-/

/-! ## A251316.P4535400942077081671

`A251317(A374008(n+1))`
-/

namespace A251316.P4535400942077081671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251317 (A374008 (n + 1)).toNat

end

end A251316.P4535400942077081671

/-!
# A251318: Number of (n+1) X (n+1) 0..1 arrays with every 2 X 2 subblock having one or two 1's.

The programs for A251318, there is no canonical definition to state claims against.
-/

/-! ## A251318.P1833555639671741542

`A251326(∑[4*n]+1)`
-/

namespace A251318.P1833555639671741542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251326 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251318.P1833555639671741542

/-! ## A251318.P17361502559358962159

`record[A214505(n)*A251326(n+1)]`
-/

namespace A251318.P17361502559358962159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A251326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251318.P17361502559358962159

/-! ## A251318.P2396943698233526682

`record[gcd(A114327(n), A251326(n+1))]`
-/

namespace A251318.P2396943698233526682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A251326 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251318.P2396943698233526682

/-!
# A251319: Number of (n+1) X (1+1) 0..1 arrays with every 2 X 2 subblock having one or two 1s.

The programs for A251319, the canonical program `A251319.P15527386144910276059` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251319 has offset 1).

The definition of A251319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251319.P10944370756395729245

`ogf((10+8x-8x^2)/(1-2x-3x^2+2x^3))`
-/

namespace A251319.P10944370756395729245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 8, -8] [1, -2, -3, 2] n

end

end A251319.P10944370756395729245

namespace A251319

/-- `ogf((10+8x-8x^2)/(1-2x-3x^2+2x^3))` -/
def P10944370756395729245.Spec : Prop :=
  ∀ n, P10944370756395729245.a n = A251319 (n + 1)

end A251319

/-! ## A251319.P15527386144910276059

`2*a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=10, a(1)=28, a(2)=78`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251319

/-- `2*a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P15527386144910276059.Spec : Prop :=
  ∀ n, P15527386144910276059.a n = A251319 (n + 1)

theorem P15527386144910276059.correct : P15527386144910276059.Spec := by
  intro n
  simp only [A251319, Nat.add_sub_cancel]

end A251319

/-! ## A251319.P17299688131425537394

`A259508(1+n)-A101197(n)`
-/

namespace A251319.P17299688131425537394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259508 (1 + n) - A101197 n

end

end A251319.P17299688131425537394

namespace A251319

/-- `A259508(1+n)-A101197(n)` -/
def P17299688131425537394.Spec : Prop :=
  ∀ n, P17299688131425537394.a n = A251319 (n + 1)

end A251319

/-! ## A251319.P17354733125970645778

`2*(A230893(n+2)+A228501(n+2))`
-/

namespace A251319.P17354733125970645778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A230893 (n + 2) + A228501 (n + 2))

end

end A251319.P17354733125970645778

namespace A251319

/-- `2*(A230893(n+2)+A228501(n+2))` -/
def P17354733125970645778.Spec : Prop :=
  ∀ n, P17354733125970645778.a n = A251319 (n + 1)

end A251319

/-! ## A251319.P12494513102741134165

`A259508(n+1)-(2*A046672(n)-A054854(n))`
-/

namespace A251319.P12494513102741134165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259508 (n + 1) - (2 * A046672 n - A054854 n)

end

end A251319.P12494513102741134165

namespace A251319

/-- `A259508(n+1)-(2*A046672(n)-A054854(n))` -/
def P12494513102741134165.Spec : Prop :=
  ∀ n, P12494513102741134165.a n = A251319 (n + 1)

end A251319

/-! ## A251319.P9176796160471126069

`A259508(n+1)-(A054854(n)+∑[A230893(n+1)])`
-/

namespace A251319.P9176796160471126069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259508 (n + 1) - (A054854 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251319.P9176796160471126069

namespace A251319

/-- `A259508(n+1)-(A054854(n)+∑[A230893(n+1)])` -/
def P9176796160471126069.Spec : Prop :=
  ∀ n, P9176796160471126069.a n = A251319 (n + 1)

end A251319

/-! ## A251319.P3421635993819840814

`A230893(n+1)+A259508(n+1)-Δ[A046672(n)]`
-/

namespace A251319.P3421635993819840814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230893 (n + 1) + (A259508 (n + 1) - (f1 (n + 1) - f1 n))

end

end A251319.P3421635993819840814

namespace A251319

/-- `A230893(n+1)+A259508(n+1)-Δ[A046672(n)]` -/
def P3421635993819840814.Spec : Prop :=
  ∀ n, P3421635993819840814.a n = A251319 (n + 1)

end A251319

/-! ## A251319.P9952912685475800479

`A259508(n+1)-(A054854(n+1)-A230893(n+1))`
-/

namespace A251319.P9952912685475800479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259508 (n + 1) - (A054854 (n + 1) - A230893 (n + 1))

end

end A251319.P9952912685475800479

namespace A251319

/-- `A259508(n+1)-(A054854(n+1)-A230893(n+1))` -/
def P9952912685475800479.Spec : Prop :=
  ∀ n, P9952912685475800479.a n = A251319 (n + 1)

end A251319

/-! ## A251319.P17039395492139444699

`A259508(n+1)-(3*A046672(n)-A228501(n+1))`
-/

namespace A251319.P17039395492139444699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259508 (n + 1) - (3 * A046672 n - A228501 (n + 1))

end

end A251319.P17039395492139444699

namespace A251319

/-- `A259508(n+1)-(3*A046672(n)-A228501(n+1))` -/
def P17039395492139444699.Spec : Prop :=
  ∀ n, P17039395492139444699.a n = A251319 (n + 1)

end A251319

/-! ## A251319.P2718112982881101452

`A235653(n+2)/2-A235653(n+1)`
-/

namespace A251319.P2718112982881101452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235653 (n + 2) : ℚ) / 2 - (A235653 (n + 1) : ℚ)

end

end A251319.P2718112982881101452

namespace A251319

/-- `A235653(n+2)/2-A235653(n+1)` -/
def P2718112982881101452.Spec : Prop :=
  ∀ n, P2718112982881101452.a n = (A251319 (n + 1) : ℚ)

end A251319

/-!
# A251320: Number of (n+1) X (2+1) 0..1 arrays with every 2 X 2 subblock having one or two 1s.

The programs for A251320, the canonical program `A251320.P13977845492361231283` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251320 has offset 1).

The definition of A251320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251320.P13977845492361231283

`ogf((28+32x-98x^2-4x^3+16x^4)/(1-3x-8x^2+13x^3+x^4-2x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251320

/-- `ogf((28+32x-98x^2-4x^3+16x^4)/(1-3x-8x^2+13x^3+x^4-2x^5))` -/
def P13977845492361231283.Spec : Prop :=
  ∀ n, P13977845492361231283.a n = A251320 (n + 1)

theorem P13977845492361231283.correct : P13977845492361231283.Spec := by
  intro n
  simp only [A251320, Nat.add_sub_cancel]

end A251320

/-! ## A251320.P15454710726823471347

`A251326(∑[n+1]+2)`
-/

namespace A251320.P15454710726823471347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251326 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251320.P15454710726823471347

namespace A251320

/-- `A251326(∑[n+1]+2)` -/
def P15454710726823471347.Spec : Prop :=
  ∀ n, P15454710726823471347.a n = A251320 (n + 1)

end A251320

/-!
# A251321: Number of (n+1)X(3+1) 0..1 arrays with every 2X2 subblock having one or two 1s.

The programs for A251321, there is no canonical definition to state claims against.
-/

/-! ## A251321.P16726949204058656922

`A251326(∑[n+2]+4)`
-/

namespace A251321.P16726949204058656922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251326 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251321.P16726949204058656922

/-!
# A251322: Number of (n+1)X(4+1) 0..1 arrays with every 2X2 subblock having one or two 1s.

The programs for A251322, there is no canonical definition to state claims against.
-/

/-! ## A251322.P13703951860173525212

`A251326(A374004(n+1))`
-/

namespace A251322.P13703951860173525212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251326 (A374004 (n + 1)).toNat

end

end A251322.P13703951860173525212

/-! ## A251322.P13348523447047138355

`A251326(A141214(n+1))`
-/

namespace A251322.P13348523447047138355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251326 (A141214 (n + 1)).toNat

end

end A251322.P13348523447047138355

/-!
# A251323: Number of (n+1)X(5+1) 0..1 arrays with every 2X2 subblock having one or two 1s.

The programs for A251323, there is no canonical definition to state claims against.
-/

/-! ## A251323.P13954575964901398180

`A251326(A374005(n+1))`
-/

namespace A251323.P13954575964901398180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251326 (A374005 (n + 1)).toNat

end

end A251323.P13954575964901398180

/-! ## A251323.P14020496971633554511

`A251326(Δ[A264443(n)])`
-/

namespace A251323.P14020496971633554511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251326 (f1 (n + 1) - f1 n).toNat

end

end A251323.P14020496971633554511

/-!
# A251324: Number of (n+1) X (6+1) 0..1 arrays with every 2 X 2 subblock having one or two 1's.

The programs for A251324, there is no canonical definition to state claims against.
-/

/-! ## A251324.P900041597175049077

`A251326(A374007(n+1))`
-/

namespace A251324.P900041597175049077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251326 (A374007 (n + 1)).toNat

end

end A251324.P900041597175049077

/-!
# A251325: Number of (n+1)X(7+1) 0..1 arrays with every 2X2 subblock having one or two 1s.

The programs for A251325, there is no canonical definition to state claims against.
-/

/-! ## A251325.P8445706756591735291

`A251326(A374008(n+1))`
-/

namespace A251325.P8445706756591735291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251326 (A374008 (n + 1)).toNat

end

end A251325.P8445706756591735291

/-!
# A251326: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with every 2X2 subblock having one or two 1s.

The programs for A251326, there is no canonical definition to state claims against.
-/

/-! ## A251326.P2057224394118679193

`A095275(A095343(n+2))`
-/

namespace A251326.P2057224394118679193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095275 (A095343 (n + 2)).toNat

end

end A251326.P2057224394118679193

/-!
# A251327: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock summing to 2 4 or 6.

The programs for A251327, there is no canonical definition to state claims against.
-/

/-! ## A251327.P5672806054523841079

`A251335(∑[4*n]+1)`
-/

namespace A251327.P5672806054523841079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251335 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251327.P5672806054523841079

/-!
# A251328: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock summing to 2 4 or 6.

The programs for A251328, the canonical program `A251328.P11255029658957582792` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251328 has offset 1).

The definition of A251328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251328.P9592847439320268826

`ogf((39-141x-108x^2)/(1-8x+13x^2+12x^3))`
-/

namespace A251328.P9592847439320268826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [39, -141, -108] [1, -8, 13, 12] n

end

end A251328.P9592847439320268826

namespace A251328

/-- `ogf((39-141x-108x^2)/(1-8x+13x^2+12x^3))` -/
def P9592847439320268826.Spec : Prop :=
  ∀ n, P9592847439320268826.a n = A251328 (n + 1)

end A251328

/-! ## A251328.P11255029658957582792

`8*a(n-1)-13*a(n-2)-12*a(n-3)` with `a(0)=39, a(1)=171, a(2)=753`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251328

/-- `8*a(n-1)-13*a(n-2)-12*a(n-3)` -/
def P11255029658957582792.Spec : Prop :=
  ∀ n, P11255029658957582792.a n = A251328 (n + 1)

theorem P11255029658957582792.correct : P11255029658957582792.Spec := by
  intro n
  simp only [A251328, Nat.add_sub_cancel]

end A251328

/-! ## A251328.P14914201161848645039

`A126473(2+n)+A020707(n)²`
-/

namespace A251328.P14914201161848645039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 (2 + n) + A020707 n ^ 2

end

end A251328.P14914201161848645039

namespace A251328

/-- `A126473(2+n)+A020707(n)²` -/
def P14914201161848645039.Spec : Prop :=
  ∀ n, P14914201161848645039.a n = A251328 (n + 1)

end A251328

/-! ## A251328.P10426937538528259038

`A126473(n+2)+A000302(n+2)`
-/

namespace A251328.P10426937538528259038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 (n + 2) + A000302 (n + 2)

end

end A251328.P10426937538528259038

namespace A251328

/-- `A126473(n+2)+A000302(n+2)` -/
def P10426937538528259038.Spec : Prop :=
  ∀ n, P10426937538528259038.a n = A251328 (n + 1)

end A251328

/-! ## A251328.P3214188972416696888

`A126473(n+2)+A000079(n+2)²`
-/

namespace A251328.P3214188972416696888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 (n + 2) + A000079 (n + 2) ^ 2

end

end A251328.P3214188972416696888

namespace A251328

/-- `A126473(n+2)+A000079(n+2)²` -/
def P3214188972416696888.Spec : Prop :=
  ∀ n, P3214188972416696888.a n = A251328 (n + 1)

end A251328

/-! ## A251328.P11685775736252470363

`A126473(n+2)+A011782(n+3)²`
-/

namespace A251328.P11685775736252470363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 (n + 2) + A011782 (n + 3) ^ 2

end

end A251328.P11685775736252470363

namespace A251328

/-- `A126473(n+2)+A011782(n+3)²` -/
def P11685775736252470363.Spec : Prop :=
  ∀ n, P11685775736252470363.a n = A251328 (n + 1)

end A251328

/-! ## A251328.P11177578615378891650

`A126473(n+2)+A000079(2*(n+2))`
-/

namespace A251328.P11177578615378891650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 (n + 2) + A000079 (2 * (n + 2))

end

end A251328.P11177578615378891650

namespace A251328

/-- `A126473(n+2)+A000079(2*(n+2))` -/
def P11177578615378891650.Spec : Prop :=
  ∀ n, P11177578615378891650.a n = A251328 (n + 1)

end A251328

/-!
# A251329: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock summing to 2 4 or 6.

The programs for A251329, there is no canonical definition to state claims against.
-/

/-! ## A251329.P1882541575099771480

`A251335(∑[n+1]+2)`
-/

namespace A251329.P1882541575099771480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251335 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251329.P1882541575099771480

/-! ## A251329.P6209017266813538107

`record[A251335(abs(A201163(n)))]`
-/

namespace A251329.P6209017266813538107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251335 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251329.P6209017266813538107

/-! ## A251329.P5966906248939755675

`record[A251335(Δ[A003453(n+5)])]`
-/

namespace A251329.P5966906248939755675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251335 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251329.P5966906248939755675

/-!
# A251330: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock summing to 2 4 or 6.

The programs for A251330, there is no canonical definition to state claims against.
-/

/-! ## A251330.P12982914090121525378

`A251335(∑[n+2]+4)`
-/

namespace A251330.P12982914090121525378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251335 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251330.P12982914090121525378

/-!
# A251331: Number of (n+1) X (4+1) 0..2 arrays with every 2 X 2 subblock summing to 2, 4, or 6.

The programs for A251331, there is no canonical definition to state claims against.
-/

/-! ## A251331.P14554527810531472995

`A251335(A374004(n+1))`
-/

namespace A251331.P14554527810531472995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251335 (A374004 (n + 1)).toNat

end

end A251331.P14554527810531472995

/-! ## A251331.P17119703055465989890

`A251335(A141214(n+1))`
-/

namespace A251331.P17119703055465989890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251335 (A141214 (n + 1)).toNat

end

end A251331.P17119703055465989890

/-!
# A251332: Number of (n+1) X (5+1) 0..2 arrays with every 2 X 2 subblock summing to 2 4 or 6.

The programs for A251332, there is no canonical definition to state claims against.
-/

/-! ## A251332.P2660420984547919463

`A251335(∑[n+4]+11)`
-/

namespace A251332.P2660420984547919463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251335 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A251332.P2660420984547919463

/-!
# A251333: Number of (n+1) X (6+1) 0..2 arrays with every 2 X 2 subblock summing to 2 4 or 6.

The programs for A251333, there is no canonical definition to state claims against.
-/

/-! ## A251333.P10984568214853597762

`A251335(A374007(n+1))`
-/

namespace A251333.P10984568214853597762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251335 (A374007 (n + 1)).toNat

end

end A251333.P10984568214853597762

/-!
# A251334: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock summing to 2 4 or 6.

The programs for A251334, there is no canonical definition to state claims against.
-/

/-! ## A251334.P15421663893386753144

`A251335(A374008(n+1))`
-/

namespace A251334.P15421663893386753144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251335 (A374008 (n + 1)).toNat

end

end A251334.P15421663893386753144

/-!
# A251336: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock summing to a nonzero multiple of 3.

The programs for A251336, the canonical program `A251336.P3908195180875918358` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251336 has offset 1).

The definition of A251336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251336.P3908195180875918358

`ogf((85-395x-400x^2)/(1-10x+20x^2+25x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251336

/-- `ogf((85-395x-400x^2)/(1-10x+20x^2+25x^3))` -/
def P3908195180875918358.Spec : Prop :=
  ∀ n, P3908195180875918358.a n = A251336 (n + 1)

theorem P3908195180875918358.correct : P3908195180875918358.Spec := by
  intro n
  simp only [A251336, Nat.add_sub_cancel]

end A251336

/-! ## A251336.P9715569827865588420

`A251343(∑[n]+1)`
-/

namespace A251336.P9715569827865588420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251343 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251336.P9715569827865588420

namespace A251336

/-- `A251343(∑[n]+1)` -/
def P9715569827865588420.Spec : Prop :=
  ∀ n, P9715569827865588420.a n = A251336 (n + 1)

end A251336

/-! ## A251336.P16691072618493985432

`record[A251343(n+1)/A078121(n)]`
-/

namespace A251336.P16691072618493985432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251343 (n + 1) : ℚ) / (A078121 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251336.P16691072618493985432

namespace A251336

/-- `record[A251343(n+1)/A078121(n)]` -/
def P16691072618493985432.Spec : Prop :=
  ∀ n, P16691072618493985432.a n = (A251336 (n + 1) : ℚ)

end A251336

/-! ## A251336.P14418786675663658029

`record[root(A251343(n+1), A143453(n))]`
-/

namespace A251336.P14418786675663658029
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251343 (n + 1) : ℝ) ^ (1 / (A143453 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251336.P14418786675663658029

namespace A251336

/-- `record[root(A251343(n+1), A143453(n))]` -/
def P14418786675663658029.Spec : Prop :=
  ∀ n, P14418786675663658029.a n = (A251336 (n + 1) : ℝ)

end A251336

/-! ## A251336.P1571152239755782762

`record[gcd(A002262(n), A251343(n+1))]`
-/

namespace A251336.P1571152239755782762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251343 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251336.P1571152239755782762

namespace A251336

/-- `record[gcd(A002262(n), A251343(n+1))]` -/
def P1571152239755782762.Spec : Prop :=
  ∀ n, (P1571152239755782762.a n : ℤ) = A251336 (n + 1)

end A251336

/-!
# A251337: Number of (n+1) X (2+1) 0..3 arrays with every 2 X 2 subblock summing to a nonzero multiple of 3.

The programs for A251337, there is no canonical definition to state claims against.
-/

/-! ## A251337.P2006525860203169138

`A251343(∑[n+1]+2)`
-/

namespace A251337.P2006525860203169138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251343 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251337.P2006525860203169138

/-! ## A251337.P15197734033886079208

`record[root(A251343(n+2), A143453(n))]`
-/

namespace A251337.P15197734033886079208
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251343 (n + 2) : ℝ) ^ (1 / (A143453 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251337.P15197734033886079208

/-! ## A251337.P12028461265533300571

`record[gcd(A002262(n), A251343(n+2))]`
-/

namespace A251337.P12028461265533300571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251343 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251337.P12028461265533300571

/-! ## A251337.P7802557491264989341

`record[A251343(abs(A201163(n)))]`
-/

namespace A251337.P7802557491264989341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251343 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251337.P7802557491264989341

/-! ## A251337.P5517126517078893570

`record[A251343(Δ[A003453(n+5)])]`
-/

namespace A251337.P5517126517078893570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251343 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251337.P5517126517078893570

/-!
# A251338: Number of (n+1) X (3+1) 0..3 arrays with every 2 X 2 subblock summing to a nonzero multiple of 3.

The programs for A251338, there is no canonical definition to state claims against.
-/

/-! ## A251338.P6157253945029247887

`A251343(∑[n+2]+4)`
-/

namespace A251338.P6157253945029247887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251343 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251338.P6157253945029247887

/-!
# A251339: Number of (n+1)X(4+1) 0..3 arrays with every 2X2 subblock summing to a nonzero multiple of 3.

The programs for A251339, there is no canonical definition to state claims against.
-/

/-! ## A251339.P14437385645369162212

`A251343(A374004(n+1))`
-/

namespace A251339.P14437385645369162212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251343 (A374004 (n + 1)).toNat

end

end A251339.P14437385645369162212

/-! ## A251339.P9432349111378187138

`A251343(A141214(n+1))`
-/

namespace A251339.P9432349111378187138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251343 (A141214 (n + 1)).toNat

end

end A251339.P9432349111378187138

/-!
# A251340: Number of (n+1)X(5+1) 0..3 arrays with every 2X2 subblock summing to a nonzero multiple of 3.

The programs for A251340, there is no canonical definition to state claims against.
-/

/-! ## A251340.P17657662001576181971

`A251343(A374005(n+1))`
-/

namespace A251340.P17657662001576181971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251343 (A374005 (n + 1)).toNat

end

end A251340.P17657662001576181971

/-!
# A251341: Number of (n+1)X(6+1) 0..3 arrays with every 2X2 subblock summing to a nonzero multiple of 3.

The programs for A251341, there is no canonical definition to state claims against.
-/

/-! ## A251341.P12072642322023653049

`A251343(A374007(n+1))`
-/

namespace A251341.P12072642322023653049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251343 (A374007 (n + 1)).toNat

end

end A251341.P12072642322023653049

/-!
# A251342: Number of (n+1)X(7+1) 0..3 arrays with every 2X2 subblock summing to a nonzero multiple of 3.

The programs for A251342, there is no canonical definition to state claims against.
-/

/-! ## A251342.P7988140519046424302

`A251343(A374008(n+1))`
-/

namespace A251342.P7988140519046424302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251343 (A374008 (n + 1)).toNat

end

end A251342.P7988140519046424302

/-!
# A251344: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock summing to 3 4 or 5.

The programs for A251344, the canonical program `A251344.P8876336289131132612` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251344 has offset 1).

The definition of A251344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251344.P8876336289131132612

`ogf((51+3x-108x^2)/(1-6x-3x^2+12x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251344

/-- `ogf((51+3x-108x^2)/(1-6x-3x^2+12x^3))` -/
def P8876336289131132612.Spec : Prop :=
  ∀ n, P8876336289131132612.a n = A251344 (n + 1)

theorem P8876336289131132612.correct : P8876336289131132612.Spec := by
  intro n
  simp only [A251344, Nat.add_sub_cancel]

end A251344

/-! ## A251344.P3610826046054838811

`A251351(∑[n]+1)`
-/

namespace A251344.P3610826046054838811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251351 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251344.P3610826046054838811

namespace A251344

/-- `A251351(∑[n]+1)` -/
def P3610826046054838811.Spec : Prop :=
  ∀ n, P3610826046054838811.a n = A251344 (n + 1)

end A251344

/-! ## A251344.P4936356773830798241

`record[root(A251351(n+1), A059268(n))]`
-/

namespace A251344.P4936356773830798241
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251351 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251344.P4936356773830798241

namespace A251344

/-- `record[root(A251351(n+1), A059268(n))]` -/
def P4936356773830798241.Spec : Prop :=
  ∀ n, P4936356773830798241.a n = (A251344 (n + 1) : ℝ)

end A251344

/-! ## A251344.P5772887559873863694

`record[gcd(A002262(n), A251351(n+1))]`
-/

namespace A251344.P5772887559873863694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251351 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251344.P5772887559873863694

namespace A251344

/-- `record[gcd(A002262(n), A251351(n+1))]` -/
def P5772887559873863694.Spec : Prop :=
  ∀ n, (P5772887559873863694.a n : ℤ) = A251344 (n + 1)

end A251344

/-! ## A251344.P14315139776938337357

`record[(1-A014473(n))*A251351(n+1)]`
-/

namespace A251344.P14315139776938337357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A014473 n) * A251351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251344.P14315139776938337357

namespace A251344

/-- `record[(1-A014473(n))*A251351(n+1)]` -/
def P14315139776938337357.Spec : Prop :=
  ∀ n, P14315139776938337357.a n = A251344 (n + 1)

end A251344

/-!
# A251345: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock summing to 3 4 or 5.

The programs for A251345, there is no canonical definition to state claims against.
-/

/-! ## A251345.P4867972795308684185

`A251351(∑[n+1]+2)`
-/

namespace A251345.P4867972795308684185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251351 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251345.P4867972795308684185

/-! ## A251345.P11352671570176476004

`record[root(A251351(n+2), A059268(n))]`
-/

namespace A251345.P11352671570176476004
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251351 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251345.P11352671570176476004

/-! ## A251345.P926148868743130683

`record[gcd(A002262(n), A251351(n+2))]`
-/

namespace A251345.P926148868743130683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251351 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251345.P926148868743130683

/-! ## A251345.P2348961660846996306

`record[A251351(Δ[A003453(n+5)])]`
-/

namespace A251345.P2348961660846996306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251351 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251345.P2348961660846996306

/-!
# A251346: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock summing to 3 4 or 5.

The programs for A251346, there is no canonical definition to state claims against.
-/

/-! ## A251346.P11002360371650642071

`A251351(∑[n+2]+4)`
-/

namespace A251346.P11002360371650642071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251351 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251346.P11002360371650642071

/-!
# A251347: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock summing to 3 4 or 5.

The programs for A251347, there is no canonical definition to state claims against.
-/

/-! ## A251347.P9753949436008264737

`A251351(A374004(n+1))`
-/

namespace A251347.P9753949436008264737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251351 (A374004 (n + 1)).toNat

end

end A251347.P9753949436008264737

/-! ## A251347.P105238827135497480

`A251351(A141214(n+1))`
-/

namespace A251347.P105238827135497480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251351 (A141214 (n + 1)).toNat

end

end A251347.P105238827135497480

/-!
# A251348: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock summing to 3 4 or 5.

The programs for A251348, there is no canonical definition to state claims against.
-/

/-! ## A251348.P9455455213725729925

`A251351(A374005(n+1))`
-/

namespace A251348.P9455455213725729925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251351 (A374005 (n + 1)).toNat

end

end A251348.P9455455213725729925

/-!
# A251349: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock summing to 3 4 or 5.

The programs for A251349, there is no canonical definition to state claims against.
-/

/-! ## A251349.P13220040296123522058

`A251351(A374007(n+1))`
-/

namespace A251349.P13220040296123522058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251351 (A374007 (n + 1)).toNat

end

end A251349.P13220040296123522058

/-!
# A251350: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock summing to 3 4 or 5.

The programs for A251350, there is no canonical definition to state claims against.
-/

/-! ## A251350.P6257669505274319696

`A251351(A000096(n+5)+8)`
-/

namespace A251350.P6257669505274319696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251351 (A000096 (n + 5) + 8).toNat

end

end A251350.P6257669505274319696

/-!
# A251352: Number of (n+1)X(1+1) 0..3 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251352, there is no canonical definition to state claims against.
-/

/-! ## A251352.P7156143078162166184

`A251359(∑[n]+1)`
-/

namespace A251352.P7156143078162166184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251359 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251352.P7156143078162166184

/-! ## A251352.P11779555157932882781

`record[A010054(n)*A251359(n+1)]`
-/

namespace A251352.P11779555157932882781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251352.P11779555157932882781

/-! ## A251352.P9627311807602805154

`record[root(A251359(n+1), A008459(n))]`
-/

namespace A251352.P9627311807602805154
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251359 (n + 1) : ℝ) ^ (1 / (A008459 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251352.P9627311807602805154

/-! ## A251352.P14748219605781787867

`record[root(A251359(n+1), A130595(n))]`
-/

namespace A251352.P14748219605781787867
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251359 (n + 1) : ℝ) ^ (1 / (A130595 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251352.P14748219605781787867

/-! ## A251352.P2649713717352496309

`record[root(A251359(n+1), A131060(n))]`
-/

namespace A251352.P2649713717352496309
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251359 (n + 1) : ℝ) ^ (1 / (A131060 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251352.P2649713717352496309

/-!
# A251353: Number of (n+1)X(2+1) 0..3 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251353, there is no canonical definition to state claims against.
-/

/-! ## A251353.P18230409364923573159

`A251359(∑[n+1]+2)`
-/

namespace A251353.P18230409364923573159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251359 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251353.P18230409364923573159

/-! ## A251353.P10982853244474039531

`record[A010054(n)*A251359(n+2)]`
-/

namespace A251353.P10982853244474039531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251359 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251353.P10982853244474039531

/-! ## A251353.P1404947178343125397

`record[root(A251359(n+3), A103371(n))]`
-/

namespace A251353.P1404947178343125397
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251359 (n + 3) : ℝ) ^ (1 / (A103371 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251353.P1404947178343125397

/-! ## A251353.P18243119579874257999

`record[A251359(Δ[A003453(n+5)])]`
-/

namespace A251353.P18243119579874257999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251359 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251353.P18243119579874257999

/-!
# A251354: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251354, there is no canonical definition to state claims against.
-/

/-! ## A251354.P15177825707071183558

`A251359(∑[n+2]+4)`
-/

namespace A251354.P15177825707071183558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251359 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251354.P15177825707071183558

/-!
# A251356: Number of (n+1)X(5+1) 0..3 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251356, there is no canonical definition to state claims against.
-/

/-! ## A251356.P16794885752800982544

`A251359(Δ[A264443(n)])`
-/

namespace A251356.P16794885752800982544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251359 (f1 (n + 1) - f1 n).toNat

end

end A251356.P16794885752800982544

/-!
# A251357: Number of (n+1)X(6+1) 0..3 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251357, there is no canonical definition to state claims against.
-/

/-! ## A251357.P9906107310338212255

`A251359(A055999(n+3)+1)`
-/

namespace A251357.P9906107310338212255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251359 (A055999 (n + 3) + 1).toNat

end

end A251357.P9906107310338212255

/-!
# A251358: Number of (n+1)X(7+1) 0..3 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251358, there is no canonical definition to state claims against.
-/

/-! ## A251358.P10142916078874605100

`A251359(A000096(n+5)+8)`
-/

namespace A251358.P10142916078874605100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251359 (A000096 (n + 5) + 8).toNat

end

end A251358.P10142916078874605100

/-!
# A251364: Difference between average of two consecutive odd primes and the sum of all prime factors of the average.

The programs for A251364, the canonical program `A251364.P12048531555665159687` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251364 has offset 1).

The definition of A251364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251364.P12048531555665159687

`(A000040(n+2)+A000040(n+3))/2-A001414((A000040(n+2)+A000040(n+3))/2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A251364

/-- `(A000040(n+2)+A000040(n+3))/2-A001414((A000040(n+2)+A000040(n+3))/2)` -/
def P12048531555665159687.Spec : Prop :=
  ∀ n, P12048531555665159687.a n = (A251364 (n + 1) : ℚ)

end A251364

/-! ## A251364.P456730405745834131

`A024675(n+1)-A001414(A024675(n+1))`
-/

namespace A251364.P456730405745834131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A001414 (A024675 (n + 1)).toNat

end

end A251364.P456730405745834131

namespace A251364

/-- `A024675(n+1)-A001414(A024675(n+1))` -/
def P456730405745834131.Spec : Prop :=
  ∀ n, P456730405745834131.a n = A251364 (n + 1)

end A251364

/-! ## A251364.P482245357873746461

`A145834(A024678(1+n)-1)`
-/

namespace A251364.P482245357873746461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145834 (A024678 (1 + n) - 1).toNat

end

end A251364.P482245357873746461

namespace A251364

/-- `A145834(A024678(1+n)-1)` -/
def P482245357873746461.Spec : Prop :=
  ∀ n, P482245357873746461.a n = A251364 (n + 1)

end A251364

/-! ## A251364.P11217369227976775759

`A075255(A024675(1+n))`
-/

namespace A251364.P11217369227976775759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A024675 (1 + n)).toNat

end

end A251364.P11217369227976775759

namespace A251364

/-- `A075255(A024675(1+n))` -/
def P11217369227976775759.Spec : Prop :=
  ∀ n, P11217369227976775759.a n = A251364 (n + 1)

end A251364

/-!
# A251365: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock summing to 1 2 3 4 5 6 or 7.

The programs for A251365, there is no canonical definition to state claims against.
-/

/-! ## A251365.P8508598134324256228

`A251373((n+1)²+n²)`
-/

namespace A251365.P8508598134324256228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251373 ((n + 1) ^ 2 + n ^ 2)

end

end A251365.P8508598134324256228

/-!
# A251366: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock summing to 1 2 3 4 5 6 or 7.

The programs for A251366, the canonical program `A251366.P15264486829170277489` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251366 has offset 1).

The definition of A251366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251366.P15264486829170277489

`8*a(n-1)+7*a(n-2)` with `a(0)=79, a(1)=695`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251366

/-- `8*a(n-1)+7*a(n-2)` -/
def P15264486829170277489.Spec : Prop :=
  ∀ n, (P15264486829170277489.a n : ℤ) = A251366 (n + 1)

theorem P15264486829170277489.correct : P15264486829170277489.Spec := by
  intro n
  simp only [A251366, Nat.add_sub_cancel]

end A251366

/-! ## A251366.P5719234239982172803

`A254598(n+2)`
-/

namespace A251366.P5719234239982172803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254598 (n + 2)

end

end A251366.P5719234239982172803

namespace A251366

/-- `A254598(n+2)` -/
def P5719234239982172803.Spec : Prop :=
  ∀ n, P5719234239982172803.a n = A251366 (n + 1)

end A251366

/-! ## A251366.P15035037831227418053

`ogf((79+63x)/(1-8x-7x^2))`
-/

namespace A251366.P15035037831227418053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [79, 63] [1, -8, -7] n

end

end A251366.P15035037831227418053

namespace A251366

/-- `ogf((79+63x)/(1-8x-7x^2))` -/
def P15035037831227418053.Spec : Prop :=
  ∀ n, P15035037831227418053.a n = A251366 (n + 1)

end A251366

/-! ## A251366.P7759494557759292464

`record[A254598(abs(2-n))]`
-/

namespace A251366.P7759494557759292464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254598 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251366.P7759494557759292464

namespace A251366

/-- `record[A254598(abs(2-n))]` -/
def P7759494557759292464.Spec : Prop :=
  ∀ n, P7759494557759292464.a n = A251366 (n + 1)

end A251366

/-! ## A251366.P14930429812396714738

`A212835(A052905(n+5)-2)`
-/

namespace A251366.P14930429812396714738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A052905 (n + 5) - 2).toNat

end

end A251366.P14930429812396714738

namespace A251366

/-- `A212835(A052905(n+5)-2)` -/
def P14930429812396714738.Spec : Prop :=
  ∀ n, P14930429812396714738.a n = A251366 (n + 1)

end A251366

/-!
# A251367: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock summing to 1, 2, 3, 4, 5, 6, or 7.

The programs for A251367, there is no canonical definition to state claims against.
-/

/-! ## A251367.P6411062032770064921

`A251373(∑[n+1]+2)`
-/

namespace A251367.P6411062032770064921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251373 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251367.P6411062032770064921

/-! ## A251367.P642779315341874872

`record[gcd(A195152(n), A251373(n+3))]`
-/

namespace A251367.P642779315341874872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195152 n) (A251373 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251367.P642779315341874872

/-!
# A251368: Number of (n+1) X (3+1) 0..2 arrays with every 2 X 2 subblock summing to 1 2 3 4 5 6 or 7.

The programs for A251368, there is no canonical definition to state claims against.
-/

/-! ## A251368.P3230518999547445121

`A251373(∑[n+2]+4)`
-/

namespace A251368.P3230518999547445121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251373 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251368.P3230518999547445121

/-!
# A251369: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock summing to 1 2 3 4 5 6 or 7.

The programs for A251369, there is no canonical definition to state claims against.
-/

/-! ## A251369.P14944544815654075336

`A251373(A052905(n)+9)`
-/

namespace A251369.P14944544815654075336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251373 (A052905 n + 9).toNat

end

end A251369.P14944544815654075336

/-! ## A251369.P16764293552832879379

`A251373(A141214(n+1))`
-/

namespace A251369.P16764293552832879379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251373 (A141214 (n + 1)).toNat

end

end A251369.P16764293552832879379

/-!
# A251370: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock summing to 1 2 3 4 5 6 or 7.

The programs for A251370, there is no canonical definition to state claims against.
-/

/-! ## A251370.P3944028237418396852

`A251373(Δ[A023545(n+1)])`
-/

namespace A251370.P3944028237418396852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251373 (f1 (n + 1) - f1 n).toNat

end

end A251370.P3944028237418396852

/-!
# A251371: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock summing to 1 2 3 4 5 6 or 7.

The programs for A251371, there is no canonical definition to state claims against.
-/

/-! ## A251371.P3159663492210071020

`A251373(A046691(n+4)-1)`
-/

namespace A251371.P3159663492210071020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251373 (A046691 (n + 4) - 1).toNat

end

end A251371.P3159663492210071020

/-!
# A251372: Number of (n+1) X (7+1) 0..2 arrays with every 2 X 2 subblock summing to 1 2 3 4 5 6 or 7.

The programs for A251372, there is no canonical definition to state claims against.
-/

/-! ## A251372.P6758773657749136781

`A251373(A000096(n+5)+8)`
-/

namespace A251372.P6758773657749136781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251373 (A000096 (n + 5) + 8).toNat

end

end A251372.P6758773657749136781

/-!
# A251374: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock summing to 5 6 or 7.

The programs for A251374, the canonical program `A251374.P2764289232173726426` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251374 has offset 1).

The definition of A251374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251374.P2764289232173726426

`ogf((124-192x-984x^2+384x^3)/(1-10x+3x^2+66x^3-24x^4))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251374

/-- `ogf((124-192x-984x^2+384x^3)/(1-10x+3x^2+66x^3-24x^4))` -/
def P2764289232173726426.Spec : Prop :=
  ∀ n, P2764289232173726426.a n = A251374 (n + 1)

theorem P2764289232173726426.correct : P2764289232173726426.Spec := by
  intro n
  simp only [A251374, Nat.add_sub_cancel]

end A251374

/-! ## A251374.P5614195770868449271

`A251381(∑[n]+1)`
-/

namespace A251374.P5614195770868449271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251381 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251374.P5614195770868449271

namespace A251374

/-- `A251381(∑[n]+1)` -/
def P5614195770868449271.Spec : Prop :=
  ∀ n, P5614195770868449271.a n = A251374 (n + 1)

end A251374

/-! ## A251374.P16437381923915191016

`record[A251381(n+1)/A022184(n)]`
-/

namespace A251374.P16437381923915191016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251381 (n + 1) : ℚ) / (A022184 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251374.P16437381923915191016

namespace A251374

/-- `record[A251381(n+1)/A022184(n)]` -/
def P16437381923915191016.Spec : Prop :=
  ∀ n, P16437381923915191016.a n = (A251374 (n + 1) : ℚ)

end A251374

/-! ## A251374.P10066637676034664270

`record[root(A251381(n+1), A130595(n))]`
-/

namespace A251374.P10066637676034664270
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251381 (n + 1) : ℝ) ^ (1 / (A130595 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251374.P10066637676034664270

namespace A251374

/-- `record[root(A251381(n+1), A130595(n))]` -/
def P10066637676034664270.Spec : Prop :=
  ∀ n, P10066637676034664270.a n = (A251374 (n + 1) : ℝ)

end A251374

/-! ## A251374.P7778823457393717851

`record[gcd(A002262(n), A251381(n+1))]`
-/

namespace A251374.P7778823457393717851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251381 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251374.P7778823457393717851

namespace A251374

/-- `record[gcd(A002262(n), A251381(n+1))]` -/
def P7778823457393717851.Spec : Prop :=
  ∀ n, (P7778823457393717851.a n : ℤ) = A251374 (n + 1)

end A251374

/-!
# A251375: Number of (n+1)X(2+1) 0..3 arrays with every 2X2 subblock summing to 5 6 or 7.

The programs for A251375, there is no canonical definition to state claims against.
-/

/-! ## A251375.P11169778163044628816

`A251381(∑[n+1]+2)`
-/

namespace A251375.P11169778163044628816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251381 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251375.P11169778163044628816

/-! ## A251375.P11097469425041665404

`record[gcd(A002262(n), A251381(n+2))]`
-/

namespace A251375.P11097469425041665404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251381 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251375.P11097469425041665404

/-!
# A251376: Number of (n+1)X(3+1) 0..3 arrays with every 2X2 subblock summing to 5 6 or 7.

The programs for A251376, there is no canonical definition to state claims against.
-/

/-! ## A251376.P17662980438574572991

`A251381(∑[n+2]+4)`
-/

namespace A251376.P17662980438574572991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251381 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251376.P17662980438574572991

/-!
# A251377: Number of (n+1)X(4+1) 0..3 arrays with every 2X2 subblock summing to 5 6 or 7.

The programs for A251377, there is no canonical definition to state claims against.
-/

/-! ## A251377.P3614607925700116161

`A251381(A167614(n+2)+1)`
-/

namespace A251377.P3614607925700116161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251381 (A167614 (n + 2) + 1).toNat

end

end A251377.P3614607925700116161

/-!
# A251378: Number of (n+1)X(5+1) 0..3 arrays with every 2X2 subblock summing to 5 6 or 7.

The programs for A251378, there is no canonical definition to state claims against.
-/

/-! ## A251378.P5090458413750284220

`A251381(A374005(n+1))`
-/

namespace A251378.P5090458413750284220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251381 (A374005 (n + 1)).toNat

end

end A251378.P5090458413750284220

/-!
# A251380: Number of (n+1)X(7+1) 0..3 arrays with every 2X2 subblock summing to 5 6 or 7.

The programs for A251380, there is no canonical definition to state claims against.
-/

/-! ## A251380.P9061645702813864190

`A251381(A000096(n+5)+8)`
-/

namespace A251380.P9061645702813864190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251381 (A000096 (n + 5) + 8).toNat

end

end A251380.P9061645702813864190

/-!
# A251382: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock summing to 2 3 4 5 or 6.

The programs for A251382, there is no canonical definition to state claims against.
-/

/-! ## A251382.P11503192643773098678

`A251390((n+1)²+n²)`
-/

namespace A251382.P11503192643773098678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251390 ((n + 1) ^ 2 + n ^ 2)

end

end A251382.P11503192643773098678

/-!
# A251383: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock summing to 2 3 4 5 or 6.

The programs for A251383, the canonical program `A251383.P6087026518802979399` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251383 has offset 1).

The definition of A251383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251383.P6087026518802979399

`ogf((71+3x-54x^2)/(1-8x-x^2+6x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A251383

/-- `ogf((71+3x-54x^2)/(1-8x-x^2+6x^3))` -/
def P6087026518802979399.Spec : Prop :=
  ∀ n, P6087026518802979399.a n = A251383 (n + 1)

theorem P6087026518802979399.correct : P6087026518802979399.Spec := by
  intro n
  simp only [A251383, Nat.add_sub_cancel]

end A251383

/-! ## A251383.P7755741109904894704

`A251390(∑[n]+1)`
-/

namespace A251383.P7755741109904894704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251390 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251383.P7755741109904894704

namespace A251383

/-- `A251390(∑[n]+1)` -/
def P7755741109904894704.Spec : Prop :=
  ∀ n, P7755741109904894704.a n = A251383 (n + 1)

end A251383

/-! ## A251383.P11554914510531290808

`record[root(A251390(n+1), A008518(n))]`
-/

namespace A251383.P11554914510531290808
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251390 (n + 1) : ℝ) ^ (1 / (A008518 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251383.P11554914510531290808

namespace A251383

/-- `record[root(A251390(n+1), A008518(n))]` -/
def P11554914510531290808.Spec : Prop :=
  ∀ n, P11554914510531290808.a n = (A251383 (n + 1) : ℝ)

end A251383

/-! ## A251383.P18277354384924236560

`record[root(A251390(n+1), A109128(n))]`
-/

namespace A251383.P18277354384924236560
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251390 (n + 1) : ℝ) ^ (1 / (A109128 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251383.P18277354384924236560

namespace A251383

/-- `record[root(A251390(n+1), A109128(n))]` -/
def P18277354384924236560.Spec : Prop :=
  ∀ n, P18277354384924236560.a n = (A251383 (n + 1) : ℝ)

end A251383

/-!
# A251384: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock summing to 2 3 4 5 or 6.

The programs for A251384, there is no canonical definition to state claims against.
-/

/-! ## A251384.P15377633673297663760

`A251390(∑[n+1]+2)`
-/

namespace A251384.P15377633673297663760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251390 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251384.P15377633673297663760

/-! ## A251384.P7338376815863661710

`record[gcd(A215078(n), A251390(n+2))]`
-/

namespace A251384.P7338376815863661710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215078 n) (A251390 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251384.P7338376815863661710

/-! ## A251384.P14068309816169762705

`record[root(A251390(n+3), A210227(n+1))]`
-/

namespace A251384.P14068309816169762705
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251390 (n + 3) : ℝ) ^ (1 / (A210227 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251384.P14068309816169762705

/-! ## A251384.P9639669649314724489

`record[gcd(A210485(n+1), A251390(n+3))]`
-/

namespace A251384.P9639669649314724489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210485 (n + 1)) (A251390 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251384.P9639669649314724489

/-! ## A251384.P955865619514287045

`record[root(A251390(n+3), A144285(n+1))]`
-/

namespace A251384.P955865619514287045
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251390 (n + 3) : ℝ) ^ (1 / (A144285 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251384.P955865619514287045

/-!
# A251385: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock summing to 2 3 4 5 or 6.

The programs for A251385, there is no canonical definition to state claims against.
-/

/-! ## A251385.P4791022365173304150

`A251390(∑[n+2]+4)`
-/

namespace A251385.P4791022365173304150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251390 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251385.P4791022365173304150

/-!
# A251386: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock summing to 2 3 4 5 or 6.

The programs for A251386, there is no canonical definition to state claims against.
-/

/-! ## A251386.P5099834295065099392

`A251390(A141214(n)+7)`
-/

namespace A251386.P5099834295065099392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251390 (A141214 n + 7).toNat

end

end A251386.P5099834295065099392

/-! ## A251386.P1312081854770269022

`A251390(A141214(n+1))`
-/

namespace A251386.P1312081854770269022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251390 (A141214 (n + 1)).toNat

end

end A251386.P1312081854770269022

/-!
# A251389: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock summing to 2 3 4 5 or 6.

The programs for A251389, there is no canonical definition to state claims against.
-/

/-! ## A251389.P8661501269159173603

`A251390(A000124(n+6)+n)`
-/

namespace A251389.P8661501269159173603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251390 (A000124 (n + 6) + (n : ℤ)).toNat

end

end A251389.P8661501269159173603

/-!
# A251391: Indices of squarefree numbers in A098550.

The programs for A251391, there is no canonical definition to state claims against.
-/

/-! ## A251391.P5357757486352353869

`eq[1, A008833(A098550(1+n))]+1`
-/

namespace A251391.P5357757486352353869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A098550 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A251391.P5357757486352353869

/-! ## A251391.P15702376757818030209

`eq[A098550(n+1), A251089(n+1)]+1`
-/

namespace A251391.P15702376757818030209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A251391.P15702376757818030209

/-! ## A251391.P4086245630804181187

`eq[A251138(n+1), A251140(n+1)]+1`
-/

namespace A251391.P4086245630804181187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251140 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A251391.P4086245630804181187

/-! ## A251391.P2251506860236628097

`eq[A001222(A098550(n+1)), A251138(n+1)]+1`
-/

namespace A251391.P2251506860236628097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A098550 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251138 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A251391.P2251506860236628097

/-! ## A251391.P16109049749153709094

`eq[A001221(A098550(n+1)), A251140(n+1)]+1`
-/

namespace A251391.P16109049749153709094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A098550 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251140 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A251391.P16109049749153709094

/-! ## A251391.P15767205744612673017

`record[A098551(A251045(n+1))]`
-/

namespace A251391.P15767205744612673017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A251045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251391.P15767205744612673017

/-!
# A251392: Indices of nonprimes in A098550.

The programs for A251392, there is no canonical definition to state claims against.
-/

/-! ## A251392.P2130602293858202387

`comp[A251239(n+1)-1]+1`
-/

namespace A251392.P2130602293858202387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251239 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A251392.P2130602293858202387

/-! ## A251392.P13176457478186337528

`comp[A098551(Δ[A007504(n)])-1]+1`
-/

namespace A251392.P13176457478186337528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (f2 (n + 1) - f2 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A251392.P13176457478186337528

/-! ## A251392.P2686745542167036633

`comp[A098551(A000040(n+1))-1]+1`
-/

namespace A251392.P2686745542167036633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A000040 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A251392.P2686745542167036633

/-! ## A251392.P4783516823211115685

`comp[A098551(A093074(n+1))-1]+1`
-/

namespace A251392.P4783516823211115685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A093074 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A251392.P4783516823211115685

/-! ## A251392.P15378079246027027783

`comp[A010051(n+1)*A098551(n+1)]`
-/

namespace A251392.P15378079246027027783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A098551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A251392.P15378079246027027783

/-! ## A251392.P9411358531426036635

`lt[0, A256461(n+1)]+1`
-/

namespace A251392.P9411358531426036635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A251392.P9411358531426036635

/-! ## A251392.P3493860899773386963

`eq[char[A251239(n+1)], A000007(n)]`
-/

namespace A251392.P3493860899773386963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251239 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A251392.P3493860899773386963

/-! ## A251392.P3786704944813945846

`eq[char[A251239(n+1)], A000038(n)]`
-/

namespace A251392.P3786704944813945846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251239 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A251392.P3786704944813945846

/-! ## A251392.P2972600435589194115

`eq[char[A251239(n+1)], A257170(2*n)]`
-/

namespace A251392.P2972600435589194115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251239 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257170 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A251392.P2972600435589194115

/-! ## A251392.P9569341129257777353

`record[n+1-A049084(A098550(n+1))]`
-/

namespace A251392.P9569341129257777353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A049084 (A098550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251392.P9569341129257777353

/-! ## A251392.P444690290815537866

`eq[char[A251239(n+1)], A105523(2*n)]`
-/

namespace A251392.P444690290815537866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251239 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A251392.P444690290815537866

/-!
# A251393: Indices of powers of 2 in A098550.

The programs for A251393, there is no canonical definition to state claims against.
-/

/-! ## A251393.P14042664967583296391

`A098551(2^n)`
-/

namespace A251393.P14042664967583296391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (2 ^ n)

end

end A251393.P14042664967583296391

/-! ## A251393.P13284951962111324642

`record[A098551(A001316(n))]`
-/

namespace A251393.P13284951962111324642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251393.P13284951962111324642

/-! ## A251393.P3064280517863235259

`record[A098551(A029930(n))]`
-/

namespace A251393.P3064280517863235259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251393.P3064280517863235259

/-! ## A251393.P2081616024471610492

`record[A098551(A059148(n))]`
-/

namespace A251393.P2081616024471610492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A059148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251393.P2081616024471610492

/-! ## A251393.P3130413109413274423

`record[A098551(A059268(n))]`
-/

namespace A251393.P3130413109413274423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251393.P3130413109413274423

/-!
# A251394: Indices of numbers in A098550, that are neither multiples of 2 nor multiples of 3, cf. A007310.

The programs for A251394, there is no canonical definition to state claims against.
-/

/-! ## A251394.P5553922621260406114

`eq[1, gcd(6, A098550(n+1))]+1`
-/

namespace A251394.P5553922621260406114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A098550 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A251394.P5553922621260406114

/-! ## A251394.P3480693296836242135

`eq[1, gcd(12, A251089(n+1))]+1`
-/

namespace A251394.P3480693296836242135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A251089 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A251394.P3480693296836242135

/-! ## A251394.P15784897628712880644

`record[(n+1)*A092220(A251101(n+1))]`
-/

namespace A251394.P15784897628712880644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A092220 (A251101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251394.P15784897628712880644

/-! ## A251394.P10452161014091868943

`record[A000027(n+1)^A092220(A251101(n+1))]`
-/

namespace A251394.P10452161014091868943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) ^ (A092220 (A251101 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251394.P10452161014091868943

/-! ## A251394.P6767236809850708102

`record[(A005408(n)-n)^A092220(A251101(n+1))]`
-/

namespace A251394.P6767236809850708102
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) ^ (A092220 (A251101 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251394.P6767236809850708102

/-!
# A251395: Number of (n+1)X(1+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251395, there is no canonical definition to state claims against.
-/

/-! ## A251395.P9314758740376553367

`A251402(∑[n]+1)`
-/

namespace A251395.P9314758740376553367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251402 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251395.P9314758740376553367

/-! ## A251395.P12423587777056816128

`record[root(A251402(n+1), A077028(n))]`
-/

namespace A251395.P12423587777056816128
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251402 (n + 1) : ℝ) ^ (1 / (A077028 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251395.P12423587777056816128

/-! ## A251395.P5935531644698428392

`record[root(A251402(n+1), A130595(n))]`
-/

namespace A251395.P5935531644698428392
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251402 (n + 1) : ℝ) ^ (1 / (A130595 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251395.P5935531644698428392

/-! ## A251395.P3319170223685406159

`record[gcd(A251402(n+1), A298259(n+1))]`
-/

namespace A251395.P3319170223685406159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251402 (n + 1)) (A298259 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251395.P3319170223685406159

/-!
# A251396: Number of (n+1)X(2+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251396, there is no canonical definition to state claims against.
-/

/-! ## A251396.P12370760454762945548

`A251402(∑[n+1]+2)`
-/

namespace A251396.P12370760454762945548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251402 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251396.P12370760454762945548

/-! ## A251396.P2505334390208490278

`record[gcd(A025581(n), A251402(n+3))]`
-/

namespace A251396.P2505334390208490278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A251402 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251396.P2505334390208490278

/-! ## A251396.P18303150064990431234

`record[A251402(abs(A201163(n)))]`
-/

namespace A251396.P18303150064990431234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251402 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251396.P18303150064990431234

/-!
# A251397: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A251397, there is no canonical definition to state claims against.
-/

/-! ## A251397.P13555804777811130124

`A251402(A167614(n+1))`
-/

namespace A251397.P13555804777811130124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251402 (A167614 (n + 1)).toNat

end

end A251397.P13555804777811130124

/-! ## A251397.P13419684868411978934

`A251402(∑[n+3]+1)`
-/

namespace A251397.P13419684868411978934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251402 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251397.P13419684868411978934

