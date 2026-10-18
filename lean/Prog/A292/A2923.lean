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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
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
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C025

/-!
# A292300: Number of connected graphs with at least 2 and at most n nodes.

The programs for A292300, there is no canonical definition to state claims against.
-/

/-! ## A292300.P11008676400477765975

`∑[A001349(n+2)]`
-/

namespace A292300.P11008676400477765975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292300.P11008676400477765975

/-! ## A292300.P8081083567149833809

`∑[record[A201922(n+1)]]`
-/

namespace A292300.P8081083567149833809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292300.P8081083567149833809

/-! ## A292300.P16791383634157457787

`∑[record[A001349(A002262(n))]]`
-/

namespace A292300.P16791383634157457787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292300.P16791383634157457787

/-! ## A292300.P13585121925724518116

`∑[record[A001349(A005599(n))]]`
-/

namespace A292300.P13585121925724518116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (A005599 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292300.P13585121925724518116

/-! ## A292300.P3393296462006393411

`∑[record[A001349(A008611(n))]]`
-/

namespace A292300.P3393296462006393411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292300.P3393296462006393411

/-!
# A292301: p-INVERT of A010892, where p(S) = 1 + S - S^2.

The programs for A292301, the canonical program `A292301.P7867893991257815770` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292301 has offset 0).

The definition of A292301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292301.P7867893991257815770

`a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=-1, a(1)=1, a(2)=1, a(3)=-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A292301

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P7867893991257815770.Spec : Prop :=
  ∀ n, P7867893991257815770.a n = A292301 n

theorem P7867893991257815770.correct : P7867893991257815770.Spec := by
  intro n
  simp only [A292301]

end A292301

/-!
# A292302: Expansion of (1 - x)*Sum_{k>=1} k*phi(k)*x^k/(1 - x^k), where phi() is the Euler totient function (A000010).

The programs for A292302, the canonical program `A292302.P15615501185427932939` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292302 has offset 1).

The definition of A292302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292302.P1945302844970641979

`Δ[∑{d}[n, A002618(#)]]`
-/

namespace A292302.P1945302844970641979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A002618 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292302.P1945302844970641979

namespace A292302

/-- `Δ[∑{d}[n, A002618(#)]]` -/
def P1945302844970641979.Spec : Prop :=
  ∀ n, P1945302844970641979.a n = A292302 (n + 1)

end A292302

/-! ## A292302.P4865993370761537730

`Δ[∑{d}[n, #*A000010(#)]]`
-/

namespace A292302.P4865993370761537730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A000010 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292302.P4865993370761537730

namespace A292302

/-- `Δ[∑{d}[n, #*A000010(#)]]` -/
def P4865993370761537730.Spec : Prop :=
  ∀ n, P4865993370761537730.a n = A292302 (n + 1)

end A292302

/-! ## A292302.P15615501185427932939

`Δ[A057660(A028310(n))%A064987(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A292302

/-- `Δ[A057660(A028310(n))%A064987(n+1)]` -/
def P15615501185427932939.Spec : Prop :=
  ∀ n, P15615501185427932939.a n = A292302 (n + 1)

theorem P15615501185427932939.correct : P15615501185427932939.Spec := by
  intro n
  simp only [A292302, Nat.add_sub_cancel]

end A292302

/-! ## A292302.P14689963901771379826

`Δ[∑{d}[n, A000010(#²)]]`
-/

namespace A292302.P14689963901771379826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 (d ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292302.P14689963901771379826

namespace A292302

/-- `Δ[∑{d}[n, A000010(#²)]]` -/
def P14689963901771379826.Spec : Prop :=
  ∀ n, P14689963901771379826.a n = A292302 (n + 1)

end A292302

/-! ## A292302.P15690140925536361605

`Δ[A004273(∑{d}[n, A023896(#)])]`
-/

namespace A292302.P15690140925536361605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ d ∈ Nat.divisors (f2 n), A023896 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292302.P15690140925536361605

namespace A292302

/-- `Δ[A004273(∑{d}[n, A023896(#)])]` -/
def P15690140925536361605.Spec : Prop :=
  ∀ n, P15690140925536361605.a n = A292302 (n + 1)

end A292302

/-! ## A292302.P17581006183437857188

`Δ[∑{d}[n², A074722(#)]]`
-/

namespace A292302.P17581006183437857188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A074722 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292302.P17581006183437857188

namespace A292302

/-- `Δ[∑{d}[n², A074722(#)]]` -/
def P17581006183437857188.Spec : Prop :=
  ∀ n, P17581006183437857188.a n = A292302 (n + 1)

end A292302

/-!
# A292303: a(1) = 1; a(n+1) = Sum_{k=1..n} lcm(a(k),n)/n.

The programs for A292303, there is no canonical definition to state claims against.
-/

/-! ## A292303.P9763514619946935112

`A000119(A303546(n+1)-A070939(2*n))`
-/

namespace A292303.P9763514619946935112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A303546 (n + 1) - A070939 (2 * n)).toNat

end

end A292303.P9763514619946935112

/-!
# A292304: a(n) = [x^n] Product_{k>=1} (1 + n^2*x^k).

The programs for A292304, there is no canonical definition to state claims against.
-/

/-! ## A292304.P11334653544750832759

`A286957(eq[A025581(n), A143844(n)])`
-/

namespace A292304.P11334653544750832759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292304.P11334653544750832759

/-! ## A292304.P2135324836832870860

`A286957(eq[A075362(n+1), A204250(n+1)])`
-/

namespace A292304.P2135324836832870860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292304.P2135324836832870860

/-!
# A292305: a(n) = [x^n] Product_{k>=1} (1 + n^k*x^k).

The programs for A292305, there is no canonical definition to state claims against.
-/

/-! ## A292305.P1215680397116701988

`n^n*A000009(n)`
-/

namespace A292305.P1215680397116701988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A000009 n

end

end A292305.P1215680397116701988

/-! ## A292305.P3473603038808874333

`abs(n^n*A081360(n))`
-/

namespace A292305.P3473603038808874333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ n : ℤ) * A081360 n|

end

end A292305.P3473603038808874333

/-! ## A292305.P8540354063886767763

`n^n*A054242(∑[n])`
-/

namespace A292305.P8540354063886767763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A054242 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292305.P8540354063886767763

/-! ## A292305.P1549131406714012391

`n^n*∑[A087897(n)]`
-/

namespace A292305.P1549131406714012391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292305.P1549131406714012391

/-! ## A292305.P6060221658216345146

`(A111133(n)+1)*n^n`
-/

namespace A292305.P6060221658216345146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111133 n + 1) * (n ^ n : ℤ)

end

end A292305.P6060221658216345146

/-! ## A292305.P14053823615875225392

`n^n*A035457(2*n)`
-/

namespace A292305.P14053823615875225392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A035457 (2 * n)

end

end A292305.P14053823615875225392

/-! ## A292305.P11032294871406628169

`A000009(n)*A000312(n)`
-/

namespace A292305.P11032294871406628169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A000312 n

end

end A292305.P11032294871406628169

/-! ## A292305.P9069163857512968303

`∑[A087897(n)]*A000312(n)`
-/

namespace A292305.P9069163857512968303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000312 n

end

end A292305.P9069163857512968303

/-! ## A292305.P6323012921667227500

`(A000041(n)-A047967(n))*n^n`
-/

namespace A292305.P6323012921667227500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 n - A047967 n) * (n ^ n : ℤ)

end

end A292305.P6323012921667227500

/-! ## A292305.P6045882548441402802

`(∑[A002865(n)]-A047967(n))*n^n`
-/

namespace A292305.P6045882548441402802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A047967 n) * (n ^ n : ℤ)

end

end A292305.P6045882548441402802

/-!
# A292306: a(n) = [x^n] Product_{k>=1} (1 + n^n*x^k).

The programs for A292306, there is no canonical definition to state claims against.
-/

/-! ## A292306.P17522168197297596142

`A000312(n)*A153152(A050342(n)^n)`
-/

namespace A292306.P17522168197297596142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A153152 (A050342 n ^ n).toNat

end

end A292306.P17522168197297596142

/-!
# A292308: E.g.f.: 1/Product_{k>=1} (1 + x^k/k!).

The programs for A292308, there is no canonical definition to state claims against.
-/

/-! ## A292308.P15432522869123571548

`(-1)^n*A076901(n)`
-/

namespace A292308.P15432522869123571548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A076901 n

end

end A292308.P15432522869123571548

/-! ## A292308.P6987041976741413184

`A076901(n)/A128834(3*n+1)`
-/

namespace A292308.P6987041976741413184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076901 n : ℚ) / (A128834 (3 * n + 1) : ℚ)

end

end A292308.P6987041976741413184

/-! ## A292308.P699684286910495037

`A076901(n)*A332814(A000040(n+1))`
-/

namespace A292308.P699684286910495037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076901 n * A332814 (A000040 (n + 1)).toNat

end

end A292308.P699684286910495037

/-! ## A292308.P3237146070819361515

`A001935(n)*A076901(n)/A083365(n)`
-/

namespace A292308.P3237146070819361515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n * A076901 n : ℚ) / (A083365 n : ℚ)

end

end A292308.P3237146070819361515

/-!
# A292309: Numbers equal to the sum of three triangular numbers in arithmetic progression.

The programs for A292309, there is no canonical definition to state claims against.
-/

/-! ## A292309.P14506999462077774694

`3*A292310(n+1)`
-/

namespace A292309.P14506999462077774694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A292310 (n + 1)

end

end A292309.P14506999462077774694

/-! ## A292309.P4870917636267666893

`3*(A083510(n+1)-1)`
-/

namespace A292309.P4870917636267666893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A083510 (n + 1) - 1)

end

end A292309.P4870917636267666893

/-! ## A292309.P3263658392017253496

`3*C(A094551(n+1), 2)`
-/

namespace A292309.P3263658392017253496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A094551 (n + 1)).toNat 2

end

end A292309.P3263658392017253496

/-! ## A292309.P2888968213677689642

`3*C(lt[1, A113407(C(n, 2))], 2)`
-/

namespace A292309.P2888968213677689642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113407 (Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 2

end

end A292309.P2888968213677689642

/-! ## A292309.P17958286999060344464

`3*floor(A309812(n+1)²/8)`
-/

namespace A292309.P17958286999060344464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(A309812 (n + 1) ^ 2 : ℚ) / 8⌋

end

end A292309.P17958286999060344464

/-!
# A292310: Triangular numbers that are equidistant from two other triangular numbers.

The programs for A292310, there is no canonical definition to state claims against.
-/

/-! ## A292310.P11601095738563482731

`A292309(n+1)/3`
-/

namespace A292310.P11601095738563482731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292309 (n + 1) : ℚ) / 3

end

end A292310.P11601095738563482731

/-! ## A292310.P4128099685763378637

`A083510(n+1)-1`
-/

namespace A292310.P4128099685763378637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083510 (n + 1) - 1

end

end A292310.P4128099685763378637

/-! ## A292310.P1235996247310963150

`C(A094551(n+1), 2)`
-/

namespace A292310.P1235996247310963150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094551 (n + 1)).toNat 2

end

end A292310.P1235996247310963150

/-! ## A292310.P18004330218045930920

`C(lt[2, A046110(n)]+1, 2)`
-/

namespace A292310.P18004330218045930920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) 2

end

end A292310.P18004330218045930920

/-! ## A292310.P16174041345025752735

`C(lt[1, A113407(C(n, 2))], 2)`
-/

namespace A292310.P16174041345025752735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113407 (Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 2

end

end A292310.P16174041345025752735

/-! ## A292310.P4817303248043014696

`floor(A309812(n+1)²/8)`
-/

namespace A292310.P4817303248043014696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309812 (n + 1) ^ 2 : ℚ) / 8⌋

end

end A292310.P4817303248043014696

/-! ## A292310.P3529778088889787227

`C(lt[2, A046110(abs(1-n))], 2)`
-/

namespace A292310.P3529778088889787227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046110 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 2

end

end A292310.P3529778088889787227

/-! ## A292310.P3781982746540310175

`C(lt[1, A078911(abs(1-2*n))], 2)`
-/

namespace A292310.P3781982746540310175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078911 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 2

end

end A292310.P3781982746540310175

/-! ## A292310.P1272603099330254920

`C(eq[0, A284059(2*n+1)]+1, 2)`
-/

namespace A292310.P1272603099330254920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284059 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) 2

end

end A292310.P1272603099330254920

/-! ## A292310.P13373387187103049909

`C(lt[0, A046080(2*n+1)]+1, 2)`
-/

namespace A292310.P13373387187103049909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) 2

end

end A292310.P13373387187103049909

/-!
# A292311: Expansion of Product_{k>=1} 1/(1 + k^k*x^k).

The programs for A292311, there is no canonical definition to state claims against.
-/

/-! ## A292311.P7625303877515441892

`∑[char[4*n]]-A175000(3*n+1)`
-/

namespace A292311.P7625303877515441892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A175000 (3 * n + 1)

end

end A292311.P7625303877515441892

/-!
# A292312: Expansion of Product_{k>=1} (1 - k^k*x^k).

The programs for A292312, there is no canonical definition to state claims against.
-/

/-! ## A292312.P1603227501680654022

`A294653(∑[n+2]-1)`
-/

namespace A292312.P1603227501680654022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294653 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A292312.P1603227501680654022

/-! ## A292312.P8184127396895235681

`A294653(A034856(n+1))+A011734(n)`
-/

namespace A292312.P8184127396895235681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294653 (A034856 (n + 1)).toNat + A011734 n

end

end A292312.P8184127396895235681

/-! ## A292312.P12729630302866154896

`A152844(n)*A294653(A034856(n+1))`
-/

namespace A292312.P12729630302866154896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152844 n * A294653 (A034856 (n + 1)).toNat

end

end A292312.P12729630302866154896

/-! ## A292312.P4450610704959141216

`or(A000007(n), A294653(A034856(n+1)))`
-/

namespace A292312.P4450610704959141216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A294653 (A034856 (n + 1)).toNat)

end

end A292312.P4450610704959141216

/-! ## A292312.P14010848411893420845

`A294653(A034856(n+1))%A295001(n)`
-/

namespace A292312.P14010848411893420845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294653 (A034856 (n + 1)).toNat) (A295001 n)

end

end A292312.P14010848411893420845

/-!
# A292313: Numbers that are the sum of three squares in arithmetic progression.

The programs for A292313, the canonical program `A292313.P3646741374803825771` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292313 has offset 1).

The definition of A292313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292313.P3646741374803825771

`3*A134422(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A292313

/-- `3*A134422(n+1)` -/
def P3646741374803825771.Spec : Prop :=
  ∀ n, P3646741374803825771.a n = A292313 (n + 1)

theorem P3646741374803825771.correct : P3646741374803825771.Spec := by
  intro n
  simp only [A292313, Nat.add_sub_cancel]

end A292313

/-! ## A292313.P999983172391842042

`3*A009003(n+1)²`
-/

namespace A292313.P999983172391842042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A009003 (n + 1) ^ 2

end

end A292313.P999983172391842042

namespace A292313

/-- `3*A009003(n+1)²` -/
def P999983172391842042.Spec : Prop :=
  ∀ n, P999983172391842042.a n = A292313 (n + 1)

end A292313

/-! ## A292313.P3857005532479193520

`3*(A072592(n+1)/2)²`
-/

namespace A292313.P3857005532479193520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A072592 (n + 1) : ℚ) / 2) ^ 2

end

end A292313.P3857005532479193520

namespace A292313

/-- `3*(A072592(n+1)/2)²` -/
def P3857005532479193520.Spec : Prop :=
  ∀ n, P3857005532479193520.a n = (A292313 (n + 1) : ℚ)

end A292313

/-! ## A292313.P1389920461107155064

`A072592(n+1)²-A009003(n+1)²`
-/

namespace A292313.P1389920461107155064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072592 (n + 1) ^ 2 - A009003 (n + 1) ^ 2

end

end A292313.P1389920461107155064

namespace A292313

/-- `A072592(n+1)²-A009003(n+1)²` -/
def P1389920461107155064.Spec : Prop :=
  ∀ n, P1389920461107155064.a n = A292313 (n + 1)

end A292313

/-! ## A292313.P846314665829898276

`3*∪[A009177(n+1), A209922(n+1)]²`
-/

namespace A292313.P846314665829898276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A292313.P846314665829898276

namespace A292313

/-- `3*∪[A009177(n+1), A209922(n+1)]²` -/
def P846314665829898276.Spec : Prop :=
  ∀ n, (P846314665829898276.a n : ℤ) = A292313 (n + 1)

end A292313

/-! ## A292313.P14440364328707008880

`3*∪[A025302(n+1), A341329(n+1)]²`
-/

namespace A292313.P14440364328707008880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A292313.P14440364328707008880

namespace A292313

/-- `3*∪[A025302(n+1), A341329(n+1)]²` -/
def P14440364328707008880.Spec : Prop :=
  ∀ n, (P14440364328707008880.a n : ℤ) = A292313 (n + 1)

end A292313

/-! ## A292313.P11426460594348299948

`3*∪[A067761(n+1), A341329(n+1)]²`
-/

namespace A292313.P11426460594348299948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A292313.P11426460594348299948

namespace A292313

/-- `3*∪[A067761(n+1), A341329(n+1)]²` -/
def P11426460594348299948.Spec : Prop :=
  ∀ n, (P11426460594348299948.a n : ℤ) = A292313 (n + 1)

end A292313

/-! ## A292313.P2669057355468804392

`A134422(n+1)+A134422(n+1)+A009003(n+1)²`
-/

namespace A292313.P2669057355468804392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134422 (n + 1) + (A134422 (n + 1) + A009003 (n + 1) ^ 2)

end

end A292313.P2669057355468804392

namespace A292313

/-- `A134422(n+1)+A134422(n+1)+A009003(n+1)²` -/
def P2669057355468804392.Spec : Prop :=
  ∀ n, P2669057355468804392.a n = A292313 (n + 1)

end A292313

/-! ## A292313.P12838199906993978279

`3*(lt[0, A005078(n+1)]+1)²`
-/

namespace A292313.P12838199906993978279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A292313.P12838199906993978279

namespace A292313

/-- `3*(lt[0, A005078(n+1)]+1)²` -/
def P12838199906993978279.Spec : Prop :=
  ∀ n, (P12838199906993978279.a n : ℤ) = A292313 (n + 1)

end A292313

/-! ## A292313.P8914950318777245050

`A033428(A009003(n+1))`
-/

namespace A292313.P8914950318777245050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (A009003 (n + 1)).toNat

end

end A292313.P8914950318777245050

namespace A292313

/-- `A033428(A009003(n+1))` -/
def P8914950318777245050.Spec : Prop :=
  ∀ n, P8914950318777245050.a n = A292313 (n + 1)

end A292313

/-! ## A292313.P9116946003198279276

`A134422(n+1)+A001105(A009003(n+1))`
-/

namespace A292313.P9116946003198279276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134422 (n + 1) + A001105 (A009003 (n + 1)).toNat

end

end A292313.P9116946003198279276

namespace A292313

/-- `A134422(n+1)+A001105(A009003(n+1))` -/
def P9116946003198279276.Spec : Prop :=
  ∀ n, P9116946003198279276.a n = A292313 (n + 1)

end A292313

/-! ## A292313.P3849058078513107928

`3*A009003(n+1)^A000005(A002144(n+1))`
-/

namespace A292313.P3849058078513107928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (A009003 (n + 1) : ℚ) ^ (A000005 (A002144 (n + 1)).toNat : ℤ)

end

end A292313.P3849058078513107928

namespace A292313

/-- `3*A009003(n+1)^A000005(A002144(n+1))` -/
def P3849058078513107928.Spec : Prop :=
  ∀ n, P3849058078513107928.a n = (A292313 (n + 1) : ℚ)

end A292313

/-! ## A292313.P4341786124717261096

`A032438(A072592(n+1))`
-/

namespace A292313.P4341786124717261096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 (A072592 (n + 1)).toNat

end

end A292313.P4341786124717261096

namespace A292313

/-- `A032438(A072592(n+1))` -/
def P4341786124717261096.Spec : Prop :=
  ∀ n, P4341786124717261096.a n = A292313 (n + 1)

end A292313

/-! ## A292313.P17819825412079294606

`A000212(3*A009003(n+1))`
-/

namespace A292313.P17819825412079294606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (3 * A009003 (n + 1)).toNat

end

end A292313.P17819825412079294606

namespace A292313

/-- `A000212(3*A009003(n+1))` -/
def P17819825412079294606.Spec : Prop :=
  ∀ n, P17819825412079294606.a n = A292313 (n + 1)

end A292313

/-! ## A292313.P9875010465015436466

`∩[A338890(n+1), A033428(n)]`
-/

namespace A292313.P9875010465015436466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292313.P9875010465015436466

namespace A292313

/-- `∩[A338890(n+1), A033428(n)]` -/
def P9875010465015436466.Spec : Prop :=
  ∀ n, (P9875010465015436466.a n : ℤ) = A292313 (n + 1)

end A292313

/-! ## A292313.P13753076629814119246

`∩[A338890(n+1), A289443(n)]`
-/

namespace A292313.P13753076629814119246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289443 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292313.P13753076629814119246

namespace A292313

/-- `∩[A338890(n+1), A289443(n)]` -/
def P13753076629814119246.Spec : Prop :=
  ∀ n, (P13753076629814119246.a n : ℤ) = A292313 (n + 1)

end A292313

/-! ## A292313.P5142777121007465689

`∩[A338890(n+1), A347536(n+1)]`
-/

namespace A292313.P5142777121007465689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292313.P5142777121007465689

namespace A292313

/-- `∩[A338890(n+1), A347536(n+1)]` -/
def P5142777121007465689.Spec : Prop :=
  ∀ n, (P5142777121007465689.a n : ℤ) = A292313 (n + 1)

end A292313

/-!
# A292314: Numbers equal to the sum of three oblong numbers in arithmetic progression.

The programs for A292314, there is no canonical definition to state claims against.
-/

/-! ## A292314.P8083366880723295902

`3*A292316(n+1)`
-/

namespace A292314.P8083366880723295902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A292316 (n + 1)

end

end A292314.P8083366880723295902

/-! ## A292314.P15389916745051631254

`A008486(A292316(n+1))`
-/

namespace A292314.P15389916745051631254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A292316 (n + 1)).toNat

end

end A292314.P15389916745051631254

/-! ## A292314.P18263225287108424789

`A204502(A292316(n+1)+4)`
-/

namespace A292314.P18263225287108424789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (A292316 (n + 1) + 4).toNat

end

end A292314.P18263225287108424789

/-! ## A292314.P8654173597525549007

`A008458(A292316(n+1)/2)`
-/

namespace A292314.P8654173597525549007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A292316 (n + 1) : ℚ) / 2)).toNat

end

end A292314.P8654173597525549007

/-! ## A292314.P7930336400081184242

`A008588(A292316(n+1)/2)`
-/

namespace A292314.P7930336400081184242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (SequenceMachineLib.roundAway ((A292316 (n + 1) : ℚ) / 2)).toNat

end

end A292314.P7930336400081184242

/-!
# A292315: Positive integers not divisible by any number of the form 2^n + 1 for n >= 0.

The programs for A292315, the canonical program `A292315.P1816862207648289831` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292315 has offset 1).

The definition of A292315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292315.P12703174989420905340

`lt[A305436(n+1), 1]+1`
-/

namespace A292315.P12703174989420905340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305436 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A292315.P12703174989420905340

namespace A292315

/-- `lt[A305436(n+1), 1]+1` -/
def P12703174989420905340.Spec : Prop :=
  ∀ n, (P12703174989420905340.a n : ℤ) = A292315 (n + 1)

end A292315

/-! ## A292315.P10304159741114134222

`eq[2, A275833(a(A305436(n)))]` with `a(0)=1`
-/

namespace A292315.P10304159741114134222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A275833 (f2 (A305436 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A292315.P10304159741114134222

namespace A292315

/-- `eq[2, A275833(a(A305436(n)))]` -/
def P10304159741114134222.Spec : Prop :=
  ∀ n, (P10304159741114134222.a n : ℤ) = A292315 (n + 1)

end A292315

/-! ## A292315.P13578405027435453516

`A005843(comp[A025480(n)+1+n])+1`
-/

namespace A292315.P13578405027435453516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A292315.P13578405027435453516

namespace A292315

/-- `A005843(comp[A025480(n)+1+n])+1` -/
def P13578405027435453516.Spec : Prop :=
  ∀ n, P13578405027435453516.a n = A292315 (n + 1)

end A292315

/-! ## A292315.P16493100673662971300

`∩[2*n+1, A080308(n+1)]`
-/

namespace A292315.P16493100673662971300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292315.P16493100673662971300

namespace A292315

/-- `∩[2*n+1, A080308(n+1)]` -/
def P16493100673662971300.Spec : Prop :=
  ∀ n, (P16493100673662971300.a n : ℤ) = A292315 (n + 1)

end A292315

/-! ## A292315.P1816862207648289831

`filter[A080308(n+1), A093719(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292315

/-- `filter[A080308(n+1), A093719(#)]` -/
def P1816862207648289831.Spec : Prop :=
  ∀ n, P1816862207648289831.a n = A292315 (n + 1)

theorem P1816862207648289831.correct : P1816862207648289831.Spec := by
  intro n
  simp only [A292315, Nat.add_sub_cancel]

end A292315

/-! ## A292315.P17994484804881437359

`filter[A080308(n+1), A162289(#)]`
-/

namespace A292315.P17994484804881437359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A292315.P17994484804881437359

namespace A292315

/-- `filter[A080308(n+1), A162289(#)]` -/
def P17994484804881437359.Spec : Prop :=
  ∀ n, P17994484804881437359.a n = A292315 (n + 1)

end A292315

/-! ## A292315.P10690354150436238165

`filter[A080308(n+1), A320106(#)]`
-/

namespace A292315.P10690354150436238165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A292315.P10690354150436238165

namespace A292315

/-- `filter[A080308(n+1), A320106(#)]` -/
def P10690354150436238165.Spec : Prop :=
  ∀ n, P10690354150436238165.a n = A292315 (n + 1)

end A292315

/-! ## A292315.P11684633235218399211

`filter[A080308(n+1), A354354(#)]`
-/

namespace A292315.P11684633235218399211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A292315.P11684633235218399211

namespace A292315

/-- `filter[A080308(n+1), A354354(#)]` -/
def P11684633235218399211.Spec : Prop :=
  ∀ n, P11684633235218399211.a n = A292315 (n + 1)

end A292315

/-! ## A292315.P17798052805962970603

`filter[A080308(n+1), A373156(#)]`
-/

namespace A292315.P17798052805962970603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A292315.P17798052805962970603

namespace A292315

/-- `filter[A080308(n+1), A373156(#)]` -/
def P17798052805962970603.Spec : Prop :=
  ∀ n, P17798052805962970603.a n = A292315 (n + 1)

end A292315

/-! ## A292315.P15805063137318127263

`filter[A080308(n+1), A374134(#)]`
-/

namespace A292315.P15805063137318127263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A292315.P15805063137318127263

namespace A292315

/-- `filter[A080308(n+1), A374134(#)]` -/
def P15805063137318127263.Spec : Prop :=
  ∀ n, P15805063137318127263.a n = A292315 (n + 1)

end A292315

/-! ## A292315.P7536718578982693032

`∩[A080308(n+1), A004273(n)]`
-/

namespace A292315.P7536718578982693032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292315.P7536718578982693032

namespace A292315

/-- `∩[A080308(n+1), A004273(n)]` -/
def P7536718578982693032.Spec : Prop :=
  ∀ n, (P7536718578982693032.a n : ℤ) = A292315 (n + 1)

end A292315

/-! ## A292315.P7137611766269243979

`∩[A080308(n+1), A060747(n)]`
-/

namespace A292315.P7137611766269243979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292315.P7137611766269243979

namespace A292315

/-- `∩[A080308(n+1), A060747(n)]` -/
def P7137611766269243979.Spec : Prop :=
  ∀ n, (P7137611766269243979.a n : ℤ) = A292315 (n + 1)

end A292315

/-! ## A292315.P3716549525707429903

`∩[A080308(n+1), A084820(n+1)]`
-/

namespace A292315.P3716549525707429903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292315.P3716549525707429903

namespace A292315

/-- `∩[A080308(n+1), A084820(n+1)]` -/
def P3716549525707429903.Spec : Prop :=
  ∀ n, (P3716549525707429903.a n : ℤ) = A292315 (n + 1)

end A292315

/-! ## A292315.P9936140912019982499

`∩[A080308(n+1), A089684(n+1)]`
-/

namespace A292315.P9936140912019982499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292315.P9936140912019982499

namespace A292315

/-- `∩[A080308(n+1), A089684(n+1)]` -/
def P9936140912019982499.Spec : Prop :=
  ∀ n, (P9936140912019982499.a n : ℤ) = A292315 (n + 1)

end A292315

/-! ## A292315.P16488873009672093062

`∩[A080308(n+1), A204458(n+1)]`
-/

namespace A292315.P16488873009672093062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292315.P16488873009672093062

namespace A292315

/-- `∩[A080308(n+1), A204458(n+1)]` -/
def P16488873009672093062.Spec : Prop :=
  ∀ n, (P16488873009672093062.a n : ℤ) = A292315 (n + 1)

end A292315

/-! ## A292315.P1743022010892821369

`∩[A080308(n+1), A241662(n+1)]`
-/

namespace A292315.P1743022010892821369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292315.P1743022010892821369

namespace A292315

/-- `∩[A080308(n+1), A241662(n+1)]` -/
def P1743022010892821369.Spec : Prop :=
  ∀ n, (P1743022010892821369.a n : ℤ) = A292315 (n + 1)

end A292315

/-! ## A292315.P7793034057493924201

`∩[A080308(n+1), A191275(n+1)]`
-/

namespace A292315.P7793034057493924201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292315.P7793034057493924201

namespace A292315

/-- `∩[A080308(n+1), A191275(n+1)]` -/
def P7793034057493924201.Spec : Prop :=
  ∀ n, (P7793034057493924201.a n : ℤ) = A292315 (n + 1)

end A292315

/-! ## A292315.P7329025586275718191

`∩[A080308(n+1), A232744(n+1)]`
-/

namespace A292315.P7329025586275718191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292315.P7329025586275718191

namespace A292315

/-- `∩[A080308(n+1), A232744(n+1)]` -/
def P7329025586275718191.Spec : Prop :=
  ∀ n, (P7329025586275718191.a n : ℤ) = A292315 (n + 1)

end A292315

/-! ## A292315.P9352790708609451285

`eq[1, A141198(n+1)+1]+1`
-/

namespace A292315.P9352790708609451285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141198 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A292315.P9352790708609451285

namespace A292315

/-- `eq[1, A141198(n+1)+1]+1` -/
def P9352790708609451285.Spec : Prop :=
  ∀ n, (P9352790708609451285.a n : ℤ) = A292315 (n + 1)

end A292315

/-! ## A292315.P7400485553377030568

`eq[(n+1)%2, A141059(n+1)]+1`
-/

namespace A292315.P7400485553377030568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A292315.P7400485553377030568

namespace A292315

/-- `eq[(n+1)%2, A141059(n+1)]+1` -/
def P7400485553377030568.Spec : Prop :=
  ∀ n, (P7400485553377030568.a n : ℤ) = A292315 (n + 1)

end A292315

/-!
# A292316: Oblong numbers equidistant from two other oblong numbers.

The programs for A292316, there is no canonical definition to state claims against.
-/

/-! ## A292316.P13566303583177884477

`A292314(n+1)/3`
-/

namespace A292316.P13566303583177884477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292314 (n + 1) : ℚ) / 3

end

end A292316.P13566303583177884477

/-! ## A292316.P13984624786012089014

`A081750(A292314(n+1))`
-/

namespace A292316.P13984624786012089014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081750 (A292314 (n + 1)).toNat

end

end A292316.P13984624786012089014

/-! ## A292316.P7553116305670644664

`A126760(A292314(n+1)-1)`
-/

namespace A292316.P7553116305670644664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A292314 (n + 1) - 1).toNat

end

end A292316.P7553116305670644664

/-! ## A292316.P2737167380546656210

`A353313(lcm(2, A292314(n+1)))`
-/

namespace A292316.P2737167380546656210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353313 (Int.lcm 2 (A292314 (n + 1)))

end

end A292316.P2737167380546656210

/-! ## A292316.P13808476189475515147

`A353313(A292314(n+1)%A163667(n+1))`
-/

namespace A292316.P13808476189475515147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353313 (Int.tmod (A292314 (n + 1)) (A163667 (n + 1))).toNat

end

end A292316.P13808476189475515147

/-!
# A292318: Expansion of Product_{k>=1} ((1 + k!*x^k)/(1 - k!*x^k)).

The programs for A292318, there is no canonical definition to state claims against.
-/

/-! ## A292318.P14554470473812263482

`∑[A283899(n*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A292318.P14554470473812263482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A283899 ((n : ℤ) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292318.P14554470473812263482

/-! ## A292318.P17600065143099237307

`∑[A087086(A148667(n))]`
-/

namespace A292318.P17600065143099237307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A148667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292318.P17600065143099237307

/-!
# A292319: Expansion of Product_{k>=1} ((1 - k!*x^k)/(1 + k!*x^k)).

The programs for A292319, there is no canonical definition to state claims against.
-/

/-! ## A292319.P5526487680206776611

`A318315(A292805(n))+A292831(n)`
-/

namespace A292319.P5526487680206776611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318315 (A292805 n).toNat + A292831 n

end

end A292319.P5526487680206776611

/-! ## A292319.P4072629211337689379

`xor(A003056(A221100(n)), A057428(n))`
-/

namespace A292319.P4072629211337689379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003056 (A221100 n).toNat) (A057428 n)

end

end A292319.P4072629211337689379

/-!
# A292320: p-INVERT of (1,0,0,1,0,0,1,0,0,...), where p(S) = 1 - S - S^3.

The programs for A292320, there is no canonical definition to state claims against.
-/

/-! ## A292320.P6653997801242789747

`A129946(A026757(n))`
-/

namespace A292320.P6653997801242789747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129946 (A026757 n).toNat

end

end A292320.P6653997801242789747

/-! ## A292320.P8500947567569380499

`A390626(A079960(n))`
-/

namespace A292320.P8500947567569380499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390626 (A079960 n).toNat

end

end A292320.P8500947567569380499

/-! ## A292320.P216118183426178992

`A291442(A086159(∑[n]))`
-/

namespace A292320.P216118183426178992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (A086159 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A292320.P216118183426178992

/-! ## A292320.P2316010653389120569

`A121600(A074693(n+1))`
-/

namespace A292320.P2316010653389120569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121600 (A074693 (n + 1)).toNat

end

end A292320.P2316010653389120569

/-! ## A292320.P2555468966481406773

`A102569(A378672(n+2))`
-/

namespace A292320.P2555468966481406773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102569 (A378672 (n + 2)).toNat

end

end A292320.P2555468966481406773

/-!
# A292321: p-INVERT of (1,0,0,1,0,0,1,0,0,...), where p(S) = 1 - S^2 - S^3.

The programs for A292321, the canonical program `A292321.P2905543270252621524` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292321 has offset 0).

The definition of A292321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292321.P2905543270252621524

`a(n-2)+4*a(n-3)-a(n-5)-3*a(n-6)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=4, a(5)=5, a(6)=7, a(7)=17, a(8)=23`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A292321

/-- `a(n-2)+4*a(n-3)-a(n-5)-3*a(n-6)+a(n-9)` -/
def P2905543270252621524.Spec : Prop :=
  ∀ n, P2905543270252621524.a n = A292321 n

theorem P2905543270252621524.correct : P2905543270252621524.Spec := by
  intro n
  simp only [A292321]

end A292321

/-!
# A292322: p-INVERT of (1,0,0,1,0,0,1,0,0,...), where p(S) = 1 - S - S^2 - S^3.

The programs for A292322, there is no canonical definition to state claims against.
-/

/-! ## A292322.P17377292542113616000

`A054846(A000244(n)-A188498(n))`
-/

namespace A292322.P17377292542113616000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A000244 n - A188498 n).toNat

end

end A292322.P17377292542113616000

/-! ## A292322.P16207573122868889029

`A001462(A246019(n)+A056499(n+1))`
-/

namespace A292322.P16207573122868889029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A246019 n + A056499 (n + 1)).toNat

end

end A292322.P16207573122868889029

/-! ## A292322.P6711701385964466826

`A082447(A119243(n))`
-/

namespace A292322.P6711701385964466826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A119243 n).toNat

end

end A292322.P6711701385964466826

/-! ## A292322.P8628482461104471060

`A082447(A150536(n))`
-/

namespace A292322.P8628482461104471060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A150536 n).toNat

end

end A292322.P8628482461104471060

/-!
# A292324: p-INVERT of (1,0,0,1,0,0,0,0,0,...), where p(S) = (1 - S)^2.

The programs for A292324, the canonical program `A292324.P4624661997728121911` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292324 has offset 0).

The definition of A292324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292324.P4624661997728121911

`a(n-1)+a(n-4)+A003269(n+2)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292324

/-- `a(n-1)+a(n-4)+A003269(n+2)` -/
def P4624661997728121911.Spec : Prop :=
  ∀ n, P4624661997728121911.a n = A292324 n

theorem P4624661997728121911.correct : P4624661997728121911.Spec := by
  intro n
  simp only [A292324]

end A292324

/-! ## A292324.P8438110677560886831

`2*a(n-1)-a(n-2)+2*a(n-4)-2*a(n-5)-a(n-8)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7, a(4)=12, a(5)=19, a(6)=28, a(7)=42`
-/

namespace A292324.P8438110677560886831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 7, 12, 19, 28, 42] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 4) - 2 * a (n - 5) - a (n - 8)

end

end A292324.P8438110677560886831

namespace A292324

/-- `2*a(n-1)-a(n-2)+2*a(n-4)-2*a(n-5)-a(n-8)` -/
def P8438110677560886831.Spec : Prop :=
  ∀ n, P8438110677560886831.a n = A292324 n

end A292324

/-! ## A292324.P7497910989342831708

`A259074(∑[n+2]+3)`
-/

namespace A292324.P7497910989342831708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259074 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A292324.P7497910989342831708

namespace A292324

/-- `A259074(∑[n+2]+3)` -/
def P7497910989342831708.Spec : Prop :=
  ∀ n, P7497910989342831708.a n = A292324 n

end A292324

/-! ## A292324.P152415755864330352

`A238886(2*n+1)+A238886(A039900(n+1))`
-/

namespace A292324.P152415755864330352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238886 (2 * n + 1) + A238886 (A039900 (n + 1)).toNat

end

end A292324.P152415755864330352

namespace A292324

/-- `A238886(2*n+1)+A238886(A039900(n+1))` -/
def P152415755864330352.Spec : Prop :=
  ∀ n, P152415755864330352.a n = A292324 n

end A292324

/-! ## A292324.P10907186194922855876

`A232753(xor(1, A159334(n)))`
-/

namespace A292324.P10907186194922855876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (Int.xor 1 (A159334 n)).toNat

end

end A292324.P10907186194922855876

namespace A292324

/-- `A232753(xor(1, A159334(n)))` -/
def P10907186194922855876.Spec : Prop :=
  ∀ n, P10907186194922855876.a n = A292324 n

end A292324

/-!
# A292325: p-INVERT of (1,0,0,0,1,0,0,0,0,0,...), where p(S) = (1 - S)^2.

The programs for A292325, the canonical program `A292325.P10296058811900946729` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292325 has offset 0).

The definition of A292325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292325.P10296058811900946729

`2*a(n-1)-a(n-2)+2*a(n-5)-2*a(n-6)-a(n-10)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=8, a(5)=13, a(6)=20, a(7)=29, a(8)=40, a(9)=56`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A292325

/-- `2*a(n-1)-a(n-2)+2*a(n-5)-2*a(n-6)-a(n-10)` -/
def P10296058811900946729.Spec : Prop :=
  ∀ n, P10296058811900946729.a n = A292325 n

theorem P10296058811900946729.correct : P10296058811900946729.Spec := by
  intro n
  simp only [A292325]

end A292325

/-! ## A292325.P14542011733501848103

`A320595(n)-A087960(A053730(n))`
-/

namespace A292325.P14542011733501848103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320595 (n + 16) - A087960 (A053730 n).toNat

end

end A292325.P14542011733501848103

namespace A292325

/-- `A320595(n)-A087960(A053730(n))` -/
def P14542011733501848103.Spec : Prop :=
  ∀ n, P14542011733501848103.a n = A292325 n

end A292325

/-! ## A292325.P14723679877309449382

`A320595(n)+A087960(A053730(n)+2)`
-/

namespace A292325.P14723679877309449382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320595 (n + 16) + A087960 (A053730 n + 2).toNat

end

end A292325.P14723679877309449382

namespace A292325

/-- `A320595(n)+A087960(A053730(n)+2)` -/
def P14723679877309449382.Spec : Prop :=
  ∀ n, P14723679877309449382.a n = A292325 n

end A292325

/-! ## A292325.P8024082193454025466

`A327467(A337462(2*n+1))-A321620(n+3)`
-/

namespace A292325.P8024082193454025466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327467 (A337462 (2 * n + 1)).toNat - A321620 (n + 3)

end

end A292325.P8024082193454025466

namespace A292325

/-- `A327467(A337462(2*n+1))-A321620(n+3)` -/
def P8024082193454025466.Spec : Prop :=
  ∀ n, P8024082193454025466.a n = A292325 n

end A292325

/-! ## A292325.P18013001781943182737

`∑[∑{e}[9*a(n-1), #]]` with `a(0)=4, a(1)=7, a(2)=2, a(3)=7`
-/

namespace A292325.P18013001781943182737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 7, 2, 7] fun n f2 =>
  9 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292325.P18013001781943182737

namespace A292325

/-- `∑[∑{e}[9*a(n-1), #]]` -/
def P18013001781943182737.Spec : Prop :=
  ∀ n, (P18013001781943182737.a n : ℤ) = A292325 n

end A292325

/-!
# A292326: p-INVERT of (1,1,1,0,0,0,0,0,0,0,0,...), where p(S) = (1 - S)^3.

The programs for A292326, there is no canonical definition to state claims against.
-/

/-! ## A292326.P16689014820378362772

`A104580(∑[n+3]+5)`
-/

namespace A292326.P16689014820378362772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A292326.P16689014820378362772

/-! ## A292326.P14837353941239922116

`A067734(50*2^n)`
-/

namespace A292326.P14837353941239922116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067734 (50 * 2 ^ n)

end

end A292326.P14837353941239922116

/-! ## A292326.P2124119623532485055

`A383477(A141214(n+1))`
-/

namespace A292326.P2124119623532485055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383477 (A141214 (n + 1)).toNat

end

end A292326.P2124119623532485055

/-! ## A292326.P821309135114812303

`A383477(A005408(2*n+3)+A000217(n))`
-/

namespace A292326.P821309135114812303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383477 (A005408 (2 * n + 3) + A000217 n).toNat

end

end A292326.P821309135114812303

/-!
# A292327: p-INVERT of the Fibonacci sequence (A000045), where p(S) = (1 - S)^2.

The programs for A292327, the canonical program `A292327.P5968189415831423181` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292327 has offset 0).

The definition of A292327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292327.P6223601028245694343

`A006645(n+1)+2*A000129(n+1)`
-/

namespace A292327.P6223601028245694343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + 2 * A000129 (n + 1)

end

end A292327.P6223601028245694343

namespace A292327

/-- `A006645(n+1)+2*A000129(n+1)` -/
def P6223601028245694343.Spec : Prop :=
  ∀ n, P6223601028245694343.a n = A292327 n

end A292327

/-! ## A292327.P5968189415831423181

`4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=14, a(3)=38`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A292327

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` -/
def P5968189415831423181.Spec : Prop :=
  ∀ n, P5968189415831423181.a n = A292327 n

theorem P5968189415831423181.correct : P5968189415831423181.Spec := by
  intro n
  simp only [A292327]

end A292327

/-! ## A292327.P9653556107128744114

`ogf((2-3x-2x^2)/(1-4x+2x^2+4x^3+x^4))`
-/

namespace A292327.P9653556107128744114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -2] [1, -4, 2, 4, 1] n

end

end A292327.P9653556107128744114

namespace A292327

/-- `ogf((2-3x-2x^2)/(1-4x+2x^2+4x^3+x^4))` -/
def P9653556107128744114.Spec : Prop :=
  ∀ n, P9653556107128744114.a n = A292327 n

end A292327

/-! ## A292327.P11361629370704726843

`A054447(n)+A000129(n+1)`
-/

namespace A292327.P11361629370704726843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054447 n + A000129 (n + 1)

end

end A292327.P11361629370704726843

namespace A292327

/-- `A054447(n)+A000129(n+1)` -/
def P11361629370704726843.Spec : Prop :=
  ∀ n, P11361629370704726843.a n = A292327 n

end A292327

/-! ## A292327.P6062096737020835530

`A291142(n+2)-A000129(n)`
-/

namespace A292327.P6062096737020835530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291142 (n + 2) - A000129 n

end

end A292327.P6062096737020835530

namespace A292327

/-- `A291142(n+2)-A000129(n)` -/
def P6062096737020835530.Spec : Prop :=
  ∀ n, P6062096737020835530.a n = A292327 n

end A292327

/-! ## A292327.P1183841873944406471

`A052542(n+1)+A006645(n+1)`
-/

namespace A292327.P1183841873944406471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) + A006645 (n + 1)

end

end A292327.P1183841873944406471

namespace A292327

/-- `A052542(n+1)+A006645(n+1)` -/
def P1183841873944406471.Spec : Prop :=
  ∀ n, P1183841873944406471.a n = A292327 n

end A292327

/-! ## A292327.P10747762021314406608

`A074084(n+1)+A000129(n+2)`
-/

namespace A292327.P10747762021314406608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074084 (n + 1) + A000129 (n + 2)

end

end A292327.P10747762021314406608

namespace A292327

/-- `A074084(n+1)+A000129(n+2)` -/
def P10747762021314406608.Spec : Prop :=
  ∀ n, P10747762021314406608.a n = A292327 n

end A292327

/-! ## A292327.P138622219206845869

`A291142(n)+2*A291142(n+1)`
-/

namespace A292327.P138622219206845869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291142 n + 2 * A291142 (n + 1)

end

end A292327.P138622219206845869

namespace A292327

/-- `A291142(n)+2*A291142(n+1)` -/
def P138622219206845869.Spec : Prop :=
  ∀ n, P138622219206845869.a n = A292327 n

end A292327

/-! ## A292327.P16368758938347685862

`A006645(n+1)+Δ[A001333(n+1)]`
-/

namespace A292327.P16368758938347685862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + (f1 (n + 1) - f1 n)

end

end A292327.P16368758938347685862

namespace A292327

/-- `A006645(n+1)+Δ[A001333(n+1)]` -/
def P16368758938347685862.Spec : Prop :=
  ∀ n, P16368758938347685862.a n = A292327 n

end A292327

/-! ## A292327.P4123047707675360853

`A001333(n+1)+A006645(n+1)+A001333(n)`
-/

namespace A292327.P4123047707675360853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (A006645 (n + 1) + A001333 n)

end

end A292327.P4123047707675360853

namespace A292327

/-- `A001333(n+1)+A006645(n+1)+A001333(n)` -/
def P4123047707675360853.Spec : Prop :=
  ∀ n, P4123047707675360853.a n = A292327 n

end A292327

/-! ## A292327.P4392952645523767274

`(A331321(n+1)+A215928(n+1))/2`
-/

namespace A292327.P4392952645523767274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331321 (n + 1) + A215928 (n + 1) : ℚ) / 2

end

end A292327.P4392952645523767274

namespace A292327

/-- `(A331321(n+1)+A215928(n+1))/2` -/
def P4392952645523767274.Spec : Prop :=
  ∀ n, P4392952645523767274.a n = (A292327 n : ℚ)

end A292327

/-! ## A292327.P2396333130634478650

`A000129(n+1)+A026937(n)-A006645(n)`
-/

namespace A292327.P2396333130634478650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A026937 n - A006645 n)

end

end A292327.P2396333130634478650

namespace A292327

/-- `A000129(n+1)+A026937(n)-A006645(n)` -/
def P2396333130634478650.Spec : Prop :=
  ∀ n, P2396333130634478650.a n = A292327 n

end A292327

/-! ## A292327.P18443136287906170138

`Δ[A074084(n+2)]-A074084(n+2)`
-/

namespace A292327.P18443136287906170138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074084 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A074084 (n + 2)

end

end A292327.P18443136287906170138

namespace A292327

/-- `Δ[A074084(n+2)]-A074084(n+2)` -/
def P18443136287906170138.Spec : Prop :=
  ∀ n, P18443136287906170138.a n = A292327 n

end A292327

/-! ## A292327.P6461973129634916448

`A026937(n+1)+A006645(n)-A088210(n)`
-/

namespace A292327.P6461973129634916448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 (n + 1) + (A006645 n - A088210 n)

end

end A292327.P6461973129634916448

namespace A292327

/-- `A026937(n+1)+A006645(n)-A088210(n)` -/
def P6461973129634916448.Spec : Prop :=
  ∀ n, P6461973129634916448.a n = A292327 n

end A292327

/-! ## A292327.P12278839213458368826

`A292328(n)-A054449(n)`
-/

namespace A292327.P12278839213458368826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292328 n - A054449 n

end

end A292327.P12278839213458368826

namespace A292327

/-- `A292328(n)-A054449(n)` -/
def P12278839213458368826.Spec : Prop :=
  ∀ n, P12278839213458368826.a n = A292327 n

end A292327

/-! ## A292327.P15217476851209416332

`A054447(n)+record[A054446(n)]`
-/

namespace A292327.P15217476851209416332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054446 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054447 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292327.P15217476851209416332

namespace A292327

/-- `A054447(n)+record[A054446(n)]` -/
def P15217476851209416332.Spec : Prop :=
  ∀ n, P15217476851209416332.a n = A292327 n

end A292327

/-! ## A292327.P2070765547012429695

`record[A054448(n)+A054446(n)]`
-/

namespace A292327.P2070765547012429695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054448 n + A054446 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292327.P2070765547012429695

namespace A292327

/-- `record[A054448(n)+A054446(n)]` -/
def P2070765547012429695.Spec : Prop :=
  ∀ n, P2070765547012429695.a n = A292327 n

end A292327

/-! ## A292327.P7818616790689134488

`A190215(A134869(n+1)-1)+A054447(n)`
-/

namespace A292327.P7818616790689134488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190215 (A134869 (n + 1) - 1).toNat + A054447 n

end

end A292327.P7818616790689134488

namespace A292327

/-- `A190215(A134869(n+1)-1)+A054447(n)` -/
def P7818616790689134488.Spec : Prop :=
  ∀ n, P7818616790689134488.a n = A292327 n

end A292327

/-! ## A292327.P12611659172212194858

`A190215(∑[n+2]+2)`
-/

namespace A292327.P12611659172212194858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190215 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A292327.P12611659172212194858

namespace A292327

/-- `A190215(∑[n+2]+2)` -/
def P12611659172212194858.Spec : Prop :=
  ∀ n, P12611659172212194858.a n = A292327 n

end A292327

/-!
# A292328: p-INVERT of the Fibonacci sequence (A000045), where p(S) = (1 - S)^3.

The programs for A292328, there is no canonical definition to state claims against.
-/

/-! ## A292328.P5169817410220509962

`A292327(n)+A054449(n)`
-/

namespace A292328.P5169817410220509962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292327 n + A054449 n

end

end A292328.P5169817410220509962

/-! ## A292328.P11576120209366120592

`A000129(n+1)+A054449(n)+A054447(n)`
-/

namespace A292328.P11576120209366120592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A054449 n + A054447 n)

end

end A292328.P11576120209366120592

/-! ## A292328.P1794101184501140931

`A190215(∑[n+3]+5)`
-/

namespace A292328.P1794101184501140931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190215 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A292328.P1794101184501140931

/-! ## A292328.P18141420840909952292

`A292327(n)+A190215(A052905(n)+7)-(A074084(n+1)+A000129(n+2))`
-/

namespace A292328.P18141420840909952292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292327 n + (A190215 (A052905 n + 7).toNat - (A074084 (n + 1) + A000129 (n + 2)))

end

end A292328.P18141420840909952292

/-! ## A292328.P17208459471806217630

`A292327(n)+A190215(A055999(n)+8)-(A074084(n+1)+A000129(n+2))`
-/

namespace A292328.P17208459471806217630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292327 n + (A190215 (A055999 n + 8).toNat - (A074084 (n + 1) + A000129 (n + 2)))

end

end A292328.P17208459471806217630

/-!
# A292329: p-INVERT of the Fibonacci sequence (A000045), where p(S) = 1 - S^3.

The programs for A292329, the canonical program `A292329.P1121278526930858194` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292329 has offset 0).

The definition of A292329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292329.P1121278526930858194

`3*a(n-1)-4*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=9, a(5)=23`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A292329

/-- `3*a(n-1)-4*a(n-3)+3*a(n-5)+a(n-6)` -/
def P1121278526930858194.Spec : Prop :=
  ∀ n, P1121278526930858194.a n = A292329 n

theorem P1121278526930858194.correct : P1121278526930858194.Spec := by
  intro n
  simp only [A292329]

end A292329

/-! ## A292329.P4534133143619158952

`A210357(A210496(n))-1`
-/

namespace A292329.P4534133143619158952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A210496 n).toNat - 1

end

end A292329.P4534133143619158952

namespace A292329

/-- `A210357(A210496(n))-1` -/
def P4534133143619158952.Spec : Prop :=
  ∀ n, P4534133143619158952.a n = A292329 n

end A292329

/-! ## A292329.P17957960957975558953

`∑[A055086(A058861(n+4))]`
-/

namespace A292329.P17957960957975558953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A058861 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292329.P17957960957975558953

namespace A292329

/-- `∑[A055086(A058861(n+4))]` -/
def P17957960957975558953.Spec : Prop :=
  ∀ n, P17957960957975558953.a n = A292329 n

end A292329

/-! ## A292329.P3273862975258229446

`A274114(A167520(n+2))-A000194(A285636(2*n+1)+n)`
-/

namespace A292329.P3273862975258229446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274114 (A167520 (n + 2)).toNat - A000194 (A285636 (2 * n + 1) + (n : ℤ)).toNat

end

end A292329.P3273862975258229446

namespace A292329

/-- `A274114(A167520(n+2))-A000194(A285636(2*n+1)+n)` -/
def P3273862975258229446.Spec : Prop :=
  ∀ n, P3273862975258229446.a n = A292329 n

end A292329

/-! ## A292329.P9981453505499534435

`A274114(A167520(n+2))-A097285(A011782(n+1)*A055805(n+5))`
-/

namespace A292329.P9981453505499534435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274114 (A167520 (n + 2)).toNat - A097285 (A011782 (n + 1) * A055805 (n + 5)).toNat

end

end A292329.P9981453505499534435

namespace A292329

/-- `A274114(A167520(n+2))-A097285(A011782(n+1)*A055805(n+5))` -/
def P9981453505499534435.Spec : Prop :=
  ∀ n, P9981453505499534435.a n = A292329 n

end A292329

/-!
# A292330: Numbers k such that k^2 divides 4^k + 1.

The programs for A292330, there is no canonical definition to state claims against.
-/

/-! ## A292330.P11266007548443267380

`A128678(∑[A162932(2*n+9)])`
-/

namespace A292330.P11266007548443267380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162932 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128678 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292330.P11266007548443267380

/-! ## A292330.P3619366798149747563

`A128678(A298338(n)+A172311(n))`
-/

namespace A292330.P3619366798149747563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128678 (A298338 n + A172311 n).toNat

end

end A292330.P3619366798149747563

/-!
# A292331: Numbers k such that k^2 divides 5^k + 1.

The programs for A292331, there is no canonical definition to state claims against.
-/

/-! ## A292331.P1785073967120203034

`A128679(lt[A002865(n), A245605(n+1)])`
-/

namespace A292331.P1785073967120203034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128679 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292331.P1785073967120203034

/-! ## A292331.P3075756191032298979

`A128679(∑[A094525(C(n, 6))])`
-/

namespace A292331.P3075756191032298979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094525 (Nat.choose n 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128679 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292331.P3075756191032298979

/-! ## A292331.P14255706810230111157

`filter[A015951(n+1), A359590(#)]`
-/

namespace A292331.P14255706810230111157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A292331.P14255706810230111157

/-! ## A292331.P11693664402406808162

`filter[A015951(n+1), A359592(#)]`
-/

namespace A292331.P11693664402406808162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A292331.P11693664402406808162

/-! ## A292331.P13214494228041948466

`record[A128679(n+1)%A128677(2*(n+3))]`
-/

namespace A292331.P13214494228041948466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128679 (n + 1)) (A128677 (2 * (n + 3)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292331.P13214494228041948466

/-!
# A292332: Numbers k such that k^2 divides 6^k + 1.

The programs for A292332, there is no canonical definition to state claims against.
-/

/-! ## A292332.P6076646588662514833

`A128680(A336956(n)+A103373(n+1))`
-/

namespace A292332.P6076646588662514833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128680 (A336956 n + A103373 (n + 1)).toNat

end

end A292332.P6076646588662514833

/-! ## A292332.P556438200523081492

`A128680(A189891(n+1)%A136373(n+2))`
-/

namespace A292332.P556438200523081492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128680 (Int.tmod (A189891 (n + 1)) (A136373 (n + 2))).toNat

end

end A292332.P556438200523081492

/-! ## A292332.P11699050162227423214

`A128680(∑[((n-and(n, 3*n))/2)!])`
-/

namespace A292332.P11699050162227423214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (((n : ℤ) - (Nat.land n (3 * n) : ℤ) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128680 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292332.P11699050162227423214

/-! ## A292332.P12281906822876535703

`A128680(∑[A121392((n-and(n, 3*n))/2)])`
-/

namespace A292332.P12281906822876535703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121392 (SequenceMachineLib.roundAway (((n : ℤ) - (Nat.land n (3 * n) : ℤ) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128680 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292332.P12281906822876535703

/-! ## A292332.P13621320351406950136

`A128680(A286997(n+1)^A055640(n))`
-/

namespace A292332.P13621320351406950136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128680 (SequenceMachineLib.roundAway ((A286997 (n + 1) : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A292332.P13621320351406950136

/-!
# A292333: Numbers k such that k^2 divides 8^k + 1.

The programs for A292333, there is no canonical definition to state claims against.
-/

/-! ## A292333.P8823343917400585312

`filter[A015955(n+1), A371087(#)]`
-/

namespace A292333.P8823343917400585312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A292333.P8823343917400585312

/-! ## A292333.P9139458464025347697

`A128681(∑[A215870(3*n+2)²])`
-/

namespace A292333.P9139458464025347697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (3 * n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128681 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292333.P9139458464025347697

/-! ## A292333.P7587189143843375814

`∩[A093546(A005100(n+1)), A128681(n+1)]`
-/

namespace A292333.P7587189143843375814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093546 (A005100 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292333.P7587189143843375814

/-!
# A292334: Numbers k such that k^2 divides 9^k + 1.

The programs for A292334, there is no canonical definition to state claims against.
-/

/-! ## A292334.P11271444937961108292

`A128682(A041099(n)+n)`
-/

namespace A292334.P11271444937961108292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128682 (A041099 n + (n : ℤ)).toNat

end

end A292334.P11271444937961108292

/-!
# A292335: Numbers k such that k^2 divides 10^k + 1.

The programs for A292335, there is no canonical definition to state claims against.
-/

/-! ## A292335.P9710432533577948327

`∩[A015958(n+1), A128683(n+1)]`
-/

namespace A292335.P9710432533577948327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292335.P9710432533577948327

/-! ## A292335.P12408749820871208858

`A128683(lt[A017980(n), A131393(n+1)])`
-/

namespace A292335.P12408749820871208858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128683 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292335.P12408749820871208858

/-! ## A292335.P2341252219234804862

`record[∏{p}[A015958(n+1), #]]`
-/

namespace A292335.P2341252219234804862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015958 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292335.P2341252219234804862

/-! ## A292335.P2940676675168304316

`∏{p}[A128683(A029747(n+1)), #]`
-/

namespace A292335.P2940676675168304316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128683 (A029747 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A292335.P2940676675168304316

/-!
# A292336: Numbers k such that k^2 divides 11^k + 1.

The programs for A292336, there is no canonical definition to state claims against.
-/

/-! ## A292336.P11590810964516369971

`A128684(A218702(2^n))`
-/

namespace A292336.P11590810964516369971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128684 (A218702 (2 ^ n)).toNat

end

end A292336.P11590810964516369971

/-!
# A292337: Numbers k such that k^2 divides 12^k + 1.

The programs for A292337, there is no canonical definition to state claims against.
-/

/-! ## A292337.P601133237631246264

`A128685(∑[A343593(n)])`
-/

namespace A292337.P601133237631246264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128685 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292337.P601133237631246264

/-! ## A292337.P8003674123116667766

`A128685(lt[A246084(n+1), A001177(n+1)])`
-/

namespace A292337.P8003674123116667766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128685 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292337.P8003674123116667766

/-! ## A292337.P11959233897450597690

`A128685(A270890(n+1)+A239736(2*(n+1)))`
-/

namespace A292337.P11959233897450597690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128685 (A270890 (n + 1) + A239736 (2 * (n + 1))).toNat

end

end A292337.P11959233897450597690

/-!
# A292338: Numbers k such that k^2 divides 13^k + 1.

The programs for A292338, there is no canonical definition to state claims against.
-/

/-! ## A292338.P5664060337645287535

`A177813(lt[A177847(2*n+5), A177813(n+1)])`
-/

namespace A292338.P5664060337645287535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177847 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177813 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292338.P5664060337645287535

/-! ## A292338.P10541310080456153905

`A177813(A165655(n)+1+n)`
-/

namespace A292338.P10541310080456153905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177813 (A165655 n + 1 + (n : ℤ)).toNat

end

end A292338.P10541310080456153905

/-! ## A292338.P11360813187247961216

`A177813(A029964(n+2))`
-/

namespace A292338.P11360813187247961216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177813 (A029964 (n + 2)).toNat

end

end A292338.P11360813187247961216

/-!
# A292339: Numbers k such that k^2 divides 14^k + 1.

The programs for A292339, there is no canonical definition to state claims against.
-/

/-! ## A292339.P4160198510558265841

`filter[A015965(n+1), A008966(#)]`
-/

namespace A292339.P4160198510558265841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A292339.P4160198510558265841

/-! ## A292339.P9033660304635401997

`filter[A015965(n+1), A359590(#)]`
-/

namespace A292339.P9033660304635401997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A292339.P9033660304635401997

/-! ## A292339.P16438074798036377000

`filter[A015965(n+1), A359592(#)]`
-/

namespace A292339.P16438074798036377000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A292339.P16438074798036377000

/-! ## A292339.P10914646098005934933

`filter[A015965(n+1), A359834(#)]`
-/

namespace A292339.P10914646098005934933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A292339.P10914646098005934933

/-! ## A292339.P2187327634917059389

`filter[A015965(n+1), A323154(#)]`
-/

namespace A292339.P2187327634917059389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A292339.P2187327634917059389

/-!
# A292341: Number of unrooted loops of length 2n on the square lattice that have winding number +1 around a fixed off-lattice point.

The programs for A292341, there is no canonical definition to state claims against.
-/

/-! ## A292341.P12883687664830755971

`or(A015549(A005797(n)), A119463(n+2))`
-/

namespace A292341.P12883687664830755971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015549 (A005797 n).toNat) (A119463 (n + 2))

end

end A292341.P12883687664830755971

/-!
# A292342: Number of singletons in the integer partition having viabin number n.

The programs for A292342, the canonical program `A292342.P16656484624967896721` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292342 has offset 1).

The definition of A292342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290260, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292342.P16656484624967896721

`A290260(2*(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A292342

/-- `A290260(2*(n+1))` -/
def P16656484624967896721.Spec : Prop :=
  ∀ n, P16656484624967896721.a n = A292342 (n + 1)

theorem P16656484624967896721.correct : P16656484624967896721.Spec := by
  intro n
  simp only [A292342, Nat.add_sub_cancel]

end A292342

/-! ## A292342.P7191362684054501433

`A056979(n+1)+log2(gcd(2, n))`
-/

namespace A292342.P7191362684054501433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056979 (n + 1) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A292342.P7191362684054501433

namespace A292342

/-- `A056979(n+1)+log2(gcd(2, n))` -/
def P7191362684054501433.Spec : Prop :=
  ∀ n, P7191362684054501433.a n = (A292342 (n + 1) : ℝ)

end A292342

/-! ## A292342.P17440468897239389396

`and(7, A290260(record[xor(5, n+1)+1]))`
-/

namespace A292342.P17440468897239389396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A290260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A292342.P17440468897239389396

namespace A292342

/-- `and(7, A290260(record[xor(5, n+1)+1]))` -/
def P17440468897239389396.Spec : Prop :=
  ∀ n, P17440468897239389396.a n = A292342 (n + 1)

end A292342

/-! ## A292342.P14928178811488184182

`A059841(n)+A056979(n+1)`
-/

namespace A292342.P14928178811488184182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A056979 (n + 1)

end

end A292342.P14928178811488184182

namespace A292342

/-- `A059841(n)+A056979(n+1)` -/
def P14928178811488184182.Spec : Prop :=
  ∀ n, P14928178811488184182.a n = A292342 (n + 1)

end A292342

/-! ## A292342.P12303979227570591587

`A056979(n+1)+1-A000035(n)`
-/

namespace A292342.P12303979227570591587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (n + 1) + (1 - A000035 n)

end

end A292342.P12303979227570591587

namespace A292342

/-- `A056979(n+1)+1-A000035(n)` -/
def P12303979227570591587.Spec : Prop :=
  ∀ n, P12303979227570591587.a n = A292342 (n + 1)

end A292342

/-! ## A292342.P4645530913948081337

`A056979(n+1)+A000035(n+1)`
-/

namespace A292342.P4645530913948081337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (n + 1) + A000035 (n + 1)

end

end A292342.P4645530913948081337

namespace A292342

/-- `A056979(n+1)+A000035(n+1)` -/
def P4645530913948081337.Spec : Prop :=
  ∀ n, P4645530913948081337.a n = A292342 (n + 1)

end A292342

/-! ## A292342.P12394770080962904585

`dr(A290260(A004769(n)))`
-/

namespace A292342.P12394770080962904585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A290260 (A004769 n).toNat)

end

end A292342.P12394770080962904585

namespace A292342

/-- `dr(A290260(A004769(n)))` -/
def P12394770080962904585.Spec : Prop :=
  ∀ n, (P12394770080962904585.a n : ℤ) = A292342 (n + 1)

end A292342

/-! ## A292342.P17559547429051788836

`A277937(A059894(n+1))`
-/

namespace A292342.P17559547429051788836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A059894 (n + 1)).toNat

end

end A292342.P17559547429051788836

namespace A292342

/-- `A277937(A059894(n+1))` -/
def P17559547429051788836.Spec : Prop :=
  ∀ n, P17559547429051788836.a n = A292342 (n + 1)

end A292342

/-! ## A292342.P13433637616266769836

`A277937(A261693(n+1))`
-/

namespace A292342.P13433637616266769836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A261693 (n + 1)).toNat

end

end A292342.P13433637616266769836

namespace A292342

/-- `A277937(A261693(n+1))` -/
def P13433637616266769836.Spec : Prop :=
  ∀ n, P13433637616266769836.a n = A292342 (n + 1)

end A292342

/-! ## A292342.P3538866351711505684

`A056979(n+1)+A014577(2*n)`
-/

namespace A292342.P3538866351711505684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (n + 1) + A014577 (2 * n)

end

end A292342.P3538866351711505684

namespace A292342

/-- `A056979(n+1)+A014577(2*n)` -/
def P3538866351711505684.Spec : Prop :=
  ∀ n, P3538866351711505684.a n = A292342 (n + 1)

end A292342

/-! ## A292342.P9875727156413818904

`A033264(2*(n+1))-A056978(2*(n+1))`
-/

namespace A292342.P9875727156413818904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (2 * (n + 1)) - A056978 (2 * (n + 1))

end

end A292342.P9875727156413818904

namespace A292342

/-- `A033264(2*(n+1))-A056978(2*(n+1))` -/
def P9875727156413818904.Spec : Prop :=
  ∀ n, P9875727156413818904.a n = A292342 (n + 1)

end A292342

/-! ## A292342.P7410007157184346473

`A033264(2*(n+1))-A033264(A106151(2*(n+1)))`
-/

namespace A292342.P7410007157184346473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (2 * (n + 1)) - A033264 (A106151 (2 * (n + 1))).toNat

end

end A292342.P7410007157184346473

namespace A292342

/-- `A033264(2*(n+1))-A033264(A106151(2*(n+1)))` -/
def P7410007157184346473.Spec : Prop :=
  ∀ n, P7410007157184346473.a n = A292342 (n + 1)

end A292342

/-! ## A292342.P8307569166088702526

`A056979(A047444(2*(n+1))+2)`
-/

namespace A292342.P8307569166088702526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (A047444 (2 * (n + 1)) + 2).toNat

end

end A292342.P8307569166088702526

namespace A292342

/-- `A056979(A047444(2*(n+1))+2)` -/
def P8307569166088702526.Spec : Prop :=
  ∀ n, P8307569166088702526.a n = A292342 (n + 1)

end A292342

/-! ## A292342.P768293839421215657

`A056979(4*n+5)`
-/

namespace A292342.P768293839421215657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (4 * n + 5)

end

end A292342.P768293839421215657

namespace A292342

/-- `A056979(4*n+5)` -/
def P768293839421215657.Spec : Prop :=
  ∀ n, P768293839421215657.a n = A292342 (n + 1)

end A292342

/-! ## A292342.P8751755663759761621

`A056169(A278533(n+1))`
-/

namespace A292342.P8751755663759761621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A278533 (n + 1)).toNat

end

end A292342.P8751755663759761621

namespace A292342

/-- `A056169(A278533(n+1))` -/
def P8751755663759761621.Spec : Prop :=
  ∀ n, P8751755663759761621.a n = A292342 (n + 1)

end A292342

/-! ## A292342.P9972576119772356490

`A056169(A253563(n+1))`
-/

namespace A292342.P9972576119772356490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A253563 (n + 1)).toNat

end

end A292342.P9972576119772356490

namespace A292342

/-- `A056169(A253563(n+1))` -/
def P9972576119772356490.Spec : Prop :=
  ∀ n, P9972576119772356490.a n = A292342 (n + 1)

end A292342

/-!
# A292343: The PI index of the Aztec diamond AZ(n) (see the Imran et al. reference).

The programs for A292343, the canonical program `A292343.P5067003601439478985` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292343 has offset 1).

The definition of A292343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292343.P5067003601439478985

`4/3*(n+1)*(12*(n+1)^3+44*(n+1)²+36*(n+1)-11)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A292343

/-- `4/3*(n+1)*(12*(n+1)^3+44*(n+1)²+36*(n+1)-11)` -/
def P5067003601439478985.Spec : Prop :=
  ∀ n, P5067003601439478985.a n = (A292343 (n + 1) : ℚ)

end A292343

/-! ## A292343.P12497168450914892819

`∑[A017113(n)*A181890(n+1)]`
-/

namespace A292343.P12497168450914892819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n * A181890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292343.P12497168450914892819

namespace A292343

/-- `∑[A017113(n)*A181890(n+1)]` -/
def P12497168450914892819.Spec : Prop :=
  ∀ n, P12497168450914892819.a n = A292343 (n + 1)

end A292343

/-! ## A292343.P8280534754920087817

`∑[A017089(n+2)*A054000(2*(n+1))]`
-/

namespace A292343.P8280534754920087817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (n + 2) * A054000 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292343.P8280534754920087817

namespace A292343

/-- `∑[A017089(n+2)*A054000(2*(n+1))]` -/
def P8280534754920087817.Spec : Prop :=
  ∀ n, P8280534754920087817.a n = A292343 (n + 1)

end A292343

/-! ## A292343.P9295129994697664437

`∑[(8*n+4)*A014106(2*n+3)]`
-/

namespace A292343.P9295129994697664437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 4 : ℤ) * A014106 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292343.P9295129994697664437

namespace A292343

/-- `∑[(8*n+4)*A014106(2*n+3)]` -/
def P9295129994697664437.Spec : Prop :=
  ∀ n, P9295129994697664437.a n = A292343 (n + 1)

end A292343

/-! ## A292343.P9921064922420885500

`∑[A014106(A144396(n+1))*A017113(n)]`
-/

namespace A292343.P9921064922420885500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 (A144396 (n + 1)).toNat * A017113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292343.P9921064922420885500

namespace A292343

/-- `∑[A014106(A144396(n+1))*A017113(n)]` -/
def P9921064922420885500.Spec : Prop :=
  ∀ n, P9921064922420885500.a n = A292343 (n + 1)

end A292343

/-! ## A292343.P13171795646584013825

`∑[A000096(4*n+6)*(8*n+4)]`
-/

namespace A292343.P13171795646584013825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (4 * n + 6) * (8 * n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292343.P13171795646584013825

namespace A292343

/-- `∑[A000096(4*n+6)*(8*n+4)]` -/
def P13171795646584013825.Spec : Prop :=
  ∀ n, P13171795646584013825.a n = A292343 (n + 1)

end A292343

/-!
# A292344: The first Zagreb index of the Aztec diamond AZ(n) (see the Ramanes et al. reference, Theorem 2.1).

The programs for A292344, the canonical program `A292344.P1376172059074891051` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292344 has offset 1).

The definition of A292344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292344.P1376172059074891051

`32*(n+1)²+48*(n+1)-12`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A292344

/-- `32*(n+1)²+48*(n+1)-12` -/
def P1376172059074891051.Spec : Prop :=
  ∀ n, P1376172059074891051.a n = A292344 (n + 1)

theorem P1376172059074891051.correct : P1376172059074891051.Spec := by
  intro n
  simp only [A292344, Nat.add_sub_cancel]

end A292344

/-! ## A292344.P2296350088097389648

`2*(8*A091823(n+1)+2)`
-/

namespace A292344.P2296350088097389648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (8 * A091823 (n + 1) + 2)

end

end A292344.P2296350088097389648

namespace A292344

/-- `2*(8*A091823(n+1)+2)` -/
def P2296350088097389648.Spec : Prop :=
  ∀ n, P2296350088097389648.a n = A292344 (n + 1)

end A292344

/-! ## A292344.P15251300974214118954

`4*(A118057(n+2)-4)`
-/

namespace A292344.P15251300974214118954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A118057 (n + 2) - 4)

end

end A292344.P15251300974214118954

namespace A292344

/-- `4*(A118057(n+2)-4)` -/
def P15251300974214118954.Spec : Prop :=
  ∀ n, P15251300974214118954.a n = A292344 (n + 1)

end A292344

/-! ## A292344.P17547761695403764816

`2*(A145923(2*n+1)+1)`
-/

namespace A292344.P17547761695403764816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A145923 (2 * n + 1) + 1)

end

end A292344.P17547761695403764816

namespace A292344

/-- `2*(A145923(2*n+1)+1)` -/
def P17547761695403764816.Spec : Prop :=
  ∀ n, P17547761695403764816.a n = A292344 (n + 1)

end A292344

/-! ## A292344.P17227562053005605713

`2*(A277385(2*(n+1))+1)`
-/

namespace A292344.P17227562053005605713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A277385 (2 * (n + 1)) + 1)

end

end A292344.P17227562053005605713

namespace A292344

/-- `2*(A277385(2*(n+1))+1)` -/
def P17227562053005605713.Spec : Prop :=
  ∀ n, P17227562053005605713.a n = A292344 (n + 1)

end A292344

/-! ## A292344.P2692022507537900856

`2*(A028993(n+1)+A008589(2*n+1))`
-/

namespace A292344.P2692022507537900856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028993 (n + 1) + A008589 (2 * n + 1))

end

end A292344.P2692022507537900856

namespace A292344

/-- `2*(A028993(n+1)+A008589(2*n+1))` -/
def P2692022507537900856.Spec : Prop :=
  ∀ n, P2692022507537900856.a n = A292344 (n + 1)

end A292344

/-! ## A292344.P5559091809217351433

`2*(A010022(n+1)-A005897(2*n+1))`
-/

namespace A292344.P5559091809217351433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010022 (n + 1) - A005897 (2 * n + 1))

end

end A292344.P5559091809217351433

namespace A292344

/-- `2*(A010022(n+1)-A005897(2*n+1))` -/
def P5559091809217351433.Spec : Prop :=
  ∀ n, P5559091809217351433.a n = A292344 (n + 1)

end A292344

/-! ## A292344.P10742719735753441892

`2*(A004768(n)+A004768(A090288(n)))`
-/

namespace A292344.P10742719735753441892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004768 n + A004768 (A090288 n).toNat)

end

end A292344.P10742719735753441892

namespace A292344

/-- `2*(A004768(n)+A004768(A090288(n)))` -/
def P10742719735753441892.Spec : Prop :=
  ∀ n, P10742719735753441892.a n = A292344 (n + 1)

end A292344

/-! ## A292344.P7067624981472416864

`A063110(A014106(n+1))`
-/

namespace A292344.P7067624981472416864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063110 (A014106 (n + 1)).toNat

end

end A292344.P7067624981472416864

namespace A292344

/-- `A063110(A014106(n+1))` -/
def P7067624981472416864.Spec : Prop :=
  ∀ n, P7067624981472416864.a n = A292344 (n + 1)

end A292344

/-! ## A292344.P13857004398332810971

`A119413(A000384(n+2)-1)`
-/

namespace A292344.P13857004398332810971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119413 (A000384 (n + 2) - 1).toNat

end

end A292344.P13857004398332810971

namespace A292344

/-- `A119413(A000384(n+2)-1)` -/
def P13857004398332810971.Spec : Prop :=
  ∀ n, P13857004398332810971.a n = A292344 (n + 1)

end A292344

/-!
# A292345: The second Zagreb index of the Aztec diamond AZ(n) (see the Ramanes et al. reference, Theorem 2.2).

The programs for A292345, the canonical program `A292345.P16714107162437183346` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292345 has offset 1).

The definition of A292345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292345.P16714107162437183346

`64*(n+1)²+64*(n+1)-32`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A292345

/-- `64*(n+1)²+64*(n+1)-32` -/
def P16714107162437183346.Spec : Prop :=
  ∀ n, P16714107162437183346.a n = A292345 (n + 1)

theorem P16714107162437183346.correct : P16714107162437183346.Spec := by
  intro n
  simp only [A292345, Nat.add_sub_cancel]

end A292345

/-! ## A292345.P7732127957196577054

`lcm(32, 1-∑[4*(n+1)])`
-/

namespace A292345.P7732127957196577054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 32 (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A292345.P7732127957196577054

namespace A292345

/-- `lcm(32, 1-∑[4*(n+1)])` -/
def P7732127957196577054.Spec : Prop :=
  ∀ n, (P7732127957196577054.a n : ℤ) = A292345 (n + 1)

end A292345

/-! ## A292345.P2900569480777165229

`8*4*(∑[ogf(4/(1-2x+x^2))]-1)`
-/

namespace A292345.P2900569480777165229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j - 1))

end

end A292345.P2900569480777165229

namespace A292345

/-- `8*4*(∑[ogf(4/(1-2x+x^2))]-1)` -/
def P2900569480777165229.Spec : Prop :=
  ∀ n, P2900569480777165229.a n = A292345 (n + 1)

end A292345

/-! ## A292345.P8350920237302741839

`8*8/2*A142463(n+1)`
-/

namespace A292345.P8350920237302741839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((8 : ℚ) / 2) * (A142463 (n + 1) : ℚ)

end

end A292345.P8350920237302741839

namespace A292345

/-- `8*8/2*A142463(n+1)` -/
def P8350920237302741839.Spec : Prop :=
  ∀ n, P8350920237302741839.a n = (A292345 (n + 1) : ℚ)

end A292345

/-! ## A292345.P8975143064308685759

`32*(4*A000217(n+1)-1)`
-/

namespace A292345.P8975143064308685759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * (4 * A000217 (n + 1) - 1)

end

end A292345.P8975143064308685759

namespace A292345

/-- `32*(4*A000217(n+1)-1)` -/
def P8975143064308685759.Spec : Prop :=
  ∀ n, P8975143064308685759.a n = A292345 (n + 1)

end A292345

/-! ## A292345.P14995989313044863194

`64*(A046092(n+1)-1)/2`
-/

namespace A292345.P14995989313044863194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (64 * (A046092 (n + 1) - 1) : ℚ) / 2

end

end A292345.P14995989313044863194

namespace A292345

/-- `64*(A046092(n+1)-1)/2` -/
def P14995989313044863194.Spec : Prop :=
  ∀ n, P14995989313044863194.a n = (A292345 (n + 1) : ℚ)

end A292345

/-! ## A292345.P8317958916794901300

`4*8*(A014105(n+1)+n)`
-/

namespace A292345.P8317958916794901300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (8 * (A014105 (n + 1) + (n : ℤ)))

end

end A292345.P8317958916794901300

namespace A292345

/-- `4*8*(A014105(n+1)+n)` -/
def P8317958916794901300.Spec : Prop :=
  ∀ n, P8317958916794901300.a n = A292345 (n + 1)

end A292345

/-! ## A292345.P16923823381051232589

`32*(A000217(2*(n+1))+n)`
-/

namespace A292345.P16923823381051232589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * (A000217 (2 * (n + 1)) + (n : ℤ))

end

end A292345.P16923823381051232589

namespace A292345

/-- `32*(A000217(2*(n+1))+n)` -/
def P16923823381051232589.Spec : Prop :=
  ∀ n, P16923823381051232589.a n = A292345 (n + 1)

end A292345

/-! ## A292345.P7876968550637382617

`(A035008(n+1)-4)*8`
-/

namespace A292345.P7876968550637382617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035008 (n + 1) - 4) * 8

end

end A292345.P7876968550637382617

namespace A292345

/-- `(A035008(n+1)-4)*8` -/
def P7876968550637382617.Spec : Prop :=
  ∀ n, P7876968550637382617.a n = A292345 (n + 1)

end A292345

/-! ## A292345.P8252722765038947175

`8*A152811(2*(n+1))`
-/

namespace A292345.P8252722765038947175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A152811 (2 * (n + 1))

end

end A292345.P8252722765038947175

namespace A292345

/-- `8*A152811(2*(n+1))` -/
def P8252722765038947175.Spec : Prop :=
  ∀ n, P8252722765038947175.a n = A292345 (n + 1)

end A292345

/-! ## A292345.P14394997661181542663

`Δ[A019560(n)+A010006(2*n)]`
-/

namespace A292345.P14394997661181542663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019560 n + A010006 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292345.P14394997661181542663

namespace A292345

/-- `Δ[A019560(n)+A010006(2*n)]` -/
def P14394997661181542663.Spec : Prop :=
  ∀ n, P14394997661181542663.a n = A292345 (n + 1)

end A292345

/-! ## A292345.P3908388641468440247

`Δ[A010006(2*n)+∑[A115293(2*n)]]`
-/

namespace A292345.P3908388641468440247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115293 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010006 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292345.P3908388641468440247

namespace A292345

/-- `Δ[A010006(2*n)+∑[A115293(2*n)]]` -/
def P3908388641468440247.Spec : Prop :=
  ∀ n, P3908388641468440247.a n = A292345 (n + 1)

end A292345

/-! ## A292345.P6274139370706153814

`A000034(2*n+1)²²*A028872(2*n+3)`
-/

namespace A292345.P6274139370706153814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 (2 * n + 1) ^ 2) ^ 2 * A028872 (2 * n + 3)

end

end A292345.P6274139370706153814

namespace A292345

/-- `A000034(2*n+1)²²*A028872(2*n+3)` -/
def P6274139370706153814.Spec : Prop :=
  ∀ n, P6274139370706153814.a n = A292345 (n + 1)

end A292345

/-! ## A292345.P15113717927928563929

`A020639(2*(n+1))²²*A028872(2*n+3)`
-/

namespace A292345.P15113717927928563929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 1)) ^ 2) ^ 2 * A028872 (2 * n + 3)

end

end A292345.P15113717927928563929

namespace A292345

/-- `A020639(2*(n+1))²²*A028872(2*n+3)` -/
def P15113717927928563929.Spec : Prop :=
  ∀ n, P15113717927928563929.a n = A292345 (n + 1)

end A292345

/-! ## A292345.P13941935948347748405

`(A174312(2*n+1)-A174312(2*n))*A132209(n+1)`
-/

namespace A292345.P13941935948347748405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174312 (2 * n + 1) - A174312 (2 * n)) * A132209 (n + 1)

end

end A292345.P13941935948347748405

namespace A292345

/-- `(A174312(2*n+1)-A174312(2*n))*A132209(n+1)` -/
def P13941935948347748405.Spec : Prop :=
  ∀ n, P13941935948347748405.a n = A292345 (n + 1)

end A292345

/-! ## A292345.P4224080637473585120

`Δ[2*A274974(2*n)]`
-/

namespace A292345.P4224080637473585120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274974 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292345.P4224080637473585120

namespace A292345

/-- `Δ[2*A274974(2*n)]` -/
def P4224080637473585120.Spec : Prop :=
  ∀ n, P4224080637473585120.a n = A292345 (n + 1)

end A292345

/-!
# A292346: The forgotten topological index of the Aztec diamond AZ(n) (see the Ramanes et al. reference, Theorem 2.1).

The programs for A292346, the canonical program `A292346.P17757179830755498761` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292346 has offset 1).

The definition of A292346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292346.P17757179830755498761

`128*(n+1)²+160*(n+1)-84`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A292346

/-- `128*(n+1)²+160*(n+1)-84` -/
def P17757179830755498761.Spec : Prop :=
  ∀ n, P17757179830755498761.a n = A292346 (n + 1)

theorem P17757179830755498761.correct : P17757179830755498761.Spec := by
  intro n
  simp only [A292346, Nat.add_sub_cancel]

end A292346

/-! ## A292346.P8149148586446693339

`4*A154591(4*n+2)`
-/

namespace A292346.P8149148586446693339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A154591 (4 * n + 2)

end

end A292346.P8149148586446693339

namespace A292346

/-- `4*A154591(4*n+2)` -/
def P8149148586446693339.Spec : Prop :=
  ∀ n, P8149148586446693339.a n = A292346 (n + 1)

end A292346

/-! ## A292346.P12110435961501397666

`lcm(4, A154591(A016825(n)))`
-/

namespace A292346.P12110435961501397666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A154591 (A016825 n).toNat)

end

end A292346.P12110435961501397666

namespace A292346

/-- `lcm(4, A154591(A016825(n)))` -/
def P12110435961501397666.Spec : Prop :=
  ∀ n, (P12110435961501397666.a n : ℤ) = A292346 (n + 1)

end A292346

/-! ## A292346.P18410631532754470788

`Δ[A033586(4*n)+A006331(4*n)]`
-/

namespace A292346.P18410631532754470788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 (4 * n) + A006331 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292346.P18410631532754470788

namespace A292346

/-- `Δ[A033586(4*n)+A006331(4*n)]` -/
def P18410631532754470788.Spec : Prop :=
  ∀ n, P18410631532754470788.a n = A292346 (n + 1)

end A292346

/-!
# A292347: Möbius function of absolute order.

The programs for A292347, there is no canonical definition to state claims against.
-/

/-! ## A292347.P13947377572157126398

`A101682(n+1)/(n+2)`
-/

namespace A292347.P13947377572157126398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101682 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A292347.P13947377572157126398

/-! ## A292347.P15327347626970536721

`and(A007139(n), A247681(A187673(2*n)))`
-/

namespace A292347.P15327347626970536721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007139 n) (A247681 (A187673 (2 * n)).toNat)

end

end A292347.P15327347626970536721

/-!
# A292349: Pri-most primes: primes p such that the majority of bits in the binary representation of p satisfy the following: complementing this bit produces a prime number.

The programs for A292349, there is no canonical definition to state claims against.
-/

/-! ## A292349.P3107740827257049935

`p?[A292348(n+1)]`
-/

namespace A292349.P3107740827257049935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292349.P3107740827257049935

/-!
# A292350: Number of Lyndon words (aperiodic necklaces) with 6 beads of n colors.

The programs for A292350, the canonical program `A292350.P9593025111163679209` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292350 has offset 1).

The definition of A292350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292350.P9593025111163679209

`(n+1)*n*(n+2)*((n+1)^3+n)/6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A292350

/-- `(n+1)*n*(n+2)*((n+1)^3+n)/6` -/
def P9593025111163679209.Spec : Prop :=
  ∀ n, P9593025111163679209.a n = (A292350 (n + 1) : ℚ)

end A292350

/-! ## A292350.P4051006851091567278

`∑[∑[n*(A008531(n)-1)]]`
-/

namespace A292350.P4051006851091567278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008531 n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292350.P4051006851091567278

namespace A292350

/-- `∑[∑[n*(A008531(n)-1)]]` -/
def P4051006851091567278.Spec : Prop :=
  ∀ n, P4051006851091567278.a n = A292350 (n + 1)

end A292350

/-! ## A292350.P5884746844639503411

`A006565(n+1)-∑[(n+1)²]`
-/

namespace A292350.P5884746844639503411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006565 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A292350.P5884746844639503411

namespace A292350

/-- `A006565(n+1)-∑[(n+1)²]` -/
def P5884746844639503411.Spec : Prop :=
  ∀ n, P5884746844639503411.a n = A292350 (n + 1)

end A292350

/-! ## A292350.P13475415492965665120

`A000292(n)*A034262(n+1)-A000292(n)`
-/

namespace A292350.P13475415492965665120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A034262 (n + 1) - A000292 n

end

end A292350.P13475415492965665120

namespace A292350

/-- `A000292(n)*A034262(n+1)-A000292(n)` -/
def P13475415492965665120.Spec : Prop :=
  ∀ n, P13475415492965665120.a n = A292350 (n + 1)

end A292350

/-! ## A292350.P4987795596545612231

`A218130(n+1)/6`
-/

namespace A292350.P4987795596545612231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218130 (n + 1) : ℚ) / 6

end

end A292350.P4987795596545612231

namespace A292350

/-- `A218130(n+1)/6` -/
def P4987795596545612231.Spec : Prop :=
  ∀ n, P4987795596545612231.a n = (A292350 (n + 1) : ℚ)

end A292350

/-! ## A292350.P5606242061353694533

`A000292(A005563(n))-∑[∑[n]]`
-/

namespace A292350.P5606242061353694533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A005563 n).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A292350.P5606242061353694533

namespace A292350

/-- `A000292(A005563(n))-∑[∑[n]]` -/
def P5606242061353694533.Spec : Prop :=
  ∀ n, P5606242061353694533.a n = A292350 (n + 1)

end A292350

/-! ## A292350.P6659942324034483805

`A000292(n*(n+2))-A000292(n)`
-/

namespace A292350.P6659942324034483805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n * (n + 2)) - A000292 n

end

end A292350.P6659942324034483805

namespace A292350

/-- `A000292(n*(n+2))-A000292(n)` -/
def P6659942324034483805.Spec : Prop :=
  ∀ n, P6659942324034483805.a n = A292350 (n + 1)

end A292350

/-! ## A292350.P4054528918063992021

`(A108766(A005563(n))-A108766(n))/2`
-/

namespace A292350.P4054528918063992021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108766 (A005563 n).toNat - A108766 n : ℚ) / 2

end

end A292350.P4054528918063992021

namespace A292350

/-- `(A108766(A005563(n))-A108766(n))/2` -/
def P4054528918063992021.Spec : Prop :=
  ∀ n, P4054528918063992021.a n = (A292350 (n + 1) : ℚ)

end A292350

/-!
# A292351: a(1) = a(2) = 1, a(3) = 3, a(4) = a(5) = 4; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 5.

The programs for A292351, the canonical program `A292351.P9435269471014075121` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292351 has offset 1).

The definition of A292351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` (program `A292351.P9435269471014075121`, by `A292351.P9435269471014075121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292351.P9435269471014075121

`a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A292351

/-- `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` -/
def P9435269471014075121.Spec : Prop :=
  ∀ n, (P9435269471014075121.a n : ℤ) = A292351 (n + 1)

theorem P9435269471014075121.correct : P9435269471014075121.Spec := by
  intro n
  simp only [A292351, Nat.add_sub_cancel]

end A292351

/-!
# A292352: Numbers that generate Lucas-Carmichael numbers using an adjusted version of Erdős's method.

The programs for A292352, there is no canonical definition to state claims against.
-/

/-! ## A292352.P13912008038242598097

`∩[A368242(n+1), A173035(n)]`
-/

namespace A292352.P13912008038242598097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173035 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292352.P13912008038242598097

/-! ## A292352.P115257026181514429

`∩[A224907(n+1), A363768(n+1)]`
-/

namespace A292352.P115257026181514429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292352.P115257026181514429

/-! ## A292352.P1194744894141039192

`A302297(lt[A260653(n+2), A265322(2*n)])`
-/

namespace A292352.P1194744894141039192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265322 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302297 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292352.P1194744894141039192

/-! ## A292352.P11820108470998907135

`∑{e}[3^(n+2), A359565(#)]`
-/

namespace A292352.P11820108470998907135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A359565 (Nat.factorization (f1 n) p)

end

end A292352.P11820108470998907135

/-! ## A292352.P8284840360603937170

`A212790(A228870(n+2))`
-/

namespace A292352.P8284840360603937170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212790 (A228870 (n + 2)).toNat

end

end A292352.P8284840360603937170

/-!
# A292353: Numbers n with a record number of Lucas-Carmichael numbers that can be generated from them using an adjusted version of Erdős's method.

The programs for A292353, there is no canonical definition to state claims against.
-/

/-! ## A292353.P12866085849406458523

`A393508(A116602(n+1))`
-/

namespace A292353.P12866085849406458523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393508 (A116602 (n + 1)).toNat

end

end A292353.P12866085849406458523

/-! ## A292353.P11522387600391072732

`A001175(A000096(3*(n+1))*A001333(n))`
-/

namespace A292353.P11522387600391072732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A000096 (3 * (n + 1)) * A001333 n).toNat

end

end A292353.P11522387600391072732

/-!
# A292354: Numbers n with a record size of the largest Lucas-Carmichael number that can be generated from them using an adjusted version of Erdős's method.

The programs for A292354, there is no canonical definition to state claims against.
-/

/-! ## A292354.P16232915437792092251

`∩[A246094(n+1), A343797(n+1)]`
-/

namespace A292354.P16232915437792092251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292354.P16232915437792092251

/-! ## A292354.P15566586501370039532

`A141766(eq[A005044(n), A193592(n)])`
-/

namespace A292354.P15566586501370039532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141766 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292354.P15566586501370039532

/-!
# A292357: Array read by antidiagonals: T(m,n) is the number of fixed polyominoes that have a width of m and height of n.

The programs for A292357, there is no canonical definition to state claims against.
-/

/-! ## A292357.P7602321954710446303

`A080405(A157277(n))+1`
-/

namespace A292357.P7602321954710446303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080405 (A157277 n).toNat + 1

end

end A292357.P7602321954710446303

/-! ## A292357.P6769438199371580401

`or(1, A226143(A157641(n)))`
-/

namespace A292357.P6769438199371580401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A226143 (A157641 n).toNat)

end

end A292357.P6769438199371580401

/-! ## A292357.P385734787250346580

`A226143(A176420(n)+A157641(n))`
-/

namespace A292357.P385734787250346580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A176420 n + A157641 n).toNat

end

end A292357.P385734787250346580

/-! ## A292357.P380625987889516230

`A232103(n+1)+A137579(A143007(n))`
-/

namespace A292357.P380625987889516230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232103 (n + 1) + A137579 (A143007 n).toNat

end

end A292357.P380625987889516230

/-! ## A292357.P2044663743102211073

`or(A157147(n), A157188(A241390(n+2)))`
-/

namespace A292357.P2044663743102211073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A157147 n) (A157188 (A241390 (n + 2)).toNat)

end

end A292357.P2044663743102211073

/-!
# A292358: E.g.f.: Product_{k>=1} 1/(1 + x^k/k).

The programs for A292358, there is no canonical definition to state claims against.
-/

/-! ## A292358.P5639387603176401629

`A213369(A191468(n)/3+1)`
-/

namespace A292358.P5639387603176401629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213369 (SequenceMachineLib.roundAway ((A191468 n : ℚ) / 3 + 1)).toNat

end

end A292358.P5639387603176401629

/-! ## A292358.P12621981081857861694

`A343631(A361568(n))+A260845(n)`
-/

namespace A292358.P12621981081857861694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343631 (A361568 n).toNat + A260845 n

end

end A292358.P12621981081857861694

/-!
# A292360: a(n) = n*(Lucas(n)*Lucas(n+1) - 2).

The programs for A292360, the canonical program `A292360.P2218299493852357588` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292360 has offset 0).

The definition of A292360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292360.P2218299493852357588

`n*(A000032(n)*A000032(n+1)-2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292360

/-- `n*(A000032(n)*A000032(n+1)-2)` -/
def P2218299493852357588.Spec : Prop :=
  ∀ n, P2218299493852357588.a n = A292360 n

theorem P2218299493852357588.correct : P2218299493852357588.Spec := by
  intro n
  simp only [A292360]

end A292360

/-! ## A292360.P14139506816428823189

`n*(A215602(n)-2)`
-/

namespace A292360.P14139506816428823189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A215602 n - 2)

end

end A292360.P14139506816428823189

namespace A292360

/-- `n*(A215602(n)-2)` -/
def P14139506816428823189.Spec : Prop :=
  ∀ n, P14139506816428823189.a n = A292360 n

end A292360

/-! ## A292360.P10436885673736869311

`n*(A216243(n)-4)`
-/

namespace A292360.P10436885673736869311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A216243 n - 4)

end

end A292360.P10436885673736869311

namespace A292360

/-- `n*(A216243(n)-4)` -/
def P10436885673736869311.Spec : Prop :=
  ∀ n, P10436885673736869311.a n = A292360 n

end A292360

/-! ## A292360.P5987189750809980603

`n*(abs(A075269(n))-2)`
-/

namespace A292360.P5987189750809980603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (|A075269 n| - 2)

end

end A292360.P5987189750809980603

namespace A292360

/-- `n*(abs(A075269(n))-2)` -/
def P5987189750809980603.Spec : Prop :=
  ∀ n, P5987189750809980603.a n = A292360 n

end A292360

/-! ## A292360.P14238102134853905839

`n*(∑[A000032(n)²]-4)`
-/

namespace A292360.P14238102134853905839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 4)

end

end A292360.P14238102134853905839

namespace A292360

/-- `n*(∑[A000032(n)²]-4)` -/
def P14238102134853905839.Spec : Prop :=
  ∀ n, P14238102134853905839.a n = A292360 n

end A292360

/-! ## A292360.P4439603243796942772

`n*(∑[A254729(n+1)²]-4)`
-/

namespace A292360.P4439603243796942772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 4)

end

end A292360.P4439603243796942772

namespace A292360

/-- `n*(∑[A254729(n+1)²]-4)` -/
def P4439603243796942772.Spec : Prop :=
  ∀ n, P4439603243796942772.a n = A292360 n

end A292360

/-! ## A292360.P18036105906862840443

`n*(A295674(2*n)-A084101(2*n))`
-/

namespace A292360.P18036105906862840443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A295674 (2 * n) - A084101 (2 * n))

end

end A292360.P18036105906862840443

namespace A292360

/-- `n*(A295674(2*n)-A084101(2*n))` -/
def P18036105906862840443.Spec : Prop :=
  ∀ n, P18036105906862840443.a n = A292360 n

end A292360

/-! ## A292360.P3631394483581625350

`n*(∑[A001254(n+1)]-A001254(n+1))`
-/

namespace A292360.P3631394483581625350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A001254 (n + 1))

end

end A292360.P3631394483581625350

namespace A292360

/-- `n*(∑[A001254(n+1)]-A001254(n+1))` -/
def P3631394483581625350.Spec : Prop :=
  ∀ n, P3631394483581625350.a n = A292360 n

end A292360

/-! ## A292360.P4924010816790420323

`n*(A001350(2*n+1)-A176040(n+1))`
-/

namespace A292360.P4924010816790420323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001350 (2 * n + 1) - A176040 (n + 1))

end

end A292360.P4924010816790420323

namespace A292360

/-- `n*(A001350(2*n+1)-A176040(n+1))` -/
def P4924010816790420323.Spec : Prop :=
  ∀ n, P4924010816790420323.a n = A292360 n

end A292360

/-! ## A292360.P8114704688742237432

`n*(A295674(2*n)-A093148(2*n+1))`
-/

namespace A292360.P8114704688742237432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A295674 (2 * n) - A093148 (2 * n + 1))

end

end A292360.P8114704688742237432

namespace A292360

/-- `n*(A295674(2*n)-A093148(2*n+1))` -/
def P8114704688742237432.Spec : Prop :=
  ∀ n, P8114704688742237432.a n = A292360 n

end A292360

/-!
# A292361: The number of paths of length 2m in the plane, starting and ending at (0,1), with unit steps in the four directions (north, east, south, west) and staying in the region y > 0 or x > -y.

The programs for A292361, there is no canonical definition to state claims against.
-/

/-! ## A292361.P5485537130282120072

`A074794(A062192(n)+1)`
-/

namespace A292361.P5485537130282120072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074794 (A062192 n + 1).toNat

end

end A292361.P5485537130282120072

/-!
# A292364: Composites m such that each prime factor p > m of 2^m - 1 is a primitive prime factor of 2^m - 1.

The programs for A292364, there is no canonical definition to state claims against.
-/

/-! ## A292364.P10959536318226668573

`A344030(A335436(n))`
-/

namespace A292364.P10959536318226668573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344030 (A335436 n).toNat

end

end A292364.P10959536318226668573

/-!
# A292365: Abundant numbers n such that sigma(sigma(n) - 2*n) = sigma(n).

The programs for A292365, there is no canonical definition to state claims against.
-/

/-! ## A292365.P7402029459005843792

`A000027(∪[A005820(n+1), A259302(n+1)])`
-/

namespace A292365.P7402029459005843792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259302 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A292365.P7402029459005843792

/-! ## A292365.P3457917366602463796

`A000027(∪[2*A326051(n+1), A259302(n+1)])`
-/

namespace A292365.P3457917366602463796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259302 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A292365.P3457917366602463796

/-!
# A292369: Numbers n such that f(f(f(n))) = f(f(n)) + f(n) where f = A000203.

The programs for A292369, there is no canonical definition to state claims against.
-/

/-! ## A292369.P794899203956716888

`A281622(n+1)-1`
-/

namespace A292369.P794899203956716888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281622 (n + 1) - 1

end

end A292369.P794899203956716888

/-! ## A292369.P13063362802788643075

`A321804(n)+A281622(n+1)`
-/

namespace A292369.P13063362802788643075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A281622 (n + 1)

end

end A292369.P13063362802788643075

/-! ## A292369.P11752859342280173243

`xor(A281622(n+1), A324198(n))`
-/

namespace A292369.P11752859342280173243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A281622 (n + 1)) (A324198 n)

end

end A292369.P11752859342280173243

/-! ## A292369.P9205709849041523501

`∩[A023194(n+1), A017986(n)]`
-/

namespace A292369.P9205709849041523501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017986 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292369.P9205709849041523501

/-! ## A292369.P13508390095413527622

`∩[A023194(n+1), A262975(n)]`
-/

namespace A292369.P13508390095413527622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262975 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292369.P13508390095413527622

/-!
# A292370: A binary encoding of the zeros in base-4 representation of n.

The programs for A292370, there is no canonical definition to state claims against.
-/

/-! ## A292370.P1908528913941756849

`A292373(A035327(n))`
-/

namespace A292370.P1908528913941756849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A035327 n).toNat

end

end A292370.P1908528913941756849

/-! ## A292370.P7562092845389058823

`A059906(A334076(n))`
-/

namespace A292370.P7562092845389058823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A334076 n).toNat

end

end A292370.P7562092845389058823

/-! ## A292370.P10997233810363778249

`A292373(A010078(n+1))`
-/

namespace A292370.P10997233810363778249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A010078 (n + 1)).toNat

end

end A292370.P10997233810363778249

/-! ## A292370.P14356238821109614421

`A292373(A080079(n+1))`
-/

namespace A292370.P14356238821109614421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A080079 (n + 1)).toNat

end

end A292370.P14356238821109614421

/-! ## A292370.P5965565359541196392

`A292373(A354182(n+1))`
-/

namespace A292370.P5965565359541196392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A354182 (n + 1)).toNat

end

end A292370.P5965565359541196392

/-! ## A292370.P108896381234833192

`A292373(n-A006257(n))`
-/

namespace A292370.P108896381234833192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 ((n : ℤ) - A006257 n).toNat

end

end A292370.P108896381234833192

/-! ## A292370.P16933681249852318170

`A292373(A206332(n+1)-A005408(n))`
-/

namespace A292370.P16933681249852318170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A206332 (n + 1) - A005408 n).toNat

end

end A292370.P16933681249852318170

/-! ## A292370.P8179349287820742008

`A292373(A206332(n+1)%A005408(n))`
-/

namespace A292370.P8179349287820742008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (Int.tmod (A206332 (n + 1)) (A005408 n)).toNat

end

end A292370.P8179349287820742008

/-!
# A292371: A binary encoding of 1-digits in the base-4 representation of n.

The programs for A292371, there is no canonical definition to state claims against.
-/

/-! ## A292371.P14264639696798853401

`A059905(A292272(n))`
-/

namespace A292371.P14264639696798853401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A292272 n).toNat

end

end A292371.P14264639696798853401

/-! ## A292371.P3167232646930864934

`A292372(2*n-and(n, 2*n))`
-/

namespace A292371.P3167232646930864934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (2 * n - Nat.land n (2 * n))

end

end A292371.P3167232646930864934

/-! ## A292371.P653460355695541968

`A292372(xor(2*n, and(n, 2*n)))`
-/

namespace A292371.P653460355695541968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (Nat.xor (2 * n) (Nat.land n (2 * n)))

end

end A292371.P653460355695541968

/-! ## A292371.P8623842706932508700

`A292373(A004468(n))`
-/

namespace A292371.P8623842706932508700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A004468 n).toNat

end

end A292371.P8623842706932508700

/-! ## A292371.P7185048377271684486

`A292372(A006015(n))`
-/

namespace A292371.P7185048377271684486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A006015 n).toNat

end

end A292371.P7185048377271684486

/-! ## A292371.P7575555882207045901

`A292373(A048647(n))`
-/

namespace A292371.P7575555882207045901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A048647 n).toNat

end

end A292371.P7575555882207045901

/-! ## A292371.P12093427587650889433

`A292372(A057300(n))`
-/

namespace A292371.P12093427587650889433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A057300 n).toNat

end

end A292371.P12093427587650889433

/-! ## A292371.P3887197453495675500

`A292372(A213064(n))`
-/

namespace A292371.P3887197453495675500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A213064 n).toNat

end

end A292371.P3887197453495675500

/-! ## A292371.P196321530043667900

`A292372(A256294(n))`
-/

namespace A292371.P196321530043667900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A256294 n).toNat

end

end A292371.P196321530043667900

/-! ## A292371.P15482246135872159759

`A292373(A379578(n))`
-/

namespace A292371.P15482246135872159759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A379578 n).toNat

end

end A292371.P15482246135872159759

/-! ## A292371.P623690145071863406

`A292372(A010078(n+1))`
-/

namespace A292371.P623690145071863406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A010078 (n + 1)).toNat

end

end A292371.P623690145071863406

/-! ## A292371.P16192273239675909772

`A292372(2*A292272(n))`
-/

namespace A292371.P16192273239675909772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (2 * A292272 n).toNat

end

end A292371.P16192273239675909772

/-! ## A292371.P2855502412848617610

`A059905(A213064(n)/2)`
-/

namespace A292371.P2855502412848617610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (SequenceMachineLib.roundAway ((A213064 n : ℚ) / 2)).toNat

end

end A292371.P2855502412848617610

/-! ## A292371.P10625614361556986361

`A059905(n-A048735(n))`
-/

namespace A292371.P10625614361556986361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 ((n : ℤ) - A048735 n).toNat

end

end A292371.P10625614361556986361

/-! ## A292371.P5060967086752877802

`A059905(n)-A292373(n)`
-/

namespace A292371.P5060967086752877802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n - A292373 n

end

end A292371.P5060967086752877802

/-! ## A292371.P14642651323741963854

`A309952(n)-A292372(n)`
-/

namespace A292371.P14642651323741963854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 n - A292372 n

end

end A292371.P14642651323741963854

/-! ## A292371.P8469124227561665425

`and(A059905(n), A309952(n))`
-/

namespace A292371.P8469124227561665425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059905 n) (A309952 n)

end

end A292371.P8469124227561665425

/-! ## A292371.P2820119711636245035

`A292373(xor(n, A006015(n)))`
-/

namespace A292371.P2820119711636245035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (Int.xor (n : ℤ) (A006015 n)).toNat

end

end A292371.P2820119711636245035

/-! ## A292371.P8252123866213207101

`A059905((A229763(n)+n)/2)`
-/

namespace A292371.P8252123866213207101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (SequenceMachineLib.roundAway ((A229763 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A292371.P8252123866213207101

/-! ## A292371.P2185152652770866522

`A292372((A048724(n)+n)/2)`
-/

namespace A292371.P2185152652770866522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (SequenceMachineLib.roundAway ((A048724 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A292371.P2185152652770866522

/-!
# A292372: A binary encoding of 2-digits in base-4 representation of n.

The programs for A292372, there is no canonical definition to state claims against.
-/

/-! ## A292372.P491273011059708571

`A059906(and(n, Δ[-n²]))`
-/

namespace A292372.P491273011059708571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A292372.P491273011059708571

/-! ## A292372.P2389934875063668825

`A059906(or(n, 2*n)-2*n)`
-/

namespace A292372.P2389934875063668825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (Nat.lor n (2 * n) - 2 * n)

end

end A292372.P2389934875063668825

/-! ## A292372.P5431022603782897945

`A059906(xor(2*n, or(n, 2*n)))`
-/

namespace A292372.P5431022603782897945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (Nat.xor (2 * n) (Nat.lor n (2 * n)))

end

end A292372.P5431022603782897945

/-! ## A292372.P15706171345957024955

`A059905(A229762(n))`
-/

namespace A292372.P15706171345957024955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A229762 n).toNat

end

end A292372.P15706171345957024955

/-! ## A292372.P1446357580130294343

`A059906(A229763(n))`
-/

namespace A292372.P1446357580130294343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A229763 n).toNat

end

end A292372.P1446357580130294343

/-! ## A292372.P3614073296915207127

`A292371(A004468(n))`
-/

namespace A292372.P3614073296915207127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A004468 n).toNat

end

end A292372.P3614073296915207127

/-! ## A292372.P17404471896163695719

`A292373(A006015(n))`
-/

namespace A292372.P17404471896163695719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A006015 n).toNat

end

end A292372.P17404471896163695719

/-! ## A292372.P6600332530415844402

`A292371(A057300(n))`
-/

namespace A292372.P6600332530415844402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A057300 n).toNat

end

end A292372.P6600332530415844402

/-! ## A292372.P10105854835548847519

`A292373(A163241(n))`
-/

namespace A292372.P10105854835548847519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A163241 n).toNat

end

end A292372.P10105854835548847519

/-! ## A292372.P14423068066186434974

`A292373(A256294(n))`
-/

namespace A292372.P14423068066186434974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A256294 n).toNat

end

end A292372.P14423068066186434974

/-! ## A292372.P12273917962222294716

`A059906(A213064(n)-n)`
-/

namespace A292372.P12273917962222294716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A213064 n - (n : ℤ)).toNat

end

end A292372.P12273917962222294716

/-! ## A292372.P10690565699945538537

`A059906(n-A213370(n))`
-/

namespace A292372.P10690565699945538537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 ((n : ℤ) - A213370 n).toNat

end

end A292372.P10690565699945538537

/-! ## A292372.P996633038369973865

`A059906(n)-A292373(n)`
-/

namespace A292372.P996633038369973865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n - A292373 n

end

end A292372.P996633038369973865

/-! ## A292372.P938048145482221103

`A292371(A269170(n)-n)`
-/

namespace A292372.P938048145482221103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A269170 n - (n : ℤ)).toNat

end

end A292372.P938048145482221103

/-! ## A292372.P2623559284149514741

`A309952(n)-A292371(n)`
-/

namespace A292372.P2623559284149514741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 n - A292371 n

end

end A292372.P2623559284149514741

/-! ## A292372.P15029157588871118647

`and(A059906(n), A309952(n))`
-/

namespace A292372.P15029157588871118647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059906 n) (A309952 n)

end

end A292372.P15029157588871118647

/-! ## A292372.P8406103265727938188

`A059906(n-2*A048735(n))`
-/

namespace A292372.P8406103265727938188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 ((n : ℤ) - 2 * A048735 n).toNat

end

end A292372.P8406103265727938188

/-! ## A292372.P15137390298576433381

`A059906(2*A292272(n)-n)`
-/

namespace A292372.P15137390298576433381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (2 * A292272 n - (n : ℤ)).toNat

end

end A292372.P15137390298576433381

/-! ## A292372.P10148714262260909574

`A059906((A048724(n)-n)/2)`
-/

namespace A292372.P10148714262260909574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (SequenceMachineLib.roundAway ((A048724 n - (n : ℤ) : ℚ) / 2)).toNat

end

end A292372.P10148714262260909574

/-! ## A292372.P12871465389736814132

`A059906(n)-A059906(A380110(n))`
-/

namespace A292372.P12871465389736814132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n - A059906 (A380110 n).toNat

end

end A292372.P12871465389736814132

/-!
# A292373: A binary encoding of 3-digits in base-4 representation of n.

The programs for A292373, there is no canonical definition to state claims against.
-/

/-! ## A292373.P17421631668702114152

`A059905(A048735(n))`
-/

namespace A292373.P17421631668702114152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A048735 n).toNat

end

end A292373.P17421631668702114152

/-! ## A292373.P5871978274462726711

`A059906(A213370(n))`
-/

namespace A292373.P5871978274462726711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A213370 n).toNat

end

end A292373.P5871978274462726711

/-! ## A292373.P18364410253660072129

`A059906(and(n, 2*n))`
-/

namespace A292373.P18364410253660072129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (Nat.land n (2 * n))

end

end A292373.P18364410253660072129

/-! ## A292373.P15373147160622085172

`A059905(and(n, floor(n/2)))`
-/

namespace A292373.P15373147160622085172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A292373.P15373147160622085172

/-! ## A292373.P4079383197009647471

`A059906(n-and(n, Δ[-n²]))`
-/

namespace A292373.P4079383197009647471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 ((n : ℤ) - Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A292373.P4079383197009647471

/-! ## A292373.P997896718846907702

`A059906(xor(n, and(n, Δ[-n²])))`
-/

namespace A292373.P997896718846907702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (Int.xor (n : ℤ) (Int.land (n : ℤ) (f1 (n + 1) - f1 n))).toNat

end

end A292373.P997896718846907702

/-! ## A292373.P2687585675468160434

`A292372(A004468(n))`
-/

namespace A292373.P2687585675468160434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A004468 n).toNat

end

end A292373.P2687585675468160434

/-! ## A292373.P535965805616995159

`A292371(A006015(n))`
-/

namespace A292373.P535965805616995159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A006015 n).toNat

end

end A292373.P535965805616995159

/-! ## A292373.P1052220274381739328

`A292371(A048647(n))`
-/

namespace A292373.P1052220274381739328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A048647 n).toNat

end

end A292373.P1052220274381739328

/-! ## A292373.P8316437302702094571

`A059906(A380110(n))`
-/

namespace A292373.P8316437302702094571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A380110 n).toNat

end

end A292373.P8316437302702094571

/-! ## A292373.P14386055001190386187

`A292372(A163241(n))`
-/

namespace A292373.P14386055001190386187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A163241 n).toNat

end

end A292373.P14386055001190386187

/-! ## A292373.P16044700846271061983

`A292372(A379578(n))`
-/

namespace A292373.P16044700846271061983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A379578 n).toNat

end

end A292373.P16044700846271061983

/-! ## A292373.P10081410925121587222

`A292370(A010078(n+1))`
-/

namespace A292373.P10081410925121587222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A010078 (n + 1)).toNat

end

end A292373.P10081410925121587222

/-! ## A292373.P18267324643542805768

`A292370(A354182(n+1))`
-/

namespace A292373.P18267324643542805768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A354182 (n + 1)).toNat

end

end A292373.P18267324643542805768

/-! ## A292373.P4784529393882108748

`A059906(2*A048735(n))`
-/

namespace A292373.P4784529393882108748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (2 * A048735 n).toNat

end

end A292373.P4784529393882108748

/-! ## A292373.P1865797939496771443

`A059905(A213370(n)/2)`
-/

namespace A292373.P1865797939496771443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (SequenceMachineLib.roundAway ((A213370 n : ℚ) / 2)).toNat

end

end A292373.P1865797939496771443

/-! ## A292373.P8365013694775374963

`A059906(n-A229763(n))`
-/

namespace A292373.P8365013694775374963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 ((n : ℤ) - A229763 n).toNat

end

end A292373.P8365013694775374963

/-! ## A292373.P18120818301974637149

`A059905(n-A292272(n))`
-/

namespace A292373.P18120818301974637149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 ((n : ℤ) - A292272 n).toNat

end

end A292373.P18120818301974637149

/-! ## A292373.P1011355825804406560

`A059905(n)-A292371(n)`
-/

namespace A292373.P1011355825804406560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n - A292371 n

end

end A292373.P1011355825804406560

/-! ## A292373.P1147738863013912117

`A059906(n)-A292372(n)`
-/

namespace A292373.P1147738863013912117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n - A292372 n

end

end A292373.P1147738863013912117

/-!
# A292374: a(1) = 1, a(2n) = 0, and for odd numbers n > 1, a(n) = a(A064989(n)) + [n == 1 (mod 4)].

The programs for A292374, there is no canonical definition to state claims against.
-/

/-! ## A292374.P14761202855536119184

`C(A212219(n), A297770(A131514(n+1)))`
-/

namespace A292374.P14761202855536119184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212219 n).toNat (A297770 (A131514 (n + 1)).toNat).toNat

end

end A292374.P14761202855536119184

/-! ## A292374.P14658058111703941759

`C(A212219(n), A212218(A212217(n+1)²))`
-/

namespace A292374.P14658058111703941759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212219 n).toNat (A212218 (A212217 (n + 1) ^ 2).toNat).toNat

end

end A292374.P14658058111703941759

/-! ## A292374.P15265273337587847125

`A017413(A064349(n))%A230850(n+1)`
-/

namespace A292374.P15265273337587847125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017413 (A064349 n).toNat) (A230850 (n + 1))

end

end A292374.P15265273337587847125

/-! ## A292374.P11016998230923831974

`A063657(A334251(n))%A230850(n+1)`
-/

namespace A292374.P11016998230923831974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063657 (A334251 n).toNat) (A230850 (n + 1))

end

end A292374.P11016998230923831974

/-! ## A292374.P4883243227723061721

`A352517(A079981(n)*A267479(n))`
-/

namespace A292374.P4883243227723061721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 (A079981 n * A267479 n).toNat

end

end A292374.P4883243227723061721

/-!
# A292375: a(1) = 1, and for n > 1, a(n) = a(A252463(n)) + [n == 1 (mod 4)].

The programs for A292375, there is no canonical definition to state claims against.
-/

/-! ## A292375.P9378166462600570346

`1+A292377(n+1)-A292378(n+1)`
-/

namespace A292375.P9378166462600570346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A292377 (n + 1) - A292378 (n + 1)

end

end A292375.P9378166462600570346

/-! ## A292375.P15636565640317012548

`A000120(A292381(n+1))`
-/

namespace A292375.P15636565640317012548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292381 (n + 1)).toNat

end

end A292375.P15636565640317012548

/-! ## A292375.P12767293538460748245

`A061395(2*(n+1))-A292377(n+1)`
-/

namespace A292375.P12767293538460748245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1)) - A292377 (n + 1)

end

end A292375.P12767293538460748245

/-! ## A292375.P16890542154466280288

`A003963(A006530(n+1))-A292377(n+1)`
-/

namespace A292375.P16890542154466280288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A006530 (n + 1)).toNat - A292377 (n + 1)

end

end A292375.P16890542154466280288

/-! ## A292375.P3423200680556346928

`A008619(A061395(n+1)-A292378(n+1))`
-/

namespace A292375.P3423200680556346928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A061395 (n + 1) - A292378 (n + 1)).toNat

end

end A292375.P3423200680556346928

/-! ## A292375.P8904741139639760917

`A004526(A061395(n+1)-A292378(n+1))+1`
-/

namespace A292375.P8904741139639760917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A061395 (n + 1) - A292378 (n + 1)).toNat + 1

end

end A292375.P8904741139639760917

/-! ## A292375.P17046852874382192387

`A061395(A064989(n+1))+1-A292377(n+1)`
-/

namespace A292375.P17046852874382192387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A064989 (n + 1)).toNat + (1 - A292377 (n + 1))

end

end A292375.P17046852874382192387

/-! ## A292375.P12572962345909253402

`A139169(A053585(∏{p}[n+1, #]))-A292377(n+1)`
-/

namespace A292375.P12572962345909253402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat - A292377 (n + 1)

end

end A292375.P12572962345909253402

/-! ## A292375.P5663843708167809333

`A139169(A318884(n+1)-A318886(n+1))-A292377(n+1)`
-/

namespace A292375.P5663843708167809333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (A318884 (n + 1) - A318886 (n + 1)).toNat - A292377 (n + 1)

end

end A292375.P5663843708167809333

/-! ## A292375.P10328092442069176388

`A336123(A253568(n+1))`
-/

namespace A292375.P10328092442069176388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336123 (A253568 (n + 1)).toNat

end

end A292375.P10328092442069176388

/-!
# A292376: a(1) = 0, a(2n) = 0, and for odd numbers n > 1, a(n) = a(A064989(n)) + [n == 3 (mod 4)].

The programs for A292376, there is no canonical definition to state claims against.
-/

/-! ## A292376.P11201376037671946804

`A292377(n+1)-A292377(A348717(n+1))`
-/

namespace A292376.P11201376037671946804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (n + 1) - A292377 (A348717 (n + 1)).toNat

end

end A292376.P11201376037671946804

/-! ## A292376.P15880941133468982847

`A292374(A088377(n+1))-A292374(n+1)`
-/

namespace A292376.P15880941133468982847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292374 (A088377 (n + 1)).toNat - A292374 (n + 1)

end

end A292376.P15880941133468982847

/-! ## A292376.P15267742228067574932

`A292374(A020639(n+1)²)-A292374(n+1)`
-/

namespace A292376.P15267742228067574932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292374 (A020639 (n + 1) ^ 2).toNat - A292374 (n + 1)

end

end A292376.P15267742228067574932

/-! ## A292376.P12376977210568124942

`A292374(A130065(n+1)²)-A292374(n+1)`
-/

namespace A292376.P12376977210568124942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292374 (A130065 (n + 1) ^ 2).toNat - A292374 (n + 1)

end

end A292376.P12376977210568124942

/-! ## A292376.P7791755588551118003

`A292374((n+1)²)-A292374(n+1)`
-/

namespace A292376.P7791755588551118003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292374 ((n + 1) ^ 2) - A292374 (n + 1)

end

end A292376.P7791755588551118003

/-!
# A292377: a(1) = 0, and for n > 1, a(n) = a(A252463(n)) + [n == 3 (mod 4)].

The programs for A292377, there is no canonical definition to state claims against.
-/

/-! ## A292377.P14793031488161998504

`A000120(A292383(n+1))`
-/

namespace A292377.P14793031488161998504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292383 (n + 1)).toNat

end

end A292377.P14793031488161998504

/-! ## A292377.P9333799042208413195

`A292375(n+1)+A292378(n+1)-1`
-/

namespace A292377.P9333799042208413195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (n + 1) + (A292378 (n + 1) - 1)

end

end A292377.P9333799042208413195

/-! ## A292377.P9848207277635004781

`A061395(2*(n+1))-A292375(n+1)`
-/

namespace A292377.P9848207277635004781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1)) - A292375 (n + 1)

end

end A292377.P9848207277635004781

/-! ## A292377.P3043632782007706116

`A004526(A292378(n+1)+A061395(n+1))`
-/

namespace A292377.P3043632782007706116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A292378 (n + 1) + A061395 (n + 1)).toNat

end

end A292377.P3043632782007706116

/-! ## A292377.P4395837352922922698

`A008619(A292378(n+1)+A061395(n+1))-1`
-/

namespace A292377.P4395837352922922698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A292378 (n + 1) + A061395 (n + 1)).toNat - 1

end

end A292377.P4395837352922922698

/-! ## A292377.P15082011977881454309

`A061395(A064989(n+1))+1-A292375(n+1)`
-/

namespace A292377.P15082011977881454309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A064989 (n + 1)).toNat + (1 - A292375 (n + 1))

end

end A292377.P15082011977881454309

/-! ## A292377.P6695734591959793425

`A292375(A006530(n+1)²)-A292375(n+1)`
-/

namespace A292377.P6695734591959793425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A006530 (n + 1) ^ 2).toNat - A292375 (n + 1)

end

end A292377.P6695734591959793425

/-! ## A292377.P14948839792148940920

`A292375((n+1)²)-A292375(n+1)`
-/

namespace A292377.P14948839792148940920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 ((n + 1) ^ 2) - A292375 (n + 1)

end

end A292377.P14948839792148940920

/-! ## A292377.P668583586275159399

`A058000(n+1)%A292583(n+1)`
-/

namespace A292377.P668583586275159399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058000 (n + 1)) (A292583 (n + 1))

end

end A292377.P668583586275159399

/-! ## A292377.P8882720657687803595

`A084403(n+1)%A292583(n+1)`
-/

namespace A292377.P8882720657687803595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084403 (n + 1)) (A292583 (n + 1))

end

end A292377.P8882720657687803595

/-!
# A292378: a(n) = 1 + A292377(n) - A292375(n).

The programs for A292378, there is no canonical definition to state claims against.
-/

/-! ## A292378.P115323002540737442

`1+A292377(n+1)-A292375(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292378.P115323002540737442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A292377 (n + 1) - A292375 (n + 1)

end

end A292378.P115323002540737442

/-! ## A292378.P5597698646676509244

`A292377(n+1)-A023443(A292375(n+1))`
-/

namespace A292378.P5597698646676509244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (n + 1) - A023443 (A292375 (n + 1)).toNat

end

end A292378.P5597698646676509244

/-! ## A292378.P6951449919008637678

`2*A292377(n+1)-A061395(A064989(n+1))`
-/

namespace A292378.P6951449919008637678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292377 (n + 1) - A061395 (A064989 (n + 1)).toNat

end

end A292378.P6951449919008637678

/-! ## A292378.P10273813694435788325

`A005843(A292377(n+1))-A061395(A064989(n+1))`
-/

namespace A292378.P10273813694435788325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A292377 (n + 1)).toNat - A061395 (A064989 (n + 1)).toNat

end

end A292378.P10273813694435788325

/-! ## A292378.P14867046651594652352

`A292583(n+1)%A028813(n+1)-A292375(n+1)`
-/

namespace A292378.P14867046651594652352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292583 (n + 1)) (A028813 (n + 1)) - A292375 (n + 1)

end

end A292378.P14867046651594652352

/-! ## A292378.P5300079728724865860

`A292583(n+1)-A292375(n+1)%A028801(n+1)`
-/

namespace A292378.P5300079728724865860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292583 (n + 1) - Int.tmod (A292375 (n + 1)) (A028801 (n + 1))

end

end A292378.P5300079728724865860

/-! ## A292378.P844808127417047399

`A292583(n+1)-A336123(A253568(n+1))`
-/

namespace A292378.P844808127417047399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292583 (n + 1) - A336123 (A253568 (n + 1)).toNat

end

end A292378.P844808127417047399

/-!
# A292379: Odd numbers k such that A292270((k-1)/2) is a square < ((k-1)/2)^2.

The programs for A292379, there is no canonical definition to state claims against.
-/

/-! ## A292379.P12279528916551684521

`∩[A217460(n+1), A292939(n+1)]`
-/

namespace A292379.P12279528916551684521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292379.P12279528916551684521

/-! ## A292379.P11968075474393270770

`or(A349799(A349777(n+1)), A349820(n+2))`
-/

namespace A292379.P11968075474393270770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A349799 (A349777 (n + 1)).toNat) (A349820 (n + 2))

end

end A292379.P11968075474393270770

/-! ## A292379.P15708773474829768852

`or(A000032(A004906(n+5)), A037410(n+1))`
-/

namespace A292379.P15708773474829768852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000032 (A004906 (n + 5)).toNat) (A037410 (n + 1))

end

end A292379.P15708773474829768852

/-! ## A292379.P5525738899413120215

`or(A000032(A004906(n+5)), A033042(n+2))`
-/

namespace A292379.P5525738899413120215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000032 (A004906 (n + 5)).toNat) (A033042 (n + 2))

end

end A292379.P5525738899413120215

/-!
# A292380: Base-2 expansion of a(n) encodes the steps where multiples of 4 are encountered when map x -> A252463(x) is iterated down to 1, starting from x=n.

The programs for A292380, the canonical program `A292380.P13958713770519978045` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292380 has offset 1).

The definition of A292380 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292380.P13958713770519978045

`A048735(A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A292380

/-- `A048735(A156552(n+1))` -/
def P13958713770519978045.Spec : Prop :=
  ∀ n, P13958713770519978045.a n = A292380 (n + 1)

theorem P13958713770519978045.correct : P13958713770519978045.Spec := by
  intro n
  simp only [A292380, Nat.add_sub_cancel]

end A292380

/-! ## A292380.P14356484549041623105

`A292370(A292384(n+1))`
-/

namespace A292380.P14356484549041623105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A292384 (n + 1)).toNat

end

end A292380.P14356484549041623105

namespace A292380

/-- `A292370(A292384(n+1))` -/
def P14356484549041623105.Spec : Prop :=
  ∀ n, P14356484549041623105.a n = A292380 (n + 1)

end A292380

/-! ## A292380.P13791546670244611467

`and(A156552(A032742(n+1)), A156552(n+1))`
-/

namespace A292380.P13791546670244611467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156552 (A032742 (n + 1)).toNat) (A156552 (n + 1))

end

end A292380.P13791546670244611467

namespace A292380

/-- `and(A156552(A032742(n+1)), A156552(n+1))` -/
def P13791546670244611467.Spec : Prop :=
  ∀ n, P13791546670244611467.a n = A292380 (n + 1)

end A292380

/-! ## A292380.P5905522265198387496

`and(A156552(n+1), A156552(A252463(n+1)))`
-/

namespace A292380.P5905522265198387496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156552 (n + 1)) (A156552 (A252463 (n + 1)).toNat)

end

end A292380.P5905522265198387496

namespace A292380

/-- `and(A156552(n+1), A156552(A252463(n+1)))` -/
def P5905522265198387496.Spec : Prop :=
  ∀ n, P5905522265198387496.a n = A292380 (n + 1)

end A292380

/-! ## A292380.P4365271080962309060

`A156552(n+1)-A292382(n+1)`
-/

namespace A292380.P4365271080962309060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - A292382 (n + 1)

end

end A292380.P4365271080962309060

namespace A292380

/-- `A156552(n+1)-A292382(n+1)` -/
def P4365271080962309060.Spec : Prop :=
  ∀ n, P4365271080962309060.a n = A292380 (n + 1)

end A292380

/-! ## A292380.P18352702551085500279

`xor(A156552(A252463(2*(n+1))), A292382(n+1))`
-/

namespace A292380.P18352702551085500279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A156552 (A252463 (2 * (n + 1))).toNat) (A292382 (n + 1))

end

end A292380.P18352702551085500279

namespace A292380

/-- `xor(A156552(A252463(2*(n+1))), A292382(n+1))` -/
def P18352702551085500279.Spec : Prop :=
  ∀ n, P18352702551085500279.a n = A292380 (n + 1)

end A292380

/-! ## A292380.P17668005032167486346

`A048675(n+1)+A323905(n+1)-A292382(n+1)`
-/

namespace A292380.P17668005032167486346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) + (A323905 (n + 1) - A292382 (n + 1))

end

end A292380.P17668005032167486346

namespace A292380

/-- `A048675(n+1)+A323905(n+1)-A292382(n+1)` -/
def P17668005032167486346.Spec : Prop :=
  ∀ n, P17668005032167486346.a n = A292380 (n + 1)

end A292380

/-! ## A292380.P14419755145975441551

`A323243(n+1)-(A324865(n+1)+A292382(n+1))`
-/

namespace A292380.P14419755145975441551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - (A324865 (n + 1) + A292382 (n + 1))

end

end A292380.P14419755145975441551

namespace A292380

/-- `A323243(n+1)-(A324865(n+1)+A292382(n+1))` -/
def P14419755145975441551.Spec : Prop :=
  ∀ n, P14419755145975441551.a n = A292380 (n + 1)

end A292380

/-! ## A292380.P10666989496938516103

`A004526(and(2*A156552(n+1), A156552(n+1)))`
-/

namespace A292380.P10666989496938516103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.land (2 * A156552 (n + 1)) (A156552 (n + 1))).toNat

end

end A292380.P10666989496938516103

namespace A292380

/-- `A004526(and(2*A156552(n+1), A156552(n+1)))` -/
def P10666989496938516103.Spec : Prop :=
  ∀ n, P10666989496938516103.a n = A292380 (n + 1)

end A292380

/-! ## A292380.P6442904176226021784

`A269388(A302025(n+1))-A292382(n+1)`
-/

namespace A292380.P6442904176226021784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A302025 (n + 1)).toNat - A292382 (n + 1)

end

end A292380.P6442904176226021784

namespace A292380

/-- `A269388(A302025(n+1))-A292382(n+1)` -/
def P6442904176226021784.Spec : Prop :=
  ∀ n, P6442904176226021784.a n = A292380 (n + 1)

end A292380

/-! ## A292380.P6223171600932568625

`and(A156552(A003961(n+1)), A156552(n+1))/2`
-/

namespace A292380.P6223171600932568625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A156552 (A003961 (n + 1)).toNat) (A156552 (n + 1)) : ℚ) / 2

end

end A292380.P6223171600932568625

namespace A292380

/-- `and(A156552(A003961(n+1)), A156552(n+1))/2` -/
def P6223171600932568625.Spec : Prop :=
  ∀ n, P6223171600932568625.a n = (A292380 (n + 1) : ℚ)

end A292380

/-!
# A292381: Base-2 expansion of a(n) encodes the steps where numbers of the form 4k+1 are encountered when map x -> A252463(x) is iterated down to 1, starting from x=n.

The programs for A292381, there is no canonical definition to state claims against.
-/

/-! ## A292381.P16672942844863469354

`A292371(A292384(n+1))`
-/

namespace A292381.P16672942844863469354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A292384 (n + 1)).toNat

end

end A292381.P16672942844863469354

/-! ## A292381.P8982141815489300074

`A010078(A005941(n+1))-A292383(n+1)`
-/

namespace A292381.P8982141815489300074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A005941 (n + 1)).toNat - A292383 (n + 1)

end

end A292381.P8982141815489300074

/-! ## A292381.P16735945525523734923

`A292385(2*(n+1))-A087734(A292385(n+1))`
-/

namespace A292381.P16735945525523734923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292385 (2 * (n + 1)) - A087734 (A292385 (n + 1)).toNat

end

end A292381.P16735945525523734923

/-! ## A292381.P15148565653343999943

`A004761(A292385(n+1)+2)`
-/

namespace A292381.P15148565653343999943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (A292385 (n + 1) + 2).toNat

end

end A292381.P15148565653343999943

/-! ## A292381.P889508408761025782

`A010078(A292383(n+1)+A005941(n+1))`
-/

namespace A292381.P889508408761025782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A292383 (n + 1) + A005941 (n + 1)).toNat

end

end A292381.P889508408761025782

/-!
# A292382: Base-2 expansion of a(n) encodes the steps where numbers of the form 4k+2 are encountered when map x -> A252463(x) is iterated down to 1, starting from x=n.

The programs for A292382, the canonical program `A292382.P5418941577931810449` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292382 has offset 1).

The definition of A292382 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292382.P5418941577931810449

`A292272(A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A292382

/-- `A292272(A156552(n+1))` -/
def P5418941577931810449.Spec : Prop :=
  ∀ n, P5418941577931810449.a n = A292382 (n + 1)

theorem P5418941577931810449.correct : P5418941577931810449.Spec := by
  intro n
  simp only [A292382, Nat.add_sub_cancel]

end A292382

/-! ## A292382.P17596479761205450160

`A292372(A292384(n+1))`
-/

namespace A292382.P17596479761205450160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A292384 (n + 1)).toNat

end

end A292382.P17596479761205450160

namespace A292382

/-- `A292372(A292384(n+1))` -/
def P17596479761205450160.Spec : Prop :=
  ∀ n, P17596479761205450160.a n = A292382 (n + 1)

end A292382

/-! ## A292382.P13848606324427265013

`A156552(n+1)-A292380(n+1)`
-/

namespace A292382.P13848606324427265013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - A292380 (n + 1)

end

end A292382.P13848606324427265013

namespace A292382

/-- `A156552(n+1)-A292380(n+1)` -/
def P13848606324427265013.Spec : Prop :=
  ∀ n, P13848606324427265013.a n = A292382 (n + 1)

end A292382

/-! ## A292382.P5371432186297822758

`A005941(n+1)-(A292380(n+1)+1)`
-/

namespace A292382.P5371432186297822758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (n + 1) - (A292380 (n + 1) + 1)

end

end A292382.P5371432186297822758

namespace A292382

/-- `A005941(n+1)-(A292380(n+1)+1)` -/
def P5371432186297822758.Spec : Prop :=
  ∀ n, P5371432186297822758.a n = A292382 (n + 1)

end A292382

/-! ## A292382.P1738132437822959877

`xor(A156552(A000027(n+1)), A292380(n+1))`
-/

namespace A292382.P1738132437822959877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A156552 (A000027 (n + 1)).toNat) (A292380 (n + 1))

end

end A292382.P1738132437822959877

namespace A292382

/-- `xor(A156552(A000027(n+1)), A292380(n+1))` -/
def P1738132437822959877.Spec : Prop :=
  ∀ n, P1738132437822959877.a n = A292382 (n + 1)

end A292382

/-! ## A292382.P7643099805150551731

`xor(A156552(A252463(2*(n+1))), A292380(n+1))`
-/

namespace A292382.P7643099805150551731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A156552 (A252463 (2 * (n + 1))).toNat) (A292380 (n + 1))

end

end A292382.P7643099805150551731

namespace A292382

/-- `xor(A156552(A252463(2*(n+1))), A292380(n+1))` -/
def P7643099805150551731.Spec : Prop :=
  ∀ n, P7643099805150551731.a n = A292382 (n + 1)

end A292382

/-! ## A292382.P18353726760622683022

`A048675(n+1)+A323905(n+1)-A292380(n+1)`
-/

namespace A292382.P18353726760622683022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) + (A323905 (n + 1) - A292380 (n + 1))

end

end A292382.P18353726760622683022

namespace A292382

/-- `A048675(n+1)+A323905(n+1)-A292380(n+1)` -/
def P18353726760622683022.Spec : Prop :=
  ∀ n, P18353726760622683022.a n = A292382 (n + 1)

end A292382

/-! ## A292382.P9349266627884978105

`A323243(n+1)-(A324865(n+1)+A292380(n+1))`
-/

namespace A292382.P9349266627884978105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - (A324865 (n + 1) + A292380 (n + 1))

end

end A292382.P9349266627884978105

namespace A292382

/-- `A323243(n+1)-(A324865(n+1)+A292380(n+1))` -/
def P9349266627884978105.Spec : Prop :=
  ∀ n, P9349266627884978105.a n = A292382 (n + 1)

end A292382

/-! ## A292382.P3747135858957503471

`A323244(n+1)+A324865(n+1)-A292380(n+1)`
-/

namespace A292382.P3747135858957503471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) + (A324865 (n + 1) - A292380 (n + 1))

end

end A292382.P3747135858957503471

namespace A292382

/-- `A323244(n+1)+A324865(n+1)-A292380(n+1)` -/
def P3747135858957503471.Spec : Prop :=
  ∀ n, P3747135858957503471.a n = A292382 (n + 1)

end A292382

/-! ## A292382.P9389015909154032610

`xor(A156552(n+1), A292380(n+1))%A292381(n+1)`
-/

namespace A292382.P9389015909154032610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A156552 (n + 1)) (A292380 (n + 1))) (A292381 (n + 1))

end

end A292382.P9389015909154032610

namespace A292382

/-- `xor(A156552(n+1), A292380(n+1))%A292381(n+1)` -/
def P9389015909154032610.Spec : Prop :=
  ∀ n, P9389015909154032610.a n = A292382 (n + 1)

end A292382

/-! ## A292382.P18281694025960519765

`A305418(A091202(n+1))-A292380(n+1)`
-/

namespace A292382.P18281694025960519765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305418 (A091202 (n + 1)).toNat - A292380 (n + 1)

end

end A292382.P18281694025960519765

namespace A292382

/-- `A305418(A091202(n+1))-A292380(n+1)` -/
def P18281694025960519765.Spec : Prop :=
  ∀ n, P18281694025960519765.a n = A292382 (n + 1)

end A292382

/-! ## A292382.P7614938739839905234

`A252754(A250245(n+1))-A292380(n+1)`
-/

namespace A292382.P7614938739839905234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A250245 (n + 1)).toNat - A292380 (n + 1)

end

end A292382.P7614938739839905234

namespace A292382

/-- `A252754(A250245(n+1))-A292380(n+1)` -/
def P7614938739839905234.Spec : Prop :=
  ∀ n, P7614938739839905234.a n = A292382 (n + 1)

end A292382

/-! ## A292382.P13575779241250543322

`A269388(A302025(n+1))-A292380(n+1)`
-/

namespace A292382.P13575779241250543322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A302025 (n + 1)).toNat - A292380 (n + 1)

end

end A292382.P13575779241250543322

namespace A292382

/-- `A269388(A302025(n+1))-A292380(n+1)` -/
def P13575779241250543322.Spec : Prop :=
  ∀ n, P13575779241250543322.a n = A292382 (n + 1)

end A292382

/-! ## A292382.P5750435014880560900

`A244153(A048673(n+1))-A292380(n+1)`
-/

namespace A292382.P5750435014880560900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244153 (A048673 (n + 1)).toNat - A292380 (n + 1)

end

end A292382.P5750435014880560900

namespace A292382

/-- `A244153(A048673(n+1))-A292380(n+1)` -/
def P5750435014880560900.Spec : Prop :=
  ∀ n, P5750435014880560900.a n = A292382 (n + 1)

end A292382

/-!
# A292383: Base-2 expansion of a(n) encodes the steps where numbers of the form 4k+3 are encountered when map x -> A252463(x) is iterated down to 1, starting from x=n.

The programs for A292383, there is no canonical definition to state claims against.
-/

/-! ## A292383.P11071594001131719406

`A292274(A243071(n+1))`
-/

namespace A292383.P11071594001131719406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292274 (A243071 (n + 1)).toNat

end

end A292383.P11071594001131719406

/-! ## A292383.P14192681762593833880

`A292373(A292384(n+1))`
-/

namespace A292383.P14192681762593833880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A292384 (n + 1)).toNat

end

end A292383.P14192681762593833880

/-! ## A292383.P9963134542213075550

`A243071(n+1)-A292385(n+1)`
-/

namespace A292383.P9963134542213075550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1) - A292385 (n + 1)

end

end A292383.P9963134542213075550

/-! ## A292383.P13871704218038295994

`xor(A243071(A000027(n+1)), A292385(n+1))`
-/

namespace A292383.P13871704218038295994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A243071 (A000027 (n + 1)).toNat) (A292385 (n + 1))

end

end A292383.P13871704218038295994

/-! ## A292383.P18362943835854244722

`xor(A243071(A252463(2*(n+1))), A292385(n+1))`
-/

namespace A292383.P18362943835854244722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A243071 (A252463 (2 * (n + 1))).toNat) (A292385 (n + 1))

end

end A292383.P18362943835854244722

/-! ## A292383.P1992750647622194539

`A332811(A108548(n+1))-A292385(n+1)`
-/

namespace A292383.P1992750647622194539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332811 (A108548 (n + 1)).toNat - A292385 (n + 1)

end

end A292383.P1992750647622194539

/-! ## A292383.P14896894867233012753

`A252756(A250245(n+1))-A292385(n+1)`
-/

namespace A292383.P14896894867233012753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A250245 (n + 1)).toNat - A292385 (n + 1)

end

end A292383.P14896894867233012753

/-! ## A292383.P222920884592658629

`A269386(A302025(n+1))-A292385(n+1)`
-/

namespace A292383.P222920884592658629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269386 (A302025 (n + 1)).toNat - A292385 (n + 1)

end

end A292383.P222920884592658629

/-! ## A292383.P16543085866298527681

`A245611(A048673(n+1))-A292385(n+1)`
-/

namespace A292383.P16543085866298527681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (A048673 (n + 1)).toNat - A292385 (n + 1)

end

end A292383.P16543085866298527681

/-! ## A292383.P14360555391040162584

`A003188(A075158(n))-A292385(n+1)`
-/

namespace A292383.P14360555391040162584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A075158 n).toNat - A292385 (n + 1)

end

end A292383.P14360555391040162584

/-!
# A292384: a(1) = 1; for n > 1, a(n) = 4*a(A252463(n)) + (n mod 4).

The programs for A292384, the canonical program `A292384.P10770707212818105069` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292384 has offset 1).

The definition of A292384 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292384.P10770707212818105069

`4*a(A252463(n+1)-1)+(n+1)%4` with `a(0)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A292384

/-- `4*a(A252463(n+1)-1)+(n+1)%4` -/
def P10770707212818105069.Spec : Prop :=
  ∀ n, (P10770707212818105069.a n : ℤ) = A292384 (n + 1)

theorem P10770707212818105069.correct : P10770707212818105069.Spec := by
  intro n
  simp only [A292384, Nat.add_sub_cancel]

end A292384

/-! ## A292384.P6622889440174580433

`4*a(A252463(n+1)-1)+A010873(n+1)` with `a(0)=1`
-/

namespace A292384.P6622889440174580433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (A252463 (n + 1) - 1).toNat + A010873 (n + 1)

end

end A292384.P6622889440174580433

namespace A292384

/-- `4*a(A252463(n+1)-1)+A010873(n+1)` -/
def P6622889440174580433.Spec : Prop :=
  ∀ n, P6622889440174580433.a n = A292384 (n + 1)

end A292384

/-!
# A292385: a(1) = 0, a(2) = 1, and for n > 2, a(n) = 2*a(A252463(n)) + [n == 1 (mod 4)].

The programs for A292385, there is no canonical definition to state claims against.
-/

/-! ## A292385.P9573512293466748078

`A243071(n+1)-A292383(n+1)`
-/

namespace A292385.P9573512293466748078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1) - A292383 (n + 1)

end

end A292385.P9573512293466748078

/-! ## A292385.P10823656817162584802

`xor(A243071(A000027(n+1)), A292383(n+1))`
-/

namespace A292385.P10823656817162584802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A243071 (A000027 (n + 1)).toNat) (A292383 (n + 1))

end

end A292385.P10823656817162584802

/-! ## A292385.P15528023232996349297

`xor(A243071(A252463(2*(n+1))), A292383(n+1))`
-/

namespace A292385.P15528023232996349297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A243071 (A252463 (2 * (n + 1))).toNat) (A292383 (n + 1))

end

end A292385.P15528023232996349297

/-! ## A292385.P7575494708830912400

`and(A292382(n+1)+A292381(n+1), A243071(n+1))`
-/

namespace A292385.P7575494708830912400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A292382 (n + 1) + A292381 (n + 1)) (A243071 (n + 1))

end

end A292385.P7575494708830912400

/-! ## A292385.P7791477386282640543

`A332811(A108548(n+1))-A292383(n+1)`
-/

namespace A292385.P7791477386282640543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332811 (A108548 (n + 1)).toNat - A292383 (n + 1)

end

end A292385.P7791477386282640543

/-! ## A292385.P5063114551292292902

`A252756(A250245(n+1))-A292383(n+1)`
-/

namespace A292385.P5063114551292292902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A250245 (n + 1)).toNat - A292383 (n + 1)

end

end A292385.P5063114551292292902

/-! ## A292385.P6339832440328912295

`A269386(A302025(n+1))-A292383(n+1)`
-/

namespace A292385.P6339832440328912295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269386 (A302025 (n + 1)).toNat - A292383 (n + 1)

end

end A292385.P6339832440328912295

/-! ## A292385.P10992665138221108228

`A245611(A048673(n+1))-A292383(n+1)`
-/

namespace A292385.P10992665138221108228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (A048673 (n + 1)).toNat - A292383 (n + 1)

end

end A292385.P10992665138221108228

/-! ## A292385.P8372937768494013326

`A003188(A075158(n))-A292383(n+1)`
-/

namespace A292385.P8372937768494013326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A075158 n).toNat - A292383 (n + 1)

end

end A292385.P8372937768494013326

/-!
# A292389: a(n) = SumXOR_{k=1..n} A292388(k) (where SumXOR is the analog of summation under the binary XOR operation).

The programs for A292389, there is no canonical definition to state claims against.
-/

/-! ## A292389.P17903958779486138468

`xor(a(n-1), A292388(n+1))` with `a(0)=2`
-/

namespace A292389.P17903958779486138468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (a (n - 1)) (A292388 (n + 1))

end

end A292389.P17903958779486138468

/-!
# A292390: Numbers n such that psi(n) = 2*phi(n).

The programs for A292390, there is no canonical definition to state claims against.
-/

/-! ## A292390.P7865169593326766736

`eq[A000010(n+1), A292786(n+1)]+1`
-/

namespace A292390.P7865169593326766736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292786 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A292390.P7865169593326766736

/-! ## A292390.P2573544514850442195

`eq[A083254(n+1), A253628(n+1)]+1`
-/

namespace A292390.P2573544514850442195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A292390.P2573544514850442195

/-! ## A292390.P5616157888740989070

`A004442(eq[A000010(n+1), A292786(n+1)])`
-/

namespace A292390.P5616157888740989070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292390.P5616157888740989070

/-! ## A292390.P17134659216173858945

`A020725(eq[A000010(n+1), A292786(n+1)])`
-/

namespace A292390.P17134659216173858945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292390.P17134659216173858945

/-! ## A292390.P14421851429216758773

`A131738(eq[A000010(n+1), A292786(n+1)])`
-/

namespace A292390.P14421851429216758773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292390.P14421851429216758773

/-!
# A292392: Numbers n such that n^2 divides (17^n + 1).

The programs for A292392, there is no canonical definition to state claims against.
-/

/-! ## A292392.P823082932401140813

`A177817(A128870(n+1))`
-/

namespace A292392.P823082932401140813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177817 (A128870 (n + 1)).toNat

end

end A292392.P823082932401140813

/-! ## A292392.P3216033730266673014

`A177817(A106000(n+1))`
-/

namespace A292392.P3216033730266673014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177817 (A106000 (n + 1)).toNat

end

end A292392.P3216033730266673014

/-! ## A292392.P15943912663855952193

`A177817(∑[A334875(n)!])`
-/

namespace A292392.P15943912663855952193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A334875 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177817 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292392.P15943912663855952193

/-! ## A292392.P13521044109944729634

`A177817(A030547(n+1)+A029731(n+1))`
-/

namespace A292392.P13521044109944729634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177817 (A030547 (n + 1) + A029731 (n + 1)).toNat

end

end A292392.P13521044109944729634

/-! ## A292392.P17133602955934594468

`A177817(A083136(n+1))`
-/

namespace A292392.P17133602955934594468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177817 (A083136 (n + 1)).toNat

end

end A292392.P17133602955934594468

/-!
# A292393: Base-n digit k involved in anomalous cancellation in the proper fraction A292288(n)/A292289(n).

The programs for A292393, there is no canonical definition to state claims against.
-/

/-! ## A292393.P9502943824569152145

`A292288(n+2)%(n+2)`
-/

namespace A292393.P9502943824569152145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292288 (n + 2)) (n + 2 : ℤ)

end

end A292393.P9502943824569152145

/-! ## A292393.P18089844759253908014

`gcd(A002034(n+1), A008683(A288763(n)))`
-/

namespace A292393.P18089844759253908014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002034 (n + 1)) (A008683 (A288763 n).toNat)

end

end A292393.P18089844759253908014

/-! ## A292393.P12892182737177321556

`A002034(n+1)^A015163(A208575(n))`
-/

namespace A292393.P12892182737177321556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (n + 1) : ℚ) ^ (A015163 (A208575 n).toNat : ℤ)

end

end A292393.P12892182737177321556

/-! ## A292393.P8263155706707471866

`A292288(n+2)-A000005(2^(n+1))`
-/

namespace A292393.P8263155706707471866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292288 (n + 2) - A000005 (2 ^ (n + 1))

end

end A292393.P8263155706707471866

/-! ## A292393.P14887602874744788425

`A292288(n+2)-A001222(A000079(n+2))`
-/

namespace A292393.P14887602874744788425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292288 (n + 2) - A001222 (A000079 (n + 2)).toNat

end

end A292393.P14887602874744788425

/-!
# A292394: G.f. A(x) satisfies: [x^n] A( x/A(x)^(n^2) ) = 0 for n>1.

The programs for A292394, there is no canonical definition to state claims against.
-/

/-! ## A292394.P16605115311239917974

`n²*A104309(a(n-1))` with `a(0)=1`
-/

namespace A292394.P16605115311239917974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ 2 : ℤ) * A104309 (a (n - 1)).toNat

end

end A292394.P16605115311239917974

/-!
# A292395: a(n) = A292394(n)/n^2 for n>=1.

The programs for A292395, there is no canonical definition to state claims against.
-/

/-! ## A292395.P17591155409755675560

`A292394(n+1)/(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292395.P17591155409755675560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292394 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A292395.P17591155409755675560

/-!
# A292397: p-INVERT of the tribonacci numbers (A000073(k), k>=2), where p(S) = 1 - S - S^2 - S^3.

The programs for A292397, there is no canonical definition to state claims against.
-/

/-! ## A292397.P4116006321114141081

`A060557(n)-A022307(A076282(n+1))`
-/

namespace A292397.P4116006321114141081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 n - A022307 (A076282 (n + 1)).toNat

end

end A292397.P4116006321114141081

/-! ## A292397.P14672568293278059060

`A060557(n)-A063896(A241705(n+1))`
-/

namespace A292397.P14672568293278059060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 n - A063896 (A241705 (n + 1)).toNat

end

end A292397.P14672568293278059060

/-! ## A292397.P11516867147314447285

`A178798(A155587(n))+A060557(n)`
-/

namespace A292397.P11516867147314447285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A155587 n).toNat + A060557 n

end

end A292397.P11516867147314447285

/-!
# A292398: p-INVERT of A010892, where p(S) = 1 - S - S^2 - S^3.

The programs for A292398, there is no canonical definition to state claims against.
-/

/-! ## A292398.P7771238251685907809

`A172264(A259442(n))`
-/

namespace A292398.P7771238251685907809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 (A259442 n).toNat

end

end A292398.P7771238251685907809

/-! ## A292398.P10581684271147783494

`A002265(ceil(sqrt(A124299(n+1))))`
-/

namespace A292398.P10581684271147783494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ⌈Real.sqrt (A124299 (n + 1) : ℝ)⌉.toNat

end

end A292398.P10581684271147783494

/-! ## A292398.P6997475057052333023

`A059169(ceil(sqrt(A126109(n+1))))`
-/

namespace A292398.P6997475057052333023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 ⌈Real.sqrt (A126109 (n + 1) : ℝ)⌉.toNat

end

end A292398.P6997475057052333023

/-!
# A292399: p-INVERT of (1,2,3,5,8,...) (distinct Fibonacci numbers), where p(S) = (1 - S)^2.

The programs for A292399, the canonical program `A292399.P1829501425295739618` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292399 has offset 0).

The definition of A292399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292399.P1829501425295739618

`4*a(n-1)-8*a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=7, a(2)=22, a(3)=69`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A292399

/-- `4*a(n-1)-8*a(n-3)-4*a(n-4)` -/
def P1829501425295739618.Spec : Prop :=
  ∀ n, P1829501425295739618.a n = A292399 n

theorem P1829501425295739618.correct : P1829501425295739618.Spec := by
  intro n
  simp only [A292399]

end A292399

/-! ## A292399.P912311573951866195

`A291385(n)+A028859(n)`
-/

namespace A292399.P912311573951866195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291385 n + A028859 n

end

end A292399.P912311573951866195

namespace A292399

/-- `A291385(n)+A028859(n)` -/
def P912311573951866195.Spec : Prop :=
  ∀ n, P912311573951866195.a n = A292399 n

end A292399

/-! ## A292399.P16023692824668561981

`A291385(n)+∑[A052945(n)]`
-/

namespace A292399.P16023692824668561981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291385 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292399.P16023692824668561981

namespace A292399

/-- `A291385(n)+∑[A052945(n)]` -/
def P16023692824668561981.Spec : Prop :=
  ∀ n, P16023692824668561981.a n = A292399 n

end A292399

/-! ## A292399.P11419315605614700635

`A291385(n)+Δ[A057960(n)]`
-/

namespace A292399.P11419315605614700635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291385 n + (f1 (n + 1) - f1 n)

end

end A292399.P11419315605614700635

namespace A292399

/-- `A291385(n)+Δ[A057960(n)]` -/
def P11419315605614700635.Spec : Prop :=
  ∀ n, P11419315605614700635.a n = A292399 n

end A292399

/-! ## A292399.P13753039287679286850

`A291385(n)+A155020(n+1)`
-/

namespace A292399.P13753039287679286850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291385 n + A155020 (n + 1)

end

end A292399.P13753039287679286850

namespace A292399

/-- `A291385(n)+A155020(n+1)` -/
def P13753039287679286850.Spec : Prop :=
  ∀ n, P13753039287679286850.a n = A292399 n

end A292399

/-! ## A292399.P10227119715227429519

`A002605(n+1)+A291385(n)+A002605(n)`
-/

namespace A292399.P10227119715227429519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) + (A291385 n + A002605 n)

end

end A292399.P10227119715227429519

namespace A292399

/-- `A002605(n+1)+A291385(n)+A002605(n)` -/
def P10227119715227429519.Spec : Prop :=
  ∀ n, P10227119715227429519.a n = A292399 n

end A292399

