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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A324400: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j) for all i, j >= 1, where f(n) = -1 if n = 2^k and k > 0, and f(n) = n for all other numbers.

The programs for A324400, the canonical program `A324400.P18379230745158729541` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324400 has offset 1).

The definition of A324400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324400.P18379230745158729541

`∑[A043545(n)]*A043545(n)+2-A000007(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A324400

/-- `∑[A043545(n)]*A043545(n)+2-A000007(n)` -/
def P18379230745158729541.Spec : Prop :=
  ∀ n, P18379230745158729541.a n = A324400 (n + 1)

theorem P18379230745158729541.correct : P18379230745158729541.Spec := by
  intro n
  simp only [A324400, Nat.add_sub_cancel]

end A324400

/-! ## A324400.P9249525205623297720

`A040001(2*n)+∑[A043545(n)]*A043545(n)`
-/

namespace A324400.P9249525205623297720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j) * A043545 n

end

end A324400.P9249525205623297720

namespace A324400

/-- `A040001(2*n)+∑[A043545(n)]*A043545(n)` -/
def P9249525205623297720.Spec : Prop :=
  ∀ n, P9249525205623297720.a n = A324400 (n + 1)

end A324400

/-! ## A324400.P8591302206747157591

`A269735(2*n+1)+∑[A043545(n)]*A043545(n)`
-/

namespace A324400.P8591302206747157591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 (2 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A043545 n

end

end A324400.P8591302206747157591

namespace A324400

/-- `A269735(2*n+1)+∑[A043545(n)]*A043545(n)` -/
def P8591302206747157591.Spec : Prop :=
  ∀ n, P8591302206747157591.a n = A324400 (n + 1)

end A324400

/-! ## A324400.P5264691563007134733

`∑[A043545(n)]*A043545(n)+2-A028310(n)+n`
-/

namespace A324400.P5264691563007134733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A043545 n + (2 - A028310 n + (n : ℤ))

end

end A324400.P5264691563007134733

namespace A324400

/-- `∑[A043545(n)]*A043545(n)+2-A028310(n)+n` -/
def P5264691563007134733.Spec : Prop :=
  ∀ n, P5264691563007134733.a n = A324400 (n + 1)

end A324400

/-! ## A324400.P9215096147728040750

`A036453(2*n+1)+∑[A043545(n)]*A043545(n)`
-/

namespace A324400.P9215096147728040750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A043545 n

end

end A324400.P9215096147728040750

namespace A324400

/-- `A036453(2*n+1)+∑[A043545(n)]*A043545(n)` -/
def P9215096147728040750.Spec : Prop :=
  ∀ n, P9215096147728040750.a n = A324400 (n + 1)

end A324400

/-! ## A324400.P3065611803267496636

`A275437(n²)+∑[A043545(n)]*A043545(n)`
-/

namespace A324400.P3065611803267496636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 (n ^ 2) + (∑ j ∈ Finset.range (n + 1), f1 j) * A043545 n

end

end A324400.P3065611803267496636

namespace A324400

/-- `A275437(n²)+∑[A043545(n)]*A043545(n)` -/
def P3065611803267496636.Spec : Prop :=
  ∀ n, P3065611803267496636.a n = A324400 (n + 1)

end A324400

/-! ## A324400.P2522287477375663066

`A014963(A001316(n))+A043545(n)*A182220(n+1)`
-/

namespace A324400.P2522287477375663066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat + A043545 n * A182220 (n + 1)

end

end A324400.P2522287477375663066

namespace A324400

/-- `A014963(A001316(n))+A043545(n)*A182220(n+1)` -/
def P2522287477375663066.Spec : Prop :=
  ∀ n, P2522287477375663066.a n = A324400 (n + 1)

end A324400

/-! ## A324400.P17967162153342144462

`A020639(A005893(n))+A043545(n)*A182220(n+1)`
-/

namespace A324400.P17967162153342144462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005893 n).toNat + A043545 n * A182220 (n + 1)

end

end A324400.P17967162153342144462

namespace A324400

/-- `A020639(A005893(n))+A043545(n)*A182220(n+1)` -/
def P17967162153342144462.Spec : Prop :=
  ∀ n, P17967162153342144462.a n = A324400 (n + 1)

end A324400

/-! ## A324400.P1290415573153698572

`A020639(A008458(n))+A043545(n)*A182220(n+1)`
-/

namespace A324400.P1290415573153698572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat + A043545 n * A182220 (n + 1)

end

end A324400.P1290415573153698572

namespace A324400

/-- `A020639(A008458(n))+A043545(n)*A182220(n+1)` -/
def P1290415573153698572.Spec : Prop :=
  ∀ n, P1290415573153698572.a n = A324400 (n + 1)

end A324400

/-!
# A324401: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j) for all i, j >= 1, where f(n) = -1 if n is an odd prime, f(n) = -2 if n = 2^k, with k > 1, and f(n) = n for all other numbers.

The programs for A324401, there is no canonical definition to state claims against.
-/

/-! ## A324401.P3805297053447590417

`A325382(∏{p}[n+1, #]^∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A324401.P3805297053447590417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325382 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A324401.P3805297053447590417

/-! ## A324401.P1524814094336223710

`A325382(n+1)/A015161(n)!`
-/

namespace A324401.P1524814094336223710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325382 (n + 1) : ℚ) / (Nat.factorial (A015161 n).toNat : ℚ)

end

end A324401.P1524814094336223710

/-! ## A324401.P3299729223602273420

`A325355(2^n)*A325382(n+1)`
-/

namespace A324401.P3299729223602273420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325355 (2 ^ n) * A325382 (n + 1)

end

end A324401.P3299729223602273420

/-! ## A324401.P10585580690554473785

`A325382(n+1)%record[A061816(n+4)]`
-/

namespace A324401.P10585580690554473785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325382 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A324401.P10585580690554473785

/-! ## A324401.P10078039668817519731

`A325382(n+1)+A000007(A027423(n))`
-/

namespace A324401.P10078039668817519731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325382 (n + 1) + A000007 (A027423 n).toNat

end

end A324401.P10078039668817519731

/-!
# A324405: Squarefree integers m > 1 such that if prime p divides m, then s_p(m) >= p and s_p(m) == 3 (mod p-1), where s_p(m) is the sum of the base p digits of m.

The programs for A324405, there is no canonical definition to state claims against.
-/

/-! ## A324405.P4062778385483584984

`filter[A324315(n+1), A324053(#)]`
-/

namespace A324405.P4062778385483584984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A324405.P4062778385483584984

/-!
# A324406: Number of oriented polyomino rings of length 4n with fourfold rotational symmetry.

The programs for A324406, there is no canonical definition to state claims against.
-/

/-! ## A324406.P3445448906740553000

`A324407(n+1)+A324408(n+1)`
-/

namespace A324406.P3445448906740553000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324407 (n + 1) + A324408 (n + 1)

end

end A324406.P3445448906740553000

/-! ## A324406.P12052941463522923616

`2*A324408(n+1)+A324409(n+1)`
-/

namespace A324406.P12052941463522923616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324408 (n + 1) + A324409 (n + 1)

end

end A324406.P12052941463522923616

/-! ## A324406.P3205469786946941581

`2*A324407(n+1)-A324409(n+1)`
-/

namespace A324406.P3205469786946941581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324407 (n + 1) - A324409 (n + 1)

end

end A324406.P3205469786946941581

/-! ## A324406.P9145846272453757114

`A324408(n+1)+A324409(A116966(n))+A324408(n+1)`
-/

namespace A324406.P9145846272453757114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324408 (n + 1) + (A324409 (A116966 n).toNat + A324408 (n + 1))

end

end A324406.P9145846272453757114

/-! ## A324406.P8137858460937323499

`A324407(A000027(n+1))+A324407(n+1)-A324409(n+1)`
-/

namespace A324406.P8137858460937323499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324407 (A000027 (n + 1)).toNat + (A324407 (n + 1) - A324409 (n + 1))

end

end A324406.P8137858460937323499

/-!
# A324407: Number of unoriented polyomino rings of length 4n with fourfold rotational symmetry.

The programs for A324407, there is no canonical definition to state claims against.
-/

/-! ## A324407.P12552099622698703299

`A324408(n+1)+A324409(n+1)`
-/

namespace A324407.P12552099622698703299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324408 (n + 1) + A324409 (n + 1)

end

end A324407.P12552099622698703299

/-! ## A324407.P5464183414117142631

`A324406(n+1)-A324408(n+1)`
-/

namespace A324407.P5464183414117142631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324406 (n + 1) - A324408 (n + 1)

end

end A324407.P5464183414117142631

/-! ## A324407.P8988371763179921656

`(A324406(n+1)+A324409(n+1))/2`
-/

namespace A324407.P8988371763179921656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324406 (n + 1) + A324409 (n + 1) : ℚ) / 2

end

end A324407.P8988371763179921656

/-! ## A324407.P2299766235309150179

`A324409(A116966(n))+A324408(n+1)`
-/

namespace A324407.P2299766235309150179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324409 (A116966 n).toNat + A324408 (n + 1)

end

end A324407.P2299766235309150179

/-! ## A324407.P2283312875446917448

`A324406(n+1)+A057428(n)*A324408(n+1)`
-/

namespace A324407.P2283312875446917448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324406 (n + 1) + A057428 n * A324408 (n + 1)

end

end A324407.P2283312875446917448

/-!
# A324408: Number of chiral pairs of polyomino rings of length 4n with fourfold rotational symmetry.

The programs for A324408, there is no canonical definition to state claims against.
-/

/-! ## A324408.P14641759660683253771

`A324406(n+1)-A324407(n+1)`
-/

namespace A324408.P14641759660683253771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324406 (n + 1) - A324407 (n + 1)

end

end A324408.P14641759660683253771

/-! ## A324408.P10067144927399795537

`A324407(n+1)-A324409(n+1)`
-/

namespace A324408.P10067144927399795537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324407 (n + 1) - A324409 (n + 1)

end

end A324408.P10067144927399795537

/-! ## A324408.P12342851201770501933

`(A324406(n+1)-A324409(n+1))/2`
-/

namespace A324408.P12342851201770501933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324406 (n + 1) - A324409 (n + 1) : ℚ) / 2

end

end A324408.P12342851201770501933

/-! ## A324408.P14086863274595043303

`A324406(comp[lcm(87, n)])%A324407(n+1)`
-/

namespace A324408.P14086863274595043303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 87 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324406 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A324407 (n + 1))

end

end A324408.P14086863274595043303

/-! ## A324408.P5722388404890801741

`A324406(A000027(n+1))%A324407(n+1)`
-/

namespace A324408.P5722388404890801741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324406 (A000027 (n + 1)).toNat) (A324407 (n + 1))

end

end A324408.P5722388404890801741

/-!
# A324409: Number of achiral polyomino rings of length 4n with fourfold rotational symmetry.

The programs for A324409, there is no canonical definition to state claims against.
-/

/-! ## A324409.P6965894050899172076

`A324407(n+1)-A324408(n+1)`
-/

namespace A324409.P6965894050899172076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324407 (n + 1) - A324408 (n + 1)

end

end A324409.P6965894050899172076

/-! ## A324409.P8695798869798590987

`2*A324407(n+1)-A324406(n+1)`
-/

namespace A324409.P8695798869798590987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324407 (n + 1) - A324406 (n + 1)

end

end A324409.P8695798869798590987

/-! ## A324409.P5870180759120079893

`A324406(n+1)-2*A324408(n+1)`
-/

namespace A324409.P5870180759120079893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324406 (n + 1) - 2 * A324408 (n + 1)

end

end A324409.P5870180759120079893

/-! ## A324409.P8310893711989222517

`A392698(A158780(n+1))`
-/

namespace A324409.P8310893711989222517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392698 (A158780 (n + 1)).toNat

end

end A324409.P8310893711989222517

/-!
# A324410: Number of minimally 3-edge-connected non-isomorphic n-vertex graphs.

The programs for A324410, there is no canonical definition to state claims against.
-/

/-! ## A324410.P11262627166626669362

`A340611(A047993(2*(n+2))+∑[∑{e}[n, #]])`
-/

namespace A324410.P11262627166626669362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340611 (A047993 (2 * (n + 2)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A324410.P11262627166626669362

/-! ## A324410.P12367740201472977188

`A330027(A000213(n)-A280634(n+1))`
-/

namespace A324410.P12367740201472977188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330027 (A000213 n - A280634 (n + 1)).toNat

end

end A324410.P12367740201472977188

/-! ## A324410.P6077022975507278953

`A254011(or(A257520(n), A343162(n+1)))`
-/

namespace A324410.P6077022975507278953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (Int.lor (A257520 n) (A343162 (n + 1))).toNat

end

end A324410.P6077022975507278953

/-! ## A324410.P17170291627278912360

`A025428(xor(A089859(n), A123639(n+1)))`
-/

namespace A324410.P17170291627278912360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (Int.xor (A089859 n) (A123639 (n + 1))).toNat

end

end A324410.P17170291627278912360

/-! ## A324410.P4437405118812249103

`A093717(A220501(n+2))%A303022(n+1)`
-/

namespace A324410.P4437405118812249103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093717 (A220501 (n + 2)).toNat) (A303022 (n + 1))

end

end A324410.P4437405118812249103

/-!
# A324411: Number of minimally 4-edge-connected non-isomorphic n-vertex graphs.

The programs for A324411, there is no canonical definition to state claims against.
-/

/-! ## A324411.P4753509582915768692

`A352131(A094974(n))`
-/

namespace A324411.P4753509582915768692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (A094974 n).toNat

end

end A324411.P4753509582915768692

/-! ## A324411.P14845547277685873395

`A352131(A289249(n))`
-/

namespace A324411.P14845547277685873395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (A289249 n).toNat

end

end A324411.P14845547277685873395

/-! ## A324411.P11356587796549015209

`A339218(A286496(n+1))`
-/

namespace A324411.P11356587796549015209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339218 (A286496 (n + 1)).toNat

end

end A324411.P11356587796549015209

/-! ## A324411.P38326094698897108

`A352493(10*A004696(n))`
-/

namespace A324411.P38326094698897108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 (10 * A004696 n).toNat

end

end A324411.P38326094698897108

/-! ## A324411.P10423633202737196493

`round(A332291(3*n+4)/A272183(n+1))`
-/

namespace A324411.P10423633202737196493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332291 (3 * n + 4) : ℚ) / (A272183 (n + 1) : ℚ))

end

end A324411.P10423633202737196493

/-!
# A324412: Number of minimally 5-edge-connected non-isomorphic n-vertex graphs.

The programs for A324412, there is no canonical definition to state claims against.
-/

/-! ## A324412.P18031070185271772073

`∑[n]²%A152872(ceil(2^(n-1)))`
-/

namespace A324412.P18031070185271772073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A152872 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A324412.P18031070185271772073

/-! ## A324412.P5501555188384776172

`A102963(∑{e}[n+1, #-val(#!, 2)]+a(n-1))` with `a(0)=0`
-/

namespace A324412.P5501555188384776172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A102963 (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ)) + a (n - 1)).toNat

end

end A324412.P5501555188384776172

/-! ## A324412.P6338057111718658373

`A091264(A107244(n))`
-/

namespace A324412.P6338057111718658373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091264 (A107244 n).toNat

end

end A324412.P6338057111718658373

/-! ## A324412.P6394266223865134588

`A219923(A001250(n))`
-/

namespace A324412.P6394266223865134588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219923 (A001250 n).toNat

end

end A324412.P6394266223865134588

/-! ## A324412.P5048056908734677797

`A342720(A017990(n))`
-/

namespace A324412.P5048056908734677797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342720 (A017990 n).toNat

end

end A324412.P5048056908734677797

/-!
# A324413: Number of minimally 6-edge-connected non-isomorphic n-vertex graphs.

The programs for A324413, there is no canonical definition to state claims against.
-/

/-! ## A324413.P8490066888771410705

`ceil(A038146(n+1)/39)`
-/

namespace A324413.P8490066888771410705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038146 (n + 1) : ℚ) / 39⌉

end

end A324413.P8490066888771410705

/-! ## A324413.P9333108449777836192

`A241272(A192804(n))`
-/

namespace A324413.P9333108449777836192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241272 (A192804 n).toNat

end

end A324413.P9333108449777836192

/-! ## A324413.P16417181869991008239

`A241272(A383253(n))`
-/

namespace A324413.P16417181869991008239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241272 (A383253 n).toNat

end

end A324413.P16417181869991008239

/-! ## A324413.P1569320642233016736

`A241272(A306622(n+1))`
-/

namespace A324413.P1569320642233016736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241272 (A306622 (n + 1)).toNat

end

end A324413.P1569320642233016736

/-! ## A324413.P10079548007021454455

`A241272(A393182(n+1))`
-/

namespace A324413.P10079548007021454455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241272 (A393182 (n + 1)).toNat

end

end A324413.P10079548007021454455

/-!
# A324414: Number of minimally 7-edge-connected non-isomorphic n-vertex graphs.

The programs for A324414, there is no canonical definition to state claims against.
-/

/-! ## A324414.P17276151625528365363

`round(A305356(n+1)/A130642(3*n+4))`
-/

namespace A324414.P17276151625528365363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A305356 (n + 1) : ℚ) / (A130642 (3 * n + 4) : ℚ))

end

end A324414.P17276151625528365363

/-! ## A324414.P11761172490190993082

`A103221(C(A097356(n), A308931(n)))`
-/

namespace A324414.P11761172490190993082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Nat.choose (A097356 n).toNat (A308931 n).toNat)

end

end A324414.P11761172490190993082

/-! ## A324414.P7159151734215785848

`A363731(A363251(n)-A321742(n+1))`
-/

namespace A324414.P7159151734215785848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363731 (A363251 n - A321742 (n + 1)).toNat

end

end A324414.P7159151734215785848

/-! ## A324414.P14653129201743551559

`A130482(A184974(n))%A050423(n+1)`
-/

namespace A324414.P14653129201743551559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130482 (A184974 n).toNat) (A050423 (n + 1))

end

end A324414.P14653129201743551559

/-! ## A324414.P7985249680843416575

`A003375(n+3)%A270831(A102276(n))`
-/

namespace A324414.P7985249680843416575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003375 (n + 3)) (A270831 (A102276 n).toNat)

end

end A324414.P7985249680843416575

/-!
# A324415: Number of minimally 8-edge-connected non-isomorphic n-vertex graphs.

The programs for A324415, there is no canonical definition to state claims against.
-/

/-! ## A324415.P5408397764045054153

`A056492(A157243(n))+A056474(n+1)`
-/

namespace A324415.P5408397764045054153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (A157243 n).toNat + A056474 (n + 1)

end

end A324415.P5408397764045054153

/-! ## A324415.P3398569204842344036

`A056492(A157243(n))+A056484(n+1)`
-/

namespace A324415.P3398569204842344036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (A157243 n).toNat + A056484 (n + 1)

end

end A324415.P3398569204842344036

/-! ## A324415.P12680951015344402590

`A185255(A008578(n+1))+A056484(n+1)`
-/

namespace A324415.P12680951015344402590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A008578 (n + 1)).toNat + A056484 (n + 1)

end

end A324415.P12680951015344402590

/-! ## A324415.P16729275439469015696

`A003557(A145546(n+1))*A056474(n+1)`
-/

namespace A324415.P16729275439469015696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A145546 (n + 1)).toNat * A056474 (n + 1)

end

end A324415.P16729275439469015696

/-! ## A324415.P11734779166308496059

`A137564(A056474(n+1)^(A284949(n+1)-A320525(n+1)))`
-/

namespace A324415.P11734779166308496059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (SequenceMachineLib.roundAway ((A056474 (n + 1) : ℚ) ^ (A284949 (n + 1) - A320525 (n + 1) : ℤ))).toNat

end

end A324415.P11734779166308496059

/-!
# A324416: Number of minimally 9-edge-connected non-isomorphic n-vertex graphs.

The programs for A324416, there is no canonical definition to state claims against.
-/

/-! ## A324416.P3730467823318285855

`A220638(A326470(n))*A326470(n)`
-/

namespace A324416.P3730467823318285855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220638 (A326470 n).toNat * A326470 n

end

end A324416.P3730467823318285855

/-!
# A324418: Number of minimally 4-connected non-isomorphic n-vertex graphs.

The programs for A324418, there is no canonical definition to state claims against.
-/

/-! ## A324418.P12823353391386812903

`A220182(∏[floor(n/2)!])`
-/

namespace A324418.P12823353391386812903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220182 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A324418.P12823353391386812903

/-! ## A324418.P18299615205218224630

`A220182(∏[A081123(n)])`
-/

namespace A324418.P18299615205218224630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220182 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324418.P18299615205218224630

/-! ## A324418.P15063896959416615917

`A262249(A014981(n+1))`
-/

namespace A324418.P15063896959416615917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262249 (A014981 (n + 1)).toNat

end

end A324418.P15063896959416615917

/-! ## A324418.P11729050650303592607

`A262249(A112840(n+1))`
-/

namespace A324418.P11729050650303592607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262249 (A112840 (n + 1)).toNat

end

end A324418.P11729050650303592607

/-! ## A324418.P1834141502195010595

`A308493(A216641(n+2))`
-/

namespace A324418.P1834141502195010595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308493 (A216641 (n + 2)).toNat

end

end A324418.P1834141502195010595

/-!
# A324420: Number of minimally 6-connected non-isomorphic n-vertex graphs.

The programs for A324420, there is no canonical definition to state claims against.
-/

/-! ## A324420.P18123903224020647885

`A300584(A354830(n))`
-/

namespace A324420.P18123903224020647885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300584 (A354830 n).toNat

end

end A324420.P18123903224020647885

/-! ## A324420.P1064067679950429654

`A309262(A185034(n)²)`
-/

namespace A324420.P1064067679950429654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309262 (A185034 n ^ 2).toNat

end

end A324420.P1064067679950429654

/-! ## A324420.P14698694248455691923

`A241092(A011843(n+1))`
-/

namespace A324420.P14698694248455691923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241092 (A011843 (n + 1)).toNat

end

end A324420.P14698694248455691923

/-! ## A324420.P9145489661227650916

`A241092(A120036(n)+1)`
-/

namespace A324420.P9145489661227650916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241092 (A120036 n + 1).toNat

end

end A324420.P9145489661227650916

/-! ## A324420.P5284019873733470404

`A239689(A151518(n+1))`
-/

namespace A324420.P5284019873733470404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239689 (A151518 (n + 1)).toNat

end

end A324420.P5284019873733470404

/-!
# A324421: Number of minimally 7-connected non-isomorphic n-vertex graphs.

The programs for A324421, there is no canonical definition to state claims against.
-/

/-! ## A324421.P2064964272109355555

`A383711(A190165(n))`
-/

namespace A324421.P2064964272109355555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383711 (A190165 n).toNat

end

end A324421.P2064964272109355555

/-! ## A324421.P17388404355965516631

`A328090(A242527(n+1))`
-/

namespace A324421.P17388404355965516631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328090 (A242527 (n + 1)).toNat

end

end A324421.P17388404355965516631

/-! ## A324421.P8246904983899548575

`A383711(A389769(n+1))`
-/

namespace A324421.P8246904983899548575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383711 (A389769 (n + 1)).toNat

end

end A324421.P8246904983899548575

/-! ## A324421.P7042776343604979614

`A062610(or(1, A328322(n)))`
-/

namespace A324421.P7042776343604979614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (Int.lor 1 (A328322 n)).toNat

end

end A324421.P7042776343604979614

/-! ## A324421.P2518732551660785688

`A237113(∑[A035648(n+2)]²)`
-/

namespace A324421.P2518732551660785688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035648 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237113 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A324421.P2518732551660785688

/-!
# A324422: Number of minimally 8-connected non-isomorphic n-vertex graphs.

The programs for A324422, there is no canonical definition to state claims against.
-/

/-! ## A324422.P14052301788706128135

`A007090(C(A120040(n), A109223(n)))`
-/

namespace A324422.P14052301788706128135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (Nat.choose (A120040 n).toNat (A109223 n).toNat)

end

end A324422.P14052301788706128135

/-! ## A324422.P14713511243031193241

`A228451(A324415(n+1)-A033483(n))`
-/

namespace A324422.P14713511243031193241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228451 (A324415 (n + 1) - A033483 n).toNat

end

end A324422.P14713511243031193241

/-! ## A324422.P13243663777615776403

`and(A110786(n+1), A184973(A005708(n)))`
-/

namespace A324422.P13243663777615776403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110786 (n + 1)) (A184973 (A005708 n).toNat)

end

end A324422.P13243663777615776403

/-! ## A324422.P2655212462344517193

`A228451(xor(A033483(n), A324415(n+1)))`
-/

namespace A324422.P2655212462344517193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228451 (Int.xor (A033483 n) (A324415 (n + 1))).toNat

end

end A324422.P2655212462344517193

/-! ## A324422.P5521346726975986721

`A228451(A324415(n+1)-A324417(n+1))`
-/

namespace A324422.P5521346726975986721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228451 (A324415 (n + 1) - A324417 (n + 1)).toNat

end

end A324422.P5521346726975986721

/-!
# A324424: Number of minimally 10-connected non-isomorphic n-vertex graphs.

The programs for A324424, there is no canonical definition to state claims against.
-/

/-! ## A324424.P2783423358393815610

`or(A033483(n), A212897(A033483(n)))`
-/

namespace A324424.P2783423358393815610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033483 n) (A212897 (A033483 n).toNat)

end

end A324424.P2783423358393815610

/-!
# A324428: Number T(n,k) of labeled cyclic chord diagrams with n chords such that every chord has length at least k; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A324428, there is no canonical definition to state claims against.
-/

/-! ## A324428.P12832424758023127735

`A135877(A394872(n+1))`
-/

namespace A324428.P12832424758023127735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135877 (A394872 (n + 1)).toNat

end

end A324428.P12832424758023127735

/-! ## A324428.P6853075678924169952

`A144270(A192140(n+2))`
-/

namespace A324428.P6853075678924169952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144270 (A192140 (n + 2)).toNat

end

end A324428.P6853075678924169952

/-!
# A324430: Number of labeled cyclic chord diagrams with n chords such that every chord has length at least four.

The programs for A324430, there is no canonical definition to state claims against.
-/

/-! ## A324430.P6021299834047836041

`A353501(∑[∑[a(n-1)+4]]-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=5`
-/

namespace A324430.P6021299834047836041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 0, 5] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353501 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A324430.P6021299834047836041

/-! ## A324430.P14011901430655477040

`A334275(A214200(n))`
-/

namespace A324430.P14011901430655477040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334275 (A214200 n).toNat

end

end A324430.P14011901430655477040

/-! ## A324430.P13913894699928043740

`A191931(A020085(n)+1)`
-/

namespace A324430.P13913894699928043740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191931 (A020085 n + 1).toNat

end

end A324430.P13913894699928043740

/-!
# A324431: Number of labeled cyclic chord diagrams with n chords such that every chord has length at least five.

The programs for A324431, there is no canonical definition to state claims against.
-/

/-! ## A324431.P12047942599551355022

`A001065(A000040(n+1)^floor((5/2-n)²/6))`
-/

namespace A324431.P12047942599551355022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) ^ (⌊((5 : ℚ) / 2 - (n : ℚ)) ^ 2 / 6⌋ : ℤ))).toNat

end

end A324431.P12047942599551355022

/-! ## A324431.P9687070409188871443

`A175920(A000389(n)^A260731(n))`
-/

namespace A324431.P9687070409188871443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 (SequenceMachineLib.roundAway ((A000389 n : ℚ) ^ (A260731 n : ℤ))).toNat

end

end A324431.P9687070409188871443

/-! ## A324431.P250426017631806531

`A325039(A000389(n+1))*A365702(n)`
-/

namespace A324431.P250426017631806531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325039 (A000389 (n + 1)).toNat * A365702 n

end

end A324431.P250426017631806531

/-!
# A324433: Number of labeled cyclic chord diagrams with n chords such that every chord has length at least seven.

The programs for A324433, there is no canonical definition to state claims against.
-/

/-! ## A324433.P8188195248434537332

`A218630(a(n-1)²+n)` with `a(0)=1`
-/

namespace A324433.P8188195248434537332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A218630 (a (n - 1) ^ 2 + (n : ℤ)).toNat

end

end A324433.P8188195248434537332

/-! ## A324433.P5167808175633698273

`A182634(C(floor(C(n, 2)/3), n))`
-/

namespace A324433.P5167808175633698273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182634 (Nat.choose ⌊(Nat.choose n 2 : ℚ) / 3⌋.toNat n)

end

end A324433.P5167808175633698273

/-! ## A324433.P11789828967926065622

`A098841(2*(a(n-1)+n))` with `a(0)=1`
-/

namespace A324433.P11789828967926065622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098841 (2 * (a (n - 1) + (n : ℤ))).toNat

end

end A324433.P11789828967926065622

/-! ## A324433.P4890855255653494466

`A098841(lcm(2, a(n-1)+n))` with `a(0)=1`
-/

namespace A324433.P4890855255653494466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098841 (Int.lcm 2 (a (n - 1) + (n : ℤ)))

end

end A324433.P4890855255653494466

/-! ## A324433.P17332051024121696282

`A098841(2*or(n, a(n-1)))` with `a(0)=1`
-/

namespace A324433.P17332051024121696282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098841 (2 * Int.lor (n : ℤ) (a (n - 1))).toNat

end

end A324433.P17332051024121696282

/-!
# A324434: Number of labeled cyclic chord diagrams with n chords such that every chord has length at least eight.

The programs for A324434, there is no canonical definition to state claims against.
-/

/-! ## A324434.P1667861332928161238

`A081595(C(floor((n/2)²), 2*n))`
-/

namespace A324434.P1667861332928161238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081595 (Nat.choose ⌊((n : ℚ) / 2) ^ 2⌋.toNat (2 * n))

end

end A324434.P1667861332928161238

/-! ## A324434.P5484669425704723751

`A255592(C(floor((n/2)²), 2*n))`
-/

namespace A324434.P5484669425704723751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255592 (Nat.choose ⌊((n : ℚ) / 2) ^ 2⌋.toNat (2 * n))

end

end A324434.P5484669425704723751

/-! ## A324434.P3660149419573811501

`A328626(C(floor((n/2)²), 2*n))`
-/

namespace A324434.P3660149419573811501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328626 (Nat.choose ⌊((n : ℚ) / 2) ^ 2⌋.toNat (2 * n))

end

end A324434.P3660149419573811501

/-! ## A324434.P15502194914534877665

`A130446(ceil(2^(n-1)))-floor(2^(n-1))`
-/

namespace A324434.P15502194914534877665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A324434.P15502194914534877665

/-! ## A324434.P6093076534040943208

`A161071(C(n+1, 3)*a(n-1)+n+1)` with `a(0)=1`
-/

namespace A324434.P6093076534040943208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161071 ((Nat.choose (n + 1) 3 : ℤ) * a (n - 1) + (n : ℤ) + 1).toNat

end

end A324434.P6093076534040943208

/-!
# A324435: Number of labeled cyclic chord diagrams with n chords such that every chord has length at least nine.

The programs for A324435, there is no canonical definition to state claims against.
-/

/-! ## A324435.P5903961331965195244

`A004185(C(∑[ceil(n/3)], 2*n))`
-/

namespace A324435.P5903961331965195244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (2 * n))

end

end A324435.P5903961331965195244

/-! ## A324435.P2637840886547423343

`A309399(A145459(n))`
-/

namespace A324435.P2637840886547423343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309399 (A145459 n).toNat

end

end A324435.P2637840886547423343

/-! ## A324435.P5304761024245908758

`A326820(A327510(n)²)`
-/

namespace A324435.P5304761024245908758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326820 (A327510 n ^ 2).toNat

end

end A324435.P5304761024245908758

/-! ## A324435.P10686372470520503312

`A101529(A145459(n)+1)`
-/

namespace A324435.P10686372470520503312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101529 (A145459 n + 1).toNat

end

end A324435.P10686372470520503312

/-! ## A324435.P13499018724400670084

`A025924(A344822(n+1))`
-/

namespace A324435.P13499018724400670084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (A344822 (n + 1)).toNat

end

end A324435.P13499018724400670084

/-!
# A324436: Number of labeled cyclic chord diagrams with n chords such that every chord has length at least ten.

The programs for A324436, there is no canonical definition to state claims against.
-/

/-! ## A324436.P6529143889772848719

`A191844(A327511(n)+1)`
-/

namespace A324436.P6529143889772848719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191844 (A327511 n + 1).toNat

end

end A324436.P6529143889772848719

/-! ## A324436.P6759962944299834265

`A279168(A327511(n)+1)`
-/

namespace A324436.P6759962944299834265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A327511 n + 1).toNat

end

end A324436.P6759962944299834265

/-! ## A324436.P4391778262421794077

`A160552(A243745(n)^3)`
-/

namespace A324436.P4391778262421794077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A243745 (n + 10) ^ 3).toNat

end

end A324436.P4391778262421794077

/-! ## A324436.P8112847017765741066

`A319759(xor(1, A243745(n)))`
-/

namespace A324436.P8112847017765741066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319759 (Int.xor 1 (A243745 (n + 10))).toNat

end

end A324436.P8112847017765741066

/-! ## A324436.P1365459428706013018

`A160160(C(A379720(n), n+1))`
-/

namespace A324436.P1365459428706013018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (Nat.choose (A379720 n).toNat (n + 1))

end

end A324436.P1365459428706013018

/-!
# A324444: a(n) = Product_{i=1..n, j=1..n} (1 + i + j).

The programs for A324444, there is no canonical definition to state claims against.
-/

/-! ## A324444.P15777746466597638031

`A156584(∑[4*n])`
-/

namespace A324444.P15777746466597638031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156584 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324444.P15777746466597638031

/-! ## A324444.P10568600227281278534

`A107252(n+1)/A000142(n+1)`
-/

namespace A324444.P10568600227281278534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107252 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A324444.P10568600227281278534

/-!
# A324445: Number of labeled cyclic chord diagrams with n chords such that the minimal chord length equals one.

The programs for A324445, the canonical program `A324445.P6189098538037595142` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324445 has offset 1).

The definition of A324445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324445.P6189098538037595142

`A001147(n+1)-A003436(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A324445

/-- `A001147(n+1)-A003436(n+1)` -/
def P6189098538037595142.Spec : Prop :=
  ∀ n, P6189098538037595142.a n = A324445 (n + 1)

theorem P6189098538037595142.correct : P6189098538037595142.Spec := by
  intro n
  simp only [A324445, Nat.add_sub_cancel]

end A324445

/-! ## A324445.P11085173571124429840

`A006882(2*n+1)-A003436(n+1)`
-/

namespace A324445.P11085173571124429840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (2 * n + 1) - A003436 (n + 1)

end

end A324445.P11085173571124429840

namespace A324445

/-- `A006882(2*n+1)-A003436(n+1)` -/
def P11085173571124429840.Spec : Prop :=
  ∀ n, P11085173571124429840.a n = A324445 (n + 1)

end A324445

/-! ## A324445.P10834214380064542760

`A293914(n+1)+A278990(A028310(n))`
-/

namespace A324445.P10834214380064542760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293914 (n + 1) + A278990 (A028310 n).toNat

end

end A324445.P10834214380064542760

namespace A324445

/-- `A293914(n+1)+A278990(A028310(n))` -/
def P10834214380064542760.Spec : Prop :=
  ∀ n, P10834214380064542760.a n = A324445 (n + 1)

end A324445

/-! ## A324445.P661986758273214408

`record[A324429(n)]`
-/

namespace A324445.P661986758273214408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324445.P661986758273214408

namespace A324445

/-- `record[A324429(n)]` -/
def P661986758273214408.Spec : Prop :=
  ∀ n, P661986758273214408.a n = A324445 (n + 1)

end A324445

/-! ## A324445.P15833517276292243754

`A324429(∑[n+1]+1)`
-/

namespace A324445.P15833517276292243754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A324445.P15833517276292243754

namespace A324445

/-- `A324429(∑[n+1]+1)` -/
def P15833517276292243754.Spec : Prop :=
  ∀ n, P15833517276292243754.a n = A324445 (n + 1)

end A324445

/-!
# A324446: Number of labeled cyclic chord diagrams with n chords such that the minimal chord length equals two.

The programs for A324446, there is no canonical definition to state claims against.
-/

/-! ## A324446.P13508404454234066268

`A003436(n+2)-A306386(n+2)`
-/

namespace A324446.P13508404454234066268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003436 (n + 2) - A306386 (n + 2)

end

end A324446.P13508404454234066268

/-! ## A324446.P11419283733562184090

`record[A231622(n)-A306386(n)]`
-/

namespace A324446.P11419283733562184090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231622 n - A306386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324446.P11419283733562184090

/-! ## A324446.P2183762591510214207

`record[A003436(n)]-A306386(n+2)`
-/

namespace A324446.P2183762591510214207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A306386 (n + 2)

end

end A324446.P2183762591510214207

/-! ## A324446.P5423389835107798664

`Δ[A278990(n+1)]-A306386(n+2)`
-/

namespace A324446.P5423389835107798664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A306386 (n + 2)

end

end A324446.P5423389835107798664

/-! ## A324446.P4507238050294385267

`A324429(∑[n+2]+3)`
-/

namespace A324446.P4507238050294385267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A324446.P4507238050294385267

/-!
# A324447: Number of labeled cyclic chord diagrams with n chords such that the minimal chord length equals three.

The programs for A324447, there is no canonical definition to state claims against.
-/

/-! ## A324447.P14317765573504410978

`A306386(n+3)-A324430(n+3)`
-/

namespace A324447.P14317765573504410978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306386 (n + 3) - A324430 (n + 3)

end

end A324447.P14317765573504410978

/-! ## A324447.P2632852430933449393

`A324429(A167614(n+2))`
-/

namespace A324447.P2632852430933449393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (A167614 (n + 2)).toNat

end

end A324447.P2632852430933449393

/-! ## A324447.P7609539956041986799

`A324429(A052905(n)+8)`
-/

namespace A324447.P7609539956041986799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (A052905 n + 8).toNat

end

end A324447.P7609539956041986799

/-! ## A324447.P15107535957929725481

`A324429(A055999(n)+9)`
-/

namespace A324447.P15107535957929725481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (A055999 n + 9).toNat

end

end A324447.P15107535957929725481

/-! ## A324447.P16254912286518866592

`A324429(eq[3, A002262(n)])`
-/

namespace A324447.P16254912286518866592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324447.P16254912286518866592

/-!
# A324448: Number of labeled cyclic chord diagrams with n chords such that the minimal chord length equals four.

The programs for A324448, there is no canonical definition to state claims against.
-/

/-! ## A324448.P5115773359252382900

`A324430(n+4)-A324431(n+4)`
-/

namespace A324448.P5115773359252382900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324430 (n + 4) - A324431 (n + 4)

end

end A324448.P5115773359252382900

/-! ## A324448.P6506851186476704803

`A324429(A155212(n)+12)`
-/

namespace A324448.P6506851186476704803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (A155212 n + 12).toNat

end

end A324448.P6506851186476704803

/-! ## A324448.P7585040476209468071

`A324429(A056000(n)+14)`
-/

namespace A324448.P7585040476209468071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (A056000 n + 14).toNat

end

end A324448.P7585040476209468071

/-! ## A324448.P7683377706726679232

`A324429(eq[4, A002262(n)])`
-/

namespace A324448.P7683377706726679232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324448.P7683377706726679232

/-! ## A324448.P16299993434523607192

`A324429(eq[16, A059268(n)])`
-/

namespace A324448.P16299993434523607192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324448.P16299993434523607192

/-!
# A324449: Number of labeled cyclic chord diagrams with n chords such that the minimal chord length equals five.

The programs for A324449, there is no canonical definition to state claims against.
-/

/-! ## A324449.P17740573179050789634

`A324431(n+5)-A324432(n+5)`
-/

namespace A324449.P17740573179050789634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324431 (n + 5) - A324432 (n + 5)

end

end A324449.P17740573179050789634

/-! ## A324449.P17810582834039787122

`A324429(eq[5, A002262(n)])`
-/

namespace A324449.P17810582834039787122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324449.P17810582834039787122

/-! ## A324449.P525340403872644666

`A324429(eq[32, A059268(n)])`
-/

namespace A324449.P525340403872644666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324449.P525340403872644666

/-! ## A324449.P1811475558645039353

`A324429(eq[6, A002260(n+1)])`
-/

namespace A324449.P1811475558645039353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324449.P1811475558645039353

/-! ## A324449.P373966269297673830

`A324429(A161680(n+7)-(n+1))`
-/

namespace A324449.P373966269297673830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (A161680 (n + 7) - (n + 1 : ℤ)).toNat

end

end A324449.P373966269297673830

/-!
# A324450: Number of labeled cyclic chord diagrams with n chords such that the minimal chord length equals six.

The programs for A324450, there is no canonical definition to state claims against.
-/

/-! ## A324450.P10843046707714095709

`A324432(n+6)-A324433(n+6)`
-/

namespace A324450.P10843046707714095709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324432 (n + 6) - A324433 (n + 6)

end

end A324450.P10843046707714095709

/-! ## A324450.P11080978135405859219

`A324429(eq[6, A002262(n)])`
-/

namespace A324450.P11080978135405859219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324450.P11080978135405859219

/-! ## A324450.P8602034948277607758

`A324429(A161680(n+7)+6)`
-/

namespace A324450.P8602034948277607758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (A161680 (n + 7) + 6).toNat

end

end A324450.P8602034948277607758

/-! ## A324450.P5500260840890163276

`A324429(eq[6, A144328(n+1)])`
-/

namespace A324450.P5500260840890163276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324450.P5500260840890163276

/-! ## A324450.P9172799969438605358

`A324429(eq[7, A002260(n+1)])`
-/

namespace A324450.P9172799969438605358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324450.P9172799969438605358

/-!
# A324451: Number of labeled cyclic chord diagrams with n chords such that the minimal chord length equals seven.

The programs for A324451, there is no canonical definition to state claims against.
-/

/-! ## A324451.P13986203706083549856

`A324433(n+7)-A324434(n+7)`
-/

namespace A324451.P13986203706083549856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324433 (n + 7) - A324434 (n + 7)

end

end A324451.P13986203706083549856

/-! ## A324451.P10551561912796524572

`A324429(eq[7, A002262(n)])`
-/

namespace A324451.P10551561912796524572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324451.P10551561912796524572

/-! ## A324451.P15667858585634782566

`A324429(eq[7, A130270(n+1)])`
-/

namespace A324451.P15667858585634782566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324451.P15667858585634782566

/-! ## A324451.P4948746031382151696

`A324429(eq[7, A144328(n+1)])`
-/

namespace A324451.P4948746031382151696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324451.P4948746031382151696

/-! ## A324451.P10807920740439682965

`A324429(eq[8, A002260(n+1)])`
-/

namespace A324451.P10807920740439682965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324451.P10807920740439682965

/-!
# A324452: Number of labeled cyclic chord diagrams with n chords such that the minimal chord length equals eight.

The programs for A324452, there is no canonical definition to state claims against.
-/

/-! ## A324452.P17693189676177854754

`A324434(n+8)-A324435(n+8)`
-/

namespace A324452.P17693189676177854754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324434 (n + 8) - A324435 (n + 8)

end

end A324452.P17693189676177854754

/-! ## A324452.P7492392480848552311

`A324429(eq[8, A002262(n)])`
-/

namespace A324452.P7492392480848552311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324452.P7492392480848552311

/-! ## A324452.P14757073551028443893

`A324429(eq[8, A144328(n+1)])`
-/

namespace A324452.P14757073551028443893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324452.P14757073551028443893

/-! ## A324452.P11187202121312825486

`A324429(eq[9, A002260(n+1)])`
-/

namespace A324452.P11187202121312825486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324452.P11187202121312825486

/-! ## A324452.P5376350462064391876

`A324429(eq[9, A135223(n+1)])`
-/

namespace A324452.P5376350462064391876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324452.P5376350462064391876

/-!
# A324453: Number of labeled cyclic chord diagrams with n chords such that the minimal chord length equals nine.

The programs for A324453, there is no canonical definition to state claims against.
-/

/-! ## A324453.P9500206300374983527

`A324435(n+9)-A324436(n+9)`
-/

namespace A324453.P9500206300374983527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324435 (n + 9) - A324436 (n + 9)

end

end A324453.P9500206300374983527

/-! ## A324453.P13163043422803848174

`A324429(eq[9, A002262(n)])`
-/

namespace A324453.P13163043422803848174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324453.P13163043422803848174

/-! ## A324453.P9405657401961041681

`A324429(eq[9, A130270(n+1)])`
-/

namespace A324453.P9405657401961041681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324453.P9405657401961041681

/-! ## A324453.P6834260356657322847

`A324429(eq[9, A144328(n+1)])`
-/

namespace A324453.P6834260356657322847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324453.P6834260356657322847

/-! ## A324453.P14004665157638092676

`A324429(eq[10, A002260(n+1)])`
-/

namespace A324453.P14004665157638092676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324453.P14004665157638092676

/-!
# A324454: Number of labeled cyclic chord diagrams with n chords such that the minimal chord length equals ten.

The programs for A324454, there is no canonical definition to state claims against.
-/

/-! ## A324454.P16474757149804344489

`A324429(eq[10, A002262(n)])`
-/

namespace A324454.P16474757149804344489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324454.P16474757149804344489

/-! ## A324454.P4905584013625690103

`A324429(eq[10, A144328(n+1)])`
-/

namespace A324454.P4905584013625690103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324454.P4905584013625690103

/-! ## A324454.P781117277847611477

`A324429(eq[11, A002260(n+1)])`
-/

namespace A324454.P781117277847611477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324454.P781117277847611477

/-!
# A324455: Numbers m > 1 such that there exists a divisor g > 1 of m which satisfies s_g(m) >= g.

The programs for A324455, the canonical program `A324455.P2567094407675781891` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324455 has offset 1).

The definition of A324455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 743 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324455.P2567094407675781891

`1+lt[1, A324369(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A324455

/-- `1+lt[1, A324369(n+1)]` -/
def P2567094407675781891.Spec : Prop :=
  ∀ n, (P2567094407675781891.a n : ℤ) = A324455 (n + 1)

theorem P2567094407675781891.correct : P2567094407675781891.Spec := by
  intro n
  simp only [A324455, Nat.add_sub_cancel]

end A324455

/-! ## A324455.P7586715385368804614

`lt[1, A324369(A028310(n))]`
-/

namespace A324455.P7586715385368804614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324369 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324455.P7586715385368804614

namespace A324455

/-- `lt[1, A324369(A028310(n))]` -/
def P7586715385368804614.Spec : Prop :=
  ∀ n, (P7586715385368804614.a n : ℤ) = A324455 (n + 1)

end A324455

/-! ## A324455.P360549247212334033

`A065475(lt[1, A324369(n+1)])`
-/

namespace A324455.P360549247212334033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A324455.P360549247212334033

namespace A324455

/-- `A065475(lt[1, A324369(n+1)])` -/
def P360549247212334033.Spec : Prop :=
  ∀ n, P360549247212334033.a n = A324455 (n + 1)

end A324455

/-! ## A324455.P17185653662820611867

`1+lt[A318256(n), A195441(n)]`
-/

namespace A324455.P17185653662820611867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324455.P17185653662820611867

namespace A324455

/-- `1+lt[A318256(n), A195441(n)]` -/
def P17185653662820611867.Spec : Prop :=
  ∀ n, (P17185653662820611867.a n : ℤ) = A324455 (n + 1)

end A324455

/-! ## A324455.P9411370819679490420

`A065475(lt[A318256(n), A195441(n)])`
-/

namespace A324455.P9411370819679490420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324455.P9411370819679490420

namespace A324455

/-- `A065475(lt[A318256(n), A195441(n)])` -/
def P9411370819679490420.Spec : Prop :=
  ∀ n, P9411370819679490420.a n = A324455 (n + 1)

end A324455

/-! ## A324455.P7601714097150810674

`lt[1, A324369(A233583(n+1))]`
-/

namespace A324455.P7601714097150810674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324369 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324455.P7601714097150810674

namespace A324455

/-- `lt[1, A324369(A233583(n+1))]` -/
def P7601714097150810674.Spec : Prop :=
  ∀ n, (P7601714097150810674.a n : ℤ) = A324455 (n + 1)

end A324455

/-! ## A324455.P6641496032462578246

`lt[A323409(A323409(n+1)), A323437(n)]`
-/

namespace A324455.P6641496032462578246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323409 (A323409 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324455.P6641496032462578246

namespace A324455

/-- `lt[A323409(A323409(n+1)), A323437(n)]` -/
def P6641496032462578246.Spec : Prop :=
  ∀ n, (P6641496032462578246.a n : ℤ) = A324455 (n + 1)

end A324455

/-!
# A324456: Numbers m > 1 such that there exists a divisor g > 1 of m which satisfies s_g(m) = g.

The programs for A324456, there is no canonical definition to state claims against.
-/

/-! ## A324456.P11917863588504670839

`∪[A324857(n+1), A324858(n+1)]`
-/

namespace A324456.P11917863588504670839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324456.P11917863588504670839

/-! ## A324456.P15740387819472673244

`A007774(A334709(n+1)!*A145353(n+1))`
-/

namespace A324456.P15740387819472673244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 ((Nat.factorial (A334709 (n + 1)).toNat : ℤ) * A145353 (n + 1)).toNat

end

end A324456.P15740387819472673244

/-! ## A324456.P10493663034210150214

`A007774(A145353(n+1)^A334709(n+1)!)`
-/

namespace A324456.P10493663034210150214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (A145353 (n + 1) ^ Nat.factorial (A334709 (n + 1)).toNat).toNat

end

end A324456.P10493663034210150214

/-!
# A324457: Numbers m > 1 such that every prime divisor p of m satisfies s_p(m) >= p.

The programs for A324457, the canonical program `A324457.P5700254826729189197` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324457 has offset 1).

The definition of A324457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324457.P5700254826729189197

`eq[1, A324371(n+2)]+2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324457

/-- `eq[1, A324371(n+2)]+2` -/
def P5700254826729189197.Spec : Prop :=
  ∀ n, (P5700254826729189197.a n : ℤ) = A324457 (n + 1)

theorem P5700254826729189197.correct : P5700254826729189197.Spec := by
  intro n
  simp only [A324457, Nat.add_sub_cancel]

end A324457

/-! ## A324457.P77517720417508484

`eq[A141044(n), A324371(A028310(n))]`
-/

namespace A324457.P77517720417508484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324457.P77517720417508484

namespace A324457

/-- `eq[A141044(n), A324371(A028310(n))]` -/
def P77517720417508484.Spec : Prop :=
  ∀ n, (P77517720417508484.a n : ℤ) = A324457 (n + 1)

end A324457

/-! ## A324457.P3661533062258539939

`record[A324459(n+1)/A324371(A324459(n+1))]`
-/

namespace A324457.P3661533062258539939
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324459 (n + 1) : ℚ) / (A324371 (A324459 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324457.P3661533062258539939

namespace A324457

/-- `record[A324459(n+1)/A324371(A324459(n+1))]` -/
def P3661533062258539939.Spec : Prop :=
  ∀ n, P3661533062258539939.a n = (A324457 (n + 1) : ℚ)

end A324457

/-! ## A324457.P13910457176495656249

`eq[1, A324371(A233583(n+1))]`
-/

namespace A324457.P13910457176495656249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324457.P13910457176495656249

namespace A324457

/-- `eq[1, A324371(A233583(n+1))]` -/
def P13910457176495656249.Spec : Prop :=
  ∀ n, (P13910457176495656249.a n : ℤ) = A324457 (n + 1)

end A324457

/-! ## A324457.P12318733427011778184

`A324459(A077168(n))`
-/

namespace A324457.P12318733427011778184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324459 (A077168 n).toNat

end

end A324457.P12318733427011778184

namespace A324457

/-- `A324459(A077168(n))` -/
def P12318733427011778184.Spec : Prop :=
  ∀ n, P12318733427011778184.a n = A324457 (n + 1)

end A324457

/-!
# A324458: Numbers m > 1 such that every prime divisor p of m satisfies s_p(m) = p.

The programs for A324458, there is no canonical definition to state claims against.
-/

/-! ## A324458.P15649693572137880254

`A120327(A087442(comp[∑[n-1]]))`
-/

namespace A324458.P15649693572137880254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A087442 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A324458.P15649693572137880254

/-!
# A324461: Number of simple graphs with n vertices and distinct rotations.

The programs for A324461, there is no canonical definition to state claims against.
-/

/-! ## A324461.P12819932652485486903

`A028310(n)*A306715(A028310(n))`
-/

namespace A324461.P12819932652485486903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A306715 (A028310 n).toNat

end

end A324461.P12819932652485486903

/-! ## A324461.P9105377051721665418

`(A000007(n)+n)*A306715(A000007(n)+n)`
-/

namespace A324461.P9105377051721665418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A306715 (A000007 n + (n : ℤ)).toNat

end

end A324461.P9105377051721665418

/-!
# A324462: Number of simple graphs covering n vertices with distinct rotations.

The programs for A324462, there is no canonical definition to state claims against.
-/

/-! ## A324462.P13657641289647962364

`A166353(3*A228208(n+1))`
-/

namespace A324462.P13657641289647962364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166353 (3 * A228208 (n + 1)).toNat

end

end A324462.P13657641289647962364

/-! ## A324462.P2926631056456474063

`A166353(lcm(3, A228208(n+1)))`
-/

namespace A324462.P2926631056456474063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166353 (Int.lcm 3 (A228208 (n + 1)))

end

end A324462.P2926631056456474063

/-!
# A324463: Number of graphical necklaces covering n vertices.

The programs for A324463, there is no canonical definition to state claims against.
-/

/-! ## A324463.P4868249302875751682

`abs(∏{p}[A217215(n)², #]-n)`
-/

namespace A324463.P4868249302875751682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217215 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - (n : ℤ)|

end

end A324463.P4868249302875751682

/-! ## A324463.P12052050789703579677

`A228599(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A324463.P12052050789703579677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n a =>
  A228599 (a (n - 1)).toNat

end

end A324463.P12052050789703579677

/-!
# A324464: Number of connected graphical necklaces with n vertices.

The programs for A324464, there is no canonical definition to state claims against.
-/

/-! ## A324464.P3611080866253392403

`A373012(or(1, 2^n))`
-/

namespace A324464.P3611080866253392403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373012 (Nat.lor 1 (2 ^ n))

end

end A324464.P3611080866253392403

/-! ## A324464.P15485142796397542317

`A124056(∑[ceil(7^(n-1))])-n`
-/

namespace A324464.P15485142796397542317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A324464.P15485142796397542317

/-!
# A324465: Exponent of highest power of 2 that divides A324152(n).

The programs for A324465, the canonical program `A324465.P3700891872518322350` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324465 has offset 0).

The definition of A324465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324465.P3700891872518322350

`A008486(A000120(n))-A324468(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A324465

/-- `A008486(A000120(n))-A324468(n+1)` -/
def P3700891872518322350.Spec : Prop :=
  ∀ n, P3700891872518322350.a n = A324465 n

theorem P3700891872518322350.correct : P3700891872518322350.Spec := by
  intro n
  simp only [A324465]

end A324465

/-! ## A324465.P227776756690770532

`A324467(n)-A324468(n+1)%A008195(n)`
-/

namespace A324465.P227776756690770532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n - Int.tmod (A324468 (n + 1)) (A008195 n)

end

end A324465.P227776756690770532

namespace A324465

/-- `A324467(n)-A324468(n+1)%A008195(n)` -/
def P227776756690770532.Spec : Prop :=
  ∀ n, P227776756690770532.a n = A324465 n

end A324465

/-! ## A324465.P7298292458037911678

`(A324467(n)-A324468(n+1))%A324474(n+1)`
-/

namespace A324465.P7298292458037911678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324467 n - A324468 (n + 1)) (A324474 (n + 1))

end

end A324465.P7298292458037911678

namespace A324465

/-- `(A324467(n)-A324468(n+1))%A324474(n+1)` -/
def P7298292458037911678.Spec : Prop :=
  ∀ n, P7298292458037911678.a n = A324465 n

end A324465

/-! ## A324465.P3090858972692752830

`A000120(n)-∑[A089263(A000096(n))]`
-/

namespace A324465.P3090858972692752830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324465.P3090858972692752830

namespace A324465

/-- `A000120(n)-∑[A089263(A000096(n))]` -/
def P3090858972692752830.Spec : Prop :=
  ∀ n, P3090858972692752830.a n = A324465 n

end A324465

/-! ## A324465.P11661330156278207521

`∑[A088705(n)-A089263(A000096(n))]`
-/

namespace A324465.P11661330156278207521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n - A089263 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324465.P11661330156278207521

namespace A324465

/-- `∑[A088705(n)-A089263(A000096(n))]` -/
def P11661330156278207521.Spec : Prop :=
  ∀ n, P11661330156278207521.a n = A324465 n

end A324465

/-!
# A324466: Exponent of highest power of 2 that divides multinomial(3*n;n,n,n).

The programs for A324466, the canonical program `A324466.P7130179005898352832` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324466 has offset 0).

The definition of A324466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324466.P7130179005898352832

`3*A000120(n)-A000120(3*n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A324466

/-- `3*A000120(n)-A000120(3*n)` -/
def P7130179005898352832.Spec : Prop :=
  ∀ n, P7130179005898352832.a n = A324466 n

theorem P7130179005898352832.correct : P7130179005898352832.Spec := by
  intro n
  simp only [A324466]

end A324466

/-! ## A324466.P8827370438046428391

`A008585(A000120(n))-A036555(n)`
-/

namespace A324466.P8827370438046428391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A000120 n).toNat - A036555 n

end

end A324466.P8827370438046428391

namespace A324466

/-- `A008585(A000120(n))-A036555(n)` -/
def P8827370438046428391.Spec : Prop :=
  ∀ n, P8827370438046428391.a n = A324466 n

end A324466

/-! ## A324466.P7684938343290033551

`A000120(n)+A000120(n)-A334913(n)`
-/

namespace A324466.P7684938343290033551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A000120 n - A334913 n)

end

end A324466.P7684938343290033551

namespace A324466

/-- `A000120(n)+A000120(n)-A334913(n)` -/
def P7684938343290033551.Spec : Prop :=
  ∀ n, P7684938343290033551.a n = A324466 n

end A324466

/-! ## A324466.P12120830677488710209

`A324467(n)-A036555(n)`
-/

namespace A324466.P12120830677488710209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n - A036555 n

end

end A324466.P12120830677488710209

namespace A324466

/-- `A324467(n)-A036555(n)` -/
def P12120830677488710209.Spec : Prop :=
  ∀ n, P12120830677488710209.a n = A324466 n

end A324466

/-! ## A324466.P12021010715912316810

`A324467(n)-log2(A001316(3*n))`
-/

namespace A324466.P12021010715912316810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A324467 n : ℝ) - Real.logb 2 (A001316 (3 * n) : ℝ)

end

end A324466.P12021010715912316810

namespace A324466

/-- `A324467(n)-log2(A001316(3*n))` -/
def P12021010715912316810.Spec : Prop :=
  ∀ n, P12021010715912316810.a n = (A324466 n : ℝ)

end A324466

/-! ## A324466.P5267311181651911772

`A000120(xor(n, A184617(n)))+A000120(n)`
-/

namespace A324466.P5267311181651911772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (n : ℤ) (A184617 n)).toNat + A000120 n

end

end A324466.P5267311181651911772

namespace A324466

/-- `A000120(xor(n, A184617(n)))+A000120(n)` -/
def P5267311181651911772.Spec : Prop :=
  ∀ n, P5267311181651911772.a n = A324466 n

end A324466

/-! ## A324466.P6704427646458803520

`A005187(A008486(n))-A008486(A005187(n))`
-/

namespace A324466.P6704427646458803520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A008486 n).toNat - A008486 (A005187 n).toNat

end

end A324466.P6704427646458803520

namespace A324466

/-- `A005187(A008486(n))-A008486(A005187(n))` -/
def P6704427646458803520.Spec : Prop :=
  ∀ n, P6704427646458803520.a n = A324466 n

end A324466

/-! ## A324466.P3738631564279496925

`A005187(A008585(n))-A008585(A005187(n))`
-/

namespace A324466.P3738631564279496925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A008585 n).toNat - A008585 (A005187 n).toNat

end

end A324466.P3738631564279496925

namespace A324466

/-- `A005187(A008585(n))-A008585(A005187(n))` -/
def P3738631564279496925.Spec : Prop :=
  ∀ n, P3738631564279496925.a n = A324466 n

end A324466

/-! ## A324466.P10017920881412048138

`A016777(A000120(n))-A046818(2*n)`
-/

namespace A324466.P10017920881412048138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A000120 n).toNat - A046818 (2 * n)

end

end A324466.P10017920881412048138

namespace A324466

/-- `A016777(A000120(n))-A046818(2*n)` -/
def P10017920881412048138.Spec : Prop :=
  ∀ n, P10017920881412048138.a n = A324466 n

end A324466

/-! ## A324466.P13979438563865612900

`A016777(A048881(2*n))-A046818(2*n)`
-/

namespace A324466.P13979438563865612900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A048881 (2 * n)).toNat - A046818 (2 * n)

end

end A324466.P13979438563865612900

namespace A324466

/-- `A016777(A048881(2*n))-A046818(2*n)` -/
def P13979438563865612900.Spec : Prop :=
  ∀ n, P13979438563865612900.a n = A324466 n

end A324466

/-! ## A324466.P11658959523098868992

`A324467(n)-A000120(A006257(3*n))`
-/

namespace A324466.P11658959523098868992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n - A000120 (A006257 (3 * n)).toNat

end

end A324466.P11658959523098868992

namespace A324466

/-- `A324467(n)-A000120(A006257(3*n))` -/
def P11658959523098868992.Spec : Prop :=
  ∀ n, P11658959523098868992.a n = A324466 n

end A324466

/-! ## A324466.P18020226381744040667

`A324467(n)-A000120(3*n)`
-/

namespace A324466.P18020226381744040667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n - A000120 (3 * n)

end

end A324466.P18020226381744040667

namespace A324466

/-- `A324467(n)-A000120(3*n)` -/
def P18020226381744040667.Spec : Prop :=
  ∀ n, P18020226381744040667.a n = A324466 n

end A324466

/-! ## A324466.P17965312325793986142

`A008486(A000120(n))-A000120(A008486(n))`
-/

namespace A324466.P17965312325793986142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A000120 n).toNat - A000120 (A008486 n).toNat

end

end A324466.P17965312325793986142

namespace A324466

/-- `A008486(A000120(n))-A000120(A008486(n))` -/
def P17965312325793986142.Spec : Prop :=
  ∀ n, P17965312325793986142.a n = A324466 n

end A324466

/-! ## A324466.P17392397565679812472

`A008585(A000120(n))-A000120(A008585(n))`
-/

namespace A324466.P17392397565679812472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A000120 n).toNat - A000120 (A008585 n).toNat

end

end A324466.P17392397565679812472

namespace A324466

/-- `A008585(A000120(n))-A000120(A008585(n))` -/
def P17392397565679812472.Spec : Prop :=
  ∀ n, P17392397565679812472.a n = A324466 n

end A324466

/-! ## A324466.P2828721791201225748

`A004134(A008585(n))-A008585(A004134(n))`
-/

namespace A324466.P2828721791201225748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 (A008585 n).toNat - A008585 (A004134 n).toNat

end

end A324466.P2828721791201225748

namespace A324466

/-- `A004134(A008585(n))-A008585(A004134(n))` -/
def P2828721791201225748.Spec : Prop :=
  ∀ n, P2828721791201225748.a n = A324466 n

end A324466

/-! ## A324466.P8449760232756532803

`A011371(A008585(n))-A008585(A011371(n))`
-/

namespace A324466.P8449760232756532803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A008585 n).toNat - A008585 (A011371 n).toNat

end

end A324466.P8449760232756532803

namespace A324466

/-- `A011371(A008585(n))-A008585(A011371(n))` -/
def P8449760232756532803.Spec : Prop :=
  ∀ n, P8449760232756532803.a n = A324466 n

end A324466

/-! ## A324466.P5629945173372268384

`A324467(n)-A324467(3*n)/A323241(2*n+1)`
-/

namespace A324466.P5629945173372268384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 n : ℚ) - (A324467 (3 * n) : ℚ) / (A323241 (2 * n + 1) : ℚ)

end

end A324466.P5629945173372268384

namespace A324466

/-- `A324467(n)-A324467(3*n)/A323241(2*n+1)` -/
def P5629945173372268384.Spec : Prop :=
  ∀ n, P5629945173372268384.a n = (A324466 n : ℚ)

end A324466

/-! ## A324466.P348540761722097820

`A005187(A016777(2*n))-A016777(A005187(2*n))`
-/

namespace A324466.P348540761722097820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A016777 (2 * n)).toNat - A016777 (A005187 (2 * n)).toNat

end

end A324466.P348540761722097820

namespace A324466

/-- `A005187(A016777(2*n))-A016777(A005187(2*n))` -/
def P348540761722097820.Spec : Prop :=
  ∀ n, P348540761722097820.a n = A324466 n

end A324466

/-! ## A324466.P17703387089405638419

`A324467(n)-A001222(A278222(3*n))`
-/

namespace A324466.P17703387089405638419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n - A001222 (A278222 (3 * n)).toNat

end

end A324466.P17703387089405638419

namespace A324466

/-- `A324467(n)-A001222(A278222(3*n))` -/
def P17703387089405638419.Spec : Prop :=
  ∀ n, P17703387089405638419.a n = A324466 n

end A324466

/-! ## A324466.P2073872258296747372

`A324469(A005823(n+1))-A000120(n)`
-/

namespace A324466.P2073872258296747372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324469 (A005823 (n + 1)).toNat - A000120 n

end

end A324466.P2073872258296747372

namespace A324466

/-- `A324469(A005823(n+1))-A000120(n)` -/
def P2073872258296747372.Spec : Prop :=
  ∀ n, P2073872258296747372.a n = A324466 n

end A324466

/-!
# A324467: Three times the binary weight of n: 3*A000120(n).

The programs for A324467, the canonical program `A324467.P5582211504245019994` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324467 has offset 0).

The definition of A324467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*A000120(n)` (program `A324467.P5582211504245019994`, by `A324467.P5582211504245019994.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A324467.P5582211504245019994

`3*A000120(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A324467

/-- `3*A000120(n)` -/
def P5582211504245019994.Spec : Prop :=
  ∀ n, P5582211504245019994.a n = A324467 n

theorem P5582211504245019994.correct : P5582211504245019994.Spec := by
  intro n
  simp only [A324467]

end A324467

/-! ## A324467.P10920065813306414844

`3*val(C(2*n, n), 2)`
-/

namespace A324467.P10920065813306414844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.valuation (Nat.choose (2 * n) n) 2

end

end A324467.P10920065813306414844

namespace A324467

/-- `3*val(C(2*n, n), 2)` -/
def P10920065813306414844.Spec : Prop :=
  ∀ n, (P10920065813306414844.a n : ℤ) = A324467 n

end A324467

/-! ## A324467.P37745550382793212

`a(and(n, n-1))+3` with `a(0)=0`
-/

namespace A324467.P37745550382793212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 3

end

end A324467.P37745550382793212

namespace A324467

/-- `a(and(n, n-1))+3` -/
def P37745550382793212.Spec : Prop :=
  ∀ n, (P37745550382793212.a n : ℤ) = A324467 n

end A324467

/-! ## A324467.P6967262570771837991

`∑[3*∑{e}[xor(n, -n), 2-#]]`
-/

namespace A324467.P6967262570771837991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324467.P6967262570771837991

namespace A324467

/-- `∑[3*∑{e}[xor(n, -n), 2-#]]` -/
def P6967262570771837991.Spec : Prop :=
  ∀ n, P6967262570771837991.a n = A324467 n

end A324467

/-! ## A324467.P14405924887121664232

`a(floor(n/2))+a(n%2)` with `a(0)=0, a(1)=3`
-/

namespace A324467.P14405924887121664232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + a (n % 2)

end

end A324467.P14405924887121664232

namespace A324467

/-- `a(floor(n/2))+a(n%2)` -/
def P14405924887121664232.Spec : Prop :=
  ∀ n, (P14405924887121664232.a n : ℤ) = A324467 n

end A324467

/-! ## A324467.P6345508897232917903

`∑[a(floor(n/2))-a(n-1)]` with `a(0)=0, a(1)=3`
-/

namespace A324467.P6345508897232917903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324467.P6345508897232917903

namespace A324467

/-- `∑[a(floor(n/2))-a(n-1)]` -/
def P6345508897232917903.Spec : Prop :=
  ∀ n, P6345508897232917903.a n = A324467 n

end A324467

/-! ## A324467.P12425984122205249086

`3*(∑[1-∑{e}[or(n, -n), #]]-1)`
-/

namespace A324467.P12425984122205249086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A324467.P12425984122205249086

namespace A324467

/-- `3*(∑[1-∑{e}[or(n, -n), #]]-1)` -/
def P12425984122205249086.Spec : Prop :=
  ∀ n, P12425984122205249086.a n = A324467 n

end A324467

/-! ## A324467.P9233052076311844081

`3*∑[1-val(n, 2)*a(n-1)]` with `a(0)=0`
-/

namespace A324467.P9233052076311844081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - (SequenceMachineLib.valuation n 2 : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324467.P9233052076311844081

namespace A324467

/-- `3*∑[1-val(n, 2)*a(n-1)]` -/
def P9233052076311844081.Spec : Prop :=
  ∀ n, P9233052076311844081.a n = A324467 n

end A324467

/-! ## A324467.P16503116887569756929

`log2(Δ[A116526(n)])`
-/

namespace A324467.P16503116887569756929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116526 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A324467.P16503116887569756929

namespace A324467

/-- `log2(Δ[A116526(n)])` -/
def P16503116887569756929.Spec : Prop :=
  ∀ n, P16503116887569756929.a n = (A324467 n : ℝ)

end A324467

/-! ## A324467.P6224871652206039503

`∑[3*A088705(n)]`
-/

namespace A324467.P6224871652206039503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324467.P6224871652206039503

namespace A324467

/-- `∑[3*A088705(n)]` -/
def P6224871652206039503.Spec : Prop :=
  ∀ n, P6224871652206039503.a n = A324467 n

end A324467

/-! ## A324467.P9498259627817178148

`∑{digits}[A097256(n), sqrt(#)]`
-/

namespace A324467.P9498259627817178148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Real.sqrt (x : ℝ)).sum

end

end A324467.P9498259627817178148

namespace A324467

/-- `∑{digits}[A097256(n), sqrt(#)]` -/
def P9498259627817178148.Spec : Prop :=
  ∀ n, P9498259627817178148.a n = (A324467 n : ℝ)

end A324467

/-! ## A324467.P7268947639520329444

`3*(n-A011371(n))`
-/

namespace A324467.P7268947639520329444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - A011371 n)

end

end A324467.P7268947639520329444

namespace A324467

/-- `3*(n-A011371(n))` -/
def P7268947639520329444.Spec : Prop :=
  ∀ n, P7268947639520329444.a n = A324467 n

theorem P7268947639520329444.correct : P7268947639520329444.Spec := by
  intro n
  simp only [A324467, Nat.add_sub_cancel, A324467.P7268947639520329444.a, A324467.P5582211504245019994.a, A000120, A000120.P2816527436160941581.a, A011371, A011371.P12398255777927387864.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324467

/-! ## A324467.P13797637844948774789

`3*(A092391(n)-n)`
-/

namespace A324467.P13797637844948774789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A092391 n - (n : ℤ))

end

end A324467.P13797637844948774789

namespace A324467

/-- `3*(A092391(n)-n)` -/
def P13797637844948774789.Spec : Prop :=
  ∀ n, P13797637844948774789.a n = A324467 n

theorem P13797637844948774789.correct : P13797637844948774789.Spec := by
  intro n
  simp only [A324467, Nat.add_sub_cancel, A324467.P13797637844948774789.a, A324467.P5582211504245019994.a, A000120, A000120.P2816527436160941581.a, A092391, A092391.P1831081500129819331.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324467

/-! ## A324467.P14113902137568696014

`floor(log2(A255743(n+1)))`
-/

namespace A324467.P14113902137568696014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A255743 (n + 1)).toNat

end

end A324467.P14113902137568696014

namespace A324467

/-- `floor(log2(A255743(n+1)))` -/
def P14113902137568696014.Spec : Prop :=
  ∀ n, (P14113902137568696014.a n : ℤ) = A324467 n

end A324467

/-! ## A324467.P10694373878161623195

`∑{digits}[A169966(n+1), #]`
-/

namespace A324467.P10694373878161623195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A324467.P10694373878161623195

namespace A324467

/-- `∑{digits}[A169966(n+1), #]` -/
def P10694373878161623195.Spec : Prop :=
  ∀ n, (P10694373878161623195.a n : ℤ) = A324467 n

end A324467

/-! ## A324467.P2769471585163015195

`3*∑{digits}[A007088(n), #]`
-/

namespace A324467.P2769471585163015195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A324467.P2769471585163015195

namespace A324467

/-- `3*∑{digits}[A007088(n), #]` -/
def P2769471585163015195.Spec : Prop :=
  ∀ n, (P2769471585163015195.a n : ℤ) = A324467 n

end A324467

/-! ## A324467.P10911065824399895661

`3*(A063787(n+1)-1)`
-/

namespace A324467.P10911065824399895661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A063787 (n + 1) - 1)

end

end A324467.P10911065824399895661

namespace A324467

/-- `3*(A063787(n+1)-1)` -/
def P10911065824399895661.Spec : Prop :=
  ∀ n, P10911065824399895661.a n = A324467 n

theorem P10911065824399895661.correct : P10911065824399895661.Spec := by
  intro n
  simp only [A324467, Nat.add_sub_cancel, A324467.P10911065824399895661.a, A324467.P5582211504245019994.a, A000120, A000120.P2816527436160941581.a, A063787, A063787.P13236937262237871159.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324467

/-! ## A324467.P6628995611108042818

`3/(n+1)*A249154(n)`
-/

namespace A324467.P6628995611108042818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A249154 n : ℚ)

end

end A324467.P6628995611108042818

namespace A324467

/-- `3/(n+1)*A249154(n)` -/
def P6628995611108042818.Spec : Prop :=
  ∀ n, P6628995611108042818.a n = (A324467 n : ℚ)

end A324467

/-! ## A324467.P2506303087259981926

`3*(A230300(n+1)-(n+1))`
-/

namespace A324467.P2506303087259981926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A230300 (n + 1) - (n + 1 : ℤ))

end

end A324467.P2506303087259981926

namespace A324467

/-- `3*(A230300(n+1)-(n+1))` -/
def P2506303087259981926.Spec : Prop :=
  ∀ n, P2506303087259981926.a n = A324467 n

theorem P2506303087259981926.correct : P2506303087259981926.Spec := by
  intro n
  simp only [A324467, Nat.add_sub_cancel, A324467.P2506303087259981926.a, A324467.P5582211504245019994.a, A000120, A000120.P2816527436160941581.a, A230300, A230300.P756127149429480426.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324467

/-! ## A324467.P10002147424722029407

`3*∑[∑{e}[A020639(n+1), #-val(n, 2)]]`
-/

namespace A324467.P10002147424722029407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, ((Nat.factorization (f2 n).natAbs p : ℤ) - (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324467.P10002147424722029407

namespace A324467

/-- `3*∑[∑{e}[A020639(n+1), #-val(n, 2)]]` -/
def P10002147424722029407.Spec : Prop :=
  ∀ n, P10002147424722029407.a n = A324467 n

end A324467

/-!
# A324468: a(n) = r(n) + r(n+1) + r(n+2), where r(n) is the ruler sequence A007814.

The programs for A324468, the canonical program `A324468.P13028189669114012427` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324468 has offset 1).

The definition of A324468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324468.P13028189669114012427

`val(C(n+3, 3), 2)+1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A324468

/-- `val(C(n+3, 3), 2)+1` -/
def P13028189669114012427.Spec : Prop :=
  ∀ n, (P13028189669114012427.a n : ℤ) = A324468 (n + 1)

theorem P13028189669114012427.correct : P13028189669114012427.Spec := by
  intro n
  simp only [A324468, Nat.add_sub_cancel]

end A324468

/-! ## A324468.P809053443686961993

`val(∑[∑[n+1]], 2)+1`
-/

namespace A324468.P809053443686961993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1

end

end A324468.P809053443686961993

namespace A324468

/-- `val(∑[∑[n+1]], 2)+1` -/
def P809053443686961993.Spec : Prop :=
  ∀ n, (P809053443686961993.a n : ℤ) = A324468 (n + 1)

end A324468

/-! ## A324468.P9669637578397886979

`val((n+2)^3-(n+2), 2)`
-/

namespace A324468.P9669637578397886979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (((n + 2) ^ 3 : ℤ) - (n + 2 : ℤ)).toNat 2

end

end A324468.P9669637578397886979

namespace A324468

/-- `val((n+2)^3-(n+2), 2)` -/
def P9669637578397886979.Spec : Prop :=
  ∀ n, (P9669637578397886979.a n : ℤ) = A324468 (n + 1)

end A324468

/-! ## A324468.P14336513201393573250

`A275019(n+1)+1`
-/

namespace A324468.P14336513201393573250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275019 (n + 1) + 1

end

end A324468.P14336513201393573250

namespace A324468

/-- `A275019(n+1)+1` -/
def P14336513201393573250.Spec : Prop :=
  ∀ n, P14336513201393573250.a n = A324468 (n + 1)

end A324468

/-! ## A324468.P2202766996076730369

`val(A099764(n+1), 2)/2`
-/

namespace A324468.P2202766996076730369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A099764 (n + 1)).toNat 2 : ℚ) / 2

end

end A324468.P2202766996076730369

namespace A324468

/-- `val(A099764(n+1), 2)/2` -/
def P2202766996076730369.Spec : Prop :=
  ∀ n, P2202766996076730369.a n = (A324468 (n + 1) : ℚ)

end A324468

/-! ## A324468.P5670307814952405073

`val(A013654(n+1)², 2)/2`
-/

namespace A324468.P5670307814952405073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A013654 (n + 1) ^ 2).toNat 2 : ℚ) / 2

end

end A324468.P5670307814952405073

namespace A324468

/-- `val(A013654(n+1)², 2)/2` -/
def P5670307814952405073.Spec : Prop :=
  ∀ n, P5670307814952405073.a n = (A324468 (n + 1) : ℚ)

end A324468

/-! ## A324468.P12650888416632380348

`val(A159469(n+3)², 2)/2`
-/

namespace A324468.P12650888416632380348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A159469 (n + 3) ^ 2).toNat 2 : ℚ) / 2

end

end A324468.P12650888416632380348

namespace A324468

/-- `val(A159469(n+3)², 2)/2` -/
def P12650888416632380348.Spec : Prop :=
  ∀ n, P12650888416632380348.a n = (A324468 (n + 1) : ℚ)

end A324468

/-! ## A324468.P3252101023395271090

`A005555(A275019(n+1))`
-/

namespace A324468.P3252101023395271090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A275019 (n + 1)).toNat

end

end A324468.P3252101023395271090

namespace A324468

/-- `A005555(A275019(n+1))` -/
def P3252101023395271090.Spec : Prop :=
  ∀ n, P3252101023395271090.a n = A324468 (n + 1)

end A324468

/-! ## A324468.P12471157507142327717

`A177704(n)+A050606(n)`
-/

namespace A324468.P12471157507142327717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 n + A050606 n

end

end A324468.P12471157507142327717

namespace A324468

/-- `A177704(n)+A050606(n)` -/
def P12471157507142327717.Spec : Prop :=
  ∀ n, P12471157507142327717.a n = A324468 (n + 1)

end A324468

/-! ## A324468.P12379409087727338207

`A050604(n)+A011765(n+1)`
-/

namespace A324468.P12379409087727338207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050604 n + A011765 (n + 1)

end

end A324468.P12379409087727338207

namespace A324468

/-- `A050604(n)+A011765(n+1)` -/
def P12379409087727338207.Spec : Prop :=
  ∀ n, P12379409087727338207.a n = A324468 (n + 1)

end A324468

/-! ## A324468.P6476022656739370333

`A050603(n+1)+A007814(n+1)`
-/

namespace A324468.P6476022656739370333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (n + 1) + A007814 (n + 1)

end

end A324468.P6476022656739370333

namespace A324468

/-- `A050603(n+1)+A007814(n+1)` -/
def P6476022656739370333.Spec : Prop :=
  ∀ n, P6476022656739370333.a n = A324468 (n + 1)

end A324468

/-! ## A324468.P2378086112430453393

`A011765(n+1)+A050606(n)+1`
-/

namespace A324468.P2378086112430453393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (n + 1) + (A050606 n + 1)

end

end A324468.P2378086112430453393

namespace A324468

/-- `A011765(n+1)+A050606(n)+1` -/
def P2378086112430453393.Spec : Prop :=
  ∀ n, P2378086112430453393.a n = A324468 (n + 1)

end A324468

/-! ## A324468.P622721778140142240

`A050603(n+1)+A000035(n)*A050603(n)`
-/

namespace A324468.P622721778140142240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (n + 1) + A000035 n * A050603 n

end

end A324468.P622721778140142240

namespace A324468

/-- `A050603(n+1)+A000035(n)*A050603(n)` -/
def P622721778140142240.Spec : Prop :=
  ∀ n, P622721778140142240.a n = A324468 (n + 1)

end A324468

/-! ## A324468.P14938596453782485688

`A050603(n)+A053399(n+1)/A050603(n)`
-/

namespace A324468.P14938596453782485688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050603 n : ℚ) + (A053399 (n + 1) : ℚ) / (A050603 n : ℚ)

end

end A324468.P14938596453782485688

namespace A324468

/-- `A050603(n)+A053399(n+1)/A050603(n)` -/
def P14938596453782485688.Spec : Prop :=
  ∀ n, P14938596453782485688.a n = (A324468 (n + 1) : ℚ)

end A324468

/-! ## A324468.P15413050973284157156

`A007814(n+1)+1+A007814(A008619(n+1))`
-/

namespace A324468.P15413050973284157156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1 + A007814 (A008619 (n + 1)).toNat

end

end A324468.P15413050973284157156

namespace A324468

/-- `A007814(n+1)+1+A007814(A008619(n+1))` -/
def P15413050973284157156.Spec : Prop :=
  ∀ n, P15413050973284157156.a n = A324468 (n + 1)

end A324468

/-! ## A324468.P11411269829385964371

`A136480(n+1)+A000035(n)*A094267(n+1)`
-/

namespace A324468.P11411269829385964371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (n + 1) + A000035 n * A094267 (n + 1)

end

end A324468.P11411269829385964371

namespace A324468

/-- `A136480(n+1)+A000035(n)*A094267(n+1)` -/
def P11411269829385964371.Spec : Prop :=
  ∀ n, P11411269829385964371.a n = A324468 (n + 1)

end A324468

/-! ## A324468.P13456749703066894340

`Δ[A092054(n+1)+A011371(n)]`
-/

namespace A324468.P13456749703066894340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092054 (n + 1) + A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324468.P13456749703066894340

namespace A324468

/-- `Δ[A092054(n+1)+A011371(n)]` -/
def P13456749703066894340.Spec : Prop :=
  ∀ n, P13456749703066894340.a n = A324468 (n + 1)

end A324468

/-! ## A324468.P857528694485250600

`A050605(n+1)+A001511(n+1)`
-/

namespace A324468.P857528694485250600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (n + 1) + A001511 (n + 1)

end

end A324468.P857528694485250600

namespace A324468

/-- `A050605(n+1)+A001511(n+1)` -/
def P857528694485250600.Spec : Prop :=
  ∀ n, P857528694485250600.a n = A324468 (n + 1)

end A324468

/-! ## A324468.P17209045156583370730

`A136480(n+2)+A007814(n+1)`
-/

namespace A324468.P17209045156583370730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (n + 2) + A007814 (n + 1)

end

end A324468.P17209045156583370730

namespace A324468

/-- `A136480(n+2)+A007814(n+1)` -/
def P17209045156583370730.Spec : Prop :=
  ∀ n, P17209045156583370730.a n = A324468 (n + 1)

end A324468

/-! ## A324468.P16317652518663678365

`A050605(n+1)+A007814(n+1)+1`
-/

namespace A324468.P16317652518663678365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (n + 1) + (A007814 (n + 1) + 1)

end

end A324468.P16317652518663678365

namespace A324468

/-- `A050605(n+1)+A007814(n+1)+1` -/
def P16317652518663678365.Spec : Prop :=
  ∀ n, P16317652518663678365.a n = A324468 (n + 1)

end A324468

/-!
# A324469: Exponent of highest power of 3 that divides multinomial(4*n;n,n,n,n).

The programs for A324469, the canonical program `A324469.P7402348818447187183` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324469 has offset 0).

The definition of A324469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324469.P7402348818447187183

`2*A000989(n)+A000989(2*n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A324469

/-- `2*A000989(n)+A000989(2*n)` -/
def P7402348818447187183.Spec : Prop :=
  ∀ n, P7402348818447187183.a n = A324469 n

theorem P7402348818447187183.correct : P7402348818447187183.Spec := by
  intro n
  simp only [A324469]

end A324469

/-! ## A324469.P15145429461572424502

`2*A053735(n)-A053735(4*n)/2`
-/

namespace A324469.P15145429461572424502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A053735 n : ℚ) - (A053735 (4 * n) : ℚ) / 2

end

end A324469.P15145429461572424502

namespace A324469

/-- `2*A053735(n)-A053735(4*n)/2` -/
def P15145429461572424502.Spec : Prop :=
  ∀ n, P15145429461572424502.a n = (A324469 n : ℚ)

end A324469

/-! ## A324469.P11953313496793424338

`2*A053735(n)-A089643(2*n)`
-/

namespace A324469.P11953313496793424338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053735 n - A089643 (2 * n)

end

end A324469.P11953313496793424338

namespace A324469

/-- `2*A053735(n)-A089643(2*n)` -/
def P11953313496793424338.Spec : Prop :=
  ∀ n, P11953313496793424338.a n = A324469 n

end A324469

/-! ## A324469.P15894312514175835873

`A054861(A008586(n))-A008586(A054861(n))`
-/

namespace A324469.P15894312514175835873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A008586 n).toNat - A008586 (A054861 n).toNat

end

end A324469.P15894312514175835873

namespace A324469

/-- `A054861(A008586(n))-A008586(A054861(n))` -/
def P15894312514175835873.Spec : Prop :=
  ∀ n, P15894312514175835873.a n = A324469 n

end A324469

/-! ## A324469.P6703173721531844093

`A004128(4*n)-2*A344853(3*n)`
-/

namespace A324469.P6703173721531844093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (4 * n) - 2 * A344853 (3 * n)

end

end A324469.P6703173721531844093

namespace A324469

/-- `A004128(4*n)-2*A344853(3*n)` -/
def P6703173721531844093.Spec : Prop :=
  ∀ n, P6703173721531844093.a n = A324469 n

end A324469

/-! ## A324469.P6543354661013013401

`A004128(A008574(n))-A008574(A004128(n))`
-/

namespace A324469.P6543354661013013401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (A008574 n).toNat - A008574 (A004128 n).toNat

end

end A324469.P6543354661013013401

namespace A324469

/-- `A004128(A008574(n))-A008574(A004128(n))` -/
def P6543354661013013401.Spec : Prop :=
  ∀ n, P6543354661013013401.a n = A324469 n

end A324469

/-! ## A324469.P13033824349133096827

`A008574(A089792(n))-A089792(A008574(n))`
-/

namespace A324469.P13033824349133096827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A089792 n).toNat - A089792 (A008574 n).toNat

end

end A324469.P13033824349133096827

namespace A324469

/-- `A008574(A089792(n))-A089792(A008574(n))` -/
def P13033824349133096827.Spec : Prop :=
  ∀ n, P13033824349133096827.a n = A324469 n

end A324469

/-! ## A324469.P1640520300675358359

`A001222(A190906(2*n)²*A190906(4*n))`
-/

namespace A324469.P1640520300675358359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A190906 (2 * n) ^ 2 * A190906 (4 * n)).toNat

end

end A324469.P1640520300675358359

namespace A324469

/-- `A001222(A190906(2*n)²*A190906(4*n))` -/
def P1640520300675358359.Spec : Prop :=
  ∀ n, P1640520300675358359.a n = A324469 n

end A324469

/-!
# A324470: Partial sums of ternary tribonacci word A092782.

The programs for A324470, the canonical program `A324470.P11516600818281016258` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324470 has offset 1).

The definition of A324470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324470.P12208154105598607328

`∑[A080843(n)+1]`
-/

namespace A324470.P12208154105598607328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324470.P12208154105598607328

namespace A324470

/-- `∑[A080843(n)+1]` -/
def P12208154105598607328.Spec : Prop :=
  ∀ n, P12208154105598607328.a n = A324470 (n + 1)

theorem P12208154105598607328.correct : P12208154105598607328.Spec := by
  intro n
  simp only [A324470, Nat.add_sub_cancel, A324470.P12208154105598607328.f1, A324470.P12208154105598607328.a, A324470.P11516600818281016258.f1, A324470.P11516600818281016258.a, A080843, A080843.P14729485223719297457.a, A317198, A317198.P16178072195932306559.a, A092782, A092782.P12994304615251165252.a, A317193, A317193.P13677178970524234186.a, A057078, A057078.P4951435475119423572.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324470

/-! ## A324470.P3209484867920022620

`∑[A092782(n+1)]`
-/

namespace A324470.P3209484867920022620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324470.P3209484867920022620

namespace A324470

/-- `∑[A092782(n+1)]` -/
def P3209484867920022620.Spec : Prop :=
  ∀ n, P3209484867920022620.a n = A324470 (n + 1)

end A324470

/-! ## A324470.P11516600818281016258

`∑[2-A317198(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A324470

/-- `∑[2-A317198(n)]` -/
def P11516600818281016258.Spec : Prop :=
  ∀ n, P11516600818281016258.a n = A324470 (n + 1)

theorem P11516600818281016258.correct : P11516600818281016258.Spec := by
  intro n
  simp only [A324470, Nat.add_sub_cancel]

end A324470

/-! ## A324470.P3141891492343080113

`A319198(n)+1+n`
-/

namespace A324470.P3141891492343080113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 n + 1 + (n : ℤ)

end

end A324470.P3141891492343080113

namespace A324470

/-- `A319198(n)+1+n` -/
def P3141891492343080113.Spec : Prop :=
  ∀ n, P3141891492343080113.a n = A324470 (n + 1)

end A324470

/-! ## A324470.P17310516138143823539

`∑[5-Δ[A278040(n)]]`
-/

namespace A324470.P17310516138143823539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324470.P17310516138143823539

namespace A324470

/-- `∑[5-Δ[A278040(n)]]` -/
def P17310516138143823539.Spec : Prop :=
  ∀ n, P17310516138143823539.a n = A324470 (n + 1)

end A324470

/-! ## A324470.P7651163759267686493

`∑[5-A276789(n+1)]`
-/

namespace A324470.P7651163759267686493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A276789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324470.P7651163759267686493

namespace A324470

/-- `∑[5-A276789(n+1)]` -/
def P7651163759267686493.Spec : Prop :=
  ∀ n, P7651163759267686493.a n = A324470 (n + 1)

end A324470

/-! ## A324470.P6079151269099099487

`∑[5-Δ[A003145(n+1)]]`
-/

namespace A324470.P6079151269099099487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324470.P6079151269099099487

namespace A324470

/-- `∑[5-Δ[A003145(n+1)]]` -/
def P6079151269099099487.Spec : Prop :=
  ∀ n, P6079151269099099487.a n = A324470 (n + 1)

end A324470

/-! ## A324470.P7098643752511153046

`∑[5-Δ[A308199(n)]]`
-/

namespace A324470.P7098643752511153046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324470.P7098643752511153046

namespace A324470

/-- `∑[5-Δ[A308199(n)]]` -/
def P7098643752511153046.Spec : Prop :=
  ∀ n, P7098643752511153046.a n = A324470 (n + 1)

end A324470

/-! ## A324470.P5332437638820393950

`A016873(n+1)-A003145(n+2)`
-/

namespace A324470.P5332437638820393950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (n + 1) - A003145 (n + 2)

end

end A324470.P5332437638820393950

namespace A324470

/-- `A016873(n+1)-A003145(n+2)` -/
def P5332437638820393950.Spec : Prop :=
  ∀ n, P5332437638820393950.a n = A324470 (n + 1)

end A324470

/-! ## A324470.P8871738430691476106

`A322407(A276796(n))+n+1`
-/

namespace A324470.P8871738430691476106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322407 (A276796 n).toNat + (n + 1 : ℤ)

end

end A324470.P8871738430691476106

namespace A324470

/-- `A322407(A276796(n))+n+1` -/
def P8871738430691476106.Spec : Prop :=
  ∀ n, P8871738430691476106.a n = A324470 (n + 1)

end A324470

/-! ## A324470.P11193937583840663782

`A322407(A276797(A278039(n)))+n+1`
-/

namespace A324470.P11193937583840663782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322407 (A276797 (A278039 n).toNat).toNat + (n + 1 : ℤ)

end

end A324470.P11193937583840663782

namespace A324470

/-- `A322407(A276797(A278039(n)))+n+1` -/
def P11193937583840663782.Spec : Prop :=
  ∀ n, P11193937583840663782.a n = A324470 (n + 1)

end A324470

/-!
# A324471: a(n) = 10 mod n.

The programs for A324471, the canonical program `A324471.P15416505600227344223` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324471 has offset 1).

The definition of A324471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324471.P15416505600227344223

`and(15, 10%(n+1))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A324471

/-- `and(15, 10%(n+1))` -/
def P15416505600227344223.Spec : Prop :=
  ∀ n, (P15416505600227344223.a n : ℤ) = A324471 (n + 1)

theorem P15416505600227344223.correct : P15416505600227344223.Spec := by
  intro n
  simp only [A324471, Nat.add_sub_cancel]

end A324471

/-!
# A324472: a(n) = 1000 mod n.

The programs for A324472, the canonical program `A324472.P9683868638575580254` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324472 has offset 1).

The definition of A324472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324472.P9683868638575580254

`A038459(A059126(3*n+1))%(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324472

/-- `A038459(A059126(3*n+1))%(n+1)` -/
def P9683868638575580254.Spec : Prop :=
  ∀ n, P9683868638575580254.a n = A324472 (n + 1)

theorem P9683868638575580254.correct : P9683868638575580254.Spec := by
  intro n
  simp only [A324472, Nat.add_sub_cancel]

end A324472

/-!
# A324473: k appears A278045(k)+1 times.

The programs for A324473, there is no canonical definition to state claims against.
-/

/-! ## A324473.P7089393573894317017

`∑[A000035(∑[A246867(n)²])]`
-/

namespace A324473.P7089393573894317017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324473.P7089393573894317017

/-! ## A324473.P7707370990212965821

`∑[A285568(record[A241900(n+1)])]`
-/

namespace A324473.P7707370990212965821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241900 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324473.P7707370990212965821

/-! ## A324473.P14093101783196931343

`∑[A059282(p?[A176237(n+1)])]`
-/

namespace A324473.P14093101783196931343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176237 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059282 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324473.P14093101783196931343

/-! ## A324473.P16713885711708525276

`∑[A137893(p?[A176237(n+1)])]`
-/

namespace A324473.P16713885711708525276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176237 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324473.P16713885711708525276

/-! ## A324473.P13988953826037134441

`∑[A059282(p?[A326911(n+1)])]`
-/

namespace A324473.P13988953826037134441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326911 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059282 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324473.P13988953826037134441

/-!
# A324474: Nonzero ternary words such that any non-initial 1 is preceded by 0, and any non-initial 2 is preceded by 00.

The programs for A324474, there is no canonical definition to state claims against.
-/

/-! ## A324474.P6699748555804403870

`lt[A007444(A113581(n)), A001223(n+2)]`
-/

namespace A324474.P6699748555804403870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A113581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324474.P6699748555804403870

/-! ## A324474.P7445905797223551615

`eq[A001221(A033270(10*(n+1))+1), A007953(n)]`
-/

namespace A324474.P7445905797223551615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A033270 (10 * (n + 1)) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324474.P7445905797223551615

/-! ## A324474.P7300093855511892045

`A171181(A052004(n+2))`
-/

namespace A324474.P7300093855511892045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A052004 (n + 2)).toNat

end

end A324474.P7300093855511892045

/-!
# A324475: k appears t+1 times, where t is the number of trailing zeros in A324474(k).

The programs for A324475, there is no canonical definition to state claims against.
-/

/-! ## A324475.P1918044291597561769

`∑[A079944(∑[A086572(3*n+2)])]`
-/

namespace A324475.P1918044291597561769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086572 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324475.P1918044291597561769

/-! ## A324475.P4389200861325561276

`∑[A079944(∑[A325044(3*n+4)])]`
-/

namespace A324475.P4389200861325561276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325044 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324475.P4389200861325561276

/-! ## A324475.P1411553723324510112

`A130822(A099627(n)+A004396(n))`
-/

namespace A324475.P1411553723324510112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130822 (A099627 n + A004396 n).toNat

end

end A324475.P1411553723324510112

/-! ## A324475.P15339305260060743702

`A130822(A099627(n)+A005206(n))`
-/

namespace A324475.P15339305260060743702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130822 (A099627 n + A005206 n).toNat

end

end A324475.P15339305260060743702

/-! ## A324475.P5819698786284656841

`A283297(∑[A000032(A002260(n+1))])`
-/

namespace A324475.P5819698786284656841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283297 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324475.P5819698786284656841

/-!
# A324477: k appears t+1 times, where t = A364377(k) is the number of trailing zeros in the greedy Jacobsthal representation of k, A265747(k).

The programs for A324477, the canonical program `A324477.P14351997783011068846` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324477 has offset 1).

The definition of A324477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324477.P14351997783011068846

`∑[char[∑[A364377(n+1)+1]]]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A324477

/-- `∑[char[∑[A364377(n+1)+1]]]+1` -/
def P14351997783011068846.Spec : Prop :=
  ∀ n, (P14351997783011068846.a n : ℤ) = A324477 (n + 1)

theorem P14351997783011068846.correct : P14351997783011068846.Spec := by
  intro n
  simp only [A324477, Nat.add_sub_cancel]

end A324477

/-! ## A324477.P10594406694769114037

`∑[A101264(A246832(n)+A001591(n))]`
-/

namespace A324477.P10594406694769114037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A246832 n + A001591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324477.P10594406694769114037

namespace A324477

/-- `∑[A101264(A246832(n)+A001591(n))]` -/
def P10594406694769114037.Spec : Prop :=
  ∀ n, P10594406694769114037.a n = A324477 (n + 1)

end A324477

/-! ## A324477.P13897601343006886746

`∑[A131078(A325535(2*n+1)+A184318(2*n+3))]`
-/

namespace A324477.P13897601343006886746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131078 (A325535 (2 * n + 1) + A184318 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324477.P13897601343006886746

namespace A324477

/-- `∑[A131078(A325535(2*n+1)+A184318(2*n+3))]` -/
def P13897601343006886746.Spec : Prop :=
  ∀ n, P13897601343006886746.a n = A324477 (n + 1)

end A324477

/-! ## A324477.P7615028527703847515

`∑[A003849(A151693(3*n+4))]`
-/

namespace A324477.P7615028527703847515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A151693 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324477.P7615028527703847515

namespace A324477

/-- `∑[A003849(A151693(3*n+4))]` -/
def P7615028527703847515.Spec : Prop :=
  ∀ n, P7615028527703847515.a n = A324477 (n + 1)

end A324477

/-! ## A324477.P7710821426056977149

`∑[A021913(A082897(n+4)-n)]`
-/

namespace A324477.P7710821426056977149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A082897 (n + 4) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324477.P7710821426056977149

namespace A324477

/-- `∑[A021913(A082897(n+4)-n)]` -/
def P7710821426056977149.Spec : Prop :=
  ∀ n, P7710821426056977149.a n = A324477 (n + 1)

end A324477

/-!
# A324478: a(n) = (6/((n+1)*(n+2)*(n+3))) * multinomial(4*n;n,n,n,n).

The programs for A324478, the canonical program `A324478.P1806508435241413495` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324478 has offset 0).

The definition of A324478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324478.P1806508435241413495

`6*(4*n)!/(n!^3*(n+3)!)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A324478

/-- `6*(4*n)!/(n!^3*(n+3)!)` -/
def P1806508435241413495.Spec : Prop :=
  ∀ n, P1806508435241413495.a n = (A324478 n : ℚ)

end A324478

/-! ## A324478.P2356793271171239207

`A000108(2*n)*A186266(n)`
-/

namespace A324478.P2356793271171239207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n) * A186266 n

end

end A324478.P2356793271171239207

namespace A324478

/-- `A000108(2*n)*A186266(n)` -/
def P2356793271171239207.Spec : Prop :=
  ∀ n, P2356793271171239207.a n = A324478 n

end A324478

/-! ## A324478.P17212399136239973800

`A000912(2*n)*A186266(n)`
-/

namespace A324478.P17212399136239973800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000912 (2 * n) * A186266 n

end

end A324478.P17212399136239973800

namespace A324478

/-- `A000912(2*n)*A186266(n)` -/
def P17212399136239973800.Spec : Prop :=
  ∀ n, P17212399136239973800.a n = A324478 n

end A324478

/-! ## A324478.P1215400308672546898

`sqrt(A001246(2*n))*A186266(n)`
-/

namespace A324478.P1215400308672546898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001246 (2 * n) : ℝ) * (A186266 n : ℝ)

end

end A324478.P1215400308672546898

namespace A324478

/-- `sqrt(A001246(2*n))*A186266(n)` -/
def P1215400308672546898.Spec : Prop :=
  ∀ n, P1215400308672546898.a n = (A324478 n : ℝ)

end A324478

/-! ## A324478.P14151870540225042328

`A020639(A008195(n))*A324152(n)`
-/

namespace A324478.P14151870540225042328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008195 n).toNat * A324152 n

end

end A324478.P14151870540225042328

namespace A324478

/-- `A020639(A008195(n))*A324152(n)` -/
def P14151870540225042328.Spec : Prop :=
  ∀ n, P14151870540225042328.a n = A324478 n

end A324478

/-!
# A324480: Consider the numbers on the x-axis in the spiral shown in A274641; a(n) is the distance from n to the origin, or -1 if n never appears on the x-axis.

The programs for A324480, there is no canonical definition to state claims against.
-/

/-! ## A324480.P18173182122809178760

`A005811(A045621(n+1)-A336134(n))`
-/

namespace A324480.P18173182122809178760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A045621 (n + 1) - A336134 n).toNat

end

end A324480.P18173182122809178760

/-! ## A324480.P5536305590196151618

`A317243((n+2)*A349137(n+1))`
-/

namespace A324480.P5536305590196151618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317243 ((n + 2 : ℤ) * A349137 (n + 1)).toNat

end

end A324480.P5536305590196151618

/-! ## A324480.P12395259549940661995

`A000120(A018134(2*n)-A018126(n))`
-/

namespace A324480.P12395259549940661995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A018134 (2 * n) - A018126 n).toNat

end

end A324480.P12395259549940661995

/-!
# A324481: Index of first occurrence of n in the spiral shown in A274641.

The programs for A324481, there is no canonical definition to state claims against.
-/

/-! ## A324481.P3184398817711832570

`lt[A246397(3*n+4), A260564(A274640(n))]`
-/

namespace A324481.P3184398817711832570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246397 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260564 (A274640 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324481.P3184398817711832570

/-!
# A324482: Symmetric inflation orbit counts (b-bar)_{2n} for 1D cut and project patterns with inversion symmetric tau-inflation.

The programs for A324482, there is no canonical definition to state claims against.
-/

/-! ## A324482.P11849565691157393362

`A068397(n+1)-A068397(n+1)%(A016789(n)-n)`
-/

namespace A324482.P11849565691157393362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068397 (n + 1) - Int.tmod (A068397 (n + 1)) (A016789 n - (n : ℤ))

end

end A324482.P11849565691157393362

/-! ## A324482.P18260116572837406576

`(n+1)*A005137(A001590(n))`
-/

namespace A324482.P18260116572837406576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005137 (A001590 n).toNat

end

end A324482.P18260116572837406576

/-! ## A324482.P10579046906778265918

`A117463(n)*A340599(A000302(n))`
-/

namespace A324482.P10579046906778265918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117463 n * A340599 (A000302 n).toNat

end

end A324482.P10579046906778265918

/-! ## A324482.P11692545118382777841

`lcm(A005137(A001590(n)), A103517(n))`
-/

namespace A324482.P11692545118382777841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005137 (A001590 n).toNat) (A103517 n)

end

end A324482.P11692545118382777841

/-! ## A324482.P9112448306066657561

`A005843(A032559(n+1)*A050144(n))`
-/

namespace A324482.P9112448306066657561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A032559 (n + 1) * A050144 n).toNat

end

end A324482.P9112448306066657561

/-!
# A324483: Expansion of (1-x-x^2)^2*(1+x-x^2)^2/((1-3*x+x^2)*(1-x)^2*(1+x)^4).

The programs for A324483, the canonical program `A324483.P5285292881151441286` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324483 has offset 0).

The definition of A324483 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x^2+11x^4-6x^6+x^8)/(1-x-6x^2+x^3+10x^4+x^5-6x^6-x^7+x^8))` (program `A324483.P5285292881151441286`, by `A324483.P5285292881151441286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A324483.P5285292881151441286

`ogf((1-6x^2+11x^4-6x^6+x^8)/(1-x-6x^2+x^3+10x^4+x^5-6x^6-x^7+x^8))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A324483

/-- `ogf((1-6x^2+11x^4-6x^6+x^8)/(1-x-6x^2+x^3+10x^4+x^5-6x^6-x^7+x^8))` -/
def P5285292881151441286.Spec : Prop :=
  ∀ n, P5285292881151441286.a n = A324483 n

theorem P5285292881151441286.correct : P5285292881151441286.Spec := by
  intro n
  simp only [A324483]

end A324483

/-! ## A324483.P18426423909852412413

`A002330(A187761(n)-A080791(n))`
-/

namespace A324483.P18426423909852412413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A187761 n - A080791 n).toNat

end

end A324483.P18426423909852412413

namespace A324483

/-- `A002330(A187761(n)-A080791(n))` -/
def P18426423909852412413.Spec : Prop :=
  ∀ n, P18426423909852412413.a n = A324483 n

end A324483

/-!
# A324484: Inflation orbit counts b^{(2)}_n for 2D cut and project patterns with tau-inflation.

The programs for A324484, the canonical program `A324484.P1683812433180890423` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324484 has offset 1).

The definition of A324484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324484.P1683812433180890423

`(n+1)*A324485(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A324484

/-- `(n+1)*A324485(n+1)` -/
def P1683812433180890423.Spec : Prop :=
  ∀ n, P1683812433180890423.a n = A324484 (n + 1)

theorem P1683812433180890423.correct : P1683812433180890423.Spec := by
  intro n
  simp only [A324484, Nat.add_sub_cancel]

end A324484

/-! ## A324484.P15123049028534971615

`A324485(A328399(2*n))*A328399(2*n)`
-/

namespace A324484.P15123049028534971615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324485 (A328399 (2 * n)).toNat * A328399 (2 * n)

end

end A324484.P15123049028534971615

namespace A324484

/-- `A324485(A328399(2*n))*A328399(2*n)` -/
def P15123049028534971615.Spec : Prop :=
  ∀ n, P15123049028534971615.a n = A324484 (n + 1)

end A324484

/-! ## A324484.P13387056113037312680

`(n+1)*A121482(n)*A277314(A200748(3*n+1))`
-/

namespace A324484.P13387056113037312680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A121482 n * A277314 (A200748 (3 * n + 1)).toNat)

end

end A324484.P13387056113037312680

namespace A324484

/-- `(n+1)*A121482(n)*A277314(A200748(3*n+1))` -/
def P13387056113037312680.Spec : Prop :=
  ∀ n, P13387056113037312680.a n = A324484 (n + 1)

end A324484

/-!
# A324485: a(n) = A324484(n)/n.

The programs for A324485, the canonical program `A324485.P15735106376271294508` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324485 has offset 1).

The definition of A324485 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324484, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324485.P10415754439883714411

`A324484(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324485.P10415754439883714411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324484 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A324485.P10415754439883714411

namespace A324485

/-- `A324484(n+1)/(n+1)` -/
def P10415754439883714411.Spec : Prop :=
  ∀ n, P10415754439883714411.a n = (A324485 (n + 1) : ℚ)

theorem P10415754439883714411.correct : P10415754439883714411.Spec := by
  intro n
  simp only [A324485, Nat.add_sub_cancel, A324485.P10415754439883714411.a, A324485.P15735106376271294508.f1, A324485.P15735106376271294508.a, A032198, A032198.P2517312571610842773.a, A324484, A324484.P1683812433180890423.a, A361019, A361019.P15075616182394612609.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A086831, A086831.P11312860387243571074.a, A365857, A365857.P16907715730324159422.a, A365859, A365859.P2106881842117531136.a, A000010, A000010.P4673923239450215316.a, A003602, A003602.P7612175048291952394.a, A032189, A032189.P10074528383651059138.a, A365858, A365858.P1614978794298170297.f1, A365858.P1614978794298170297.a, A000358, A000358.P12025888969014246484.a, A003557, A003557.P6364735403900941810.a, A060280, A060280.P432054768348529022.f1, A060280.P432054768348529022.a, A110963, A110963.P3344771894533151408.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324485

/-! ## A324485.P15735106376271294508

`∑{d}[n+1, A032198(#)*A361019((n+1)/#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A324485

/-- `∑{d}[n+1, A032198(#)*A361019((n+1)/#)]` -/
def P15735106376271294508.Spec : Prop :=
  ∀ n, P15735106376271294508.a n = A324485 (n + 1)

theorem P15735106376271294508.correct : P15735106376271294508.Spec := by
  intro n
  simp only [A324485, Nat.add_sub_cancel]

end A324485

/-! ## A324485.P11415065310946121921

`A121482(n)*A277314(A200748(3*n+1))`
-/

namespace A324485.P11415065310946121921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121482 n * A277314 (A200748 (3 * n + 1)).toNat

end

end A324485.P11415065310946121921

namespace A324485

/-- `A121482(n)*A277314(A200748(3*n+1))` -/
def P11415065310946121921.Spec : Prop :=
  ∀ n, P11415065310946121921.a n = A324485 (n + 1)

end A324485

/-!
# A324486: G.f. = (1-3*x+x^2)^3*(1+3*x+x^2)^3*(1-x^2)^10/((1-4*x-x^2)*(1-x-x^2)^6*(1+x-x^2)^9).

The programs for A324486, there is no canonical definition to state claims against.
-/

/-! ## A324486.P11676976864441996102

`A231729(2*A267874(n))`
-/

namespace A324486.P11676976864441996102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231729 (2 * A267874 n).toNat

end

end A324486.P11676976864441996102

/-! ## A324486.P6256159379372259086

`A231729(A139250(n)+2*n²+1)`
-/

namespace A324486.P6256159379372259086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231729 (A139250 n + (2 * n ^ 2 : ℤ) + 1).toNat

end

end A324486.P6256159379372259086

/-!
# A324487: a(n) = A001350(n)^3.

The programs for A324487, the canonical program `A324487.P9094464048076715283` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324487 has offset 0).

The definition of A324487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324487.P9094464048076715283

`A001350(n)^3`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A324487

/-- `A001350(n)^3` -/
def P9094464048076715283.Spec : Prop :=
  ∀ n, P9094464048076715283.a n = A324487 n

theorem P9094464048076715283.correct : P9094464048076715283.Spec := by
  intro n
  simp only [A324487]

end A324487

/-! ## A324487.P11402958351546416858

`(A000032(n)-1-(-1)^n)^3`
-/

namespace A324487.P11402958351546416858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - 1 - (-1) ^ n) ^ 3

end

end A324487.P11402958351546416858

namespace A324487

/-- `(A000032(n)-1-(-1)^n)^3` -/
def P11402958351546416858.Spec : Prop :=
  ∀ n, P11402958351546416858.a n = A324487 n

end A324487

/-! ## A324487.P2334771089210983469

`∑{d}[n, A324488(#)]`
-/

namespace A324487.P2334771089210983469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324488 d

end

end A324487.P2334771089210983469

namespace A324487

/-- `∑{d}[n, A324488(#)]` -/
def P2334771089210983469.Spec : Prop :=
  ∀ n, P2334771089210983469.a n = A324487 n

end A324487

/-! ## A324487.P9955375152520452102

`sqrt(A152152(n))^3`
-/

namespace A324487.P9955375152520452102
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A152152 n : ℝ) ^ 3

end

end A324487.P9955375152520452102

namespace A324487

/-- `sqrt(A152152(n))^3` -/
def P9955375152520452102.Spec : Prop :=
  ∀ n, P9955375152520452102.a n = (A324487 n : ℝ)

end A324487

/-! ## A324487.P503999885544726213

`(A098600(n)-1)^3`
-/

namespace A324487.P503999885544726213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098600 n - 1) ^ 3

end

end A324487.P503999885544726213

namespace A324487

/-- `(A098600(n)-1)^3` -/
def P503999885544726213.Spec : Prop :=
  ∀ n, P503999885544726213.a n = A324487 n

end A324487

/-! ## A324487.P2303705448068538127

`(A020878(n)-2)^3`
-/

namespace A324487.P2303705448068538127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020878 n - 2) ^ 3

end

end A324487.P2303705448068538127

namespace A324487

/-- `(A020878(n)-2)^3` -/
def P2303705448068538127.Spec : Prop :=
  ∀ n, P2303705448068538127.a n = A324487 n

theorem P2303705448068538127.correct : P2303705448068538127.Spec := by
  intro n
  simp only [A324487, Nat.add_sub_cancel, A324487.P2303705448068538127.a, A324487.P9094464048076715283.a, A001350, A001350.P9806914175357381787.a, A020878, A020878.P2717610554730428774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324487

/-! ## A324487.P13091373857525027835

`(A181716(n+1)-1)^3`
-/

namespace A324487.P13091373857525027835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181716 (n + 1) - 1) ^ 3

end

end A324487.P13091373857525027835

namespace A324487

/-- `(A181716(n+1)-1)^3` -/
def P13091373857525027835.Spec : Prop :=
  ∀ n, P13091373857525027835.a n = A324487 n

end A324487

/-! ## A324487.P9253112962894283088

`(A000032(n)-and(2, gcd(2, n)))^3`
-/

namespace A324487.P9253112962894283088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - (Nat.land 2 (Nat.gcd 2 n) : ℤ)) ^ 3

end

end A324487.P9253112962894283088

namespace A324487

/-- `(A000032(n)-and(2, gcd(2, n)))^3` -/
def P9253112962894283088.Spec : Prop :=
  ∀ n, P9253112962894283088.a n = A324487 n

end A324487

/-! ## A324487.P2220244934675084387

`A001350(n)*A152152(n)`
-/

namespace A324487.P2220244934675084387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 n * A152152 n

end

end A324487.P2220244934675084387

namespace A324487

/-- `A001350(n)*A152152(n)` -/
def P2220244934675084387.Spec : Prop :=
  ∀ n, P2220244934675084387.a n = A324487 n

theorem P2220244934675084387.correct : P2220244934675084387.Spec := by
  intro n
  simp only [A324487, Nat.add_sub_cancel, A324487.P2220244934675084387.a, A324487.P9094464048076715283.a, A001350, A001350.P9806914175357381787.a, A152152, A152152.P6350815298251437724.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324487

/-! ## A324487.P2303016077097734620

`(A000032(n)-Δ[A109613(n+1)])^3`
-/

namespace A324487.P2303016077097734620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - (f1 (n + 1) - f1 n)) ^ 3

end

end A324487.P2303016077097734620

namespace A324487

/-- `(A000032(n)-Δ[A109613(n+1)])^3` -/
def P2303016077097734620.Spec : Prop :=
  ∀ n, P2303016077097734620.a n = A324487 n

end A324487

/-! ## A324487.P9631386266551069141

`Δ[A001610(n)-A109613(n+3)]^3`
-/

namespace A324487.P9631386266551069141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n - A109613 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A324487.P9631386266551069141

namespace A324487

/-- `Δ[A001610(n)-A109613(n+3)]^3` -/
def P9631386266551069141.Spec : Prop :=
  ∀ n, P9631386266551069141.a n = A324487 n

end A324487

/-! ## A324487.P15721534506508624565

`(A000032(n)-2%A020639(n+3))^3`
-/

namespace A324487.P15721534506508624565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - Int.tmod 2 (A020639 (n + 3))) ^ 3

end

end A324487.P15721534506508624565

namespace A324487

/-- `(A000032(n)-2%A020639(n+3))^3` -/
def P15721534506508624565.Spec : Prop :=
  ∀ n, P15721534506508624565.a n = A324487 n

end A324487

/-! ## A324487.P1392693661203429028

`(A000032(n)-2*A000045(and(1, n-1)))^3`
-/

namespace A324487.P1392693661203429028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - 2 * A000045 (Int.land 1 ((n : ℤ) - 1)).toNat) ^ 3

end

end A324487.P1392693661203429028

namespace A324487

/-- `(A000032(n)-2*A000045(and(1, n-1)))^3` -/
def P1392693661203429028.Spec : Prop :=
  ∀ n, P1392693661203429028.a n = A324487 n

end A324487

/-! ## A324487.P5235246274159521249

`(A000032(n)-A001222(gcd((n+2)², n²)))^3`
-/

namespace A324487.P5235246274159521249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - A001222 (Nat.gcd ((n + 2) ^ 2) (n ^ 2))) ^ 3

end

end A324487.P5235246274159521249

namespace A324487

/-- `(A000032(n)-A001222(gcd((n+2)², n²)))^3` -/
def P5235246274159521249.Spec : Prop :=
  ∀ n, P5235246274159521249.a n = A324487 n

end A324487

/-! ## A324487.P18045367712642775090

`(A000032(n)-(A008683(gcd(n+1, n-1))+1))^3`
-/

namespace A324487.P18045367712642775090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - (A008683 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)) + 1)) ^ 3

end

end A324487.P18045367712642775090

namespace A324487

/-- `(A000032(n)-(A008683(gcd(n+1, n-1))+1))^3` -/
def P18045367712642775090.Spec : Prop :=
  ∀ n, P18045367712642775090.a n = A324487 n

end A324487

/-! ## A324487.P12638420866180786022

`(A000032(n)-Δ[A109613(n+1)])*A152152(n)`
-/

namespace A324487.P12638420866180786022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - (f1 (n + 1) - f1 n)) * A152152 n

end

end A324487.P12638420866180786022

namespace A324487

/-- `(A000032(n)-Δ[A109613(n+1)])*A152152(n)` -/
def P12638420866180786022.Spec : Prop :=
  ∀ n, P12638420866180786022.a n = A324487 n

end A324487

/-! ## A324487.P5418900290097017380

`(A000032(n)-Δ[A109613(n+1)])*(1-A098600(n))²`
-/

namespace A324487.P5418900290097017380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - (f1 (n + 1) - f1 n)) * (1 - A098600 n) ^ 2

end

end A324487.P5418900290097017380

namespace A324487

/-- `(A000032(n)-Δ[A109613(n+1)])*(1-A098600(n))²` -/
def P5418900290097017380.Spec : Prop :=
  ∀ n, P5418900290097017380.a n = A324487 n

end A324487

/-! ## A324487.P12030728625568306322

`(1-A098600(n))²*Δ[A001610(n)-A109613(n+3)]`
-/

namespace A324487.P12030728625568306322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n - A109613 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A098600 n) ^ 2 * (f1 (n + 1) - f1 n)

end

end A324487.P12030728625568306322

namespace A324487

/-- `(1-A098600(n))²*Δ[A001610(n)-A109613(n+3)]` -/
def P12030728625568306322.Spec : Prop :=
  ∀ n, P12030728625568306322.a n = A324487 n

end A324487

/-! ## A324487.P13533540453845367217

`(2*A000045(n+1)-A000045(n)-Δ[A109613(n+1)])^3`
-/

namespace A324487.P13533540453845367217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000045 (n + 1) - A000045 n - (f1 (n + 1) - f1 n)) ^ 3

end

end A324487.P13533540453845367217

namespace A324487

/-- `(2*A000045(n+1)-A000045(n)-Δ[A109613(n+1)])^3` -/
def P13533540453845367217.Spec : Prop :=
  ∀ n, P13533540453845367217.a n = A324487 n

end A324487

/-!
# A324488: Inflation orbit counts b^{(3)}_n for Danzer's F-type tiling and other 3D cut and project patterns with tau-inflation.

The programs for A324488, the canonical program `A324488.P3538692599654446844` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324488 has offset 1).

The definition of A324488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324488.P3538692599654446844

`∑{d}[n+1, A008683((n+1)/#)*(A000032(#)-1-(-1)^#)^3]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A324488

/-- `∑{d}[n+1, A008683((n+1)/#)*(A000032(#)-1-(-1)^#)^3]` -/
def P3538692599654446844.Spec : Prop :=
  ∀ n, P3538692599654446844.a n = A324488 (n + 1)

theorem P3538692599654446844.correct : P3538692599654446844.Spec := by
  intro n
  simp only [A324488, Nat.add_sub_cancel]

end A324488

/-! ## A324488.P2872761049774863778

`(n+1)*A324489(n+1)`
-/

namespace A324488.P2872761049774863778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A324489 (n + 1)

end

end A324488.P2872761049774863778

namespace A324488

/-- `(n+1)*A324489(n+1)` -/
def P2872761049774863778.Spec : Prop :=
  ∀ n, P2872761049774863778.a n = A324488 (n + 1)

end A324488

/-!
# A324489: a(n) = A324488(n)/n.

The programs for A324489, the canonical program `A324489.P6000390153453094978` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324489 has offset 1).

The definition of A324489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324489.P6000390153453094978

`A324488(n+1)/(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A324489

/-- `A324488(n+1)/(n+1)` -/
def P6000390153453094978.Spec : Prop :=
  ∀ n, P6000390153453094978.a n = (A324489 (n + 1) : ℚ)

end A324489

/-!
# A324490: A324487(3*n).

The programs for A324490, the canonical program `A324490.P13266007102125180612` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324490 has offset 0).

The definition of A324490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A324490.P13266007102125180612

`A324487(3*n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A324490

/-- `A324487(3*n)` -/
def P13266007102125180612.Spec : Prop :=
  ∀ n, P13266007102125180612.a n = A324490 n

theorem P13266007102125180612.correct : P13266007102125180612.Spec := by
  intro n
  simp only [A324490]

end A324490

/-! ## A324490.P7789385237504538116

`A001350(3*n)^3`
-/

namespace A324490.P7789385237504538116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (3 * n) ^ 3

end

end A324490.P7789385237504538116

namespace A324490

/-- `A001350(3*n)^3` -/
def P7789385237504538116.Spec : Prop :=
  ∀ n, P7789385237504538116.a n = A324490 n

end A324490

/-! ## A324490.P11989703868488429967

`xor(5, A051929(n))^3`
-/

namespace A324490.P11989703868488429967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A051929 n) ^ 3

end

end A324490.P11989703868488429967

namespace A324490

/-- `xor(5, A051929(n))^3` -/
def P11989703868488429967.Spec : Prop :=
  ∀ n, P11989703868488429967.a n = A324490 n

end A324490

/-! ## A324490.P8098624267899134684

`record[A324487(A324467(n))]`
-/

namespace A324490.P8098624267899134684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324487 (A324467 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324490.P8098624267899134684

namespace A324490

/-- `record[A324487(A324467(n))]` -/
def P8098624267899134684.Spec : Prop :=
  ∀ n, P8098624267899134684.a n = A324490 n

end A324490

/-! ## A324490.P10866435015335507527

`lcm(2, A324487(A008585(n)))`
-/

namespace A324490.P10866435015335507527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A324487 (A008585 n).toNat)

end

end A324490.P10866435015335507527

namespace A324490

/-- `lcm(2, A324487(A008585(n)))` -/
def P10866435015335507527.Spec : Prop :=
  ∀ n, (P10866435015335507527.a n : ℤ) = A324490 n

end A324490

/-!
# A324491: Inflation orbit counts b-hat^{(3)}_n for Kramer-Neri P-type tiling and other 3D cut and project patterns with tau^3-inflation.

The programs for A324491, there is no canonical definition to state claims against.
-/

/-! ## A324491.P1289555490135078170

`(n+1)*A324492(n+1)`
-/

namespace A324491.P1289555490135078170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A324492 (n + 1)

end

end A324491.P1289555490135078170

/-!
# A324492: A324491(n)/n.

The programs for A324492, there is no canonical definition to state claims against.
-/

/-! ## A324492.P7500346570892071435

`A324491(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324492.P7500346570892071435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324491 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A324492.P7500346570892071435

/-!
# A324496: Numerator of fractional part of average number of bit toggles to reach n as defined in A324495. The denominator is given in A324497.

The programs for A324496, there is no canonical definition to state claims against.
-/

/-! ## A324496.P5044133536643043656

`A086508(A324495(n+1))%A324497(n+1)`
-/

namespace A324496.P5044133536643043656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086508 (A324495 (n + 1)).toNat) (A324497 (n + 1))

end

end A324496.P5044133536643043656

