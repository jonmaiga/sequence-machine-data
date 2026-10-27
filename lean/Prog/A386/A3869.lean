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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A386904: A sequence constructed by greedily sampling the Borel distribution for parameter value 1/2 to minimize discrepancy.

The programs for A386904, there is no canonical definition to state claims against.
-/

/-! ## A386904.P5857096058769111798

`A194868(C(A052499(n), A242887(n+3)))`
-/

namespace A386904.P5857096058769111798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (Nat.choose (A052499 n).toNat (A242887 (n + 3)).toNat)

end

end A386904.P5857096058769111798

/-! ## A386904.P15144636451302735573

`A001511(A006521(n+1)-A218347(n+1))`
-/

namespace A386904.P15144636451302735573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A006521 (n + 1) - A218347 (n + 1)).toNat

end

end A386904.P15144636451302735573

/-! ## A386904.P16242867617467116531

`A066099(lcm(A022552(2*n+5), A323306(n+1)))`
-/

namespace A386904.P16242867617467116531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (Int.lcm (A022552 (2 * n + 5)) (A323306 (n + 1)))

end

end A386904.P16242867617467116531

/-! ## A386904.P7595187457930788976

`A381617(A344742(n+1))%A317385(3*n)`
-/

namespace A386904.P7595187457930788976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381617 (A344742 (n + 1)).toNat) (A317385 (3 * n))

end

end A386904.P7595187457930788976

/-! ## A386904.P9264932442478944112

`gcd(A051537(n+1), A261029(A059608(2*(n+2))))`
-/

namespace A386904.P9264932442478944112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051537 (n + 1)) (A261029 (A059608 (2 * (n + 2))).toNat)

end

end A386904.P9264932442478944112

/-!
# A386906: a(n) = (3*n - 2)^2*(3*n - 1)/2.

The programs for A386906, the canonical program `A386906.P4759804718753343731` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386906 has offset 1).

The definition of A386906 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*(n+1)-2)²*(3*(n+1)-1)/2` (program `A386906.P9804546570902914387`, by `A386906.P9804546570902914387.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386906.P9804546570902914387

`(3*(n+1)-2)²*(3*(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386906.P9804546570902914387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * (n + 1) : ℤ) - 2) ^ 2 * ((3 * (n + 1) : ℤ) - 1) : ℚ) / 2

end

end A386906.P9804546570902914387

namespace A386906

/-- `(3*(n+1)-2)²*(3*(n+1)-1)/2` -/
def P9804546570902914387.Spec : Prop :=
  ∀ n, P9804546570902914387.a n = (A386906 (n + 1) : ℚ)

theorem P9804546570902914387.correct : P9804546570902914387.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A386906, Nat.add_sub_cancel, A386906.P9804546570902914387.a, A386906.P4759804718753343731.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A386906, Nat.add_sub_cancel, A386906.P9804546570902914387.a, A386906.P4759804718753343731.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A386906

/-! ## A386906.P4759804718753343731

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=40, a(2)=196, a(3)=550`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A386906

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4759804718753343731.Spec : Prop :=
  ∀ n, P4759804718753343731.a n = A386906 (n + 1)

theorem P4759804718753343731.correct : P4759804718753343731.Spec := by
  intro n
  simp only [A386906, Nat.add_sub_cancel]

end A386906

/-! ## A386906.P13206928025455420927

`(2*n+1+n)*C(2*n+n+2, 2)`
-/

namespace A386906.P13206928025455420927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 + n) * Nat.choose (2 * n + (n + 2)) 2

end

end A386906.P13206928025455420927

namespace A386906

/-- `(2*n+1+n)*C(2*n+n+2, 2)` -/
def P13206928025455420927.Spec : Prop :=
  ∀ n, (P13206928025455420927.a n : ℤ) = A386906 (n + 1)

end A386906

/-! ## A386906.P10711776039879173831

`A193228(n+1)+A004188(n)`
-/

namespace A386906.P10711776039879173831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193228 (n + 1) + A004188 n

end

end A386906.P10711776039879173831

namespace A386906

/-- `A193228(n+1)+A004188(n)` -/
def P10711776039879173831.Spec : Prop :=
  ∀ n, P10711776039879173831.a n = A386906 (n + 1)

end A386906

/-! ## A386906.P1785088435242659536

`A016777(n)*A060544(n+1)`
-/

namespace A386906.P1785088435242659536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A060544 (n + 1)

end

end A386906.P1785088435242659536

namespace A386906

/-- `A016777(n)*A060544(n+1)` -/
def P1785088435242659536.Spec : Prop :=
  ∀ n, P1785088435242659536.a n = A386906 (n + 1)

end A386906

/-! ## A386906.P17164358180730560313

`A004188(2*n+1)+A004188(n)`
-/

namespace A386906.P17164358180730560313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 (2 * n + 1) + A004188 n

end

end A386906.P17164358180730560313

namespace A386906

/-- `A004188(2*n+1)+A004188(n)` -/
def P17164358180730560313.Spec : Prop :=
  ∀ n, P17164358180730560313.a n = A386906 (n + 1)

end A386906

/-! ## A386906.P8069094282848709409

`A002411(3*n+1)`
-/

namespace A386906.P8069094282848709409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (3 * n + 1)

end

end A386906.P8069094282848709409

namespace A386906

/-- `A002411(3*n+1)` -/
def P8069094282848709409.Spec : Prop :=
  ∀ n, P8069094282848709409.a n = A386906 (n + 1)

end A386906

/-! ## A386906.P3477297659942284342

`A028724(A016957(n))`
-/

namespace A386906.P3477297659942284342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (A016957 n).toNat

end

end A386906.P3477297659942284342

namespace A386906

/-- `A028724(A016957(n))` -/
def P3477297659942284342.Spec : Prop :=
  ∀ n, P3477297659942284342.a n = A386906 (n + 1)

end A386906

/-! ## A386906.P13923600356581843441

`A188067(A016933(n))`
-/

namespace A386906.P13923600356581843441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 (A016933 n).toNat

end

end A386906.P13923600356581843441

namespace A386906

/-- `A188067(A016933(n))` -/
def P13923600356581843441.Spec : Prop :=
  ∀ n, P13923600356581843441.a n = A386906 (n + 1)

end A386906

/-! ## A386906.P12356366725889453015

`A008795(A016945(n))*A016777(n)`
-/

namespace A386906.P12356366725889453015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A016945 n).toNat * A016777 n

end

end A386906.P12356366725889453015

namespace A386906

/-- `A008795(A016945(n))*A016777(n)` -/
def P12356366725889453015.Spec : Prop :=
  ∀ n, P12356366725889453015.a n = A386906 (n + 1)

end A386906

/-! ## A386906.P17822178168058163783

`A144677(9*n)`
-/

namespace A386906.P17822178168058163783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (9 * n)

end

end A386906.P17822178168058163783

namespace A386906

/-- `A144677(9*n)` -/
def P17822178168058163783.Spec : Prop :=
  ∀ n, P17822178168058163783.a n = A386906 (n + 1)

end A386906

/-! ## A386906.P18216649818419718570

`A029009(3*6*n)`
-/

namespace A386906.P18216649818419718570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029009 (3 * (6 * n))

end

end A386906.P18216649818419718570

namespace A386906

/-- `A029009(3*6*n)` -/
def P18216649818419718570.Spec : Prop :=
  ∀ n, P18216649818419718570.a n = A386906 (n + 1)

end A386906

/-! ## A386906.P9444499247685749581

`A008670(A161705(n))`
-/

namespace A386906.P9444499247685749581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 (A161705 n).toNat

end

end A386906.P9444499247685749581

namespace A386906

/-- `A008670(A161705(n))` -/
def P9444499247685749581.Spec : Prop :=
  ∀ n, P9444499247685749581.a n = A386906 (n + 1)

end A386906

/-! ## A386906.P7953620505701379081

`A082146(A298035(n+1))`
-/

namespace A386906.P7953620505701379081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082146 (A298035 (n + 1)).toNat

end

end A386906.P7953620505701379081

namespace A386906

/-- `A082146(A298035(n+1))` -/
def P7953620505701379081.Spec : Prop :=
  ∀ n, P7953620505701379081.a n = A386906 (n + 1)

end A386906

/-! ## A386906.P10696975464400257416

`A029186(A044102(n))`
-/

namespace A386906.P10696975464400257416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029186 (A044102 n).toNat

end

end A386906.P10696975464400257416

namespace A386906

/-- `A029186(A044102(n))` -/
def P10696975464400257416.Spec : Prop :=
  ∀ n, P10696975464400257416.a n = A386906 (n + 1)

end A386906

/-! ## A386906.P12813719752755911456

`A029186(A139609(n))`
-/

namespace A386906.P12813719752755911456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029186 (A139609 n).toNat

end

end A386906.P12813719752755911456

namespace A386906

/-- `A029186(A139609(n))` -/
def P12813719752755911456.Spec : Prop :=
  ∀ n, P12813719752755911456.a n = A386906 (n + 1)

end A386906

/-!
# A386909: Iterates of g(x), starting at x = 0 until g(x) == 2 (mod 3), where g(x) = (5*x + 18)/3 if x == 0 (mod 3) and g(x) = (5*x + 22)/3 if x == 1 (mod 3).

The programs for A386909, there is no canonical definition to state claims against.
-/

/-! ## A386909.P7938387209764513295

`A008854(a(n-1)+5)` with `a(0)=0`
-/

namespace A386909.P7938387209764513295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008854 (a (n - 1) + 5).toNat

end

end A386909.P7938387209764513295

/-! ## A386909.P3029653481744366689

`A296241(A131951(n))`
-/

namespace A386909.P3029653481744366689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296241 (A131951 n).toNat

end

end A386909.P3029653481744366689

/-!
# A386912: The base-2 logarithm of this sequence equals the Q statistic value of the greedy-from-the-bottom tree with n leaves, which is the minimal Q statistic value for n.

The programs for A386912, there is no canonical definition to state claims against.
-/

/-! ## A386912.P9924815126686858311

`(n+1)*A061392(A003149(n))`
-/

namespace A386912.P9924815126686858311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061392 (A003149 n).toNat

end

end A386912.P9924815126686858311

/-! ## A386912.P5606830364344289726

`(n+1)*A316470(A316694(n+1))`
-/

namespace A386912.P5606830364344289726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A316470 (A316694 (n + 1)).toNat

end

end A386912.P5606830364344289726

/-! ## A386912.P7224817299271675360

`A289501(n)*A357186(A000041(2*n))`
-/

namespace A386912.P7224817299271675360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289501 n * A357186 (A000041 (2 * n)).toNat

end

end A386912.P7224817299271675360

/-!
# A386918: a(n) = 2^n * binomial(4*n,n).

The programs for A386918, the canonical program `A386918.P6850681663165678686` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386918 has offset 0).

The definition of A386918 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*C(4*n, n)` (program `A386918.P6850681663165678686`, by `A386918.P6850681663165678686.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386918.P6850681663165678686

`2^n*C(4*n, n)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A386918

/-- `2^n*C(4*n, n)` -/
def P6850681663165678686.Spec : Prop :=
  ∀ n, (P6850681663165678686.a n : ℤ) = A386918 n

theorem P6850681663165678686.correct : P6850681663165678686.Spec := by
  intro n
  simp only [A386918]

end A386918

/-! ## A386918.P7665903455064213027

`A128413(∑[4*n])`
-/

namespace A386918.P7665903455064213027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128413 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386918.P7665903455064213027

namespace A386918

/-- `A128413(∑[4*n])` -/
def P7665903455064213027.Spec : Prop :=
  ∀ n, P7665903455064213027.a n = A386918 n

end A386918

/-! ## A386918.P14398674216208420496

`A128417(∑[4*n])`
-/

namespace A386918.P14398674216208420496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128417 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386918.P14398674216208420496

namespace A386918

/-- `A128417(∑[4*n])` -/
def P14398674216208420496.Spec : Prop :=
  ∀ n, P14398674216208420496.a n = A386918 n

end A386918

/-! ## A386918.P16127018843184915391

`A013609(A139276(n))`
-/

namespace A386918.P16127018843184915391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A139276 n).toNat

end

end A386918.P16127018843184915391

namespace A386918

/-- `A013609(A139276(n))` -/
def P16127018843184915391.Spec : Prop :=
  ∀ n, P16127018843184915391.a n = A386918 n

end A386918

/-! ## A386918.P5088233110995171259

`A038207(A139277(n))`
-/

namespace A386918.P5088233110995171259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A139277 n).toNat

end

end A386918.P5088233110995171259

namespace A386918

/-- `A038207(A139277(n))` -/
def P5088233110995171259.Spec : Prop :=
  ∀ n, P5088233110995171259.a n = A386918 n

end A386918

/-!
# A386919: a(n) = Sum_{k=0..n} binomial(4*n,k) * binomial(2*n-k,n-k).

The programs for A386919, there is no canonical definition to state claims against.
-/

/-! ## A386919.P6689979216546757202

`A113955(∑[4*n])`
-/

namespace A386919.P6689979216546757202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386919.P6689979216546757202

/-!
# A386920: a(n) = Sum_{k=0..n} binomial(4*n,k) * binomial(3*n-k,n-k).

The programs for A386920, there is no canonical definition to state claims against.
-/

/-! ## A386920.P13960682757573759881

`A158687(A062728(n))`
-/

namespace A386920.P13960682757573759881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158687 (A062728 n).toNat

end

end A386920.P13960682757573759881

/-!
# A386928: Algebraic rank of elliptic curve y^2 = x^3 + n*x + n.

The programs for A386928, there is no canonical definition to state claims against.
-/

/-! ## A386928.P12399557220872991492

`A341754(A293412(n))`
-/

namespace A386928.P12399557220872991492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341754 (A293412 n).toNat

end

end A386928.P12399557220872991492

/-! ## A386928.P17962701245271145185

`A112539(A066320(n+1))`
-/

namespace A386928.P17962701245271145185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112539 (A066320 (n + 1)).toNat

end

end A386928.P17962701245271145185

/-! ## A386928.P12497793661872998640

`A030657(A213789(n+1))`
-/

namespace A386928.P12497793661872998640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030657 (A213789 (n + 1)).toNat

end

end A386928.P12497793661872998640

/-! ## A386928.P2908469321467439808

`A293164(A179791(n+2))`
-/

namespace A386928.P2908469321467439808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293164 (A179791 (n + 2)).toNat

end

end A386928.P2908469321467439808

/-! ## A386928.P5473190081329272085

`A267598(A330913(n+2))`
-/

namespace A386928.P5473190081329272085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267598 (A330913 (n + 2)).toNat

end

end A386928.P5473190081329272085

/-!
# A386930: Number of divisors d of n such that (-d)^d == -d^d (mod n).

The programs for A386930, there is no canonical definition to state claims against.
-/

/-! ## A386930.P16694290393918649659

`A000005(n+1)+A386310(n+1)-A385662(n+1)`
-/

namespace A386930.P16694290393918649659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A386310 (n + 1) - A385662 (n + 1))

end

end A386930.P16694290393918649659

/-! ## A386930.P13385035914058650856

`A000720(A101296(2*(n+1))%A103537(n+3))`
-/

namespace A386930.P13385035914058650856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A101296 (2 * (n + 1))) (A103537 (n + 3))).toNat

end

end A386930.P13385035914058650856

/-! ## A386930.P2545836632580922595

`A000720(A101296(2*(n+1)))%A183073(n+1)`
-/

namespace A386930.P2545836632580922595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A101296 (2 * (n + 1))).toNat) (A183073 (n + 1))

end

end A386930.P2545836632580922595

/-! ## A386930.P13069415284501246460

`A072649(A001055(2*(n+1))%A003022(n+3))`
-/

namespace A386930.P13069415284501246460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (Int.tmod (A001055 (2 * (n + 1))) (A003022 (n + 3))).toNat

end

end A386930.P13069415284501246460

/-! ## A386930.P938737984244226875

`A001222(A044825(n+1)*A065720(3*n+1))`
-/

namespace A386930.P938737984244226875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A044825 (n + 1) * A065720 (3 * n + 1)).toNat

end

end A386930.P938737984244226875

/-!
# A386931: a(n) is the smallest positive integer k such that k^2 is equal to the sum of n consecutive positive integers, or 0 if no such k exists.

The programs for A386931, there is no canonical definition to state claims against.
-/

/-! ## A386931.P16313919961214487373

`sqrt(A076115(n+1))`
-/

namespace A386931.P16313919961214487373
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076115 (n + 1) : ℝ)

end

end A386931.P16313919961214487373

/-! ## A386931.P12181480786728727866

`A003984(2*A076115(n+1))`
-/

namespace A386931.P12181480786728727866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (2 * A076115 (n + 1)).toNat

end

end A386931.P12181480786728727866

/-!
# A386932: Lexicographically earliest sequence of distinct positive integers that can be partitioned into runs of integers without common bits, the n-th such run having a(n) terms.

The programs for A386932, there is no canonical definition to state claims against.
-/

/-! ## A386932.P7261249556399350066

`Δ[record[A387024(n+1)]]`
-/

namespace A386932.P7261249556399350066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387024 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A386932.P7261249556399350066

/-!
# A386936: Numbers that can be represented using their digits in the order of appearance, the operations +, -, *, /, ^, and any parentheses.

The programs for A386936, there is no canonical definition to state claims against.
-/

/-! ## A386936.P7616869943906870762

`A046469(A077168(n))`
-/

namespace A386936.P7616869943906870762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 (A077168 n).toNat

end

end A386936.P7616869943906870762

/-! ## A386936.P8451982088305407471

`A046469(A043319(n+1))`
-/

namespace A386936.P8451982088305407471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 (A043319 (n + 1)).toNat

end

end A386936.P8451982088305407471

/-! ## A386936.P11159338844292790158

`A046469(A044916(n+1))`
-/

namespace A386936.P11159338844292790158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 (A044916 (n + 1)).toNat

end

end A386936.P11159338844292790158

/-! ## A386936.P12357440716499696183

`A046469(A055646(n+1))`
-/

namespace A386936.P12357440716499696183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 (A055646 (n + 1)).toNat

end

end A386936.P12357440716499696183

/-! ## A386936.P18118289911367091813

`A046469(A065672(n+1))`
-/

namespace A386936.P18118289911367091813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 (A065672 (n + 1)).toNat

end

end A386936.P18118289911367091813

/-!
# A386937: a(n) = Sum_{k=0..n} binomial(3*n+1,k) * binomial(2*n-k-1,n-k).

The programs for A386937, there is no canonical definition to state claims against.
-/

/-! ## A386937.P2364143754972778516

`A090299(2*(n+1)²)`
-/

namespace A386937.P2364143754972778516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090299 (2 * (n + 1) ^ 2)

end

end A386937.P2364143754972778516

/-!
# A386938: a(n) = Sum_{k=0..n} binomial(4*n+1,k) * binomial(2*n-k-1,n-k).

The programs for A386938, there is no canonical definition to state claims against.
-/

/-! ## A386938.P9602326494080872078

`(n+1)*A307489(n)`
-/

namespace A386938.P9602326494080872078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A307489 n

end

end A386938.P9602326494080872078

/-! ## A386938.P6770613186494564925

`A035324((n+1)²+n²)`
-/

namespace A386938.P6770613186494564925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035324 ((n + 1) ^ 2 + n ^ 2)

end

end A386938.P6770613186494564925

/-! ## A386938.P13473233433343450033

`and(-1, A035324(A001844(n)))`
-/

namespace A386938.P13473233433343450033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A035324 (A001844 n).toNat)

end

end A386938.P13473233433343450033

/-! ## A386938.P5101409405764229534

`A116178(3*n)+A035324(A001844(n))`
-/

namespace A386938.P5101409405764229534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 (3 * n) + A035324 (A001844 n).toNat

end

end A386938.P5101409405764229534

/-! ## A386938.P12714695139467866875

`A130706(2*(n+2))+A035324(A001844(n))`
-/

namespace A386938.P12714695139467866875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (2 * (n + 2)) + A035324 (A001844 n).toNat

end

end A386938.P12714695139467866875

/-!
# A386939: a(n) = Sum_{k=0..n} binomial(4*n+1,k) * binomial(3*n-k-1,n-k).

The programs for A386939, there is no canonical definition to state claims against.
-/

/-! ## A386939.P14812270040298343823

`A046658((n+1)²+n²)`
-/

namespace A386939.P14812270040298343823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046658 ((n + 1) ^ 2 + n ^ 2)

end

end A386939.P14812270040298343823

/-! ## A386939.P15242008870667132696

`A347438(3*n+2)+A046658(A046092(n)+1)`
-/

namespace A386939.P15242008870667132696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (3 * n + 2) + A046658 (A046092 n + 1).toNat

end

end A386939.P15242008870667132696

/-! ## A386939.P6563456827369756963

`A046658(A046092(n)+1)%A124610(2*(n+1))`
-/

namespace A386939.P6563456827369756963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046658 (A046092 n + 1).toNat) (A124610 (2 * (n + 1)))

end

end A386939.P6563456827369756963

/-! ## A386939.P17118201153109395560

`A046658(A046092(n)+1)%A107403(n+4)`
-/

namespace A386939.P17118201153109395560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046658 (A046092 n + 1).toNat) (A107403 (n + 4))

end

end A386939.P17118201153109395560

/-!
# A386940: a(n) = Sum_{k=0..n} binomial(2*k,k) * binomial(2*n-k-1,n-k).

The programs for A386940, there is no canonical definition to state claims against.
-/

/-! ## A386940.P7217241260108013979

`A187888(∑[4*n])`
-/

namespace A386940.P7217241260108013979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187888 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386940.P7217241260108013979

/-!
# A386941: a(n) = Sum_{k=0..n} (2*k+1) * binomial(2*k,k) * binomial(2*n-k-1,n-k).

The programs for A386941, there is no canonical definition to state claims against.
-/

/-! ## A386941.P7154173684037349367

`A090621(A260774(n+1)+A000931(n))`
-/

namespace A386941.P7154173684037349367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090621 (A260774 (n + 1) + A000931 n).toNat

end

end A386941.P7154173684037349367

/-!
# A386942: a(n) = Sum_{k=0..n} (2*k+1) * binomial(2*k,k) * binomial(2*n-k,n-k).

The programs for A386942, there is no canonical definition to state claims against.
-/

/-! ## A386942.P13300347644873496590

`(n+1)*A004526(A350645(n+1))`
-/

namespace A386942.P13300347644873496590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A350645 (n + 1)).toNat

end

end A386942.P13300347644873496590

/-!
# A386943: Ordered hypotenuses of nonprimitive Pythagorean triples of the form (u^2 - v^2, 2*u*v, u^2 + v^2), where u and v are positive integers.

The programs for A386943, there is no canonical definition to state claims against.
-/

/-! ## A386943.P12074159693683301233

`sqrt(A386944(n+1)²+A386945(n+1)²)`
-/

namespace A386943.P12074159693683301233
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A386944 (n + 1) ^ 2 + A386945 (n + 1) ^ 2 : ℝ)

end

end A386943.P12074159693683301233

/-! ## A386943.P1497730332477510059

`filter[A325185(n+1), A353814(#)]`
-/

namespace A386943.P1497730332477510059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A386943.P1497730332477510059

/-! ## A386943.P623819980077218352

`∩[A004431(n+1), A325185(n+1)]`
-/

namespace A386943.P623819980077218352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386943.P623819980077218352

/-! ## A386943.P1515836526472455926

`∩[A025302(n+1), A325185(n+1)]`
-/

namespace A386943.P1515836526472455926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386943.P1515836526472455926

/-! ## A386943.P15777323872978650639

`∩[A025302(n+1), A330698(n+1)]`
-/

namespace A386943.P15777323872978650639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386943.P15777323872978650639

/-!
# A386944: Long legs of nonprimitive Pythagorean triples of the form (u^2 - v^2, 2*u*v, u^2 + v^2), ordered by increasing hypotenuse (A386943).

The programs for A386944, there is no canonical definition to state claims against.
-/

/-! ## A386944.P3777790364514954163

`sqrt(A386943(n+1)²-A386945(n+1)²)`
-/

namespace A386944.P3777790364514954163
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A386943 (n + 1) ^ 2 - A386945 (n + 1) ^ 2 : ℝ)

end

end A386944.P3777790364514954163

/-!
# A386945: Short legs of nonprimitive Pythagorean triples of the form (p^2 - q^2, 2*p*q, p^2 + q^2), ordered by increasing hypotenuse (A386943).

The programs for A386945, there is no canonical definition to state claims against.
-/

/-! ## A386945.P13743436145082906276

`sqrt(A386943(n+1)²-A386944(n+1)²)`
-/

namespace A386945.P13743436145082906276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A386943 (n + 1) ^ 2 - A386944 (n + 1) ^ 2 : ℝ)

end

end A386945.P13743436145082906276

/-!
# A386946: a(n) is the number of imprimitive (periodic) 2n-bead balanced binary necklaces.

The programs for A386946, there is no canonical definition to state claims against.
-/

/-! ## A386946.P755404529250223202

`A115118(n)+2*A387130(n)`
-/

namespace A386946.P755404529250223202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115118 n + 2 * A387130 n

end

end A386946.P755404529250223202

/-! ## A386946.P15356184967133399764

`A003239(n)-A022553(n)`
-/

namespace A386946.P15356184967133399764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n - A022553 n

end

end A386946.P15356184967133399764

/-! ## A386946.P1933948377393349551

`A387130(n)+A115122(n)`
-/

namespace A386946.P1933948377393349551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387130 n + A115122 n

end

end A386946.P1933948377393349551

/-! ## A386946.P11548120365439999448

`A078898(A054357(n)-A054358(n))`
-/

namespace A386946.P11548120365439999448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A054357 n - A054358 n).toNat

end

end A386946.P11548120365439999448

/-!
# A386951: Intersection of A025487 and A007531.

The programs for A386951, there is no canonical definition to state claims against.
-/

/-! ## A386951.P5199585824676730477

`A385415(A347243(n+1))`
-/

namespace A386951.P5199585824676730477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385415 (A347243 (n + 1)).toNat

end

end A386951.P5199585824676730477

/-! ## A386951.P3610470157667559120

`A385415(∑[A069288(n+1)])`
-/

namespace A386951.P3610470157667559120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385415 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A386951.P3610470157667559120

/-! ## A386951.P9147967267681684590

`A385415(A055642(n+2)+n)`
-/

namespace A386951.P9147967267681684590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385415 (A055642 (n + 2) + (n : ℤ)).toNat

end

end A386951.P9147967267681684590

/-! ## A386951.P16483773638630341715

`A385415(∑[A340596(3*n+4)])`
-/

namespace A386951.P16483773638630341715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340596 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385415 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A386951.P16483773638630341715

/-! ## A386951.P11384197024497960501

`A385415(∑[A000105(∑{d}[n+1, #%2])])`
-/

namespace A386951.P11384197024497960501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (∑ d ∈ Nat.divisors (f2 n), d % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385415 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A386951.P11384197024497960501

/-!
# A386952: Number of entries in the n-th row of Pascal's triangle not divisible by 9.

The programs for A386952, there is no canonical definition to state claims against.
-/

/-! ## A386952.P5960316998957516300

`1-A249733(n)+n`
-/

namespace A386952.P5960316998957516300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A249733 n + (n : ℤ)

end

end A386952.P5960316998957516300

/-! ## A386952.P5928600884413669674

`A382723(n)+A249731(n)`
-/

namespace A386952.P5928600884413669674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382723 n + A249731 n

end

end A386952.P5928600884413669674

/-! ## A386952.P11871420905577284820

`n+1-(A249732(n)-A249731(n))`
-/

namespace A386952.P11871420905577284820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A249732 n - A249731 n)

end

end A386952.P11871420905577284820

/-!
# A386953: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 9.

The programs for A386953, there is no canonical definition to state claims against.
-/

/-! ## A386953.P6446939847846098299

`∑[A386952(n)]`
-/

namespace A386953.P6446939847846098299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386953.P6446939847846098299

/-! ## A386953.P11075012779281641954

`∑[n+1-A249733(n)]`
-/

namespace A386953.P11075012779281641954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A249733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386953.P11075012779281641954

/-! ## A386953.P10318653431548852341

`∑[A122201(∑[A004086(n+1)])]`
-/

namespace A386953.P10318653431548852341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386953.P10318653431548852341

/-! ## A386953.P870043490693581592

`∑[A122202(∑[A004086(n+1)])]`
-/

namespace A386953.P870043490693581592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122202 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386953.P870043490693581592

/-! ## A386953.P11526420126768191405

`record[gcd(n, A264431(n))]`
-/

namespace A386953.P11526420126768191405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A264431 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386953.P11526420126768191405

/-!
# A386955: a(n) = Sum_{k=0..n} (k+1) * 2^k * binomial(2*n+1,n-k).

The programs for A386955, the canonical program `A386955.P10321546779278294111` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386955 has offset 0).

The definition of A386955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386955.P10321546779278294111

`(n+2)*A007854(n)-record[A126930(n)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A386955

/-- `(n+2)*A007854(n)-record[A126930(n)]` -/
def P10321546779278294111.Spec : Prop :=
  ∀ n, P10321546779278294111.a n = A386955 n

theorem P10321546779278294111.correct : P10321546779278294111.Spec := by
  intro n
  simp only [A386955]

end A386955

/-! ## A386955.P11842338006408813959

`(n+2)*A007854(n)-A056040(A004277(n))`
-/

namespace A386955.P11842338006408813959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A007854 n - A056040 (A004277 n).toNat

end

end A386955.P11842338006408813959

namespace A386955

/-- `(n+2)*A007854(n)-A056040(A004277(n))` -/
def P11842338006408813959.Spec : Prop :=
  ∀ n, P11842338006408813959.a n = A386955 n

end A386955

/-!
# A386958: a(n) = Sum_{k=0..n} 8^k * binomial(k-2/3,k) * binomial(2*n+1/3,n-k).

The programs for A386958, there is no canonical definition to state claims against.
-/

/-! ## A386958.P3431159923362701550

`A384049(floor(A282951(n)/(n+1)))`
-/

namespace A386958.P3431159923362701550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384049 ⌊(A282951 n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A386958.P3431159923362701550

/-!
# A386959: a(n) = Sum_{k=0..n} 8^k * binomial(k-2/3,k) * binomial(2*n-2/3,n-k).

The programs for A386959, there is no canonical definition to state claims against.
-/

/-! ## A386959.P14851443179554413664

`A189638(A390333(n))+A018016(n)`
-/

namespace A386959.P14851443179554413664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189638 (A390333 n).toNat + A018016 n

end

end A386959.P14851443179554413664

/-!
# A386961: Expansion of e.g.f. (x^2/(1-x)^3)*exp(x/(1-x)).

The programs for A386961, there is no canonical definition to state claims against.
-/

/-! ## A386961.P12092849424103445862

`(n-1)*n*A288268(n)`
-/

namespace A386961.P12092849424103445862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) * A288268 n)

end

end A386961.P12092849424103445862

/-! ## A386961.P15900279656503257617

`A105219(n)-A103194(n)`
-/

namespace A386961.P15900279656503257617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105219 n - A103194 n

end

end A386961.P15900279656503257617

/-!
# A386963: Gaps between positions of odd terms in A065090.

The programs for A386963, the canonical program `A386963.P9105300058504622331` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386963 has offset 1).

The definition of A386963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386963.P6144866219016338316

`A196274(n+1)+1`
-/

namespace A386963.P6144866219016338316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 1) + 1

end

end A386963.P6144866219016338316

namespace A386963

/-- `A196274(n+1)+1` -/
def P6144866219016338316.Spec : Prop :=
  ∀ n, P6144866219016338316.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P8135584640120746300

`A144411(n+1)+3`
-/

namespace A386963.P8135584640120746300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144411 (n + 1) + 3

end

end A386963.P8135584640120746300

namespace A386963

/-- `A144411(n+1)+3` -/
def P8135584640120746300.Spec : Prop :=
  ∀ n, P8135584640120746300.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P14410914582144175204

`Δ[A047845(n+1)]+1`
-/

namespace A386963.P14410914582144175204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A386963.P14410914582144175204

namespace A386963

/-- `Δ[A047845(n+1)]+1` -/
def P14410914582144175204.Spec : Prop :=
  ∀ n, P14410914582144175204.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P10395775456316079944

`Δ[A104275(n+1)]+1`
-/

namespace A386963.P10395775456316079944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A386963.P10395775456316079944

namespace A386963

/-- `Δ[A104275(n+1)]+1` -/
def P10395775456316079944.Spec : Prop :=
  ∀ n, P10395775456316079944.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P15753458823766359389

`Δ[A153041(n+1)]+1`
-/

namespace A386963.P15753458823766359389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A386963.P15753458823766359389

namespace A386963

/-- `Δ[A153041(n+1)]+1` -/
def P15753458823766359389.Spec : Prop :=
  ∀ n, P15753458823766359389.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P9105300058504622331

`Δ[A153043(n+1)]+1`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A386963

/-- `Δ[A153043(n+1)]+1` -/
def P9105300058504622331.Spec : Prop :=
  ∀ n, P9105300058504622331.a n = A386963 (n + 1)

theorem P9105300058504622331.correct : P9105300058504622331.Spec := by
  intro n
  simp only [A386963, Nat.add_sub_cancel]

end A386963

/-! ## A386963.P8894888385147801197

`Δ[A153044(n+1)]+1`
-/

namespace A386963.P8894888385147801197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A386963.P8894888385147801197

namespace A386963

/-- `Δ[A153044(n+1)]+1` -/
def P8894888385147801197.Spec : Prop :=
  ∀ n, P8894888385147801197.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P14003987549803323902

`Δ[A153049(n+1)]+1`
-/

namespace A386963.P14003987549803323902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A386963.P14003987549803323902

namespace A386963

/-- `Δ[A153049(n+1)]+1` -/
def P14003987549803323902.Spec : Prop :=
  ∀ n, P14003987549803323902.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P2756812378785095145

`Δ[A153051(n+1)]+1`
-/

namespace A386963.P2756812378785095145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A386963.P2756812378785095145

namespace A386963

/-- `Δ[A153051(n+1)]+1` -/
def P2756812378785095145.Spec : Prop :=
  ∀ n, P2756812378785095145.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P3046144724691628258

`A067970(n+1)/2+1`
-/

namespace A386963.P3046144724691628258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067970 (n + 1) : ℚ) / 2 + 1

end

end A386963.P3046144724691628258

namespace A386963

/-- `A067970(n+1)/2+1` -/
def P3046144724691628258.Spec : Prop :=
  ∀ n, P3046144724691628258.a n = (A386963 (n + 1) : ℚ)

end A386963

/-! ## A386963.P7860274850241789826

`A053726(n+1)-A047845(n+1)`
-/

namespace A386963.P7860274850241789826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) - A047845 (n + 1)

end

end A386963.P7860274850241789826

namespace A386963

/-- `A053726(n+1)-A047845(n+1)` -/
def P7860274850241789826.Spec : Prop :=
  ∀ n, P7860274850241789826.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P10148491160003456853

`A153040(n+1)-A153043(n+1)`
-/

namespace A386963.P10148491160003456853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) - A153043 (n + 1)

end

end A386963.P10148491160003456853

namespace A386963

/-- `A153040(n+1)-A153043(n+1)` -/
def P10148491160003456853.Spec : Prop :=
  ∀ n, P10148491160003456853.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P5740113689647102833

`A153045(n+1)-A153044(n+1)`
-/

namespace A386963.P5740113689647102833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153045 (n + 1) - A153044 (n + 1)

end

end A386963.P5740113689647102833

namespace A386963

/-- `A153045(n+1)-A153044(n+1)` -/
def P5740113689647102833.Spec : Prop :=
  ∀ n, P5740113689647102833.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P442811203303504978

`A153047(n+1)-A153049(n+1)`
-/

namespace A386963.P442811203303504978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153047 (n + 1) - A153049 (n + 1)

end

end A386963.P442811203303504978

namespace A386963

/-- `A153047(n+1)-A153049(n+1)` -/
def P442811203303504978.Spec : Prop :=
  ∀ n, P442811203303504978.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P10620796031679506876

`A104275(n+2)-A047845(n+1)`
-/

namespace A386963.P10620796031679506876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) - A047845 (n + 1)

end

end A386963.P10620796031679506876

namespace A386963

/-- `A104275(n+2)-A047845(n+1)` -/
def P10620796031679506876.Spec : Prop :=
  ∀ n, P10620796031679506876.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P8128885339737354522

`A153043(n+2)-A104275(n+1)`
-/

namespace A386963.P8128885339737354522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 2) - A104275 (n + 1)

end

end A386963.P8128885339737354522

namespace A386963

/-- `A153043(n+2)-A104275(n+1)` -/
def P8128885339737354522.Spec : Prop :=
  ∀ n, P8128885339737354522.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P6311425203817910549

`A153041(n+2)-A153051(n+1)`
-/

namespace A386963.P6311425203817910549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153041 (n + 2) - A153051 (n + 1)

end

end A386963.P6311425203817910549

namespace A386963

/-- `A153041(n+2)-A153051(n+1)` -/
def P6311425203817910549.Spec : Prop :=
  ∀ n, P6311425203817910549.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P17174265004196809580

`A186041(A053726(n+1)-A104275(n+1))`
-/

namespace A386963.P17174265004196809580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186041 (A053726 (n + 1) - A104275 (n + 1)).toNat

end

end A386963.P17174265004196809580

namespace A386963

/-- `A186041(A053726(n+1)-A104275(n+1))` -/
def P17174265004196809580.Spec : Prop :=
  ∀ n, P17174265004196809580.a n = A386963 (n + 1)

end A386963

/-! ## A386963.P15714194865253153455

`A053726(n+1)+A104275(n+1)-A014076(n+1)`
-/

namespace A386963.P15714194865253153455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + (A104275 (n + 1) - A014076 (n + 1))

end

end A386963.P15714194865253153455

namespace A386963

/-- `A053726(n+1)+A104275(n+1)-A014076(n+1)` -/
def P15714194865253153455.Spec : Prop :=
  ∀ n, P15714194865253153455.a n = A386963 (n + 1)

end A386963

/-!
# A386964: a(1) = prime(1) = 2, a(n) = 10*a(n-1) + (prime(n) mod 10).

The programs for A386964, the canonical program `A386964.P10655867375920441443` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386964 has offset 1).

The definition of A386964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+A000040(n+1)%10` (program `A386964.P10655867375920441443`, by `A386964.P10655867375920441443.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386964.P10655867375920441443

`10*a(n-1)+A000040(n+1)%10` with `a(0)=2`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A386964

/-- `10*a(n-1)+A000040(n+1)%10` -/
def P10655867375920441443.Spec : Prop :=
  ∀ n, P10655867375920441443.a n = A386964 (n + 1)

theorem P10655867375920441443.correct : P10655867375920441443.Spec := by
  intro n
  simp only [A386964, Nat.add_sub_cancel]

end A386964

/-!
# A386965: Number of permutations p of [2*n] such that there is at least one index i in [2*n-1] with p(i+1) = n + p(i).

The programs for A386965, there is no canonical definition to state claims against.
-/

/-! ## A386965.P13767053820222605654

`(n+1)!*A324361(n+1)`
-/

namespace A386965.P13767053820222605654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A324361 (n + 1)

end

end A386965.P13767053820222605654

/-! ## A386965.P17213898616165735889

`A061018(2*(n+1)²)`
-/

namespace A386965.P17213898616165735889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061018 (2 * (n + 1) ^ 2)

end

end A386965.P17213898616165735889

/-! ## A386965.P8260603580259015108

`A306461(A054552(n+1))`
-/

namespace A386965.P8260603580259015108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306461 (A054552 (n + 1)).toNat

end

end A386965.P8260603580259015108

/-! ## A386965.P1677836324041583754

`A306461(A054556(n+2))`
-/

namespace A386965.P1677836324041583754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306461 (A054556 (n + 2)).toNat

end

end A386965.P1677836324041583754

/-!
# A386971: Numbers k >= 1 such that w(k-r) + ... + w(k-1) = w(k+1) + ... + w(k+r) for some r >= 1 where w(i) is the binary weight of i (A000120).

The programs for A386971, there is no canonical definition to state claims against.
-/

/-! ## A386971.P5271210816946845283

`lt[A022175(A227277(n)), A352515(3*n+2)]`
-/

namespace A386971.P5271210816946845283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022175 (A227277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386971.P5271210816946845283

/-! ## A386971.P3174880061259520650

`lt[A214228(3*n+4), A258646(3*(n+1))]`
-/

namespace A386971.P3174880061259520650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214228 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258646 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386971.P3174880061259520650

/-! ## A386971.P11907690741339189939

`lt[A007947(A000176(n+1)), A005900(n)]`
-/

namespace A386971.P11907690741339189939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000176 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386971.P11907690741339189939

/-! ## A386971.P5022823598268366769

`lt[A029842(n), A026803(A360037(n+1))]`
-/

namespace A386971.P5022823598268366769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026803 (A360037 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386971.P5022823598268366769

/-! ## A386971.P762203429516664810

`lt[A099071(A277090(n)), A123953(n+2)]`
-/

namespace A386971.P762203429516664810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099071 (A277090 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123953 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386971.P762203429516664810

/-!
# A386972: Numbers that are the product of a semiprime and the square of another semiprime.

The programs for A386972, there is no canonical definition to state claims against.
-/

/-! ## A386972.P7957177537058029683

`A046305(lt[A270702(n+1), A137803(n+1)])`
-/

namespace A386972.P7957177537058029683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046305 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A386972.P7957177537058029683

/-!
# A386974: a(n) is the permanent of the symmetric n X n matrix M_n where M_n(j,k) = n for j = k, M_n(j,n) = n-j, M_n(n,k) = n-k, M_n(j,k) = 0 otherwise.

The programs for A386974, there is no canonical definition to state claims against.
-/

/-! ## A386974.P278865569867199232

`A000272(n)*A111910(A000124(n))`
-/

namespace A386974.P278865569867199232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n * A111910 (A000124 n).toNat

end

end A386974.P278865569867199232

/-! ## A386974.P5501494103771344962

`A000272(n)*A278880(A133263(n))`
-/

namespace A386974.P5501494103771344962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n * A278880 (A133263 n).toNat

end

end A386974.P5501494103771344962

/-!
# A386975: a(n) is the permanent of the n X n matrix M_n with M_n(j,k) = j for j <> k, M_n(j,k) = n+j for j = k.

The programs for A386975, there is no canonical definition to state claims against.
-/

/-! ## A386975.P8938745148300948789

`A108586(A375770(n+1)+A000129(n))`
-/

namespace A386975.P8938745148300948789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108586 (A375770 (n + 1) + A000129 n).toNat

end

end A386975.P8938745148300948789

/-!
# A386976: a(n) = Sum_{k=0..n} binomial(3*n+2,4*k).

The programs for A386976, the canonical program `A386976.P3572309863306736497` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386976 has offset 0).

The definition of A386976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386976.P1326629358571122750

`8^n-2^(3*n/2)*sin(3*π*n/4)`
-/

namespace A386976.P1326629358571122750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℝ) - (2 : ℝ) ^ ((3 * n : ℚ) / 2 : ℝ) * Real.sin (3 * Real.pi * (n : ℝ) / 4)

end

end A386976.P1326629358571122750

namespace A386976

/-- `8^n-2^(3*n/2)*sin(3*π*n/4)` -/
def P1326629358571122750.Spec : Prop :=
  ∀ n, P1326629358571122750.a n = (A386976 n : ℝ)

end A386976

/-! ## A386976.P3572309863306736497

`4*a(n-1)+24*a(n-2)+64*a(n-3)` with `a(0)=1, a(1)=6, a(2)=72`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A386976

/-- `4*a(n-1)+24*a(n-2)+64*a(n-3)` -/
def P3572309863306736497.Spec : Prop :=
  ∀ n, (P3572309863306736497.a n : ℤ) = A386976 n

theorem P3572309863306736497.correct : P3572309863306736497.Spec := by
  intro n
  simp only [A386976]

end A386976

/-! ## A386976.P12233933908164994200

`A038503(3*n+2)`
-/

namespace A386976.P12233933908164994200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (3 * n + 2)

end

end A386976.P12233933908164994200

namespace A386976

/-- `A038503(3*n+2)` -/
def P12233933908164994200.Spec : Prop :=
  ∀ n, P12233933908164994200.a n = A386976 n

end A386976

/-! ## A386976.P510114743986249860

`A137171(A017653(n))`
-/

namespace A386976.P510114743986249860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A017653 n).toNat

end

end A386976.P510114743986249860

namespace A386976

/-- `A137171(A017653(n))` -/
def P510114743986249860.Spec : Prop :=
  ∀ n, P510114743986249860.a n = A386976 n

end A386976

/-! ## A386976.P13489283606025602959

`A323100(A062123(n))`
-/

namespace A386976.P13489283606025602959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323100 (A062123 n).toNat

end

end A386976.P13489283606025602959

namespace A386976

/-- `A323100(A062123(n))` -/
def P13489283606025602959.Spec : Prop :=
  ∀ n, P13489283606025602959.a n = A386976 n

end A386976

/-!
# A386977: Products of 3 distinct semiprimes.

The programs for A386977, there is no canonical definition to state claims against.
-/

/-! ## A386977.P7621472516152510980

`∩[A046306(n+1), A320912(n+1)]`
-/

namespace A386977.P7621472516152510980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386977.P7621472516152510980

/-! ## A386977.P18205917255866357529

`∩[A046306(n+1), A190892(n+1)]`
-/

namespace A386977.P18205917255866357529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386977.P18205917255866357529

/-!
# A386980: Number of acute Heronian triangles with integer inradius n.

The programs for A386980, there is no canonical definition to state claims against.
-/

/-! ## A386980.P14526147135791047912

`A120062(n+1)-(A386981(n+1)+A078644(n+1))`
-/

namespace A386980.P14526147135791047912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120062 (n + 1) - (A386981 (n + 1) + A078644 (n + 1))

end

end A386980.P14526147135791047912

/-!
# A386981: Number of obtuse Heronian triangles with integer inradius n.

The programs for A386981, there is no canonical definition to state claims against.
-/

/-! ## A386981.P11587558739837153944

`A120062(n+1)-(A386980(n+1)+A078644(n+1))`
-/

namespace A386981.P11587558739837153944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120062 (n + 1) - (A386980 (n + 1) + A078644 (n + 1))

end

end A386981.P11587558739837153944

/-!
# A386983: E.g.f. A(x) satisfies A(x) = exp(x^2 * (1+x)^2 * A(x)).

The programs for A386983, there is no canonical definition to state claims against.
-/

/-! ## A386983.P2648653571684323047

`A357661(n)+A326459(A000110(n))`
-/

namespace A386983.P2648653571684323047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357661 n + A326459 (A000110 n).toNat

end

end A386983.P2648653571684323047

/-! ## A386983.P17322539405209319044

`A321725(A321725(n+4))*A376476(n)`
-/

namespace A386983.P17322539405209319044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321725 (A321725 (n + 4)).toNat * A376476 n

end

end A386983.P17322539405209319044

/-!
# A386984: Number of 2-dense sublists of divisors of the n-th hexagonal number.

The programs for A386984, there is no canonical definition to state claims against.
-/

/-! ## A386984.P18335597499183148655

`A384928(A004273(n))`
-/

namespace A386984.P18335597499183148655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384928 (A004273 n).toNat

end

end A386984.P18335597499183148655

/-! ## A386984.P14991523248850372856

`A384928(lt[A055396(n+1), 2])`
-/

namespace A386984.P14991523248850372856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384928 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A386984.P14991523248850372856

/-! ## A386984.P7840832884112428199

`A384928(eq[A000034(n), A020639(n+1)])`
-/

namespace A386984.P7840832884112428199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384928 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A386984.P7840832884112428199

/-! ## A386984.P1230818741700468425

`A384928(lt[A000217(2*n), A270450(n)])`
-/

namespace A386984.P1230818741700468425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384928 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A386984.P1230818741700468425

/-! ## A386984.P3802012736604704967

`A384928(lt[n, A072345(n)])`
-/

namespace A386984.P3802012736604704967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A386984.P3802012736604704967

/-! ## A386984.P9482322518388180012

`A384928(A055086(n²))`
-/

namespace A386984.P9482322518388180012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384928 (A055086 (n ^ 2)).toNat

end

end A386984.P9482322518388180012

/-! ## A386984.P13882893947575379984

`A384928(A003056(2*n²))`
-/

namespace A386984.P13882893947575379984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384928 (A003056 (2 * n ^ 2)).toNat

end

end A386984.P13882893947575379984

/-! ## A386984.P6824177619257816433

`A237271(A000384(n)+A000038(n))`
-/

namespace A386984.P6824177619257816433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A000384 n + A000038 n).toNat

end

end A386984.P6824177619257816433

/-!
# A386991: Numbers k such that k^2 + sopfr(k)^2 is a square, where sopfr = A001414.

The programs for A386991, there is no canonical definition to state claims against.
-/

/-! ## A386991.P10251779740264504922

`A161186(A134045(n))`
-/

namespace A386991.P10251779740264504922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161186 (A134045 n).toNat

end

end A386991.P10251779740264504922

/-!
# A386992: Irregular triangle read by rows: T(n,k) is the number of nonprimes in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A386992, there is no canonical definition to state claims against.
-/

/-! ## A386992.P13806541709625291359

`A384222(n+1)-A387030(n+1)`
-/

namespace A386992.P13806541709625291359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384222 (n + 1) - A387030 (n + 1)

end

end A386992.P13806541709625291359

/-! ## A386992.P7070973703054874609

`A179752(A390494(n+1)%A174283(n+4))`
-/

namespace A386992.P7070973703054874609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (Int.tmod (A390494 (n + 1)) (A174283 (n + 4))).toNat

end

end A386992.P7070973703054874609

/-!
# A386993: Number of 2-dense sublists of divisors of the n-th squarefree number.

The programs for A386993, there is no canonical definition to state claims against.
-/

/-! ## A386993.P15748106477707806725

`A237271(record[∏{p}[n+1, #]])`
-/

namespace A386993.P15748106477707806725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A386993.P15748106477707806725

/-! ## A386993.P15752224870775257792

`A237271(A005117(n+1))`
-/

namespace A386993.P15752224870775257792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A005117 (n + 1)).toNat

end

end A386993.P15752224870775257792

/-! ## A386993.P11466404649844799840

`A237271(record[A007913(n+1)])`
-/

namespace A386993.P11466404649844799840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A386993.P11466404649844799840

/-! ## A386993.P8743781480270359027

`A237271(record[A182938(n+1)])`
-/

namespace A386993.P8743781480270359027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A386993.P8743781480270359027

/-! ## A386993.P3227509324883473945

`A237271(record[A353832(n+1)])`
-/

namespace A386993.P3227509324883473945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A386993.P3227509324883473945

/-! ## A386993.P1180280031164054670

`A237271(record[A382891(n+1)])`
-/

namespace A386993.P1180280031164054670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A386993.P1180280031164054670

/-!
# A386994: Number of 2-dense sublists of divisors of the n-th Fibonacci number.

The programs for A386994, there is no canonical definition to state claims against.
-/

/-! ## A386994.P3810220777376742179

`A237271(A353294(n+1)+A167808(n))`
-/

namespace A386994.P3810220777376742179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A353294 (n + 1) + A167808 n).toNat

end

end A386994.P3810220777376742179

/-! ## A386994.P3395860927941192264

`A237271(A324969(n+1))`
-/

namespace A386994.P3395860927941192264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A324969 (n + 1)).toNat

end

end A386994.P3395860927941192264

/-! ## A386994.P4111962835979530903

`A237271(∏{p}[A000045(n), #])`
-/

namespace A386994.P4111962835979530903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A386994.P4111962835979530903

/-! ## A386994.P16918340088888194227

`A237271(A000045(abs(1-n)+1))`
-/

namespace A386994.P16918340088888194227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A000045 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A386994.P16918340088888194227

/-! ## A386994.P17158113504349536460

`A237271(A000045(n)+floor(1/(n+1)))`
-/

namespace A386994.P17158113504349536460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A000045 n + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A386994.P17158113504349536460

/-!
# A386995: Primes p such that 2p-1 is a square and 2p+1 is also prime.

The programs for A386995, there is no canonical definition to state claims against.
-/

/-! ## A386995.P1611255435960601441

`∩[A005384(n+1), A001844(n)]`
-/

namespace A386995.P1611255435960601441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386995.P1611255435960601441

/-! ## A386995.P2988651105015371257

`∩[A103579(n+1), A001844(n)]`
-/

namespace A386995.P2988651105015371257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386995.P2988651105015371257

/-! ## A386995.P13947443958163472393

`∩[A103579(n+1), A030978(n)]`
-/

namespace A386995.P13947443958163472393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386995.P13947443958163472393

/-! ## A386995.P1693441839009842742

`∩[A103579(n+1), A104563(n)]`
-/

namespace A386995.P1693441839009842742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386995.P1693441839009842742

/-! ## A386995.P9831771780663548034

`∩[A103579(n+1), A118002(n)]`
-/

namespace A386995.P9831771780663548034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118002 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386995.P9831771780663548034

/-!
# A386998: Sum of all parts of all partitions of n with designated summands.

The programs for A386998, there is no canonical definition to state claims against.
-/

/-! ## A386998.P9420154823324502208

`n*A077285(n)`
-/

namespace A386998.P9420154823324502208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A077285 n

end

end A386998.P9420154823324502208

/-! ## A386998.P6732474505713111763

`n*A290216(A046092(n))`
-/

namespace A386998.P6732474505713111763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A290216 (A046092 n).toNat

end

end A386998.P6732474505713111763

/-! ## A386998.P1792645588497849828

`n*A196266(A000740(n+1))`
-/

namespace A386998.P1792645588497849828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A196266 (A000740 (n + 1)).toNat

end

end A386998.P1792645588497849828

/-!
# A386999: Positive 2-dense triangular numbers.

The programs for A386999, there is no canonical definition to state claims against.
-/

/-! ## A386999.P9867992498557437457

`∩[A174973(n+1), A000217(n)]`
-/

namespace A386999.P9867992498557437457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386999.P9867992498557437457

/-! ## A386999.P2495077614756356041

`filter[A000217(n+1), A365429(#)]`
-/

namespace A386999.P2495077614756356041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P2495077614756356041

/-! ## A386999.P17932525235507950690

`filter[A272549(n+1), A365429(#)]`
-/

namespace A386999.P17932525235507950690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P17932525235507950690

/-! ## A386999.P11779613635318428681

`filter[A161680(n+2), A365429(#)]`
-/

namespace A386999.P11779613635318428681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P11779613635318428681

/-! ## A386999.P12556586233118630695

`filter[A179865(n+2), A365429(#)]`
-/

namespace A386999.P12556586233118630695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P12556586233118630695

/-! ## A386999.P9804837664706999258

`filter[A001972(2*n), A365429(#)]`
-/

namespace A386999.P9804837664706999258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P9804837664706999258

/-! ## A386999.P761761193066262595

`filter[A008795(2*n), A365429(#)]`
-/

namespace A386999.P761761193066262595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P761761193066262595

/-! ## A386999.P6143045588885953904

`filter[A008805(2*n), A365429(#)]`
-/

namespace A386999.P6143045588885953904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P6143045588885953904

/-! ## A386999.P5111986148023737044

`filter[A260220(2*n), A365429(#)]`
-/

namespace A386999.P5111986148023737044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260220 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P5111986148023737044

/-! ## A386999.P11104896705992659270

`filter[A267322(3*n), A365429(#)]`
-/

namespace A386999.P11104896705992659270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267322 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P11104896705992659270

/-! ## A386999.P2984896347067146081

`filter[A061727(2*n+1), A365429(#)]`
-/

namespace A386999.P2984896347067146081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061727 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P2984896347067146081

/-! ## A386999.P254132466644678792

`filter[A117142(2*n+1), A365429(#)]`
-/

namespace A386999.P254132466644678792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117142 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P254132466644678792

/-! ## A386999.P9248794977241037524

`filter[A134519(2*n+1), A365429(#)]`
-/

namespace A386999.P9248794977241037524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P9248794977241037524

/-! ## A386999.P6180628034762394419

`filter[A209268(2*n+1), A365429(#)]`
-/

namespace A386999.P6180628034762394419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P6180628034762394419

/-! ## A386999.P14251066595043833996

`filter[A246274(2*n+1), A365429(#)]`
-/

namespace A386999.P14251066595043833996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P14251066595043833996

/-! ## A386999.P7562270169679715706

`filter[A250252(2*n+1), A365429(#)]`
-/

namespace A386999.P7562270169679715706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250252 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P7562270169679715706

/-! ## A386999.P16714655393455574502

`filter[A286388(2*(n+1)), A365429(#)]`
-/

namespace A386999.P16714655393455574502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286388 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P16714655393455574502

/-! ## A386999.P15757755736421218258

`filter[A333616(2*n+1), A365429(#)]`
-/

namespace A386999.P15757755736421218258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333616 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A386999.P15757755736421218258

