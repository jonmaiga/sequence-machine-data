import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A220400: Number of ways to write n as sum of at least 2 consecutive odd positive integers.

The programs for A220400, the canonical program `A220400.P6456087209133966610` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220400 has offset 0).

The definition of A220400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220400.P7676129663684225907

`A004526(abs(A325939(A028310(n))))`
-/

namespace A220400.P7676129663684225907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 |A325939 (A028310 n).toNat|.toNat

end

end A220400.P7676129663684225907

namespace A220400

/-- `A004526(abs(A325939(A028310(n))))` -/
def P7676129663684225907.Spec : Prop :=
  ∀ n, P7676129663684225907.a n = A220400 n

end A220400

/-! ## A220400.P6456087209133966610

`A110654(abs(A335021(A028310(n))))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A220400

/-- `A110654(abs(A335021(A028310(n))))` -/
def P6456087209133966610.Spec : Prop :=
  ∀ n, P6456087209133966610.a n = A220400 n

theorem P6456087209133966610.correct : P6456087209133966610.Spec := by
  intro n
  simp only [A220400]

end A220400

/-! ## A220400.P9090648704657558550

`A034178(A028310(n))-A135528(n+1)`
-/

namespace A220400.P9090648704657558550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A028310 n).toNat - A135528 (n + 1)

end

end A220400.P9090648704657558550

namespace A220400

/-- `A034178(A028310(n))-A135528(n+1)` -/
def P9090648704657558550.Spec : Prop :=
  ∀ n, P9090648704657558550.a n = A220400 n

end A220400

/-! ## A220400.P227502373690204047

`A028310(A277692(n+1))-A065033(A032741(n))`
-/

namespace A220400.P227502373690204047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A277692 (n + 1)).toNat - A065033 (A032741 n).toNat

end

end A220400.P227502373690204047

namespace A220400

/-- `A028310(A277692(n+1))-A065033(A032741(n))` -/
def P227502373690204047.Spec : Prop :=
  ∀ n, P227502373690204047.a n = A220400 n

end A220400

/-! ## A220400.P12434173412170173504

`A230263(A008574(n))-char[A004273(n)]`
-/

namespace A220400.P12434173412170173504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230263 (A008574 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A220400.P12434173412170173504

namespace A220400

/-- `A230263(A008574(n))-char[A004273(n)]` -/
def P12434173412170173504.Spec : Prop :=
  ∀ n, P12434173412170173504.a n = A220400 n

end A220400

/-! ## A220400.P17024049370278878622

`A230263(A008574(n))-A135528(n+1)`
-/

namespace A220400.P17024049370278878622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230263 (A008574 n).toNat - A135528 (n + 1)

end

end A220400.P17024049370278878622

namespace A220400

/-- `A230263(A008574(n))-A135528(n+1)` -/
def P17024049370278878622.Spec : Prop :=
  ∀ n, P17024049370278878622.a n = A220400 n

end A220400

/-! ## A220400.P17353086786929452809

`A230263(A008574(n))-char[n*A000035(n)]`
-/

namespace A220400.P17353086786929452809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230263 (A008574 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A220400.P17353086786929452809

namespace A220400

/-- `A230263(A008574(n))-char[n*A000035(n)]` -/
def P17353086786929452809.Spec : Prop :=
  ∀ n, P17353086786929452809.a n = A220400 n

end A220400

/-!
# A220401: The 1996-2002 list of EIA Standard Resistor values, multiplied by 10, arranged in increasing order with duplicates removed.

The programs for A220401, there is no canonical definition to state claims against.
-/

/-! ## A220401.P8100438893707796938

`A140102(n)+A061890(A061906(n))`
-/

namespace A220401.P8100438893707796938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n + A061890 (A061906 n).toNat

end

end A220401.P8100438893707796938

/-! ## A220401.P2992462682906598017

`A140102(n)+A061890(A061827(n+1))`
-/

namespace A220401.P2992462682906598017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n + A061890 (A061827 (n + 1)).toNat

end

end A220401.P2992462682906598017

/-! ## A220401.P3537595600032207649

`eq[46, A235382(A004444(n))]`
-/

namespace A220401.P3537595600032207649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  46

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235382 (A004444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220401.P3537595600032207649

/-! ## A220401.P18035446840112516058

`A070939(A007443(n+1))+98`
-/

namespace A220401.P18035446840112516058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A007443 (n + 1)).toNat + 98

end

end A220401.P18035446840112516058

/-! ## A220401.P5734882213369487505

`A070940(A002203(n+1))+99`
-/

namespace A220401.P5734882213369487505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A002203 (n + 1)).toNat + 99

end

end A220401.P5734882213369487505

/-!
# A220402: Bases with a record -- new or tie -- smallest 'stem value' for which a prime by concatenation of decrements exists.

The programs for A220402, there is no canonical definition to state claims against.
-/

/-! ## A220402.P10306983297741563687

`∑[dr(A338224(A253439(n+1)))]`
-/

namespace A220402.P10306983297741563687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A338224 (A253439 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220402.P10306983297741563687

/-! ## A220402.P10957061172934518933

`∑[dr(A332584(2^(comp[∑[n]]-n)))]`
-/

namespace A220402.P10957061172934518933
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A332584 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220402.P10957061172934518933

/-! ## A220402.P16888452176090813650

`∑[A004566(A131507(n)!)]`
-/

namespace A220402.P16888452176090813650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004566 (Nat.factorial (A131507 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220402.P16888452176090813650

/-! ## A220402.P1794968179457966535

`∑[dr(A119873(A098355(n)))]`
-/

namespace A220402.P1794968179457966535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A119873 (A098355 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220402.P1794968179457966535

/-! ## A220402.P16140642451928582308

`∑[A194980(A263337(n+1))]`
-/

namespace A220402.P16140642451928582308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (A263337 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220402.P16140642451928582308

/-!
# A220403: Equals two maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 nX3 array.

The programs for A220403, there is no canonical definition to state claims against.
-/

/-! ## A220403.P17360063764067071074

`A220406(∑[n+3]+1)`
-/

namespace A220403.P17360063764067071074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220406 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220403.P17360063764067071074

/-!
# A220404: Equals two maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 nX4 array.

The programs for A220404, there is no canonical definition to state claims against.
-/

/-! ## A220404.P9717059763028204256

`A220406(Δ[n²]+∑[n+2]+4)`
-/

namespace A220404.P9717059763028204256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220406 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A220404.P9717059763028204256

/-!
# A220405: Equals two maps: number of n X 5 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 n X 5 array.

The programs for A220405, there is no canonical definition to state claims against.
-/

/-! ## A220405.P7013152708241410657

`A220406(∑[n+5]+6)`
-/

namespace A220405.P7013152708241410657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220406 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A220405.P7013152708241410657

/-!
# A220407: Equals two maps: number of 2 X n binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 2 X n array.

The programs for A220407, there is no canonical definition to state claims against.
-/

/-! ## A220407.P15858816364385039359

`A220406(∑[n+1]+2)`
-/

namespace A220407.P15858816364385039359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220406 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220407.P15858816364385039359

/-! ## A220407.P1144588613178402204

`record[A010054(n)*A220406(n+2)]`
-/

namespace A220407.P1144588613178402204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A220406 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220407.P1144588613178402204

/-! ## A220407.P15116595311712446129

`record[A220406(n+1)/A156366(n)]`
-/

namespace A220407.P15116595311712446129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220406 (n + 1) : ℚ) / (A156366 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220407.P15116595311712446129

/-! ## A220407.P496890614543675106

`record[gcd(A097230(n), A220406(n+1))]`
-/

namespace A220407.P496890614543675106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A220406 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220407.P496890614543675106

/-! ## A220407.P8879618965972306031

`record[gcd(A220406(n+2), A255903(n))]`
-/

namespace A220407.P8879618965972306031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220406 (n + 2)) (A255903 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220407.P8879618965972306031

/-!
# A220408: Equals two maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 3Xn array.

The programs for A220408, there is no canonical definition to state claims against.
-/

/-! ## A220408.P476034044811517555

`A220406(∑[n+2]+4)`
-/

namespace A220408.P476034044811517555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220406 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220408.P476034044811517555

/-! ## A220408.P12112641975037007536

`record[gcd(A173018(n), A220406(n+4))]`
-/

namespace A220408.P12112641975037007536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173018 n) (A220406 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220408.P12112641975037007536

/-! ## A220408.P11581466076464789148

`A220406(A167614(n+1))+A066035(n)`
-/

namespace A220408.P11581466076464789148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220406 (A167614 (n + 1)).toNat + A066035 n

end

end A220408.P11581466076464789148

/-! ## A220408.P5723609118158731321

`A220406(A167614(n+1))+A102683(n)`
-/

namespace A220408.P5723609118158731321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220406 (A167614 (n + 1)).toNat + A102683 n

end

end A220408.P5723609118158731321

/-! ## A220408.P12965192722429257632

`A220406(A167614(n+1))+A137579(n)`
-/

namespace A220408.P12965192722429257632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220406 (A167614 (n + 1)).toNat + A137579 n

end

end A220408.P12965192722429257632

/-!
# A220409: Equals two maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 4Xn array.

The programs for A220409, there is no canonical definition to state claims against.
-/

/-! ## A220409.P17036909543491512589

`A220406(∑[n+3]+7)`
-/

namespace A220409.P17036909543491512589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220406 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220409.P17036909543491512589

/-!
# A220410: Equals two maps: number of 5Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 5Xn array.

The programs for A220410, there is no canonical definition to state claims against.
-/

/-! ## A220410.P10471405140044357320

`A220406(A167499(n+3))`
-/

namespace A220410.P10471405140044357320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220406 (A167499 (n + 3)).toNat

end

end A220410.P10471405140044357320

/-!
# A220411: The denominators of J. L. Fields generalized Bernoulli polynomials.

The programs for A220411, there is no canonical definition to state claims against.
-/

/-! ## A220411.P18115475571226589308

`A122803(n)*A260326(n)`
-/

namespace A220411.P18115475571226589308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A260326 n

end

end A220411.P18115475571226589308

/-! ## A220411.P2263024258231246297

`Δ[A084247(n)]*A260326(n)`
-/

namespace A220411.P2263024258231246297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A260326 n

end

end A220411.P2263024258231246297

/-! ## A220411.P14745763029946232006

`A122803(n)*A290030(2*n)`
-/

namespace A220411.P14745763029946232006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A290030 (2 * n)

end

end A220411.P14745763029946232006

/-! ## A220411.P15013885254384555453

`A001898(2*n)/A122803(n)`
-/

namespace A220411.P15013885254384555453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 (2 * n) : ℚ) / (A122803 n : ℚ)

end

end A220411.P15013885254384555453

/-! ## A220411.P12176523647777290647

`A001898(2*n)/A123876(∑[n])`
-/

namespace A220411.P12176523647777290647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 (2 * n) : ℚ) / (A123876 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A220411.P12176523647777290647

/-!
# A220412: Triangle read by rows, the coefficients of J. L. Fields generalized Bernoulli polynomials.

The programs for A220412, there is no canonical definition to state claims against.
-/

/-! ## A220412.P6280936750515243558

`abs(A260327(n)/A130321(n))`
-/

namespace A220412.P6280936750515243558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A260327 n : ℚ) / (A130321 n : ℚ)|

end

end A220412.P6280936750515243558

/-! ## A220412.P14478764506497479471

`gcd(A000038(n), A260327(n))/A130321(n)`
-/

namespace A220412.P14478764506497479471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A260327 n) : ℚ) / (A130321 n : ℚ)

end

end A220412.P14478764506497479471

/-! ## A220412.P7062885302827806415

`lcm(A033999(n), A260327(n))/A130321(n)`
-/

namespace A220412.P7062885302827806415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A033999 n) (A260327 n) : ℚ) / (A130321 n : ℚ)

end

end A220412.P7062885302827806415

/-!
# A220413: Number of ways to write n=x+y (x>=0, y>=0) with x^3+2*y^3 prime.

The programs for A220413, there is no canonical definition to state claims against.
-/

/-! ## A220413.P18334464930839975189

`A001221(A227036(n)+A056051(n+2))`
-/

namespace A220413.P18334464930839975189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A227036 n + A056051 (n + 2)).toNat

end

end A220413.P18334464930839975189

/-! ## A220413.P843532726708223337

`A026465(A108700(n+1))+A004216(n+1)`
-/

namespace A220413.P843532726708223337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (A108700 (n + 1)).toNat + A004216 (n + 1)

end

end A220413.P843532726708223337

/-! ## A220413.P4000566823964213711

`A135661(n+1)+A026465(A108700(n+1))`
-/

namespace A220413.P4000566823964213711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (n + 1) + A026465 (A108700 (n + 1)).toNat

end

end A220413.P4000566823964213711

/-! ## A220413.P11275319227100226477

`A001221(xor(A048788(n), A096246(n+1)))`
-/

namespace A220413.P11275319227100226477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A048788 n) (A096246 (n + 1))).toNat

end

end A220413.P11275319227100226477

/-! ## A220413.P12371882161249492067

`A033264(A096506(n+1)+A001511(n+1))`
-/

namespace A220413.P12371882161249492067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A096506 (n + 1) + A001511 (n + 1)).toNat

end

end A220413.P12371882161249492067

/-!
# A220414: a(n) = 6*a(n-1) - a(n-2), with a(1) = 13, a(2) = 73.

The programs for A220414, the canonical program `A220414.P6552749068946706164` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220414 has offset 1).

The definition of A220414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A220414.P6552749068946706164`, by `A220414.P6552749068946706164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220414.P6552749068946706164

`6*a(n-1)-a(n-2)` with `a(0)=13, a(1)=73`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220414

/-- `6*a(n-1)-a(n-2)` -/
def P6552749068946706164.Spec : Prop :=
  ∀ n, P6552749068946706164.a n = A220414 (n + 1)

theorem P6552749068946706164.correct : P6552749068946706164.Spec := by
  intro n
  simp only [A220414, Nat.add_sub_cancel]

end A220414

/-! ## A220414.P4339908573269926118

`A060569(2*n+1)`
-/

namespace A220414.P4339908573269926118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060569 (2 * n + 1)

end

end A220414.P4339908573269926118

namespace A220414

/-- `A060569(2*n+1)` -/
def P4339908573269926118.Spec : Prop :=
  ∀ n, P4339908573269926118.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P17128905954407966257

`A078343(n+1)²+A078343(n+2)²`
-/

namespace A220414.P17128905954407966257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (n + 1) ^ 2 + A078343 (n + 2) ^ 2

end

end A220414.P17128905954407966257

namespace A220414

/-- `A078343(n+1)²+A078343(n+2)²` -/
def P17128905954407966257.Spec : Prop :=
  ∀ n, P17128905954407966257.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P17781133199832934657

`ogf((13-5x)/(1-6x+x^2))`
-/

namespace A220414.P17781133199832934657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -5] [1, -6, 1] n

end

end A220414.P17781133199832934657

namespace A220414

/-- `ogf((13-5x)/(1-6x+x^2))` -/
def P17781133199832934657.Spec : Prop :=
  ∀ n, P17781133199832934657.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P14606840626247123952

`record[lcm(6, a(n-1))-a(n-2)]` with `a(0)=13, a(1)=5, a(2)=13`
-/

namespace A220414.P14606840626247123952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13, 5, 13] fun n f1 =>
  (Int.lcm 6 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220414.P14606840626247123952

namespace A220414

/-- `record[lcm(6, a(n-1))-a(n-2)]` -/
def P14606840626247123952.Spec : Prop :=
  ∀ n, P14606840626247123952.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P13532413415053636425

`Δ[A275794(n)]`
-/

namespace A220414.P13532413415053636425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220414.P13532413415053636425

namespace A220414

/-- `Δ[A275794(n)]` -/
def P13532413415053636425.Spec : Prop :=
  ∀ n, P13532413415053636425.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P16431514497081126447

`A076294(3*n+2)`
-/

namespace A220414.P16431514497081126447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076294 (3 * n + 2)

end

end A220414.P16431514497081126447

namespace A220414

/-- `A076294(3*n+2)` -/
def P16431514497081126447.Spec : Prop :=
  ∀ n, P16431514497081126447.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P14521112649416936257

`Δ[A276600(3*n+2)]`
-/

namespace A220414.P14521112649416936257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276600 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220414.P14521112649416936257

namespace A220414

/-- `Δ[A276600(3*n+2)]` -/
def P14521112649416936257.Spec : Prop :=
  ∀ n, P14521112649416936257.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P792534090668403714

`A001653(n+1)+Δ[floor((sqrt(2)+1)^(2*n+1))]`
-/

namespace A220414.P792534090668403714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (2 : ℝ) + 1) ^ (2 * n + 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) + (f1 (n + 1) - f1 n)

end

end A220414.P792534090668403714

namespace A220414

/-- `A001653(n+1)+Δ[floor((sqrt(2)+1)^(2*n+1))]` -/
def P792534090668403714.Spec : Prop :=
  ∀ n, P792534090668403714.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P13933466735894718717

`Δ[A054488(n)+A002315(n)]`
-/

namespace A220414.P13933466735894718717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n + A002315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220414.P13933466735894718717

namespace A220414

/-- `Δ[A054488(n)+A002315(n)]` -/
def P13933466735894718717.Spec : Prop :=
  ∀ n, P13933466735894718717.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P7514740299784521955

`Δ[A077413(n)+A001542(n)]`
-/

namespace A220414.P7514740299784521955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 n + A001542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220414.P7514740299784521955

namespace A220414

/-- `Δ[A077413(n)+A001542(n)]` -/
def P7514740299784521955.Spec : Prop :=
  ∀ n, P7514740299784521955.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P6743411935558296511

`Δ[A054490(n)+A038723(n)]`
-/

namespace A220414.P6743411935558296511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n + A038723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220414.P6743411935558296511

namespace A220414

/-- `Δ[A054490(n)+A038723(n)]` -/
def P6743411935558296511.Spec : Prop :=
  ∀ n, P6743411935558296511.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P16254896787438418606

`Δ[A182190(n)+A054489(n)]`
-/

namespace A220414.P16254896787438418606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182190 n + A054489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220414.P16254896787438418606

namespace A220414

/-- `Δ[A182190(n)+A054489(n)]` -/
def P16254896787438418606.Spec : Prop :=
  ∀ n, P16254896787438418606.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P7356158736555478351

`Δ[A182189(n)+A077413(n)]`
-/

namespace A220414.P7356158736555478351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182189 n + A077413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220414.P7356158736555478351

namespace A220414

/-- `Δ[A182189(n)+A077413(n)]` -/
def P7356158736555478351.Spec : Prop :=
  ∀ n, P7356158736555478351.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P1892202156278749680

`A266507(n)+A054490(n+1)`
-/

namespace A220414.P1892202156278749680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266507 n + A054490 (n + 1)

end

end A220414.P1892202156278749680

namespace A220414

/-- `A266507(n)+A054490(n+1)` -/
def P1892202156278749680.Spec : Prop :=
  ∀ n, P1892202156278749680.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P12657115542221676448

`A266507(n+1)+A101386(n)`
-/

namespace A220414.P12657115542221676448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266507 (n + 1) + A101386 n

end

end A220414.P12657115542221676448

namespace A220414

/-- `A266507(n+1)+A101386(n)` -/
def P12657115542221676448.Spec : Prop :=
  ∀ n, P12657115542221676448.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P4381735671496348539

`A001542(n+2)+A001541(n)`
-/

namespace A220414.P4381735671496348539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (n + 2) + A001541 n

end

end A220414.P4381735671496348539

namespace A220414

/-- `A001542(n+2)+A001541(n)` -/
def P4381735671496348539.Spec : Prop :=
  ∀ n, P4381735671496348539.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P10744077367897913591

`A038762(n+1)-A001542(n)`
-/

namespace A220414.P10744077367897913591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038762 (n + 1) - A001542 n

end

end A220414.P10744077367897913591

namespace A220414

/-- `A038762(n+1)-A001542(n)` -/
def P10744077367897913591.Spec : Prop :=
  ∀ n, P10744077367897913591.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P4265238578570225904

`A275794(n+1)-A275794(n)`
-/

namespace A220414.P4265238578570225904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275794 (n + 1) - A275794 n

end

end A220414.P4265238578570225904

namespace A220414

/-- `A275794(n+1)-A275794(n)` -/
def P4265238578570225904.Spec : Prop :=
  ∀ n, P4265238578570225904.a n = A220414 (n + 1)

end A220414

/-! ## A220414.P7142886429410272749

`A077444(n+2)-A038761(n)`
-/

namespace A220414.P7142886429410272749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077444 (n + 2) - A038761 n

end

end A220414.P7142886429410272749

namespace A220414

/-- `A077444(n+2)-A038761(n)` -/
def P7142886429410272749.Spec : Prop :=
  ∀ n, P7142886429410272749.a n = A220414 (n + 1)

end A220414

/-!
# A220415: Table T(n,k)= floor(n/k)+ floor(k/n), n,k >0 read by antidiagonals.

The programs for A220415, the canonical program `A220415.P3446082501230133742` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220415 has offset 1).

The definition of A220415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220415.P3446082501230133742

`floor(A002260(n+1)/A004736(n+1))+floor(A004736(n+1)/A002260(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A220415

/-- `floor(A002260(n+1)/A004736(n+1))+floor(A004736(n+1)/A002260(n+1))` -/
def P3446082501230133742.Spec : Prop :=
  ∀ n, P3446082501230133742.a n = A220415 (n + 1)

theorem P3446082501230133742.correct : P3446082501230133742.Spec := by
  intro n
  simp only [A220415, Nat.add_sub_cancel]

end A220415

/-! ## A220415.P309394412051692274

`A204123(n+1)+A003982(n)`
-/

namespace A220415.P309394412051692274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204123 (n + 1) + A003982 n

end

end A220415.P309394412051692274

namespace A220415

/-- `A204123(n+1)+A003982(n)` -/
def P309394412051692274.Spec : Prop :=
  ∀ n, P309394412051692274.a n = A220415 (n + 1)

end A220415

/-! ## A220415.P15382246248645695255

`A204123(n+1)+char[A046092(n)]`
-/

namespace A220415.P15382246248645695255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204123 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A220415.P15382246248645695255

namespace A220415

/-- `A204123(n+1)+char[A046092(n)]` -/
def P15382246248645695255.Spec : Prop :=
  ∀ n, P15382246248645695255.a n = A220415 (n + 1)

end A220415

/-! ## A220415.P15459256839230296009

`A004199(n+1)+A003988(n+1)`
-/

namespace A220415.P15459256839230296009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004199 (n + 1) + A003988 (n + 1)

end

end A220415.P15459256839230296009

namespace A220415

/-- `A004199(n+1)+A003988(n+1)` -/
def P15459256839230296009.Spec : Prop :=
  ∀ n, P15459256839230296009.a n = A220415 (n + 1)

end A220415

/-! ## A220415.P11148163092340226462

`A003988(n+1)+A003988(A038722(n+1))`
-/

namespace A220415.P11148163092340226462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (n + 1) + A003988 (A038722 (n + 1)).toNat

end

end A220415.P11148163092340226462

namespace A220415

/-- `A003988(n+1)+A003988(A038722(n+1))` -/
def P11148163092340226462.Spec : Prop :=
  ∀ n, P11148163092340226462.a n = A220415 (n + 1)

end A220415

/-! ## A220415.P18337422299635881712

`A004199(n+1)+A004199(A038722(n+1))`
-/

namespace A220415.P18337422299635881712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004199 (n + 1) + A004199 (A038722 (n + 1)).toNat

end

end A220415.P18337422299635881712

namespace A220415

/-- `A004199(n+1)+A004199(A038722(n+1))` -/
def P18337422299635881712.Spec : Prop :=
  ∀ n, P18337422299635881712.a n = A220415 (n + 1)

end A220415

/-! ## A220415.P16354150936656498787

`A003988(n+1)+A003988(A061579(n)+1)`
-/

namespace A220415.P16354150936656498787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (n + 1) + A003988 (A061579 n + 1).toNat

end

end A220415.P16354150936656498787

namespace A220415

/-- `A003988(n+1)+A003988(A061579(n)+1)` -/
def P16354150936656498787.Spec : Prop :=
  ∀ n, P16354150936656498787.a n = A220415 (n + 1)

end A220415

/-! ## A220415.P9685226213970511348

`A004199(n+1)+A004199(A061579(n)+1)`
-/

namespace A220415.P9685226213970511348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004199 (n + 1) + A004199 (A061579 n + 1).toNat

end

end A220415.P9685226213970511348

namespace A220415

/-- `A004199(n+1)+A004199(A061579(n)+1)` -/
def P9685226213970511348.Spec : Prop :=
  ∀ n, P9685226213970511348.a n = A220415 (n + 1)

end A220415

/-! ## A220415.P11903356873852252618

`A004199(n+1)+A004199(A278818(n))`
-/

namespace A220415.P11903356873852252618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004199 (n + 1) + A004199 (A278818 n).toNat

end

end A220415.P11903356873852252618

namespace A220415

/-- `A004199(n+1)+A004199(A278818(n))` -/
def P11903356873852252618.Spec : Prop :=
  ∀ n, P11903356873852252618.a n = A220415 (n + 1)

end A220415

/-!
# A220416: Table T(n,k) = ((n+k-1)*(n+k-2)/2+n)^n, n,k >0 read by antidiagonals.

The programs for A220416, the canonical program `A220416.P5663609671499042840` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220416 has offset 1).

The definition of A220416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220416.P5663609671499042840

`(n+1)^A002260(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A220416

/-- `(n+1)^A002260(n+1)` -/
def P5663609671499042840.Spec : Prop :=
  ∀ n, P5663609671499042840.a n = (A220416 (n + 1) : ℚ)

end A220416

/-! ## A220416.P5302711385229459881

`(n+1)^(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A220416.P5302711385229459881
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℤ)

end

end A220416.P5302711385229459881

namespace A220416

/-- `(n+1)^(1-C(∑[char[∑[n]]], 2)+n)` -/
def P5302711385229459881.Spec : Prop :=
  ∀ n, P5302711385229459881.a n = (A220416 (n + 1) : ℚ)

end A220416

/-! ## A220416.P13135790165210365669

`(n+1)^(A002262(n)+1)`
-/

namespace A220416.P13135790165210365669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A002262 n + 1 : ℤ)

end

end A220416.P13135790165210365669

namespace A220416

/-- `(n+1)^(A002262(n)+1)` -/
def P13135790165210365669.Spec : Prop :=
  ∀ n, P13135790165210365669.a n = (A220416 (n + 1) : ℚ)

end A220416

/-! ## A220416.P15887689185307204276

`(n+1)^A057555(Δ[n²])`
-/

namespace A220416.P15887689185307204276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A220416.P15887689185307204276

namespace A220416

/-- `(n+1)^A057555(Δ[n²])` -/
def P15887689185307204276.Spec : Prop :=
  ∀ n, P15887689185307204276.a n = (A220416 (n + 1) : ℚ)

end A220416

/-! ## A220416.P2189110831016013762

`(n+1)^A097285(Δ[n²])`
-/

namespace A220416.P2189110831016013762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A097285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A220416.P2189110831016013762

namespace A220416

/-- `(n+1)^A097285(Δ[n²])` -/
def P2189110831016013762.Spec : Prop :=
  ∀ n, P2189110831016013762.a n = (A220416 (n + 1) : ℚ)

end A220416

/-! ## A220416.P7829944625508033940

`(n+1)^A349520(Δ[n²])`
-/

namespace A220416.P7829944625508033940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A349520 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A220416.P7829944625508033940

namespace A220416

/-- `(n+1)^A349520(Δ[n²])` -/
def P7829944625508033940.Spec : Prop :=
  ∀ n, P7829944625508033940.a n = (A220416 (n + 1) : ℚ)

end A220416

/-! ## A220416.P2540846244161903613

`(n+1)^sqrt(A133819(n+1))`
-/

namespace A220416.P2540846244161903613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (Real.sqrt (A133819 (n + 1) : ℝ))

end

end A220416.P2540846244161903613

namespace A220416

/-- `(n+1)^sqrt(A133819(n+1))` -/
def P2540846244161903613.Spec : Prop :=
  ∀ n, P2540846244161903613.a n = (A220416 (n + 1) : ℝ)

end A220416

/-! ## A220416.P16876950657293082499

`(n+1)^(A131818(n+2)-1)`
-/

namespace A220416.P16876950657293082499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A131818 (n + 2) - 1 : ℤ)

end

end A220416.P16876950657293082499

namespace A220416

/-- `(n+1)^(A131818(n+2)-1)` -/
def P16876950657293082499.Spec : Prop :=
  ∀ n, P16876950657293082499.a n = (A220416 (n + 1) : ℚ)

end A220416

/-! ## A220416.P9485010083406093543

`(n+1)^(1-A057944(n)+n)`
-/

namespace A220416.P9485010083406093543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - A057944 n + (n : ℤ) : ℤ)

end

end A220416.P9485010083406093543

namespace A220416

/-- `(n+1)^(1-A057944(n)+n)` -/
def P9485010083406093543.Spec : Prop :=
  ∀ n, P9485010083406093543.a n = (A220416 (n + 1) : ℚ)

end A220416

/-! ## A220416.P9748814299713662689

`(n+1)^(A132118(n+1)-n)`
-/

namespace A220416.P9748814299713662689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A132118 (n + 1) - (n : ℤ) : ℤ)

end

end A220416.P9748814299713662689

namespace A220416

/-- `(n+1)^(A132118(n+1)-n)` -/
def P9748814299713662689.Spec : Prop :=
  ∀ n, P9748814299713662689.a n = (A220416 (n + 1) : ℚ)

end A220416

/-! ## A220416.P5515515741067451526

`(n+1)^(A057554(2*n+1)+1)`
-/

namespace A220416.P5515515741067451526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A057554 (2 * n + 1) + 1 : ℤ)

end

end A220416.P5515515741067451526

namespace A220416

/-- `(n+1)^(A057554(2*n+1)+1)` -/
def P5515515741067451526.Spec : Prop :=
  ∀ n, P5515515741067451526.a n = (A220416 (n + 1) : ℚ)

end A220416

/-! ## A220416.P3490680165392899924

`(n+1)^A026100(A026098(n+1))`
-/

namespace A220416.P3490680165392899924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A026100 (A026098 (n + 1)).toNat : ℤ)

end

end A220416.P3490680165392899924

namespace A220416

/-- `(n+1)^A026100(A026098(n+1))` -/
def P3490680165392899924.Spec : Prop :=
  ∀ n, P3490680165392899924.a n = (A220416 (n + 1) : ℚ)

end A220416

/-! ## A220416.P4409531787838450232

`(n+1)^A220280(∑[n+1])`
-/

namespace A220416.P4409531787838450232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A220280 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A220416.P4409531787838450232

namespace A220416

/-- `(n+1)^A220280(∑[n+1])` -/
def P4409531787838450232.Spec : Prop :=
  ∀ n, P4409531787838450232.a n = (A220416 (n + 1) : ℚ)

end A220416

/-!
# A220417: Table T(n,k) = k^n - n^k, n, k > 0, read by descending antidiagonals.

The programs for A220417, the canonical program `A220417.P2111861501532602898` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220417 has offset 1).

The definition of A220417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220417.P2111861501532602898

`A004736(n+1)^A002260(n+1)-A002260(n+1)^A004736(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A220417

/-- `A004736(n+1)^A002260(n+1)-A002260(n+1)^A004736(n+1)` -/
def P2111861501532602898.Spec : Prop :=
  ∀ n, P2111861501532602898.a n = (A220417 (n + 1) : ℚ)

end A220417

/-! ## A220417.P14069678370366740322

`A051128(n+1)-A051129(n+1)`
-/

namespace A220417.P14069678370366740322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A051129 (n + 1)

end

end A220417.P14069678370366740322

namespace A220417

/-- `A051128(n+1)-A051129(n+1)` -/
def P14069678370366740322.Spec : Prop :=
  ∀ n, P14069678370366740322.a n = A220417 (n + 1)

end A220417

/-! ## A220417.P17652443768002895125

`2*A051128(n+1)-A156353(n+1)`
-/

namespace A220417.P17652443768002895125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051128 (n + 1) - A156353 (n + 1)

end

end A220417.P17652443768002895125

namespace A220417

/-- `2*A051128(n+1)-A156353(n+1)` -/
def P17652443768002895125.Spec : Prop :=
  ∀ n, P17652443768002895125.a n = A220417 (n + 1)

end A220417

/-! ## A220417.P12936212297045512447

`A156353(n+1)-2*A051129(n+1)`
-/

namespace A220417.P12936212297045512447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156353 (n + 1) - 2 * A051129 (n + 1)

end

end A220417.P12936212297045512447

namespace A220417

/-- `A156353(n+1)-2*A051129(n+1)` -/
def P12936212297045512447.Spec : Prop :=
  ∀ n, P12936212297045512447.a n = A220417 (n + 1)

end A220417

/-! ## A220417.P3383389050692495754

`A051128(n+1)-A009998(A007401(n+1))`
-/

namespace A220417.P3383389050692495754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A009998 (A007401 (n + 1)).toNat

end

end A220417.P3383389050692495754

namespace A220417

/-- `A051128(n+1)-A009998(A007401(n+1))` -/
def P3383389050692495754.Spec : Prop :=
  ∀ n, P3383389050692495754.a n = A220417 (n + 1)

end A220417

/-! ## A220417.P6146092353563877357

`A009999(A014132(n+1))-A051129(n+1)`
-/

namespace A220417.P6146092353563877357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A014132 (n + 1)).toNat - A051129 (n + 1)

end

end A220417.P6146092353563877357

namespace A220417

/-- `A009999(A014132(n+1))-A051129(n+1)` -/
def P6146092353563877357.Spec : Prop :=
  ∀ n, P6146092353563877357.a n = A220417 (n + 1)

end A220417

/-! ## A220417.P12052484811978350961

`A051129(A038722(n+1))-A051129(n+1)`
-/

namespace A220417.P12052484811978350961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A038722 (n + 1)).toNat - A051129 (n + 1)

end

end A220417.P12052484811978350961

namespace A220417

/-- `A051129(A038722(n+1))-A051129(n+1)` -/
def P12052484811978350961.Spec : Prop :=
  ∀ n, P12052484811978350961.a n = A220417 (n + 1)

end A220417

/-! ## A220417.P2922590385222912093

`A051128(n+1)-A051128(A038722(n+1))`
-/

namespace A220417.P2922590385222912093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A051128 (A038722 (n + 1)).toNat

end

end A220417.P2922590385222912093

namespace A220417

/-- `A051128(n+1)-A051128(A038722(n+1))` -/
def P2922590385222912093.Spec : Prop :=
  ∀ n, P2922590385222912093.a n = A220417 (n + 1)

end A220417

/-! ## A220417.P10864383623106497274

`A051129(A061579(n)+1)-A051129(n+1)`
-/

namespace A220417.P10864383623106497274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A061579 n + 1).toNat - A051129 (n + 1)

end

end A220417.P10864383623106497274

namespace A220417

/-- `A051129(A061579(n)+1)-A051129(n+1)` -/
def P10864383623106497274.Spec : Prop :=
  ∀ n, P10864383623106497274.a n = A220417 (n + 1)

end A220417

/-! ## A220417.P7132057850380140586

`A051128(n+1)-A002260(n+1)*A009998(n)`
-/

namespace A220417.P7132057850380140586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A002260 (n + 1) * A009998 n

end

end A220417.P7132057850380140586

namespace A220417

/-- `A051128(n+1)-A002260(n+1)*A009998(n)` -/
def P7132057850380140586.Spec : Prop :=
  ∀ n, P7132057850380140586.a n = A220417 (n + 1)

end A220417

/-! ## A220417.P9365383601698051781

`A004736(n+1)^A002260(n+1)-A051129(n+1)`
-/

namespace A220417.P9365383601698051781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ) - (A051129 (n + 1) : ℚ)

end

end A220417.P9365383601698051781

namespace A220417

/-- `A004736(n+1)^A002260(n+1)-A051129(n+1)` -/
def P9365383601698051781.Spec : Prop :=
  ∀ n, P9365383601698051781.a n = (A220417 (n + 1) : ℚ)

end A220417

/-! ## A220417.P15857354850687961230

`A051128(n+1)-A002260(n+1)^A004736(n+1)`
-/

namespace A220417.P15857354850687961230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051128 (n + 1) : ℚ) - (A002260 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A220417.P15857354850687961230

namespace A220417

/-- `A051128(n+1)-A002260(n+1)^A004736(n+1)` -/
def P15857354850687961230.Spec : Prop :=
  ∀ n, P15857354850687961230.a n = (A220417 (n + 1) : ℚ)

end A220417

/-!
# A220418: Express 1 - x - x^2 - x^3 - x^4 - ... as product (1 + g(1)*x) * (1 + g(2)*x^2) *(1 + g(3)*x^3) * ... and use a(n) = - g(n).

The programs for A220418, there is no canonical definition to state claims against.
-/

/-! ## A220418.P10472441416091150945

`A356841(A065941(3*n+1)+A000045(n+1))`
-/

namespace A220418.P10472441416091150945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356841 (A065941 (3 * n + 1) + A000045 (n + 1)).toNat

end

end A220418.P10472441416091150945

/-! ## A220418.P8995090419442643736

`A245636(A083423(n))`
-/

namespace A220418.P8995090419442643736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (A083423 n).toNat

end

end A220418.P8995090419442643736

/-! ## A220418.P13413284610127375711

`A052364(A148507(n+1))`
-/

namespace A220418.P13413284610127375711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052364 (A148507 (n + 1)).toNat

end

end A220418.P13413284610127375711

/-! ## A220418.P10361004528346790132

`A123497(A192677(n+1))`
-/

namespace A220418.P10361004528346790132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123497 (A192677 (n + 1)).toNat

end

end A220418.P10361004528346790132

/-!
# A220419: Number of ways to write n=x+y (x>0, y>0) with 2x+1, 2y-1 and x^3+2y^3 all prime.

The programs for A220419, there is no canonical definition to state claims against.
-/

/-! ## A220419.P15773268788800554429

`A276469(A222500(n+1)+n)`
-/

namespace A220419.P15773268788800554429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276469 (A222500 (n + 1) + (n : ℤ)).toNat

end

end A220419.P15773268788800554429

/-! ## A220419.P5011346846266243377

`A287698(xor(A106836(n+1), A287698(n)))`
-/

namespace A220419.P5011346846266243377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287698 (Int.xor (A106836 (n + 1)) (A287698 n)).toNat

end

end A220419.P5011346846266243377

/-! ## A220419.P9326091301405631220

`A037820(A239391(n+1)^A302354(n+1))`
-/

namespace A220419.P9326091301405631220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (SequenceMachineLib.roundAway ((A239391 (n + 1) : ℚ) ^ (A302354 (n + 1) : ℤ))).toNat

end

end A220419.P9326091301405631220

/-! ## A220419.P9565044356946795978

`A234575(A361654(3*(n+1)))%A062821(n+1)`
-/

namespace A220419.P9565044356946795978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234575 (A361654 (3 * (n + 1))).toNat) (A062821 (n + 1))

end

end A220419.P9565044356946795978

/-! ## A220419.P3735672927288334854

`A263834(A315972(n))`
-/

namespace A220419.P3735672927288334854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263834 (A315972 n).toNat

end

end A220419.P3735672927288334854

/-!
# A220421: Number of halving and tripling steps to reach the largest value in the Collatz (3x+1) trajectory of n.

The programs for A220421, there is no canonical definition to state claims against.
-/

/-! ## A220421.P2310970465252315966

`A087225(n+1)-1`
-/

namespace A220421.P2310970465252315966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087225 (n + 1) - 1

end

end A220421.P2310970465252315966

/-! ## A220421.P3325123373983257682

`A023443(A087225(n+1))`
-/

namespace A220421.P3325123373983257682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A087225 (n + 1)).toNat

end

end A220421.P3325123373983257682

/-! ## A220421.P15249801409260688068

`A023444(A087225(n+1)+1)`
-/

namespace A220421.P15249801409260688068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A087225 (n + 1) + 1).toNat

end

end A220421.P15249801409260688068

/-! ## A220421.P18115312545221362359

`A289207(A087225(n+1)+1)`
-/

namespace A220421.P18115312545221362359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A087225 (n + 1) + 1).toNat

end

end A220421.P18115312545221362359

/-! ## A220421.P11342097042794714301

`A006577(n+1)-A222641(n+1)`
-/

namespace A220421.P11342097042794714301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A222641 (n + 1)

end

end A220421.P11342097042794714301

/-! ## A220421.P13063302330519254233

`A008908(n+1)-(A222641(n+1)+1)`
-/

namespace A220421.P13063302330519254233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A222641 (n + 1) + 1)

end

end A220421.P13063302330519254233

/-! ## A220421.P14592489146829847836

`A023443(A008908(n+1)-A222641(n+1))`
-/

namespace A220421.P14592489146829847836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008908 (n + 1) - A222641 (n + 1)).toNat

end

end A220421.P14592489146829847836

/-! ## A220421.P822695014737597168

`A006666(n+1)+A006667(n+1)-A222641(n+1)`
-/

namespace A220421.P822695014737597168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A006667 (n + 1) - A222641 (n + 1))

end

end A220421.P822695014737597168

/-! ## A220421.P3689468562378365013

`A006577(n+1)-A006577(A025586(n+1))`
-/

namespace A220421.P3689468562378365013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A006577 (A025586 (n + 1)).toNat

end

end A220421.P3689468562378365013

/-! ## A220421.P10337758155284143466

`A008908(n+1)-A008908(A025586(n+1))`
-/

namespace A220421.P10337758155284143466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A008908 (A025586 (n + 1)).toNat

end

end A220421.P10337758155284143466

/-! ## A220421.P11588666911444763701

`A139399(n+1)-A139399(A056959(n+1))`
-/

namespace A220421.P11588666911444763701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) - A139399 (A056959 (n + 1)).toNat

end

end A220421.P11588666911444763701

/-! ## A220421.P11346012847796946555

`A208981(n+1)-A208981(A056959(n+1))`
-/

namespace A220421.P11346012847796946555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208981 (n + 1) - A208981 (A056959 (n + 1)).toNat

end

end A220421.P11346012847796946555

/-!
# A220422: Numerators of coefficients of an expansion of the logarithm of the Catalan numbers.

The programs for A220422, there is no canonical definition to state claims against.
-/

/-! ## A220422.P16255405032722733421

`Δ[A009393(Δ[n²])]`
-/

namespace A220422.P16255405032722733421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009393 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220422.P16255405032722733421

/-! ## A220422.P3362163591332756218

`4-A028296(n+1)`
-/

namespace A220422.P3362163591332756218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A028296 (n + 1)

end

end A220422.P3362163591332756218

/-! ## A220422.P3263819516678635027

`2+A119880(2*(n+1))`
-/

namespace A220422.P3263819516678635027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A119880 (2 * (n + 1))

end

end A220422.P3263819516678635027

/-! ## A220422.P1259777786806861817

`3-A218529(2*(n+1))`
-/

namespace A220422.P1259777786806861817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A218529 (2 * (n + 1))

end

end A220422.P1259777786806861817

/-! ## A220422.P13402569656233533539

`A241209(2*n+1)+4`
-/

namespace A220422.P13402569656233533539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241209 (2 * n + 1) + 4

end

end A220422.P13402569656233533539

/-!
# A220423: Cubefree products of primorials (A002110).

The programs for A220423, there is no canonical definition to state claims against.
-/

/-! ## A220423.P6840477153864310650

`A025487(record[(n+1)/A050362(n+1)])`
-/

namespace A220423.P6840477153864310650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A050362 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A220423.P6840477153864310650

/-! ## A220423.P2443539491130913043

`record[root(A025487(n+1), A050362(n+1))]`
-/

namespace A220423.P2443539491130913043
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℝ) ^ (1 / (A050362 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220423.P2443539491130913043

/-! ## A220423.P1452209169852012380

`record[gcd(A247451(n+1)², A025487(n+1))]`
-/

namespace A220423.P1452209169852012380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A247451 (n + 1) ^ 2) (A025487 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220423.P1452209169852012380

/-! ## A220423.P4923370476708533549

`record[A025487(n+1)/∏{e}[A307107(n+1), #]]`
-/

namespace A220423.P4923370476708533549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220423.P4923370476708533549

/-! ## A220423.P14297307831761271629

`∩[A014851(n+1), A025487(n+1)]`
-/

namespace A220423.P14297307831761271629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220423.P14297307831761271629

/-!
# A220424: Triangle read by rows: A007651 expanded into single digits.

The programs for A220424, there is no canonical definition to state claims against.
-/

/-! ## A220424.P12147376161187714631

`gcd(A004525(A048585(n)), A261129(n+2))`
-/

namespace A220424.P12147376161187714631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004525 (A048585 n).toNat) (A261129 (n + 2))

end

end A220424.P12147376161187714631

/-! ## A220424.P8042468632295336765

`A228349(A173749(n+4)+A137292(3*(n+1)))`
-/

namespace A220424.P8042468632295336765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228349 (A173749 (n + 4) + A137292 (3 * (n + 1))).toNat

end

end A220424.P8042468632295336765

/-! ## A220424.P6713292017581871972

`gcd(A331245(A334142(2*(n+1))), A331251(n+2))`
-/

namespace A220424.P6713292017581871972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A331245 (A334142 (2 * (n + 1))).toNat) (A331251 (n + 2))

end

end A220424.P6713292017581871972

/-! ## A220424.P14560064819749818037

`A353786(A353750(2*n+5)*A353758(3*(n+1)))`
-/

namespace A220424.P14560064819749818037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353786 (A353750 (2 * n + 5) * A353758 (3 * (n + 1))).toNat

end

end A220424.P14560064819749818037

/-! ## A220424.P6114852936225260003

`gcd(A048587(n+4), A205711(A161703(n)))`
-/

namespace A220424.P6114852936225260003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048587 (n + 4)) (A205711 (A161703 n).toNat)

end

end A220424.P6114852936225260003

/-!
# A220425: a(n) = n^2 + 2*n + 2^n.

The programs for A220425, the canonical program `A220425.P6800770314899877528` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220425 has offset 0).

The definition of A220425 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+2*n+2^n` (program `A220425.P6800770314899877528`, by `A220425.P6800770314899877528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220425.P6800770314899877528

`n²+2*n+2^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220425

/-- `n²+2*n+2^n` -/
def P6800770314899877528.Spec : Prop :=
  ∀ n, (P6800770314899877528.a n : ℤ) = A220425 n

theorem P6800770314899877528.correct : P6800770314899877528.Spec := by
  intro n
  simp only [A220425]

end A220425

/-! ## A220425.P15212836312037297634

`∑[∑[2*(a(n-1)-1)]]` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A220425.P15212836312037297634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n f2 =>
  2 * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220425.P15212836312037297634

namespace A220425

/-- `∑[∑[2*(a(n-1)-1)]]` -/
def P15212836312037297634.Spec : Prop :=
  ∀ n, P15212836312037297634.a n = A220425 n

end A220425

/-! ## A220425.P7693367083028357578

`floor(2*(a(n-1)+n+1)-n²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A220425.P7693367083028357578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (n + 1 : ℤ)) - (n ^ 2 : ℤ)

end

end A220425.P7693367083028357578

namespace A220425

/-- `floor(2*(a(n-1)+n+1)-n²)` -/
def P7693367083028357578.Spec : Prop :=
  ∀ n, P7693367083028357578.a n = A220425 n

theorem P7693367083028357578.correct : P7693367083028357578.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A220425, Nat.add_sub_cancel, A220425.P7693367083028357578.a, A220425.P6800770314899877528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A220425, Nat.add_sub_cancel, A220425.P7693367083028357578.a, A220425.P6800770314899877528.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A220425

/-! ## A220425.P4187588195437166355

`∑[∑[a(n-1)+a(n-1)-2]]` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A220425.P4187588195437166355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220425.P4187588195437166355

namespace A220425

/-- `∑[∑[a(n-1)+a(n-1)-2]]` -/
def P4187588195437166355.Spec : Prop :=
  ∀ n, P4187588195437166355.a n = A220425 n

end A220425

/-! ## A220425.P2320109396019555186

`∑[∑[a(n-1)-(2-a(n-1))]]` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A220425.P2320109396019555186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n f2 =>
  f2 (n - 1) - (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220425.P2320109396019555186

namespace A220425

/-- `∑[∑[a(n-1)-(2-a(n-1))]]` -/
def P2320109396019555186.Spec : Prop :=
  ∀ n, P2320109396019555186.a n = A220425 n

end A220425

/-! ## A220425.P4399217228576883995

`floor(n*(2-n)+2*(a(n-1)+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A220425.P4399217228576883995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (2 - (n : ℤ)) + 2 * (a (n - 1) + 1)

end

end A220425.P4399217228576883995

namespace A220425

/-- `floor(n*(2-n)+2*(a(n-1)+1))` -/
def P4399217228576883995.Spec : Prop :=
  ∀ n, P4399217228576883995.a n = A220425 n

theorem P4399217228576883995.correct : P4399217228576883995.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A220425, Nat.add_sub_cancel, A220425.P4399217228576883995.a, A220425.P6800770314899877528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A220425, Nat.add_sub_cancel, A220425.P4399217228576883995.a, A220425.P6800770314899877528.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A220425

/-! ## A220425.P7973386005082075300

`floor(2*a(n-1)-(n*(n-2)-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A220425.P7973386005082075300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - ((n : ℤ) * ((n : ℤ) - 2) - 2)

end

end A220425.P7973386005082075300

namespace A220425

/-- `floor(2*a(n-1)-(n*(n-2)-2))` -/
def P7973386005082075300.Spec : Prop :=
  ∀ n, P7973386005082075300.a n = A220425 n

theorem P7973386005082075300.correct : P7973386005082075300.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A220425, Nat.add_sub_cancel, A220425.P7973386005082075300.a, A220425.P6800770314899877528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A220425, Nat.add_sub_cancel, A220425.P7973386005082075300.a, A220425.P6800770314899877528.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A220425

/-! ## A220425.P9643413384088487080

`abs(n²-A131949(n))`
-/

namespace A220425.P9643413384088487080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A131949 n|

end

end A220425.P9643413384088487080

namespace A220425

/-- `abs(n²-A131949(n))` -/
def P9643413384088487080.Spec : Prop :=
  ∀ n, P9643413384088487080.a n = A220425 n

end A220425

/-! ## A220425.P10400171424725708689

`∑[A094373(n)+2*n]`
-/

namespace A220425.P10400171424725708689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220425.P10400171424725708689

namespace A220425

/-- `∑[A094373(n)+2*n]` -/
def P10400171424725708689.Spec : Prop :=
  ∀ n, P10400171424725708689.a n = A220425 n

end A220425

/-! ## A220425.P2053341883825047965

`∑[A131577(n)+Δ[n²]]`
-/

namespace A220425.P2053341883825047965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220425.P2053341883825047965

namespace A220425

/-- `∑[A131577(n)+Δ[n²]]` -/
def P2053341883825047965.Spec : Prop :=
  ∀ n, P2053341883825047965.a n = A220425 n

end A220425

/-! ## A220425.P2036192111154281457

`∑[abs(Δ[A011782(n)+n²])]`
-/

namespace A220425.P2036192111154281457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220425.P2036192111154281457

namespace A220425

/-- `∑[abs(Δ[A011782(n)+n²])]` -/
def P2036192111154281457.Spec : Prop :=
  ∀ n, P2036192111154281457.a n = A220425 n

end A220425

/-! ## A220425.P6762764884311112404

`∑[A056469(n)+2*n-1]`
-/

namespace A220425.P6762764884311112404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n + (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220425.P6762764884311112404

namespace A220425

/-- `∑[A056469(n)+2*n-1]` -/
def P6762764884311112404.Spec : Prop :=
  ∀ n, P6762764884311112404.a n = A220425 n

end A220425

/-! ## A220425.P16397501857989311994

`∑[A228693(2*n)+2*n]`
-/

namespace A220425.P16397501857989311994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 (2 * n) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220425.P16397501857989311994

namespace A220425

/-- `∑[A228693(2*n)+2*n]` -/
def P16397501857989311994.Spec : Prop :=
  ∀ n, P16397501857989311994.a n = A220425 n

end A220425

/-! ## A220425.P16416233744315733026

`abs(A131924(n)+2*n-n)`
-/

namespace A220425.P16416233744315733026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131924 n + (2 * n : ℤ) - (n : ℤ)|

end

end A220425.P16416233744315733026

namespace A220425

/-- `abs(A131924(n)+2*n-n)` -/
def P16416233744315733026.Spec : Prop :=
  ∀ n, P16416233744315733026.a n = A220425 n

end A220425

/-! ## A220425.P15110086125354333494

`abs(1-(A000079(n)+(n+1)²))`
-/

namespace A220425.P15110086125354333494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000079 n + ((n + 1) ^ 2 : ℤ))|

end

end A220425.P15110086125354333494

namespace A220425

/-- `abs(1-(A000079(n)+(n+1)²))` -/
def P15110086125354333494.Spec : Prop :=
  ∀ n, P15110086125354333494.a n = A220425 n

end A220425

/-! ## A220425.P17037046101826696

`abs(2-(A000051(n)+(n+1)²))`
-/

namespace A220425.P17037046101826696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A000051 n + ((n + 1) ^ 2 : ℤ))|

end

end A220425.P17037046101826696

namespace A220425

/-- `abs(2-(A000051(n)+(n+1)²))` -/
def P17037046101826696.Spec : Prop :=
  ∀ n, P17037046101826696.a n = A220425 n

end A220425

/-! ## A220425.P8604656802310458033

`∑[A034008(n+1)+2*n+1]`
-/

namespace A220425.P8604656802310458033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220425.P8604656802310458033

namespace A220425

/-- `∑[A034008(n+1)+2*n+1]` -/
def P8604656802310458033.Spec : Prop :=
  ∀ n, P8604656802310458033.a n = A220425 n

end A220425

/-! ## A220425.P4628032277696495101

`∑[A158780(2*n)+2*n+1]`
-/

namespace A220425.P4628032277696495101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220425.P4628032277696495101

namespace A220425

/-- `∑[A158780(2*n)+2*n+1]` -/
def P4628032277696495101.Spec : Prop :=
  ∀ n, P4628032277696495101.a n = A220425 n

end A220425

/-! ## A220425.P10892162968254169473

`∑[2*n+1-A137206(2*n)]`
-/

namespace A220425.P10892162968254169473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A137206 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220425.P10892162968254169473

namespace A220425

/-- `∑[2*n+1-A137206(2*n)]` -/
def P10892162968254169473.Spec : Prop :=
  ∀ n, P10892162968254169473.a n = A220425 n

end A220425

/-! ## A220425.P4593997615069400607

`lcm(A000225(n)+(n+1)², A177704(n+1))`
-/

namespace A220425.P4593997615069400607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000225 n + ((n + 1) ^ 2 : ℤ)) (A177704 (n + 1))

end

end A220425.P4593997615069400607

namespace A220425

/-- `lcm(A000225(n)+(n+1)², A177704(n+1))` -/
def P4593997615069400607.Spec : Prop :=
  ∀ n, (P4593997615069400607.a n : ℤ) = A220425 n

end A220425

/-!
# A220428: Equals two maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and vertical neighbors in a random 0..3 nX3 array.

The programs for A220428, there is no canonical definition to state claims against.
-/

/-! ## A220428.P15528629075352451720

`A220430(∑[n+2]+4)`
-/

namespace A220428.P15528629075352451720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220430 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220428.P15528629075352451720

/-! ## A220428.P5494411855545130462

`record[A220430(n+4)/A219441(n+1)²]`
-/

namespace A220428.P5494411855545130462
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220430 (n + 4) : ℚ) / (A219441 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220428.P5494411855545130462

/-! ## A220428.P16107529461186598854

`record[A220430(n+4)/A220226(n+1)²]`
-/

namespace A220428.P16107529461186598854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220430 (n + 4) : ℚ) / (A220226 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220428.P16107529461186598854

/-! ## A220428.P12699187572581567651

`A220430(A167614(n+1))+A011731(n)`
-/

namespace A220428.P12699187572581567651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220430 (A167614 (n + 1)).toNat + A011731 n

end

end A220428.P12699187572581567651

/-!
# A220429: Equals two maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and vertical neighbors in a random 0..3 nX4 array.

The programs for A220429, there is no canonical definition to state claims against.
-/

/-! ## A220429.P13524837684548840980

`A220430(C(n+4, 2)+4)`
-/

namespace A220429.P13524837684548840980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220430 (Nat.choose (n + 4) 2 + 4)

end

end A220429.P13524837684548840980

/-! ## A220429.P4861497194525646154

`A220430(A141214(n)+7)`
-/

namespace A220429.P4861497194525646154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220430 (A141214 n + 7).toNat

end

end A220429.P4861497194525646154

/-! ## A220429.P1086914265851386026

`A220430(A052905(n)+9)`
-/

namespace A220429.P1086914265851386026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220430 (A052905 n + 9).toNat

end

end A220429.P1086914265851386026

/-!
# A220431: Number of ways to write n=x+y (x>0, y>0) with 3x-1, 3x+1 and xy-1 all prime.

The programs for A220431, there is no canonical definition to state claims against.
-/

/-! ## A220431.P4835758324596276921

`A285726(n+1)+A134451(A094779(n))`
-/

namespace A220431.P4835758324596276921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (n + 1) + A134451 (A094779 n).toNat

end

end A220431.P4835758324596276921

/-! ## A220431.P6917023810558451152

`A134451(A094779(n))+A001222(A083716(n+1))`
-/

namespace A220431.P6917023810558451152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A094779 n).toNat + A001222 (A083716 (n + 1)).toNat

end

end A220431.P6917023810558451152

/-! ## A220431.P3559127508612190475

`A061336(A227309(n)-A124094(n))`
-/

namespace A220431.P3559127508612190475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 (A227309 n - A124094 n).toNat

end

end A220431.P3559127508612190475

/-! ## A220431.P14756757594373563169

`A230502(lt[A225620(n+1), A173557(3*n+2)])`
-/

namespace A220431.P14756757594373563169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230502 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A220431.P14756757594373563169

/-!
# A220432: Numbers not divisible by 2, 3 or any prime of the form 4x^2+2xy+7y^2 (see A219908).

The programs for A220432, there is no canonical definition to state claims against.
-/

/-! ## A220432.P14438321817262851758

`record[A106614(gcd(n, A145227(n+1)))]`
-/

namespace A220432.P14438321817262851758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (Int.gcd (n : ℤ) (A145227 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220432.P14438321817262851758

/-! ## A220432.P11535924870048161792

`record[A065330(A000720(A336803(n+1)))]`
-/

namespace A220432.P11535924870048161792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A000720 (A336803 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220432.P11535924870048161792

/-! ## A220432.P2671467048817777270

`eq[A070665(n), A289014(A332462(n+1))]`
-/

namespace A220432.P2671467048817777270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289014 (A332462 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220432.P2671467048817777270

/-! ## A220432.P17438258498238379338

`∩[A206547(n+1), A346127(n+1)]`
-/

namespace A220432.P17438258498238379338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220432.P17438258498238379338

/-! ## A220432.P9270644427834587058

`lt[A008000(A353851(n)), A166044(n)]`
-/

namespace A220432.P9270644427834587058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 (A353851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220432.P9270644427834587058

/-!
# A220433: Expansion of e.g.f. for operads for alia algebras.

The programs for A220433, there is no canonical definition to state claims against.
-/

/-! ## A220433.P744704777105985063

`xor(n, A090618(A360349(n)))`
-/

namespace A220433.P744704777105985063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A090618 (A360349 n).toNat)

end

end A220433.P744704777105985063

/-! ## A220433.P1756512080845241402

`A266201(n)+A028897(A015465(n))`
-/

namespace A220433.P1756512080845241402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266201 n + A028897 (A015465 n).toNat

end

end A220433.P1756512080845241402

/-!
# A220434: Numerators of reduced coefficients in expansion of e.g.f. for operads for alia algebras.

The programs for A220434, there is no canonical definition to state claims against.
-/

/-! ## A220434.P5123408574194649357

`A055625(A270995(n))%A000108(n+1)`
-/

namespace A220434.P5123408574194649357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055625 (A270995 n).toNat) (A000108 (n + 1))

end

end A220434.P5123408574194649357

/-! ## A220434.P16967869146876339593

`A073750(A148552(n+1))`
-/

namespace A220434.P16967869146876339593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (A148552 (n + 1)).toNat

end

end A220434.P16967869146876339593

/-!
# A220436: a(n) = A127546(n)^2.

The programs for A220436, the canonical program `A220436.P15888042924145104676` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220436 has offset 0).

The definition of A220436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220436.P15888042924145104676

`A127546(n)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A220436

/-- `A127546(n)²` -/
def P15888042924145104676.Spec : Prop :=
  ∀ n, P15888042924145104676.a n = A220436 n

theorem P15888042924145104676.correct : P15888042924145104676.Spec := by
  intro n
  simp only [A220436]

end A220436

/-! ## A220436.P11457498610438831344

`Δ[Δ[A038990(n)]]²`
-/

namespace A220436.P11457498610438831344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A220436.P11457498610438831344

namespace A220436

/-- `Δ[Δ[A038990(n)]]²` -/
def P11457498610438831344.Spec : Prop :=
  ∀ n, P11457498610438831344.a n = A220436 n

end A220436

/-! ## A220436.P10674165240226248423

`Δ[A061647(n+1)]²`
-/

namespace A220436.P10674165240226248423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A220436.P10674165240226248423

namespace A220436

/-- `Δ[A061647(n+1)]²` -/
def P10674165240226248423.Spec : Prop :=
  ∀ n, P10674165240226248423.a n = A220436 n

end A220436

/-! ## A220436.P5538416578159877991

`Δ[2*A110035(n)]²`
-/

namespace A220436.P5538416578159877991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A220436.P5538416578159877991

namespace A220436

/-- `Δ[2*A110035(n)]²` -/
def P5538416578159877991.Spec : Prop :=
  ∀ n, P5538416578159877991.a n = A220436 n

end A220436

/-! ## A220436.P2037181875177780453

`record[lcm(2, A293411(n))²]`
-/

namespace A220436.P2037181875177780453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A293411 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220436.P2037181875177780453

namespace A220436

/-- `record[lcm(2, A293411(n))²]` -/
def P2037181875177780453.Spec : Prop :=
  ∀ n, (P2037181875177780453.a n : ℤ) = A220436 n

end A220436

/-! ## A220436.P3709269789732397576

`(2*A293411(2*n))²`
-/

namespace A220436.P3709269789732397576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A293411 (2 * n)) ^ 2

end

end A220436.P3709269789732397576

namespace A220436

/-- `(2*A293411(2*n))²` -/
def P3709269789732397576.Spec : Prop :=
  ∀ n, P3709269789732397576.a n = A220436 n

end A220436

/-! ## A220436.P12771264317606611702

`Δ[2*A110034(n+1)]²`
-/

namespace A220436.P12771264317606611702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A220436.P12771264317606611702

namespace A220436

/-- `Δ[2*A110034(n+1)]²` -/
def P12771264317606611702.Spec : Prop :=
  ∀ n, P12771264317606611702.a n = A220436 n

end A220436

/-! ## A220436.P17493104975982874000

`(∑[∑[(2*A000045(n))²]]+2)²`
-/

namespace A220436.P17493104975982874000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000045 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A220436.P17493104975982874000

namespace A220436

/-- `(∑[∑[(2*A000045(n))²]]+2)²` -/
def P17493104975982874000.Spec : Prop :=
  ∀ n, P17493104975982874000.a n = A220436 n

end A220436

/-! ## A220436.P1402012606437327393

`round((2/ϕ*A000045(n+2))²)²`
-/

namespace A220436.P1402012606437327393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 / Real.goldenRatio * (A000045 (n + 2) : ℝ)) ^ 2) ^ 2

end

end A220436.P1402012606437327393

namespace A220436

/-- `round((2/ϕ*A000045(n+2))²)²` -/
def P1402012606437327393.Spec : Prop :=
  ∀ n, P1402012606437327393.a n = A220436 n

end A220436

/-! ## A220436.P2814892922428075225

`(A048575(n)+A007598(n))²`
-/

namespace A220436.P2814892922428075225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048575 n + A007598 n) ^ 2

end

end A220436.P2814892922428075225

namespace A220436

/-- `(A048575(n)+A007598(n))²` -/
def P2814892922428075225.Spec : Prop :=
  ∀ n, P2814892922428075225.a n = A220436 n

end A220436

/-! ## A220436.P131934625100091683

`(A246640(n)+A080097(n))²`
-/

namespace A220436.P131934625100091683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246640 n + A080097 n) ^ 2

end

end A220436.P131934625100091683

namespace A220436

/-- `(A246640(n)+A080097(n))²` -/
def P131934625100091683.Spec : Prop :=
  ∀ n, P131934625100091683.a n = A220436 n

end A220436

/-! ## A220436.P10816246065954007327

`(A048575(n)+A000045(n)²)²`
-/

namespace A220436.P10816246065954007327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048575 n + A000045 n ^ 2) ^ 2

end

end A220436.P10816246065954007327

namespace A220436

/-- `(A048575(n)+A000045(n)²)²` -/
def P10816246065954007327.Spec : Prop :=
  ∀ n, P10816246065954007327.a n = A220436 n

end A220436

/-! ## A220436.P7644447441130111928

`(A007598(n)+A001519(n+2))²`
-/

namespace A220436.P7644447441130111928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007598 n + A001519 (n + 2)) ^ 2

end

end A220436.P7644447441130111928

namespace A220436

/-- `(A007598(n)+A001519(n+2))²` -/
def P7644447441130111928.Spec : Prop :=
  ∀ n, P7644447441130111928.a n = A220436 n

end A220436

/-! ## A220436.P16986162251182210094

`(A005248(n+1)-A007598(n+1))²`
-/

namespace A220436.P16986162251182210094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005248 (n + 1) - A007598 (n + 1)) ^ 2

end

end A220436.P16986162251182210094

namespace A220436

/-- `(A005248(n+1)-A007598(n+1))²` -/
def P16986162251182210094.Spec : Prop :=
  ∀ n, P16986162251182210094.a n = A220436 n

end A220436

/-! ## A220436.P8031514493710177502

`(A061647(n+1)-A061647(n+2))²`
-/

namespace A220436.P8031514493710177502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061647 (n + 1) - A061647 (n + 2)) ^ 2

end

end A220436.P8031514493710177502

namespace A220436

/-- `(A061647(n+1)-A061647(n+2))²` -/
def P8031514493710177502.Spec : Prop :=
  ∀ n, P8031514493710177502.a n = A220436 n

end A220436

/-! ## A220436.P767858598543481634

`(A000045(2*n)-A014742(n+1))²`
-/

namespace A220436.P767858598543481634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n) - A014742 (n + 1)) ^ 2

end

end A220436.P767858598543481634

namespace A220436

/-- `(A000045(2*n)-A014742(n+1))²` -/
def P767858598543481634.Spec : Prop :=
  ∀ n, P767858598543481634.a n = A220436 n

end A220436

/-! ## A220436.P9044332146888833507

`(A000045(n+1)²-A005248(n+1))²`
-/

namespace A220436.P9044332146888833507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) ^ 2 - A005248 (n + 1)) ^ 2

end

end A220436.P9044332146888833507

namespace A220436

/-- `(A000045(n+1)²-A005248(n+1))²` -/
def P9044332146888833507.Spec : Prop :=
  ∀ n, P9044332146888833507.a n = A220436 n

end A220436

/-! ## A220436.P11841464544698633762

`(A000045(2*n+3)+A000045(n)²)²`
-/

namespace A220436.P11841464544698633762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n + 3) + A000045 n ^ 2) ^ 2

end

end A220436.P11841464544698633762

namespace A220436

/-- `(A000045(2*n+3)+A000045(n)²)²` -/
def P11841464544698633762.Spec : Prop :=
  ∀ n, P11841464544698633762.a n = A220436 n

end A220436

/-!
# A220437: Number of domino tilings of a cross whose center is a 4 X 4 square and in which each of the four arms has length n.

The programs for A220437, there is no canonical definition to state claims against.
-/

/-! ## A220437.P4014791815293042988

`2*A220438(n)`
-/

namespace A220437.P4014791815293042988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A220438 n

end

end A220437.P4014791815293042988

/-! ## A220437.P2707469608510674350

`A220438(n)+record[A220438(A002262(n))]`
-/

namespace A220437.P2707469608510674350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220438 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220438 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220437.P2707469608510674350

/-! ## A220437.P9580122294583362833

`A220438(n)+A220438(n)^A000041(C(2, n+2))`
-/

namespace A220437.P9580122294583362833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220438 n : ℚ) + (A220438 n : ℚ) ^ (A000041 (Nat.choose 2 (n + 2)) : ℤ)

end

end A220437.P9580122294583362833

/-! ## A220437.P11445901996275105584

`A220438(n)+A220438(n)%A220442(n)`
-/

namespace A220437.P11445901996275105584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220438 n + Int.tmod (A220438 n) (A220442 n)

end

end A220437.P11445901996275105584

/-! ## A220437.P8522016848632034254

`A220438(n)+A220438(n)+A010052(A067062(n+1))`
-/

namespace A220437.P8522016848632034254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220438 n + (A220438 n + A010052 (A067062 (n + 1)).toNat)

end

end A220437.P8522016848632034254

/-!
# A220438: a(n) = A220437(n)/2.

The programs for A220438, there is no canonical definition to state claims against.
-/

/-! ## A220438.P6360179959433173805

`A220437(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220438.P6360179959433173805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220437 n : ℚ) / 2

end

end A220438.P6360179959433173805

/-! ## A220438.P1694479717377937751

`2^A008683(∏{p}[A000040(n+1), #])*A220437(n)`
-/

namespace A220438.P1694479717377937751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) : ℤ) * (A220437 n : ℚ)

end

end A220438.P1694479717377937751

/-! ## A220438.P11375743157591618641

`2^A008683(A002148(n))*A220437(n)`
-/

namespace A220438.P11375743157591618641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ) * (A220437 n : ℚ)

end

end A220438.P11375743157591618641

/-! ## A220438.P6720408622834712748

`2^A008683(∏{p}[2*a(n-2), #])*A220437(n)` with `a(0)=2, a(1)=2`
-/

namespace A220438.P6720408622834712748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) * (A220437 n : ℚ)

end

end A220438.P6720408622834712748

/-! ## A220438.P10552013166964214304

`2^A008683(A317250(n+1))*A220437(n)`
-/

namespace A220438.P10552013166964214304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A317250 (n + 1)).toNat : ℤ) * (A220437 n : ℚ)

end

end A220438.P10552013166964214304

/-!
# A220440: The Deléglise-Nicolas function h_3(n).

The programs for A220440, there is no canonical definition to state claims against.
-/

/-! ## A220440.P1647485109410032691

`A159685(n+1)%A097723(A335514(n))`
-/

namespace A220440.P1647485109410032691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159685 (n + 1)) (A097723 (A335514 n).toNat)

end

end A220440.P1647485109410032691

/-! ## A220440.P9029064611352034089

`A173068(A056630(n+1))`
-/

namespace A220440.P9029064611352034089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (A056630 (n + 1)).toNat

end

end A220440.P9029064611352034089

/-! ## A220440.P3490498757637974919

`A112435(A146367(n+2))`
-/

namespace A220440.P3490498757637974919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112435 (A146367 (n + 2)).toNat

end

end A220440.P3490498757637974919

/-! ## A220440.P4154946424761015259

`A173068(A326523(n)+8)`
-/

namespace A220440.P4154946424761015259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (A326523 n + 8).toNat

end

end A220440.P4154946424761015259

/-! ## A220440.P13559700004557818003

`A173068(∑[A066438(n+1)])`
-/

namespace A220440.P13559700004557818003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220440.P13559700004557818003

/-!
# A220442: a(n) = 3^n + 6^n + 9^n + 12^n.

The programs for A220442, the canonical program `A220442.P9979062060286451147` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220442 has offset 0).

The definition of A220442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+6^n+9^n+12^n` (program `A220442.P9979062060286451147`, by `A220442.P9979062060286451147.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220442.P9979062060286451147

`3^n+6^n+9^n+12^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220442

/-- `3^n+6^n+9^n+12^n` -/
def P9979062060286451147.Spec : Prop :=
  ∀ n, (P9979062060286451147.a n : ℤ) = A220442 n

theorem P9979062060286451147.correct : P9979062060286451147.Spec := by
  intro n
  simp only [A220442]

end A220442

/-! ## A220442.P18215636479166679490

`3^n*A001551(n)`
-/

namespace A220442.P18215636479166679490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A001551 n

end

end A220442.P18215636479166679490

namespace A220442

/-- `3^n*A001551(n)` -/
def P18215636479166679490.Spec : Prop :=
  ∀ n, P18215636479166679490.a n = A220442 n

end A220442

/-! ## A220442.P5505561327020922039

`A008776(n)*A196836(n)`
-/

namespace A220442.P5505561327020922039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n * A196836 n

end

end A220442.P5505561327020922039

namespace A220442

/-- `A008776(n)*A196836(n)` -/
def P5505561327020922039.Spec : Prop :=
  ∀ n, P5505561327020922039.a n = A220442 n

end A220442

/-! ## A220442.P13913839469372285244

`(A001576(n)+A000244(n))*A000244(n)`
-/

namespace A220442.P13913839469372285244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001576 n + A000244 n) * A000244 n

end

end A220442.P13913839469372285244

namespace A220442

/-- `(A001576(n)+A000244(n))*A000244(n)` -/
def P13913839469372285244.Spec : Prop :=
  ∀ n, P13913839469372285244.a n = A220442 n

end A220442

/-! ## A220442.P7495636880304248537

`(A001047(n)+A000051(n)²)*A000244(n)`
-/

namespace A220442.P7495636880304248537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001047 n + A000051 n ^ 2) * A000244 n

end

end A220442.P7495636880304248537

namespace A220442

/-- `(A001047(n)+A000051(n)²)*A000244(n)` -/
def P7495636880304248537.Spec : Prop :=
  ∀ n, P7495636880304248537.a n = A220442 n

end A220442

/-! ## A220442.P13992367421489039788

`(A001550(n)+A000079(n)²)*A000244(n)`
-/

namespace A220442.P13992367421489039788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001550 n + A000079 n ^ 2) * A000244 n

end

end A220442.P13992367421489039788

namespace A220442

/-- `(A001550(n)+A000079(n)²)*A000244(n)` -/
def P13992367421489039788.Spec : Prop :=
  ∀ n, P13992367421489039788.a n = A220442 n

end A220442

/-!
# A220443: a(n) = Sum_{i=1..n} (3*i)^2.

The programs for A220443, the canonical program `A220443.P13166015038943470805` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220443 has offset 0).

The definition of A220443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220443.P1397619777607158048

`3*n*(1+3*n+2*n²)/2`
-/

namespace A220443.P1397619777607158048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n * (1 + 3 * n + 2 * n ^ 2) : ℚ) / 2

end

end A220443.P1397619777607158048

namespace A220443

/-- `3*n*(1+3*n+2*n²)/2` -/
def P1397619777607158048.Spec : Prop :=
  ∀ n, P1397619777607158048.a n = (A220443 n : ℚ)

theorem P1397619777607158048.correct : P1397619777607158048.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A220443, Nat.add_sub_cancel, A220443.P1397619777607158048.a, A220443.P13166015038943470805.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A220443, Nat.add_sub_cancel, A220443.P1397619777607158048.a, A220443.P13166015038943470805.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A220443

/-! ## A220443.P13166015038943470805

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=9, a(2)=45, a(3)=126`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220443

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13166015038943470805.Spec : Prop :=
  ∀ n, P13166015038943470805.a n = A220443 n

theorem P13166015038943470805.correct : P13166015038943470805.Spec := by
  intro n
  simp only [A220443]

end A220443

/-! ## A220443.P3525510880121883523

`3*A059270(n)`
-/

namespace A220443.P3525510880121883523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059270 n

end

end A220443.P3525510880121883523

namespace A220443

/-- `3*A059270(n)` -/
def P3525510880121883523.Spec : Prop :=
  ∀ n, P3525510880121883523.a n = A220443 n

end A220443

/-! ## A220443.P16156098016577746094

`A045943(n)*A005408(n)`
-/

namespace A220443.P16156098016577746094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n * A005408 n

end

end A220443.P16156098016577746094

namespace A220443

/-- `A045943(n)*A005408(n)` -/
def P16156098016577746094.Spec : Prop :=
  ∀ n, P16156098016577746094.a n = A220443 n

end A220443

/-! ## A220443.P15337062526337072576

`lcm(3, ∑[(3*n)²])`
-/

namespace A220443.P15337062526337072576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220443.P15337062526337072576

namespace A220443

/-- `lcm(3, ∑[(3*n)²])` -/
def P15337062526337072576.Spec : Prop :=
  ∀ n, (P15337062526337072576.a n : ℤ) = A220443 n

end A220443

/-! ## A220443.P8440757976085915317

`a(n-1)+(3*n)²` with `a(0)=0`
-/

namespace A220443.P8440757976085915317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (3 * n) ^ 2

end

end A220443.P8440757976085915317

namespace A220443

/-- `a(n-1)+(3*n)²` -/
def P8440757976085915317.Spec : Prop :=
  ∀ n, (P8440757976085915317.a n : ℤ) = A220443 n

end A220443

/-! ## A220443.P18313022730614556684

`3*lcm(2*n+1, ∑[n])`
-/

namespace A220443.P18313022730614556684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220443.P18313022730614556684

namespace A220443

/-- `3*lcm(2*n+1, ∑[n])` -/
def P18313022730614556684.Spec : Prop :=
  ∀ n, (P18313022730614556684.a n : ℤ) = A220443 n

end A220443

/-! ## A220443.P6552515697314580774

`or(1, 2*n)*∑[3*n]`
-/

namespace A220443.P6552515697314580774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220443.P6552515697314580774

namespace A220443

/-- `or(1, 2*n)*∑[3*n]` -/
def P6552515697314580774.Spec : Prop :=
  ∀ n, (P6552515697314580774.a n : ℤ) = A220443 n

end A220443

/-! ## A220443.P6745933885638482496

`xor(1, 2*n)*∑[3*n]`
-/

namespace A220443.P6745933885638482496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220443.P6745933885638482496

namespace A220443

/-- `xor(1, 2*n)*∑[3*n]` -/
def P6745933885638482496.Spec : Prop :=
  ∀ n, (P6745933885638482496.a n : ℤ) = A220443 n

end A220443

/-! ## A220443.P18341948213361874074

`3*∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=3`
-/

namespace A220443.P18341948213361874074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220443.P18341948213361874074

namespace A220443

/-- `3*∑[∑[a(n-1)+6]]` -/
def P18341948213361874074.Spec : Prop :=
  ∀ n, (P18341948213361874074.a n : ℤ) = A220443 n

end A220443

/-! ## A220443.P11564635403719316493

`∑[n]*∩[2*n+1, 3*n]`
-/

namespace A220443.P11564635403719316493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = x) n

end

end A220443.P11564635403719316493

namespace A220443

/-- `∑[n]*∩[2*n+1, 3*n]` -/
def P11564635403719316493.Spec : Prop :=
  ∀ n, (P11564635403719316493.a n : ℤ) = A220443 n

end A220443

/-! ## A220443.P14367858432687612848

`(2*n+1)*3*C(n+1, 2)`
-/

namespace A220443.P14367858432687612848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (3 * Nat.choose (n + 1) 2)

end

end A220443.P14367858432687612848

namespace A220443

/-- `(2*n+1)*3*C(n+1, 2)` -/
def P14367858432687612848.Spec : Prop :=
  ∀ n, (P14367858432687612848.a n : ℤ) = A220443 n

end A220443

/-! ## A220443.P11782957680092150180

`floor(a(n-1)+(3/n^(-1))²)` with `a(0)=0`
-/

namespace A220443.P11782957680092150180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (3 / (n : ℚ) ^ (-1 : ℤ)) ^ 2⌋

end

end A220443.P11782957680092150180

namespace A220443

/-- `floor(a(n-1)+(3/n^(-1))²)` -/
def P11782957680092150180.Spec : Prop :=
  ∀ n, P11782957680092150180.a n = A220443 n

end A220443

/-! ## A220443.P5631635482482220270

`(2*n+1)*∑[3*n%(n+1)]`
-/

namespace A220443.P5631635482482220270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220443.P5631635482482220270

namespace A220443

/-- `(2*n+1)*∑[3*n%(n+1)]` -/
def P5631635482482220270.Spec : Prop :=
  ∀ n, (P5631635482482220270.a n : ℤ) = A220443 n

end A220443

/-! ## A220443.P15624437634837307237

`(2*n+1)*∑[3*gcd(n, 2*n)]`
-/

namespace A220443.P15624437634837307237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220443.P15624437634837307237

namespace A220443

/-- `(2*n+1)*∑[3*gcd(n, 2*n)]` -/
def P15624437634837307237.Spec : Prop :=
  ∀ n, (P15624437634837307237.a n : ℤ) = A220443 n

end A220443

/-! ## A220443.P12701141387786995535

`(2*n+1)*∑[and(2*n+1, 2*n)+n]`
-/

namespace A220443.P12701141387786995535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220443.P12701141387786995535

namespace A220443

/-- `(2*n+1)*∑[and(2*n+1, 2*n)+n]` -/
def P12701141387786995535.Spec : Prop :=
  ∀ n, (P12701141387786995535.a n : ℤ) = A220443 n

end A220443

/-! ## A220443.P15046713845849278795

`∑[A016766(n)]`
-/

namespace A220443.P15046713845849278795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220443.P15046713845849278795

namespace A220443

/-- `∑[A016766(n)]` -/
def P15046713845849278795.Spec : Prop :=
  ∀ n, P15046713845849278795.a n = A220443 n

end A220443

/-! ## A220443.P10622761922945416629

`9*A000330(n)`
-/

namespace A220443.P10622761922945416629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000330 n

end

end A220443.P10622761922945416629

namespace A220443

/-- `9*A000330(n)` -/
def P10622761922945416629.Spec : Prop :=
  ∀ n, P10622761922945416629.a n = A220443 n

end A220443

/-! ## A220443.P12078791564348732918

`∑[A008585(n)²]`
-/

namespace A220443.P12078791564348732918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220443.P12078791564348732918

namespace A220443

/-- `∑[A008585(n)²]` -/
def P12078791564348732918.Spec : Prop :=
  ∀ n, P12078791564348732918.a n = A220443 n

end A220443

/-! ## A220443.P3351546905111966819

`∑[sqrt(A016768(n))]`
-/

namespace A220443.P3351546905111966819
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016768 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220443.P3351546905111966819

namespace A220443

/-- `∑[sqrt(A016768(n))]` -/
def P3351546905111966819.Spec : Prop :=
  ∀ n, P3351546905111966819.a n = (A220443 n : ℝ)

end A220443

/-!
# A220445: Total number of cells in the stacky fan A_n^tr.

The programs for A220445, there is no canonical definition to state claims against.
-/

/-! ## A220445.P9726304563937009571

`∑[A240578(n)+A071882(n+1)]`
-/

namespace A220445.P9726304563937009571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240578 n + A071882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220445.P9726304563937009571

/-!
# A220447: Define sequence x(n) by x(1)=1, thereafter x(n) = (x(n-1)+n)/(1-n*x(n-1)); sequence gives denominator(x(n)).

The programs for A220447, there is no canonical definition to state claims against.
-/

/-! ## A220447.P1383526366913078254

`A215803(A000288(n))`
-/

namespace A220447.P1383526366913078254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215803 (A000288 n).toNat

end

end A220447.P1383526366913078254

/-! ## A220447.P916079771924962037

`A319627(∑[A294469(n)])`
-/

namespace A220447.P916079771924962037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220447.P916079771924962037

/-! ## A220447.P5986320501240859559

`A106621(abs(A105750(n+1)))`
-/

namespace A220447.P5986320501240859559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 |A105750 (n + 1)|.toNat

end

end A220447.P5986320501240859559

/-!
# A220449: Define u(n) as in A220448; then a(1)=1, thereafter a(n) = u(n)*a(n-1).

The programs for A220449, there is no canonical definition to state claims against.
-/

/-! ## A220449.P17946672891473846233

`(-1)^(n+2)*A105750(n+1)`
-/

namespace A220449.P17946672891473846233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * A105750 (n + 1)

end

end A220449.P17946672891473846233

/-! ## A220449.P7811989004547161627

`A105750(A000027(n+1))/A033999(n)`
-/

namespace A220449.P7811989004547161627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105750 (A000027 (n + 1)).toNat : ℚ) / (A033999 n : ℚ)

end

end A220449.P7811989004547161627

/-! ## A220449.P7635275021015582237

`A105750(A023443(n+2))/A033999(n)`
-/

namespace A220449.P7635275021015582237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105750 (A023443 (n + 2)).toNat : ℚ) / (A033999 n : ℚ)

end

end A220449.P7635275021015582237

/-!
# A220452: Number of unordered full binary trees with labels from a set of n labels.

The programs for A220452, there is no canonical definition to state claims against.
-/

/-! ## A220452.P8068507912214566431

`2*n*(a(n-1)-a(n-2))+1` with `a(0)=1, a(1)=3`
-/

namespace A220452.P8068507912214566431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * ((n : ℤ) * (a (n - 1) - a (n - 2))) + 1

end

end A220452.P8068507912214566431

/-! ## A220452.P2358575461156993437

`1-2*n*(a(n-2)-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A220452.P2358575461156993437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 - 2 * ((n : ℤ) * (a (n - 2) - a (n - 1)))

end

end A220452.P2358575461156993437

/-! ## A220452.P948234710334745365

`∑[A084262(n)]`
-/

namespace A220452.P948234710334745365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220452.P948234710334745365

/-! ## A220452.P10073558514701549315

`∑[abs(Δ[A055142(n)])]`
-/

namespace A220452.P10073558514701549315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220452.P10073558514701549315

/-! ## A220452.P7525438759057227571

`record[abs(Δ[A055141(n)])]`
-/

namespace A220452.P7525438759057227571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055141 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220452.P7525438759057227571

/-! ## A220452.P371580555973202827

`1-A055142(n+1)`
-/

namespace A220452.P371580555973202827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055142 (n + 1)

end

end A220452.P371580555973202827

/-! ## A220452.P8539395095744704466

`1-A055141(∑[n+1])`
-/

namespace A220452.P8539395095744704466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055141 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220452.P8539395095744704466

/-! ## A220452.P18372086385295595720

`record[1-A055141(n+1)]`
-/

namespace A220452.P18372086385295595720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220452.P18372086385295595720

/-! ## A220452.P5024249626196265905

`or(abs(A055142(n+1)), A033999(2*n))`
-/

namespace A220452.P5024249626196265905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |A055142 (n + 1)| (A033999 (2 * n))

end

end A220452.P5024249626196265905

/-! ## A220452.P9194032269576297542

`lcm(A033999(n+1), A055142(n+1))+1`
-/

namespace A220452.P9194032269576297542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (n + 1)) (A055142 (n + 1)) + 1

end

end A220452.P9194032269576297542

/-!
# A220455: Number of ways to write n=x+y (x>0, y>0) with 3x-2, 3x+2 and 2xy+1 all prime.

The programs for A220455, there is no canonical definition to state claims against.
-/

/-! ## A220455.P11185432548280169299

`A324904(A325008(n+1)*A325107(n))`
-/

namespace A220455.P11185432548280169299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (A325008 (n + 1) * A325107 n).toNat

end

end A220455.P11185432548280169299

/-! ## A220455.P1129987813672941552

`A319995(A136396(n)+A033484(n))`
-/

namespace A220455.P1129987813672941552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (A136396 n + A033484 n).toNat

end

end A220455.P1129987813672941552

/-! ## A220455.P6184758366613256306

`A083894(A332844(Δ[A192707(n+1)]))`
-/

namespace A220455.P6184758366613256306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083894 (A332844 (f1 (n + 1) - f1 n).toNat).toNat

end

end A220455.P6184758366613256306

/-! ## A220455.P15972608063712662357

`A194591(A247661(n)+A247633(n+1))`
-/

namespace A220455.P15972608063712662357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (A247661 n + A247633 (n + 1)).toNat

end

end A220455.P15972608063712662357

/-! ## A220455.P4051596348000605053

`A003373(A333647(n))%A003990(n+1)`
-/

namespace A220455.P4051596348000605053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003373 (A333647 n).toNat) (A003990 (n + 1))

end

end A220455.P4051596348000605053

/-!
# A220456: Equals one maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..1 nX2 array.

The programs for A220456, there is no canonical definition to state claims against.
-/

/-! ## A220456.P15636093552172038342

`A220461(∑[n+1]+2)`
-/

namespace A220456.P15636093552172038342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220456.P15636093552172038342

/-! ## A220456.P4300860859221836061

`record[A010054(n)*A220461(n+2)]`
-/

namespace A220456.P4300860859221836061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A220461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220456.P4300860859221836061

/-! ## A220456.P7722646041832009724

`A000027(A220461(∑[n+2]))`
-/

namespace A220456.P7722646041832009724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A220461 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A220456.P7722646041832009724

/-! ## A220456.P9880230029648634400

`record[A220461(Δ[A003453(n+5)])]`
-/

namespace A220456.P9880230029648634400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220456.P9880230029648634400

/-! ## A220456.P9974196469923518555

`record[A220461(record[A338434(3*n+5)])]`
-/

namespace A220456.P9974196469923518555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338434 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220456.P9974196469923518555

/-!
# A220457: Equals one maps: number of n X 3 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..1 n X 3 array.

The programs for A220457, there is no canonical definition to state claims against.
-/

/-! ## A220457.P10808503811458058114

`A220461(∑[n+2]+4)`
-/

namespace A220457.P10808503811458058114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220457.P10808503811458058114

/-! ## A220457.P13012977142799466612

`A220461(A167614(n+1))+A011738(n)`
-/

namespace A220457.P13012977142799466612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (A167614 (n + 1)).toNat + A011738 n

end

end A220457.P13012977142799466612

/-! ## A220457.P11916754529869106713

`A220461(A167614(n+1))+A025443(n)`
-/

namespace A220457.P11916754529869106713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (A167614 (n + 1)).toNat + A025443 n

end

end A220457.P11916754529869106713

/-! ## A220457.P8409474852344809252

`A220461(A167614(n+1))+A064458(n)`
-/

namespace A220457.P8409474852344809252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (A167614 (n + 1)).toNat + A064458 n

end

end A220457.P8409474852344809252

/-! ## A220457.P9702012452730635412

`A269445(n)+A220461(A167614(n+1))`
-/

namespace A220457.P9702012452730635412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269445 n + A220461 (A167614 (n + 1)).toNat

end

end A220457.P9702012452730635412

/-!
# A220458: Equals one maps: number of n X 4 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..1 n X 4 array.

The programs for A220458, there is no canonical definition to state claims against.
-/

/-! ## A220458.P3970946024146139312

`A220461(C(n+4, 2)+4)`
-/

namespace A220458.P3970946024146139312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (Nat.choose (n + 4) 2 + 4)

end

end A220458.P3970946024146139312

/-! ## A220458.P13814496240591630403

`A220461(A374004(n+1))`
-/

namespace A220458.P13814496240591630403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (A374004 (n + 1)).toNat

end

end A220458.P13814496240591630403

/-! ## A220458.P9862475671977403761

`A220461(A141214(n)+7)`
-/

namespace A220458.P9862475671977403761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (A141214 n + 7).toNat

end

end A220458.P9862475671977403761

/-! ## A220458.P8774351597726567437

`A220461(A052905(n)+9)`
-/

namespace A220458.P8774351597726567437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (A052905 n + 9).toNat

end

end A220458.P8774351597726567437

/-! ## A220458.P14164173404488102316

`A220461(A055999(n)+10)`
-/

namespace A220458.P14164173404488102316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (A055999 n + 10).toNat

end

end A220458.P14164173404488102316

/-!
# A220459: Equals one maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..1 nX5 array.

The programs for A220459, there is no canonical definition to state claims against.
-/

/-! ## A220459.P17683124747310512050

`A220461(∑[n+4]+11)`
-/

namespace A220459.P17683124747310512050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A220459.P17683124747310512050

/-!
# A220460: Equals one maps: number of nX6 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..1 nX6 array.

The programs for A220460, there is no canonical definition to state claims against.
-/

/-! ## A220460.P15884349608269990845

`A220461(A374007(n+1))`
-/

namespace A220460.P15884349608269990845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (A374007 (n + 1)).toNat

end

end A220460.P15884349608269990845

/-! ## A220460.P15831870415503457061

`A220461(A052905(n+3))`
-/

namespace A220460.P15831870415503457061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (A052905 (n + 3)).toNat

end

end A220460.P15831870415503457061

/-! ## A220460.P9779502387143227232

`A220461(A056119(n)+16)`
-/

namespace A220460.P9779502387143227232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220461 (A056119 n + 16).toNat

end

end A220460.P9779502387143227232

/-!
# A220462: Chebyshev numbers C_v(n) for v=3/2: a(n) is the smallest number such that if x>=a(n), then theta(x)-theta(2*x/3)>=n*log(x), where theta(x) = sum_{prime p<=x} log p.

The programs for A220462, there is no canonical definition to state claims against.
-/

/-! ## A220462.P12065099195343291646

`A106951(n+3)-A035215(A254030(n))`
-/

namespace A220462.P12065099195343291646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106951 (n + 3) - A035215 (A254030 n).toNat

end

end A220462.P12065099195343291646

/-!
# A220464: Reverse reluctant sequence of reluctant sequence A002260.

The programs for A220464, the canonical program `A220464.P617436510485413338` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220464 has offset 1).

The definition of A220464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220464.P617436510485413338

`A002260(A004736(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A220464

/-- `A002260(A004736(n+1))` -/
def P617436510485413338.Spec : Prop :=
  ∀ n, P617436510485413338.a n = A220464 (n + 1)

theorem P617436510485413338.correct : P617436510485413338.Spec := by
  intro n
  simp only [A220464, Nat.add_sub_cancel]

end A220464

/-! ## A220464.P18115106373576940818

`A002260(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A220464.P18115106373576940818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A220464.P18115106373576940818

namespace A220464

/-- `A002260(C(comp[∑[n]]-n, 2)-n)` -/
def P18115106373576940818.Spec : Prop :=
  ∀ n, P18115106373576940818.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P5721995100985388946

`A002262(C(comp[∑[n]]-n, 2)-(n+1))+1`
-/

namespace A220464.P5721995100985388946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + 1

end

end A220464.P5721995100985388946

namespace A220464

/-- `A002262(C(comp[∑[n]]-n, 2)-(n+1))+1` -/
def P5721995100985388946.Spec : Prop :=
  ∀ n, P5721995100985388946.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P10847432535760796563

`A057555(A099375(n))`
-/

namespace A220464.P10847432535760796563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A099375 n).toNat

end

end A220464.P10847432535760796563

namespace A220464

/-- `A057555(A099375(n))` -/
def P10847432535760796563.Spec : Prop :=
  ∀ n, P10847432535760796563.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P10303765730581788964

`A002260(A025581(n)+1)`
-/

namespace A220464.P10303765730581788964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A025581 n + 1).toNat

end

end A220464.P10303765730581788964

namespace A220464

/-- `A002260(A025581(n)+1)` -/
def P10303765730581788964.Spec : Prop :=
  ∀ n, P10303765730581788964.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P8744239637078656672

`A002260(sqrt(A055461(n+1)))`
-/

namespace A220464.P8744239637078656672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat

end

end A220464.P8744239637078656672

namespace A220464

/-- `A002260(sqrt(A055461(n+1)))` -/
def P8744239637078656672.Spec : Prop :=
  ∀ n, P8744239637078656672.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P6339288058472262165

`A002260(log2(A090988(n+1)))`
-/

namespace A220464.P6339288058472262165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ))).toNat

end

end A220464.P6339288058472262165

namespace A220464

/-- `A002260(log2(A090988(n+1)))` -/
def P6339288058472262165.Spec : Prop :=
  ∀ n, P6339288058472262165.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P10986730570942826656

`A002260(log2(A130321(n))+1)`
-/

namespace A220464.P10986730570942826656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ) + 1)).toNat

end

end A220464.P10986730570942826656

namespace A220464

/-- `A002260(log2(A130321(n))+1)` -/
def P10986730570942826656.Spec : Prop :=
  ∀ n, P10986730570942826656.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P7784191635362118970

`A002262(log2(A130321(n)))+1`
-/

namespace A220464.P7784191635362118970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat + 1

end

end A220464.P7784191635362118970

namespace A220464

/-- `A002262(log2(A130321(n)))+1` -/
def P7784191635362118970.Spec : Prop :=
  ∀ n, P7784191635362118970.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P10797951528389900550

`A002260(log2(A130330(n)+1))`
-/

namespace A220464.P10797951528389900550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway (Real.logb 2 (A130330 n + 1 : ℝ))).toNat

end

end A220464.P10797951528389900550

namespace A220464

/-- `A002260(log2(A130330(n)+1))` -/
def P10797951528389900550.Spec : Prop :=
  ∀ n, P10797951528389900550.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P15635199437113366948

`A002260(log2(2*A130321(n)))`
-/

namespace A220464.P15635199437113366948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A130321 n : ℝ))).toNat

end

end A220464.P15635199437113366948

namespace A220464

/-- `A002260(log2(2*A130321(n)))` -/
def P15635199437113366948.Spec : Prop :=
  ∀ n, P15635199437113366948.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P15578685554432519306

`A002260(ceil(A099375(n)/2))`
-/

namespace A220464.P15578685554432519306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ⌈(A099375 n : ℚ) / 2⌉.toNat

end

end A220464.P15578685554432519306

namespace A220464

/-- `A002260(ceil(A099375(n)/2))` -/
def P15578685554432519306.Spec : Prop :=
  ∀ n, P15578685554432519306.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P14195634830509918282

`A002260(1-∑[A167407(n)])`
-/

namespace A220464.P14195634830509918282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (1 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220464.P14195634830509918282

namespace A220464

/-- `A002260(1-∑[A167407(n)])` -/
def P14195634830509918282.Spec : Prop :=
  ∀ n, P14195634830509918282.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P15571235690210424180

`A057555(A212012(n+1)-1)`
-/

namespace A220464.P15571235690210424180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A212012 (n + 1) - 1).toNat

end

end A220464.P15571235690210424180

namespace A220464

/-- `A057555(A212012(n+1)-1)` -/
def P15571235690210424180.Spec : Prop :=
  ∀ n, P15571235690210424180.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P13918754652309426170

`A131818(A025581(n)+2)-1`
-/

namespace A220464.P13918754652309426170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A025581 n + 2).toNat - 1

end

end A220464.P13918754652309426170

namespace A220464

/-- `A131818(A025581(n)+2)-1` -/
def P13918754652309426170.Spec : Prop :=
  ∀ n, P13918754652309426170.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P17383416959129913294

`A057555(2*A025581(n)+1)`
-/

namespace A220464.P17383416959129913294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * A025581 n + 1).toNat

end

end A220464.P17383416959129913294

namespace A220464

/-- `A057555(2*A025581(n)+1)` -/
def P17383416959129913294.Spec : Prop :=
  ∀ n, P17383416959129913294.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P384812374172153359

`A002260(val(A043569(n+1), 2))`
-/

namespace A220464.P384812374172153359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2)

end

end A220464.P384812374172153359

namespace A220464

/-- `A002260(val(A043569(n+1), 2))` -/
def P384812374172153359.Spec : Prop :=
  ∀ n, P384812374172153359.a n = A220464 (n + 1)

end A220464

/-! ## A220464.P13937552569823832642

`A002260(A127739(n+1)-n)`
-/

namespace A220464.P13937552569823832642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A127739 (n + 1) - (n : ℤ)).toNat

end

end A220464.P13937552569823832642

namespace A220464

/-- `A002260(A127739(n+1)-n)` -/
def P13937552569823832642.Spec : Prop :=
  ∀ n, P13937552569823832642.a n = A220464 (n + 1)

end A220464

/-!
# A220465: Reverse reluctant sequence of reverse reluctant sequence A004736.

The programs for A220465, the canonical program `A220465.P11455344750540427665` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220465 has offset 1).

The definition of A220465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220465.P11455344750540427665

`A004736(A004736(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A220465

/-- `A004736(A004736(n+1))` -/
def P11455344750540427665.Spec : Prop :=
  ∀ n, P11455344750540427665.a n = A220465 (n + 1)

theorem P11455344750540427665.correct : P11455344750540427665.Spec := by
  intro n
  simp only [A220465, Nat.add_sub_cancel]

end A220465

/-! ## A220465.P7272126713645679999

`A004736(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A220465.P7272126713645679999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A220465.P7272126713645679999

namespace A220465

/-- `A004736(C(comp[∑[n]]-n, 2)-n)` -/
def P7272126713645679999.Spec : Prop :=
  ∀ n, P7272126713645679999.a n = A220465 (n + 1)

end A220465

/-! ## A220465.P3778130358457628389

`A025581(C(comp[∑[n]]-n, 2)-(n+1))+1`
-/

namespace A220465.P3778130358457628389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + 1

end

end A220465.P3778130358457628389

namespace A220465

/-- `A025581(C(comp[∑[n]]-n, 2)-(n+1))+1` -/
def P3778130358457628389.Spec : Prop :=
  ∀ n, P3778130358457628389.a n = A220465 (n + 1)

end A220465

/-! ## A220465.P11998602409014141067

`A025581(A025581(n))+1`
-/

namespace A220465.P11998602409014141067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A025581 n).toNat + 1

end

end A220465.P11998602409014141067

namespace A220465

/-- `A025581(A025581(n))+1` -/
def P11998602409014141067.Spec : Prop :=
  ∀ n, P11998602409014141067.a n = A220465 (n + 1)

end A220465

/-! ## A220465.P9910508639524904259

`A057555(A099375(n)+1)`
-/

namespace A220465.P9910508639524904259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A099375 n + 1).toNat

end

end A220465.P9910508639524904259

namespace A220465

/-- `A057555(A099375(n)+1)` -/
def P9910508639524904259.Spec : Prop :=
  ∀ n, P9910508639524904259.a n = A220465 (n + 1)

end A220465

/-! ## A220465.P13228438034518853738

`A057555(A212012(n+1))`
-/

namespace A220465.P13228438034518853738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A212012 (n + 1)).toNat

end

end A220465.P13228438034518853738

namespace A220465

/-- `A057555(A212012(n+1))` -/
def P13228438034518853738.Spec : Prop :=
  ∀ n, P13228438034518853738.a n = A220465 (n + 1)

end A220465

/-! ## A220465.P17359584499096136834

`sqrt(A055461(sqrt(A055461(n+1))))`
-/

namespace A220465.P17359584499096136834
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat : ℝ)

end

end A220465.P17359584499096136834

namespace A220465

/-- `sqrt(A055461(sqrt(A055461(n+1))))` -/
def P17359584499096136834.Spec : Prop :=
  ∀ n, P17359584499096136834.a n = (A220465 (n + 1) : ℝ)

end A220465

/-! ## A220465.P7105506629544261015

`A057555(log2(A130321(n)²)+2)`
-/

namespace A220465.P7105506629544261015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n ^ 2 : ℝ) + 2)).toNat

end

end A220465.P7105506629544261015

namespace A220465

/-- `A057555(log2(A130321(n)²)+2)` -/
def P7105506629544261015.Spec : Prop :=
  ∀ n, P7105506629544261015.a n = A220465 (n + 1)

end A220465

/-! ## A220465.P1128399150155801043

`A057555(log2((2*A130321(n))²))`
-/

namespace A220465.P1128399150155801043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (SequenceMachineLib.roundAway (Real.logb 2 ((2 * A130321 n) ^ 2 : ℝ))).toNat

end

end A220465.P1128399150155801043

namespace A220465

/-- `A057555(log2((2*A130321(n))²))` -/
def P1128399150155801043.Spec : Prop :=
  ∀ n, P1128399150155801043.a n = A220465 (n + 1)

end A220465

/-! ## A220465.P2268598955256450952

`log2(A090988(log2(A090988(n+1))))`
-/

namespace A220465.P2268598955256450952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ))).toNat : ℝ)

end

end A220465.P2268598955256450952

namespace A220465

/-- `log2(A090988(log2(A090988(n+1))))` -/
def P2268598955256450952.Spec : Prop :=
  ∀ n, P2268598955256450952.a n = (A220465 (n + 1) : ℝ)

end A220465

/-! ## A220465.P465896903404231936

`log2(A130321(log2(A130321(n))))+1`
-/

namespace A220465.P465896903404231936
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat : ℝ) + 1

end

end A220465.P465896903404231936

namespace A220465

/-- `log2(A130321(log2(A130321(n))))+1` -/
def P465896903404231936.Spec : Prop :=
  ∀ n, P465896903404231936.a n = (A220465 (n + 1) : ℝ)

end A220465

/-! ## A220465.P9224501978125344330

`val(A043569(val(A043569(n+1), 2)), 2)`
-/

namespace A220465.P9224501978125344330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043569 (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2)).toNat 2

end

end A220465.P9224501978125344330

namespace A220465

/-- `val(A043569(val(A043569(n+1), 2)), 2)` -/
def P9224501978125344330.Spec : Prop :=
  ∀ n, (P9224501978125344330.a n : ℤ) = A220465 (n + 1)

end A220465

/-! ## A220465.P10264154862853599774

`val(A118586(val(A118586(n+1), 2)), 2)`
-/

namespace A220465.P10264154862853599774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A118586 (SequenceMachineLib.valuation (A118586 (n + 1)).toNat 2)).toNat 2

end

end A220465.P10264154862853599774

namespace A220465

/-- `val(A118586(val(A118586(n+1), 2)), 2)` -/
def P10264154862853599774.Spec : Prop :=
  ∀ n, (P10264154862853599774.a n : ℤ) = A220465 (n + 1)

end A220465

/-! ## A220465.P370912435878664337

`A000005(A130321(A025581(n)))`
-/

namespace A220465.P370912435878664337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 (A025581 n).toNat).toNat

end

end A220465.P370912435878664337

namespace A220465

/-- `A000005(A130321(A025581(n)))` -/
def P370912435878664337.Spec : Prop :=
  ∀ n, P370912435878664337.a n = A220465 (n + 1)

end A220465

/-! ## A220465.P8353378397395855317

`A000005(A130321(val(A130321(n), 2)))`
-/

namespace A220465.P8353378397395855317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 (SequenceMachineLib.valuation (A130321 n).toNat 2)).toNat

end

end A220465.P8353378397395855317

namespace A220465

/-- `A000005(A130321(val(A130321(n), 2)))` -/
def P8353378397395855317.Spec : Prop :=
  ∀ n, P8353378397395855317.a n = A220465 (n + 1)

end A220465

/-! ## A220465.P1707105177174851360

`A057555(2*(A002024(n+1)-A002262(n)))`
-/

namespace A220465.P1707105177174851360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * (A002024 (n + 1) - A002262 n)).toNat

end

end A220465.P1707105177174851360

namespace A220465

/-- `A057555(2*(A002024(n+1)-A002262(n)))` -/
def P1707105177174851360.Spec : Prop :=
  ∀ n, P1707105177174851360.a n = A220465 (n + 1)

end A220465

/-! ## A220465.P17388923792908585258

`A002260(A038722(A002260(A038722(n+1))))`
-/

namespace A220465.P17388923792908585258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (A002260 (A038722 (n + 1)).toNat).toNat).toNat

end

end A220465.P17388923792908585258

namespace A220465

/-- `A002260(A038722(A002260(A038722(n+1))))` -/
def P17388923792908585258.Spec : Prop :=
  ∀ n, P17388923792908585258.a n = A220465 (n + 1)

end A220465

/-! ## A220465.P3857649420617617698

`A218828(A038722(n+1))`
-/

namespace A220465.P3857649420617617698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218828 (A038722 (n + 1)).toNat

end

end A220465.P3857649420617617698

namespace A220465

/-- `A218828(A038722(n+1))` -/
def P3857649420617617698.Spec : Prop :=
  ∀ n, P3857649420617617698.a n = A220465 (n + 1)

end A220465

/-! ## A220465.P5232924546340712670

`A218828(n+2-A127948(n))`
-/

namespace A220465.P5232924546340712670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218828 ((n + 2 : ℤ) - A127948 n).toNat

end

end A220465.P5232924546340712670

namespace A220465

/-- `A218828(n+2-A127948(n))` -/
def P5232924546340712670.Spec : Prop :=
  ∀ n, P5232924546340712670.a n = A220465 (n + 1)

end A220465

/-!
# A220466: a((2*n-1)*2^p) = 4^p*(n-1) + 2^(p-1)*(1+2^p), p >= 0 and n >= 1.

The programs for A220466, the canonical program `A220466.P5608170771874935148` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220466 has offset 1).

The definition of A220466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220466.P5608170771874935148

`(n+2)/2*A060818(n+1)/A060818(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A220466

/-- `(n+2)/2*A060818(n+1)/A060818(n)` -/
def P5608170771874935148.Spec : Prop :=
  ∀ n, P5608170771874935148.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P14286459103519689467

`(n+2)*(xor(n, n+1)+1)/4`
-/

namespace A220466.P14286459103519689467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (Nat.xor n (n + 1) + 1) : ℚ) / 4

end

end A220466.P14286459103519689467

namespace A220466

/-- `(n+2)*(xor(n, n+1)+1)/4` -/
def P14286459103519689467.Spec : Prop :=
  ∀ n, P14286459103519689467.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P10168962210876296706

`(n+2)/2*and(n+1, -(n+1))`
-/

namespace A220466.P10168962210876296706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

end

end A220466.P10168962210876296706

namespace A220466

/-- `(n+2)/2*and(n+1, -(n+1))` -/
def P10168962210876296706.Spec : Prop :=
  ∀ n, P10168962210876296706.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P12160070225332090509

`lcm(n+2, and(n+1, -(n+1)))/2`
-/

namespace A220466.P12160070225332090509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) : ℚ) / 2

end

end A220466.P12160070225332090509

namespace A220466

/-- `lcm(n+2, and(n+1, -(n+1)))/2` -/
def P12160070225332090509.Spec : Prop :=
  ∀ n, P12160070225332090509.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P7712696749602287850

`(n+1-and(n, n+1))*(n+2)/2`
-/

namespace A220466.P7712696749602287850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ) * ((n + 2 : ℚ) / 2)

end

end A220466.P7712696749602287850

namespace A220466

/-- `(n+1-and(n, n+1))*(n+2)/2` -/
def P7712696749602287850.Spec : Prop :=
  ∀ n, P7712696749602287850.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P14465798027670280990

`(n+2)/2*gcd(n+1, and(n, n+1))`
-/

namespace A220466.P14465798027670280990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (Nat.gcd (n + 1) (Nat.land n (n + 1)) : ℚ)

end

end A220466.P14465798027670280990

namespace A220466

/-- `(n+2)/2*gcd(n+1, and(n, n+1))` -/
def P14465798027670280990.Spec : Prop :=
  ∀ n, P14465798027670280990.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P3225743005429663959

`gcd(((n+2)*(3-n)²²)², ∑[n+1])`
-/

namespace A220466.P3225743005429663959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n + 2 : ℤ) * ((3 - (n : ℤ)) ^ 2) ^ 2) ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A220466.P3225743005429663959

namespace A220466

/-- `gcd(((n+2)*(3-n)²²)², ∑[n+1])` -/
def P3225743005429663959.Spec : Prop :=
  ∀ n, (P3225743005429663959.a n : ℤ) = A220466 (n + 1)

end A220466

/-! ## A220466.P12831576173375446202

`(n+2)/ratio[A001316(n)]`
-/

namespace A220466.P12831576173375446202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A220466.P12831576173375446202

namespace A220466

/-- `(n+2)/ratio[A001316(n)]` -/
def P12831576173375446202.Spec : Prop :=
  ∀ n, P12831576173375446202.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P10068345920709316118

`∑[n+1]/A000265(n+1)`
-/

namespace A220466.P10068345920709316118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A220466.P10068345920709316118

namespace A220466

/-- `∑[n+1]/A000265(n+1)` -/
def P10068345920709316118.Spec : Prop :=
  ∀ n, P10068345920709316118.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P12093723254055890269

`∑[n+1]/(A153733(n)+1)`
-/

namespace A220466.P12093723254055890269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A153733 n + 1 : ℚ)

end

end A220466.P12093723254055890269

namespace A220466

/-- `∑[n+1]/(A153733(n)+1)` -/
def P12093723254055890269.Spec : Prop :=
  ∀ n, P12093723254055890269.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P1541772918897738974

`(n+2)/2*A006519(n+1)`
-/

namespace A220466.P1541772918897738974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A006519 (n + 1) : ℚ)

end

end A220466.P1541772918897738974

namespace A220466

/-- `(n+2)/2*A006519(n+1)` -/
def P1541772918897738974.Spec : Prop :=
  ∀ n, P1541772918897738974.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P15596950178116361687

`(n+2)/2^A088705(n+1)`
-/

namespace A220466.P15596950178116361687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (2 : ℚ) ^ (A088705 (n + 1) : ℤ)

end

end A220466.P15596950178116361687

namespace A220466

/-- `(n+2)/2^A088705(n+1)` -/
def P15596950178116361687.Spec : Prop :=
  ∀ n, P15596950178116361687.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P11682162070836750969

`A045896(n)/A259445(n+1)`
-/

namespace A220466.P11682162070836750969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045896 n : ℚ) / (A259445 (n + 1) : ℚ)

end

end A220466.P11682162070836750969

namespace A220466

/-- `A045896(n)/A259445(n+1)` -/
def P11682162070836750969.Spec : Prop :=
  ∀ n, P11682162070836750969.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P2547808089189996725

`lcm(A160467(n+1), A176743(n))`
-/

namespace A220466.P2547808089189996725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A160467 (n + 1)) (A176743 n)

end

end A220466.P2547808089189996725

namespace A220466

/-- `lcm(A160467(n+1), A176743(n))` -/
def P2547808089189996725.Spec : Prop :=
  ∀ n, (P2547808089189996725.a n : ℤ) = A220466 (n + 1)

end A220466

/-! ## A220466.P9571335383631871031

`A145051(n+1)*A160467(n+1)`
-/

namespace A220466.P9571335383631871031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1) * A160467 (n + 1)

end

end A220466.P9571335383631871031

namespace A220466

/-- `A145051(n+1)*A160467(n+1)` -/
def P9571335383631871031.Spec : Prop :=
  ∀ n, P9571335383631871031.a n = A220466 (n + 1)

end A220466

/-! ## A220466.P3695067146479744772

`A000217(n+1)/A171435(2*(n+1))`
-/

namespace A220466.P3695067146479744772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A171435 (2 * (n + 1)) : ℚ)

end

end A220466.P3695067146479744772

namespace A220466

/-- `A000217(n+1)/A171435(2*(n+1))` -/
def P3695067146479744772.Spec : Prop :=
  ∀ n, P3695067146479744772.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P6630639953605552839

`(A335063(n)+A001316(n))/A048896(n)`
-/

namespace A220466.P6630639953605552839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335063 n + A001316 n : ℚ) / (A048896 n : ℚ)

end

end A220466.P6630639953605552839

namespace A220466

/-- `(A335063(n)+A001316(n))/A048896(n)` -/
def P6630639953605552839.Spec : Prop :=
  ∀ n, P6630639953605552839.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P17431383732984209119

`A000217(n+1)/A003961(A064989(n+1))`
-/

namespace A220466.P17431383732984209119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A003961 (A064989 (n + 1)).toNat : ℚ)

end

end A220466.P17431383732984209119

namespace A220466

/-- `A000217(n+1)/A003961(A064989(n+1))` -/
def P17431383732984209119.Spec : Prop :=
  ∀ n, P17431383732984209119.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P5316752055620648472

`A000217(n+1)/A026741(A065883(n+1))`
-/

namespace A220466.P5316752055620648472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A026741 (A065883 (n + 1)).toNat : ℚ)

end

end A220466.P5316752055620648472

namespace A220466

/-- `A000217(n+1)/A026741(A065883(n+1))` -/
def P5316752055620648472.Spec : Prop :=
  ∀ n, P5316752055620648472.a n = (A220466 (n + 1) : ℚ)

end A220466

/-! ## A220466.P4122558283266488341

`A214546(n)+A006519(n+1)*A140472(n)`
-/

namespace A220466.P4122558283266488341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 n + A006519 (n + 1) * A140472 n

end

end A220466.P4122558283266488341

namespace A220466

/-- `A214546(n)+A006519(n+1)*A140472(n)` -/
def P4122558283266488341.Spec : Prop :=
  ∀ n, P4122558283266488341.a n = A220466 (n + 1)

end A220466

/-!
# A220470: Smallest order of a group with an irreducible complex representation of dimension n.

The programs for A220470, there is no canonical definition to state claims against.
-/

/-! ## A220470.P8450232218724201568

`(n+1)*A329524(n+1)`
-/

namespace A220470.P8450232218724201568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A329524 (n + 1)

end

end A220470.P8450232218724201568

/-! ## A220470.P7833599265387403389

`A329524(n+1)*A387051(n)`
-/

namespace A220470.P7833599265387403389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329524 (n + 1) * A387051 n

end

end A220470.P7833599265387403389

/-! ## A220470.P16138360493228566522

`lcm(A029837(A171231(n)), A329524(n+1))`
-/

namespace A220470.P16138360493228566522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029837 (A171231 n).toNat) (A329524 (n + 1))

end

end A220470.P16138360493228566522

/-! ## A220470.P17205291702632554354

`(n+1)*(A319067(n+1)-A094518(A319079(n)))`
-/

namespace A220470.P17205291702632554354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A319067 (n + 1) - A094518 (A319079 n).toNat)

end

end A220470.P17205291702632554354

/-! ## A220470.P1138934312670356307

`lcm(n+1, A329524(A077741(n+1)))`
-/

namespace A220470.P1138934312670356307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A329524 (A077741 (n + 1)).toNat)

end

end A220470.P1138934312670356307

/-!
# A220471: Number of closed simply typable lambda-terms of size n with size 0 for the variables.

The programs for A220471, there is no canonical definition to state claims against.
-/

/-! ## A220471.P17410261901146816538

`A340698(∑[A327014(n)²])`
-/

namespace A220471.P17410261901146816538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327014 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340698 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220471.P17410261901146816538

/-!
# A220473: T(n,k)=Number of idempotent n X n -k..k matrices of rank n-2.

The programs for A220473, there is no canonical definition to state claims against.
-/

/-! ## A220473.P11009999678100234499

`or(A101031(n), A335794(A101031(n)))`
-/

namespace A220473.P11009999678100234499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101031 n) (A335794 (A101031 n).toNat)

end

end A220473.P11009999678100234499

/-!
# A220477: Total number of parts in all partitions of n with at least one distinct part.

The programs for A220477, there is no canonical definition to state claims against.
-/

/-! ## A220477.P12886516549978802589

`A006128(n+1)-A000203(n+1)`
-/

namespace A220477.P12886516549978802589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A000203 (n + 1)

end

end A220477.P12886516549978802589

/-! ## A220477.P16857048402526639044

`A225596(n+1)-(∑{d}[n+1, #]+1+n)`
-/

namespace A220477.P16857048402526639044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225596 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d + 1 + n : ℕ) : ℤ)

end

end A220477.P16857048402526639044

/-! ## A220477.P13904488563412274629

`A006128(n+1)-A245092(2*n+1)`
-/

namespace A220477.P13904488563412274629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A245092 (2 * n + 1)

end

end A220477.P13904488563412274629

/-! ## A220477.P13470381969186282095

`A066897(n+1)+A066898(n+1)-A000203(n+1)`
-/

namespace A220477.P13470381969186282095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066897 (n + 1) + (A066898 (n + 1) - A000203 (n + 1))

end

end A220477.P13470381969186282095

/-! ## A220477.P9177938618820451721

`A006128(n+1)-(A146076(n+1)+A000593(n+1))`
-/

namespace A220477.P9177938618820451721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A146076 (n + 1) + A000593 (n + 1))

end

end A220477.P9177938618820451721

/-! ## A220477.P5308294028019777861

`A006128(n+1)-A000593(n+1)*A038712(n+1)`
-/

namespace A220477.P5308294028019777861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A000593 (n + 1) * A038712 (n + 1)

end

end A220477.P5308294028019777861

/-! ## A220477.P3604776957803919448

`A162329(n+1)-A196087(n+1)`
-/

namespace A220477.P3604776957803919448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162329 (n + 1) - A196087 (n + 1)

end

end A220477.P3604776957803919448

/-! ## A220477.P15160099493708982042

`A182629(n+1)+A116686(n+1)`
-/

namespace A220477.P15160099493708982042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182629 (n + 1) + A116686 (n + 1)

end

end A220477.P15160099493708982042

/-! ## A220477.P16360662935168595112

`A006128(n+1)+A182629(n+1)-A046746(n+1)`
-/

namespace A220477.P16360662935168595112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) + (A182629 (n + 1) - A046746 (n + 1))

end

end A220477.P16360662935168595112

/-! ## A220477.P16301188482740668858

`A006128(n+1)-A146076(2*(n+1))/2`
-/

namespace A220477.P16301188482740668858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006128 (n + 1) : ℚ) - (A146076 (2 * (n + 1)) : ℚ) / 2

end

end A220477.P16301188482740668858

/-! ## A220477.P8395769512279685099

`A089251(n+1)+A209313(n+1)-A000203(n+1)`
-/

namespace A220477.P8395769512279685099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089251 (n + 1) + (A209313 (n + 1) - A000203 (n + 1))

end

end A220477.P8395769512279685099

/-! ## A220477.P15968708080379480483

`A182977(n+1)+A182978(n+1)-A000203(n+1)`
-/

namespace A220477.P15968708080379480483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182977 (n + 1) + (A182978 (n + 1) - A000203 (n + 1))

end

end A220477.P15968708080379480483

/-! ## A220477.P7745299237823533121

`A116686(n+1)+A182978(n+1)-A092269(n+1)`
-/

namespace A220477.P7745299237823533121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116686 (n + 1) + (A182978 (n + 1) - A092269 (n + 1))

end

end A220477.P7745299237823533121

/-! ## A220477.P14594277614914465048

`A182978(n+1)+A182984(n+1)-A046746(n+1)`
-/

namespace A220477.P14594277614914465048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182978 (n + 1) + (A182984 (n + 1) - A046746 (n + 1))

end

end A220477.P14594277614914465048

/-! ## A220477.P3333433568093986958

`A116686(n+1)+A182984(n+1)-A182977(n+1)`
-/

namespace A220477.P3333433568093986958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116686 (n + 1) + (A182984 (n + 1) - A182977 (n + 1))

end

end A220477.P3333433568093986958

/-! ## A220477.P16914675182017188457

`A236292(n+1)-A000005(n+1)`
-/

namespace A220477.P16914675182017188457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236292 (n + 1) - A000005 (n + 1)

end

end A220477.P16914675182017188457

/-!
# A220478: Equilateral triangle from the snowflake (or E-toothpick) structure of A161330 (see Comments lines for definition).

The programs for A220478, there is no canonical definition to state claims against.
-/

/-! ## A220478.P2628163751495343712

`2*A211964(n)`
-/

namespace A220478.P2628163751495343712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211964 n

end

end A220478.P2628163751495343712

/-! ## A220478.P2502875425864089173

`n+A161336(n)`
-/

namespace A220478.P2502875425864089173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A161336 n

end

end A220478.P2502875425864089173

/-! ## A220478.P5437666247710563861

`∑[A220498(n)]`
-/

namespace A220478.P5437666247710563861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220478.P5437666247710563861

/-! ## A220478.P16274477274447214707

`∑[A211974(n)]+n`
-/

namespace A220478.P16274477274447214707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A220478.P16274477274447214707

/-! ## A220478.P7857311617135753913

`A213360(n)/6+n`
-/

namespace A220478.P7857311617135753913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213360 n : ℚ) / 6 + (n : ℚ)

end

end A220478.P7857311617135753913

/-! ## A220478.P18194442131712013231

`floor(A161330(n+1)/6+n)`
-/

namespace A220478.P18194442131712013231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161330 (n + 1) : ℚ) / 6 + (n : ℚ)⌋

end

end A220478.P18194442131712013231

/-! ## A220478.P16987314927120515347

`floor(∑[A161332(n+1)]/3+n)`
-/

namespace A220478.P16987314927120515347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3 + (n : ℚ)⌋

end

end A220478.P16987314927120515347

/-! ## A220478.P3582247552043782852

`∑[floor(A161331(n+1)/6)]+n`
-/

namespace A220478.P3582247552043782852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161331 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A220478.P3582247552043782852

/-! ## A220478.P180003461602836430

`A005843(A211964(n))`
-/

namespace A220478.P180003461602836430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A211964 n).toNat

end

end A220478.P180003461602836430

/-! ## A220478.P16515665430594500176

`A008615(A213360(n))+n`
-/

namespace A220478.P16515665430594500176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A213360 n).toNat + (n : ℤ)

end

end A220478.P16515665430594500176

/-!
# A220479: Total number of smallest parts that are also emergent parts in all partitions of n.

The programs for A220479, there is no canonical definition to state claims against.
-/

/-! ## A220479.P8668643852010457817

`A195820(n+1)-A002865(n+1)`
-/

namespace A220479.P8668643852010457817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) - A002865 (n + 1)

end

end A220479.P8668643852010457817

/-! ## A220479.P9993059807933206488

`A092269(n+1)-A120452(n+2)`
-/

namespace A220479.P9993059807933206488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) - A120452 (n + 2)

end

end A220479.P9993059807933206488

/-! ## A220479.P2053058563378922951

`A092269(n+1)-A000070(n)-A002865(n+1)`
-/

namespace A220479.P2053058563378922951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) - A000070 n - A002865 (n + 1)

end

end A220479.P2053058563378922951

/-! ## A220479.P16482558530817545147

`A195820(n+1)-Δ[A000041(n)]`
-/

namespace A220479.P16482558530817545147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) - (f1 (n + 1) - f1 n)

end

end A220479.P16482558530817545147

/-! ## A220479.P1967536418407001098

`A220483(n+1)+A152770(n+1)`
-/

namespace A220479.P1967536418407001098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220483 (n + 1) + A152770 (n + 1)

end

end A220479.P1967536418407001098

/-! ## A220479.P2048719590238730853

`A182699(n+1)-A195821(n+1)`
-/

namespace A220479.P2048719590238730853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182699 (n + 1) - A195821 (n + 1)

end

end A220479.P2048719590238730853

/-! ## A220479.P8793364814903172088

`A195820(n+1)-Δ[A035363(2*n)]`
-/

namespace A220479.P8793364814903172088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) - (f1 (n + 1) - f1 n)

end

end A220479.P8793364814903172088

/-! ## A220479.P17724170169539523121

`A215513(n+1)+A000041(n)-A000070(n)`
-/

namespace A220479.P17724170169539523121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215513 (n + 1) + (A000041 n - A000070 n)

end

end A220479.P17724170169539523121

/-! ## A220479.P7091728297710444646

`A195820(n+1)-Δ[A047967(n)+A000009(n)]`
-/

namespace A220479.P7091728297710444646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) - (f1 (n + 1) - f1 n)

end

end A220479.P7091728297710444646

/-! ## A220479.P1617589460873344537

`A195820(n+1)-Δ[A295341(n)+A000726(n)]`
-/

namespace A220479.P1617589460873344537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) - (f1 (n + 1) - f1 n)

end

end A220479.P1617589460873344537

/-! ## A220479.P738217482837245451

`A195820(n+1)-Δ[A239263(n)+A239259(n)]`
-/

namespace A220479.P738217482837245451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239263 n + A239259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) - (f1 (n + 1) - f1 n)

end

end A220479.P738217482837245451

/-! ## A220479.P12676338175315072462

`A195820(n+1)-Δ[A332281(n)+A332280(n)]`
-/

namespace A220479.P12676338175315072462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + A332280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) - (f1 (n + 1) - f1 n)

end

end A220479.P12676338175315072462

/-! ## A220479.P7988833793145629583

`A195820(n+1)-Δ[A143229(n)/A000070(n)]`
-/

namespace A220479.P7988833793145629583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143229 n : ℚ) / (A000070 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195820 (n + 1) : ℚ) - (f1 (n + 1) - f1 n)

end

end A220479.P7988833793145629583

/-! ## A220479.P141343669029032058

`A092269(n+1)+A000041(n)-A000070(n+1)`
-/

namespace A220479.P141343669029032058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A000041 n - A000070 (n + 1))

end

end A220479.P141343669029032058

/-! ## A220479.P12401122865199170661

`A195820(n+1)+A000041(n)-A000041(n+1)`
-/

namespace A220479.P12401122865199170661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) + (A000041 n - A000041 (n + 1))

end

end A220479.P12401122865199170661

/-! ## A220479.P5258962834505809858

`A215513(n+1)+A002865(n)-A120452(n+1)`
-/

namespace A220479.P5258962834505809858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215513 (n + 1) + (A002865 n - A120452 (n + 1))

end

end A220479.P5258962834505809858

/-! ## A220479.P5709332660438885752

`A195820(n+1)+A000070(n)-A120452(n+2)`
-/

namespace A220479.P5709332660438885752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) + (A000070 n - A120452 (n + 2))

end

end A220479.P5709332660438885752

/-! ## A220479.P17865793277532633411

`A138137(n+1)-(A195821(n+1)+A000041(n+1))`
-/

namespace A220479.P17865793277532633411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - (A195821 (n + 1) + A000041 (n + 1))

end

end A220479.P17865793277532633411

/-! ## A220479.P1955720711618836469

`A138135(n+1)-(A195821(n+1)+A002865(n+1))`
-/

namespace A220479.P1955720711618836469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1) - (A195821 (n + 1) + A002865 (n + 1))

end

end A220479.P1955720711618836469

/-! ## A220479.P15831061394572921759

`A000041(n+1)+A215513(n+1)-A120452(n+2)`
-/

namespace A220479.P15831061394572921759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A215513 (n + 1) - A120452 (n + 2))

end

end A220479.P15831061394572921759

/-!
# A220481: a(n) = 12spt(n) + (24n - 1)p(n), with a(0) = -1.

The programs for A220481, there is no canonical definition to state claims against.
-/

/-! ## A220481.P4542711447552918486

`A211609(n)+A183011(n)`
-/

namespace A220481.P4542711447552918486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211609 n + A183011 n

end

end A220481.P4542711447552918486

/-! ## A220481.P2184788269854004724

`A211609(n)+(24*n-1)*A000041(n)`
-/

namespace A220481.P2184788269854004724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211609 n + ((24 * n : ℤ) - 1) * A000041 n

end

end A220481.P2184788269854004724

/-! ## A220481.P4516996756925888881

`A211609(n)+A000041(n)*A183010(n)`
-/

namespace A220481.P4516996756925888881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211609 n + A000041 n * A183010 n

end

end A220481.P4516996756925888881

/-! ## A220481.P1898131020461225203

`A211609(n)+∑[A002865(n)]*A183010(n)`
-/

namespace A220481.P1898131020461225203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211609 n + (∑ j ∈ Finset.range (n + 1), f1 j) * A183010 n

end

end A220481.P1898131020461225203

/-! ## A220481.P3131171758481379177

`A211609(n)+A035363(2*n)*A183010(n)`
-/

namespace A220481.P3131171758481379177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211609 n + A035363 (2 * n) * A183010 n

end

end A220481.P3131171758481379177

/-!
# A220482: Triangle read by rows: T(j,k) in which row j lists the parts in nondecreasing order of the j-th region of the set of partitions of n, with 1<=j<=A000041(n).

The programs for A220482, there is no canonical definition to state claims against.
-/

/-! ## A220482.P10821145481992044159

`filter[A186114(n+1), A145568(#)]`
-/

namespace A220482.P10821145481992044159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A220482.P10821145481992044159

/-! ## A220482.P12257574322617006351

`filter[A186114(n+1), A168046(#)]`
-/

namespace A220482.P12257574322617006351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A220482.P12257574322617006351

/-! ## A220482.P9033931367258727169

`filter[A186114(n+1), A168182(#)]`
-/

namespace A220482.P9033931367258727169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A220482.P9033931367258727169

/-! ## A220482.P6601528986346667823

`filter[A186114(n+1), A168184(#)]`
-/

namespace A220482.P6601528986346667823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A220482.P6601528986346667823

/-! ## A220482.P106289154914011823

`filter[A186114(n+1), A168185(#)]`
-/

namespace A220482.P106289154914011823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A220482.P106289154914011823

/-! ## A220482.P12085998007277274314

`filter[A186114(n+1), A188642(#)]`
-/

namespace A220482.P12085998007277274314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188642 (f1 j).toNat = 1) n)

end

end A220482.P12085998007277274314

/-! ## A220482.P8305600398195163290

`filter[A186114(n+1), A368905(#)]`
-/

namespace A220482.P8305600398195163290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368905 (f1 j).toNat = 1) n)

end

end A220482.P8305600398195163290

/-! ## A220482.P10095522327090203886

`A186114(record[n%(A186114(n+1)+n)]+1)`
-/

namespace A220482.P10095522327090203886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A186114 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A220482.P10095522327090203886

/-!
# A220483: Total number of smallest parts that are also emergent parts in all partitions of n with at least one distinct part: a(n) = n + d(n) + p(n-1) + spt(n) - A000070(n) - sigma(n) - 1.

The programs for A220483, there is no canonical definition to state claims against.
-/

/-! ## A220483.P12355010306451486308

`n+1+A000005(n+1)+A000041(n)+A092269(n+1)-A000070(n+1)-A000203(n+1)-1`
-/

namespace A220483.P12355010306451486308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000005 (n + 1) + A000041 n + A092269 (n + 1) - A000070 (n + 1) - A000203 (n + 1) - 1

end

end A220483.P12355010306451486308

/-! ## A220483.P9974156927229667184

`A092269(n+1)-A220489(n+1)`
-/

namespace A220483.P9974156927229667184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) - A220489 (n + 1)

end

end A220483.P9974156927229667184

/-! ## A220483.P12709766424363977367

`A066186(n+1)-A220907(n+1)-(A152770(n+1)+A120452(n+2))`
-/

namespace A220483.P12709766424363977367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A220907 (n + 1) - (A152770 (n + 1) + A120452 (n + 2))

end

end A220483.P12709766424363977367

/-! ## A220483.P15104676102154540428

`A268191(n+1)+A000203(n+1)-(A152770(n+1)+A120452(n+2))`
-/

namespace A220483.P15104676102154540428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268191 (n + 1) + A000203 (n + 1) - (A152770 (n + 1) + A120452 (n + 2))

end

end A220483.P15104676102154540428

/-! ## A220483.P7068386014274526652

`A220479(n+1)-A152770(n+1)`
-/

namespace A220483.P7068386014274526652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220479 (n + 1) - A152770 (n + 1)

end

end A220483.P7068386014274526652

/-! ## A220483.P17064116477749197742

`(A220479(n+1)+A120452(n+2))%(A152770(n+1)+A120452(n+2))`
-/

namespace A220483.P17064116477749197742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220479 (n + 1) + A120452 (n + 2)) (A152770 (n + 1) + A120452 (n + 2))

end

end A220483.P17064116477749197742

/-!
# A220484: Triangle read by rows: T(j,k) is the total number of appearances of the smallest parts in the j-th partition of n, with partitions as nonincreasing lists of parts in lexicographic order.

The programs for A220484, there is no canonical definition to state claims against.
-/

/-! ## A220484.P13870213467630538229

`A067029(A334437(n+1))`
-/

namespace A220484.P13870213467630538229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A334437 (n + 1)).toNat

end

end A220484.P13870213467630538229

/-! ## A220484.P7862302339763193546

`A138121(A194970(n+1)%A006203(n+1))`
-/

namespace A220484.P7862302339763193546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138121 (Int.tmod (A194970 (n + 1)) (A006203 (n + 1))).toNat

end

end A220484.P7862302339763193546

/-! ## A220484.P12242853955735220087

`gcd(A207378(A194970(n+1)), A319191(3*n+2))`
-/

namespace A220484.P12242853955735220087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A207378 (A194970 (n + 1)).toNat) (A319191 (3 * n + 2))

end

end A220484.P12242853955735220087

/-! ## A220484.P9787924881267478193

`A138121(A004709(n+1)%A179069(3*(n+1)))`
-/

namespace A220484.P9787924881267478193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138121 (Int.tmod (A004709 (n + 1)) (A179069 (3 * (n + 1)))).toNat

end

end A220484.P9787924881267478193

/-!
# A220485: spt(5n+4) where spt(n) = A092269(n).

The programs for A220485, there is no canonical definition to state claims against.
-/

/-! ## A220485.P8779159206802425761

`A092269(A016897(n))`
-/

namespace A220485.P8779159206802425761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (A016897 n).toNat

end

end A220485.P8779159206802425761

/-! ## A220485.P1266402893505619404

`5*A220505(n)`
-/

namespace A220485.P1266402893505619404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A220505 n

end

end A220485.P1266402893505619404

/-! ## A220485.P2169510452650178769

`A092269(5*n+4)`
-/

namespace A220485.P2169510452650178769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (5 * n + 4)

end

end A220485.P2169510452650178769

/-! ## A220485.P3149877519567772402

`A211982(5*n+4)/2`
-/

namespace A220485.P3149877519567772402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211982 (5 * n + 4) : ℚ) / 2

end

end A220485.P3149877519567772402

/-! ## A220485.P15910328459923053619

`record[A092269(Δ[A110349(n+1)])]`
-/

namespace A220485.P15910328459923053619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110349 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220485.P15910328459923053619

/-!
# A220486: a(n) = n(p(n)-d(n)): sum of all of parts of all partitions of n with at least one distinct part.

The programs for A220486, there is no canonical definition to state claims against.
-/

/-! ## A220486.P7203565012457427992

`(n+1)*A144300(n+1)`
-/

namespace A220486.P7203565012457427992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A144300 (n + 1)

end

end A220486.P7203565012457427992

/-! ## A220486.P9565015026413925033

`A066186(n+1)-A038040(n+1)`
-/

namespace A220486.P9565015026413925033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A038040 (n + 1)

end

end A220486.P9565015026413925033

/-! ## A220486.P16975227769869377099

`(n+1)*(A000041(n+1)-A000005(n+1))`
-/

namespace A220486.P16975227769869377099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000041 (n + 1) - A000005 (n + 1))

end

end A220486.P16975227769869377099

/-! ## A220486.P18350438764492074186

`(n+1)*(A167934(n+1)-1)`
-/

namespace A220486.P18350438764492074186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A167934 (n + 1) - 1)

end

end A220486.P18350438764492074186

/-! ## A220486.P5217908136021471367

`A162329(n+1)-A094471(n+1)`
-/

namespace A220486.P5217908136021471367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162329 (n + 1) - A094471 (n + 1)

end

end A220486.P5217908136021471367

/-! ## A220486.P10289793110998825418

`(n+1)*(Δ[A000070(n)]-A000005(n+1))`
-/

namespace A220486.P10289793110998825418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n - A000005 (n + 1))

end

end A220486.P10289793110998825418

/-! ## A220486.P7057972319937456112

`(n+1)*(record[A035363(n)]-A000005(n+1))`
-/

namespace A220486.P7057972319937456112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000005 (n + 1))

end

end A220486.P7057972319937456112

/-! ## A220486.P17244715407816410377

`(A053529(n+1)-A323295(n+1))/A000142(n)`
-/

namespace A220486.P17244715407816410377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053529 (n + 1) - A323295 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A220486.P17244715407816410377

/-!
# A220487: Partial sums of triangle A206437.

The programs for A220487, there is no canonical definition to state claims against.
-/

/-! ## A220487.P17186721741236026866

`∑[A206437(n+1)]`
-/

namespace A220487.P17186721741236026866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220487.P17186721741236026866

/-! ## A220487.P2922267643114171084

`A206437(-xor(n, -1))+a(n-1)` with `a(0)=1`
-/

namespace A220487.P2922267643114171084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A206437 (-Int.xor (n : ℤ) (-1)).toNat + a (n - 1)

end

end A220487.P2922267643114171084

/-! ## A220487.P15834605647045236871

`∑[dr(A206437(A008619(2*n)))]`
-/

namespace A220487.P15834605647045236871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A206437 (A008619 (2 * n)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220487.P15834605647045236871

/-! ## A220487.P17301991897982414628

`A000027(∑[A206437(-xor(n, -1))])`
-/

namespace A220487.P17301991897982414628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206437 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220487.P17301991897982414628

/-! ## A220487.P13245006825364234713

`∑[A007953(A206437(Δ[n²]-n))]`
-/

namespace A220487.P13245006825364234713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A206437 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220487.P13245006825364234713

/-! ## A220487.P16392680177209551039

`A206437(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A220487.P16392680177209551039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A206437 (n + 1) + a (A023443 n).toNat

end

end A220487.P16392680177209551039

/-! ## A220487.P2458166413017900231

`∑[A193870(lt[0, A193870(n+1)]+1)]`
-/

namespace A220487.P2458166413017900231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220487.P2458166413017900231

/-! ## A220487.P1706745684912492099

`A028310(A206437(n+1)+a(n-1))` with `a(0)=1`
-/

namespace A220487.P1706745684912492099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (A206437 (n + 1) + a (n - 1)).toNat

end

end A220487.P1706745684912492099

/-! ## A220487.P16997244743692654119

`A206437(n+1)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A220487.P16997244743692654119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A206437 (n + 1) + a ((n : ℤ) - A057427 n).toNat

end

end A220487.P16997244743692654119

/-! ## A220487.P7040243609457492496

`A206437(n+1)+a(n-A033999(n)²)` with `a(0)=1`
-/

namespace A220487.P7040243609457492496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A206437 (n + 1) + a ((n : ℤ) - A033999 n ^ 2).toNat

end

end A220487.P7040243609457492496

/-!
# A220488: Primes that have both prime digits (2,3,5,7) and nonprime digits (1,4,6,8,9), without digits "0".

The programs for A220488, there is no canonical definition to state claims against.
-/

/-! ## A220488.P15835367405914018521

`filter[A152426(n+1), A209929(#)]`
-/

namespace A220488.P15835367405914018521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A220488.P15835367405914018521

/-! ## A220488.P7069042890859077410

`filter[A152427(n+1), A209929(#)]`
-/

namespace A220488.P7069042890859077410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A220488.P7069042890859077410

/-! ## A220488.P11012396542068020469

`∩[A038618(n+1), A152426(n+1)]`
-/

namespace A220488.P11012396542068020469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220488.P11012396542068020469

/-! ## A220488.P4769175456118759181

`∩[A038618(n+1), A152427(n+1)]`
-/

namespace A220488.P4769175456118759181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220488.P4769175456118759181

/-! ## A220488.P2946885076936126685

`∩[A052382(n+1), A152426(n+1)]`
-/

namespace A220488.P2946885076936126685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220488.P2946885076936126685

/-! ## A220488.P14694289352171330264

`∩[A052382(n+1), A152427(n+1)]`
-/

namespace A220488.P14694289352171330264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220488.P14694289352171330264

/-! ## A220488.P9006001022225492426

`∩[A061116(n+1), A152426(n+1)]`
-/

namespace A220488.P9006001022225492426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220488.P9006001022225492426

/-! ## A220488.P12778130176742263741

`∩[A061116(n+1), A152427(n+1)]`
-/

namespace A220488.P12778130176742263741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220488.P12778130176742263741

/-! ## A220488.P5475904280335981866

`∩[A125290(n+1), A152426(n+1)]`
-/

namespace A220488.P5475904280335981866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220488.P5475904280335981866

/-! ## A220488.P6665966742772076499

`∩[A125290(n+1), A152427(n+1)]`
-/

namespace A220488.P6665966742772076499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220488.P6665966742772076499

/-! ## A220488.P4630774653369192619

`∩[A152426(n+1), A195943(n+1)]`
-/

namespace A220488.P4630774653369192619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220488.P4630774653369192619

/-! ## A220488.P9701264331422542463

`∩[A152427(n+1), A195943(n+1)]`
-/

namespace A220488.P9701264331422542463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220488.P9701264331422542463

/-! ## A220488.P4607694174825022831

`∩[A152426(n+1), A392375(n+1)]`
-/

namespace A220488.P4607694174825022831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220488.P4607694174825022831

/-! ## A220488.P18192554777559437367

`∩[A152427(n+1), A392375(n+1)]`
-/

namespace A220488.P18192554777559437367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220488.P18192554777559437367

/-! ## A220488.P12061014182197505704

`record[A004719(A152426(n+1))]`
-/

namespace A220488.P12061014182197505704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A152426 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220488.P12061014182197505704

/-! ## A220488.P14190943194244635031

`record[A004719(A152427(n+1))]`
-/

namespace A220488.P14190943194244635031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A152427 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220488.P14190943194244635031

/-! ## A220488.P6355952790114152139

`filter[A152426(n+1), A168046(#)]`
-/

namespace A220488.P6355952790114152139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A220488.P6355952790114152139

/-! ## A220488.P15270033511748833555

`filter[A152427(n+1), A168046(#)]`
-/

namespace A220488.P15270033511748833555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A220488.P15270033511748833555

/-!
# A220489: Total number of smallest parts in all partitions of n minus the total number of smallest parts that are also emergent parts in all partitions of n with at least one distinct part.

The programs for A220489, there is no canonical definition to state claims against.
-/

/-! ## A220489.P6485952400598512006

`1+A000203(n+1)+A000070(n+1)-A000041(n)-A000005(n+1)-(n+1)`
-/

namespace A220489.P6485952400598512006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000203 (n + 1) + A000070 (n + 1) - A000041 n - A000005 (n + 1) - (n + 1 : ℤ)

end

end A220489.P6485952400598512006

/-! ## A220489.P16516340398759037691

`A092269(n+1)-A220483(n+1)`
-/

namespace A220489.P16516340398759037691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) - A220483 (n + 1)

end

end A220489.P16516340398759037691

/-! ## A220489.P6694283354080557422

`A152770(n+1)+A120452(n+2)`
-/

namespace A220489.P6694283354080557422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) + A120452 (n + 2)

end

end A220489.P6694283354080557422

/-! ## A220489.P14614116099586703201

`A000041(n+1)+A215513(n+1)-A220483(n+1)`
-/

namespace A220489.P14614116099586703201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A215513 (n + 1) - A220483 (n + 1))

end

end A220489.P14614116099586703201

/-! ## A220489.P5407194661786309643

`A000203(n+1)+A268191(n+1)-A220483(n+1)`
-/

namespace A220489.P5407194661786309643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A268191 (n + 1) - A220483 (n + 1))

end

end A220489.P5407194661786309643

/-! ## A220489.P4476006019726066487

`A195820(n+1)+A000070(n)-A220483(n+1)`
-/

namespace A220489.P4476006019726066487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) + (A000070 n - A220483 (n + 1))

end

end A220489.P4476006019726066487

/-! ## A220489.P4902046187032399773

`A220479(n+1)+A120452(n+2)-A220483(n+1)`
-/

namespace A220489.P4902046187032399773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220479 (n + 1) + (A120452 (n + 2) - A220483 (n + 1))

end

end A220489.P4902046187032399773

/-!
# A220490: The largest n-digit number whose last k digits are divisible by k for k = 1..n.

The programs for A220490, there is no canonical definition to state claims against.
-/

/-! ## A220490.P13873758588565792195

`A070843(n+1)-A238618(A002878(n))`
-/

namespace A220490.P13873758588565792195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070843 (n + 1) - A238618 (A002878 n).toNat

end

end A220490.P13873758588565792195

/-!
# A220491: The smallest n-digit number whose last k digits are divisible by k for k = 1..n.

The programs for A220491, there is no canonical definition to state claims against.
-/

/-! ## A220491.P3843374679939538490

`A031324(floor(10^n/9))+10^n-1`
-/

namespace A220491.P3843374679939538490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 ⌊(10 ^ n : ℚ) / 9⌋.toNat + ((10 ^ n : ℤ) - 1)

end

end A220491.P3843374679939538490

/-!
# A220492: Number of primes p between quarter-squares, Q(n) < p <= Q(n+1), where Q(n) = A002620(n).

The programs for A220492, there is no canonical definition to state claims against.
-/

/-! ## A220492.P13031115419449885374

`Δ[A220506(A028310(n))]`
-/

namespace A220492.P13031115419449885374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220492.P13031115419449885374

/-! ## A220492.P1169550744902587980

`A220506(n+1)-A220506(A028310(n))`
-/

namespace A220492.P1169550744902587980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (n + 1) - A220506 (A028310 n).toNat

end

end A220492.P1169550744902587980

/-! ## A220492.P18234366098002516099

`Δ[A220506(sqrt(A253909(n)))]`
-/

namespace A220492.P18234366098002516099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220492.P18234366098002516099

/-! ## A220492.P12718753507521591644

`Δ[A289507(A151800(floor((n/2)²)))]`
-/

namespace A220492.P12718753507521591644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289507 (A151800 ⌊((n : ℚ) / 2) ^ 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220492.P12718753507521591644

/-! ## A220492.P1222820936229402059

`A189024(A076921(n+1))`
-/

namespace A220492.P1222820936229402059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (A076921 (n + 1)).toNat

end

end A220492.P1222820936229402059

/-! ## A220492.P3429260327371897334

`Δ[A230980(floor((n/2)²))]`
-/

namespace A220492.P3429260327371897334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220492.P3429260327371897334

/-! ## A220492.P3023544209224772123

`abs(Δ[A230980(and(-2, n²)/4)])`
-/

namespace A220492.P3023544209224772123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.roundAway ((Int.land (-2) (n ^ 2 : ℤ) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A220492.P3023544209224772123

/-! ## A220492.P3430080443560139385

`abs(Δ[A230980((or(1, n²)-1)/4)])`
-/

namespace A220492.P3430080443560139385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.roundAway (((Nat.lor 1 (n ^ 2) : ℤ) - 1 : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A220492.P3430080443560139385

/-! ## A220492.P5332420389339856525

`abs(Δ[A230980(A002620(n))])`
-/

namespace A220492.P5332420389339856525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A220492.P5332420389339856525

/-! ## A220492.P16819262580762866884

`A391280(A099392(n+1))`
-/

namespace A220492.P16819262580762866884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391280 (A099392 (n + 1)).toNat

end

end A220492.P16819262580762866884

/-! ## A220492.P16803845174994437054

`Δ[A242096(floor((n²-tan(2))/2))]`
-/

namespace A220492.P16803845174994437054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 ⌊((n ^ 2 : ℝ) - Real.tan (2 : ℝ)) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220492.P16803845174994437054

/-! ## A220492.P8431881847758872300

`Δ[A242096(ceil(sqrt(n^4/4+1)))]`
-/

namespace A220492.P8431881847758872300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 ⌈Real.sqrt ((n ^ 4 : ℚ) / 4 + 1 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220492.P8431881847758872300

/-! ## A220492.P7793231865031808287

`Δ[A056172(A008619(n²))]`
-/

namespace A220492.P7793231865031808287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A008619 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220492.P7793231865031808287

/-!
# A220493: Fibonacci 15-step numbers, a(n) = a(n-1) + a(n-2) + ... + a(n-15).

The programs for A220493, there is no canonical definition to state claims against.
-/

/-! ## A220493.P5833188307500056433

`A048887(A056115(n+9)+1)`
-/

namespace A220493.P5833188307500056433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A056115 (n + 9) + 1).toNat

end

end A220493.P5833188307500056433

/-! ## A220493.P2133511987366059644

`A048887(A000217(n+13)+n)`
-/

namespace A220493.P2133511987366059644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A000217 (n + 13) + (n : ℤ)).toNat

end

end A220493.P2133511987366059644

/-! ## A220493.P531135586499365255

`A092921(A000096(n+14)+15)`
-/

namespace A220493.P531135586499365255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A000096 (n + 14) + 15).toNat

end

end A220493.P531135586499365255

/-! ## A220493.P1207321419464562411

`2*a(n-1)-A057427(A179961(n))` with `a(0)=1`
-/

namespace A220493.P1207321419464562411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A057427 (A179961 n).toNat

end

end A220493.P1207321419464562411

/-! ## A220493.P3344013710036520473

`2^(-1%(n+1)+n)-A343380(A381299(n))`
-/

namespace A220493.P3344013710036520473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (-1) (n + 1 : ℤ) + (n : ℤ) : ℤ) - (A343380 (A381299 n).toNat : ℚ)

end

end A220493.P3344013710036520473

/-!
# A220494: Number of toothpicks and D-toothpicks after n-th stage in the structure of the D-toothpick "wide" triangle of the first kind.

The programs for A220494, there is no canonical definition to state claims against.
-/

/-! ## A220494.P18050633563789141888

`∑[A220495(n)]`
-/

namespace A220494.P18050633563789141888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220494.P18050633563789141888

/-! ## A220494.P11559486016648769780

`A160742(n)-ceil(n/98)`
-/

namespace A220494.P11559486016648769780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160742 n - ⌈(n : ℚ) / 98⌉

end

end A220494.P11559486016648769780

/-! ## A220494.P9127575889945187679

`floor(abs(1-A160746(n))/2)`
-/

namespace A220494.P9127575889945187679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|1 - A160746 n| : ℚ) / 2⌋

end

end A220494.P9127575889945187679

/-! ## A220494.P158821144527225541

`∑[A220497(val(n+1, 8)+n)]`
-/

namespace A220494.P158821144527225541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220497 (SequenceMachineLib.valuation (n + 1) 8 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220494.P158821144527225541

/-! ## A220494.P1472169007794725397

`floor(2/(exp(acot(A151566(n)))-1))`
-/

namespace A220494.P1472169007794725397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (Real.exp (SequenceMachineLib.acot (A151566 n : ℝ)) - 1)⌋

end

end A220494.P1472169007794725397

/-! ## A220494.P4450160168107924808

`∑[2*a(A060632(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A220494.P4450160168107924808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (A060632 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220494.P4450160168107924808

/-! ## A220494.P7506976541006255371

`∑[A220497(char[2*n+3]+n)]`
-/

namespace A220494.P7506976541006255371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220497 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220494.P7506976541006255371

/-! ## A220494.P16702101957055505534

`∑[A220497(and(1, n)+n)-char[1]]`
-/

namespace A220494.P16702101957055505534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220497 (Nat.land 1 n + n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220494.P16702101957055505534

/-! ## A220494.P17932643114314007032

`∑[A220497(∑[2*and(1, n)])-char[1]]`
-/

namespace A220494.P17932643114314007032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220497 (∑ j ∈ Finset.range (n + 1), f2 j) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220494.P17932643114314007032

/-! ## A220494.P6036149877723443572

`A004273(A151566(n))`
-/

namespace A220494.P6036149877723443572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A151566 n).toNat

end

end A220494.P6036149877723443572

/-!
# A220495: Number of toothpicks or D-toothpicks added at n-th stage to the structure of A220494.

The programs for A220495, there is no canonical definition to state claims against.
-/

/-! ## A220495.P4333851487659169089

`2*a(A060632(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A220495.P4333851487659169089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (A060632 (n - 1)).toNat

end

end A220495.P4333851487659169089

/-! ## A220495.P17127695181258757569

`A220497(a(and(1, n))+n)` with `a(0)=0, a(1)=1`
-/

namespace A220495.P17127695181258757569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A220497 (a (Nat.land 1 n) + (n : ℤ)).toNat

end

end A220495.P17127695181258757569

/-! ## A220495.P5800438772175936665

`A220497(char[2*n+3]+n)`
-/

namespace A220495.P5800438772175936665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220497 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A220495.P5800438772175936665

/-! ## A220495.P422719334944194338

`A220497(n%2+n)-char[1]`
-/

namespace A220495.P422719334944194338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220497 (n % 2 + n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A220495.P422719334944194338

/-! ## A220495.P10833207116233463715

`A220497(and(1, n)+n)-char[1]`
-/

namespace A220495.P10833207116233463715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220497 (Nat.land 1 n + n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A220495.P10833207116233463715

/-! ## A220495.P3948304347214662337

`ceil(atan(n))*A060632(abs(1-n))`
-/

namespace A220495.P3948304347214662337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ * A060632 |1 - (n : ℤ)|.toNat

end

end A220495.P3948304347214662337

/-! ## A220495.P7322301095277863378

`A220497(∑[2*and(1, n)])-char[1]`
-/

namespace A220495.P7322301095277863378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220497 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A220495.P7322301095277863378

/-! ## A220495.P10903640643584906306

`A060632(abs(or(1, -n))+n)-C(n, n²)`
-/

namespace A220495.P10903640643584906306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (|Int.lor 1 (-(n : ℤ))| + (n : ℤ)).toNat - (Nat.choose n (n ^ 2) : ℤ)

end

end A220495.P10903640643584906306

/-! ## A220495.P17518494241184604983

`A309255(2*n-A249304(n))`
-/

namespace A220495.P17518494241184604983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309255 ((2 * n : ℤ) - A249304 n).toNat

end

end A220495.P17518494241184604983

/-! ## A220495.P11495576529103737471

`A220497(and(1, n)+n)/A000041(C(2, n))`
-/

namespace A220495.P11495576529103737471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220497 (Nat.land 1 n + n) : ℚ) / (A000041 (Nat.choose 2 n) : ℚ)

end

end A220495.P11495576529103737471

/-!
# A220496: Number of toothpicks and D-toothpicks after n-th stage in the structure of the D-toothpick "narrow" triangle of the first kind.

The programs for A220496, there is no canonical definition to state claims against.
-/

/-! ## A220496.P14161126338352197849

`∑[A220497(n)]`
-/

namespace A220496.P14161126338352197849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220496.P14161126338352197849

/-! ## A220496.P7408362743351917033

`A220497(abs(1-n)+1)+a(n-1)` with `a(0)=0`
-/

namespace A220496.P7408362743351917033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A220497 (|1 - (n : ℤ)| + 1).toNat + a (n - 1)

end

end A220496.P7408362743351917033

/-! ## A220496.P10252707565373350603

`a(n-1)+A220497(A000007(n)+n)` with `a(0)=0`
-/

namespace A220496.P10252707565373350603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A220497 (A000007 n + (n : ℤ)).toNat

end

end A220496.P10252707565373350603

/-! ## A220496.P5768150491087512345

`a(n-1)-A220497(n)/A057428(A064989(n+1))` with `a(0)=0`
-/

namespace A220496.P5768150491087512345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (A220497 n : ℚ) / (A057428 (A064989 (n + 1)).toNat : ℚ)

end

end A220496.P5768150491087512345

/-! ## A220496.P1893887793422884637

`∑{d}[A000079(n), A220497(log2(#))]`
-/

namespace A220496.P1893887793422884637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A220497 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A220496.P1893887793422884637

/-!
# A220497: Number of toothpicks or D-toothpicks added at n-th stage to the structure of A220496.

The programs for A220497, there is no canonical definition to state claims against.
-/

/-! ## A220497.P15484293397133824702

`Δ[A220496(A259361(n²))]`
-/

namespace A220497.P15484293397133824702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220497.P15484293397133824702

/-! ## A220497.P628138093367839108

`Δ[A220496(log2(A011782(n)))]`
-/

namespace A220497.P628138093367839108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220497.P628138093367839108

/-! ## A220497.P15520960903577562973

`Δ[A220496(A289207(n+1))]`
-/

namespace A220497.P15520960903577562973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220497.P15520960903577562973

/-! ## A220497.P2936480502578165330

`Δ[A220496(A004273(n)-n)]`
-/

namespace A220497.P2936480502578165330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220497.P2936480502578165330

/-! ## A220497.P13168358195952419405

`Δ[A220496(n-A057427(n))]`
-/

namespace A220497.P13168358195952419405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220497.P13168358195952419405

/-! ## A220497.P6838585600985919874

`Δ[A220496(n-A178334(n))]`
-/

namespace A220497.P6838585600985919874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 ((n : ℤ) - A178334 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220497.P6838585600985919874

/-! ## A220497.P7086152378995984073

`Δ[A220496(A000196(n²-n))]`
-/

namespace A220497.P7086152378995984073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 (A000196 (n ^ 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220497.P7086152378995984073

/-! ## A220497.P12624624241046748617

`Δ[A220496(n-A139250(n)%2)]`
-/

namespace A220497.P12624624241046748617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 ((n : ℤ) - Int.tmod (A139250 n) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220497.P12624624241046748617

/-! ## A220497.P8391584461724713905

`Δ[A220496(A004526(A004273(n)))]`
-/

namespace A220497.P8391584461724713905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220497.P8391584461724713905

/-! ## A220497.P13429046571059259796

`Δ[A220496(A003056(A007590(n)))]`
-/

namespace A220497.P13429046571059259796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 (A003056 (A007590 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220497.P13429046571059259796

/-!
# A220498: Number of E-toothpicks (or tridents) added at n-th stage to the structure of the equilateral triangle of A220478.

The programs for A220498, there is no canonical definition to state claims against.
-/

/-! ## A220498.P12279176909803886369

`and(Δ[round(A161330(n)/6)]+1, -2)`
-/

namespace A220498.P12279176909803886369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A161330 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n + 1) (-2)

end

end A220498.P12279176909803886369

/-! ## A220498.P7155164303106833546

`floor(ceil(sin(n)²)+A161331(n+1)/6)`
-/

namespace A220498.P7155164303106833546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈Real.sin (n : ℝ) ^ 2⌉ : ℚ) + (A161331 (n + 1) : ℚ) / 6⌋

end

end A220498.P7155164303106833546

/-! ## A220498.P11381941201835010912

`Δ[round(A161330(abs(1-n)+1)/6)]+1`
-/

namespace A220498.P11381941201835010912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A161330 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A220498.P11381941201835010912

/-! ## A220498.P9029637009755017052

`A008612(Δ[A161330(n)])`
-/

namespace A220498.P9029637009755017052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (f1 (n + 1) - f1 n).toNat

end

end A220498.P9029637009755017052

/-! ## A220498.P9401495083348098807

`A008612(A161331(n+1))`
-/

namespace A220498.P9401495083348098807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A161331 (n + 1)).toNat

end

end A220498.P9401495083348098807

/-! ## A220498.P6744810331133330790

`A008611(A161331(n+1)/2)`
-/

namespace A220498.P6744810331133330790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway ((A161331 (n + 1) : ℚ) / 2)).toNat

end

end A220498.P6744810331133330790

/-! ## A220498.P13905302311736236544

`round(A161331(n+1)/6)+and(1, A000040(n+1))`
-/

namespace A220498.P13905302311736236544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A161331 (n + 1) : ℚ) / 6) + Int.land 1 (A000040 (n + 1))

end

end A220498.P13905302311736236544

/-! ## A220498.P11446826576254149116

`∑{e}[A020639(n+1), #]+round(A161331(n+1)/6)`
-/

namespace A220498.P11446826576254149116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + SequenceMachineLib.roundAway ((A161331 (n + 1) : ℚ) / 6)

end

end A220498.P11446826576254149116

/-! ## A220498.P14374006103479552889

`floor(A161331(n+1)/6--1%A000032(n+1))`
-/

namespace A220498.P14374006103479552889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161331 (n + 1) : ℚ) / 6 - (Int.tmod (-1) (A000032 (n + 1)) : ℚ)⌋

end

end A220498.P14374006103479552889

/-! ## A220498.P10724309570290311161

`A008683(2*A000040(n+1))+round(A161331(n+1)/6)`
-/

namespace A220498.P10724309570290311161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat + SequenceMachineLib.roundAway ((A161331 (n + 1) : ℚ) / 6)

end

end A220498.P10724309570290311161

/-!
# A220499: Number of line segments in an H tree with n levels that have no correspondence with the toothpicks of the toothpick structure of A139250 after n-th stage.

The programs for A220499, there is no canonical definition to state claims against.
-/

/-! ## A220499.P6736920524439789940

`A000225(n)-A139250(n)`
-/

namespace A220499.P6736920524439789940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A139250 n

end

end A220499.P6736920524439789940

/-! ## A220499.P17315062559717155359

`2^n-(∑[A139251(n)]+1)`
-/

namespace A220499.P17315062559717155359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220499.P17315062559717155359

/-! ## A220499.P16503898879399498479

`2^n-(A160164(n)/2+1)`
-/

namespace A220499.P16503898879399498479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - ((A160164 n : ℚ) / 2 + 1)

end

end A220499.P16503898879399498479

/-! ## A220499.P5204691450212949637

`2^n-(A266530(Δ[n²])+1)`
-/

namespace A220499.P5204691450212949637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A266530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1)

end

end A220499.P5204691450212949637

/-! ## A220499.P3564749985333946843

`2^n-ceil(A187220(n+1)/2)`
-/

namespace A220499.P3564749985333946843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ⌈(A187220 (n + 1) : ℚ) / 2⌉

end

end A220499.P3564749985333946843

/-! ## A220499.P10751519203997598327

`A002662(n)-A159790(n)`
-/

namespace A220499.P10751519203997598327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n - A159790 n

end

end A220499.P10751519203997598327

