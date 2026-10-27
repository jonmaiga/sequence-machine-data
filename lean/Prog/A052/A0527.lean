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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A052700: Expansion of e.g.f. x*(1-x)/(1-3*x).

The programs for A052700, the canonical program `A052700.P13239881101779491670` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052700 has offset 0).

The definition of A052700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052700.P13239881101779491670

`3*n*a(n-1)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052700

/-- `3*n*a(n-1)` -/
def P13239881101779491670.Spec : Prop :=
  ∀ n, (P13239881101779491670.a n : ℤ) = A052700 n

theorem P13239881101779491670.correct : P13239881101779491670.Spec := by
  intro n
  simp only [A052700]

end A052700

/-! ## A052700.P4563568792262283153

`n!*Δ[floor(3^(n-2))]`
-/

namespace A052700.P4563568792262283153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052700.P4563568792262283153

namespace A052700

/-- `n!*Δ[floor(3^(n-2))]` -/
def P4563568792262283153.Spec : Prop :=
  ∀ n, P4563568792262283153.a n = A052700 n

end A052700

/-! ## A052700.P7797659292240911325

`round(n!*Δ[3^(n-2)])`
-/

namespace A052700.P7797659292240911325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (f1 (n + 1) - f1 n))

end

end A052700.P7797659292240911325

namespace A052700

/-- `round(n!*Δ[3^(n-2)])` -/
def P7797659292240911325.Spec : Prop :=
  ∀ n, P7797659292240911325.a n = A052700 n

end A052700

/-! ## A052700.P11422466163062717823

`n*A052563(abs(1-n))`
-/

namespace A052700.P11422466163062717823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052563 |1 - (n : ℤ)|.toNat

end

end A052700.P11422466163062717823

namespace A052700

/-- `n*A052563(abs(1-n))` -/
def P11422466163062717823.Spec : Prop :=
  ∀ n, P11422466163062717823.a n = A052700 n

end A052700

/-! ## A052700.P6874613902368173988

`round(n!/2)*Δ[A154992(n)]`
-/

namespace A052700.P6874613902368173988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 2) * (f1 (n + 1) - f1 n)

end

end A052700.P6874613902368173988

namespace A052700

/-- `round(n!/2)*Δ[A154992(n)]` -/
def P6874613902368173988.Spec : Prop :=
  ∀ n, P6874613902368173988.a n = A052700 n

end A052700

/-! ## A052700.P17610587251859054022

`a(n-1)*A008486(n)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A052700.P17610587251859054022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 1) * A008486 n

end

end A052700.P17610587251859054022

namespace A052700

/-- `a(n-1)*A008486(n)` -/
def P17610587251859054022.Spec : Prop :=
  ∀ n, P17610587251859054022.a n = A052700 n

end A052700

/-! ## A052700.P8042873460262781000

`a(n-1)*A008585(n)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A052700.P8042873460262781000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 1) * A008585 n

end

end A052700.P8042873460262781000

namespace A052700

/-- `a(n-1)*A008585(n)` -/
def P8042873460262781000.Spec : Prop :=
  ∀ n, P8042873460262781000.a n = A052700 n

end A052700

/-!
# A052701: a(0) = 0; for n >= 1, a(n) = 2^(n-1)*C(n-1), where C(n) = A000108(n) Catalan numbers, n>0.

The programs for A052701, the canonical program `A052701.P6192577118575342611` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052701 has offset 0).

The definition of A052701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052701.P10877224276192666578

`A052714(n)/n!`
-/

namespace A052701.P10877224276192666578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052714 n : ℚ) / (Nat.factorial n : ℚ)

end

end A052701.P10877224276192666578

namespace A052701

/-- `A052714(n)/n!` -/
def P10877224276192666578.Spec : Prop :=
  ∀ n, P10877224276192666578.a n = (A052701 n : ℚ)

end A052701

/-! ## A052701.P7346759136240019993

`(2-3/n)*4*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A052701.P7346759136240019993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 - 3 / (n : ℚ)) * (4 * a (n - 1))

end

end A052701.P7346759136240019993

namespace A052701

/-- `(2-3/n)*4*a(n-1)` -/
def P7346759136240019993.Spec : Prop :=
  ∀ n, P7346759136240019993.a n = (A052701 n : ℚ)

end A052701

/-! ## A052701.P6192577118575342611

`floor(A115125(n)/2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A052701

/-- `floor(A115125(n)/2)` -/
def P6192577118575342611.Spec : Prop :=
  ∀ n, P6192577118575342611.a n = A052701 n

theorem P6192577118575342611.correct : P6192577118575342611.Spec := by
  intro n
  simp only [A052701]

end A052701

/-! ## A052701.P11135414898424765104

`A110510(∑[n]+1)`
-/

namespace A052701.P11135414898424765104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A052701.P11135414898424765104

namespace A052701

/-- `A110510(∑[n]+1)` -/
def P11135414898424765104.Spec : Prop :=
  ∀ n, P11135414898424765104.a n = A052701 n

end A052701

/-! ## A052701.P6954301327565275470

`record[A110510(n+1)]`
-/

namespace A052701.P6954301327565275470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052701.P6954301327565275470

namespace A052701

/-- `record[A110510(n+1)]` -/
def P6954301327565275470.Spec : Prop :=
  ∀ n, P6954301327565275470.a n = A052701 n

end A052701

/-! ## A052701.P18118203519632406002

`floor(2^(n-1)*A120588(n))`
-/

namespace A052701.P18118203519632406002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A120588 n : ℚ)⌋

end

end A052701.P18118203519632406002

namespace A052701

/-- `floor(2^(n-1)*A120588(n))` -/
def P18118203519632406002.Spec : Prop :=
  ∀ n, P18118203519632406002.a n = A052701 n

end A052701

/-! ## A052701.P15674438854198186805

`A120588(n)*A131577(n)`
-/

namespace A052701.P15674438854198186805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A131577 n

end

end A052701.P15674438854198186805

namespace A052701

/-- `A120588(n)*A131577(n)` -/
def P15674438854198186805.Spec : Prop :=
  ∀ n, P15674438854198186805.a n = A052701 n

end A052701

/-! ## A052701.P14635758719295410778

`abs(A115140(n)*A131577(n))`
-/

namespace A052701.P14635758719295410778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 n * A131577 n|

end

end A052701.P14635758719295410778

namespace A052701

/-- `abs(A115140(n)*A131577(n))` -/
def P14635758719295410778.Spec : Prop :=
  ∀ n, P14635758719295410778.a n = A052701 n

end A052701

/-! ## A052701.P4152268159598131274

`∑[A166444(n)]*A120588(n)`
-/

namespace A052701.P4152268159598131274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A120588 n

end

end A052701.P4152268159598131274

namespace A052701

/-- `∑[A166444(n)]*A120588(n)` -/
def P4152268159598131274.Spec : Prop :=
  ∀ n, P4152268159598131274.a n = A052701 n

end A052701

/-! ## A052701.P4913460050716818229

`Δ[A011782(n)]*A120588(n)`
-/

namespace A052701.P4913460050716818229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A120588 n

end

end A052701.P4913460050716818229

namespace A052701

/-- `Δ[A011782(n)]*A120588(n)` -/
def P4913460050716818229.Spec : Prop :=
  ∀ n, P4913460050716818229.a n = A052701 n

end A052701

/-! ## A052701.P9056402949086929854

`record[A097331(n)*A131572(n)]`
-/

namespace A052701.P9056402949086929854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A131572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052701.P9056402949086929854

namespace A052701

/-- `record[A097331(n)*A131572(n)]` -/
def P9056402949086929854.Spec : Prop :=
  ∀ n, P9056402949086929854.a n = A052701 n

end A052701

/-! ## A052701.P10540419365012292824

`(A115125(n)-A000007(n))/2`
-/

namespace A052701.P10540419365012292824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115125 n - A000007 n : ℚ) / 2

end

end A052701.P10540419365012292824

namespace A052701

/-- `(A115125(n)-A000007(n))/2` -/
def P10540419365012292824.Spec : Prop :=
  ∀ n, P10540419365012292824.a n = (A052701 n : ℚ)

end A052701

/-!
# A052702: Expansion of (1/2)*(1/x^2 - 1/x)*(1-x-sqrt(1-2*x+x^2-4*x^3)) - x.

The programs for A052702, there is no canonical definition to state claims against.
-/

/-! ## A052702.P6749096985745639656

`Δ[A023431(abs(2-n))]`
-/

namespace A052702.P6749096985745639656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023431 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052702.P6749096985745639656

/-! ## A052702.P10088239358063473641

`abs(Δ[A023431(A289207(n))])`
-/

namespace A052702.P10088239358063473641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023431 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A052702.P10088239358063473641

/-! ## A052702.P9249824593227245964

`Δ[A023431(A289207(n))]*A057427(n)`
-/

namespace A052702.P9249824593227245964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023431 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057427 n

end

end A052702.P9249824593227245964

/-! ## A052702.P6158729557348154302

`Δ[A023431(A289207(n))]%A034943(n+1)`
-/

namespace A052702.P6158729557348154302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023431 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A034943 (n + 1))

end

end A052702.P6158729557348154302

/-! ## A052702.P13523443096552463223

`Δ[A025246(n+1)]%A025189(n)`
-/

namespace A052702.P13523443096552463223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A025189 n)

end

end A052702.P13523443096552463223

/-! ## A052702.P8348737609711679210

`Δ[A023431(A289207(n))]%A292554(n)`
-/

namespace A052702.P8348737609711679210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023431 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A292554 n)

end

end A052702.P8348737609711679210

/-! ## A052702.P15503264253616528598

`Δ[A023431(A289207(n))]+A066770(n+1)%2`
-/

namespace A052702.P15503264253616528598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023431 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A066770 (n + 1)) 2

end

end A052702.P15503264253616528598

/-! ## A052702.P8343467160477743110

`Δ[A276066((2-n)²+2)]`
-/

namespace A052702.P8343467160477743110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276066 ((2 - (n : ℤ)) ^ 2 + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052702.P8343467160477743110

/-! ## A052702.P1805362228784492584

`A052724(n)/n!`
-/

namespace A052702.P1805362228784492584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052724 n : ℚ) / (Nat.factorial n : ℚ)

end

end A052702.P1805362228784492584

/-! ## A052702.P747943317568373411

`A052724(n)/A000142(n)`
-/

namespace A052702.P747943317568373411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052724 n : ℚ) / (A000142 n : ℚ)

end

end A052702.P747943317568373411

/-!
# A052703: A simple context-free grammar: convolution cube of A001002.

The programs for A052703, there is no canonical definition to state claims against.
-/

/-! ## A052703.P9253399108899608598

`A052730(n)/n!`
-/

namespace A052703.P9253399108899608598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052730 n : ℚ) / (Nat.factorial n : ℚ)

end

end A052703.P9253399108899608598

/-! ## A052703.P16626714845694038881

`A052730(n)/A000142(n)`
-/

namespace A052703.P16626714845694038881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052730 n : ℚ) / (A000142 n : ℚ)

end

end A052703.P16626714845694038881

/-! ## A052703.P12487186948470479846

`A052730(n)/∏[A028310(n)]`
-/

namespace A052703.P12487186948470479846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052730 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A052703.P12487186948470479846

/-! ## A052703.P4361002215615527765

`A052730(n)/A081123(2*n)`
-/

namespace A052703.P4361002215615527765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052730 n : ℚ) / (A081123 (2 * n) : ℚ)

end

end A052703.P4361002215615527765

/-! ## A052703.P6186391437506088552

`A052730(n)/A008279(A000096(n))`
-/

namespace A052703.P6186391437506088552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052730 n : ℚ) / (A008279 (A000096 n).toNat : ℚ)

end

end A052703.P6186391437506088552

/-! ## A052703.P8166888819277434341

`A052730(n)/A166350(A034856(n+1))`
-/

namespace A052703.P8166888819277434341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052730 n : ℚ) / (A166350 (A034856 (n + 1)).toNat : ℚ)

end

end A052703.P8166888819277434341

/-!
# A052704: Apart from the leading term, a(n) = Catalan(n-1)*4^(n-1).

The programs for A052704, the canonical program `A052704.P15301435889249106419` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052704 has offset 0).

The definition of A052704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052704.P15301435889249106419

`8*(2-3/n)*a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052704

/-- `8*(2-3/n)*a(n-1)` -/
def P15301435889249106419.Spec : Prop :=
  ∀ n, P15301435889249106419.a n = (A052704 n : ℚ)

end A052704

/-! ## A052704.P8484233994313520057

`A052707(n)/2`
-/

namespace A052704.P8484233994313520057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052707 n : ℚ) / 2

end

end A052704.P8484233994313520057

namespace A052704

/-- `A052707(n)/2` -/
def P8484233994313520057.Spec : Prop :=
  ∀ n, P8484233994313520057.a n = (A052704 n : ℚ)

end A052704

/-! ## A052704.P12557804534227689565

`2^(n-1)*A052701(n)`
-/

namespace A052704.P12557804534227689565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A052701 n : ℚ)

end

end A052704.P12557804534227689565

namespace A052704

/-- `2^(n-1)*A052701(n)` -/
def P12557804534227689565.Spec : Prop :=
  ∀ n, P12557804534227689565.a n = (A052704 n : ℚ)

end A052704

/-! ## A052704.P1869834861809972376

`A052701(n)*A131577(n)`
-/

namespace A052704.P1869834861809972376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 n * A131577 n

end

end A052704.P1869834861809972376

namespace A052704

/-- `A052701(n)*A131577(n)` -/
def P1869834861809972376.Spec : Prop :=
  ∀ n, P1869834861809972376.a n = A052704 n

end A052704

/-! ## A052704.P8431076711351579528

`abs(A052701(n)*A123344(n))`
-/

namespace A052704.P8431076711351579528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052701 n * A123344 n|

end

end A052704.P8431076711351579528

namespace A052704

/-- `abs(A052701(n)*A123344(n))` -/
def P8431076711351579528.Spec : Prop :=
  ∀ n, P8431076711351579528.a n = A052704 n

end A052704

/-! ## A052704.P10241826989687454572

`A131577(n)²*A120588(n)`
-/

namespace A052704.P10241826989687454572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n ^ 2 * A120588 n

end

end A052704.P10241826989687454572

namespace A052704

/-- `A131577(n)²*A120588(n)` -/
def P10241826989687454572.Spec : Prop :=
  ∀ n, P10241826989687454572.a n = A052704 n

end A052704

/-! ## A052704.P17447366964752709528

`record[A007179(n)*A097331(n)]`
-/

namespace A052704.P17447366964752709528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 n * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052704.P17447366964752709528

namespace A052704

/-- `record[A007179(n)*A097331(n)]` -/
def P17447366964752709528.Spec : Prop :=
  ∀ n, P17447366964752709528.a n = A052704 n

end A052704

/-! ## A052704.P9847160047185142175

`record[A097331(n)*A131577(n)]`
-/

namespace A052704.P9847160047185142175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052704.P9847160047185142175

namespace A052704

/-- `record[A097331(n)*A131577(n)]` -/
def P9847160047185142175.Spec : Prop :=
  ∀ n, P9847160047185142175.a n = A052704 n

end A052704

/-! ## A052704.P14931454619834204390

`A120588(n)*A166444(2*n)`
-/

namespace A052704.P14931454619834204390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A166444 (2 * n)

end

end A052704.P14931454619834204390

namespace A052704

/-- `A120588(n)*A166444(2*n)` -/
def P14931454619834204390.Spec : Prop :=
  ∀ n, P14931454619834204390.a n = A052704 n

end A052704

/-! ## A052704.P10730426947589353413

`A115125(n)/2*A131577(n)`
-/

namespace A052704.P10730426947589353413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115125 n : ℚ) / 2 * (A131577 n : ℚ)

end

end A052704.P10730426947589353413

namespace A052704

/-- `A115125(n)/2*A131577(n)` -/
def P10730426947589353413.Spec : Prop :=
  ∀ n, P10730426947589353413.a n = (A052704 n : ℚ)

end A052704

/-!
# A052705: Expansion of 2*x^2/(1 - 2*x - 2*x^2 + sqrt(1 - 4*x - 4*x^2)).

The programs for A052705, there is no canonical definition to state claims against.
-/

/-! ## A052705.P5477084767134801795

`A052709(n)-a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A052705.P5477084767134801795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A052709 n - a (n - 1)

end

end A052705.P5477084767134801795

/-! ## A052705.P16086955433214054637

`(2*A240688(n))%A052709(n+1)`
-/

namespace A052705.P16086955433214054637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A240688 n) (A052709 (n + 1))

end

end A052705.P16086955433214054637

/-! ## A052705.P13827233654214922630

`(A238578(n+2)%A238578(n+1))%A052709(n+1)`
-/

namespace A052705.P13827233654214922630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A238578 (n + 2)) (A238578 (n + 1))) (A052709 (n + 1))

end

end A052705.P13827233654214922630

/-! ## A052705.P13682311374200976053

`A052728(n)/n!`
-/

namespace A052705.P13682311374200976053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052728 n : ℚ) / (Nat.factorial n : ℚ)

end

end A052705.P13682311374200976053

/-! ## A052705.P2476533218539691901

`A052728(n)/A000142(n)`
-/

namespace A052705.P2476533218539691901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052728 n : ℚ) / (A000142 n : ℚ)

end

end A052705.P2476533218539691901

/-! ## A052705.P2406368741548077307

`A052744(n+1)/A000142(n+1)`
-/

namespace A052705.P2406368741548077307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052744 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A052705.P2406368741548077307

/-!
# A052706: A simple context-free grammar: convolution square of A001002.

The programs for A052706, there is no canonical definition to state claims against.
-/

/-! ## A052706.P7068157301935054243

`A052729(n)/n!`
-/

namespace A052706.P7068157301935054243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052729 n : ℚ) / (Nat.factorial n : ℚ)

end

end A052706.P7068157301935054243

/-! ## A052706.P917065106472472131

`A052729(n)/A000142(n)`
-/

namespace A052706.P917065106472472131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052729 n : ℚ) / (A000142 n : ℚ)

end

end A052706.P917065106472472131

/-! ## A052706.P14941794789994288591

`A052729(n)/∏[A028310(n)]`
-/

namespace A052706.P14941794789994288591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052729 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A052706.P14941794789994288591

/-! ## A052706.P1994024199941113419

`A052729(n)/A008279(A000096(n))`
-/

namespace A052706.P1994024199941113419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052729 n : ℚ) / (A008279 (A000096 n).toNat : ℚ)

end

end A052706.P1994024199941113419

/-!
# A052707: Odd powers of 2 multiplied by Catalan numbers.

The programs for A052707, there is no canonical definition to state claims against.
-/

/-! ## A052707.P13359757079761761107

`4*(4-6/n)*a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A052707.P13359757079761761107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 * ((4 - 6 / (n : ℚ)) * a (n - 1))

end

end A052707.P13359757079761761107

/-! ## A052707.P11917650462121118059

`2*A052704(n)`
-/

namespace A052707.P11917650462121118059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052704 n

end

end A052707.P11917650462121118059

/-! ## A052707.P14418178541299887746

`2^n*A052701(n)`
-/

namespace A052707.P14418178541299887746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A052701 n

end

end A052707.P14418178541299887746

/-! ## A052707.P15572437856681724431

`A115125(n)*A131577(n)`
-/

namespace A052707.P15572437856681724431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115125 n * A131577 n

end

end A052707.P15572437856681724431

/-! ## A052707.P5066883281232209042

`∑[A166444(n)]*A115125(n)`
-/

namespace A052707.P5066883281232209042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A115125 n

end

end A052707.P5066883281232209042

/-! ## A052707.P449262427748956449

`A052701(n)*A131577(n+1)`
-/

namespace A052707.P449262427748956449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 n * A131577 (n + 1)

end

end A052707.P449262427748956449

/-! ## A052707.P17781710901300810634

`2*A052701(n)*A131577(n)`
-/

namespace A052707.P17781710901300810634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052701 n * A131577 n)

end

end A052707.P17781710901300810634

/-! ## A052707.P16657938408689886313

`A120588(n)*A131577(2*n)`
-/

namespace A052707.P16657938408689886313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A131577 (2 * n)

end

end A052707.P16657938408689886313

/-! ## A052707.P10472944234344141130

`A115125(n)*A158780(2*n)`
-/

namespace A052707.P10472944234344141130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115125 n * A158780 (2 * n)

end

end A052707.P10472944234344141130

/-!
# A052708: A simple context-free grammar: convolution square of A049140.

The programs for A052708, there is no canonical definition to state claims against.
-/

/-! ## A052708.P16557177841260880334

`A052738(n)/n!`
-/

namespace A052708.P16557177841260880334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052738 n : ℚ) / (Nat.factorial n : ℚ)

end

end A052708.P16557177841260880334

/-! ## A052708.P5417886729119446230

`A052738(n)/A000142(n)`
-/

namespace A052708.P5417886729119446230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052738 n : ℚ) / (A000142 n : ℚ)

end

end A052708.P5417886729119446230

/-! ## A052708.P1444621121079948189

`A052738(n)/∏[A028310(n)]`
-/

namespace A052708.P1444621121079948189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052738 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A052708.P1444621121079948189

/-! ## A052708.P1578778983911840607

`A052738(n)/A008279(A000096(n))`
-/

namespace A052708.P1578778983911840607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052738 n : ℚ) / (A008279 (A000096 n).toNat : ℚ)

end

end A052708.P1578778983911840607

/-! ## A052708.P8554196402036944862

`A052738(n)/gcd(A052686(n), A052694(n))`
-/

namespace A052708.P8554196402036944862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052738 n : ℚ) / (Int.gcd (A052686 n) (A052694 n) : ℚ)

end

end A052708.P8554196402036944862

/-!
# A052709: Expansion of g.f. (1-sqrt(1-4*x-4*x^2))/(2*(1+x)).

The programs for A052709, there is no canonical definition to state claims against.
-/

/-! ## A052709.P1366407883328971621

`A025227(n)-a(n-1)` with `a(0)=0`
-/

namespace A052709.P1366407883328971621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A025227 n - a (n - 1)

end

end A052709.P1366407883328971621

/-! ## A052709.P14029795482211986413

`abs(∑[A025227(n)*A033999(n)])`
-/

namespace A052709.P14029795482211986413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025227 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A052709.P14029795482211986413

/-! ## A052709.P14039620735637875077

`A238578(n)%A100238(n)`
-/

namespace A052709.P14039620735637875077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238578 n) (A100238 n)

end

end A052709.P14039620735637875077

/-! ## A052709.P7086171441340541234

`A240688(n)%A100238(n)`
-/

namespace A052709.P7086171441340541234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240688 n) (A100238 n)

end

end A052709.P7086171441340541234

/-! ## A052709.P6664274665942492136

`A025227(n+1)-A071945(∑[n]+n)`
-/

namespace A052709.P6664274665942492136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025227 (n + 1) - A071945 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A052709.P6664274665942492136

/-! ## A052709.P13853563365648789125

`A108916(∑[n]-n)%A006139(n)`
-/

namespace A052709.P13853563365648789125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108916 (∑ j ∈ Finset.range (n + 1), f1 j - n)) (A006139 n)

end

end A052709.P13853563365648789125

/-! ## A052709.P8847597348958749368

`A025227(n+1)-A108916(∑[n])`
-/

namespace A052709.P8847597348958749368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025227 (n + 1) - A108916 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052709.P8847597348958749368

/-!
# A052710: A simple context-free grammar: difference between A049140 and its convolution square.

The programs for A052710, there is no canonical definition to state claims against.
-/

/-! ## A052710.P4989057795191435698

`A052725(n)/n!`
-/

namespace A052710.P4989057795191435698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052725 n : ℚ) / (Nat.factorial n : ℚ)

end

end A052710.P4989057795191435698

/-! ## A052710.P5430428292359548913

`A052725(n)/A000142(n)`
-/

namespace A052710.P5430428292359548913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052725 n : ℚ) / (A000142 n : ℚ)

end

end A052710.P5430428292359548913

/-! ## A052710.P1092014899495237902

`A052725(n)/∏[A028310(n)]`
-/

namespace A052710.P1092014899495237902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052725 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A052710.P1092014899495237902

/-! ## A052710.P8010509059488108180

`A052725(n)%(1-A052686(n))`
-/

namespace A052710.P8010509059488108180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052725 n) (1 - A052686 n)

end

end A052710.P8010509059488108180

/-! ## A052710.P890917296382618944

`A052725(n)/∏[A000007(n)+n]`
-/

namespace A052710.P890917296382618944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052725 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A052710.P890917296382618944

/-!
# A052711: Expansion of e.g.f. x*(1 - 2*x - sqrt(1-4*x))/2.

The programs for A052711, there is no canonical definition to state claims against.
-/

/-! ## A052711.P6778713597605858528

`lcm(2-n, A052717(n))`
-/

namespace A052711.P6778713597605858528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - (n : ℤ)) (A052717 n)

end

end A052711.P6778713597605858528

/-! ## A052711.P5984082136979402986

`A052741(n)+A052733(n)`
-/

namespace A052711.P5984082136979402986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052741 n + A052733 n

end

end A052711.P5984082136979402986

/-! ## A052711.P13936507134209762064

`(A071726(n)-A000108(n))*A000142(n)`
-/

namespace A052711.P13936507134209762064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071726 n - A000108 n) * A000142 n

end

end A052711.P13936507134209762064

/-! ## A052711.P2610935727449470687

`A052732(n+1)/(n+1)`
-/

namespace A052711.P2610935727449470687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052732 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052711.P2610935727449470687

/-! ## A052711.P4722318400262393756

`A052719(n)-A052715(n)`
-/

namespace A052711.P4722318400262393756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052719 n - A052715 n

end

end A052711.P4722318400262393756

/-!
# A052712: Expansion of e.g.f. (1 + 4*x - sqrt(1-8*x))/8.

The programs for A052712, there is no canonical definition to state claims against.
-/

/-! ## A052712.P11807603372722783435

`(2*n-3)*4*a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A052712.P11807603372722783435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ((2 * n : ℤ) - 3) * (4 * a (n - 1))

end

end A052712.P11807603372722783435

/-! ## A052712.P11686205937058533815

`ceil(A052714(n)/2)`
-/

namespace A052712.P11686205937058533815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052714 n : ℚ) / 2⌉

end

end A052712.P11686205937058533815

/-! ## A052712.P16654914758300903562

`A052713(n)/gcd(4, A000079(n))`
-/

namespace A052712.P16654914758300903562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052713 n : ℚ) / (Int.gcd 4 (A000079 n) : ℚ)

end

end A052712.P16654914758300903562

/-! ## A052712.P4548253961036857693

`A081125(A004275(n))*A166444(n)`
-/

namespace A052712.P4548253961036857693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 (A004275 n).toNat * A166444 n

end

end A052712.P4548253961036857693

/-! ## A052712.P566017206760958613

`A048854(A161680(n))*A166444(n)`
-/

namespace A052712.P566017206760958613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048854 (A161680 n).toNat * A166444 n

end

end A052712.P566017206760958613

/-!
# A052713: Expansion of e.g.f. (1-sqrt(1-8*x))/2.

The programs for A052713, there is no canonical definition to state claims against.
-/

/-! ## A052713.P14889877534255040450

`record[4*(n-2)*a(n-2)]` with `a(0)=0, a(1)=2`
-/

namespace A052713.P14889877534255040450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  4 * (((n : ℤ) - 2) * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052713.P14889877534255040450

/-! ## A052713.P4423984337552601477

`floor(abs(∏[a(n-1)-8])/4)` with `a(0)=2, a(1)=4`
-/

namespace A052713.P4423984337552601477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((|∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / 4⌋

end

end A052713.P4423984337552601477

/-! ## A052713.P13320461882636690857

`(2*n-3)*4*a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A052713.P13320461882636690857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ((2 * n : ℤ) - 3) * (4 * a (n - 1))

end

end A052713.P13320461882636690857

/-! ## A052713.P1044591783863780236

`2*A052714(n)`
-/

namespace A052713.P1044591783863780236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052714 n

end

end A052713.P1044591783863780236

/-! ## A052713.P6964124618099990088

`2*n!*A052701(n)`
-/

namespace A052713.P6964124618099990088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℤ) * A052701 n

end

end A052713.P6964124618099990088

/-!
# A052714: a(n) = 2^(n-1) * n! * Catalan(n-1) for n > 0 with a(0) = 0.

The programs for A052714, the canonical program `A052714.P11540160832821077407` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052714 has offset 0).

The definition of A052714 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A052714.P11540160832821077407

`A052701(n)*n!`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A052714

/-- `A052701(n)*n!` -/
def P11540160832821077407.Spec : Prop :=
  ∀ n, P11540160832821077407.a n = A052714 n

theorem P11540160832821077407.correct : P11540160832821077407.Spec := by
  intro n
  simp only [A052714]

end A052714

/-! ## A052714.P6502666716050774232

`(8*n-12)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A052714.P6502666716050774232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((8 * n : ℤ) - 12) * a (n - 1)

end

end A052714.P6502666716050774232

namespace A052714

/-- `(8*n-12)*a(n-1)` -/
def P6502666716050774232.Spec : Prop :=
  ∀ n, P6502666716050774232.a n = A052714 n

end A052714

/-! ## A052714.P606602715656667357

`floor(abs(∏[a(n-1)-8])/4)` with `a(0)=1, a(1)=4`
-/

namespace A052714.P606602715656667357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((|∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / 4⌋

end

end A052714.P606602715656667357

namespace A052714

/-- `floor(abs(∏[a(n-1)-8])/4)` -/
def P606602715656667357.Spec : Prop :=
  ∀ n, P606602715656667357.a n = A052714 n

end A052714

/-! ## A052714.P10631797633261811640

`round(abs(∏[a(n-1)-8])/4)` with `a(0)=1, a(1)=4`
-/

namespace A052714.P10631797633261811640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((|∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / 4)

end

end A052714.P10631797633261811640

namespace A052714

/-- `round(abs(∏[a(n-1)-8])/4)` -/
def P10631797633261811640.Spec : Prop :=
  ∀ n, P10631797633261811640.a n = A052714 n

end A052714

/-! ## A052714.P14357561459945608185

`A052713(n)/2`
-/

namespace A052714.P14357561459945608185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052713 n : ℚ) / 2

end

end A052714.P14357561459945608185

namespace A052714

/-- `A052713(n)/2` -/
def P14357561459945608185.Spec : Prop :=
  ∀ n, P14357561459945608185.a n = (A052714 n : ℚ)

end A052714

/-!
# A052715: Expansion of e.g.f. (1-2*x-sqrt(1-4*x))/2 - x*(1-2*x-sqrt(1-4*x)) - x^2.

The programs for A052715, there is no canonical definition to state claims against.
-/

/-! ## A052715.P3108268034168420118

`A052721(n+1)/(n+1)`
-/

namespace A052715.P3108268034168420118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052721 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052715.P3108268034168420118

/-! ## A052715.P642853989409271119

`A052741(n)+A052722(n)`
-/

namespace A052715.P642853989409271119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052741 n + A052722 n

end

end A052715.P642853989409271119

/-! ## A052715.P10964947643687558639

`A052719(n)-A052711(n)`
-/

namespace A052715.P10964947643687558639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052719 n - A052711 n

end

end A052715.P10964947643687558639

/-! ## A052715.P522401622961754098

`A052721(n)+A052732(n)+A052722(n)`
-/

namespace A052715.P522401622961754098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052721 n + (A052732 n + A052722 n)

end

end A052715.P522401622961754098

/-! ## A052715.P12418875021110259433

`A052711(n)+A052722(n)-A052733(n)`
-/

namespace A052715.P12418875021110259433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052711 n + (A052722 n - A052733 n)

end

end A052715.P12418875021110259433

/-! ## A052715.P8154645912136902733

`A052719(n)-(A052741(n)+A052733(n))`
-/

namespace A052715.P8154645912136902733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052719 n - (A052741 n + A052733 n)

end

end A052715.P8154645912136902733

/-!
# A052716: Expansion of e.g.f. (x + 1 - sqrt(1-6*x+x^2))/2.

The programs for A052716, there is no canonical definition to state claims against.
-/

/-! ## A052716.P5678766242370474717

`lcm(n, A000142(n)*A085403(n))`
-/

namespace A052716.P5678766242370474717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000142 n * A085403 n)

end

end A052716.P5678766242370474717

/-! ## A052716.P14263949098257647478

`A000142(n)*A172040(A000124(n))`
-/

namespace A052716.P14263949098257647478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A172040 (A000124 n).toNat

end

end A052716.P14263949098257647478

/-! ## A052716.P3879194372170943693

`A106262(∑[n])-A000142(n)*A085403(n)`
-/

namespace A052716.P3879194372170943693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106262 (∑ j ∈ Finset.range (n + 1), f1 j) - A000142 n * A085403 n

end

end A052716.P3879194372170943693

/-! ## A052716.P7839257110879858045

`A010815(A152773(n))-A000142(n)*A085403(n)`
-/

namespace A052716.P7839257110879858045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A152773 n).toNat - A000142 n * A085403 n

end

end A052716.P7839257110879858045

/-! ## A052716.P11321703929567931478

`A297115(A093036(n+1))-A000142(n)*A085403(n)`
-/

namespace A052716.P11321703929567931478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297115 (A093036 (n + 1)).toNat - A000142 n * A085403 n

end

end A052716.P11321703929567931478

/-!
# A052717: Expansion of e.g.f. x*(1 - sqrt(1 - 4*x))/2.

The programs for A052717, there is no canonical definition to state claims against.
-/

/-! ## A052717.P5910924096804268492

`A052711(n)+A052686(n)%3`
-/

namespace A052717.P5910924096804268492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052711 n + Int.tmod (A052686 n) 3

end

end A052717.P5910924096804268492

/-! ## A052717.P6315246753581068763

`A052711(n)+A000038(A026536(n))`
-/

namespace A052717.P6315246753581068763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052711 n + A000038 (A026536 n).toNat

end

end A052717.P6315246753581068763

/-! ## A052717.P405300904551956279

`A000142(n)*A050144(A161680(n))`
-/

namespace A052717.P405300904551956279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A050144 (A161680 n).toNat

end

end A052717.P405300904551956279

/-! ## A052717.P15715961080468518076

`A000142(n)*A247495(A238531(n))`
-/

namespace A052717.P15715961080468518076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A247495 (A238531 n).toNat

end

end A052717.P15715961080468518076

/-! ## A052717.P11271876534118352442

`A052733(n+1)/(n+1)`
-/

namespace A052717.P11271876534118352442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052733 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052717.P11271876534118352442

/-!
# A052718: Expansion of e.g.f. 1 - x - sqrt(1-4*x).

The programs for A052718, there is no canonical definition to state claims against.
-/

/-! ## A052718.P12812547748612065783

`lcm((3-2*n)*a(n-1), 2^n)` with `a(0)=0, a(1)=1`
-/

namespace A052718.P12812547748612065783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lcm ((3 - (2 * n : ℤ)) * (a (n - 1) : ℤ)) (2 ^ n : ℤ)

end

end A052718.P12812547748612065783

/-! ## A052718.P14981615301098760098

`(2*n-3)*4*a(n-1)/2` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A052718.P14981615301098760098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  ((2 * n : ℤ) - 3 : ℚ) * (4 * a (n - 1)) / 2

end

end A052718.P14981615301098760098

/-! ## A052718.P3087609304945386163

`2*a(n-1)*A004274(n)` with `a(0)=0, a(1)=1`
-/

namespace A052718.P3087609304945386163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) * A004274 n

end

end A052718.P3087609304945386163

/-! ## A052718.P6664699714483962328

`record[a(n-2)*A266593(n+1)]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A052718.P6664699714483962328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  f1 (n - 2) * A266593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052718.P6664699714483962328

/-! ## A052718.P12849630917374103434

`A052737(n)/A000079(A004275(n))`
-/

namespace A052718.P12849630917374103434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052737 n : ℚ) / (A000079 (A004275 n).toNat : ℚ)

end

end A052718.P12849630917374103434

/-!
# A052719: Expansion of e.g.f. (1 - 2*x*sqrt(1-4*x))*(1 - sqrt(1-4*x))/4.

The programs for A052719, there is no canonical definition to state claims against.
-/

/-! ## A052719.P15285184121447818405

`A052741(n+1)/(n+1)`
-/

namespace A052719.P15285184121447818405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052741 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052719.P15285184121447818405

/-! ## A052719.P7234565496605729021

`A052715(n)+A052711(n)`
-/

namespace A052719.P7234565496605729021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052715 n + A052711 n

end

end A052719.P7234565496605729021

/-! ## A052719.P11554622977355221813

`A000142(n)*A000245(A289207(n))`
-/

namespace A052719.P11554622977355221813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000245 (A289207 n).toNat

end

end A052719.P11554622977355221813

/-! ## A052719.P12043727377763396261

`(A071727(n)-A000108(n+1))*A000142(n)`
-/

namespace A052719.P12043727377763396261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071727 n - A000108 (n + 1)) * A000142 n

end

end A052719.P12043727377763396261

/-!
# A052720: Expansion of e.g.f.: (1 - 4*x + 3*x^2)*(1 - 2*x - sqrt(1-4*x))/2 - x^2 + 2*x^3.

The programs for A052720, there is no canonical definition to state claims against.
-/

/-! ## A052720.P9720642606324360525

`A052722(n)-A052721(n)`
-/

namespace A052720.P9720642606324360525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052722 n - A052721 n

end

end A052720.P9720642606324360525

/-! ## A052720.P389747799904672057

`A052722(n)+A052732(n)-A052741(n)`
-/

namespace A052720.P389747799904672057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052722 n + (A052732 n - A052741 n)

end

end A052720.P389747799904672057

/-! ## A052720.P17162762556540715605

`A052715(n)-(A052741(n)+A052721(n))`
-/

namespace A052720.P17162762556540715605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052715 n - (A052741 n + A052721 n)

end

end A052720.P17162762556540715605

/-! ## A052720.P809426529681194736

`A052715(n)-(A052732(n)+A052721(n))-A052721(n)`
-/

namespace A052720.P809426529681194736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052715 n - (A052732 n + A052721 n) - A052721 n

end

end A052720.P809426529681194736

/-! ## A052720.P11697754716380580636

`A052715(n)+A052733(n)-A052711(n)-A052721(n)`
-/

namespace A052720.P11697754716380580636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052715 n + (A052733 n - A052711 n) - A052721 n

end

end A052720.P11697754716380580636

/-!
# A052721: Expansion of e.g.f. x*(1-2*x)*(1 - 2*x - sqrt(1-4*x))/2 - x^3.

The programs for A052721, there is no canonical definition to state claims against.
-/

/-! ## A052721.P6941291101763136193

`A052722(n)-A052720(n)`
-/

namespace A052721.P6941291101763136193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052722 n - A052720 n

end

end A052721.P6941291101763136193

/-! ## A052721.P6889401118749508781

`A052741(n)-A052732(n)`
-/

namespace A052721.P6889401118749508781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052741 n - A052732 n

end

end A052721.P6889401118749508781

/-! ## A052721.P2520148222293574183

`A052711(n)-(A052733(n)+A052732(n))`
-/

namespace A052721.P2520148222293574183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052711 n - (A052733 n + A052732 n)

end

end A052721.P2520148222293574183

/-! ## A052721.P704598444416127652

`A052741(n)+A052732(n)*A260196(n)`
-/

namespace A052721.P704598444416127652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052741 n + A052732 n * A260196 n

end

end A052721.P704598444416127652

/-! ## A052721.P5220862577904543074

`A052741(n)+A052732(n)/A260196(n+2)`
-/

namespace A052721.P5220862577904543074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052741 n : ℚ) + (A052732 n : ℚ) / (A260196 (n + 2) : ℚ)

end

end A052721.P5220862577904543074

/-! ## A052721.P3085913512134138353

`A052715(n)-(A052732(n)+A052722(n))`
-/

namespace A052721.P3085913512134138353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052715 n - (A052732 n + A052722 n)

end

end A052721.P3085913512134138353

/-!
# A052722: Expansion of e.g.f. (1 - 2*x - sqrt(1-4*x))^2 * (1 - sqrt(1-4*x))/8.

The programs for A052722, there is no canonical definition to state claims against.
-/

/-! ## A052722.P10576634943053345959

`A052721(n)+A052720(n)`
-/

namespace A052722.P10576634943053345959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052721 n + A052720 n

end

end A052722.P10576634943053345959

/-! ## A052722.P5148947662152173681

`A052720(n)+A052741(n)-A052732(n)`
-/

namespace A052722.P5148947662152173681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052720 n + (A052741 n - A052732 n)

end

end A052722.P5148947662152173681

/-! ## A052722.P14680680745520699001

`A052715(n)-A052741(n)`
-/

namespace A052722.P14680680745520699001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052715 n - A052741 n

end

end A052722.P14680680745520699001

/-! ## A052722.P11385553084095663918

`A052715(n)-(A052732(n)+A052721(n))`
-/

namespace A052722.P11385553084095663918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052715 n - (A052732 n + A052721 n)

end

end A052722.P11385553084095663918

/-! ## A052722.P14070140740147824273

`A052715(n)+A052733(n)-A052711(n)`
-/

namespace A052722.P14070140740147824273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052715 n + (A052733 n - A052711 n)

end

end A052722.P14070140740147824273

/-!
# A052723: Expansion of e.g.f. (1 - x - sqrt(1-2*x+x^2-4*x^3))/(2*x).

The programs for A052723, there is no canonical definition to state claims against.
-/

/-! ## A052723.P16917652653043359109

`n*A052743(abs(1-n))`
-/

namespace A052723.P16917652653043359109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052743 |1 - (n : ℤ)|.toNat

end

end A052723.P16917652653043359109

/-! ## A052723.P16631202484445554867

`lcm(n, A000142(n)*A025246(n+1))`
-/

namespace A052723.P16631202484445554867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000142 n * A025246 (n + 1))

end

end A052723.P16631202484445554867

/-! ## A052723.P15462780936774700001

`(A025246(n+1)-A151935(n))*A000142(n)`
-/

namespace A052723.P15462780936774700001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025246 (n + 1) - A151935 n) * A000142 n

end

end A052723.P15462780936774700001

/-! ## A052723.P839535574187179906

`A025246(n+1)%A003080(n)*A000142(n)`
-/

namespace A052723.P839535574187179906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025246 (n + 1)) (A003080 n) * A000142 n

end

end A052723.P839535574187179906

/-! ## A052723.P5955836851398734718

`char[A160232(n+1)]*A025246(n+1)*A000142(n)`
-/

namespace A052723.P5955836851398734718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025246 (n + 1) * A000142 n

end

end A052723.P5955836851398734718

/-!
# A052724: A simple context-free grammar in a labeled universe: a(n) = A052743(n)-A052723(n), n>1.

The programs for A052724, there is no canonical definition to state claims against.
-/

/-! ## A052724.P10552562540923377883

`n!*A052702(n)`
-/

namespace A052724.P10552562540923377883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052702 n

end

end A052724.P10552562540923377883

/-! ## A052724.P15463278961987334978

`A000142(n)*A052702(n)`
-/

namespace A052724.P15463278961987334978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052702 n

end

end A052724.P15463278961987334978

/-! ## A052724.P4266275215688827204

`∏[A028310(n)]*A052702(n)`
-/

namespace A052724.P4266275215688827204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052702 n

end

end A052724.P4266275215688827204

/-! ## A052724.P395582942833882485

`record[A047916(n+1)]*A052702(n)`
-/

namespace A052724.P395582942833882485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A052702 n

end

end A052724.P395582942833882485

/-! ## A052724.P2918376991474776503

`A047920(A000217(n))*A052702(n)`
-/

namespace A052724.P2918376991474776503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000217 n).toNat * A052702 n

end

end A052724.P2918376991474776503

/-!
# A052725: A simple context-free grammar in a labeled universe: labeled version of A052710.

The programs for A052725, there is no canonical definition to state claims against.
-/

/-! ## A052725.P3923002703272181812

`n!*A052710(n)`
-/

namespace A052725.P3923002703272181812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052710 n

end

end A052725.P3923002703272181812

/-! ## A052725.P6131401707842247915

`A000142(n)*A052710(n)`
-/

namespace A052725.P6131401707842247915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052710 n

end

end A052725.P6131401707842247915

/-! ## A052725.P11328643624149542404

`A052686(n)*A052710(n)`
-/

namespace A052725.P11328643624149542404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052686 n * A052710 n

end

end A052725.P11328643624149542404

/-! ## A052725.P16183611986330855252

`∏[A028310(n)]*A052710(n)`
-/

namespace A052725.P16183611986330855252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052710 n

end

end A052725.P16183611986330855252

/-! ## A052725.P10321053067475684006

`A052695(n)%A052694(n)*A052710(n)`
-/

namespace A052725.P10321053067475684006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052695 n) (A052694 n) * A052710 n

end

end A052725.P10321053067475684006

/-! ## A052725.P3053079846959215219

`(A052740(n)-A052738(n))%A052750(n)`
-/

namespace A052725.P3053079846959215219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052740 n - A052738 n) (A052750 n)

end

end A052725.P3053079846959215219

/-!
# A052726: E.g.f. (1-sqrt(1-4*x-4*x^2))/ (2*(1+x)).

The programs for A052726, there is no canonical definition to state claims against.
-/

/-! ## A052726.P3089631758560975748

`n!*A052709(n)`
-/

namespace A052726.P3089631758560975748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052709 n

end

end A052726.P3089631758560975748

/-! ## A052726.P11092593496576019595

`A000142(n)*A052709(n)`
-/

namespace A052726.P11092593496576019595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052709 n

end

end A052726.P11092593496576019595

/-! ## A052726.P4049204372684109961

`∏[A028310(n)]*A052709(n)`
-/

namespace A052726.P4049204372684109961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052709 n

end

end A052726.P4049204372684109961

/-! ## A052726.P9386195560330368559

`A238578(n)%A100238(n)*n!`
-/

namespace A052726.P9386195560330368559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238578 n) (A100238 n) * (Nat.factorial n : ℤ)

end

end A052726.P9386195560330368559

/-! ## A052726.P5830246239323162381

`A052709(n)*A218017(A000096(n))`
-/

namespace A052726.P5830246239323162381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052709 n * A218017 (A000096 n).toNat

end

end A052726.P5830246239323162381

/-! ## A052726.P18360478425907581027

`A052709(n)*A271703(A000124(n))`
-/

namespace A052726.P18360478425907581027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052709 n * A271703 (A000124 n).toNat

end

end A052726.P18360478425907581027

/-! ## A052726.P15168934037815959449

`A052727(n)-n*a(n-1)` with `a(0)=0`
-/

namespace A052726.P15168934037815959449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052727 n - (n : ℤ) * a (n - 1)

end

end A052726.P15168934037815959449

/-!
# A052727: Expansion of e.g.f. 1/2-1/2*(1-4*x-4*x^2)^(1/2).

The programs for A052727, there is no canonical definition to state claims against.
-/

/-! ## A052727.P4253546507583998284

`n!*A025227(n)`
-/

namespace A052727.P4253546507583998284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A025227 n

end

end A052727.P4253546507583998284

/-! ## A052727.P340145313249156015

`A000142(n)*A025227(n)`
-/

namespace A052727.P340145313249156015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A025227 n

end

end A052727.P340145313249156015

/-! ## A052727.P9281592188896668266

`A011782(n)*A182037(n)`
-/

namespace A052727.P9281592188896668266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A182037 n

end

end A052727.P9281592188896668266

/-! ## A052727.P8557313773026473753

`∏[A028310(n)]*A025227(n)`
-/

namespace A052727.P8557313773026473753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A025227 n

end

end A052727.P8557313773026473753

/-! ## A052727.P17510888652653662327

`A179190(n)/A006139(n)*A179191(n)*n!`
-/

namespace A052727.P17510888652653662327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179190 n : ℚ) / (A006139 n : ℚ) * (A179191 n : ℚ) * (Nat.factorial n : ℚ)

end

end A052727.P17510888652653662327

/-!
# A052728: A simple context-free grammar in a labeled universe: labeled version of A052705.

The programs for A052728, there is no canonical definition to state claims against.
-/

/-! ## A052728.P7992999568235782211

`n!*A052705(n)`
-/

namespace A052728.P7992999568235782211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052705 n

end

end A052728.P7992999568235782211

/-! ## A052728.P7020626122853538761

`A000142(n)*A052705(n)`
-/

namespace A052728.P7020626122853538761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052705 n

end

end A052728.P7020626122853538761

/-! ## A052728.P4074110515671499455

`∏[A028310(n)]*A052705(n)`
-/

namespace A052728.P4074110515671499455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052705 n

end

end A052728.P4074110515671499455

/-! ## A052728.P9388814931184390880

`A052686(n)%A052687(n)*A052705(n)`
-/

namespace A052728.P9388814931184390880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052686 n) (A052687 n) * A052705 n

end

end A052728.P9388814931184390880

/-! ## A052728.P3967082318208171069

`A052744(n+1)/(n+1)`
-/

namespace A052728.P3967082318208171069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052744 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052728.P3967082318208171069

/-!
# A052729: A simple context-free grammar in a labeled universe: labeled version of A052706.

The programs for A052729, there is no canonical definition to state claims against.
-/

/-! ## A052729.P15970623692899125779

`n!*A052706(n)`
-/

namespace A052729.P15970623692899125779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052706 n

end

end A052729.P15970623692899125779

/-! ## A052729.P3995501184614747385

`A000142(n)*A052706(n)`
-/

namespace A052729.P3995501184614747385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052706 n

end

end A052729.P3995501184614747385

/-! ## A052729.P12483255085467900938

`∏[A028310(n)]*A052706(n)`
-/

namespace A052729.P12483255085467900938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052706 n

end

end A052729.P12483255085467900938

/-! ## A052729.P11230098931930689300

`∏[gcd(n, A003418(n))]*A052706(n)`
-/

namespace A052729.P11230098931930689300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A003418 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A052706 n

end

end A052729.P11230098931930689300

/-! ## A052729.P11645775969340707956

`A052686(n)%A052687(n)*A052706(n)`
-/

namespace A052729.P11645775969340707956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052686 n) (A052687 n) * A052706 n

end

end A052729.P11645775969340707956

/-! ## A052729.P17112939547375182308

`gcd(A052691(n), A052699(n))*A052706(n)`
-/

namespace A052729.P17112939547375182308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A052691 n) (A052699 n) : ℤ) * A052706 n

end

end A052729.P17112939547375182308

/-!
# A052730: A simple context-free grammar in a labeled universe: labeled version of A052703.

The programs for A052730, there is no canonical definition to state claims against.
-/

/-! ## A052730.P14931701042825596121

`n!*A052703(n)`
-/

namespace A052730.P14931701042825596121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052703 n

end

end A052730.P14931701042825596121

/-! ## A052730.P18230763910744729596

`A000142(n)*A052703(n)`
-/

namespace A052730.P18230763910744729596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052703 n

end

end A052730.P18230763910744729596

/-! ## A052730.P6804520384594949610

`∏[A028310(n)]*A052703(n)`
-/

namespace A052730.P6804520384594949610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052703 n

end

end A052730.P6804520384594949610

/-! ## A052730.P2251424550073358882

`A052686(n)%A052687(n)*A052703(n)`
-/

namespace A052730.P2251424550073358882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052686 n) (A052687 n) * A052703 n

end

end A052730.P2251424550073358882

/-! ## A052730.P2934461083358189168

`gcd(A052691(n), A052699(n))*A052703(n)`
-/

namespace A052730.P2934461083358189168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A052691 n) (A052699 n) : ℤ) * A052703 n

end

end A052730.P2934461083358189168

/-!
# A052731: E.g.f. [1-x -sqrt(1-2x-3x^2)]/(2x) - [1+x-sqrt(1-2x-3x^2)]/2 .

The programs for A052731, there is no canonical definition to state claims against.
-/

/-! ## A052731.P10552576962225072771

`Δ[abs(A292440(n))]*A000142(n)`
-/

namespace A052731.P10552576962225072771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292440 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052731.P10552576962225072771

/-! ## A052731.P9825831007492716379

`A000142(n)*A105695(A028310(n))`
-/

namespace A052731.P9825831007492716379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A105695 (A028310 n).toNat

end

end A052731.P9825831007492716379

/-! ## A052731.P6273157131080206047

`A000142(n)*A002026(A289207(n))`
-/

namespace A052731.P6273157131080206047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002026 (A289207 n).toNat

end

end A052731.P6273157131080206047

/-! ## A052731.P14273103062737168561

`A000142(n)*A105695(A233583(n+1))`
-/

namespace A052731.P14273103062737168561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A105695 (A233583 (n + 1)).toNat

end

end A052731.P14273103062737168561

/-! ## A052731.P9622277306655434475

`∏[A028310(n)]*A105695(A137734(n²))`
-/

namespace A052731.P9622277306655434475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A105695 (A137734 (n ^ 2)).toNat

end

end A052731.P9622277306655434475

/-!
# A052732: E.g.f.: (1-2x-sqrt(1-4*x))*x^2/2.

The programs for A052732, there is no canonical definition to state claims against.
-/

/-! ## A052732.P9490835591682579659

`and(-7, A052733(n))`
-/

namespace A052732.P9490835591682579659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-7) (A052733 n)

end

end A052732.P9490835591682579659

/-! ## A052732.P9643172703034284330

`A052733(n-char[3])`
-/

namespace A052732.P9643172703034284330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052733 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A052732.P9643172703034284330

/-! ## A052732.P15729290190468225252

`A052741(n)-A052721(n)`
-/

namespace A052732.P15729290190468225252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052741 n - A052721 n

end

end A052732.P15729290190468225252

/-! ## A052732.P16812638174132830163

`lcm(A052733(n), A052759(n))`
-/

namespace A052732.P16812638174132830163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052733 n) (A052759 n)

end

end A052732.P16812638174132830163

/-! ## A052732.P17885512514879845249

`n*A052711(A134478(C(n, 2)))`
-/

namespace A052732.P17885512514879845249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052711 (A134478 (Nat.choose n 2)).toNat

end

end A052732.P17885512514879845249

/-! ## A052732.P9157094360341160888

`A052711(n)-(A052733(n)+A052721(n))`
-/

namespace A052732.P9157094360341160888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052711 n - (A052733 n + A052721 n)

end

end A052732.P9157094360341160888

/-! ## A052732.P14512777671837627872

`A052733(n)%or(A000009(n), A052733(n))`
-/

namespace A052732.P14512777671837627872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052733 n) (Int.lor (A000009 n) (A052733 n))

end

end A052732.P14512777671837627872

/-! ## A052732.P10717963115624838741

`A052733(n)%(A052725(n)+1)`
-/

namespace A052732.P10717963115624838741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052733 n) (A052725 n + 1)

end

end A052732.P10717963115624838741

/-!
# A052733: E.g.f.: x^2*(1-sqrt(1-4*x))/2.

The programs for A052733, there is no canonical definition to state claims against.
-/

/-! ## A052733.P16541120575481515307

`A052711(n)-A052741(n)`
-/

namespace A052733.P16541120575481515307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052711 n - A052741 n

end

end A052733.P16541120575481515307

/-! ## A052733.P1753540593053005341

`A052732(n)+A052731(n)%8`
-/

namespace A052733.P1753540593053005341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052732 n + Int.tmod (A052731 n) 8

end

end A052733.P1753540593053005341

/-! ## A052733.P12859644986020078098

`A052732(n)+A004016(A319048(n+1))`
-/

namespace A052733.P12859644986020078098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052732 n + A004016 (A319048 (n + 1)).toNat

end

end A052733.P12859644986020078098

/-! ## A052733.P2068836101652814843

`A052711(n)-(A052732(n)+A052721(n))`
-/

namespace A052733.P2068836101652814843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052711 n - (A052732 n + A052721 n)

end

end A052733.P2068836101652814843

/-! ## A052733.P5396414602906708087

`A052732(n)+and(6, A052719(n))`
-/

namespace A052733.P5396414602906708087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052732 n + Int.land 6 (A052719 n)

end

end A052733.P5396414602906708087

/-! ## A052733.P12744478217415505805

`A052711(n)+A052722(n)-A052715(n)`
-/

namespace A052733.P12744478217415505805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052711 n + (A052722 n - A052715 n)

end

end A052733.P12744478217415505805

/-!
# A052734: a(n) = 4^(n-1) * n! * Catalan(n-1) for n > 0, with a(0) = 0.

The programs for A052734, there is no canonical definition to state claims against.
-/

/-! ## A052734.P11293041270572699363

`2*(2*n-3)*4*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A052734.P11293041270572699363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (((2 * n : ℤ) - 3) * (4 * a (n - 1)))

end

end A052734.P11293041270572699363

/-! ## A052734.P16032677590551248254

`A052737(n)/2`
-/

namespace A052734.P16032677590551248254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052737 n : ℚ) / 2

end

end A052734.P16032677590551248254

/-! ## A052734.P3380685866173670009

`n!*A052704(n)`
-/

namespace A052734.P3380685866173670009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052704 n

end

end A052734.P3380685866173670009

/-! ## A052734.P16269725406280530419

`A052707(n)/2*n!`
-/

namespace A052734.P16269725406280530419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052707 n : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A052734.P16269725406280530419

/-! ## A052734.P17863638302481284573

`A000142(n)*A052704(n)`
-/

namespace A052734.P17863638302481284573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052704 n

end

end A052734.P17863638302481284573

/-!
# A052735: E.g.f. (1-x -sqrt(1-2*x-3*x^2) )/2.

The programs for A052735, there is no canonical definition to state claims against.
-/

/-! ## A052735.P15830173372980004817

`A126068(n)/2*n!`
-/

namespace A052735.P15830173372980004817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126068 n : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A052735.P15830173372980004817

/-! ## A052735.P3393674430819245810

`n!*A168049(round(sqrt(n²+1)))`
-/

namespace A052735.P3393674430819245810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A168049 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A052735.P3393674430819245810

/-! ## A052735.P10045628948263107616

`A000142(n)/2*A126068(n)`
-/

namespace A052735.P10045628948263107616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / 2 * (A126068 n : ℚ)

end

end A052735.P10045628948263107616

/-! ## A052735.P17149923717334798202

`∏[A028310(n)]/2*A126068(n)`
-/

namespace A052735.P17149923717334798202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 * (A126068 n : ℚ)

end

end A052735.P17149923717334798202

/-! ## A052735.P2364976647413657689

`record[A136572(n+1)]*A168049(n)`
-/

namespace A052735.P2364976647413657689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A168049 n

end

end A052735.P2364976647413657689

/-! ## A052735.P7916974120945129144

`A000142(n)*A168049(A028310(n))`
-/

namespace A052735.P7916974120945129144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A168049 (A028310 n).toNat

end

end A052735.P7916974120945129144

/-!
# A052736: E.g.f. [1 -3x -sqrt(1-6x+x^2) -x*(1-x-sqrt(1-6x+x^2)) ]/2.

The programs for A052736, there is no canonical definition to state claims against.
-/

/-! ## A052736.P9098820885805423185

`n!*A122538(A133263(n))`
-/

namespace A052736.P9098820885805423185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A122538 (A133263 n).toNat

end

end A052736.P9098820885805423185

/-! ## A052736.P8497884649998996272

`n!*Δ[A006318(A289207(n))]`
-/

namespace A052736.P8497884649998996272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052736.P8497884649998996272

/-! ## A052736.P15046091279576017740

`n!*Δ[A155069(log2(A011782(n)))]`
-/

namespace A052736.P15046091279576017740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052736.P15046091279576017740

/-! ## A052736.P11864050518147544113

`A000142(n)*A122538(A133263(n))`
-/

namespace A052736.P11864050518147544113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A122538 (A133263 n).toNat

end

end A052736.P11864050518147544113

/-! ## A052736.P5344821519767397951

`Δ[A006318(A289207(n))]*A000142(n)`
-/

namespace A052736.P5344821519767397951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052736.P5344821519767397951

/-!
# A052737: a(n) = ((2*n)!/n!)*2^(2*n+1).

The programs for A052737, there is no canonical definition to state claims against.
-/

/-! ## A052737.P8261259123845540065

`2*A052734(n)`
-/

namespace A052737.P8261259123845540065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052734 n

end

end A052737.P8261259123845540065

/-! ## A052737.P5461747203872736161

`n!*A052707(n)`
-/

namespace A052737.P5461747203872736161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052707 n

end

end A052737.P5461747203872736161

/-! ## A052737.P10137479724425795263

`2*(2*n-3)*4*a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A052737.P10137479724425795263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * (((2 * n : ℤ) - 3) * (4 * a (n - 1)))

end

end A052737.P10137479724425795263

/-! ## A052737.P13083112183375447743

`2^n*A052714(n)`
-/

namespace A052737.P13083112183375447743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A052714 n

end

end A052737.P13083112183375447743

/-! ## A052737.P8487538865160328094

`2*n!*A052704(n)`
-/

namespace A052737.P8487538865160328094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.factorial n : ℤ) * A052704 n)

end

end A052737.P8487538865160328094

/-!
# A052738: A simple context-free grammar in a labeled universe: labeled version of A052708.

The programs for A052738, there is no canonical definition to state claims against.
-/

/-! ## A052738.P14657193044496994990

`n!*A052708(n)`
-/

namespace A052738.P14657193044496994990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052708 n

end

end A052738.P14657193044496994990

/-! ## A052738.P4624149070052661944

`A000142(n)*A052708(n)`
-/

namespace A052738.P4624149070052661944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052708 n

end

end A052738.P4624149070052661944

/-! ## A052738.P12068512412386908061

`A052708(n)*A130534(∑[n])`
-/

namespace A052738.P12068512412386908061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052708 n * A130534 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052738.P12068512412386908061

/-! ## A052738.P6390756014389809190

`∏[A028310(n)]*A052708(n)`
-/

namespace A052738.P6390756014389809190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052708 n

end

end A052738.P6390756014389809190

/-! ## A052738.P8639137789751596384

`∏[A000007(n)+n]*A052708(n)`
-/

namespace A052738.P8639137789751596384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052708 n

end

end A052738.P8639137789751596384

/-! ## A052738.P14834130249308116913

`A052686(n)%A052687(n)*A052708(n)`
-/

namespace A052738.P14834130249308116913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052686 n) (A052687 n) * A052708 n

end

end A052738.P14834130249308116913

/-! ## A052738.P5549988166179463349

`gcd(A052691(n), A052699(n))*A052708(n)`
-/

namespace A052738.P5549988166179463349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A052691 n) (A052699 n) : ℤ) * A052708 n

end

end A052738.P5549988166179463349

/-!
# A052739: E.g.f. (1-sqrt(1-4x-4x^2))/2 -x*(1+x).

The programs for A052739, there is no canonical definition to state claims against.
-/

/-! ## A052739.P14130466560699463997

`A052727(n)-and(3, A052740(n))`
-/

namespace A052739.P14130466560699463997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052727 n - Int.land 3 (A052740 n)

end

end A052739.P14130466560699463997

/-! ## A052739.P15094706549309511802

`n!*A025227(n)-A105700(n²+n)`
-/

namespace A052739.P15094706549309511802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A025227 n - A105700 (n ^ 2 + n)

end

end A052739.P15094706549309511802

/-! ## A052739.P15251381980050808897

`A052727(n)-A105700(A002378(n))`
-/

namespace A052739.P15251381980050808897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052727 n - A105700 (A002378 n).toNat

end

end A052739.P15251381980050808897

/-! ## A052739.P17182379342634414270

`A011782(n)*A182037(n)-A105700(n²+n)`
-/

namespace A052739.P17182379342634414270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A182037 n - A105700 (n ^ 2 + n)

end

end A052739.P17182379342634414270

/-! ## A052739.P17159493738164168802

`A052727(n)+and(3, A052740(n))*A174340(n+2)`
-/

namespace A052739.P17159493738164168802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052727 n + Int.land 3 (A052740 n) * A174340 (n + 2)

end

end A052739.P17159493738164168802

/-! ## A052739.P8059630931270001190

`A052727(n)-A105868(A000124(n))`
-/

namespace A052739.P8059630931270001190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052727 n - A105868 (A000124 n).toNat

end

end A052739.P8059630931270001190

/-!
# A052740: A simple context-free grammar in a labeled universe: labeled version of A049140.

The programs for A052740, there is no canonical definition to state claims against.
-/

/-! ## A052740.P9101173886816349500

`A005843((2*n-1)*a(n-1)-2*(n-1)*a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A052740.P9101173886816349500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A005843 (((2 * n : ℤ) - 1) * a (n - 1) - 2 * (((n : ℤ) - 1) * a (n - 2))).toNat

end

end A052740.P9101173886816349500

/-! ## A052740.P3730222834913354234

`(4*n*a(n-1)-2*n*(n-1)*a(n-2))%A096763(2*n+3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A052740.P3730222834913354234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Int.tmod (4 * ((n : ℤ) * a (n - 1)) - 2 * ((n : ℤ) * (((n : ℤ) - 1) * a (n - 2)))) (A096763 (2 * n + 3))

end

end A052740.P3730222834913354234

/-!
# A052741: A simple context-free grammar in a labeled universe: labeled version of A000245.

The programs for A052741, there is no canonical definition to state claims against.
-/

/-! ## A052741.P509999236124846344

`A052732(n)+A052721(n)`
-/

namespace A052741.P509999236124846344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052732 n + A052721 n

end

end A052741.P509999236124846344

/-! ## A052741.P1147642917257271882

`A052711(n)-A052733(n)`
-/

namespace A052741.P1147642917257271882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052711 n - A052733 n

end

end A052741.P1147642917257271882

/-! ## A052741.P10635917971358354172

`A052715(n)-A052722(n)`
-/

namespace A052741.P10635917971358354172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052715 n - A052722 n

end

end A052741.P10635917971358354172

/-! ## A052741.P14948453246141053308

`A052715(n)-(A052721(n)+A052720(n))`
-/

namespace A052741.P14948453246141053308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052715 n - (A052721 n + A052720 n)

end

end A052741.P14948453246141053308

/-! ## A052741.P15147582388091225153

`A052719(n)-(A052722(n)+A052711(n))`
-/

namespace A052741.P15147582388091225153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052719 n - (A052722 n + A052711 n)

end

end A052741.P15147582388091225153

/-!
# A052742: A simple context-free grammar in a labeled universe: labeled version of A006318.

The programs for A052742, there is no canonical definition to state claims against.
-/

/-! ## A052742.P2776006833725223863

`and(n!*A155069(log2(A011782(n))), -2)`
-/

namespace A052742.P2776006833725223863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Nat.factorial n : ℤ) * A155069 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat) (-2)

end

end A052742.P2776006833725223863

/-! ## A052742.P4054037104457012896

`A000142(n)*A106579(A212342(n))`
-/

namespace A052742.P4054037104457012896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A106579 (A212342 n).toNat

end

end A052742.P4054037104457012896

/-! ## A052742.P14441437550658194917

`A000142(n)*A122538(A152947(n+1))`
-/

namespace A052742.P14441437550658194917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A122538 (A152947 (n + 1)).toNat

end

end A052742.P14441437550658194917

/-! ## A052742.P16932055381719718223

`A059268(A152948(n+1))*A266758(n)`
-/

namespace A052742.P16932055381719718223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A152948 (n + 1)).toNat * A266758 n

end

end A052742.P16932055381719718223

/-! ## A052742.P18179885358103837790

`A266758(n)*A266794(A325893(n))`
-/

namespace A052742.P18179885358103837790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266758 n * A266794 (A325893 n).toNat

end

end A052742.P18179885358103837790

/-!
# A052743: E.g.f. ( 1-x-sqrt(1-2*x+x^2-4*x^3) )/(2*x^2).

The programs for A052743, there is no canonical definition to state claims against.
-/

/-! ## A052743.P17246187517797664496

`n!*A025246(n+2)`
-/

namespace A052743.P17246187517797664496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A025246 (n + 2)

end

end A052743.P17246187517797664496

/-! ## A052743.P389811007356829236

`A000142(n)*A025246(n+2)`
-/

namespace A052743.P389811007356829236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A025246 (n + 2)

end

end A052743.P389811007356829236

/-! ## A052743.P5677346665304836463

`A052723(n+1)/(n+1)`
-/

namespace A052743.P5677346665304836463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052723 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052743.P5677346665304836463

/-! ## A052743.P3928015170155519981

`A000142(n)*A008616(A103662(n))`
-/

namespace A052743.P3928015170155519981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A008616 (A103662 n).toNat

end

end A052743.P3928015170155519981

/-! ## A052743.P8112412369757328535

`∑{e}[5^n, #!]*A165190(A000079(n+1))`
-/

namespace A052743.P8112412369757328535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℤ) * A165190 (A000079 (n + 1)).toNat

end

end A052743.P8112412369757328535

/-!
# A052744: E.g.f. x*(1-2*x-2*x^2-sqrt(1-4*x-4*x^2))/ (2*(1+x)^2).

The programs for A052744, there is no canonical definition to state claims against.
-/

/-! ## A052744.P12898389338864266102

`n*A052728(abs(1-n))`
-/

namespace A052744.P12898389338864266102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052728 |1 - (n : ℤ)|.toNat

end

end A052744.P12898389338864266102

/-! ## A052744.P10413565306605732682

`n!*A268372(A268407(n))`
-/

namespace A052744.P10413565306605732682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A268372 (A268407 n).toNat

end

end A052744.P10413565306605732682

/-!
# A052745: Expansion of e.g.f. log(-1/(-1+x))^2*x.

The programs for A052745, there is no canonical definition to state claims against.
-/

/-! ## A052745.P14602856697795886566

`n*A052517(A028310(n)-1)`
-/

namespace A052745.P14602856697795886566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052517 (A028310 n - 1).toNat

end

end A052745.P14602856697795886566

/-! ## A052745.P9662998010443047814

`2*n*A000254(A289207(n))`
-/

namespace A052745.P9662998010443047814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A000254 (A289207 n).toNat)

end

end A052745.P9662998010443047814

/-! ## A052745.P7552419290535785815

`2*n*A132393(A238531(n))`
-/

namespace A052745.P7552419290535785815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A132393 (A238531 n).toNat)

end

end A052745.P7552419290535785815

/-! ## A052745.P13558010162109046205

`A000254(A289207(n))*A005843(n)`
-/

namespace A052745.P13558010162109046205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (A289207 n).toNat * A005843 n

end

end A052745.P13558010162109046205

/-! ## A052745.P15863731760479187826

`A004277(n)*A132393(A238531(n))`
-/

namespace A052745.P15863731760479187826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A132393 (A238531 n).toNat

end

end A052745.P15863731760479187826

/-! ## A052745.P13351087656353278282

`A005843(n)*A132393(A238531(n))`
-/

namespace A052745.P13351087656353278282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A132393 (A238531 n).toNat

end

end A052745.P13351087656353278282

/-! ## A052745.P3169501822255753463

`A052754(n+1)/(n+1)`
-/

namespace A052745.P3169501822255753463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052754 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052745.P3169501822255753463

/-! ## A052745.P3439485561630783568

`n*A225479(A238531(n))`
-/

namespace A052745.P3439485561630783568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A225479 (A238531 n).toNat

end

end A052745.P3439485561630783568

/-!
# A052746: a(0) = 0; a(n) = (2*n)^(n-1), n > 0.

The programs for A052746, there is no canonical definition to state claims against.
-/

/-! ## A052746.P2335201453882597372

`(2*n)^abs(1-n)`
-/

namespace A052746.P2335201453882597372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

end

end A052746.P2335201453882597372

/-! ## A052746.P7259291359126026596

`lcm(n, (2*n)^((n-1)%(n+1)))`
-/

namespace A052746.P7259291359126026596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((2 * n : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)))

end

end A052746.P7259291359126026596

/-! ## A052746.P5485351658300087165

`floor(gcd(2*n, (n+2)!)^(n-1))`
-/

namespace A052746.P5485351658300087165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd (2 * n) (Nat.factorial (n + 2)) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052746.P5485351658300087165

/-! ## A052746.P9783012501709449423

`floor((C(2, n+1)+2*n)^(n-1))`
-/

namespace A052746.P9783012501709449423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose 2 (n + 1) + 2 * n : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052746.P9783012501709449423

/-! ## A052746.P16164516741649837349

`ceil((2*n-C(2, n+1))^(n-1))`
-/

namespace A052746.P16164516741649837349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℤ) - (Nat.choose 2 (n + 1) : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A052746.P16164516741649837349

/-! ## A052746.P13099064625932817204

`round((C(3, n+2)+2*n)^(n-1))`
-/

namespace A052746.P13099064625932817204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose 3 (n + 2) + 2 * n : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A052746.P13099064625932817204

/-! ## A052746.P11125300567620090761

`floor((comp[Δ[lcm(2, n+1)]]+1)^(n-1))`
-/

namespace A052746.P11125300567620090761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052746.P11125300567620090761

/-! ## A052746.P5346563104337621491

`∑{d}[2*n, floor((2*n)^(#-(n+1)))]`
-/

namespace A052746.P5346563104337621491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(2 * n : ℚ) ^ ((d : ℤ) - (n + 1 : ℤ) : ℤ)⌋

end

end A052746.P5346563104337621491

/-! ## A052746.P4011646722035893985

`and(2, a(n-1))+(2*n)^(n-1)` with `a(0)=0`
-/

namespace A052746.P4011646722035893985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Int.land 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + (2 * n : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A052746.P4011646722035893985

/-! ## A052746.P5687355067225088081

`(2*n)^(n-1)-and(2, a(n-1))` with `a(0)=0`
-/

namespace A052746.P5687355067225088081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (Int.land 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A052746.P5687355067225088081

/-!
# A052747: a(0) = a(1) = a(2) = 0; a(n) = n!/(n-2) for n > 2.

The programs for A052747, there is no canonical definition to state claims against.
-/

/-! ## A052747.P12735123930574272172

`A052759(n+1)/(n+1)`
-/

namespace A052747.P12735123930574272172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052759 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052747.P12735123930574272172

/-! ## A052747.P15801657091106130045

`floor(n!/A004736(A166136(n+1)))`
-/

namespace A052747.P15801657091106130045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℚ) / (A004736 (A166136 (n + 1)).toNat : ℚ)⌋

end

end A052747.P15801657091106130045

/-! ## A052747.P8730145078105102682

`floor(A000142(n)/A004736(A166136(n+1)))`
-/

namespace A052747.P8730145078105102682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 n : ℚ) / (A004736 (A166136 (n + 1)).toNat : ℚ)⌋

end

end A052747.P8730145078105102682

/-! ## A052747.P14059549107712669197

`floor(A000142(n)/A193739(A152950(n+1)))`
-/

namespace A052747.P14059549107712669197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 n : ℚ) / (A193739 (A152950 (n + 1)).toNat : ℚ)⌋

end

end A052747.P14059549107712669197

/-! ## A052747.P2103724271952639874

`A052778(n+2)/∑[2*(n+1)]`
-/

namespace A052747.P2103724271952639874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052778 (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A052747.P2103724271952639874

/-!
# A052748: Expansion of e.g.f.: -(log(1-x))^3.

The programs for A052748, there is no canonical definition to state claims against.
-/

/-! ## A052748.P12838236853257291038

`A002262(A238531(n))*A028421(A238531(n))`
-/

namespace A052748.P12838236853257291038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A238531 n).toNat * A028421 (A238531 n).toNat

end

end A052748.P12838236853257291038

/-! ## A052748.P17065737913272971675

`A052758(n+1)/(n+1)`
-/

namespace A052748.P17065737913272971675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052758 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052748.P17065737913272971675

/-! ## A052748.P7027515167722049569

`A225479(A157928(n)+A133263(n))`
-/

namespace A052748.P7027515167722049569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225479 (A157928 n + A133263 n).toNat

end

end A052748.P7027515167722049569

/-! ## A052748.P198689347165542308

`A225479(A034856(n+1)-A004275(n))`
-/

namespace A052748.P198689347165542308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225479 (A034856 (n + 1) - A004275 n).toNat

end

end A052748.P198689347165542308

/-! ## A052748.P1020219290401504081

`A225479(A133263(n+1)-A233583(n+1))`
-/

namespace A052748.P1020219290401504081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225479 (A133263 (n + 1) - A233583 (n + 1)).toNat

end

end A052748.P1020219290401504081

/-!
# A052749: a(n) = 2*n * Stirling2(n-1,2).

The programs for A052749, the canonical program `A052749.P15589540490745618581` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052749 has offset 0).

The definition of A052749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052749.P15589540490745618581

`2*n*∑[floor(2^(n-3))]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052749

/-- `2*n*∑[floor(2^(n-3))]` -/
def P15589540490745618581.Spec : Prop :=
  ∀ n, P15589540490745618581.a n = A052749 n

theorem P15589540490745618581.correct : P15589540490745618581.Spec := by
  intro n
  simp only [A052749]

end A052749

/-! ## A052749.P9204796447887375207

`abs(n*∑[2*a(n-1)])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A052749.P9204796447887375207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052749.P9204796447887375207

namespace A052749

/-- `abs(n*∑[2*a(n-1)])` -/
def P9204796447887375207.Spec : Prop :=
  ∀ n, (P9204796447887375207.a n : ℤ) = A052749 n

end A052749

/-! ## A052749.P14464457501734607142

`floor(n*∑[2*a(n-1)])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A052749.P14464457501734607142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052749.P14464457501734607142

namespace A052749

/-- `floor(n*∑[2*a(n-1)])` -/
def P14464457501734607142.Spec : Prop :=
  ∀ n, (P14464457501734607142.a n : ℤ) = A052749 n

end A052749

/-! ## A052749.P15807025464665124833

`ceil(n*∑[2*a(n-1)])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A052749.P15807025464665124833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052749.P15807025464665124833

namespace A052749

/-- `ceil(n*∑[2*a(n-1)])` -/
def P15807025464665124833.Spec : Prop :=
  ∀ n, (P15807025464665124833.a n : ℤ) = A052749 n

end A052749

/-! ## A052749.P12869897734236504436

`round(n*∑[2*a(n-1)])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A052749.P12869897734236504436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052749.P12869897734236504436

namespace A052749

/-- `round(n*∑[2*a(n-1)])` -/
def P12869897734236504436.Spec : Prop :=
  ∀ n, (P12869897734236504436.a n : ℤ) = A052749 n

end A052749

/-! ## A052749.P6346858876991930478

`lcm(2, n*∑[2*a(n-1)])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A052749.P6346858876991930478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A052749.P6346858876991930478

namespace A052749

/-- `lcm(2, n*∑[2*a(n-1)])` -/
def P6346858876991930478.Spec : Prop :=
  ∀ n, (P6346858876991930478.a n : ℤ) = A052749 n

end A052749

/-! ## A052749.P8013857931345669973

`2*n*lcm(4, 2^n)/4-2*n`
-/

namespace A052749.P8013857931345669973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((Nat.lcm 4 (2 ^ n) : ℚ) / 4) - (2 * n : ℚ)

end

end A052749.P8013857931345669973

namespace A052749

/-- `2*n*lcm(4, 2^n)/4-2*n` -/
def P8013857931345669973.Spec : Prop :=
  ∀ n, P8013857931345669973.a n = (A052749 n : ℚ)

end A052749

/-! ## A052749.P3872108991832869784

`2*n*2^floor(n-atan(n))-2*n`
-/

namespace A052749.P3872108991832869784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * (2 : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ) - (2 * n : ℚ)

end

end A052749.P3872108991832869784

namespace A052749

/-- `2*n*2^floor(n-atan(n))-2*n` -/
def P3872108991832869784.Spec : Prop :=
  ∀ n, P3872108991832869784.a n = (A052749 n : ℚ)

end A052749

/-! ## A052749.P14779823750821251908

`char[1]-n*A122958(n)`
-/

namespace A052749.P14779823750821251908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ) * A122958 n

end

end A052749.P14779823750821251908

namespace A052749

/-- `char[1]-n*A122958(n)` -/
def P14779823750821251908.Spec : Prop :=
  ∀ n, P14779823750821251908.a n = A052749 n

end A052749

/-! ## A052749.P17190418246625355180

`n*(char[1]+1)*A011782(n)-2*n`
-/

namespace A052749.P17190418246625355180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A011782 n) - (2 * n : ℤ)

end

end A052749.P17190418246625355180

namespace A052749

/-- `n*(char[1]+1)*A011782(n)-2*n` -/
def P17190418246625355180.Spec : Prop :=
  ∀ n, P17190418246625355180.a n = A052749 n

end A052749

/-! ## A052749.P12452307747967801609

`A005183(n)-A140139(n+1)`
-/

namespace A052749.P12452307747967801609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n - A140139 (n + 1)

end

end A052749.P12452307747967801609

namespace A052749

/-- `A005183(n)-A140139(n+1)` -/
def P12452307747967801609.Spec : Prop :=
  ∀ n, P12452307747967801609.a n = A052749 n

end A052749

/-! ## A052749.P2723121415427507573

`A001787(n)-comp[A004277(n)+1]`
-/

namespace A052749.P2723121415427507573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A052749.P2723121415427507573

namespace A052749

/-- `A001787(n)-comp[A004277(n)+1]` -/
def P2723121415427507573.Spec : Prop :=
  ∀ n, P2723121415427507573.a n = A052749 n

end A052749

/-! ## A052749.P11267143868064775510

`A057711(n)+A057711(n)-A005843(n)`
-/

namespace A052749.P11267143868064775510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n + (A057711 n - A005843 n)

end

end A052749.P11267143868064775510

namespace A052749

/-- `A057711(n)+A057711(n)-A005843(n)` -/
def P11267143868064775510.Spec : Prop :=
  ∀ n, P11267143868064775510.a n = A052749 n

end A052749

/-! ## A052749.P10039776587549003845

`A052760(n+1)/(n+1)`
-/

namespace A052749.P10039776587549003845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052760 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052749.P10039776587549003845

namespace A052749

/-- `A052760(n+1)/(n+1)` -/
def P10039776587549003845.Spec : Prop :=
  ∀ n, P10039776587549003845.a n = (A052749 n : ℚ)

end A052749

/-! ## A052749.P18420160766661327972

`A052769(n+2)/((n+1)*(n+2))`
-/

namespace A052749.P18420160766661327972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052769 (n + 2) : ℚ) / ((n + 1) * (n + 2) : ℚ)

end

end A052749.P18420160766661327972

namespace A052749

/-- `A052769(n+2)/((n+1)*(n+2))` -/
def P18420160766661327972.Spec : Prop :=
  ∀ n, P18420160766661327972.a n = (A052749 n : ℚ)

end A052749

/-!
# A052750: a(n) = (2*n + 1)^(n - 1).

The programs for A052750, the canonical program `A052750.P12130795635608370011` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052750 has offset 0).

The definition of A052750 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A052750.anchor (n : ℕ) : (A052750 n : ℚ) = (2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A052.A052750`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052750.P12130795635608370011

`(2*n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052750

/-- `(2*n+1)^(n-1)` -/
def P12130795635608370011.Spec : Prop :=
  ∀ n, P12130795635608370011.a n = (A052750 n : ℚ)

end A052750

/-! ## A052750.P13586653320787837520

`floor(record[xor(1, n)]^(n-1))`
-/

namespace A052750.P13586653320787837520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052750.P13586653320787837520

namespace A052750

/-- `floor(record[xor(1, n)]^(n-1))` -/
def P13586653320787837520.Spec : Prop :=
  ∀ n, P13586653320787837520.a n = A052750 n

end A052750

/-! ## A052750.P16192481589306153885

`ceil(record[xor(1, n)]^(n-1))`
-/

namespace A052750.P16192481589306153885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A052750.P16192481589306153885

namespace A052750

/-- `ceil(record[xor(1, n)]^(n-1))` -/
def P16192481589306153885.Spec : Prop :=
  ∀ n, P16192481589306153885.a n = A052750 n

end A052750

/-! ## A052750.P4647158061433550839

`round(record[xor(1, n)]^(n-1))`
-/

namespace A052750.P4647158061433550839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A052750.P4647158061433550839

namespace A052750

/-- `round(record[xor(1, n)]^(n-1))` -/
def P4647158061433550839.Spec : Prop :=
  ∀ n, P4647158061433550839.a n = A052750 n

end A052750

/-! ## A052750.P15744482953316462699

`floor(or(1, 2*n)^(n-1))`
-/

namespace A052750.P15744482953316462699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (2 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052750.P15744482953316462699

namespace A052750

/-- `floor(or(1, 2*n)^(n-1))` -/
def P15744482953316462699.Spec : Prop :=
  ∀ n, P15744482953316462699.a n = A052750 n

end A052750

/-! ## A052750.P3860257933131665952

`ceil(or(1, 2*n)^(n-1))`
-/

namespace A052750.P3860257933131665952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (2 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A052750.P3860257933131665952

namespace A052750

/-- `ceil(or(1, 2*n)^(n-1))` -/
def P3860257933131665952.Spec : Prop :=
  ∀ n, P3860257933131665952.a n = A052750 n

end A052750

/-! ## A052750.P7514737143940863120

`floor(xor(1, 2*n)^(n-1))`
-/

namespace A052750.P7514737143940863120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (2 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052750.P7514737143940863120

namespace A052750

/-- `floor(xor(1, 2*n)^(n-1))` -/
def P7514737143940863120.Spec : Prop :=
  ∀ n, P7514737143940863120.a n = A052750 n

end A052750

/-! ## A052750.P4951286738879962741

`round(or(1, 2*n)^(n-1))`
-/

namespace A052750.P4951286738879962741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (2 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A052750.P4951286738879962741

namespace A052750

/-- `round(or(1, 2*n)^(n-1))` -/
def P4951286738879962741.Spec : Prop :=
  ∀ n, P4951286738879962741.a n = A052750 n

end A052750

/-! ## A052750.P6192370525522619857

`ceil(xor(1, 2*n)^(n-1))`
-/

namespace A052750.P6192370525522619857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A052750.P6192370525522619857

namespace A052750

/-- `ceil(xor(1, 2*n)^(n-1))` -/
def P6192370525522619857.Spec : Prop :=
  ∀ n, P6192370525522619857.a n = A052750 n

end A052750

/-! ## A052750.P13239460438775115417

`round(xor(1, 2*n)^(n-1))`
-/

namespace A052750.P13239460438775115417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A052750.P13239460438775115417

namespace A052750

/-- `round(xor(1, 2*n)^(n-1))` -/
def P13239460438775115417.Spec : Prop :=
  ∀ n, P13239460438775115417.a n = A052750 n

end A052750

/-!
# A052751: A simple grammar.

The programs for A052751, there is no canonical definition to state claims against.
-/

/-! ## A052751.P7599646482707949520

`A340814(∑[n+3])`
-/

namespace A052751.P7599646482707949520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340814 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052751.P7599646482707949520

/-! ## A052751.P4042995109379916014

`A340814(A141214(n))%A322205(n+2)`
-/

namespace A052751.P4042995109379916014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340814 (A141214 n).toNat) (A322205 (n + 2))

end

end A052751.P4042995109379916014

/-!
# A052752: a(n) = (3*n+1)^(n-1).

The programs for A052752, the canonical program `A052752.P12235605037901120991` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052752 has offset 0).

The definition of A052752 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A052752.anchor (n : ℕ) : (A052752 n : ℚ) = (3 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A052.A052752`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052752.P12235605037901120991

`(3*n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052752

/-- `(3*n+1)^(n-1)` -/
def P12235605037901120991.Spec : Prop :=
  ∀ n, P12235605037901120991.a n = (A052752 n : ℚ)

end A052752

/-! ## A052752.P12816533323744159757

`ceil(ceil(3/acot(n))^(n-1))`
-/

namespace A052752.P12816533323744159757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈3 / SequenceMachineLib.acot (n : ℝ)⌉ : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A052752.P12816533323744159757

namespace A052752

/-- `ceil(ceil(3/acot(n))^(n-1))` -/
def P12816533323744159757.Spec : Prop :=
  ∀ n, P12816533323744159757.a n = A052752 n

end A052752

/-! ## A052752.P10875751553636509810

`abs(xor(3*n, -1)^(n-1))`
-/

namespace A052752.P10875751553636509810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(Int.xor (3 * n : ℤ) (-1) : ℚ) ^ ((n : ℤ) - 1 : ℤ)|

end

end A052752.P10875751553636509810

namespace A052752

/-- `abs(xor(3*n, -1)^(n-1))` -/
def P10875751553636509810.Spec : Prop :=
  ∀ n, P10875751553636509810.a n = (A052752 n : ℚ)

end A052752

/-! ## A052752.P10398715381982786229

`floor((record[xor(1, n)]+n)^(n-1))`
-/

namespace A052752.P10398715381982786229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052752.P10398715381982786229

namespace A052752

/-- `floor((record[xor(1, n)]+n)^(n-1))` -/
def P10398715381982786229.Spec : Prop :=
  ∀ n, P10398715381982786229.a n = A052752 n

end A052752

/-!
# A052753: Expansion of e.g.f.: log(1-x)^4.

The programs for A052753, there is no canonical definition to state claims against.
-/

/-! ## A052753.P17099360648107628194

`A052770(n+1)/(n+1)`
-/

namespace A052753.P17099360648107628194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052770 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052753.P17099360648107628194

/-! ## A052753.P9065250813062426256

`floor(A052770(A028242(2*n))/A028242(2*n))`
-/

namespace A052753.P9065250813062426256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052770 (A028242 (2 * n)).toNat : ℚ) / (A028242 (2 * n) : ℚ)⌋

end

end A052753.P9065250813062426256

/-! ## A052753.P17132335389811647993

`A225479(A077169(n+1)-1)`
-/

namespace A052753.P17132335389811647993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225479 (A077169 (n + 1) - 1).toNat

end

end A052753.P17132335389811647993

/-! ## A052753.P16936117130176764017

`A353119(n^floor(n/4))`
-/

namespace A052753.P16936117130176764017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353119 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ))).toNat

end

end A052753.P16936117130176764017

/-!
# A052754: Expansion of e.g.f.: (log(1-x))^2*x^2.

The programs for A052754, there is no canonical definition to state claims against.
-/

/-! ## A052754.P14006174165158005920

`n*A052745(abs(1-n))`
-/

namespace A052754.P14006174165158005920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052745 |1 - (n : ℤ)|.toNat

end

end A052754.P14006174165158005920

/-! ## A052754.P10430531703273537479

`A052745(A134478(C(n, 2)))*n`
-/

namespace A052754.P10430531703273537479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052745 (A134478 (Nat.choose n 2)).toNat * (n : ℤ)

end

end A052754.P10430531703273537479

/-! ## A052754.P8303245820693535746

`A052766(n+1)/(n+1)`
-/

namespace A052754.P8303245820693535746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052766 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052754.P8303245820693535746

/-! ## A052754.P15134753872185612167

`(n+1)^A008683(A020483(n))*A052766(n+1)`
-/

namespace A052754.P15134753872185612167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A052766 (n + 1) : ℚ)

end

end A052754.P15134753872185612167

/-!
# A052755: G.f. A(x) satisfies: A(x) = exp( Sum_{k>=1} (-1)^(k+1) * A(x^k)^3 * x^k / k ).

The programs for A052755, there is no canonical definition to state claims against.
-/

/-! ## A052755.P8019384686519264032

`A137957(n)-A025437(A052767(n))`
-/

namespace A052755.P8019384686519264032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137957 n - A025437 (A052767 n).toNat

end

end A052755.P8019384686519264032

/-! ## A052755.P5435027334703637947

`A062491(A052823(2*n))`
-/

namespace A052755.P5435027334703637947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062491 (A052823 (2 * n)).toNat

end

end A052755.P5435027334703637947

/-!
# A052756: E.g.f.: (-1/3)*LambertW(-3*x).

The programs for A052756, there is no canonical definition to state claims against.
-/

/-! ## A052756.P4763226953472741808

`(3*n)^abs(1-n)`
-/

namespace A052756.P4763226953472741808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

end

end A052756.P4763226953472741808

/-! ## A052756.P12904769837330752318

`n/3*A038062(n)`
-/

namespace A052756.P12904769837330752318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A038062 n : ℚ)

end

end A052756.P12904769837330752318

/-! ## A052756.P12919546317931936700

`floor((3*A028310(n))^(n-1))`
-/

namespace A052756.P12919546317931936700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A028310 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052756.P12919546317931936700

/-! ## A052756.P11181461541466432590

`3*n*A008486(n)^(n-2)`
-/

namespace A052756.P11181461541466432590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) * (A008486 n : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A052756.P11181461541466432590

/-! ## A052756.P14072995597991809923

`∏{d}[n-1, (3*n)^A000010(#)]`
-/

namespace A052756.P14072995597991809923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (3 * n : ℚ) ^ (A000010 d : ℤ)

end

end A052756.P14072995597991809923

/-!
# A052757: Number of rooted identity trees with n nodes and 3-colored non-root nodes.

The programs for A052757, there is no canonical definition to state claims against.
-/

/-! ## A052757.P1750568928630114688

`A255517(∑[n+3]+n+3)`
-/

namespace A052757.P1750568928630114688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A052757.P1750568928630114688

/-! ## A052757.P4456533463256663159

`record[A255517(A060577(n))]`
-/

namespace A052757.P4456533463256663159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052757.P4456533463256663159

/-! ## A052757.P16153572176637716416

`record[A255517(abs(A046691(n)))]`
-/

namespace A052757.P16153572176637716416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052757.P16153572176637716416

/-! ## A052757.P7929213490386111911

`A165471(n²)*A255517(A046691(n+2))`
-/

namespace A052757.P7929213490386111911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (n ^ 2) * A255517 (A046691 (n + 2)).toNat

end

end A052757.P7929213490386111911

/-! ## A052757.P12062530332289604890

`A255517(A046691(n+2))%A255519(n+3)`
-/

namespace A052757.P12062530332289604890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255517 (A046691 (n + 2)).toNat) (A255519 (n + 3))

end

end A052757.P12062530332289604890

/-!
# A052758: Expansion of e.g.f.: -(log(1-x))^3*x.

The programs for A052758, there is no canonical definition to state claims against.
-/

/-! ## A052758.P4620747846174059789

`n*A052748(abs(1-n))`
-/

namespace A052758.P4620747846174059789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052748 |1 - (n : ℤ)|.toNat

end

end A052758.P4620747846174059789

/-! ## A052758.P11041933850150796235

`A052748(A134478(C(n, 2)))*n`
-/

namespace A052758.P11041933850150796235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052748 (A134478 (Nat.choose n 2)).toNat * (n : ℤ)

end

end A052758.P11041933850150796235

/-! ## A052758.P7450687725863759549

`A052765(n+1)/(n+1)`
-/

namespace A052758.P7450687725863759549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052765 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052758.P7450687725863759549

/-! ## A052758.P756467474682163798

`A320486(A392918(n))`
-/

namespace A052758.P756467474682163798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (A392918 n).toNat

end

end A052758.P756467474682163798

/-!
# A052759: E.g.f.: x^3*log(1/(1-x)).

The programs for A052759, there is no canonical definition to state claims against.
-/

/-! ## A052759.P3378896546429504126

`n*A052747(abs(1-n))`
-/

namespace A052759.P3378896546429504126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052747 |1 - (n : ℤ)|.toNat

end

end A052759.P3378896546429504126

/-! ## A052759.P1210235620210292658

`A052747(n-A057427(n))*n`
-/

namespace A052759.P1210235620210292658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052747 ((n : ℤ) - A057427 n).toNat * (n : ℤ)

end

end A052759.P1210235620210292658

/-! ## A052759.P11869344885496926115

`A052747(A004277(n)-(n+1))*A321126(A027379(n))`
-/

namespace A052759.P11869344885496926115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052747 (A004277 n - (n + 1 : ℤ)).toNat * A321126 (A027379 n).toNat

end

end A052759.P11869344885496926115

/-! ## A052759.P11689069554244558425

`and(-8, n!)/gcd(n-3, C(3, n))`
-/

namespace A052759.P11689069554244558425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-8) (Nat.factorial n : ℤ) : ℚ) / (Int.gcd ((n : ℤ) - 3) (Nat.choose 3 n : ℤ) : ℚ)

end

end A052759.P11689069554244558425

/-! ## A052759.P1785870869329954407

`A052778(n+1)/(n+1)`
-/

namespace A052759.P1785870869329954407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052778 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052759.P1785870869329954407

/-! ## A052759.P17777641164942716586

`A052794(n+2)/A279019(n+6)`
-/

namespace A052759.P17777641164942716586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052794 (n + 2) : ℚ) / (A279019 (n + 6) : ℚ)

end

end A052759.P17777641164942716586

/-!
# A052760: Expansion of e.g.f.: x^2*(exp(x)-1)^2.

The programs for A052760, the canonical program `A052760.P5613186736916057001` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052760 has offset 0).

The definition of A052760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052760.P712460135837653983

`n*A052749(A289207(n+1))`
-/

namespace A052760.P712460135837653983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052749 (A289207 (n + 1)).toNat

end

end A052760.P712460135837653983

namespace A052760

/-- `n*A052749(A289207(n+1))` -/
def P712460135837653983.Spec : Prop :=
  ∀ n, P712460135837653983.a n = A052760 n

end A052760

/-! ## A052760.P11289915381823189085

`(A088041(n+1)-3)*A161680(n)`
-/

namespace A052760.P11289915381823189085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088041 (n + 1) - 3) * A161680 n

end

end A052760.P11289915381823189085

namespace A052760

/-- `(A088041(n+1)-3)*A161680(n)` -/
def P11289915381823189085.Spec : Prop :=
  ∀ n, P11289915381823189085.a n = A052760 n

end A052760

/-! ## A052760.P265305917010328308

`A001815(n)-A007590(A163985(n))`
-/

namespace A052760.P265305917010328308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n - A007590 (A163985 n).toNat

end

end A052760.P265305917010328308

namespace A052760

/-- `A001815(n)-A007590(A163985(n))` -/
def P265305917010328308.Spec : Prop :=
  ∀ n, P265305917010328308.a n = A052760 n

end A052760

/-! ## A052760.P5613186736916057001

`A048487(n)%A011782(n)*A161680(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052760

/-- `A048487(n)%A011782(n)*A161680(n)` -/
def P5613186736916057001.Spec : Prop :=
  ∀ n, P5613186736916057001.a n = A052760 n

theorem P5613186736916057001.correct : P5613186736916057001.Spec := by
  intro n
  simp only [A052760]

end A052760

/-! ## A052760.P5537444528488571861

`and(A048487(n), A283651(n))*A161680(n)`
-/

namespace A052760.P5537444528488571861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048487 n) (A283651 n) * A161680 n

end

end A052760.P5537444528488571861

namespace A052760

/-- `and(A048487(n), A283651(n))*A161680(n)` -/
def P5537444528488571861.Spec : Prop :=
  ∀ n, P5537444528488571861.a n = A052760 n

end A052760

/-! ## A052760.P8981461498555925975

`and(A048487(n), A088041(n+1))*A161680(n)`
-/

namespace A052760.P8981461498555925975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048487 n) (A088041 (n + 1)) * A161680 n

end

end A052760.P8981461498555925975

namespace A052760

/-- `and(A048487(n), A088041(n+1))*A161680(n)` -/
def P8981461498555925975.Spec : Prop :=
  ∀ n, P8981461498555925975.a n = A052760 n

end A052760

/-! ## A052760.P1338651070973373366

`A052769(n+1)/(n+1)`
-/

namespace A052760.P1338651070973373366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052769 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052760.P1338651070973373366

namespace A052760

/-- `A052769(n+1)/(n+1)` -/
def P1338651070973373366.Spec : Prop :=
  ∀ n, P1338651070973373366.a n = (A052760 n : ℚ)

end A052760

/-! ## A052760.P15418752977338301012

`A052793(n+2)/((n+1)*(n+2))`
-/

namespace A052760.P15418752977338301012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052793 (n + 2) : ℚ) / ((n + 1) * (n + 2) : ℚ)

end

end A052760.P15418752977338301012

namespace A052760

/-- `A052793(n+2)/((n+1)*(n+2))` -/
def P15418752977338301012.Spec : Prop :=
  ∀ n, P15418752977338301012.a n = (A052760 n : ℚ)

end A052760

/-!
# A052761: a(n) = 3!*n*S(n-1,3), where S denotes the Stirling numbers of second kind.

The programs for A052761, the canonical program `A052761.P11264414659756684470` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052761 has offset 0).

The definition of A052761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052761.P11264414659756684470

`n*A001117(n+1-2%(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052761

/-- `n*A001117(n+1-2%(n+1))` -/
def P11264414659756684470.Spec : Prop :=
  ∀ n, P11264414659756684470.a n = A052761 n

theorem P11264414659756684470.correct : P11264414659756684470.Spec := by
  intro n
  simp only [A052761]

end A052761

/-! ## A052761.P6472310303953841492

`2*n*A094033((2*n)%(n+1))`
-/

namespace A052761.P6472310303953841492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A094033 (2 * n % (n + 1))

end

end A052761.P6472310303953841492

namespace A052761

/-- `2*n*A094033((2*n)%(n+1))` -/
def P6472310303953841492.Spec : Prop :=
  ∀ n, P6472310303953841492.a n = A052761 n

end A052761

/-! ## A052761.P13895187694670267010

`n*A056454(A004281(n))`
-/

namespace A052761.P13895187694670267010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056454 (A004281 n).toNat

end

end A052761.P13895187694670267010

namespace A052761

/-- `n*A056454(A004281(n))` -/
def P13895187694670267010.Spec : Prop :=
  ∀ n, P13895187694670267010.a n = A052761 n

end A052761

/-! ## A052761.P8152239762601000875

`2*n*A094033(A289207(n+1))`
-/

namespace A052761.P8152239762601000875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A094033 (A289207 (n + 1)).toNat

end

end A052761.P8152239762601000875

namespace A052761

/-- `2*n*A094033(A289207(n+1))` -/
def P8152239762601000875.Spec : Prop :=
  ∀ n, P8152239762601000875.a n = A052761 n

end A052761

/-! ## A052761.P10645886902971839499

`A052777(n+1)/(n+1)`
-/

namespace A052761.P10645886902971839499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052777 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052761.P10645886902971839499

namespace A052761

/-- `A052777(n+1)/(n+1)` -/
def P10645886902971839499.Spec : Prop :=
  ∀ n, P10645886902971839499.a n = (A052761 n : ℚ)

end A052761

/-! ## A052761.P4706788889067855372

`A052784(n+2)/((n+1)*(n+2))`
-/

namespace A052761.P4706788889067855372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052784 (n + 2) : ℚ) / ((n + 1) * (n + 2) : ℚ)

end

end A052761.P4706788889067855372

namespace A052761

/-- `A052784(n+2)/((n+1)*(n+2))` -/
def P4706788889067855372.Spec : Prop :=
  ∀ n, P4706788889067855372.a n = (A052761 n : ℚ)

end A052761

/-!
# A052762: Products of 4 consecutive integers: a(n) = n*(n-1)*(n-2)*(n-3).

The programs for A052762, the canonical program `A052762.P17182617027547716710` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052762 has offset 0).

The definition of A052762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(n-2)*(n-3)` (program `A052762.P17182617027547716710`, by `A052762.P17182617027547716710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052762.P3252341054254615743

`24*C(n, 4)`
-/

namespace A052762.P3252341054254615743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * Nat.choose n 4

end

end A052762.P3252341054254615743

namespace A052762

/-- `24*C(n, 4)` -/
def P3252341054254615743.Spec : Prop :=
  ∀ n, (P3252341054254615743.a n : ℤ) = A052762 n

theorem P3252341054254615743.correct : P3252341054254615743.Spec := by
  intro n
  simp only [A052762, Nat.add_sub_cancel, A052762.P3252341054254615743.a, A052762.P17182617027547716710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052762

/-! ## A052762.P17182617027547716710

`n*(n-1)*(n-2)*(n-3)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052762

/-- `n*(n-1)*(n-2)*(n-3)` -/
def P17182617027547716710.Spec : Prop :=
  ∀ n, P17182617027547716710.a n = A052762 n

theorem P17182617027547716710.correct : P17182617027547716710.Spec := by
  intro n
  simp only [A052762]

end A052762

/-! ## A052762.P17500964518560358838

`A001094(n)-n`
-/

namespace A052762.P17500964518560358838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001094 n - (n : ℤ)

end

end A052762.P17500964518560358838

namespace A052762

/-- `A001094(n)-n` -/
def P17500964518560358838.Spec : Prop :=
  ∀ n, P17500964518560358838.a n = A052762 n

theorem P17500964518560358838.correct : P17500964518560358838.Spec := by
  intro n
  simp only [A052762, Nat.add_sub_cancel, A052762.P17500964518560358838.a, A052762.P17182617027547716710.a, A001094, A001094.P17747753271672634050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052762

/-! ## A052762.P7145892844047837193

`A134175(n+1)/16`
-/

namespace A052762.P7145892844047837193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134175 (n + 1) : ℚ) / 16

end

end A052762.P7145892844047837193

namespace A052762

/-- `A134175(n+1)/16` -/
def P7145892844047837193.Spec : Prop :=
  ∀ n, P7145892844047837193.a n = (A052762 n : ℚ)

theorem P7145892844047837193.correct : P7145892844047837193.Spec := by
  intro n
  simp only [A052762, Nat.add_sub_cancel, A052762.P7145892844047837193.a, A052762.P17182617027547716710.a, A134175, A134175.P6211711537471988831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052762

/-! ## A052762.P15919161176801014231

`A027382(n)-(n+1)²`
-/

namespace A052762.P15919161176801014231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027382 n - ((n + 1) ^ 2 : ℤ)

end

end A052762.P15919161176801014231

namespace A052762

/-- `A027382(n)-(n+1)²` -/
def P15919161176801014231.Spec : Prop :=
  ∀ n, P15919161176801014231.a n = A052762 n

theorem P15919161176801014231.correct : P15919161176801014231.Spec := by
  intro n
  simp only [A052762, Nat.add_sub_cancel, A052762.P15919161176801014231.a, A052762.P17182617027547716710.a, A027382, A027382.P14277374439744953168.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052762

/-! ## A052762.P768034044615290630

`A137864(n+1)-Δ[n²]`
-/

namespace A052762.P768034044615290630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137864 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A052762.P768034044615290630

namespace A052762

/-- `A137864(n+1)-Δ[n²]` -/
def P768034044615290630.Spec : Prop :=
  ∀ n, P768034044615290630.a n = A052762 n

theorem P768034044615290630.correct : P768034044615290630.Spec := by
  intro n
  simp only [A052762, Nat.add_sub_cancel, A052762.P768034044615290630.f1, A052762.P768034044615290630.a, A052762.P17182617027547716710.a, A137864, A137864.P4137354387066839987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052762

/-! ## A052762.P936374432877419808

`A001489(n)+A001094(n)`
-/

namespace A052762.P936374432877419808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A001094 n

end

end A052762.P936374432877419808

namespace A052762

/-- `A001489(n)+A001094(n)` -/
def P936374432877419808.Spec : Prop :=
  ∀ n, P936374432877419808.a n = A052762 n

theorem P936374432877419808.correct : P936374432877419808.Spec := by
  intro n
  simp only [A052762, Nat.add_sub_cancel, A052762.P936374432877419808.a, A052762.P17182617027547716710.a, A001094, A001094.P17747753271672634050.a, A001489, A001489.P15233530513763566776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052762

/-! ## A052762.P3260284066641095300

`gcd(A052768(n), A334281(n))`
-/

namespace A052762.P3260284066641095300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052768 n) (A334281 n)

end

end A052762.P3260284066641095300

namespace A052762

/-- `gcd(A052768(n), A334281(n))` -/
def P3260284066641095300.Spec : Prop :=
  ∀ n, (P3260284066641095300.a n : ℤ) = A052762 n

end A052762

/-! ## A052762.P15946305379570164905

`A266395(n+1)+A060008(n)`
-/

namespace A052762.P15946305379570164905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266395 (n + 1) + A060008 n

end

end A052762.P15946305379570164905

namespace A052762

/-- `A266395(n+1)+A060008(n)` -/
def P15946305379570164905.Spec : Prop :=
  ∀ n, P15946305379570164905.a n = A052762 n

end A052762

/-! ## A052762.P11336951331776326796

`gcd(A334281(n)+A052787(n)², A052787(n))`
-/

namespace A052762.P11336951331776326796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A334281 n + A052787 n ^ 2) (A052787 n)

end

end A052762.P11336951331776326796

namespace A052762

/-- `gcd(A334281(n)+A052787(n)², A052787(n))` -/
def P11336951331776326796.Spec : Prop :=
  ∀ n, (P11336951331776326796.a n : ℤ) = A052762 n

end A052762

/-! ## A052762.P3233727655477961986

`Δ[2*A300847(n)]`
-/

namespace A052762.P3233727655477961986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052762.P3233727655477961986

namespace A052762

/-- `Δ[2*A300847(n)]` -/
def P3233727655477961986.Spec : Prop :=
  ∀ n, P3233727655477961986.a n = A052762 n

theorem P3233727655477961986.correct : P3233727655477961986.Spec := by
  intro n
  simp only [A052762, Nat.add_sub_cancel, A052762.P3233727655477961986.f1, A052762.P3233727655477961986.a, A052762.P17182617027547716710.a, A300847, A300847.P3184734527947357789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052762

/-! ## A052762.P14100357345640670211

`Δ[A052787(n)/5]`
-/

namespace A052762.P14100357345640670211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052787 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052762.P14100357345640670211

namespace A052762

/-- `Δ[A052787(n)/5]` -/
def P14100357345640670211.Spec : Prop :=
  ∀ n, P14100357345640670211.a n = (A052762 n : ℚ)

theorem P14100357345640670211.correct : P14100357345640670211.Spec := by
  intro n
  simp only [A052762, Nat.add_sub_cancel, A052762.P14100357345640670211.f1, A052762.P14100357345640670211.a, A052762.P17182617027547716710.a, A052787, A052787.P3134947303530466889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052762

/-! ## A052762.P5569592648890085267

`(Δ[A001095(n)]-1)/5`
-/

namespace A052762.P5569592648890085267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001095 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 5

end

end A052762.P5569592648890085267

namespace A052762

/-- `(Δ[A001095(n)]-1)/5` -/
def P5569592648890085267.Spec : Prop :=
  ∀ n, P5569592648890085267.a n = (A052762 n : ℚ)

theorem P5569592648890085267.correct : P5569592648890085267.Spec := by
  intro n
  simp only [A052762, Nat.add_sub_cancel, A052762.P5569592648890085267.f1, A052762.P5569592648890085267.a, A052762.P17182617027547716710.a, A001095, A001095.P5999656701398893294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052762

/-! ## A052762.P10152792092341440349

`A052787(n+1)/(n+1)`
-/

namespace A052762.P10152792092341440349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052787 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052762.P10152792092341440349

namespace A052762

/-- `A052787(n+1)/(n+1)` -/
def P10152792092341440349.Spec : Prop :=
  ∀ n, P10152792092341440349.a n = (A052762 n : ℚ)

theorem P10152792092341440349.correct : P10152792092341440349.Spec := by
  intro n
  simp only [A052762, Nat.add_sub_cancel, A052762.P10152792092341440349.a, A052762.P17182617027547716710.a, A052787, A052787.P3134947303530466889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052762

/-! ## A052762.P1575903184885131214

`A001095(n+1)/(n+1)-1`
-/

namespace A052762.P1575903184885131214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001095 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A052762.P1575903184885131214

namespace A052762

/-- `A001095(n+1)/(n+1)-1` -/
def P1575903184885131214.Spec : Prop :=
  ∀ n, P1575903184885131214.a n = (A052762 n : ℚ)

theorem P1575903184885131214.correct : P1575903184885131214.Spec := by
  intro n
  simp only [A052762, Nat.add_sub_cancel, A052762.P1575903184885131214.a, A052762.P17182617027547716710.a, A001095, A001095.P5999656701398893294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052762

/-! ## A052762.P13130060852190047718

`A053625(n+2)/A002378(n+1)`
-/

namespace A052762.P13130060852190047718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053625 (n + 2) : ℚ) / (A002378 (n + 1) : ℚ)

end

end A052762.P13130060852190047718

namespace A052762

/-- `A053625(n+2)/A002378(n+1)` -/
def P13130060852190047718.Spec : Prop :=
  ∀ n, P13130060852190047718.a n = (A052762 n : ℚ)

theorem P13130060852190047718.correct : P13130060852190047718.Spec := by
  intro n
  simp only [A052762, Nat.add_sub_cancel, A052762.P13130060852190047718.a, A052762.P17182617027547716710.a, A002378, A002378.P6342434596694243671.a, A053625, A053625.P9911558398274709758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052762

/-! ## A052762.P8850902628121727986

`A067998(A267942(2*n)-(n+1))`
-/

namespace A052762.P8850902628121727986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A267942 (2 * n) - (n + 1 : ℤ)).toNat

end

end A052762.P8850902628121727986

namespace A052762

/-- `A067998(A267942(2*n)-(n+1))` -/
def P8850902628121727986.Spec : Prop :=
  ∀ n, P8850902628121727986.a n = A052762 n

end A052762

/-!
# A052763: Number of rooted trees with n nodes and 4-colored non-root nodes.

The programs for A052763, there is no canonical definition to state claims against.
-/

/-! ## A052763.P5178516389761138408

`A242249(A052905(n+2))`
-/

namespace A052763.P5178516389761138408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A052905 (n + 2)).toNat

end

end A052763.P5178516389761138408

/-! ## A052763.P16637042916008951161

`A242249(eq[4, A025581(n)])`
-/

namespace A052763.P16637042916008951161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052763.P16637042916008951161

/-! ## A052763.P2037389349083269886

`A242249(A000096(n+4)-4)`
-/

namespace A052763.P2037389349083269886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A000096 (n + 4) - 4).toNat

end

end A052763.P2037389349083269886

/-! ## A052763.P1987004809550870100

`A242249(n+1+A000096(n+3))`
-/

namespace A052763.P1987004809550870100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 ((n + 1 : ℤ) + A000096 (n + 3)).toNat

end

end A052763.P1987004809550870100

/-! ## A052763.P5855328312968650384

`A242249(A034856(n+3)+n+2)`
-/

namespace A052763.P5855328312968650384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A034856 (n + 3) + (n + 2 : ℤ)).toNat

end

end A052763.P5855328312968650384

/-!
# A052764: E.g.f.: -1/4*LambertW(-4*x).

The programs for A052764, there is no canonical definition to state claims against.
-/

/-! ## A052764.P9848197609588050916

`(4*n)^abs(1-n)`
-/

namespace A052764.P9848197609588050916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

end

end A052764.P9848197609588050916

/-! ## A052764.P3479012691355598659

`floor(2/acot(n))^(n-1)*floor(2^(n-1))`
-/

namespace A052764.P3479012691355598659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℚ)

end

end A052764.P3479012691355598659

/-! ## A052764.P5335168984141256513

`lcm(n, A008574(n)^(n-1))`
-/

namespace A052764.P5335168984141256513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((A008574 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A052764.P5335168984141256513

/-! ## A052764.P1691686469732489450

`floor((2*A004277(n))^(n-1))`
-/

namespace A052764.P1691686469732489450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A004277 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052764.P1691686469732489450

/-! ## A052764.P15956695423594427106

`∏{d}[n-1, (4*n)^A000010(#)]`
-/

namespace A052764.P15956695423594427106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (4 * n : ℚ) ^ (A000010 d : ℤ)

end

end A052764.P15956695423594427106

/-!
# A052765: Expansion of e.g.f.: -x^2*(log(1-x))^3.

The programs for A052765, there is no canonical definition to state claims against.
-/

/-! ## A052765.P17564203298112159080

`n*A052758(abs(1-n))`
-/

namespace A052765.P17564203298112159080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052758 |1 - (n : ℤ)|.toNat

end

end A052765.P17564203298112159080

/-! ## A052765.P6799570806232778894

`A052786(n+1)/(n+1)`
-/

namespace A052765.P6799570806232778894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052786 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052765.P6799570806232778894

/-! ## A052765.P9967276431328662302

`A392832(n)%A389605(n+1)`
-/

namespace A052765.P9967276431328662302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392832 n) (A389605 (n + 1))

end

end A052765.P9967276431328662302

/-! ## A052765.P10951173204799776439

`A052409(A000110(n))*A392832(n)`
-/

namespace A052765.P10951173204799776439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A000110 n).toNat * A392832 n

end

end A052765.P10951173204799776439

/-! ## A052765.P18131963065945784801

`A121262(A063727(n))*A392832(n)`
-/

namespace A052765.P18131963065945784801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A063727 n).toNat * A392832 n

end

end A052765.P18131963065945784801

/-!
# A052766: Expansion of e.g.f.: (log(1-x))^2*x^3.

The programs for A052766, there is no canonical definition to state claims against.
-/

/-! ## A052766.P16627314222622167164

`n*A052754(abs(1-n))`
-/

namespace A052766.P16627314222622167164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052754 |1 - (n : ℤ)|.toNat

end

end A052766.P16627314222622167164

/-! ## A052766.P12499540265121661147

`A052754(floor(n+1-atan(n)))*A233583(n+1)`
-/

namespace A052766.P12499540265121661147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052754 ⌊(n + 1 : ℝ) - Real.arctan (n : ℝ)⌋.toNat * A233583 (n + 1)

end

end A052766.P12499540265121661147

/-! ## A052766.P13183778305057340962

`A052799(n+1)/(n+1)`
-/

namespace A052766.P13183778305057340962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052799 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052766.P13183778305057340962

/-! ## A052766.P9281242549676383332

`A052768(n)+A004524(A052784(n))`
-/

namespace A052766.P9281242549676383332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052768 n + A004524 (A052784 n).toNat

end

end A052766.P9281242549676383332

/-!
# A052767: Expansion of e.g.f.: -(log(1-x))^5.

The programs for A052767, there is no canonical definition to state claims against.
-/

/-! ## A052767.P16093878630357251419

`A052783(n+1)/(n+1)`
-/

namespace A052767.P16093878630357251419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052783 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052767.P16093878630357251419

/-! ## A052767.P8807518701504176814

`A225479(A077169(n)+n)`
-/

namespace A052767.P8807518701504176814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225479 (A077169 n + (n : ℤ)).toNat

end

end A052767.P8807518701504176814

/-! ## A052767.P14054795322830343118

`A353404(n^floor(n/5))`
-/

namespace A052767.P14054795322830343118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353404 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℚ) / 5⌋ : ℤ))).toNat

end

end A052767.P14054795322830343118

/-! ## A052767.P3437714495377961050

`A353200(xor(n, a(floor(n/2))))` with `a(0)=0, a(1)=0`
-/

namespace A052767.P3437714495377961050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A353200 (Int.xor (n : ℤ) (a ⌊(n : ℚ) / 2⌋.toNat)).toNat

end

end A052767.P3437714495377961050

/-! ## A052767.P2344982989399411822

`A353200(abs(n-a(floor(n/2))))` with `a(0)=0, a(1)=0`
-/

namespace A052767.P2344982989399411822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A353200 |(n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat|.toNat

end

end A052767.P2344982989399411822

/-!
# A052768: a(n) = n*(n-1)*(n-2)*(n-3) for n>=5.

The programs for A052768, the canonical program `A052768.P6561578854226774558` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052768 has offset 0).

The definition of A052768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052768.P2705521495992398404

`A052762(n-char[4])`
-/

namespace A052768.P2705521495992398404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A052768.P2705521495992398404

namespace A052768

/-- `A052762(n-char[4])` -/
def P2705521495992398404.Spec : Prop :=
  ∀ n, P2705521495992398404.a n = A052768 n

end A052768

/-! ## A052768.P12316723983202363666

`A052762(n)*A185115(n)`
-/

namespace A052768.P12316723983202363666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n * A185115 n

end

end A052768.P12316723983202363666

namespace A052768

/-- `A052762(n)*A185115(n)` -/
def P12316723983202363666.Spec : Prop :=
  ∀ n, P12316723983202363666.a n = A052768 n

end A052768

/-! ## A052768.P2087626734135081135

`A052762(n)*A267587(n)`
-/

namespace A052768.P2087626734135081135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n * A267587 n

end

end A052768.P2087626734135081135

namespace A052768

/-- `A052762(n)*A267587(n)` -/
def P2087626734135081135.Spec : Prop :=
  ∀ n, P2087626734135081135.a n = A052768 n

end A052768

/-! ## A052768.P1432012304666744443

`A052762(n)*A060576(A070548(n+1))`
-/

namespace A052768.P1432012304666744443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n * A060576 (A070548 (n + 1)).toNat

end

end A052768.P1432012304666744443

namespace A052768

/-- `A052762(n)*A060576(A070548(n+1))` -/
def P1432012304666744443.Spec : Prop :=
  ∀ n, P1432012304666744443.a n = A052768 n

end A052768

/-! ## A052768.P6561578854226774558

`A052762(n)%A001095(A000007(n)+n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052768

/-- `A052762(n)%A001095(A000007(n)+n)` -/
def P6561578854226774558.Spec : Prop :=
  ∀ n, P6561578854226774558.a n = A052768 n

theorem P6561578854226774558.correct : P6561578854226774558.Spec := by
  intro n
  simp only [A052768]

end A052768

/-! ## A052768.P9754848849328516330

`A052800(n+1)/(n+1)`
-/

namespace A052768.P9754848849328516330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052800 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052768.P9754848849328516330

namespace A052768

/-- `A052800(n+1)/(n+1)` -/
def P9754848849328516330.Spec : Prop :=
  ∀ n, P9754848849328516330.a n = (A052768 n : ℚ)

end A052768

/-! ## A052768.P17947934602205617708

`A052762(n)%Δ[A001096(n)]`
-/

namespace A052768.P17947934602205617708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052762 n) (f1 (n + 1) - f1 n)

end

end A052768.P17947934602205617708

namespace A052768

/-- `A052762(n)%Δ[A001096(n)]` -/
def P17947934602205617708.Spec : Prop :=
  ∀ n, P17947934602205617708.a n = A052768 n

end A052768

/-! ## A052768.P4793812048436089774

`A052787(A028253(n+1))/(n+1)`
-/

namespace A052768.P4793812048436089774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052787 (A028253 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A052768.P4793812048436089774

namespace A052768

/-- `A052787(A028253(n+1))/(n+1)` -/
def P4793812048436089774.Spec : Prop :=
  ∀ n, P4793812048436089774.a n = (A052768 n : ℚ)

end A052768

/-! ## A052768.P13137837423160510670

`A052762(n)*A054024(A029910(n+2))`
-/

namespace A052768.P13137837423160510670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n * A054024 (A029910 (n + 2)).toNat

end

end A052768.P13137837423160510670

namespace A052768

/-- `A052762(n)*A054024(A029910(n+2))` -/
def P13137837423160510670.Spec : Prop :=
  ∀ n, P13137837423160510670.a n = A052768 n

end A052768

/-! ## A052768.P18164958389373907428

`lcm(A052762(n), A062157(A008677(n)))`
-/

namespace A052768.P18164958389373907428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052762 n) (A062157 (A008677 n).toNat)

end

end A052768.P18164958389373907428

namespace A052768

/-- `lcm(A052762(n), A062157(A008677(n)))` -/
def P18164958389373907428.Spec : Prop :=
  ∀ n, (P18164958389373907428.a n : ℤ) = A052768 n

end A052768

/-! ## A052768.P15894556267613016380

`A052762(n)%A068554(n)`
-/

namespace A052768.P15894556267613016380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052762 n) (A068554 n)

end

end A052768.P15894556267613016380

namespace A052768

/-- `A052762(n)%A068554(n)` -/
def P15894556267613016380.Spec : Prop :=
  ∀ n, P15894556267613016380.a n = A052768 n

end A052768

/-! ## A052768.P7656898169365269301

`(A001094(n)-n)%A306860(A276324(n+1))`
-/

namespace A052768.P7656898169365269301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001094 n - (n : ℤ)) (A306860 (A276324 (n + 1)).toNat)

end

end A052768.P7656898169365269301

namespace A052768

/-- `(A001094(n)-n)%A306860(A276324(n+1))` -/
def P7656898169365269301.Spec : Prop :=
  ∀ n, P7656898169365269301.a n = A052768 n

end A052768

/-!
# A052769: E.g.f.: x^3*(exp(x)-1)^2.

The programs for A052769, the canonical program `A052769.P5138098286952425402` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052769 has offset 0).

The definition of A052769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052769.P5138098286952425402

`n*A052760(abs(1-n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A052769

/-- `n*A052760(abs(1-n))` -/
def P5138098286952425402.Spec : Prop :=
  ∀ n, P5138098286952425402.a n = A052769 n

theorem P5138098286952425402.correct : P5138098286952425402.Spec := by
  intro n
  simp only [A052769]

end A052769

/-! ## A052769.P9077132226030100514

`lcm(4, A052771(n))-A280058(n)`
-/

namespace A052769.P9077132226030100514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A052771 n) : ℤ) - A280058 n

end

end A052769.P9077132226030100514

namespace A052769

/-- `lcm(4, A052771(n))-A280058(n)` -/
def P9077132226030100514.Spec : Prop :=
  ∀ n, P9077132226030100514.a n = A052769 n

end A052769

/-! ## A052769.P13560493597900354336

`A052749(A289207(n))*A103505(n)`
-/

namespace A052769.P13560493597900354336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052749 (A289207 n).toNat * A103505 n

end

end A052769.P13560493597900354336

namespace A052769

/-- `A052749(A289207(n))*A103505(n)` -/
def P13560493597900354336.Spec : Prop :=
  ∀ n, P13560493597900354336.a n = A052769 n

end A052769

/-! ## A052769.P9041687583611480095

`A052793(n+1)/(n+1)`
-/

namespace A052769.P9041687583611480095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052793 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052769.P9041687583611480095

namespace A052769

/-- `A052793(n+1)/(n+1)` -/
def P9041687583611480095.Spec : Prop :=
  ∀ n, P9041687583611480095.a n = (A052769 n : ℚ)

end A052769

/-! ## A052769.P7918636286070267966

`A130484(A011909(n)*A011915(n))`
-/

namespace A052769.P7918636286070267966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130484 (A011909 n * A011915 n).toNat

end

end A052769.P7918636286070267966

namespace A052769

/-- `A130484(A011909(n)*A011915(n))` -/
def P7918636286070267966.Spec : Prop :=
  ∀ n, P7918636286070267966.a n = A052769 n

end A052769

/-!
# A052770: Expansion of e.g.f. log(-1/(-1+x))^4*x.

The programs for A052770, there is no canonical definition to state claims against.
-/

/-! ## A052770.P5557878033790122504

`n*A052753((2*n)%(n+1))`
-/

namespace A052770.P5557878033790122504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052753 (2 * n % (n + 1))

end

end A052770.P5557878033790122504

/-! ## A052770.P14284030539528387073

`n*A052753(abs(A023443(n)))`
-/

namespace A052770.P14284030539528387073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052753 |A023443 n|.toNat

end

end A052770.P14284030539528387073

/-! ## A052770.P1953490690083487235

`n*A052753(abs(A024000(n)))`
-/

namespace A052770.P1953490690083487235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052753 |A024000 n|.toNat

end

end A052770.P1953490690083487235

/-! ## A052770.P11261311533151966596

`n*A052753(A004273(n)-n)`
-/

namespace A052770.P11261311533151966596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052753 (A004273 n - (n : ℤ)).toNat

end

end A052770.P11261311533151966596

/-! ## A052770.P13615681667351333988

`A052790(n+1)/(n+1)`
-/

namespace A052770.P13615681667351333988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052790 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052770.P13615681667351333988

/-! ## A052770.P11254126679887591657

`n*A225479(A077169(n)-1)`
-/

namespace A052770.P11254126679887591657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A225479 (A077169 n - 1).toNat

end

end A052770.P11254126679887591657

/-!
# A052771: Expansion of e.g.f. x^3*exp(x)^2.

The programs for A052771, the canonical program `A052771.P2278556763596737104` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052771 has offset 0).

The definition of A052771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052771.P13322723225414998489

`n*(n-1)*(n-2)/8*2^n`
-/

namespace A052771.P13322723225414998489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) : ℚ) / 8 * (2 ^ n : ℚ)

end

end A052771.P13322723225414998489

namespace A052771

/-- `n*(n-1)*(n-2)/8*2^n` -/
def P13322723225414998489.Spec : Prop :=
  ∀ n, P13322723225414998489.a n = (A052771 n : ℚ)

theorem P13322723225414998489.correct : P13322723225414998489.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A052771, Nat.add_sub_cancel, A052771.P13322723225414998489.a, A052771.P2278556763596737104.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A052771, Nat.add_sub_cancel, A052771.P13322723225414998489.a, A052771.P2278556763596737104.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A052771

/-! ## A052771.P2278556763596737104

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052771

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P2278556763596737104.Spec : Prop :=
  ∀ n, P2278556763596737104.a n = A052771 n

theorem P2278556763596737104.correct : P2278556763596737104.Spec := by
  intro n
  simp only [A052771]

end A052771

/-! ## A052771.P10776760235801136989

`∑[∑[n*A268586(n)]]`
-/

namespace A052771.P10776760235801136989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A268586 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052771.P10776760235801136989

namespace A052771

/-- `∑[∑[n*A268586(n)]]` -/
def P10776760235801136989.Spec : Prop :=
  ∀ n, P10776760235801136989.a n = A052771 n

end A052771

/-! ## A052771.P10076910144512768140

`floor((n-2)*A001815(n)/2)`
-/

namespace A052771.P10076910144512768140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℚ) * ((A001815 n : ℚ) / 2)⌋

end

end A052771.P10076910144512768140

namespace A052771

/-- `floor((n-2)*A001815(n)/2)` -/
def P10076910144512768140.Spec : Prop :=
  ∀ n, P10076910144512768140.a n = A052771 n

end A052771

/-! ## A052771.P1889218665828226515

`A058645(n)-A084857(n)`
-/

namespace A052771.P1889218665828226515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058645 n - A084857 n

end

end A052771.P1889218665828226515

namespace A052771

/-- `A058645(n)-A084857(n)` -/
def P1889218665828226515.Spec : Prop :=
  ∀ n, P1889218665828226515.a n = A052771 n

end A052771

/-! ## A052771.P10076380633700439004

`A052796(n+1)/(n+1)`
-/

namespace A052771.P10076380633700439004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052796 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052771.P10076380633700439004

namespace A052771

/-- `A052796(n+1)/(n+1)` -/
def P10076380633700439004.Spec : Prop :=
  ∀ n, P10076380633700439004.a n = (A052771 n : ℚ)

end A052771

/-!
# A052772: Number of rooted identity trees with n nodes and 4-colored non-root nodes.

The programs for A052772, there is no canonical definition to state claims against.
-/

/-! ## A052772.P10623242980533678500

`A255517(A052905(n+2))`
-/

namespace A052772.P10623242980533678500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A052905 (n + 2)).toNat

end

end A052772.P10623242980533678500

/-! ## A052772.P3275313899086664373

`A255517(eq[4, A025581(n)])`
-/

namespace A052772.P3275313899086664373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052772.P3275313899086664373

/-! ## A052772.P5347118910483926982

`A255517(A056000(n+1)+5)`
-/

namespace A052772.P5347118910483926982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A056000 (n + 1) + 5).toNat

end

end A052772.P5347118910483926982

/-! ## A052772.P13985784389453951406

`A255517(Δ[A023545(n+1)]-1)`
-/

namespace A052772.P13985784389453951406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (f1 (n + 1) - f1 n - 1).toNat

end

end A052772.P13985784389453951406

/-! ## A052772.P14548078560384503653

`A255517(4*n+9+A008805(2*n))`
-/

namespace A052772.P14548078560384503653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 ((4 * n + 9 : ℤ) + A008805 (2 * n)).toNat

end

end A052772.P14548078560384503653

/-! ## A052772.P2780671281161101547

`record[A255517(A052905(A008611(n)))]`
-/

namespace A052772.P2780671281161101547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A052905 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052772.P2780671281161101547

/-! ## A052772.P11506986999945676108

`record[A255517(A052905(A008612(n)))]`
-/

namespace A052772.P11506986999945676108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A052905 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052772.P11506986999945676108

/-! ## A052772.P6402261477977348027

`record[A255517(A052905(A028242(n)))]`
-/

namespace A052772.P6402261477977348027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A052905 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052772.P6402261477977348027

/-! ## A052772.P12907233758285413119

`record[A255517(A052905(A049581(n)))]`
-/

namespace A052772.P12907233758285413119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A052905 (A049581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052772.P12907233758285413119

/-! ## A052772.P16482648875453717324

`record[A255517(A052905(A103221(n)))]`
-/

namespace A052772.P16482648875453717324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A052905 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052772.P16482648875453717324

/-!
# A052773: A simple grammar.

The programs for A052773, there is no canonical definition to state claims against.
-/

/-! ## A052773.P12734204836428207139

`A340814(∑[n+3]+n+3)`
-/

namespace A052773.P12734204836428207139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340814 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A052773.P12734204836428207139

/-! ## A052773.P2884283555425331254

`A008620(∑[record[A007440(n+3)]])`
-/

namespace A052773.P2884283555425331254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007440 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052773.P2884283555425331254

/-!
# A052774: a(n) = (4*n+1)^(n-1).

The programs for A052774, the canonical program `A052774.P5191430857305626453` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052774 has offset 0).

The definition of A052774 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A052774.anchor (n : ℕ) : (A052774 n : ℚ) = (4 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A052.A052774`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052774.P5191430857305626453

`(4*n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052774

/-- `(4*n+1)^(n-1)` -/
def P5191430857305626453.Spec : Prop :=
  ∀ n, P5191430857305626453.a n = (A052774 n : ℚ)

end A052774

/-! ## A052774.P15682534231579346155

`floor(or(1, 4*n)^(n-1))`
-/

namespace A052774.P15682534231579346155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (4 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052774.P15682534231579346155

namespace A052774

/-- `floor(or(1, 4*n)^(n-1))` -/
def P15682534231579346155.Spec : Prop :=
  ∀ n, P15682534231579346155.a n = A052774 n

end A052774

/-! ## A052774.P5699807480169825461

`ceil(or(1, 4*n)^(n-1))`
-/

namespace A052774.P5699807480169825461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (4 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A052774.P5699807480169825461

namespace A052774

/-- `ceil(or(1, 4*n)^(n-1))` -/
def P5699807480169825461.Spec : Prop :=
  ∀ n, P5699807480169825461.a n = A052774 n

end A052774

/-! ## A052774.P493220424930704244

`floor(xor(1, 4*n)^(n-1))`
-/

namespace A052774.P493220424930704244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (4 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052774.P493220424930704244

namespace A052774

/-- `floor(xor(1, 4*n)^(n-1))` -/
def P493220424930704244.Spec : Prop :=
  ∀ n, P493220424930704244.a n = A052774 n

end A052774

/-! ## A052774.P13608551018036103365

`round(or(1, 4*n)^(n-1))`
-/

namespace A052774.P13608551018036103365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (4 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A052774.P13608551018036103365

namespace A052774

/-- `round(or(1, 4*n)^(n-1))` -/
def P13608551018036103365.Spec : Prop :=
  ∀ n, P13608551018036103365.a n = A052774 n

end A052774

/-!
# A052775: G.f. A(x) satisfies: A(x) = exp( Sum_{k>=1} (-1)^(k+1) * A(x^k)^4 * x^k / k ).

The programs for A052775, there is no canonical definition to state claims against.
-/

/-! ## A052775.P7387173349974276470

`A008621((∑[(n+3)!]+2)/8-A008619(3*n+1))`
-/

namespace A052775.P7387173349974276470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) / 8 - (A008619 (3 * n + 1) : ℚ))).toNat

end

end A052775.P7387173349974276470

/-! ## A052775.P9094652240919664020

`A213231(n)+A089858(A153008(n))`
-/

namespace A052775.P9094652240919664020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213231 n + A089858 (A153008 n).toNat

end

end A052775.P9094652240919664020

/-!
# A052776: a(n) = 4!*n*Stirling2(n-1,4).

The programs for A052776, the canonical program `A052776.P17031965558761558606` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052776 has offset 0).

The definition of A052776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052776.P17031965558761558606

`n*A056455(comp[2*n+5]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A052776

/-- `n*A056455(comp[2*n+5]+1)` -/
def P17031965558761558606.Spec : Prop :=
  ∀ n, P17031965558761558606.a n = A052776 n

theorem P17031965558761558606.correct : P17031965558761558606.Spec := by
  intro n
  simp only [A052776]

end A052776

/-! ## A052776.P5001417537720330155

`A056455(A004281(n))*A233583(n+1)`
-/

namespace A052776.P5001417537720330155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056455 (A004281 n).toNat * A233583 (n + 1)

end

end A052776.P5001417537720330155

namespace A052776

/-- `A056455(A004281(n))*A233583(n+1)` -/
def P5001417537720330155.Spec : Prop :=
  ∀ n, P5001417537720330155.a n = A052776 n

end A052776

/-! ## A052776.P15553976409823961012

`A056455(A092535(n))*A233583(n+1)`
-/

namespace A052776.P15553976409823961012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056455 (A092535 n).toNat * A233583 (n + 1)

end

end A052776.P15553976409823961012

namespace A052776

/-- `A056455(A092535(n))*A233583(n+1)` -/
def P15553976409823961012.Spec : Prop :=
  ∀ n, P15553976409823961012.a n = A052776 n

end A052776

/-! ## A052776.P17146444538439290420

`A056455(A004278(n+1))*A233583(n+1)`
-/

namespace A052776.P17146444538439290420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056455 (A004278 (n + 1)).toNat * A233583 (n + 1)

end

end A052776.P17146444538439290420

namespace A052776

/-- `A056455(A004278(n+1))*A233583(n+1)` -/
def P17146444538439290420.Spec : Prop :=
  ∀ n, P17146444538439290420.a n = A052776 n

end A052776

/-! ## A052776.P9638410946732885615

`A052792(n+1)/(n+1)`
-/

namespace A052776.P9638410946732885615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052792 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052776.P9638410946732885615

namespace A052776

/-- `A052792(n+1)/(n+1)` -/
def P9638410946732885615.Spec : Prop :=
  ∀ n, P9638410946732885615.a n = (A052776 n : ℚ)

end A052776

/-!
# A052777: E.g.f.: x^2*(exp(x)-1)^3.

The programs for A052777, the canonical program `A052777.P1349421382293424451` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052777 has offset 0).

The definition of A052777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052777.P1349421382293424451

`n*A052761(abs(1-n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A052777

/-- `n*A052761(abs(1-n))` -/
def P1349421382293424451.Spec : Prop :=
  ∀ n, P1349421382293424451.a n = A052777 n

theorem P1349421382293424451.correct : P1349421382293424451.Spec := by
  intro n
  simp only [A052777]

end A052777

/-! ## A052777.P14735745095935646752

`3*n*A004275(n)*A000392(A289207(n))`
-/

namespace A052777.P14735745095935646752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A004275 n) * A000392 (A289207 n).toNat

end

end A052777.P14735745095935646752

namespace A052777

/-- `3*n*A004275(n)*A000392(A289207(n))` -/
def P14735745095935646752.Spec : Prop :=
  ∀ n, P14735745095935646752.a n = A052777 n

end A052777

/-! ## A052777.P10742948268865349650

`A007590(A163985(n))*A094033(A289207(n))`
-/

namespace A052777.P10742948268865349650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A163985 n).toNat * A094033 (A289207 n).toNat

end

end A052777.P10742948268865349650

namespace A052777

/-- `A007590(A163985(n))*A094033(A289207(n))` -/
def P10742948268865349650.Spec : Prop :=
  ∀ n, P10742948268865349650.a n = A052777 n

end A052777

/-! ## A052777.P6220720884965531511

`A052784(n+1)/(n+1)`
-/

namespace A052777.P6220720884965531511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052784 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052777.P6220720884965531511

namespace A052777

/-- `A052784(n+1)/(n+1)` -/
def P6220720884965531511.Spec : Prop :=
  ∀ n, P6220720884965531511.a n = (A052777 n : ℚ)

end A052777

/-! ## A052777.P3135892285662831539

`A392828(n)%A007089(A157135(n))`
-/

namespace A052777.P3135892285662831539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392828 n) (A007089 (A157135 n).toNat)

end

end A052777.P3135892285662831539

namespace A052777

/-- `A392828(n)%A007089(A157135(n))` -/
def P3135892285662831539.Spec : Prop :=
  ∀ n, P3135892285662831539.a n = A052777 n

end A052777

/-!
# A052778: E.g.f.: x^4*log(-1/(-1+x)).

The programs for A052778, there is no canonical definition to state claims against.
-/

/-! ## A052778.P15192957625654980979

`n*A052759(abs(1-n))`
-/

namespace A052778.P15192957625654980979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052759 |1 - (n : ℤ)|.toNat

end

end A052778.P15192957625654980979

/-! ## A052778.P4387286039547540719

`(n²-n)*A052747(floor(n-atan(n)))`
-/

namespace A052778.P4387286039547540719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A052747 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A052778.P4387286039547540719

/-! ## A052778.P3949642119041519692

`A052759(A134478(C(n, 2)))*n`
-/

namespace A052778.P3949642119041519692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052759 (A134478 (Nat.choose n 2)).toNat * (n : ℤ)

end

end A052778.P3949642119041519692

/-! ## A052778.P6154693103005659118

`A052759(floor(n+1-atan(n)))*A254667(n)`
-/

namespace A052778.P6154693103005659118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052759 ⌊(n + 1 : ℝ) - Real.arctan (n : ℝ)⌋.toNat * A254667 n

end

end A052778.P6154693103005659118

/-! ## A052778.P7213209391098810164

`A052794(n+1)/(n+1)`
-/

namespace A052778.P7213209391098810164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052794 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052778.P7213209391098810164

/-!
# A052779: Expansion of e.g.f.: (log(1-x))^6.

The programs for A052779, there is no canonical definition to state claims against.
-/

/-! ## A052779.P7882492520226262790

`∑{e}[6^n, A305626(#)]`
-/

namespace A052779.P7882492520226262790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A305626 (Nat.factorization (f1 n) p)

end

end A052779.P7882492520226262790

/-! ## A052779.P12102166801615342882

`n!*A037801(n!+1)`
-/

namespace A052779.P12102166801615342882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A037801 (Nat.factorial n + 1)

end

end A052779.P12102166801615342882

/-! ## A052779.P6085310720388857138

`A381771(A052784(n))`
-/

namespace A052779.P6085310720388857138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381771 (A052784 n).toNat

end

end A052779.P6085310720388857138

/-! ## A052779.P5285823249547897118

`A340135(A147355(n+2))`
-/

namespace A052779.P5285823249547897118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340135 (A147355 (n + 2)).toNat

end

end A052779.P5285823249547897118

/-!
# A052780: Expansion of e.g.f. x^2*exp(4*x).

The programs for A052780, the canonical program `A052780.P9200570379839772737` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052780 has offset 0).

The definition of A052780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052780.P9200570379839772737

`4^(n-2)*n*(n-1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052780

/-- `4^(n-2)*n*(n-1)` -/
def P9200570379839772737.Spec : Prop :=
  ∀ n, P9200570379839772737.a n = (A052780 n : ℚ)

end A052780

/-! ## A052780.P3024287271961849226

`A011782(n)²*C(n, 2)/2`
-/

namespace A052780.P3024287271961849226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n ^ 2 * (Nat.choose n 2 : ℤ) : ℚ) / 2

end

end A052780.P3024287271961849226

namespace A052780

/-- `A011782(n)²*C(n, 2)/2` -/
def P3024287271961849226.Spec : Prop :=
  ∀ n, P3024287271961849226.a n = (A052780 n : ℚ)

end A052780

/-! ## A052780.P15905543667907392407

`floor(2^(n-2)*A001815(n))`
-/

namespace A052780.P15905543667907392407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A001815 n : ℚ)⌋

end

end A052780.P15905543667907392407

namespace A052780

/-- `floor(2^(n-2)*A001815(n))` -/
def P15905543667907392407.Spec : Prop :=
  ∀ n, P15905543667907392407.a n = A052780 n

end A052780

/-! ## A052780.P7473108768009109405

`ceil(C(n, 2)/8*A000079(n)²)`
-/

namespace A052780.P7473108768009109405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 8 * (A000079 n ^ 2 : ℚ)⌉

end

end A052780.P7473108768009109405

namespace A052780

/-- `ceil(C(n, 2)/8*A000079(n)²)` -/
def P7473108768009109405.Spec : Prop :=
  ∀ n, P7473108768009109405.a n = A052780 n

end A052780

/-! ## A052780.P6139014370013016622

`A001787(n)*A097067(n)/2`
-/

namespace A052780.P6139014370013016622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 n * A097067 n : ℚ) / 2

end

end A052780.P6139014370013016622

namespace A052780

/-- `A001787(n)*A097067(n)/2` -/
def P6139014370013016622.Spec : Prop :=
  ∀ n, P6139014370013016622.a n = (A052780 n : ℚ)

end A052780

/-! ## A052780.P12519975905917281551

`A001787(n)*A139756(n)/2`
-/

namespace A052780.P12519975905917281551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 n * A139756 n : ℚ) / 2

end

end A052780.P12519975905917281551

namespace A052780

/-- `A001787(n)*A139756(n)/2` -/
def P12519975905917281551.Spec : Prop :=
  ∀ n, P12519975905917281551.a n = (A052780 n : ℚ)

end A052780

/-! ## A052780.P1417322503457117894

`abs(2*A097067(n)*A168150(n))`
-/

namespace A052780.P1417322503457117894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A097067 n * A168150 n)|

end

end A052780.P1417322503457117894

namespace A052780

/-- `abs(2*A097067(n)*A168150(n))` -/
def P1417322503457117894.Spec : Prop :=
  ∀ n, P1417322503457117894.a n = A052780 n

end A052780

/-! ## A052780.P215624503191080746

`abs(2*A139756(n)*A168150(n))`
-/

namespace A052780.P215624503191080746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A139756 n * A168150 n)|

end

end A052780.P215624503191080746

namespace A052780

/-- `abs(2*A139756(n)*A168150(n))` -/
def P215624503191080746.Spec : Prop :=
  ∀ n, P215624503191080746.a n = A052780 n

end A052780

/-! ## A052780.P955118573148126871

`A129532(n)/3`
-/

namespace A052780.P955118573148126871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129532 n : ℚ) / 3

end

end A052780.P955118573148126871

namespace A052780

/-- `A129532(n)/3` -/
def P955118573148126871.Spec : Prop :=
  ∀ n, P955118573148126871.a n = (A052780 n : ℚ)

end A052780

/-! ## A052780.P14854206848929196653

`(n-1)*A002697(n)/4`
-/

namespace A052780.P14854206848929196653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * A002697 n : ℚ) / 4

end

end A052780.P14854206848929196653

namespace A052780

/-- `(n-1)*A002697(n)/4` -/
def P14854206848929196653.Spec : Prop :=
  ∀ n, P14854206848929196653.a n = (A052780 n : ℚ)

end A052780

/-! ## A052780.P4979104420082298002

`A011782(n)*A100381(n)/4`
-/

namespace A052780.P4979104420082298002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n * A100381 n : ℚ) / 4

end

end A052780.P4979104420082298002

namespace A052780

/-- `A011782(n)*A100381(n)/4` -/
def P4979104420082298002.Spec : Prop :=
  ∀ n, P4979104420082298002.a n = (A052780 n : ℚ)

end A052780

/-! ## A052780.P7925434223876201994

`A000302(n)*A161680(n)/8`
-/

namespace A052780.P7925434223876201994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n * A161680 n : ℚ) / 8

end

end A052780.P7925434223876201994

namespace A052780

/-- `A000302(n)*A161680(n)/8` -/
def P7925434223876201994.Spec : Prop :=
  ∀ n, P7925434223876201994.a n = (A052780 n : ℚ)

end A052780

/-! ## A052780.P2971586238241129006

`4*n*a(n-1)/(n-2)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A052780.P2971586238241129006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  4 * ((n : ℚ) * a (n - 1)) / ((n : ℤ) - 2 : ℚ)

end

end A052780.P2971586238241129006

namespace A052780

/-- `4*n*a(n-1)/(n-2)` -/
def P2971586238241129006.Spec : Prop :=
  ∀ n, P2971586238241129006.a n = (A052780 n : ℚ)

end A052780

/-!
# A052781: G.f. A(x) satisfies: A(x) = exp( Sum_{k>=1} A(x^k)^5 * x^k / k ).

The programs for A052781, there is no canonical definition to state claims against.
-/

/-! ## A052781.P7767083959854117335

`A340814(A052905(n+2))`
-/

namespace A052781.P7767083959854117335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340814 (A052905 (n + 2)).toNat

end

end A052781.P7767083959854117335

/-! ## A052781.P3851034542799198610

`A340814(A056115(n)+10)`
-/

namespace A052781.P3851034542799198610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340814 (A056115 n + 10).toNat

end

end A052781.P3851034542799198610

/-! ## A052781.P10651196163818400157

`A340814(eq[4, A025581(n)])`
-/

namespace A052781.P10651196163818400157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052781.P10651196163818400157

/-! ## A052781.P8427596278748899655

`A340814(Δ[A264443(n)]-1)`
-/

namespace A052781.P8427596278748899655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340814 (f1 (n + 1) - f1 n - 1).toNat

end

end A052781.P8427596278748899655

/-! ## A052781.P1884302815777651469

`A340814(eq[5, A004736(n+1)])`
-/

namespace A052781.P1884302815777651469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052781.P1884302815777651469

/-! ## A052781.P6463160020992508500

`A340814(record[A052905(abs(2-n))])`
-/

namespace A052781.P6463160020992508500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052781.P6463160020992508500

/-! ## A052781.P4037784395634620528

`A340814(2*n+Δ[A008778(n)]+6)`
-/

namespace A052781.P4037784395634620528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340814 ((2 * n : ℤ) + (f1 (n + 1) - f1 n + 6)).toNat

end

end A052781.P4037784395634620528

/-! ## A052781.P13088235716372208276

`A340814(2*n+A000124(n+3)+3)`
-/

namespace A052781.P13088235716372208276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340814 ((2 * n : ℤ) + (A000124 (n + 3) + 3)).toNat

end

end A052781.P13088235716372208276

/-!
# A052782: a(n) = (5*n+1)^(n-1).

The programs for A052782, the canonical program `A052782.P2828036006054685889` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052782 has offset 0).

The definition of A052782 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A052782.anchor (n : ℕ) : (A052782 n : ℚ) = (5 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A052.A052782`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052782.P2828036006054685889

`(5*n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052782

/-- `(5*n+1)^(n-1)` -/
def P2828036006054685889.Spec : Prop :=
  ∀ n, P2828036006054685889.a n = (A052782 n : ℚ)

end A052782

/-! ## A052782.P2964689678780402683

`floor(A016861(n)^(n-1))`
-/

namespace A052782.P2964689678780402683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016861 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052782.P2964689678780402683

namespace A052782

/-- `floor(A016861(n)^(n-1))` -/
def P2964689678780402683.Spec : Prop :=
  ∀ n, P2964689678780402683.a n = A052782 n

end A052782

/-! ## A052782.P3595852001079537976

`abs(Δ[A000566(n)]^(n-1))`
-/

namespace A052782.P3595852001079537976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)|

end

end A052782.P3595852001079537976

namespace A052782

/-- `abs(Δ[A000566(n)]^(n-1))` -/
def P3595852001079537976.Spec : Prop :=
  ∀ n, P3595852001079537976.a n = (A052782 n : ℚ)

end A052782

/-! ## A052782.P2695766917639228564

`floor((A008587(n)+1)^(n-1))`
-/

namespace A052782.P2695766917639228564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008587 n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052782.P2695766917639228564

namespace A052782

/-- `floor((A008587(n)+1)^(n-1))` -/
def P2695766917639228564.Spec : Prop :=
  ∀ n, P2695766917639228564.a n = A052782 n

end A052782

/-! ## A052782.P8378455578535731213

`ceil((A016873(n)-1)^(n-1))`
-/

namespace A052782.P8378455578535731213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016873 n - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A052782.P8378455578535731213

namespace A052782

/-- `ceil((A016873(n)-1)^(n-1))` -/
def P8378455578535731213.Spec : Prop :=
  ∀ n, P8378455578535731213.a n = A052782 n

end A052782

/-!
# A052783: Expansion of e.g.f. x*log(-1/(-1+x))^5.

The programs for A052783, there is no canonical definition to state claims against.
-/

/-! ## A052783.P1166616720810822546

`n*A052767(abs(1-n))`
-/

namespace A052783.P1166616720810822546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052767 |1 - (n : ℤ)|.toNat

end

end A052783.P1166616720810822546

/-! ## A052783.P1786521241480508975

`A106618(A029573(n))*A256469(n+1)`
-/

namespace A052783.P1786521241480508975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A029573 n).toNat * A256469 (n + 1)

end

end A052783.P1786521241480508975

/-! ## A052783.P17863958943675901377

`A008586(A058835(n))`
-/

namespace A052783.P17863958943675901377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A058835 n).toNat

end

end A052783.P17863958943675901377

/-! ## A052783.P14551273844842718675

`A052785(A073789(n))`
-/

namespace A052783.P14551273844842718675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052785 (A073789 n).toNat

end

end A052783.P14551273844842718675

/-!
# A052784: Expansion of e.g.f.: x^3*(exp(x)-1)^3.

The programs for A052784, the canonical program `A052784.P7354656700825448306` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052784 has offset 0).

The definition of A052784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052784.P7354656700825448306

`n*A052777(abs(1-n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A052784

/-- `n*A052777(abs(1-n))` -/
def P7354656700825448306.Spec : Prop :=
  ∀ n, P7354656700825448306.a n = A052784 n

theorem P7354656700825448306.correct : P7354656700825448306.Spec := by
  intro n
  simp only [A052784]

end A052784

/-! ## A052784.P16496502429885152946

`A052761(A289207(n))*(n²-n)`
-/

namespace A052784.P16496502429885152946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052761 (A289207 n).toNat * ((n ^ 2 : ℤ) - (n : ℤ))

end

end A052784.P16496502429885152946

namespace A052784

/-- `A052761(A289207(n))*(n²-n)` -/
def P16496502429885152946.Spec : Prop :=
  ∀ n, P16496502429885152946.a n = A052784 n

end A052784

/-! ## A052784.P9212284337039519004

`A025459(A032299(n))*A156832(n+1)`
-/

namespace A052784.P9212284337039519004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A032299 n).toNat * A156832 (n + 1)

end

end A052784.P9212284337039519004

namespace A052784

/-- `A025459(A032299(n))*A156832(n+1)` -/
def P9212284337039519004.Spec : Prop :=
  ∀ n, P9212284337039519004.a n = A052784 n

end A052784

/-! ## A052784.P6749661445368876774

`A339628(A191024(n+1))`
-/

namespace A052784.P6749661445368876774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339628 (A191024 (n + 1)).toNat

end

end A052784.P6749661445368876774

namespace A052784

/-- `A339628(A191024(n+1))` -/
def P6749661445368876774.Spec : Prop :=
  ∀ n, P6749661445368876774.a n = A052784 n

end A052784

/-!
# A052785: a(n) = 5!*n*Stirling2(n-1, 5).

The programs for A052785, there is no canonical definition to state claims against.
-/

/-! ## A052785.P1435182386770741633

`n*A056491(abs(2*n-3))`
-/

namespace A052785.P1435182386770741633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056491 |(2 * n : ℤ) - 3|.toNat

end

end A052785.P1435182386770741633

/-! ## A052785.P11887550374541330113

`n*A056456(A004281(n))`
-/

namespace A052785.P11887550374541330113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056456 (A004281 n).toNat

end

end A052785.P11887550374541330113

/-! ## A052785.P7132317134776538141

`n*A056456(A092535(n))`
-/

namespace A052785.P7132317134776538141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056456 (A092535 n).toNat

end

end A052785.P7132317134776538141

/-! ## A052785.P8539432927614735814

`n*A056456(A004278(n+1))`
-/

namespace A052785.P8539432927614735814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056456 (A004278 (n + 1)).toNat

end

end A052785.P8539432927614735814

/-! ## A052785.P3536134305399995500

`A056491(A004281(n))*A233583(n+1)`
-/

namespace A052785.P3536134305399995500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056491 (A004281 n).toNat * A233583 (n + 1)

end

end A052785.P3536134305399995500

/-!
# A052786: Expansion of e.g.f.: -x^3*(log(1-x))^3.

The programs for A052786, there is no canonical definition to state claims against.
-/

/-! ## A052786.P11157203805104443770

`n*A052765(abs(1-n))`
-/

namespace A052786.P11157203805104443770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052765 |1 - (n : ℤ)|.toNat

end

end A052786.P11157203805104443770

/-! ## A052786.P17539349158950825971

`60*A057355(A353881(n))`
-/

namespace A052786.P17539349158950825971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A057355 (A353881 n).toNat

end

end A052786.P17539349158950825971

/-!
# A052787: Product of 5 consecutive integers.

The programs for A052787, the canonical program `A052787.P3134947303530466889` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052787 has offset 0).

The definition of A052787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052787.P3134947303530466889

`120*C(n, 5)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052787

/-- `120*C(n, 5)` -/
def P3134947303530466889.Spec : Prop :=
  ∀ n, (P3134947303530466889.a n : ℤ) = A052787 n

theorem P3134947303530466889.correct : P3134947303530466889.Spec := by
  intro n
  simp only [A052787]

end A052787

/-! ## A052787.P16018587732295846674

`n*(n-1)*(n-2)*(n-3)*(n-4)`
-/

namespace A052787.P16018587732295846674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((n : ℤ) - 3) * ((n : ℤ) - 4)

end

end A052787.P16018587732295846674

namespace A052787

/-- `n*(n-1)*(n-2)*(n-3)*(n-4)` -/
def P16018587732295846674.Spec : Prop :=
  ∀ n, P16018587732295846674.a n = A052787 n

theorem P16018587732295846674.correct : P16018587732295846674.Spec := by
  intro n
  simp only [A052787, Nat.add_sub_cancel, A052787.P16018587732295846674.a, A052787.P3134947303530466889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052787

/-! ## A052787.P166691594027053274

`a(n-1)+5*A052762(n-1)` with `a(0)=0`
-/

namespace A052787.P166691594027053274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 5 * A052762 (n - 1)

end

end A052787.P166691594027053274

namespace A052787

/-- `a(n-1)+5*A052762(n-1)` -/
def P166691594027053274.Spec : Prop :=
  ∀ n, P166691594027053274.a n = A052787 n

end A052787

/-! ## A052787.P6961041227643923518

`A001095(n)-n`
-/

namespace A052787.P6961041227643923518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001095 n - (n : ℤ)

end

end A052787.P6961041227643923518

namespace A052787

/-- `A001095(n)-n` -/
def P6961041227643923518.Spec : Prop :=
  ∀ n, P6961041227643923518.a n = A052787 n

theorem P6961041227643923518.correct : P6961041227643923518.Spec := by
  intro n
  simp only [A052787, Nat.add_sub_cancel, A052787.P6961041227643923518.a, A052787.P3134947303530466889.a, A001095, A001095.P5999656701398893294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052787

/-! ## A052787.P3047842015700670009

`A001489(n)+A001095(n)`
-/

namespace A052787.P3047842015700670009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A001095 n

end

end A052787.P3047842015700670009

namespace A052787

/-- `A001489(n)+A001095(n)` -/
def P3047842015700670009.Spec : Prop :=
  ∀ n, P3047842015700670009.a n = A052787 n

theorem P3047842015700670009.correct : P3047842015700670009.Spec := by
  intro n
  simp only [A052787, Nat.add_sub_cancel, A052787.P3047842015700670009.a, A052787.P3134947303530466889.a, A001095, A001095.P5999656701398893294.a, A001489, A001489.P15233530513763566776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052787

/-! ## A052787.P4216560656761273623

`gcd(A052800(n), A342073(n))`
-/

namespace A052787.P4216560656761273623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052800 n) (A342073 n)

end

end A052787.P4216560656761273623

namespace A052787

/-- `gcd(A052800(n), A342073(n))` -/
def P4216560656761273623.Spec : Prop :=
  ∀ n, (P4216560656761273623.a n : ℤ) = A052787 n

end A052787

/-! ## A052787.P17663331869866453299

`lcm(A007531(n)-A052762(n), A052762(n))`
-/

namespace A052787.P17663331869866453299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007531 n - A052762 n) (A052762 n)

end

end A052787.P17663331869866453299

namespace A052787

/-- `lcm(A007531(n)-A052762(n), A052762(n))` -/
def P17663331869866453299.Spec : Prop :=
  ∀ n, (P17663331869866453299.a n : ℤ) = A052787 n

end A052787

/-! ## A052787.P686829072392117227

`Δ[A053625(n)/6]`
-/

namespace A052787.P686829072392117227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053625 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052787.P686829072392117227

namespace A052787

/-- `Δ[A053625(n)/6]` -/
def P686829072392117227.Spec : Prop :=
  ∀ n, P686829072392117227.a n = (A052787 n : ℚ)

theorem P686829072392117227.correct : P686829072392117227.Spec := by
  intro n
  simp only [A052787, Nat.add_sub_cancel, A052787.P686829072392117227.f1, A052787.P686829072392117227.a, A052787.P3134947303530466889.a, A053625, A053625.P9911558398274709758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052787

/-! ## A052787.P14981085306525272313

`(Δ[A001096(n)]-1)/6`
-/

namespace A052787.P14981085306525272313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001096 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 6

end

end A052787.P14981085306525272313

namespace A052787

/-- `(Δ[A001096(n)]-1)/6` -/
def P14981085306525272313.Spec : Prop :=
  ∀ n, P14981085306525272313.a n = (A052787 n : ℚ)

theorem P14981085306525272313.correct : P14981085306525272313.Spec := by
  intro n
  simp only [A052787, Nat.add_sub_cancel, A052787.P14981085306525272313.f1, A052787.P14981085306525272313.a, A052787.P3134947303530466889.a, A001096, A001096.P17984634652378150633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052787

/-! ## A052787.P15155454057369598189

`A053625(n+1)/(n+1)`
-/

namespace A052787.P15155454057369598189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053625 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052787.P15155454057369598189

namespace A052787

/-- `A053625(n+1)/(n+1)` -/
def P15155454057369598189.Spec : Prop :=
  ∀ n, P15155454057369598189.a n = (A052787 n : ℚ)

theorem P15155454057369598189.correct : P15155454057369598189.Spec := by
  intro n
  simp only [A052787, Nat.add_sub_cancel, A052787.P15155454057369598189.a, A052787.P3134947303530466889.a, A053625, A053625.P9911558398274709758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052787

/-! ## A052787.P16020477309136862193

`A001096(n+1)/(n+1)-1`
-/

namespace A052787.P16020477309136862193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001096 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A052787.P16020477309136862193

namespace A052787

/-- `A001096(n+1)/(n+1)-1` -/
def P16020477309136862193.Spec : Prop :=
  ∀ n, P16020477309136862193.a n = (A052787 n : ℚ)

theorem P16020477309136862193.correct : P16020477309136862193.Spec := by
  intro n
  simp only [A052787, Nat.add_sub_cancel, A052787.P16020477309136862193.a, A052787.P3134947303530466889.a, A001096, A001096.P17984634652378150633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052787

/-! ## A052787.P12989443471574444330

`A159083(n+2)/((n+1)*(n+2))`
-/

namespace A052787.P12989443471574444330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159083 (n + 2) : ℚ) / ((n + 1) * (n + 2) : ℚ)

end

end A052787.P12989443471574444330

namespace A052787

/-- `A159083(n+2)/((n+1)*(n+2))` -/
def P12989443471574444330.Spec : Prop :=
  ∀ n, P12989443471574444330.a n = (A052787 n : ℚ)

theorem P12989443471574444330.correct : P12989443471574444330.Spec := by
  intro n
  simp only [A052787, Nat.add_sub_cancel, A052787.P12989443471574444330.a, A052787.P3134947303530466889.a, A159083, A159083.P8664816101168653743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052787

/-!
# A052788: Number of rooted trees with n nodes and 5-colored non-root nodes.

The programs for A052788, there is no canonical definition to state claims against.
-/

/-! ## A052788.P16330862866780683843

`record[A242249(A055999(n))]`
-/

namespace A052788.P16330862866780683843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052788.P16330862866780683843

/-! ## A052788.P15956899129934070106

`A242249(A055999(n+3))`
-/

namespace A052788.P15956899129934070106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A055999 (n + 3)).toNat

end

end A052788.P15956899129934070106

/-! ## A052788.P3773506921439126017

`A242249(A134227(n+4))`
-/

namespace A052788.P3773506921439126017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A134227 (n + 4)).toNat

end

end A052788.P3773506921439126017

/-! ## A052788.P5836099193799005555

`A242249(Δ[A026054(n+3)])`
-/

namespace A052788.P5836099193799005555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (f1 (n + 1) - f1 n).toNat

end

end A052788.P5836099193799005555

/-! ## A052788.P17529189885612580613

`record[A242249(A052905(n)-1)]`
-/

namespace A052788.P17529189885612580613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052788.P17529189885612580613

/-! ## A052788.P8893712126834580291

`A242249(A052905(n+3)-1)`
-/

namespace A052788.P8893712126834580291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A052905 (n + 3) - 1).toNat

end

end A052788.P8893712126834580291

/-! ## A052788.P2381987744254245992

`A242249(A034856(n+5)-4)`
-/

namespace A052788.P2381987744254245992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A034856 (n + 5) - 4).toNat

end

end A052788.P2381987744254245992

/-! ## A052788.P11760819043313904628

`A242249(eq[6, A004736(n+1)])`
-/

namespace A052788.P11760819043313904628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052788.P11760819043313904628

/-! ## A052788.P12247406677034026728

`record[A242249(A046691(n+1)-2)]`
-/

namespace A052788.P12247406677034026728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A046691 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052788.P12247406677034026728

/-! ## A052788.P18396257795718382532

`A242249(n+1+A000096(n+4))`
-/

namespace A052788.P18396257795718382532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 ((n + 1 : ℤ) + A000096 (n + 4)).toNat

end

end A052788.P18396257795718382532

/-!
# A052789: Expansion of e.g.f. -(1/5)*LambertW(-5*x).

The programs for A052789, there is no canonical definition to state claims against.
-/

/-! ## A052789.P4901013882770079955

`(5*n)^abs(1-n)`
-/

namespace A052789.P4901013882770079955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * n : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

end

end A052789.P4901013882770079955

/-! ## A052789.P9030961971354685569

`floor(A168101(n)^(n-1))`
-/

namespace A052789.P9030961971354685569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168101 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052789.P9030961971354685569

/-! ## A052789.P18224301416852362262

`floor((5*A028310(n))^(n-1))`
-/

namespace A052789.P18224301416852362262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * A028310 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052789.P18224301416852362262

/-! ## A052789.P10026183342141188499

`∏{d}[n-1, (5*n)^A000010(#)]`
-/

namespace A052789.P10026183342141188499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (5 * n : ℚ) ^ (A000010 d : ℤ)

end

end A052789.P10026183342141188499

/-! ## A052789.P18042462543940996386

`floor((2*A004277(n)+n)^(n-1))`
-/

namespace A052789.P18042462543940996386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A004277 n + (n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052789.P18042462543940996386

/-!
# A052790: Expansion of e.g.f.: x^2*log(1-x)^4.

The programs for A052790, there is no canonical definition to state claims against.
-/

/-! ## A052790.P2000479583384810696

`n*A052770(abs(1-n))`
-/

namespace A052790.P2000479583384810696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052770 |1 - (n : ℤ)|.toNat

end

end A052790.P2000479583384810696

/-! ## A052790.P16478938802815374944

`A008598(C(C(A326522(2*(n+1)), 2), 2))`
-/

namespace A052790.P16478938802815374944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (Nat.choose (Nat.choose (A326522 (2 * (n + 1))).toNat 2) 2)

end

end A052790.P16478938802815374944

/-!
# A052791: a(n) = 3^(n-3)*n*(n-1)*(n-2).

The programs for A052791, the canonical program `A052791.P6446172820630515016` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052791 has offset 0).

The definition of A052791 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A052791.anchor (n : ℕ) : (A052791 n : ℚ) = (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n : ℤ) - 2 : ℚ)` in `Proof.A052.A052791`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052791.P6446172820630515016

`3^(n-3)*n*(n-1)*(n-2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052791

/-- `3^(n-3)*n*(n-1)*(n-2)` -/
def P6446172820630515016.Spec : Prop :=
  ∀ n, P6446172820630515016.a n = (A052791 n : ℚ)

end A052791

/-! ## A052791.P12884485228288909623

`abs(2*C(n, 3)*floor((-3)^(n-2)))`
-/

namespace A052791.P12884485228288909623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.choose n 3 : ℤ) * ⌊(-3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋|

end

end A052791.P12884485228288909623

namespace A052791

/-- `abs(2*C(n, 3)*floor((-3)^(n-2)))` -/
def P12884485228288909623.Spec : Prop :=
  ∀ n, P12884485228288909623.a n = A052791 n

end A052791

/-! ## A052791.P1859700284700254866

`A003014(n)-A003013(n)`
-/

namespace A052791.P1859700284700254866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003014 n - A003013 n

end

end A052791.P1859700284700254866

namespace A052791

/-- `A003014(n)-A003013(n)` -/
def P1859700284700254866.Spec : Prop :=
  ∀ n, P1859700284700254866.a n = A052791 n

end A052791

/-! ## A052791.P8360353786509052948

`A383137(n)-A069996(n)`
-/

namespace A052791.P8360353786509052948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383137 n - A069996 n

end

end A052791.P8360353786509052948

namespace A052791

/-- `A383137(n)-A069996(n)` -/
def P8360353786509052948.Spec : Prop :=
  ∀ n, P8360353786509052948.a n = A052791 n

end A052791

/-! ## A052791.P3481661283594636232

`3*n*a(n-1)/(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=6`
-/

namespace A052791.P3481661283594636232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 6] fun n a =>
  3 * ((n : ℚ) * a (n - 1)) / ((n : ℤ) - 3 : ℚ)

end

end A052791.P3481661283594636232

namespace A052791

/-- `3*n*a(n-1)/(n-3)` -/
def P3481661283594636232.Spec : Prop :=
  ∀ n, P3481661283594636232.a n = (A052791 n : ℚ)

end A052791

/-!
# A052792: Expansion of e.g.f.: x^2*(exp(x)-1)^4.

The programs for A052792, the canonical program `A052792.P11520273071812812638` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052792 has offset 0).

The definition of A052792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052792.P11520273071812812638

`n*A052776(abs(1-n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A052792

/-- `n*A052776(abs(1-n))` -/
def P11520273071812812638.Spec : Prop :=
  ∀ n, P11520273071812812638.a n = A052792 n

theorem P11520273071812812638.correct : P11520273071812812638.Spec := by
  intro n
  simp only [A052792]

end A052792

/-! ## A052792.P16225378031596572171

`lcm(A034896(n), A070565(A052800(n)))`
-/

namespace A052792.P16225378031596572171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034896 n) (A070565 (A052800 n).toNat)

end

end A052792.P16225378031596572171

namespace A052792

/-- `lcm(A034896(n), A070565(A052800(n)))` -/
def P16225378031596572171.Spec : Prop :=
  ∀ n, (P16225378031596572171.a n : ℤ) = A052792 n

end A052792

/-! ## A052792.P1698937210964010109

`xor(A008586(A061135(n+1)), A052521(n))`
-/

namespace A052792.P1698937210964010109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008586 (A061135 (n + 1)).toNat) (A052521 n)

end

end A052792.P1698937210964010109

namespace A052792

/-- `xor(A008586(A061135(n+1)), A052521(n))` -/
def P1698937210964010109.Spec : Prop :=
  ∀ n, P1698937210964010109.a n = A052792 n

end A052792

/-!
# A052793: Expansion of e.g.f. x^4*exp(x)^2 - 2*x^4*exp(x) + x^4.

The programs for A052793, the canonical program `A052793.P3570053525797619001` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052793 has offset 0).

The definition of A052793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052793.P3570053525797619001

`n*A052769(abs(1-n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A052793

/-- `n*A052769(abs(1-n))` -/
def P3570053525797619001.Spec : Prop :=
  ∀ n, P3570053525797619001.a n = A052793 n

theorem P3570053525797619001.correct : P3570053525797619001.Spec := by
  intro n
  simp only [A052793]

end A052793

/-! ## A052793.P6058157976463915157

`A052760(A289207(n))*(n²-n)`
-/

namespace A052793.P6058157976463915157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052760 (A289207 n).toNat * ((n ^ 2 : ℤ) - (n : ℤ))

end

end A052793.P6058157976463915157

namespace A052793

/-- `A052760(A289207(n))*(n²-n)` -/
def P6058157976463915157.Spec : Prop :=
  ∀ n, P6058157976463915157.a n = A052793 n

end A052793

/-! ## A052793.P15134519473017022173

`A052796(n)-(A052768(n)+A052762(n))`
-/

namespace A052793.P15134519473017022173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052796 n - (A052768 n + A052762 n)

end

end A052793.P15134519473017022173

namespace A052793

/-- `A052796(n)-(A052768(n)+A052762(n))` -/
def P15134519473017022173.Spec : Prop :=
  ∀ n, P15134519473017022173.a n = A052793 n

end A052793

/-! ## A052793.P13321543412365397074

`A014682(A370989(n)-A371304(n))`
-/

namespace A052793.P13321543412365397074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A370989 n - A371304 n).toNat

end

end A052793.P13321543412365397074

namespace A052793

/-- `A014682(A370989(n)-A371304(n))` -/
def P13321543412365397074.Spec : Prop :=
  ∀ n, P13321543412365397074.a n = A052793 n

end A052793

/-! ## A052793.P10017724713308177175

`A004526(A293588(n))*A214990(n+1)`
-/

namespace A052793.P10017724713308177175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A293588 n).toNat * A214990 (n + 1)

end

end A052793.P10017724713308177175

namespace A052793

/-- `A004526(A293588(n))*A214990(n+1)` -/
def P10017724713308177175.Spec : Prop :=
  ∀ n, P10017724713308177175.a n = A052793 n

end A052793

/-!
# A052794: E.g.f.: -x^5*log(1-x).

The programs for A052794, there is no canonical definition to state claims against.
-/

/-! ## A052794.P145795368526498287

`n*A052778(abs(1-n))`
-/

namespace A052794.P145795368526498287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052778 |1 - (n : ℤ)|.toNat

end

end A052794.P145795368526498287

/-! ## A052794.P1424533648319650116

`(n²-n)*A052759(floor(n-atan(n)))`
-/

namespace A052794.P1424533648319650116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A052759 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A052794.P1424533648319650116

/-! ## A052794.P13662820475443735020

`A052778(n-A057427(n))*A233583(n+1)`
-/

namespace A052794.P13662820475443735020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052778 ((n : ℤ) - A057427 n).toNat * A233583 (n + 1)

end

end A052794.P13662820475443735020

/-! ## A052794.P3049409878062343981

`A052778(n-A158388(n))*A233583(n+1)`
-/

namespace A052794.P3049409878062343981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052778 ((n : ℤ) - A158388 n).toNat * A233583 (n + 1)

end

end A052794.P3049409878062343981

/-! ## A052794.P6024099711294838044

`A052778(A028310(n)-1)*A064680(A004277(n))`
-/

namespace A052794.P6024099711294838044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052778 (A028310 n - 1).toNat * A064680 (A004277 n).toNat

end

end A052794.P6024099711294838044

/-! ## A052794.P153190258733439396

`A052778(n-A057427(n))*A064680(A004277(n))`
-/

namespace A052794.P153190258733439396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052778 ((n : ℤ) - A057427 n).toNat * A064680 (A004277 n).toNat

end

end A052794.P153190258733439396

/-! ## A052794.P10043623105608572283

`A052778(n-A057427(n))*A321126(A027379(n))`
-/

namespace A052794.P10043623105608572283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052778 ((n : ℤ) - A057427 n).toNat * A321126 (A027379 n).toNat

end

end A052794.P10043623105608572283

/-!
# A052795: a(n) = (6*n)!/(5*n+1)!.

The programs for A052795, the canonical program `A052795.P17977277070724234113` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052795 has offset 0).

The definition of A052795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052795.P17977277070724234113

`A000142(n)*A002295(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A052795

/-- `A000142(n)*A002295(n)` -/
def P17977277070724234113.Spec : Prop :=
  ∀ n, P17977277070724234113.a n = A052795 n

theorem P17977277070724234113.correct : P17977277070724234113.Spec := by
  intro n
  simp only [A052795]

end A052795

/-! ## A052795.P12085456031319400224

`A118759(n)!*A002295(n)`
-/

namespace A052795.P12085456031319400224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A118759 n).toNat : ℤ) * A002295 n

end

end A052795.P12085456031319400224

namespace A052795

/-- `A118759(n)!*A002295(n)` -/
def P12085456031319400224.Spec : Prop :=
  ∀ n, P12085456031319400224.a n = A052795 n

end A052795

/-! ## A052795.P12851516092011374350

`∏[A028310(n)]*A002295(n)`
-/

namespace A052795.P12851516092011374350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A002295 n

end

end A052795.P12851516092011374350

namespace A052795

/-- `∏[A028310(n)]*A002295(n)` -/
def P12851516092011374350.Spec : Prop :=
  ∀ n, P12851516092011374350.a n = A052795 n

end A052795

/-! ## A052795.P12671218190473576043

`A002295(n)*A047920(A000217(n))`
-/

namespace A052795.P12671218190473576043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002295 n * A047920 (A000217 n).toNat

end

end A052795.P12671218190473576043

namespace A052795

/-- `A002295(n)*A047920(A000217(n))` -/
def P12671218190473576043.Spec : Prop :=
  ∀ n, P12671218190473576043.a n = A052795 n

end A052795

/-! ## A052795.P11021033676672520229

`A002295(n)*A094310(A161680(n)+1)`
-/

namespace A052795.P11021033676672520229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002295 n * A094310 (A161680 n + 1).toNat

end

end A052795.P11021033676672520229

namespace A052795

/-- `A002295(n)*A094310(A161680(n)+1)` -/
def P11021033676672520229.Spec : Prop :=
  ∀ n, P11021033676672520229.a n = A052795 n

end A052795

/-!
# A052796: Expansion of e.g.f. x^4*exp(x)^2.

The programs for A052796, the canonical program `A052796.P11169063799762455065` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052796 has offset 0).

The definition of A052796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052796.P11169063799762455065

`(n-3)*(n-2)*(n-1)*n*2^(n-4)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052796

/-- `(n-3)*(n-2)*(n-1)*n*2^(n-4)` -/
def P11169063799762455065.Spec : Prop :=
  ∀ n, P11169063799762455065.a n = (A052796 n : ℚ)

end A052796

/-! ## A052796.P5947537684497382014

`floor(3/2*C(n, 4)*A011782(n+1))`
-/

namespace A052796.P5947537684497382014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (Nat.choose n 4 : ℚ) * (A011782 (n + 1) : ℚ)⌋

end

end A052796.P5947537684497382014

namespace A052796

/-- `floor(3/2*C(n, 4)*A011782(n+1))` -/
def P5947537684497382014.Spec : Prop :=
  ∀ n, P5947537684497382014.a n = A052796 n

end A052796

/-! ## A052796.P2515597410502517525

`A213432(n)+11*A213432(n)`
-/

namespace A052796.P2515597410502517525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213432 n + 11 * A213432 n

end

end A052796.P2515597410502517525

namespace A052796

/-- `A213432(n)+11*A213432(n)` -/
def P2515597410502517525.Spec : Prop :=
  ∀ n, P2515597410502517525.a n = A052796 n

end A052796

/-! ## A052796.P12145530123059801198

`lcm(2, A000332(n)*A003945(n))`
-/

namespace A052796.P12145530123059801198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000332 n * A003945 n)

end

end A052796.P12145530123059801198

namespace A052796

/-- `lcm(2, A000332(n)*A003945(n))` -/
def P12145530123059801198.Spec : Prop :=
  ∀ n, (P12145530123059801198.a n : ℤ) = A052796 n

end A052796

/-! ## A052796.P7992700350964103168

`A000332(n)+A000332(n)*A055010(n)`
-/

namespace A052796.P7992700350964103168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + A000332 n * A055010 n

end

end A052796.P7992700350964103168

namespace A052796

/-- `A000332(n)+A000332(n)*A055010(n)` -/
def P7992700350964103168.Spec : Prop :=
  ∀ n, P7992700350964103168.a n = A052796 n

end A052796

/-! ## A052796.P9125587756752983763

`A000332(n)+A000332(n)*A083329(n)`
-/

namespace A052796.P9125587756752983763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + A000332 n * A083329 n

end

end A052796.P9125587756752983763

namespace A052796

/-- `A000332(n)+A000332(n)*A083329(n)` -/
def P9125587756752983763.Spec : Prop :=
  ∀ n, P9125587756752983763.a n = A052796 n

end A052796

/-! ## A052796.P7313931617716293125

`A000332(n)*A007283(n)/2`
-/

namespace A052796.P7313931617716293125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000332 n * A007283 n : ℚ) / 2

end

end A052796.P7313931617716293125

namespace A052796

/-- `A000332(n)*A007283(n)/2` -/
def P7313931617716293125.Spec : Prop :=
  ∀ n, P7313931617716293125.a n = (A052796 n : ℚ)

end A052796

/-!
# A052797: Number of rooted identity trees with n nodes and 5-colored non-root nodes.

The programs for A052797, there is no canonical definition to state claims against.
-/

/-! ## A052797.P18237052300286485770

`record[A255517(A055999(n))]`
-/

namespace A052797.P18237052300286485770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052797.P18237052300286485770

/-! ## A052797.P15252092179229480604

`A255517(A055999(n+3))`
-/

namespace A052797.P15252092179229480604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A055999 (n + 3)).toNat

end

end A052797.P15252092179229480604

/-! ## A052797.P17605668644135890071

`A255517(eq[5, A025581(n)])`
-/

namespace A052797.P17605668644135890071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052797.P17605668644135890071

/-! ## A052797.P7456590239053063497

`record[A255517(A052905(n)-1)]`
-/

namespace A052797.P7456590239053063497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052797.P7456590239053063497

/-! ## A052797.P15551612323304691829

`record[A255517(A028563(n)/2)]`
-/

namespace A052797.P15551612323304691829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.roundAway ((A028563 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052797.P15551612323304691829

/-! ## A052797.P17756492908119448741

`record[A255517(A060577(n)+n)]`
-/

namespace A052797.P17756492908119448741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A060577 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052797.P17756492908119448741

/-! ## A052797.P8605698849084117204

`A255517(A046691(n+4)-2)`
-/

namespace A052797.P8605698849084117204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A046691 (n + 4) - 2).toNat

end

end A052797.P8605698849084117204

/-! ## A052797.P10744214869846539190

`A255517(A055998(n+4)-3)`
-/

namespace A052797.P10744214869846539190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A055998 (n + 4) - 3).toNat

end

end A052797.P10744214869846539190

/-! ## A052797.P2951273752915085267

`A255517(A167614(n+5)-9)`
-/

namespace A052797.P2951273752915085267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A167614 (n + 5) - 9).toNat

end

end A052797.P2951273752915085267

/-! ## A052797.P15780525159672332304

`record[A255517(abs(2-A046691(n)))]`
-/

namespace A052797.P15780525159672332304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 |2 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052797.P15780525159672332304

/-!
# A052798: G.f. A(x) satisfies: A(x) = exp( Sum_{k>=1} (-1)^(k+1) * A(x^k)^5 * x^k / k ).

The programs for A052798, there is no canonical definition to state claims against.
-/

/-! ## A052798.P2957904714667726604

`A137973(n)-A094315(A052805(n))`
-/

namespace A052798.P2957904714667726604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137973 n - A094315 (A052805 n).toNat

end

end A052798.P2957904714667726604

/-! ## A052798.P9428299937142572307

`A137973(n)-A165111(A095983(n))`
-/

namespace A052798.P9428299937142572307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137973 n - A165111 (A095983 n).toNat

end

end A052798.P9428299937142572307

/-!
# A052799: Expansion of e.g.f.: x^4*(log(1-x))^2.

The programs for A052799, there is no canonical definition to state claims against.
-/

/-! ## A052799.P4814673784370829561

`n*A052766(abs(1-n))`
-/

namespace A052799.P4814673784370829561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052766 |1 - (n : ℤ)|.toNat

end

end A052799.P4814673784370829561

/-! ## A052799.P2553966455471912278

`(n²-n)*A052754(floor(n-atan(n)))`
-/

namespace A052799.P2553966455471912278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A052754 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A052799.P2553966455471912278

/-! ## A052799.P17169862909814587489

`A052766(A250266(n))*A219209(n)`
-/

namespace A052799.P17169862909814587489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052766 (A250266 n).toNat * A219209 n

end

end A052799.P17169862909814587489

/-! ## A052799.P5566441070070817672

`A052766(A250266(n))*A287864(2*n+1)`
-/

namespace A052799.P5566441070070817672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052766 (A250266 n).toNat * A287864 (2 * n + 1)

end

end A052799.P5566441070070817672

/-! ## A052799.P2489953304621947846

`A014682(A355287(n)-A356910(n))`
-/

namespace A052799.P2489953304621947846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A355287 n - A356910 n).toNat

end

end A052799.P2489953304621947846

