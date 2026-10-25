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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C003
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
# A068306: Numbers n such that n*tau(n) < sigma(n)*bigomega(n) where tau(n)=A000005(n), sigma(n)=A000203(n), and bigomega(n)=A001222(n).

The programs for A068306, the canonical program `A068306.P5310264729729129435` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068306 has offset 1).

The definition of A068306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068306.P5310264729729129435

`lt[A240471(n+1), A001222(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A068306

/-- `lt[A240471(n+1), A001222(n+1)]+1` -/
def P5310264729729129435.Spec : Prop :=
  ∀ n, (P5310264729729129435.a n : ℤ) = A068306 (n + 1)

theorem P5310264729729129435.correct : P5310264729729129435.Spec := by
  intro n
  simp only [A068306, Nat.add_sub_cancel]

end A068306

/-! ## A068306.P235326085573124923

`lt[A008621(n), A188584(n+1)]+1`
-/

namespace A068306.P235326085573124923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068306.P235326085573124923

namespace A068306

/-- `lt[A008621(n), A188584(n+1)]+1` -/
def P235326085573124923.Spec : Prop :=
  ∀ n, (P235326085573124923.a n : ℤ) = A068306 (n + 1)

end A068306

/-! ## A068306.P6099229007903864089

`lt[A347562(A025487(n+1)), A140185(n)]`
-/

namespace A068306.P6099229007903864089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347562 (A025487 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068306.P6099229007903864089

namespace A068306

/-- `lt[A347562(A025487(n+1)), A140185(n)]` -/
def P6099229007903864089.Spec : Prop :=
  ∀ n, (P6099229007903864089.a n : ℤ) = A068306 (n + 1)

end A068306

/-! ## A068306.P17209205190587743426

`lt[A086916(n+1), A169780(A000001(n))]`
-/

namespace A068306.P17209205190587743426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169780 (A000001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068306.P17209205190587743426

namespace A068306

/-- `lt[A086916(n+1), A169780(A000001(n))]` -/
def P17209205190587743426.Spec : Prop :=
  ∀ n, (P17209205190587743426.a n : ℤ) = A068306 (n + 1)

end A068306

/-! ## A068306.P4341398703793988428

`lt[sqrt(A298423(n)), A000001(n)]`
-/

namespace A068306.P4341398703793988428
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A298423 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A068306.P4341398703793988428

namespace A068306

/-- `lt[sqrt(A298423(n)), A000001(n)]` -/
def P4341398703793988428.Spec : Prop :=
  ∀ n, (P4341398703793988428.a n : ℤ) = A068306 (n + 1)

end A068306

/-!
# A068307: From Goldbach problem: number of decompositions of n into a sum of three primes.

The programs for A068307, there is no canonical definition to state claims against.
-/

/-! ## A068307.P16939312220971611460

`A083338(xor(n, A060576(n)))`
-/

namespace A068307.P16939312220971611460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (Int.xor (n : ℤ) (A060576 n)).toNat

end

end A068307.P16939312220971611460

/-! ## A068307.P8177399555451077091

`A125688(n+1)+A046926(n+1)`
-/

namespace A068307.P8177399555451077091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (n + 1) + A046926 (n + 1)

end

end A068307.P8177399555451077091

/-! ## A068307.P5456876254066971822

`∑{d}[n+1, A008683(#)*A079056((n+1)/#)]`
-/

namespace A068307.P5456876254066971822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A079056 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068307.P5456876254066971822

/-! ## A068307.P8883070840153373156

`A083338(A004442(A159075(n)+n))`
-/

namespace A068307.P8883070840153373156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (A004442 (A159075 n + (n : ℤ)).toNat).toNat

end

end A068307.P8883070840153373156

/-! ## A068307.P13262211815932260696

`A083338(A004442(n)-A159075(n))`
-/

namespace A068307.P13262211815932260696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (A004442 n - A159075 n).toNat

end

end A068307.P13262211815932260696

/-! ## A068307.P55042203624544837

`A071335(n+1)-(A061358(n+1)+A010051(n+1))`
-/

namespace A068307.P55042203624544837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) - (A061358 (n + 1) + A010051 (n + 1))

end

end A068307.P55042203624544837

/-! ## A068307.P17378960013177177785

`A083338(A004442(n)+A000038(A004442(n)))`
-/

namespace A068307.P17378960013177177785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (A004442 n + A000038 (A004442 n).toNat).toNat

end

end A068307.P17378960013177177785

/-! ## A068307.P17259012087445795886

`A355199(n+1)/(n+1)`
-/

namespace A068307.P17259012087445795886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355199 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A068307.P17259012087445795886

/-! ## A068307.P10100189193128359749

`A083338(xor(1, A233583(n+1)))`
-/

namespace A068307.P10100189193128359749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (Int.xor 1 (A233583 (n + 1))).toNat

end

end A068307.P10100189193128359749

/-! ## A068307.P14095994730760675312

`A083338(A004442(A233583(n+1)))`
-/

namespace A068307.P14095994730760675312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (A004442 (A233583 (n + 1)).toNat).toNat

end

end A068307.P14095994730760675312

/-! ## A068307.P8705975327583860919

`A083338(xor(1, A190353(A023036(n))))`
-/

namespace A068307.P8705975327583860919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (Int.xor 1 (A190353 (A023036 n).toNat)).toNat

end

end A068307.P8705975327583860919

/-!
# A068309: Number of different lucky numbers occurring when 2n is expressed as p1+q1 = ... = pk+qk where pk,qk are lucky numbers with pk <= qk.

The programs for A068309, there is no canonical definition to state claims against.
-/

/-! ## A068309.P8002976667823619179

`2*A002850(n+1)-A145649(n+1)`
-/

namespace A068309.P8002976667823619179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002850 (n + 1) - A145649 (n + 1)

end

end A068309.P8002976667823619179

/-! ## A068309.P5694946058687520839

`A005843(A002850(n+1))-A145649(n+1)`
-/

namespace A068309.P5694946058687520839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002850 (n + 1)).toNat - A145649 (n + 1)

end

end A068309.P5694946058687520839

/-! ## A068309.P15808992869741854809

`∏{e}[A141554(∑[A224652(n+1)])+1, #+1]`
-/

namespace A068309.P15808992869741854809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224652 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141554 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A068309.P15808992869741854809

/-!
# A068310: n^2 - 1 divided by its largest square divisor.

The programs for A068310, the canonical program `A068310.P4092952894517886942` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068310 has offset 2).

The definition of A068310 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068310.P4092952894517886942

`A007913((n+2)²-1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A068310

/-- `A007913((n+2)²-1)` -/
def P4092952894517886942.Spec : Prop :=
  ∀ n, P4092952894517886942.a n = A068310 (n + 2)

theorem P4092952894517886942.correct : P4092952894517886942.Spec := by
  intro n
  simp only [A068310, Nat.add_sub_cancel]

end A068310

/-! ## A068310.P3037802624972018968

`A005563(n+1)/A008833((n+2)²-1)`
-/

namespace A068310.P3037802624972018968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005563 (n + 1) : ℚ) / (A008833 ((n + 2) ^ 2 - 1) : ℚ)

end

end A068310.P3037802624972018968

namespace A068310

/-- `A005563(n+1)/A008833((n+2)²-1)` -/
def P3037802624972018968.Spec : Prop :=
  ∀ n, P3037802624972018968.a n = (A068310 (n + 2) : ℚ)

end A068310

/-! ## A068310.P17688759729151327165

`A364900(n+2)*A364900(n)`
-/

namespace A068310.P17688759729151327165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (n + 2) * A364900 n

end

end A068310.P17688759729151327165

namespace A068310

/-- `A364900(n+2)*A364900(n)` -/
def P17688759729151327165.Spec : Prop :=
  ∀ n, P17688759729151327165.a n = A068310 (n + 2)

end A068310

/-! ## A068310.P4859048894048486264

`A005563(n+1)/A358821(n+2)`
-/

namespace A068310.P4859048894048486264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005563 (n + 1) : ℚ) / (A358821 (n + 2) : ℚ)

end

end A068310.P4859048894048486264

namespace A068310

/-- `A005563(n+1)/A358821(n+2)` -/
def P4859048894048486264.Spec : Prop :=
  ∀ n, P4859048894048486264.a n = (A068310 (n + 2) : ℚ)

end A068310

/-! ## A068310.P13272024439983954815

`A049457(2*(n+1))`
-/

namespace A068310.P13272024439983954815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049457 (2 * (n + 1))

end

end A068310.P13272024439983954815

namespace A068310

/-- `A049457(2*(n+1))` -/
def P13272024439983954815.Spec : Prop :=
  ∀ n, P13272024439983954815.a n = A068310 (n + 2)

end A068310

/-! ## A068310.P10107403202044225022

`∏{p}[A007913(∑[A005408(n+1)]), #]`
-/

namespace A068310.P10107403202044225022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A068310.P10107403202044225022

namespace A068310

/-- `∏{p}[A007913(∑[A005408(n+1)]), #]` -/
def P10107403202044225022.Spec : Prop :=
  ∀ n, (P10107403202044225022.a n : ℤ) = A068310 (n + 2)

end A068310

/-! ## A068310.P6781056601789799536

`A000027(A007913(∑[a(n-1)+2]))` with `a(0)=3`
-/

namespace A068310.P6781056601789799536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A007913 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A068310.P6781056601789799536

namespace A068310

/-- `A000027(A007913(∑[a(n-1)+2]))` -/
def P6781056601789799536.Spec : Prop :=
  ∀ n, P6781056601789799536.a n = A068310 (n + 2)

end A068310

/-! ## A068310.P15435598058128813983

`A007913(∑[A005408(n+1)])%A027620(n)`
-/

namespace A068310.P15435598058128813983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A027620 n)

end

end A068310.P15435598058128813983

namespace A068310

/-- `A007913(∑[A005408(n+1)])%A027620(n)` -/
def P15435598058128813983.Spec : Prop :=
  ∀ n, P15435598058128813983.a n = A068310 (n + 2)

end A068310

/-!
# A068311: Arithmetic derivative of n!.

The programs for A068311, the canonical program `A068311.P10657413237512697143` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068311 has offset 0).

The definition of A068311 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068311.P10657413237512697143

`A003415(A000142(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068311

/-- `A003415(A000142(n))` -/
def P10657413237512697143.Spec : Prop :=
  ∀ n, P10657413237512697143.a n = A068311 n

theorem P10657413237512697143.correct : P10657413237512697143.Spec := by
  intro n
  simp only [A068311]

end A068311

/-! ## A068311.P9942375367991464654

`A328099(n!)`
-/

namespace A068311.P9942375367991464654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (Nat.factorial n)

end

end A068311.P9942375367991464654

namespace A068311

/-- `A328099(n!)` -/
def P9942375367991464654.Spec : Prop :=
  ∀ n, P9942375367991464654.a n = A068311 n

end A068311

/-! ## A068311.P6506287381412366408

`∑{d}[n!, A300251(#)]`
-/

namespace A068311.P6506287381412366408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d

end

end A068311.P6506287381412366408

namespace A068311

/-- `∑{d}[n!, A300251(#)]` -/
def P6506287381412366408.Spec : Prop :=
  ∀ n, P6506287381412366408.a n = A068311 n

end A068311

/-! ## A068311.P3467764885519892477

`A328099(∏[round(1/acot(n))])`
-/

namespace A068311.P3467764885519892477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068311.P3467764885519892477

namespace A068311

/-- `A328099(∏[round(1/acot(n))])` -/
def P3467764885519892477.Spec : Prop :=
  ∀ n, P3467764885519892477.a n = A068311 n

end A068311

/-! ## A068311.P1873917837093030144

`A328099(∏[ceil(abs(γ-n))])`
-/

namespace A068311.P1873917837093030144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068311.P1873917837093030144

namespace A068311

/-- `A328099(∏[ceil(abs(γ-n))])` -/
def P1873917837093030144.Spec : Prop :=
  ∀ n, P1873917837093030144.a n = A068311 n

end A068311

/-!
# A068312: Arithmetic derivative of triangular numbers.

The programs for A068312, the canonical program `A068312.P1379280089161861834` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068312 has offset 0).

The definition of A068312 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068312.P1379280089161861834

`A003415(A000217(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068312

/-- `A003415(A000217(n))` -/
def P1379280089161861834.Spec : Prop :=
  ∀ n, P1379280089161861834.a n = A068312 n

theorem P1379280089161861834.correct : P1379280089161861834.Spec := by
  intro n
  simp only [A068312]

end A068312

/-! ## A068312.P9267850971243532799

`∑{d}[∑[n], A300251(#)]`
-/

namespace A068312.P9267850971243532799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d

end

end A068312.P9267850971243532799

namespace A068312

/-- `∑{d}[∑[n], A300251(#)]` -/
def P9267850971243532799.Spec : Prop :=
  ∀ n, P9267850971243532799.a n = A068312 n

end A068312

/-! ## A068312.P6173269094423033276

`A327858(∑[n])*A351230(∑[n])`
-/

namespace A068312.P6173269094423033276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 (∑ j ∈ Finset.range (n + 1), f1 j) * A351230 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A068312.P6173269094423033276

namespace A068312

/-- `A327858(∑[n])*A351230(∑[n])` -/
def P6173269094423033276.Spec : Prop :=
  ∀ n, P6173269094423033276.a n = A068312 n

end A068312

/-! ## A068312.P3986918584059436817

`(A000007(n)+1)*∑{d}[A000217(n), A300251(#)]`
-/

namespace A068312.P3986918584059436817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * (∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d)

end

end A068312.P3986918584059436817

namespace A068312

/-- `(A000007(n)+1)*∑{d}[A000217(n), A300251(#)]` -/
def P3986918584059436817.Spec : Prop :=
  ∀ n, P3986918584059436817.a n = A068312 n

end A068312

/-! ## A068312.P13741317971983059596

`∑{d}[A000217(n), A300251(#)]%A000040(n+1)²`
-/

namespace A068312.P13741317971983059596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d) (A000040 (n + 1) ^ 2)

end

end A068312.P13741317971983059596

namespace A068312

/-- `∑{d}[A000217(n), A300251(#)]%A000040(n+1)²` -/
def P13741317971983059596.Spec : Prop :=
  ∀ n, P13741317971983059596.a n = A068312 n

end A068312

/-! ## A068312.P11201220947870798137

`A300252(A179865(n+1))+A300251(A179865(n+1))`
-/

namespace A068312.P11201220947870798137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300252 (A179865 (n + 1)).toNat + A300251 (A179865 (n + 1)).toNat

end

end A068312.P11201220947870798137

namespace A068312

/-- `A300252(A179865(n+1))+A300251(A179865(n+1))` -/
def P11201220947870798137.Spec : Prop :=
  ∀ n, P11201220947870798137.a n = A068312 n

end A068312

/-! ## A068312.P9130600745830939361

`A003415(∑[n])`
-/

namespace A068312.P9130600745830939361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068312.P9130600745830939361

namespace A068312

/-- `A003415(∑[n])` -/
def P9130600745830939361.Spec : Prop :=
  ∀ n, P9130600745830939361.a n = A068312 n

end A068312

/-! ## A068312.P108086135805287453

`A168036(∑[n])+∑[n]`
-/

namespace A068312.P108086135805287453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A068312.P108086135805287453

namespace A068312

/-- `A168036(∑[n])+∑[n]` -/
def P108086135805287453.Spec : Prop :=
  ∀ n, P108086135805287453.a n = A068312 n

end A068312

/-! ## A068312.P13202070581348788965

`A129283(∑[n])-∑[n]`
-/

namespace A068312.P13202070581348788965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A068312.P13202070581348788965

namespace A068312

/-- `A129283(∑[n])-∑[n]` -/
def P13202070581348788965.Spec : Prop :=
  ∀ n, P13202070581348788965.a n = A068312 n

end A068312

/-! ## A068312.P8386113541736258527

`A003415(C(n+1, 2))/(char[1]+1)`
-/

namespace A068312.P8386113541736258527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (Nat.choose (n + 1) 2) : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A068312.P8386113541736258527

namespace A068312

/-- `A003415(C(n+1, 2))/(char[1]+1)` -/
def P8386113541736258527.Spec : Prop :=
  ∀ n, P8386113541736258527.a n = (A068312 n : ℚ)

end A068312

/-! ## A068312.P2261362174732594222

`∑{d}[A003415((n²+n)/2), A000010(#)]`
-/

namespace A068312.P2261362174732594222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A068312.P2261362174732594222

namespace A068312

/-- `∑{d}[A003415((n²+n)/2), A000010(#)]` -/
def P2261362174732594222.Spec : Prop :=
  ∀ n, P2261362174732594222.a n = A068312 n

end A068312

/-! ## A068312.P18326461785183200662

`A003415(C(n+1, 2))+A000038(n+1)`
-/

namespace A068312.P18326461785183200662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Nat.choose (n + 1) 2) + A000038 (n + 1)

end

end A068312.P18326461785183200662

namespace A068312

/-- `A003415(C(n+1, 2))+A000038(n+1)` -/
def P18326461785183200662.Spec : Prop :=
  ∀ n, P18326461785183200662.a n = A068312 n

end A068312

/-! ## A068312.P11856835854108238919

`A007318(C(2, n))*A003415(C(n+1, 2))`
-/

namespace A068312.P11856835854108238919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A003415 (Nat.choose (n + 1) 2)

end

end A068312.P11856835854108238919

namespace A068312

/-- `A007318(C(2, n))*A003415(C(n+1, 2))` -/
def P11856835854108238919.Spec : Prop :=
  ∀ n, P11856835854108238919.a n = A068312 n

end A068312

/-! ## A068312.P9414854376112119562

`A319703(A004277(∑[n]))`
-/

namespace A068312.P9414854376112119562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A004277 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A068312.P9414854376112119562

namespace A068312

/-- `A319703(A004277(∑[n]))` -/
def P9414854376112119562.Spec : Prop :=
  ∀ n, P9414854376112119562.a n = A068312 n

end A068312

/-! ## A068312.P16247904727753559290

`A319703(A103505(n+1))`
-/

namespace A068312.P16247904727753559290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A103505 (n + 1)).toNat

end

end A068312.P16247904727753559290

namespace A068312

/-- `A319703(A103505(n+1))` -/
def P16247904727753559290.Spec : Prop :=
  ∀ n, P16247904727753559290.a n = A068312 n

end A068312

/-! ## A068312.P735849757623363631

`A319703(A028310(n)+n²)`
-/

namespace A068312.P735849757623363631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A028310 n + (n ^ 2 : ℤ)).toNat

end

end A068312.P735849757623363631

namespace A068312

/-- `A319703(A028310(n)+n²)` -/
def P735849757623363631.Spec : Prop :=
  ∀ n, P735849757623363631.a n = A068312 n

end A068312

/-! ## A068312.P4986760790514110332

`A319703((n+1)*A028310(n))`
-/

namespace A068312.P4986760790514110332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 ((n + 1 : ℤ) * A028310 n).toNat

end

end A068312.P4986760790514110332

namespace A068312

/-- `A319703((n+1)*A028310(n))` -/
def P4986760790514110332.Spec : Prop :=
  ∀ n, P4986760790514110332.a n = A068312 n

end A068312

/-! ## A068312.P15866936783945930593

`A258197(∑[n+1]+2)`
-/

namespace A068312.P15866936783945930593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258197 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A068312.P15866936783945930593

namespace A068312

/-- `A258197(∑[n+1]+2)` -/
def P15866936783945930593.Spec : Prop :=
  ∀ n, P15866936783945930593.a n = A068312 n

end A068312

/-!
# A068313: Number of (0,1)-matrices with sum of entries equal to n and no zero rows or columns, with weakly decreasing row sums and column sums.

The programs for A068313, there is no canonical definition to state claims against.
-/

/-! ## A068313.P9489520047600545982

`A356297(n+1)-A330368(A000108(n))`
-/

namespace A068313.P9489520047600545982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356297 (n + 1) - A330368 (A000108 n).toNat

end

end A068313.P9489520047600545982

/-!
# A068314: Smallest integer that can be expressed as the sum of consecutive odd numbers in exactly n ways.

The programs for A068314, there is no canonical definition to state claims against.
-/

/-! ## A068314.P3628917447434594351

`A000210(n+1)*A131861(A069217(n+1))`
-/

namespace A068314.P3628917447434594351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000210 (n + 1) * A131861 (A069217 (n + 1)).toNat

end

end A068314.P3628917447434594351

/-!
# A068315: For numbers k such that A025474(k) > 1 and A025474(k+1) > 1, sequence gives A000961(k).

The programs for A068315, there is no canonical definition to state claims against.
-/

/-! ## A068315.P804313942713852119

`A246655(A379156(n+1))`
-/

namespace A068315.P804313942713852119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A379156 (n + 1)).toNat

end

end A068315.P804313942713852119

/-!
# A068317: Numbers n such that n*tau(n) > omega(n)*prime(n) where tau(n) is the number of divisors of n and omega(n) the number of distinct prime factors of n.

The programs for A068317, there is no canonical definition to state claims against.
-/

/-! ## A068317.P5352436945977404608

`record[and(n-A294015(n+1), A134361(n+1))]`
-/

namespace A068317.P5352436945977404608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A294015 (n + 1)) (A134361 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068317.P5352436945977404608

/-! ## A068317.P10106174545389811198

`record[and(A134361(n+1), A294015(n+1))]`
-/

namespace A068317.P10106174545389811198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134361 (n + 1)) (A294015 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068317.P10106174545389811198

/-! ## A068317.P2815467526383619439

`lt[A057364(n), A037291(n+1)]+1`
-/

namespace A068317.P2815467526383619439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068317.P2815467526383619439

/-! ## A068317.P13795601995406245050

`lt[A340068(n+1), A037291(n+1)]+1`
-/

namespace A068317.P13795601995406245050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068317.P13795601995406245050

/-! ## A068317.P8535744729267751193

`eq[A008683(A331927(n)), A126760(n)]`
-/

namespace A068317.P8535744729267751193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A331927 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068317.P8535744729267751193

/-!
# A068318: Sum of prime factors of n-th semiprime.

The programs for A068318, the canonical program `A068318.P11836828238925648689` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068318 has offset 1).

The definition of A068318 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A001414, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068318.P11836828238925648689

`A001414(A001358(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A068318

/-- `A001414(A001358(n+1))` -/
def P11836828238925648689.Spec : Prop :=
  ∀ n, P11836828238925648689.a n = A068318 (n + 1)

theorem P11836828238925648689.correct : P11836828238925648689.Spec := by
  intro n
  simp only [A068318, Nat.add_sub_cancel]

end A068318

/-! ## A068318.P10516075300255167202

`A084126(n+1)+A084127(n+1)`
-/

namespace A068318.P10516075300255167202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1) + A084127 (n + 1)

end

end A068318.P10516075300255167202

namespace A068318

/-- `A084126(n+1)+A084127(n+1)` -/
def P10516075300255167202.Spec : Prop :=
  ∀ n, P10516075300255167202.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P14905311279295563667

`A001414(A186621(n+1)+1)`
-/

namespace A068318.P14905311279295563667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A186621 (n + 1) + 1).toNat

end

end A068318.P14905311279295563667

namespace A068318

/-- `A001414(A186621(n+1)+1)` -/
def P14905311279295563667.Spec : Prop :=
  ∀ n, P14905311279295563667.a n = A068318 (n + 1)

theorem P14905311279295563667.correct : P14905311279295563667.Spec := by
  intro n
  simp only [A068318, Nat.add_sub_cancel, A068318.P14905311279295563667.a, A068318.P11836828238925648689.a, A001358, A001358.P632087320844056370.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A186621, A186621.P5089299060388261365.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068318

/-! ## A068318.P10860836042456928388

`A001414(A088707(n+1)-1)`
-/

namespace A068318.P10860836042456928388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A088707 (n + 1) - 1).toNat

end

end A068318.P10860836042456928388

namespace A068318

/-- `A001414(A088707(n+1)-1)` -/
def P10860836042456928388.Spec : Prop :=
  ∀ n, P10860836042456928388.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P1320167075453142446

`A001414(A075818(n+1))-2`
-/

namespace A068318.P1320167075453142446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A075818 (n + 1)).toNat - 2

end

end A068318.P1320167075453142446

namespace A068318

/-- `A001414(A075818(n+1))-2` -/
def P1320167075453142446.Spec : Prop :=
  ∀ n, P1320167075453142446.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P18324986344863809096

`A001414(A075818(n+1)/2)`
-/

namespace A068318.P18324986344863809096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A068318.P18324986344863809096

namespace A068318

/-- `A001414(A075818(n+1)/2)` -/
def P18324986344863809096.Spec : Prop :=
  ∀ n, P18324986344863809096.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P6737522851408962323

`A001414(eq[2, A001222(n+1)]+1)`
-/

namespace A068318.P6737522851408962323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A068318.P6737522851408962323

namespace A068318

/-- `A001414(eq[2, A001222(n+1)]+1)` -/
def P6737522851408962323.Spec : Prop :=
  ∀ n, P6737522851408962323.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P9941856053484879329

`A001358(n+1)-A176347(n+1)`
-/

namespace A068318.P9941856053484879329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - A176347 (n + 1)

end

end A068318.P9941856053484879329

namespace A068318

/-- `A001358(n+1)-A176347(n+1)` -/
def P9941856053484879329.Spec : Prop :=
  ∀ n, P9941856053484879329.a n = A068318 (n + 1)

theorem P9941856053484879329.correct : P9941856053484879329.Spec := by
  intro n
  simp only [A068318, Nat.add_sub_cancel, A068318.P9941856053484879329.a, A068318.P11836828238925648689.a, A001358, A001358.P632087320844056370.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A176347, A176347.P9883716587743327041.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068318

/-! ## A068318.P10359386151391051815

`A255369(A001358(2*n+1-n))`
-/

namespace A068318.P10359386151391051815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255369 (A001358 (2 * n + 1 - n)).toNat

end

end A068318.P10359386151391051815

namespace A068318

/-- `A255369(A001358(2*n+1-n))` -/
def P10359386151391051815.Spec : Prop :=
  ∀ n, P10359386151391051815.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P9449204524820825641

`A109313(n+1)+2*A084126(n+1)`
-/

namespace A068318.P9449204524820825641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109313 (n + 1) + 2 * A084126 (n + 1)

end

end A068318.P9449204524820825641

namespace A068318

/-- `A109313(n+1)+2*A084126(n+1)` -/
def P9449204524820825641.Spec : Prop :=
  ∀ n, P9449204524820825641.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P7249847788268388503

`2*A084127(n+1)-A109313(n+1)`
-/

namespace A068318.P7249847788268388503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084127 (n + 1) - A109313 (n + 1)

end

end A068318.P7249847788268388503

namespace A068318

/-- `2*A084127(n+1)-A109313(n+1)` -/
def P7249847788268388503.Spec : Prop :=
  ∀ n, P7249847788268388503.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P10206087199011732735

`A084126(n+1)+A006530(A001358(n+1))`
-/

namespace A068318.P10206087199011732735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1) + A006530 (A001358 (n + 1)).toNat

end

end A068318.P10206087199011732735

namespace A068318

/-- `A084126(n+1)+A006530(A001358(n+1))` -/
def P10206087199011732735.Spec : Prop :=
  ∀ n, P10206087199011732735.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P10941705716829100742

`A084127(n+1)+A020639(A001358(n+1))`
-/

namespace A068318.P10941705716829100742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1) + A020639 (A001358 (n + 1)).toNat

end

end A068318.P10941705716829100742

namespace A068318

/-- `A084127(n+1)+A020639(A001358(n+1))` -/
def P10941705716829100742.Spec : Prop :=
  ∀ n, P10941705716829100742.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P14031066091845780436

`A084126(n+1)+A006530(A075818(n+1))`
-/

namespace A068318.P14031066091845780436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1) + A006530 (A075818 (n + 1)).toNat

end

end A068318.P14031066091845780436

namespace A068318

/-- `A084126(n+1)+A006530(A075818(n+1))` -/
def P14031066091845780436.Spec : Prop :=
  ∀ n, P14031066091845780436.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P14448270014968383431

`A084126(n+1)+A006530(A088707(n+1)-1)`
-/

namespace A068318.P14448270014968383431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1) + A006530 (A088707 (n + 1) - 1).toNat

end

end A068318.P14448270014968383431

namespace A068318

/-- `A084126(n+1)+A006530(A088707(n+1)-1)` -/
def P14448270014968383431.Spec : Prop :=
  ∀ n, P14448270014968383431.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P7831482975484169626

`A084127(n+1)+A020639(A088707(n+1)-1)`
-/

namespace A068318.P7831482975484169626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1) + A020639 (A088707 (n + 1) - 1).toNat

end

end A068318.P7831482975484169626

namespace A068318

/-- `A084127(n+1)+A020639(A088707(n+1)-1)` -/
def P7831482975484169626.Spec : Prop :=
  ∀ n, P7831482975484169626.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P5998789321051713732

`A084127(n+1)+A020639(A075818(n+1)/2)`
-/

namespace A068318.P5998789321051713732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1) + A020639 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A068318.P5998789321051713732

namespace A068318

/-- `A084127(n+1)+A020639(A075818(n+1)/2)` -/
def P5998789321051713732.Spec : Prop :=
  ∀ n, P5998789321051713732.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P18064683012465533123

`A001414(eq[A001414(n+1), A288654(n+1)]+1)`
-/

namespace A068318.P18064683012465533123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A068318.P18064683012465533123

namespace A068318

/-- `A001414(eq[A001414(n+1), A288654(n+1)]+1)` -/
def P18064683012465533123.Spec : Prop :=
  ∀ n, P18064683012465533123.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P17604212132878514254

`A084126(n+1)+A006530(eq[2, A001222(n+1)]+1)`
-/

namespace A068318.P17604212132878514254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1) + A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A068318.P17604212132878514254

namespace A068318

/-- `A084126(n+1)+A006530(eq[2, A001222(n+1)]+1)` -/
def P17604212132878514254.Spec : Prop :=
  ∀ n, P17604212132878514254.a n = A068318 (n + 1)

end A068318

/-! ## A068318.P9516394744424454260

`A084127(n+1)+A020639(eq[2, A001222(n+1)]+1)`
-/

namespace A068318.P9516394744424454260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1) + A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A068318.P9516394744424454260

namespace A068318

/-- `A084127(n+1)+A020639(eq[2, A001222(n+1)]+1)` -/
def P9516394744424454260.Spec : Prop :=
  ∀ n, P9516394744424454260.a n = A068318 (n + 1)

end A068318

/-!
# A068319: a(n) = if n <= lpf(n)^2 then lpf(n) else a(lpf(n) + n/lpf(n)), where lpf = least prime factor, A020639.

The programs for A068319, there is no canonical definition to state claims against.
-/

/-! ## A068319.P5002298580200981353

`A345450(A254101(n+1))+A153023(n+1)`
-/

namespace A068319.P5002298580200981353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345450 (A254101 (n + 1)).toNat + A153023 (n + 1)

end

end A068319.P5002298580200981353

/-! ## A068319.P9607488564656694058

`(A184955(n)+A153023(n+1))%18`
-/

namespace A068319.P9607488564656694058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184955 n + A153023 (n + 1)) 18

end

end A068319.P9607488564656694058

/-! ## A068319.P8901480916365271278

`A153023(n+1)+A054054(A184955(n))`
-/

namespace A068319.P8901480916365271278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153023 (n + 1) + A054054 (A184955 n).toNat

end

end A068319.P8901480916365271278

/-! ## A068319.P14132475604182084889

`A184955(A059717(n))+A153023(n+1)`
-/

namespace A068319.P14132475604182084889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A059717 n).toNat + A153023 (n + 1)

end

end A068319.P14132475604182084889

/-! ## A068319.P16814078945502568707

`or(A153023(n+1), A174726(A064551(n)))`
-/

namespace A068319.P16814078945502568707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A153023 (n + 1)) (A174726 (A064551 n).toNat)

end

end A068319.P16814078945502568707

/-!
# A068320: a(n)=number of arithmetic progressions of primes, strictly increasing with sum n.

The programs for A068320, there is no canonical definition to state claims against.
-/

/-! ## A068320.P3991420278238913465

`A068323(n+1)-A087624(n+1)`
-/

namespace A068320.P3991420278238913465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068323 (n + 1) - A087624 (n + 1)

end

end A068320.P3991420278238913465

/-! ## A068320.P15523499919348613274

`A068323(n+1)-A001221(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A068320.P15523499919348613274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068323 (n + 1) - A001221 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A068320.P15523499919348613274

/-! ## A068320.P5032296697755978675

`A068323(n+1)-A001221(A005730(n+1))`
-/

namespace A068320.P5032296697755978675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068323 (n + 1) - A001221 (A005730 (n + 1)).toNat

end

end A068320.P5032296697755978675

/-! ## A068320.P15074966082881361778

`A068323(n+1)-A001221(A048671(n+1))`
-/

namespace A068320.P15074966082881361778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068323 (n + 1) - A001221 (A048671 (n + 1)).toNat

end

end A068320.P15074966082881361778

/-! ## A068320.P17769319723964622315

`A068323(n+1)-A001222(A334085(n+1))`
-/

namespace A068320.P17769319723964622315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068323 (n + 1) - A001222 (A334085 (n + 1)).toNat

end

end A068320.P17769319723964622315

/-!
# A068321: Numbers that are not the sum of arithmetic progressions of distinct primes including arithmetic progressions of length 1.

The programs for A068321, there is no canonical definition to state claims against.
-/

/-! ## A068321.P8263443288178559579

`eq[A007814(2*n+1), A068320(n+1)]+1`
-/

namespace A068321.P8263443288178559579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068320 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068321.P8263443288178559579

/-!
# A068322: Number of arithmetic progressions of positive odd integers, strictly increasing with sum n.

The programs for A068322, there is no canonical definition to state claims against.
-/

/-! ## A068322.P12880896301739004825

`A068324(n+1)-A001227(n+1)+1/2*(1-(-1)^(n+1))`
-/

namespace A068322.P12880896301739004825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068324 (n + 1) - A001227 (n + 1) : ℚ) + (1 : ℚ) / 2 * (1 - (-1) ^ (n + 1) : ℚ)

end

end A068322.P12880896301739004825

/-! ## A068322.P4195553183998203542

`A068324(n+1)-A091954(n+1)`
-/

namespace A068322.P4195553183998203542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068324 (n + 1) - A091954 (n + 1)

end

end A068322.P4195553183998203542

/-! ## A068322.P10226507699830557974

`A068324(n+1)-A320003(3*(n+1))`
-/

namespace A068322.P10226507699830557974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068324 (n + 1) - A320003 (3 * (n + 1))

end

end A068322.P10226507699830557974

/-! ## A068322.P6918409698737338418

`A068324(n+1)-∑{d}[n+1, A296066(#)]`
-/

namespace A068322.P6918409698737338418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068324 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A296066 d

end

end A068322.P6918409698737338418

/-! ## A068322.P10123892722080153904

`A068324(n+1)-(A001227(n+1)-char[2*n])`
-/

namespace A068322.P10123892722080153904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068324 (n + 1) - (A001227 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A068322.P10123892722080153904

/-! ## A068322.P7804102514005672655

`A068324(n+1)-(A069283(n+1)+A000035(n))`
-/

namespace A068322.P7804102514005672655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068324 (n + 1) - (A069283 (n + 1) + A000035 n)

end

end A068322.P7804102514005672655

/-! ## A068322.P6458042939204500486

`A068324(n+1)+A057428(n)-A111775(n+1)`
-/

namespace A068322.P6458042939204500486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068324 (n + 1) + (A057428 n - A111775 (n + 1))

end

end A068322.P6458042939204500486

/-! ## A068322.P299268562964312426

`A068324(n+1)-(A000005(n+1)-A000005(A063914(n+1)-n))`
-/

namespace A068322.P299268562964312426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068324 (n + 1) - (A000005 (n + 1) - A000005 (A063914 (n + 1) - (n : ℤ)).toNat)

end

end A068322.P299268562964312426

/-! ## A068322.P16195921593781464707

`A068324(n+1)-A004526(A086374(n+1))`
-/

namespace A068322.P16195921593781464707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068324 (n + 1) - A004526 (A086374 (n + 1)).toNat

end

end A068322.P16195921593781464707

/-! ## A068322.P9463374636222676142

`A068324(n+1)-A001221(A317942(n+1))`
-/

namespace A068322.P9463374636222676142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068324 (n + 1) - A001221 (A317942 (n + 1)).toNat

end

end A068322.P9463374636222676142

/-!
# A068323: a(n)=number of arithmetic progressions of primes, nondecreasing with sum n.

The programs for A068323, there is no canonical definition to state claims against.
-/

/-! ## A068323.P11785684031463460822

`A087624(n+1)+A068320(n+1)`
-/

namespace A068323.P11785684031463460822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1) + A068320 (n + 1)

end

end A068323.P11785684031463460822

/-! ## A068323.P5010096353726998311

`A068320(n+1)+A001221(A005730(n+1))`
-/

namespace A068323.P5010096353726998311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068320 (n + 1) + A001221 (A005730 (n + 1)).toNat

end

end A068323.P5010096353726998311

/-! ## A068323.P2591715150942808810

`A068320(n+1)+A001221(A048671(n+1))`
-/

namespace A068323.P2591715150942808810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068320 (n + 1) + A001221 (A048671 (n + 1)).toNat

end

end A068323.P2591715150942808810

/-! ## A068323.P10049098174850884017

`A068320(n+1)+A001222(A334085(n+1))`
-/

namespace A068323.P10049098174850884017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068320 (n + 1) + A001222 (A334085 (n + 1)).toNat

end

end A068323.P10049098174850884017

/-! ## A068323.P15035867148612599109

`A001221(A341068(n+8))-A188009(3*n+4)`
-/

namespace A068323.P15035867148612599109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A341068 (n + 8)).toNat - A188009 (3 * n + 4)

end

end A068323.P15035867148612599109

/-!
# A068324: Number of nondecreasing arithmetic progressions of positive odd integers with sum n.

The programs for A068324, there is no canonical definition to state claims against.
-/

/-! ## A068324.P12190597487314894702

`A068322(n+1)+A001227(n+1)-1/2*(1-(-1)^(n+1))`
-/

namespace A068324.P12190597487314894702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068322 (n + 1) + A001227 (n + 1) : ℚ) - (1 : ℚ) / 2 * (1 - (-1) ^ (n + 1) : ℚ)

end

end A068324.P12190597487314894702

/-! ## A068324.P11895153302219662168

`A091954(n+1)+A068322(n+1)`
-/

namespace A068324.P11895153302219662168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) + A068322 (n + 1)

end

end A068324.P11895153302219662168

/-! ## A068324.P1651105606166667460

`A068322(n+1)+A111775(n+1)-A057428(n)`
-/

namespace A068324.P1651105606166667460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068322 (n + 1) + (A111775 (n + 1) - A057428 n)

end

end A068324.P1651105606166667460

/-! ## A068324.P8154859126412254992

`A068322(n+1)+A069930(n+1)-A023645(n+1)`
-/

namespace A068324.P8154859126412254992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068322 (n + 1) + (A069930 (n + 1) - A023645 (n + 1))

end

end A068324.P8154859126412254992

/-! ## A068324.P16715800319177177494

`A068322(n+1)+A004526(A086374(n+1))`
-/

namespace A068324.P16715800319177177494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068322 (n + 1) + A004526 (A086374 (n + 1)).toNat

end

end A068324.P16715800319177177494

/-! ## A068324.P13556260838731435878

`A123108(A086374(n+1))+A068322(A000027(n+1))`
-/

namespace A068324.P13556260838731435878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A086374 (n + 1)).toNat + A068322 (A000027 (n + 1)).toNat

end

end A068324.P13556260838731435878

/-! ## A068324.P3204975609934312532

`A068322(n+1)+A001221(A317942(n+1))`
-/

namespace A068324.P3204975609934312532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068322 (n + 1) + A001221 (A317942 (n + 1)).toNat

end

end A068324.P3204975609934312532

/-!
# A068325: Self-conjugate digitized partition numbers.

The programs for A068325, there is no canonical definition to state claims against.
-/

/-! ## A068325.P8331908748934591028

`A279777(n+1)%A316475(A085152(n+4))`
-/

namespace A068325.P8331908748934591028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279777 (n + 1)) (A316475 (A085152 (n + 4)).toNat)

end

end A068325.P8331908748934591028

/-! ## A068325.P2111444234732326203

`A083177(n+1)%(A054618(n+1)^A001096(n))`
-/

namespace A068325.P2111444234732326203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083177 (n + 1)) (SequenceMachineLib.roundAway ((A054618 (n + 1) : ℚ) ^ (A001096 n : ℤ)))

end

end A068325.P2111444234732326203

/-!
# A068326: a(n) = Product_{k=1..n} A031974(k).

The programs for A068326, there is no canonical definition to state claims against.
-/

/-! ## A068326.P3058083155345813930

`∏[record[A063672(n+1)]]`
-/

namespace A068326.P3058083155345813930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063672 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A068326.P3058083155345813930

/-! ## A068326.P7694398219025583930

`∏[record[A204847(n+1)]]`
-/

namespace A068326.P7694398219025583930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204847 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A068326.P7694398219025583930

/-! ## A068326.P2322093455895245076

`∏[A000042(A113581(n))]`
-/

namespace A068326.P2322093455895245076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A113581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A068326.P2322093455895245076

/-! ## A068326.P16152487401978833745

`∏[A002275(record[A113581(n)])]`
-/

namespace A068326.P16152487401978833745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A068326.P16152487401978833745

/-! ## A068326.P5079724480335925741

`∏[A000042(A008578(n+1))]`
-/

namespace A068326.P5079724480335925741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A068326.P5079724480335925741

/-!
# A068327: Arithmetic derivative of n^n.

The programs for A068327, the canonical program `A068327.P16591089257582404943` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068327 has offset 0).

The definition of A068327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068327.P16591089257582404943

`n^n*A003415(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068327

/-- `n^n*A003415(n)` -/
def P16591089257582404943.Spec : Prop :=
  ∀ n, P16591089257582404943.a n = A068327 n

theorem P16591089257582404943.correct : P16591089257582404943.Spec := by
  intro n
  simp only [A068327]

end A068327

/-! ## A068327.P2967237828046148738

`A003415(n^n)`
-/

namespace A068327.P2967237828046148738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n ^ n)

end

end A068327.P2967237828046148738

namespace A068327

/-- `A003415(n^n)` -/
def P2967237828046148738.Spec : Prop :=
  ∀ n, P2967237828046148738.a n = A068327 n

end A068327

/-! ## A068327.P2401533612902900295

`(A168036(n)+n)*n^n`
-/

namespace A068327.P2401533612902900295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168036 n + (n : ℤ)) * (n ^ n : ℤ)

end

end A068327.P2401533612902900295

namespace A068327

/-- `(A168036(n)+n)*n^n` -/
def P2401533612902900295.Spec : Prop :=
  ∀ n, P2401533612902900295.a n = A068327 n

theorem P2401533612902900295.correct : P2401533612902900295.Spec := by
  intro n
  simp only [A068327, Nat.add_sub_cancel, A068327.P2401533612902900295.a, A068327.P16591089257582404943.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A168036, A168036.P2098310487666722677.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068327

/-! ## A068327.P17496262831505419220

`(A129283(n)-n)*n^n`
-/

namespace A068327.P17496262831505419220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A129283 n - (n : ℤ)) * (n ^ n : ℤ)

end

end A068327.P17496262831505419220

namespace A068327

/-- `(A129283(n)-n)*n^n` -/
def P17496262831505419220.Spec : Prop :=
  ∀ n, P17496262831505419220.a n = A068327 n

theorem P17496262831505419220.correct : P17496262831505419220.Spec := by
  intro n
  simp only [A068327, Nat.add_sub_cancel, A068327.P17496262831505419220.a, A068327.P16591089257582404943.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A129283, A129283.P3962818557550655141.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068327

/-! ## A068327.P13938618777737642898

`n^n*∑{d}[n, A300251(#)]`
-/

namespace A068327.P13938618777737642898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A300251 d)

end

end A068327.P13938618777737642898

namespace A068327

/-- `n^n*∑{d}[n, A300251(#)]` -/
def P13938618777737642898.Spec : Prop :=
  ∀ n, P13938618777737642898.a n = A068327 n

end A068327

/-! ## A068327.P12792397217089913194

`A003415(n)*A110138(2*n)`
-/

namespace A068327.P12792397217089913194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A110138 (2 * n)

end

end A068327.P12792397217089913194

namespace A068327

/-- `A003415(n)*A110138(2*n)` -/
def P12792397217089913194.Spec : Prop :=
  ∀ n, P12792397217089913194.a n = A068327 n

end A068327

/-! ## A068327.P8937705448063869162

`n^n*A319703(A004277(n))`
-/

namespace A068327.P8937705448063869162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A319703 (A004277 n).toNat

end

end A068327.P8937705448063869162

namespace A068327

/-- `n^n*A319703(A004277(n))` -/
def P8937705448063869162.Spec : Prop :=
  ∀ n, P8937705448063869162.a n = A068327 n

end A068327

/-! ## A068327.P12105087460526052827

`n^n*A319703(A316571(n+1))`
-/

namespace A068327.P12105087460526052827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A319703 (A316571 (n + 1)).toNat

end

end A068327.P12105087460526052827

namespace A068327

/-- `n^n*A319703(A316571(n+1))` -/
def P12105087460526052827.Spec : Prop :=
  ∀ n, P12105087460526052827.a n = A068327 n

end A068327

/-! ## A068327.P4890742192836456495

`n^n*A319703(A028310(2*n))`
-/

namespace A068327.P4890742192836456495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A319703 (A028310 (2 * n)).toNat

end

end A068327.P4890742192836456495

namespace A068327

/-- `n^n*A319703(A028310(2*n))` -/
def P4890742192836456495.Spec : Prop :=
  ∀ n, P4890742192836456495.a n = A068327 n

end A068327

/-! ## A068327.P12751513706767032192

`A327858(n)*A351230(n)*n^n`
-/

namespace A068327.P12751513706767032192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351230 n * (n ^ n : ℤ)

end

end A068327.P12751513706767032192

namespace A068327

/-- `A327858(n)*A351230(n)*n^n` -/
def P12751513706767032192.Spec : Prop :=
  ∀ n, P12751513706767032192.a n = A068327 n

end A068327

/-!
# A068328: Arithmetic derivatives of the squarefree numbers.

The programs for A068328, the canonical program `A068328.P3336057925348697650` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068328 has offset 1).

The definition of A068328 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068328.P3336057925348697650

`A003415(A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A068328

/-- `A003415(A005117(n+1))` -/
def P3336057925348697650.Spec : Prop :=
  ∀ n, P3336057925348697650.a n = A068328 (n + 1)

theorem P3336057925348697650.correct : P3336057925348697650.Spec := by
  intro n
  simp only [A068328, Nat.add_sub_cancel]

end A068328

/-! ## A068328.P4891672348345517534

`A028235(record[A007947(n+1)])`
-/

namespace A068328.P4891672348345517534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028235 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068328.P4891672348345517534

namespace A068328

/-- `A028235(record[A007947(n+1)])` -/
def P4891672348345517534.Spec : Prop :=
  ∀ n, P4891672348345517534.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P10085161562991568360

`A095112(record[A007913(n+1)])`
-/

namespace A068328.P10085161562991568360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068328.P10085161562991568360

namespace A068328

/-- `A095112(record[A007913(n+1)])` -/
def P10085161562991568360.Spec : Prop :=
  ∀ n, P10085161562991568360.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P9659353738279843327

`A095112(record[A007947(n+1)])`
-/

namespace A068328.P9659353738279843327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068328.P9659353738279843327

namespace A068328

/-- `A095112(record[A007947(n+1)])` -/
def P9659353738279843327.Spec : Prop :=
  ∀ n, P9659353738279843327.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P7904739608865808275

`A083345(record[A083346(n+1)])`
-/

namespace A068328.P7904739608865808275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068328.P7904739608865808275

namespace A068328

/-- `A083345(record[A083346(n+1)])` -/
def P7904739608865808275.Spec : Prop :=
  ∀ n, P7904739608865808275.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P13695058423161320549

`A348498(record[A007947(n+1)])`
-/

namespace A068328.P13695058423161320549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348498 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068328.P13695058423161320549

namespace A068328

/-- `A348498(record[A007947(n+1)])` -/
def P13695058423161320549.Spec : Prop :=
  ∀ n, P13695058423161320549.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P1297910027812390650

`∑{d}[A005117(n+1), A300251(#)]`
-/

namespace A068328.P1297910027812390650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A068328.P1297910027812390650

namespace A068328

/-- `∑{d}[A005117(n+1), A300251(#)]` -/
def P1297910027812390650.Spec : Prop :=
  ∀ n, P1297910027812390650.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P43647369416358647

`A028235(A005117(2*n+1-n))`
-/

namespace A068328.P43647369416358647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028235 (A005117 (2 * n + 1 - n)).toNat

end

end A068328.P43647369416358647

namespace A068328

/-- `A028235(A005117(2*n+1-n))` -/
def P43647369416358647.Spec : Prop :=
  ∀ n, P43647369416358647.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P1491689014283809631

`A348498(lt[n, A007947(n+1)]+1)`
-/

namespace A068328.P1491689014283809631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A068328.P1491689014283809631

namespace A068328

/-- `A348498(lt[n, A007947(n+1)]+1)` -/
def P1491689014283809631.Spec : Prop :=
  ∀ n, P1491689014283809631.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P1371642670792355149

`A083345(record[(n+1)/A005361(n+1)])`
-/

namespace A068328.P1371642670792355149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A005361 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A068328.P1371642670792355149

namespace A068328

/-- `A083345(record[(n+1)/A005361(n+1)])` -/
def P1371642670792355149.Spec : Prop :=
  ∀ n, P1371642670792355149.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P13007708478973038937

`A340070(2*A005117(n+1)-A005117(n+1))`
-/

namespace A068328.P13007708478973038937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340070 (2 * A005117 (n + 1) - A005117 (n + 1)).toNat

end

end A068328.P13007708478973038937

namespace A068328

/-- `A340070(2*A005117(n+1)-A005117(n+1))` -/
def P13007708478973038937.Spec : Prop :=
  ∀ n, P13007708478973038937.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P14443150950908807654

`A348497(2*A005117(n+1)-A005117(n+1))`
-/

namespace A068328.P14443150950908807654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348497 (2 * A005117 (n + 1) - A005117 (n + 1)).toNat

end

end A068328.P14443150950908807654

namespace A068328

/-- `A348497(2*A005117(n+1)-A005117(n+1))` -/
def P14443150950908807654.Spec : Prop :=
  ∀ n, P14443150950908807654.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P13821512943532042849

`A069359(lt[A280292(n+1), 1]+1)`
-/

namespace A068328.P13821512943532042849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A068328.P13821512943532042849

namespace A068328

/-- `A069359(lt[A280292(n+1), 1]+1)` -/
def P13821512943532042849.Spec : Prop :=
  ∀ n, P13821512943532042849.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P1159452951726646311

`A069359(lt[A057521(n+1), 2]+1)`
-/

namespace A068328.P1159452951726646311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A068328.P1159452951726646311

namespace A068328

/-- `A069359(lt[A057521(n+1), 2]+1)` -/
def P1159452951726646311.Spec : Prop :=
  ∀ n, P1159452951726646311.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P10084842581004440714

`A083345(lt[A057521(n+1), 2]+1)`
-/

namespace A068328.P10084842581004440714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A068328.P10084842581004440714

namespace A068328

/-- `A083345(lt[A057521(n+1), 2]+1)` -/
def P10084842581004440714.Spec : Prop :=
  ∀ n, P10084842581004440714.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P17486460675287438000

`A342001(2*A005117(n+1)-A005117(n+1))`
-/

namespace A068328.P17486460675287438000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (2 * A005117 (n + 1) - A005117 (n + 1)).toNat

end

end A068328.P17486460675287438000

namespace A068328

/-- `A342001(2*A005117(n+1)-A005117(n+1))` -/
def P17486460675287438000.Spec : Prop :=
  ∀ n, P17486460675287438000.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P7274519514625161278

`A157104(A371188(n+1))`
-/

namespace A068328.P7274519514625161278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157104 (A371188 (n + 1)).toNat

end

end A068328.P7274519514625161278

namespace A068328

/-- `A157104(A371188(n+1))` -/
def P7274519514625161278.Spec : Prop :=
  ∀ n, P7274519514625161278.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P13117228153708416291

`A003415(eq[n, ∏{p}[n, #]])`
-/

namespace A068328.P13117228153708416291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068328.P13117228153708416291

namespace A068328

/-- `A003415(eq[n, ∏{p}[n, #]])` -/
def P13117228153708416291.Spec : Prop :=
  ∀ n, P13117228153708416291.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P8332034898606667802

`A003415(record[A007947(n+1)])`
-/

namespace A068328.P8332034898606667802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068328.P8332034898606667802

namespace A068328

/-- `A003415(record[A007947(n+1)])` -/
def P8332034898606667802.Spec : Prop :=
  ∀ n, P8332034898606667802.a n = A068328 (n + 1)

end A068328

/-! ## A068328.P12909640470402271887

`A003415(lt[0, char[∏{p}[n, #]]])`
-/

namespace A068328.P12909640470402271887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068328.P12909640470402271887

namespace A068328

/-- `A003415(lt[0, char[∏{p}[n, #]]])` -/
def P12909640470402271887.Spec : Prop :=
  ∀ n, P12909640470402271887.a n = A068328 (n + 1)

end A068328

/-!
# A068329: Arithmetic derivative of Fibonacci numbers > 0.

The programs for A068329, the canonical program `A068329.P15819269738925584645` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068329 has offset 1).

The definition of A068329 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068329.P15819269738925584645

`A003415(A000045(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068329

/-- `A003415(A000045(n+1))` -/
def P15819269738925584645.Spec : Prop :=
  ∀ n, P15819269738925584645.a n = A068329 (n + 1)

theorem P15819269738925584645.correct : P15819269738925584645.Spec := by
  intro n
  simp only [A068329, Nat.add_sub_cancel]

end A068329

/-! ## A068329.P12561212029976096791

`A328099(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A068329.P12561212029976096791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (f1 (n + 1) - f1 n).toNat

end

end A068329.P12561212029976096791

namespace A068329

/-- `A328099(Δ[round(ϕ*a(n-1))])` -/
def P12561212029976096791.Spec : Prop :=
  ∀ n, P12561212029976096791.a n = A068329 (n + 1)

end A068329

/-! ## A068329.P3762316689640053925

`A328099(A053538(∑[n]))`
-/

namespace A068329.P3762316689640053925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (A053538 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A068329.P3762316689640053925

namespace A068329

/-- `A328099(A053538(∑[n]))` -/
def P3762316689640053925.Spec : Prop :=
  ∀ n, P3762316689640053925.a n = A068329 (n + 1)

end A068329

/-!
# A068330: Consider all sublists of [(2,1),(3,2,1),(4,3,2,1),...,(n,...,4,3,2,1)] and multiply these permutations in that order. How many of the products are n-cycles?

The programs for A068330, there is no canonical definition to state claims against.
-/

/-! ## A068330.P15111094368481352996

`A023193(A240312(n)+A083579(n))`
-/

namespace A068330.P15111094368481352996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A240312 n + A083579 n).toNat

end

end A068330.P15111094368481352996

/-! ## A068330.P10323296299774932921

`A003056(A148090(n))`
-/

namespace A068330.P10323296299774932921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148090 n).toNat

end

end A068330.P10323296299774932921

/-! ## A068330.P7871791224017882891

`A003056(A049143(n+1))`
-/

namespace A068330.P7871791224017882891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A049143 (n + 1)).toNat

end

end A068330.P7871791224017882891

/-! ## A068330.P6370635385003044544

`A232746(A281489(n+1))`
-/

namespace A068330.P6370635385003044544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A281489 (n + 1)).toNat

end

end A068330.P6370635385003044544

/-! ## A068330.P6287676698981818077

`A003056(A265940(n+1)+1)`
-/

namespace A068330.P6287676698981818077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A265940 (n + 1) + 1).toNat

end

end A068330.P6287676698981818077

/-!
# A068331: This number of zeros cannot occur in any factorial.

The programs for A068331, there is no canonical definition to state claims against.
-/

/-! ## A068331.P1363740520832332009

`comp[A027869(n)]`
-/

namespace A068331.P1363740520832332009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027869 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A068331.P1363740520832332009

/-! ## A068331.P16339702105314677786

`eq[0, A072417(n)]`
-/

namespace A068331.P16339702105314677786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068331.P16339702105314677786

/-! ## A068331.P2555875970286281673

`A000027(lt[A072417(n), 1])`
-/

namespace A068331.P2555875970286281673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072417 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A068331.P2555875970286281673

/-! ## A068331.P8091080156814023112

`lt[A072417(n), A049615(n)]`
-/

namespace A068331.P8091080156814023112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068331.P8091080156814023112

/-! ## A068331.P15191274151360157344

`lt[A072417(n), A053447(n)]`
-/

namespace A068331.P15191274151360157344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068331.P15191274151360157344

/-!
# A068332: Numbers k such that 2^tau(k) <= k < 2*2^tau(k).

The programs for A068332, the canonical program `A068332.P3490794185837629796` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068332 has offset 1).

The definition of A068332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068332.P16634224113986238612

`eq[floor(log2(n+1)), A000005(n+1)]+1`
-/

namespace A068332.P16634224113986238612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068332.P16634224113986238612

namespace A068332

/-- `eq[floor(log2(n+1)), A000005(n+1)]+1` -/
def P16634224113986238612.Spec : Prop :=
  ∀ n, (P16634224113986238612.a n : ℤ) = A068332 (n + 1)

end A068332

/-! ## A068332.P3490794185837629796

`eq[A032741(n)+2, A070939(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A068332

/-- `eq[A032741(n)+2, A070939(n)]` -/
def P3490794185837629796.Spec : Prop :=
  ∀ n, (P3490794185837629796.a n : ℤ) = A068332 (n + 1)

theorem P3490794185837629796.correct : P3490794185837629796.Spec := by
  intro n
  simp only [A068332, Nat.add_sub_cancel]

end A068332

/-! ## A068332.P10781912431298660602

`eq[A053644(n), A338506(n+1)]+1`
-/

namespace A068332.P10781912431298660602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068332.P10781912431298660602

namespace A068332

/-- `eq[A053644(n), A338506(n+1)]+1` -/
def P10781912431298660602.Spec : Prop :=
  ∀ n, (P10781912431298660602.a n : ℤ) = A068332 (n + 1)

end A068332

/-! ## A068332.P3617845404336683299

`eq[A032741(n)+2, A029837(n+1)]`
-/

namespace A068332.P3617845404336683299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068332.P3617845404336683299

namespace A068332

/-- `eq[A032741(n)+2, A029837(n+1)]` -/
def P3617845404336683299.Spec : Prop :=
  ∀ n, (P3617845404336683299.a n : ℤ) = A068332 (n + 1)

end A068332

/-! ## A068332.P9670285997586527812

`eq[A000005(n+1), A000523(n+1)]+1`
-/

namespace A068332.P9670285997586527812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068332.P9670285997586527812

namespace A068332

/-- `eq[A000005(n+1), A000523(n+1)]+1` -/
def P9670285997586527812.Spec : Prop :=
  ∀ n, (P9670285997586527812.a n : ℤ) = A068332 (n + 1)

end A068332

/-! ## A068332.P2278391968119796655

`eq[A020707(A032741(n)), A062383(n)]`
-/

namespace A068332.P2278391968119796655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068332.P2278391968119796655

namespace A068332

/-- `eq[A020707(A032741(n)), A062383(n)]` -/
def P2278391968119796655.Spec : Prop :=
  ∀ n, (P2278391968119796655.a n : ℤ) = A068332 (n + 1)

end A068332

/-! ## A068332.P11250607791253035327

`eq[A008624(A145154(n)), A070939(n)]`
-/

namespace A068332.P11250607791253035327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A145154 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068332.P11250607791253035327

namespace A068332

/-- `eq[A008624(A145154(n)), A070939(n)]` -/
def P11250607791253035327.Spec : Prop :=
  ∀ n, (P11250607791253035327.a n : ℤ) = A068332 (n + 1)

end A068332

/-! ## A068332.P3585897514393458482

`eq[A032741(n)+1, A032741(A053644(n))]`
-/

namespace A068332.P3585897514393458482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A053644 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068332.P3585897514393458482

namespace A068332

/-- `eq[A032741(n)+1, A032741(A053644(n))]` -/
def P3585897514393458482.Spec : Prop :=
  ∀ n, (P3585897514393458482.a n : ℤ) = A068332 (n + 1)

end A068332

/-! ## A068332.P1507693443746188089

`eq[A008621(A145154(n)), A029837(n+1)]`
-/

namespace A068332.P1507693443746188089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A145154 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068332.P1507693443746188089

namespace A068332

/-- `eq[A008621(A145154(n)), A029837(n+1)]` -/
def P1507693443746188089.Spec : Prop :=
  ∀ n, (P1507693443746188089.a n : ℤ) = A068332 (n + 1)

end A068332

/-! ## A068332.P18283062086299697424

`A153152(eq[A000005(n+1), A000523(n+1)])`
-/

namespace A068332.P18283062086299697424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068332.P18283062086299697424

namespace A068332

/-- `A153152(eq[A000005(n+1), A000523(n+1)])` -/
def P18283062086299697424.Spec : Prop :=
  ∀ n, P18283062086299697424.a n = A068332 (n + 1)

end A068332

/-!
# A068335: Numbers k such that 3^tau(k) <= k < 2*3^tau(k).

The programs for A068335, there is no canonical definition to state claims against.
-/

/-! ## A068335.P4160969076857969088

`eq[A061392(n), A338506(round(acot(n)+n))]`
-/

namespace A068335.P4160969076857969088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338506 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068335.P4160969076857969088

/-! ## A068335.P14483893132053581701

`eq[A061392(n), A338506(A028310(n))]`
-/

namespace A068335.P14483893132053581701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338506 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068335.P14483893132053581701

/-! ## A068335.P4728815910005974137

`eq[A000079(A000005(n+1)), A061392(n+1)]+1`
-/

namespace A068335.P4728815910005974137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068335.P4728815910005974137

/-!
# A068336: a(1) = 1; a(n+1) = 1 + sum{k|n} a(k), sum is over the positive divisors, k, of n.

The programs for A068336, there is no canonical definition to state claims against.
-/

/-! ## A068336.P14532876671761768874

`(A057427(n)+1)*A003238(n+1)`
-/

namespace A068336.P14532876671761768874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A003238 (n + 1)

end

end A068336.P14532876671761768874

/-! ## A068336.P6025074164826861087

`2*A003238(n+1)-A000007(n)`
-/

namespace A068336.P6025074164826861087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003238 (n + 1) - A000007 n

end

end A068336.P6025074164826861087

/-! ## A068336.P3238426841393305595

`2*A003238(n+1)/A054977(n)`
-/

namespace A068336.P3238426841393305595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A003238 (n + 1) : ℚ) / (A054977 n : ℚ))

end

end A068336.P3238426841393305595

/-! ## A068336.P15034901461303579344

`A003238(n+1)+∑{d}[n, A003238(#)]`
-/

namespace A068336.P15034901461303579344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A003238 d

end

end A068336.P15034901461303579344

/-! ## A068336.P8114837762835732184

`∑{d}[n+1, A008683(#)*A226175((n+1)/#)]`
-/

namespace A068336.P8114837762835732184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A226175 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068336.P8114837762835732184

/-! ## A068336.P5218844326238132776

`A003238(n+1)*A020639(A007843(n))`
-/

namespace A068336.P5218844326238132776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (n + 1) * A020639 (A007843 n).toNat

end

end A068336.P5218844326238132776

/-! ## A068336.P7720629420401306841

`A003238(n+1)*A020639(A008458(n))`
-/

namespace A068336.P7720629420401306841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (n + 1) * A020639 (A008458 n).toNat

end

end A068336.P7720629420401306841

/-! ## A068336.P15757212649757551817

`A003238(n+1)*A020639(A008574(n))`
-/

namespace A068336.P15757212649757551817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (n + 1) * A020639 (A008574 n).toNat

end

end A068336.P15757212649757551817

/-! ## A068336.P18409022400861326487

`A003238(n+1)*A020639(A022144(n))`
-/

namespace A068336.P18409022400861326487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (n + 1) * A020639 (A022144 n).toNat

end

end A068336.P18409022400861326487

/-! ## A068336.P17170445235761951724

`(A019425(A019425(n))+1)*A003238(n+1)`
-/

namespace A068336.P17170445235761951724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A019425 (A019425 n).toNat + 1) * A003238 (n + 1)

end

end A068336.P17170445235761951724

/-! ## A068336.P17009755585543500274

`A003238(n+1)*A034444(A034444(n+1))`
-/

namespace A068336.P17009755585543500274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (n + 1) * A034444 (A034444 (n + 1)).toNat

end

end A068336.P17009755585543500274

/-! ## A068336.P8322192489991698662

`A001221(A300912(n+1))*A003238(n+1)`
-/

namespace A068336.P8322192489991698662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A300912 (n + 1)).toNat * A003238 (n + 1)

end

end A068336.P8322192489991698662

/-! ## A068336.P16957773217783276986

`A003238(n+1)*A342086(A020639(n+1))`
-/

namespace A068336.P16957773217783276986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (n + 1) * A342086 (A020639 (n + 1)).toNat

end

end A068336.P16957773217783276986

/-! ## A068336.P14538366493192998542

`A003238(n+1)*A067824(n+1)/A002033(n)`
-/

namespace A068336.P14538366493192998542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003238 (n + 1) * A067824 (n + 1) : ℚ) / (A002033 n : ℚ)

end

end A068336.P14538366493192998542

/-! ## A068336.P460404125803371659

`A003238(n+1)+A003238(n+1)%A000123(n)`
-/

namespace A068336.P460404125803371659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (n + 1) + Int.tmod (A003238 (n + 1)) (A000123 n)

end

end A068336.P460404125803371659

/-! ## A068336.P6121574114281725618

`Δ[A290845(n+1)]`
-/

namespace A068336.P6121574114281725618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068336.P6121574114281725618

/-! ## A068336.P11179308989263266093

`A290845(n+2)-A290845(n+1)`
-/

namespace A068336.P11179308989263266093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290845 (n + 2) - A290845 (n + 1)

end

end A068336.P11179308989263266093

/-! ## A068336.P209131630841233595

`A000005(eq[1, A074206(n)])*A003238(n+1)`
-/

namespace A068336.P209131630841233595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A003238 (n + 1)

end

end A068336.P209131630841233595

/-! ## A068336.P8270972072514716714

`A003238(n+1)/A011782(n)*A011782(n+1)`
-/

namespace A068336.P8270972072514716714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003238 (n + 1) : ℚ) / (A011782 n : ℚ) * (A011782 (n + 1) : ℚ)

end

end A068336.P8270972072514716714

/-!
# A068337: a(n) = n!*Sum_{k=1..n} mu(k)/k, where mu(k) is the Möbius function.

The programs for A068337, there is no canonical definition to state claims against.
-/

/-! ## A068337.P1661678500118710032

`A000142(n+1)*A070888(n+1)/A070889(n+1)`
-/

namespace A068337.P1661678500118710032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) * A070888 (n + 1) : ℚ) / (A070889 (n + 1) : ℚ)

end

end A068337.P1661678500118710032

/-! ## A068337.P17928433231000219557

`(n+1)!*∑[A008683(n+1)/(n+1)]`
-/

namespace A068337.P17928433231000219557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068337.P17928433231000219557

/-!
# A068338: a(n) = n!^2 * Sum_{k=1..n} mu(k)/k^2, where mu(k) is the Moebius function.

The programs for A068338, there is no canonical definition to state claims against.
-/

/-! ## A068338.P8193524810477455970

`or(A004159(A340535(n)), A267827(n))`
-/

namespace A068338.P8193524810477455970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004159 (A340535 n).toNat) (A267827 n)

end

end A068338.P8193524810477455970

/-!
# A068340: a(n) = Sum_{k=1..n} mu(k)*k, where mu(k) is the Moebius function.

The programs for A068340, the canonical program `A068340.P6694413873176775995` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068340 has offset 1).

The definition of A068340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068340.P6694413873176775995

`∑[A055615(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A068340

/-- `∑[A055615(n+1)]` -/
def P6694413873176775995.Spec : Prop :=
  ∀ n, P6694413873176775995.a n = A068340 (n + 1)

theorem P6694413873176775995.correct : P6694413873176775995.Spec := by
  intro n
  simp only [A068340, Nat.add_sub_cancel]

end A068340

/-! ## A068340.P11538598915299143242

`∑[A062004(n+1)/2]`
-/

namespace A068340.P11538598915299143242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062004 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P11538598915299143242

namespace A068340

/-- `∑[A062004(n+1)/2]` -/
def P11538598915299143242.Spec : Prop :=
  ∀ n, P11538598915299143242.a n = (A068340 (n + 1) : ℚ)

end A068340

/-! ## A068340.P793789903585413277

`∑[A061669(n+1)-(n+1)]`
-/

namespace A068340.P793789903585413277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P793789903585413277

namespace A068340

/-- `∑[A061669(n+1)-(n+1)]` -/
def P793789903585413277.Spec : Prop :=
  ∀ n, P793789903585413277.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P2454972543238355784

`∑[(n+1)*A008683(n+1)]`
-/

namespace A068340.P2454972543238355784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P2454972543238355784

namespace A068340

/-- `∑[(n+1)*A008683(n+1)]` -/
def P2454972543238355784.Spec : Prop :=
  ∀ n, P2454972543238355784.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P13628113132949758914

`∑[A334657(n+1)/(n+1)]`
-/

namespace A068340.P13628113132949758914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334657 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P13628113132949758914

namespace A068340

/-- `∑[A334657(n+1)/(n+1)]` -/
def P13628113132949758914.Spec : Prop :=
  ∀ n, P13628113132949758914.a n = (A068340 (n + 1) : ℚ)

end A068340

/-! ## A068340.P9246524327585489809

`∑[A334659(n+1)%(n+2)]`
-/

namespace A068340.P9246524327585489809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334659 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P9246524327585489809

namespace A068340

/-- `∑[A334659(n+1)%(n+2)]` -/
def P9246524327585489809.Spec : Prop :=
  ∀ n, P9246524327585489809.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P16618500910376750107

`∑[(n+1)*(A007423(n+1)-1)]`
-/

namespace A068340.P16618500910376750107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A007423 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P16618500910376750107

namespace A068340

/-- `∑[(n+1)*(A007423(n+1)-1)]` -/
def P16618500910376750107.Spec : Prop :=
  ∀ n, P16618500910376750107.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P16936656288097972204

`∑[(n+1)*A162512(n+1)%2]`
-/

namespace A068340.P16936656288097972204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A162512 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P16936656288097972204

namespace A068340

/-- `∑[(n+1)*A162512(n+1)%2]` -/
def P16936656288097972204.Spec : Prop :=
  ∀ n, P16936656288097972204.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P6096389457446125204

`∑[(n+1)*∏{e}[n+1, A328959(#)]]`
-/

namespace A068340.P6096389457446125204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), A328959 (Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P6096389457446125204

namespace A068340

/-- `∑[(n+1)*∏{e}[n+1, A328959(#)]]` -/
def P6096389457446125204.Spec : Prop :=
  ∀ n, P6096389457446125204.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P3092706969685328823

`∑[∏{p}[n+1, -#]*A008966(n+1)]`
-/

namespace A068340.P3092706969685328823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))) * A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P3092706969685328823

namespace A068340

/-- `∑[∏{p}[n+1, -#]*A008966(n+1)]` -/
def P3092706969685328823.Spec : Prop :=
  ∀ n, P3092706969685328823.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P7420510489241949329

`∑[(n+1)*(A076369(n+1)-n-1)]`
-/

namespace A068340.P7420510489241949329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A076369 (n + 1) - (n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P7420510489241949329

namespace A068340

/-- `∑[(n+1)*(A076369(n+1)-n-1)]` -/
def P7420510489241949329.Spec : Prop :=
  ∀ n, P7420510489241949329.a n = A068340 (n + 1)

theorem P7420510489241949329.correct : P7420510489241949329.Spec := by
  intro n
  simp only [A068340, Nat.add_sub_cancel, A068340.P7420510489241949329.f1, A068340.P7420510489241949329.a, A068340.P6694413873176775995.f1, A068340.P6694413873176775995.a, A055615, A055615.P8993130195977213181.a, A076369, A076369.P8196715672845264258.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068340

/-! ## A068340.P12934016774899705438

`a(n-1)+(n+1)*A008683(C(n+1, n))` with `a(0)=1`
-/

namespace A068340.P12934016774899705438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A008683 (Nat.choose (n + 1) n)

end

end A068340.P12934016774899705438

namespace A068340

/-- `a(n-1)+(n+1)*A008683(C(n+1, n))` -/
def P12934016774899705438.Spec : Prop :=
  ∀ n, P12934016774899705438.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P10281998321689676441

`a(n-1)+(n+1)*A008683(2*n+1-n)` with `a(0)=1`
-/

namespace A068340.P10281998321689676441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A008683 (2 * n + 1 - n)

end

end A068340.P10281998321689676441

namespace A068340

/-- `a(n-1)+(n+1)*A008683(2*n+1-n)` -/
def P10281998321689676441.Spec : Prop :=
  ∀ n, P10281998321689676441.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P7854940096663487679

`∑[∏{p}[n+1, #]*∏{e}[n+1, #]*A334660(n+1)%(n+2)]`
-/

namespace A068340.P7854940096663487679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f2 n), p) * (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) : ℕ) : ℤ) * Int.tmod (A334660 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P7854940096663487679

namespace A068340

/-- `∑[∏{p}[n+1, #]*∏{e}[n+1, #]*A334660(n+1)%(n+2)]` -/
def P7854940096663487679.Spec : Prop :=
  ∀ n, P7854940096663487679.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P2425995266297907235

`∑[A008683(A008619(2*n))*A008619(2*n)]`
-/

namespace A068340.P2425995266297907235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008619 (2 * n)).toNat * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P2425995266297907235

namespace A068340

/-- `∑[A008683(A008619(2*n))*A008619(2*n)]` -/
def P2425995266297907235.Spec : Prop :=
  ∀ n, P2425995266297907235.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P14214598182761396212

`∑[A008683(A052938(2*n))*A052938(2*n)]`
-/

namespace A068340.P14214598182761396212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A052938 (2 * n)).toNat * A052938 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P14214598182761396212

namespace A068340

/-- `∑[A008683(A052938(2*n))*A052938(2*n)]` -/
def P14214598182761396212.Spec : Prop :=
  ∀ n, P14214598182761396212.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P7897189910594727535

`∑[A008683(A028242(2*n))*A028242(2*n)]`
-/

namespace A068340.P7897189910594727535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028242 (2 * n)).toNat * A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P7897189910594727535

namespace A068340

/-- `∑[A008683(A028242(2*n))*A028242(2*n)]` -/
def P7897189910594727535.Spec : Prop :=
  ∀ n, P7897189910594727535.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P16838467606246705343

`∑[A008683(A029579(2*n))*A029579(2*n)]`
-/

namespace A068340.P16838467606246705343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A029579 (2 * n)).toNat * A029579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P16838467606246705343

namespace A068340

/-- `∑[A008683(A029579(2*n))*A029579(2*n)]` -/
def P16838467606246705343.Spec : Prop :=
  ∀ n, P16838467606246705343.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P12857944336534985921

`∑[(n+1)*A369453((n+1)²)]`
-/

namespace A068340.P12857944336534985921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369453 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P12857944336534985921

namespace A068340

/-- `∑[(n+1)*A369453((n+1)²)]` -/
def P12857944336534985921.Spec : Prop :=
  ∀ n, P12857944336534985921.a n = A068340 (n + 1)

end A068340

/-! ## A068340.P8577568169785706486

`∑[A127510(∑[n+1])]`
-/

namespace A068340.P8577568169785706486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127510 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P8577568169785706486

namespace A068340

/-- `∑[A127510(∑[n+1])]` -/
def P8577568169785706486.Spec : Prop :=
  ∀ n, P8577568169785706486.a n = A068340 (n + 1)

end A068340

/-!
# A068344: Square array read by antidiagonals of T(n,k) = sign(n-k).

The programs for A068344, the canonical program `A068344.P56134880898199442` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068344 has offset 0).

The definition of A068344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068344.P161117884416326689

`(char[∑[4*n]]-1)^(floor(sqrt(8*n+1))%2)`
-/

namespace A068344.P161117884416326689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1) ^ (Nat.sqrt (8 * n + 1) % 2)

end

end A068344.P161117884416326689

namespace A068344

/-- `(char[∑[4*n]]-1)^(floor(sqrt(8*n+1))%2)` -/
def P161117884416326689.Spec : Prop :=
  ∀ n, P161117884416326689.a n = A068344 n

end A068344

/-! ## A068344.P2910379719152666963

`round(sin(atan(A008482(n))))`
-/

namespace A068344.P2910379719152666963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A008482 n : ℝ)))

end

end A068344.P2910379719152666963

namespace A068344

/-- `round(sin(atan(A008482(n))))` -/
def P2910379719152666963.Spec : Prop :=
  ∀ n, P2910379719152666963.a n = A068344 n

end A068344

/-! ## A068344.P5821404977901877178

`A008482(n)/A047072(n)`
-/

namespace A068344.P5821404977901877178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008482 n : ℚ) / (A047072 n : ℚ)

end

end A068344.P5821404977901877178

namespace A068344

/-- `A008482(n)/A047072(n)` -/
def P5821404977901877178.Spec : Prop :=
  ∀ n, P5821404977901877178.a n = (A068344 n : ℚ)

end A068344

/-! ## A068344.P9849571109955666158

`A101688(n)-A077605(n+1)`
-/

namespace A068344.P9849571109955666158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n - A077605 (n + 1)

end

end A068344.P9849571109955666158

namespace A068344

/-- `A101688(n)-A077605(n+1)` -/
def P9849571109955666158.Spec : Prop :=
  ∀ n, P9849571109955666158.a n = A068344 n

end A068344

/-! ## A068344.P14204928595765871850

`A185725(n+1)-A375510(n)`
-/

namespace A068344.P14204928595765871850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185725 (n + 1) - A375510 n

end

end A068344.P14204928595765871850

namespace A068344

/-- `A185725(n+1)-A375510(n)` -/
def P14204928595765871850.Spec : Prop :=
  ∀ n, P14204928595765871850.a n = A068344 n

theorem P14204928595765871850.correct : P14204928595765871850.Spec := by
  intro n
  simp only [A068344, Nat.add_sub_cancel, A068344.P14204928595765871850.a, A068344.P56134880898199442.a, A061579, A061579.P7462537595056690109.a, A101688, A101688.P16852833126151798959.a, A185725, A185725.P4132825737576595347.a, A375510, A375510.P4398942062596491998.a, A003984, A003984.P8615453586607429040.a, A194959, A194959.P7468883608781216461.a, A003056, A003056.P5318256527314048597.a, A049581, A049581.P658114607470364396.a, A157458, A157458.P16856629470642738053.a, A003982, A003982.P6136202056268562101.a, A020985, A020985.P937884151096334327.a, A114327, A114327.P9028308961649463264.a, A157454, A157454.P17958483760181188644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A068344

/-! ## A068344.P8229072638763292086

`A220073(n+1)-A130517(n+1)`
-/

namespace A068344.P8229072638763292086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1) - A130517 (n + 1)

end

end A068344.P8229072638763292086

namespace A068344

/-- `A220073(n+1)-A130517(n+1)` -/
def P8229072638763292086.Spec : Prop :=
  ∀ n, P8229072638763292086.a n = A068344 n

end A068344

/-! ## A068344.P56134880898199442

`A101688(n)-A101688(A061579(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A068344

/-- `A101688(n)-A101688(A061579(n))` -/
def P56134880898199442.Spec : Prop :=
  ∀ n, P56134880898199442.a n = A068344 n

theorem P56134880898199442.correct : P56134880898199442.Spec := by
  intro n
  simp only [A068344]

end A068344

/-! ## A068344.P11115892866531338100

`A130517(A122797(n+1))-A130517(n+1)`
-/

namespace A068344.P11115892866531338100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A122797 (n + 1)).toNat - A130517 (n + 1)

end

end A068344.P11115892866531338100

namespace A068344

/-- `A130517(A122797(n+1))-A130517(n+1)` -/
def P11115892866531338100.Spec : Prop :=
  ∀ n, P11115892866531338100.a n = A068344 n

end A068344

/-! ## A068344.P5174154222012829697

`Δ[-A053616(n)]`
-/

namespace A068344.P5174154222012829697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068344.P5174154222012829697

namespace A068344

/-- `Δ[-A053616(n)]` -/
def P5174154222012829697.Spec : Prop :=
  ∀ n, P5174154222012829697.a n = A068344 n

end A068344

/-! ## A068344.P8634791255997655008

`Δ[(1-A274773(n+1))/2]`
-/

namespace A068344.P8634791255997655008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A274773 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068344.P8634791255997655008

namespace A068344

/-- `Δ[(1-A274773(n+1))/2]` -/
def P8634791255997655008.Spec : Prop :=
  ∀ n, P8634791255997655008.a n = (A068344 n : ℚ)

end A068344

/-! ## A068344.P913961727586800394

`Δ[A003984(n)-floor(sqrt(2*n))]`
-/

namespace A068344.P913961727586800394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n - (Nat.sqrt (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068344.P913961727586800394

namespace A068344

/-- `Δ[A003984(n)-floor(sqrt(2*n))]` -/
def P913961727586800394.Spec : Prop :=
  ∀ n, P913961727586800394.a n = A068344 n

end A068344

/-! ## A068344.P1010941816036012601

`A008683(Δ[A053616(n)]+16)`
-/

namespace A068344.P1010941816036012601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n + 16).toNat

end

end A068344.P1010941816036012601

namespace A068344

/-- `A008683(Δ[A053616(n)]+16)` -/
def P1010941816036012601.Spec : Prop :=
  ∀ n, P1010941816036012601.a n = A068344 n

end A068344

/-! ## A068344.P4488529556401217097

`A053616(n)-A053616(n+1)`
-/

namespace A068344.P4488529556401217097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n - A053616 (n + 1)

end

end A068344.P4488529556401217097

namespace A068344

/-- `A053616(n)-A053616(n+1)` -/
def P4488529556401217097.Spec : Prop :=
  ∀ n, P4488529556401217097.a n = A068344 n

end A068344

/-! ## A068344.P2783073239246298971

`A185180(n+1)-A064789(n+1)`
-/

namespace A068344.P2783073239246298971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1) - A064789 (n + 1)

end

end A068344.P2783073239246298971

namespace A068344

/-- `A185180(n+1)-A064789(n+1)` -/
def P2783073239246298971.Spec : Prop :=
  ∀ n, P2783073239246298971.a n = A068344 n

end A068344

/-! ## A068344.P11605709536269069470

`A194959(n+1)-A210535(n+1)`
-/

namespace A068344.P11605709536269069470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 1) - A210535 (n + 1)

end

end A068344.P11605709536269069470

namespace A068344

/-- `A194959(n+1)-A210535(n+1)` -/
def P11605709536269069470.Spec : Prop :=
  ∀ n, P11605709536269069470.a n = A068344 n

end A068344

/-! ## A068344.P2027559170447272395

`A375510(A061579(n))-A375510(n)`
-/

namespace A068344.P2027559170447272395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375510 (A061579 n).toNat - A375510 n

end

end A068344.P2027559170447272395

namespace A068344

/-- `A375510(A061579(n))-A375510(n)` -/
def P2027559170447272395.Spec : Prop :=
  ∀ n, P2027559170447272395.a n = A068344 n

end A068344

/-! ## A068344.P10263110884509405098

`A064578(n+1)-A064578(A038722(n+1))`
-/

namespace A068344.P10263110884509405098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (n + 1) - A064578 (A038722 (n + 1)).toNat

end

end A068344.P10263110884509405098

namespace A068344

/-- `A064578(n+1)-A064578(A038722(n+1))` -/
def P10263110884509405098.Spec : Prop :=
  ∀ n, P10263110884509405098.a n = A068344 n

end A068344

/-! ## A068344.P11333226516658727316

`A064789(A038722(n+1))-A064789(n+1)`
-/

namespace A068344.P11333226516658727316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A038722 (n + 1)).toNat - A064789 (n + 1)

end

end A068344.P11333226516658727316

namespace A068344

/-- `A064789(A038722(n+1))-A064789(n+1)` -/
def P11333226516658727316.Spec : Prop :=
  ∀ n, P11333226516658727316.a n = A068344 n

end A068344

/-! ## A068344.P9101630598995275392

`A077605(A038722(n+1))-A077605(n+1)`
-/

namespace A068344.P9101630598995275392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (A038722 (n + 1)).toNat - A077605 (n + 1)

end

end A068344.P9101630598995275392

namespace A068344

/-- `A077605(A038722(n+1))-A077605(n+1)` -/
def P9101630598995275392.Spec : Prop :=
  ∀ n, P9101630598995275392.a n = A068344 n

end A068344

/-! ## A068344.P3535658361922513883

`A185180(n+1)-A185180(A038722(n+1))`
-/

namespace A068344.P3535658361922513883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1) - A185180 (A038722 (n + 1)).toNat

end

end A068344.P3535658361922513883

namespace A068344

/-- `A185180(n+1)-A185180(A038722(n+1))` -/
def P3535658361922513883.Spec : Prop :=
  ∀ n, P3535658361922513883.a n = A068344 n

end A068344

/-!
# A068345: Powers of 2, the fourth-from-last digit of which equals 7.

The programs for A068345, there is no canonical definition to state claims against.
-/

/-! ## A068345.P3648664168376119866

`2^A066867(n+1)`
-/

namespace A068345.P3648664168376119866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A066867 (n + 1) : ℤ)

end

end A068345.P3648664168376119866

/-! ## A068345.P14380547295390500849

`A000079(A066867(n+1))`
-/

namespace A068345.P14380547295390500849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A066867 (n + 1)).toNat

end

end A068345.P14380547295390500849

/-!
# A068346: a(n) = n'' = second arithmetic derivative of n.

The programs for A068346, the canonical program `A068346.P16736836852944168196` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068346 has offset 0).

The definition of A068346 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068346.P16736836852944168196

`A003415(A003415(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068346

/-- `A003415(A003415(n))` -/
def P16736836852944168196.Spec : Prop :=
  ∀ n, P16736836852944168196.a n = A068346 n

theorem P16736836852944168196.correct : P16736836852944168196.Spec := by
  intro n
  simp only [A068346]

end A068346

/-! ## A068346.P5896616491182002797

`A368921(n)-A368922(n)`
-/

namespace A068346.P5896616491182002797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368921 n - A368922 n

end

end A068346.P5896616491182002797

namespace A068346

/-- `A368921(n)-A368922(n)` -/
def P5896616491182002797.Spec : Prop :=
  ∀ n, P5896616491182002797.a n = A068346 n

theorem P5896616491182002797.correct : P5896616491182002797.Spec := by
  intro n
  simp only [A068346, Nat.add_sub_cancel, A068346.P5896616491182002797.a, A068346.P16736836852944168196.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A368921, A368921.P16218200472489161701.a, A368922, A368922.P14212543227731437935.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068346

/-! ## A068346.P17852764467024541365

`∑{d}[∑{d}[n, A300251(#)], A300251(#)]`
-/

namespace A068346.P17852764467024541365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A300251 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A068346.P17852764467024541365

namespace A068346

/-- `∑{d}[∑{d}[n, A300251(#)], A300251(#)]` -/
def P17852764467024541365.Spec : Prop :=
  ∀ n, P17852764467024541365.a n = A068346 n

end A068346

/-! ## A068346.P1344211688553823515

`A168036(A168036(n)+n)+A168036(n)+n`
-/

namespace A068346.P1344211688553823515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (A168036 n + (n : ℤ)).toNat + (A168036 n + (n : ℤ))

end

end A068346.P1344211688553823515

namespace A068346

/-- `A168036(A168036(n)+n)+A168036(n)+n` -/
def P1344211688553823515.Spec : Prop :=
  ∀ n, P1344211688553823515.a n = A068346 n

end A068346

/-! ## A068346.P1830737187169916478

`A129283(A129283(n)-n)+n-A129283(n)`
-/

namespace A068346.P1830737187169916478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (A129283 n - (n : ℤ)).toNat + ((n : ℤ) - A129283 n)

end

end A068346.P1830737187169916478

namespace A068346

/-- `A129283(A129283(n)-n)+n-A129283(n)` -/
def P1830737187169916478.Spec : Prop :=
  ∀ n, P1830737187169916478.a n = A068346 n

end A068346

/-! ## A068346.P16586904742583245289

`A319703(A004277(n))+A168036(A168036(n)+n)`
-/

namespace A068346.P16586904742583245289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A004277 n).toNat + A168036 (A168036 n + (n : ℤ)).toNat

end

end A068346.P16586904742583245289

namespace A068346

/-- `A319703(A004277(n))+A168036(A168036(n)+n)` -/
def P16586904742583245289.Spec : Prop :=
  ∀ n, P16586904742583245289.a n = A068346 n

end A068346

/-! ## A068346.P9128936599202813508

`A129283(A129283(n)-n)-A319703(A004277(n))`
-/

namespace A068346.P9128936599202813508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (A129283 n - (n : ℤ)).toNat - A319703 (A004277 n).toNat

end

end A068346.P9128936599202813508

namespace A068346

/-- `A129283(A129283(n)-n)-A319703(A004277(n))` -/
def P9128936599202813508.Spec : Prop :=
  ∀ n, P9128936599202813508.a n = A068346 n

end A068346

/-! ## A068346.P11877412745333781876

`A129283(A129283(n)-n)-A319703(A028310(2*n))`
-/

namespace A068346.P11877412745333781876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (A129283 n - (n : ℤ)).toNat - A319703 (A028310 (2 * n)).toNat

end

end A068346.P11877412745333781876

namespace A068346

/-- `A129283(A129283(n)-n)-A319703(A028310(2*n))` -/
def P11877412745333781876.Spec : Prop :=
  ∀ n, P11877412745333781876.a n = A068346 n

end A068346

/-! ## A068346.P7063877735972785974

`A129283(A005843(n)-(n-A168036(n)))-(A129283(n)-n)`
-/

namespace A068346.P7063877735972785974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (A005843 n - ((n : ℤ) - A168036 n)).toNat - (A129283 n - (n : ℤ))

end

end A068346.P7063877735972785974

namespace A068346

/-- `A129283(A005843(n)-(n-A168036(n)))-(A129283(n)-n)` -/
def P7063877735972785974.Spec : Prop :=
  ∀ n, P7063877735972785974.a n = A068346 n

end A068346

/-! ## A068346.P15541662881470544932

`A168036(A168036(4*n))/4`
-/

namespace A068346.P15541662881470544932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168036 (A168036 (4 * n)).toNat : ℚ) / 4

end

end A068346.P15541662881470544932

namespace A068346

/-- `A168036(A168036(4*n))/4` -/
def P15541662881470544932.Spec : Prop :=
  ∀ n, P15541662881470544932.a n = (A068346 n : ℚ)

end A068346

/-! ## A068346.P4850602908772574690

`A258651(∑[n+3])`
-/

namespace A068346.P4850602908772574690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068346.P4850602908772574690

namespace A068346

/-- `A258651(∑[n+3])` -/
def P4850602908772574690.Spec : Prop :=
  ∀ n, P4850602908772574690.a n = A068346 n

end A068346

/-!
# A068347: Number of partitions of A066925(n) into x_i parts.

The programs for A068347, there is no canonical definition to state claims against.
-/

/-! ## A068347.P7615187200805383016

`A043280(A114320(n)+A074377(n))`
-/

namespace A068347.P7615187200805383016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A114320 n + A074377 n).toNat

end

end A068347.P7615187200805383016

/-! ## A068347.P7353595545545614687

`A146291(A083345(n+1)+A000032(n))`
-/

namespace A068347.P7353595545545614687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146291 (A083345 (n + 1) + A000032 n).toNat

end

end A068347.P7353595545545614687

/-! ## A068347.P4129131174627571377

`A319420(A324563(n)+A304972(n+1))`
-/

namespace A068347.P4129131174627571377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (A324563 n + A304972 (n + 1)).toNat

end

end A068347.P4129131174627571377

/-! ## A068347.P8441941318710299782

`gcd(A096811(A002729(n)), A285976(n+2))`
-/

namespace A068347.P8441941318710299782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096811 (A002729 n).toNat) (A285976 (n + 2))

end

end A068347.P8441941318710299782

/-! ## A068347.P13860481358729659574

`A341674(lcm(A059268(n), A333860(n+1)))`
-/

namespace A068347.P13860481358729659574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341674 (Int.lcm (A059268 n) (A333860 (n + 1)))

end

end A068347.P13860481358729659574

/-!
# A068349: Numbers k having a partition k=Sum x_i for which Product k/x_i is also a way of factoring k.

The programs for A068349, there is no canonical definition to state claims against.
-/

/-! ## A068349.P5796743826602775695

`A003963(A115205(n)*A316855(n+1))`
-/

namespace A068349.P5796743826602775695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A115205 n * A316855 (n + 1)).toNat

end

end A068349.P5796743826602775695

/-! ## A068349.P4552259561200843571

`A003963(A271518(n)*A316855(n+1))`
-/

namespace A068349.P4552259561200843571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A271518 n * A316855 (n + 1)).toNat

end

end A068349.P4552259561200843571

/-! ## A068349.P4488837513253376167

`A003963(A316855(n+1)^A115205(n))`
-/

namespace A068349.P4488837513253376167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway ((A316855 (n + 1) : ℚ) ^ (A115205 n : ℤ))).toNat

end

end A068349.P4488837513253376167

/-! ## A068349.P2501547409217515881

`A003963(lcm(A115205(n), A316855(n+1)))`
-/

namespace A068349.P2501547409217515881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm (A115205 n) (A316855 (n + 1)))

end

end A068349.P2501547409217515881

/-! ## A068349.P11029792924513079590

`A003963(C(A316855(n+1), A115205(n)))`
-/

namespace A068349.P11029792924513079590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Nat.choose (A316855 (n + 1)).toNat (A115205 n).toNat)

end

end A068349.P11029792924513079590

/-!
# A068350: Numbers n such that n*tau(n) > prime(2*n) where tau(n) = A000005(n).

The programs for A068350, the canonical program `A068350.P17751297019967877582` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068350 has offset 1).

The definition of A068350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068350.P17751297019967877582

`lt[A000040(2*n+1), A038040(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A068350

/-- `lt[A000040(2*n+1), A038040(n+1)]+1` -/
def P17751297019967877582.Spec : Prop :=
  ∀ n, (P17751297019967877582.a n : ℤ) = A068350 (n + 1)

theorem P17751297019967877582.correct : P17751297019967877582.Spec := by
  intro n
  simp only [A068350, Nat.add_sub_cancel]

end A068350

/-! ## A068350.P1540324908524884925

`lt[A008578(2*n+1), A038040(A028310(n))]`
-/

namespace A068350.P1540324908524884925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068350.P1540324908524884925

namespace A068350

/-- `lt[A008578(2*n+1), A038040(A028310(n))]` -/
def P1540324908524884925.Spec : Prop :=
  ∀ n, (P1540324908524884925.a n : ℤ) = A068350 (n + 1)

end A068350

/-! ## A068350.P15207905115188071915

`lt[A039653(n), A024816(A033630(n))]`
-/

namespace A068350.P15207905115188071915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068350.P15207905115188071915

namespace A068350

/-- `lt[A039653(n), A024816(A033630(n))]` -/
def P15207905115188071915.Spec : Prop :=
  ∀ n, (P15207905115188071915.a n : ℤ) = A068350 (n + 1)

end A068350

/-! ## A068350.P14121922749556726232

`lt[A028310(n), A186349(A033630(n))]`
-/

namespace A068350.P14121922749556726232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186349 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068350.P14121922749556726232

namespace A068350

/-- `lt[A028310(n), A186349(A033630(n))]` -/
def P14121922749556726232.Spec : Prop :=
  ∀ n, (P14121922749556726232.a n : ℤ) = A068350 (n + 1)

end A068350

/-! ## A068350.P2938327486191415401

`lt[A163169(n), A091194(A033630(n))]`
-/

namespace A068350.P2938327486191415401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068350.P2938327486191415401

namespace A068350

/-- `lt[A163169(n), A091194(A033630(n))]` -/
def P2938327486191415401.Spec : Prop :=
  ∀ n, (P2938327486191415401.a n : ℤ) = A068350 (n + 1)

end A068350

/-!
# A068351: Numbers n such that n*tau(n)>prime(3*n) where tau(n)=A000005(n).

The programs for A068351, there is no canonical definition to state claims against.
-/

/-! ## A068351.P17363543574273509335

`lt[A074203(A074208(n+1)), A033630(n)]`
-/

namespace A068351.P17363543574273509335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074203 (A074208 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068351.P17363543574273509335

/-! ## A068351.P18201196729475405323

`record[A068403(A063660(∑{e}[n, #]))]`
-/

namespace A068351.P18201196729475405323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (A063660 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068351.P18201196729475405323

/-!
# A068354: Numbers n such that sigma(n)*tau(n) > prime(2*n) where sigma(n) is the sum of divisors of n and tau(n) the number of divisors of n (A000005).

The programs for A068354, there is no canonical definition to state claims against.
-/

/-! ## A068354.P11570435159891096923

`lt[A186188(A156077(n+1)), A032741(n)]`
-/

namespace A068354.P11570435159891096923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186188 (A156077 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068354.P11570435159891096923

/-! ## A068354.P10247383255354490763

`lt[A003714(n), A074206(n²)]`
-/

namespace A068354.P10247383255354490763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068354.P10247383255354490763

/-! ## A068354.P4477831070193360691

`lt[A179016(n), A074206(n²)]`
-/

namespace A068354.P4477831070193360691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068354.P4477831070193360691

/-! ## A068354.P4833708291171379770

`lt[A002384(n+1), A074206(n²)]`
-/

namespace A068354.P4833708291171379770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068354.P4833708291171379770

/-! ## A068354.P17584739680228053294

`lt[A022819(n+1), A074206(n²)]`
-/

namespace A068354.P17584739680228053294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068354.P17584739680228053294

/-! ## A068354.P11804880396988696564

`lt[A055494(n+1), A074206(n²)]`
-/

namespace A068354.P11804880396988696564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068354.P11804880396988696564

/-! ## A068354.P16081567491562935076

`lt[A235050(n+1), A074206(n²)]`
-/

namespace A068354.P16081567491562935076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068354.P16081567491562935076

/-!
# A068355: Odd numbers k such that sigma(k)*tau(k) > prime(2*k), where sigma(k) is the sum of divisors of k and tau(k) is the number of divisors of k.

The programs for A068355, there is no canonical definition to state claims against.
-/

/-! ## A068355.P12090005185678269185

`∩[2*n+1, A068354(n+1)]`
-/

namespace A068355.P12090005185678269185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P12090005185678269185

/-! ## A068355.P10726422782391178100

`∩[A068354(n+1), A090196(n+1)]`
-/

namespace A068355.P10726422782391178100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P10726422782391178100

/-! ## A068355.P1576634291363927096

`∩[A068354(n+1), A176847(n+1)]`
-/

namespace A068355.P1576634291363927096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P1576634291363927096

/-! ## A068355.P2014611735030965058

`∩[A068354(n+1), A226025(n+1)]`
-/

namespace A068355.P2014611735030965058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P2014611735030965058

/-! ## A068355.P13080427994721259442

`∩[A068354(n+1), A071904(n+1)]`
-/

namespace A068355.P13080427994721259442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P13080427994721259442

/-! ## A068355.P17073950395017186886

`∩[A068354(n+1), A257521(n+1)]`
-/

namespace A068355.P17073950395017186886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P17073950395017186886

/-! ## A068355.P7536657959702920592

`∩[A068354(n+1), A329095(n+1)]`
-/

namespace A068355.P7536657959702920592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P7536657959702920592

/-! ## A068355.P5975893039282239594

`∩[A068354(n+1), A327922(n+1)]`
-/

namespace A068355.P5975893039282239594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P5975893039282239594

/-! ## A068355.P1948293668983534962

`∩[A068354(n+1), A296243(n+1)]`
-/

namespace A068355.P1948293668983534962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P1948293668983534962

/-! ## A068355.P1628572511102029799

`∩[A068354(n+1), A216848(n+1)]`
-/

namespace A068355.P1628572511102029799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P1628572511102029799

/-! ## A068355.P706240948081922643

`∩[A068354(n+1), A255763(n+1)]`
-/

namespace A068355.P706240948081922643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P706240948081922643

/-! ## A068355.P10168175697516568358

`∩[A068354(n+1), A193071(n+1)]`
-/

namespace A068355.P10168175697516568358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P10168175697516568358

/-! ## A068355.P5697992365301998297

`∩[A068354(n+1), A257292(n+1)]`
-/

namespace A068355.P5697992365301998297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P5697992365301998297

/-! ## A068355.P5421375565143790546

`∩[A068354(n+1), A004273(n)]`
-/

namespace A068355.P5421375565143790546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P5421375565143790546

/-! ## A068355.P5280348397032611973

`∩[A068354(n+1), A004274(n)]`
-/

namespace A068355.P5280348397032611973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P5280348397032611973

/-! ## A068355.P4862293963985830619

`∩[A068354(n+1), A020742(n)]`
-/

namespace A068355.P4862293963985830619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P4862293963985830619

/-! ## A068355.P3481661707380202722

`∩[A068354(n+1), A060747(n)]`
-/

namespace A068355.P3481661707380202722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P3481661707380202722

/-! ## A068355.P7803124506990455802

`∩[A068354(n+1), A062545(n)]`
-/

namespace A068355.P7803124506990455802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P7803124506990455802

/-! ## A068355.P9544862030625694683

`∩[A068354(n+1), A130773(n)]`
-/

namespace A068355.P9544862030625694683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P9544862030625694683

/-! ## A068355.P9060691086614379412

`∩[A068354(n+1), A163985(n)]`
-/

namespace A068355.P9060691086614379412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068355.P9060691086614379412

/-!
# A068359: Binomial(2k,k) when the first digit of binomial(2k,k) is 1.

The programs for A068359, there is no canonical definition to state claims against.
-/

/-! ## A068359.P15330324286861214980

`A000984(A068358(n+1))`
-/

namespace A068359.P15330324286861214980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A068358 (n + 1)).toNat

end

end A068359.P15330324286861214980

/-! ## A068359.P16531641333686184005

`A001405(2*A068358(n+1))`
-/

namespace A068359.P16531641333686184005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * A068358 (n + 1)).toNat

end

end A068359.P16531641333686184005

/-! ## A068359.P2982493545713693645

`A126869(2*A068358(n+1))`
-/

namespace A068359.P2982493545713693645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * A068358 (n + 1)).toNat

end

end A068359.P2982493545713693645

/-! ## A068359.P8683521082126671174

`A126869(A068358(n+1)+A068358(n+1))`
-/

namespace A068359.P8683521082126671174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A068358 (n + 1) + A068358 (n + 1)).toNat

end

end A068359.P8683521082126671174

/-!
# A068360: Numbers n such that there is no squarefree number between prime(n) and prime(n+1).

The programs for A068360, the canonical program `A068360.P6452734454492579560` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068360 has offset 1).

The definition of A068360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068360.P16268304812394016852

`eq[1, A373198(n+1)]+1`
-/

namespace A068360.P16268304812394016852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373198 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068360.P16268304812394016852

namespace A068360

/-- `eq[1, A373198(n+1)]+1` -/
def P16268304812394016852.Spec : Prop :=
  ∀ n, (P16268304812394016852.a n : ℤ) = A068360 (n + 1)

end A068360

/-! ## A068360.P6452734454492579560

`lt[A061398(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068360

/-- `lt[A061398(n+1), 1]+1` -/
def P6452734454492579560.Spec : Prop :=
  ∀ n, (P6452734454492579560.a n : ℤ) = A068360 (n + 1)

theorem P6452734454492579560.correct : P6452734454492579560.Spec := by
  intro n
  simp only [A068360, Nat.add_sub_cancel]

end A068360

/-! ## A068360.P13693796380952320101

`lt[Δ[A112929(n+1)], 2]+1`
-/

namespace A068360.P13693796380952320101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A068360.P13693796380952320101

namespace A068360

/-- `lt[Δ[A112929(n+1)], 2]+1` -/
def P13693796380952320101.Spec : Prop :=
  ∀ n, (P13693796380952320101.a n : ℤ) = A068360 (n + 1)

end A068360

/-! ## A068360.P10986209243414125944

`eq[A054541(n+1), A240473(n+1)]`
-/

namespace A068360.P10986209243414125944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068360.P10986209243414125944

namespace A068360

/-- `eq[A054541(n+1), A240473(n+1)]` -/
def P10986209243414125944.Spec : Prop :=
  ∀ n, (P10986209243414125944.a n : ℤ) = A068360 (n + 1)

end A068360

/-! ## A068360.P12094614192441529049

`eq[A125266(n+1), A240473(n+1)]`
-/

namespace A068360.P12094614192441529049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068360.P12094614192441529049

namespace A068360

/-- `eq[A125266(n+1), A240473(n+1)]` -/
def P12094614192441529049.Spec : Prop :=
  ∀ n, (P12094614192441529049.a n : ℤ) = A068360 (n + 1)

end A068360

/-! ## A068360.P14793250967933398366

`A000720(A061400(n+1))`
-/

namespace A068360.P14793250967933398366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A061400 (n + 1)).toNat

end

end A068360.P14793250967933398366

namespace A068360

/-- `A000720(A061400(n+1))` -/
def P14793250967933398366.Spec : Prop :=
  ∀ n, P14793250967933398366.a n = A068360 (n + 1)

end A068360

/-! ## A068360.P12078440891143977869

`A000720(p?[A112925(n+1)])`
-/

namespace A068360.P12078440891143977869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068360.P12078440891143977869

namespace A068360

/-- `A000720(p?[A112925(n+1)])` -/
def P12078440891143977869.Spec : Prop :=
  ∀ n, P12078440891143977869.a n = A068360 (n + 1)

end A068360

/-! ## A068360.P9055524480373822945

`A061395(p?[A112925(n+1)])`
-/

namespace A068360.P9055524480373822945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068360.P9055524480373822945

namespace A068360

/-- `A061395(p?[A112925(n+1)])` -/
def P9055524480373822945.Spec : Prop :=
  ∀ n, P9055524480373822945.a n = A068360 (n + 1)

end A068360

/-! ## A068360.P10194357308707109716

`A000720(A112928(n+1)-1)`
-/

namespace A068360.P10194357308707109716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A112928 (n + 1) - 1).toNat

end

end A068360.P10194357308707109716

namespace A068360

/-- `A000720(A112928(n+1)-1)` -/
def P10194357308707109716.Spec : Prop :=
  ∀ n, P10194357308707109716.a n = A068360 (n + 1)

end A068360

/-! ## A068360.P10191987829978939606

`A000720(xor(1, A112928(n+1)))`
-/

namespace A068360.P10191987829978939606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A112928 (n + 1))).toNat

end

end A068360.P10191987829978939606

namespace A068360

/-- `A000720(xor(1, A112928(n+1)))` -/
def P10191987829978939606.Spec : Prop :=
  ∀ n, P10191987829978939606.a n = A068360 (n + 1)

end A068360

/-! ## A068360.P15647101274080088051

`A000720(p?[A000040(n+1)-A240473(n+1)])`
-/

namespace A068360.P15647101274080088051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A240473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068360.P15647101274080088051

namespace A068360

/-- `A000720(p?[A000040(n+1)-A240473(n+1)])` -/
def P15647101274080088051.Spec : Prop :=
  ∀ n, P15647101274080088051.a n = A068360 (n + 1)

end A068360

/-! ## A068360.P8862465166982215292

`A263297(p?[A112925(n+1)])`
-/

namespace A068360.P8862465166982215292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068360.P8862465166982215292

namespace A068360

/-- `A263297(p?[A112925(n+1)])` -/
def P8862465166982215292.Spec : Prop :=
  ∀ n, P8862465166982215292.a n = A068360 (n + 1)

end A068360

/-! ## A068360.P18308708753200854070

`eq[1, A068328(A112929(n+1))]`
-/

namespace A068360.P18308708753200854070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068328 (A112929 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068360.P18308708753200854070

namespace A068360

/-- `eq[1, A068328(A112929(n+1))]` -/
def P18308708753200854070.Spec : Prop :=
  ∀ n, (P18308708753200854070.a n : ℤ) = A068360 (n + 1)

end A068360

/-! ## A068360.P13525317550669942339

`eq[1, A068328(eq[1, A068328(n+1)])]`
-/

namespace A068360.P13525317550669942339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068328 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068360.P13525317550669942339

namespace A068360

/-- `eq[1, A068328(eq[1, A068328(n+1)])]` -/
def P13525317550669942339.Spec : Prop :=
  ∀ n, (P13525317550669942339.a n : ℤ) = A068360 (n + 1)

end A068360

/-! ## A068360.P3330149191853771036

`eq[1, A072047(eq[1, A072047(n+1)])]`
-/

namespace A068360.P3330149191853771036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072047 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068360.P3330149191853771036

namespace A068360

/-- `eq[1, A072047(eq[1, A072047(n+1)])]` -/
def P3330149191853771036.Spec : Prop :=
  ∀ n, (P3330149191853771036.a n : ℤ) = A068360 (n + 1)

end A068360

/-! ## A068360.P8636980752913635384

`eq[2, A072048(eq[2, A072048(n+1)])]`
-/

namespace A068360.P8636980752913635384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072048 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068360.P8636980752913635384

namespace A068360

/-- `eq[2, A072048(eq[2, A072048(n+1)])]` -/
def P8636980752913635384.Spec : Prop :=
  ∀ n, (P8636980752913635384.a n : ℤ) = A068360 (n + 1)

end A068360

/-! ## A068360.P2494537022726469129

`A033270(A112928(n+1))`
-/

namespace A068360.P2494537022726469129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A112928 (n + 1)).toNat

end

end A068360.P2494537022726469129

namespace A068360

/-- `A033270(A112928(n+1))` -/
def P2494537022726469129.Spec : Prop :=
  ∀ n, P2494537022726469129.a n = A068360 (n + 1)

end A068360

/-! ## A068360.P16686130309611281818

`A003963(p?[A112925(n+1)])`
-/

namespace A068360.P16686130309611281818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068360.P16686130309611281818

namespace A068360

/-- `A003963(p?[A112925(n+1)])` -/
def P16686130309611281818.Spec : Prop :=
  ∀ n, P16686130309611281818.a n = A068360 (n + 1)

end A068360

/-! ## A068360.P4910919846561240989

`A049084(p?[A112925(n+1)])`
-/

namespace A068360.P4910919846561240989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068360.P4910919846561240989

namespace A068360

/-- `A049084(p?[A112925(n+1)])` -/
def P4910919846561240989.Spec : Prop :=
  ∀ n, P4910919846561240989.a n = A068360 (n + 1)

end A068360

/-! ## A068360.P2764904291122069730

`record[(n+1)/A085392(A112925(n+2))]`
-/

namespace A068360.P2764904291122069730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A085392 (A112925 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068360.P2764904291122069730

namespace A068360

/-- `record[(n+1)/A085392(A112925(n+2))]` -/
def P2764904291122069730.Spec : Prop :=
  ∀ n, P2764904291122069730.a n = (A068360 (n + 1) : ℚ)

end A068360

/-!
# A068361: Numbers n such that the number of squarefree numbers between prime(n) and prime(n+1) = prime(n+1)-prime(n)-1.

The programs for A068361, the canonical program `A068361.P16417839117735108684` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068361 has offset 1).

The definition of A068361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068361.P13980415771793267841

`eq[A069114(n+1), A162800(n)]`
-/

namespace A068361.P13980415771793267841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068361.P13980415771793267841

namespace A068361

/-- `eq[A069114(n+1), A162800(n)]` -/
def P13980415771793267841.Spec : Prop :=
  ∀ n, (P13980415771793267841.a n : ℤ) = A068361 (n + 1)

end A068361

/-! ## A068361.P16417839117735108684

`eq[A077063(n+1), A162800(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A068361

/-- `eq[A077063(n+1), A162800(n)]` -/
def P16417839117735108684.Spec : Prop :=
  ∀ n, (P16417839117735108684.a n : ℤ) = A068361 (n + 1)

theorem P16417839117735108684.correct : P16417839117735108684.Spec := by
  intro n
  simp only [A068361, Nat.add_sub_cancel]

end A068361

/-! ## A068361.P13043478462360434578

`eq[A023526(n+1), A054541(n+1)]`
-/

namespace A068361.P13043478462360434578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068361.P13043478462360434578

namespace A068361

/-- `eq[A023526(n+1), A054541(n+1)]` -/
def P13043478462360434578.Spec : Prop :=
  ∀ n, (P13043478462360434578.a n : ℤ) = A068361 (n + 1)

end A068361

/-! ## A068361.P15495855624015394387

`eq[A023526(n+1), A125266(n+1)]`
-/

namespace A068361.P15495855624015394387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068361.P15495855624015394387

namespace A068361

/-- `eq[A023526(n+1), A125266(n+1)]` -/
def P15495855624015394387.Spec : Prop :=
  ∀ n, (P15495855624015394387.a n : ℤ) = A068361 (n + 1)

end A068361

/-! ## A068361.P7259617661252682925

`A000720(A061351(n))`
-/

namespace A068361.P7259617661252682925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A061351 n).toNat

end

end A068361.P7259617661252682925

namespace A068361

/-- `A000720(A061351(n))` -/
def P7259617661252682925.Spec : Prop :=
  ∀ n, P7259617661252682925.a n = A068361 (n + 1)

end A068361

/-! ## A068361.P16920203182538847170

`A061395(p?[A061351(n)])`
-/

namespace A068361.P16920203182538847170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068361.P16920203182538847170

namespace A068361

/-- `A061395(p?[A061351(n)])` -/
def P16920203182538847170.Spec : Prop :=
  ∀ n, P16920203182538847170.a n = A068361 (n + 1)

end A068361

/-! ## A068361.P4338921788391495999

`∑{d}[A061351(n), A061395(#)]`
-/

namespace A068361.P4338921788391495999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A068361.P4338921788391495999

namespace A068361

/-- `∑{d}[A061351(n), A061395(#)]` -/
def P4338921788391495999.Spec : Prop :=
  ∀ n, P4338921788391495999.a n = A068361 (n + 1)

end A068361

/-! ## A068361.P721676702310593639

`A000720(record[A078579(n+1)])`
-/

namespace A068361.P721676702310593639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068361.P721676702310593639

namespace A068361

/-- `A000720(record[A078579(n+1)])` -/
def P721676702310593639.Spec : Prop :=
  ∀ n, P721676702310593639.a n = A068361 (n + 1)

end A068361

/-! ## A068361.P836891055591753323

`A000720(record[lcm(2, A066653(n+1))])`
-/

namespace A068361.P836891055591753323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A066653 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A068361.P836891055591753323

namespace A068361

/-- `A000720(record[lcm(2, A066653(n+1))])` -/
def P836891055591753323.Spec : Prop :=
  ∀ n, P836891055591753323.a n = A068361 (n + 1)

end A068361

/-! ## A068361.P2835957705715361297

`A061395(A061351(n))%A078776(n+1)`
-/

namespace A068361.P2835957705715361297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A061351 n).toNat) (A078776 (n + 1))

end

end A068361.P2835957705715361297

namespace A068361

/-- `A061395(A061351(n))%A078776(n+1)` -/
def P2835957705715361297.Spec : Prop :=
  ∀ n, P2835957705715361297.a n = A068361 (n + 1)

end A068361

/-! ## A068361.P10853647091622078933

`A061395(A061351(n)%A094489(n+1))`
-/

namespace A068361.P10853647091622078933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A061351 n) (A094489 (n + 1))).toNat

end

end A068361.P10853647091622078933

namespace A068361

/-- `A061395(A061351(n)%A094489(n+1))` -/
def P10853647091622078933.Spec : Prop :=
  ∀ n, P10853647091622078933.a n = A068361 (n + 1)

end A068361

/-! ## A068361.P4276485737313954901

`A302039(p?[A061351(n)])`
-/

namespace A068361.P4276485737313954901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068361.P4276485737313954901

namespace A068361

/-- `A302039(p?[A061351(n)])` -/
def P4276485737313954901.Spec : Prop :=
  ∀ n, P4276485737313954901.a n = A068361 (n + 1)

end A068361

/-! ## A068361.P1682475118501440128

`A302039(A061351(n)+2)-1`
-/

namespace A068361.P1682475118501440128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A061351 n + 2).toNat - 1

end

end A068361.P1682475118501440128

namespace A068361

/-- `A302039(A061351(n)+2)-1` -/
def P1682475118501440128.Spec : Prop :=
  ∀ n, P1682475118501440128.a n = A068361 (n + 1)

end A068361

/-! ## A068361.P8762170030810594940

`A302039(2*A061351(n)-A061351(n))`
-/

namespace A068361.P8762170030810594940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (2 * A061351 n - A061351 n).toNat

end

end A068361.P8762170030810594940

namespace A068361

/-- `A302039(2*A061351(n)-A061351(n))` -/
def P8762170030810594940.Spec : Prop :=
  ∀ n, P8762170030810594940.a n = A068361 (n + 1)

end A068361

/-! ## A068361.P15604544272559090380

`A061395(2*A061351(n))`
-/

namespace A068361.P15604544272559090380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A061351 n).toNat

end

end A068361.P15604544272559090380

namespace A068361

/-- `A061395(2*A061351(n))` -/
def P15604544272559090380.Spec : Prop :=
  ∀ n, P15604544272559090380.a n = A068361 (n + 1)

end A068361

/-! ## A068361.P6501073347329786886

`A302039(2*A061351(n))-1`
-/

namespace A068361.P6501073347329786886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (2 * A061351 n).toNat - 1

end

end A068361.P6501073347329786886

namespace A068361

/-- `A302039(2*A061351(n))-1` -/
def P6501073347329786886.Spec : Prop :=
  ∀ n, P6501073347329786886.a n = A068361 (n + 1)

end A068361

/-!
# A068363: Primes p such that there exists k such that p = prime(k) + prime(k+2) + prime(k+4).

The programs for A068363, the canonical program `A068363.P395449518968758804` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068363 has offset 1).

The definition of A068363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2086 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068363.P395449518968758804

`p?[A034961(n+1)+A031165(n+2)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A068363

/-- `p?[A034961(n+1)+A031165(n+2)]` -/
def P395449518968758804.Spec : Prop :=
  ∀ n, P395449518968758804.a n = A068363 (n + 1)

theorem P395449518968758804.correct : P395449518968758804.Spec := by
  intro n
  simp only [A068363, Nat.add_sub_cancel]

end A068363

/-! ## A068363.P11968903140314505406

`p?[A031165(n+2)+A001043(n+2)+A000040(n+1)]`
-/

namespace A068363.P11968903140314505406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 2) + (A001043 (n + 2) + A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068363.P11968903140314505406

namespace A068363

/-- `p?[A031165(n+2)+A001043(n+2)+A000040(n+1)]` -/
def P11968903140314505406.Spec : Prop :=
  ∀ n, P11968903140314505406.a n = A068363 (n + 1)

end A068363

/-! ## A068363.P12318335901052981108

`p?[A031165(n+2)+A011974(n+3)+A000040(n+1)]`
-/

namespace A068363.P12318335901052981108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 2) + (A011974 (n + 3) + A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068363.P12318335901052981108

namespace A068363

/-- `p?[A031165(n+2)+A011974(n+3)+A000040(n+1)]` -/
def P12318335901052981108.Spec : Prop :=
  ∀ n, P12318335901052981108.a n = A068363 (n + 1)

end A068363

/-! ## A068363.P13572702350098181411

`p?[A031165(n+2)+A048448(n+2)+A000040(n+2)]`
-/

namespace A068363.P13572702350098181411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 2) + (A048448 (n + 2) + A000040 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068363.P13572702350098181411

namespace A068363

/-- `p?[A031165(n+2)+A048448(n+2)+A000040(n+2)]` -/
def P13572702350098181411.Spec : Prop :=
  ∀ n, P13572702350098181411.a n = A068363 (n + 1)

end A068363

/-! ## A068363.P13158218837524177554

`p?[A031165(n+2)+A096277(n+1)-A000040(n+2)]`
-/

namespace A068363.P13158218837524177554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 2) + (A096277 (n + 1) - A000040 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068363.P13158218837524177554

namespace A068363

/-- `p?[A031165(n+2)+A096277(n+1)-A000040(n+2)]` -/
def P13158218837524177554.Spec : Prop :=
  ∀ n, P13158218837524177554.a n = A068363 (n + 1)

end A068363

/-! ## A068363.P15123562183497784022

`p?[A073738(n+6)-A073738(n)]`
-/

namespace A068363.P15123562183497784022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073738 (n + 6) - A073738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068363.P15123562183497784022

namespace A068363

/-- `p?[A073738(n+6)-A073738(n)]` -/
def P15123562183497784022.Spec : Prop :=
  ∀ n, P15123562183497784022.a n = A068363 (n + 1)

end A068363

/-! ## A068363.P2967433006798202616

`p?[A048448(n+1)+A004139(n+2)]`
-/

namespace A068363.P2967433006798202616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 1) + A004139 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068363.P2967433006798202616

namespace A068363

/-- `p?[A048448(n+1)+A004139(n+2)]` -/
def P2967433006798202616.Spec : Prop :=
  ∀ n, P2967433006798202616.a n = A068363 (n + 1)

end A068363

/-! ## A068363.P9450281484872192459

`p?[A048449(n+1)-A000040(n+2)]`
-/

namespace A068363.P9450281484872192459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048449 (n + 1) - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068363.P9450281484872192459

namespace A068363

/-- `p?[A048449(n+1)-A000040(n+2)]` -/
def P9450281484872192459.Spec : Prop :=
  ∀ n, P9450281484872192459.a n = A068363 (n + 1)

end A068363

/-! ## A068363.P9737474983464842021

`p?[A065091(n+3)+A048448(n+1)]`
-/

namespace A068363.P9737474983464842021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 3) + A048448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068363.P9737474983464842021

namespace A068363

/-- `p?[A065091(n+3)+A048448(n+1)]` -/
def P9737474983464842021.Spec : Prop :=
  ∀ n, P9737474983464842021.a n = A068363 (n + 1)

end A068363

/-! ## A068363.P10089055975673844660

`record[A006530(A073738(n+6)-A073738(n))]`
-/

namespace A068363.P10089055975673844660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073738 (n + 6) - A073738 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068363.P10089055975673844660

namespace A068363

/-- `record[A006530(A073738(n+6)-A073738(n))]` -/
def P10089055975673844660.Spec : Prop :=
  ∀ n, P10089055975673844660.a n = A068363 (n + 1)

end A068363

/-! ## A068363.P12760710888113978470

`p?[A048448(n+1)+p?[A285343(n+5)]]`
-/

namespace A068363.P12760710888113978470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285343 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068363.P12760710888113978470

namespace A068363

/-- `p?[A048448(n+1)+p?[A285343(n+5)]]` -/
def P12760710888113978470.Spec : Prop :=
  ∀ n, P12760710888113978470.a n = A068363 (n + 1)

end A068363

/-! ## A068363.P6896552596458420543

`record[A014963(A073738(n+6)-A073738(n))]`
-/

namespace A068363.P6896552596458420543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A073738 (n + 6) - A073738 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068363.P6896552596458420543

namespace A068363

/-- `record[A014963(A073738(n+6)-A073738(n))]` -/
def P6896552596458420543.Spec : Prop :=
  ∀ n, P6896552596458420543.a n = A068363 (n + 1)

end A068363

/-!
# A068364: Primes p such that there exists k such that p = prime(k) + prime(k+2) + prime(k+4) + prime(k+6) + prime(k+8).

The programs for A068364, the canonical program `A068364.P8799271198221962977` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068364 has offset 1).

The definition of A068364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068364.P8799271198221962977

`record[A006530(A073738(n+10)-A073738(n))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A068364

/-- `record[A006530(A073738(n+10)-A073738(n))]` -/
def P8799271198221962977.Spec : Prop :=
  ∀ n, P8799271198221962977.a n = A068364 (n + 1)

theorem P8799271198221962977.correct : P8799271198221962977.Spec := by
  intro n
  simp only [A068364, Nat.add_sub_cancel]

end A068364

/-!
# A068366: Numbers k such that phi(sigma(k)+k) = sigma(k).

The programs for A068366, there is no canonical definition to state claims against.
-/

/-! ## A068366.P12728504918828843764

`A051953(A070170(n+1))`
-/

namespace A068366.P12728504918828843764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A070170 (n + 1)).toNat

end

end A068366.P12728504918828843764

/-! ## A068366.P5398278301049280001

`A163805(A016813(n))+A062830(A070170(n+1))`
-/

namespace A068366.P5398278301049280001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A016813 n).toNat + A062830 (A070170 (n + 1)).toNat

end

end A068366.P5398278301049280001

/-! ## A068366.P1114915656638740561

`A092673(A065091(n+1))+A062830(A070170(n+1))`
-/

namespace A068366.P1114915656638740561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A065091 (n + 1)).toNat + A062830 (A070170 (n + 1)).toNat

end

end A068366.P1114915656638740561

/-! ## A068366.P11559328115039126044

`A089263(A132287(n+1))+A062830(A070170(n+1))`
-/

namespace A068366.P11559328115039126044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A132287 (n + 1)).toNat + A062830 (A070170 (n + 1)).toNat

end

end A068366.P11559328115039126044

/-! ## A068366.P13923523518644541487

`A306066(A014963(12*n+6))+A062830(A070170(n+1))`
-/

namespace A068366.P13923523518644541487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306066 (A014963 (12 * n + 6)).toNat + A062830 (A070170 (n + 1)).toNat

end

end A068366.P13923523518644541487

/-!
# A068367: Numbers k such that phi(k)^2+sigma(k)^2 is prime.

The programs for A068367, there is no canonical definition to state claims against.
-/

/-! ## A068367.P10096865525763229670

`A360070(A198194(n+1)*A238546(n+1))`
-/

namespace A068367.P10096865525763229670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360070 (A198194 (n + 1) * A238546 (n + 1)).toNat

end

end A068367.P10096865525763229670

/-! ## A068367.P9566662191218899

`A000041(A070939(2^n))²-A131851(A016098(n+2))`
-/

namespace A068367.P9566662191218899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A070939 (2 ^ n)).toNat ^ 2 - A131851 (A016098 (n + 2)).toNat

end

end A068367.P9566662191218899

/-!
# A068369: Numerators of coefficients of a formal power series solution of f''(x) = f(f(x)).

The programs for A068369, there is no canonical definition to state claims against.
-/

/-! ## A068369.P1127267118400806356

`A083920(A318748(n)+A218798(n))`
-/

namespace A068369.P1127267118400806356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A318748 n + A218798 n).toNat

end

end A068369.P1127267118400806356

/-!
# A068371: Primes p such that positive values of p - k! are all primes for k > 1.

The programs for A068371, there is no canonical definition to state claims against.
-/

/-! ## A068371.P17586427783513232523

`p?[A068370(n+1)]`
-/

namespace A068371.P17586427783513232523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068371.P17586427783513232523

/-! ## A068371.P16566949614082984714

`p?[record[A068370(A022446(n))]]`
-/

namespace A068371.P16566949614082984714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068370 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068371.P16566949614082984714

/-! ## A068371.P724402076142889837

`p?[record[A068370(A028920(n))]]`
-/

namespace A068371.P724402076142889837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068370 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068371.P724402076142889837

/-! ## A068371.P6104672854509838827

`p?[record[A068370(A033930(n))]]`
-/

namespace A068371.P6104672854509838827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068370 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068371.P6104672854509838827

/-! ## A068371.P13989534235090758782

`p?[record[A068370(A052938(n))]]`
-/

namespace A068371.P13989534235090758782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068370 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068371.P13989534235090758782

/-!
# A068372: Numbers m such that the positive values of m - A002110(k) are all primes (k > 0).

The programs for A068372, there is no canonical definition to state claims against.
-/

/-! ## A068372.P1703272281974967985

`eq[val(n+1, 2)+2, A055640(A000290(2*n+1))]`
-/

namespace A068372.P1703272281974967985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A000290 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068372.P1703272281974967985

/-! ## A068372.P11954667975476803633

`A160808(n)+A160801(A160790(n+3))`
-/

namespace A068372.P11954667975476803633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160808 n + A160801 (A160790 (n + 3)).toNat

end

end A068372.P11954667975476803633

/-! ## A068372.P12995397436400514913

`A360242(n+4)+A228348(A085125(3*n+2))`
-/

namespace A068372.P12995397436400514913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360242 (n + 4) + A228348 (A085125 (3 * n + 2)).toNat

end

end A068372.P12995397436400514913

/-!
# A068373: Squares m such that the positive values of m - A002110(k) are all primes (k > 0).

The programs for A068373, there is no canonical definition to state claims against.
-/

/-! ## A068373.P10757275051107785254

`record[A350679(n)²]`
-/

namespace A068373.P10757275051107785254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350679 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068373.P10757275051107785254

/-!
# A068374: Primes p such that positive values of p - A002110(k) are all primes for k > 0.

The programs for A068374, there is no canonical definition to state claims against.
-/

/-! ## A068374.P13795875503111058239

`p?[A068372(n+1)]`
-/

namespace A068374.P13795875503111058239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068374.P13795875503111058239

/-! ## A068374.P9269042147525581000

`p?[record[A068372(A193592(n))]]`
-/

namespace A068374.P9269042147525581000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068372 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068374.P9269042147525581000

/-! ## A068374.P17983388260310810981

`p?[record[A068372(A195663(n))]]`
-/

namespace A068374.P17983388260310810981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068372 (A195663 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068374.P17983388260310810981

/-! ## A068374.P4421047819002872669

`∩[A068372(n+1), A171821(n+1)]`
-/

namespace A068374.P4421047819002872669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068374.P4421047819002872669

/-! ## A068374.P17025677855620847479

`∩[A068372(n+1), A175075(n+1)]`
-/

namespace A068374.P17025677855620847479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068374.P17025677855620847479

/-!
# A068375: Engel expansion of exp(2).

The programs for A068375, there is no canonical definition to state claims against.
-/

/-! ## A068375.P13360589006898220079

`A152229(A239116(n))`
-/

namespace A068375.P13360589006898220079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152229 (A239116 n).toNat

end

end A068375.P13360589006898220079

/-! ## A068375.P9649167507578733735

`A152229(A239117(n+1))`
-/

namespace A068375.P9649167507578733735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152229 (A239117 (n + 1)).toNat

end

end A068375.P9649167507578733735

/-! ## A068375.P12322080449121885044

`A364350(n*A059053(n))`
-/

namespace A068375.P12322080449121885044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 ((n : ℤ) * A059053 n).toNat

end

end A068375.P12322080449121885044

/-! ## A068375.P16367136584595362264

`A364350(A241470(n+1)+3)`
-/

namespace A068375.P16367136584595362264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (A241470 (n + 1) + 3).toNat

end

end A068375.P16367136584595362264

/-! ## A068375.P5434045677413571246

`A072796(A328388(n)^A014374(n))`
-/

namespace A068375.P5434045677413571246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (SequenceMachineLib.roundAway ((A328388 n : ℚ) ^ (A014374 n : ℤ))).toNat

end

end A068375.P5434045677413571246

/-!
# A068377: Engel expansion of sinh(1).

The programs for A068377, the canonical program `A068377.P14171198910882807529` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068377 has offset 1).

The definition of A068377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068377.P14171198910882807529

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=20, a(3)=42`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068377

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P14171198910882807529.Spec : Prop :=
  ∀ n, P14171198910882807529.a n = A068377 (n + 1)

theorem P14171198910882807529.correct : P14171198910882807529.Spec := by
  intro n
  simp only [A068377, Nat.add_sub_cancel]

end A068377

/-! ## A068377.P15916387555031389158

`record[or(1, -n)²-n]`
-/

namespace A068377.P15916387555031389158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068377.P15916387555031389158

namespace A068377

/-- `record[or(1, -n)²-n]` -/
def P15916387555031389158.Spec : Prop :=
  ∀ n, P15916387555031389158.a n = A068377 (n + 1)

end A068377

/-! ## A068377.P3551722744412815491

`record[(n²-n)^(n%2)]`
-/

namespace A068377.P3551722744412815491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068377.P3551722744412815491

namespace A068377

/-- `record[(n²-n)^(n%2)]` -/
def P3551722744412815491.Spec : Prop :=
  ∀ n, P3551722744412815491.a n = A068377 (n + 1)

end A068377

/-! ## A068377.P9291591235061808035

`record[(n^and(1, n))²-n]`
-/

namespace A068377.P9291591235061808035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ Nat.land 1 n) ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068377.P9291591235061808035

namespace A068377

/-- `record[(n^and(1, n))²-n]` -/
def P9291591235061808035.Spec : Prop :=
  ∀ n, P9291591235061808035.a n = A068377 (n + 1)

end A068377

/-! ## A068377.P13194537183710211535

`∑[a(n-1)+8]` with `a(0)=1, a(1)=5, a(2)=14`
-/

namespace A068377.P13194537183710211535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 14] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068377.P13194537183710211535

namespace A068377

/-- `∑[a(n-1)+8]` -/
def P13194537183710211535.Spec : Prop :=
  ∀ n, (P13194537183710211535.a n : ℤ) = A068377 (n + 1)

end A068377

/-! ## A068377.P4440793715585374652

`record[lcm(n+1, or(1, n+1))]`
-/

namespace A068377.P4440793715585374652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.lor 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068377.P4440793715585374652

namespace A068377

/-- `record[lcm(n+1, or(1, n+1))]` -/
def P4440793715585374652.Spec : Prop :=
  ∀ n, (P4440793715585374652.a n : ℤ) = A068377 (n + 1)

end A068377

/-! ## A068377.P13314501472192120835

`record[(n*(n-1))^and(1, n)]`
-/

namespace A068377.P13314501472192120835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1)) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068377.P13314501472192120835

namespace A068377

/-- `record[(n*(n-1))^and(1, n)]` -/
def P13314501472192120835.Spec : Prop :=
  ∀ n, P13314501472192120835.a n = A068377 (n + 1)

end A068377

/-! ## A068377.P11918430765100892832

`record[xor(1, -n)²]+2*n`
-/

namespace A068377.P11918430765100892832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n : ℤ)

end

end A068377.P11918430765100892832

namespace A068377

/-- `record[xor(1, -n)²]+2*n` -/
def P11918430765100892832.Spec : Prop :=
  ∀ n, P11918430765100892832.a n = A068377 (n + 1)

end A068377

/-! ## A068377.P9572835683694627

`round(comp[2*n]/acot(2*n))`
-/

namespace A068377.P9572835683694627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ))

end

end A068377.P9572835683694627

namespace A068377

/-- `round(comp[2*n]/acot(2*n))` -/
def P9572835683694627.Spec : Prop :=
  ∀ n, P9572835683694627.a n = A068377 (n + 1)

end A068377

/-! ## A068377.P4298122318585214826

`∑[ogf((1+3x+5x^2-x^3)/(1-2x+x^2))]`
-/

namespace A068377.P4298122318585214826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068377.P4298122318585214826

namespace A068377

/-- `∑[ogf((1+3x+5x^2-x^3)/(1-2x+x^2))]` -/
def P4298122318585214826.Spec : Prop :=
  ∀ n, P4298122318585214826.a n = A068377 (n + 1)

end A068377

/-! ## A068377.P10798428335174314932

`ogf((1+3x+5x^2-x^3)/(1-3x+3x^2-x^3))`
-/

namespace A068377.P10798428335174314932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, -1] [1, -3, 3, -1] n

end

end A068377.P10798428335174314932

namespace A068377

/-- `ogf((1+3x+5x^2-x^3)/(1-3x+3x^2-x^3))` -/
def P10798428335174314932.Spec : Prop :=
  ∀ n, P10798428335174314932.a n = A068377 (n + 1)

end A068377

/-! ## A068377.P18252996208268949824

`floor(2/acot(n*(2*n+1)))`
-/

namespace A068377.P18252996208268949824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n * (2 * n + 1) : ℝ)⌋

end

end A068377.P18252996208268949824

namespace A068377

/-- `floor(2/acot(n*(2*n+1)))` -/
def P18252996208268949824.Spec : Prop :=
  ∀ n, P18252996208268949824.a n = A068377 (n + 1)

end A068377

/-! ## A068377.P3559262000358224546

`8*n+a(n-1)-2` with `a(0)=1, a(1)=6`
-/

namespace A068377.P3559262000358224546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  (8 * n : ℤ) + (a (n - 1) - 2)

end

end A068377.P3559262000358224546

namespace A068377

/-- `8*n+a(n-1)-2` -/
def P3559262000358224546.Spec : Prop :=
  ∀ n, P3559262000358224546.a n = A068377 (n + 1)

end A068377

/-! ## A068377.P3489649586581970441

`8*n-(2-a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A068377.P3489649586581970441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  (8 * n : ℤ) - (2 - a (n - 1))

end

end A068377.P3489649586581970441

namespace A068377

/-- `8*n-(2-a(n-1))` -/
def P3489649586581970441.Spec : Prop :=
  ∀ n, P3489649586581970441.a n = A068377 (n + 1)

end A068377

/-! ## A068377.P3722940190821942219

`record[(n+1)*lcm(2, n+2)/2]`
-/

namespace A068377.P3722940190821942219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.lcm 2 (n + 2) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068377.P3722940190821942219

namespace A068377

/-- `record[(n+1)*lcm(2, n+2)/2]` -/
def P3722940190821942219.Spec : Prop :=
  ∀ n, P3722940190821942219.a n = (A068377 (n + 1) : ℚ)

end A068377

/-! ## A068377.P10437336117205354324

`record[(n+1)*(n+2)/gcd(2, n)]`
-/

namespace A068377.P10437336117205354324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) / (Nat.gcd 2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068377.P10437336117205354324

namespace A068377

/-- `record[(n+1)*(n+2)/gcd(2, n)]` -/
def P10437336117205354324.Spec : Prop :=
  ∀ n, P10437336117205354324.a n = (A068377 (n + 1) : ℚ)

end A068377

/-! ## A068377.P16117163075518111898

`record[(n+1)*(n+2)^and(1, n)]`
-/

namespace A068377.P16117163075518111898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2) ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068377.P16117163075518111898

namespace A068377

/-- `record[(n+1)*(n+2)^and(1, n)]` -/
def P16117163075518111898.Spec : Prop :=
  ∀ n, (P16117163075518111898.a n : ℤ) = A068377 (n + 1)

end A068377

/-! ## A068377.P15463164980457354285

`floor((2*n+1)/cos(atan(2*n)))`
-/

namespace A068377.P15463164980457354285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / Real.cos (Real.arctan (2 * n : ℝ))⌋

end

end A068377.P15463164980457354285

namespace A068377

/-- `floor((2*n+1)/cos(atan(2*n)))` -/
def P15463164980457354285.Spec : Prop :=
  ∀ n, P15463164980457354285.a n = A068377 (n + 1)

end A068377

/-! ## A068377.P17522330943190540522

`(2*n)^(2%(n+2))+2*n`
-/

namespace A068377.P17522330943190540522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (2 % (n + 2)) + 2 * n

end

end A068377.P17522330943190540522

namespace A068377

/-- `(2*n)^(2%(n+2))+2*n` -/
def P17522330943190540522.Spec : Prop :=
  ∀ n, (P17522330943190540522.a n : ℤ) = A068377 (n + 1)

end A068377

/-! ## A068377.P17511468742161316923

`(2*n+1)²-record[xor(1, n+1)]`
-/

namespace A068377.P17511468742161316923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A068377.P17511468742161316923

namespace A068377

/-- `(2*n+1)²-record[xor(1, n+1)]` -/
def P17511468742161316923.Spec : Prop :=
  ∀ n, P17511468742161316923.a n = A068377 (n + 1)

end A068377

/-!
# A068378: Numbers n such that sigma(n)^2 > 9*sigma_2(n) where sigma_2(n) is the sum of squares over the divisors of n.

The programs for A068378, there is no canonical definition to state claims against.
-/

/-! ## A068378.P3061188689089636556

`A329004(A069273(n+2))`
-/

namespace A068378.P3061188689089636556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A069273 (n + 2)).toNat

end

end A068378.P3061188689089636556

/-! ## A068378.P15852731356178265606

`A329004(A351017(3*n+4)+A248083(n+1))`
-/

namespace A068378.P15852731356178265606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A351017 (3 * n + 4) + A248083 (n + 1)).toNat

end

end A068378.P15852731356178265606

/-!
# A068379: Engel expansion of sinh(1/2).

The programs for A068379, the canonical program `A068379.P11485449252466730629` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068379 has offset 1).

The definition of A068379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068379.P11485449252466730629

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=24, a(2)=80, a(3)=168`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068379

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11485449252466730629.Spec : Prop :=
  ∀ n, P11485449252466730629.a n = A068379 (n + 1)

theorem P11485449252466730629.correct : P11485449252466730629.Spec := by
  intro n
  simp only [A068379, Nat.add_sub_cancel]

end A068379

/-! ## A068379.P1884330636127710776

`(2*n+1)*floor(4/acot(2*n))`
-/

namespace A068379.P1884330636127710776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ⌊4 / SequenceMachineLib.acot (2 * n : ℝ)⌋

end

end A068379.P1884330636127710776

namespace A068379

/-- `(2*n+1)*floor(4/acot(2*n))` -/
def P1884330636127710776.Spec : Prop :=
  ∀ n, P1884330636127710776.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P15878272365047757834

`C(2, (n+1)²)+2*n*(8*n+4)`
-/

namespace A068379.P15878272365047757834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((n + 1) ^ 2) + 2 * n * (8 * n + 4)

end

end A068379.P15878272365047757834

namespace A068379

/-- `C(2, (n+1)²)+2*n*(8*n+4)` -/
def P15878272365047757834.Spec : Prop :=
  ∀ n, (P15878272365047757834.a n : ℤ) = A068379 (n + 1)

end A068379

/-! ## A068379.P10174017158786018601

`(2*n+1)*record[lcm(2, n+2)+2*n]`
-/

namespace A068379.P10174017158786018601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 2) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068379.P10174017158786018601

namespace A068379

/-- `(2*n+1)*record[lcm(2, n+2)+2*n]` -/
def P10174017158786018601.Spec : Prop :=
  ∀ n, (P10174017158786018601.a n : ℤ) = A068379 (n + 1)

end A068379

/-! ## A068379.P11429951225232304283

`(2*n+1)*gcd(2, a(n-1))²*2*n` with `a(0)=2`
-/

namespace A068379.P11429951225232304283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (2 * n + 1) * Nat.gcd 2 (a (n - 1)) ^ 2 * (2 * n)

end

end A068379.P11429951225232304283

namespace A068379

/-- `(2*n+1)*gcd(2, a(n-1))²*2*n` -/
def P11429951225232304283.Spec : Prop :=
  ∀ n, (P11429951225232304283.a n : ℤ) = A068379 (n + 1)

end A068379

/-! ## A068379.P9901892683420886874

`2*(2*n+1)*floor((2*n+1)²/(n+1))`
-/

namespace A068379.P9901892683420886874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℤ) * ⌊((2 * n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)⌋)

end

end A068379.P9901892683420886874

namespace A068379

/-- `2*(2*n+1)*floor((2*n+1)²/(n+1))` -/
def P9901892683420886874.Spec : Prop :=
  ∀ n, P9901892683420886874.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P13156885798731597128

`abs(2-A016814(n))+1`
-/

namespace A068379.P13156885798731597128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A016814 n| + 1

end

end A068379.P13156885798731597128

namespace A068379

/-- `abs(2-A016814(n))+1` -/
def P13156885798731597128.Spec : Prop :=
  ∀ n, P13156885798731597128.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P13014937790509842330

`A143839(n+1)+abs(1-n)`
-/

namespace A068379.P13014937790509842330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143839 (n + 1) + |1 - (n : ℤ)|

end

end A068379.P13014937790509842330

namespace A068379

/-- `A143839(n+1)+abs(1-n)` -/
def P13014937790509842330.Spec : Prop :=
  ∀ n, P13014937790509842330.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P15943081417116031489

`A016814(n)-A158388(n)`
-/

namespace A068379.P15943081417116031489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n - A158388 n

end

end A068379.P15943081417116031489

namespace A068379

/-- `A016814(n)-A158388(n)` -/
def P15943081417116031489.Spec : Prop :=
  ∀ n, P15943081417116031489.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P17194297228286751380

`lcm(A016825(n), A022144(n))`
-/

namespace A068379.P17194297228286751380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016825 n) (A022144 n)

end

end A068379.P17194297228286751380

namespace A068379

/-- `lcm(A016825(n), A022144(n))` -/
def P17194297228286751380.Spec : Prop :=
  ∀ n, (P17194297228286751380.a n : ℤ) = A068379 (n + 1)

end A068379

/-! ## A068379.P5891554569024771363

`A022144(n)+A008574(n)²`
-/

namespace A068379.P5891554569024771363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + A008574 n ^ 2

end

end A068379.P5891554569024771363

namespace A068379

/-- `A022144(n)+A008574(n)²` -/
def P5891554569024771363.Spec : Prop :=
  ∀ n, P5891554569024771363.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P5696732194164563885

`A153881(n+1)+A016814(n)`
-/

namespace A068379.P5696732194164563885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + A016814 n

end

end A068379.P5696732194164563885

namespace A068379

/-- `A153881(n+1)+A016814(n)` -/
def P5696732194164563885.Spec : Prop :=
  ∀ n, P5696732194164563885.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P10283615970098667580

`A131098(n+1)+A082041(n)`
-/

namespace A068379.P10283615970098667580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1) + A082041 n

end

end A068379.P10283615970098667580

namespace A068379

/-- `A131098(n+1)+A082041(n)` -/
def P10283615970098667580.Spec : Prop :=
  ∀ n, P10283615970098667580.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P561509480846169736

`A204675(n)+A101328(n+2)`
-/

namespace A068379.P561509480846169736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204675 n + A101328 (n + 2)

end

end A068379.P561509480846169736

namespace A068379

/-- `A204675(n)+A101328(n+2)` -/
def P561509480846169736.Spec : Prop :=
  ∀ n, P561509480846169736.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P16411179307737866711

`A022144(n)+(A008486(n)+n)²`
-/

namespace A068379.P16411179307737866711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + (A008486 n + (n : ℤ)) ^ 2

end

end A068379.P16411179307737866711

namespace A068379

/-- `A022144(n)+(A008486(n)+n)²` -/
def P16411179307737866711.Spec : Prop :=
  ∀ n, P16411179307737866711.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P6712096333419165371

`A022144(n)+(n-A008706(n))²`
-/

namespace A068379.P6712096333419165371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + ((n : ℤ) - A008706 n) ^ 2

end

end A068379.P6712096333419165371

namespace A068379

/-- `A022144(n)+(n-A008706(n))²` -/
def P6712096333419165371.Spec : Prop :=
  ∀ n, P6712096333419165371.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P13354292188448938247

`A244805(n+1)+A164754(n+2)`
-/

namespace A068379.P13354292188448938247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244805 (n + 1) + A164754 (n + 2)

end

end A068379.P13354292188448938247

namespace A068379

/-- `A244805(n+1)+A164754(n+2)` -/
def P13354292188448938247.Spec : Prop :=
  ∀ n, P13354292188448938247.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P17728878654803323580

`A004767(n)*A008574(n)-A008574(n)`
-/

namespace A068379.P17728878654803323580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n * A008574 n - A008574 n

end

end A068379.P17728878654803323580

namespace A068379

/-- `A004767(n)*A008574(n)-A008574(n)` -/
def P17728878654803323580.Spec : Prop :=
  ∀ n, P17728878654803323580.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P15008943343640280042

`A068377(n+1)+A068377(n+1)+A033586(n)`
-/

namespace A068379.P15008943343640280042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068377 (n + 1) + (A068377 (n + 1) + A033586 n)

end

end A068379.P15008943343640280042

namespace A068379

/-- `A068377(n+1)+A068377(n+1)+A033586(n)` -/
def P15008943343640280042.Spec : Prop :=
  ∀ n, P15008943343640280042.a n = A068379 (n + 1)

end A068379

/-! ## A068379.P1646658188707190185

`A298028(2*n)+A085622(2*n)`
-/

namespace A068379.P1646658188707190185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 (2 * n) + A085622 (2 * n)

end

end A068379.P1646658188707190185

namespace A068379

/-- `A298028(2*n)+A085622(2*n)` -/
def P1646658188707190185.Spec : Prop :=
  ∀ n, P1646658188707190185.a n = A068379 (n + 1)

end A068379

/-!
# A068380: Engel expansion of sinh(1/3).

The programs for A068380, the canonical program `A068380.P8903160775293879707` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068380 has offset 1).

The definition of A068380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068380.P8903160775293879707

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=3, a(1)=54, a(2)=180, a(3)=378`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068380

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8903160775293879707.Spec : Prop :=
  ∀ n, P8903160775293879707.a n = A068380 (n + 1)

theorem P8903160775293879707.correct : P8903160775293879707.Spec := by
  intro n
  simp only [A068380, Nat.add_sub_cancel]

end A068380

/-! ## A068380.P12068941289788103032

`6*n*(floor(sqrt(a(n-1)))+8)` with `a(0)=3`
-/

namespace A068380.P12068941289788103032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  6 * (n * (Nat.sqrt (a (n - 1)) + 8))

end

end A068380.P12068941289788103032

namespace A068380

/-- `6*n*(floor(sqrt(a(n-1)))+8)` -/
def P12068941289788103032.Spec : Prop :=
  ∀ n, (P12068941289788103032.a n : ℤ) = A068380 (n + 1)

end A068380

/-! ## A068380.P1193370084994052809

`(2*n+1)*3*floor(2/acot(3*n))`
-/

namespace A068380.P1193370084994052809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (3 * ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋)

end

end A068380.P1193370084994052809

namespace A068380

/-- `(2*n+1)*3*floor(2/acot(3*n))` -/
def P1193370084994052809.Spec : Prop :=
  ∀ n, P1193370084994052809.a n = A068380 (n + 1)

end A068380

/-! ## A068380.P6479646102383659520

`2*a(n²%n)²*n*Δ[n²]` with `a(0)=3`
-/

namespace A068380.P6479646102383659520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (a (n ^ 2 % n) ^ 2 * ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))))

end

end A068380.P6479646102383659520

namespace A068380

/-- `2*a(n²%n)²*n*Δ[n²]` -/
def P6479646102383659520.Spec : Prop :=
  ∀ n, P6479646102383659520.a n = A068380 (n + 1)

end A068380

/-! ## A068380.P7514053042122687593

`(2*n+1)*2*n*dr(a(n-1)²)` with `a(0)=3`
-/

namespace A068380.P7514053042122687593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (2 * n + 1) * (2 * n * SequenceMachineLib.digitalRoot (a (n - 1) ^ 2 : ℤ))

end

end A068380.P7514053042122687593

namespace A068380

/-- `(2*n+1)*2*n*dr(a(n-1)²)` -/
def P7514053042122687593.Spec : Prop :=
  ∀ n, (P7514053042122687593.a n : ℤ) = A068380 (n + 1)

end A068380

/-! ## A068380.P13212758670663464898

`(2*n+1)*3*3*(2*n)%a(n-1)` with `a(0)=3`
-/

namespace A068380.P13212758670663464898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (2 * n + 1) * (3 * (3 * (2 * n % a (n - 1))))

end

end A068380.P13212758670663464898

namespace A068380

/-- `(2*n+1)*3*3*(2*n)%a(n-1)` -/
def P13212758670663464898.Spec : Prop :=
  ∀ n, (P13212758670663464898.a n : ℤ) = A068380 (n + 1)

end A068380

/-! ## A068380.P5485205506448352975

`A008458(n)*(6*n+3)`
-/

namespace A068380.P5485205506448352975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n * (6 * n + 3 : ℤ)

end

end A068380.P5485205506448352975

namespace A068380

/-- `A008458(n)*(6*n+3)` -/
def P5485205506448352975.Spec : Prop :=
  ∀ n, P5485205506448352975.a n = A068380 (n + 1)

end A068380

/-! ## A068380.P17737440703746118795

`(A016921(n)+2)*A008458(n)`
-/

namespace A068380.P17737440703746118795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n + 2) * A008458 n

end

end A068380.P17737440703746118795

namespace A068380

/-- `(A016921(n)+2)*A008458(n)` -/
def P17737440703746118795.Spec : Prop :=
  ∀ n, P17737440703746118795.a n = A068380 (n + 1)

end A068380

/-! ## A068380.P6811840363364144328

`(A016957(n)-1)*A008458(n)`
-/

namespace A068380.P6811840363364144328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016957 n - 1) * A008458 n

end

end A068380.P6811840363364144328

namespace A068380

/-- `(A016957(n)-1)*A008458(n)` -/
def P6811840363364144328.Spec : Prop :=
  ∀ n, P6811840363364144328.a n = A068380 (n + 1)

end A068380

/-! ## A068380.P14921777116236496678

`(A016969(n)-2)*A008458(n)`
-/

namespace A068380.P14921777116236496678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 n - 2) * A008458 n

end

end A068380.P14921777116236496678

namespace A068380

/-- `(A016969(n)-2)*A008458(n)` -/
def P14921777116236496678.Spec : Prop :=
  ∀ n, P14921777116236496678.a n = A068380 (n + 1)

end A068380

/-! ## A068380.P951065347570693854

`xor(1, Δ[(A244804(n+1)+A004277(n))*(n-1)])`
-/

namespace A068380.P951065347570693854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A244804 (n + 1) + A004277 n) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A068380.P951065347570693854

namespace A068380

/-- `xor(1, Δ[(A244804(n+1)+A004277(n))*(n-1)])` -/
def P951065347570693854.Spec : Prop :=
  ∀ n, P951065347570693854.a n = A068380 (n + 1)

end A068380

/-! ## A068380.P16623628319617327836

`(6*n+3)*A008486(2*n)`
-/

namespace A068380.P16623628319617327836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) * A008486 (2 * n)

end

end A068380.P16623628319617327836

namespace A068380

/-- `(6*n+3)*A008486(2*n)` -/
def P16623628319617327836.Spec : Prop :=
  ∀ n, P16623628319617327836.a n = A068380 (n + 1)

end A068380

/-! ## A068380.P581804886564602286

`A298026(2*n)*(6*n+3)`
-/

namespace A068380.P581804886564602286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (2 * n) * (6 * n + 3 : ℤ)

end

end A068380.P581804886564602286

namespace A068380

/-- `A298026(2*n)*(6*n+3)` -/
def P581804886564602286.Spec : Prop :=
  ∀ n, P581804886564602286.a n = A068380 (n + 1)

end A068380

/-! ## A068380.P5028840464971023518

`(A184418(2*n)+n)*(6*n+3)`
-/

namespace A068380.P5028840464971023518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A184418 (2 * n) + (n : ℤ)) * (6 * n + 3 : ℤ)

end

end A068380.P5028840464971023518

namespace A068380

/-- `(A184418(2*n)+n)*(6*n+3)` -/
def P5028840464971023518.Spec : Prop :=
  ∀ n, P5028840464971023518.a n = A068380 (n + 1)

end A068380

/-! ## A068380.P4268309135329690103

`A008486(2*n)*A016945(n)`
-/

namespace A068380.P4268309135329690103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) * A016945 n

end

end A068380.P4268309135329690103

namespace A068380

/-- `A008486(2*n)*A016945(n)` -/
def P4268309135329690103.Spec : Prop :=
  ∀ n, P4268309135329690103.a n = A068380 (n + 1)

end A068380

/-! ## A068380.P4814403853282972590

`(A004273(2*n)+A004273(n+1))*(6*n+3)`
-/

namespace A068380.P4814403853282972590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 (2 * n) + A004273 (n + 1)) * (6 * n + 3 : ℤ)

end

end A068380.P4814403853282972590

namespace A068380

/-- `(A004273(2*n)+A004273(n+1))*(6*n+3)` -/
def P4814403853282972590.Spec : Prop :=
  ∀ n, P4814403853282972590.a n = A068380 (n + 1)

end A068380

/-! ## A068380.P4722445919596316223

`(6*n+3)/A036453(n+1)*A298028(2*n)`
-/

namespace A068380.P4722445919596316223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℚ) / (A036453 (n + 1) : ℚ) * (A298028 (2 * n) : ℚ)

end

end A068380.P4722445919596316223

namespace A068380

/-- `(6*n+3)/A036453(n+1)*A298028(2*n)` -/
def P4722445919596316223.Spec : Prop :=
  ∀ n, P4722445919596316223.a n = (A068380 (n + 1) : ℚ)

end A068380

/-! ## A068380.P4447703973666106251

`A038179(2*n+1)+(6*n+1)²`
-/

namespace A068380.P4447703973666106251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (2 * n + 1) + ((6 * n + 1) ^ 2 : ℤ)

end

end A068380.P4447703973666106251

namespace A068380

/-- `A038179(2*n+1)+(6*n+1)²` -/
def P4447703973666106251.Spec : Prop :=
  ∀ n, P4447703973666106251.a n = A068380 (n + 1)

end A068380

/-! ## A068380.P7166515227636571264

`(A271114(2*n)-(6*n+1))*(6*n+3)`
-/

namespace A068380.P7166515227636571264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271114 (2 * n) - (6 * n + 1 : ℤ)) * (6 * n + 3 : ℤ)

end

end A068380.P7166515227636571264

namespace A068380

/-- `(A271114(2*n)-(6*n+1))*(6*n+3)` -/
def P7166515227636571264.Spec : Prop :=
  ∀ n, P7166515227636571264.a n = A068380 (n + 1)

end A068380

/-!
# A068382: Numbers k such that k divides 9^k - 1.

The programs for A068382, there is no canonical definition to state claims against.
-/

/-! ## A068382.P1095424443042728353

`A067945(n+2)/2`
-/

namespace A068382.P1095424443042728353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067945 (n + 2) : ℚ) / 2

end

end A068382.P1095424443042728353

/-! ## A068382.P3266397991959591229

`∑[A004525(Δ[A067945(n+1)])]`
-/

namespace A068382.P3266397991959591229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068382.P3266397991959591229

/-! ## A068382.P17287973531564229453

`∑[A026741(Δ[A067945(n+1)])]`
-/

namespace A068382.P17287973531564229453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068382.P17287973531564229453

/-! ## A068382.P9013177534816569779

`∑[A032742(Δ[A067945(n+1)])]`
-/

namespace A068382.P9013177534816569779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068382.P9013177534816569779

/-! ## A068382.P13280116508236166455

`∑[A065033(Δ[A067945(n+1)])]`
-/

namespace A068382.P13280116508236166455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068382.P13280116508236166455

/-! ## A068382.P12638443037876025020

`∑[A078898(Δ[A067945(n+1)])]`
-/

namespace A068382.P12638443037876025020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068382.P12638443037876025020

/-! ## A068382.P17902364017185154540

`∑[A092533(Δ[A067945(n+1)])]`
-/

namespace A068382.P17902364017185154540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068382.P17902364017185154540

/-! ## A068382.P7823763474620629071

`∑[A110654(Δ[A067945(n+1)])]`
-/

namespace A068382.P7823763474620629071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068382.P7823763474620629071

/-! ## A068382.P4083215826917429347

`eq[0, A094918(2*(n+1))]+1`
-/

namespace A068382.P4083215826917429347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094918 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068382.P4083215826917429347

/-! ## A068382.P5566498895756617662

`eq[1, A066601(2*(n+1))]+1`
-/

namespace A068382.P5566498895756617662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066601 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068382.P5566498895756617662

/-!
# A068383: Numbers k such that k divides 11^k - 1.

The programs for A068383, the canonical program `A068383.P7477242888886605480` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068383 has offset 1).

The definition of A068383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068383.P7477242888886605480

`eq[n, n*A066441(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068383

/-- `eq[n, n*A066441(n+1)]+1` -/
def P7477242888886605480.Spec : Prop :=
  ∀ n, (P7477242888886605480.a n : ℤ) = A068383 (n + 1)

theorem P7477242888886605480.correct : P7477242888886605480.Spec := by
  intro n
  simp only [A068383, Nat.add_sub_cancel]

end A068383

/-! ## A068383.P13434135314309659199

`eq[A057427(n), A066441(n+1)]+1`
-/

namespace A068383.P13434135314309659199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066441 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068383.P13434135314309659199

namespace A068383

/-- `eq[A057427(n), A066441(n+1)]+1` -/
def P13434135314309659199.Spec : Prop :=
  ∀ n, (P13434135314309659199.a n : ℤ) = A068383 (n + 1)

end A068383

/-! ## A068383.P6325922532331223411

`eq[A057428(n)², A066441(n+1)]+1`
-/

namespace A068383.P6325922532331223411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066441 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068383.P6325922532331223411

namespace A068383

/-- `eq[A057428(n)², A066441(n+1)]+1` -/
def P6325922532331223411.Spec : Prop :=
  ∀ n, (P6325922532331223411.a n : ℤ) = A068383 (n + 1)

end A068383

/-! ## A068383.P12162375766573594069

`eq[A062157(n)², A066441(n+1)]+1`
-/

namespace A068383.P12162375766573594069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066441 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068383.P12162375766573594069

namespace A068383

/-- `eq[A062157(n)², A066441(n+1)]+1` -/
def P12162375766573594069.Spec : Prop :=
  ∀ n, (P12162375766573594069.a n : ℤ) = A068383 (n + 1)

end A068383

/-! ## A068383.P6406797910999514602

`eq[A060576(n), A066441(A028310(n))]`
-/

namespace A068383.P6406797910999514602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066441 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068383.P6406797910999514602

namespace A068383

/-- `eq[A060576(n), A066441(A028310(n))]` -/
def P6406797910999514602.Spec : Prop :=
  ∀ n, (P6406797910999514602.a n : ℤ) = A068383 (n + 1)

end A068383

/-! ## A068383.P5226635905256373442

`eq[A057427(n), A066441(A233583(n+1))]`
-/

namespace A068383.P5226635905256373442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066441 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068383.P5226635905256373442

namespace A068383

/-- `eq[A057427(n), A066441(A233583(n+1))]` -/
def P5226635905256373442.Spec : Prop :=
  ∀ n, (P5226635905256373442.a n : ℤ) = A068383 (n + 1)

end A068383

/-! ## A068383.P13026817367726020223

`eq[A057428(n)², A066441(A233583(n+1))]`
-/

namespace A068383.P13026817367726020223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066441 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068383.P13026817367726020223

namespace A068383

/-- `eq[A057428(n)², A066441(A233583(n+1))]` -/
def P13026817367726020223.Spec : Prop :=
  ∀ n, (P13026817367726020223.a n : ℤ) = A068383 (n + 1)

end A068383

/-! ## A068383.P12528841095389076843

`eq[A062157(n)², A066441(A233583(n+1))]`
-/

namespace A068383.P12528841095389076843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066441 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068383.P12528841095389076843

namespace A068383

/-- `eq[A062157(n)², A066441(A233583(n+1))]` -/
def P12528841095389076843.Spec : Prop :=
  ∀ n, (P12528841095389076843.a n : ℤ) = A068383 (n + 1)

end A068383

/-! ## A068383.P2772992876904180472

`eq[A000038(n)!, A066441(A233583(n+1))]`
-/

namespace A068383.P2772992876904180472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066441 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068383.P2772992876904180472

namespace A068383

/-- `eq[A000038(n)!, A066441(A233583(n+1))]` -/
def P2772992876904180472.Spec : Prop :=
  ∀ n, (P2772992876904180472.a n : ℤ) = A068383 (n + 1)

end A068383

/-! ## A068383.P8034847924369314395

`eq[1, A066441(A233583(n+1)+A000007(n))]`
-/

namespace A068383.P8034847924369314395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066441 (A233583 (n + 1) + A000007 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068383.P8034847924369314395

namespace A068383

/-- `eq[1, A066441(A233583(n+1)+A000007(n))]` -/
def P8034847924369314395.Spec : Prop :=
  ∀ n, (P8034847924369314395.a n : ℤ) = A068383 (n + 1)

end A068383

/-! ## A068383.P17616792114101595056

`eq[1, A066441(A233583(n+1))%A000124(n)]`
-/

namespace A068383.P17616792114101595056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066441 (A233583 (n + 1)).toNat) (A000124 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068383.P17616792114101595056

namespace A068383

/-- `eq[1, A066441(A233583(n+1))%A000124(n)]` -/
def P17616792114101595056.Spec : Prop :=
  ∀ n, (P17616792114101595056.a n : ℤ) = A068383 (n + 1)

end A068383

/-! ## A068383.P14766797756080421498

`eq[A000040(n+1)%2, A066441(A233583(n+1))]`
-/

namespace A068383.P14766797756080421498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066441 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068383.P14766797756080421498

namespace A068383

/-- `eq[A000040(n+1)%2, A066441(A233583(n+1))]` -/
def P14766797756080421498.Spec : Prop :=
  ∀ n, (P14766797756080421498.a n : ℤ) = A068383 (n + 1)

end A068383

/-!
# A068385: Number of groups of order n that are not 2-generated.

The programs for A068385, there is no canonical definition to state claims against.
-/

/-! ## A068385.P16624084389668527398

`A000001(n+1)-A066389(n+1)`
-/

namespace A068385.P16624084389668527398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) - A066389 (n + 1)

end

end A068385.P16624084389668527398

/-! ## A068385.P14964722347923931864

`sqrt(A297420(n+1))-A066389(n+1)`
-/

namespace A068385.P14964722347923931864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 (n + 1) : ℝ) - (A066389 (n + 1) : ℝ)

end

end A068385.P14964722347923931864

/-! ## A068385.P6709698775255097593

`A000001(n+1)-(A083280(n+1)+A046951(n+1))`
-/

namespace A068385.P6709698775255097593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) - (A083280 (n + 1) + A046951 (n + 1))

end

end A068385.P6709698775255097593

/-! ## A068385.P12239988615418730963

`A000196(A297420(n+1))-(A083280(n+1)+A046951(n+1))`
-/

namespace A068385.P12239988615418730963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A297420 (n + 1)).toNat - (A083280 (n + 1) + A046951 (n + 1))

end

end A068385.P12239988615418730963

/-! ## A068385.P7776753795724839892

`A036614(n)%A162510(n+1)`
-/

namespace A068385.P7776753795724839892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036614 n) (A162510 (n + 1))

end

end A068385.P7776753795724839892

/-!
# A068386: One-thirtieth the area of the unique Pythagorean triangle whose hypotenuse is A002144(n), the n-th prime of the form 4k+1.

The programs for A068386, there is no canonical definition to state claims against.
-/

/-! ## A068386.P12088401082857017408

`A145010(n+2)/30`
-/

namespace A068386.P12088401082857017408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145010 (n + 2) : ℚ) / 30

end

end A068386.P12088401082857017408

/-! ## A068386.P304519267714568759

`a(n-1)*ratio[A145010(n+1)]` with `a(0)=1`
-/

namespace A068386.P304519267714568759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A068386.P304519267714568759

/-! ## A068386.P2399697714727995665

`A070293(A145010(n+2))`
-/

namespace A068386.P2399697714727995665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070293 (A145010 (n + 2)).toNat

end

end A068386.P2399697714727995665

/-! ## A068386.P2352070968051147940

`A008651(A145010(n+2)+1)`
-/

namespace A068386.P2352070968051147940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A145010 (n + 2) + 1).toNat

end

end A068386.P2352070968051147940

/-!
# A068389: Differences between the primes generating the n-th prime power.

The programs for A068389, there is no canonical definition to state claims against.
-/

/-! ## A068389.P12374602030806018296

`Δ[A025476(n+1)]`
-/

namespace A068389.P12374602030806018296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068389.P12374602030806018296

/-! ## A068389.P10875188152123999092

`A025476(n+2)-A025476(n+1)`
-/

namespace A068389.P10875188152123999092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025476 (n + 2) - A025476 (n + 1)

end

end A068389.P10875188152123999092

/-! ## A068389.P8569922064810880235

`Δ[p?[A025478(n+1)]]`
-/

namespace A068389.P8569922064810880235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068389.P8569922064810880235

/-! ## A068389.P13697727072097019403

`Δ[p?[A076403(n+1)]]`
-/

namespace A068389.P13697727072097019403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076403 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068389.P13697727072097019403

/-! ## A068389.P2448887383507572899

`Δ[p?[A392986(n+1)]]`
-/

namespace A068389.P2448887383507572899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392986 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068389.P2448887383507572899

/-! ## A068389.P9747097437672284927

`Δ[p?[A084371(n+1)]]`
-/

namespace A068389.P9747097437672284927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068389.P9747097437672284927

/-! ## A068389.P2859256604428166601

`Δ[ratio[A048148(n+1)]]`
-/

namespace A068389.P2859256604428166601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048148 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068389.P2859256604428166601

/-! ## A068389.P13206140938899265832

`Δ[p?[A076333(n+1)]]`
-/

namespace A068389.P13206140938899265832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076333 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068389.P13206140938899265832

/-! ## A068389.P3031401619920707567

`Δ[p?[A182817(n+1)]]`
-/

namespace A068389.P3031401619920707567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182817 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068389.P3031401619920707567

/-! ## A068389.P17171095724032003911

`Δ[p?[A005730(n+1)]]`
-/

namespace A068389.P17171095724032003911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005730 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068389.P17171095724032003911

/-!
# A068390: Numbers k such that sigma(k) = 4*phi(k).

The programs for A068390, there is no canonical definition to state claims against.
-/

/-! ## A068390.P13557797060916773477

`filter[A293391(n+1), A341612(#)]`
-/

namespace A068390.P13557797060916773477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A068390.P13557797060916773477

/-! ## A068390.P16091903931188184366

`filter[A293391(n+1), A341613(#)]`
-/

namespace A068390.P16091903931188184366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341613 (f1 j).toNat = 1) n)

end

end A068390.P16091903931188184366

/-! ## A068390.P14050779580809744782

`filter[A293391(n+2), A294934(#)]`
-/

namespace A068390.P14050779580809744782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293391 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A068390.P14050779580809744782

/-! ## A068390.P17854344012838810417

`filter[A293391(n+2), A294935(#)]`
-/

namespace A068390.P17854344012838810417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293391 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A068390.P17854344012838810417

/-! ## A068390.P12867314945680403924

`eq[A000122(n), A079546(A028310(n))]`
-/

namespace A068390.P12867314945680403924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079546 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068390.P12867314945680403924

/-!
# A068392: Number of partitions of n X n checkerboard into two edgewise-connected sets, counting partitions equal under rotation or reflection only once.

The programs for A068392, there is no canonical definition to state claims against.
-/

/-! ## A068392.P13191588863402238846

`A067176(n)+A023443(A354233(n))`
-/

namespace A068392.P13191588863402238846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 n + A023443 (A354233 n).toNat

end

end A068392.P13191588863402238846

/-!
# A068393: Number of partitions of n X n checkerboard by two edgewise-connected sets which produce the maximum n^2-2n+2 frontier edges between the two sets. Partitions equal under rotation or reflection are counted only once.

The programs for A068393, there is no canonical definition to state claims against.
-/

/-! ## A068393.P15159242198964496515

`floor(sqrt(p?[A282913(n+2)]))`
-/

namespace A068393.P15159242198964496515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A068393.P15159242198964496515

/-!
# A068394: Numbers k such that the k-th digit of Pi and the k-th digit of e are the same.

The programs for A068394, there is no canonical definition to state claims against.
-/

/-! ## A068394.P12841960896044385102

`A052055(n+1)-1`
-/

namespace A068394.P12841960896044385102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052055 (n + 1) - 1

end

end A068394.P12841960896044385102

/-! ## A068394.P15239527401066725144

`A107393(A020649(n+3))+A052055(n+1)`
-/

namespace A068394.P15239527401066725144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A020649 (n + 3)).toNat + A052055 (n + 1)

end

end A068394.P15239527401066725144

/-! ## A068394.P699053313592583671

`eq[A000796(n), A001113(n)]`
-/

namespace A068394.P699053313592583671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068394.P699053313592583671

/-! ## A068394.P15103686123905838681

`eq[0, A187747(n)]`
-/

namespace A068394.P15103686123905838681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068394.P15103686123905838681

/-! ## A068394.P16787752447428040105

`eq[0, A073223(n)]`
-/

namespace A068394.P16787752447428040105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068394.P16787752447428040105

/-! ## A068394.P7660104876137904055

`A023443(A052055(n+1))`
-/

namespace A068394.P7660104876137904055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A052055 (n + 1)).toNat

end

end A068394.P7660104876137904055

/-! ## A068394.P3151250201565331763

`A289207(A052055(n+1)+1)`
-/

namespace A068394.P3151250201565331763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A052055 (n + 1) + 1).toNat

end

end A068394.P3151250201565331763

/-! ## A068394.P13069079812866648997

`eq[2*A000796(n), A073212(n)]`
-/

namespace A068394.P13069079812866648997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068394.P13069079812866648997

/-! ## A068394.P1696229781562361951

`eq[A228239(n+1), A231325(n+1)]`
-/

namespace A068394.P1696229781562361951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068394.P1696229781562361951

/-! ## A068394.P11461825938528524963

`eq[A001355(2*n+1), A001355(2*(n+1))]`
-/

namespace A068394.P11461825938528524963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068394.P11461825938528524963

/-!
# A068395: a(n) = n-th prime minus its sum of digits.

The programs for A068395, the canonical program `A068395.P13008118586817300563` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068395 has offset 1).

The definition of A068395 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068395.P13008118586817300563

`A000040(n+1)-A007953(A000040(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068395

/-- `A000040(n+1)-A007953(A000040(n+1))` -/
def P13008118586817300563.Spec : Prop :=
  ∀ n, P13008118586817300563.a n = A068395 (n + 1)

theorem P13008118586817300563.correct : P13008118586817300563.Spec := by
  intro n
  simp only [A068395, Nat.add_sub_cancel]

end A068395

/-! ## A068395.P5237232829583122908

`Δ[A007504(n)]-A007605(n+1)`
-/

namespace A068395.P5237232829583122908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007605 (n + 1)

end

end A068395.P5237232829583122908

namespace A068395

/-- `Δ[A007504(n)]-A007605(n+1)` -/
def P5237232829583122908.Spec : Prop :=
  ∀ n, P5237232829583122908.a n = A068395 (n + 1)

end A068395

/-! ## A068395.P2625987070619457779

`A000040(n+1)-A007605(n+1)`
-/

namespace A068395.P2625987070619457779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A007605 (n + 1)

end

end A068395.P2625987070619457779

namespace A068395

/-- `A000040(n+1)-A007605(n+1)` -/
def P2625987070619457779.Spec : Prop :=
  ∀ n, P2625987070619457779.a n = A068395 (n + 1)

end A068395

/-! ## A068395.P14195092863951837962

`A100484(n+1)-A065073(n+1)`
-/

namespace A068395.P14195092863951837962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A065073 (n + 1)

end

end A068395.P14195092863951837962

namespace A068395

/-- `A100484(n+1)-A065073(n+1)` -/
def P14195092863951837962.Spec : Prop :=
  ∀ n, P14195092863951837962.a n = A068395 (n + 1)

end A068395

/-! ## A068395.P520074172871888740

`sqrt(A001248(n+1))-A007605(n+1)`
-/

namespace A068395.P520074172871888740
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (A007605 (n + 1) : ℝ)

end

end A068395.P520074172871888740

namespace A068395

/-- `sqrt(A001248(n+1))-A007605(n+1)` -/
def P520074172871888740.Spec : Prop :=
  ∀ n, P520074172871888740.a n = (A068395 (n + 1) : ℝ)

end A068395

/-! ## A068395.P17364411175212172087

`∑[A054541(n+1)]-A007605(n+1)`
-/

namespace A068395.P17364411175212172087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007605 (n + 1)

end

end A068395.P17364411175212172087

namespace A068395

/-- `∑[A054541(n+1)]-A007605(n+1)` -/
def P17364411175212172087.Spec : Prop :=
  ∀ n, P17364411175212172087.a n = A068395 (n + 1)

end A068395

/-! ## A068395.P11891503884554549784

`A006093(n+1)+1-A007605(n+1)`
-/

namespace A068395.P11891503884554549784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A007605 (n + 1))

end

end A068395.P11891503884554549784

namespace A068395

/-- `A006093(n+1)+1-A007605(n+1)` -/
def P11891503884554549784.Spec : Prop :=
  ∀ n, P11891503884554549784.a n = A068395 (n + 1)

theorem P11891503884554549784.correct : P11891503884554549784.Spec := by
  intro n
  simp only [A068395, Nat.add_sub_cancel, A068395.P11891503884554549784.a, A068395.P13008118586817300563.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A007605, A007605.P14521423581831153617.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068395

/-! ## A068395.P16451700014155513528

`A086801(n+1)+3-A007605(n+1)`
-/

namespace A068395.P16451700014155513528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 3 - A007605 (n + 1)

end

end A068395.P16451700014155513528

namespace A068395

/-- `A086801(n+1)+3-A007605(n+1)` -/
def P16451700014155513528.Spec : Prop :=
  ∀ n, P16451700014155513528.a n = A068395 (n + 1)

theorem P16451700014155513528.correct : P16451700014155513528.Spec := by
  intro n
  simp only [A068395, Nat.add_sub_cancel, A068395.P16451700014155513528.a, A068395.P13008118586817300563.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007605, A007605.P14521423581831153617.a, A007953, A007953.P3472751987379697826.a, A086801, A086801.P7118698000878110641.f1, A086801.P7118698000878110641.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068395

/-! ## A068395.P13934224529590393986

`2*A000040(n+1)-A065073(n+1)`
-/

namespace A068395.P13934224529590393986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A065073 (n + 1)

end

end A068395.P13934224529590393986

namespace A068395

/-- `2*A000040(n+1)-A065073(n+1)` -/
def P13934224529590393986.Spec : Prop :=
  ∀ n, P13934224529590393986.a n = A068395 (n + 1)

end A068395

/-! ## A068395.P16916916177843101809

`A065073(n+1)-2*A007605(n+1)`
-/

namespace A068395.P16916916177843101809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065073 (n + 1) - 2 * A007605 (n + 1)

end

end A068395.P16916916177843101809

namespace A068395

/-- `A065073(n+1)-2*A007605(n+1)` -/
def P16916916177843101809.Spec : Prop :=
  ∀ n, P16916916177843101809.a n = A068395 (n + 1)

end A068395

/-! ## A068395.P5538181748445655051

`A065091(n+1)-(A007605(n+1)+A001223(n+1))`
-/

namespace A068395.P5538181748445655051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - (A007605 (n + 1) + A001223 (n + 1))

end

end A068395.P5538181748445655051

namespace A068395

/-- `A065091(n+1)-(A007605(n+1)+A001223(n+1))` -/
def P5538181748445655051.Spec : Prop :=
  ∀ n, P5538181748445655051.a n = A068395 (n + 1)

theorem P5538181748445655051.correct : P5538181748445655051.Spec := by
  intro n
  simp only [A068395, Nat.add_sub_cancel, A068395.P5538181748445655051.a, A068395.P13008118586817300563.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5083310856331133973.a, A007605, A007605.P14521423581831153617.a, A007953, A007953.P3472751987379697826.a, A065091, A065091.P6971844946592549357.a, A046933, A046933.P9479947770746769512.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068395

/-! ## A068395.P6819380737765411117

`A000040(n+1)-(A104251(n+1)+A104250(n+1))`
-/

namespace A068395.P6819380737765411117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A104251 (n + 1) + A104250 (n + 1))

end

end A068395.P6819380737765411117

namespace A068395

/-- `A000040(n+1)-(A104251(n+1)+A104250(n+1))` -/
def P6819380737765411117.Spec : Prop :=
  ∀ n, P6819380737765411117.a n = A068395 (n + 1)

end A068395

/-! ## A068395.P17675928752848793575

`A000040(n+1)-(A104261(n+1)+A104260(n+1))`
-/

namespace A068395.P17675928752848793575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A104261 (n + 1) + A104260 (n + 1))

end

end A068395.P17675928752848793575

namespace A068395

/-- `A000040(n+1)-(A104261(n+1)+A104260(n+1))` -/
def P17675928752848793575.Spec : Prop :=
  ∀ n, P17675928752848793575.a n = A068395 (n + 1)

theorem P17675928752848793575.correct : P17675928752848793575.Spec := by
  intro n
  simp only [A068395, Nat.add_sub_cancel, A068395.P17675928752848793575.a, A068395.P13008118586817300563.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007953, A007953.P3472751987379697826.a, A104260, A104260.P17281038735353621208.f1, A104260.P17281038735353621208.a, A104261, A104261.P6514449015023123147.a, A007605, A007605.P14521423581831153617.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068395

/-! ## A068395.P6777396778969789888

`A000040(n+1)+A053666(n+1)-A255005(n+1)`
-/

namespace A068395.P6777396778969789888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A053666 (n + 1) - A255005 (n + 1))

end

end A068395.P6777396778969789888

namespace A068395

/-- `A000040(n+1)+A053666(n+1)-A255005(n+1)` -/
def P6777396778969789888.Spec : Prop :=
  ∀ n, P6777396778969789888.a n = A068395 (n + 1)

theorem P6777396778969789888.correct : P6777396778969789888.Spec := by
  intro n
  simp only [A068395, Nat.add_sub_cancel, A068395.P6777396778969789888.a, A068395.P13008118586817300563.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007953, A007953.P3472751987379697826.a, A053666, A053666.P18378645910674080637.f1, A053666.P18378645910674080637.a, A255005, A255005.P10936210896201179594.a, A007605, A007605.P14521423581831153617.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068395

/-! ## A068395.P16868141921328710901

`A000040(n+1)-Δ[A051351(n)]`
-/

namespace A068395.P16868141921328710901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (f1 (n + 1) - f1 n)

end

end A068395.P16868141921328710901

namespace A068395

/-- `A000040(n+1)-Δ[A051351(n)]` -/
def P16868141921328710901.Spec : Prop :=
  ∀ n, P16868141921328710901.a n = A068395 (n + 1)

end A068395

/-! ## A068395.P17686160073141262459

`A008578(n+2)-A007605(n+1)`
-/

namespace A068395.P17686160073141262459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A007605 (n + 1)

end

end A068395.P17686160073141262459

namespace A068395

/-- `A008578(n+2)-A007605(n+1)` -/
def P17686160073141262459.Spec : Prop :=
  ∀ n, P17686160073141262459.a n = A068395 (n + 1)

end A068395

/-! ## A068395.P8584097901228123556

`A006093(n+1)+1-Δ[A051351(n)]`
-/

namespace A068395.P8584097901228123556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A068395.P8584097901228123556

namespace A068395

/-- `A006093(n+1)+1-Δ[A051351(n)]` -/
def P8584097901228123556.Spec : Prop :=
  ∀ n, P8584097901228123556.a n = A068395 (n + 1)

end A068395

/-! ## A068395.P3647438048270614506

`A000040(n+1)+A051351(n)-A051351(n+1)`
-/

namespace A068395.P3647438048270614506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A051351 n - A051351 (n + 1))

end

end A068395.P3647438048270614506

namespace A068395

/-- `A000040(n+1)+A051351(n)-A051351(n+1)` -/
def P3647438048270614506.Spec : Prop :=
  ∀ n, P3647438048270614506.a n = A068395 (n + 1)

end A068395

/-! ## A068395.P1298624694532653660

`A247797(A250553(n+1))-A007605(n+1)`
-/

namespace A068395.P1298624694532653660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247797 (A250553 (n + 1)).toNat - A007605 (n + 1)

end

end A068395.P1298624694532653660

namespace A068395

/-- `A247797(A250553(n+1))-A007605(n+1)` -/
def P1298624694532653660.Spec : Prop :=
  ∀ n, P1298624694532653660.a n = A068395 (n + 1)

end A068395

/-! ## A068395.P17990045904380808802

`record[A006530(n+2)]-A007605(n+1)`
-/

namespace A068395.P17990045904380808802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A007605 (n + 1)

end

end A068395.P17990045904380808802

namespace A068395

/-- `record[A006530(n+2)]-A007605(n+1)` -/
def P17990045904380808802.Spec : Prop :=
  ∀ n, P17990045904380808802.a n = A068395 (n + 1)

end A068395

/-!
# A068396: n-th prime minus its reversal.

The programs for A068396, there is no canonical definition to state claims against.
-/

/-! ## A068396.P12338488073217901319

`A000040(n+1)-A004087(n+1)`
-/

namespace A068396.P12338488073217901319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A004087 (n + 1)

end

end A068396.P12338488073217901319

/-! ## A068396.P7185923085370413344

`A056965(A000040(n+1))`
-/

namespace A068396.P7185923085370413344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A000040 (n + 1)).toNat

end

end A068396.P7185923085370413344

/-! ## A068396.P12747374635904601298

`A100484(n+1)-A061227(n)`
-/

namespace A068396.P12747374635904601298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A061227 n

end

end A068396.P12747374635904601298

/-! ## A068396.P525753804872587067

`Δ[A007504(n)]-A004087(n+1)`
-/

namespace A068396.P525753804872587067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A004087 (n + 1)

end

end A068396.P525753804872587067

/-! ## A068396.P10612239362268393862

`2*A000040(n+1)-A061227(n)`
-/

namespace A068396.P10612239362268393862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A061227 n

end

end A068396.P10612239362268393862

/-! ## A068396.P6043701757820957572

`A061227(n)-2*A004087(n+1)`
-/

namespace A068396.P6043701757820957572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061227 n - 2 * A004087 (n + 1)

end

end A068396.P6043701757820957572

/-! ## A068396.P2645850267235708752

`abs(Δ[A008348(n)])-A004087(n+1)`
-/

namespace A068396.P2645850267235708752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A004087 (n + 1)

end

end A068396.P2645850267235708752

/-! ## A068396.P8541792731216152071

`sqrt(A001248(n+1))-A004087(n+1)`
-/

namespace A068396.P8541792731216152071
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (A004087 (n + 1) : ℝ)

end

end A068396.P8541792731216152071

/-! ## A068396.P14928184551001163691

`∑[A054541(n+1)]-A004087(n+1)`
-/

namespace A068396.P14928184551001163691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004087 (n + 1)

end

end A068396.P14928184551001163691

/-! ## A068396.P14739601434504709435

`A006093(n+1)+1-A004087(n+1)`
-/

namespace A068396.P14739601434504709435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A004087 (n + 1))

end

end A068396.P14739601434504709435

/-! ## A068396.P11685873573880267570

`A040976(n+1)+2-A004087(n+1)`
-/

namespace A068396.P11685873573880267570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - A004087 (n + 1))

end

end A068396.P11685873573880267570

/-! ## A068396.P6742910606829517274

`A007504(n+1)-(A007504(n)+A004087(n+1))`
-/

namespace A068396.P6742910606829517274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - (A007504 n + A004087 (n + 1))

end

end A068396.P6742910606829517274

/-! ## A068396.P15887567453020139745

`A000040(n+1)-A133019(n+1)/A000040(n+1)`
-/

namespace A068396.P15887567453020139745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) - (A133019 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A068396.P15887567453020139745

/-! ## A068396.P18411161977791752824

`A133019(n+1)/A004087(n+1)-A004087(n+1)`
-/

namespace A068396.P18411161977791752824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133019 (n + 1) : ℚ) / (A004087 (n + 1) : ℚ) - (A004087 (n + 1) : ℚ)

end

end A068396.P18411161977791752824

/-! ## A068396.P16747389156179670080

`A008578(n+2)-A004087(n+1)`
-/

namespace A068396.P16747389156179670080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A004087 (n + 1)

end

end A068396.P16747389156179670080

/-! ## A068396.P807507948791901543

`2*A008578(n+2)-A061227(n)`
-/

namespace A068396.P807507948791901543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 2) - A061227 n

end

end A068396.P807507948791901543

/-! ## A068396.P5449509165120760598

`∑{p}[A000040(n+1), #-A004086(#)]`
-/

namespace A068396.P5449509165120760598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - A004086 p)

end

end A068396.P5449509165120760598

/-! ## A068396.P16308740718765258219

`A000040(n+1)-A004086(Δ[A007504(n)])`
-/

namespace A068396.P16308740718765258219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A004086 (f1 (n + 1) - f1 n).toNat

end

end A068396.P16308740718765258219

/-! ## A068396.P2428002383927766793

`A182986(n+2)-A004086(A182986(n+2))`
-/

namespace A068396.P2428002383927766793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A004086 (A182986 (n + 2)).toNat

end

end A068396.P2428002383927766793

/-! ## A068396.P9803380405128065019

`A000040(n+1)-A004086(p?[A000040(n+1)])`
-/

namespace A068396.P9803380405128065019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068396.P9803380405128065019

/-!
# A068397: a(n) = Lucas(n) + (-1)^n + 1.

The programs for A068397, the canonical program `A068397.P17834049133524278927` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068397 has offset 1).

The definition of A068397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068397.P13218688924802359748

`1+(-1)^(n+1)+A000032(n+1)`
-/

namespace A068397.P13218688924802359748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (-1) ^ (n + 1) + A000032 (n + 1)

end

end A068397.P13218688924802359748

namespace A068397

/-- `1+(-1)^(n+1)+A000032(n+1)` -/
def P13218688924802359748.Spec : Prop :=
  ∀ n, P13218688924802359748.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P17834049133524278927

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068397

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P17834049133524278927.Spec : Prop :=
  ∀ n, P17834049133524278927.a n = A068397 (n + 1)

theorem P17834049133524278927.correct : P17834049133524278927.Spec := by
  intro n
  simp only [A068397, Nat.add_sub_cancel]

end A068397

/-! ## A068397.P16003249675691630562

`round(a(n-2)+ϕ^n)` with `a(0)=1, a(1)=5`
-/

namespace A068397.P16003249675691630562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) + Real.goldenRatio ^ n)

end

end A068397.P16003249675691630562

namespace A068397

/-- `round(a(n-2)+ϕ^n)` -/
def P16003249675691630562.Spec : Prop :=
  ∀ n, P16003249675691630562.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P91953974447263183

`ogf((1+4x-3x^2-4x^3)/(1-x-2x^2+x^3+x^4))`
-/

namespace A068397.P91953974447263183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -3, -4] [1, -1, -2, 1, 1] n

end

end A068397.P91953974447263183

namespace A068397

/-- `ogf((1+4x-3x^2-4x^3)/(1-x-2x^2+x^3+x^4))` -/
def P91953974447263183.Spec : Prop :=
  ∀ n, P91953974447263183.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P8789030236210634109

`a(n-3)+2*(a(n-2)-1)` with `a(0)=1, a(1)=5, a(2)=4`
-/

namespace A068397.P8789030236210634109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 4] fun n a =>
  a (n - 3) + 2 * (a (n - 2) - 1)

end

end A068397.P8789030236210634109

namespace A068397

/-- `a(n-3)+2*(a(n-2)-1)` -/
def P8789030236210634109.Spec : Prop :=
  ∀ n, P8789030236210634109.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P14567676250880348460

`a(n-3)-2*(1-a(n-2))` with `a(0)=1, a(1)=5, a(2)=4`
-/

namespace A068397.P14567676250880348460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 4] fun n a =>
  a (n - 3) - 2 * (1 - a (n - 2))

end

end A068397.P14567676250880348460

namespace A068397

/-- `a(n-3)-2*(1-a(n-2))` -/
def P14567676250880348460.Spec : Prop :=
  ∀ n, P14567676250880348460.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P8146038708163489916

`a(n-2)-2+a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=4`
-/

namespace A068397.P8146038708163489916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 4] fun n a =>
  a (n - 2) - 2 + (a (n - 2) + a (n - 3))

end

end A068397.P8146038708163489916

namespace A068397

/-- `a(n-2)-2+a(n-2)+a(n-3)` -/
def P8146038708163489916.Spec : Prop :=
  ∀ n, P8146038708163489916.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P13001897074039257458

`a(n-2)-(2-a(n-2)-a(n-3))` with `a(0)=1, a(1)=5, a(2)=4`
-/

namespace A068397.P13001897074039257458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 4] fun n a =>
  a (n - 2) - (2 - a (n - 2) - a (n - 3))

end

end A068397.P13001897074039257458

namespace A068397

/-- `a(n-2)-(2-a(n-2)-a(n-3))` -/
def P13001897074039257458.Spec : Prop :=
  ∀ n, P13001897074039257458.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P7877568178735853993

`A099925(n+1)+1`
-/

namespace A068397.P7877568178735853993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099925 (n + 1) + 1

end

end A068397.P7877568178735853993

namespace A068397

/-- `A099925(n+1)+1` -/
def P7877568178735853993.Spec : Prop :=
  ∀ n, P7877568178735853993.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P2567647420741709508

`abs(1-A075193(n))+1`
-/

namespace A068397.P2567647420741709508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A075193 n| + 1

end

end A068397.P2567647420741709508

namespace A068397

/-- `abs(1-A075193(n))+1` -/
def P2567647420741709508.Spec : Prop :=
  ∀ n, P2567647420741709508.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P14101839805344257439

`A000032(n)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A068397.P14101839805344257439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A000032 n + a (n - 2)

end

end A068397.P14101839805344257439

namespace A068397

/-- `A000032(n)+a(n-2)` -/
def P14101839805344257439.Spec : Prop :=
  ∀ n, P14101839805344257439.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P17526507111087729656

`A000032(C(n+1, n))+and(2, 2*n)`
-/

namespace A068397.P17526507111087729656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose (n + 1) n) + (Nat.land 2 (2 * n) : ℤ)

end

end A068397.P17526507111087729656

namespace A068397

/-- `A000032(C(n+1, n))+and(2, 2*n)` -/
def P17526507111087729656.Spec : Prop :=
  ∀ n, P17526507111087729656.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P9975682935019352941

`A000032(∑[2*n+1]/(n+1))+2*and(1, n)`
-/

namespace A068397.P9975682935019352941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))).toNat + (2 * Nat.land 1 n : ℤ)

end

end A068397.P9975682935019352941

namespace A068397

/-- `A000032(∑[2*n+1]/(n+1))+2*and(1, n)` -/
def P9975682935019352941.Spec : Prop :=
  ∀ n, P9975682935019352941.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P11551789707012706305

`A010684(n)+A001610(n)`
-/

namespace A068397.P11551789707012706305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n + A001610 n

end

end A068397.P11551789707012706305

namespace A068397

/-- `A010684(n)+A001610(n)` -/
def P11551789707012706305.Spec : Prop :=
  ∀ n, P11551789707012706305.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P10167364559699431625

`A301653(n)+A010685(n)`
-/

namespace A068397.P10167364559699431625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301653 n + A010685 n

end

end A068397.P10167364559699431625

namespace A068397

/-- `A301653(n)+A010685(n)` -/
def P10167364559699431625.Spec : Prop :=
  ∀ n, P10167364559699431625.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P15509352528929060666

`A010673(n)+A000204(n+1)`
-/

namespace A068397.P15509352528929060666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + A000204 (n + 1)

end

end A068397.P15509352528929060666

namespace A068397

/-- `A010673(n)+A000204(n+1)` -/
def P15509352528929060666.Spec : Prop :=
  ∀ n, P15509352528929060666.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P15582052892015615861

`A109522(n)+A052959(n+1)`
-/

namespace A068397.P15582052892015615861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109522 n + A052959 (n + 1)

end

end A068397.P15582052892015615861

namespace A068397

/-- `A109522(n)+A052959(n+1)` -/
def P15582052892015615861.Spec : Prop :=
  ∀ n, P15582052892015615861.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P17940601116528014376

`A001612(n+1)-A033999(n)`
-/

namespace A068397.P17940601116528014376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 1) - A033999 n

end

end A068397.P17940601116528014376

namespace A068397

/-- `A001612(n+1)-A033999(n)` -/
def P17940601116528014376.Spec : Prop :=
  ∀ n, P17940601116528014376.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P6753808653301311460

`A109522(n+2)+A109522(n)`
-/

namespace A068397.P6753808653301311460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109522 (n + 2) + A109522 n

end

end A068397.P6753808653301311460

namespace A068397

/-- `A109522(n+2)+A109522(n)` -/
def P6753808653301311460.Spec : Prop :=
  ∀ n, P6753808653301311460.a n = A068397 (n + 1)

end A068397

/-! ## A068397.P5380509861709228503

`A366506(n+1)-A176040(n)`
-/

namespace A068397.P5380509861709228503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366506 (n + 1) - A176040 n

end

end A068397.P5380509861709228503

namespace A068397

/-- `A366506(n+1)-A176040(n)` -/
def P5380509861709228503.Spec : Prop :=
  ∀ n, P5380509861709228503.a n = A068397 (n + 1)

end A068397

/-!
# A068398: Number of digits in (2^n)*(n!).

The programs for A068398, the canonical program `A068398.P3412321244934658565` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068398 has offset 0).

The definition of A068398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068398.P3412321244934658565

`A125059(2*n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068398

/-- `A125059(2*n)` -/
def P3412321244934658565.Spec : Prop :=
  ∀ n, P3412321244934658565.a n = A068398 n

theorem P3412321244934658565.correct : P3412321244934658565.Spec := by
  intro n
  simp only [A068398]

end A068398

/-! ## A068398.P532952526298717233

`A125059(A004277(n))%A139582(n)`
-/

namespace A068398.P532952526298717233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125059 (A004277 n).toNat) (A139582 n)

end

end A068398.P532952526298717233

namespace A068398

/-- `A125059(A004277(n))%A139582(n)` -/
def P532952526298717233.Spec : Prop :=
  ∀ n, P532952526298717233.a n = A068398 n

end A068398

/-! ## A068398.P5691525751548163477

`gcd(A000038(n), A125059(A004277(n)))`
-/

namespace A068398.P5691525751548163477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A125059 (A004277 n).toNat)

end

end A068398.P5691525751548163477

namespace A068398

/-- `gcd(A000038(n), A125059(A004277(n)))` -/
def P5691525751548163477.Spec : Prop :=
  ∀ n, (P5691525751548163477.a n : ℤ) = A068398 n

end A068398

/-! ## A068398.P4937881634235607631

`A125059(A004277(n))/A001221(A000040(n+1))`
-/

namespace A068398.P4937881634235607631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125059 (A004277 n).toNat : ℚ) / (A001221 (A000040 (n + 1)).toNat : ℚ)

end

end A068398.P4937881634235607631

namespace A068398

/-- `A125059(A004277(n))/A001221(A000040(n+1))` -/
def P4937881634235607631.Spec : Prop :=
  ∀ n, P4937881634235607631.a n = (A068398 n : ℚ)

end A068398

/-! ## A068398.P15527957974306993106

`A125059(A004277(n))/A001221(A046704(n+1))`
-/

namespace A068398.P15527957974306993106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125059 (A004277 n).toNat : ℚ) / (A001221 (A046704 (n + 1)).toNat : ℚ)

end

end A068398.P15527957974306993106

namespace A068398

/-- `A125059(A004277(n))/A001221(A046704(n+1))` -/
def P15527957974306993106.Spec : Prop :=
  ∀ n, P15527957974306993106.a n = (A068398 n : ℚ)

end A068398

/-! ## A068398.P15982334828813975484

`floor(log(2^n*n!)/log(10))+1`
-/

namespace A068398.P15982334828813975484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (2 ^ n * Nat.factorial n : ℝ) / Real.log (10 : ℝ)⌋ + 1

end

end A068398.P15982334828813975484

namespace A068398

/-- `floor(log(2^n*n!)/log(10))+1` -/
def P15982334828813975484.Spec : Prop :=
  ∀ n, P15982334828813975484.a n = A068398 n

end A068398

/-! ## A068398.P16790013200434388122

`∑{digits}[A000165(n), A119326(#)]`
-/

namespace A068398.P16790013200434388122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A119326 x).sum

end

end A068398.P16790013200434388122

namespace A068398

/-- `∑{digits}[A000165(n), A119326(#)]` -/
def P16790013200434388122.Spec : Prop :=
  ∀ n, P16790013200434388122.a n = A068398 n

end A068398

/-! ## A068398.P1569528475009902107

`∑{digits}[A000165(n), A133687(#)]`
-/

namespace A068398.P1569528475009902107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A133687 x).sum

end

end A068398.P1569528475009902107

namespace A068398

/-- `∑{digits}[A000165(n), A133687(#)]` -/
def P1569528475009902107.Spec : Prop :=
  ∀ n, P1569528475009902107.a n = A068398 n

end A068398

/-! ## A068398.P6462263802712946190

`∑{digits}[A000165(n), A242784(#)]`
-/

namespace A068398.P6462263802712946190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A242784 x).sum

end

end A068398.P6462263802712946190

namespace A068398

/-- `∑{digits}[A000165(n), A242784(#)]` -/
def P6462263802712946190.Spec : Prop :=
  ∀ n, P6462263802712946190.a n = A068398 n

end A068398

/-! ## A068398.P16419714709380931495

`∑{digits}[A000165(n), A000265(A001316(#))]`
-/

namespace A068398.P16419714709380931495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000265 (A001316 x).toNat).sum

end

end A068398.P16419714709380931495

namespace A068398

/-- `∑{digits}[A000165(n), A000265(A001316(#))]` -/
def P16419714709380931495.Spec : Prop :=
  ∀ n, P16419714709380931495.a n = A068398 n

end A068398

/-!
# A068399: Number of digits in numerator of B(2n) the Bernoulli numbers.

The programs for A068399, there is no canonical definition to state claims against.
-/

/-! ## A068399.P2742021195538547229

`∑{digits}[A000367(n), A113010(#)]`
-/

namespace A068399.P2742021195538547229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A113010 x).sum

end

end A068399.P2742021195538547229

/-! ## A068399.P10512558676653068810

`∑{digits}[A000367(n), A212368(#)]`
-/

namespace A068399.P10512558676653068810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A212368 x).sum

end

end A068399.P10512558676653068810

/-! ## A068399.P14914877129851851899

`∑{digits}[A000367(n), abs(A051716(#))]`
-/

namespace A068399.P14914877129851851899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => |A051716 x|).sum

end

end A068399.P14914877129851851899

/-! ## A068399.P6548746365275548339

`∑{digits}[A051716(2*n), abs(A051716(#))]`
-/

namespace A068399.P6548746365275548339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051716 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => |A051716 x|).sum

end

end A068399.P6548746365275548339

/-! ## A068399.P16377715863476474857

`∑{digits}[A051716(2*n+1), A051716(#)²]`
-/

namespace A068399.P16377715863476474857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051716 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A051716 x ^ 2).sum

end

end A068399.P16377715863476474857

/-! ## A068399.P17520580651693824592

`∑{digits}[A000367(n), A007318(A007318(#))]`
-/

namespace A068399.P17520580651693824592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A068399.P17520580651693824592

/-! ## A068399.P648804746309294496

`∑{digits}[A000367(n), A014963(A002445(#))]`
-/

namespace A068399.P648804746309294496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014963 (A002445 x).toNat).sum

end

end A068399.P648804746309294496

/-! ## A068399.P16212276267506826705

`∑{digits}[A000367(n), A000367(A112316(#))]`
-/

namespace A068399.P16212276267506826705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000367 (A112316 x).toNat).sum

end

end A068399.P16212276267506826705

/-! ## A068399.P16870236741535710523

`∑{digits}[A000367(n), A268918(A027642(#))]`
-/

namespace A068399.P16870236741535710523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A268918 (A027642 x).toNat).sum

end

end A068399.P16870236741535710523

/-! ## A068399.P12834506488009467012

`∑{digits}[A027641(2*n), A028246(A143343(#))]`
-/

namespace A068399.P12834506488009467012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028246 (A143343 x).toNat).sum

end

end A068399.P12834506488009467012

