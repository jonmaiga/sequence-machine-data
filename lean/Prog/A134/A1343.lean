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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A134301: Periodic sequence (0, 2, 6, 2, 0).

The programs for A134301, the canonical program `A134301.P13931516009357709362` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134301 has offset 0).

The definition of A134301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134301.P13931516009357709362

`a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=2, a(4)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134301

/-- `a(n-5)` -/
def P13931516009357709362.Spec : Prop :=
  ∀ n, (P13931516009357709362.a n : ℤ) = A134301 n

theorem P13931516009357709362.correct : P13931516009357709362.Spec := by
  intro n
  simp only [A134301]

end A134301

/-!
# A134306: Number of shapes of height-balanced AVL trees of height at most 6 with n nodes.

The programs for A134306, there is no canonical definition to state claims against.
-/

/-! ## A134306.P6927114207723482834

`A006265(A028310(n))%A083045(n)`
-/

namespace A134306.P6927114207723482834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006265 (A028310 n).toNat) (A083045 n)

end

end A134306.P6927114207723482834

/-! ## A134306.P5411811384579459402

`A006265(A028310(n))-A073424(A166046(n))`
-/

namespace A134306.P5411811384579459402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006265 (A028310 n).toNat - A073424 (A166046 n).toNat

end

end A134306.P5411811384579459402

/-! ## A134306.P4069962819288224648

`A006265(A028310(n))*A025474(A018834(n+2))`
-/

namespace A134306.P4069962819288224648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006265 (A028310 n).toNat * A025474 (A018834 (n + 2)).toNat

end

end A134306.P4069962819288224648

/-!
# A134307: Primes p such that A^(p-1) == 1 (mod p^2) for some A in the range 2 <= A <= p-1.

The programs for A134307, there is no canonical definition to state claims against.
-/

/-! ## A134307.P15987035566772158116

`A045319(lt[0, A242830(n+1)])`
-/

namespace A134307.P15987035566772158116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A134307.P15987035566772158116

/-! ## A134307.P10753364484308888536

`A045344(lt[0, A242830(n+1)])`
-/

namespace A134307.P10753364484308888536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A134307.P10753364484308888536

/-! ## A134307.P16978658408180558551

`A000040(lt[1, A143811(n+1)]+1)`
-/

namespace A134307.P16978658408180558551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A134307.P16978658408180558551

/-! ## A134307.P15899902564374626718

`A040976(lt[1, A143811(n+1)]+1)+2`
-/

namespace A134307.P15899902564374626718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) + 2

end

end A134307.P15899902564374626718

/-! ## A134307.P18082437233106378024

`p?[A008864(n+2)-A057427(A242830(n+2))]`
-/

namespace A134307.P18082437233106378024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2) - A057427 (A242830 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134307.P18082437233106378024

/-! ## A134307.P10538967586204843181

`p?[A000040(n+1)%(A242830(n+1)+A000040(n+1))]`
-/

namespace A134307.P10538967586204843181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A242830 (n + 1) + A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134307.P10538967586204843181

/-! ## A134307.P5021627108439311526

`lt[A185103(n+2), A110560(n)]+2`
-/

namespace A134307.P5021627108439311526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A134307.P5021627108439311526

/-! ## A134307.P3678936479432690062

`A110560(lt[A185103(n+2), A110560(n)])`
-/

namespace A134307.P3678936479432690062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134307.P3678936479432690062

/-! ## A134307.P9811159713687357105

`lt[A250206(n+1), A014973(n+1)]+1`
-/

namespace A134307.P9811159713687357105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A134307.P9811159713687357105

/-! ## A134307.P8270320600176776939

`lt[A250206(n+1), A061006(n+1)]+1`
-/

namespace A134307.P8270320600176776939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A134307.P8270320600176776939

/-! ## A134307.P8455629543206494033

`lt[A250206(n+1), A166260(n+1)]+1`
-/

namespace A134307.P8455629543206494033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A134307.P8455629543206494033

/-! ## A134307.P9695124317175066614

`A110560(lt[A250206(n+1), A014973(n+1)])`
-/

namespace A134307.P9695124317175066614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134307.P9695124317175066614

/-! ## A134307.P9730209487521935918

`A110560(lt[A250206(n+1), A061006(n+1)])`
-/

namespace A134307.P9730209487521935918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134307.P9730209487521935918

/-! ## A134307.P2251885621836262719

`A110560(lt[A250206(n+1), A166260(n+1)])`
-/

namespace A134307.P2251885621836262719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134307.P2251885621836262719

/-!
# A134308: A007318 * A082137.

The programs for A134308, the canonical program `A134308.P14992044366070988865` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134308 has offset 0).

The definition of A134308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134308.P14992044366070988865

`A082137(n)*A130321(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A134308

/-- `A082137(n)*A130321(n)` -/
def P14992044366070988865.Spec : Prop :=
  ∀ n, P14992044366070988865.a n = A134308 n

theorem P14992044366070988865.correct : P14992044366070988865.Spec := by
  intro n
  simp only [A134308]

end A134308

/-! ## A134308.P9739578033339411453

`A038207(n)*A232089(n)`
-/

namespace A134308.P9739578033339411453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A232089 n

end

end A134308.P9739578033339411453

namespace A134308

/-- `A038207(n)*A232089(n)` -/
def P9739578033339411453.Spec : Prop :=
  ∀ n, P9739578033339411453.a n = A134308 n

end A134308

/-! ## A134308.P14138888653166810961

`A038208(n)/A238303(n)`
-/

namespace A134308.P14138888653166810961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A238303 n : ℚ)

end

end A134308.P14138888653166810961

namespace A134308

/-- `A038208(n)/A238303(n)` -/
def P14138888653166810961.Spec : Prop :=
  ∀ n, P14138888653166810961.a n = (A134308 n : ℚ)

end A134308

/-! ## A134308.P1999799602071291708

`lcm(A038207(n), A055372(n))`
-/

namespace A134308.P1999799602071291708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038207 n) (A055372 n)

end

end A134308.P1999799602071291708

namespace A134308

/-- `lcm(A038207(n), A055372(n))` -/
def P1999799602071291708.Spec : Prop :=
  ∀ n, (P1999799602071291708.a n : ℤ) = A134308 n

end A134308

/-! ## A134308.P3989476910788145124

`A038208(n)/(2-A010054(n))`
-/

namespace A134308.P3989476910788145124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (2 - A010054 n : ℚ)

end

end A134308.P3989476910788145124

namespace A134308

/-- `A038208(n)/(2-A010054(n))` -/
def P3989476910788145124.Spec : Prop :=
  ∀ n, P3989476910788145124.a n = (A134308 n : ℚ)

end A134308

/-! ## A134308.P11336255281427278184

`A038208(n)/gcd(2, A038220(n))`
-/

namespace A134308.P11336255281427278184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (Int.gcd 2 (A038220 n) : ℚ)

end

end A134308.P11336255281427278184

namespace A134308

/-- `A038208(n)/gcd(2, A038220(n))` -/
def P11336255281427278184.Spec : Prop :=
  ∀ n, P11336255281427278184.a n = (A134308 n : ℚ)

end A134308

/-! ## A134308.P3690134360076982967

`A038207(n)/A007318(n)*A082137(n)`
-/

namespace A134308.P3690134360076982967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A007318 n : ℚ) * (A082137 n : ℚ)

end

end A134308.P3690134360076982967

namespace A134308

/-- `A038207(n)/A007318(n)*A082137(n)` -/
def P3690134360076982967.Spec : Prop :=
  ∀ n, P3690134360076982967.a n = (A134308 n : ℚ)

end A134308

/-! ## A134308.P2286866624994569843

`A055372(A066182(n+1))`
-/

namespace A134308.P2286866624994569843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055372 (A066182 (n + 1)).toNat

end

end A134308.P2286866624994569843

namespace A134308

/-- `A055372(A066182(n+1))` -/
def P2286866624994569843.Spec : Prop :=
  ∀ n, P2286866624994569843.a n = A134308 n

end A134308

/-!
# A134309: Triangle read by rows, where row n consists of n zeros followed by 2^(n-1).

The programs for A134309, the canonical program `A134309.P6504127793321082185` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134309 has offset 0).

The definition of A134309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134309.P6504127793321082185

`ceil(A130123(n)/2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A134309

/-- `ceil(A130123(n)/2)` -/
def P6504127793321082185.Spec : Prop :=
  ∀ n, P6504127793321082185.a n = A134309 n

theorem P6504127793321082185.correct : P6504127793321082185.Spec := by
  intro n
  simp only [A134309]

end A134309

/-! ## A134309.P11835119946958439095

`ceil(A131436(n+1)/4)`
-/

namespace A134309.P11835119946958439095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131436 (n + 1) : ℚ) / 4⌉

end

end A134309.P11835119946958439095

namespace A134309

/-- `ceil(A131436(n+1)/4)` -/
def P11835119946958439095.Spec : Prop :=
  ∀ n, P11835119946958439095.a n = A134309 n

end A134309

/-! ## A134309.P13724843750146279855

`A134315(n)-a(n-1)` with `a(0)=1`
-/

namespace A134309.P13724843750146279855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134315 n - a (n - 1)

end

end A134309.P13724843750146279855

namespace A134309

/-- `A134315(n)-a(n-1)` -/
def P13724843750146279855.Spec : Prop :=
  ∀ n, P13724843750146279855.a n = A134309 n

end A134309

/-! ## A134309.P2854851406729424977

`Δ[floor(2^(A003056(n)-1))]`
-/

namespace A134309.P2854851406729424977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A003056 n - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134309.P2854851406729424977

namespace A134309

/-- `Δ[floor(2^(A003056(n)-1))]` -/
def P2854851406729424977.Spec : Prop :=
  ∀ n, P2854851406729424977.a n = A134309 n

end A134309

/-! ## A134309.P2412009258472036161

`char[∑[n-1]]*A053120(n)`
-/

namespace A134309.P2412009258472036161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A053120 n

end

end A134309.P2412009258472036161

namespace A134309

/-- `char[∑[n-1]]*A053120(n)` -/
def P2412009258472036161.Spec : Prop :=
  ∀ n, P2412009258472036161.a n = A134309 n

end A134309

/-! ## A134309.P6027164503808955307

`Δ[A034008(round(sqrt(2*(n+1))))]`
-/

namespace A134309.P6027164503808955307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134309.P6027164503808955307

namespace A134309

/-- `Δ[A034008(round(sqrt(2*(n+1))))]` -/
def P6027164503808955307.Spec : Prop :=
  ∀ n, P6027164503808955307.a n = A134309 n

end A134309

/-! ## A134309.P8510807360255634989

`Δ[a(n-1)*A035214(n)]` with `a(0)=0, a(1)=1`
-/

namespace A134309.P8510807360255634989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) * A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134309.P8510807360255634989

namespace A134309

/-- `Δ[a(n-1)*A035214(n)]` -/
def P8510807360255634989.Spec : Prop :=
  ∀ n, P8510807360255634989.a n = A134309 n

end A134309

/-! ## A134309.P6473664984421220102

`a(n-round(sqrt(2*n)))*A124927(n)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A134309.P6473664984421220102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat * A124927 n

end

end A134309.P6473664984421220102

namespace A134309

/-- `a(n-round(sqrt(2*n)))*A124927(n)` -/
def P6473664984421220102.Spec : Prop :=
  ∀ n, P6473664984421220102.a n = A134309 n

end A134309

/-! ## A134309.P2870160808502311854

`a(n-round(sqrt(2*n)))*A136521(n)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A134309.P2870160808502311854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat * A136521 n

end

end A134309.P2870160808502311854

namespace A134309

/-- `a(n-round(sqrt(2*n)))*A136521(n)` -/
def P2870160808502311854.Spec : Prop :=
  ∀ n, P2870160808502311854.a n = A134309 n

end A134309

/-! ## A134309.P7227976154771019487

`a(n-round(sqrt(2*n)))*A002260(n+3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A134309.P7227976154771019487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat * A002260 (n + 3)

end

end A134309.P7227976154771019487

namespace A134309

/-- `a(n-round(sqrt(2*n)))*A002260(n+3)` -/
def P7227976154771019487.Spec : Prop :=
  ∀ n, P7227976154771019487.a n = A134309 n

end A134309

/-! ## A134309.P3874473081723285184

`A131577(A134402(n))`
-/

namespace A134309.P3874473081723285184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A134402 n).toNat

end

end A134309.P3874473081723285184

namespace A134309

/-- `A131577(A134402(n))` -/
def P3874473081723285184.Spec : Prop :=
  ∀ n, P3874473081723285184.a n = A134309 n

end A134309

/-! ## A134309.P6274539200004378274

`A166444(A127648(n))`
-/

namespace A134309.P6274539200004378274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A127648 n).toNat

end

end A134309.P6274539200004378274

namespace A134309

/-- `A166444(A127648(n))` -/
def P6274539200004378274.Spec : Prop :=
  ∀ n, P6274539200004378274.a n = A134309 n

end A134309

/-! ## A134309.P6852771291402888164

`Δ[A056469(A003056(n))]`
-/

namespace A134309.P6852771291402888164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134309.P6852771291402888164

namespace A134309

/-- `Δ[A056469(A003056(n))]` -/
def P6852771291402888164.Spec : Prop :=
  ∀ n, P6852771291402888164.a n = A134309 n

end A134309

/-! ## A134309.P12754660139751892698

`A158780(A127775(n+1))`
-/

namespace A134309.P12754660139751892698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A127775 (n + 1)).toNat

end

end A134309.P12754660139751892698

namespace A134309

/-- `A158780(A127775(n+1))` -/
def P12754660139751892698.Spec : Prop :=
  ∀ n, P12754660139751892698.a n = A134309 n

end A134309

/-! ## A134309.P4660900050531092408

`A393283(A127773(n+1))`
-/

namespace A134309.P4660900050531092408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393283 (A127773 (n + 1)).toNat

end

end A134309.P4660900050531092408

namespace A134309

/-- `A393283(A127773(n+1))` -/
def P4660900050531092408.Spec : Prop :=
  ∀ n, P4660900050531092408.a n = A134309 n

end A134309

/-! ## A134309.P9268030202374526433

`A023531(n)*A055372(n)`
-/

namespace A134309.P9268030202374526433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A055372 n

end

end A134309.P9268030202374526433

namespace A134309

/-- `A023531(n)*A055372(n)` -/
def P9268030202374526433.Spec : Prop :=
  ∀ n, P9268030202374526433.a n = A134309 n

end A134309

/-! ## A134309.P16326407971182141263

`A023531(n)*A059576(n)`
-/

namespace A134309.P16326407971182141263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A059576 n

end

end A134309.P16326407971182141263

namespace A134309

/-- `A023531(n)*A059576(n)` -/
def P16326407971182141263.Spec : Prop :=
  ∀ n, P16326407971182141263.a n = A134309 n

end A134309

/-! ## A134309.P12192739152606639789

`A023531(n)*A073429(n)`
-/

namespace A134309.P12192739152606639789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A073429 n

end

end A134309.P12192739152606639789

namespace A134309

/-- `A023531(n)*A073429(n)` -/
def P12192739152606639789.Spec : Prop :=
  ∀ n, P12192739152606639789.a n = A134309 n

end A134309

/-! ## A134309.P8218774240972925855

`A023531(n)*A081277(n)`
-/

namespace A134309.P8218774240972925855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A081277 n

end

end A134309.P8218774240972925855

namespace A134309

/-- `A023531(n)*A081277(n)` -/
def P8218774240972925855.Spec : Prop :=
  ∀ n, P8218774240972925855.a n = A134309 n

end A134309

/-! ## A134309.P12249005549552649735

`A023531(n)*A082137(n)`
-/

namespace A134309.P12249005549552649735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A082137 n

end

end A134309.P12249005549552649735

namespace A134309

/-- `A023531(n)*A082137(n)` -/
def P12249005549552649735.Spec : Prop :=
  ∀ n, P12249005549552649735.a n = A134309 n

end A134309

/-!
# A134310: (A000012 * A134309 + A134309 * A000012) - A000012, where the sequences are interpreted as lower triangular matrices.

The programs for A134310, the canonical program `A134310.P5762516781671223903` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134310 has offset 0).

The definition of A134310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134310.P18022853385480090843

`floor(cosh(log(A099627(n))))`
-/

namespace A134310.P18022853385480090843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (A099627 n : ℝ))⌋

end

end A134310.P18022853385480090843

namespace A134310

/-- `floor(cosh(log(A099627(n))))` -/
def P18022853385480090843.Spec : Prop :=
  ∀ n, P18022853385480090843.a n = A134310 n

end A134310

/-! ## A134310.P18052401396640240085

`floor(cosh(log(A173786(n)-1)))`
-/

namespace A134310.P18052401396640240085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (A173786 n - 1 : ℝ))⌋

end

end A134310.P18052401396640240085

namespace A134310

/-- `floor(cosh(log(A173786(n)-1)))` -/
def P18052401396640240085.Spec : Prop :=
  ∀ n, P18052401396640240085.a n = A134310 n

end A134310

/-! ## A134310.P14733628213044777424

`A099627(n-round(sqrt(2*n)))`
-/

namespace A134310.P14733628213044777424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A134310.P14733628213044777424

namespace A134310

/-- `A099627(n-round(sqrt(2*n)))` -/
def P14733628213044777424.Spec : Prop :=
  ∀ n, P14733628213044777424.a n = A134310 n

end A134310

/-! ## A134310.P12624851123840775406

`floor(A099627(round(sqrt(n²+1)))/2)`
-/

namespace A134310.P12624851123840775406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099627 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2⌋

end

end A134310.P12624851123840775406

namespace A134310

/-- `floor(A099627(round(sqrt(n²+1)))/2)` -/
def P12624851123840775406.Spec : Prop :=
  ∀ n, P12624851123840775406.a n = A134310 n

end A134310

/-! ## A134310.P14305518207863242165

`A048645(n-round(sqrt(2*n))+2)-1`
-/

namespace A134310.P14305518207863242165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 2).toNat - 1

end

end A134310.P14305518207863242165

namespace A134310

/-- `A048645(n-round(sqrt(2*n))+2)-1` -/
def P14305518207863242165.Spec : Prop :=
  ∀ n, P14305518207863242165.a n = A134310 n

end A134310

/-! ## A134310.P5762516781671223903

`A173786(n-A123578(n))-1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134310

/-- `A173786(n-A123578(n))-1` -/
def P5762516781671223903.Spec : Prop :=
  ∀ n, P5762516781671223903.a n = A134310 n

theorem P5762516781671223903.correct : P5762516781671223903.Spec := by
  intro n
  simp only [A134310]

end A134310

/-! ## A134310.P11666340717513780733

`ceil(A048645(n+2)/A020639(A257255(n+1)))-1`
-/

namespace A134310.P11666340717513780733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048645 (n + 2) : ℚ) / (A020639 (A257255 (n + 1)).toNat : ℚ)⌉ - 1

end

end A134310.P11666340717513780733

namespace A134310

/-- `ceil(A048645(n+2)/A020639(A257255(n+1)))-1` -/
def P11666340717513780733.Spec : Prop :=
  ∀ n, P11666340717513780733.a n = A134310 n

end A134310

/-! ## A134310.P5911859233898157388

`A065033(A099627(n)-1)`
-/

namespace A134310.P5911859233898157388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A099627 n - 1).toNat

end

end A134310.P5911859233898157388

namespace A134310

/-- `A065033(A099627(n)-1)` -/
def P5911859233898157388.Spec : Prop :=
  ∀ n, P5911859233898157388.a n = A134310 n

end A134310

/-! ## A134310.P12104449195818387336

`A003602(or(1, abs(2-A099627(n))))`
-/

namespace A134310.P12104449195818387336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.lor 1 |2 - A099627 n|).toNat

end

end A134310.P12104449195818387336

namespace A134310

/-- `A003602(or(1, abs(2-A099627(n))))` -/
def P12104449195818387336.Spec : Prop :=
  ∀ n, P12104449195818387336.a n = A134310 n

end A134310

/-!
# A134311: Row sums of triangle A134310.

The programs for A134311, the canonical program `A134311.P538118759189282240` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134311 has offset 0).

The definition of A134311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134311.P15050776646154984934

`∑[ogf((1-2x+2x^2-2x^3)/(1-4x+4x^2))]-n`
-/

namespace A134311.P15050776646154984934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, -2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A134311.P15050776646154984934

namespace A134311

/-- `∑[ogf((1-2x+2x^2-2x^3)/(1-4x+4x^2))]-n` -/
def P15050776646154984934.Spec : Prop :=
  ∀ n, P15050776646154984934.a n = A134311 n

end A134311

/-! ## A134311.P538118759189282240

`∑[floor((n+4)*2^(n-2))]-n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134311

/-- `∑[floor((n+4)*2^(n-2))]-n` -/
def P538118759189282240.Spec : Prop :=
  ∀ n, P538118759189282240.a n = A134311 n

theorem P538118759189282240.correct : P538118759189282240.Spec := by
  intro n
  simp only [A134311]

end A134311

/-! ## A134311.P8405981379148396786

`record[A087447(n)-n]`
-/

namespace A134311.P8405981379148396786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134311.P8405981379148396786

namespace A134311

/-- `record[A087447(n)-n]` -/
def P8405981379148396786.Spec : Prop :=
  ∀ n, P8405981379148396786.a n = A134311 n

end A134311

/-! ## A134311.P148767110166284100

`abs(n-∑[A131352(n)])`
-/

namespace A134311.P148767110166284100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A134311.P148767110166284100

namespace A134311

/-- `abs(n-∑[A131352(n)])` -/
def P148767110166284100.Spec : Prop :=
  ∀ n, P148767110166284100.a n = A134311 n

end A134311

/-! ## A134311.P1842983856679666932

`∑[2*A045891(n)-1]`
-/

namespace A134311.P1842983856679666932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045891 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134311.P1842983856679666932

namespace A134311

/-- `∑[2*A045891(n)-1]` -/
def P1842983856679666932.Spec : Prop :=
  ∀ n, P1842983856679666932.a n = A134311 n

end A134311

/-! ## A134311.P17728560367115333373

`∑[∑[2*A034007(n)]-1]`
-/

namespace A134311.P17728560367115333373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034007 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134311.P17728560367115333373

namespace A134311

/-- `∑[∑[2*A034007(n)]-1]` -/
def P17728560367115333373.Spec : Prop :=
  ∀ n, P17728560367115333373.a n = A134311 n

end A134311

/-! ## A134311.P6231958595155954078

`abs(2*A045623(n)-(n+1))`
-/

namespace A134311.P6231958595155954078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A045623 n - (n + 1 : ℤ)|

end

end A134311.P6231958595155954078

namespace A134311

/-- `abs(2*A045623(n)-(n+1))` -/
def P6231958595155954078.Spec : Prop :=
  ∀ n, P6231958595155954078.a n = A134311 n

end A134311

/-! ## A134311.P8647310837295241264

`record[(n+2)/2*A011782(n)-n]`
-/

namespace A134311.P8647310837295241264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A011782 n : ℚ) - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134311.P8647310837295241264

namespace A134311

/-- `record[(n+2)/2*A011782(n)-n]` -/
def P8647310837295241264.Spec : Prop :=
  ∀ n, P8647310837295241264.a n = (A134311 n : ℚ)

end A134311

/-! ## A134311.P2520936250392974196

`record[Δ[A057711(n)]-n]`
-/

namespace A134311.P2520936250392974196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134311.P2520936250392974196

namespace A134311

/-- `record[Δ[A057711(n)]-n]` -/
def P2520936250392974196.Spec : Prop :=
  ∀ n, P2520936250392974196.a n = A134311 n

end A134311

/-! ## A134311.P6503351676128658415

`record[Δ[n*A166444(n)]-n]`
-/

namespace A134311.P6503351676128658415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A166444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134311.P6503351676128658415

namespace A134311

/-- `record[Δ[n*A166444(n)]-n]` -/
def P6503351676128658415.Spec : Prop :=
  ∀ n, P6503351676128658415.a n = A134311 n

end A134311

/-! ## A134311.P10176547544556103967

`round(A328890(n+1)/2-n)`
-/

namespace A134311.P10176547544556103967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A328890 (n + 1) : ℚ) / 2 - (n : ℚ))

end

end A134311.P10176547544556103967

namespace A134311

/-- `round(A328890(n+1)/2-n)` -/
def P10176547544556103967.Spec : Prop :=
  ∀ n, P10176547544556103967.a n = A134311 n

end A134311

/-! ## A134311.P4821371489832030080

`(A001792(n+1)-A065475(2*n+1))/2`
-/

namespace A134311.P4821371489832030080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001792 (n + 1) - A065475 (2 * n + 1) : ℚ) / 2

end

end A134311.P4821371489832030080

namespace A134311

/-- `(A001792(n+1)-A065475(2*n+1))/2` -/
def P4821371489832030080.Spec : Prop :=
  ∀ n, P4821371489832030080.a n = (A134311 n : ℚ)

end A134311

/-!
# A134312: A097806 * A134309.

The programs for A134312, the canonical program `A134312.P1287057998980359310` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134312 has offset 0).

The definition of A134312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134312.P12575091969085604096

`2*a(n-round(sqrt(2*n)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A134312.P12575091969085604096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 0, 1] fun n a =>
  2 * a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A134312.P12575091969085604096

namespace A134312

/-- `2*a(n-round(sqrt(2*n)))` -/
def P12575091969085604096.Spec : Prop :=
  ∀ n, (P12575091969085604096.a n : ℤ) = A134312 n

end A134312

/-! ## A134312.P4111318010102077214

`round(2^abs(A128064(n+1))/4)`
-/

namespace A134312.P4111318010102077214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (|A128064 (n + 1)| : ℤ) / 4)

end

end A134312.P4111318010102077214

namespace A134312

/-- `round(2^abs(A128064(n+1))/4)` -/
def P4111318010102077214.Spec : Prop :=
  ∀ n, P4111318010102077214.a n = A134312 n

end A134312

/-! ## A134312.P1287057998980359310

`A166444(A144217(n+2))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A134312

/-- `A166444(A144217(n+2))` -/
def P1287057998980359310.Spec : Prop :=
  ∀ n, P1287057998980359310.a n = A134312 n

theorem P1287057998980359310.correct : P1287057998980359310.Spec := by
  intro n
  simp only [A134312]

end A134312

/-! ## A134312.P14612195203894826768

`A097806(n)*A136523(n)`
-/

namespace A134312.P14612195203894826768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A136523 n

end

end A134312.P14612195203894826768

namespace A134312

/-- `A097806(n)*A136523(n)` -/
def P14612195203894826768.Spec : Prop :=
  ∀ n, P14612195203894826768.a n = A134312 n

end A134312

/-! ## A134312.P12211208330354984446

`A097806(n)*A232089(n)`
-/

namespace A134312.P12211208330354984446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A232089 n

end

end A134312.P12211208330354984446

namespace A134312

/-- `A097806(n)*A232089(n)` -/
def P12211208330354984446.Spec : Prop :=
  ∀ n, P12211208330354984446.a n = A134312 n

end A134312

/-! ## A134312.P13517664623630647199

`lcm(A136523(n), A167374(n))`
-/

namespace A134312.P13517664623630647199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A136523 n) (A167374 n)

end

end A134312.P13517664623630647199

namespace A134312

/-- `lcm(A136523(n), A167374(n))` -/
def P13517664623630647199.Spec : Prop :=
  ∀ n, (P13517664623630647199.a n : ℤ) = A134312 n

end A134312

/-! ## A134312.P9622866219762462527

`A134315(n+1)/A001404(n)`
-/

namespace A134312.P9622866219762462527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134315 (n + 1) : ℚ) / (A001404 n : ℚ)

end

end A134312.P9622866219762462527

namespace A134312

/-- `A134315(n+1)/A001404(n)` -/
def P9622866219762462527.Spec : Prop :=
  ∀ n, P9622866219762462527.a n = (A134312 n : ℚ)

end A134312

/-! ## A134312.P16002371979324444264

`A134315(n+1)/A048004(n)`
-/

namespace A134312.P16002371979324444264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134315 (n + 1) : ℚ) / (A048004 n : ℚ)

end

end A134312.P16002371979324444264

namespace A134312

/-- `A134315(n+1)/A048004(n)` -/
def P16002371979324444264.Spec : Prop :=
  ∀ n, P16002371979324444264.a n = (A134312 n : ℚ)

end A134312

/-! ## A134312.P9947889761085042288

`A134315(n+1)/A052509(n)`
-/

namespace A134312.P9947889761085042288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134315 (n + 1) : ℚ) / (A052509 n : ℚ)

end

end A134312.P9947889761085042288

namespace A134312

/-- `A134315(n+1)/A052509(n)` -/
def P9947889761085042288.Spec : Prop :=
  ∀ n, P9947889761085042288.a n = (A134312 n : ℚ)

end A134312

/-! ## A134312.P11990890690190178503

`A134315(n+1)/A089688(n)`
-/

namespace A134312.P11990890690190178503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134315 (n + 1) : ℚ) / (A089688 n : ℚ)

end

end A134312.P11990890690190178503

namespace A134312

/-- `A134315(n+1)/A089688(n)` -/
def P11990890690190178503.Spec : Prop :=
  ∀ n, P11990890690190178503.a n = (A134312 n : ℚ)

end A134312

/-! ## A134312.P15111433488921873087

`A134315(n+1)/A092905(n)`
-/

namespace A134312.P15111433488921873087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134315 (n + 1) : ℚ) / (A092905 n : ℚ)

end

end A134312.P15111433488921873087

namespace A134312

/-- `A134315(n+1)/A092905(n)` -/
def P15111433488921873087.Spec : Prop :=
  ∀ n, P15111433488921873087.a n = (A134312 n : ℚ)

end A134312

/-! ## A134312.P470245210031197457

`A134315(n+1)/A103923(n)`
-/

namespace A134312.P470245210031197457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134315 (n + 1) : ℚ) / (A103923 n : ℚ)

end

end A134312.P470245210031197457

namespace A134312

/-- `A134315(n+1)/A103923(n)` -/
def P470245210031197457.Spec : Prop :=
  ∀ n, P470245210031197457.a n = (A134312 n : ℚ)

end A134312

/-! ## A134312.P9489419534768717652

`A134309(n+1-A051340(n+1))`
-/

namespace A134312.P9489419534768717652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134309 ((n + 1 : ℤ) - A051340 (n + 1)).toNat

end

end A134312.P9489419534768717652

namespace A134312

/-- `A134309(n+1-A051340(n+1))` -/
def P9489419534768717652.Spec : Prop :=
  ∀ n, P9489419534768717652.a n = A134312 n

end A134312

/-! ## A134312.P578372226796744900

`A134315(n+1)/A114292(n)`
-/

namespace A134312.P578372226796744900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134315 (n + 1) : ℚ) / (A114292 n : ℚ)

end

end A134312.P578372226796744900

namespace A134312

/-- `A134315(n+1)/A114292(n)` -/
def P578372226796744900.Spec : Prop :=
  ∀ n, P578372226796744900.a n = (A134312 n : ℚ)

end A134312

/-! ## A134312.P13310446583421219194

`A134315(n+1)/A140996(n)`
-/

namespace A134312.P13310446583421219194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134315 (n + 1) : ℚ) / (A140996 n : ℚ)

end

end A134312.P13310446583421219194

namespace A134312

/-- `A134315(n+1)/A140996(n)` -/
def P13310446583421219194.Spec : Prop :=
  ∀ n, P13310446583421219194.a n = (A134312 n : ℚ)

end A134312

/-! ## A134312.P16121485519465564039

`A134315(n+1)/A140998(n)`
-/

namespace A134312.P16121485519465564039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134315 (n + 1) : ℚ) / (A140998 n : ℚ)

end

end A134312.P16121485519465564039

namespace A134312

/-- `A134315(n+1)/A140998(n)` -/
def P16121485519465564039.Spec : Prop :=
  ∀ n, P16121485519465564039.a n = (A134312 n : ℚ)

end A134312

/-! ## A134312.P10279535101661572728

`floor(ratio[ratio[A099594(n)+1]])`
-/

namespace A134312.P10279535101661572728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A134312.P10279535101661572728

namespace A134312

/-- `floor(ratio[ratio[A099594(n)+1]])` -/
def P10279535101661572728.Spec : Prop :=
  ∀ n, P10279535101661572728.a n = A134312 n

end A134312

/-! ## A134312.P17442912763139038248

`A134315(n+1)/A140997(n)`
-/

namespace A134312.P17442912763139038248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134315 (n + 1) : ℚ) / (A140997 n : ℚ)

end

end A134312.P17442912763139038248

namespace A134312

/-- `A134315(n+1)/A140997(n)` -/
def P17442912763139038248.Spec : Prop :=
  ∀ n, P17442912763139038248.a n = (A134312 n : ℚ)

end A134312

/-! ## A134312.P9841908101581245735

`C(A232089(n), A117401(n+1))`
-/

namespace A134312.P9841908101581245735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A232089 n).toNat (A117401 (n + 1)).toNat

end

end A134312.P9841908101581245735

namespace A134312

/-- `C(A232089(n), A117401(n+1))` -/
def P9841908101581245735.Spec : Prop :=
  ∀ n, (P9841908101581245735.a n : ℤ) = A134312 n

end A134312

/-! ## A134312.P4915963790760521442

`floor(ratio[ratio[A117401(n)+1]])`
-/

namespace A134312.P4915963790760521442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A134312.P4915963790760521442

namespace A134312

/-- `floor(ratio[ratio[A117401(n)+1]])` -/
def P4915963790760521442.Spec : Prop :=
  ∀ n, P4915963790760521442.a n = A134312 n

end A134312

/-!
# A134314: First differences of A134429.

The programs for A134314, the canonical program `A134314.P16775477535399717095` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134314 has offset 0).

The definition of A134314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134314.P16775477535399717095

`A134429(n+1)-A134429(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134314

/-- `A134429(n+1)-A134429(n)` -/
def P16775477535399717095.Spec : Prop :=
  ∀ n, P16775477535399717095.a n = A134314 n

theorem P16775477535399717095.correct : P16775477535399717095.Spec := by
  intro n
  simp only [A134314]

end A134314

/-! ## A134314.P9552925087949222120

`Δ[or(4, xor(2*n, (-1)^n))]`
-/

namespace A134314.P9552925087949222120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (Int.xor (2 * n : ℤ) ((-1) ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134314.P9552925087949222120

namespace A134314

/-- `Δ[or(4, xor(2*n, (-1)^n))]` -/
def P9552925087949222120.Spec : Prop :=
  ∀ n, P9552925087949222120.a n = A134314 n

end A134314

/-! ## A134314.P2513477401398146958

`Δ[ogf((3+x-x^2-3x^3)/(1+2x+2x^2+2x^3+x^4))]`
-/

namespace A134314.P2513477401398146958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -1, -3] [1, 2, 2, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134314.P2513477401398146958

namespace A134314

/-- `Δ[ogf((3+x-x^2-3x^3)/(1+2x+2x^2+2x^3+x^4))]` -/
def P2513477401398146958.Spec : Prop :=
  ∀ n, P2513477401398146958.a n = A134314 n

end A134314

/-! ## A134314.P3096842128214605056

`Δ[or(4, (2*n+1)*(1-4/2)^n)]`
-/

namespace A134314.P3096842128214605056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) * (1 - (4 : ℚ) / 2) ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134314.P3096842128214605056

namespace A134314

/-- `Δ[or(4, (2*n+1)*(1-4/2)^n)]` -/
def P3096842128214605056.Spec : Prop :=
  ∀ n, P3096842128214605056.a n = A134314 n

end A134314

/-! ## A134314.P5305706016311849062

`Δ[A134429(n)]`
-/

namespace A134314.P5305706016311849062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134314.P5305706016311849062

namespace A134314

/-- `Δ[A134429(n)]` -/
def P5305706016311849062.Spec : Prop :=
  ∀ n, P5305706016311849062.a n = A134314 n

theorem P5305706016311849062.correct : P5305706016311849062.Spec := by
  intro n
  simp only [A134314, Nat.add_sub_cancel, A134314.P5305706016311849062.f1, A134314.P5305706016311849062.a, A134314.P16775477535399717095.a, SequenceMachineLib.memo_apply]

end A134314

/-! ## A134314.P3259671090505476126

`Δ[Δ[xor(3, -a(n-1))]]` with `a(0)=0`
-/

namespace A134314.P3259671090505476126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.xor 3 (-f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134314.P3259671090505476126

namespace A134314

/-- `Δ[Δ[xor(3, -a(n-1))]]` -/
def P3259671090505476126.Spec : Prop :=
  ∀ n, P3259671090505476126.a n = A134314 n

end A134314

/-! ## A134314.P8632524595819773800

`Δ[2*or(3, A038608(n))]`
-/

namespace A134314.P8632524595819773800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 3 (A038608 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134314.P8632524595819773800

namespace A134314

/-- `Δ[2*or(3, A038608(n))]` -/
def P8632524595819773800.Spec : Prop :=
  ∀ n, P8632524595819773800.a n = A134314 n

end A134314

/-! ## A134314.P10229780040128171331

`Δ[2*or(3, A131738(n))]`
-/

namespace A134314.P10229780040128171331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 3 (A131738 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134314.P10229780040128171331

namespace A134314

/-- `Δ[2*or(3, A131738(n))]` -/
def P10229780040128171331.Spec : Prop :=
  ∀ n, P10229780040128171331.a n = A134314 n

end A134314

/-! ## A134314.P3182059555489501673

`(A084099(n+1)+A004277(n+1))*A280560(n+1)`
-/

namespace A134314.P3182059555489501673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084099 (n + 1) + A004277 (n + 1)) * A280560 (n + 1)

end

end A134314.P3182059555489501673

namespace A134314

/-- `(A084099(n+1)+A004277(n+1))*A280560(n+1)` -/
def P3182059555489501673.Spec : Prop :=
  ∀ n, P3182059555489501673.a n = A134314 n

end A134314

/-! ## A134314.P242712114189264457

`A004525(n+1)*A022144(n+1)/A038608(n+1)`
-/

namespace A134314.P242712114189264457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (n + 1) * A022144 (n + 1) : ℚ) / (A038608 (n + 1) : ℚ)

end

end A134314.P242712114189264457

namespace A134314

/-- `A004525(n+1)*A022144(n+1)/A038608(n+1)` -/
def P242712114189264457.Spec : Prop :=
  ∀ n, P242712114189264457.a n = (A134314 n : ℚ)

end A134314

/-! ## A134314.P4767168618496204135

`Δ[Δ[xor(n, Δ[xor(1, n)])]]`
-/

namespace A134314.P4767168618496204135
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134314.P4767168618496204135

namespace A134314

/-- `Δ[Δ[xor(n, Δ[xor(1, n)])]]` -/
def P4767168618496204135.Spec : Prop :=
  ∀ n, P4767168618496204135.a n = A134314 n

end A134314

/-!
# A134315: A134309 * A097806.

The programs for A134315, the canonical program `A134315.P18118181357833699062` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134315 has offset 1).

The definition of A134315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134315.P18049077855573372592

`2*a(n-round(sqrt(2*n)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A134315.P18049077855573372592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 0] fun n a =>
  2 * a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A134315.P18049077855573372592

namespace A134315

/-- `2*a(n-round(sqrt(2*n)))` -/
def P18049077855573372592.Spec : Prop :=
  ∀ n, (P18049077855573372592.a n : ℤ) = A134315 (n + 1)

end A134315

/-! ## A134315.P11612015815831628710

`char[C(ceil(n/2), 2)+n]*A193820(n)`
-/

namespace A134315.P11612015815831628710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A193820 n

end

end A134315.P11612015815831628710

namespace A134315

/-- `char[C(ceil(n/2), 2)+n]*A193820(n)` -/
def P11612015815831628710.Spec : Prop :=
  ∀ n, P11612015815831628710.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P18118181357833699062

`A158780(A132774(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134315

/-- `A158780(A132774(n+1))` -/
def P18118181357833699062.Spec : Prop :=
  ∀ n, P18118181357833699062.a n = A134315 (n + 1)

theorem P18118181357833699062.correct : P18118181357833699062.Spec := by
  intro n
  simp only [A134315, Nat.add_sub_cancel]

end A134315

/-! ## A134315.P403961939337725834

`A001404(n)*A134312(n)`
-/

namespace A134315.P403961939337725834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 n * A134312 n

end

end A134315.P403961939337725834

namespace A134315

/-- `A001404(n)*A134312(n)` -/
def P403961939337725834.Spec : Prop :=
  ∀ n, P403961939337725834.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P10372005174935748330

`A048004(n)*A134312(n)`
-/

namespace A134315.P10372005174935748330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n * A134312 n

end

end A134315.P10372005174935748330

namespace A134315

/-- `A048004(n)*A134312(n)` -/
def P10372005174935748330.Spec : Prop :=
  ∀ n, P10372005174935748330.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P18321968506958658036

`A052509(n)*A134312(n)`
-/

namespace A134315.P18321968506958658036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n * A134312 n

end

end A134315.P18321968506958658036

namespace A134315

/-- `A052509(n)*A134312(n)` -/
def P18321968506958658036.Spec : Prop :=
  ∀ n, P18321968506958658036.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P11709254871398775103

`A089688(n)*A134312(n)`
-/

namespace A134315.P11709254871398775103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 n * A134312 n

end

end A134315.P11709254871398775103

namespace A134315

/-- `A089688(n)*A134312(n)` -/
def P11709254871398775103.Spec : Prop :=
  ∀ n, P11709254871398775103.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P8969668817306276441

`A092905(n)*A134312(n)`
-/

namespace A134315.P8969668817306276441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 n * A134312 n

end

end A134315.P8969668817306276441

namespace A134315

/-- `A092905(n)*A134312(n)` -/
def P8969668817306276441.Spec : Prop :=
  ∀ n, P8969668817306276441.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P5163408528526408849

`A103923(n)*A134312(n)`
-/

namespace A134315.P5163408528526408849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 n * A134312 n

end

end A134315.P5163408528526408849

namespace A134315

/-- `A103923(n)*A134312(n)` -/
def P5163408528526408849.Spec : Prop :=
  ∀ n, P5163408528526408849.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P11297581041301485339

`A114114(n)*A134312(n)`
-/

namespace A134315.P11297581041301485339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114114 n * A134312 n

end

end A134315.P11297581041301485339

namespace A134315

/-- `A114114(n)*A134312(n)` -/
def P11297581041301485339.Spec : Prop :=
  ∀ n, P11297581041301485339.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P11607094082008055587

`abs(Δ[A134309(n)])`
-/

namespace A134315.P11607094082008055587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A134315.P11607094082008055587

namespace A134315

/-- `abs(Δ[A134309(n)])` -/
def P11607094082008055587.Spec : Prop :=
  ∀ n, P11607094082008055587.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P10954730672268931814

`abs(floor(Δ[A130123(n)/2]))`
-/

namespace A134315.P10954730672268931814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130123 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊f1 (n + 1) - f1 n⌋|

end

end A134315.P10954730672268931814

namespace A134315

/-- `abs(floor(Δ[A130123(n)/2]))` -/
def P10954730672268931814.Spec : Prop :=
  ∀ n, P10954730672268931814.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P4477282849231950113

`A134309(char[comp[∑[n-1]]]+n)`
-/

namespace A134315.P4477282849231950113
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134309 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A134315.P4477282849231950113

namespace A134315

/-- `A134309(char[comp[∑[n-1]]]+n)` -/
def P4477282849231950113.Spec : Prop :=
  ∀ n, P4477282849231950113.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P13926075043111709368

`A134309(n+1)+A134309(n)`
-/

namespace A134315.P13926075043111709368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134309 (n + 1) + A134309 n

end

end A134315.P13926075043111709368

namespace A134315

/-- `A134309(n+1)+A134309(n)` -/
def P13926075043111709368.Spec : Prop :=
  ∀ n, P13926075043111709368.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P4632038660419132635

`A193787(n+1)+A193787(n)-A007318(n+1)`
-/

namespace A134315.P4632038660419132635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193787 (n + 1) + (A193787 n - A007318 (n + 1))

end

end A134315.P4632038660419132635

namespace A134315

/-- `A193787(n+1)+A193787(n)-A007318(n+1)` -/
def P4632038660419132635.Spec : Prop :=
  ∀ n, P4632038660419132635.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P10785167990455574795

`A114292(n)*A134312(n)`
-/

namespace A134315.P10785167990455574795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114292 n * A134312 n

end

end A134315.P10785167990455574795

namespace A134315

/-- `A114292(n)*A134312(n)` -/
def P10785167990455574795.Spec : Prop :=
  ∀ n, P10785167990455574795.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P16810610098366486149

`A134312(n)*A140996(n)`
-/

namespace A134315.P16810610098366486149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134312 n * A140996 n

end

end A134315.P16810610098366486149

namespace A134315

/-- `A134312(n)*A140996(n)` -/
def P16810610098366486149.Spec : Prop :=
  ∀ n, P16810610098366486149.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P4448237449348484921

`A134312(n)*A140998(n)`
-/

namespace A134315.P4448237449348484921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134312 n * A140998 n

end

end A134315.P4448237449348484921

namespace A134315

/-- `A134312(n)*A140998(n)` -/
def P4448237449348484921.Spec : Prop :=
  ∀ n, P4448237449348484921.a n = A134315 (n + 1)

end A134315

/-! ## A134315.P4901932292439871085

`lcm(A009999(n), A134312(n))`
-/

namespace A134315.P4901932292439871085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009999 n) (A134312 n)

end

end A134315.P4901932292439871085

namespace A134315

/-- `lcm(A009999(n), A134312(n))` -/
def P4901932292439871085.Spec : Prop :=
  ∀ n, (P4901932292439871085.a n : ℤ) = A134315 (n + 1)

end A134315

/-! ## A134315.P10777043151572408606

`A216228(A292564(n))`
-/

namespace A134315.P10777043151572408606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 (A292564 n).toNat

end

end A134315.P10777043151572408606

namespace A134315

/-- `A216228(A292564(n))` -/
def P10777043151572408606.Spec : Prop :=
  ∀ n, P10777043151572408606.a n = A134315 (n + 1)

end A134315

/-!
# A134316: a(n) = index of first derangement of 1..n (n>=2).

The programs for A134316, the canonical program `A134316.P9027486169868280772` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134316 has offset 2).

The definition of A134316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134316.P9027486169868280772

`a(n-2)+(n+1)!` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134316

/-- `a(n-2)+(n+1)!` -/
def P9027486169868280772.Spec : Prop :=
  ∀ n, (P9027486169868280772.a n : ℤ) = A134316 (n + 2)

theorem P9027486169868280772.correct : P9027486169868280772.Spec := by
  intro n
  simp only [A134316, Nat.add_sub_cancel]

end A134316

/-! ## A134316.P8571349230412454479

`∏[n+1]+a(n-2)` with `a(0)=2, a(1)=4`
-/

namespace A134316.P8571349230412454479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A134316.P8571349230412454479

namespace A134316

/-- `∏[n+1]+a(n-2)` -/
def P8571349230412454479.Spec : Prop :=
  ∀ n, (P8571349230412454479.a n : ℤ) = A134316 (n + 2)

end A134316

/-! ## A134316.P4639385572726301410

`A136580(n+1)+1`
-/

namespace A134316.P4639385572726301410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136580 (n + 1) + 1

end

end A134316.P4639385572726301410

namespace A134316

/-- `A136580(n+1)+1` -/
def P4639385572726301410.Spec : Prop :=
  ∀ n, P4639385572726301410.a n = A134316 (n + 2)

end A134316

/-! ## A134316.P18184844706006059435

`∑[A153229(n+2)]+2`
-/

namespace A134316.P18184844706006059435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A134316.P18184844706006059435

namespace A134316

/-- `∑[A153229(n+2)]+2` -/
def P18184844706006059435.Spec : Prop :=
  ∀ n, P18184844706006059435.a n = A134316 (n + 2)

end A134316

/-! ## A134316.P13082091546828259667

`or(1, A341900(n+1))+1`
-/

namespace A134316.P13082091546828259667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A341900 (n + 1)) + 1

end

end A134316.P13082091546828259667

namespace A134316

/-- `or(1, A341900(n+1))+1` -/
def P13082091546828259667.Spec : Prop :=
  ∀ n, P13082091546828259667.a n = A134316 (n + 2)

end A134316

/-!
# A134318: A007318 * A134317.

The programs for A134318, the canonical program `A134318.P15553528286371622200` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134318 has offset 0).

The definition of A134318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134318.P15553528286371622200

`A128175(n+1)*A232089(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A134318

/-- `A128175(n+1)*A232089(n)` -/
def P15553528286371622200.Spec : Prop :=
  ∀ n, P15553528286371622200.a n = A134318 n

theorem P15553528286371622200.correct : P15553528286371622200.Spec := by
  intro n
  simp only [A134318]

end A134318

/-! ## A134318.P16970364274287529182

`A055248(n-round(sqrt(2*n)))*A232089(n)`
-/

namespace A134318.P16970364274287529182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat * A232089 n

end

end A134318.P16970364274287529182

namespace A134318

/-- `A055248(n-round(sqrt(2*n)))*A232089(n)` -/
def P16970364274287529182.Spec : Prop :=
  ∀ n, P16970364274287529182.a n = A134318 n

end A134318

/-! ## A134318.P9379273214926933646

`A011782(A002262(n))*A128175(n+1)`
-/

namespace A134318.P9379273214926933646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n).toNat * A128175 (n + 1)

end

end A134318.P9379273214926933646

namespace A134318

/-- `A011782(A002262(n))*A128175(n+1)` -/
def P9379273214926933646.Spec : Prop :=
  ∀ n, P9379273214926933646.a n = A134318 n

end A134318

/-! ## A134318.P17898886459779199515

`A118800(A112367(n))*A128175(n+1)`
-/

namespace A134318.P17898886459779199515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 (A112367 n).toNat * A128175 (n + 1)

end

end A134318.P17898886459779199515

namespace A134318

/-- `A118800(A112367(n))*A128175(n+1)` -/
def P17898886459779199515.Spec : Prop :=
  ∀ n, P17898886459779199515.a n = A134318 n

end A134318

/-! ## A134318.P10510643530872932007

`A128175(n+1)*A128175(A112367(n)+1)`
-/

namespace A134318.P10510643530872932007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (n + 1) * A128175 (A112367 n + 1).toNat

end

end A134318.P10510643530872932007

namespace A134318

/-- `A128175(n+1)*A128175(A112367(n)+1)` -/
def P10510643530872932007.Spec : Prop :=
  ∀ n, P10510643530872932007.a n = A134318 n

end A134318

/-! ## A134318.P7031194079958871586

`A193820(A061579(n))*A232089(n)`
-/

namespace A134318.P7031194079958871586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A061579 n).toNat * A232089 n

end

end A134318.P7031194079958871586

namespace A134318

/-- `A193820(A061579(n))*A232089(n)` -/
def P7031194079958871586.Spec : Prop :=
  ∀ n, P7031194079958871586.a n = A134318 n

end A134318

/-! ## A134318.P6778762830624068439

`A054124(A245300(n))*A128175(n+1)`
-/

namespace A134318.P6778762830624068439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A245300 n).toNat * A128175 (n + 1)

end

end A134318.P6778762830624068439

namespace A134318

/-- `A054124(A245300(n))*A128175(n+1)` -/
def P6778762830624068439.Spec : Prop :=
  ∀ n, P6778762830624068439.a n = A134318 n

end A134318

/-! ## A134318.P4735708939453895922

`A000010(A059268(n))*A128175(n+1)`
-/

namespace A134318.P4735708939453895922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059268 n).toNat * A128175 (n + 1)

end

end A134318.P4735708939453895922

namespace A134318

/-- `A000010(A059268(n))*A128175(n+1)` -/
def P4735708939453895922.Spec : Prop :=
  ∀ n, P4735708939453895922.a n = A134318 n

end A134318

/-! ## A134318.P6731548981564619821

`A000010(A059268(n))*A193820(A061579(n))`
-/

namespace A134318.P6731548981564619821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059268 n).toNat * A193820 (A061579 n).toNat

end

end A134318.P6731548981564619821

namespace A134318

/-- `A000010(A059268(n))*A193820(A061579(n))` -/
def P6731548981564619821.Spec : Prop :=
  ∀ n, P6731548981564619821.a n = A134318 n

end A134318

/-!
# A134319: Triangle read by rows. T(n, k) = binomial(n, k)*(2^k - 1 + 0^k).

The programs for A134319, the canonical program `A134319.P9968611260785887123` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134319 has offset 0).

The definition of A134319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134319.P9968611260785887123

`2*A082137(n)-A007318(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A134319

/-- `2*A082137(n)-A007318(n)` -/
def P9968611260785887123.Spec : Prop :=
  ∀ n, P9968611260785887123.a n = A134319 n

theorem P9968611260785887123.correct : P9968611260785887123.Spec := by
  intro n
  simp only [A134319]

end A134319

/-! ## A134319.P10910299758755939092

`lcm(2, A013609(n))-A007318(n)`
-/

namespace A134319.P10910299758755939092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A013609 n) : ℤ) - A007318 n

end

end A134319.P10910299758755939092

namespace A134319

/-- `lcm(2, A013609(n))-A007318(n)` -/
def P10910299758755939092.Spec : Prop :=
  ∀ n, P10910299758755939092.a n = A134319 n

end A134319

/-! ## A134319.P13980042316830631804

`A007318(n)*A255047(A002262(n))`
-/

namespace A134319.P13980042316830631804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A255047 (A002262 n).toNat

end

end A134319.P13980042316830631804

namespace A134319

/-- `A007318(n)*A255047(A002262(n))` -/
def P13980042316830631804.Spec : Prop :=
  ∀ n, P13980042316830631804.a n = A134319 n

end A134319

/-! ## A134319.P17476979950422303336

`A000225(A144328(n+1))*A007318(n)`
-/

namespace A134319.P17476979950422303336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A144328 (n + 1)).toNat * A007318 n

end

end A134319.P17476979950422303336

namespace A134319

/-- `A000225(A144328(n+1))*A007318(n)` -/
def P17476979950422303336.Spec : Prop :=
  ∀ n, P17476979950422303336.a n = A134319 n

end A134319

/-! ## A134319.P10929385011132845830

`A010054(n)+A182059(n)-A206735(n)`
-/

namespace A134319.P10929385011132845830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A182059 n - A206735 n)

end

end A134319.P10929385011132845830

namespace A134319

/-- `A010054(n)+A182059(n)-A206735(n)` -/
def P10929385011132845830.Spec : Prop :=
  ∀ n, P10929385011132845830.a n = A134319 n

end A134319

/-! ## A134319.P15333723968626124310

`A124929(n+1)+A010054(n)-A013609(n)`
-/

namespace A134319.P15333723968626124310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124929 (n + 1) + (A010054 n - A013609 n)

end

end A134319.P15333723968626124310

namespace A134319

/-- `A124929(n+1)+A010054(n)-A013609(n)` -/
def P15333723968626124310.Spec : Prop :=
  ∀ n, P15333723968626124310.a n = A134319 n

end A134319

/-! ## A134319.P1126416170302236614

`A035214(n)*A124929(n+1)-A013609(n)`
-/

namespace A134319.P1126416170302236614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A124929 (n + 1) - A013609 n

end

end A134319.P1126416170302236614

namespace A134319

/-- `A035214(n)*A124929(n+1)-A013609(n)` -/
def P1126416170302236614.Spec : Prop :=
  ∀ n, P1126416170302236614.a n = A134319 n

end A134319

/-! ## A134319.P5756844908264103163

`A134059(A028310(n))/3*A255047(A002262(n))`
-/

namespace A134319.P5756844908264103163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A255047 (A002262 n).toNat : ℚ)

end

end A134319.P5756844908264103163

namespace A134319

/-- `A134059(A028310(n))/3*A255047(A002262(n))` -/
def P5756844908264103163.Spec : Prop :=
  ∀ n, P5756844908264103163.a n = (A134319 n : ℚ)

end A134319

/-! ## A134319.P10088075480430745881

`(A034852(n)+A034851(n))*A255047(A002262(n))`
-/

namespace A134319.P10088075480430745881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034852 n + A034851 n) * A255047 (A002262 n).toNat

end

end A134319.P10088075480430745881

namespace A134319

/-- `(A034852(n)+A034851(n))*A255047(A002262(n))` -/
def P10088075480430745881.Spec : Prop :=
  ∀ n, P10088075480430745881.a n = A134319 n

end A134319

/-! ## A134319.P12294907060162181694

`A013609(n)-A097805(A080036(n))`
-/

namespace A134319.P12294907060162181694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n - A097805 (A080036 n).toNat

end

end A134319.P12294907060162181694

namespace A134319

/-- `A013609(n)-A097805(A080036(n))` -/
def P12294907060162181694.Spec : Prop :=
  ∀ n, P12294907060162181694.a n = A134319 n

end A134319

/-! ## A134319.P1805263506775358632

`(Δ[A209492(n)]-1)*A007318(n)`
-/

namespace A134319.P1805263506775358632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1) * A007318 n

end

end A134319.P1805263506775358632

namespace A134319

/-- `(Δ[A209492(n)]-1)*A007318(n)` -/
def P1805263506775358632.Spec : Prop :=
  ∀ n, P1805263506775358632.a n = A134319 n

end A134319

/-! ## A134319.P17005977845301573597

`A013609(n)-A029578(A124927(n))`
-/

namespace A134319.P17005977845301573597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n - A029578 (A124927 n).toNat

end

end A134319.P17005977845301573597

namespace A134319

/-- `A013609(n)-A029578(A124927(n))` -/
def P17005977845301573597.Spec : Prop :=
  ∀ n, P17005977845301573597.a n = A134319 n

end A134319

/-! ## A134319.P6104669081493548246

`A007318(n)*A047994(A059268(n))`
-/

namespace A134319.P6104669081493548246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A047994 (A059268 n).toNat

end

end A134319.P6104669081493548246

namespace A134319

/-- `A007318(n)*A047994(A059268(n))` -/
def P6104669081493548246.Spec : Prop :=
  ∀ n, P6104669081493548246.a n = A134319 n

end A134319

/-!
# A134321: Positive integers with the same number of non-isolated divisors as isolated divisors. A divisor k of n is non-isolated if k-1 and/or k+1 also divides n. A divisor k of n is isolated if neither k-1 nor k+1 divides n.

The programs for A134321, there is no canonical definition to state claims against.
-/

/-! ## A134321.P17265996752245736233

`eq[A132747(n+1), A132881(n+1)]+1`
-/

namespace A134321.P17265996752245736233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A134321.P17265996752245736233

/-! ## A134321.P14049058815352254102

`A014681(eq[A132747(n+1), A132881(n+1)])`
-/

namespace A134321.P14049058815352254102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A134321.P14049058815352254102

/-! ## A134321.P4450365752362787742

`A020725(eq[A132747(n+1), A132881(n+1)])`
-/

namespace A134321.P4450365752362787742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A134321.P4450365752362787742

/-! ## A134321.P1340958029587729061

`A065475(eq[A132747(n+1), A132881(n+1)])`
-/

namespace A134321.P1340958029587729061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A134321.P1340958029587729061

/-! ## A134321.P5902852593951964324

`A092486(eq[A132747(n+1), A132881(n+1)])`
-/

namespace A134321.P5902852593951964324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A134321.P5902852593951964324

/-! ## A134321.P16390584042942705004

`A133265(eq[A132747(n+1), A132881(n+1)])`
-/

namespace A134321.P16390584042942705004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A134321.P16390584042942705004

/-!
# A134322: Positive integers with fewer non-isolated divisors than isolated divisors. A divisor, k, of n is non-isolated if (k-1) or (k+1) also divides n. A divisor, k, of n is isolated if neither (k-1) nor (k+1) divides n.

The programs for A134322, there is no canonical definition to state claims against.
-/

/-! ## A134322.P4885307482086510591

`lt[A132747(n+1), A132881(n+1)]+1`
-/

namespace A134322.P4885307482086510591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A134322.P4885307482086510591

/-! ## A134322.P976538643719123684

`lt[A132747(n+1), A000005(n+1)/2]+1`
-/

namespace A134322.P976538643719123684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A134322.P976538643719123684

/-! ## A134322.P387516704744022921

`lt[A000005(n+1)/2, A132881(n+1)]+1`
-/

namespace A134322.P387516704744022921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A134322.P387516704744022921

/-! ## A134322.P1727530980018572325

`lt[(-1)^n, A257260(A077169(3*n))]`
-/

namespace A134322.P1727530980018572325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257260 (A077169 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134322.P1727530980018572325

/-! ## A134322.P8566441735140930314

`lt[A059253(n+3), A177886(n+1)]+1`
-/

namespace A134322.P8566441735140930314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A134322.P8566441735140930314

/-!
# A134323: a(n) = Legendre(-3, prime(n)).

The programs for A134323, the canonical program `A134323.P18243565506168463264` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134323 has offset 1).

The definition of A134323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134323.P18243565506168463264

`A008864(n+1)%3-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A134323

/-- `A008864(n+1)%3-1` -/
def P18243565506168463264.Spec : Prop :=
  ∀ n, P18243565506168463264.a n = A134323 (n + 1)

theorem P18243565506168463264.correct : P18243565506168463264.Spec := by
  intro n
  simp only [A134323, Nat.add_sub_cancel]

end A134323

/-! ## A134323.P6114511879128678097

`A040976(n+1)%3-1`
-/

namespace A134323.P6114511879128678097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 (n + 1)) 3 - 1

end

end A134323.P6114511879128678097

namespace A134323

/-- `A040976(n+1)%3-1` -/
def P6114511879128678097.Spec : Prop :=
  ∀ n, P6114511879128678097.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P5765439531820262629

`round(tanh(tan(dr(A000040(n+1)))))`
-/

namespace A134323.P5765439531820262629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (Real.tan (SequenceMachineLib.digitalRoot (A000040 (n + 1)) : ℝ)))

end

end A134323.P5765439531820262629

namespace A134323

/-- `round(tanh(tan(dr(A000040(n+1)))))` -/
def P5765439531820262629.Spec : Prop :=
  ∀ n, P5765439531820262629.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P13897331838399719865

`dr(A030078(n+1)+2)-2`
-/

namespace A134323.P13897331838399719865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A030078 (n + 1) + 2) : ℤ) - 2

end

end A134323.P13897331838399719865

namespace A134323

/-- `dr(A030078(n+1)+2)-2` -/
def P13897331838399719865.Spec : Prop :=
  ∀ n, P13897331838399719865.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P3882169695387255097

`dr(A179665(n+1)+2)-2`
-/

namespace A134323.P3882169695387255097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A179665 (n + 1) + 2) : ℤ) - 2

end

end A134323.P3882169695387255097

namespace A134323

/-- `dr(A179665(n+1)+2)-2` -/
def P3882169695387255097.Spec : Prop :=
  ∀ n, P3882169695387255097.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P6177076494866017981

`A102283(A007605(n+1))`
-/

namespace A134323.P6177076494866017981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A007605 (n + 1)).toNat

end

end A134323.P6177076494866017981

namespace A134323

/-- `A102283(A007605(n+1))` -/
def P6177076494866017981.Spec : Prop :=
  ∀ n, P6177076494866017981.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P1365459407649135554

`A102283(A039710(n+1))`
-/

namespace A134323.P1365459407649135554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A039710 (n + 1)).toNat

end

end A134323.P1365459407649135554

namespace A134323

/-- `A102283(A039710(n+1))` -/
def P1365459407649135554.Spec : Prop :=
  ∀ n, P1365459407649135554.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P1335484721844146201

`A102283(A039713(n+1))`
-/

namespace A134323.P1335484721844146201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A039713 (n + 1)).toNat

end

end A134323.P1335484721844146201

namespace A134323

/-- `A102283(A039713(n+1))` -/
def P1335484721844146201.Spec : Prop :=
  ∀ n, P1335484721844146201.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P16126105666233268810

`A102283(A095959(n+1))`
-/

namespace A134323.P16126105666233268810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A095959 (n + 1)).toNat

end

end A134323.P16126105666233268810

namespace A134323

/-- `A102283(A095959(n+1))` -/
def P16126105666233268810.Spec : Prop :=
  ∀ n, P16126105666233268810.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P7663210199812133421

`A102283(A229787(n+1))`
-/

namespace A134323.P7663210199812133421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A229787 (n + 1)).toNat

end

end A134323.P7663210199812133421

namespace A134323

/-- `A102283(A229787(n+1))` -/
def P7663210199812133421.Spec : Prop :=
  ∀ n, P7663210199812133421.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P11121131507504882395

`A102283(A239690(n+1))`
-/

namespace A134323.P11121131507504882395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A239690 (n + 1)).toNat

end

end A134323.P11121131507504882395

namespace A134323

/-- `A102283(A239690(n+1))` -/
def P11121131507504882395.Spec : Prop :=
  ∀ n, P11121131507504882395.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P7786481097777546361

`A134668(A039710(n+1)-1)`
-/

namespace A134323.P7786481097777546361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134668 (A039710 (n + 1) - 1).toNat

end

end A134323.P7786481097777546361

namespace A134323

/-- `A134668(A039710(n+1)-1)` -/
def P7786481097777546361.Spec : Prop :=
  ∀ n, P7786481097777546361.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P12070894994316580180

`A134668(A095959(n+1)-1)`
-/

namespace A134323.P12070894994316580180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134668 (A095959 (n + 1) - 1).toNat

end

end A134323.P12070894994316580180

namespace A134323

/-- `A134668(A095959(n+1)-1)` -/
def P12070894994316580180.Spec : Prop :=
  ∀ n, P12070894994316580180.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P413979361553197064

`A010872(A007605(n+1)+1)-1`
-/

namespace A134323.P413979361553197064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A007605 (n + 1) + 1).toNat - 1

end

end A134323.P413979361553197064

namespace A134323

/-- `A010872(A007605(n+1)+1)-1` -/
def P413979361553197064.Spec : Prop :=
  ∀ n, P413979361553197064.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P10680935347369233975

`A010872(A039710(n+1)+1)-1`
-/

namespace A134323.P10680935347369233975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A039710 (n + 1) + 1).toNat - 1

end

end A134323.P10680935347369233975

namespace A134323

/-- `A010872(A039710(n+1)+1)-1` -/
def P10680935347369233975.Spec : Prop :=
  ∀ n, P10680935347369233975.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P10512330137911542879

`A010872(A039713(n+1)+1)-1`
-/

namespace A134323.P10512330137911542879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A039713 (n + 1) + 1).toNat - 1

end

end A134323.P10512330137911542879

namespace A134323

/-- `A010872(A039713(n+1)+1)-1` -/
def P10512330137911542879.Spec : Prop :=
  ∀ n, P10512330137911542879.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P16383292538560463020

`A010872(A239690(n+1)+1)-1`
-/

namespace A134323.P16383292538560463020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A239690 (n + 1) + 1).toNat - 1

end

end A134323.P16383292538560463020

namespace A134323

/-- `A010872(A239690(n+1)+1)-1` -/
def P16383292538560463020.Spec : Prop :=
  ∀ n, P16383292538560463020.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P790667882229589179

`A039701(n+1)/(2-A039701(n+1)²)`
-/

namespace A134323.P790667882229589179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039701 (n + 1) : ℚ) / (2 - A039701 (n + 1) ^ 2 : ℚ)

end

end A134323.P790667882229589179

namespace A134323

/-- `A039701(n+1)/(2-A039701(n+1)²)` -/
def P790667882229589179.Spec : Prop :=
  ∀ n, P790667882229589179.a n = (A134323 (n + 1) : ℚ)

end A134323

/-! ## A134323.P9815541648550529733

`A102283(n)-(A173950(n+1)+A106510(n))`
-/

namespace A134323.P9815541648550529733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n - (A173950 (n + 1) + A106510 n)

end

end A134323.P9815541648550529733

namespace A134323

/-- `A102283(n)-(A173950(n+1)+A106510(n))` -/
def P9815541648550529733.Spec : Prop :=
  ∀ n, P9815541648550529733.a n = A134323 (n + 1)

end A134323

/-! ## A134323.P549951128096397838

`A057078(n+1)-(A173950(n+1)+A163804(n))`
-/

namespace A134323.P549951128096397838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (n + 1) - (A173950 (n + 1) + A163804 n)

end

end A134323.P549951128096397838

namespace A134323

/-- `A057078(n+1)-(A173950(n+1)+A163804(n))` -/
def P549951128096397838.Spec : Prop :=
  ∀ n, P549951128096397838.a n = A134323 (n + 1)

end A134323

/-!
# A134324: Number of Eisenstein-Jacobi primes whose modulus is > n and <= n+1.

The programs for A134324, there is no canonical definition to state claims against.
-/

/-! ## A134324.P12073175785161722499

`Δ[A135462(n²)]`
-/

namespace A134324.P12073175785161722499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135462 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134324.P12073175785161722499

/-! ## A134324.P17148064823737147336

`∑{e}[A005139(2*n), A005101(#)]`
-/

namespace A134324.P17148064823737147336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005139 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005101 (Nat.factorization (f1 n).natAbs p)

end

end A134324.P17148064823737147336

/-! ## A134324.P11853300072531878149

`∑{e}[A068932(2*(n+1)), A005101(#)]`
-/

namespace A134324.P11853300072531878149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068932 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005101 (Nat.factorization (f1 n).natAbs p)

end

end A134324.P11853300072531878149

/-! ## A134324.P16551949993171727857

`lcm(A136575(n+1), A220845(A001175(3*(n+1))))`
-/

namespace A134324.P16551949993171727857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A136575 (n + 1)) (A220845 (A001175 (3 * (n + 1))).toNat)

end

end A134324.P16551949993171727857

/-!
# A134325: a(n) = a(n) = +13*a(n-2) +7*a(n-3) -47*a(n-4) -38*a(n-5) +48*a(n-6) +43*a(n-7) -7*a(n-8) -1*a(n-9).

The programs for A134325, there is no canonical definition to state claims against.
-/

/-! ## A134325.P14254655661606060300

`A115239(n+1)-A049310(A293840(n))`
-/

namespace A134325.P14254655661606060300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115239 (n + 1) - A049310 (A293840 n).toNat

end

end A134325.P14254655661606060300

/-! ## A134325.P372928402083298229

`or(A049107(A001412(n)), A085839(n+1))`
-/

namespace A134325.P372928402083298229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049107 (A001412 n).toNat) (A085839 (n + 1))

end

end A134325.P372928402083298229

/-!
# A134326: The sum of the elements in the first, middle and last row of the n-th power of the 9-by-9 matrix defined in the Mathematica program.

The programs for A134326, there is no canonical definition to state claims against.
-/

/-! ## A134326.P13941129860865049902

`∑[A360362(3*n+1)-xor(n, -1)]+1`
-/

namespace A134326.P13941129860865049902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360362 (3 * n + 1) - Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A134326.P13941129860865049902

/-!
# A134327: a(n) = (n^5-n-5)/5.

The programs for A134327, the canonical program `A134327.P3801489675902615671` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134327 has offset 0).

The definition of A134327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134327.P3801489675902615671

`(n^5-n-5)/5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134327

/-- `(n^5-n-5)/5` -/
def P3801489675902615671.Spec : Prop :=
  ∀ n, P3801489675902615671.a n = (A134327 n : ℚ)

end A134327

/-! ## A134327.P5600278543579804970

`A208536(n+1)-1`
-/

namespace A134327.P5600278543579804970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208536 (n + 1) - 1

end

end A134327.P5600278543579804970

namespace A134327

/-- `A208536(n+1)-1` -/
def P5600278543579804970.Spec : Prop :=
  ∀ n, P5600278543579804970.a n = A134327 n

end A134327

/-! ## A134327.P10093861529430729162

`2*A131176(n)+1`
-/

namespace A134327.P10093861529430729162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131176 n + 1

end

end A134327.P10093861529430729162

namespace A134327

/-- `2*A131176(n)+1` -/
def P10093861529430729162.Spec : Prop :=
  ∀ n, P10093861529430729162.a n = A134327 n

end A134327

/-! ## A134327.P12998837640186290908

`A061167(n)/5-1`
-/

namespace A134327.P12998837640186290908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061167 n : ℚ) / 5 - 1

end

end A134327.P12998837640186290908

namespace A134327

/-- `A061167(n)/5-1` -/
def P12998837640186290908.Spec : Prop :=
  ∀ n, P12998837640186290908.a n = (A134327 n : ℚ)

end A134327

/-! ## A134327.P7463396843074466628

`A054620(n)-(n+1)`
-/

namespace A134327.P7463396843074466628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054620 n - (n + 1 : ℤ)

end

end A134327.P7463396843074466628

namespace A134327

/-- `A054620(n)-(n+1)` -/
def P7463396843074466628.Spec : Prop :=
  ∀ n, P7463396843074466628.a n = A134327 n

end A134327

/-! ## A134327.P4361563467187691552

`round(A054604(n)/5-(n+1))`
-/

namespace A134327.P4361563467187691552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A054604 n : ℚ) / 5 - (n + 1 : ℚ))

end

end A134327.P4361563467187691552

namespace A134327

/-- `round(A054604(n)/5-(n+1))` -/
def P4361563467187691552.Spec : Prop :=
  ∀ n, P4361563467187691552.a n = A134327 n

end A134327

/-! ## A134327.P10239153761210975083

`∑[(n-1)*A228398(n+1)]`
-/

namespace A134327.P10239153761210975083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A228398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134327.P10239153761210975083

namespace A134327

/-- `∑[(n-1)*A228398(n+1)]` -/
def P10239153761210975083.Spec : Prop :=
  ∀ n, P10239153761210975083.a n = A134327 n

end A134327

/-!
# A134331: Sum of prime factors (counted with multiplicity) of the period numbers defined by A133900.

The programs for A134331, there is no canonical definition to state claims against.
-/

/-! ## A134331.P2611246409095466332

`A001414(n+1)+A001414(A064446(n+1))`
-/

namespace A134331.P2611246409095466332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + A001414 (A064446 (n + 1)).toNat

end

end A134331.P2611246409095466332

/-! ## A134331.P14041866528109933494

`A001414((n+1)²)+A001414(A133910(n+1))`
-/

namespace A134331.P14041866528109933494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 ((n + 1) ^ 2) + A001414 (A133910 (n + 1)).toNat

end

end A134331.P14041866528109933494

/-! ## A134331.P14749175105898784174

`A001414(A133910(n+1))+2*A001414(n+1)`
-/

namespace A134331.P14749175105898784174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A133910 (n + 1)).toNat + 2 * A001414 (n + 1)

end

end A134331.P14749175105898784174

/-! ## A134331.P16506242800927239560

`A001414(n+1)+A001414(A133900(n+1)/(n+1))`
-/

namespace A134331.P16506242800927239560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + A001414 (SequenceMachineLib.roundAway ((A133900 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A134331.P16506242800927239560

/-! ## A134331.P10203466992292381540

`A005843(A001414(n+1))+A001414(A133910(n+1))`
-/

namespace A134331.P10203466992292381540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001414 (n + 1)).toNat + A001414 (A133910 (n + 1)).toNat

end

end A134331.P10203466992292381540

/-!
# A134332: Integer part of the arithmetic mean of the prime factors (counted with multiplicity) of the period numbers defined by A133900.

The programs for A134332, there is no canonical definition to state claims against.
-/

/-! ## A134332.P13696496268240937463

`A185238(A073138(A053278(n)))+A079866(n+1)`
-/

namespace A134332.P13696496268240937463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A073138 (A053278 n).toNat).toNat + A079866 (n + 1)

end

end A134332.P13696496268240937463

/-! ## A134332.P15507081897350763196

`A079866(n+1)%A302801(n%9+2+n)`
-/

namespace A134332.P15507081897350763196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079866 (n + 1)) (A302801 (n % 9 + 2 + n))

end

end A134332.P15507081897350763196

/-! ## A134332.P13262773577197708392

`A079866(n+1)%A005384(A299273(n))`
-/

namespace A134332.P13262773577197708392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079866 (n + 1)) (A005384 (A299273 n).toNat)

end

end A134332.P13262773577197708392

/-! ## A134332.P13825577636272759672

`A080116(A036056(n+1))+A079866(n+1)`
-/

namespace A134332.P13825577636272759672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (A036056 (n + 1)).toNat + A079866 (n + 1)

end

end A134332.P13825577636272759672

/-! ## A134332.P13522267093835130489

`A057427(A155008(n+1))*A079866(n+1)`
-/

namespace A134332.P13522267093835130489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A155008 (n + 1)).toNat * A079866 (n + 1)

end

end A134332.P13522267093835130489

/-!
# A134333: Numbers n whose number of prime factors (counted with multiplicity) is a prime factor of n.

The programs for A134333, there is no canonical definition to state claims against.
-/

/-! ## A134333.P15413585143377167535

`∩[A137230(n+1), A394569(n+1)]`
-/

namespace A134333.P15413585143377167535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134333.P15413585143377167535

/-! ## A134333.P8314067389765912195

`∩[A074946(n+1), A394569(n+1)]`
-/

namespace A134333.P8314067389765912195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134333.P8314067389765912195

/-! ## A134333.P451985880492177412

`∩[A063989(n+1), A074946(n+1)]`
-/

namespace A134333.P451985880492177412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134333.P451985880492177412

/-! ## A134333.P14452262129304714644

`∩[A063989(n+1), A137230(n+1)]`
-/

namespace A134333.P14452262129304714644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134333.P14452262129304714644

/-! ## A134333.P7250599608124999199

`∩[A063989(n+1), A394569(n+1)]`
-/

namespace A134333.P7250599608124999199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134333.P7250599608124999199

/-! ## A134333.P8168659280983661094

`∩[A063989(n+1), comp[A134334(n+1)]]`
-/

namespace A134333.P8168659280983661094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134334 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A134333.P8168659280983661094

/-! ## A134333.P2630083285827683390

`eq[2, A124331(∑{d}[∑{e}[n, #], (n+1)%#]+1)]`
-/

namespace A134333.P2630083285827683390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (∑ d ∈ Nat.divisors (f3 n), (n + 1) % d + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134333.P2630083285827683390

/-!
# A134334: Numbers which are not divisible by the number of their prime factors (counted with multiplicity).

The programs for A134334, the canonical program `A134334.P6810248192732462666` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134334 has offset 1).

The definition of A134334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5702 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134334.P11681936441653220542

`comp[A074946(n+1)-2]+2`
-/

namespace A134334.P11681936441653220542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A134334.P11681936441653220542

namespace A134334

/-- `comp[A074946(n+1)-2]+2` -/
def P11681936441653220542.Spec : Prop :=
  ∀ n, (P11681936441653220542.a n : ℤ) = A134334 (n + 1)

end A134334

/-! ## A134334.P9778864559607931890

`lt[n+1, lcm(n+1, A001222(n+1))]+1`
-/

namespace A134334.P9778864559607931890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001222 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A134334.P9778864559607931890

namespace A134334

/-- `lt[n+1, lcm(n+1, A001222(n+1))]+1` -/
def P9778864559607931890.Spec : Prop :=
  ∀ n, (P9778864559607931890.a n : ℤ) = A134334 (n + 1)

end A134334

/-! ## A134334.P6810248192732462666

`lt[n, lcm(n, ∑{e}[n, #])]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134334

/-- `lt[n, lcm(n, ∑{e}[n, #])]` -/
def P6810248192732462666.Spec : Prop :=
  ∀ n, (P6810248192732462666.a n : ℤ) = A134334 (n + 1)

theorem P6810248192732462666.correct : P6810248192732462666.Spec := by
  intro n
  simp only [A134334, Nat.add_sub_cancel]

end A134334

/-! ## A134334.P17541575985727331994

`lt[A161658(round(acot(n)+n)), n]`
-/

namespace A134334.P17541575985727331994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161658 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134334.P17541575985727331994

namespace A134334

/-- `lt[A161658(round(acot(n)+n)), n]` -/
def P17541575985727331994.Spec : Prop :=
  ∀ n, (P17541575985727331994.a n : ℤ) = A134334 (n + 1)

end A134334

/-! ## A134334.P4440610910179971752

`lt[A161706(n+1), A161706(A161658(n+1))]+1`
-/

namespace A134334.P4440610910179971752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161706 (A161658 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A134334.P4440610910179971752

namespace A134334

/-- `lt[A161706(n+1), A161706(A161658(n+1))]+1` -/
def P4440610910179971752.Spec : Prop :=
  ∀ n, (P4440610910179971752.a n : ℤ) = A134334 (n + 1)

end A134334

/-! ## A134334.P11638469561292889369

`lt[A161658(A233583(n+1)), n]`
-/

namespace A134334.P11638469561292889369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161658 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134334.P11638469561292889369

namespace A134334

/-- `lt[A161658(A233583(n+1)), n]` -/
def P11638469561292889369.Spec : Prop :=
  ∀ n, (P11638469561292889369.a n : ℤ) = A134334 (n + 1)

end A134334

/-!
# A134336: Nonnegative integers n containing each digit between n's smallest and largest decimal digits.

The programs for A134336, there is no canonical definition to state claims against.
-/

/-! ## A134336.P16914187298463035206

`lt[A090079(A086066(n)), 3]`
-/

namespace A134336.P16914187298463035206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A086066 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134336.P16914187298463035206

/-! ## A134336.P10210827462053049369

`lt[A228822(A227362(n)), A054054(n)]`
-/

namespace A134336.P10210827462053049369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228822 (A227362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134336.P10210827462053049369

/-! ## A134336.P16055726389194460869

`lt[A228822(A227362(n)), A355221(n)%10]`
-/

namespace A134336.P16055726389194460869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228822 (A227362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355221 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134336.P16055726389194460869

/-! ## A134336.P6789483045703637264

`∪[A010785(n), A108965(n+1)]`
-/

namespace A134336.P6789483045703637264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134336.P6789483045703637264

/-! ## A134336.P7445949943725796800

`∪[A064222(n), A108965(n+1)]`
-/

namespace A134336.P7445949943725796800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134336.P7445949943725796800

/-! ## A134336.P10603597709721632240

`∪[A108965(n+1), A244514(n+1)]`
-/

namespace A134336.P10603597709721632240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134336.P10603597709721632240

/-! ## A134336.P4038961159493121258

`∪[A108965(n+1), A344550(n+1)]`
-/

namespace A134336.P4038961159493121258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134336.P4038961159493121258

/-! ## A134336.P2627395727063731098

`∪[A108965(n+1), A379180(n+1)]`
-/

namespace A134336.P2627395727063731098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134336.P2627395727063731098

/-!
# A134337: Number of partitions into distinct odd squarefree parts.

The programs for A134337, there is no canonical definition to state claims against.
-/

/-! ## A134337.P16948183167041906100

`A280716(abs(1-n))+A280716(n)`
-/

namespace A134337.P16948183167041906100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280716 |1 - (n : ℤ)|.toNat + A280716 n

end

end A134337.P16948183167041906100

/-! ## A134337.P2804029759531184667

`gcd(A015070(2*n+1), A261733(n))`
-/

namespace A134337.P2804029759531184667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015070 (2 * n + 1)) (A261733 n)

end

end A134337.P2804029759531184667

/-! ## A134337.P13471420272706350019

`gcd(A051516(A177888(n)), A261733(n))`
-/

namespace A134337.P13471420272706350019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051516 (A177888 n).toNat) (A261733 n)

end

end A134337.P13471420272706350019

/-! ## A134337.P5147311850992123504

`lcm(A261733(n), A355939(A046002(n+1)))`
-/

namespace A134337.P5147311850992123504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A261733 n) (A355939 (A046002 (n + 1)).toNat)

end

end A134337.P5147311850992123504

/-!
# A134338: a(n) = product of the "isolated divisors" of n. A divisor k of n is isolated if neither k-1 nor k+1 divides n.

The programs for A134338, there is no canonical definition to state claims against.
-/

/-! ## A134338.P14968980879182032053

`A076934(∏{d}[n+1, #]%A235318(n+1))`
-/

namespace A134338.P14968980879182032053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076934 (Int.tmod ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A235318 (n + 1))).toNat

end

end A134338.P14968980879182032053

/-! ## A134338.P6241775262995168309

`A076934((2^∑{d}[n+1, log2(#)])%A235318(n+1))`
-/

namespace A134338.P6241775262995168309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076934 (Int.tmod (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (d : ℝ)))) (A235318 (n + 1))).toNat

end

end A134338.P6241775262995168309

/-! ## A134338.P1062345285593056321

`A076934(A007955(n+1)%A325860(3*n+2))`
-/

namespace A134338.P1062345285593056321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076934 (Int.tmod (A007955 (n + 1)) (A325860 (3 * n + 2))).toNat

end

end A134338.P1062345285593056321

/-! ## A134338.P1917491668785854058

`A076934((sqrt(n+1)^A000005(n+1))%A235318(n+1))`
-/

namespace A134338.P1917491668785854058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076934 (Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ))) (A235318 (n + 1))).toNat

end

end A134338.P1917491668785854058

/-! ## A134338.P9293660159063929741

`A076934(((n+1)^(A000005(n+1)/2))%A235318(n+1))`
-/

namespace A134338.P9293660159063929741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076934 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 : ℝ))) (A235318 (n + 1))).toNat

end

end A134338.P9293660159063929741

/-!
# A134339: a(n) = product of the positive "non-isolated divisors" of (2n). A divisor, k, of n is non-isolated if (k-1) or (k+1) also divides n.

The programs for A134339, there is no canonical definition to state claims against.
-/

/-! ## A134339.P6178344319956269837

`A007955(2*(n+1))/A134338(2*(n+1))`
-/

namespace A134339.P6178344319956269837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (2 * (n + 1)) : ℚ) / (A134338 (2 * (n + 1)) : ℚ)

end

end A134339.P6178344319956269837

/-! ## A134339.P3355296546768595673

`A126342(A115017(n+1)%A291176(n+1))`
-/

namespace A134339.P3355296546768595673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126342 (Int.tmod (A115017 (n + 1)) (A291176 (n + 1))).toNat

end

end A134339.P3355296546768595673

/-! ## A134339.P6316474283304320106

`A344877(A174337(n+1))`
-/

namespace A134339.P6316474283304320106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344877 (A174337 (n + 1)).toNat

end

end A134339.P6316474283304320106

/-! ## A134339.P4239763805192878646

`gcd(A005843(A148669(n)), A239053(2*(n+1)))`
-/

namespace A134339.P4239763805192878646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (A148669 n).toNat) (A239053 (2 * (n + 1)))

end

end A134339.P4239763805192878646

/-!
# A134340: Expansion of psi(x)^3 * f(-x^3)^3 / chi(-x)^2 in powers of x where psi(), chi(), f() are Ramanujan theta functions.

The programs for A134340, the canonical program `A134340.P8323735923062830065` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134340 has offset 0).

The definition of A134340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134340.P11517785227888571466

`A181977(6*n+5)/8`
-/

namespace A134340.P11517785227888571466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181977 (6 * n + 5) : ℚ) / 8

end

end A134340.P11517785227888571466

namespace A134340

/-- `A181977(6*n+5)/8` -/
def P11517785227888571466.Spec : Prop :=
  ∀ n, P11517785227888571466.a n = (A134340 n : ℚ)

end A134340

/-! ## A134340.P8323735923062830065

`A214262(6*n+5)/24`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A134340

/-- `A214262(6*n+5)/24` -/
def P8323735923062830065.Spec : Prop :=
  ∀ n, P8323735923062830065.a n = (A134340 n : ℚ)

end A134340

/-! ## A134340.P11224995496575486764

`A132000(A016969(n))/24`
-/

namespace A134340.P11224995496575486764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132000 (A016969 n).toNat : ℚ) / 24

end

end A134340.P11224995496575486764

namespace A134340

/-- `A132000(A016969(n))/24` -/
def P11224995496575486764.Spec : Prop :=
  ∀ n, P11224995496575486764.a n = (A134340 n : ℚ)

end A134340

/-! ## A134340.P10781389327289899458

`∑[3*n+1]-A088918(A061255(n))`
-/

namespace A134340.P10781389327289899458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A088918 (A061255 n).toNat

end

end A134340.P10781389327289899458

namespace A134340

/-- `∑[3*n+1]-A088918(A061255(n))` -/
def P10781389327289899458.Spec : Prop :=
  ∀ n, P10781389327289899458.a n = A134340 n

end A134340

/-! ## A134340.P93359540630296949

`A121373(A080538(2*(n+1)))+A000326(n+1)`
-/

namespace A134340.P93359540630296949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A080538 (2 * (n + 1))).toNat + A000326 (n + 1)

end

end A134340.P93359540630296949

namespace A134340

/-- `A121373(A080538(2*(n+1)))+A000326(n+1)` -/
def P93359540630296949.Spec : Prop :=
  ∀ n, P93359540630296949.a n = A134340 n

end A134340

/-!
# A134341: Numbers whose fifth powers have a partition as a sum of fifth powers of four positive integers.

The programs for A134341, there is no canonical definition to state claims against.
-/

/-! ## A134341.P2707039113811567451

`(n+1)*144`
-/

namespace A134341.P2707039113811567451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 144

end

end A134341.P2707039113811567451

/-!
# A134342: Accepted inputs by a certain adaptive automaton (number 4258072) with two adaptive functions and unary numbers as input.

The programs for A134342, there is no canonical definition to state claims against.
-/

/-! ## A134342.P14581279106813767512

`floor(3/2*a(n-1))+2` with `a(0)=0`
-/

namespace A134342.P14581279106813767512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌋ + 2

end

end A134342.P14581279106813767512

/-! ## A134342.P5521399427781292922

`ceil(3*(a(n-1)+1)/2)` with `a(0)=0`
-/

namespace A134342.P5521399427781292922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈3 * ((a (n - 1) + 1 : ℚ) / 2)⌉

end

end A134342.P5521399427781292922

/-! ## A134342.P17565228076376865785

`round(3*(a(n-1)+1)/2)` with `a(0)=0`
-/

namespace A134342.P17565228076376865785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (3 * ((a (n - 1) + 1 : ℚ) / 2))

end

end A134342.P17565228076376865785

/-! ## A134342.P17493248069915264626

`ceil(sinh(log(3*(a(n-1)+1))))` with `a(0)=0`
-/

namespace A134342.P17493248069915264626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.sinh (Real.log (3 * (a (n - 1) + 1) : ℝ))⌉

end

end A134342.P17493248069915264626

/-! ## A134342.P16741188024931571096

`(or(1, 3*a(n-1))+3)/2` with `a(0)=0`
-/

namespace A134342.P16741188024931571096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lor 1 (SequenceMachineLib.roundAway (3 * a (n - 1))) + 3 : ℚ) / 2

end

end A134342.P16741188024931571096

/-!
# A134343: Expansion of psi(-x)^2 in powers of x where psi() is a Ramanujan theta function.

The programs for A134343, the canonical program `A134343.P11380617863790759177` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134343 has offset 0).

The definition of A134343 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134343.P11380617863790759177

`(-1)^n*A008441(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134343

/-- `(-1)^n*A008441(n)` -/
def P11380617863790759177.Spec : Prop :=
  ∀ n, P11380617863790759177.a n = A134343 n

theorem P11380617863790759177.correct : P11380617863790759177.Spec := by
  intro n
  simp only [A134343]

end A134343

/-! ## A134343.P12373035669440659405

`A008441(n)*A033999(n)`
-/

namespace A134343.P12373035669440659405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A033999 n

end

end A134343.P12373035669440659405

namespace A134343

/-- `A008441(n)*A033999(n)` -/
def P12373035669440659405.Spec : Prop :=
  ∀ n, P12373035669440659405.a n = A134343 n

end A134343

/-! ## A134343.P2342543994889574793

`A008441(n)*A062157(n+1)`
-/

namespace A134343.P2342543994889574793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A062157 (n + 1)

end

end A134343.P2342543994889574793

namespace A134343

/-- `A008441(n)*A062157(n+1)` -/
def P2342543994889574793.Spec : Prop :=
  ∀ n, P2342543994889574793.a n = A134343 n

end A134343

/-! ## A134343.P7396741547931498909

`A008441(n)*A054354(A054353(n+1))`
-/

namespace A134343.P7396741547931498909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A054354 (A054353 (n + 1)).toNat

end

end A134343.P7396741547931498909

namespace A134343

/-- `A008441(n)*A054354(A054353(n+1))` -/
def P7396741547931498909.Spec : Prop :=
  ∀ n, P7396741547931498909.a n = A134343 n

end A134343

/-! ## A134343.P474422373503537292

`A008441(n)/A273225(n)*A274621(n)`
-/

namespace A134343.P474422373503537292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 n : ℚ) / (A273225 n : ℚ) * (A274621 n : ℚ)

end

end A134343.P474422373503537292

namespace A134343

/-- `A008441(n)/A273225(n)*A274621(n)` -/
def P474422373503537292.Spec : Prop :=
  ∀ n, P474422373503537292.a n = (A134343 n : ℚ)

end A134343

/-! ## A134343.P14669971841350962211

`A033999(n)*A125079(2*n)`
-/

namespace A134343.P14669971841350962211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A125079 (2 * n)

end

end A134343.P14669971841350962211

namespace A134343

/-- `A033999(n)*A125079(2*n)` -/
def P14669971841350962211.Spec : Prop :=
  ∀ n, P14669971841350962211.a n = A134343 n

end A134343

/-! ## A134343.P340361609529555573

`(2-A010684(n))*A125079(2*n)`
-/

namespace A134343.P340361609529555573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A125079 (2 * n)

end

end A134343.P340361609529555573

namespace A134343

/-- `(2-A010684(n))*A125079(2*n)` -/
def P340361609529555573.Spec : Prop :=
  ∀ n, P340361609529555573.a n = A134343 n

end A134343

/-! ## A134343.P9644988006026852695

`A033999(n)*A116604(2*n)`
-/

namespace A134343.P9644988006026852695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A116604 (2 * n)

end

end A134343.P9644988006026852695

namespace A134343

/-- `A033999(n)*A116604(2*n)` -/
def P9644988006026852695.Spec : Prop :=
  ∀ n, P9644988006026852695.a n = A134343 n

end A134343

/-! ## A134343.P9235524966530611649

`A033999(n)*A129447(2*n)`
-/

namespace A134343.P9235524966530611649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A129447 (2 * n)

end

end A134343.P9235524966530611649

namespace A134343

/-- `A033999(n)*A129447(2*n)` -/
def P9235524966530611649.Spec : Prop :=
  ∀ n, P9235524966530611649.a n = A134343 n

end A134343

/-! ## A134343.P10247188831133083288

`A033999(n)*A138741(2*n)`
-/

namespace A134343.P10247188831133083288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138741 (2 * n)

end

end A134343.P10247188831133083288

namespace A134343

/-- `A033999(n)*A138741(2*n)` -/
def P10247188831133083288.Spec : Prop :=
  ∀ n, P10247188831133083288.a n = A134343 n

end A134343

/-! ## A134343.P5048750864417589787

`A008441(n)*A034947(2*n+1)`
-/

namespace A134343.P5048750864417589787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A034947 (2 * n + 1)

end

end A134343.P5048750864417589787

namespace A134343

/-- `A008441(n)*A034947(2*n+1)` -/
def P5048750864417589787.Spec : Prop :=
  ∀ n, P5048750864417589787.a n = A134343 n

end A134343

/-! ## A134343.P1392629580652163

`(2-A010684(n))*A116604(2*n)`
-/

namespace A134343.P1392629580652163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A116604 (2 * n)

end

end A134343.P1392629580652163

namespace A134343

/-- `(2-A010684(n))*A116604(2*n)` -/
def P1392629580652163.Spec : Prop :=
  ∀ n, P1392629580652163.a n = A134343 n

end A134343

/-! ## A134343.P15299203148857675768

`(2-A010684(n))*A129447(2*n)`
-/

namespace A134343.P15299203148857675768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A129447 (2 * n)

end

end A134343.P15299203148857675768

namespace A134343

/-- `(2-A010684(n))*A129447(2*n)` -/
def P15299203148857675768.Spec : Prop :=
  ∀ n, P15299203148857675768.a n = A134343 n

end A134343

/-! ## A134343.P3956589824552231475

`(2-A010684(n))*A138741(2*n)`
-/

namespace A134343.P3956589824552231475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A138741 (2 * n)

end

end A134343.P3956589824552231475

namespace A134343

/-- `(2-A010684(n))*A138741(2*n)` -/
def P3956589824552231475.Spec : Prop :=
  ∀ n, P3956589824552231475.a n = A134343 n

end A134343

/-! ## A134343.P17488309388740445183

`A034947(2*n+1)*A116604(2*n)`
-/

namespace A134343.P17488309388740445183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A116604 (2 * n)

end

end A134343.P17488309388740445183

namespace A134343

/-- `A034947(2*n+1)*A116604(2*n)` -/
def P17488309388740445183.Spec : Prop :=
  ∀ n, P17488309388740445183.a n = A134343 n

end A134343

/-! ## A134343.P15827503431819000657

`(A057427(n)-2)^n*A138741(2*n)`
-/

namespace A134343.P15827503431819000657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n - 2) ^ n * A138741 (2 * n)

end

end A134343.P15827503431819000657

namespace A134343

/-- `(A057427(n)-2)^n*A138741(2*n)` -/
def P15827503431819000657.Spec : Prop :=
  ∀ n, P15827503431819000657.a n = A134343 n

end A134343

/-! ## A134343.P8845590030422875307

`A020985(2*n+1)*A020985(n)*A116604(2*n)`
-/

namespace A134343.P8845590030422875307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A020985 n * A116604 (2 * n)

end

end A134343.P8845590030422875307

namespace A134343

/-- `A020985(2*n+1)*A020985(n)*A116604(2*n)` -/
def P8845590030422875307.Spec : Prop :=
  ∀ n, P8845590030422875307.a n = A134343 n

end A134343

/-! ## A134343.P17917246582578140542

`A020985(2*n+1)*A020985(n)*A129447(2*n)`
-/

namespace A134343.P17917246582578140542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A020985 n * A129447 (2 * n)

end

end A134343.P17917246582578140542

namespace A134343

/-- `A020985(2*n+1)*A020985(n)*A129447(2*n)` -/
def P17917246582578140542.Spec : Prop :=
  ∀ n, P17917246582578140542.a n = A134343 n

end A134343

/-! ## A134343.P9072810404072818568

`(2-A073575(3*n+1))*A116604(2*n)`
-/

namespace A134343.P9072810404072818568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A073575 (3 * n + 1)) * A116604 (2 * n)

end

end A134343.P9072810404072818568

namespace A134343

/-- `(2-A073575(3*n+1))*A116604(2*n)` -/
def P9072810404072818568.Spec : Prop :=
  ∀ n, P9072810404072818568.a n = A134343 n

end A134343

/-! ## A134343.P1775110616392220948

`A001938(n)*A008441(n)/A093160(n)`
-/

namespace A134343.P1775110616392220948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001938 n * A008441 n : ℚ) / (A093160 n : ℚ)

end

end A134343.P1775110616392220948

namespace A134343

/-- `A001938(n)*A008441(n)/A093160(n)` -/
def P1775110616392220948.Spec : Prop :=
  ∀ n, P1775110616392220948.a n = (A134343 n : ℚ)

end A134343

/-!
# A134344: Composite numbers such that the arithmetic mean of their prime factors (counted with multiplicity) is prime.

The programs for A134344, there is no canonical definition to state claims against.
-/

/-! ## A134344.P14136923702018142326

`filter[A316525(n+1), A005171(#)]`
-/

namespace A134344.P14136923702018142326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A134344.P14136923702018142326

/-! ## A134344.P15893778620030920011

`filter[A316525(n+1), A066247(#)]`
-/

namespace A134344.P15893778620030920011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A134344.P15893778620030920011

/-! ## A134344.P13736806948247734675

`∩[A002808(n+1), A316525(n+1)]`
-/

namespace A134344.P13736806948247734675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134344.P13736806948247734675

/-! ## A134344.P15490078480932480064

`∩[A018252(n+1), A316525(n+1)]`
-/

namespace A134344.P15490078480932480064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134344.P15490078480932480064

/-! ## A134344.P3444911764758508160

`∩[A078177(n+1), A316525(n+1)]`
-/

namespace A134344.P3444911764758508160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134344.P3444911764758508160

/-! ## A134344.P3882575596269035902

`∩[A134376(n+1), A316525(n+1)]`
-/

namespace A134344.P3882575596269035902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134344.P3882575596269035902

/-! ## A134344.P17959631112316628877

`∩[A141468(n+1), A316525(n+1)]`
-/

namespace A134344.P17959631112316628877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134344.P17959631112316628877

/-! ## A134344.P12517959589171556746

`lt[A339579(n+1), char[A316525(n+1)]]`
-/

namespace A134344.P12517959589171556746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316525 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134344.P12517959589171556746

/-!
# A134345: Number of partitions of n into odd squarefree parts.

The programs for A134345, there is no canonical definition to state claims against.
-/

/-! ## A134345.P9038780257531076071

`∑[A280169(n)]`
-/

namespace A134345.P9038780257531076071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134345.P9038780257531076071

/-! ## A134345.P13461957492252995278

`A280169(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A134345.P13461957492252995278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280169 n + a (A023443 n).toNat

end

end A134345.P13461957492252995278

/-! ## A134345.P10953400926205151822

`A112193(n)-A157928(A322308(n))`
-/

namespace A134345.P10953400926205151822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112193 n - A157928 (A322308 n).toNat

end

end A134345.P10953400926205151822

/-! ## A134345.P13131618462984394617

`A290307(A027379(n+7)-6)-A157928(A322308(n))`
-/

namespace A134345.P13131618462984394617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A027379 (n + 7) - 6).toNat - A157928 (A322308 n).toNat

end

end A134345.P13131618462984394617

/-! ## A134345.P2792376586408823327

`A112193(n)-∑[A011736(A054907(n))]`
-/

namespace A134345.P2792376586408823327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011736 (A054907 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112193 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134345.P2792376586408823327

/-!
# A134346: Triangle read by rows: T(n,k) = (2^(n+1)-1)*binomial(n,k).

The programs for A134346, the canonical program `A134346.P6609946835705553961` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134346 has offset 0).

The definition of A134346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134346.P17563909314948672150

`(∏[char[∑[n]]+1]-1)*A007318(n)`
-/

namespace A134346.P17563909314948672150
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A007318 n

end

end A134346.P17563909314948672150

namespace A134346

/-- `(∏[char[∑[n]]+1]-1)*A007318(n)` -/
def P17563909314948672150.Spec : Prop :=
  ∀ n, P17563909314948672150.a n = A134346 n

end A134346

/-! ## A134346.P6609946835705553961

`2*A038208(n)-A007318(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A134346

/-- `2*A038208(n)-A007318(n)` -/
def P6609946835705553961.Spec : Prop :=
  ∀ n, P6609946835705553961.a n = A134346 n

theorem P6609946835705553961.correct : P6609946835705553961.Spec := by
  intro n
  simp only [A134346]

end A134346

/-! ## A134346.P5744478784906209554

`(A140513(n)-1)*abs(A108086(n))`
-/

namespace A134346.P5744478784906209554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140513 n - 1) * |A108086 n|

end

end A134346.P5744478784906209554

namespace A134346

/-- `(A140513(n)-1)*abs(A108086(n))` -/
def P5744478784906209554.Spec : Prop :=
  ∀ n, P5744478784906209554.a n = A134346 n

end A134346

/-! ## A134346.P17159888452186759776

`(A140513(n)-1)*lcm(2, A132046(n))/2`
-/

namespace A134346.P17159888452186759776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140513 n - 1 : ℚ) * ((Int.lcm 2 (A132046 n) : ℚ) / 2)

end

end A134346.P17159888452186759776

namespace A134346

/-- `(A140513(n)-1)*lcm(2, A132046(n))/2` -/
def P17159888452186759776.Spec : Prop :=
  ∀ n, P17159888452186759776.a n = (A134346 n : ℚ)

end A134346

/-! ## A134346.P7689929265171548069

`A007318(n)*A255047(A002024(n+1))`
-/

namespace A134346.P7689929265171548069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A255047 (A002024 (n + 1)).toNat

end

end A134346.P7689929265171548069

namespace A134346

/-- `A007318(n)*A255047(A002024(n+1))` -/
def P7689929265171548069.Spec : Prop :=
  ∀ n, P7689929265171548069.a n = A134346 n

end A134346

/-! ## A134346.P13773047509100828277

`A007318(n)*A140513(n)-A007318(n)`
-/

namespace A134346.P13773047509100828277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A140513 n - A007318 n

end

end A134346.P13773047509100828277

namespace A134346

/-- `A007318(n)*A140513(n)-A007318(n)` -/
def P13773047509100828277.Spec : Prop :=
  ∀ n, P13773047509100828277.a n = A134346 n

end A134346

/-! ## A134346.P1750275193016908159

`A308737(n+1)+A308737(n)-A007318(n+1)`
-/

namespace A134346.P1750275193016908159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308737 (n + 1) + (A308737 n - A007318 (n + 1))

end

end A134346.P1750275193016908159

namespace A134346

/-- `A308737(n+1)+A308737(n)-A007318(n+1)` -/
def P1750275193016908159.Spec : Prop :=
  ∀ n, P1750275193016908159.a n = A134346 n

end A134346

/-! ## A134346.P14153774111881720333

`A007318(n)*∑{d}[A137688(n), #]`
-/

namespace A134346.P14153774111881720333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A134346.P14153774111881720333

namespace A134346

/-- `A007318(n)*∑{d}[A137688(n), #]` -/
def P14153774111881720333.Spec : Prop :=
  ∀ n, P14153774111881720333.a n = A134346 n

end A134346

/-! ## A134346.P14694559250101327007

`A378959(A099627(n))`
-/

namespace A134346.P14694559250101327007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378959 (A099627 n).toNat

end

end A134346.P14694559250101327007

namespace A134346

/-- `A378959(A099627(n))` -/
def P14694559250101327007.Spec : Prop :=
  ∀ n, P14694559250101327007.a n = A134346 n

end A134346

/-! ## A134346.P13684413129564529841

`A378959(A115216(n))`
-/

namespace A134346.P13684413129564529841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378959 (A115216 n).toNat

end

end A134346.P13684413129564529841

namespace A134346

/-- `A378959(A115216(n))` -/
def P13684413129564529841.Spec : Prop :=
  ∀ n, P13684413129564529841.a n = A134346 n

end A134346

/-! ## A134346.P7370422074179899047

`A378959(A373289(n+1))`
-/

namespace A134346.P7370422074179899047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378959 (A373289 (n + 1)).toNat

end

end A134346.P7370422074179899047

namespace A134346

/-- `A378959(A373289(n+1))` -/
def P7370422074179899047.Spec : Prop :=
  ∀ n, P7370422074179899047.a n = A134346 n

end A134346

/-! ## A134346.P15970522482107068831

`A378959(A023758(n+2))`
-/

namespace A134346.P15970522482107068831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378959 (A023758 (n + 2)).toNat

end

end A134346.P15970522482107068831

namespace A134346

/-- `A378959(A023758(n+2))` -/
def P15970522482107068831.Spec : Prop :=
  ∀ n, P15970522482107068831.a n = A134346 n

end A134346

/-! ## A134346.P16618292576413563665

`A378959(A130328(n))`
-/

namespace A134346.P16618292576413563665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378959 (A130328 n).toNat

end

end A134346.P16618292576413563665

namespace A134346

/-- `A378959(A130328(n))` -/
def P16618292576413563665.Spec : Prop :=
  ∀ n, P16618292576413563665.a n = A134346 n

end A134346

/-!
# A134347: A007318^(-1) * A134346.

The programs for A134347, the canonical program `A134347.P5892652363670150920` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134347 has offset 0).

The definition of A134347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134347.P9825756405310686828

`2*A013609(n)-char[∑[n-1]]`
-/

namespace A134347.P9825756405310686828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013609 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134347.P9825756405310686828

namespace A134347

/-- `2*A013609(n)-char[∑[n-1]]` -/
def P9825756405310686828.Spec : Prop :=
  ∀ n, P9825756405310686828.a n = A134347 n

end A134347

/-! ## A134347.P8126505705095139646

`abs(2*A303872(n)-char[∑[n-1]])`
-/

namespace A134347.P8126505705095139646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A303872 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)|

end

end A134347.P8126505705095139646

namespace A134347

/-- `abs(2*A303872(n)-char[∑[n-1]])` -/
def P8126505705095139646.Spec : Prop :=
  ∀ n, P8126505705095139646.a n = A134347 n

end A134347

/-! ## A134347.P3135262764846401346

`A210196(n+1)+Δ[A238303(n)]`
-/

namespace A134347.P3135262764846401346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210196 (n + 1) + (f1 (n + 1) - f1 n)

end

end A134347.P3135262764846401346

namespace A134347

/-- `A210196(n+1)+Δ[A238303(n)]` -/
def P3135262764846401346.Spec : Prop :=
  ∀ n, P3135262764846401346.a n = A134347 n

end A134347

/-! ## A134347.P4425716680631138961

`A210196(n+1)-Δ[A010054(n)]`
-/

namespace A134347.P4425716680631138961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210196 (n + 1) - (f1 (n + 1) - f1 n)

end

end A134347.P4425716680631138961

namespace A134347

/-- `A210196(n+1)-Δ[A010054(n)]` -/
def P4425716680631138961.Spec : Prop :=
  ∀ n, P4425716680631138961.a n = A134347 n

end A134347

/-! ## A134347.P16298679692725883098

`A210196(n+1)-Δ[A035214(n)]`
-/

namespace A134347.P16298679692725883098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210196 (n + 1) - (f1 (n + 1) - f1 n)

end

end A134347.P16298679692725883098

namespace A134347

/-- `A210196(n+1)-Δ[A035214(n)]` -/
def P16298679692725883098.Spec : Prop :=
  ∀ n, P16298679692725883098.a n = A134347 n

end A134347

/-! ## A134347.P5892652363670150920

`A013609(n)+A013609(n)-A073424(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A134347

/-- `A013609(n)+A013609(n)-A073424(n+1)` -/
def P5892652363670150920.Spec : Prop :=
  ∀ n, P5892652363670150920.a n = A134347 n

theorem P5892652363670150920.correct : P5892652363670150920.Spec := by
  intro n
  simp only [A134347]

end A134347

/-! ## A134347.P17356530115195861089

`A209757(n+1)-Δ[A013609(n)]`
-/

namespace A134347.P17356530115195861089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209757 (n + 1) - (f1 (n + 1) - f1 n)

end

end A134347.P17356530115195861089

namespace A134347

/-- `A209757(n+1)-Δ[A013609(n)]` -/
def P17356530115195861089.Spec : Prop :=
  ∀ n, P17356530115195861089.a n = A134347 n

end A134347

/-! ## A134347.P6565299296498055540

`A276985(n+1)-A013609(n+1)`
-/

namespace A134347.P6565299296498055540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276985 (n + 1) - A013609 (n + 1)

end

end A134347.P6565299296498055540

namespace A134347

/-- `A276985(n+1)-A013609(n+1)` -/
def P6565299296498055540.Spec : Prop :=
  ∀ n, P6565299296498055540.a n = A134347 n

end A134347

/-! ## A134347.P3259472893028589428

`A193862(n)+A193862(n)-A013609(n+1)`
-/

namespace A134347.P3259472893028589428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193862 n + (A193862 n - A013609 (n + 1))

end

end A134347.P3259472893028589428

namespace A134347

/-- `A193862(n)+A193862(n)-A013609(n+1)` -/
def P3259472893028589428.Spec : Prop :=
  ∀ n, P3259472893028589428.a n = A134347 n

end A134347

/-! ## A134347.P13799695953359742451

`A209757(n+1)+A013609(n)-A013609(n+1)`
-/

namespace A134347.P13799695953359742451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209757 (n + 1) + (A013609 n - A013609 (n + 1))

end

end A134347.P13799695953359742451

namespace A134347

/-- `A209757(n+1)+A013609(n)-A013609(n+1)` -/
def P13799695953359742451.Spec : Prop :=
  ∀ n, P13799695953359742451.a n = A134347 n

end A134347

/-! ## A134347.P1733260715968841772

`A210204(∑[char[∑[n]]]²-n)`
-/

namespace A134347.P1733260715968841772
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210204 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A134347.P1733260715968841772

namespace A134347

/-- `A210204(∑[char[∑[n]]]²-n)` -/
def P1733260715968841772.Spec : Prop :=
  ∀ n, P1733260715968841772.a n = A134347 n

end A134347

/-! ## A134347.P18118428643312284013

`A013609(comp[C(n, 2)])-A013609(n+1)`
-/

namespace A134347.P18118428643312284013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A013609 (n + 1)

end

end A134347.P18118428643312284013

namespace A134347

/-- `A013609(comp[C(n, 2)])-A013609(n+1)` -/
def P18118428643312284013.Spec : Prop :=
  ∀ n, P18118428643312284013.a n = A134347 n

end A134347

/-! ## A134347.P3041983810438058350

`abs(A185342(n))-A013609(n+1)`
-/

namespace A134347.P3041983810438058350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185342 n| - A013609 (n + 1)

end

end A134347.P3041983810438058350

namespace A134347

/-- `abs(A185342(n))-A013609(n+1)` -/
def P3041983810438058350.Spec : Prop :=
  ∀ n, P3041983810438058350.a n = A134347 n

end A134347

/-!
# A134348: A007318^(-1) * A134347.

The programs for A134348, the canonical program `A134348.P202855012637188097` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134348 has offset 0).

The definition of A134348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134348.P202855012637188097

`2*A130123(n)-A130595(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A134348

/-- `2*A130123(n)-A130595(n)` -/
def P202855012637188097.Spec : Prop :=
  ∀ n, P202855012637188097.a n = A134348 n

theorem P202855012637188097.correct : P202855012637188097.Spec := by
  intro n
  simp only [A134348]

end A134348

/-! ## A134348.P13559724598674375209

`A155559(A127648(n))-A130595(n)`
-/

namespace A134348.P13559724598674375209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 (A127648 n).toNat - A130595 n

end

end A134348.P13559724598674375209

namespace A134348

/-- `A155559(A127648(n))-A130595(n)` -/
def P13559724598674375209.Spec : Prop :=
  ∀ n, P13559724598674375209.a n = A134348 n

end A134348

/-! ## A134348.P2642361116408387569

`Δ[A140513(n)]-A130595(n)`
-/

namespace A134348.P2642361116408387569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A130595 n

end

end A134348.P2642361116408387569

namespace A134348

/-- `Δ[A140513(n)]-A130595(n)` -/
def P2642361116408387569.Spec : Prop :=
  ∀ n, P2642361116408387569.a n = A134348 n

end A134348

/-! ## A134348.P10462447478526962192

`Δ[A055248(n)]*A097807(n)`
-/

namespace A134348.P10462447478526962192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097807 n

end

end A134348.P10462447478526962192

namespace A134348

/-- `Δ[A055248(n)]*A097807(n)` -/
def P10462447478526962192.Spec : Prop :=
  ∀ n, P10462447478526962192.a n = A134348 n

end A134348

/-! ## A134348.P17653542473281448086

`Δ[abs(A103316(n))]*A097807(n)`
-/

namespace A134348.P17653542473281448086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103316 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097807 n

end

end A134348.P17653542473281448086

namespace A134348

/-- `Δ[abs(A103316(n))]*A097807(n)` -/
def P17653542473281448086.Spec : Prop :=
  ∀ n, P17653542473281448086.a n = A134348 n

end A134348

/-! ## A134348.P15306100491352199365

`floor(ratio[A130321(n)]-A130595(n))`
-/

namespace A134348.P15306100491352199365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ) - (A130595 n : ℚ)⌋

end

end A134348.P15306100491352199365

namespace A134348

/-- `floor(ratio[A130321(n)]-A130595(n))` -/
def P15306100491352199365.Spec : Prop :=
  ∀ n, P15306100491352199365.a n = A134348 n

end A134348

/-! ## A134348.P5452948480674569318

`(A055248(n+1)-A055248(n))*A097807(n)`
-/

namespace A134348.P5452948480674569318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055248 (n + 1) - A055248 n) * A097807 n

end

end A134348.P5452948480674569318

namespace A134348

/-- `(A055248(n+1)-A055248(n))*A097807(n)` -/
def P5452948480674569318.Spec : Prop :=
  ∀ n, P5452948480674569318.a n = A134348 n

end A134348

/-! ## A134348.P3853912403786309938

`Δ[A000203(A137688(n))]-A130595(n)`
-/

namespace A134348.P3853912403786309938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A137688 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A130595 n

end

end A134348.P3853912403786309938

namespace A134348

/-- `Δ[A000203(A137688(n))]-A130595(n)` -/
def P3853912403786309938.Spec : Prop :=
  ∀ n, P3853912403786309938.a n = A134348 n

end A134348

/-! ## A134348.P5248548134559180583

`Δ[A000203(2^A003056(n))]-A130595(n)`
-/

namespace A134348.P5248548134559180583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A003056 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A130595 n

end

end A134348.P5248548134559180583

namespace A134348

/-- `Δ[A000203(2^A003056(n))]-A130595(n)` -/
def P5248548134559180583.Spec : Prop :=
  ∀ n, P5248548134559180583.a n = A134348 n

end A134348

/-! ## A134348.P12373974860019608991

`A005843(A130123(n))-A130595(n)`
-/

namespace A134348.P12373974860019608991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A130123 n).toNat - A130595 n

end

end A134348.P12373974860019608991

namespace A134348

/-- `A005843(A130123(n))-A130595(n)` -/
def P12373974860019608991.Spec : Prop :=
  ∀ n, P12373974860019608991.a n = A134348 n

end A134348

/-!
# A134349: Triangle read by rows: T(n,m) = 2^(m+1)*binomial(n,m) if m!=n, and T(n,n) = 2^(n+2)-3 .

The programs for A134349, there is no canonical definition to state claims against.
-/

/-! ## A134349.P9022477719478521791

`A114752(A134347(n))`
-/

namespace A134349.P9022477719478521791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114752 (A134347 n).toNat

end

end A134349.P9022477719478521791

/-!
# A134350: Row sums of triangle A134349.

The programs for A134350, the canonical program `A134350.P725072325556105248` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134350 has offset 0).

The definition of A134350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134350.P725072325556105248

`2^(n+1)+2*3^n-3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134350

/-- `2^(n+1)+2*3^n-3` -/
def P725072325556105248.Spec : Prop :=
  ∀ n, P725072325556105248.a n = A134350 n

theorem P725072325556105248.correct : P725072325556105248.Spec := by
  intro n
  simp only [A134350]

end A134350

/-! ## A134350.P5148293842449141314

`∑[ogf((1+x-8x^2)/(1-5x+6x^2))]`
-/

namespace A134350.P5148293842449141314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -8] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134350.P5148293842449141314

namespace A134350

/-- `∑[ogf((1+x-8x^2)/(1-5x+6x^2))]` -/
def P5148293842449141314.Spec : Prop :=
  ∀ n, P5148293842449141314.a n = A134350 n

end A134350

/-! ## A134350.P2456469241080057597

`Δ[A254028(n)-3*n]`
-/

namespace A134350.P2456469241080057597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254028 n - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134350.P2456469241080057597

namespace A134350

/-- `Δ[A254028(n)-3*n]` -/
def P2456469241080057597.Spec : Prop :=
  ∀ n, P2456469241080057597.a n = A134350 n

end A134350

/-! ## A134350.P5332284464442194265

`abs(2*(3-A001550(n))-1)`
-/

namespace A134350.P5332284464442194265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (3 - A001550 n) - 1|

end

end A134350.P5332284464442194265

namespace A134350

/-- `abs(2*(3-A001550(n))-1)` -/
def P5332284464442194265.Spec : Prop :=
  ∀ n, P5332284464442194265.a n = A134350 n

end A134350

/-! ## A134350.P7263601041502306571

`Δ[A072674(n)-(3*n+1)]`
-/

namespace A134350.P7263601041502306571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072674 n - (3 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134350.P7263601041502306571

namespace A134350

/-- `Δ[A072674(n)-(3*n+1)]` -/
def P7263601041502306571.Spec : Prop :=
  ∀ n, P7263601041502306571.a n = A134350 n

end A134350

/-! ## A134350.P4574846111310673921

`∑[A155559(n)+A003946(n)]`
-/

namespace A134350.P4574846111310673921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134350.P4574846111310673921

namespace A134350

/-- `∑[A155559(n)+A003946(n)]` -/
def P4574846111310673921.Spec : Prop :=
  ∀ n, P4574846111310673921.a n = A134350 n

end A134350

/-! ## A134350.P3627150893841717398

`Δ[A126646(n)+A107583(n)]`
-/

namespace A134350.P3627150893841717398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A107583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134350.P3627150893841717398

namespace A134350

/-- `Δ[A126646(n)+A107583(n)]` -/
def P3627150893841717398.Spec : Prop :=
  ∀ n, P3627150893841717398.a n = A134350 n

end A134350

/-! ## A134350.P2645255828959262526

`abs(A048473(n)+A000918(n+1))`
-/

namespace A134350.P2645255828959262526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048473 n + A000918 (n + 1)|

end

end A134350.P2645255828959262526

namespace A134350

/-- `abs(A048473(n)+A000918(n+1))` -/
def P2645255828959262526.Spec : Prop :=
  ∀ n, P2645255828959262526.a n = A134350 n

end A134350

/-! ## A134350.P2071460056848948046

`Δ[A107583(n)+A000079(n+1)]`
-/

namespace A134350.P2071460056848948046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107583 n + A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134350.P2071460056848948046

namespace A134350

/-- `Δ[A107583(n)+A000079(n+1)]` -/
def P2071460056848948046.Spec : Prop :=
  ∀ n, P2071460056848948046.a n = A134350 n

end A134350

/-! ## A134350.P8891214467407044100

`∑[A003946(n)+A000079(n)-A000007(n)]`
-/

namespace A134350.P8891214467407044100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n + A000079 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134350.P8891214467407044100

namespace A134350

/-- `∑[A003946(n)+A000079(n)-A000007(n)]` -/
def P8891214467407044100.Spec : Prop :=
  ∀ n, P8891214467407044100.a n = A134350 n

end A134350

/-! ## A134350.P8534043854317031202

`Δ[A000244(n)+A000225(n+1)-A016789(n)]`
-/

namespace A134350.P8534043854317031202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + A000225 (n + 1) - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134350.P8534043854317031202

namespace A134350

/-- `Δ[A000244(n)+A000225(n+1)-A016789(n)]` -/
def P8534043854317031202.Spec : Prop :=
  ∀ n, P8534043854317031202.a n = A134350 n

end A134350

/-! ## A134350.P2437068416732757966

`A199111(n)%A304167(n+1)`
-/

namespace A134350.P2437068416732757966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199111 n) (A304167 (n + 1))

end

end A134350.P2437068416732757966

namespace A134350

/-- `A199111(n)%A304167(n+1)` -/
def P2437068416732757966.Spec : Prop :=
  ∀ n, P2437068416732757966.a n = A134350 n

end A134350

/-!
# A134351: Binomial transform of [1, 5, -1, 5, -1, 5, ...]. Inverse binomial transform of A134350.

The programs for A134351, the canonical program `A134351.P13749998714769200385` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134351 has offset 0).

The definition of A134351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134351.P13749998714769200385

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=6, a(2)=10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134351

/-- `3*a(n-1)-2*a(n-2)` -/
def P13749998714769200385.Spec : Prop :=
  ∀ n, P13749998714769200385.a n = A134351 n

theorem P13749998714769200385.correct : P13749998714769200385.Spec := by
  intro n
  simp only [A134351]

end A134351

/-! ## A134351.P13172725586960005423

`record[xor(3, 2^n+1)]`
-/

namespace A134351.P13172725586960005423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 ^ n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134351.P13172725586960005423

namespace A134351

/-- `record[xor(3, 2^n+1)]` -/
def P13172725586960005423.Spec : Prop :=
  ∀ n, (P13172725586960005423.a n : ℤ) = A134351 n

end A134351

/-! ## A134351.P8369435859696568975

`record[xor(3, 2^n)-1]`
-/

namespace A134351.P8369435859696568975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (2 ^ n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134351.P8369435859696568975

namespace A134351

/-- `record[xor(3, 2^n)-1]` -/
def P8369435859696568975.Spec : Prop :=
  ∀ n, P8369435859696568975.a n = A134351 n

end A134351

/-! ## A134351.P16855334711994205862

`ogf((1+3x-6x^2)/(1-3x+2x^2))`
-/

namespace A134351.P16855334711994205862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -6] [1, -3, 2] n

end

end A134351.P16855334711994205862

namespace A134351

/-- `ogf((1+3x-6x^2)/(1-3x+2x^2))` -/
def P16855334711994205862.Spec : Prop :=
  ∀ n, P16855334711994205862.a n = A134351 n

end A134351

/-! ## A134351.P14196464697181039257

`∑[(C(3, n²)+2)^n]`
-/

namespace A134351.P14196464697181039257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (n ^ 2) + 2) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134351.P14196464697181039257

namespace A134351

/-- `∑[(C(3, n²)+2)^n]` -/
def P14196464697181039257.Spec : Prop :=
  ∀ n, (P14196464697181039257.a n : ℤ) = A134351 n

end A134351

/-! ## A134351.P17550922520625262454

`2*(a(n-1)-1)` with `a(0)=1, a(1)=6`
-/

namespace A134351.P17550922520625262454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 * (a (n - 1) - 1)

end

end A134351.P17550922520625262454

namespace A134351

/-- `2*(a(n-1)-1)` -/
def P17550922520625262454.Spec : Prop :=
  ∀ n, P17550922520625262454.a n = A134351 n

end A134351

/-! ## A134351.P15654202969750024583

`lcm(2, 1-a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A134351.P15654202969750024583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Int.lcm 2 (1 - (a (n - 1) : ℤ))

end

end A134351.P15654202969750024583

namespace A134351

/-- `lcm(2, 1-a(n-1))` -/
def P15654202969750024583.Spec : Prop :=
  ∀ n, (P15654202969750024583.a n : ℤ) = A134351 n

end A134351

/-! ## A134351.P4281106886736849785

`a(n-1)+2^n` with `a(0)=1, a(1)=6`
-/

namespace A134351.P4281106886736849785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + 2 ^ n

end

end A134351.P4281106886736849785

namespace A134351

/-- `a(n-1)+2^n` -/
def P4281106886736849785.Spec : Prop :=
  ∀ n, (P4281106886736849785.a n : ℤ) = A134351 n

end A134351

/-! ## A134351.P6880974099118530726

`∑[2^n]+3%(n+3)`
-/

namespace A134351.P6880974099118530726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 % (n + 3)

end

end A134351.P6880974099118530726

namespace A134351

/-- `∑[2^n]+3%(n+3)` -/
def P6880974099118530726.Spec : Prop :=
  ∀ n, (P6880974099118530726.a n : ℤ) = A134351 n

end A134351

/-! ## A134351.P6591498490647234953

`floor(a(n-1)+a(n-1)-2)` with `a(0)=1, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A134351.P6591498490647234953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + (a (n - 1) - 2)

end

end A134351.P6591498490647234953

namespace A134351

/-- `floor(a(n-1)+a(n-1)-2)` -/
def P6591498490647234953.Spec : Prop :=
  ∀ n, P6591498490647234953.a n = A134351 n

end A134351

/-! ## A134351.P5141461038132975428

`floor(a(n-1)-(2-a(n-1)))` with `a(0)=1, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A134351.P5141461038132975428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) - (2 - a (n - 1))

end

end A134351.P5141461038132975428

namespace A134351

/-- `floor(a(n-1)-(2-a(n-1)))` -/
def P5141461038132975428.Spec : Prop :=
  ∀ n, P5141461038132975428.a n = A134351 n

end A134351

/-! ## A134351.P2924861026113687745

`xor(2^(n+1), ceil((n+3)/(n+1)))`
-/

namespace A134351.P2924861026113687745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ (n + 1) : ℤ) ⌈(n + 3 : ℚ) / (n + 1 : ℚ)⌉

end

end A134351.P2924861026113687745

namespace A134351

/-- `xor(2^(n+1), ceil((n+3)/(n+1)))` -/
def P2924861026113687745.Spec : Prop :=
  ∀ n, P2924861026113687745.a n = A134351 n

end A134351

/-! ## A134351.P10620338856188710414

`xor(1, A151821(n+1))+1`
-/

namespace A134351.P10620338856188710414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A151821 (n + 1)) + 1

end

end A134351.P10620338856188710414

namespace A134351

/-- `xor(1, A151821(n+1))+1` -/
def P10620338856188710414.Spec : Prop :=
  ∀ n, P10620338856188710414.a n = A134351 n

end A134351

/-! ## A134351.P14972234969414413929

`xor(1, A063759(2*n))+1`
-/

namespace A134351.P14972234969414413929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A063759 (2 * n)) + 1

end

end A134351.P14972234969414413929

namespace A134351

/-- `xor(1, A063759(2*n))+1` -/
def P14972234969414413929.Spec : Prop :=
  ∀ n, P14972234969414413929.a n = A134351 n

end A134351

/-! ## A134351.P3869214745188550062

`record[2-A354866(2*n+1)]`
-/

namespace A134351.P3869214745188550062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A354866 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134351.P3869214745188550062

namespace A134351

/-- `record[2-A354866(2*n+1)]` -/
def P3869214745188550062.Spec : Prop :=
  ∀ n, P3869214745188550062.a n = A134351 n

end A134351

/-! ## A134351.P11482504766009065427

`A174316(A171463(n+1))`
-/

namespace A134351.P11482504766009065427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174316 (A171463 (n + 1)).toNat

end

end A134351.P11482504766009065427

namespace A134351

/-- `A174316(A171463(n+1))` -/
def P11482504766009065427.Spec : Prop :=
  ∀ n, P11482504766009065427.a n = A134351 n

end A134351

/-! ## A134351.P10643586530804095084

`A183155(n)+A062545(n)`
-/

namespace A134351.P10643586530804095084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183155 n + A062545 n

end

end A134351.P10643586530804095084

namespace A134351

/-- `A183155(n)+A062545(n)` -/
def P10643586530804095084.Spec : Prop :=
  ∀ n, P10643586530804095084.a n = A134351 n

end A134351

/-! ## A134351.P18091787607267222052

`A171449(n)+A133140(n)`
-/

namespace A134351.P18091787607267222052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171449 n + A133140 n

end

end A134351.P18091787607267222052

namespace A134351

/-- `A171449(n)+A133140(n)` -/
def P18091787607267222052.Spec : Prop :=
  ∀ n, P18091787607267222052.a n = A134351 n

end A134351

/-!
# A134352: A130123 * A128174.

The programs for A134352, the canonical program `A134352.P10374233049189694274` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134352 has offset 0).

The definition of A134352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134352.P5449936011150191670

`comp[2*(n²+n)]%2*∏[char[∑[n+1]]+1]`
-/

namespace A134352.P5449936011150191670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A134352.P5449936011150191670

namespace A134352

/-- `comp[2*(n²+n)]%2*∏[char[∑[n+1]]+1]` -/
def P5449936011150191670.Spec : Prop :=
  ∀ n, (P5449936011150191670.a n : ℤ) = A134352 n

end A134352

/-! ## A134352.P17844390080024396706

`floor(∏[char[∑[n+1]]+1]^(and(2, comp[∑[n]]+n)-1))`
-/

namespace A134352.P17844390080024396706
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + n) : ℤ) - 1 : ℤ)⌋

end

end A134352.P17844390080024396706

namespace A134352

/-- `floor(∏[char[∑[n+1]]+1]^(and(2, comp[∑[n]]+n)-1))` -/
def P17844390080024396706.Spec : Prop :=
  ∀ n, P17844390080024396706.a n = A134352 n

end A134352

/-! ## A134352.P995634393184210069

`floor(root(∏[char[∑[n+1]]+1], and(2, comp[∑[n]]+n)-1))`
-/

namespace A134352.P995634393184210069
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + n) : ℤ) - 1 : ℝ))⌋

end

end A134352.P995634393184210069

namespace A134352

/-- `floor(root(∏[char[∑[n+1]]+1], and(2, comp[∑[n]]+n)-1))` -/
def P995634393184210069.Spec : Prop :=
  ∀ n, P995634393184210069.a n = A134352 n

end A134352

/-! ## A134352.P15897853551227663921

`and(-((1-C(∑[char[∑[n]]], 2)+n)*(and(2, comp[∑[n]]+n)-1)), ∏[char[∑[n+1]]+1])`
-/

namespace A134352.P15897853551227663921
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f7 j = n then 1 else 0) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + n) : ℤ) - 1))) ((∏ j ∈ Finset.range (n + 1), f6 j : ℕ) : ℤ)

end

end A134352.P15897853551227663921

namespace A134352

/-- `and(-((1-C(∑[char[∑[n]]], 2)+n)*(and(2, comp[∑[n]]+n)-1)), ∏[char[∑[n+1]]+1])` -/
def P15897853551227663921.Spec : Prop :=
  ∀ n, P15897853551227663921.a n = A134352 n

end A134352

/-! ## A134352.P14375383351361953617

`and(2, comp[∑[n]]+n)^A003056(n)`
-/

namespace A134352.P14375383351361953617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℚ) ^ (A003056 n : ℤ)

end

end A134352.P14375383351361953617

namespace A134352

/-- `and(2, comp[∑[n]]+n)^A003056(n)` -/
def P14375383351361953617.Spec : Prop :=
  ∀ n, P14375383351361953617.a n = (A134352 n : ℚ)

end A134352

/-! ## A134352.P14836911854518151918

`(2-gcd(2, comp[∑[4*n]]))*A137688(n)`
-/

namespace A134352.P14836911854518151918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)) * A137688 n

end

end A134352.P14836911854518151918

namespace A134352

/-- `(2-gcd(2, comp[∑[4*n]]))*A137688(n)` -/
def P14836911854518151918.Spec : Prop :=
  ∀ n, P14836911854518151918.a n = A134352 n

end A134352

/-! ## A134352.P11217847882910420268

`∏[char[∑[n+1]]+1]*A128174(n+1)`
-/

namespace A134352.P11217847882910420268
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A128174 (n + 1)

end

end A134352.P11217847882910420268

namespace A134352

/-- `∏[char[∑[n+1]]+1]*A128174(n+1)` -/
def P11217847882910420268.Spec : Prop :=
  ∀ n, P11217847882910420268.a n = A134352 n

end A134352

/-! ## A134352.P10374233049189694274

`A131577(A128621(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134352

/-- `A131577(A128621(n+1))` -/
def P10374233049189694274.Spec : Prop :=
  ∀ n, P10374233049189694274.a n = A134352 n

theorem P10374233049189694274.correct : P10374233049189694274.Spec := by
  intro n
  simp only [A134352]

end A134352

/-! ## A134352.P10875474353579213019

`A130125(n)*A130321(n)`
-/

namespace A134352.P10875474353579213019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n * A130321 n

end

end A134352.P10875474353579213019

namespace A134352

/-- `A130125(n)*A130321(n)` -/
def P10875474353579213019.Spec : Prop :=
  ∀ n, P10875474353579213019.a n = A134352 n

end A134352

/-! ## A134352.P13204866946050298647

`lcm(A130125(n), A137688(n))`
-/

namespace A134352.P13204866946050298647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130125 n) (A137688 n)

end

end A134352.P13204866946050298647

namespace A134352

/-- `lcm(A130125(n), A137688(n))` -/
def P13204866946050298647.Spec : Prop :=
  ∀ n, (P13204866946050298647.a n : ℤ) = A134352 n

end A134352

/-! ## A134352.P3135893756992697366

`and(A099627(n), A130329(n))`
-/

namespace A134352.P3135893756992697366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099627 n) (A130329 n)

end

end A134352.P3135893756992697366

namespace A134352

/-- `and(A099627(n), A130329(n))` -/
def P3135893756992697366.Spec : Prop :=
  ∀ n, P3135893756992697366.a n = A134352 n

end A134352

/-! ## A134352.P11901223046736635092

`and(A130329(n), A137688(n))`
-/

namespace A134352.P11901223046736635092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130329 n) (A137688 n)

end

end A134352.P11901223046736635092

namespace A134352

/-- `and(A130329(n), A137688(n))` -/
def P11901223046736635092.Spec : Prop :=
  ∀ n, P11901223046736635092.a n = A134352 n

end A134352

/-! ## A134352.P5011943581898575672

`and(A134348(n), A137688(n))`
-/

namespace A134352.P5011943581898575672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134348 n) (A137688 n)

end

end A134352.P5011943581898575672

namespace A134352

/-- `and(A134348(n), A137688(n))` -/
def P5011943581898575672.Spec : Prop :=
  ∀ n, P5011943581898575672.a n = A134352 n

end A134352

/-! ## A134352.P15074614149697095316

`A128174(n+1)*A137688(n)`
-/

namespace A134352.P15074614149697095316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A137688 n

end

end A134352.P15074614149697095316

namespace A134352

/-- `A128174(n+1)*A137688(n)` -/
def P15074614149697095316.Spec : Prop :=
  ∀ n, P15074614149697095316.a n = A134352 n

end A134352

/-! ## A134352.P13969301560498770466

`and(A048645(n+1), A130329(n))`
-/

namespace A134352.P13969301560498770466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048645 (n + 1)) (A130329 n)

end

end A134352.P13969301560498770466

namespace A134352

/-- `and(A048645(n+1), A130329(n))` -/
def P13969301560498770466.Spec : Prop :=
  ∀ n, P13969301560498770466.a n = A134352 n

end A134352

/-! ## A134352.P5960002798720142956

`and(A129143(n+1), A130329(n))`
-/

namespace A134352.P5960002798720142956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129143 (n + 1)) (A130329 n)

end

end A134352.P5960002798720142956

namespace A134352

/-- `and(A129143(n+1), A130329(n))` -/
def P5960002798720142956.Spec : Prop :=
  ∀ n, P5960002798720142956.a n = A134352 n

end A134352

/-! ## A134352.P2454696633226675528

`and(A137688(n), A297554(n))`
-/

namespace A134352.P2454696633226675528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137688 n) (A297554 n)

end

end A134352.P2454696633226675528

namespace A134352

/-- `and(A137688(n), A297554(n))` -/
def P2454696633226675528.Spec : Prop :=
  ∀ n, P2454696633226675528.a n = A134352 n

end A134352

/-! ## A134352.P18114243183757836054

`and(A137688(n), A249993(n))`
-/

namespace A134352.P18114243183757836054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137688 n) (A249993 n)

end

end A134352.P18114243183757836054

namespace A134352

/-- `and(A137688(n), A249993(n))` -/
def P18114243183757836054.Spec : Prop :=
  ∀ n, P18114243183757836054.a n = A134352 n

end A134352

/-! ## A134352.P7923028000107461370

`and(A108981(n), A137688(n))`
-/

namespace A134352.P7923028000107461370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108981 n) (A137688 n)

end

end A134352.P7923028000107461370

namespace A134352

/-- `and(A108981(n), A137688(n))` -/
def P7923028000107461370.Spec : Prop :=
  ∀ n, P7923028000107461370.a n = A134352 n

end A134352

/-! ## A134352.P16573285516322777613

`and(A043291(n+1), A137688(n))`
-/

namespace A134352.P16573285516322777613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043291 (n + 1)) (A137688 n)

end

end A134352.P16573285516322777613

namespace A134352

/-- `and(A043291(n+1), A137688(n))` -/
def P16573285516322777613.Spec : Prop :=
  ∀ n, P16573285516322777613.a n = A134352 n

end A134352

/-!
# A134353: Row sums of triangle A134352.

The programs for A134353, the canonical program `A134353.P3273860127715029704` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134353 has offset 0).

The definition of A134353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134353.P3273860127715029704

`2^(n-2)*(2*n+3+(-1)^n)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134353

/-- `2^(n-2)*(2*n+3+(-1)^n)` -/
def P3273860127715029704.Spec : Prop :=
  ∀ n, P3273860127715029704.a n = (A134353 n : ℚ)

end A134353

/-! ## A134353.P11327675021585147908

`∑[ogf((1-x)/(1-2x-4x^2+8x^3))]`
-/

namespace A134353.P11327675021585147908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -4, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134353.P11327675021585147908

namespace A134353

/-- `∑[ogf((1-x)/(1-2x-4x^2+8x^3))]` -/
def P11327675021585147908.Spec : Prop :=
  ∀ n, P11327675021585147908.a n = A134353 n

end A134353

/-! ## A134353.P7256913164883093758

`abs(2^n*∑[n%2-1])`
-/

namespace A134353.P7256913164883093758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A134353.P7256913164883093758

namespace A134353

/-- `abs(2^n*∑[n%2-1])` -/
def P7256913164883093758.Spec : Prop :=
  ∀ n, P7256913164883093758.a n = A134353 n

end A134353

/-! ## A134353.P11319327898335326150

`2^(log2(∑[(n+1)%2])+n)`
-/

namespace A134353.P11319327898335326150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n : ℝ))

end

end A134353.P11319327898335326150

namespace A134353

/-- `2^(log2(∑[(n+1)%2])+n)` -/
def P11319327898335326150.Spec : Prop :=
  ∀ n, P11319327898335326150.a n = (A134353 n : ℝ)

end A134353

/-! ## A134353.P13128100344945766653

`abs(2^n*∑[1-and(1, n)])`
-/

namespace A134353.P13128100344945766653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A134353.P13128100344945766653

namespace A134353

/-- `abs(2^n*∑[1-and(1, n)])` -/
def P13128100344945766653.Spec : Prop :=
  ∀ n, P13128100344945766653.a n = A134353 n

end A134353

/-! ## A134353.P8113060558168188155

`2^n+4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A134353.P8113060558168188155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 ^ n + 4 * a (n - 2)

end

end A134353.P8113060558168188155

namespace A134353

/-- `2^n+4*a(n-2)` -/
def P8113060558168188155.Spec : Prop :=
  ∀ n, (P8113060558168188155.a n : ℤ) = A134353 n

end A134353

/-! ## A134353.P15905027034841239210

`floor(2^n*∑[1-a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A134353.P15905027034841239210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134353.P15905027034841239210

namespace A134353

/-- `floor(2^n*∑[1-a(n-1)])` -/
def P15905027034841239210.Spec : Prop :=
  ∀ n, P15905027034841239210.a n = A134353 n

end A134353

/-! ## A134353.P14984468642050973820

`and((n+2)*2^(n-1), -2^n)`
-/

namespace A134353.P14984468642050973820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (-(2 ^ n : ℤ))

end

end A134353.P14984468642050973820

namespace A134353

/-- `and((n+2)*2^(n-1), -2^n)` -/
def P14984468642050973820.Spec : Prop :=
  ∀ n, P14984468642050973820.a n = A134353 n

end A134353

/-! ## A134353.P8439032936550536014

`A179608(n)-a(n-1)` with `a(0)=1`
-/

namespace A134353.P8439032936550536014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179608 n - a (n - 1)

end

end A134353.P8439032936550536014

namespace A134353

/-- `A179608(n)-a(n-1)` -/
def P8439032936550536014.Spec : Prop :=
  ∀ n, P8439032936550536014.a n = A134353 n

end A134353

/-! ## A134353.P15907672397463818141

`ceil((or(1, n)+1)/2*A000079(n))`
-/

namespace A134353.P15907672397463818141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n + 1 : ℚ) / 2 * (A000079 n : ℚ)⌉

end

end A134353.P15907672397463818141

namespace A134353

/-- `ceil((or(1, n)+1)/2*A000079(n))` -/
def P15907672397463818141.Spec : Prop :=
  ∀ n, P15907672397463818141.a n = A134353 n

end A134353

/-! ## A134353.P14531543044913878527

`(A008619(n)+1)*2^n-2^n`
-/

namespace A134353.P14531543044913878527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 n + 1) * (2 ^ n : ℤ) - (2 ^ n : ℤ)

end

end A134353.P14531543044913878527

namespace A134353

/-- `(A008619(n)+1)*2^n-2^n` -/
def P14531543044913878527.Spec : Prop :=
  ∀ n, P14531543044913878527.a n = A134353 n

end A134353

/-! ## A134353.P97412925948348576

`a(n-1)+A199572(n)+a(n-1)` with `a(0)=1`
-/

namespace A134353.P97412925948348576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A199572 n + a (n - 1))

end

end A134353.P97412925948348576

namespace A134353

/-- `a(n-1)+A199572(n)+a(n-1)` -/
def P97412925948348576.Spec : Prop :=
  ∀ n, P97412925948348576.a n = A134353 n

end A134353

/-! ## A134353.P3256038310463965116

`∑[(A028242(n)+1)*floor(2^(n-1))]+1`
-/

namespace A134353.P3256038310463965116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028242 n + 1) * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A134353.P3256038310463965116

namespace A134353

/-- `∑[(A028242(n)+1)*floor(2^(n-1))]+1` -/
def P3256038310463965116.Spec : Prop :=
  ∀ n, P3256038310463965116.a n = A134353 n

end A134353

/-! ## A134353.P17981168951887787831

`abs(1-(A109613(n)+1)*2^(n-1))+1`
-/

namespace A134353.P17981168951887787831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |1 - (A109613 n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)| + 1

end

end A134353.P17981168951887787831

namespace A134353

/-- `abs(1-(A109613(n)+1)*2^(n-1))+1` -/
def P17981168951887787831.Spec : Prop :=
  ∀ n, P17981168951887787831.a n = (A134353 n : ℚ)

end A134353

/-! ## A134353.P8969311398489466438

`A051049(n)+A005985(n)`
-/

namespace A134353.P8969311398489466438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 n + A005985 n

end

end A134353.P8969311398489466438

namespace A134353

/-- `A051049(n)+A005985(n)` -/
def P8969311398489466438.Spec : Prop :=
  ∀ n, P8969311398489466438.a n = A134353 n

end A134353

/-! ## A134353.P5546779422512641260

`A213173(n)+A001787(n)`
-/

namespace A134353.P5546779422512641260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n + A001787 n

end

end A134353.P5546779422512641260

namespace A134353

/-- `A213173(n)+A001787(n)` -/
def P5546779422512641260.Spec : Prop :=
  ∀ n, P5546779422512641260.a n = A134353 n

end A134353

/-! ## A134353.P958297955246328106

`A001787(n)+A016116(n)²`
-/

namespace A134353.P958297955246328106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + A016116 n ^ 2

end

end A134353.P958297955246328106

namespace A134353

/-- `A001787(n)+A016116(n)²` -/
def P958297955246328106.Spec : Prop :=
  ∀ n, P958297955246328106.a n = A134353 n

end A134353

/-! ## A134353.P4676188205387640185

`A213173(n)+n*A131577(n)`
-/

namespace A134353.P4676188205387640185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n + (n : ℤ) * A131577 n

end

end A134353.P4676188205387640185

namespace A134353

/-- `A213173(n)+n*A131577(n)` -/
def P4676188205387640185.Spec : Prop :=
  ∀ n, P4676188205387640185.a n = A134353 n

end A134353

/-! ## A134353.P5111950529440744243

`A016116(n)²+n*A011782(n)`
-/

namespace A134353.P5111950529440744243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2 + (n : ℤ) * A011782 n

end

end A134353.P5111950529440744243

namespace A134353

/-- `A016116(n)²+n*A011782(n)` -/
def P5111950529440744243.Spec : Prop :=
  ∀ n, P5111950529440744243.a n = A134353 n

end A134353

/-! ## A134353.P15428099946880640747

`A016116(n)²+n*A131577(n)`
-/

namespace A134353.P15428099946880640747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2 + (n : ℤ) * A131577 n

end

end A134353.P15428099946880640747

namespace A134353

/-- `A016116(n)²+n*A131577(n)` -/
def P15428099946880640747.Spec : Prop :=
  ∀ n, P15428099946880640747.a n = A134353 n

end A134353

/-!
# A134355: A001044(n)-A134354(n).

The programs for A134355, there is no canonical definition to state claims against.
-/

/-! ## A134355.P12838782257544043748

`A054165(A347862(n+4))`
-/

namespace A134355.P12838782257544043748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054165 (A347862 (n + 4)).toNat

end

end A134355.P12838782257544043748

/-!
# A134356: a(n) = Product_{k=1..n-1} (3k+1)!/(n+k)!.

The programs for A134356, there is no canonical definition to state claims against.
-/

/-! ## A134356.P14964072863202820304

`(n+1)!*A005130(n+1)`
-/

namespace A134356.P14964072863202820304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A005130 (n + 1)

end

end A134356.P14964072863202820304

/-! ## A134356.P5542671343062540396

`∏[A090816(n)/A001700(n)]`
-/

namespace A134356.P5542671343062540396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090816 n : ℚ) / (A001700 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A134356.P5542671343062540396

/-! ## A134356.P1906928605963253445

`∏[A090816(n)/A088218(n+1)]`
-/

namespace A134356.P1906928605963253445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090816 n : ℚ) / (A088218 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A134356.P1906928605963253445

/-! ## A134356.P11440034104666090538

`record[A048601(n+1)*A098361(n)]`
-/

namespace A134356.P11440034104666090538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048601 (n + 1) * A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134356.P11440034104666090538

/-! ## A134356.P3800271285748500398

`A000142(n+1)*A005130(n+1)`
-/

namespace A134356.P3800271285748500398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A005130 (n + 1)

end

end A134356.P3800271285748500398

/-!
# A134357: Denominator of binomial(6*n-2,2*n)/(2*binomial(4*n-1,2*n)).

The programs for A134357, there is no canonical definition to state claims against.
-/

/-! ## A134357.P13669223992474711528

`A151461(n)+A008683(A006125(n))`
-/

namespace A134357.P13669223992474711528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151461 n + A008683 (A006125 n).toNat

end

end A134357.P13669223992474711528

/-! ## A134357.P11025895017150805282

`A151461(n)+A010815(A213785(n))`
-/

namespace A134357.P11025895017150805282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151461 n + A010815 (A213785 n).toNat

end

end A134357.P11025895017150805282

/-! ## A134357.P14374153339312032044

`A151461(n)-A010815(A151490(n))`
-/

namespace A134357.P14374153339312032044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151461 n - A010815 (A151490 n).toNat

end

end A134357.P14374153339312032044

/-!
# A134358: Coefficient of y^(n-3) in expansion of (y+n!)^n.

The programs for A134358, there is no canonical definition to state claims against.
-/

/-! ## A134358.P12658524308245725513

`(n+3)!^3*C(n+3, 3)`
-/

namespace A134358.P12658524308245725513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 3) ^ 3 * Nat.choose (n + 3) 3

end

end A134358.P12658524308245725513

/-! ## A134358.P4721725420617159815

`(n+3)!^3*∑[∑[n+1]]`
-/

namespace A134358.P4721725420617159815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 3) ^ 3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134358.P4721725420617159815

/-! ## A134358.P8654950010451603621

`A001044(n+3)*A001805(n+3)`
-/

namespace A134358.P8654950010451603621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 (n + 3) * A001805 (n + 3)

end

end A134358.P8654950010451603621

/-!
# A134361: a(n) = smallest integer >= n which has only prime factors 2 and 3.

The programs for A134361, there is no canonical definition to state claims against.
-/

/-! ## A134361.P6922437660023544326

`A003586(A069924(Δ[n²]))`
-/

namespace A134361.P6922437660023544326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A069924 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A134361.P6922437660023544326

/-! ## A134361.P9636635945236082086

`A003586(∑[char[A309956(n)]])`
-/

namespace A134361.P9636635945236082086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309956 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134361.P9636635945236082086

/-! ## A134361.P3045778235054495491

`A114334(∑[char[A309956(n)]])`
-/

namespace A134361.P3045778235054495491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309956 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134361.P3045778235054495491

/-! ## A134361.P14377648273709143032

`A114334(A069924(comp[2*n]))`
-/

namespace A134361.P14377648273709143032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114334 (A069924 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A134361.P14377648273709143032

/-! ## A134361.P17497864561989428375

`A003586(∑[char[A036561(n)]]+1)`
-/

namespace A134361.P17497864561989428375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A134361.P17497864561989428375

/-! ## A134361.P18278565223046763451

`A003586(∑[char[A065332(n+1)]])`
-/

namespace A134361.P18278565223046763451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065332 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134361.P18278565223046763451

/-! ## A134361.P16109403043950400161

`A114334(∑[char[A065332(n+1)]])`
-/

namespace A134361.P16109403043950400161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065332 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134361.P16109403043950400161

/-! ## A134361.P10199365930435792922

`A003586(∑[char[A003586(n+1)]]+1)`
-/

namespace A134361.P10199365930435792922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A134361.P10199365930435792922

/-! ## A134361.P4365352434076947370

`A114334(∑[char[A114334(n+1)]]+1)`
-/

namespace A134361.P4365352434076947370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114334 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114334 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A134361.P4365352434076947370

/-! ## A134361.P2055262043849629539

`A065331(A003586(A069924(2*n+1)))`
-/

namespace A134361.P2055262043849629539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A003586 (A069924 (2 * n + 1)).toNat).toNat

end

end A134361.P2055262043849629539

/-!
# A134362: a(n) is the number of functions f:X->X, where |X| = n, such that for every x in X, f(f(x)) != x (i.e., the square of the function has no fixed points; note this implies that the function has no fixed points).

The programs for A134362, there is no canonical definition to state claims against.
-/

/-! ## A134362.P10386805577800672877

`A334014(∑[n]+n)`
-/

namespace A134362.P10386805577800672877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334014 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A134362.P10386805577800672877

/-! ## A134362.P5007198982785209665

`A334014(A000096(n))+2-4/2`
-/

namespace A134362.P5007198982785209665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334014 (A000096 n).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A134362.P5007198982785209665

/-! ## A134362.P3520953313607591981

`gcd(A000038(n), A334014(A000096(n)))`
-/

namespace A134362.P3520953313607591981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A334014 (A000096 n).toNat)

end

end A134362.P3520953313607591981

/-! ## A134362.P15768526869495669466

`lcm(A000034(n), A334014(A000096(n)))`
-/

namespace A134362.P15768526869495669466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A334014 (A000096 n).toNat)

end

end A134362.P15768526869495669466

/-! ## A134362.P7102155695846892269

`or(A000007(n), A334014(A000096(n)))`
-/

namespace A134362.P7102155695846892269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A334014 (A000096 n).toNat)

end

end A134362.P7102155695846892269

/-! ## A134362.P17616944745271624307

`xor(A000035(2*n), A334014(A000096(n)))`
-/

namespace A134362.P17616944745271624307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (2 * n)) (A334014 (A000096 n).toNat)

end

end A134362.P17616944745271624307

/-! ## A134362.P13387793633552180752

`A000035(2*n+1)*A334014(A000096(n))`
-/

namespace A134362.P13387793633552180752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A334014 (A000096 n).toNat

end

end A134362.P13387793633552180752

/-! ## A134362.P1784749750980779915

`A007318(C(2, n+2))*A334014(A000096(n))`
-/

namespace A134362.P1784749750980779915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A334014 (A000096 n).toNat

end

end A134362.P1784749750980779915

/-! ## A134362.P1063427534625324087

`A001221(A007521(n+2))*A334014(A000096(n))`
-/

namespace A134362.P1063427534625324087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007521 (n + 2)).toNat * A334014 (A000096 n).toNat

end

end A134362.P1063427534625324087

/-! ## A134362.P4388858074731472022

`A008683(A005117(n+1))²*A334014(A000096(n))`
-/

namespace A134362.P4388858074731472022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A334014 (A000096 n).toNat

end

end A134362.P4388858074731472022

/-!
# A134363: Irregular triangle read by rows where n-th row (of A061395(n) terms, for n>=2) is such that n = Product_{j=1..A061395(n)} prime(j)^(Sum_{k=1..j} T(n,k)). Row 1 is {0}.

The programs for A134363, there is no canonical definition to state claims against.
-/

/-! ## A134363.P3074606786526070856

`A067255(n+1)-A025466(A067247(n+1))`
-/

namespace A134363.P3074606786526070856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067255 (n + 1) - A025466 (A067247 (n + 1)).toNat

end

end A134363.P3074606786526070856

/-! ## A134363.P2329733944326305286

`A067255(n+1)-A276404(A285246(n))`
-/

namespace A134363.P2329733944326305286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067255 (n + 1) - A276404 (A285246 n).toNat

end

end A134363.P2329733944326305286

/-! ## A134363.P10178052424842419317

`A067255((n+1)*A143983(3*(n+1)))`
-/

namespace A134363.P10178052424842419317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067255 ((n + 1 : ℤ) * A143983 (3 * (n + 1))).toNat

end

end A134363.P10178052424842419317

/-! ## A134363.P7367695280156701663

`A345920(3*n+5)%2*A067255(n+1)`
-/

namespace A134363.P7367695280156701663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345920 (3 * n + 5)) 2 * A067255 (n + 1)

end

end A134363.P7367695280156701663

/-! ## A134363.P14168458077123874584

`A067255(n+1)-A067255(A374989(n))`
-/

namespace A134363.P14168458077123874584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067255 (n + 1) - A067255 (A374989 n).toNat

end

end A134363.P14168458077123874584

/-!
# A134366: a(n) = (n!)^(n-1).

The programs for A134366, the canonical program `A134366.P11769412504667635410` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134366 has offset 0).

The definition of A134366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134366.P11769412504667635410

`n!^(n-1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134366

/-- `n!^(n-1)` -/
def P11769412504667635410.Spec : Prop :=
  ∀ n, P11769412504667635410.a n = (A134366 n : ℚ)

end A134366

/-! ## A134366.P2372600222993938507

`exp((n-1)*log(n!))`
-/

namespace A134366.P2372600222993938507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (((n : ℤ) - 1 : ℝ) * Real.log (Nat.factorial n : ℝ))

end

end A134366.P2372600222993938507

namespace A134366

/-- `exp((n-1)*log(n!))` -/
def P2372600222993938507.Spec : Prop :=
  ∀ n, P2372600222993938507.a n = (A134366 n : ℝ)

end A134366

/-! ## A134366.P8525479253866195377

`∏[round(1/acot(n))]^(n-1)`
-/

namespace A134366.P8525479253866195377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A134366.P8525479253866195377

namespace A134366

/-- `∏[round(1/acot(n))]^(n-1)` -/
def P8525479253866195377.Spec : Prop :=
  ∀ n, P8525479253866195377.a n = (A134366 n : ℚ)

end A134366

/-! ## A134366.P8015850085896603408

`((n+1)/∏[n+1])^(1-n)`
-/

namespace A134366.P8015850085896603408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) ^ (1 - (n : ℤ) : ℤ)

end

end A134366.P8015850085896603408

namespace A134366

/-- `((n+1)/∏[n+1])^(1-n)` -/
def P8015850085896603408.Spec : Prop :=
  ∀ n, P8015850085896603408.a n = (A134366 n : ℚ)

end A134366

/-! ## A134366.P3379856372216555435

`ceil(A000142(n)^(n-1))`
-/

namespace A134366.P3379856372216555435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000142 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A134366.P3379856372216555435

namespace A134366

/-- `ceil(A000142(n)^(n-1))` -/
def P3379856372216555435.Spec : Prop :=
  ∀ n, P3379856372216555435.a n = A134366 n

end A134366

/-!
# A134367: a(n) = (n!)^(n-2).

The programs for A134367, the canonical program `A134367.P13635289251914064919` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134367 has offset 0).

The definition of A134367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134367.P13635289251914064919

`n!^(n-2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134367

/-- `n!^(n-2)` -/
def P13635289251914064919.Spec : Prop :=
  ∀ n, P13635289251914064919.a n = (A134367 n : ℚ)

end A134367

/-! ## A134367.P7933195019292689194

`exp((n-2)*log(n!))`
-/

namespace A134367.P7933195019292689194
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (((n : ℤ) - 2 : ℝ) * Real.log (Nat.factorial n : ℝ))

end

end A134367.P7933195019292689194

namespace A134367

/-- `exp((n-2)*log(n!))` -/
def P7933195019292689194.Spec : Prop :=
  ∀ n, P7933195019292689194.a n = (A134367 n : ℝ)

end A134367

/-! ## A134367.P1133692564032494858

`∏[round(1/acot(n))]^(n-2)`
-/

namespace A134367.P1133692564032494858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A134367.P1133692564032494858

namespace A134367

/-- `∏[round(1/acot(n))]^(n-2)` -/
def P1133692564032494858.Spec : Prop :=
  ∀ n, P1133692564032494858.a n = (A134367 n : ℚ)

end A134367

/-! ## A134367.P14720173295595655041

`∏[ceil(n^tanh(n))]^(n-2)`
-/

namespace A134367.P14720173295595655041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ (Real.tanh (n : ℝ))⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A134367.P14720173295595655041

namespace A134367

/-- `∏[ceil(n^tanh(n))]^(n-2)` -/
def P14720173295595655041.Spec : Prop :=
  ∀ n, P14720173295595655041.a n = (A134367 n : ℚ)

end A134367

/-! ## A134367.P1429628860621995983

`((n+1)/∏[n+1])^(2-n)`
-/

namespace A134367.P1429628860621995983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) ^ (2 - (n : ℤ) : ℤ)

end

end A134367.P1429628860621995983

namespace A134367

/-- `((n+1)/∏[n+1])^(2-n)` -/
def P1429628860621995983.Spec : Prop :=
  ∀ n, P1429628860621995983.a n = (A134367 n : ℚ)

end A134367

/-!
# A134368: 

The programs for A134368, there is no canonical definition to state claims against.
-/

/-! ## A134368.P12810131887262371253

`(2*n)!^(n+1)`
-/

namespace A134368.P12810131887262371253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) ^ (n + 1)

end

end A134368.P12810131887262371253

/-! ## A134368.P10326648126366577386

`record[(-sqrt(n!))^(n+2)]`
-/

namespace A134368.P10326648126366577386
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt (Nat.factorial n : ℝ)) ^ (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134368.P10326648126366577386

/-! ## A134368.P8283575490632238369

`record[and(n, n+1)!]^(n+1)`
-/

namespace A134368.P8283575490632238369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 1)

end

end A134368.P8283575490632238369

/-! ## A134368.P4587016214481094508

`A000142(2*n)^A023443(n+2)`
-/

namespace A134368.P4587016214481094508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * n) : ℚ) ^ (A023443 (n + 2) : ℤ)

end

end A134368.P4587016214481094508

/-!
# A134369: 

The programs for A134369, there is no canonical definition to state claims against.
-/

/-! ## A134369.P2128665622932387516

`Δ[n²]!^(n+1)`
-/

namespace A134369.P2128665622932387516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ (n + 1)

end

end A134369.P2128665622932387516

/-! ## A134369.P6493386086257809534

`record[xor(1, n)!]^(n+1)`
-/

namespace A134369.P6493386086257809534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 1)

end

end A134369.P6493386086257809534

/-! ## A134369.P6610832488720337792

`record[(lcm(2, n)/2)!]^(n+1)`
-/

namespace A134369.P6610832488720337792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 1)

end

end A134369.P6610832488720337792

/-! ## A134369.P14854274438645516253

`A000142(A000027(2*n+1))^A000027(n+1)`
-/

namespace A134369.P14854274438645516253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A000027 (2 * n + 1)).toNat : ℚ) ^ (A000027 (n + 1) : ℤ)

end

end A134369.P14854274438645516253

/-!
# A134370: 

The programs for A134370, there is no canonical definition to state claims against.
-/

/-! ## A134370.P4105180895918657055

`A000142(A376342(n+1))^(n+2)`
-/

namespace A134370.P4105180895918657055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A376342 (n + 1)).toNat ^ (n + 2)

end

end A134370.P4105180895918657055

/-! ## A134370.P5347204445894512873

`((2*n+1)!^(2*n+1))^((n+2)/(2*n+1))`
-/

namespace A134370.P5347204445894512873
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) ^ (2 * n + 1) : ℝ) ^ ((n + 2 : ℚ) / (2 * n + 1 : ℚ) : ℝ)

end

end A134370.P5347204445894512873

/-!
# A134371: 

The programs for A134371, there is no canonical definition to state claims against.
-/

/-! ## A134371.P17090047819668789376

`(2*n)!^n`
-/

namespace A134371.P17090047819668789376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) ^ n

end

end A134371.P17090047819668789376

/-! ## A134371.P8849017188694430588

`record[(-sqrt(n!))^n]`
-/

namespace A134371.P8849017188694430588
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt (Nat.factorial n : ℝ)) ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134371.P8849017188694430588

/-! ## A134371.P3260834475829329560

`record[∏[-(n+1)]]^n`
-/

namespace A134371.P3260834475829329560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n

end

end A134371.P3260834475829329560

/-! ## A134371.P2209156554411325012

`A000142(2*n)^n`
-/

namespace A134371.P2209156554411325012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n) ^ n

end

end A134371.P2209156554411325012

/-!
# A134372: a(n) = ((2n)!)^2.

The programs for A134372, the canonical program `A134372.P2222257374500936923` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134372 has offset 0).

The definition of A134372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)!²` (program `A134372.P2222257374500936923`, by `A134372.P2222257374500936923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134372.P2222257374500936923

`(2*n)!²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134372

/-- `(2*n)!²` -/
def P2222257374500936923.Spec : Prop :=
  ∀ n, (P2222257374500936923.a n : ℤ) = A134372 n

theorem P2222257374500936923.correct : P2222257374500936923.Spec := by
  intro n
  simp only [A134372]

end A134372

/-! ## A134372.P14525627544760583843

`(2*n)!^2`
-/

namespace A134372.P14525627544760583843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) ^ 2

end

end A134372.P14525627544760583843

namespace A134372

/-- `(2*n)!^2` -/
def P14525627544760583843.Spec : Prop :=
  ∀ n, (P14525627544760583843.a n : ℤ) = A134372 n

theorem P14525627544760583843.correct : P14525627544760583843.Spec := by
  intro n
  simp only [A134372, Nat.add_sub_cancel, A134372.P14525627544760583843.a, A134372.P2222257374500936923.a, SequenceMachineLib.memo_apply]

end A134372

/-! ## A134372.P15597827707431756415

`record[∏[-(n+1)]]²`
-/

namespace A134372.P15597827707431756415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A134372.P15597827707431756415

namespace A134372

/-- `record[∏[-(n+1)]]²` -/
def P15597827707431756415.Spec : Prop :=
  ∀ n, P15597827707431756415.a n = A134372 n

end A134372

/-! ## A134372.P10761868057676918930

`record[∏[xor(1, -n)]]^2`
-/

namespace A134372.P10761868057676918930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A134372.P10761868057676918930

namespace A134372

/-- `record[∏[xor(1, -n)]]^2` -/
def P10761868057676918930.Spec : Prop :=
  ∀ n, P10761868057676918930.a n = A134372 n

end A134372

/-! ## A134372.P12807797775898459195

`record[(n%4+n)!²]`
-/

namespace A134372.P12807797775898459195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 4 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134372.P12807797775898459195

namespace A134372

/-- `record[(n%4+n)!²]` -/
def P12807797775898459195.Spec : Prop :=
  ∀ n, (P12807797775898459195.a n : ℤ) = A134372 n

end A134372

/-!
# A134373: a(n) = ((2n)!)^3.

The programs for A134373, the canonical program `A134373.P17679661466835507883` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134373 has offset 0).

The definition of A134373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)!^3` (program `A134373.P17679661466835507883`, by `A134373.P17679661466835507883.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134373.P17679661466835507883

`(2*n)!^3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134373

/-- `(2*n)!^3` -/
def P17679661466835507883.Spec : Prop :=
  ∀ n, (P17679661466835507883.a n : ℤ) = A134373 n

theorem P17679661466835507883.correct : P17679661466835507883.Spec := by
  intro n
  simp only [A134373]

end A134373

/-! ## A134373.P5252272881664088831

`root((2*n)!, 1/3)`
-/

namespace A134373.P5252272881664088831
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A134373.P5252272881664088831

namespace A134373

/-- `root((2*n)!, 1/3)` -/
def P5252272881664088831.Spec : Prop :=
  ∀ n, P5252272881664088831.a n = (A134373 n : ℝ)

theorem P5252272881664088831.correct : P5252272881664088831.Spec := by
  intro n
  simp only [A134373, Nat.add_sub_cancel, A134373.P5252272881664088831.a, A134373.P17679661466835507883.a, SequenceMachineLib.memo_apply]
  try simp

end A134373

/-! ## A134373.P9583725737013822006

`record[∏[xor(1, -n)]]^3`
-/

namespace A134373.P9583725737013822006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3

end

end A134373.P9583725737013822006

namespace A134373

/-- `record[∏[xor(1, -n)]]^3` -/
def P9583725737013822006.Spec : Prop :=
  ∀ n, P9583725737013822006.a n = A134373 n

end A134373

/-! ## A134373.P16138903151380897706

`record[(n%4+n)!]^3`
-/

namespace A134373.P16138903151380897706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 4 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3

end

end A134373.P16138903151380897706

namespace A134373

/-- `record[(n%4+n)!]^3` -/
def P16138903151380897706.Spec : Prop :=
  ∀ n, (P16138903151380897706.a n : ℤ) = A134373 n

end A134373

/-! ## A134373.P1835351515778190493

`record[and(n, n+1)!]^3`
-/

namespace A134373.P1835351515778190493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3

end

end A134373.P1835351515778190493

namespace A134373

/-- `record[and(n, n+1)!]^3` -/
def P1835351515778190493.Spec : Prop :=
  ∀ n, (P1835351515778190493.a n : ℤ) = A134373 n

end A134373

/-!
# A134374: a(n) = ((2n+1)!)^2.

The programs for A134374, the canonical program `A134374.P24652467108535103` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134374 has offset 0).

The definition of A134374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)!²` (program `A134374.P24652467108535103`, by `A134374.P24652467108535103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134374.P24652467108535103

`(2*n+1)!²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134374

/-- `(2*n+1)!²` -/
def P24652467108535103.Spec : Prop :=
  ∀ n, (P24652467108535103.a n : ℤ) = A134374 n

theorem P24652467108535103.correct : P24652467108535103.Spec := by
  intro n
  simp only [A134374]

end A134374

/-! ## A134374.P5515456231671120140

`record[xor(1, n)!²]`
-/

namespace A134374.P5515456231671120140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134374.P5515456231671120140

namespace A134374

/-- `record[xor(1, n)!²]` -/
def P5515456231671120140.Spec : Prop :=
  ∀ n, (P5515456231671120140.a n : ℤ) = A134374 n

end A134374

/-! ## A134374.P12068645614149562398

`record[gcd(n, ∑[n])!²]`
-/

namespace A134374.P12068645614149562398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134374.P12068645614149562398

namespace A134374

/-- `record[gcd(n, ∑[n])!²]` -/
def P12068645614149562398.Spec : Prop :=
  ∀ n, (P12068645614149562398.a n : ℤ) = A134374 n

end A134374

/-! ## A134374.P9095180304330743919

`(2*n+1)!^2`
-/

namespace A134374.P9095180304330743919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 1) ^ 2

end

end A134374.P9095180304330743919

namespace A134374

/-- `(2*n+1)!^2` -/
def P9095180304330743919.Spec : Prop :=
  ∀ n, (P9095180304330743919.a n : ℤ) = A134374 n

theorem P9095180304330743919.correct : P9095180304330743919.Spec := by
  intro n
  simp only [A134374, Nat.add_sub_cancel, A134374.P9095180304330743919.a, A134374.P24652467108535103.a, SequenceMachineLib.memo_apply]

end A134374

/-! ## A134374.P16968283620805739833

`A009445(n)²`
-/

namespace A134374.P16968283620805739833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009445 n ^ 2

end

end A134374.P16968283620805739833

namespace A134374

/-- `A009445(n)²` -/
def P16968283620805739833.Spec : Prop :=
  ∀ n, P16968283620805739833.a n = A134374 n

end A134374

/-!
# A134375: a(n) = (n!)^4.

The programs for A134375, the canonical program `A134375.P11007938509450649342` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134375 has offset 0).

The definition of A134375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^4` (program `A134375.P11007938509450649342`, by `A134375.P11007938509450649342.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134375.P11007938509450649342

`n!^4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134375

/-- `n!^4` -/
def P11007938509450649342.Spec : Prop :=
  ∀ n, (P11007938509450649342.a n : ℤ) = A134375 n

theorem P11007938509450649342.correct : P11007938509450649342.Spec := by
  intro n
  simp only [A134375]

end A134375

/-! ## A134375.P5647796578495709594

`n!²²`
-/

namespace A134375.P5647796578495709594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2) ^ 2

end

end A134375.P5647796578495709594

namespace A134375

/-- `n!²²` -/
def P5647796578495709594.Spec : Prop :=
  ∀ n, (P5647796578495709594.a n : ℤ) = A134375 n

theorem P5647796578495709594.correct : P5647796578495709594.Spec := by
  intro n
  simp only [A134375, Nat.add_sub_cancel, A134375.P5647796578495709594.a, A134375.P11007938509450649342.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A134375

/-! ## A134375.P13288079156793261094

`root(n!, 1/4)`
-/

namespace A134375.P13288079156793261094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) ^ (1 / ((1 : ℚ) / 4 : ℝ))

end

end A134375.P13288079156793261094

namespace A134375

/-- `root(n!, 1/4)` -/
def P13288079156793261094.Spec : Prop :=
  ∀ n, P13288079156793261094.a n = (A134375 n : ℝ)

theorem P13288079156793261094.correct : P13288079156793261094.Spec := by
  intro n
  simp only [A134375, Nat.add_sub_cancel, A134375.P13288079156793261094.a, A134375.P11007938509450649342.a, SequenceMachineLib.memo_apply]
  try simp

end A134375

/-! ## A134375.P14466316655825380288

`exp(4*log(n!))`
-/

namespace A134375.P14466316655825380288
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (4 * Real.log (Nat.factorial n : ℝ))

end

end A134375.P14466316655825380288

namespace A134375

/-- `exp(4*log(n!))` -/
def P14466316655825380288.Spec : Prop :=
  ∀ n, P14466316655825380288.a n = (A134375 n : ℝ)

end A134375

/-! ## A134375.P16431339879437875131

`∏[n^ceil(atan(n))²]`
-/

namespace A134375.P16431339879437875131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A134375.P16431339879437875131

namespace A134375

/-- `∏[n^ceil(atan(n))²]` -/
def P16431339879437875131.Spec : Prop :=
  ∀ n, P16431339879437875131.a n = (A134375 n : ℚ)

end A134375

/-!
# A134376: Numbers whose sum of prime factors (counted with multiplicity) is not prime.

The programs for A134376, the canonical program `A134376.P17218961884760061463` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134376 has offset 1).

The definition of A134376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134376.P17218961884760061463

`comp[A100118(n+1)-1]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A134376

/-- `comp[A100118(n+1)-1]+1` -/
def P17218961884760061463.Spec : Prop :=
  ∀ n, (P17218961884760061463.a n : ℤ) = A134376 (n + 1)

theorem P17218961884760061463.correct : P17218961884760061463.Spec := by
  intro n
  simp only [A134376, Nat.add_sub_cancel]

end A134376

/-! ## A134376.P14328420322864835539

`lt[1, lcm(2, A274718(n+1))]+1`
-/

namespace A134376.P14328420322864835539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A274718 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A134376.P14328420322864835539

namespace A134376

/-- `lt[1, lcm(2, A274718(n+1))]+1` -/
def P14328420322864835539.Spec : Prop :=
  ∀ n, (P14328420322864835539.a n : ℤ) = A134376 (n + 1)

end A134376

/-! ## A134376.P13844887092072320929

`eq[0, A343016(n+1)]+1`
-/

namespace A134376.P13844887092072320929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134376.P13844887092072320929

namespace A134376

/-- `eq[0, A343016(n+1)]+1` -/
def P13844887092072320929.Spec : Prop :=
  ∀ n, (P13844887092072320929.a n : ℤ) = A134376 (n + 1)

end A134376

/-! ## A134376.P1344013600178230997

`lt[n*A343016(A028310(n)), n]`
-/

namespace A134376.P1344013600178230997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A343016 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134376.P1344013600178230997

namespace A134376

/-- `lt[n*A343016(A028310(n)), n]` -/
def P1344013600178230997.Spec : Prop :=
  ∀ n, (P1344013600178230997.a n : ℤ) = A134376 (n + 1)

end A134376

/-! ## A134376.P8399830592607118379

`eq[A078442(n+1), A078442(A107463(n+1))]+1`
-/

namespace A134376.P8399830592607118379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078442 (A107463 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A134376.P8399830592607118379

namespace A134376

/-- `eq[A078442(n+1), A078442(A107463(n+1))]+1` -/
def P8399830592607118379.Spec : Prop :=
  ∀ n, (P8399830592607118379.a n : ℤ) = A134376 (n + 1)

end A134376

/-! ## A134376.P8585135848977608296

`eq[char[A100118(n+1)], A000007(n)]`
-/

namespace A134376.P8585135848977608296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A134376.P8585135848977608296

namespace A134376

/-- `eq[char[A100118(n+1)], A000007(n)]` -/
def P8585135848977608296.Spec : Prop :=
  ∀ n, (P8585135848977608296.a n : ℤ) = A134376 (n + 1)

end A134376

/-! ## A134376.P1914253612346958152

`eq[char[A100118(n+1)], A000038(n)]`
-/

namespace A134376.P1914253612346958152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A134376.P1914253612346958152

namespace A134376

/-- `eq[char[A100118(n+1)], A000038(n)]` -/
def P1914253612346958152.Spec : Prop :=
  ∀ n, (P1914253612346958152.a n : ℤ) = A134376 (n + 1)

end A134376

/-! ## A134376.P17899320250444878926

`lt[A060576(n), A107463(A107463(n))]`
-/

namespace A134376.P17899320250444878926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134376.P17899320250444878926

namespace A134376

/-- `lt[A060576(n), A107463(A107463(n))]` -/
def P17899320250444878926.Spec : Prop :=
  ∀ n, (P17899320250444878926.a n : ℤ) = A134376 (n + 1)

end A134376

/-!
# A134377: Binomial transform of A045621.

The programs for A134377, the canonical program `A134377.P2898163112214543715` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134377 has offset 1).

The definition of A134377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134377.P2898163112214543715

`A108863(n)+A055217(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134377

/-- `A108863(n)+A055217(n)` -/
def P2898163112214543715.Spec : Prop :=
  ∀ n, P2898163112214543715.a n = A134377 (n + 1)

theorem P2898163112214543715.correct : P2898163112214543715.Spec := by
  intro n
  simp only [A134377, Nat.add_sub_cancel]

end A134377

/-! ## A134377.P18392656349881897503

`Δ[A330796(n)]`
-/

namespace A134377.P18392656349881897503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134377.P18392656349881897503

namespace A134377

/-- `Δ[A330796(n)]` -/
def P18392656349881897503.Spec : Prop :=
  ∀ n, P18392656349881897503.a n = A134377 (n + 1)

end A134377

/-! ## A134377.P5426389600720424294

`Δ[3^n]-∑[A026135(n)]`
-/

namespace A134377.P5426389600720424294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A134377.P5426389600720424294

namespace A134377

/-- `Δ[3^n]-∑[A026135(n)]` -/
def P5426389600720424294.Spec : Prop :=
  ∀ n, P5426389600720424294.a n = A134377 (n + 1)

end A134377

/-! ## A134377.P149716915153121245

`A330796(n+1)-A330796(n)`
-/

namespace A134377.P149716915153121245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330796 (n + 1) - A330796 n

end

end A134377.P149716915153121245

namespace A134377

/-- `A330796(n+1)-A330796(n)` -/
def P149716915153121245.Spec : Prop :=
  ∀ n, P149716915153121245.a n = A134377 (n + 1)

end A134377

/-! ## A134377.P15186984924739562936

`Δ[Δ[A027914(n)-A097893(n)]]`
-/

namespace A134377.P15186984924739562936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - A097893 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134377.P15186984924739562936

namespace A134377

/-- `Δ[Δ[A027914(n)-A097893(n)]]` -/
def P15186984924739562936.Spec : Prop :=
  ∀ n, P15186984924739562936.a n = A134377 (n + 1)

end A134377

/-! ## A134377.P7995562947090510721

`Δ[A133494(n+1)-A005773(n+1)]`
-/

namespace A134377.P7995562947090510721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (n + 1) - A005773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134377.P7995562947090510721

namespace A134377

/-- `Δ[A133494(n+1)-A005773(n+1)]` -/
def P7995562947090510721.Spec : Prop :=
  ∀ n, P7995562947090510721.a n = A134377 (n + 1)

end A134377

/-! ## A134377.P16513325105690001217

`Δ[A074324(2*n+1)-A005773(n+1)]`
-/

namespace A134377.P16513325105690001217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (2 * n + 1) - A005773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134377.P16513325105690001217

namespace A134377

/-- `Δ[A074324(2*n+1)-A005773(n+1)]` -/
def P16513325105690001217.Spec : Prop :=
  ∀ n, P16513325105690001217.a n = A134377 (n + 1)

end A134377

/-! ## A134377.P10907249246058002849

`A055217(n+1)+A027914(n)-A000244(n+1)`
-/

namespace A134377.P10907249246058002849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055217 (n + 1) + (A027914 n - A000244 (n + 1))

end

end A134377.P10907249246058002849

namespace A134377

/-- `A055217(n+1)+A027914(n)-A000244(n+1)` -/
def P10907249246058002849.Spec : Prop :=
  ∀ n, P10907249246058002849.a n = A134377 (n + 1)

end A134377

/-! ## A134377.P5919959567976369898

`A217536(∑[n+1]+n)`
-/

namespace A134377.P5919959567976369898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217536 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A134377.P5919959567976369898

namespace A134377

/-- `A217536(∑[n+1]+n)` -/
def P5919959567976369898.Spec : Prop :=
  ∀ n, P5919959567976369898.a n = A134377 (n + 1)

end A134377

/-! ## A134377.P12631703029106961690

`Δ[3^n-A038622(∑[n])]`
-/

namespace A134377.P12631703029106961690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A038622 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134377.P12631703029106961690

namespace A134377

/-- `Δ[3^n-A038622(∑[n])]` -/
def P12631703029106961690.Spec : Prop :=
  ∀ n, P12631703029106961690.a n = A134377 (n + 1)

end A134377

/-! ## A134377.P6937295875413449587

`Δ[3^n-A171651(∑[n])]`
-/

namespace A134377.P6937295875413449587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A171651 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134377.P6937295875413449587

namespace A134377

/-- `Δ[3^n-A171651(∑[n])]` -/
def P6937295875413449587.Spec : Prop :=
  ∀ n, P6937295875413449587.a n = A134377 (n + 1)

end A134377

/-! ## A134377.P16989881618094711842

`Δ[3^n-record[A038622(n)]]`
-/

namespace A134377.P16989881618094711842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134377.P16989881618094711842

namespace A134377

/-- `Δ[3^n-record[A038622(n)]]` -/
def P16989881618094711842.Spec : Prop :=
  ∀ n, P16989881618094711842.a n = A134377 (n + 1)

end A134377

/-!
# A134378: A084938 * [1,2,3,...], where A084938 is taken as lower triangular matrix.

The programs for A134378, there is no canonical definition to state claims against.
-/

/-! ## A134378.P1780091842881230642

`ceil(root(A147914(3*n+1), 5))`
-/

namespace A134378.P1780091842881230642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A147914 (3 * n + 1) : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A134378.P1780091842881230642

/-! ## A134378.P938522383320881370

`A343267(A018093(n))`
-/

namespace A134378.P938522383320881370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343267 (A018093 n).toNat

end

end A134378.P938522383320881370

/-!
# A134379: A084938 * A000012.

The programs for A134379, there is no canonical definition to state claims against.
-/

/-! ## A134379.P8556794217498067717

`A291784(A033184(n+1)%A002004(n+4))`
-/

namespace A134379.P8556794217498067717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (Int.tmod (A033184 (n + 1)) (A002004 (n + 4))).toNat

end

end A134379.P8556794217498067717

/-! ## A134379.P17863606194573801065

`A291784(A033184(n+1))%A113470(3*n+4)`
-/

namespace A134379.P17863606194573801065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291784 (A033184 (n + 1)).toNat) (A113470 (3 * n + 4))

end

end A134379.P17863606194573801065

/-! ## A134379.P16712952336521951792

`A298534(A033184(n+1)+A010893(3*n+2))`
-/

namespace A134379.P16712952336521951792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298534 (A033184 (n + 1) + A010893 (3 * n + 2 + 13)).toNat

end

end A134379.P16712952336521951792

/-! ## A134379.P17261161384473761494

`A055572(A033184(n+1))%A095272(3*n+5)`
-/

namespace A134379.P17261161384473761494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055572 (A033184 (n + 1)).toNat) (A095272 (3 * n + 5))

end

end A134379.P17261161384473761494

/-!
# A134380: A007318 * A084938.

The programs for A134380, there is no canonical definition to state claims against.
-/

/-! ## A134380.P12357504065294284838

`A135579(A168216(n))`
-/

namespace A134380.P12357504065294284838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135579 (A168216 n).toNat

end

end A134380.P12357504065294284838

/-! ## A134380.P17105536376526477883

`A135579(abs(A091698(n)))`
-/

namespace A134380.P17105536376526477883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135579 |A091698 n|.toNat

end

end A134380.P17105536376526477883

/-! ## A134380.P12785561106674725377

`A162344(abs(A091698(n)))`
-/

namespace A134380.P12785561106674725377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 |A091698 n|.toNat

end

end A134380.P12785561106674725377

/-! ## A134380.P8770785480921323954

`A347520(abs(A091698(n)))`
-/

namespace A134380.P8770785480921323954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 |A091698 n|.toNat

end

end A134380.P8770785480921323954

/-! ## A134380.P15337774871930310146

`A335524(A168216(n)+1)`
-/

namespace A134380.P15337774871930310146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (A168216 n + 1).toNat

end

end A134380.P15337774871930310146

/-!
# A134381: Row sums of triangle A134380.

The programs for A134381, there is no canonical definition to state claims against.
-/

/-! ## A134381.P14612294417707851514

`A107589(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^2^∑{e}[n+1, #-1])`
-/

namespace A134381.P14612294417707851514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107589 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) : ℝ) ^ ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1) : ℤ) : ℝ))).toNat

end

end A134381.P14612294417707851514

/-! ## A134381.P1372386696141694102

`A107589(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^((n+1)/∏{p}[n+1, #]))`
-/

namespace A134381.P1372386696141694102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107589 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A134381.P1372386696141694102

/-! ## A134381.P1178372948699629114

`A107589(A010351(n+1))`
-/

namespace A134381.P1178372948699629114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107589 (A010351 (n + 1)).toNat

end

end A134381.P1178372948699629114

/-!
# A134383: Values of d(n) associated with A134382.

The programs for A134383, there is no canonical definition to state claims against.
-/

/-! ## A134383.P3125324140593477805

`A000005(A134382(n+1))`
-/

namespace A134383.P3125324140593477805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A134382 (n + 1)).toNat

end

end A134383.P3125324140593477805

/-! ## A134383.P8881417212812567659

`A134385(n+1)/A134384(n+1)`
-/

namespace A134383.P8881417212812567659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134385 (n + 1) : ℚ) / (A134384 (n + 1) : ℚ)

end

end A134383.P8881417212812567659

/-! ## A134383.P54199598030029482

`∑{d}[A134382(n+1), A007318(and(1, -#))]`
-/

namespace A134383.P54199598030029482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (Int.land 1 (-(d : ℤ))).toNat

end

end A134383.P54199598030029482

/-! ## A134383.P1800697196986950759

`A134385(n+1)/∑{p}[A134382(n+1), #]`
-/

namespace A134383.P1800697196986950759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134382 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134385 (n + 1) : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A134383.P1800697196986950759

/-! ## A134383.P11914976561198349298

`∑{d}[A134382(n+1), gcd(#, A073024(n+1))]`
-/

namespace A134383.P11914976561198349298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A073024 (n + 1))

end

end A134383.P11914976561198349298

/-!
# A134384: Values of sopf(n) associated with A134382.

The programs for A134384, there is no canonical definition to state claims against.
-/

/-! ## A134384.P7428779214131777274

`A008472(A134382(n+1))`
-/

namespace A134384.P7428779214131777274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A134382 (n + 1)).toNat

end

end A134384.P7428779214131777274

/-! ## A134384.P13132038211316394558

`A134385(n+1)/A134383(n+1)`
-/

namespace A134384.P13132038211316394558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134385 (n + 1) : ℚ) / (A134383 (n + 1) : ℚ)

end

end A134384.P13132038211316394558

/-! ## A134384.P12329445461797486454

`A134385(n+1)/∏{e}[A134382(n+1), #+1]`
-/

namespace A134384.P12329445461797486454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134382 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134385 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℚ)

end

end A134384.P12329445461797486454

/-! ## A134384.P17932188964532331799

`floor(A134386(n+1)/(n+1))/A134383(n+1)`
-/

namespace A134384.P17932188964532331799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A134386 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ : ℚ) / (A134383 (n + 1) : ℚ)

end

end A134384.P17932188964532331799

/-! ## A134384.P12498474549998866477

`∑{d}[A134382(n+1), #/(n+1)]/A134383(n+1)`
-/

namespace A134384.P12498474549998866477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134382 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (n + 1 : ℚ)) / (A134383 (n + 1) : ℚ)

end

end A134384.P12498474549998866477

/-!
# A134385: Values of product d(n)*sopf(n) associated with A134382.

The programs for A134385, there is no canonical definition to state claims against.
-/

/-! ## A134385.P10989149992182313316

`A134383(n+1)*A134384(n+1)`
-/

namespace A134385.P10989149992182313316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134383 (n + 1) * A134384 (n + 1)

end

end A134385.P10989149992182313316

/-! ## A134385.P13165520064638413070

`A000005(A134382(n+1))*A008472(A134382(n+1))`
-/

namespace A134385.P13165520064638413070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A134382 (n + 1)).toNat * A008472 (A134382 (n + 1)).toNat

end

end A134385.P13165520064638413070

/-! ## A134385.P14235192712758241265

`A134386(n+1)/(n+1)`
-/

namespace A134385.P14235192712758241265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134386 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A134385.P14235192712758241265

/-! ## A134385.P13035577365749589747

`∑{d}[A134382(n+1), #/(n+1)]`
-/

namespace A134385.P13035577365749589747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134382 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (n + 1 : ℚ)

end

end A134385.P13035577365749589747

/-! ## A134385.P1650152857901478701

`∑{p}[A134382(n+1), #*A134383(n+1)]`
-/

namespace A134385.P1650152857901478701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A134383 (n + 1)

end

end A134385.P1650152857901478701

/-!
# A134386: Values of n*d(k)*sopf(k) associated with A134382.

The programs for A134386, there is no canonical definition to state claims against.
-/

/-! ## A134386.P8077402311652002391

`A000203(A134382(n+1))`
-/

namespace A134386.P8077402311652002391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A134382 (n + 1)).toNat

end

end A134386.P8077402311652002391

/-! ## A134386.P16818627816561615509

`(n+1)*A134385(n+1)`
-/

namespace A134386.P16818627816561615509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A134385 (n + 1)

end

end A134386.P16818627816561615509

/-! ## A134386.P4954663268658532954

`A134385(n+1)*A387051(n)`
-/

namespace A134386.P4954663268658532954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134385 (n + 1) * A387051 n

end

end A134386.P4954663268658532954

/-! ## A134386.P9936185940737225661

`(n+1)*A134383(n+1)*A134384(n+1)`
-/

namespace A134386.P9936185940737225661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A134383 (n + 1) * A134384 (n + 1))

end

end A134386.P9936185940737225661

/-! ## A134386.P8299144255796116514

`(n+1)*∑{p}[A134382(n+1), #*A134383(n+1)]`
-/

namespace A134386.P8299144255796116514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A134383 (n + 1))

end

end A134386.P8299144255796116514

/-!
# A134388: A generalized Riordan array related to Hankel and Toeplitz+Hankel transforms.

The programs for A134388, there is no canonical definition to state claims against.
-/

/-! ## A134388.P10443884686574531684

`A003045(round(sqrt(A059573(n+1))))`
-/

namespace A134388.P10443884686574531684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003045 (SequenceMachineLib.roundAway (Real.sqrt (A059573 (n + 1) : ℝ))).toNat

end

end A134388.P10443884686574531684

/-! ## A134388.P2551268119267533738

`A007095(round(sqrt(A059573(n+1))))`
-/

namespace A134388.P2551268119267533738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway (Real.sqrt (A059573 (n + 1) : ℝ))).toNat

end

end A134388.P2551268119267533738

/-! ## A134388.P34675935375168033

`A127273(round(sqrt(A059573(n+1))))`
-/

namespace A134388.P34675935375168033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127273 (SequenceMachineLib.roundAway (Real.sqrt (A059573 (n + 1) : ℝ))).toNat

end

end A134388.P34675935375168033

/-! ## A134388.P17930734061510867609

`A328369(round(sqrt(A059573(n+1))))`
-/

namespace A134388.P17930734061510867609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (SequenceMachineLib.roundAway (Real.sqrt (A059573 (n + 1) : ℝ))).toNat

end

end A134388.P17930734061510867609

/-!
# A134389: A transform of floor((n+2)/2) with Hankel transform floor((n+2)/2)*(cos(Pi*n/2) + sin(Pi*n/2)).

The programs for A134389, the canonical program `A134389.P6535176777869362225` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134389 has offset 0).

The definition of A134389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134389.P6535176777869362225

`A189391(log2(A011782(n)))+A000079(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134389

/-- `A189391(log2(A011782(n)))+A000079(n)` -/
def P6535176777869362225.Spec : Prop :=
  ∀ n, P6535176777869362225.a n = A134389 n

theorem P6535176777869362225.correct : P6535176777869362225.Spec := by
  intro n
  simp only [A134389]

end A134389

/-! ## A134389.P1470409754687934817

`A189391(log2(A011782(n)))+A011782(n+1)`
-/

namespace A134389.P1470409754687934817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A011782 (n + 1)

end

end A134389.P1470409754687934817

namespace A134389

/-- `A189391(log2(A011782(n)))+A011782(n+1)` -/
def P1470409754687934817.Spec : Prop :=
  ∀ n, P1470409754687934817.a n = A134389 n

end A134389

/-! ## A134389.P11923086498176954956

`A045623(n)-A206603(abs(1-n))`
-/

namespace A134389.P11923086498176954956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A206603 |1 - (n : ℤ)|.toNat

end

end A134389.P11923086498176954956

namespace A134389

/-- `A045623(n)-A206603(abs(1-n))` -/
def P11923086498176954956.Spec : Prop :=
  ∀ n, P11923086498176954956.a n = A134389 n

end A134389

/-! ## A134389.P9907598089145384816

`A102363(A007590(n))+A100071(n)`
-/

namespace A134389.P9907598089145384816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A007590 n).toNat + A100071 n

end

end A134389.P9907598089145384816

namespace A134389

/-- `A102363(A007590(n))+A100071(n)` -/
def P9907598089145384816.Spec : Prop :=
  ∀ n, P9907598089145384816.a n = A134389 n

end A134389

/-! ## A134389.P15693491776709616406

`A189391(A342882(∑[n]))+A000079(n)`
-/

namespace A134389.P15693491776709616406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 (A342882 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A000079 n

end

end A134389.P15693491776709616406

namespace A134389

/-- `A189391(A342882(∑[n]))+A000079(n)` -/
def P15693491776709616406.Spec : Prop :=
  ∀ n, P15693491776709616406.a n = A134389 n

end A134389

/-!
# A134391: The sequence A_0, A_1, A_2, A_3, ..., where the A_k are defined in A064990.

The programs for A134391, there is no canonical definition to state claims against.
-/

/-! ## A134391.P1775962098699839482

`9%A134024(n+1)`
-/

namespace A134391.P1775962098699839482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 9 (A134024 (n + 1))

end

end A134391.P1775962098699839482

/-! ## A134391.P8086380404274165139

`log2(gcd(2, A060372(n+1)))`
-/

namespace A134391.P8086380404274165139
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A060372 (n + 1)) : ℝ)

end

end A134391.P8086380404274165139

/-! ## A134391.P5927704886494971730

`char[A117966(2*n)-1]`
-/

namespace A134391.P5927704886494971730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (2 * n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A134391.P5927704886494971730

/-! ## A134391.P2329015419923745629

`(A117967(n+1)+1)%2`
-/

namespace A134391.P2329015419923745629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117967 (n + 1) + 1) 2

end

end A134391.P2329015419923745629

/-! ## A134391.P5096987407573768681

`A140265(2*(n+1))%2`
-/

namespace A134391.P5096987407573768681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140265 (2 * (n + 1))) 2

end

end A134391.P5096987407573768681

/-! ## A134391.P14676196560112553575

`A060372(3*n+4)%2`
-/

namespace A134391.P14676196560112553575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060372 (3 * n + 4)) 2

end

end A134391.P14676196560112553575

/-! ## A134391.P7634565888001435764

`(A060373(n+1)+n)%2`
-/

namespace A134391.P7634565888001435764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060373 (n + 1) + (n : ℤ)) 2

end

end A134391.P7634565888001435764

/-! ## A134391.P14731847677026897532

`(A117968(n+1)+n)%2`
-/

namespace A134391.P14731847677026897532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117968 (n + 1) + (n : ℤ)) 2

end

end A134391.P14731847677026897532

/-! ## A134391.P15109875786857420695

`and(1, A134022(n+1)+n)`
-/

namespace A134391.P15109875786857420695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A134022 (n + 1) + (n : ℤ))

end

end A134391.P15109875786857420695

/-! ## A134391.P10280398677245343711

`A064990(A264985(n))`
-/

namespace A134391.P10280398677245343711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (A264985 n).toNat

end

end A134391.P10280398677245343711

/-!
# A134392: A077028 * A000012, that is Rascal's triangle (as matrix) multiplied by a lower triangular matrix of ones (main diagonal of ones included).

The programs for A134392, the canonical program `A134392.P16466045703416119313` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134392 has offset 1).

The definition of A134392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134392.P16466045703416119313

`A062707(n)+A000125(A025581(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134392

/-- `A062707(n)+A000125(A025581(n))` -/
def P16466045703416119313.Spec : Prop :=
  ∀ n, P16466045703416119313.a n = A134392 (n + 1)

theorem P16466045703416119313.correct : P16466045703416119313.Spec := by
  intro n
  simp only [A134392, Nat.add_sub_cancel]

end A134392

/-! ## A134392.P9511617268354326872

`A101321(n)+A004006(A025581(n))`
-/

namespace A134392.P9511617268354326872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101321 n + A004006 (A025581 n).toNat

end

end A134392.P9511617268354326872

namespace A134392

/-- `A101321(n)+A004006(A025581(n))` -/
def P9511617268354326872.Spec : Prop :=
  ∀ n, P9511617268354326872.a n = A134392 (n + 1)

end A134392

/-! ## A134392.P132886588069788366

`A062707(n)+A000125(log2(A130321(n)))`
-/

namespace A134392.P132886588069788366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + A000125 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A134392.P132886588069788366

namespace A134392

/-- `A062707(n)+A000125(log2(A130321(n)))` -/
def P132886588069788366.Spec : Prop :=
  ∀ n, P132886588069788366.a n = A134392 (n + 1)

end A134392

/-! ## A134392.P12944978020190284447

`A062707(n)+A000125(A004736(n+1)-1)`
-/

namespace A134392.P12944978020190284447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + A000125 (A004736 (n + 1) - 1).toNat

end

end A134392.P12944978020190284447

namespace A134392

/-- `A062707(n)+A000125(A004736(n+1)-1)` -/
def P12944978020190284447.Spec : Prop :=
  ∀ n, P12944978020190284447.a n = A134392 (n + 1)

end A134392

/-! ## A134392.P16247664116668801928

`A143824(A113955(n))`
-/

namespace A134392.P16247664116668801928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A113955 n).toNat

end

end A134392.P16247664116668801928

namespace A134392

/-- `A143824(A113955(n))` -/
def P16247664116668801928.Spec : Prop :=
  ∀ n, P16247664116668801928.a n = A134392 (n + 1)

end A134392

/-!
# A134393: Row sums of triangle A134392.

The programs for A134393, the canonical program `A134393.P1935029761730703367` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134393 has offset 1).

The definition of A134393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134393.P1935029761730703367

`C(n+4, 4)-2*C(n+3, 4)+3*C(n+2, 4)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134393

/-- `C(n+4, 4)-2*C(n+3, 4)+3*C(n+2, 4)` -/
def P1935029761730703367.Spec : Prop :=
  ∀ n, P1935029761730703367.a n = A134393 (n + 1)

theorem P1935029761730703367.correct : P1935029761730703367.Spec := by
  intro n
  simp only [A134393, Nat.add_sub_cancel]

end A134393

/-! ## A134393.P5675880097735520610

`(n+1)*(n+2)*((n+1)²-3*(n+1)+8)/12`
-/

namespace A134393.P5675880097735520610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℤ) * (((n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 8) : ℚ) / 12

end

end A134393.P5675880097735520610

namespace A134393

/-- `(n+1)*(n+2)*((n+1)²-3*(n+1)+8)/12` -/
def P5675880097735520610.Spec : Prop :=
  ∀ n, P5675880097735520610.a n = (A134393 (n + 1) : ℚ)

end A134393

/-! ## A134393.P14178584366592909186

`abs(∑[∑[or(1, n²-n)]])`
-/

namespace A134393.P14178584366592909186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 2 : ℤ) - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A134393.P14178584366592909186

namespace A134393

/-- `abs(∑[∑[or(1, n²-n)]])` -/
def P14178584366592909186.Spec : Prop :=
  ∀ n, P14178584366592909186.a n = A134393 (n + 1)

end A134393

/-! ## A134393.P3663355093268965572

`abs(∑[∑[xor(1, n²-n)]])`
-/

namespace A134393.P3663355093268965572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n ^ 2 : ℤ) - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A134393.P3663355093268965572

namespace A134393

/-- `abs(∑[∑[xor(1, n²-n)]])` -/
def P3663355093268965572.Spec : Prop :=
  ∀ n, P3663355093268965572.a n = A134393 (n + 1)

end A134393

/-! ## A134393.P1960953358132288024

`abs(∑[∑[-(xor(-1, n²)+n)]])`
-/

namespace A134393.P1960953358132288024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-1) (n ^ 2 : ℤ) + (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A134393.P1960953358132288024

namespace A134393

/-- `abs(∑[∑[-(xor(-1, n²)+n)]])` -/
def P1960953358132288024.Spec : Prop :=
  ∀ n, P1960953358132288024.a n = A134393 (n + 1)

end A134393

/-! ## A134393.P698416398886234099

`∑[n+1]+2*C(n+2, 4)`
-/

namespace A134393.P698416398886234099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * Nat.choose (n + 2) 4

end

end A134393.P698416398886234099

namespace A134393

/-- `∑[n+1]+2*C(n+2, 4)` -/
def P698416398886234099.Spec : Prop :=
  ∀ n, (P698416398886234099.a n : ℤ) = A134393 (n + 1)

end A134393

/-! ## A134393.P17100321477636585532

`floor(∑[∑[∑[a(n-1)+2]]])` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A134393.P17100321477636585532
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134393.P17100321477636585532

namespace A134393

/-- `floor(∑[∑[∑[a(n-1)+2]]])` -/
def P17100321477636585532.Spec : Prop :=
  ∀ n, (P17100321477636585532.a n : ℤ) = A134393 (n + 1)

end A134393

/-! ## A134393.P17248765467698421875

`∑[∑[n]+1]+C(n², 2)/6`
-/

namespace A134393.P17248765467698421875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.choose (n ^ 2) 2 : ℚ) / 6

end

end A134393.P17248765467698421875

namespace A134393

/-- `∑[∑[n]+1]+C(n², 2)/6` -/
def P17248765467698421875.Spec : Prop :=
  ∀ n, P17248765467698421875.a n = (A134393 (n + 1) : ℚ)

end A134393

/-! ## A134393.P1461654135420077473

`∑[n+1]+∑[∑[lcm(n, n-1)]]`
-/

namespace A134393.P1461654135420077473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A134393.P1461654135420077473

namespace A134393

/-- `∑[n+1]+∑[∑[lcm(n, n-1)]]` -/
def P1461654135420077473.Spec : Prop :=
  ∀ n, (P1461654135420077473.a n : ℤ) = A134393 (n + 1)

end A134393

/-! ## A134393.P2624199258453719218

`floor(∑[∑[3-∑[a(n-1)-2]]])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A134393.P2624199258453719218
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f3 =>
  f3 (n - 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134393.P2624199258453719218

namespace A134393

/-- `floor(∑[∑[3-∑[a(n-1)-2]]])` -/
def P2624199258453719218.Spec : Prop :=
  ∀ n, P2624199258453719218.a n = A134393 (n + 1)

end A134393

/-! ## A134393.P10349618826629019521

`a(n-1)-∑[n-1-n²]` with `a(0)=1`
-/

namespace A134393.P10349618826629019521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134393.P10349618826629019521

namespace A134393

/-- `a(n-1)-∑[n-1-n²]` -/
def P10349618826629019521.Spec : Prop :=
  ∀ n, P10349618826629019521.a n = A134393 (n + 1)

end A134393

/-! ## A134393.P3541966619433030944

`∑[n*(n-1)+1]+a(n-1)` with `a(0)=1`
-/

namespace A134393.P3541966619433030944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A134393.P3541966619433030944

namespace A134393

/-- `∑[n*(n-1)+1]+a(n-1)` -/
def P3541966619433030944.Spec : Prop :=
  ∀ n, P3541966619433030944.a n = A134393 (n + 1)

end A134393

/-! ## A134393.P17304938311003934850

`∑[∑[A002061(n)]]`
-/

namespace A134393.P17304938311003934850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134393.P17304938311003934850

namespace A134393

/-- `∑[∑[A002061(n)]]` -/
def P17304938311003934850.Spec : Prop :=
  ∀ n, P17304938311003934850.a n = A134393 (n + 1)

end A134393

/-! ## A134393.P1232583482953387486

`∑[A006527(n)+1]`
-/

namespace A134393.P1232583482953387486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134393.P1232583482953387486

namespace A134393

/-- `∑[A006527(n)+1]` -/
def P1232583482953387486.Spec : Prop :=
  ∀ n, P1232583482953387486.a n = A134393 (n + 1)

end A134393

/-! ## A134393.P12658465941840841689

`∑[A116731(n+1)]`
-/

namespace A134393.P12658465941840841689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134393.P12658465941840841689

namespace A134393

/-- `∑[A116731(n+1)]` -/
def P12658465941840841689.Spec : Prop :=
  ∀ n, P12658465941840841689.a n = A134393 (n + 1)

end A134393

/-! ## A134393.P11980472329545160468

`A006007(n)+1+n`
-/

namespace A134393.P11980472329545160468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 n + 1 + (n : ℤ)

end

end A134393.P11980472329545160468

namespace A134393

/-- `A006007(n)+1+n` -/
def P11980472329545160468.Spec : Prop :=
  ∀ n, P11980472329545160468.a n = A134393 (n + 1)

end A134393

/-! ## A134393.P17867803823665875993

`∑[A064999(n)-n²]`
-/

namespace A134393.P17867803823665875993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064999 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134393.P17867803823665875993

namespace A134393

/-- `∑[A064999(n)-n²]` -/
def P17867803823665875993.Spec : Prop :=
  ∀ n, P17867803823665875993.a n = A134393 (n + 1)

end A134393

/-! ## A134393.P523968844855324031

`floor(∑[∑[A051890(n)/2]])`
-/

namespace A134393.P523968844855324031
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051890 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A134393.P523968844855324031

namespace A134393

/-- `floor(∑[∑[A051890(n)/2]])` -/
def P523968844855324031.Spec : Prop :=
  ∀ n, P523968844855324031.a n = A134393 (n + 1)

end A134393

/-! ## A134393.P17447371323808863336

`A061316(n)/3+1+n`
-/

namespace A134393.P17447371323808863336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061316 n : ℚ) / 3 + 1 + (n : ℚ)

end

end A134393.P17447371323808863336

namespace A134393

/-- `A061316(n)/3+1+n` -/
def P17447371323808863336.Spec : Prop :=
  ∀ n, P17447371323808863336.a n = (A134393 (n + 1) : ℚ)

end A134393

/-! ## A134393.P6733729631692478406

`A299120(n)+n*(n+2)`
-/

namespace A134393.P6733729631692478406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299120 n + (n * (n + 2) : ℤ)

end

end A134393.P6733729631692478406

namespace A134393

/-- `A299120(n)+n*(n+2)` -/
def P6733729631692478406.Spec : Prop :=
  ∀ n, P6733729631692478406.a n = A134393 (n + 1)

end A134393

/-!
# A134394: Triangle T(n,k) = Sum_{j=k..n} A077028(j,k), read by rows.

The programs for A134394, the canonical program `A134394.P12565304534102440412` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134394 has offset 1).

The definition of A134394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134394.P15902857267579032584

`A062707(n)+C(comp[∑[n]]-n, 2)-n`
-/

namespace A134394.P15902857267579032584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A134394.P15902857267579032584

namespace A134394

/-- `A062707(n)+C(comp[∑[n]]-n, 2)-n` -/
def P15902857267579032584.Spec : Prop :=
  ∀ n, P15902857267579032584.a n = A134394 (n + 1)

end A134394

/-! ## A134394.P6302794879513037062

`A101321(n)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A134394.P6302794879513037062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101321 n + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A134394.P6302794879513037062

namespace A134394

/-- `A101321(n)+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P6302794879513037062.Spec : Prop :=
  ∀ n, P6302794879513037062.a n = A134394 (n + 1)

end A134394

/-! ## A134394.P9159856965034950725

`A086272(n+1)-(n+1-C(comp[∑[n]]-n, 2))²`
-/

namespace A134394.P9159856965034950725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086272 (n + 1) - ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2

end

end A134394.P9159856965034950725

namespace A134394

/-- `A086272(n+1)-(n+1-C(comp[∑[n]]-n, 2))²` -/
def P9159856965034950725.Spec : Prop :=
  ∀ n, P9159856965034950725.a n = A134394 (n + 1)

end A134394

/-! ## A134394.P12565304534102440412

`A101321(n)+A025581(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A134394

/-- `A101321(n)+A025581(n)` -/
def P12565304534102440412.Spec : Prop :=
  ∀ n, P12565304534102440412.a n = A134394 (n + 1)

theorem P12565304534102440412.correct : P12565304534102440412.Spec := by
  intro n
  simp only [A134394, Nat.add_sub_cancel]

end A134394

/-! ## A134394.P8976951324780946846

`A062707(n)+A004736(n+1)`
-/

namespace A134394.P8976951324780946846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + A004736 (n + 1)

end

end A134394.P8976951324780946846

namespace A134394

/-- `A062707(n)+A004736(n+1)` -/
def P8976951324780946846.Spec : Prop :=
  ∀ n, P8976951324780946846.a n = A134394 (n + 1)

end A134394

/-! ## A134394.P17042866397084543315

`A025581(n)+A062707(n)+1`
-/

namespace A134394.P17042866397084543315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A062707 n + 1)

end

end A134394.P17042866397084543315

namespace A134394

/-- `A025581(n)+A062707(n)+1` -/
def P17042866397084543315.Spec : Prop :=
  ∀ n, P17042866397084543315.a n = A134394 (n + 1)

end A134394

/-! ## A134394.P224858824268253424

`A062707(n)+log2(A130321(n))+1`
-/

namespace A134394.P224858824268253424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062707 n : ℝ) + (Real.logb 2 (A130321 n : ℝ) + 1)

end

end A134394.P224858824268253424

namespace A134394

/-- `A062707(n)+log2(A130321(n))+1` -/
def P224858824268253424.Spec : Prop :=
  ∀ n, P224858824268253424.a n = (A134394 (n + 1) : ℝ)

end A134394

/-! ## A134394.P6749390196975890803

`A004736(n+1)+A101321(n)-1`
-/

namespace A134394.P6749390196975890803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A101321 n - 1)

end

end A134394.P6749390196975890803

namespace A134394

/-- `A004736(n+1)+A101321(n)-1` -/
def P6749390196975890803.Spec : Prop :=
  ∀ n, P6749390196975890803.a n = A134394 (n + 1)

end A134394

/-! ## A134394.P8788804760000254067

`A086272(n+1)-A095831(n+1)`
-/

namespace A134394.P8788804760000254067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086272 (n + 1) - A095831 (n + 1)

end

end A134394.P8788804760000254067

namespace A134394

/-- `A086272(n+1)-A095831(n+1)` -/
def P8788804760000254067.Spec : Prop :=
  ∀ n, P8788804760000254067.a n = A134394 (n + 1)

end A134394

/-! ## A134394.P15385705730830410945

`A077028(n)+A300401(n)-A139600(n)`
-/

namespace A134394.P15385705730830410945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (A300401 n - A139600 n)

end

end A134394.P15385705730830410945

namespace A134394

/-- `A077028(n)+A300401(n)-A139600(n)` -/
def P15385705730830410945.Spec : Prop :=
  ∀ n, P15385705730830410945.a n = A134394 (n + 1)

end A134394

/-! ## A134394.P10392466982854289287

`A062707(n)+A003991(n+1)/A002260(n+1)`
-/

namespace A134394.P10392466982854289287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062707 n : ℚ) + (A003991 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A134394.P10392466982854289287

namespace A134394

/-- `A062707(n)+A003991(n+1)/A002260(n+1)` -/
def P10392466982854289287.Spec : Prop :=
  ∀ n, P10392466982854289287.a n = (A134394 (n + 1) : ℚ)

end A134394

/-! ## A134394.P10321020940563670488

`A004736(n+1)/A002260(n+1)*A057145(n+2)`
-/

namespace A134394.P10321020940563670488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A057145 (n + 2) : ℚ)

end

end A134394.P10321020940563670488

namespace A134394

/-- `A004736(n+1)/A002260(n+1)*A057145(n+2)` -/
def P10321020940563670488.Spec : Prop :=
  ∀ n, P10321020940563670488.a n = (A134394 (n + 1) : ℚ)

end A134394

/-! ## A134394.P10704856476926941314

`A057145(∑[char[∑[n]]]²+1-n)`
-/

namespace A134394.P10704856476926941314
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - (n : ℤ))).toNat

end

end A134394.P10704856476926941314

namespace A134394

/-- `A057145(∑[char[∑[n]]]²+1-n)` -/
def P10704856476926941314.Spec : Prop :=
  ∀ n, P10704856476926941314.a n = A134394 (n + 1)

end A134394

/-! ## A134394.P3199361806670451774

`A139600(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)`
-/

namespace A134394.P3199361806670451774
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A134394.P3199361806670451774

namespace A134394

/-- `A139600(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)` -/
def P3199361806670451774.Spec : Prop :=
  ∀ n, P3199361806670451774.a n = A134394 (n + 1)

end A134394

/-! ## A134394.P9644897069017623640

`A062707(n)+A000005(A130321(n))`
-/

namespace A134394.P9644897069017623640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + A000005 (A130321 n).toNat

end

end A134394.P9644897069017623640

namespace A134394

/-- `A062707(n)+A000005(A130321(n))` -/
def P9644897069017623640.Spec : Prop :=
  ∀ n, P9644897069017623640.a n = A134394 (n + 1)

end A134394

/-! ## A134394.P10733618142868119139

`A331855(A099627(n))`
-/

namespace A134394.P10733618142868119139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331855 (A099627 n).toNat

end

end A134394.P10733618142868119139

namespace A134394

/-- `A331855(A099627(n))` -/
def P10733618142868119139.Spec : Prop :=
  ∀ n, P10733618142868119139.a n = A134394 (n + 1)

end A134394

/-! ## A134394.P15440191520998048599

`A331855(A023758(n+1)+1)`
-/

namespace A134394.P15440191520998048599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331855 (A023758 (n + 1) + 1).toNat

end

end A134394.P15440191520998048599

namespace A134394

/-- `A331855(A023758(n+1)+1)` -/
def P15440191520998048599.Spec : Prop :=
  ∀ n, P15440191520998048599.a n = A134394 (n + 1)

end A134394

/-!
# A134395: A007318 * A077028.

The programs for A134395, there is no canonical definition to state claims against.
-/

/-! ## A134395.P2218621646555087003

`A038207(n)-A186745(A306100(n))`
-/

namespace A134395.P2218621646555087003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A186745 (A306100 n).toNat

end

end A134395.P2218621646555087003

/-! ## A134395.P6083586269039435453

`A007318(n)*A130321(n)-A186745(A306100(n))`
-/

namespace A134395.P6083586269039435453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A130321 n - A186745 (A306100 n).toNat

end

end A134395.P6083586269039435453

/-! ## A134395.P14656035464385244868

`A038207(n)+A016389(A022166(n))`
-/

namespace A134395.P14656035464385244868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + A016389 (A022166 n).toNat

end

end A134395.P14656035464385244868

/-! ## A134395.P532893006160576356

`A038207(n)+A016389(A176561(n))`
-/

namespace A134395.P532893006160576356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + A016389 (A176561 n).toNat

end

end A134395.P532893006160576356

/-! ## A134395.P5711875415214222433

`A056594(A157149(n))+A038207(n)`
-/

namespace A134395.P5711875415214222433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A157149 n).toNat + A038207 n

end

end A134395.P5711875415214222433

/-!
# A134396: A007318 * A000125.

The programs for A134396, the canonical program `A134396.P350790623616975987` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134396 has offset 0).

The definition of A134396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134396.P10845665242968491129

`2^(n-4)*(48+20*n+3*n²+n^3)/3`
-/

namespace A134396.P10845665242968491129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (48 + 20 * n + 3 * n ^ 2 + n ^ 3 : ℚ) / 3

end

end A134396.P10845665242968491129

namespace A134396

/-- `2^(n-4)*(48+20*n+3*n²+n^3)/3` -/
def P10845665242968491129.Spec : Prop :=
  ∀ n, P10845665242968491129.a n = (A134396 n : ℚ)

end A134396

/-! ## A134396.P350790623616975987

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134396

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P350790623616975987.Spec : Prop :=
  ∀ n, P350790623616975987.a n = A134396 n

theorem P350790623616975987.correct : P350790623616975987.Spec := by
  intro n
  simp only [A134396]

end A134396

/-! ## A134396.P13145911422811954029

`A387185(n)+2^n`
-/

namespace A134396.P13145911422811954029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387185 n + (2 ^ n : ℤ)

end

end A134396.P13145911422811954029

namespace A134396

/-- `A387185(n)+2^n` -/
def P13145911422811954029.Spec : Prop :=
  ∀ n, P13145911422811954029.a n = A134396 n

end A134396

/-! ## A134396.P8021122335577773787

`A081913(n)+∑[A049611(n)]`
-/

namespace A134396.P8021122335577773787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081913 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134396.P8021122335577773787

namespace A134396

/-- `A081913(n)+∑[A049611(n)]` -/
def P8021122335577773787.Spec : Prop :=
  ∀ n, P8021122335577773787.a n = A134396 n

end A134396

/-! ## A134396.P2452674996479027829

`A081913(n)+A084851(n)-A001792(n)`
-/

namespace A134396.P2452674996479027829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081913 n + (A084851 n - A001792 n)

end

end A134396.P2452674996479027829

namespace A134396

/-- `A081913(n)+A084851(n)-A001792(n)` -/
def P2452674996479027829.Spec : Prop :=
  ∀ n, P2452674996479027829.a n = A134396 n

end A134396

/-! ## A134396.P16422131358794186968

`A001793(n+1)+A081913(n)-A084851(n)`
-/

namespace A134396.P16422131358794186968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) + (A081913 n - A084851 n)

end

end A134396.P16422131358794186968

namespace A134396

/-- `A001793(n+1)+A081913(n)-A084851(n)` -/
def P16422131358794186968.Spec : Prop :=
  ∀ n, P16422131358794186968.a n = A134396 n

end A134396

/-! ## A134396.P17149296255975187913

`A001793(n+1)+A387185(n)-A176027(n)`
-/

namespace A134396.P17149296255975187913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) + (A387185 n - A176027 n)

end

end A134396.P17149296255975187913

namespace A134396

/-- `A001793(n+1)+A387185(n)-A176027(n)` -/
def P17149296255975187913.Spec : Prop :=
  ∀ n, P17149296255975187913.a n = A134396 n

end A134396

/-! ## A134396.P10783334150463069019

`A049612(n+1)+A001792(n)-A001793(n+1)`
-/

namespace A134396.P10783334150463069019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049612 (n + 1) + (A001792 n - A001793 (n + 1))

end

end A134396.P10783334150463069019

namespace A134396

/-- `A049612(n+1)+A001792(n)-A001793(n+1)` -/
def P10783334150463069019.Spec : Prop :=
  ∀ n, P10783334150463069019.a n = A134396 n

end A134396

/-! ## A134396.P18435027218771751913

`A001787(n)+Δ[A081913(n)]`
-/

namespace A134396.P18435027218771751913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (f1 (n + 1) - f1 n)

end

end A134396.P18435027218771751913

namespace A134396

/-- `A001787(n)+Δ[A081913(n)]` -/
def P18435027218771751913.Spec : Prop :=
  ∀ n, P18435027218771751913.a n = A134396 n

end A134396

/-!
# A134397: A077018 * A007318.

The programs for A134397, there is no canonical definition to state claims against.
-/

/-! ## A134397.P2193617392350994024

`A038207(n)-A033665(A104219(n))`
-/

namespace A134397.P2193617392350994024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A033665 (A104219 n).toNat

end

end A134397.P2193617392350994024

/-! ## A134397.P12523819176916669316

`A038207(n)-A025441(A319503(n))`
-/

namespace A134397.P12523819176916669316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A025441 (A319503 n).toNat

end

end A134397.P12523819176916669316

/-! ## A134397.P4098740037784073847

`A038207(n)-A373968(A000041(n))`
-/

namespace A134397.P4098740037784073847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A373968 (A000041 n).toNat

end

end A134397.P4098740037784073847

/-! ## A134397.P13330935628983486158

`A038207(n)-A262202(A173758(n))`
-/

namespace A134397.P13330935628983486158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A262202 (A173758 n).toNat

end

end A134397.P13330935628983486158

/-! ## A134397.P1015011973134083405

`A038207(n)-A001221(A309864(n))`
-/

namespace A134397.P1015011973134083405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A001221 (A309864 n).toNat

end

end A134397.P1015011973134083405

/-!
# A134398: Triangle read by rows: T(n, k) = (k-1)*(n-k) + binomial(n-1,k-1).

The programs for A134398, the canonical program `A134398.P15547992659748660228` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134398 has offset 1).

The definition of A134398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134398.P15547992659748660228

`A007318(n)+A004247(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134398

/-- `A007318(n)+A004247(n)` -/
def P15547992659748660228.Spec : Prop :=
  ∀ n, P15547992659748660228.a n = A134398 (n + 1)

theorem P15547992659748660228.correct : P15547992659748660228.Spec := by
  intro n
  simp only [A134398, Nat.add_sub_cancel]

end A134398

/-! ## A134398.P2472267750536673315

`A077028(n)+A014473(n)`
-/

namespace A134398.P2472267750536673315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + A014473 n

end

end A134398.P2472267750536673315

namespace A134398

/-- `A077028(n)+A014473(n)` -/
def P2472267750536673315.Spec : Prop :=
  ∀ n, P2472267750536673315.a n = A134398 (n + 1)

end A134398

/-! ## A134398.P18316915749106703359

`A007318(n)+A077028(n)-1`
-/

namespace A134398.P18316915749106703359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A077028 n - 1)

end

end A134398.P18316915749106703359

namespace A134398

/-- `A007318(n)+A077028(n)-1` -/
def P18316915749106703359.Spec : Prop :=
  ∀ n, P18316915749106703359.a n = A134398 (n + 1)

end A134398

/-! ## A134398.P786871901548799930

`A007318(n)+1-A176270(n)`
-/

namespace A134398.P786871901548799930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (1 - A176270 n)

end

end A134398.P786871901548799930

namespace A134398

/-- `A007318(n)+1-A176270(n)` -/
def P786871901548799930.Spec : Prop :=
  ∀ n, P786871901548799930.a n = A134398 (n + 1)

end A134398

/-! ## A134398.P5906126793713414113

`A004247(n)+A028326(n)/2`
-/

namespace A134398.P5906126793713414113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004247 n : ℚ) + (A028326 n : ℚ) / 2

end

end A134398.P5906126793713414113

namespace A134398

/-- `A004247(n)+A028326(n)/2` -/
def P5906126793713414113.Spec : Prop :=
  ∀ n, P5906126793713414113.a n = (A134398 (n + 1) : ℚ)

end A134398

/-! ## A134398.P11822952487294914709

`A007318(n)+sqrt(A082043(n))-1`
-/

namespace A134398.P11822952487294914709
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℝ) + (Real.sqrt (A082043 n : ℝ) - 1)

end

end A134398.P11822952487294914709

namespace A134398

/-- `A007318(n)+sqrt(A082043(n))-1` -/
def P11822952487294914709.Spec : Prop :=
  ∀ n, P11822952487294914709.a n = (A134398 (n + 1) : ℝ)

end A134398

/-! ## A134398.P17707574064668282815

`A014473(n)+2-ceil(A176625(n)/3)`
-/

namespace A134398.P17707574064668282815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (2 - ⌈(A176625 n : ℚ) / 3⌉)

end

end A134398.P17707574064668282815

namespace A134398

/-- `A014473(n)+2-ceil(A176625(n)/3)` -/
def P17707574064668282815.Spec : Prop :=
  ∀ n, P17707574064668282815.a n = A134398 (n + 1)

end A134398

/-! ## A134398.P11275198336670230076

`A004524(A130154(n+1))+A007318(n)`
-/

namespace A134398.P11275198336670230076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A130154 (n + 1)).toNat + A007318 n

end

end A134398.P11275198336670230076

namespace A134398

/-- `A004524(A130154(n+1))+A007318(n)` -/
def P11275198336670230076.Spec : Prop :=
  ∀ n, P11275198336670230076.a n = A134398 (n + 1)

end A134398

/-! ## A134398.P5195731917479878445

`1-(A176270(A028310(n))-A007318(n))`
-/

namespace A134398.P5195731917479878445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A176270 (A028310 n).toNat - A007318 n)

end

end A134398.P5195731917479878445

namespace A134398

/-- `1-(A176270(A028310(n))-A007318(n))` -/
def P5195731917479878445.Spec : Prop :=
  ∀ n, P5195731917479878445.a n = A134398 (n + 1)

end A134398

/-! ## A134398.P9220958736938200439

`A007318(n)+A002262(n)*A025581(n)`
-/

namespace A134398.P9220958736938200439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A002262 n * A025581 n

end

end A134398.P9220958736938200439

namespace A134398

/-- `A007318(n)+A002262(n)*A025581(n)` -/
def P9220958736938200439.Spec : Prop :=
  ∀ n, P9220958736938200439.a n = A134398 (n + 1)

end A134398

/-! ## A134398.P992667536211638437

`A003991(n+1)+A014473(n)-A003056(n)`
-/

namespace A134398.P992667536211638437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A014473 n - A003056 n)

end

end A134398.P992667536211638437

namespace A134398

/-- `A003991(n+1)+A014473(n)-A003056(n)` -/
def P992667536211638437.Spec : Prop :=
  ∀ n, P992667536211638437.a n = A134398 (n + 1)

end A134398

/-! ## A134398.P5333360875891968162

`A003991(n+1)+A007318(n)-A002024(n+1)`
-/

namespace A134398.P5333360875891968162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A007318 n - A002024 (n + 1))

end

end A134398.P5333360875891968162

namespace A134398

/-- `A003991(n+1)+A007318(n)-A002024(n+1)` -/
def P5333360875891968162.Spec : Prop :=
  ∀ n, P5333360875891968162.a n = A134398 (n + 1)

end A134398

/-! ## A134398.P9596107412020915330

`A014473(n)+A003991(n+1)-(∑[A010054(n)]-1)`
-/

namespace A134398.P9596107412020915330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A003991 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j - 1))

end

end A134398.P9596107412020915330

namespace A134398

/-- `A014473(n)+A003991(n+1)-(∑[A010054(n)]-1)` -/
def P9596107412020915330.Spec : Prop :=
  ∀ n, P9596107412020915330.a n = A134398 (n + 1)

end A134398

/-! ## A134398.P13939129398166953610

`A014473(n)+(A002260(n+1)-1)*A025581(n)+1`
-/

namespace A134398.P13939129398166953610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + ((A002260 (n + 1) - 1) * A025581 n + 1)

end

end A134398.P13939129398166953610

namespace A134398

/-- `A014473(n)+(A002260(n+1)-1)*A025581(n)+1` -/
def P13939129398166953610.Spec : Prop :=
  ∀ n, P13939129398166953610.a n = A134398 (n + 1)

end A134398

/-! ## A134398.P12151422372657801985

`A007318(n)+log2(A117401(n))`
-/

namespace A134398.P12151422372657801985
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℝ) + Real.logb 2 (A117401 n : ℝ)

end

end A134398.P12151422372657801985

namespace A134398

/-- `A007318(n)+log2(A117401(n))` -/
def P12151422372657801985.Spec : Prop :=
  ∀ n, P12151422372657801985.a n = (A134398 (n + 1) : ℝ)

end A134398

/-!
# A134399: Matrix product of Binomial triangle A007318 and triangle with (1, 1, 2, 3, 4, 5, ...) in the main diagonal and the rest zeros.

The programs for A134399, the canonical program `A134399.P11389715286082548429` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134399 has offset 0).

The definition of A134399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134399.P11389715286082548429

`A128710(n)-A124927(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A134399

/-- `A128710(n)-A124927(n)` -/
def P11389715286082548429.Spec : Prop :=
  ∀ n, P11389715286082548429.a n = A134399 n

theorem P11389715286082548429.correct : P11389715286082548429.Spec := by
  intro n
  simp only [A134399]

end A134399

/-! ## A134399.P4346741380418801535

`A007318(n)*A144328(n+1)`
-/

namespace A134399.P4346741380418801535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A144328 (n + 1)

end

end A134399.P4346741380418801535

namespace A134399

/-- `A007318(n)*A144328(n+1)` -/
def P4346741380418801535.Spec : Prop :=
  ∀ n, P4346741380418801535.a n = A134399 n

end A134399

/-! ## A134399.P3977790508247666598

`abs(A108086(n)*A144328(n+1))`
-/

namespace A134399.P3977790508247666598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A144328 (n + 1)|

end

end A134399.P3977790508247666598

namespace A134399

/-- `abs(A108086(n)*A144328(n+1))` -/
def P3977790508247666598.Spec : Prop :=
  ∀ n, P3977790508247666598.a n = A134399 n

end A134399

/-! ## A134399.P6649047148296353672

`abs(A130595(n)*A144328(n+1))`
-/

namespace A134399.P6649047148296353672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A144328 (n + 1)|

end

end A134399.P6649047148296353672

namespace A134399

/-- `abs(A130595(n)*A144328(n+1))` -/
def P6649047148296353672.Spec : Prop :=
  ∀ n, P6649047148296353672.a n = A134399 n

end A134399

/-! ## A134399.P4806826160618031729

`A010054(n)+A103406(n)-A007318(n)`
-/

namespace A134399.P4806826160618031729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A103406 n - A007318 n)

end

end A134399.P4806826160618031729

namespace A134399

/-- `A010054(n)+A103406(n)-A007318(n)` -/
def P4806826160618031729.Spec : Prop :=
  ∀ n, P4806826160618031729.a n = A134399 n

end A134399

/-! ## A134399.P14520140131961801820

`A144333(n+1)/A055248(n)*A007318(n)`
-/

namespace A134399.P14520140131961801820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144333 (n + 1) : ℚ) / (A055248 n : ℚ) * (A007318 n : ℚ)

end

end A134399.P14520140131961801820

namespace A134399

/-- `A144333(n+1)/A055248(n)*A007318(n)` -/
def P14520140131961801820.Spec : Prop :=
  ∀ n, P14520140131961801820.a n = (A134399 n : ℚ)

end A134399

/-! ## A134399.P1899614084315069495

`A155865(comp[∑[n+1]])`
-/

namespace A134399.P1899614084315069495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A134399.P1899614084315069495

namespace A134399

/-- `A155865(comp[∑[n+1]])` -/
def P1899614084315069495.Spec : Prop :=
  ∀ n, P1899614084315069495.a n = A134399 n

end A134399

/-! ## A134399.P13589315857119652043

`and(-1, A155865(comp[∑[n-1]]))`
-/

namespace A134399.P13589315857119652043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A155865 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A134399.P13589315857119652043

namespace A134399

/-- `and(-1, A155865(comp[∑[n-1]]))` -/
def P13589315857119652043.Spec : Prop :=
  ∀ n, P13589315857119652043.a n = A134399 n

end A134399

/-! ## A134399.P9600252650238249730

`sqrt(A174126(comp[∑[n+1]]))`
-/

namespace A134399.P9600252650238249730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A174126 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)

end

end A134399.P9600252650238249730

namespace A134399

/-- `sqrt(A174126(comp[∑[n+1]]))` -/
def P9600252650238249730.Spec : Prop :=
  ∀ n, P9600252650238249730.a n = (A134399 n : ℝ)

end A134399

/-! ## A134399.P733434159346737915

`A008279(n)/A165680(n+1)`
-/

namespace A134399.P733434159346737915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A165680 (n + 1) : ℚ)

end

end A134399.P733434159346737915

namespace A134399

/-- `A008279(n)/A165680(n+1)` -/
def P733434159346737915.Spec : Prop :=
  ∀ n, P733434159346737915.a n = (A134399 n : ℚ)

end A134399

/-! ## A134399.P9269276039839922454

`A008279(n)/gcd(A008279(n), A177264(n+1))`
-/

namespace A134399.P9269276039839922454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (Int.gcd (A008279 n) (A177264 (n + 1)) : ℚ)

end

end A134399.P9269276039839922454

namespace A134399

/-- `A008279(n)/gcd(A008279(n), A177264(n+1))` -/
def P9269276039839922454.Spec : Prop :=
  ∀ n, P9269276039839922454.a n = (A134399 n : ℚ)

end A134399

/-! ## A134399.P13618312249806653335

`gcd(A244143(n), A395701(n))`
-/

namespace A134399.P13618312249806653335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244143 n) (A395701 n)

end

end A134399.P13618312249806653335

namespace A134399

/-- `gcd(A244143(n), A395701(n))` -/
def P13618312249806653335.Spec : Prop :=
  ∀ n, (P13618312249806653335.a n : ℤ) = A134399 n

end A134399

/-! ## A134399.P16267850406520528893

`log2(Δ[A209492(n)])*A007318(n)`
-/

namespace A134399.P16267850406520528893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209492 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ) * (A007318 n : ℝ)

end

end A134399.P16267850406520528893

namespace A134399

/-- `log2(Δ[A209492(n)])*A007318(n)` -/
def P16267850406520528893.Spec : Prop :=
  ∀ n, P16267850406520528893.a n = (A134399 n : ℝ)

end A134399

/-! ## A134399.P9971773280088182539

`A007318(n)*∏{e}[A059268(n), #]`
-/

namespace A134399.P9971773280088182539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A134399.P9971773280088182539

namespace A134399

/-- `A007318(n)*∏{e}[A059268(n), #]` -/
def P9971773280088182539.Spec : Prop :=
  ∀ n, P9971773280088182539.a n = A134399 n

end A134399

