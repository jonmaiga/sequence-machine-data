import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C009
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A067500: Powers of 3 with digit sum also a power of 3.

The programs for A067500, there is no canonical definition to state claims against.
-/

/-! ## A067500.P13287424360916151485

`3^A118872(n+1)`
-/

namespace A067500.P13287424360916151485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A118872 (n + 1) : ℤ)

end

end A067500.P13287424360916151485

/-! ## A067500.P15860283976909652083

`A000244(A118872(n+1))`
-/

namespace A067500.P15860283976909652083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A118872 (n + 1)).toNat

end

end A067500.P15860283976909652083

/-! ## A067500.P11930041851046602859

`A038754(2*A118872(n+1))`
-/

namespace A067500.P11930041851046602859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * A118872 (n + 1)).toNat

end

end A067500.P11930041851046602859

/-! ## A067500.P2099609910745663060

`A254006(2*A118872(n+1))`
-/

namespace A067500.P2099609910745663060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (2 * A118872 (n + 1)).toNat

end

end A067500.P2099609910745663060

/-! ## A067500.P8416128073583676913

`A000792(3*A118872(n+1))`
-/

namespace A067500.P8416128073583676913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (3 * A118872 (n + 1)).toNat

end

end A067500.P8416128073583676913

/-!
# A067503: Powers of 6 with digit sum also a power of 6.

The programs for A067503, there is no canonical definition to state claims against.
-/

/-! ## A067503.P17316660881011057006

`6^A025886(A256292(n+1))`
-/

namespace A067503.P17316660881011057006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A025886 (A256292 (n + 1)).toNat : ℤ)

end

end A067503.P17316660881011057006

/-!
# A067507: Powers of 2 with even digit sum.

The programs for A067507, the canonical program `A067507.P10580886633487687631` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067507 has offset 1).

The definition of A067507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067507.P11879689057976241529

`2^A118730(n+1)`
-/

namespace A067507.P11879689057976241529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A118730 (n + 1) : ℤ)

end

end A067507.P11879689057976241529

namespace A067507

/-- `2^A118730(n+1)` -/
def P11879689057976241529.Spec : Prop :=
  ∀ n, P11879689057976241529.a n = (A067507 (n + 1) : ℚ)

end A067507

/-! ## A067507.P9574267186133108188

`2^eq[0, A071906(n)]`
-/

namespace A067507.P9574267186133108188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067507.P9574267186133108188

namespace A067507

/-- `2^eq[0, A071906(n)]` -/
def P9574267186133108188.Spec : Prop :=
  ∀ n, (P9574267186133108188.a n : ℤ) = A067507 (n + 1)

theorem P9574267186133108188.correct : P9574267186133108188.Spec := by
  intro n
  simp only [A067507, Nat.add_sub_cancel, A067507.P9574267186133108188.f1, A067507.P9574267186133108188.f2, A067507.P9574267186133108188.a, A067507.P10580886633487687631.f1, A067507.P10580886633487687631.f2, A067507.P10580886633487687631.a, A000079, A000079.P10855139691139572931.a, A071906, A071906.P14558966377414500287.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067507

/-! ## A067507.P3184889550139569509

`A000079(A118730(n+1))`
-/

namespace A067507.P3184889550139569509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A118730 (n + 1)).toNat

end

end A067507.P3184889550139569509

namespace A067507

/-- `A000079(A118730(n+1))` -/
def P3184889550139569509.Spec : Prop :=
  ∀ n, P3184889550139569509.a n = A067507 (n + 1)

end A067507

/-! ## A067507.P10580886633487687631

`A000079(eq[0, A071906(n)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067507

/-- `A000079(eq[0, A071906(n)])` -/
def P10580886633487687631.Spec : Prop :=
  ∀ n, P10580886633487687631.a n = A067507 (n + 1)

theorem P10580886633487687631.correct : P10580886633487687631.Spec := by
  intro n
  simp only [A067507, Nat.add_sub_cancel]

end A067507

/-! ## A067507.P8576186920390232271

`2^eq[2, A020639(A055254(n)+2)]`
-/

namespace A067507.P8576186920390232271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055254 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067507.P8576186920390232271

namespace A067507

/-- `2^eq[2, A020639(A055254(n)+2)]` -/
def P8576186920390232271.Spec : Prop :=
  ∀ n, (P8576186920390232271.a n : ℤ) = A067507 (n + 1)

end A067507

/-!
# A067509: 

The programs for A067509, there is no canonical definition to state claims against.
-/

/-! ## A067509.P6122973776231861006

`A007185(A122961(n+1)+A086105(n+1))^A047259(n+1)`
-/

namespace A067509.P6122973776231861006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007185 (A122961 (n + 1) + A086105 (n + 1)).toNat : ℚ) ^ (A047259 (n + 1) : ℤ)

end

end A067509.P6122973776231861006

/-!
# A067510: Powers of 6 with digit sum divisible by 6.

The programs for A067510, there is no canonical definition to state claims against.
-/

/-! ## A067510.P3855059425173209314

`6^∑[A060266(A118108(n))]`
-/

namespace A067510.P3855059425173209314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A118108 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A067510.P3855059425173209314

/-! ## A067510.P812981707542898009

`6^A069922(A081984(n+1))`
-/

namespace A067510.P812981707542898009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A069922 (A081984 (n + 1)).toNat : ℤ)

end

end A067510.P812981707542898009

/-!
# A067511: Powers of 7 with digit sum divisible by 7.

The programs for A067511, there is no canonical definition to state claims against.
-/

/-! ## A067511.P6684837493600864033

`7^A173526(9^n)`
-/

namespace A067511.P6684837493600864033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A173526 (9 ^ n) : ℤ)

end

end A067511.P6684837493600864033

/-!
# A067513: Number of divisors d of n such that d+1 is prime.

The programs for A067513, the canonical program `A067513.P3561303849225168493` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067513 has offset 1).

The definition of A067513 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027760, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067513.P6346366711194600939

`A001222(A322312(n+1))`
-/

namespace A067513.P6346366711194600939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A322312 (n + 1)).toNat

end

end A067513.P6346366711194600939

namespace A067513

/-- `A001222(A322312(n+1))` -/
def P6346366711194600939.Spec : Prop :=
  ∀ n, P6346366711194600939.a n = A067513 (n + 1)

end A067513

/-! ## A067513.P3561303849225168493

`A001221(A027760(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A067513

/-- `A001221(A027760(n+1))` -/
def P3561303849225168493.Spec : Prop :=
  ∀ n, P3561303849225168493.a n = A067513 (n + 1)

theorem P3561303849225168493.correct : P3561303849225168493.Spec := by
  intro n
  simp only [A067513, Nat.add_sub_cancel]

end A067513

/-! ## A067513.P14499792448861806885

`A001221(A185633(n+1))`
-/

namespace A067513.P14499792448861806885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A185633 (n + 1)).toNat

end

end A067513.P14499792448861806885

namespace A067513

/-- `A001221(A185633(n+1))` -/
def P14499792448861806885.Spec : Prop :=
  ∀ n, P14499792448861806885.a n = A067513 (n + 1)

end A067513

/-! ## A067513.P9282407342725392034

`∑{d}[n+1, A010051(#+1)]`
-/

namespace A067513.P9282407342725392034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (d + 1)

end

end A067513.P9282407342725392034

namespace A067513

/-- `∑{d}[n+1, A010051(#+1)]` -/
def P9282407342725392034.Spec : Prop :=
  ∀ n, P9282407342725392034.a n = A067513 (n + 1)

end A067513

/-! ## A067513.P15267010299306456160

`∑{d}[n+1, 1-A005171(#+1)]`
-/

namespace A067513.P15267010299306456160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A005171 (d + 1))

end

end A067513.P15267010299306456160

namespace A067513

/-- `∑{d}[n+1, 1-A005171(#+1)]` -/
def P15267010299306456160.Spec : Prop :=
  ∀ n, P15267010299306456160.a n = A067513 (n + 1)

end A067513

/-! ## A067513.P5975190824510621615

`∑{d}[n+1, 1-A066247(#+1)]`
-/

namespace A067513.P5975190824510621615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A066247 (d + 1))

end

end A067513.P5975190824510621615

namespace A067513

/-- `∑{d}[n+1, 1-A066247(#+1)]` -/
def P5975190824510621615.Spec : Prop :=
  ∀ n, P5975190824510621615.a n = A067513 (n + 1)

end A067513

/-! ## A067513.P1172305242780266683

`∑{d}[n+1, C(2, A000005(#+1))]`
-/

namespace A067513.P1172305242780266683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose 2 (A000005 (d + 1)).toNat

end

end A067513.P1172305242780266683

namespace A067513

/-- `∑{d}[n+1, C(2, A000005(#+1))]` -/
def P1172305242780266683.Spec : Prop :=
  ∀ n, (P1172305242780266683.a n : ℤ) = A067513 (n + 1)

end A067513

/-! ## A067513.P15273375945240114266

`∑{d}[n+1, C(A000010(#+1), #)]`
-/

namespace A067513.P15273375945240114266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (A000010 (d + 1)).toNat d

end

end A067513.P15273375945240114266

namespace A067513

/-- `∑{d}[n+1, C(A000010(#+1), #)]` -/
def P15273375945240114266.Spec : Prop :=
  ∀ n, (P15273375945240114266.a n : ℤ) = A067513 (n + 1)

end A067513

/-! ## A067513.P16569336892868109303

`∑{e}[A322312(n+1), #]`
-/

namespace A067513.P16569336892868109303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A067513.P16569336892868109303

namespace A067513

/-- `∑{e}[A322312(n+1), #]` -/
def P16569336892868109303.Spec : Prop :=
  ∀ n, (P16569336892868109303.a n : ℤ) = A067513 (n + 1)

end A067513

/-!
# A067514: Number of distinct primes of the form floor(n/k) for 1 <= k <= n.

The programs for A067514, there is no canonical definition to state claims against.
-/

/-! ## A067514.P6574789153537930575

`A001221(A010786(n+1))`
-/

namespace A067514.P6574789153537930575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A010786 (n + 1)).toNat

end

end A067514.P6574789153537930575

/-! ## A067514.P5105928306705605645

`A001221(lcm(A127702(n+1), A208450(n+1)))`
-/

namespace A067514.P5105928306705605645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A127702 (n + 1)) (A208450 (n + 1)))

end

end A067514.P5105928306705605645

/-! ## A067514.P8848456997918437703

`A001221(A398518(n+1))`
-/

namespace A067514.P8848456997918437703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A398518 (n + 1)).toNat

end

end A067514.P8848456997918437703

/-! ## A067514.P9207681217172480747

`∑{p}[A010786(n+1), A001055(#)]`
-/

namespace A067514.P9207681217172480747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 p

end

end A067514.P9207681217172480747

/-! ## A067514.P196445125690330741

`∑{p}[A010786(n+1), A001065(#)]`
-/

namespace A067514.P196445125690330741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001065 p

end

end A067514.P196445125690330741

/-!
# A067515: Fibonacci numbers with index = digit sum.

The programs for A067515, there is no canonical definition to state claims against.
-/

/-! ## A067515.P17665716728316523455

`A000045(A020995(n+1))`
-/

namespace A067515.P17665716728316523455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020995 (n + 1)).toNat

end

end A067515.P17665716728316523455

/-! ## A067515.P13325326347784994722

`A000045(eq[0, A280185(n)])`
-/

namespace A067515.P13325326347784994722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067515.P13325326347784994722

/-! ## A067515.P2091196231850527584

`A000045(eq[n, A004090(n)])`
-/

namespace A067515.P2091196231850527584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067515.P2091196231850527584

/-! ## A067515.P10587336953419973467

`A000045(lt[A280185(n)², 1])`
-/

namespace A067515.P10587336953419973467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280185 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A067515.P10587336953419973467

/-! ## A067515.P6057392830348245757

`A000045(eq[n, ∑{digits}[A000045(n), #]])`
-/

namespace A067515.P6057392830348245757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067515.P6057392830348245757

/-!
# A067517: Fibonacci numbers which can be partitioned into groups of digits which are Fibonacci numbers.

The programs for A067517, there is no canonical definition to state claims against.
-/

/-! ## A067517.P16565446045587662649

`A000045(lt[A098486(n+1), 18])`
-/

namespace A067517.P16565446045587662649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098486 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A067517.P16565446045587662649

/-! ## A067517.P14282657631565827106

`A000045(lt[A320133(n+1), 18])`
-/

namespace A067517.P14282657631565827106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320133 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A067517.P14282657631565827106

/-! ## A067517.P8841002024282971347

`A000045(lt[A064614(2*n+1), 19])`
-/

namespace A067517.P8841002024282971347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A067517.P8841002024282971347

/-! ## A067517.P2730011770029647386

`A000045(eq[A036874(n+1), A036874(n+3)])`
-/

namespace A067517.P2730011770029647386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036874 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067517.P2730011770029647386

/-! ## A067517.P16091197012692611975

`A000045(lt[A240873(n), A051064(2*n+1)])`
-/

namespace A067517.P16091197012692611975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A067517.P16091197012692611975

/-!
# A067519: Numbers k such that k^2 + 1 is composite and phi(k^2 + 1) == 0 (mod k).

The programs for A067519, there is no canonical definition to state claims against.
-/

/-! ## A067519.P10514984111731157204

`A061392(A294760(n)+A128511(n+2))`
-/

namespace A067519.P10514984111731157204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A294760 n + A128511 (n + 2)).toNat

end

end A067519.P10514984111731157204

/-!
# A067520: Triangular numbers whose index is a multiple of the sum of their digits.

The programs for A067520, there is no canonical definition to state claims against.
-/

/-! ## A067520.P15943849763218707446

`A000217(record[A356770((n+1)²)])`
-/

namespace A067520.P15943849763218707446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356770 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067520.P15943849763218707446

/-! ## A067520.P10630287726986576900

`C(∑[A001222(A174175(2*n+3))], 2)`
-/

namespace A067520.P10630287726986576900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A174175 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A067520.P10630287726986576900

/-! ## A067520.P17937140277248103682

`eq[A057979(A121805(n+5)), A166350(n+1)]`
-/

namespace A067520.P17937140277248103682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A121805 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067520.P17937140277248103682

/-!
# A067521: Numbers n such that the square root of n is an integer and a multiple of the sum of the digits of n.

The programs for A067521, the canonical program `A067521.P8006543298138063662` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067521 has offset 1).

The definition of A067521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067521.P8006543298138063662

`(lt[(n+1)%A004159(n+1), 1]+1)²`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067521

/-- `(lt[(n+1)%A004159(n+1), 1]+1)²` -/
def P8006543298138063662.Spec : Prop :=
  ∀ n, (P8006543298138063662.a n : ℤ) = A067521 (n + 1)

theorem P8006543298138063662.correct : P8006543298138063662.Spec := by
  intro n
  simp only [A067521, Nat.add_sub_cancel]

end A067521

/-! ## A067521.P13323312775504119831

`∩[A072081(n+1), n²]`
-/

namespace A067521.P13323312775504119831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072081 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A067521.P13323312775504119831

namespace A067521

/-- `∩[A072081(n+1), n²]` -/
def P13323312775504119831.Spec : Prop :=
  ∀ n, (P13323312775504119831.a n : ℤ) = A067521 (n + 1)

end A067521

/-! ## A067521.P11196454156261383767

`∩[A000290(n), A072081(n+1)]`
-/

namespace A067521.P11196454156261383767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067521.P11196454156261383767

namespace A067521

/-- `∩[A000290(n), A072081(n+1)]` -/
def P11196454156261383767.Spec : Prop :=
  ∀ n, (P11196454156261383767.a n : ℤ) = A067521 (n + 1)

end A067521

/-! ## A067521.P17238573252952512320

`∩[A034793(n+1), A072081(n+1)]`
-/

namespace A067521.P17238573252952512320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067521.P17238573252952512320

namespace A067521

/-- `∩[A034793(n+1), A072081(n+1)]` -/
def P17238573252952512320.Spec : Prop :=
  ∀ n, (P17238573252952512320.a n : ℤ) = A067521 (n + 1)

end A067521

/-! ## A067521.P13473035287615181045

`∩[A062312(n+1), A072081(n+1)]`
-/

namespace A067521.P13473035287615181045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067521.P13473035287615181045

namespace A067521

/-- `∩[A062312(n+1), A072081(n+1)]` -/
def P13473035287615181045.Spec : Prop :=
  ∀ n, (P13473035287615181045.a n : ℤ) = A067521 (n + 1)

end A067521

/-!
# A067522: Smallest prime with sum of digits = 2^n.

The programs for A067522, there is no canonical definition to state claims against.
-/

/-! ## A067522.P11593473607658679841

`A067180(2^(n+1))`
-/

namespace A067522.P11593473607658679841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (2 ^ (n + 1))

end

end A067522.P11593473607658679841

/-! ## A067522.P686827622006712323

`A152652(A005578(n+1))`
-/

namespace A067522.P686827622006712323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152652 (A005578 (n + 1)).toNat

end

end A067522.P686827622006712323

/-! ## A067522.P1460235627147952255

`record[Δ[A067180(A130321(n))]]`
-/

namespace A067522.P1460235627147952255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A130321 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067522.P1460235627147952255

/-! ## A067522.P7335817929735091723

`record[A067180(2*A130321(n))]`
-/

namespace A067522.P7335817929735091723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (2 * A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067522.P7335817929735091723

/-! ## A067522.P14962403251932334809

`record[A067180(abs(A118824(n+1)))]`
-/

namespace A067522.P14962403251932334809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 |A118824 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067522.P14962403251932334809

/-!
# A067523: The smallest prime with a possible given digit sum.

The programs for A067523, there is no canonical definition to state claims against.
-/

/-! ## A067523.P13966809169873127723

`A067180(∑[gcd(2, char[2]+n)])`
-/

namespace A067523.P13966809169873127723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067523.P13966809169873127723

/-! ## A067523.P10846615154768095066

`A067180(comp[3*n+4]+2)`
-/

namespace A067523.P10846615154768095066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A067523.P10846615154768095066

/-! ## A067523.P790870520478188076

`or(n%2, A067180(floor(C(n, 2)/(n+1)+n+2)))`
-/

namespace A067523.P790870520478188076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A067180 ⌊(Nat.choose n 2 : ℚ) / (n + 1 : ℚ) + (n + 2 : ℚ)⌋.toNat)

end

end A067523.P790870520478188076

/-! ## A067523.P942552075825753416

`or(n%2, A067180(record[A101545(n+2)]))`
-/

namespace A067523.P942552075825753416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A067180 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A067523.P942552075825753416

/-! ## A067523.P17796657567564183389

`lcm(1-and(2, n), A067180(A133223(n+1)))`
-/

namespace A067523.P17796657567564183389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A067180 (A133223 (n + 1)).toNat)

end

end A067523.P17796657567564183389

/-!
# A067525: Define I(n) = number obtained by incrementing each digit from 0 to 8 of n by 1. A '9' is replaced by a '0'. Sequence gives digitriangular numbers n*I(n)/2.

The programs for A067525, there is no canonical definition to state claims against.
-/

/-! ## A067525.P9786559074627911802

`∑[Δ[n*A048379(n)]/2]`
-/

namespace A067525.P9786559074627911802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A048379 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067525.P9786559074627911802

/-! ## A067525.P1071934582642106399

`(n+1)/2*A048379(n+1)`
-/

namespace A067525.P1071934582642106399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A048379 (n + 1) : ℚ)

end

end A067525.P1071934582642106399

/-! ## A067525.P16395218717996494875

`A026741(n+1)*A026741(A048379(n+1))`
-/

namespace A067525.P16395218717996494875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A026741 (A048379 (n + 1)).toNat

end

end A067525.P16395218717996494875

/-! ## A067525.P1789596923641420832

`A014682((n+1)*A048379(n+1))`
-/

namespace A067525.P1789596923641420832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 1 : ℤ) * A048379 (n + 1)).toNat

end

end A067525.P1789596923641420832

/-! ## A067525.P2483697730716475210

`A001281((n+1)*A048379(n+1))`
-/

namespace A067525.P2483697730716475210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((n + 1 : ℤ) * A048379 (n + 1)).toNat

end

end A067525.P2483697730716475210

/-! ## A067525.P15415806839148329265

`A004525((n+1)*A048379(n+1))`
-/

namespace A067525.P15415806839148329265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n + 1 : ℤ) * A048379 (n + 1)).toNat

end

end A067525.P15415806839148329265

/-! ## A067525.P8939184872405886357

`A004526((n+1)*A048379(n+1))`
-/

namespace A067525.P8939184872405886357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1 : ℤ) * A048379 (n + 1)).toNat

end

end A067525.P8939184872405886357

/-! ## A067525.P10871972630647287734

`A025480((n+1)*A048379(n+1))`
-/

namespace A067525.P10871972630647287734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 ((n + 1 : ℤ) * A048379 (n + 1)).toNat

end

end A067525.P10871972630647287734

/-! ## A067525.P5073911922796193964

`A026741((n+1)*A048379(n+1))`
-/

namespace A067525.P5073911922796193964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 1 : ℤ) * A048379 (n + 1)).toNat

end

end A067525.P5073911922796193964

/-! ## A067525.P1332302079852835778

`A038572((n+1)*A048379(n+1))`
-/

namespace A067525.P1332302079852835778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 ((n + 1 : ℤ) * A048379 (n + 1)).toNat

end

end A067525.P1332302079852835778

/-!
# A067526: Numbers n such that n - 2^k is a prime or 1 for all k satisfying 0 < k, 2^k < n.

The programs for A067526, there is no canonical definition to state claims against.
-/

/-! ## A067526.P7068498498714471043

`A005728(A091336(n))+2`
-/

namespace A067526.P7068498498714471043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (A091336 n).toNat + 2

end

end A067526.P7068498498714471043

/-! ## A067526.P17562370135514099621

`lt[(n-2)/A064989(n+1), abs(A080891(n))]+3`
-/

namespace A067526.P17562370135514099621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (A064989 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080891 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 3

end

end A067526.P17562370135514099621

/-!
# A067527: n - 3^k is a prime for all k > 0 such that 3^k < n.

The programs for A067527, there is no canonical definition to state claims against.
-/

/-! ## A067527.P7641436503349532236

`A000040(record[A325622(n+1)])+3`
-/

namespace A067527.P7641436503349532236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 3

end

end A067527.P7641436503349532236

/-! ## A067527.P9542116621663875037

`A057448(record[A325622(n+1)])+3`
-/

namespace A067527.P9542116621663875037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057448 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 3

end

end A067527.P9542116621663875037

/-! ## A067527.P4020186116526177123

`A216509(n+1)+p?[A174559(n)]`
-/

namespace A067527.P4020186116526177123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216509 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067527.P4020186116526177123

/-! ## A067527.P3129288601734036607

`A216509(A132576(n+1))+3`
-/

namespace A067527.P3129288601734036607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216509 (A132576 (n + 1)).toNat + 3

end

end A067527.P3129288601734036607

/-! ## A067527.P14285409896787442853

`A363920(A075237(n+1))+3`
-/

namespace A067527.P14285409896787442853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363920 (A075237 (n + 1)).toNat + 3

end

end A067527.P14285409896787442853

/-!
# A067528: Numbers n such that n - 4^k is a prime or 1 for all k > 0 and n > 4^k.

The programs for A067528, there is no canonical definition to state claims against.
-/

/-! ## A067528.P284247766214195609

`record[A014963(A178798(n)+1+n)]+4`
-/

namespace A067528.P284247766214195609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A178798 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 4

end

end A067528.P284247766214195609

/-! ## A067528.P6452593616535915227

`A300271(A197298(n+1))+4`
-/

namespace A067528.P6452593616535915227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300271 (A197298 (n + 1)).toNat + 4

end

end A067528.P6452593616535915227

/-! ## A067528.P1597035020807670290

`record[A014963(A344646(n)+A007302(n+1))]+4`
-/

namespace A067528.P1597035020807670290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A344646 n + A007302 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 4

end

end A067528.P1597035020807670290

/-! ## A067528.P10675105389720712220

`A376682(∑[n])+4`
-/

namespace A067528.P10675105389720712220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376682 (∑ j ∈ Finset.range (n + 1), f1 j) + 4

end

end A067528.P10675105389720712220

/-! ## A067528.P8602663860054261284

`A031285(A015919(n+1))+3`
-/

namespace A067528.P8602663860054261284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A015919 (n + 1)).toNat + 3

end

end A067528.P8602663860054261284

/-!
# A067529: n - 5^k is a prime for all k > 0 and n > 5^k.

The programs for A067529, there is no canonical definition to state claims against.
-/

/-! ## A067529.P15130173655600909459

`p?[lt[A279027(n+1), 6]]+5`
-/

namespace A067529.P15130173655600909459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279027 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 5

end

end A067529.P15130173655600909459

/-! ## A067529.P1777086596361348557

`p?[lt[A280667(n+1), 6]]+5`
-/

namespace A067529.P1777086596361348557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280667 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 5

end

end A067529.P1777086596361348557

/-! ## A067529.P11810828953601975556

`p?[lt[A001031(n+1), 7]]+5`
-/

namespace A067529.P11810828953601975556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 5

end

end A067529.P11810828953601975556

/-! ## A067529.P766582005501127003

`A227956(A052382(n+1))+4`
-/

namespace A067529.P766582005501127003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227956 (A052382 (n + 1)).toNat + 4

end

end A067529.P766582005501127003

/-! ## A067529.P17380676659956426860

`p?[A065003(n+1)]+5`
-/

namespace A067529.P17380676659956426860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5

end

end A067529.P17380676659956426860

/-!
# A067530: Numbers k such that k - m! is a prime or 1 for all m > 1 and k > m!.

The programs for A067530, there is no canonical definition to state claims against.
-/

/-! ## A067530.P6502851084311567698

`A037229(∑[ceil(n/4)])+1`
-/

namespace A067530.P6502851084311567698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037229 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A067530.P6502851084311567698

/-! ## A067530.P12770070889100813961

`A229757(A361848(n))+2`
-/

namespace A067530.P12770070889100813961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229757 (A361848 n).toNat + 2

end

end A067530.P12770070889100813961

/-! ## A067530.P10726622686834790429

`A019565(A230863(n+1))+2`
-/

namespace A067530.P10726622686834790429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A230863 (n + 1)).toNat + 2

end

end A067530.P10726622686834790429

/-! ## A067530.P14529274336251039299

`record[A006530(A191612(n+1))+2]`
-/

namespace A067530.P14529274336251039299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A191612 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067530.P14529274336251039299

/-! ## A067530.P10923524190666979496

`record[A217581(A279188(n+1))+2]`
-/

namespace A067530.P10923524190666979496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A279188 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067530.P10923524190666979496

/-!
# A067531: Numbers n such that n - number of divisors of n is a prime.

The programs for A067531, there is no canonical definition to state claims against.
-/

/-! ## A067531.P12145183269727562967

`∪[A006512(n+1), A158338(n+1)]`
-/

namespace A067531.P12145183269727562967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067531.P12145183269727562967

/-! ## A067531.P18259448733858837379

`eq[n+1, ∑{e}[∑{d}[n, A000010(#)-1], #+n]]`
-/

namespace A067531.P18259448733858837379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), (A000010 d - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067531.P18259448733858837379

/-! ## A067531.P14128998419269671157

`eq[1, A032741(A049820(n+1))]+1`
-/

namespace A067531.P14128998419269671157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A049820 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067531.P14128998419269671157

/-! ## A067531.P291994283054095234

`eq[1, A032741(n-A032741(n+1))]+1`
-/

namespace A067531.P291994283054095234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((n : ℤ) - A032741 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067531.P291994283054095234

/-! ## A067531.P13731886359478396605

`eq[1, A003415(n+1-A000005(n+1))]+1`
-/

namespace A067531.P13731886359478396605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n + 1 : ℤ) - A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067531.P13731886359478396605

/-! ## A067531.P9046295619156450314

`eq[0, A007920(A049820(A028310(n)))]`
-/

namespace A067531.P9046295619156450314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A049820 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067531.P9046295619156450314

/-!
# A067532: Numbers k such that k + number of divisors of k is a prime.

The programs for A067532, the canonical program `A067532.P15581183791114753305` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067532 has offset 1).

The definition of A067532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8651 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067532.P15581183791114753305

`record[(n+1)/A001222(A000005(n+1)+n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067532

/-- `record[(n+1)/A001222(A000005(n+1)+n+1)]` -/
def P15581183791114753305.Spec : Prop :=
  ∀ n, P15581183791114753305.a n = (A067532 (n + 1) : ℚ)

end A067532

/-! ## A067532.P8644333172625555438

`eq[2, A000005(A000005(n+1)+1+n)]+1`
-/

namespace A067532.P8644333172625555438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067532.P8644333172625555438

namespace A067532

/-- `eq[2, A000005(A000005(n+1)+1+n)]+1` -/
def P8644333172625555438.Spec : Prop :=
  ∀ n, (P8644333172625555438.a n : ℤ) = A067532 (n + 1)

end A067532

/-! ## A067532.P10545673296523506503

`lt[A001222(A000005(n+1)+n+1), 2]+1`
-/

namespace A067532.P10545673296523506503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (n + 1) + (n : ℤ) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067532.P10545673296523506503

namespace A067532

/-- `lt[A001222(A000005(n+1)+n+1), 2]+1` -/
def P10545673296523506503.Spec : Prop :=
  ∀ n, (P10545673296523506503.a n : ℤ) = A067532 (n + 1)

end A067532

/-! ## A067532.P10330861327301285199

`eq[2, A286479(n+1)]+1`
-/

namespace A067532.P10330861327301285199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067532.P10330861327301285199

namespace A067532

/-- `eq[2, A286479(n+1)]+1` -/
def P10330861327301285199.Spec : Prop :=
  ∀ n, (P10330861327301285199.a n : ℤ) = A067532 (n + 1)

end A067532

/-! ## A067532.P4657739344452029146

`eq[2, A286529(n+1)]+1`
-/

namespace A067532.P4657739344452029146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067532.P4657739344452029146

namespace A067532

/-- `eq[2, A286529(n+1)]+1` -/
def P4657739344452029146.Spec : Prop :=
  ∀ n, (P4657739344452029146.a n : ℤ) = A067532 (n + 1)

end A067532

/-! ## A067532.P13914383862870719409

`eq[1, A001222(∏{e}[n+1, #+1]+1+n)]+1`
-/

namespace A067532.P13914383862870719409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067532.P13914383862870719409

namespace A067532

/-- `eq[1, A001222(∏{e}[n+1, #+1]+1+n)]+1` -/
def P13914383862870719409.Spec : Prop :=
  ∀ n, (P13914383862870719409.a n : ℤ) = A067532 (n + 1)

end A067532

/-! ## A067532.P2843446287572279106

`eq[1, A007920(A032741(n)+n)]`
-/

namespace A067532.P2843446287572279106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A032741 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067532.P2843446287572279106

namespace A067532

/-- `eq[1, A007920(A032741(n)+n)]` -/
def P2843446287572279106.Spec : Prop :=
  ∀ n, (P2843446287572279106.a n : ℤ) = A067532 (n + 1)

end A067532

/-! ## A067532.P397069390722498243

`eq[1, A013632(A032741(n)+n)]`
-/

namespace A067532.P397069390722498243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A032741 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067532.P397069390722498243

namespace A067532

/-- `eq[1, A013632(A032741(n)+n)]` -/
def P397069390722498243.Spec : Prop :=
  ∀ n, (P397069390722498243.a n : ℤ) = A067532 (n + 1)

end A067532

/-! ## A067532.P14430506611676588885

`eq[2, A000005(A062249(n+1))]+1`
-/

namespace A067532.P14430506611676588885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062249 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067532.P14430506611676588885

namespace A067532

/-- `eq[2, A000005(A062249(n+1))]+1` -/
def P14430506611676588885.Spec : Prop :=
  ∀ n, (P14430506611676588885.a n : ℤ) = A067532 (n + 1)

end A067532

/-! ## A067532.P5695428266866129769

`eq[1, A010051(A032741(n)+1+n)]`
-/

namespace A067532.P5695428266866129769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A032741 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067532.P5695428266866129769

namespace A067532

/-- `eq[1, A010051(A032741(n)+1+n)]` -/
def P5695428266866129769.Spec : Prop :=
  ∀ n, (P5695428266866129769.a n : ℤ) = A067532 (n + 1)

end A067532

/-! ## A067532.P11386205809799405636

`eq[1, A032741(A032741(n)+1+n)]`
-/

namespace A067532.P11386205809799405636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067532.P11386205809799405636

namespace A067532

/-- `eq[1, A032741(A032741(n)+1+n)]` -/
def P11386205809799405636.Spec : Prop :=
  ∀ n, (P11386205809799405636.a n : ℤ) = A067532 (n + 1)

end A067532

/-! ## A067532.P15576303936106031620

`lt[A001222(Δ[A006218(n)]+n+1), 2]+1`
-/

namespace A067532.P15576303936106031620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n + (n : ℤ) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A067532.P15576303936106031620

namespace A067532

/-- `lt[A001222(Δ[A006218(n)]+n+1), 2]+1` -/
def P15576303936106031620.Spec : Prop :=
  ∀ n, (P15576303936106031620.a n : ℤ) = A067532 (n + 1)

end A067532

/-! ## A067532.P13409933003443242634

`lt[A000005(Δ[A006218(n)]+n+1), 3]+1`
-/

namespace A067532.P13409933003443242634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n + (n + 1 : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A067532.P13409933003443242634

namespace A067532

/-- `lt[A000005(Δ[A006218(n)]+n+1), 3]+1` -/
def P13409933003443242634.Spec : Prop :=
  ∀ n, (P13409933003443242634.a n : ℤ) = A067532 (n + 1)

end A067532

/-! ## A067532.P1878629655441061149

`lt[A033676(A032741(n+1)+n+2), 2]+1`
-/

namespace A067532.P1878629655441061149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A032741 (n + 1) + (n + 2 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067532.P1878629655441061149

namespace A067532

/-- `lt[A033676(A032741(n+1)+n+2), 2]+1` -/
def P1878629655441061149.Spec : Prop :=
  ∀ n, (P1878629655441061149.a n : ℤ) = A067532 (n + 1)

end A067532

/-! ## A067532.P4169519060630496508

`record[(n+1)%A014963(A000005(n+1)+n+1)]`
-/

namespace A067532.P4169519060630496508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (A000005 (n + 1) + (n + 1 : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067532.P4169519060630496508

namespace A067532

/-- `record[(n+1)%A014963(A000005(n+1)+n+1)]` -/
def P4169519060630496508.Spec : Prop :=
  ∀ n, P4169519060630496508.a n = A067532 (n + 1)

end A067532

/-!
# A067533: Numbers k such that both k - tau(k) and k + tau(k) are prime where tau(k) = A000005(k).

The programs for A067533, there is no canonical definition to state claims against.
-/

/-! ## A067533.P9084481631359135957

`∩[A067531(n+1), A067532(n+1)]`
-/

namespace A067533.P9084481631359135957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067533.P9084481631359135957

/-! ## A067533.P5937830540135537348

`∩[eq[2, A286479(n+1)]+1, A067531(n+1)]`
-/

namespace A067533.P5937830540135537348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286479 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A067533.P5937830540135537348

/-!
# A067534: a(n) = 4^n * Sum_{i=1..n} i^4/4^i.

The programs for A067534, the canonical program `A067534.P17280178159656179340` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067534 has offset 1).

The definition of A067534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067534.P17280178159656179340

`4*a(n-1)+(n+1)^4` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067534

/-- `4*a(n-1)+(n+1)^4` -/
def P17280178159656179340.Spec : Prop :=
  ∀ n, (P17280178159656179340.a n : ℤ) = A067534 (n + 1)

theorem P17280178159656179340.correct : P17280178159656179340.Spec := by
  intro n
  simp only [A067534, Nat.add_sub_cancel]

end A067534

/-! ## A067534.P9491516278709616897

`ogf((1+11x+11x^2+x^3)/(1-9x+30x^2-50x^3+45x^4-21x^5+4x^6))`
-/

namespace A067534.P9491516278709616897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 11, 11, 1] [1, -9, 30, -50, 45, -21, 4] n

end

end A067534.P9491516278709616897

namespace A067534

/-- `ogf((1+11x+11x^2+x^3)/(1-9x+30x^2-50x^3+45x^4-21x^5+4x^6))` -/
def P9491516278709616897.Spec : Prop :=
  ∀ n, P9491516278709616897.a n = A067534 (n + 1)

end A067534

/-! ## A067534.P18305598710522075570

`1/81*(380*4^(n+1)-27*(n+1)^4-144*(n+1)^3-360*(n+1)²-528*(n+1)-380)`
-/

namespace A067534.P18305598710522075570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 81 * ((380 * 4 ^ (n + 1) : ℤ) - (27 * (n + 1) ^ 4 : ℤ) - (144 * (n + 1) ^ 3 : ℤ) - (360 * (n + 1) ^ 2 : ℤ) - (528 * (n + 1) : ℤ) - 380 : ℚ)

end

end A067534.P18305598710522075570

namespace A067534

/-- `1/81*(380*4^(n+1)-27*(n+1)^4-144*(n+1)^3-360*(n+1)²-528*(n+1)-380)` -/
def P18305598710522075570.Spec : Prop :=
  ∀ n, P18305598710522075570.a n = (A067534 (n + 1) : ℚ)

theorem P18305598710522075570.correct : P18305598710522075570.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A067534, Nat.add_sub_cancel, A067534.P18305598710522075570.a, A067534.P17280178159656179340.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A067534, Nat.add_sub_cancel, A067534.P18305598710522075570.a, A067534.P17280178159656179340.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A067534

/-! ## A067534.P17929584309167284363

`floor(4*a(n-1))+(n+1)²²` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A067534.P17929584309167284363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + ((n + 1) ^ 2) ^ 2

end

end A067534.P17929584309167284363

namespace A067534

/-- `floor(4*a(n-1))+(n+1)²²` -/
def P17929584309167284363.Spec : Prop :=
  ∀ n, (P17929584309167284363.a n : ℤ) = A067534 (n + 1)

theorem P17929584309167284363.correct : P17929584309167284363.Spec := by
  intro n
  simp only [A067534, Nat.add_sub_cancel, A067534.P17929584309167284363.a, A067534.P17280178159656179340.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067534

/-! ## A067534.P2515497442704750745

`(n+1)²²+2*2*a(n-1)` with `a(0)=1`
-/

namespace A067534.P2515497442704750745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 2) ^ 2 + 2 * (2 * a (n - 1))

end

end A067534.P2515497442704750745

namespace A067534

/-- `(n+1)²²+2*2*a(n-1)` -/
def P2515497442704750745.Spec : Prop :=
  ∀ n, (P2515497442704750745.a n : ℤ) = A067534 (n + 1)

end A067534

/-!
# A067535: Smallest squarefree number >= n.

The programs for A067535, the canonical program `A067535.P4022981712752583231` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067535 has offset 1).

The definition of A067535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067535.P17182991030843235702

`n+1+A081221(n+1)`
-/

namespace A067535.P17182991030843235702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A081221 (n + 1)

end

end A067535.P17182991030843235702

namespace A067535

/-- `n+1+A081221(n+1)` -/
def P17182991030843235702.Spec : Prop :=
  ∀ n, P17182991030843235702.a n = A067535 (n + 1)

theorem P17182991030843235702.correct : P17182991030843235702.Spec := by
  intro n
  simp only [A067535, Nat.add_sub_cancel, A067535.P17182991030843235702.a, A067535.P4022981712752583231.f2, A067535.P4022981712752583231.f1, A067535.P4022981712752583231.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A081221, A081221.P6243088705239368053.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067535

/-! ## A067535.P6667732637408099858

`A378087(n)+a(n-1)` with `a(0)=1`
-/

namespace A067535.P6667732637408099858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A378087 n + a (n - 1)

end

end A067535.P6667732637408099858

namespace A067535

/-- `A378087(n)+a(n-1)` -/
def P6667732637408099858.Spec : Prop :=
  ∀ n, P6667732637408099858.a n = A067535 (n + 1)

end A067535

/-! ## A067535.P6088545429541229193

`A005117(A107079(n+1))`
-/

namespace A067535.P6088545429541229193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A107079 (n + 1)).toNat

end

end A067535.P6088545429541229193

namespace A067535

/-- `A005117(A107079(n+1))` -/
def P6088545429541229193.Spec : Prop :=
  ∀ n, P6088545429541229193.a n = A067535 (n + 1)

end A067535

/-! ## A067535.P18174542056798004050

`A005117(A013928(n+1)+1)`
-/

namespace A067535.P18174542056798004050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A013928 (n + 1) + 1).toNat

end

end A067535.P18174542056798004050

namespace A067535

/-- `A005117(A013928(n+1)+1)` -/
def P18174542056798004050.Spec : Prop :=
  ∀ n, P18174542056798004050.a n = A067535 (n + 1)

end A067535

/-! ## A067535.P1066960395021801761

`A076260(n+1)+A070321(n+1)`
-/

namespace A067535.P1066960395021801761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076260 (n + 1) + A070321 (n + 1)

end

end A067535.P1066960395021801761

namespace A067535

/-- `A076260(n+1)+A070321(n+1)` -/
def P1066960395021801761.Spec : Prop :=
  ∀ n, P1066960395021801761.a n = A067535 (n + 1)

theorem P1066960395021801761.correct : P1066960395021801761.Spec := by
  intro n
  simp only [A067535, Nat.add_sub_cancel, A067535.P1066960395021801761.a, A067535.P4022981712752583231.f2, A067535.P4022981712752583231.f1, A067535.P4022981712752583231.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A070321, A070321.P7130479332265893626.a, A076260, A076260.P4040486207589010762.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067535

/-! ## A067535.P4022981712752583231

`A005117(∑[char[A005117(n+1)]]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067535

/-- `A005117(∑[char[A005117(n+1)]]+1)` -/
def P4022981712752583231.Spec : Prop :=
  ∀ n, P4022981712752583231.a n = A067535 (n + 1)

theorem P4022981712752583231.correct : P4022981712752583231.Spec := by
  intro n
  simp only [A067535, Nat.add_sub_cancel]

end A067535

/-! ## A067535.P1016263827727496120

`A088610(2*A013928(n+1)+1)`
-/

namespace A067535.P1016263827727496120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * A013928 (n + 1) + 1).toNat

end

end A067535.P1016263827727496120

namespace A067535

/-- `A088610(2*A013928(n+1)+1)` -/
def P1016263827727496120.Spec : Prop :=
  ∀ n, P1016263827727496120.a n = A067535 (n + 1)

end A067535

/-! ## A067535.P12151993780882396789

`A088610(A005843(A013928(n+1))+1)`
-/

namespace A067535.P12151993780882396789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A005843 (A013928 (n + 1)).toNat + 1).toNat

end

end A067535.P12151993780882396789

namespace A067535

/-- `A088610(A005843(A013928(n+1))+1)` -/
def P12151993780882396789.Spec : Prop :=
  ∀ n, P12151993780882396789.a n = A067535 (n + 1)

end A067535

/-! ## A067535.P9290906254211244547

`A088610(A013928(n+1)+A013928(n+1)+1)`
-/

namespace A067535.P9290906254211244547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A013928 (n + 1) + (A013928 (n + 1) + 1)).toNat

end

end A067535.P9290906254211244547

namespace A067535

/-- `A088610(A013928(n+1)+A013928(n+1)+1)` -/
def P9290906254211244547.Spec : Prop :=
  ∀ n, P9290906254211244547.a n = A067535 (n + 1)

end A067535

/-! ## A067535.P18290652241834750572

`A005117(A262869(2*n+1)+1)`
-/

namespace A067535.P18290652241834750572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A262869 (2 * n + 1) + 1).toNat

end

end A067535.P18290652241834750572

namespace A067535

/-- `A005117(A262869(2*n+1)+1)` -/
def P18290652241834750572.Spec : Prop :=
  ∀ n, P18290652241834750572.a n = A067535 (n + 1)

end A067535

/-! ## A067535.P6309517659053134338

`A005117(n+1-A294234(2*n))`
-/

namespace A067535.P6309517659053134338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 ((n + 1 : ℤ) - A294234 (2 * n)).toNat

end

end A067535.P6309517659053134338

namespace A067535

/-- `A005117(n+1-A294234(2*n))` -/
def P6309517659053134338.Spec : Prop :=
  ∀ n, P6309517659053134338.a n = A067535 (n + 1)

end A067535

/-! ## A067535.P9250444046461967817

`A072909(A000196(A002522(n)))+n`
-/

namespace A067535.P9250444046461967817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (A000196 (A002522 n).toNat).toNat + (n : ℤ)

end

end A067535.P9250444046461967817

namespace A067535

/-- `A072909(A000196(A002522(n)))+n` -/
def P9250444046461967817.Spec : Prop :=
  ∀ n, P9250444046461967817.a n = A067535 (n + 1)

end A067535

/-!
# A067536: Numbers k such that phi(k*(k+1)*(k+2)/3)/phi(k) is not an integer where phi(k) is the Euler totient function A000010(k).

The programs for A067536, the canonical program `A067536.P16574597786974655747` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067536 has offset 1).

The definition of A067536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1537 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067536.P16574597786974655747

`∩[A067544(n+1)+1, A067544(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A067536

/-- `∩[A067544(n+1)+1, A067544(n+1)]` -/
def P16574597786974655747.Spec : Prop :=
  ∀ n, (P16574597786974655747.a n : ℤ) = A067536 (n + 1)

theorem P16574597786974655747.correct : P16574597786974655747.Spec := by
  intro n
  simp only [A067536, Nat.add_sub_cancel]

end A067536

/-! ## A067536.P8982444989488134871

`∑[A158908(A055859(n+2))]`
-/

namespace A067536.P8982444989488134871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158908 (A055859 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067536.P8982444989488134871

namespace A067536

/-- `∑[A158908(A055859(n+2))]` -/
def P8982444989488134871.Spec : Prop :=
  ∀ n, P8982444989488134871.a n = A067536 (n + 1)

end A067536

/-!
# A067538: Number of partitions of n in which the number of parts divides n.

The programs for A067538, there is no canonical definition to state claims against.
-/

/-! ## A067538.P13203003952395786093

`∑{d}[n+1, A072233(A000217(n+1)+#)]`
-/

namespace A067538.P13203003952395786093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072233 (A000217 (n + 1) + (d : ℤ)).toNat

end

end A067538.P13203003952395786093

/-! ## A067538.P16813549924831908446

`Δ[A000070(n)]-A349156(n+1)`
-/

namespace A067538.P16813549924831908446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349156 (n + 1)

end

end A067538.P16813549924831908446

/-! ## A067538.P16646793432248062608

`record[A035363(n)]-A349156(n+1)`
-/

namespace A067538.P16646793432248062608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A349156 (n + 1)

end

end A067538.P16646793432248062608

/-! ## A067538.P5978709362168798803

`record[A035444(n)]-A349156(n+1)`
-/

namespace A067538.P5978709362168798803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A349156 (n + 1)

end

end A067538.P5978709362168798803

/-! ## A067538.P7456869135435619798

`record[A114099(n)]-A349156(n+1)`
-/

namespace A067538.P7456869135435619798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A349156 (n + 1)

end

end A067538.P7456869135435619798

/-!
# A067539: Number of partitions of n in which, if the number of parts is k, the product of the parts is the k-th power of some positive integer.

The programs for A067539, there is no canonical definition to state claims against.
-/

/-! ## A067539.P10367909538480521994

`A347643((n+2)*A029098(n)-1)`
-/

namespace A067539.P10367909538480521994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 ((n + 2 : ℤ) * A029098 n - 1).toNat

end

end A067539.P10367909538480521994

/-! ## A067539.P14425573292043601051

`A237271(A306483(n))+∑{e}[n+1, #]`
-/

namespace A067539.P14425573292043601051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A306483 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A067539.P14425573292043601051

/-!
# A067540: Number of partitions of n in which the sum of reciprocal of parts divides number of parts.

The programs for A067540, there is no canonical definition to state claims against.
-/

/-! ## A067540.P15498071462594966381

`A370813(A338876(n+4))+A351005(n+3)`
-/

namespace A067540.P15498071462594966381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370813 (A338876 (n + 4)).toNat + A351005 (n + 3)

end

end A067540.P15498071462594966381

/-! ## A067540.P8058401802604853528

`A000120(A000957(n))+((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%3`
-/

namespace A067540.P8058401802604853528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000957 n).toNat + Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) 3

end

end A067540.P8058401802604853528

/-! ## A067540.P8764653309040622678

`A143773(n+1)+A001221(A347830(n))`
-/

namespace A067540.P8764653309040622678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143773 (n + 1) + A001221 (A347830 n).toNat

end

end A067540.P8764653309040622678

/-! ## A067540.P14599062771020508231

`A325564(n+1)+A073484(A325578(n))`
-/

namespace A067540.P14599062771020508231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (n + 1) + A073484 (A325578 n).toNat

end

end A067540.P14599062771020508231

/-! ## A067540.P15266953821587557721

`A000120(A000957(n))+Δ[A100449(n)]%3`
-/

namespace A067540.P15266953821587557721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000957 n).toNat + Int.tmod (f1 (n + 1) - f1 n) 3

end

end A067540.P15266953821587557721

/-!
# A067541: a(n) = phi(n*(n+1)/2)/phi(n) where phi is the Euler totient function A000010(n).

The programs for A067541, the canonical program `A067541.P12016490775158230110` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067541 has offset 1).

The definition of A067541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067541.P12016490775158230110

`A000010((n+1)*(n+2)/2)/A000010(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067541

/-- `A000010((n+1)*(n+2)/2)/A000010(n+1)` -/
def P12016490775158230110.Spec : Prop :=
  ∀ n, P12016490775158230110.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P934572602238230955

`A000010(n+2)/and(2, n)!`
-/

namespace A067541.P934572602238230955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (Nat.factorial (Nat.land 2 n) : ℚ)

end

end A067541.P934572602238230955

namespace A067541

/-- `A000010(n+2)/and(2, n)!` -/
def P934572602238230955.Spec : Prop :=
  ∀ n, P934572602238230955.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P10505918356435368292

`A000010(n+2)/A130658(n)`
-/

namespace A067541.P10505918356435368292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (A130658 n : ℚ)

end

end A067541.P10505918356435368292

namespace A067541

/-- `A000010(n+2)/A130658(n)` -/
def P10505918356435368292.Spec : Prop :=
  ∀ n, P10505918356435368292.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P6205452118523622400

`A089929(n+2)/A177704(n)`
-/

namespace A067541.P6205452118523622400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089929 (n + 2) : ℚ) / (A177704 n : ℚ)

end

end A067541.P6205452118523622400

namespace A067541

/-- `A089929(n+2)/A177704(n)` -/
def P6205452118523622400.Spec : Prop :=
  ∀ n, P6205452118523622400.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P14716930405912269279

`A086700(n+1)/A000010(n+1)`
-/

namespace A067541.P14716930405912269279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086700 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A067541.P14716930405912269279

namespace A067541

/-- `A086700(n+1)/A000010(n+1)` -/
def P14716930405912269279.Spec : Prop :=
  ∀ n, P14716930405912269279.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P11480771639652938288

`A000010(n+2)/A000034(A004526(n))`
-/

namespace A067541.P11480771639652938288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (A000034 (A004526 n).toNat : ℚ)

end

end A067541.P11480771639652938288

namespace A067541

/-- `A000010(n+2)/A000034(A004526(n))` -/
def P11480771639652938288.Spec : Prop :=
  ∀ n, P11480771639652938288.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P8343526542110317771

`A000010(n+2)/A040001(∑[A040001(n+1)])`
-/

namespace A067541.P8343526542110317771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (A040001 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A067541.P8343526542110317771

namespace A067541

/-- `A000010(n+2)/A040001(∑[A040001(n+1)])` -/
def P8343526542110317771.Spec : Prop :=
  ∀ n, P8343526542110317771.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P13709545938166521256

`A086700(n+1)/(A002088(n+1)-A002088(n))`
-/

namespace A067541.P13709545938166521256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086700 (n + 1) : ℚ) / (A002088 (n + 1) - A002088 n : ℚ)

end

end A067541.P13709545938166521256

namespace A067541

/-- `A086700(n+1)/(A002088(n+1)-A002088(n))` -/
def P13709545938166521256.Spec : Prop :=
  ∀ n, P13709545938166521256.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P171971458030508369

`A000010(n+2)/A014695(n+3)`
-/

namespace A067541.P171971458030508369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (A014695 (n + 3) : ℚ)

end

end A067541.P171971458030508369

namespace A067541

/-- `A000010(n+2)/A014695(n+3)` -/
def P171971458030508369.Spec : Prop :=
  ∀ n, P171971458030508369.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P7874888578287992622

`A000010(n+2)/(A130198(2*n)+1)`
-/

namespace A067541.P7874888578287992622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (A130198 (2 * n) + 1 : ℚ)

end

end A067541.P7874888578287992622

namespace A067541

/-- `A000010(n+2)/(A130198(2*n)+1)` -/
def P7874888578287992622.Spec : Prop :=
  ∀ n, P7874888578287992622.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P16679452872770924436

`A000010(n+2)/(2-A125924(2*n+1))`
-/

namespace A067541.P16679452872770924436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (2 - A125924 (2 * n + 1) : ℚ)

end

end A067541.P16679452872770924436

namespace A067541

/-- `A000010(n+2)/(2-A125924(2*n+1))` -/
def P16679452872770924436.Spec : Prop :=
  ∀ n, P16679452872770924436.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P10520687718782961077

`1/A000010(n+1)*A000010(C(n+2, 2))`
-/

namespace A067541.P10520687718782961077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000010 (n + 1) : ℚ) * (A000010 (Nat.choose (n + 2) 2) : ℚ)

end

end A067541.P10520687718782961077

namespace A067541

/-- `1/A000010(n+1)*A000010(C(n+2, 2))` -/
def P10520687718782961077.Spec : Prop :=
  ∀ n, P10520687718782961077.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P5779772768955406776

`A000010((n+2)²)/A227380(n+2)`
-/

namespace A067541.P5779772768955406776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 2) ^ 2) : ℚ) / (A227380 (n + 2) : ℚ)

end

end A067541.P5779772768955406776

namespace A067541

/-- `A000010((n+2)²)/A227380(n+2)` -/
def P5779772768955406776.Spec : Prop :=
  ∀ n, P5779772768955406776.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P1548091649777000089

`A000010(n+2)/A000032(2*n+1)%3`
-/

namespace A067541.P1548091649777000089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (Int.tmod (A000032 (2 * n + 1)) 3 : ℚ)

end

end A067541.P1548091649777000089

namespace A067541

/-- `A000010(n+2)/A000032(2*n+1)%3` -/
def P1548091649777000089.Spec : Prop :=
  ∀ n, P1548091649777000089.a n = (A067541 (n + 1) : ℚ)

end A067541

/-! ## A067541.P13609790097686118086

`A002246(A000217(n+1))/A002246(n+1)`
-/

namespace A067541.P13609790097686118086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002246 (A000217 (n + 1)).toNat : ℚ) / (A002246 (n + 1) : ℚ)

end

end A067541.P13609790097686118086

namespace A067541

/-- `A002246(A000217(n+1))/A002246(n+1)` -/
def P13609790097686118086.Spec : Prop :=
  ∀ n, P13609790097686118086.a n = (A067541 (n + 1) : ℚ)

end A067541

/-!
# A067542: Primes p such that p+5==0 (mod phi(p+5)).

The programs for A067542, there is no canonical definition to state claims against.
-/

/-! ## A067542.P14410323102673865733

`p?[A069353(n+1)-4]`
-/

namespace A067542.P14410323102673865733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067542.P14410323102673865733

/-! ## A067542.P4637269434439684983

`p?[A190812(n+1)-4]`
-/

namespace A067542.P4637269434439684983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067542.P4637269434439684983

/-! ## A067542.P1443443641793479498

`p?[A003586(n+1)-5]`
-/

namespace A067542.P1443443641793479498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067542.P1443443641793479498

/-! ## A067542.P6576734280929574895

`p?[A007694(n+1)-5]`
-/

namespace A067542.P6576734280929574895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067542.P6576734280929574895

/-! ## A067542.P8089692391963804234

`p?[A055932(n+1)-5]`
-/

namespace A067542.P8089692391963804234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067542.P8089692391963804234

/-! ## A067542.P4541526544722496312

`p?[A145853(n+1)-5]`
-/

namespace A067542.P4541526544722496312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145853 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067542.P4541526544722496312

/-! ## A067542.P12247520100189814361

`p?[A258023(n+1)-5]`
-/

namespace A067542.P12247520100189814361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067542.P12247520100189814361

/-! ## A067542.P4810316564375549582

`p?[A333978(n+1)-5]`
-/

namespace A067542.P4810316564375549582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333978 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067542.P4810316564375549582

/-!
# A067543: Numbers k such that phi(k*(k+1)*(k+2)*(k+3)/4!)/phi(k*(k+1)*(k+2)/3!) is not an integer where phi(n) = A000010(n) is the Euler totient function.

The programs for A067543, there is no canonical definition to state claims against.
-/

/-! ## A067543.P12421435713748490386

`eq[or(7, A177356(n+1)), A177356(n+1)]`
-/

namespace A067543.P12421435713748490386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A177356 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067543.P12421435713748490386

/-!
# A067544: Numbers k such that phi(k*(k+1)*(k+2)/6)/phi(k*(k+1)/2) is not an integer where phi(k) = A000010(k) is the Euler totient function.

The programs for A067544, the canonical program `A067544.P2326297398031319186` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067544 has offset 1).

The definition of A067544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067544.P9555207680066873846

`lt[3*(A060839(n+2)+1), dr(n)]`
-/

namespace A067544.P9555207680066873846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A060839 (n + 2) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067544.P9555207680066873846

namespace A067544

/-- `lt[3*(A060839(n+2)+1), dr(n)]` -/
def P9555207680066873846.Spec : Prop :=
  ∀ n, (P9555207680066873846.a n : ℤ) = A067544 (n + 1)

end A067544

/-! ## A067544.P2326297398031319186

`lt[A033537(A248909(n+2)), A010888(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A067544

/-- `lt[A033537(A248909(n+2)), A010888(n)]` -/
def P2326297398031319186.Spec : Prop :=
  ∀ n, (P2326297398031319186.a n : ℤ) = A067544 (n + 1)

theorem P2326297398031319186.correct : P2326297398031319186.Spec := by
  intro n
  simp only [A067544, Nat.add_sub_cancel]

end A067544

/-!
# A067546: Determinant of an n X n matrix whose diagonal are the first n nonprime numbers and all other elements are 1's.

The programs for A067546, there is no canonical definition to state claims against.
-/

/-! ## A067546.P12206098582793836706

`∏[A060462(n+1)]`
-/

namespace A067546.P12206098582793836706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067546.P12206098582793836706

/-! ## A067546.P4638805622065003322

`∏[A065090(n+2)-1]`
-/

namespace A067546.P4638805622065003322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067546.P4638805622065003322

/-! ## A067546.P17590978352645520942

`∏[lt[0, A085341(n+1)]]`
-/

namespace A067546.P17590978352645520942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085341 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067546.P17590978352645520942

/-! ## A067546.P1642256696211513774

`∏[lt[1, A026100(n+1)]]`
-/

namespace A067546.P1642256696211513774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026100 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067546.P1642256696211513774

/-! ## A067546.P7190916559677987698

`∏[lt[1, A099906(n+1)]]`
-/

namespace A067546.P7190916559677987698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099906 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067546.P7190916559677987698

/-! ## A067546.P7766686331365035698

`a(n-1)*A072668(n)` with `a(0)=1`
-/

namespace A067546.P7766686331365035698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A072668 n

end

end A067546.P7766686331365035698

/-! ## A067546.P4845352623197391550

`∏[lt[atan(n), A001222(n+1)]]`
-/

namespace A067546.P4845352623197391550
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℝ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067546.P4845352623197391550

/-! ## A067546.P2399764028693810373

`∏[A018252(n+1)-ceil(tanh(n))]`
-/

namespace A067546.P2399764028693810373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - ⌈Real.tanh (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067546.P2399764028693810373

/-! ## A067546.P1300386272646889540

`∏[comp[A006530(2*n+1)-1]]`
-/

namespace A067546.P1300386272646889540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067546.P1300386272646889540

/-! ## A067546.P9828561968411806804

`∏[comp[A020639(2*n+1)-1]]`
-/

namespace A067546.P9828561968411806804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067546.P9828561968411806804

/-!
# A067547: Number of divisors of n equals the average of distinct prime factors of n.

The programs for A067547, there is no canonical definition to state claims against.
-/

/-! ## A067547.P161236241490254672

`A001414(A311703(n)+A016159(n))`
-/

namespace A067547.P161236241490254672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A311703 n + A016159 n).toNat

end

end A067547.P161236241490254672

/-!
# A067549: Determinant of n X n matrix whose diagonal are the first n primes and all other elements are 1's.

The programs for A067549, there is no canonical definition to state claims against.
-/

/-! ## A067549.P14294558300678019435

`A078456(n+1)+A005867(n+1)`
-/

namespace A067549.P14294558300678019435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078456 (n + 1) + A005867 (n + 1)

end

end A067549.P14294558300678019435

/-! ## A067549.P13514764128644187300

`A078456(n+1)+∏[A006093(n+1)]`
-/

namespace A067549.P13514764128644187300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078456 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067549.P13514764128644187300

/-! ## A067549.P8139731587244665817

`A002110(n+1)+A078456(n+1)-A053144(n+1)`
-/

namespace A067549.P8139731587244665817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) + (A078456 (n + 1) - A053144 (n + 1))

end

end A067549.P8139731587244665817

/-! ## A067549.P13835258050044327088

`A005867(n+1)+A120271(n+1)*A135212(n+1)`
-/

namespace A067549.P13835258050044327088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 (n + 1) + A120271 (n + 1) * A135212 (n + 1)

end

end A067549.P13835258050044327088

/-! ## A067549.P15734674799661750241

`A078456(n+1)+A128646(n+1)*A135212(n+1)`
-/

namespace A067549.P15734674799661750241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078456 (n + 1) + A128646 (n + 1) * A135212 (n + 1)

end

end A067549.P15734674799661750241

/-!
# A067550: a(n) = (n-1)!(n+2)!/(3*2^n).

The programs for A067550, the canonical program `A067550.P2915293281010861943` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067550 has offset 1).

The definition of A067550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067550.P2915293281010861943

`n!*(n+3)!/(3*2^(n+1))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067550

/-- `n!*(n+3)!/(3*2^(n+1))` -/
def P2915293281010861943.Spec : Prop :=
  ∀ n, P2915293281010861943.a n = (A067550 (n + 1) : ℚ)

end A067550

/-! ## A067550.P3127355414995206913

`∏[record[abs(∑[1-n])]]`
-/

namespace A067550.P3127355414995206913
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f3 j|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067550.P3127355414995206913

namespace A067550

/-- `∏[record[abs(∑[1-n])]]` -/
def P3127355414995206913.Spec : Prop :=
  ∀ n, P3127355414995206913.a n = A067550 (n + 1)

end A067550

/-! ## A067550.P8981681545139156329

`∏[∑[1-char[1]+n]]`
-/

namespace A067550.P8981681545139156329
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067550.P8981681545139156329

namespace A067550

/-- `∏[∑[1-char[1]+n]]` -/
def P8981681545139156329.Spec : Prop :=
  ∀ n, P8981681545139156329.a n = A067550 (n + 1)

end A067550

/-! ## A067550.P9287116980009766938

`(∑[n]+n)*a(n-1)` with `a(0)=1`
-/

namespace A067550.P9287116980009766938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) * a (n - 1)

end

end A067550.P9287116980009766938

namespace A067550

/-- `(∑[n]+n)*a(n-1)` -/
def P9287116980009766938.Spec : Prop :=
  ∀ n, (P9287116980009766938.a n : ℤ) = A067550 (n + 1)

end A067550

/-! ## A067550.P13430298823070128342

`ceil(∏[a(n-1)+n+1])` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A067550.P13430298823070128342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067550.P13430298823070128342

namespace A067550

/-- `ceil(∏[a(n-1)+n+1])` -/
def P13430298823070128342.Spec : Prop :=
  ∀ n, (P13430298823070128342.a n : ℤ) = A067550 (n + 1)

end A067550

/-!
# A067552: a(n) = SumOfDigits(n)^2 - SumOfDigits(n^2), where SumOfDigits = A007953.

The programs for A067552, the canonical program `A067552.P17186920303504174424` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067552 has offset 0).

The definition of A067552 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067552.P17186920303504174424

`A007953(n)²-A004159(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067552

/-- `A007953(n)²-A004159(n)` -/
def P17186920303504174424.Spec : Prop :=
  ∀ n, P17186920303504174424.a n = A067552 n

theorem P17186920303504174424.correct : P17186920303504174424.Spec := by
  intro n
  simp only [A067552]

end A067552

/-! ## A067552.P926463088252482280

`A007953(n)²-A007953(n²)`
-/

namespace A067552.P926463088252482280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2 - A007953 (n ^ 2)

end

end A067552.P926463088252482280

namespace A067552

/-- `A007953(n)²-A007953(n²)` -/
def P926463088252482280.Spec : Prop :=
  ∀ n, P926463088252482280.a n = A067552 n

end A067552

/-! ## A067552.P13248916936369626437

`∑{digits}[n, #]²-∑{digits}[n², #]`
-/

namespace A067552.P13248916936369626437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A067552.P13248916936369626437

namespace A067552

/-- `∑{digits}[n, #]²-∑{digits}[n², #]` -/
def P13248916936369626437.Spec : Prop :=
  ∀ n, P13248916936369626437.a n = A067552 n

end A067552

/-! ## A067552.P8366488489511985347

`9*A069912(n)`
-/

namespace A067552.P8366488489511985347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A069912 n

end

end A067552.P8366488489511985347

namespace A067552

/-- `9*A069912(n)` -/
def P8366488489511985347.Spec : Prop :=
  ∀ n, P8366488489511985347.a n = A067552 n

end A067552

/-! ## A067552.P17332626351679169214

`∑{digits}[n, #]²-A004159(n)`
-/

namespace A067552.P17332626351679169214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - A004159 n

end

end A067552.P17332626351679169214

namespace A067552

/-- `∑{digits}[n, #]²-A004159(n)` -/
def P17332626351679169214.Spec : Prop :=
  ∀ n, P17332626351679169214.a n = A067552 n

end A067552

/-! ## A067552.P15591395100053924021

`A118881(n)-∑{digits}[n², #]`
-/

namespace A067552.P15591395100053924021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A067552.P15591395100053924021

namespace A067552

/-- `A118881(n)-∑{digits}[n², #]` -/
def P15591395100053924021.Spec : Prop :=
  ∀ n, P15591395100053924021.a n = A067552 n

end A067552

/-! ## A067552.P11872925399345380853

`A008591(A069912(n))`
-/

namespace A067552.P11872925399345380853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A069912 n).toNat

end

end A067552.P11872925399345380853

namespace A067552

/-- `A008591(A069912(n))` -/
def P11872925399345380853.Spec : Prop :=
  ∀ n, P11872925399345380853.a n = A067552 n

end A067552

/-! ## A067552.P4670332024328343830

`A118881(n)-A004159(n)`
-/

namespace A067552.P4670332024328343830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n - A004159 n

end

end A067552.P4670332024328343830

namespace A067552

/-- `A118881(n)-A004159(n)` -/
def P4670332024328343830.Spec : Prop :=
  ∀ n, P4670332024328343830.a n = A067552 n

end A067552

/-! ## A067552.P7318012206737927791

`A000290(∑{digits}[n, #])-A004159(n)`
-/

namespace A067552.P7318012206737927791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum - A004159 n

end

end A067552.P7318012206737927791

namespace A067552

/-- `A000290(∑{digits}[n, #])-A004159(n)` -/
def P7318012206737927791.Spec : Prop :=
  ∀ n, P7318012206737927791.a n = A067552 n

end A067552

/-! ## A067552.P10373111419103906774

`(A169805(n)/2)²-A004159(n)`
-/

namespace A067552.P10373111419103906774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A169805 n : ℚ) / 2) ^ 2 - (A004159 n : ℚ)

end

end A067552.P10373111419103906774

namespace A067552

/-- `(A169805(n)/2)²-A004159(n)` -/
def P10373111419103906774.Spec : Prop :=
  ∀ n, P10373111419103906774.a n = (A067552 n : ℚ)

theorem P10373111419103906774.correct : P10373111419103906774.Spec := by
  intro n
  simp only [A067552, Nat.add_sub_cancel, A067552.P10373111419103906774.a, A067552.P17186920303504174424.a, A004159, A004159.P12894520007403696170.a, A007953, A007953.P3472751987379697826.a, A169805, A169805.P17977796700678006772.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067552

/-! ## A067552.P8760314878296099513

`A118881(n)+A224977(n)-n²`
-/

namespace A067552.P8760314878296099513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n + (A224977 n - (n ^ 2 : ℤ))

end

end A067552.P8760314878296099513

namespace A067552

/-- `A118881(n)+A224977(n)-n²` -/
def P8760314878296099513.Spec : Prop :=
  ∀ n, P8760314878296099513.a n = A067552 n

theorem P8760314878296099513.correct : P8760314878296099513.Spec := by
  intro n
  simp only [A067552, Nat.add_sub_cancel, A067552.P8760314878296099513.a, A067552.P17186920303504174424.a, A004159, A004159.P12894520007403696170.a, A007953, A007953.P3472751987379697826.a, A118881, A118881.P8524186405013838056.a, A224977, A224977.P2433633673610591437.a, A000290, A000290.P12206242496348924484.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067552

/-! ## A067552.P6591861411353815987

`(n-A062028(n))²-A004159(n)`
-/

namespace A067552.P6591861411353815987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A062028 n) ^ 2 - A004159 n

end

end A067552.P6591861411353815987

namespace A067552

/-- `(n-A062028(n))²-A004159(n)` -/
def P6591861411353815987.Spec : Prop :=
  ∀ n, P6591861411353815987.a n = A067552 n

theorem P6591861411353815987.correct : P6591861411353815987.Spec := by
  intro n
  simp only [A067552, Nat.add_sub_cancel, A067552.P6591861411353815987.a, A067552.P17186920303504174424.a, A004159, A004159.P12894520007403696170.a, A007953, A007953.P3472751987379697826.a, A062028, A062028.P8420805724104474199.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067552

/-! ## A067552.P4774741609926495097

`(n-A066568(n))²-A004159(n)`
-/

namespace A067552.P4774741609926495097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A066568 n) ^ 2 - A004159 n

end

end A067552.P4774741609926495097

namespace A067552

/-- `(n-A066568(n))²-A004159(n)` -/
def P4774741609926495097.Spec : Prop :=
  ∀ n, P4774741609926495097.a n = A067552 n

theorem P4774741609926495097.correct : P4774741609926495097.Spec := by
  intro n
  simp only [A067552, Nat.add_sub_cancel, A067552.P4774741609926495097.a, A067552.P17186920303504174424.a, A004159, A004159.P12894520007403696170.a, A007953, A007953.P3472751987379697826.a, A066568, A066568.P9469533663660008085.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067552

/-! ## A067552.P14343510215084639402

`(A007954(n)-A061762(n))²-A004159(n)`
-/

namespace A067552.P14343510215084639402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007954 n - A061762 n) ^ 2 - A004159 n

end

end A067552.P14343510215084639402

namespace A067552

/-- `(A007954(n)-A061762(n))²-A004159(n)` -/
def P14343510215084639402.Spec : Prop :=
  ∀ n, P14343510215084639402.a n = A067552 n

theorem P14343510215084639402.correct : P14343510215084639402.Spec := by
  intro n
  simp only [A067552, Nat.add_sub_cancel, A067552.P14343510215084639402.a, A067552.P17186920303504174424.a, A004159, A004159.P12894520007403696170.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A061762, A061762.P2226516995009236848.a, A054899, A054899.P10770181254942084517.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067552

/-! ## A067552.P13750074989291735127

`A000290(A007953(n)%(n+1))-A004159(n)`
-/

namespace A067552.P13750074989291735127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A007953 n) (n + 1 : ℤ)).toNat - A004159 n

end

end A067552.P13750074989291735127

namespace A067552

/-- `A000290(A007953(n)%(n+1))-A004159(n)` -/
def P13750074989291735127.Spec : Prop :=
  ∀ n, P13750074989291735127.a n = A067552 n

end A067552

/-! ## A067552.P13528296187005820271

`A061762(10*n)²-A004159(n)`
-/

namespace A067552.P13528296187005820271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (10 * n) ^ 2 - A004159 n

end

end A067552.P13528296187005820271

namespace A067552

/-- `A061762(10*n)²-A004159(n)` -/
def P13528296187005820271.Spec : Prop :=
  ∀ n, P13528296187005820271.a n = A067552 n

end A067552

/-! ## A067552.P1544585911608573629

`A229758(A179865(n+1))`
-/

namespace A067552.P1544585911608573629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229758 (A179865 (n + 1)).toNat

end

end A067552.P1544585911608573629

namespace A067552

/-- `A229758(A179865(n+1))` -/
def P1544585911608573629.Spec : Prop :=
  ∀ n, P1544585911608573629.a n = A067552 n

end A067552

/-! ## A067552.P3638839032290427200

`A118881(n)-A007953(n²)`
-/

namespace A067552.P3638839032290427200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n - A007953 (n ^ 2)

end

end A067552.P3638839032290427200

namespace A067552

/-- `A118881(n)-A007953(n²)` -/
def P3638839032290427200.Spec : Prop :=
  ∀ n, P3638839032290427200.a n = A067552 n

end A067552

/-! ## A067552.P2713959095846355984

`A118881(n)-sqrt(A118881(n²))`
-/

namespace A067552.P2713959095846355984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A118881 n : ℝ) - Real.sqrt (A118881 (n ^ 2) : ℝ)

end

end A067552.P2713959095846355984

namespace A067552

/-- `A118881(n)-sqrt(A118881(n²))` -/
def P2713959095846355984.Spec : Prop :=
  ∀ n, P2713959095846355984.a n = (A067552 n : ℝ)

end A067552

/-!
# A067553: Sum of products of terms in all partitions of n into odd parts.

The programs for A067553, there is no canonical definition to state claims against.
-/

/-! ## A067553.P4712270645850716770

`A012265((2*n+1)*A032058(n))`
-/

namespace A067553.P4712270645850716770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 ((2 * n + 1 : ℤ) * A032058 n).toNat

end

end A067553.P4712270645850716770

/-! ## A067553.P667568129404829016

`lt[A080791(n), A347656(n)%3]-n+1`
-/

namespace A067553.P667568129404829016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347656 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ) + 1

end

end A067553.P667568129404829016

/-!
# A067554: Number of partitions of n in which the product of parts is a power of n.

The programs for A067554, there is no canonical definition to state claims against.
-/

/-! ## A067554.P15344550999518639507

`A076984(∏{e}[n^5, #])`
-/

namespace A067554.P15344550999518639507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A067554.P15344550999518639507

/-! ## A067554.P10580702226469830073

`A137921(∏{e}[n^5, #])`
-/

namespace A067554.P10580702226469830073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A067554.P10580702226469830073

/-! ## A067554.P9619955898045601026

`A329362(∏{e}[n^5, #])`
-/

namespace A067554.P9619955898045601026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A067554.P9619955898045601026

/-! ## A067554.P13627833873315852662

`A065033(∑{e}[(n^3-(n+1))*n², #])`
-/

namespace A067554.P13627833873315852662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 3 : ℤ) - (n + 1 : ℤ)) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A067554.P13627833873315852662

/-! ## A067554.P6019419715670847936

`A262611(A037234(n)+9)`
-/

namespace A067554.P6019419715670847936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262611 (A037234 n + 9).toNat

end

end A067554.P6019419715670847936

/-!
# A067556: Terms in the decimal expansion of 1/(7*2^n) before the block of decimals 142857 (the period of 1/7) appears.

The programs for A067556, the canonical program `A067556.P2130873490670003943` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067556 has offset 1).

The definition of A067556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067556.P2130873490670003943

`1/7*(5^(n+1)*10^((n+1)%6)-1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067556

/-- `1/7*(5^(n+1)*10^((n+1)%6)-1)` -/
def P2130873490670003943.Spec : Prop :=
  ∀ n, P2130873490670003943.a n = (A067556 (n + 1) : ℚ)

end A067556

/-!
# A067557: Primes p such that p-5 == 0 (mod phi(p-5)).

The programs for A067557, there is no canonical definition to state claims against.
-/

/-! ## A067557.P10815755499265627872

`p?[A003586(n+1)+5]`
-/

namespace A067557.P10815755499265627872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067557.P10815755499265627872

/-! ## A067557.P13242686204293361753

`p?[A007694(n+1)+5]`
-/

namespace A067557.P13242686204293361753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067557.P13242686204293361753

/-! ## A067557.P17209751348710867733

`p?[A051037(n+1)+5]`
-/

namespace A067557.P17209751348710867733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067557.P17209751348710867733

/-! ## A067557.P1542603802847919554

`p?[A055932(n+1)+5]`
-/

namespace A067557.P1542603802847919554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067557.P1542603802847919554

/-! ## A067557.P6352811645954672333

`p?[A145853(n+1)+5]`
-/

namespace A067557.P6352811645954672333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145853 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067557.P6352811645954672333

/-! ## A067557.P10295174511955009486

`p?[A257997(n+1)+5]`
-/

namespace A067557.P10295174511955009486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067557.P10295174511955009486

/-! ## A067557.P3067172659812713729

`p?[A258023(n+1)+5]`
-/

namespace A067557.P3067172659812713729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067557.P3067172659812713729

/-! ## A067557.P4461762810389366022

`p?[A333978(n+1)+5]`
-/

namespace A067557.P4461762810389366022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333978 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067557.P4461762810389366022

/-! ## A067557.P15917965017163608011

`p?[A337800(n+1)+5]`
-/

namespace A067557.P15917965017163608011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067557.P15917965017163608011

/-!
# A067558: Sum of squares of proper divisors of n.

The programs for A067558, the canonical program `A067558.P16712056113848255202` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067558 has offset 1).

The definition of A067558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067558.P16712056113848255202

`A001157(n+1)-(n+1)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067558

/-- `A001157(n+1)-(n+1)²` -/
def P16712056113848255202.Spec : Prop :=
  ∀ n, P16712056113848255202.a n = A067558 (n + 1)

theorem P16712056113848255202.correct : P16712056113848255202.Spec := by
  intro n
  simp only [A067558, Nat.add_sub_cancel]

end A067558

/-! ## A067558.P2095878931568094429

`∑{d}[n+1, (#%(n+1))²]`
-/

namespace A067558.P2095878931568094429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % (n + 1)) ^ 2

end

end A067558.P2095878931568094429

namespace A067558

/-- `∑{d}[n+1, (#%(n+1))²]` -/
def P2095878931568094429.Spec : Prop :=
  ∀ n, (P2095878931568094429.a n : ℤ) = A067558 (n + 1)

end A067558

/-! ## A067558.P16829771514401560739

`∑{d}[n+1, #²]-(n+1)²`
-/

namespace A067558.P16829771514401560739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A067558.P16829771514401560739

namespace A067558

/-- `∑{d}[n+1, #²]-(n+1)²` -/
def P16829771514401560739.Spec : Prop :=
  ∀ n, P16829771514401560739.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P17260190887694947926

`∑{d}[n+1, A064279(#)]`
-/

namespace A067558.P17260190887694947926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064279 d

end

end A067558.P17260190887694947926

namespace A067558

/-- `∑{d}[n+1, A064279(#)]` -/
def P17260190887694947926.Spec : Prop :=
  ∀ n, P17260190887694947926.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P16873188860961755905

`∑[n²]-A276984(n+1)`
-/

namespace A067558.P16873188860961755905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A276984 (n + 1)

end

end A067558.P16873188860961755905

namespace A067558

/-- `∑[n²]-A276984(n+1)` -/
def P16873188860961755905.Spec : Prop :=
  ∀ n, P16873188860961755905.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P14301074530529357643

`A291108(n+1)+A057427(n)`
-/

namespace A067558.P14301074530529357643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291108 (n + 1) + A057427 n

end

end A067558.P14301074530529357643

namespace A067558

/-- `A291108(n+1)+A057427(n)` -/
def P14301074530529357643.Spec : Prop :=
  ∀ n, P14301074530529357643.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P15045712490096771647

`A291108(n+1)-A057428(n)`
-/

namespace A067558.P15045712490096771647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291108 (n + 1) - A057428 n

end

end A067558.P15045712490096771647

namespace A067558

/-- `A291108(n+1)-A057428(n)` -/
def P15045712490096771647.Spec : Prop :=
  ∀ n, P15045712490096771647.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P14627386430373994938

`A072780(n+1)+A069249(n+1)`
-/

namespace A067558.P14627386430373994938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072780 (n + 1) + A069249 (n + 1)

end

end A067558.P14627386430373994938

namespace A067558

/-- `A072780(n+1)+A069249(n+1)` -/
def P14627386430373994938.Spec : Prop :=
  ∀ n, P14627386430373994938.a n = A067558 (n + 1)

theorem P14627386430373994938.correct : P14627386430373994938.Spec := by
  intro n
  simp only [A067558, Nat.add_sub_cancel, A067558.P14627386430373994938.a, A067558.P16712056113848255202.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A069249, A069249.P7873536691773802356.a, A072780, A072780.P8498790961619866691.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067558

/-! ## A067558.P14562962931857389510

`A086666(n+1)-A235799(n+1)`
-/

namespace A067558.P14562962931857389510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086666 (n + 1) - A235799 (n + 1)

end

end A067558.P14562962931857389510

namespace A067558

/-- `A086666(n+1)-A235799(n+1)` -/
def P14562962931857389510.Spec : Prop :=
  ∀ n, P14562962931857389510.a n = A067558 (n + 1)

theorem P14562962931857389510.correct : P14562962931857389510.Spec := by
  intro n
  simp only [A067558, Nat.add_sub_cancel, A067558.P14562962931857389510.a, A067558.P16712056113848255202.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A086666, A086666.P3609160851876626108.a, A235799, A235799.P7816509240272329688.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067558

/-! ## A067558.P5288652562291420940

`A001157(n+1)%A140651(n+1)`
-/

namespace A067558.P5288652562291420940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001157 (n + 1)) (A140651 (n + 1))

end

end A067558.P5288652562291420940

namespace A067558

/-- `A001157(n+1)%A140651(n+1)` -/
def P5288652562291420940.Spec : Prop :=
  ∀ n, P5288652562291420940.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P18227930864401291904

`∑{d}[n+1, A001065(#)*A002618((n+1)/#)]`
-/

namespace A067558.P18227930864401291904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067558.P18227930864401291904

namespace A067558

/-- `∑{d}[n+1, A001065(#)*A002618((n+1)/#)]` -/
def P18227930864401291904.Spec : Prop :=
  ∀ n, P18227930864401291904.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P7972840490587831226

`∑{d}[n+1, A007434(#)*A032741((n+1)/#)]`
-/

namespace A067558.P7972840490587831226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067558.P7972840490587831226

namespace A067558

/-- `∑{d}[n+1, A007434(#)*A032741((n+1)/#)]` -/
def P7972840490587831226.Spec : Prop :=
  ∀ n, P7972840490587831226.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P18252545693119418084

`∑{d}[n+1, A051953(#)*A057660((n+1)/#)]`
-/

namespace A067558.P18252545693119418084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067558.P18252545693119418084

namespace A067558

/-- `∑{d}[n+1, A051953(#)*A057660((n+1)/#)]` -/
def P18252545693119418084.Spec : Prop :=
  ∀ n, P18252545693119418084.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P6925842008330562051

`∑{d}[n+1, A001157(#)*A157658((n+1)/#)]`
-/

namespace A067558.P6925842008330562051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067558.P6925842008330562051

namespace A067558

/-- `∑{d}[n+1, A001157(#)*A157658((n+1)/#)]` -/
def P6925842008330562051.Spec : Prop :=
  ∀ n, P6925842008330562051.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P11294278518226207223

`∑{d}[n+1, A063445(#)*A211779((n+1)/#)]`
-/

namespace A067558.P11294278518226207223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A211779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067558.P11294278518226207223

namespace A067558

/-- `∑{d}[n+1, A063445(#)*A211779((n+1)/#)]` -/
def P11294278518226207223.Spec : Prop :=
  ∀ n, P11294278518226207223.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P1164694998659219134

`∑{d}[n+1, A055615(#)*A245484((n+1)/#)]`
-/

namespace A067558.P1164694998659219134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A245484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067558.P1164694998659219134

namespace A067558

/-- `∑{d}[n+1, A055615(#)*A245484((n+1)/#)]` -/
def P1164694998659219134.Spec : Prop :=
  ∀ n, P1164694998659219134.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P3263447825648949879

`∑{d}[n+1, A065958(#)*A344617((n+1)/#)]`
-/

namespace A067558.P3263447825648949879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d * A344617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067558.P3263447825648949879

namespace A067558

/-- `∑{d}[n+1, A065958(#)*A344617((n+1)/#)]` -/
def P3263447825648949879.Spec : Prop :=
  ∀ n, P3263447825648949879.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P192855945657125547

`∑{d}[n+1, A254520(#)*A293235((n+1)/#)]`
-/

namespace A067558.P192855945657125547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254520 d * A293235 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067558.P192855945657125547

namespace A067558

/-- `∑{d}[n+1, A254520(#)*A293235((n+1)/#)]` -/
def P192855945657125547.Spec : Prop :=
  ∀ n, P192855945657125547.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P268990982556252511

`∑{d}[n+1, A238952(#)*A321322((n+1)/#)]`
-/

namespace A067558.P268990982556252511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238952 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067558.P268990982556252511

namespace A067558

/-- `∑{d}[n+1, A238952(#)*A321322((n+1)/#)]` -/
def P268990982556252511.Spec : Prop :=
  ∀ n, P268990982556252511.a n = A067558 (n + 1)

end A067558

/-! ## A067558.P12004114116259948675

`∑{d}[n+1, A296066(#)*A328407((n+1)/#)]`
-/

namespace A067558.P12004114116259948675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296066 d * A328407 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067558.P12004114116259948675

namespace A067558

/-- `∑{d}[n+1, A296066(#)*A328407((n+1)/#)]` -/
def P12004114116259948675.Spec : Prop :=
  ∀ n, P12004114116259948675.a n = A067558 (n + 1)

end A067558

/-!
# A067559: Numbers n such that floor(Pi*n^2) is prime.

The programs for A067559, there is no canonical definition to state claims against.
-/

/-! ## A067559.P12616407169706626938

`eq[2, A077462(A066643(n))]`
-/

namespace A067559.P12616407169706626938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A066643 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067559.P12616407169706626938

/-! ## A067559.P7619990250969543612

`eq[2, A000005(A066643(n+1))]+1`
-/

namespace A067559.P7619990250969543612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A066643 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067559.P7619990250969543612

/-! ## A067559.P3213850491576113002

`eq[2, A256750(floor(π*n²))]`
-/

namespace A067559.P3213850491576113002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 ⌊Real.pi * (n ^ 2 : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067559.P3213850491576113002

/-! ## A067559.P11917572642671252848

`eq[A000007(n), A072480(floor(π*n²))]`
-/

namespace A067559.P11917572642671252848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 ⌊Real.pi * (n ^ 2 : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067559.P11917572642671252848

/-! ## A067559.P1887219517678232150

`eq[A000038(n), A072480(A066643(n))]`
-/

namespace A067559.P1887219517678232150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A066643 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067559.P1887219517678232150

/-!
# A067562: Odd values of k such that phi(k)! divides phi(k!) where phi(k) = A000010(k).

The programs for A067562, there is no canonical definition to state claims against.
-/

/-! ## A067562.P13823807500398828415

`A020639(A001147(n))*A065926(n+1)`
-/

namespace A067562.P13823807500398828415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001147 n).toNat * A065926 (n + 1)

end

end A067562.P13823807500398828415

/-! ## A067562.P11848161314981972858

`A020639(A254789(n))*A065926(n+1)`
-/

namespace A067562.P11848161314981972858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A254789 n).toNat * A065926 (n + 1)

end

end A067562.P11848161314981972858

/-!
# A067563: Product of n-th prime number and n-th composite number.

The programs for A067563, the canonical program `A067563.P8241945958915333115` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067563 has offset 1).

The definition of A067563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067563.P8241945958915333115

`A000040(n+1)*A002808(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067563

/-- `A000040(n+1)*A002808(n+1)` -/
def P8241945958915333115.Spec : Prop :=
  ∀ n, P8241945958915333115.a n = A067563 (n + 1)

theorem P8241945958915333115.correct : P8241945958915333115.Spec := by
  intro n
  simp only [A067563, Nat.add_sub_cancel]

end A067563

/-! ## A067563.P13622414714910854150

`A331999(n+1)/(n+1)`
-/

namespace A067563.P13622414714910854150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331999 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A067563.P13622414714910854150

namespace A067563

/-- `A331999(n+1)/(n+1)` -/
def P13622414714910854150.Spec : Prop :=
  ∀ n, P13622414714910854150.a n = (A067563 (n + 1) : ℚ)

end A067563

/-! ## A067563.P661123202325879414

`Δ[A007504(n)]*Δ[A053767(n)]`
-/

namespace A067563.P661123202325879414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A067563.P661123202325879414

namespace A067563

/-- `Δ[A007504(n)]*Δ[A053767(n)]` -/
def P661123202325879414.Spec : Prop :=
  ∀ n, P661123202325879414.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P8465596322702902466

`Δ[A007504(n)]*comp[A351078(n)]`
-/

namespace A067563.P8465596322702902466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A067563.P8465596322702902466

namespace A067563

/-- `Δ[A007504(n)]*comp[A351078(n)]` -/
def P8465596322702902466.Spec : Prop :=
  ∀ n, P8465596322702902466.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P3412743919403149987

`Δ[A007504(n)]*A002808(n+1)`
-/

namespace A067563.P3412743919403149987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002808 (n + 1)

end

end A067563.P3412743919403149987

namespace A067563

/-- `Δ[A007504(n)]*A002808(n+1)` -/
def P3412743919403149987.Spec : Prop :=
  ∀ n, P3412743919403149987.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P4990070163320031955

`A000040(n+1)*Δ[A053767(n)]`
-/

namespace A067563.P4990070163320031955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A067563.P4990070163320031955

namespace A067563

/-- `A000040(n+1)*Δ[A053767(n)]` -/
def P4990070163320031955.Spec : Prop :=
  ∀ n, P4990070163320031955.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P13971975855697047367

`A018252(n+2)*Δ[A007504(n)]`
-/

namespace A067563.P13971975855697047367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) * (f1 (n + 1) - f1 n)

end

end A067563.P13971975855697047367

namespace A067563

/-- `A018252(n+2)*Δ[A007504(n)]` -/
def P13971975855697047367.Spec : Prop :=
  ∀ n, P13971975855697047367.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P3197403872810728154

`A000040(n+1)*A018252(n+2)`
-/

namespace A067563.P3197403872810728154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A018252 (n + 2)

end

end A067563.P3197403872810728154

namespace A067563

/-- `A000040(n+1)*A018252(n+2)` -/
def P3197403872810728154.Spec : Prop :=
  ∀ n, P3197403872810728154.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P18088316688264822332

`A000040(n+1)*A141468(n+3)`
-/

namespace A067563.P18088316688264822332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A141468 (n + 3)

end

end A067563.P18088316688264822332

namespace A067563

/-- `A000040(n+1)*A141468(n+3)` -/
def P18088316688264822332.Spec : Prop :=
  ∀ n, P18088316688264822332.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P548358547568555601

`lt[1, A074206(n)]*A000040(n+1)`
-/

namespace A067563.P548358547568555601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) * A000040 (n + 1)

end

end A067563.P548358547568555601

namespace A067563

/-- `lt[1, A074206(n)]*A000040(n+1)` -/
def P548358547568555601.Spec : Prop :=
  ∀ n, P548358547568555601.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P13532031747923488387

`lt[1, A328847(n)]*A000040(n+1)`
-/

namespace A067563.P13532031747923488387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) * A000040 (n + 1)

end

end A067563.P13532031747923488387

namespace A067563

/-- `lt[1, A328847(n)]*A000040(n+1)` -/
def P13532031747923488387.Spec : Prop :=
  ∀ n, P13532031747923488387.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P10435508170782661872

`sqrt(A001248(n+1))*Δ[A053767(n)]`
-/

namespace A067563.P10435508170782661872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (f1 (n + 1) - f1 n : ℝ)

end

end A067563.P10435508170782661872

namespace A067563

/-- `sqrt(A001248(n+1))*Δ[A053767(n)]` -/
def P10435508170782661872.Spec : Prop :=
  ∀ n, P10435508170782661872.a n = (A067563 (n + 1) : ℝ)

end A067563

/-! ## A067563.P11520177967539776131

`A018252(n+2)*p?[A090252(n+1)]`
-/

namespace A067563.P11520177967539776131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067563.P11520177967539776131

namespace A067563

/-- `A018252(n+2)*p?[A090252(n+1)]` -/
def P11520177967539776131.Spec : Prop :=
  ∀ n, P11520177967539776131.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P11732214667177049672

`A000040(n+1)*comp[C(A006530(n+1), n)]`
-/

namespace A067563.P11732214667177049672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A067563.P11732214667177049672

namespace A067563

/-- `A000040(n+1)*comp[C(A006530(n+1), n)]` -/
def P11732214667177049672.Spec : Prop :=
  ∀ n, P11732214667177049672.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P1903277417834521381

`A000040(n+1)*comp[C(A020639(n+1), n)]`
-/

namespace A067563.P1903277417834521381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A067563.P1903277417834521381

namespace A067563

/-- `A000040(n+1)*comp[C(A020639(n+1), n)]` -/
def P1903277417834521381.Spec : Prop :=
  ∀ n, P1903277417834521381.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P16553262201628837336

`(A007504(n+1)-A007504(n))*A002808(n+1)`
-/

namespace A067563.P16553262201628837336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * A002808 (n + 1)

end

end A067563.P16553262201628837336

namespace A067563

/-- `(A007504(n+1)-A007504(n))*A002808(n+1)` -/
def P16553262201628837336.Spec : Prop :=
  ∀ n, P16553262201628837336.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P15057780449101459679

`(A163249(n+1)-A073425(n))*A002808(n+1)`
-/

namespace A067563.P15057780449101459679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163249 (n + 1) - A073425 n) * A002808 (n + 1)

end

end A067563.P15057780449101459679

namespace A067563

/-- `(A163249(n+1)-A073425(n))*A002808(n+1)` -/
def P15057780449101459679.Spec : Prop :=
  ∀ n, P15057780449101459679.a n = A067563 (n + 1)

end A067563

/-! ## A067563.P13128854383511993915

`A002808(n+1)+A002808(n+1)*A006093(n+1)`
-/

namespace A067563.P13128854383511993915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A002808 (n + 1) * A006093 (n + 1)

end

end A067563.P13128854383511993915

namespace A067563

/-- `A002808(n+1)+A002808(n+1)*A006093(n+1)` -/
def P13128854383511993915.Spec : Prop :=
  ∀ n, P13128854383511993915.a n = A067563 (n + 1)

theorem P13128854383511993915.correct : P13128854383511993915.Spec := by
  intro n
  simp only [A067563, Nat.add_sub_cancel, A067563.P13128854383511993915.a, A067563.P8241945958915333115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A006093, A006093.P2906174024863549003.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067563

/-! ## A067563.P16523432593821177511

`(A038529(n+1)+A002808(n+1))*A002808(n+1)`
-/

namespace A067563.P16523432593821177511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038529 (n + 1) + A002808 (n + 1)) * A002808 (n + 1)

end

end A067563.P16523432593821177511

namespace A067563

/-- `(A038529(n+1)+A002808(n+1))*A002808(n+1)` -/
def P16523432593821177511.Spec : Prop :=
  ∀ n, P16523432593821177511.a n = A067563 (n + 1)

theorem P16523432593821177511.correct : P16523432593821177511.Spec := by
  intro n
  simp only [A067563, Nat.add_sub_cancel, A067563.P16523432593821177511.a, A067563.P8241945958915333115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A038529, A038529.P12826483427186246447.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067563

/-!
# A067564: Numbers n such that determinant[{{n, phi(n), sigma(n)}, {n+1, phi(n+1), sigma(n+1)}, {n+2, phi(n+2), sigma(n+2)}}] is a nonnegative cube.

The programs for A067564, there is no canonical definition to state claims against.
-/

/-! ## A067564.P11505737867698415506

`A293322(n)+A273943(A033815(n))`
-/

namespace A067564.P11505737867698415506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293322 n + A273943 (A033815 n).toNat

end

end A067564.P11505737867698415506

/-!
# A067565: Inverse of R. L. Graham's sequence (A006255), or zero if and only if n is a prime.

The programs for A067565, there is no canonical definition to state claims against.
-/

/-! ## A067565.P10530832505120327795

`A005171(n+1)*A297022(A022447(n+1))`
-/

namespace A067565.P10530832505120327795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A297022 (A022447 (n + 1)).toNat

end

end A067565.P10530832505120327795

/-! ## A067565.P12782667821518616226

`A005171(n+1)*A297022(A026233(n+1))`
-/

namespace A067565.P12782667821518616226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A297022 (A026233 (n + 1)).toNat

end

end A067565.P12782667821518616226

/-! ## A067565.P5288865613284216253

`A005171(n+1)*A297022(A062298(n+1))`
-/

namespace A067565.P5288865613284216253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A297022 (A062298 (n + 1)).toNat

end

end A067565.P5288865613284216253

/-! ## A067565.P2253021591788129856

`A005171(n+1)*A297022(A086936(n+1))`
-/

namespace A067565.P2253021591788129856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A297022 (A086936 (n + 1)).toNat

end

end A067565.P2253021591788129856

/-! ## A067565.P10996035142221055057

`A005171(n+1)*A297022(∑[A005171(n+1)])`
-/

namespace A067565.P10996035142221055057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A297022 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067565.P10996035142221055057

/-! ## A067565.P4229545532944819775

`C(A297022(A022447(n+1)), A049084(n+1)+1)`
-/

namespace A067565.P4229545532944819775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A297022 (A022447 (n + 1)).toNat).toNat (A049084 (n + 1) + 1).toNat

end

end A067565.P4229545532944819775

/-!
# A067567: Odd numbers with an odd number of partitions.

The programs for A067567, there is no canonical definition to state claims against.
-/

/-! ## A067567.P6750071134324423085

`∩[2*n+1, A052002(n+1)]`
-/

namespace A067567.P6750071134324423085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067567.P6750071134324423085

/-! ## A067567.P3201823778386685625

`∩[2*n+1, A194798(n+1)]`
-/

namespace A067567.P3201823778386685625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067567.P3201823778386685625

/-! ## A067567.P11888906239211044503

`∩[A052002(n+1), A060747(n)]`
-/

namespace A067567.P11888906239211044503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067567.P11888906239211044503

/-! ## A067567.P643914970953333013

`eq[1, and(1, A330373(n))]`
-/

namespace A067567.P643914970953333013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A330373 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067567.P643914970953333013

/-! ## A067567.P6820370241195318525

`eq[1, and(n, A040051(n))]`
-/

namespace A067567.P6820370241195318525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A040051 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067567.P6820370241195318525

/-! ## A067567.P6741762461583047979

`filter[2*n+1, A040051(#)]`
-/

namespace A067567.P6741762461583047979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A040051 (f1 j) = 1) n)

end

end A067567.P6741762461583047979

/-! ## A067567.P3674136197663789458

`filter[2*n+1, A069935(#)]`
-/

namespace A067567.P3674136197663789458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069935 (f1 j) = 1) n)

end

end A067567.P3674136197663789458

/-! ## A067567.P1017108878451834927

`lt[acot(n%2), A000700(n)%2]`
-/

namespace A067567.P1017108878451834927
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n % 2 : ℕ) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A067567.P1017108878451834927

/-! ## A067567.P2099850851028333238

`eq[A010123(n), A040051(n)]`
-/

namespace A067567.P2099850851028333238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067567.P2099850851028333238

/-! ## A067567.P10607637330827980055

`eq[A010127(n), A040051(n)]`
-/

namespace A067567.P10607637330827980055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067567.P10607637330827980055

/-! ## A067567.P15197271674452637754

`eq[A010131(n), A040051(n)]`
-/

namespace A067567.P15197271674452637754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067567.P15197271674452637754

/-! ## A067567.P9291509010228822346

`eq[A010132(n), A040051(n)]`
-/

namespace A067567.P9291509010228822346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067567.P9291509010228822346

/-! ## A067567.P11126993886517381973

`eq[A010137(n), A040051(n)]`
-/

namespace A067567.P11126993886517381973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067567.P11126993886517381973

/-! ## A067567.P4182516296788802616

`eq[A010146(n), A040051(n)]`
-/

namespace A067567.P4182516296788802616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067567.P4182516296788802616

/-! ## A067567.P4620431227008568455

`eq[A010156(n), A040051(n)]`
-/

namespace A067567.P4620431227008568455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067567.P4620431227008568455

/-! ## A067567.P11155802150402712180

`eq[A010157(n), A040051(n)]`
-/

namespace A067567.P11155802150402712180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067567.P11155802150402712180

/-! ## A067567.P5403426995008701423

`eq[A010166(n), A040051(n)]`
-/

namespace A067567.P5403426995008701423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067567.P5403426995008701423

/-! ## A067567.P15450333297360095836

`eq[A010167(n), A040051(n)]`
-/

namespace A067567.P15450333297360095836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010167 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067567.P15450333297360095836

/-!
# A067573: Numbers k > 1 such that sigma(phi(k))/sigma(k) > sigma(phi(j))/sigma(j) for all 1 < j < k.

The programs for A067573, there is no canonical definition to state claims against.
-/

/-! ## A067573.P6239551837190754113

`p?[gcd(A335116(n+1), A335125(3*n+2))]`
-/

namespace A067573.P6239551837190754113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A335116 (n + 1)) (A335125 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067573.P6239551837190754113

/-! ## A067573.P16226829266438412354

`A103199(A084193(∑[n]))`
-/

namespace A067573.P16226829266438412354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103199 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A067573.P16226829266438412354

/-! ## A067573.P295571594584794104

`A103199(A043317(n+1))`
-/

namespace A067573.P295571594584794104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103199 (A043317 (n + 1)).toNat

end

end A067573.P295571594584794104

/-! ## A067573.P15233376842698884189

`A103199(A044914(n+1))`
-/

namespace A067573.P15233376842698884189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103199 (A044914 (n + 1)).toNat

end

end A067573.P15233376842698884189

/-! ## A067573.P6778975288145461837

`A060653(A103199(n+1))`
-/

namespace A067573.P6778975288145461837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (A103199 (n + 1)).toNat

end

end A067573.P6778975288145461837

/-!
# A067574: Array T(i,j) read by ascending antidiagonals, where T(i,j) is the concatenation of i and j (1<=i, 1<=j).

The programs for A067574, the canonical program `A067574.P3266997638448240978` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067574 has offset 1).

The definition of A067574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067574.P3266997638448240978

`(row(n)-col(n)+1)*10^A055642(col(n)+1)+col(n)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067574

/-- `(row(n)-col(n)+1)*10^A055642(col(n)+1)+col(n)+1` -/
def P3266997638448240978.Spec : Prop :=
  ∀ n, P3266997638448240978.a n = (A067574 (n + 1) : ℚ)

end A067574

/-! ## A067574.P216688809515027750

`A066686(∑[char[∑[n]]]²-n)`
-/

namespace A067574.P216688809515027750
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066686 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A067574.P216688809515027750

namespace A067574

/-- `A066686(∑[char[∑[n]]]²-n)` -/
def P216688809515027750.Spec : Prop :=
  ∀ n, P216688809515027750.a n = A067574 (n + 1)

end A067574

/-! ## A067574.P1831537650847894144

`lcm((-1)^n, A066686(A038722(n+1)))`
-/

namespace A067574.P1831537650847894144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A066686 (A038722 (n + 1)).toNat)

end

end A067574.P1831537650847894144

namespace A067574

/-- `lcm((-1)^n, A066686(A038722(n+1)))` -/
def P1831537650847894144.Spec : Prop :=
  ∀ n, (P1831537650847894144.a n : ℤ) = A067574 (n + 1)

end A067574

/-! ## A067574.P15556463428644601921

`A066686(A038722(n+1))%A016961(n)`
-/

namespace A067574.P15556463428644601921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066686 (A038722 (n + 1)).toNat) (A016961 n)

end

end A067574.P15556463428644601921

namespace A067574

/-- `A066686(A038722(n+1))%A016961(n)` -/
def P15556463428644601921.Spec : Prop :=
  ∀ n, P15556463428644601921.a n = A067574 (n + 1)

end A067574

/-! ## A067574.P16575431425765474944

`or(A000038(n), A066686(A038722(n+1)))`
-/

namespace A067574.P16575431425765474944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A066686 (A038722 (n + 1)).toNat)

end

end A067574.P16575431425765474944

namespace A067574

/-- `or(A000038(n), A066686(A038722(n+1)))` -/
def P16575431425765474944.Spec : Prop :=
  ∀ n, P16575431425765474944.a n = A067574 (n + 1)

end A067574

/-! ## A067574.P12566093117766265878

`A066686(A038722(n+1))+A063524(2*n)`
-/

namespace A067574.P12566093117766265878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066686 (A038722 (n + 1)).toNat + A063524 (2 * n)

end

end A067574.P12566093117766265878

namespace A067574

/-- `A066686(A038722(n+1))+A063524(2*n)` -/
def P12566093117766265878.Spec : Prop :=
  ∀ n, P12566093117766265878.a n = A067574 (n + 1)

end A067574

/-! ## A067574.P2491958101794288608

`A121262(A000040(n+1))+A066686(A038722(n+1))`
-/

namespace A067574.P2491958101794288608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A000040 (n + 1)).toNat + A066686 (A038722 (n + 1)).toNat

end

end A067574.P2491958101794288608

namespace A067574

/-- `A121262(A000040(n+1))+A066686(A038722(n+1))` -/
def P2491958101794288608.Spec : Prop :=
  ∀ n, P2491958101794288608.a n = A067574 (n + 1)

end A067574

/-! ## A067574.P16421818250507059310

`A121262(A046386(n+1))+A066686(A038722(n+1))`
-/

namespace A067574.P16421818250507059310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A046386 (n + 1)).toNat + A066686 (A038722 (n + 1)).toNat

end

end A067574.P16421818250507059310

namespace A067574

/-- `A121262(A046386(n+1))+A066686(A038722(n+1))` -/
def P16421818250507059310.Spec : Prop :=
  ∀ n, P16421818250507059310.a n = A067574 (n + 1)

end A067574

/-! ## A067574.P8329139421018819172

`A121262(A141936(n+1))+A066686(A038722(n+1))`
-/

namespace A067574.P8329139421018819172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A141936 (n + 1)).toNat + A066686 (A038722 (n + 1)).toNat

end

end A067574.P8329139421018819172

namespace A067574

/-- `A121262(A141936(n+1))+A066686(A038722(n+1))` -/
def P8329139421018819172.Spec : Prop :=
  ∀ n, P8329139421018819172.a n = A067574 (n + 1)

end A067574

/-! ## A067574.P8236330574573078624

`A318926(A043569(n+1))`
-/

namespace A067574.P8236330574573078624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318926 (A043569 (n + 1)).toNat

end

end A067574.P8236330574573078624

namespace A067574

/-- `A318926(A043569(n+1))` -/
def P8236330574573078624.Spec : Prop :=
  ∀ n, P8236330574573078624.a n = A067574 (n + 1)

end A067574

/-!
# A067575: Numbers k that divide phi(k)*bigomega(k).

The programs for A067575, there is no canonical definition to state claims against.
-/

/-! ## A067575.P5684010883141238892

`A106617(16*A193022(n+1))`
-/

namespace A067575.P5684010883141238892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (16 * A193022 (n + 1)).toNat

end

end A067575.P5684010883141238892

/-! ## A067575.P1573110757220726062

`A193022(n+1)^exp(A015161(n))`
-/

namespace A067575.P1573110757220726062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A193022 (n + 1) : ℝ) ^ (Real.exp (A015161 n : ℝ))

end

end A067575.P1573110757220726062

/-! ## A067575.P11447554148924215805

`A193022(n+1)%A068234(n+1)`
-/

namespace A067575.P11447554148924215805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193022 (n + 1)) (A068234 (n + 1))

end

end A067575.P11447554148924215805

/-! ## A067575.P4462541504779876506

`A193022(A187829(n+1))`
-/

namespace A067575.P4462541504779876506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193022 (A187829 (n + 1)).toNat

end

end A067575.P4462541504779876506

/-! ## A067575.P3618453025159215846

`A193022(A077168(n))`
-/

namespace A067575.P3618453025159215846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193022 (A077168 n).toNat

end

end A067575.P3618453025159215846

/-!
# A067576: Array T(i,j) read by downward antidiagonals, where T(i,j) is the j-th term whose binary expansion has i 1's.

The programs for A067576, there is no canonical definition to state claims against.
-/

/-! ## A067576.P15169406867992316457

`A066884(A038722(n+1))`
-/

namespace A067576.P15169406867992316457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A038722 (n + 1)).toNat

end

end A067576.P15169406867992316457

/-! ## A067576.P10863774484389970057

`A066884(A061579(n)+1)`
-/

namespace A067576.P10863774484389970057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A061579 n + 1).toNat

end

end A067576.P10863774484389970057

/-! ## A067576.P8729321178718489102

`A066884(A093995(n+1)-n)`
-/

namespace A067576.P8729321178718489102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A067576.P8729321178718489102

/-! ## A067576.P8339491948369627956

`A066884(A002024(n+1)²-n)`
-/

namespace A067576.P8339491948369627956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A067576.P8339491948369627956

/-! ## A067576.P15518023361204361883

`A066884(A057944(n)+A004736(n+1))`
-/

namespace A067576.P15518023361204361883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A057944 n + A004736 (n + 1)).toNat

end

end A067576.P15518023361204361883

/-! ## A067576.P4439456511993638769

`A066884(A209268(A135764(n+1)))`
-/

namespace A067576.P4439456511993638769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A209268 (A135764 (n + 1)).toNat).toNat

end

end A067576.P4439456511993638769

/-! ## A067576.P16180835413363490661

`A066884(A249725(A054582(n)))`
-/

namespace A067576.P16180835413363490661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A249725 (A054582 n).toNat).toNat

end

end A067576.P16180835413363490661

/-! ## A067576.P6076719952079126363

`A066884(A356419(A066884(n+1)))`
-/

namespace A067576.P6076719952079126363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A356419 (A066884 (n + 1)).toNat).toNat

end

end A067576.P6076719952079126363

/-! ## A067576.P3518055538992630901

`A341910(A370698(n+1))`
-/

namespace A067576.P3518055538992630901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341910 (A370698 (n + 1)).toNat

end

end A067576.P3518055538992630901

/-! ## A067576.P6261536203273981319

`A263018(A066884(n+1))`
-/

namespace A067576.P6261536203273981319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263018 (A066884 (n + 1)).toNat

end

end A067576.P6261536203273981319

/-!
# A067577: a(n) = Product_{i=1..n} sigma(i) * Sum_{i=1..n} 1/sigma(i).

The programs for A067577, there is no canonical definition to state claims against.
-/

/-! ## A067577.P15676407291880765932

`A066780(n+1)/A212718(n+1)*A212717(n+1)`
-/

namespace A067577.P15676407291880765932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066780 (n + 1) : ℚ) / (A212718 (n + 1) : ℚ) * (A212717 (n + 1) : ℚ)

end

end A067577.P15676407291880765932

/-!
# A067578: a(n) = Product_{i=1..n} phi(i) * Sum_{i=1..n} 1/phi(i) where phi is the Euler totient function A000010(n).

The programs for A067578, there is no canonical definition to state claims against.
-/

/-! ## A067578.P13728079477607458727

`A001088(n)+a(n-1)*A000010(2*n-(n-1))` with `a(0)=1`
-/

namespace A067578.P13728079477607458727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001088 n + a (n - 1) * A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A067578.P13728079477607458727

/-! ## A067578.P3133610243108064409

`A379149(∑[n+1]+n)`
-/

namespace A067578.P3133610243108064409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379149 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A067578.P3133610243108064409

/-! ## A067578.P8618726512197702344

`A001088(n+1)*A028415(n+1)/A048049(n+1)`
-/

namespace A067578.P8618726512197702344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001088 (n + 1) * A028415 (n + 1) : ℚ) / (A048049 (n + 1) : ℚ)

end

end A067578.P8618726512197702344

/-!
# A067579: Conjectured values of a(n) defined by: a(n) = first prime appearing in the orbit n, f(n), f(f(n)),...., if it exists; = 0 otherwise, where f(n) = n + sigma(n).

The programs for A067579, there is no canonical definition to state claims against.
-/

/-! ## A067579.P8494233138802917078

`∏{p}[A000254(n)², #-1]+1`
-/

namespace A067579.P8494233138802917078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1) + 1

end

end A067579.P8494233138802917078

/-! ## A067579.P2534816921314131948

`∏{p}[A081048(n)², #-1]+1`
-/

namespace A067579.P2534816921314131948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1) + 1

end

end A067579.P2534816921314131948

/-!
# A067582: Nonprime values of n such that bigomega(n)^omega(n)=omega(n)^bigomega(n) where bigomega(n) is the number of prime factors of n (counted with multiplicity) and omega(n) the number of distinct prime factors of n.

The programs for A067582, there is no canonical definition to state claims against.
-/

/-! ## A067582.P5017198763234990200

`∪[A000469(n+1), A307682(n+1)]`
-/

namespace A067582.P5017198763234990200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067582.P5017198763234990200

/-! ## A067582.P11016861056461403427

`eq[1, A266528(A062368(n+1))]+1`
-/

namespace A067582.P11016861056461403427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 (A062368 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067582.P11016861056461403427

/-!
# A067583: Integers of the form phi(n^n)/phi(n)^n where phi is the Euler totient function A000010(n).

The programs for A067583, there is no canonical definition to state claims against.
-/

/-! ## A067583.P11395532311448860661

`A049237(n+1)^(A007694(n+1)-1)`
-/

namespace A067583.P11395532311448860661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049237 (n + 1) : ℚ) ^ (A007694 (n + 1) - 1 : ℤ)

end

end A067583.P11395532311448860661

/-! ## A067583.P11459639099635359822

`A049237(n+1)^A190812(A028310(n))`
-/

namespace A067583.P11459639099635359822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049237 (n + 1) : ℚ) ^ (A190812 (A028310 n).toNat : ℤ)

end

end A067583.P11459639099635359822

/-! ## A067583.P633775004987949617

`A049237(n+1)^A023443(A007694(n+1))`
-/

namespace A067583.P633775004987949617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049237 (n + 1) : ℚ) ^ (A023443 (A007694 (n + 1)).toNat : ℤ)

end

end A067583.P633775004987949617

/-! ## A067583.P5623093488487153808

`A049237(n+1)^A109606(A187778(n+1))`
-/

namespace A067583.P5623093488487153808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049237 (n + 1) : ℚ) ^ (A109606 (A187778 (n + 1)).toNat : ℤ)

end

end A067583.P5623093488487153808

/-! ## A067583.P5453705232922078792

`A001221(5*A181817(n+1))^A109606(A187778(n+1))`
-/

namespace A067583.P5453705232922078792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (5 * A181817 (n + 1)).toNat : ℚ) ^ (A109606 (A187778 (n + 1)).toNat : ℤ)

end

end A067583.P5453705232922078792

/-!
# A067585: Binary representation of a(n) is obtained thus: replace every digit in the binary representation of n with "1" if the sum of its neighbors is 1 and with "0" otherwise.

The programs for A067585, the canonical program `A067585.P1933781684501419981` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067585 has offset 0).

The definition of A067585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067585.P4445049886585512471

`xor((2*n)%(2^ceil(log2(n+1))), floor(n/2))`
-/

namespace A067585.P4445049886585512471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (2 * n : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))) ⌊(n : ℚ) / 2⌋

end

end A067585.P4445049886585512471

namespace A067585

/-- `xor((2*n)%(2^ceil(log2(n+1))), floor(n/2))` -/
def P4445049886585512471.Spec : Prop :=
  ∀ n, P4445049886585512471.a n = A067585 n

end A067585

/-! ## A067585.P1933781684501419981

`xor(2*(n-A053644(n)), floor(n/2))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067585

/-- `xor(2*(n-A053644(n)), floor(n/2))` -/
def P1933781684501419981.Spec : Prop :=
  ∀ n, P1933781684501419981.a n = A067585 n

theorem P1933781684501419981.correct : P1933781684501419981.Spec := by
  intro n
  simp only [A067585]

end A067585

/-! ## A067585.P14388619075310770679

`xor(and(2*n, A006257(n)), floor(n/2))`
-/

namespace A067585.P14388619075310770679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land (2 * n : ℤ) (A006257 n)) ⌊(n : ℚ) / 2⌋

end

end A067585.P14388619075310770679

namespace A067585

/-- `xor(and(2*n, A006257(n)), floor(n/2))` -/
def P14388619075310770679.Spec : Prop :=
  ∀ n, P14388619075310770679.a n = A067585 n

end A067585

/-! ## A067585.P10611334883268531338

`A003188(xor(n, 2*n))%(2^ceil(log2(n+1)))`
-/

namespace A067585.P10611334883268531338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (Nat.xor n (2 * n))) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

end

end A067585.P10611334883268531338

namespace A067585

/-- `A003188(xor(n, 2*n))%(2^ceil(log2(n+1)))` -/
def P10611334883268531338.Spec : Prop :=
  ∀ n, P10611334883268531338.a n = A067585 n

end A067585

/-! ## A067585.P2903013739421237359

`A396059(n)%A062383(n)`
-/

namespace A067585.P2903013739421237359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396059 n) (A062383 n)

end

end A067585.P2903013739421237359

namespace A067585

/-- `A396059(n)%A062383(n)` -/
def P2903013739421237359.Spec : Prop :=
  ∀ n, P2903013739421237359.a n = A067585 n

end A067585

/-! ## A067585.P2463031605095985632

`and(A003817(n), A396059(n))`
-/

namespace A067585.P2463031605095985632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A396059 n)

end

end A067585.P2463031605095985632

namespace A067585

/-- `and(A003817(n), A396059(n))` -/
def P2463031605095985632.Spec : Prop :=
  ∀ n, P2463031605095985632.a n = A067585 n

end A067585

/-! ## A067585.P12704771467497358273

`xor(1, xor(A006257(n), A123108(n)))`
-/

namespace A067585.P12704771467497358273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor (A006257 n) (A123108 n))

end

end A067585.P12704771467497358273

namespace A067585

/-- `xor(1, xor(A006257(n), A123108(n)))` -/
def P12704771467497358273.Spec : Prop :=
  ∀ n, P12704771467497358273.a n = A067585 n

end A067585

/-! ## A067585.P13377315631485290430

`A004526(xor(n, A006257(2*n)))`
-/

namespace A067585.P13377315631485290430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor (n : ℤ) (A006257 (2 * n))).toNat

end

end A067585.P13377315631485290430

namespace A067585

/-- `A004526(xor(n, A006257(2*n)))` -/
def P13377315631485290430.Spec : Prop :=
  ∀ n, P13377315631485290430.a n = A067585 n

end A067585

/-! ## A067585.P8399576989118259202

`A003188(A279645(2*n))`
-/

namespace A067585.P8399576989118259202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A279645 (2 * n)).toNat

end

end A067585.P8399576989118259202

namespace A067585

/-- `A003188(A279645(2*n))` -/
def P8399576989118259202.Spec : Prop :=
  ∀ n, P8399576989118259202.a n = A067585 n

end A067585

/-! ## A067585.P4271713085830987912

`xor(A279645(2*n), A279645(n))`
-/

namespace A067585.P4271713085830987912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A279645 (2 * n)) (A279645 n)

end

end A067585.P4271713085830987912

namespace A067585

/-- `xor(A279645(2*n), A279645(n))` -/
def P4271713085830987912.Spec : Prop :=
  ∀ n, P4271713085830987912.a n = A067585 n

end A067585

/-! ## A067585.P10844068046287266639

`A003188(A003817(2*n)-A003188(2*n))`
-/

namespace A067585.P10844068046287266639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003817 (2 * n) - A003188 (2 * n)).toNat

end

end A067585.P10844068046287266639

namespace A067585

/-- `A003188(A003817(2*n)-A003188(2*n))` -/
def P10844068046287266639.Spec : Prop :=
  ∀ n, P10844068046287266639.a n = A067585 n

end A067585

/-! ## A067585.P16572082232223508233

`A003188(A003188(2*n))-A053644(2*n)`
-/

namespace A067585.P16572082232223508233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (2 * n)).toNat - A053644 (2 * n)

end

end A067585.P16572082232223508233

namespace A067585

/-- `A003188(A003188(2*n))-A053644(2*n)` -/
def P16572082232223508233.Spec : Prop :=
  ∀ n, P16572082232223508233.a n = A067585 n

end A067585

/-! ## A067585.P17656391149584855810

`A003188(xor(A003188(2*n), A003817(2*n)))`
-/

namespace A067585.P17656391149584855810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Int.xor (A003188 (2 * n)) (A003817 (2 * n))).toNat

end

end A067585.P17656391149584855810

namespace A067585

/-- `A003188(xor(A003188(2*n), A003817(2*n)))` -/
def P17656391149584855810.Spec : Prop :=
  ∀ n, P17656391149584855810.a n = A067585 n

end A067585

/-! ## A067585.P15570148741082532141

`A003188(A003188(2*n)-A038556(2*n))`
-/

namespace A067585.P15570148741082532141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (2 * n) - A038556 (2 * n)).toNat

end

end A067585.P15570148741082532141

namespace A067585

/-- `A003188(A003188(2*n)-A038556(2*n))` -/
def P15570148741082532141.Spec : Prop :=
  ∀ n, P15570148741082532141.a n = A067585 n

end A067585

/-! ## A067585.P12348427640428723566

`A038554(xor(n, 2*n))`
-/

namespace A067585.P12348427640428723566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (Nat.xor n (2 * n))

end

end A067585.P12348427640428723566

namespace A067585

/-- `A038554(xor(n, 2*n))` -/
def P12348427640428723566.Spec : Prop :=
  ∀ n, P12348427640428723566.a n = A067585 n

end A067585

/-! ## A067585.P4503580662302196014

`floor(A038556(xor(n, 2*n))/2)`
-/

namespace A067585.P4503580662302196014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038556 (Nat.xor n (2 * n)) : ℚ) / 2⌋

end

end A067585.P4503580662302196014

namespace A067585

/-- `floor(A038556(xor(n, 2*n))/2)` -/
def P4503580662302196014.Spec : Prop :=
  ∀ n, P4503580662302196014.a n = A067585 n

end A067585

/-! ## A067585.P1428706985471119896

`A038554(n-2*or(2*n, -n))`
-/

namespace A067585.P1428706985471119896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 ((n : ℤ) - 2 * Int.lor (2 * n : ℤ) (-(n : ℤ))).toNat

end

end A067585.P1428706985471119896

namespace A067585

/-- `A038554(n-2*or(2*n, -n))` -/
def P1428706985471119896.Spec : Prop :=
  ∀ n, P1428706985471119896.a n = A067585 n

end A067585

/-! ## A067585.P13170149329719510073

`A053645(xor(2*n, ceil(abs((1-n)/2))))`
-/

namespace A067585.P13170149329719510073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (Int.xor (2 * n : ℤ) ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉).toNat

end

end A067585.P13170149329719510073

namespace A067585

/-- `A053645(xor(2*n, ceil(abs((1-n)/2))))` -/
def P13170149329719510073.Spec : Prop :=
  ∀ n, P13170149329719510073.a n = A067585 n

end A067585

/-! ## A067585.P12035681144944098530

`A038554(A048724(n))`
-/

namespace A067585.P12035681144944098530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A048724 n).toNat

end

end A067585.P12035681144944098530

namespace A067585

/-- `A038554(A048724(n))` -/
def P12035681144944098530.Spec : Prop :=
  ∀ n, P12035681144944098530.a n = A067585 n

end A067585

/-! ## A067585.P13360313046055311108

`A038554(A003188(2*n))`
-/

namespace A067585.P13360313046055311108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A003188 (2 * n)).toNat

end

end A067585.P13360313046055311108

namespace A067585

/-- `A038554(A003188(2*n))` -/
def P13360313046055311108.Spec : Prop :=
  ∀ n, P13360313046055311108.a n = A067585 n

end A067585

/-!
# A067586: Number of 0's in the binary expansion of A066884(n+1).

The programs for A067586, there is no canonical definition to state claims against.
-/

/-! ## A067586.P10562953641327522168

`A023416(A066884(n+1))`
-/

namespace A067586.P10562953641327522168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A066884 (n + 1)).toNat

end

end A067586.P10562953641327522168

/-! ## A067586.P18061685678246402123

`A399609(A061579(n))`
-/

namespace A067586.P18061685678246402123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399609 (A061579 n).toNat

end

end A067586.P18061685678246402123

/-! ## A067586.P11273894011776164789

`A399199(n)-A025581(n)`
-/

namespace A067586.P11273894011776164789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399199 n - A025581 n

end

end A067586.P11273894011776164789

/-! ## A067586.P15213268260923976886

`floor(log2(A066884(n+1))-A025581(n))`
-/

namespace A067586.P15213268260923976886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A066884 (n + 1) : ℝ) - (A025581 n : ℝ)⌋

end

end A067586.P15213268260923976886

/-! ## A067586.P12568884297455249252

`A002262(A399199(n)+n+1)`
-/

namespace A067586.P12568884297455249252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A399199 n + (n + 1 : ℤ)).toNat

end

end A067586.P12568884297455249252

/-! ## A067586.P7159644120784407301

`A080791(A066884(n+1)%A013620(n))`
-/

namespace A067586.P7159644120784407301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.tmod (A066884 (n + 1)) (A013620 n)).toNat

end

end A067586.P7159644120784407301

/-! ## A067586.P3089330950277504985

`A080791(A066884(n+1)+A063524(2*(n+1)))`
-/

namespace A067586.P3089330950277504985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A066884 (n + 1) + A063524 (2 * (n + 1))).toNat

end

end A067586.P3089330950277504985

/-!
# A067587: Inverse of A066884 considered as a permutation of the positive integers.

The programs for A067587, there is no canonical definition to state claims against.
-/

/-! ## A067587.P2533867394842896805

`A263017(n+1)+A356419(n+1)-A000120(n+1)`
-/

namespace A067587.P2533867394842896805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 (n + 1) + (A356419 (n + 1) - A000120 (n + 1))

end

end A067587.P2533867394842896805

/-! ## A067587.P7779467498695514858

`A038722(A356419(n+1))`
-/

namespace A067587.P7779467498695514858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A356419 (n + 1)).toNat

end

end A067587.P7779467498695514858

/-! ## A067587.P8615793446164406035

`A356419(A263018(n+1))`
-/

namespace A067587.P8615793446164406035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356419 (A263018 (n + 1)).toNat

end

end A067587.P8615793446164406035

/-! ## A067587.P8153084795365171041

`A356419(A066884(A356419(A000120(A000225(n+1)))))`
-/

namespace A067587.P8153084795365171041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356419 (A066884 (A356419 (A000120 (A000225 (n + 1)).toNat).toNat).toNat).toNat

end

end A067587.P8153084795365171041

/-!
# A067588: Total number of parts in all partitions of n into odd parts.

The programs for A067588, there is no canonical definition to state claims against.
-/

/-! ## A067588.P18186209007686522259

`A305082(n)-A090867(n)`
-/

namespace A067588.P18186209007686522259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305082 n - A090867 n

end

end A067588.P18186209007686522259

/-! ## A067588.P4419876780521584567

`A090867(n)+A116680(n)+A116676(n)`
-/

namespace A067588.P4419876780521584567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090867 n + (A116680 n + A116676 n)

end

end A067588.P4419876780521584567

/-! ## A067588.P17384419178895274282

`A116676(n)+2*A341497(n)`
-/

namespace A067588.P17384419178895274282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116676 n + 2 * A341497 n

end

end A067588.P17384419178895274282

/-! ## A067588.P3129178302822899539

`A305082(n)-(A341495(n)+A341494(n))`
-/

namespace A067588.P3129178302822899539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305082 n - (A341495 n + A341494 n)

end

end A067588.P3129178302822899539

/-! ## A067588.P9651751177394120177

`A305082(n)-(A341497(n)+A341496(n))`
-/

namespace A067588.P9651751177394120177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305082 n - (A341497 n + A341496 n)

end

end A067588.P9651751177394120177

/-!
# A067589: Numbers k such that A067588(k) is an odd number.

The programs for A067589, the canonical program `A067589.P983407005055868196` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067589 has offset 1).

The definition of A067589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067589.P983407005055868196

`C(or(2, n), 2)+n²+n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067589

/-- `C(or(2, n), 2)+n²+n` -/
def P983407005055868196.Spec : Prop :=
  ∀ n, (P983407005055868196.a n : ℤ) = A067589 (n + 1)

theorem P983407005055868196.correct : P983407005055868196.Spec := by
  intro n
  simp only [A067589, Nat.add_sub_cancel]

end A067589

/-! ## A067589.P3519052410962578920

`∑[n]+(char[and(n, -3)]+n)²`
-/

namespace A067589.P3519052410962578920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n) ^ 2

end

end A067589.P3519052410962578920

namespace A067589

/-- `∑[n]+(char[and(n, -3)]+n)²` -/
def P3519052410962578920.Spec : Prop :=
  ∀ n, (P3519052410962578920.a n : ℤ) = A067589 (n + 1)

end A067589

/-! ## A067589.P6105166762672965742

`∑[n]+(∑[n+1]%2+n)²`
-/

namespace A067589.P6105166762672965742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j) % 2 + n) ^ 2

end

end A067589.P6105166762672965742

namespace A067589

/-- `∑[n]+(∑[n+1]%2+n)²` -/
def P6105166762672965742.Spec : Prop :=
  ∀ n, (P6105166762672965742.a n : ℤ) = A067589 (n + 1)

end A067589

/-! ## A067589.P12440693192317894647

`∑[n]+A098180(n)²`
-/

namespace A067589.P12440693192317894647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A098180 n ^ 2

end

end A067589.P12440693192317894647

namespace A067589

/-- `∑[n]+A098180(n)²` -/
def P12440693192317894647.Spec : Prop :=
  ∀ n, P12440693192317894647.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P17929399445238224254

`∑[n]+∑[A098178(n)]²`
-/

namespace A067589.P17929399445238224254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A067589.P17929399445238224254

namespace A067589

/-- `∑[n]+∑[A098178(n)]²` -/
def P17929399445238224254.Spec : Prop :=
  ∀ n, P17929399445238224254.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P2655015009969221409

`2*A268539(n+1)+1`
-/

namespace A067589.P2655015009969221409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268539 (n + 1) + 1

end

end A067589.P2655015009969221409

namespace A067589

/-- `2*A268539(n+1)+1` -/
def P2655015009969221409.Spec : Prop :=
  ∀ n, P2655015009969221409.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P18300111998606888721

`∑[n]+A236916(2*n+1)²`
-/

namespace A067589.P18300111998606888721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A236916 (2 * n + 1) ^ 2

end

end A067589.P18300111998606888721

namespace A067589

/-- `∑[n]+A236916(2*n+1)²` -/
def P18300111998606888721.Spec : Prop :=
  ∀ n, P18300111998606888721.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P7475855609183422548

`A001318(A047415(n+1))`
-/

namespace A067589.P7475855609183422548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A047415 (n + 1)).toNat

end

end A067589.P7475855609183422548

namespace A067589

/-- `A001318(A047415(n+1))` -/
def P7475855609183422548.Spec : Prop :=
  ∀ n, P7475855609183422548.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P2761968568628228387

`A001840(A174398(n+1))`
-/

namespace A067589.P2761968568628228387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A174398 (n + 1)).toNat

end

end A067589.P2761968568628228387

namespace A067589

/-- `A001840(A174398(n+1))` -/
def P2761968568628228387.Spec : Prop :=
  ∀ n, P2761968568628228387.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P8117068992581400706

`A008742(A269819(n+1))`
-/

namespace A067589.P8117068992581400706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (A269819 (n + 1)).toNat

end

end A067589.P8117068992581400706

namespace A067589

/-- `A008742(A269819(n+1))` -/
def P8117068992581400706.Spec : Prop :=
  ∀ n, P8117068992581400706.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P1890984084663438910

`A003215(n)-A193828(n)`
-/

namespace A067589.P1890984084663438910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A193828 n

end

end A067589.P1890984084663438910

namespace A067589

/-- `A003215(n)-A193828(n)` -/
def P1890984084663438910.Spec : Prop :=
  ∀ n, P1890984084663438910.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P2447486130979723187

`A001318(A133872(n)+2*n)`
-/

namespace A067589.P2447486130979723187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A133872 n + (2 * n : ℤ)).toNat

end

end A067589.P2447486130979723187

namespace A067589

/-- `A001318(A133872(n)+2*n)` -/
def P2447486130979723187.Spec : Prop :=
  ∀ n, P2447486130979723187.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P12042695638103315366

`A000217(n)+(A133872(n)+n)²`
-/

namespace A067589.P12042695638103315366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A133872 n + (n : ℤ)) ^ 2

end

end A067589.P12042695638103315366

namespace A067589

/-- `A000217(n)+(A133872(n)+n)²` -/
def P12042695638103315366.Spec : Prop :=
  ∀ n, P12042695638103315366.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P9601924821744916883

`2*(A045943(n)-A154293(n+1))+1`
-/

namespace A067589.P9601924821744916883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045943 n - A154293 (n + 1)) + 1

end

end A067589.P9601924821744916883

namespace A067589

/-- `2*(A045943(n)-A154293(n+1))+1` -/
def P9601924821744916883.Spec : Prop :=
  ∀ n, P9601924821744916883.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P6131557047535430108

`A001318(A131078(2*(n+1))+2*n)`
-/

namespace A067589.P6131557047535430108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A131078 (2 * (n + 1)) + (2 * n : ℤ)).toNat

end

end A067589.P6131557047535430108

namespace A067589

/-- `A001318(A131078(2*(n+1))+2*n)` -/
def P6131557047535430108.Spec : Prop :=
  ∀ n, P6131557047535430108.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P6577704523389082530

`A001318(A165211(2*n+1)+2*n)`
-/

namespace A067589.P6577704523389082530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A165211 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A067589.P6577704523389082530

namespace A067589

/-- `A001318(A165211(2*n+1)+2*n)` -/
def P6577704523389082530.Spec : Prop :=
  ∀ n, P6577704523389082530.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P14605022825194876883

`A001318(2*n+1-A130198(2*n))`
-/

namespace A067589.P14605022825194876883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 ((2 * n + 1 : ℤ) - A130198 (2 * n)).toNat

end

end A067589.P14605022825194876883

namespace A067589

/-- `A001318(2*n+1-A130198(2*n))` -/
def P14605022825194876883.Spec : Prop :=
  ∀ n, P14605022825194876883.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P4304016482601021508

`A098180(A016777(n))/2*A098180(n)`
-/

namespace A067589.P4304016482601021508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098180 (A016777 n).toNat : ℚ) / 2 * (A098180 n : ℚ)

end

end A067589.P4304016482601021508

namespace A067589

/-- `A098180(A016777(n))/2*A098180(n)` -/
def P4304016482601021508.Spec : Prop :=
  ∀ n, P4304016482601021508.a n = (A067589 (n + 1) : ℚ)

end A067589

/-! ## A067589.P1301494695277213381

`A000217(A098180(n)+n)-A000217(n)`
-/

namespace A067589.P1301494695277213381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A098180 n + (n : ℤ)).toNat - A000217 n

end

end A067589.P1301494695277213381

namespace A067589

/-- `A000217(A098180(n)+n)-A000217(n)` -/
def P1301494695277213381.Spec : Prop :=
  ∀ n, P1301494695277213381.a n = A067589 (n + 1)

end A067589

/-! ## A067589.P17848182877918776920

`2*(A011848(A290562(n+1))+n*A004525(n+1))+1`
-/

namespace A067589.P17848182877918776920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011848 (A290562 (n + 1)).toNat + (n : ℤ) * A004525 (n + 1)) + 1

end

end A067589.P17848182877918776920

namespace A067589

/-- `2*(A011848(A290562(n+1))+n*A004525(n+1))+1` -/
def P17848182877918776920.Spec : Prop :=
  ∀ n, P17848182877918776920.a n = A067589 (n + 1)

end A067589

/-!
# A067591: Number of partitions of n into evil numbers (A001969).

The programs for A067591, there is no canonical definition to state claims against.
-/

/-! ## A067591.P5491896555579106338

`A178225(A113692(n+1))+A147785(n)`
-/

namespace A067591.P5491896555579106338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (A113692 (n + 1)).toNat + A147785 n

end

end A067591.P5491896555579106338

/-! ## A067591.P5753803826296859327

`A147785(n)+A102683(A067599(n+2))`
-/

namespace A067591.P5753803826296859327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147785 n + A102683 (A067599 (n + 2)).toNat

end

end A067591.P5753803826296859327

/-! ## A067591.P12110718583125031926

`A147785(n)+A044941(A011782(n))`
-/

namespace A067591.P12110718583125031926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147785 n + A044941 (A011782 n).toNat

end

end A067591.P12110718583125031926

/-!
# A067592: Number of partitions of n into Lucas parts (A000204(k) for k >= 1).

The programs for A067592, there is no canonical definition to state claims against.
-/

/-! ## A067592.P1277259035609974810

`∑[A185284(2*n+1)+A029260(n)]`
-/

namespace A067592.P1277259035609974810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + A029260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067592.P1277259035609974810

/-! ## A067592.P512368649571675373

`∑[A029260(A001222(2^n))]`
-/

namespace A067592.P512368649571675373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029260 (A001222 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067592.P512368649571675373

/-! ## A067592.P2599601219619790473

`and(A000203(2^n), ∑[A029260(n)])`
-/

namespace A067592.P2599601219619790473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (2 ^ n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067592.P2599601219619790473

/-! ## A067592.P4822503248028384268

`∑{d}[A000079(n), A029260(A001222(#))]`
-/

namespace A067592.P4822503248028384268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A029260 (A001222 d).toNat

end

end A067592.P4822503248028384268

/-! ## A067592.P8314583165785350800

`∑[A029260(n)]^A001221(A000079(n))`
-/

namespace A067592.P8314583165785350800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029260 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A067592.P8314583165785350800

/-!
# A067593: Number of partitions of n into Lucas parts (A000032).

The programs for A067593, there is no canonical definition to state claims against.
-/

/-! ## A067593.P10746056587895851955

`A067592(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A067593.P10746056587895851955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A067592 n + a (n - 2)

end

end A067593.P10746056587895851955

/-! ## A067593.P2658021661238447052

`A067592(n)-(A000007(n)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A067593.P2658021661238447052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A067592 n - (A000007 n - a (n - 2))

end

end A067593.P2658021661238447052

/-! ## A067593.P1126383108757700952

`A079643(A000511(n)*A001399(n))`
-/

namespace A067593.P1126383108757700952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (A000511 n * A001399 n).toNat

end

end A067593.P1126383108757700952

/-! ## A067593.P15878713875473010647

`A000122(A089157(n+1))+record[A161255(n+1)]`
-/

namespace A067593.P15878713875473010647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A089157 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067593.P15878713875473010647

/-! ## A067593.P6929860117583525619

`A204166(A005514(n+8))`
-/

namespace A067593.P6929860117583525619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A005514 (n + 8)).toNat

end

end A067593.P6929860117583525619

/-!
# A067594: Number of partitions of n into distinct lucky parts (A000959).

The programs for A067594, there is no canonical definition to state claims against.
-/

/-! ## A067594.P1899919899764471446

`A005087(A362209(n+1)+A000203(n+1))`
-/

namespace A067594.P1899919899764471446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A362209 (n + 1) + A000203 (n + 1)).toNat

end

end A067594.P1899919899764471446

/-! ## A067594.P14149659660794998209

`A008584(A000120(∑[A167875(n)]))`
-/

namespace A067594.P14149659660794998209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008584 (A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A067594.P14149659660794998209

/-! ## A067594.P11831467602551763071

`A049600(A073093(∑[A074045(n)]))`
-/

namespace A067594.P11831467602551763071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A073093 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A067594.P11831467602551763071

/-! ## A067594.P4130933972074286686

`A096863(A265005(n+1)*A324932(n+1))`
-/

namespace A067594.P4130933972074286686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (A265005 (n + 1) * A324932 (n + 1)).toNat

end

end A067594.P4130933972074286686

/-! ## A067594.P17817316670920655541

`A105469(A177041(n+2))`
-/

namespace A067594.P17817316670920655541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105469 (A177041 (n + 2)).toNat

end

end A067594.P17817316670920655541

/-!
# A067595: Number of partitions of n into distinct Lucas parts (A000032).

The programs for A067595, there is no canonical definition to state claims against.
-/

/-! ## A067595.P17425441628526140202

`A294204(abs(1-n))+A294204(n)`
-/

namespace A067595.P17425441628526140202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294204 |1 - (n : ℤ)|.toNat + A294204 n

end

end A067595.P17425441628526140202

/-! ## A067595.P9053577637871814864

`A350240(A285681(n+1)-(n+1))`
-/

namespace A067595.P9053577637871814864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (A285681 (n + 1) - (n + 1 : ℤ)).toNat

end

end A067595.P9053577637871814864

/-! ## A067595.P14068136493425396131

`A350240(A285681(n+1)%(n+1))`
-/

namespace A067595.P14068136493425396131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (Int.tmod (A285681 (n + 1)) (n + 1 : ℤ)).toNat

end

end A067595.P14068136493425396131

/-! ## A067595.P9209251729381269069

`A034968(A357306(n))`
-/

namespace A067595.P9209251729381269069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A357306 n).toNat

end

end A067595.P9209251729381269069

/-!
# A067596: Number of partitions of n into palindrome parts in base 2.

The programs for A067596, there is no canonical definition to state claims against.
-/

/-! ## A067596.P3307495800830910301

`A185284(A008815(n))+A008674(n)`
-/

namespace A067596.P3307495800830910301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A008815 n).toNat + A008674 n

end

end A067596.P3307495800830910301

/-! ## A067596.P6603680453822400067

`A185284(A168203(n+1))+A008674(n)`
-/

namespace A067596.P6603680453822400067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A168203 (n + 1)).toNat + A008674 n

end

end A067596.P6603680453822400067

/-! ## A067596.P11935872944508865715

`A103298(A279375(n))`
-/

namespace A067596.P11935872944508865715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A279375 n).toNat

end

end A067596.P11935872944508865715

/-! ## A067596.P14640812528383574174

`A112193(n)+A011736(A125896(n))`
-/

namespace A067596.P14640812528383574174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112193 n + A011736 (A125896 n).toNat

end

end A067596.P14640812528383574174

/-! ## A067596.P17268265701103932961

`A134345(n)+A011736(A125896(n))`
-/

namespace A067596.P17268265701103932961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134345 n + A011736 (A125896 n).toNat

end

end A067596.P17268265701103932961

/-!
# A067599: Decimal encoding of the prime factorization of n: concatenation of prime factors and exponents.

The programs for A067599, there is no canonical definition to state claims against.
-/

/-! ## A067599.P1937625131953437411

`A068633(n+2)`
-/

namespace A067599.P1937625131953437411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068633 (n + 2)

end

end A067599.P1937625131953437411

/-! ## A067599.P11375429546890277406

`A299400(A064988(n+2))`
-/

namespace A067599.P11375429546890277406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299400 (A064988 (n + 2)).toNat

end

end A067599.P11375429546890277406

