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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A291501: The arithmetic function uhat(n,1,7).

The programs for A291501, there is no canonical definition to state claims against.
-/

/-! ## A291501.P10906767987488245453

`A291516(n+1)+2*A291512(n+1)`
-/

namespace A291501.P10906767987488245453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291516 (n + 1) + 2 * A291512 (n + 1)

end

end A291501.P10906767987488245453

/-!
# A291503: a(n) is the smallest k such that sigma(k) = phi(n), or 0 if no such k exists.

The programs for A291503, there is no canonical definition to state claims against.
-/

/-! ## A291503.P9349123685550864885

`A051444(A000010(n+1))`
-/

namespace A291503.P9349123685550864885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A000010 (n + 1)).toNat

end

end A291503.P9349123685550864885

/-! ## A291503.P6844921524132901336

`A051444(Δ[A002088(n)])`
-/

namespace A291503.P6844921524132901336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (f1 (n + 1) - f1 n).toNat

end

end A291503.P6844921524132901336

/-! ## A291503.P211269013069375788

`A051444(A109606(n+1)+1)`
-/

namespace A291503.P211269013069375788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A109606 (n + 1) + 1).toNat

end

end A291503.P211269013069375788

/-! ## A291503.P13116223363969878593

`A051444(n-A051953(n+1)+1)`
-/

namespace A291503.P13116223363969878593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 ((n : ℤ) - A051953 (n + 1) + 1).toNat

end

end A291503.P13116223363969878593

/-! ## A291503.P15149762888676828263

`A051444(A002618(n+1)/(n+1))`
-/

namespace A291503.P15149762888676828263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A291503.P15149762888676828263

/-! ## A291503.P6479559163994652668

`A051444(∑{d}[n+1, #]-A051612(n+1))`
-/

namespace A291503.P6479559163994652668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A051612 (n + 1)).toNat

end

end A291503.P6479559163994652668

/-! ## A291503.P3001614436084882213

`A051444(A065387(n+1)-∑{d}[n+1, #])`
-/

namespace A291503.P3001614436084882213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A065387 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)).toNat

end

end A291503.P3001614436084882213

/-! ## A291503.P8073833782678887924

`A051444(A002088(n+1)-A002088(n))`
-/

namespace A291503.P8073833782678887924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A002088 (n + 1) - A002088 n).toNat

end

end A291503.P8073833782678887924

/-! ## A291503.P5704285418485570407

`A051444(A000203(n+1)-A051612(n+1))`
-/

namespace A291503.P5704285418485570407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A000203 (n + 1) - A051612 (n + 1)).toNat

end

end A291503.P5704285418485570407

/-! ## A291503.P10600843477730692129

`A051444(A065387(n+1)-A000203(n+1))`
-/

namespace A291503.P10600843477730692129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A065387 (n + 1) - A000203 (n + 1)).toNat

end

end A291503.P10600843477730692129

/-! ## A291503.P5109759480518952221

`A051444(∑[A340793(n+1)]-A051612(n+1))`
-/

namespace A291503.P5109759480518952221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (∑ j ∈ Finset.range (n + 1), f1 j - A051612 (n + 1)).toNat

end

end A291503.P5109759480518952221

/-! ## A291503.P12344304714291140471

`A051444(A274535(n+1)/5-A051612(n+1))`
-/

namespace A291503.P12344304714291140471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (SequenceMachineLib.roundAway ((A274535 (n + 1) : ℚ) / 5 - (A051612 (n + 1) : ℚ))).toNat

end

end A291503.P12344304714291140471

/-! ## A291503.P10264373871990125557

`A051444(A262610(Δ[n²])-A051612(n+1))`
-/

namespace A291503.P10264373871990125557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A051612 (n + 1)).toNat

end

end A291503.P10264373871990125557

/-! ## A291503.P13715308867531582046

`A051444(A065387(n+1)-A262610(Δ[n²]))`
-/

namespace A291503.P13715308867531582046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A065387 (n + 1) - A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A291503.P13715308867531582046

/-!
# A291504: Number of permutations s_1,s_2,...,s_n of 1,2,...,n such that for all j=1,2,...,n, Sum_{i=1..j} s_i is not a prime.

The programs for A291504, there is no canonical definition to state claims against.
-/

/-! ## A291504.P1660432380767700315

`A171896(A329944(n))-A002262(n)`
-/

namespace A291504.P1660432380767700315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (A329944 n).toNat - A002262 n

end

end A291504.P1660432380767700315

/-! ## A291504.P2764181737476480387

`A171896(A329944(n))-A001222(A059268(n))`
-/

namespace A291504.P2764181737476480387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (A329944 n).toNat - A001222 (A059268 n).toNat

end

end A291504.P2764181737476480387

/-!
# A291505: a(n) = (n!)^7 * Sum_{i=1..n} 1/i^7.

The programs for A291505, there is no canonical definition to state claims against.
-/

/-! ## A291505.P6739770801489435927

`A291556(eq[7, A025581(n)])`
-/

namespace A291505.P6739770801489435927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291505.P6739770801489435927

/-! ## A291505.P5260039180959132852

`A291556(eq[8, A195663(n)])`
-/

namespace A291505.P5260039180959132852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291505.P5260039180959132852

/-! ## A291505.P15651865010236600629

`A291556(eq[8, A004736(n+1)])`
-/

namespace A291505.P15651865010236600629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291505.P15651865010236600629

/-!
# A291506: a(n) = (n!)^8 * Sum_{i=1..n} 1/i^8.

The programs for A291506, there is no canonical definition to state claims against.
-/

/-! ## A291506.P2530865463877366530

`A291556(eq[8, A025581(n)])`
-/

namespace A291506.P2530865463877366530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291506.P2530865463877366530

/-!
# A291509: The arithmetic function uhat(n,2,4).

The programs for A291509, there is no canonical definition to state claims against.
-/

/-! ## A291509.P5937045007363136382

`ceil(A291511(n+1)/3)`
-/

namespace A291509.P5937045007363136382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A291511 (n + 1) : ℚ) / 3⌉

end

end A291509.P5937045007363136382

/-!
# A291510: The arithmetic function uhat(n,2,5), negated.

The programs for A291510, the canonical program `A291510.P11863240555907142736` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291510 has offset 1).

The definition of A291510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291510.P11863240555907142736

`abs(6-n)+8+n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291510

/-- `abs(6-n)+8+n` -/
def P11863240555907142736.Spec : Prop :=
  ∀ n, P11863240555907142736.a n = A291510 (n + 1)

theorem P11863240555907142736.correct : P11863240555907142736.Spec := by
  intro n
  simp only [A291510, Nat.add_sub_cancel]

end A291510

/-!
# A291511: The arithmetic function uhat(n,2,6).

The programs for A291511, there is no canonical definition to state claims against.
-/

/-! ## A291511.P15964652196486606430

`A291575(A291510(n+1))+A291509(n+1)`
-/

namespace A291511.P15964652196486606430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291575 (A291510 (n + 1)).toNat + A291509 (n + 1)

end

end A291511.P15964652196486606430

/-!
# A291512: The arithmetic function uhat(n,2,7).

The programs for A291512, there is no canonical definition to state claims against.
-/

/-! ## A291512.P8732274199418036349

`A058321(A008586(n))-A008586(n+9)`
-/

namespace A291512.P8732274199418036349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058321 (A008586 n).toNat - A008586 (n + 9)

end

end A291512.P8732274199418036349

/-!
# A291513: The arithmetic function uhat(n,2,8).

The programs for A291513, there is no canonical definition to state claims against.
-/

/-! ## A291513.P14411378384043601615

`A035211(3^n)-48`
-/

namespace A291513.P14411378384043601615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035211 (3 ^ n) - 48

end

end A291513.P14411378384043601615

/-!
# A291514: The arithmetic function uhat(n,3,5).

The programs for A291514, the canonical program `A291514.P268306748041208305` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291514 has offset 1).

The definition of A291514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291514.P268306748041208305

`2*a(n-1)-a(n-2)` with `a(0)=-9, a(1)=-9, a(2)=-9, a(3)=-9, a(4)=-9, a(5)=-9, a(6)=-9, a(7)=-9, a(8)=-9, a(9)=-10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291514

/-- `2*a(n-1)-a(n-2)` -/
def P268306748041208305.Spec : Prop :=
  ∀ n, P268306748041208305.a n = A291514 (n + 1)

theorem P268306748041208305.correct : P268306748041208305.Spec := by
  intro n
  simp only [A291514, Nat.add_sub_cancel]

end A291514

/-!
# A291516: The arithmetic function uhat(n,3,7), negated.

The programs for A291516, the canonical program `A291516.P2739492485073675488` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291516 has offset 1).

The definition of A291516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291516.P2739492485073675488

`abs(3*A291514(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291516

/-- `abs(3*A291514(n+1))` -/
def P2739492485073675488.Spec : Prop :=
  ∀ n, P2739492485073675488.a n = A291516 (n + 1)

theorem P2739492485073675488.correct : P2739492485073675488.Spec := by
  intro n
  simp only [A291516, Nat.add_sub_cancel]

end A291516

/-!
# A291517: The arithmetic function uhat(n,3,8).

The programs for A291517, there is no canonical definition to state claims against.
-/

/-! ## A291517.P4743749984313508056

`A291522(n+1)+A291515(abs(A291514(n+1)))`
-/

namespace A291517.P4743749984313508056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291522 (n + 1) + A291515 |A291514 (n + 1)|.toNat

end

end A291517.P4743749984313508056

/-!
# A291518: Number of permutations s_1,s_2,...,s_n of 1,2,...,n with s_n = n (if n>0) and such that for all j=1,2,...,n, Sum_{i=1..j} s_i divides Sum_{i=1..j} s_i^3.

The programs for A291518, there is no canonical definition to state claims against.
-/

/-! ## A291518.P11045560198857597416

`A291445(floor(n-atan(n))+1)`
-/

namespace A291518.P11045560198857597416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291445 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 1).toNat

end

end A291518.P11045560198857597416

/-! ## A291518.P2976739379802462077

`A291445(round(acot(n)+n)-1)`
-/

namespace A291518.P2976739379802462077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291445 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 1).toNat

end

end A291518.P2976739379802462077

/-! ## A291518.P11810420483851766483

`A291445(round(sqrt((1-n)²+1)))`
-/

namespace A291518.P11810420483851766483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291445 (SequenceMachineLib.roundAway (Real.sqrt ((1 - (n : ℤ)) ^ 2 + 1 : ℝ))).toNat

end

end A291518.P11810420483851766483

/-! ## A291518.P1107411304307904054

`∏{e}[A042950(n), A291445(#)]`
-/

namespace A291518.P1107411304307904054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A291445 (Nat.factorization (f1 n).natAbs p)

end

end A291518.P1107411304307904054

/-! ## A291518.P18355571921040345950

`∏{e}[A133494(n), A291445(#)]`
-/

namespace A291518.P18355571921040345950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A291445 (Nat.factorization (f1 n).natAbs p)

end

end A291518.P18355571921040345950

/-!
# A291520: The arithmetic function uhat(n,4,2).

The programs for A291520, the canonical program `A291520.P6189361050535206404` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291520 has offset 1).

The definition of A291520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291520.P6189361050535206404

`a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291520

/-- `a(n-2)` -/
def P6189361050535206404.Spec : Prop :=
  ∀ n, (P6189361050535206404.a n : ℤ) = A291520 (n + 1)

theorem P6189361050535206404.correct : P6189361050535206404.Spec := by
  intro n
  simp only [A291520, Nat.add_sub_cancel]

end A291520

/-!
# A291521: The arithmetic function uhat(n,4,6).

The programs for A291521, there is no canonical definition to state claims against.
-/

/-! ## A291521.P9350608304357519802

`A046978(A281516(n))-12`
-/

namespace A291521.P9350608304357519802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A281516 n).toNat - 12

end

end A291521.P9350608304357519802

/-!
# A291522: The arithmetic function uhat(n,4,7).

The programs for A291522, there is no canonical definition to state claims against.
-/

/-! ## A291522.P12571412125445927828

`2*(n-record[A180176(n)])`
-/

namespace A291522.P12571412125445927828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A291522.P12571412125445927828

/-!
# A291525: a(n) is the largest number in an n-term AP of Chen primes.

The programs for A291525, there is no canonical definition to state claims against.
-/

/-! ## A291525.P3541147167142819010

`p?[round(A047173(n+1)/6)]`
-/

namespace A291525.P3541147167142819010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A047173 (n + 1) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291525.P3541147167142819010

/-! ## A291525.P7936240511580949667

`A129990(A144293(n)+n)`
-/

namespace A291525.P7936240511580949667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129990 (A144293 n + (n : ℤ)).toNat

end

end A291525.P7936240511580949667

/-!
# A291526: a(n) = 2^n*(n - 3) + 4.

The programs for A291526, the canonical program `A291526.P10642241473967828440` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291526 has offset 1).

The definition of A291526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)*(n-2)+4` (program `A291526.P10642241473967828440`, by `A291526.P10642241473967828440.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291526.P10642241473967828440

`2^(n+1)*(n-2)+4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291526

/-- `2^(n+1)*(n-2)+4` -/
def P10642241473967828440.Spec : Prop :=
  ∀ n, P10642241473967828440.a n = A291526 (n + 1)

theorem P10642241473967828440.correct : P10642241473967828440.Spec := by
  intro n
  simp only [A291526, Nat.add_sub_cancel]

end A291526

/-! ## A291526.P6392674701535646959

`∑[ogf(4x^2/(1-4x+4x^2))]`
-/

namespace A291526.P6392674701535646959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291526.P6392674701535646959

namespace A291526

/-- `∑[ogf(4x^2/(1-4x+4x^2))]` -/
def P6392674701535646959.Spec : Prop :=
  ∀ n, P6392674701535646959.a n = A291526 (n + 1)

end A291526

/-! ## A291526.P18278289537970090230

`ogf(4x^2/(1-5x+8x^2-4x^3))`
-/

namespace A291526.P18278289537970090230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4] [1, -5, 8, -4] n

end

end A291526.P18278289537970090230

namespace A291526

/-- `ogf(4x^2/(1-5x+8x^2-4x^3))` -/
def P18278289537970090230.Spec : Prop :=
  ∀ n, P18278289537970090230.a n = A291526 (n + 1)

end A291526

/-! ## A291526.P16655968378492042333

`xor(1, ∑[abs(1-n)*2^n])`
-/

namespace A291526.P16655968378492042333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291526.P16655968378492042333

namespace A291526

/-- `xor(1, ∑[abs(1-n)*2^n])` -/
def P16655968378492042333.Spec : Prop :=
  ∀ n, P16655968378492042333.a n = A291526 (n + 1)

end A291526

/-! ## A291526.P8300234315482949626

`∑[(n-1)*and(-2, 2^n)]`
-/

namespace A291526.P8300234315482949626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.land (-2) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291526.P8300234315482949626

namespace A291526

/-- `∑[(n-1)*and(-2, 2^n)]` -/
def P8300234315482949626.Spec : Prop :=
  ∀ n, P8300234315482949626.a n = A291526 (n + 1)

end A291526

/-! ## A291526.P17526156587686997840

`∑[2^n*(2*n)%(n+1)]`
-/

namespace A291526.P17526156587686997840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (2 * n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291526.P17526156587686997840

namespace A291526

/-- `∑[2^n*(2*n)%(n+1)]` -/
def P17526156587686997840.Spec : Prop :=
  ∀ n, (P17526156587686997840.a n : ℤ) = A291526 (n + 1)

end A291526

/-! ## A291526.P8257403040433154755

`2*(2^n-(2-a(n-1)))` with `a(0)=0`
-/

namespace A291526.P8257403040433154755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((2 ^ n : ℤ) - (2 - a (n - 1)))

end

end A291526.P8257403040433154755

namespace A291526

/-- `2*(2^n-(2-a(n-1)))` -/
def P8257403040433154755.Spec : Prop :=
  ∀ n, P8257403040433154755.a n = A291526 (n + 1)

theorem P8257403040433154755.correct : P8257403040433154755.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A291526, Nat.add_sub_cancel, A291526.P8257403040433154755.a, A291526.P10642241473967828440.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A291526, Nat.add_sub_cancel, A291526.P8257403040433154755.a, A291526.P10642241473967828440.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A291526

/-! ## A291526.P12961656895456747795

`∑[(n-1)*Δ[2*a(n-1)]]` with `a(0)=2, a(1)=2`
-/

namespace A291526.P12961656895456747795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291526.P12961656895456747795

namespace A291526

/-- `∑[(n-1)*Δ[2*a(n-1)]]` -/
def P12961656895456747795.Spec : Prop :=
  ∀ n, P12961656895456747795.a n = A291526 (n + 1)

end A291526

/-! ## A291526.P6654407096408866188

`4*(a(n-1)+1-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A291526.P6654407096408866188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  4 * (a (n - 1) + 1 - a (n - 2))

end

end A291526.P6654407096408866188

namespace A291526

/-- `4*(a(n-1)+1-a(n-2))` -/
def P6654407096408866188.Spec : Prop :=
  ∀ n, P6654407096408866188.a n = A291526 (n + 1)

theorem P6654407096408866188.correct : P6654407096408866188.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A291526, Nat.add_sub_cancel, A291526.P6654407096408866188.a, A291526.P10642241473967828440.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A291526, Nat.add_sub_cancel, A291526.P6654407096408866188.a, A291526.P10642241473967828440.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A291526

/-! ## A291526.P17105504433102235755

`∑[4*(a(n-1)-a(n-2))]` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A291526.P17105504433102235755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291526.P17105504433102235755

namespace A291526

/-- `∑[4*(a(n-1)-a(n-2))]` -/
def P17105504433102235755.Spec : Prop :=
  ∀ n, P17105504433102235755.a n = A291526 (n + 1)

end A291526

/-! ## A291526.P8740550187566289451

`floor(4*(1-(a(n-2)-a(n-1))))` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A291526.P8740550187566289451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  4 * (1 - (a (n - 2) - a (n - 1)))

end

end A291526.P8740550187566289451

namespace A291526

/-- `floor(4*(1-(a(n-2)-a(n-1))))` -/
def P8740550187566289451.Spec : Prop :=
  ∀ n, P8740550187566289451.a n = A291526 (n + 1)

theorem P8740550187566289451.correct : P8740550187566289451.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A291526, Nat.add_sub_cancel, A291526.P8740550187566289451.a, A291526.P10642241473967828440.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A291526, Nat.add_sub_cancel, A291526.P8740550187566289451.a, A291526.P10642241473967828440.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A291526

/-! ## A291526.P11798622275755131911

`∑[a(n-1)+a(n-1)+2^n]` with `a(0)=0, a(1)=0`
-/

namespace A291526.P11798622275755131911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291526.P11798622275755131911

namespace A291526

/-- `∑[a(n-1)+a(n-1)+2^n]` -/
def P11798622275755131911.Spec : Prop :=
  ∀ n, (P11798622275755131911.a n : ℤ) = A291526 (n + 1)

end A291526

/-! ## A291526.P13431554831389426401

`2*2*(1-(a(n-2)-a(n-1)))` with `a(0)=0, a(1)=0`
-/

namespace A291526.P13431554831389426401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * (2 * (1 - (a (n - 2) - a (n - 1))))

end

end A291526.P13431554831389426401

namespace A291526

/-- `2*2*(1-(a(n-2)-a(n-1)))` -/
def P13431554831389426401.Spec : Prop :=
  ∀ n, P13431554831389426401.a n = A291526 (n + 1)

theorem P13431554831389426401.correct : P13431554831389426401.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A291526, Nat.add_sub_cancel, A291526.P13431554831389426401.a, A291526.P10642241473967828440.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A291526, Nat.add_sub_cancel, A291526.P13431554831389426401.a, A291526.P10642241473967828440.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A291526

/-! ## A291526.P3884493557104083924

`∑[4*A139756(n)]`
-/

namespace A291526.P3884493557104083924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291526.P3884493557104083924

namespace A291526

/-- `∑[4*A139756(n)]` -/
def P3884493557104083924.Spec : Prop :=
  ∀ n, P3884493557104083924.a n = A291526 (n + 1)

end A291526

/-! ## A291526.P3422745130954047657

`4*(A098821(n)-4)`
-/

namespace A291526.P3422745130954047657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A098821 n - 4)

end

end A291526.P3422745130954047657

namespace A291526

/-- `4*(A098821(n)-4)` -/
def P3422745130954047657.Spec : Prop :=
  ∀ n, P3422745130954047657.a n = A291526 (n + 1)

end A291526

/-! ## A291526.P10105160605045999792

`2*(∑[A097064(n)]-1)`
-/

namespace A291526.P10105160605045999792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A291526.P10105160605045999792

namespace A291526

/-- `2*(∑[A097064(n)]-1)` -/
def P10105160605045999792.Spec : Prop :=
  ∀ n, P10105160605045999792.a n = A291526 (n + 1)

end A291526

/-! ## A291526.P5967499001592988979

`∑[(n-1)*A155559(n)]`
-/

namespace A291526.P5967499001592988979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A155559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291526.P5967499001592988979

namespace A291526

/-- `∑[(n-1)*A155559(n)]` -/
def P5967499001592988979.Spec : Prop :=
  ∀ n, P5967499001592988979.a n = A291526 (n + 1)

end A291526

/-! ## A291526.P17357632614677096162

`abs(∑[∑[A001787(n)]]-n)`
-/

namespace A291526.P17357632614677096162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A291526.P17357632614677096162

namespace A291526

/-- `abs(∑[∑[A001787(n)]]-n)` -/
def P17357632614677096162.Spec : Prop :=
  ∀ n, P17357632614677096162.a n = A291526 (n + 1)

end A291526

/-! ## A291526.P10677998350759732889

`∑[2*(n-1)*A131577(n)]`
-/

namespace A291526.P10677998350759732889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n : ℤ) - 1) * A131577 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291526.P10677998350759732889

namespace A291526

/-- `∑[2*(n-1)*A131577(n)]` -/
def P10677998350759732889.Spec : Prop :=
  ∀ n, P10677998350759732889.a n = A291526 (n + 1)

end A291526

/-! ## A291526.P6609586193574551378

`Δ[A360606(n)-n²]`
-/

namespace A291526.P6609586193574551378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360606 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291526.P6609586193574551378

namespace A291526

/-- `Δ[A360606(n)-n²]` -/
def P6609586193574551378.Spec : Prop :=
  ∀ n, P6609586193574551378.a n = A291526 (n + 1)

theorem P6609586193574551378.correct : P6609586193574551378.Spec := by
  intro n
  simp only [A291526, Nat.add_sub_cancel, A291526.P6609586193574551378.f1, A291526.P6609586193574551378.a, A291526.P10642241473967828440.a, A360606, A360606.P14808680459708010105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A291526

/-!
# A291529: Number F(n,h,t) of forests of t (unlabeled) rooted identity trees with n vertices such that h is the maximum of 0 and the tree heights; triangle of triangles F(n,h,t), n>=0, h=0..n, t=0..n-h, read by layers, then by rows.

The programs for A291529, there is no canonical definition to state claims against.
-/

/-! ## A291529.P628738771768087997

`A000007(A056559(n)^A291203(n))`
-/

namespace A291529.P628738771768087997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.roundAway ((A056559 n : ℚ) ^ (A291203 n : ℤ))).toNat

end

end A291529.P628738771768087997

/-! ## A291529.P2145036740813014487

`A000038(A056559(n)^A291203(n))/2`
-/

namespace A291529.P2145036740813014487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (SequenceMachineLib.roundAway ((A056559 n : ℚ) ^ (A291203 n : ℤ))).toNat : ℚ) / 2

end

end A291529.P2145036740813014487

/-! ## A291529.P562762482998084963

`A000122(6*A056559(n)^A291203(n))`
-/

namespace A291529.P562762482998084963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.roundAway (6 * (A056559 n : ℚ) ^ (A291203 n : ℤ))).toNat

end

end A291529.P562762482998084963

/-! ## A291529.P4213316323072790116

`A008683(6*A056559(n)^A291203(n)+6)`
-/

namespace A291529.P4213316323072790116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (6 * (A056559 n : ℚ) ^ (A291203 n : ℤ) + 6)).toNat

end

end A291529.P4213316323072790116

/-! ## A291529.P11396449827208530930

`∑{d}[A056559(n)^A291203(n)+1, A008683(#)]`
-/

namespace A291529.P11396449827208530930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056559 n : ℚ) ^ (A291203 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A008683 d

end

end A291529.P11396449827208530930

/-!
# A291531: Number of Chen primes up to 10^n.

The programs for A291531, there is no canonical definition to state claims against.
-/

/-! ## A291531.P16381492493460542035

`A007508(n+1)+A111067(n+1)+1`
-/

namespace A291531.P16381492493460542035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007508 (n + 1) + (A111067 (n + 1) + 1)

end

end A291531.P16381492493460542035

/-!
# A291532: Number of trees in all forests of (unlabeled) rooted identity trees with n vertices.

The programs for A291532, there is no canonical definition to state claims against.
-/

/-! ## A291532.P87306215424032264

`A259361(A061579(n)+A007162(n))`
-/

namespace A291532.P87306215424032264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A061579 n + A007162 n).toNat

end

end A291532.P87306215424032264

/-! ## A291532.P742234029381643818

`A259361(A137952(n)+A001281(n))`
-/

namespace A291532.P742234029381643818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A137952 n + A001281 n).toNat

end

end A291532.P742234029381643818

/-! ## A291532.P10123349325042671617

`A259361(A137952(n)+A061579(n))`
-/

namespace A291532.P10123349325042671617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A137952 n + A061579 n).toNat

end

end A291532.P10123349325042671617

/-! ## A291532.P548098505535194362

`A000196(A137952(n)-A143335(n))`
-/

namespace A291532.P548098505535194362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A137952 n - A143335 n).toNat

end

end A291532.P548098505535194362

/-! ## A291532.P18062898847674582868

`A003056(A279558(n)-A013596(n))`
-/

namespace A291532.P18062898847674582868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A279558 n - A013596 n).toNat

end

end A291532.P18062898847674582868

/-!
# A291533: Expansion of the series reversion of g.f. for the nonprime numbers (A018252).

The programs for A291533, there is no canonical definition to state claims against.
-/

/-! ## A291533.P14074558856183164546

`A033999(n)*A367218(A071167(n+1)+A062700(n+1))`
-/

namespace A291533.P14074558856183164546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A367218 (A071167 (n + 1) + A062700 (n + 1)).toNat

end

end A291533.P14074558856183164546

/-!
# A291535: Expansion of the series reversion of x*(1 + 2*x)/(1 - x - x^2).

The programs for A291535, there is no canonical definition to state claims against.
-/

/-! ## A291535.P5517087810623707607

`A333956(n+1)-A027870(A080358(n))`
-/

namespace A291535.P5517087810623707607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333956 (n + 1) - A027870 (A080358 n).toNat

end

end A291535.P5517087810623707607

/-!
# A291537: a(n) = 8^n - 3*2^n + 5.

The programs for A291537, the canonical program `A291537.P14366127907905057936` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291537 has offset 1).

The definition of A291537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^(n+1)-3*2^(n+1)+5` (program `A291537.P14366127907905057936`, by `A291537.P14366127907905057936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291537.P14366127907905057936

`8^(n+1)-3*2^(n+1)+5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291537

/-- `8^(n+1)-3*2^(n+1)+5` -/
def P14366127907905057936.Spec : Prop :=
  ∀ n, P14366127907905057936.a n = A291537 (n + 1)

theorem P14366127907905057936.correct : P14366127907905057936.Spec := by
  intro n
  simp only [A291537, Nat.add_sub_cancel]

end A291537

/-! ## A291537.P10474100231214221813

`or(1, A302942(n+1)+2)`
-/

namespace A291537.P10474100231214221813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A302942 (n + 1) + 2)

end

end A291537.P10474100231214221813

namespace A291537

/-- `or(1, A302942(n+1)+2)` -/
def P10474100231214221813.Spec : Prop :=
  ∀ n, P10474100231214221813.a n = A291537 (n + 1)

end A291537

/-! ## A291537.P5489047273427758143

`∑[A291703(n+1)-A302942(n)]`
-/

namespace A291537.P5489047273427758143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291703 (n + 1) - A302942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291537.P5489047273427758143

namespace A291537

/-- `∑[A291703(n+1)-A302942(n)]` -/
def P5489047273427758143.Spec : Prop :=
  ∀ n, P5489047273427758143.a n = A291537 (n + 1)

end A291537

/-! ## A291537.P10614157310505850338

`(2*A020537(n)+5)/and(1, A107464(n))`
-/

namespace A291537.P10614157310505850338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A020537 n + 5 : ℚ) / (Int.land 1 (A107464 n) : ℚ)

end

end A291537.P10614157310505850338

namespace A291537

/-- `(2*A020537(n)+5)/and(1, A107464(n))` -/
def P10614157310505850338.Spec : Prop :=
  ∀ n, P10614157310505850338.a n = (A291537 (n + 1) : ℚ)

end A291537

/-! ## A291537.P15432265519027030236

`(2*A020537(n)+5)/A141044(35*(n+1)-4)`
-/

namespace A291537.P15432265519027030236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A020537 n + 5 : ℚ) / (A141044 (35 * (n + 1) - 4) : ℚ)

end

end A291537.P15432265519027030236

namespace A291537

/-- `(2*A020537(n)+5)/A141044(35*(n+1)-4)` -/
def P15432265519027030236.Spec : Prop :=
  ∀ n, P15432265519027030236.a n = (A291537 (n + 1) : ℚ)

end A291537

/-! ## A291537.P4731846398763829412

`(2*A020537(n)+5)/A026692(A000124(n))`
-/

namespace A291537.P4731846398763829412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A020537 n + 5 : ℚ) / (A026692 (A000124 n).toNat : ℚ)

end

end A291537.P4731846398763829412

namespace A291537

/-- `(2*A020537(n)+5)/A026692(A000124(n))` -/
def P4731846398763829412.Spec : Prop :=
  ∀ n, P4731846398763829412.a n = (A291537 (n + 1) : ℚ)

end A291537

/-!
# A291538: a(n) = PrimePi(n^3) - PrimePi(n)^3, where PrimePi = A000720.

The programs for A291538, the canonical program `A291538.P953882341911641675` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291538 has offset 1).

The definition of A291538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291538.P16423568298833397660

`A291539(n+1)+A291540(n+1)`
-/

namespace A291538.P16423568298833397660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291539 (n + 1) + A291540 (n + 1)

end

end A291538.P16423568298833397660

namespace A291538

/-- `A291539(n+1)+A291540(n+1)` -/
def P16423568298833397660.Spec : Prop :=
  ∀ n, P16423568298833397660.a n = A291538 (n + 1)

theorem P16423568298833397660.correct : P16423568298833397660.Spec := by
  intro n
  simp only [A291538, Nat.add_sub_cancel, A291538.P16423568298833397660.a, A291538.P953882341911641675.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A291539, A291539.P10643058917017634035.a, A291540, A291540.P8988916227830041768.f2, A291540.P8988916227830041768.f1, A291540.P8988916227830041768.a, A291440, A291440.P5300707734010347566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A291538

/-! ## A291538.P953882341911641675

`A000720((n+1)^3)-A000720(n+1)^3`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291538

/-- `A000720((n+1)^3)-A000720(n+1)^3` -/
def P953882341911641675.Spec : Prop :=
  ∀ n, P953882341911641675.a n = A291538 (n + 1)

theorem P953882341911641675.correct : P953882341911641675.Spec := by
  intro n
  simp only [A291538, Nat.add_sub_cancel]

end A291538

/-! ## A291538.P8887673655875900232

`∑[A060199(n)]-A000578(A000720(n+1))`
-/

namespace A291538.P8887673655875900232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000578 (A000720 (n + 1)).toNat

end

end A291538.P8887673655875900232

namespace A291538

/-- `∑[A060199(n)]-A000578(A000720(n+1))` -/
def P8887673655875900232.Spec : Prop :=
  ∀ n, P8887673655875900232.a n = A291538 (n + 1)

end A291538

/-! ## A291538.P10612352299359391901

`A291539(n+1)+A000720(n+1)*A291440(n+1)`
-/

namespace A291538.P10612352299359391901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291539 (n + 1) + A000720 (n + 1) * A291440 (n + 1)

end

end A291538.P10612352299359391901

namespace A291538

/-- `A291539(n+1)+A000720(n+1)*A291440(n+1)` -/
def P10612352299359391901.Spec : Prop :=
  ∀ n, P10612352299359391901.a n = A291538 (n + 1)

end A291538

/-! ## A291538.P17939526732221747192

`A291539(n+1)+∑[char[A020639(n+2)-1]]*A291440(n+1)`
-/

namespace A291538.P17939526732221747192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291539 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A291440 (n + 1)

end

end A291538.P17939526732221747192

namespace A291538

/-- `A291539(n+1)+∑[char[A020639(n+2)-1]]*A291440(n+1)` -/
def P17939526732221747192.Spec : Prop :=
  ∀ n, P17939526732221747192.a n = A291538 (n + 1)

end A291538

/-! ## A291538.P1885273429297581373

`A291539(n+1)+∑[1-char[A018252(n+1)-1]]*A291440(n+1)`
-/

namespace A291538.P1885273429297581373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291539 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A291440 (n + 1)

end

end A291538.P1885273429297581373

namespace A291538

/-- `A291539(n+1)+∑[1-char[A018252(n+1)-1]]*A291440(n+1)` -/
def P1885273429297581373.Spec : Prop :=
  ∀ n, P1885273429297581373.a n = A291538 (n + 1)

end A291538

/-! ## A291538.P5009232495733458734

`A038098(n+1)-A000720(n+1)^3`
-/

namespace A291538.P5009232495733458734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - A000720 (n + 1) ^ 3

end

end A291538.P5009232495733458734

namespace A291538

/-- `A038098(n+1)-A000720(n+1)^3` -/
def P5009232495733458734.Spec : Prop :=
  ∀ n, P5009232495733458734.a n = A291538 (n + 1)

end A291538

/-! ## A291538.P2803443334919670030

`A038098(n+1)-A000578(A000720(n+1))`
-/

namespace A291538.P2803443334919670030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - A000578 (A000720 (n + 1)).toNat

end

end A291538.P2803443334919670030

namespace A291538

/-- `A038098(n+1)-A000578(A000720(n+1))` -/
def P2803443334919670030.Spec : Prop :=
  ∀ n, P2803443334919670030.a n = A291538 (n + 1)

end A291538

/-! ## A291538.P6752364169422412359

`A038098(n+1)-A000578(A230980(n+1))`
-/

namespace A291538.P6752364169422412359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - A000578 (A230980 (n + 1)).toNat

end

end A291538.P6752364169422412359

namespace A291538

/-- `A038098(n+1)-A000578(A230980(n+1))` -/
def P6752364169422412359.Spec : Prop :=
  ∀ n, P6752364169422412359.a n = A291538 (n + 1)

end A291538

/-! ## A291538.P6434125691505714770

`A038098(n+1)-A000578(∑[A010051(n+1)])`
-/

namespace A291538.P6434125691505714770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - A000578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291538.P6434125691505714770

namespace A291538

/-- `A038098(n+1)-A000578(∑[A010051(n+1)])` -/
def P6434125691505714770.Spec : Prop :=
  ∀ n, P6434125691505714770.a n = A291538 (n + 1)

end A291538

/-!
# A291539: a(n) = PrimePi(n^3) - PrimePi(n) * PrimePi(n^2), where PrimePi = A000720.

The programs for A291539, the canonical program `A291539.P10643058917017634035` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291539 has offset 1).

The definition of A291539 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291540, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291539.P10643058917017634035

`A291538(n+1)-A291540(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A291539

/-- `A291538(n+1)-A291540(n+1)` -/
def P10643058917017634035.Spec : Prop :=
  ∀ n, P10643058917017634035.a n = A291539 (n + 1)

theorem P10643058917017634035.correct : P10643058917017634035.Spec := by
  intro n
  simp only [A291539, Nat.add_sub_cancel]

end A291539

/-! ## A291539.P11454375559244627445

`A291538(n+1)+A057428(n)*A291540(n+1)`
-/

namespace A291539.P11454375559244627445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291538 (n + 1) + A057428 n * A291540 (n + 1)

end

end A291539.P11454375559244627445

namespace A291539

/-- `A291538(n+1)+A057428(n)*A291540(n+1)` -/
def P11454375559244627445.Spec : Prop :=
  ∀ n, P11454375559244627445.a n = A291539 (n + 1)

end A291539

/-! ## A291539.P8527290449550413466

`A291538(n+1)-A000720(n+1)*A291440(n+1)`
-/

namespace A291539.P8527290449550413466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291538 (n + 1) - A000720 (n + 1) * A291440 (n + 1)

end

end A291539.P8527290449550413466

namespace A291539

/-- `A291538(n+1)-A000720(n+1)*A291440(n+1)` -/
def P8527290449550413466.Spec : Prop :=
  ∀ n, P8527290449550413466.a n = A291539 (n + 1)

end A291539

/-! ## A291539.P16594473542484379091

`A291538(n+1)-A230980(n+1)*A291440(n+1)`
-/

namespace A291539.P16594473542484379091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291538 (n + 1) - A230980 (n + 1) * A291440 (n + 1)

end

end A291539.P16594473542484379091

namespace A291539

/-- `A291538(n+1)-A230980(n+1)*A291440(n+1)` -/
def P16594473542484379091.Spec : Prop :=
  ∀ n, P16594473542484379091.a n = A291539 (n + 1)

end A291539

/-! ## A291539.P2201561617771696956

`A291538(n+1)-∑[A010051(n+1)]*A291440(n+1)`
-/

namespace A291539.P2201561617771696956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291538 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j) * A291440 (n + 1)

end

end A291539.P2201561617771696956

namespace A291539

/-- `A291538(n+1)-∑[A010051(n+1)]*A291440(n+1)` -/
def P2201561617771696956.Spec : Prop :=
  ∀ n, P2201561617771696956.a n = A291539 (n + 1)

end A291539

/-! ## A291539.P13013899658609815769

`A291538(n+1)-A132090(A000040(n+1))*A291440(n+1)`
-/

namespace A291539.P13013899658609815769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291538 (n + 1) - A132090 (A000040 (n + 1)).toNat * A291440 (n + 1)

end

end A291539.P13013899658609815769

namespace A291539

/-- `A291538(n+1)-A132090(A000040(n+1))*A291440(n+1)` -/
def P13013899658609815769.Spec : Prop :=
  ∀ n, P13013899658609815769.a n = A291539 (n + 1)

end A291539

/-! ## A291539.P6886693279854449507

`A291538(n+1)+(A033270(n+1)+1)*A291440(n+1)*A057428(n)`
-/

namespace A291539.P6886693279854449507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291538 (n + 1) + (A033270 (n + 1) + 1) * A291440 (n + 1) * A057428 n

end

end A291539.P6886693279854449507

namespace A291539

/-- `A291538(n+1)+(A033270(n+1)+1)*A291440(n+1)*A057428(n)` -/
def P6886693279854449507.Spec : Prop :=
  ∀ n, P6886693279854449507.a n = A291539 (n + 1)

end A291539

/-! ## A291539.P7062337212824154139

`A038098(n+1)-A000720(n+1)*A038107(n+1)`
-/

namespace A291539.P7062337212824154139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - A000720 (n + 1) * A038107 (n + 1)

end

end A291539.P7062337212824154139

namespace A291539

/-- `A038098(n+1)-A000720(n+1)*A038107(n+1)` -/
def P7062337212824154139.Spec : Prop :=
  ∀ n, P7062337212824154139.a n = A291539 (n + 1)

end A291539

/-! ## A291539.P2217187350523346418

`A038098(n+1)-A000720(n+1)^3-A291540(n+1)`
-/

namespace A291539.P2217187350523346418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - A000720 (n + 1) ^ 3 - A291540 (n + 1)

end

end A291539.P2217187350523346418

namespace A291539

/-- `A038098(n+1)-A000720(n+1)^3-A291540(n+1)` -/
def P2217187350523346418.Spec : Prop :=
  ∀ n, P2217187350523346418.a n = A291539 (n + 1)

end A291539

/-!
# A291540: a(n) = PrimePi(n) * PrimePi(n^2) - PrimePi(n)^3, where PrimePi = A000720.

The programs for A291540, the canonical program `A291540.P8988916227830041768` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291540 has offset 1).

The definition of A291540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291540.P8988916227830041768

`∑[round(∑{p}[n+1, (#/(n+1))²])]*A291440(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A291540

/-- `∑[round(∑{p}[n+1, (#/(n+1))²])]*A291440(n+1)` -/
def P8988916227830041768.Spec : Prop :=
  ∀ n, P8988916227830041768.a n = A291540 (n + 1)

theorem P8988916227830041768.correct : P8988916227830041768.Spec := by
  intro n
  simp only [A291540, Nat.add_sub_cancel]

end A291540

/-! ## A291540.P16900950459280969751

`A000720(n+1)*A291440(n+1)`
-/

namespace A291540.P16900950459280969751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A291440 (n + 1)

end

end A291540.P16900950459280969751

namespace A291540

/-- `A000720(n+1)*A291440(n+1)` -/
def P16900950459280969751.Spec : Prop :=
  ∀ n, P16900950459280969751.a n = A291540 (n + 1)

end A291540

/-! ## A291540.P12576275038865075459

`∑[A010051(n+1)]*A291440(n+1)`
-/

namespace A291540.P12576275038865075459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A291440 (n + 1)

end

end A291540.P12576275038865075459

namespace A291540

/-- `∑[A010051(n+1)]*A291440(n+1)` -/
def P12576275038865075459.Spec : Prop :=
  ∀ n, P12576275038865075459.a n = A291540 (n + 1)

end A291540

/-! ## A291540.P13899784063385078442

`(A033270(n+1)+1)*A291440(n+1)`
-/

namespace A291540.P13899784063385078442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033270 (n + 1) + 1) * A291440 (n + 1)

end

end A291540.P13899784063385078442

namespace A291540

/-- `(A033270(n+1)+1)*A291440(n+1)` -/
def P13899784063385078442.Spec : Prop :=
  ∀ n, P13899784063385078442.a n = A291540 (n + 1)

end A291540

/-! ## A291540.P6969167429542596539

`∑[char[A007918(n)-1]]*A291440(n+1)`
-/

namespace A291540.P6969167429542596539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A291440 (n + 1)

end

end A291540.P6969167429542596539

namespace A291540

/-- `∑[char[A007918(n)-1]]*A291440(n+1)` -/
def P6969167429542596539.Spec : Prop :=
  ∀ n, P6969167429542596539.a n = A291540 (n + 1)

end A291540

/-! ## A291540.P10938345929308857839

`∑[val(n+1, A151800(n))]*A291440(n+1)`
-/

namespace A291540.P10938345929308857839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A151800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A291440 (n + 1)

end

end A291540.P10938345929308857839

namespace A291540

/-- `∑[val(n+1, A151800(n))]*A291440(n+1)` -/
def P10938345929308857839.Spec : Prop :=
  ∀ n, P10938345929308857839.a n = A291540 (n + 1)

end A291540

/-! ## A291540.P4049889329562324506

`∑[char[A000040(n+1)-1]]*A291440(n+1)`
-/

namespace A291540.P4049889329562324506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A291440 (n + 1)

end

end A291540.P4049889329562324506

namespace A291540

/-- `∑[char[A000040(n+1)-1]]*A291440(n+1)` -/
def P4049889329562324506.Spec : Prop :=
  ∀ n, P4049889329562324506.a n = A291540 (n + 1)

end A291540

/-! ## A291540.P13359218524561384496

`∑[char[A006530(n+2)-1]]*A291440(n+1)`
-/

namespace A291540.P13359218524561384496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A291440 (n + 1)

end

end A291540.P13359218524561384496

namespace A291540

/-- `∑[char[A006530(n+2)-1]]*A291440(n+1)` -/
def P13359218524561384496.Spec : Prop :=
  ∀ n, P13359218524561384496.a n = A291540 (n + 1)

end A291540

/-! ## A291540.P13087720310917859323

`∑[char[A020639(n+2)-1]]*A291440(n+1)`
-/

namespace A291540.P13087720310917859323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A291440 (n + 1)

end

end A291540.P13087720310917859323

namespace A291540

/-- `∑[char[A020639(n+2)-1]]*A291440(n+1)` -/
def P13087720310917859323.Spec : Prop :=
  ∀ n, P13087720310917859323.a n = A291540 (n + 1)

end A291540

/-! ## A291540.P435664659615027376

`A230980(n+1)*A291440(n+1)`
-/

namespace A291540.P435664659615027376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) * A291440 (n + 1)

end

end A291540.P435664659615027376

namespace A291540

/-- `A230980(n+1)*A291440(n+1)` -/
def P435664659615027376.Spec : Prop :=
  ∀ n, P435664659615027376.a n = A291540 (n + 1)

end A291540

/-! ## A291540.P12594304080854624151

`A132090(A000040(n+1))*A291440(n+1)`
-/

namespace A291540.P12594304080854624151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (A000040 (n + 1)).toNat * A291440 (n + 1)

end

end A291540.P12594304080854624151

namespace A291540

/-- `A132090(A000040(n+1))*A291440(n+1)` -/
def P12594304080854624151.Spec : Prop :=
  ∀ n, P12594304080854624151.a n = A291540 (n + 1)

end A291540

/-! ## A291540.P9734616804652316724

`A291538(n+1)-A291539(n+1)`
-/

namespace A291540.P9734616804652316724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291538 (n + 1) - A291539 (n + 1)

end

end A291540.P9734616804652316724

namespace A291540

/-- `A291538(n+1)-A291539(n+1)` -/
def P9734616804652316724.Spec : Prop :=
  ∀ n, P9734616804652316724.a n = A291540 (n + 1)

theorem P9734616804652316724.correct : P9734616804652316724.Spec := by
  intro n
  simp only [A291540, Nat.add_sub_cancel, A291540.P9734616804652316724.a, A291540.P8988916227830041768.f2, A291540.P8988916227830041768.f1, A291540.P8988916227830041768.a, A291440, A291440.P5300707734010347566.a, A291538, A291538.P953882341911641675.a, A291539, A291539.P10643058917017634035.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A291540

/-!
# A291541: a(n) = prime(n) * prime(n^2) - prime(n^3).

The programs for A291541, there is no canonical definition to state claims against.
-/

/-! ## A291541.P12103612875126673029

`2*A143680(n+1)-A291542(n+1)`
-/

namespace A291541.P12103612875126673029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143680 (n + 1) - A291542 (n + 1)

end

end A291541.P12103612875126673029

/-! ## A291541.P16791662804848407693

`A000040(n+1)*A011757(n+1)-A055875(n+1)`
-/

namespace A291541.P16791662804848407693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A011757 (n + 1) - A055875 (n + 1)

end

end A291541.P16791662804848407693

/-! ## A291541.P12041551466898812531

`A262199(n+1)-A291542(n+1)`
-/

namespace A291541.P12041551466898812531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262199 (n + 1) - A291542 (n + 1)

end

end A291541.P12041551466898812531

/-! ## A291541.P11913756474984740809

`A262199(n+1)-Δ[A007504(n)]*A123914(n+1)`
-/

namespace A291541.P11913756474984740809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262199 (n + 1) - (f1 (n + 1) - f1 n) * A123914 (n + 1)

end

end A291541.P11913756474984740809

/-! ## A291541.P11852190246775480043

`A262199(n+1)-A000040(n+1)*A123914(n+1)`
-/

namespace A291541.P11852190246775480043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262199 (n + 1) - A000040 (n + 1) * A123914 (n + 1)

end

end A291541.P11852190246775480043

/-!
# A291542: a(n) = prime(n)^3 - prime(n) * prime(n^2).

The programs for A291542, the canonical program `A291542.P4667706651531001018` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291542 has offset 1).

The definition of A291542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291542.P18341834086786775050

`Δ[A007504(n)]*A123914(n+1)`
-/

namespace A291542.P18341834086786775050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A123914 (n + 1)

end

end A291542.P18341834086786775050

namespace A291542

/-- `Δ[A007504(n)]*A123914(n+1)` -/
def P18341834086786775050.Spec : Prop :=
  ∀ n, P18341834086786775050.a n = A291542 (n + 1)

end A291542

/-! ## A291542.P4667706651531001018

`A000040(n+1)*A123914(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A291542

/-- `A000040(n+1)*A123914(n+1)` -/
def P4667706651531001018.Spec : Prop :=
  ∀ n, P4667706651531001018.a n = A291542 (n + 1)

theorem P4667706651531001018.correct : P4667706651531001018.Spec := by
  intro n
  simp only [A291542, Nat.add_sub_cancel]

end A291542

/-! ## A291542.P1292633045368757737

`abs(Δ[A022837(n)])*A123914(n+1)`
-/

namespace A291542.P1292633045368757737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * A123914 (n + 1)

end

end A291542.P1292633045368757737

namespace A291542

/-- `abs(Δ[A022837(n)])*A123914(n+1)` -/
def P1292633045368757737.Spec : Prop :=
  ∀ n, P1292633045368757737.a n = A291542 (n + 1)

end A291542

/-! ## A291542.P8810370744023231763

`abs(A273960(n+1))*A123914(n+1)`
-/

namespace A291542.P8810370744023231763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (n + 1)| * A123914 (n + 1)

end

end A291542.P8810370744023231763

namespace A291542

/-- `abs(A273960(n+1))*A123914(n+1)` -/
def P8810370744023231763.Spec : Prop :=
  ∀ n, P8810370744023231763.a n = A291542 (n + 1)

end A291542

/-! ## A291542.P8527454440918663222

`sqrt(A001248(n+1))*A123914(n+1)`
-/

namespace A291542.P8527454440918663222
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A123914 (n + 1) : ℝ)

end

end A291542.P8527454440918663222

namespace A291542

/-- `sqrt(A001248(n+1))*A123914(n+1)` -/
def P8527454440918663222.Spec : Prop :=
  ∀ n, P8527454440918663222.a n = (A291542 (n + 1) : ℝ)

end A291542

/-! ## A291542.P18234864669673421878

`(A006093(n+1)+1)*A123914(n+1)`
-/

namespace A291542.P18234864669673421878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A123914 (n + 1)

end

end A291542.P18234864669673421878

namespace A291542

/-- `(A006093(n+1)+1)*A123914(n+1)` -/
def P18234864669673421878.Spec : Prop :=
  ∀ n, P18234864669673421878.a n = A291542 (n + 1)

theorem P18234864669673421878.correct : P18234864669673421878.Spec := by
  intro n
  simp only [A291542, Nat.add_sub_cancel, A291542.P18234864669673421878.a, A291542.P4667706651531001018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A123914, A123914.P8963059744305604548.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291542

/-! ## A291542.P6089199903882648745

`(A008864(n+1)-1)*A123914(n+1)`
-/

namespace A291542.P6089199903882648745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A123914 (n + 1)

end

end A291542.P6089199903882648745

namespace A291542

/-- `(A008864(n+1)-1)*A123914(n+1)` -/
def P6089199903882648745.Spec : Prop :=
  ∀ n, P6089199903882648745.a n = A291542 (n + 1)

theorem P6089199903882648745.correct : P6089199903882648745.Spec := by
  intro n
  simp only [A291542, Nat.add_sub_cancel, A291542.P6089199903882648745.a, A291542.P4667706651531001018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A123914, A123914.P8963059744305604548.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291542

/-! ## A291542.P2264687932092609803

`(A052147(n+1)-2)*A123914(n+1)`
-/

namespace A291542.P2264687932092609803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052147 (n + 1) - 2) * A123914 (n + 1)

end

end A291542.P2264687932092609803

namespace A291542

/-- `(A052147(n+1)-2)*A123914(n+1)` -/
def P2264687932092609803.Spec : Prop :=
  ∀ n, P2264687932092609803.a n = A291542 (n + 1)

theorem P2264687932092609803.correct : P2264687932092609803.Spec := by
  intro n
  simp only [A291542, Nat.add_sub_cancel, A291542.P2264687932092609803.a, A291542.P4667706651531001018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P6151996953021184291.f1, A052147.P6151996953021184291.a, A123914, A123914.P8963059744305604548.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291542

/-! ## A291542.P7000367334920698690

`(A113935(n+1)-3)*A123914(n+1)`
-/

namespace A291542.P7000367334920698690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113935 (n + 1) - 3) * A123914 (n + 1)

end

end A291542.P7000367334920698690

namespace A291542

/-- `(A113935(n+1)-3)*A123914(n+1)` -/
def P7000367334920698690.Spec : Prop :=
  ∀ n, P7000367334920698690.a n = A291542 (n + 1)

theorem P7000367334920698690.correct : P7000367334920698690.Spec := by
  intro n
  simp only [A291542, Nat.add_sub_cancel, A291542.P7000367334920698690.a, A291542.P4667706651531001018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P5086893406653941242.a, A123914, A123914.P8963059744305604548.a, A000290, A000290.P12206242496348924484.a, A052147, A052147.P6151996953021184291.f1, A052147.P6151996953021184291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291542

/-! ## A291542.P1981140955202219987

`(A007504(n+1)-A007504(n))*A123914(n+1)`
-/

namespace A291542.P1981140955202219987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * A123914 (n + 1)

end

end A291542.P1981140955202219987

namespace A291542

/-- `(A007504(n+1)-A007504(n))*A123914(n+1)` -/
def P1981140955202219987.Spec : Prop :=
  ∀ n, P1981140955202219987.a n = A291542 (n + 1)

end A291542

/-! ## A291542.P8098611616095474172

`(A001248(n+1)-A011757(n+1))*A000040(n+1)`
-/

namespace A291542.P8098611616095474172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) - A011757 (n + 1)) * A000040 (n + 1)

end

end A291542.P8098611616095474172

namespace A291542

/-- `(A001248(n+1)-A011757(n+1))*A000040(n+1)` -/
def P8098611616095474172.Spec : Prop :=
  ∀ n, P8098611616095474172.a n = A291542 (n + 1)

theorem P8098611616095474172.correct : P8098611616095474172.Spec := by
  intro n
  simp only [A291542, Nat.add_sub_cancel, A291542.P8098611616095474172.a, A291542.P4667706651531001018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A011757, A011757.P11703475201892443194.a, A123914, A123914.P8963059744305604548.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291542

/-! ## A291542.P2816544473004446681

`A030078(n+1)-A000040(n+1)*A011757(n+1)`
-/

namespace A291542.P2816544473004446681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A000040 (n + 1) * A011757 (n + 1)

end

end A291542.P2816544473004446681

namespace A291542

/-- `A030078(n+1)-A000040(n+1)*A011757(n+1)` -/
def P2816544473004446681.Spec : Prop :=
  ∀ n, P2816544473004446681.a n = A291542 (n + 1)

theorem P2816544473004446681.correct : P2816544473004446681.Spec := by
  intro n
  simp only [A291542, Nat.add_sub_cancel, A291542.P2816544473004446681.a, A291542.P4667706651531001018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011757, A011757.P11703475201892443194.a, A030078, A030078.P13819432151207990454.a, A123914, A123914.P8963059744305604548.a, A000290, A000290.P12206242496348924484.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291542

/-! ## A291542.P17817065324432327850

`(A008864(n+1)-1)*(A106587(n+1)-(A011757(n+1)+(n+1)²))`
-/

namespace A291542.P17817065324432327850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * (A106587 (n + 1) - (A011757 (n + 1) + ((n + 1) ^ 2 : ℤ)))

end

end A291542.P17817065324432327850

namespace A291542

/-- `(A008864(n+1)-1)*(A106587(n+1)-(A011757(n+1)+(n+1)²))` -/
def P17817065324432327850.Spec : Prop :=
  ∀ n, P17817065324432327850.a n = A291542 (n + 1)

theorem P17817065324432327850.correct : P17817065324432327850.Spec := by
  intro n
  simp only [A291542, Nat.add_sub_cancel, A291542.P17817065324432327850.a, A291542.P4667706651531001018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A011757, A011757.P11703475201892443194.a, A106587, A106587.P10471474912979414832.a, A123914, A123914.P8963059744305604548.a, A000290, A000290.P12206242496348924484.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291542

/-! ## A291542.P4012751766015210458

`A000027(∏{p}[p?[n-(-1)^n], #])*A123914(n+1)`
-/

namespace A291542.P4012751766015210458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) * A123914 (n + 1)

end

end A291542.P4012751766015210458

namespace A291542

/-- `A000027(∏{p}[p?[n-(-1)^n], #])*A123914(n+1)` -/
def P4012751766015210458.Spec : Prop :=
  ∀ n, P4012751766015210458.a n = A291542 (n + 1)

end A291542

/-! ## A291542.P5811817766196634562

`A098962(A099619(n+1))*A123914(n+1)`
-/

namespace A291542.P5811817766196634562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098962 (A099619 (n + 1)).toNat * A123914 (n + 1)

end

end A291542.P5811817766196634562

namespace A291542

/-- `A098962(A099619(n+1))*A123914(n+1)` -/
def P5811817766196634562.Spec : Prop :=
  ∀ n, P5811817766196634562.a n = A291542 (n + 1)

end A291542

/-! ## A291542.P17689769974157096572

`p?[or(n+1, A265722(n))]*A123914(n+1)`
-/

namespace A291542.P17689769974157096572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A265722 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A123914 (n + 1)

end

end A291542.P17689769974157096572

namespace A291542

/-- `p?[or(n+1, A265722(n))]*A123914(n+1)` -/
def P17689769974157096572.Spec : Prop :=
  ∀ n, P17689769974157096572.a n = A291542 (n + 1)

end A291542

/-! ## A291542.P9826754814648289576

`A123914(n+1)*A298865(A298866(n+1))`
-/

namespace A291542.P9826754814648289576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123914 (n + 1) * A298865 (A298866 (n + 1)).toNat

end

end A291542.P9826754814648289576

namespace A291542

/-- `A123914(n+1)*A298865(A298866(n+1))` -/
def P9826754814648289576.Spec : Prop :=
  ∀ n, P9826754814648289576.a n = A291542 (n + 1)

end A291542

/-! ## A291542.P6260390196654921283

`2*A143680(n+1)-A291541(n+1)`
-/

namespace A291542.P6260390196654921283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143680 (n + 1) - A291541 (n + 1)

end

end A291542.P6260390196654921283

namespace A291542

/-- `2*A143680(n+1)-A291541(n+1)` -/
def P6260390196654921283.Spec : Prop :=
  ∀ n, P6260390196654921283.a n = A291542 (n + 1)

end A291542

/-! ## A291542.P18401709604387792402

`A262199(n+1)-A291541(n+1)`
-/

namespace A291542.P18401709604387792402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262199 (n + 1) - A291541 (n + 1)

end

end A291542.P18401709604387792402

namespace A291542

/-- `A262199(n+1)-A291541(n+1)` -/
def P18401709604387792402.Spec : Prop :=
  ∀ n, P18401709604387792402.a n = A291542 (n + 1)

end A291542

/-!
# A291544: a(n) = Sum_{k=1..n} A054408(k).

The programs for A291544, there is no canonical definition to state claims against.
-/

/-! ## A291544.P7091840368357658607

`∑[A054408(n+1)]`
-/

namespace A291544.P7091840368357658607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291544.P7091840368357658607

/-! ## A291544.P12029439840206217175

`A073659(n+1)+a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A291544.P12029439840206217175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A073659 (n + 1) + a (n - 1)

end

end A291544.P12029439840206217175

/-! ## A291544.P13864504874289754666

`A291546(n+1)+A000007(n)`
-/

namespace A291544.P13864504874289754666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291546 (n + 1) + A000007 n

end

end A291544.P13864504874289754666

/-! ## A291544.P7000436928520248647

`A054977(n)*A291546(n+1)`
-/

namespace A291544.P7000436928520248647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A291546 (n + 1)

end

end A291544.P7000436928520248647

/-! ## A291544.P4086110845482675051

`A010051(2*(n+1))+∑[A073659(n+1)]`
-/

namespace A291544.P4086110845482675051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291544.P4086110845482675051

/-! ## A291544.P8410200557310036895

`A291546(n+2)-A054408(n+2)`
-/

namespace A291544.P8410200557310036895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291546 (n + 2) - A054408 (n + 2)

end

end A291544.P8410200557310036895

/-! ## A291544.P17446150554406455431

`A291546(n+1)/A054408(n+2)*A073659(n+2)`
-/

namespace A291544.P17446150554406455431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291546 (n + 1) : ℚ) / (A054408 (n + 2) : ℚ) * (A073659 (n + 2) : ℚ)

end

end A291544.P17446150554406455431

/-! ## A291544.P4611158654017008194

`∑[A181440(A073659(n+1))]`
-/

namespace A291544.P4611158654017008194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A073659 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291544.P4611158654017008194

/-! ## A291544.P6847901425230802025

`A000010(∑[A073659(n+1)])+1`
-/

namespace A291544.P6847901425230802025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A291544.P6847901425230802025

/-! ## A291544.P14555725422583886197

`A006530(2*A291546(n+1))`
-/

namespace A291544.P14555725422583886197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A291546 (n + 1)).toNat

end

end A291544.P14555725422583886197

/-! ## A291544.P1761459365504363505

`A006530(lcm(2, A291546(n+1)))`
-/

namespace A291544.P1761459365504363505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A291546 (n + 1)))

end

end A291544.P1761459365504363505

/-! ## A291544.P16931719528289856617

`A000010(2*A291546(n+1))+1`
-/

namespace A291544.P16931719528289856617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A291546 (n + 1)).toNat + 1

end

end A291544.P16931719528289856617

/-! ## A291544.P1782265214477448907

`A006530(A291546(n+1)+A291546(n+1))`
-/

namespace A291544.P1782265214477448907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A291546 (n + 1) + A291546 (n + 1)).toNat

end

end A291544.P1782265214477448907

/-! ## A291544.P4189360640596585236

`A007918(A291546(n+1))`
-/

namespace A291544.P4189360640596585236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A291546 (n + 1)).toNat

end

end A291544.P4189360640596585236

/-!
# A291546: a(n) = Sum_{k=1..n} A073659(k).

The programs for A291546, there is no canonical definition to state claims against.
-/

/-! ## A291546.P13671091464730230668

`∑[A073659(n+1)]`
-/

namespace A291546.P13671091464730230668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291546.P13671091464730230668

/-! ## A291546.P16284857590457154576

`A054408(n+1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A291546.P16284857590457154576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A054408 (n + 1) + a (n - 1)

end

end A291546.P16284857590457154576

/-! ## A291546.P2006768676390836655

`A291544(n+1)-A000007(n)`
-/

namespace A291546.P2006768676390836655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291544 (n + 1) - A000007 n

end

end A291546.P2006768676390836655

/-! ## A291546.P15218576596145600897

`A291544(n+1)/A054977(n)`
-/

namespace A291546.P15218576596145600897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291544 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A291546.P15218576596145600897

/-! ## A291546.P6543292601846845785

`∑[A054408(n+1)]-A000007(n)`
-/

namespace A291546.P6543292601846845785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000007 n

end

end A291546.P6543292601846845785

/-! ## A291546.P2092523552707405377

`A291544(n+2)-A073659(n+2)`
-/

namespace A291546.P2092523552707405377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291544 (n + 2) - A073659 (n + 2)

end

end A291546.P2092523552707405377

/-! ## A291546.P9488407228254517227

`A291544(n+1)/A073659(n+2)*A054408(n+2)`
-/

namespace A291546.P9488407228254517227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291544 (n + 1) : ℚ) / (A073659 (n + 2) : ℚ) * (A054408 (n + 2) : ℚ)

end

end A291546.P9488407228254517227

/-! ## A291546.P6184305547423336813

`∑[A181440(A054408(n+1))]`
-/

namespace A291546.P6184305547423336813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A054408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291546.P6184305547423336813

/-! ## A291546.P3215441904007292355

`A291544(n+1)-and(1, A007466(n+1))`
-/

namespace A291546.P3215441904007292355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291544 (n + 1) - Int.land 1 (A007466 (n + 1))

end

end A291546.P3215441904007292355

/-! ## A291546.P4779294651175407426

`A000265(A291544(n+1))`
-/

namespace A291546.P4779294651175407426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A291544 (n + 1)).toNat

end

end A291546.P4779294651175407426

/-! ## A291546.P17423076761107815383

`A000265(∑[A054408(n+1)])`
-/

namespace A291546.P17423076761107815383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291546.P17423076761107815383

/-!
# A291547: a(n) = ((2*n-1)!!)^n.

The programs for A291547, there is no canonical definition to state claims against.
-/

/-! ## A291547.P14801281682302958885

`∏[Δ[n²]]^(n+1)`
-/

namespace A291547.P14801281682302958885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A291547.P14801281682302958885

/-! ## A291547.P10205607936102810233

`record[(-∏[-n^(n%2)])^(n-gcd(n, ∑[n]))]`
-/

namespace A291547.P10205607936102810233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ (n % 2) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-(∏ j ∈ Finset.range (n + 1), f2 j) : ℤ) : ℚ) ^ ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291547.P10205607936102810233

/-! ## A291547.P4522905076514650132

`record[A001497(n)^floor(sqrt(2*n))]`
-/

namespace A291547.P4522905076514650132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n ^ Nat.sqrt (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291547.P4522905076514650132

/-! ## A291547.P14448585620383079891

`record[abs(A123022(n+3))^ceil(n/2)]`
-/

namespace A291547.P14448585620383079891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A123022 (n + 3)| : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291547.P14448585620383079891

/-! ## A291547.P11193459054891194259

`∏[lcm(2*n+1, (2*n+1)^(n-1)*∏[2*n+1])*A005408(n)]`
-/

namespace A291547.P11193459054891194259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * n + 1 : ℤ) (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ))) : ℤ) * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A291547.P11193459054891194259

/-!
# A291549: Numbers n such that both phi(n) and psi(n) are perfect squares.

The programs for A291549, the canonical program `A291549.P17778341340060570744` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291549 has offset 1).

The definition of A291549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291549.P17778341340060570744

`∩[A039770(n+1), A291167(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A291549

/-- `∩[A039770(n+1), A291167(n+1)]` -/
def P17778341340060570744.Spec : Prop :=
  ∀ n, (P17778341340060570744.a n : ℤ) = A291549 (n + 1)

theorem P17778341340060570744.correct : P17778341340060570744.Spec := by
  intro n
  simp only [A291549, Nat.add_sub_cancel]

end A291549

/-!
# A291552: Expansion of (1/(1 - x))*Product_{k>=1} 1/(1 - x^k)^p(k), where p(k) is the number of partitions of k (A000041).

The programs for A291552, there is no canonical definition to state claims against.
-/

/-! ## A291552.P10732207543341528805

`∑[A001970(n)]`
-/

namespace A291552.P10732207543341528805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291552.P10732207543341528805

/-! ## A291552.P3005148752782739635

`∑[∑[A317911(n)]]`
-/

namespace A291552.P3005148752782739635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291552.P3005148752782739635

/-! ## A291552.P3160848097811691328

`A001970(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A291552.P3160848097811691328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001970 n + a (A023443 n).toNat

end

end A291552.P3160848097811691328

/-! ## A291552.P73559858327688964

`a(n-1)+A001970(n)+1-A057427(n)` with `a(0)=1`
-/

namespace A291552.P73559858327688964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001970 n + (1 - A057427 n))

end

end A291552.P73559858327688964

/-! ## A291552.P10375750239701099942

`∑[A290353(A000217(n+4)-4)]`
-/

namespace A291552.P10375750239701099942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000217 (n + 4) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291552.P10375750239701099942

/-!
# A291553: Column 3 of A060244.

The programs for A291553, there is no canonical definition to state claims against.
-/

/-! ## A291553.P15016931926666391347

`A060244(abs(3-∑[n+2]))`
-/

namespace A291553.P15016931926666391347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060244 |3 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A291553.P15016931926666391347

/-! ## A291553.P13860951950537990492

`∑[∑[A240056(n)-A240486(n)]]`
-/

namespace A291553.P13860951950537990492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240056 n - A240486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291553.P13860951950537990492

/-! ## A291553.P17324467583671402769

`A000196(C(A014968(n), 2))`
-/

namespace A291553.P17324467583671402769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.choose (A014968 n).toNat 2)

end

end A291553.P17324467583671402769

/-! ## A291553.P13749924846100194862

`A003059(A190376(n))-A299702(n+1)`
-/

namespace A291553.P13749924846100194862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A190376 n).toNat - A299702 (n + 1)

end

end A291553.P13749924846100194862

/-! ## A291553.P12769361637263257502

`or(A207033(n+1), A351726(A140827(n)))`
-/

namespace A291553.P12769361637263257502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A207033 (n + 1)) (A351726 (A140827 n).toNat)

end

end A291553.P12769361637263257502

/-!
# A291554: Primes q for which there exists a prime p < q such that 2^q == 2^p (mod pq).

The programs for A291554, there is no canonical definition to state claims against.
-/

/-! ## A291554.P10597014856583553877

`∩[A082595(n+1), A139254(n+1)]`
-/

namespace A291554.P10597014856583553877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291554.P10597014856583553877

/-! ## A291554.P8749169502899322290

`filter[A082595(n+3), A189301(#)]`
-/

namespace A291554.P8749169502899322290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082595 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189301 (f1 j).toNat = 1) n)

end

end A291554.P8749169502899322290

/-!
# A291556: Square array A(n,k), n>=0, k>=0, read by antidiagonals: A(n,k) = (n!)^k * Sum_{i=1..n} 1/i^k.

The programs for A291556, there is no canonical definition to state claims against.
-/

/-! ## A291556.P13893234477135766335

`A286552(A141660(n+1)%A091100(n+1))-A355614(n)`
-/

namespace A291556.P13893234477135766335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 (Int.tmod (A141660 (n + 1)) (A091100 (n + 1))).toNat - A355614 n

end

end A291556.P13893234477135766335

/-! ## A291556.P3143600213827420303

`A242379(A010894(3*n+1)+n)`
-/

namespace A291556.P3143600213827420303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242379 (A010894 (3 * n + 1 + 21) + (n : ℤ)).toNat

end

end A291556.P3143600213827420303

/-! ## A291556.P13254826092009749361

`A242379(A185213(n))+A103438(n)`
-/

namespace A291556.P13254826092009749361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242379 (A185213 n).toNat + A103438 n

end

end A291556.P13254826092009749361

/-! ## A291556.P16838220164579608538

`A316269(n+2)+A000120(A185213(n))`
-/

namespace A291556.P16838220164579608538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316269 (n + 2) + A000120 (A185213 n).toNat

end

end A291556.P16838220164579608538

/-! ## A291556.P2680288951482849015

`A007088(A144313(3*n+5))%A257258(n+1)`
-/

namespace A291556.P2680288951482849015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (A144313 (3 * n + 5)).toNat) (A257258 (n + 1))

end

end A291556.P2680288951482849015

/-!
# A291557: a(n) = 23*2^n - 1.

The programs for A291557, the canonical program `A291557.P6761089250167112644` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291557 has offset 0).

The definition of A291557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `23*2^n-1` (program `A291557.P6761089250167112644`, by `A291557.P6761089250167112644.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291557.P6761089250167112644

`23*2^n-1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291557

/-- `23*2^n-1` -/
def P6761089250167112644.Spec : Prop :=
  ∀ n, P6761089250167112644.a n = A291557 n

theorem P6761089250167112644.correct : P6761089250167112644.Spec := by
  intro n
  simp only [A291557]

end A291557

/-! ## A291557.P3935105587645638091

`ogf((22-21x)/(1-3x+2x^2))`
-/

namespace A291557.P3935105587645638091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [22, -21] [1, -3, 2] n

end

end A291557.P3935105587645638091

namespace A291557

/-- `ogf((22-21x)/(1-3x+2x^2))` -/
def P3935105587645638091.Spec : Prop :=
  ∀ n, P3935105587645638091.a n = A291557 n

end A291557

/-! ## A291557.P12656597086597262406

`or(1, 2*a(n-1))` with `a(0)=22`
-/

namespace A291557.P12656597086597262406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A291557.P12656597086597262406

namespace A291557

/-- `or(1, 2*a(n-1))` -/
def P12656597086597262406.Spec : Prop :=
  ∀ n, (P12656597086597262406.a n : ℤ) = A291557 n

end A291557

/-! ## A291557.P1372864158846174415

`xor(1, 2*a(n-1))` with `a(0)=22`
-/

namespace A291557.P1372864158846174415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A291557.P1372864158846174415

namespace A291557

/-- `xor(1, 2*a(n-1))` -/
def P1372864158846174415.Spec : Prop :=
  ∀ n, (P1372864158846174415.a n : ℤ) = A291557 n

end A291557

/-! ## A291557.P16852660987780758135

`∑[2*a(n-1)]` with `a(0)=22, a(1)=23`
-/

namespace A291557.P16852660987780758135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [22, 23] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291557.P16852660987780758135

namespace A291557

/-- `∑[2*a(n-1)]` -/
def P16852660987780758135.Spec : Prop :=
  ∀ n, (P16852660987780758135.a n : ℤ) = A291557 n

end A291557

/-! ## A291557.P7416821436531712810

`xor(A020707(n), A198276(n))`
-/

namespace A291557.P7416821436531712810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 n) (A198276 n)

end

end A291557.P7416821436531712810

namespace A291557

/-- `xor(A020707(n), A198276(n))` -/
def P7416821436531712810.Spec : Prop :=
  ∀ n, P7416821436531712810.a n = A291557 n

end A291557

/-! ## A291557.P3981359392786648308

`or(A005015(n+1), A198275(n))`
-/

namespace A291557.P3981359392786648308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005015 (n + 1)) (A198275 n)

end

end A291557.P3981359392786648308

namespace A291557

/-- `or(A005015(n+1), A198275(n))` -/
def P3981359392786648308.Spec : Prop :=
  ∀ n, P3981359392786648308.a n = A291557 n

end A291557

/-! ## A291557.P10440084388620768284

`or(A007283(n+1), A198275(n))`
-/

namespace A291557.P10440084388620768284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007283 (n + 1)) (A198275 n)

end

end A291557.P10440084388620768284

namespace A291557

/-- `or(A007283(n+1), A198275(n))` -/
def P10440084388620768284.Spec : Prop :=
  ∀ n, P10440084388620768284.a n = A291557 n

end A291557

/-! ## A291557.P14796736936828719279

`xor(A091629(n+1), A198275(n))`
-/

namespace A291557.P14796736936828719279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091629 (n + 1)) (A198275 n)

end

end A291557.P14796736936828719279

namespace A291557

/-- `xor(A091629(n+1), A198275(n))` -/
def P14796736936828719279.Spec : Prop :=
  ∀ n, P14796736936828719279.a n = A291557 n

end A291557

/-! ## A291557.P4816480034351504953

`xor(A175805(n), A126646(n+1))`
-/

namespace A291557.P4816480034351504953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A175805 n) (A126646 (n + 1))

end

end A291557.P4816480034351504953

namespace A291557

/-- `xor(A175805(n), A126646(n+1))` -/
def P4816480034351504953.Spec : Prop :=
  ∀ n, P4816480034351504953.a n = A291557 n

end A291557

/-! ## A291557.P176322774568505103

`xor(A020707(n)-1, A175805(n))`
-/

namespace A291557.P176322774568505103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 n - 1) (A175805 n)

end

end A291557.P176322774568505103

namespace A291557

/-- `xor(A020707(n)-1, A175805(n))` -/
def P176322774568505103.Spec : Prop :=
  ∀ n, P176322774568505103.a n = A291557 n

end A291557

/-! ## A291557.P8739312688996342563

`xor(A110287(n), A126646(n+2))`
-/

namespace A291557.P8739312688996342563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110287 n) (A126646 (n + 2))

end

end A291557.P8739312688996342563

namespace A291557

/-- `xor(A110287(n), A126646(n+2))` -/
def P8739312688996342563.Spec : Prop :=
  ∀ n, P8739312688996342563.a n = A291557 n

end A291557

/-! ## A291557.P3825302524770381732

`or(2*A005015(n), A198275(n))`
-/

namespace A291557.P3825302524770381732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A005015 n) (A198275 n)

end

end A291557.P3825302524770381732

namespace A291557

/-- `or(2*A005015(n), A198275(n))` -/
def P3825302524770381732.Spec : Prop :=
  ∀ n, P3825302524770381732.a n = A291557 n

end A291557

/-! ## A291557.P13339930347658098907

`or(2*A007283(n), A198275(n))`
-/

namespace A291557.P13339930347658098907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A007283 n) (A198275 n)

end

end A291557.P13339930347658098907

namespace A291557

/-- `or(2*A007283(n), A198275(n))` -/
def P13339930347658098907.Spec : Prop :=
  ∀ n, P13339930347658098907.a n = A291557 n

end A291557

/-! ## A291557.P16585372703346769039

`xor(A091629(n+1)-1, A110288(n))`
-/

namespace A291557.P16585372703346769039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091629 (n + 1) - 1) (A110288 n)

end

end A291557.P16585372703346769039

namespace A291557

/-- `xor(A091629(n+1)-1, A110288(n))` -/
def P16585372703346769039.Spec : Prop :=
  ∀ n, P16585372703346769039.a n = A291557 n

end A291557

/-! ## A291557.P9849731752391174424

`(A171389(n+1)+A126646(n+1))/2`
-/

namespace A291557.P9849731752391174424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171389 (n + 1) + A126646 (n + 1) : ℚ) / 2

end

end A291557.P9849731752391174424

namespace A291557

/-- `(A171389(n+1)+A126646(n+1))/2` -/
def P9849731752391174424.Spec : Prop :=
  ∀ n, P9849731752391174424.a n = (A291557 n : ℚ)

theorem P9849731752391174424.correct : P9849731752391174424.Spec := by
  intro n
  simp only [A291557, Nat.add_sub_cancel, A291557.P9849731752391174424.a, A291557.P6761089250167112644.a, A126646, A126646.P3746310572697910447.a, A171389, A171389.P11836700993274447639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A291557

/-!
# A291558: O.g.f.: exp( Sum_{n>=1} A251658(n) * x^n/n ), where A251658(n) = Sum_{k=1..n} C(n,k) * sigma(k)^(n-k).

The programs for A291558, there is no canonical definition to state claims against.
-/

/-! ## A291558.P2855401252527591251

`A210357((n+2)*a(n-1)+1)-2` with `a(0)=1`
-/

namespace A291558.P2855401252527591251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210357 ((n + 2 : ℤ) * a (n - 1) + 1).toNat - 2

end

end A291558.P2855401252527591251

/-! ## A291558.P3635877387698033802

`A008679(7*A323667(n))`
-/

namespace A291558.P3635877387698033802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (7 * A323667 n).toNat

end

end A291558.P3635877387698033802

/-! ## A291558.P15983543113153635669

`A256208(n)+A213725(A001339(n))`
-/

namespace A291558.P15983543113153635669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256208 n + A213725 (A001339 n).toNat

end

end A291558.P15983543113153635669

/-!
# A291559: Total height of all (unlabeled) rooted identity trees with n vertices.

The programs for A291559, there is no canonical definition to state claims against.
-/

/-! ## A291559.P4467340797867510760

`A243283(A148375(n))%A000085(n)`
-/

namespace A291559.P4467340797867510760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243283 (A148375 n).toNat) (A000085 n)

end

end A291559.P4467340797867510760

/-! ## A291559.P1537652256623402743

`A194698(A267682(n)+A193771(3*n+4))`
-/

namespace A291559.P1537652256623402743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A267682 n + A193771 (3 * n + 4)).toNat

end

end A291559.P1537652256623402743

/-! ## A291559.P10001554681159808050

`floor(sqrt(floor(A142873(n)/2))/2)`
-/

namespace A291559.P10001554681159808050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (⌊(A142873 n : ℚ) / 2⌋ : ℝ) / 2⌋

end

end A291559.P10001554681159808050

/-! ## A291559.P14890394446473743402

`A004788(A217896(n))`
-/

namespace A291559.P14890394446473743402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (A217896 n).toNat

end

end A291559.P14890394446473743402

/-! ## A291559.P373194129807187832

`A262869(abs(A130009(n)))`
-/

namespace A291559.P373194129807187832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 |A130009 n|.toNat

end

end A291559.P373194129807187832

/-!
# A291561: Diagonal in triangle A291560: a(n) = -A291560(n+1, n) for n>=1.

The programs for A291561, there is no canonical definition to state claims against.
-/

/-! ## A291561.P14283478984760239409

`(n+1)*∏[2*n+3]/3*∏[abs(1-2*n)]`
-/

namespace A291561.P14283478984760239409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A291561.P14283478984760239409

/-! ## A291561.P14948408686760823040

`floor((n+1)*∏[2*n+3]/3*or(1, -∏[2*n-1]))`
-/

namespace A291561.P14948408686760823040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3) * (Int.lor 1 (-(∏ j ∈ Finset.range (n + 1), f2 j)) : ℚ)⌋

end

end A291561.P14948408686760823040

/-! ## A291561.P7559813658889407561

`ceil((n+1)*∏[2*n+3]/3*or(1, -∏[2*n-1]))`
-/

namespace A291561.P7559813658889407561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3) * (Int.lor 1 (-(∏ j ∈ Finset.range (n + 1), f2 j)) : ℚ)⌉

end

end A291561.P7559813658889407561

/-! ## A291561.P4823653293907299411

`abs(A291560(∑[n+2]))`
-/

namespace A291561.P4823653293907299411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A291560 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A291561.P4823653293907299411

/-! ## A291561.P14016157127367195337

`abs(or(1, -∏[2*n-1])*A000457(n))`
-/

namespace A291561.P14016157127367195337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(∏ j ∈ Finset.range (n + 1), f1 j)) * A000457 n|

end

end A291561.P14016157127367195337

/-!
# A291562: Central terms of triangle A291560: a(n) = A291560(2*n-1,n) for n>=1.

The programs for A291562, there is no canonical definition to state claims against.
-/

/-! ## A291562.P8333133924989885745

`A291560((n+1)²+n²)`
-/

namespace A291562.P8333133924989885745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291560 ((n + 1) ^ 2 + n ^ 2)

end

end A291562.P8333133924989885745

/-!
# A291563: Number of partitions of 2n into two prime parts or two nonprime parts.

The programs for A291563, there is no canonical definition to state claims against.
-/

/-! ## A291563.P606939447704338141

`n+1-A291564(n+1)`
-/

namespace A291563.P606939447704338141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A291564 (n + 1)

end

end A291563.P606939447704338141

/-! ## A291563.P9493843858160232517

`A334207(n+1)+A045917(n+1)`
-/

namespace A291563.P9493843858160232517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334207 (n + 1) + A045917 (n + 1)

end

end A291563.P9493843858160232517

/-! ## A291563.P13088119051493617527

`1-(A224713(n+1)+A010051(2*n+1))+n`
-/

namespace A291563.P13088119051493617527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A224713 (n + 1) + A010051 (2 * n + 1)) + (n : ℤ)

end

end A291563.P13088119051493617527

/-! ## A291563.P8055646147315106899

`A291708(2*(n+1))`
-/

namespace A291563.P8055646147315106899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291708 (2 * (n + 1))

end

end A291563.P8055646147315106899

/-! ## A291563.P18183416486132081035

`1-A062602(2*(n+1))+n`
-/

namespace A291563.P18183416486132081035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062602 (2 * (n + 1)) + (n : ℤ)

end

end A291563.P18183416486132081035

/-! ## A291563.P4650579836733151620

`n+1-A062602(Δ[n²]+1)`
-/

namespace A291563.P4650579836733151620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A062602 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A291563.P4650579836733151620

/-! ## A291563.P11476832342016106914

`A062610(2*(n+1))+A045917(n+1)`
-/

namespace A291563.P11476832342016106914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (2 * (n + 1)) + A045917 (n + 1)

end

end A291563.P11476832342016106914

/-! ## A291563.P13614269127179787584

`A062610(2*(n+1))+A061358(2*(n+1))`
-/

namespace A291563.P13614269127179787584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (2 * (n + 1)) + A061358 (2 * (n + 1))

end

end A291563.P13614269127179787584

/-! ## A291563.P7932848198801695276

`A068307(2*(n+2))+A062610(2*(n+1))`
-/

namespace A291563.P7932848198801695276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (2 * (n + 2)) + A062610 (2 * (n + 1))

end

end A291563.P7932848198801695276

/-! ## A291563.P17631791504766291209

`abs(A130472(2*n+1)+A062602(2*(n+1)))`
-/

namespace A291563.P17631791504766291209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130472 (2 * n + 1) + A062602 (2 * (n + 1))|

end

end A291563.P17631791504766291209

/-! ## A291563.P10085352259362716929

`A073610(2*(n+1))+A118777(2*n+1)/2`
-/

namespace A291563.P10085352259362716929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073610 (2 * (n + 1)) : ℚ) + (A118777 (2 * n + 1) : ℚ) / 2

end

end A291563.P10085352259362716929

/-!
# A291564: Number of partitions of 2n into two parts such that one part is prime and the other is nonprime.

The programs for A291564, there is no canonical definition to state claims against.
-/

/-! ## A291564.P15638460456458755305

`n+1-A291563(n+1)`
-/

namespace A291564.P15638460456458755305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A291563 (n + 1)

end

end A291564.P15638460456458755305

/-! ## A291564.P8545347326158695171

`A224713(n+1)+A101264(n)`
-/

namespace A291564.P8545347326158695171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224713 (n + 1) + A101264 n

end

end A291564.P8545347326158695171

/-! ## A291564.P11435182977851306429

`A099801(n)-A035026(n+1)`
-/

namespace A291564.P11435182977851306429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n - A035026 (n + 1)

end

end A291564.P11435182977851306429

/-! ## A291564.P6607504841070650803

`A227065(n+1)-A334207(n+1)`
-/

namespace A291564.P6607504841070650803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227065 (n + 1) - A334207 (n + 1)

end

end A291564.P6607504841070650803

/-! ## A291564.P5156319339642087251

`A224713(n+1)+A010051(2*n+1)`
-/

namespace A291564.P5156319339642087251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224713 (n + 1) + A010051 (2 * n + 1)

end

end A291564.P5156319339642087251

/-! ## A291564.P12342975413939873175

`A000720(2*n+1)-A035026(n+1)`
-/

namespace A291564.P12342975413939873175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1) - A035026 (n + 1)

end

end A291564.P12342975413939873175

/-! ## A291564.P9644260279821570656

`A062602(2*(n+1))`
-/

namespace A291564.P9644260279821570656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (2 * (n + 1))

end

end A291564.P9644260279821570656

/-! ## A291564.P11902014213001265976

`n+1-A291708(2*(n+1))`
-/

namespace A291564.P11902014213001265976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A291708 (2 * (n + 1))

end

end A291564.P11902014213001265976

/-! ## A291564.P11287585737107020797

`A224712(2*(n+1))+A010051(2*n+1)`
-/

namespace A291564.P11287585737107020797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (2 * (n + 1)) + A010051 (2 * n + 1)

end

end A291564.P11287585737107020797

/-! ## A291564.P10829038363231226062

`A302481(2*(n+1))+A302480(2*(n+1))`
-/

namespace A291564.P10829038363231226062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302481 (2 * (n + 1)) + A302480 (2 * (n + 1))

end

end A291564.P10829038363231226062

/-! ## A291564.P16574207323488690416

`A000720(2*n+1)-A073610(2*(n+1))`
-/

namespace A291564.P16574207323488690416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1) - A073610 (2 * (n + 1))

end

end A291564.P16574207323488690416

/-! ## A291564.P6994578998543193899

`A230980(2*n+1)-A073610(2*(n+1))`
-/

namespace A291564.P6994578998543193899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * n + 1) - A073610 (2 * (n + 1))

end

end A291564.P6994578998543193899

/-! ## A291564.P3142173320043666962

`A295629(2*(n+1))-A062610(2*(n+1))`
-/

namespace A291564.P3142173320043666962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295629 (2 * (n + 1)) - A062610 (2 * (n + 1))

end

end A291564.P3142173320043666962

/-! ## A291564.P3571006443531697475

`A295630(2*(n+1))-A302479(2*(n+1))`
-/

namespace A291564.P3571006443531697475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295630 (2 * (n + 1)) - A302479 (2 * (n + 1))

end

end A291564.P3571006443531697475

/-! ## A291564.P8434617278238475695

`A224712(2*(n+1))+A061358(2*n+3)`
-/

namespace A291564.P8434617278238475695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (2 * (n + 1)) + A061358 (2 * n + 3)

end

end A291564.P8434617278238475695

/-!
# A291565: Primitive balanced numbers: primitive numbers not of the form m*n where m, n > 1 are both primitive.

The programs for A291565, there is no canonical definition to state claims against.
-/

/-! ## A291565.P9668096569070129513

`A020492(A347498(n+1)%A331874(n+1))`
-/

namespace A291565.P9668096569070129513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (Int.tmod (A347498 (n + 1)) (A331874 (n + 1))).toNat

end

end A291565.P9668096569070129513

/-! ## A291565.P13719446409576876866

`A015771(lt[A292969(n), A380767(n+2)])`
-/

namespace A291565.P13719446409576876866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291565.P13719446409576876866

/-! ## A291565.P16832180983462134791

`A015765(lt[A285783(n), A086493(n+1)])`
-/

namespace A291565.P16832180983462134791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291565.P16832180983462134791

/-! ## A291565.P15276315810419116149

`A015765(lt[A285783(n), A092917(n+1)])`
-/

namespace A291565.P15276315810419116149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291565.P15276315810419116149

/-! ## A291565.P13035428549811790547

`A015765(eq[0, A234931(n)])`
-/

namespace A291565.P13035428549811790547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291565.P13035428549811790547

/-!
# A291566: Non-primitive balanced numbers: balanced numbers of the form m*n where m, n > 1 are both balanced.

The programs for A291566, there is no canonical definition to state claims against.
-/

/-! ## A291566.P7531102063727718358

`A015771(record[Δ[A218851(n+1)]])`
-/

namespace A291566.P7531102063727718358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218851 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A291566.P7531102063727718358

/-! ## A291566.P11864534176760687083

`A020492(record[Δ[A218851(n+1)]])`
-/

namespace A291566.P11864534176760687083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218851 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A291566.P11864534176760687083

/-! ## A291566.P3641732229696617630

`A020492(record[A331208(∑{d}[n+1, #])])`
-/

namespace A291566.P3641732229696617630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331208 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A291566.P3641732229696617630

/-!
# A291568: The arithmetic function uhat(n,5,5).

The programs for A291568, the canonical program `A291568.P15968601446561352524` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291568 has offset 1).

The definition of A291568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291568.P15968601446561352524

`Δ[lcm(5, n)]%4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291568

/-- `Δ[lcm(5, n)]%4` -/
def P15968601446561352524.Spec : Prop :=
  ∀ n, P15968601446561352524.a n = A291568 (n + 1)

theorem P15968601446561352524.correct : P15968601446561352524.Spec := by
  intro n
  simp only [A291568, Nat.add_sub_cancel]

end A291568

/-!
# A291574: The arithmetic function uhat(n,6,6).

The programs for A291574, the canonical program `A291574.P17221779192315119908` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291574 has offset 1).

The definition of A291574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291574.P17221779192315119908

`2-gcd(6, n+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291574

/-- `2-gcd(6, n+1)` -/
def P17221779192315119908.Spec : Prop :=
  ∀ n, P17221779192315119908.a n = A291574 (n + 1)

theorem P17221779192315119908.correct : P17221779192315119908.Spec := by
  intro n
  simp only [A291574, Nat.add_sub_cancel]

end A291574

/-!
# A291575: The arithmetic function uhat(n,6,8).

The programs for A291575, there is no canonical definition to state claims against.
-/

/-! ## A291575.P15603820699438533462

`A231475(A361257(n))-19`
-/

namespace A291575.P15603820699438533462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231475 (A361257 n).toNat - 19

end

end A291575.P15603820699438533462

/-!
# A291576: The arithmetic function uhat(n,7,2).

The programs for A291576, there is no canonical definition to state claims against.
-/

/-! ## A291576.P655506275289326769

`A355221(A291041(n+1))`
-/

namespace A291576.P655506275289326769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 (A291041 (n + 1)).toNat

end

end A291576.P655506275289326769

/-!
# A291577: a(n) = largest prime factor of a(n-1), or smallest multiple of that factor not yet in the sequence; a(0)=1, a(1)=2.

The programs for A291577, there is no canonical definition to state claims against.
-/

/-! ## A291577.P3931849837742954819

`∑[A291372(ceil(n-atan(n+1)))]`
-/

namespace A291577.P3931849837742954819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291372 ⌈(n : ℝ) - Real.arctan (n + 1 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291577.P3931849837742954819

/-! ## A291577.P3848019613034397704

`A291372(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A291577.P3848019613034397704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291372 (n - 1) + a (n - 1)

end

end A291577.P3848019613034397704

/-! ## A291577.P687301371850386647

`∑[A291372(A259361(n²))]`
-/

namespace A291577.P687301371850386647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291372 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291577.P687301371850386647

/-! ## A291577.P11099596227096654624

`∑[A291372(A049615(∑[n]))]`
-/

namespace A291577.P11099596227096654624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291372 (A049615 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291577.P11099596227096654624

/-! ## A291577.P11801815900056640897

`∑[A291372(A289207(n+1))]`
-/

namespace A291577.P11801815900056640897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291372 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291577.P11801815900056640897

/-! ## A291577.P3307654794792417666

`∑[A291372(A004273(n)-n)]`
-/

namespace A291577.P3307654794792417666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291372 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291577.P3307654794792417666

/-! ## A291577.P7326356510636723229

`∑[A291372(A025581(∑[n]-n))]`
-/

namespace A291577.P7326356510636723229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291372 (A025581 (∑ j ∈ Finset.range (n + 1), f2 j - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291577.P7326356510636723229

/-! ## A291577.P3684038544001519280

`∑[A291372(A289207(2*n)/2)]`
-/

namespace A291577.P3684038544001519280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291372 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291577.P3684038544001519280

/-! ## A291577.P14893634502787285185

`∑[A291372(A003056(floor(n²/2)))]`
-/

namespace A291577.P14893634502787285185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291372 (A003056 ⌊(n ^ 2 : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291577.P14893634502787285185

/-! ## A291577.P2990542664104535638

`∑[A291372(A004524(A004273(n)))]`
-/

namespace A291577.P2990542664104535638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291372 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291577.P2990542664104535638

/-!
# A291578: The arithmetic function uhat(n,7,7).

The programs for A291578, the canonical program `A291578.P17835648870104050307` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291578 has offset 1).

The definition of A291578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291578.P17835648870104050307

`Δ[lcm(7, n)]%6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291578

/-- `Δ[lcm(7, n)]%6` -/
def P17835648870104050307.Spec : Prop :=
  ∀ n, P17835648870104050307.a n = A291578 (n + 1)

theorem P17835648870104050307.correct : P17835648870104050307.Spec := by
  intro n
  simp only [A291578, Nat.add_sub_cancel]

end A291578

/-!
# A291582: Maximum number of 6 sphinx tile shapes in a sphinx tiled hexagon of order n.

The programs for A291582, the canonical program `A291582.P5457921454360212602` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291582 has offset 1).

The definition of A291582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291582.P5457921454360212602

`6*(n+1)*(6*(n+1)-1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291582

/-- `6*(n+1)*(6*(n+1)-1)` -/
def P5457921454360212602.Spec : Prop :=
  ∀ n, P5457921454360212602.a n = A291582 (n + 1)

theorem P5457921454360212602.correct : P5457921454360212602.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel]

end A291582

/-! ## A291582.P2909925328357135808

`A016970(n)+A016969(n)`
-/

namespace A291582.P2909925328357135808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n + A016969 n

end

end A291582.P2909925328357135808

namespace A291582

/-- `A016970(n)+A016969(n)` -/
def P2909925328357135808.Spec : Prop :=
  ∀ n, P2909925328357135808.a n = A291582 (n + 1)

theorem P2909925328357135808.correct : P2909925328357135808.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P2909925328357135808.a, A291582.P5457921454360212602.a, A016969, A016969.P9377817521032485226.a, A016970, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291582

/-! ## A291582.P10748418112079521317

`∑[a(n-1)+72]` with `a(0)=30`
-/

namespace A291582.P10748418112079521317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [30] fun n f1 =>
  f1 (n - 1) + 72

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291582.P10748418112079521317

namespace A291582

/-- `∑[a(n-1)+72]` -/
def P10748418112079521317.Spec : Prop :=
  ∀ n, (P10748418112079521317.a n : ℤ) = A291582 (n + 1)

end A291582

/-! ## A291582.P2010171175265494236

`A305072(n+1)/4`
-/

namespace A291582.P2010171175265494236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305072 (n + 1) : ℚ) / 4

end

end A291582.P2010171175265494236

namespace A291582

/-- `A305072(n+1)/4` -/
def P2010171175265494236.Spec : Prop :=
  ∀ n, P2010171175265494236.a n = (A291582 (n + 1) : ℚ)

theorem P2010171175265494236.correct : P2010171175265494236.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P2010171175265494236.a, A291582.P5457921454360212602.a, A305072, A305072.P165285397883766145.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291582

/-! ## A291582.P16843538701861585834

`(A017654(n)-1)/4`
-/

namespace A291582.P16843538701861585834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017654 n - 1 : ℚ) / 4

end

end A291582.P16843538701861585834

namespace A291582

/-- `(A017654(n)-1)/4` -/
def P16843538701861585834.Spec : Prop :=
  ∀ n, P16843538701861585834.a n = (A291582 (n + 1) : ℚ)

theorem P16843538701861585834.correct : P16843538701861585834.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P16843538701861585834.a, A291582.P5457921454360212602.a, A017654, A017654.P15848109358674397371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291582

/-! ## A291582.P5688407917843698540

`round((A017653(n)/2)²)`
-/

namespace A291582.P5688407917843698540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A017653 n : ℚ) / 2) ^ 2)

end

end A291582.P5688407917843698540

namespace A291582

/-- `round((A017653(n)/2)²)` -/
def P5688407917843698540.Spec : Prop :=
  ∀ n, P5688407917843698540.a n = A291582 (n + 1)

end A291582

/-! ## A291582.P12570464718895963163

`A158462(n+1)-6*n`
-/

namespace A291582.P12570464718895963163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158462 (n + 1) - (6 * n : ℤ)

end

end A291582.P12570464718895963163

namespace A291582

/-- `A158462(n+1)-6*n` -/
def P12570464718895963163.Spec : Prop :=
  ∀ n, P12570464718895963163.a n = A291582 (n + 1)

theorem P12570464718895963163.correct : P12570464718895963163.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P12570464718895963163.a, A291582.P5457921454360212602.a, A158462, A158462.P6216805547940033243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291582

/-! ## A291582.P12886596888793575410

`A304380(n+1)-2*(n+1)`
-/

namespace A291582.P12886596888793575410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304380 (n + 1) - (2 * (n + 1) : ℤ)

end

end A291582.P12886596888793575410

namespace A291582

/-- `A304380(n+1)-2*(n+1)` -/
def P12886596888793575410.Spec : Prop :=
  ∀ n, P12886596888793575410.a n = A291582 (n + 1)

theorem P12886596888793575410.correct : P12886596888793575410.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P12886596888793575410.a, A291582.P5457921454360212602.a, A304380, A304380.P4205740382854217177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291582

/-! ## A291582.P127559565584823383

`A158062(n+1)-4*(n+1)`
-/

namespace A291582.P127559565584823383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158062 (n + 1) - (4 * (n + 1) : ℤ)

end

end A291582.P127559565584823383

namespace A291582

/-- `A158062(n+1)-4*(n+1)` -/
def P127559565584823383.Spec : Prop :=
  ∀ n, P127559565584823383.a n = A291582 (n + 1)

theorem P127559565584823383.correct : P127559565584823383.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P127559565584823383.a, A291582.P5457921454360212602.a, A158062, A158062.P12572423085323088459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291582

/-! ## A291582.P17957569559948737366

`A157286(n+1)-5*(n+1)`
-/

namespace A291582.P17957569559948737366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157286 (n + 1) - (5 * (n + 1) : ℤ)

end

end A291582.P17957569559948737366

namespace A291582

/-- `A157286(n+1)-5*(n+1)` -/
def P17957569559948737366.Spec : Prop :=
  ∀ n, P17957569559948737366.a n = A291582 (n + 1)

theorem P17957569559948737366.correct : P17957569559948737366.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P17957569559948737366.a, A291582.P5457921454360212602.a, A157286, A157286.P1200146671575327365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291582

/-! ## A291582.P10518053749723725845

`A157265(n+1)+A017497(n)`
-/

namespace A291582.P10518053749723725845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157265 (n + 1) + A017497 n

end

end A291582.P10518053749723725845

namespace A291582

/-- `A157265(n+1)+A017497(n)` -/
def P10518053749723725845.Spec : Prop :=
  ∀ n, P10518053749723725845.a n = A291582 (n + 1)

theorem P10518053749723725845.correct : P10518053749723725845.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P10518053749723725845.a, A291582.P5457921454360212602.a, A017497, A017497.P15469120572134644275.a, A157265, A157265.P9165229674493035226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291582

/-! ## A291582.P12985618657256296706

`A158544(n+1)+A154105(n)`
-/

namespace A291582.P12985618657256296706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158544 (n + 1) + A154105 n

end

end A291582.P12985618657256296706

namespace A291582

/-- `A158544(n+1)+A154105(n)` -/
def P12985618657256296706.Spec : Prop :=
  ∀ n, P12985618657256296706.a n = A291582 (n + 1)

theorem P12985618657256296706.correct : P12985618657256296706.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P12985618657256296706.a, A291582.P5457921454360212602.a, A154105, A154105.P6664719848169599409.a, A158544, A158544.P3199639721512580159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291582

/-! ## A291582.P12825930569387032686

`A136017(n+1)-A016969(n)`
-/

namespace A291582.P12825930569387032686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136017 (n + 1) - A016969 n

end

end A291582.P12825930569387032686

namespace A291582

/-- `A136017(n+1)-A016969(n)` -/
def P12825930569387032686.Spec : Prop :=
  ∀ n, P12825930569387032686.a n = A291582 (n + 1)

theorem P12825930569387032686.correct : P12825930569387032686.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P12825930569387032686.a, A291582.P5457921454360212602.a, A016969, A016969.P9377817521032485226.a, A136017, A136017.P15592961706062905529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291582

/-! ## A291582.P3380082546168244373

`A158560(n+1)+A003154(n+1)`
-/

namespace A291582.P3380082546168244373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158560 (n + 1) + A003154 (n + 1)

end

end A291582.P3380082546168244373

namespace A291582

/-- `A158560(n+1)+A003154(n+1)` -/
def P3380082546168244373.Spec : Prop :=
  ∀ n, P3380082546168244373.a n = A291582 (n + 1)

theorem P3380082546168244373.correct : P3380082546168244373.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P3380082546168244373.a, A291582.P5457921454360212602.a, A003154, A003154.P12292724974289202885.a, A158560, A158560.P7964568299904866016.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A291582

/-! ## A291582.P14474995009530486682

`A158551(n+1)+A087348(n+1)`
-/

namespace A291582.P14474995009530486682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158551 (n + 1) + A087348 (n + 1)

end

end A291582.P14474995009530486682

namespace A291582

/-- `A158551(n+1)+A087348(n+1)` -/
def P14474995009530486682.Spec : Prop :=
  ∀ n, P14474995009530486682.a n = A291582 (n + 1)

theorem P14474995009530486682.correct : P14474995009530486682.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P14474995009530486682.a, A291582.P5457921454360212602.a, A087348, A087348.P10061918180564744892.a, A158551, A158551.P5984939618370270517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291582

/-! ## A291582.P18322616429575728865

`A158563(n+1)+A125202(n+1)`
-/

namespace A291582.P18322616429575728865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158563 (n + 1) + A125202 (n + 1)

end

end A291582.P18322616429575728865

namespace A291582

/-- `A158563(n+1)+A125202(n+1)` -/
def P18322616429575728865.Spec : Prop :=
  ∀ n, P18322616429575728865.a n = A291582 (n + 1)

theorem P18322616429575728865.correct : P18322616429575728865.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P18322616429575728865.a, A291582.P5457921454360212602.a, A125202, A125202.P2347162376427039196.a, A158563, A158563.P13902014769167631248.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291582

/-! ## A291582.P17848855733885394520

`A158271(n+1)%A157324(n+1)`
-/

namespace A291582.P17848855733885394520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158271 (n + 1)) (A157324 (n + 1))

end

end A291582.P17848855733885394520

namespace A291582

/-- `A158271(n+1)%A157324(n+1)` -/
def P17848855733885394520.Spec : Prop :=
  ∀ n, P17848855733885394520.a n = A291582 (n + 1)

end A291582

/-! ## A291582.P11475291002462594978

`A158305(n+1)%A158132(n+1)`
-/

namespace A291582.P11475291002462594978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158305 (n + 1)) (A158132 (n + 1))

end

end A291582.P11475291002462594978

namespace A291582

/-- `A158305(n+1)%A158132(n+1)` -/
def P11475291002462594978.Spec : Prop :=
  ∀ n, P11475291002462594978.a n = A291582 (n + 1)

end A291582

/-! ## A291582.P9796250375769373799

`lcm(A209876(n+1), A385555(n+1))`
-/

namespace A291582.P9796250375769373799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A209876 (n + 1)) (A385555 (n + 1))

end

end A291582.P9796250375769373799

namespace A291582

/-- `lcm(A209876(n+1), A385555(n+1))` -/
def P9796250375769373799.Spec : Prop :=
  ∀ n, (P9796250375769373799.a n : ℤ) = A291582 (n + 1)

end A291582

/-! ## A291582.P3549824303999447553

`A016970(n)+A016975(n)/A016974(n)`
-/

namespace A291582.P3549824303999447553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016970 n : ℚ) + (A016975 n : ℚ) / (A016974 n : ℚ)

end

end A291582.P3549824303999447553

namespace A291582

/-- `A016970(n)+A016975(n)/A016974(n)` -/
def P3549824303999447553.Spec : Prop :=
  ∀ n, P3549824303999447553.a n = (A291582 (n + 1) : ℚ)

theorem P3549824303999447553.correct : P3549824303999447553.Spec := by
  intro n
  simp only [A291582, Nat.add_sub_cancel, A291582.P3549824303999447553.a, A291582.P5457921454360212602.a, A016970, A016970.P15900235009038966583.a, A016974, A016974.P548464748958973466.a, A016975, A016975.P2603086275989900620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291582

/-!
# A291583: Expansion of Product_{k>=1} 1/(1 - 2*x^(k^2)).

The programs for A291583, there is no canonical definition to state claims against.
-/

/-! ## A291583.P534673972510718580

`A002322(lcm(A000118(n), A263366(n+2)))`
-/

namespace A291583.P534673972510718580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (Int.lcm (A000118 n) (A263366 (n + 2)))

end

end A291583.P534673972510718580

/-! ## A291583.P17197105265388447666

`A049910(n+2)-A010054(A241704(n+1))`
-/

namespace A291583.P17197105265388447666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049910 (n + 2) - A010054 (A241704 (n + 1)).toNat

end

end A291583.P17197105265388447666

/-! ## A291583.P1747676377082849027

`∏{e}[∏[((p?[3*n+1]-3)/2+1)/3], #+1]`
-/

namespace A291583.P1747676377082849027
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 3 : ℚ) / 2 + 1) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A291583.P1747676377082849027

/-! ## A291583.P7165500723186207658

`∏{e}[A111059(n+1), #+1]`
-/

namespace A291583.P7165500723186207658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A291583.P7165500723186207658

/-!
# A291584: The arithmetic function uhat(n,8,8).

The programs for A291584, the canonical program `A291584.P1032532071744902879` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291584 has offset 1).

The definition of A291584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291584.P1032532071744902879

`2-gcd(8, n+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A291584

/-- `2-gcd(8, n+1)` -/
def P1032532071744902879.Spec : Prop :=
  ∀ n, P1032532071744902879.a n = A291584 (n + 1)

theorem P1032532071744902879.correct : P1032532071744902879.Spec := by
  intro n
  simp only [A291584, Nat.add_sub_cancel]

end A291584

/-!
# A291585: a(n) = ((2n-1)!!)^3 * Sum_{i=1..n} 1/(2*i-1)^3.

The programs for A291585, there is no canonical definition to state claims against.
-/

/-! ## A291585.P1826814093237776803

`A291656(∑[n+3]+n+3)`
-/

namespace A291585.P1826814093237776803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A291585.P1826814093237776803

/-! ## A291585.P4758286433910740780

`record[A291656(A060577(n))]`
-/

namespace A291585.P4758286433910740780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291585.P4758286433910740780

/-! ## A291585.P4478709693902733819

`record[A291656(abs(A046691(n)))]`
-/

namespace A291585.P4478709693902733819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291585.P4478709693902733819

/-! ## A291585.P14404137947741519786

`and(-1, A291656(A046691(n+2)))`
-/

namespace A291585.P14404137947741519786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A291656 (A046691 (n + 2)).toNat)

end

end A291585.P14404137947741519786

/-! ## A291585.P4184811136099810979

`record[A291656(n)/A008956(n+4)]`
-/

namespace A291585.P4184811136099810979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291656 n : ℚ) / (A008956 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291585.P4184811136099810979

/-!
# A291586: a(n) = ((2n-1)!!)^4 * Sum_{i=1..n} 1/(2*i-1)^4.

The programs for A291586, there is no canonical definition to state claims against.
-/

/-! ## A291586.P6916103680283925270

`A291656(A052905(n+2))`
-/

namespace A291586.P6916103680283925270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (A052905 (n + 2)).toNat

end

end A291586.P6916103680283925270

/-! ## A291586.P12310487247501030535

`A291656(eq[9, A099375(n)])`
-/

namespace A291586.P12310487247501030535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291586.P12310487247501030535

/-!
# A291587: a(n) = ((2n-1)!!)^5 * Sum_{i=1..n} 1/(2*i-1)^5.

The programs for A291587, there is no canonical definition to state claims against.
-/

/-! ## A291587.P3742589979591591012

`A291656(eq[6, A193739(n)])`
-/

namespace A291587.P3742589979591591012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291587.P3742589979591591012

/-! ## A291587.P15374932805704640925

`A291656(eq[32, A130321(n)])`
-/

namespace A291587.P15374932805704640925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291587.P15374932805704640925

/-!
# A291588: Lexicographically earliest sequence of distinct positive terms such that for any n > 0 and k >= 0, gcd(a(n), a(n + 2^k)) = 1.

The programs for A291588, there is no canonical definition to state claims against.
-/

/-! ## A291588.P15620907068426530142

`or(A185284(2*(n+2)), A250472(n+1))`
-/

namespace A291588.P15620907068426530142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (2 * (n + 2))) (A250472 (n + 1))

end

end A291588.P15620907068426530142

/-! ## A291588.P13207471143502639639

`or(A185255(comp[2*n+3]), A250472(n+1))`
-/

namespace A291588.P13207471143502639639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185255 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A250472 (n + 1))

end

end A291588.P13207471143502639639

/-! ## A291588.P3680325521287437074

`A250472(n+1)+A202952(A246935(n))`
-/

namespace A291588.P3680325521287437074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250472 (n + 1) + A202952 (A246935 n).toNat

end

end A291588.P3680325521287437074

/-! ## A291588.P1960733275955193078

`A276689(A184955(n))+A250472(n+1)`
-/

namespace A291588.P1960733275955193078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (A184955 n).toNat + A250472 (n + 1)

end

end A291588.P1960733275955193078

/-!
# A291589: Column 4 of A060244.

The programs for A291589, there is no canonical definition to state claims against.
-/

/-! ## A291589.P17538900496724557178

`A135661(n*A087956(n)+1)`
-/

namespace A291589.P17538900496724557178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 ((n : ℤ) * A087956 n + 1).toNat

end

end A291589.P17538900496724557178

/-! ## A291589.P11043030841617391870

`A135661(A028310(n*A087956(n)))`
-/

namespace A291589.P11043030841617391870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A028310 ((n : ℤ) * A087956 n).toNat).toNat

end

end A291589.P11043030841617391870

/-! ## A291589.P643210099990365633

`A112318(A002620(ceil((n/2)²)))`
-/

namespace A291589.P643210099990365633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A002620 ⌈((n : ℚ) / 2) ^ 2⌉.toNat).toNat

end

end A291589.P643210099990365633

/-! ## A291589.P13011049197500352440

`A050370(A257970(n+1))%∑[n+1]`
-/

namespace A291589.P13011049197500352440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050370 (A257970 (n + 1)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A291589.P13011049197500352440

/-! ## A291589.P2458146751802719498

`A112995(A137631(n+1))-(2-char[∑[n]])`
-/

namespace A291589.P2458146751802719498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112995 (A137631 (n + 1)).toNat - (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A291589.P2458146751802719498

/-!
# A291590: Column 5 of A060244.

The programs for A291590, there is no canonical definition to state claims against.
-/

/-! ## A291590.P15217619293827245538

`A060244(∑[n+1]+5)%A172298(2*(n+1))`
-/

namespace A291590.P15217619293827245538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060244 (∑ j ∈ Finset.range (n + 1), f1 j + 5)) (A172298 (2 * (n + 1)))

end

end A291590.P15217619293827245538

/-! ## A291590.P12757659352450284404

`A026814(A103517(n)%A320807(n))`
-/

namespace A291590.P12757659352450284404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (Int.tmod (A103517 n) (A320807 n)).toNat

end

end A291590.P12757659352450284404

/-! ## A291590.P2369064510974207709

`A026814(2*(n+1))%A076312(A278330(n+2))`
-/

namespace A291590.P2369064510974207709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026814 (2 * (n + 1))) (A076312 (A278330 (n + 2)).toNat)

end

end A291590.P2369064510974207709

/-! ## A291590.P8036660549833161382

`A394792(A161006(n))`
-/

namespace A291590.P8036660549833161382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394792 (A161006 n).toNat

end

end A291590.P8036660549833161382

/-! ## A291590.P11477710121502464840

`A000196(A105693(n))-n`
-/

namespace A291590.P11477710121502464840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A105693 n).toNat - (n : ℤ)

end

end A291590.P11477710121502464840

/-!
# A291592: Number of bases for which 2^n-1 is a repdigit with at least 3 digits.

The programs for A291592, there is no canonical definition to state claims against.
-/

/-! ## A291592.P1473813589414429181

`A023645(n+1)+char[4]+char[12]`
-/

namespace A291592.P1473813589414429181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A291592.P1473813589414429181

/-! ## A291592.P8484149127816508957

`A010051(∑{d}[Δ[n²], #])+∑{d}[n+1, 2%#/2]`
-/

namespace A291592.P8484149127816508957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) : ℚ) + ∑ d ∈ Nat.divisors (f3 n), ((2 % d : ℕ) : ℚ) / 2

end

end A291592.P8484149127816508957

/-! ## A291592.P4988490738164152947

`A076984(n+1)-A057427(A284593(n))`
-/

namespace A291592.P4988490738164152947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) - A057427 (A284593 n).toNat

end

end A291592.P4988490738164152947

/-! ## A291592.P2047648410580483266

`A023645(n+1)*A054977(A284593(n))`
-/

namespace A291592.P2047648410580483266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) * A054977 (A284593 n).toNat

end

end A291592.P2047648410580483266

/-! ## A291592.P8077595234608968624

`A034876(A034895(n+1))+A023645(n+1)`
-/

namespace A291592.P8077595234608968624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034876 (A034895 (n + 1)).toNat + A023645 (n + 1)

end

end A291592.P8077595234608968624

/-! ## A291592.P11610126931904909859

`A014963(A075798(n+1))*A023645(n+1)`
-/

namespace A291592.P11610126931904909859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A075798 (n + 1)).toNat * A023645 (n + 1)

end

end A291592.P11610126931904909859

/-! ## A291592.P1477863230526201957

`A023645(n+1)*A204123(A204127(n+1))`
-/

namespace A291592.P1477863230526201957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) * A204123 (A204127 (n + 1)).toNat

end

end A291592.P1477863230526201957

/-! ## A291592.P12418070588610090006

`lcm(A014963(A031166(n+7)), A023645(n+1))`
-/

namespace A291592.P12418070588610090006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (A031166 (n + 7)).toNat) (A023645 (n + 1))

end

end A291592.P12418070588610090006

/-! ## A291592.P9031025468930136751

`A023645(n+1)*A067694(A014973(A324719(n+1)))`
-/

namespace A291592.P9031025468930136751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) * A067694 (A014973 (A324719 (n + 1)).toNat).toNat

end

end A291592.P9031025468930136751

/-!
# A291594: Number of (non-null) connected induced subgraphs in the n-triangular honeycomb acute knight graph.

The programs for A291594, there is no canonical definition to state claims against.
-/

/-! ## A291594.P10598521493751249380

`A088898(∑[A007472(n)])`
-/

namespace A291594.P10598521493751249380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088898 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291594.P10598521493751249380

/-! ## A291594.P9533731877126927021

`record[A088898(A090036(n))]`
-/

namespace A291594.P9533731877126927021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088898 (A090036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291594.P9533731877126927021

/-!
# A291596: Column 6 of A060244.

The programs for A291596, there is no canonical definition to state claims against.
-/

/-! ## A291596.P10221899241558098975

`∑[A360352(n+2)%record[(n%9)!%5+n]]`
-/

namespace A291596.P10221899241558098975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 9) % 5 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360352 (n + 2)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291596.P10221899241558098975

/-! ## A291596.P7834463215643033628

`A351908(∑[A227296(n)])`
-/

namespace A291596.P7834463215643033628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291596.P7834463215643033628

/-! ## A291596.P6857525496214267721

`A123580(A248476(n+1))`
-/

namespace A291596.P6857525496214267721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A248476 (n + 1)).toNat

end

end A291596.P6857525496214267721

/-! ## A291596.P581890548160128133

`A307825(A127648(n)+A003000(n))`
-/

namespace A291596.P581890548160128133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307825 (A127648 n + A003000 n).toNat

end

end A291596.P581890548160128133

/-!
# A291597: Numbers n such that cototient(n) does not divide phi(n!).

The programs for A291597, there is no canonical definition to state claims against.
-/

/-! ## A291597.P2340971716163490940

`filter[A053340(n+1), A323170(#)]`
-/

namespace A291597.P2340971716163490940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A291597.P2340971716163490940

/-! ## A291597.P4417257946262945786

`A333232(∑[A333211(2*n+5)!])`
-/

namespace A291597.P4417257946262945786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A333211 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333232 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291597.P4417257946262945786

/-! ## A291597.P7046886532338940680

`∩[A053340(n+1), A091495(n+1)]`
-/

namespace A291597.P7046886532338940680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291597.P7046886532338940680

/-!
# A291598: a(n) = log_2(A281130(n)).

The programs for A291598, there is no canonical definition to state claims against.
-/

/-! ## A291598.P261297764248931001

`log2(A281130(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291598.P261297764248931001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A281130 (n + 1) : ℝ)

end

end A291598.P261297764248931001

/-! ## A291598.P7587704529578203880

`A000120(A281130(n+1)-1)`
-/

namespace A291598.P7587704529578203880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A281130 (n + 1) - 1).toNat

end

end A291598.P7587704529578203880

/-! ## A291598.P4751287237558563307

`∑{d}[A281130(n+1), A069513(#)]`
-/

namespace A291598.P4751287237558563307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069513 d

end

end A291598.P4751287237558563307

/-! ## A291598.P3856695579582372749

`A001222(2*A281130(n+1))-1`
-/

namespace A291598.P3856695579582372749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A281130 (n + 1)).toNat - 1

end

end A291598.P3856695579582372749

/-! ## A291598.P10008674306140891093

`A067029(2*A281130(n+1))-1`
-/

namespace A291598.P10008674306140891093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * A281130 (n + 1)).toNat - 1

end

end A291598.P10008674306140891093

/-! ## A291598.P16353396337401392596

`A000005(2*A281130(n+1))-2`
-/

namespace A291598.P16353396337401392596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A281130 (n + 1)).toNat - 2

end

end A291598.P16353396337401392596

/-! ## A291598.P10607799639960236380

`A001222(A281130(n+1))%A004001(n+1)`
-/

namespace A291598.P10607799639960236380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A281130 (n + 1)).toNat) (A004001 (n + 1))

end

end A291598.P10607799639960236380

/-! ## A291598.P10043773367047014690

`A001222(A281130(n+1)%A281120(n+1))`
-/

namespace A291598.P10043773367047014690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A281130 (n + 1)) (A281120 (n + 1))).toNat

end

end A291598.P10043773367047014690

/-! ## A291598.P17059277219767696864

`A067029(A281130(n+1)+A281130(n+1))-1`
-/

namespace A291598.P17059277219767696864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A281130 (n + 1) + A281130 (n + 1)).toNat - 1

end

end A291598.P17059277219767696864

/-! ## A291598.P2386351223414568479

`val(A281130(n+1), A020639(A281130(n+1)+2))`
-/

namespace A291598.P2386351223414568479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A281130 (n + 1)).toNat (A020639 (A281130 (n + 1) + 2).toNat).toNat

end

end A291598.P2386351223414568479

/-! ## A291598.P4219351299337086043

`A000005(A281130(n+1)²)-A000005(A281130(n+1))`
-/

namespace A291598.P4219351299337086043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A281130 (n + 1) ^ 2).toNat - A000005 (A281130 (n + 1)).toNat

end

end A291598.P4219351299337086043

/-! ## A291598.P4718839281400285968

`A001222(A281130(n+1))%A281101(n)`
-/

namespace A291598.P4718839281400285968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A281130 (n + 1)).toNat) (A281101 n)

end

end A291598.P4718839281400285968

/-! ## A291598.P1984191116825724140

`A067029(A281130(n+1)²)/2`
-/

namespace A291598.P1984191116825724140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067029 (A281130 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A291598.P1984191116825724140

/-! ## A291598.P17120850676111485253

`A001222(gcd(A281130(n+1), A281133(n+1)))`
-/

namespace A291598.P17120850676111485253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A281130 (n + 1)) (A281133 (n + 1)))

end

end A291598.P17120850676111485253

