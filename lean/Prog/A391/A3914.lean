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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A391401: Primes obtained by iterating the map prime(j) -> prime(j + prime(j) + 1) starting at 2.

The programs for A391401, there is no canonical definition to state claims against.
-/

/-! ## A391401.P4632053562496201141

`Δ[A391616(n+1)]-1`
-/

namespace A391401.P4632053562496201141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A391401.P4632053562496201141

/-! ## A391401.P9329513874911451939

`A057428(n+1)+Δ[A391616(n+1)]`
-/

namespace A391401.P9329513874911451939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + (f1 (n + 1) - f1 n)

end

end A391401.P9329513874911451939

/-! ## A391401.P14919246590176390247

`A375389(n+1)+Δ[A391616(n+1)]`
-/

namespace A391401.P14919246590176390247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375389 (n + 1) + (f1 (n + 1) - f1 n)

end

end A391401.P14919246590176390247

/-! ## A391401.P2485735287728458172

`A391616(n+2)-(A391616(n+1)+1)`
-/

namespace A391401.P2485735287728458172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391616 (n + 2) - (A391616 (n + 1) + 1)

end

end A391401.P2485735287728458172

/-!
# A391403: Triangle read by rows: T(n,k) is k-th entry of the gamma-vector of the n-dimensional cyclohedron, 0 <= k <= floor(n/2).

The programs for A391403, the canonical program `A391403.P4218804131166072041` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391403 has offset 0).

The definition of A391403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391403.P4218804131166072041

`A011973(n)*A034868(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A391403

/-- `A011973(n)*A034868(n)` -/
def P4218804131166072041.Spec : Prop :=
  ∀ n, P4218804131166072041.a n = A391403 n

theorem P4218804131166072041.correct : P4218804131166072041.Spec := by
  intro n
  simp only [A391403]

end A391403

/-! ## A391403.P13051210383320863888

`A055151(n)*A122197(1+n)`
-/

namespace A391403.P13051210383320863888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055151 n * A122197 (1 + n)

end

end A391403.P13051210383320863888

namespace A391403

/-- `A055151(n)*A122197(1+n)` -/
def P13051210383320863888.Spec : Prop :=
  ∀ n, P13051210383320863888.a n = A391403 n

end A391403

/-! ## A391403.P15702734486080192188

`C(A000267(n)-1, A055087(n))*A011973(n)`
-/

namespace A391403.P15702734486080192188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000267 n - 1).toNat (A055087 n).toNat : ℤ) * A011973 n

end

end A391403.P15702734486080192188

namespace A391403

/-- `C(A000267(n)-1, A055087(n))*A011973(n)` -/
def P15702734486080192188.Spec : Prop :=
  ∀ n, P15702734486080192188.a n = A391403 n

end A391403

/-! ## A391403.P7591815164782305704

`A089627(lt[0, A089627(n)])`
-/

namespace A391403.P7591815164782305704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A391403.P7591815164782305704

namespace A391403

/-- `A089627(lt[0, A089627(n)])` -/
def P7591815164782305704.Spec : Prop :=
  ∀ n, P7591815164782305704.a n = A391403 n

end A391403

/-! ## A391403.P832624420806872170

`A089627(eq[1, A306680(n)])`
-/

namespace A391403.P832624420806872170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A391403.P832624420806872170

namespace A391403

/-- `A089627(eq[1, A306680(n)])` -/
def P832624420806872170.Spec : Prop :=
  ∀ n, P832624420806872170.a n = A391403 n

end A391403

/-! ## A391403.P8895145785103209239

`A063007(A091018(n))`
-/

namespace A391403.P8895145785103209239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (A091018 n).toNat

end

end A391403.P8895145785103209239

namespace A391403

/-- `A063007(A091018(n))` -/
def P8895145785103209239.Spec : Prop :=
  ∀ n, P8895145785103209239.a n = A391403 n

end A391403

/-! ## A391403.P13026865142609697314

`A007318(lt[A388146(n), 2])*A011973(n)`
-/

namespace A391403.P13026865142609697314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388146 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) * A011973 n

end

end A391403.P13026865142609697314

namespace A391403

/-- `A007318(lt[A388146(n), 2])*A011973(n)` -/
def P13026865142609697314.Spec : Prop :=
  ∀ n, P13026865142609697314.a n = A391403 n

end A391403

/-!
# A391404: Expansion of g^3/(1 + x*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391404, there is no canonical definition to state claims against.
-/

/-! ## A391404.P13655766206661375636

`A023053(n+1)+A023053(n)`
-/

namespace A391404.P13655766206661375636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023053 (n + 1) + A023053 n

end

end A391404.P13655766206661375636

/-! ## A391404.P5762686145158526928

`A006013(n+1)-A391294(n+1)`
-/

namespace A391404.P5762686145158526928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 (n + 1) - A391294 (n + 1)

end

end A391404.P5762686145158526928

/-! ## A391404.P18426894526953821799

`∩[A006013(n)-A391294(n), A210434(2*n)]`
-/

namespace A391404.P18426894526953821799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n - A391294 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210434 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391404.P18426894526953821799

/-!
# A391405: Expansion of g^3/(1 + x*g)^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391405, there is no canonical definition to state claims against.
-/

/-! ## A391405.P4899590836925814864

`A369297(n)-A336356(A088037(n+4))`
-/

namespace A391405.P4899590836925814864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369297 n - A336356 (A088037 (n + 4)).toNat

end

end A391405.P4899590836925814864

/-! ## A391405.P3881662514613453835

`A369297(n)-A283316(A003595(3*(n+1)))`
-/

namespace A391405.P3881662514613453835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369297 n - A283316 (A003595 (3 * (n + 1))).toNat

end

end A391405.P3881662514613453835

/-!
# A391406: Expansion of g^4/(1 + x*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391406, there is no canonical definition to state claims against.
-/

/-! ## A391406.P11451386815575740237

`A391294(n+1)-A023053(n+1)`
-/

namespace A391406.P11451386815575740237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391294 (n + 1) - A023053 (n + 1)

end

end A391406.P11451386815575740237

/-! ## A391406.P6669599239504444178

`A001764(n+2)-A391404(n+1)`
-/

namespace A391406.P6669599239504444178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 2) - A391404 (n + 1)

end

end A391406.P6669599239504444178

/-!
# A391407: Expansion of g^4/(1 + x*g)^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391407, there is no canonical definition to state claims against.
-/

/-! ## A391407.P3810194270807707724

`∑{#}[n, A391294(#)*A391294(n-#)]`
-/

namespace A391407.P3810194270807707724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A391294 k * A391294 (n - k)

end

end A391407.P3810194270807707724

/-! ## A391407.P16482796998296240495

`A391404(n+1)-A391405(n+1)`
-/

namespace A391407.P16482796998296240495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391404 (n + 1) - A391405 (n + 1)

end

end A391407.P16482796998296240495

/-!
# A391408: Expansion of g^5/(1 + x*g)^2, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391408, the canonical program `A391408.P11681134221795341607` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391408 has offset 0).

The definition of A391408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391408.P11681134221795341607

`1/(n+5)*∑{#}[n, (-1)^#*(#+1)*(#+5)*C(2*n-#+4, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391408

/-- `1/(n+5)*∑{#}[n, (-1)^#*(#+1)*(#+5)*C(2*n-#+4, n-#)]` -/
def P11681134221795341607.Spec : Prop :=
  ∀ n, P11681134221795341607.a n = (A391408 n : ℚ)

end A391408

/-! ## A391408.P396316861093903294

`A114495(n+3)-A389115(n+1)`
-/

namespace A391408.P396316861093903294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114495 (n + 3) - A389115 (n + 1)

end

end A391408.P396316861093903294

namespace A391408

/-- `A114495(n+3)-A389115(n+1)` -/
def P396316861093903294.Spec : Prop :=
  ∀ n, P396316861093903294.a n = A391408 n

end A391408

/-! ## A391408.P6205149184971442858

`A389115(n+2)-A000958(n+3)`
-/

namespace A391408.P6205149184971442858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389115 (n + 2) - A000958 (n + 3)

end

end A391408.P6205149184971442858

namespace A391408

/-- `A389115(n+2)-A000958(n+3)` -/
def P6205149184971442858.Spec : Prop :=
  ∀ n, P6205149184971442858.a n = A391408 n

end A391408

/-!
# A391411: First of 3 consecutive primes p1 < p2 < p3 such that the pattern of differences [p2-p1, p3-p2] does not occur earlier.

The programs for A391411, there is no canonical definition to state claims against.
-/

/-! ## A391411.P10102066925089381961

`A151799(A151799(A391413(n+1)))`
-/

namespace A391411.P10102066925089381961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A151799 (A391413 (n + 1)).toNat).toNat

end

end A391411.P10102066925089381961

/-! ## A391411.P2813887974690250625

`A033302(A391413(1+n))`
-/

namespace A391411.P2813887974690250625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A391413 (1 + n)).toNat

end

end A391411.P2813887974690250625

/-! ## A391411.P7878492248733071339

`A064989(A391412(n+1))`
-/

namespace A391411.P7878492248733071339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A391412 (n + 1)).toNat

end

end A391411.P7878492248733071339

/-! ## A391411.P12698290285779909497

`A319627(A308188(n+1)*A391412(n+1))`
-/

namespace A391411.P12698290285779909497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A308188 (n + 1) * A391412 (n + 1)).toNat

end

end A391411.P12698290285779909497

/-! ## A391411.P16854217118417395523

`A356164(A057979(2*n)*A391412(n+1))`
-/

namespace A391411.P16854217118417395523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356164 (A057979 (2 * n) * A391412 (n + 1)).toNat

end

end A391411.P16854217118417395523

/-! ## A391411.P4503579615819132787

`A319627(A078572(3*(n+1))*A391412(n+1))`
-/

namespace A391411.P4503579615819132787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A078572 (3 * (n + 1)) * A391412 (n + 1)).toNat

end

end A391411.P4503579615819132787

/-! ## A391411.P15259980539807489085

`A356164(A051064(3*n+1)*A391412(n+1))`
-/

namespace A391411.P15259980539807489085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356164 (A051064 (3 * n + 1) * A391412 (n + 1)).toNat

end

end A391411.P15259980539807489085

/-! ## A391411.P12727809479511262190

`A319627(A391412(n+1)+A007814(2*n+5))`
-/

namespace A391411.P12727809479511262190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A391412 (n + 1) + A007814 (2 * n + 5)).toNat

end

end A391411.P12727809479511262190

/-!
# A391412: Middle of 3 consecutive primes p1 < p2 < p3 such that the pattern of differences [p2-p1, p3-p2] does not occur earlier.

The programs for A391412, there is no canonical definition to state claims against.
-/

/-! ## A391412.P5637860247036269226

`A151800(A391411(n+1))`
-/

namespace A391412.P5637860247036269226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A391411 (n + 1)).toNat

end

end A391412.P5637860247036269226

/-! ## A391412.P3600577416553063934

`A003961(A391411(1+n))`
-/

namespace A391412.P3600577416553063934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A391411 (1 + n)).toNat

end

end A391412.P3600577416553063934

/-! ## A391412.P13597851226684437573

`A064989(A391413(n+1))`
-/

namespace A391412.P13597851226684437573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A391413 (n + 1)).toNat

end

end A391412.P13597851226684437573

/-! ## A391412.P13629925729954751573

`A250469(xor(xor(A391411(n+1), n), n))`
-/

namespace A391412.P13629925729954751573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (Int.xor (Int.xor (A391411 (n + 1)) (n : ℤ)) (n : ℤ)).toNat

end

end A391412.P13629925729954751573

/-! ## A391412.P4076176203283258682

`A094549(A391411(n+1))`
-/

namespace A391412.P4076176203283258682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094549 (A391411 (n + 1)).toNat

end

end A391412.P4076176203283258682

/-!
# A391413: Last of 3 consecutive primes p1 < p2 < p3 such that the pattern of differences [p2-p1, p3-p2] does not occur earlier.

The programs for A391413, there is no canonical definition to state claims against.
-/

/-! ## A391413.P18007989293045005912

`A151800(A391412(n+1))`
-/

namespace A391413.P18007989293045005912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A391412 (n + 1)).toNat

end

end A391413.P18007989293045005912

/-! ## A391413.P1941419015131449454

`A151800(A151800(A391411(n+1)))`
-/

namespace A391413.P1941419015131449454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A391411 (n + 1)).toNat).toNat

end

end A391413.P1941419015131449454

/-! ## A391413.P1221435540739845106

`A045966(A391411(1+n))`
-/

namespace A391413.P1221435540739845106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A391411 (1 + n)).toNat

end

end A391413.P1221435540739845106

/-! ## A391413.P8852019475801882219

`A003961(A391412(n+1))`
-/

namespace A391413.P8852019475801882219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A391412 (n + 1)).toNat

end

end A391413.P8852019475801882219

/-! ## A391413.P16375744813472697587

`A101300(A391412(n+1)-1)`
-/

namespace A391413.P16375744813472697587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (A391412 (n + 1) - 1).toNat

end

end A391413.P16375744813472697587

/-! ## A391413.P4478043520466780364

`A101300(xor(1, A391412(n+1)))`
-/

namespace A391413.P4478043520466780364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (Int.xor 1 (A391412 (n + 1))).toNat

end

end A391413.P4478043520466780364

/-! ## A391413.P16543193321161088668

`A007918(A391412(n+1)+A001221(2*n+5))`
-/

namespace A391413.P16543193321161088668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A391412 (n + 1) + A001221 (2 * n + 5)).toNat

end

end A391413.P16543193321161088668

/-!
# A391414: a(n) is the median of the set of the distinct values of (n-1)^n, (n-1)^(n+1), n^(n-1), n^(n+1), (n+1)^(n-1), (n+1)^n.

The programs for A391414, there is no canonical definition to state claims against.
-/

/-! ## A391414.P14604331981176963343

`A252463(A051489(n)+A019590(n+1))`
-/

namespace A391414.P14604331981176963343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A051489 n + A019590 (n + 1)).toNat

end

end A391414.P14604331981176963343

/-!
# A391415: Nonsquarefree numbers that are neither cubefree nor perfect powers.

The programs for A391415, the canonical program `A391415.P5836961313597618473` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391415 has offset 1).

The definition of A391415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9902 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391415.P7874553702006131909

`∪[A052486(n+1), A391319(n+1)]`
-/

namespace A391415.P7874553702006131909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P7874553702006131909

namespace A391415

/-- `∪[A052486(n+1), A391319(n+1)]` -/
def P7874553702006131909.Spec : Prop :=
  ∀ n, (P7874553702006131909.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P1945101186650512371

`∪[A389753(n+1), A391319(n+1)]`
-/

namespace A391415.P1945101186650512371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P1945101186650512371

namespace A391415

/-- `∪[A389753(n+1), A391319(n+1)]` -/
def P1945101186650512371.Spec : Prop :=
  ∀ n, (P1945101186650512371.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P5836961313597618473

`record[A052410(A378767(n+1))]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A391415

/-- `record[A052410(A378767(n+1))]` -/
def P5836961313597618473.Spec : Prop :=
  ∀ n, P5836961313597618473.a n = A391415 (n + 1)

theorem P5836961313597618473.correct : P5836961313597618473.Spec := by
  intro n
  simp only [A391415, Nat.add_sub_cancel]

end A391415

/-! ## A391415.P4551646136943139867

`∩[A046099(n+1), A303946(n+1)]`
-/

namespace A391415.P4551646136943139867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P4551646136943139867

namespace A391415

/-- `∩[A046099(n+1), A303946(n+1)]` -/
def P4551646136943139867.Spec : Prop :=
  ∀ n, (P4551646136943139867.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P5426962512388656081

`∩[A074451(n+1), A303946(n+1)]`
-/

namespace A391415.P5426962512388656081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P5426962512388656081

namespace A391415

/-- `∩[A074451(n+1), A303946(n+1)]` -/
def P5426962512388656081.Spec : Prop :=
  ∀ n, (P5426962512388656081.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P7075548790676976514

`∩[A303946(n+1), A378767(n+1)]`
-/

namespace A391415.P7075548790676976514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P7075548790676976514

namespace A391415

/-- `∩[A303946(n+1), A378767(n+1)]` -/
def P7075548790676976514.Spec : Prop :=
  ∀ n, (P7075548790676976514.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P2192813620822660890

`∩[A046099(n+1), A106543(n+1)]`
-/

namespace A391415.P2192813620822660890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P2192813620822660890

namespace A391415

/-- `∩[A046099(n+1), A106543(n+1)]` -/
def P2192813620822660890.Spec : Prop :=
  ∀ n, (P2192813620822660890.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P4791924795315611850

`∩[A074451(n+1), A106543(n+1)]`
-/

namespace A391415.P4791924795315611850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P4791924795315611850

namespace A391415

/-- `∩[A074451(n+1), A106543(n+1)]` -/
def P4791924795315611850.Spec : Prop :=
  ∀ n, (P4791924795315611850.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P1946538801813591871

`∩[A106543(n+1), A378767(n+1)]`
-/

namespace A391415.P1946538801813591871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P1946538801813591871

namespace A391415

/-- `∩[A106543(n+1), A378767(n+1)]` -/
def P1946538801813591871.Spec : Prop :=
  ∀ n, (P1946538801813591871.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P3679864646192939857

`∩[A007916(n+1), A046099(n+1)]`
-/

namespace A391415.P3679864646192939857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P3679864646192939857

namespace A391415

/-- `∩[A007916(n+1), A046099(n+1)]` -/
def P3679864646192939857.Spec : Prop :=
  ∀ n, (P3679864646192939857.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P13429412011674433463

`∩[A007916(n+1), A074451(n+1)]`
-/

namespace A391415.P13429412011674433463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P13429412011674433463

namespace A391415

/-- `∩[A007916(n+1), A074451(n+1)]` -/
def P13429412011674433463.Spec : Prop :=
  ∀ n, (P13429412011674433463.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P8647271548378980220

`∩[A007916(n+1), A378767(n+1)]`
-/

namespace A391415.P8647271548378980220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P8647271548378980220

namespace A391415

/-- `∩[A007916(n+1), A378767(n+1)]` -/
def P8647271548378980220.Spec : Prop :=
  ∀ n, (P8647271548378980220.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P5291090864922182969

`∩[A046099(n+1), A175082(n+1)]`
-/

namespace A391415.P5291090864922182969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P5291090864922182969

namespace A391415

/-- `∩[A046099(n+1), A175082(n+1)]` -/
def P5291090864922182969.Spec : Prop :=
  ∀ n, (P5291090864922182969.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P3217772056368639328

`∩[A074451(n+1), A175082(n+1)]`
-/

namespace A391415.P3217772056368639328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P3217772056368639328

namespace A391415

/-- `∩[A074451(n+1), A175082(n+1)]` -/
def P3217772056368639328.Spec : Prop :=
  ∀ n, (P3217772056368639328.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P17166403582910876060

`∩[A175082(n+1), A378767(n+1)]`
-/

namespace A391415.P17166403582910876060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391415.P17166403582910876060

namespace A391415

/-- `∩[A175082(n+1), A378767(n+1)]` -/
def P17166403582910876060.Spec : Prop :=
  ∀ n, (P17166403582910876060.a n : ℤ) = A391415 (n + 1)

end A391415

/-! ## A391415.P322473854815395826

`filter[A046099(n+1), A132350(#)]`
-/

namespace A391415.P322473854815395826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A391415.P322473854815395826

namespace A391415

/-- `filter[A046099(n+1), A132350(#)]` -/
def P322473854815395826.Spec : Prop :=
  ∀ n, P322473854815395826.a n = A391415 (n + 1)

end A391415

/-! ## A391415.P14298612355374677922

`filter[A074451(n+1), A132350(#)]`
-/

namespace A391415.P14298612355374677922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A391415.P14298612355374677922

namespace A391415

/-- `filter[A074451(n+1), A132350(#)]` -/
def P14298612355374677922.Spec : Prop :=
  ∀ n, P14298612355374677922.a n = A391415 (n + 1)

end A391415

/-! ## A391415.P17627024866298111968

`filter[A378767(n+1), A132350(#)]`
-/

namespace A391415.P17627024866298111968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A391415.P17627024866298111968

namespace A391415

/-- `filter[A378767(n+1), A132350(#)]` -/
def P17627024866298111968.Spec : Prop :=
  ∀ n, P17627024866298111968.a n = A391415 (n + 1)

end A391415

/-!
# A391416: Perfect powers that are neither prime powers nor cubefree.

The programs for A391416, there is no canonical definition to state claims against.
-/

/-! ## A391416.P17622608243429588864

`∪[A366854(n+1), A387255(n+1)]`
-/

namespace A391416.P17622608243429588864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P17622608243429588864

/-! ## A391416.P9588165359947633260

`∪[A366854(n+1), A388304(n+1)]`
-/

namespace A391416.P9588165359947633260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P9588165359947633260

/-! ## A391416.P17600347242377158235

`∪[A380857(n+1), A387255(n+1)]`
-/

namespace A391416.P17600347242377158235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P17600347242377158235

/-! ## A391416.P15132514598793491236

`∪[A386762(n+1), A387255(n+1)]`
-/

namespace A391416.P15132514598793491236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P15132514598793491236

/-! ## A391416.P5007479342624941076

`∪[A387255(n+1), A389864(n+1)]`
-/

namespace A391416.P5007479342624941076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P5007479342624941076

/-! ## A391416.P12794448886574544673

`∪[A387255(n+1), A389947(n+1)]`
-/

namespace A391416.P12794448886574544673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P12794448886574544673

/-! ## A391416.P1965514330987932962

`∪[A387255(n+1), A390379(n+1)]`
-/

namespace A391416.P1965514330987932962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P1965514330987932962

/-! ## A391416.P15739479893706574434

`∪[A388304(n+1), A389864(n+1)]`
-/

namespace A391416.P15739479893706574434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P15739479893706574434

/-! ## A391416.P12835162687023429423

`∩[A001597(n+1), A372404(n+1)]`
-/

namespace A391416.P12835162687023429423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P12835162687023429423

/-! ## A391416.P2823431288494355461

`∩[A131605(n+1), A372404(n+1)]`
-/

namespace A391416.P2823431288494355461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P2823431288494355461

/-! ## A391416.P7402887914047329079

`∩[A372404(n+1), A377702(n+1)]`
-/

namespace A391416.P7402887914047329079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P7402887914047329079

/-! ## A391416.P17778206226324338575

`∩[A131605(n+1), A320966(n+1)]`
-/

namespace A391416.P17778206226324338575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P17778206226324338575

/-! ## A391416.P2365609149037927042

`∩[A001597(n+1), A389528(n+1)]`
-/

namespace A391416.P2365609149037927042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P2365609149037927042

/-! ## A391416.P13875801303278354021

`∩[A131605(n+1), A389528(n+1)]`
-/

namespace A391416.P13875801303278354021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P13875801303278354021

/-! ## A391416.P7586755290730232280

`∩[A377702(n+1), A389528(n+1)]`
-/

namespace A391416.P7586755290730232280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P7586755290730232280

/-! ## A391416.P18130548154945902853

`∩[A059172(n+1), A131605(n+1)]`
-/

namespace A391416.P18130548154945902853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P18130548154945902853

/-! ## A391416.P927236226666538484

`∪[A366854(n+1), A390905(n+1)]`
-/

namespace A391416.P927236226666538484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P927236226666538484

/-! ## A391416.P6442598731311222429

`∪[A380857(n+1), A390905(n+1)]`
-/

namespace A391416.P6442598731311222429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P6442598731311222429

/-! ## A391416.P17301888362273264079

`∪[A389864(n+1), A390905(n+1)]`
-/

namespace A391416.P17301888362273264079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391416.P17301888362273264079

/-! ## A391416.P3824949577520629765

`filter[A131605(n+1), A380439(#)]`
-/

namespace A391416.P3824949577520629765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A391416.P3824949577520629765

/-!
# A391417: Discriminants of real quadratic fields whose class group is isomorphic to (C_2)^r, r >= 0.

The programs for A391417, there is no canonical definition to state claims against.
-/

/-! ## A391417.P303027320199823924

`filter[A391419(1+n), A290098(#)]`
-/

namespace A391417.P303027320199823924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391419 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A391417.P303027320199823924

/-! ## A391417.P10876563485126126445

`∩[A003658(n+1), A391419(n+1)]`
-/

namespace A391417.P10876563485126126445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391417.P10876563485126126445

/-! ## A391417.P4341563374723259768

`∪[A094619(n+1)%A218158(n+1), A003656(n+1)]`
-/

namespace A391417.P4341563374723259768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094619 (n + 1)) (A218158 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391417.P4341563374723259768

/-! ## A391417.P5562533809978981835

`∪[A003656(n+1), A094619(n+1)]%A081363(2*n+5)`
-/

namespace A391417.P5562533809978981835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A081363 (2 * n + 5))

end

end A391417.P5562533809978981835

/-! ## A391417.P10667270866130963567

`∪[A003656(n+1)%A218158(n+1), A094619(n+1)]`
-/

namespace A391417.P10667270866130963567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003656 (n + 1)) (A218158 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391417.P10667270866130963567

/-!
# A391418: Class number of order of real quadratic fields with discriminant D = A079896(n).

The programs for A391418, there is no canonical definition to state claims against.
-/

/-! ## A391418.P2639828941845405772

`and(A116903(n), A391438(n+1))`
-/

namespace A391418.P2639828941845405772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116903 n) (A391438 (n + 1))

end

end A391418.P2639828941845405772

/-! ## A391418.P6191965452241237519

`gcd(A335646(n+3), A391438(n+1))`
-/

namespace A391418.P6191965452241237519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A335646 (n + 3)) (A391438 (n + 1))

end

end A391418.P6191965452241237519

/-! ## A391418.P2770788603801793446

`A169695(A241956(n+1)*A391439(n+1))`
-/

namespace A391418.P2770788603801793446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A241956 (n + 1) * A391439 (n + 1)).toNat

end

end A391418.P2770788603801793446

/-! ## A391418.P10955706543564356754

`A014963(A160412(n+3))*A391438(n+1)`
-/

namespace A391418.P10955706543564356754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A160412 (n + 3)).toNat * A391438 (n + 1)

end

end A391418.P10955706543564356754

/-! ## A391418.P10089042930644045812

`A000079(A391439(n+1)^A379842(n+1))`
-/

namespace A391418.P10089042930644045812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.roundAway ((A391439 (n + 1) : ℚ) ^ (A379842 (n + 1) : ℤ))).toNat

end

end A391418.P10089042930644045812

/-! ## A391418.P56210743744502157

`A169695(A241956(n+1)^A391439(n+1))`
-/

namespace A391418.P56210743744502157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (SequenceMachineLib.roundAway ((A241956 (n + 1) : ℚ) ^ (A391439 (n + 1) : ℤ))).toNat

end

end A391418.P56210743744502157

/-! ## A391418.P4895548878325406972

`A117116(A391439(n+1)^A323188(n+1))`
-/

namespace A391418.P4895548878325406972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117116 (SequenceMachineLib.roundAway ((A391439 (n + 1) : ℚ) ^ (A323188 (n + 1) : ℤ))).toNat

end

end A391418.P4895548878325406972

/-! ## A391418.P13924910243539218396

`A150644(A391439(n+1)^A323188(n+1))`
-/

namespace A391418.P13924910243539218396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150644 (SequenceMachineLib.roundAway ((A391439 (n + 1) : ℚ) ^ (A323188 (n + 1) : ℤ))).toNat

end

end A391418.P13924910243539218396

/-! ## A391418.P5517581831929295965

`A169695(A215417(3*(n+1))*A391439(n+1))`
-/

namespace A391418.P5517581831929295965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A215417 (3 * (n + 1)) * A391439 (n + 1)).toNat

end

end A391418.P5517581831929295965

/-! ## A391418.P13322550412548267335

`A391438(C(A048993(n), A186393(n+1))+n+1)`
-/

namespace A391418.P13322550412548267335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (Nat.choose (A048993 n).toNat (A186393 (n + 1)).toNat + n + 1)

end

end A391418.P13322550412548267335

/-!
# A391420: Discriminants of real quadratic fields with form class number 2.

The programs for A391420, there is no canonical definition to state claims against.
-/

/-! ## A391420.P2896535912222689720

`filter[A391424(1+n), A359828(#)]`
-/

namespace A391420.P2896535912222689720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A391420.P2896535912222689720

/-! ## A391420.P7104025794337085716

`filter[A391424(1+n), A290098(#)]`
-/

namespace A391420.P7104025794337085716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A391420.P7104025794337085716

/-! ## A391420.P11961755241629075662

`filter[A391422(3+n), A359828(#)]`
-/

namespace A391420.P11961755241629075662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A391420.P11961755241629075662

/-! ## A391420.P2815566751579300717

`∩[A391422(n+1), A391424(n+1)]`
-/

namespace A391420.P2815566751579300717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P2815566751579300717

/-! ## A391420.P2902202337408260279

`∩[A391417(n+1), A391424(n+1)]`
-/

namespace A391420.P2902202337408260279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P2902202337408260279

/-! ## A391420.P17151226714687013834

`∩[A072902(n+1), A391424(n+1)]`
-/

namespace A391420.P17151226714687013834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P17151226714687013834

/-! ## A391420.P6487909653757548470

`∩[A003658(n+1), A391424(n+1)]`
-/

namespace A391420.P6487909653757548470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P6487909653757548470

/-! ## A391420.P8951321434199452846

`∩[A289558(n+1), A391422(n+1)]`
-/

namespace A391420.P8951321434199452846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P8951321434199452846

/-! ## A391420.P5023911966437559924

`∩[A084227(n+1), A391422(n+1)]`
-/

namespace A391420.P5023911966437559924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P5023911966437559924

/-! ## A391420.P966590862975886269

`∩[A007774(n+1), A391422(n+1)]`
-/

namespace A391420.P966590862975886269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P966590862975886269

/-! ## A391420.P12593903165774054458

`∩[A267114(n+1), A391422(n+1)]`
-/

namespace A391420.P12593903165774054458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391420.P12593903165774054458

/-! ## A391420.P12848728797653530182

`filter[A391422(n+1), A215480(#)]`
-/

namespace A391420.P12848728797653530182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A391420.P12848728797653530182

/-!
# A391421: Discriminants of real quadratic fields with form class number 3.

The programs for A391421, there is no canonical definition to state claims against.
-/

/-! ## A391421.P8372939516769869944

`∩[A350165(n+1), A391425(n+1)]`
-/

namespace A391421.P8372939516769869944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P8372939516769869944

/-! ## A391421.P14181346454156706874

`p?[A391425(n+1)]`
-/

namespace A391421.P14181346454156706874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A391421.P14181346454156706874

/-! ## A391421.P511667529968104161

`∩[A342368(n+1), A391425(n+1)]`
-/

namespace A391421.P511667529968104161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P511667529968104161

/-! ## A391421.P18217662604551478288

`∩[A029703(n+1), A350165(n+1)]`
-/

namespace A391421.P18217662604551478288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P18217662604551478288

/-! ## A391421.P14097882905747542783

`∩[A029703(n+1), A391425(n+1)]`
-/

namespace A391421.P14097882905747542783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P14097882905747542783

/-! ## A391421.P15671869876088690975

`∩[A008846(n+1), A029703(n+1)]`
-/

namespace A391421.P15671869876088690975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P15671869876088690975

/-! ## A391421.P5830836020744606848

`p?[A344409(n+1)]`
-/

namespace A391421.P5830836020744606848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A391421.P5830836020744606848

/-! ## A391421.P15644989234815287364

`∩[A008846(n+1), A344409(n+1)]`
-/

namespace A391421.P15644989234815287364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P15644989234815287364

/-! ## A391421.P10926297414497667475

`∩[A344409(n+1), A350165(n+1)]`
-/

namespace A391421.P10926297414497667475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P10926297414497667475

/-! ## A391421.P14234500031306731925

`∩[A029703(n+1), A191218(n+1)]`
-/

namespace A391421.P14234500031306731925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P14234500031306731925

/-! ## A391421.P3421449611645941119

`∩[A191218(n+1), A391425(n+1)]`
-/

namespace A391421.P3421449611645941119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P3421449611645941119

/-! ## A391421.P14633951796728494723

`∩[A002144(n+1), A029703(n+1)]`
-/

namespace A391421.P14633951796728494723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P14633951796728494723

/-! ## A391421.P11655699058861999048

`∩[A002313(n+1), A029703(n+1)]`
-/

namespace A391421.P11655699058861999048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P11655699058861999048

/-! ## A391421.P13352977197743650306

`∩[A029703(n+1), A280084(n+1)]`
-/

namespace A391421.P13352977197743650306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P13352977197743650306

/-! ## A391421.P14969722979698477476

`∩[A002144(n+1), A344409(n+1)]`
-/

namespace A391421.P14969722979698477476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P14969722979698477476

/-! ## A391421.P7473095917838253025

`∩[A002313(n+1), A344409(n+1)]`
-/

namespace A391421.P7473095917838253025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P7473095917838253025

/-! ## A391421.P14226710033109717450

`∩[A029703(n+1), A055025(n+1)]`
-/

namespace A391421.P14226710033109717450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P14226710033109717450

/-! ## A391421.P4260276997699662478

`∩[A029703(n+1), A120960(n+1)]`
-/

namespace A391421.P4260276997699662478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P4260276997699662478

/-! ## A391421.P10179510754945638777

`∩[A029703(n+1), A085759(n+1)]`
-/

namespace A391421.P10179510754945638777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P10179510754945638777

/-! ## A391421.P243394099353635199

`∩[A029703(n+1), A372953(n+1)]`
-/

namespace A391421.P243394099353635199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391421.P243394099353635199

/-!
# A391422: Discriminants of real quadratic fields with 1 class per genus.

The programs for A391422, there is no canonical definition to state claims against.
-/

/-! ## A391422.P3356657379389798980

`filter[A390079(1+n), A290098(#)]`
-/

namespace A391422.P3356657379389798980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390079 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A391422.P3356657379389798980

/-! ## A391422.P16271827165374413184

`∩[A003658(n+1), A390079(n+1)]`
-/

namespace A391422.P16271827165374413184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391422.P16271827165374413184

/-! ## A391422.P3027927320200066938

`∩[A390079(n+1), A391417(n+1)]`
-/

namespace A391422.P3027927320200066938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391422.P3027927320200066938

/-! ## A391422.P11154252082516843056

`filter[A372519(n+2), A290098(#)]`
-/

namespace A391422.P11154252082516843056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372519 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A391422.P11154252082516843056

/-! ## A391422.P4031242007060904652

`∩[A003658(n+1), A372519(n+1)]`
-/

namespace A391422.P4031242007060904652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391422.P4031242007060904652

/-!
# A391423: Positive discriminants of orders of quadratic fields with form class number 1.

The programs for A391423, there is no canonical definition to state claims against.
-/

/-! ## A391423.P17451908421504023496

`∩[A133315(n+1), A226696(n+1)]`
-/

namespace A391423.P17451908421504023496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391423.P17451908421504023496

/-! ## A391423.P11680810044919857078

`∩[A057129(n+1), A133315(n+1)]`
-/

namespace A391423.P11680810044919857078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391423.P11680810044919857078

/-! ## A391423.P5910709718307442093

`record[A079896(n+1)/A087048(n+1)]`
-/

namespace A391423.P5910709718307442093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079896 (n + 1) : ℚ) / (A087048 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391423.P5910709718307442093

/-! ## A391423.P10467392285389472259

`∩[A133315(n+1), A341420(n+1)]`
-/

namespace A391423.P10467392285389472259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391423.P10467392285389472259

/-! ## A391423.P10087407970673554559

`∩[A226696(n+1), A347453(n+1)]`
-/

namespace A391423.P10087407970673554559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391423.P10087407970673554559

/-!
# A391425: Positive discriminants of orders of quadratic fields with form class number 3.

The programs for A391425, there is no canonical definition to state claims against.
-/

/-! ## A391425.P8772223671733800363

`∩[A226696(n+1), A344409(n+1)]`
-/

namespace A391425.P8772223671733800363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391425.P8772223671733800363

/-! ## A391425.P10669153075121691137

`∩[A057129(n+1), A344409(n+1)]`
-/

namespace A391425.P10669153075121691137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391425.P10669153075121691137

/-!
# A391426: Number of elements that square to the identity in the class group of the real quadratic field with discriminant A003658(n), n >= 2.

The programs for A391426, there is no canonical definition to state claims against.
-/

/-! ## A391426.P5976072974561193164

`2^A391436(2+n)`
-/

namespace A391426.P5976072974561193164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A391436 (2 + n) : ℤ)

end

end A391426.P5976072974561193164

/-! ## A391426.P15465915595362536958

`A001523(A391436(n+2)+A001511(2*n+1))`
-/

namespace A391426.P15465915595362536958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (A391436 (n + 2) + A001511 (2 * n + 1)).toNat

end

end A391426.P15465915595362536958

/-! ## A391426.P1003781368097466670

`A164169(A001511(2*n+1)*A391436(n+2))`
-/

namespace A391426.P1003781368097466670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164169 (A001511 (2 * n + 1) * A391436 (n + 2)).toNat

end

end A391426.P1003781368097466670

/-! ## A391426.P1526675774046479676

`A320487(A001511(2*n+1)*A391436(n+2))`
-/

namespace A391426.P1526675774046479676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320487 (A001511 (2 * n + 1) * A391436 (n + 2)).toNat

end

end A391426.P1526675774046479676

/-! ## A391426.P16565408365687009143

`A242350(A391436(n+2)+A027642(2*n+3))`
-/

namespace A391426.P16565408365687009143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242350 (A391436 (n + 2) + A027642 (2 * n + 3)).toNat

end

end A391426.P16565408365687009143

/-! ## A391426.P6125692697340341250

`A033478(A166459(n+1)-A391436(n+2))`
-/

namespace A391426.P6125692697340341250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033478 (A166459 (n + 1) - A391436 (n + 2)).toNat

end

end A391426.P6125692697340341250

/-! ## A391426.P15449198141841624411

`A000005(C(A000040(n+1), A391436(n+2)))`
-/

namespace A391426.P15449198141841624411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A000040 (n + 1)).toNat (A391436 (n + 2)).toNat)

end

end A391426.P15449198141841624411

/-! ## A391426.P3258636405057969055

`A000005(C(A040974(n+1), A391436(n+2)))`
-/

namespace A391426.P3258636405057969055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A040974 (n + 1)).toNat (A391436 (n + 2)).toNat)

end

end A391426.P3258636405057969055

/-! ## A391426.P12866109120909593997

`A073093(C(A000040(n+1), A391436(n+2)))`
-/

namespace A391426.P12866109120909593997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (Nat.choose (A000040 (n + 1)).toNat (A391436 (n + 2)).toNat)

end

end A391426.P12866109120909593997

/-! ## A391426.P11316591202472914601

`A000005(C(A260805(n+1), A391436(n+2)))`
-/

namespace A391426.P11316591202472914601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A260805 (n + 1)).toNat (A391436 (n + 2)).toNat)

end

end A391426.P11316591202472914601

/-! ## A391426.P12104125960435519999

`A349356(C(A153812(n+1), A391436(n+2)))`
-/

namespace A391426.P12104125960435519999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349356 (Nat.choose (A153812 (n + 1)).toNat (A391436 (n + 2)).toNat)

end

end A391426.P12104125960435519999

/-! ## A391426.P9307661323689071960

`A000005(C(A379351(n+3), A391436(n+2)))`
-/

namespace A391426.P9307661323689071960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A379351 (n + 3)).toNat (A391436 (n + 2)).toNat)

end

end A391426.P9307661323689071960

/-! ## A391426.P2623137220273542692

`gcd(A001157(A033205(2*(n+1))), A003652(n+2))`
-/

namespace A391426.P2623137220273542692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001157 (A033205 (2 * (n + 1))).toNat) (A003652 (n + 2))

end

end A391426.P2623137220273542692

/-! ## A391426.P7677406920760149329

`A391436(n+2)+A346704(A141180(2*n+5))`
-/

namespace A391426.P7677406920760149329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391436 (n + 2) + A346704 (A141180 (2 * n + 5)).toNat

end

end A391426.P7677406920760149329

/-! ## A391426.P12757797321602142311

`A000034(A141180(2*n+5)*A391436(n+2))`
-/

namespace A391426.P12757797321602142311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A141180 (2 * n + 5) * A391436 (n + 2)).toNat

end

end A391426.P12757797321602142311

/-! ## A391426.P17365683942557111003

`A000034(A391436(n+2)+A309686(n))`
-/

namespace A391426.P17365683942557111003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A391436 (n + 2) + A309686 n).toNat

end

end A391426.P17365683942557111003

/-! ## A391426.P1731758776840898343

`gcd(A003652(n+2), A033547(A000700(n)))`
-/

namespace A391426.P1731758776840898343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003652 (n + 2)) (A033547 (A000700 n).toNat)

end

end A391426.P1731758776840898343

/-! ## A391426.P9024546296127559878

`A391436(n+2)+A000035(A088563(n+1))`
-/

namespace A391426.P9024546296127559878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391436 (n + 2) + A000035 (A088563 (n + 1)).toNat

end

end A391426.P9024546296127559878

/-! ## A391426.P7921011684399303181

`A391436(n+2)+A005086(A031928(n+1))`
-/

namespace A391426.P7921011684399303181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391436 (n + 2) + A005086 (A031928 (n + 1)).toNat

end

end A391426.P7921011684399303181

/-!
# A391427: Cubefree exponential abundant numbers: cubefree numbers k for which A051377(k) > 2*k.

The programs for A391427, there is no canonical definition to state claims against.
-/

/-! ## A391427.P1104188511671539792

`filter[A129575(1+n), A212793(#)]`
-/

namespace A391427.P1104188511671539792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A391427.P1104188511671539792

/-! ## A391427.P17832065150881382264

`filter[A129575(n+1), A359429(#)]`
-/

namespace A391427.P17832065150881382264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391427.P17832065150881382264

/-! ## A391427.P5738732268612847216

`filter[A308053(n+1), A212793(#)]`
-/

namespace A391427.P5738732268612847216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A391427.P5738732268612847216

/-! ## A391427.P5027145514872919509

`filter[A383693(n+1), A212793(#)]`
-/

namespace A391427.P5027145514872919509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A391427.P5027145514872919509

/-! ## A391427.P369486679896007193

`filter[A383697(n+1), A212793(#)]`
-/

namespace A391427.P369486679896007193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A391427.P369486679896007193

/-! ## A391427.P14014209744557499520

`filter[A308053(n+1), A359429(#)]`
-/

namespace A391427.P14014209744557499520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391427.P14014209744557499520

/-! ## A391427.P2384501417121925309

`filter[A383697(n+1), A355823(#)]`
-/

namespace A391427.P2384501417121925309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A391427.P2384501417121925309

/-! ## A391427.P4502821240160210338

`filter[A383697(n+1), A355825(#)]`
-/

namespace A391427.P4502821240160210338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A391427.P4502821240160210338

/-! ## A391427.P3675510131479847848

`filter[A383693(n+1), A359429(#)]`
-/

namespace A391427.P3675510131479847848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391427.P3675510131479847848

/-! ## A391427.P4996529767170631105

`filter[A383697(n+1), A359429(#)]`
-/

namespace A391427.P4996529767170631105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A391427.P4996529767170631105

/-!
# A391428: Exponential abundant numbers that are squares of squarefree numbers.

The programs for A391428, the canonical program `A391428.P16960108032895023113` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391428 has offset 1).

The definition of A391428 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087248, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391428.P16960108032895023113

`A087248(n+1)²`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A391428

/-- `A087248(n+1)²` -/
def P16960108032895023113.Spec : Prop :=
  ∀ n, P16960108032895023113.a n = A391428 (n + 1)

theorem P16960108032895023113.correct : P16960108032895023113.Spec := by
  intro n
  simp only [A391428, Nat.add_sub_cancel]

end A391428

/-! ## A391428.P6654059723291179268

`A087248(1+n)^2`
-/

namespace A391428.P6654059723291179268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (1 + n) ^ 2

end

end A391428.P6654059723291179268

namespace A391428

/-- `A087248(1+n)^2` -/
def P6654059723291179268.Spec : Prop :=
  ∀ n, P6654059723291179268.a n = A391428 (n + 1)

theorem P6654059723291179268.correct : P6654059723291179268.Spec := by
  intro n
  simp only [A391428, Nat.add_sub_cancel, A391428.P6654059723291179268.a, A391428.P16960108032895023113.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A391428

/-! ## A391428.P13520503066670694773

`A087248(1+n)*A087248(n+1)`
-/

namespace A391428.P13520503066670694773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (1 + n) * A087248 (n + 1)

end

end A391428.P13520503066670694773

namespace A391428

/-- `A087248(1+n)*A087248(n+1)` -/
def P13520503066670694773.Spec : Prop :=
  ∀ n, P13520503066670694773.a n = A391428 (n + 1)

theorem P13520503066670694773.correct : P13520503066670694773.Spec := by
  intro n
  simp only [A391428, Nat.add_sub_cancel, A391428.P13520503066670694773.a, A391428.P16960108032895023113.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A391428

/-! ## A391428.P1612117118226230040

`record[A007913(A034683(1+n))]²`
-/

namespace A391428.P1612117118226230040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A034683 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A391428.P1612117118226230040

namespace A391428

/-- `record[A007913(A034683(1+n))]²` -/
def P1612117118226230040.Spec : Prop :=
  ∀ n, P1612117118226230040.a n = A391428 (n + 1)

end A391428

/-! ## A391428.P11841262864893828568

`record[A007947(A379029(n+1))²]`
-/

namespace A391428.P11841262864893828568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A379029 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391428.P11841262864893828568

namespace A391428

/-- `record[A007947(A379029(n+1))²]` -/
def P11841262864893828568.Spec : Prop :=
  ∀ n, P11841262864893828568.a n = A391428 (n + 1)

end A391428

/-! ## A391428.P1015021722527649738

`filter[A034683(n+1), A008966(#)]²`
-/

namespace A391428.P1015021722527649738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n) ^ 2

end

end A391428.P1015021722527649738

namespace A391428

/-- `filter[A034683(n+1), A008966(#)]²` -/
def P1015021722527649738.Spec : Prop :=
  ∀ n, P1015021722527649738.a n = A391428 (n + 1)

end A391428

/-! ## A391428.P7723287390177588655

`filter[A034683(n+1), A354353(#)]²`
-/

namespace A391428.P7723287390177588655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n) ^ 2

end

end A391428.P7723287390177588655

namespace A391428

/-- `filter[A034683(n+1), A354353(#)]²` -/
def P7723287390177588655.Spec : Prop :=
  ∀ n, P7723287390177588655.a n = A391428 (n + 1)

end A391428

/-! ## A391428.P7870488718221993171

`filter[A379029(n+1), A008966(#)]^2`
-/

namespace A391428.P7870488718221993171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n) ^ 2

end

end A391428.P7870488718221993171

namespace A391428

/-- `filter[A379029(n+1), A008966(#)]^2` -/
def P7870488718221993171.Spec : Prop :=
  ∀ n, P7870488718221993171.a n = A391428 (n + 1)

end A391428

/-! ## A391428.P17673570714748452512

`filter[A390558(n+1), A008966(#)]^2`
-/

namespace A391428.P17673570714748452512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n) ^ 2

end

end A391428.P17673570714748452512

namespace A391428

/-- `filter[A390558(n+1), A008966(#)]^2` -/
def P17673570714748452512.Spec : Prop :=
  ∀ n, P17673570714748452512.a n = A391428 (n + 1)

end A391428

/-! ## A391428.P3224075999210422644

`filter[A308127(n+1), A354353(#)]^2`
-/

namespace A391428.P3224075999210422644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n) ^ 2

end

end A391428.P3224075999210422644

namespace A391428

/-- `filter[A308127(n+1), A354353(#)]^2` -/
def P3224075999210422644.Spec : Prop :=
  ∀ n, P3224075999210422644.a n = A391428 (n + 1)

end A391428

/-! ## A391428.P17819286206490272992

`∏{p}[A087248(n+1), A000290(#)]`
-/

namespace A391428.P17819286206490272992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000290 p

end

end A391428.P17819286206490272992

namespace A391428

/-- `∏{p}[A087248(n+1), A000290(#)]` -/
def P17819286206490272992.Spec : Prop :=
  ∀ n, P17819286206490272992.a n = A391428 (n + 1)

end A391428

/-! ## A391428.P13594515860170727810

`record[A007947(A387893(n+1))²]`
-/

namespace A391428.P13594515860170727810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A387893 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391428.P13594515860170727810

namespace A391428

/-- `record[A007947(A387893(n+1))²]` -/
def P13594515860170727810.Spec : Prop :=
  ∀ n, P13594515860170727810.a n = A391428 (n + 1)

end A391428

/-! ## A391428.P16300226510355478174

`record[A087248(A236858(n))²]`
-/

namespace A391428.P16300226510355478174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (A236858 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391428.P16300226510355478174

namespace A391428

/-- `record[A087248(A236858(n))²]` -/
def P16300226510355478174.Spec : Prop :=
  ∀ n, P16300226510355478174.a n = A391428 (n + 1)

end A391428

/-! ## A391428.P17958095210807468864

`∩[A328136(n+1), A391320(n+1)]`
-/

namespace A391428.P17958095210807468864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P17958095210807468864

namespace A391428

/-- `∩[A328136(n+1), A391320(n+1)]` -/
def P17958095210807468864.Spec : Prop :=
  ∀ n, (P17958095210807468864.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P10263924566717290779

`∩[A383694(n+1), A391320(n+1)]`
-/

namespace A391428.P10263924566717290779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P10263924566717290779

namespace A391428

/-- `∩[A383694(n+1), A391320(n+1)]` -/
def P10263924566717290779.Spec : Prop :=
  ∀ n, (P10263924566717290779.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P9686398672190721162

`∩[A383698(n+1), A391320(n+1)]`
-/

namespace A391428.P9686398672190721162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P9686398672190721162

namespace A391428

/-- `∩[A383698(n+1), A391320(n+1)]` -/
def P9686398672190721162.Spec : Prop :=
  ∀ n, (P9686398672190721162.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P10987438935478920346

`∩[A391087(n+1), A391320(n+1)]`
-/

namespace A391428.P10987438935478920346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P10987438935478920346

namespace A391428

/-- `∩[A391087(n+1), A391320(n+1)]` -/
def P10987438935478920346.Spec : Prop :=
  ∀ n, (P10987438935478920346.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P10700617014557072056

`∩[A391089(n+1), A391320(n+1)]`
-/

namespace A391428.P10700617014557072056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P10700617014557072056

namespace A391428

/-- `∩[A391089(n+1), A391320(n+1)]` -/
def P10700617014557072056.Spec : Prop :=
  ∀ n, (P10700617014557072056.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P14990694777612584356

`∩[A328136(n+1), A392741(n+1)]`
-/

namespace A391428.P14990694777612584356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P14990694777612584356

namespace A391428

/-- `∩[A328136(n+1), A392741(n+1)]` -/
def P14990694777612584356.Spec : Prop :=
  ∀ n, (P14990694777612584356.a n : ℤ) = A391428 (n + 1)

end A391428

/-! ## A391428.P11424390008694658250

`∩[A383694(n+1), A392741(n+1)]`
-/

namespace A391428.P11424390008694658250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391428.P11424390008694658250

namespace A391428

/-- `∩[A383694(n+1), A392741(n+1)]` -/
def P11424390008694658250.Spec : Prop :=
  ∀ n, (P11424390008694658250.a n : ℤ) = A391428 (n + 1)

end A391428

/-!
# A391430: Odd exponential abundant numbers that are squares of squarefree numbers.

The programs for A391430, there is no canonical definition to state claims against.
-/

/-! ## A391430.P2469840165840415686

`A112643(n+1)²`
-/

namespace A391430.P2469840165840415686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (n + 1) ^ 2

end

end A391430.P2469840165840415686

/-! ## A391430.P996247921823186518

`(A387153(1+n)/2)²`
-/

namespace A391430.P996247921823186518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A387153 (1 + n) : ℚ) / 2) ^ 2

end

end A391430.P996247921823186518

/-! ## A391430.P17765343479996886406

`(A387153(n+1)/2)^2`
-/

namespace A391430.P17765343479996886406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A387153 (n + 1) : ℚ) / 2) ^ 2

end

end A391430.P17765343479996886406

/-! ## A391430.P13564880445528778993

`record[A112643(A344180(n))²]`
-/

namespace A391430.P13564880445528778993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391430.P13564880445528778993

/-! ## A391430.P3957478941173191582

`A112643(n+1)^A054348(floor(1/(n+1)))`
-/

namespace A391430.P3957478941173191582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112643 (n + 1) : ℚ) ^ (A054348 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℤ)

end

end A391430.P3957478941173191582

/-! ## A391430.P7520262205586683121

`A112643(A000027(n+1))*A112643(n+1)`
-/

namespace A391430.P7520262205586683121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (A000027 (n + 1)).toNat * A112643 (n + 1)

end

end A391430.P7520262205586683121

/-! ## A391430.P18165375123777304729

`A112643(n+1)^A001221(A006881(n+1))`
-/

namespace A391430.P18165375123777304729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112643 (n + 1) : ℚ) ^ (A001221 (A006881 (n + 1)).toNat : ℤ)

end

end A391430.P18165375123777304729

/-! ## A391430.P15434272721649983153

`A112643(n+1)^A000005(A000040(n+1))`
-/

namespace A391430.P15434272721649983153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112643 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A391430.P15434272721649983153

/-! ## A391430.P5759767564875700761

`A112643(n+1)^A158478(A109168(2*(n+1)))`
-/

namespace A391430.P5759767564875700761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112643 (n + 1) : ℚ) ^ (A158478 (A109168 (2 * (n + 1))).toNat : ℤ)

end

end A391430.P5759767564875700761

/-! ## A391430.P17702885822093966781

`record[A112643(A154958(n))²]`
-/

namespace A391430.P17702885822093966781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (A154958 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391430.P17702885822093966781

/-! ## A391430.P4384838123971182768

`record[A112643(A117910(n))²]`
-/

namespace A391430.P4384838123971182768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (A117910 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391430.P4384838123971182768

/-! ## A391430.P2810121586297896826

`A112643(n+1)^A001055(A001358(n+1))`
-/

namespace A391430.P2810121586297896826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112643 (n + 1) : ℚ) ^ (A001055 (A001358 (n + 1)).toNat : ℤ)

end

end A391430.P2810121586297896826

/-! ## A391430.P1342060056997064487

`record[A112643(A100727(n))²]`
-/

namespace A391430.P1342060056997064487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (A100727 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391430.P1342060056997064487

/-! ## A391430.P13381521701563325722

`A112643(n+1)^A158478(A113127(n+4))`
-/

namespace A391430.P13381521701563325722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112643 (n + 1) : ℚ) ^ (A158478 (A113127 (n + 4)).toNat : ℤ)

end

end A391430.P13381521701563325722

/-! ## A391430.P12685419103905992429

`record[A112643(A065648(n))²]`
-/

namespace A391430.P12685419103905992429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391430.P12685419103905992429

/-! ## A391430.P3989924672401054130

`∩[A156942(n+1), A391429(n+1)]`
-/

namespace A391430.P3989924672401054130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391430.P3989924672401054130

/-!
# A391434: Composite numbers (not multiples of 10) whose (radix-10) constant congruence speed equals the maximum of the constant congruence speeds of all their prime factors.

The programs for A391434, there is no canonical definition to state claims against.
-/

/-! ## A391434.P10331047796856243114

`A392233(n+1)-A101638(A321655(n))`
-/

namespace A391434.P10331047796856243114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392233 (n + 1) - A101638 (A321655 n).toNat

end

end A391434.P10331047796856243114

/-!
# A391435: Number of elements that square to the identity in the class group of the real quadratic field Q(sqrt(k)), k squarefree > 1.

The programs for A391435, there is no canonical definition to state claims against.
-/

/-! ## A391435.P4706491887630385760

`2^A391437(2+n)`
-/

namespace A391435.P4706491887630385760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A391437 (2 + n) : ℤ)

end

end A391435.P4706491887630385760

/-! ## A391435.P6857524498564084779

`gcd(A003649(n+2), A057709((n+2)²))`
-/

namespace A391435.P6857524498564084779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003649 (n + 2)) (A057709 ((n + 2) ^ 2))

end

end A391435.P6857524498564084779

/-! ## A391435.P16707083130371888152

`A000122(A391437(n+2)*(n+2)²)`
-/

namespace A391435.P16707083130371888152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A391437 (n + 2) * ((n + 2) ^ 2 : ℤ)).toNat

end

end A391435.P16707083130371888152

/-! ## A391435.P9945063082363992804

`A000002(C(A013948(n+1), A391437(n+2)))`
-/

namespace A391435.P9945063082363992804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Nat.choose (A013948 (n + 1)).toNat (A391437 (n + 2)).toNat)

end

end A391435.P9945063082363992804

/-! ## A391435.P1935737505895402386

`A040001(C(A055932(n+1), A391437(n+2)))`
-/

namespace A391435.P1935737505895402386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Nat.choose (A055932 (n + 1)).toNat (A391437 (n + 2)).toNat)

end

end A391435.P1935737505895402386

/-! ## A391435.P3980889499382897040

`A000002(C(A156242(n+1), A391437(n+2)))`
-/

namespace A391435.P3980889499382897040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Nat.choose (A156242 (n + 1)).toNat (A391437 (n + 2)).toNat)

end

end A391435.P3980889499382897040

/-! ## A391435.P11293609376816865028

`A391437(n+2)+A057427(A282291(n+1))`
-/

namespace A391435.P11293609376816865028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391437 (n + 2) + A057427 (A282291 (n + 1)).toNat

end

end A391435.P11293609376816865028

/-! ## A391435.P3170169539323308208

`A391437(n+2)+A001222(A085318(n+5))`
-/

namespace A391435.P3170169539323308208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391437 (n + 2) + A001222 (A085318 (n + 5)).toNat

end

end A391435.P3170169539323308208

/-! ## A391435.P2624201688649819656

`A391437(n+2)+A000001(A205511(n+1))`
-/

namespace A391435.P2624201688649819656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391437 (n + 2) + A000001 (A205511 (n + 1)).toNat

end

end A391435.P2624201688649819656

/-! ## A391435.P12707348130429220678

`A391437(n+2)+A091602(A000217(2*(n+1)))`
-/

namespace A391435.P12707348130429220678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391437 (n + 2) + A091602 (A000217 (2 * (n + 1))).toNat

end

end A391435.P12707348130429220678

/-!
# A391436: 2-rank of the class group of the real quadratic field with discriminant A003658(n), n >= 2.

The programs for A391436, there is no canonical definition to state claims against.
-/

/-! ## A391436.P14095857105203360967

`log2(A391426(2+n))`
-/

namespace A391436.P14095857105203360967
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A391426 (2 + n) : ℝ)

end

end A391436.P14095857105203360967

/-! ## A391436.P10513821745180232842

`val(A391426(n+2), 2)`
-/

namespace A391436.P10513821745180232842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A391426 (n + 2)).toNat 2

end

end A391436.P10513821745180232842

/-! ## A391436.P8983499560415415652

`A089309(A391426(n+2)-A028920(2*n))`
-/

namespace A391436.P8983499560415415652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A391426 (n + 2) - A028920 (2 * n)).toNat

end

end A391436.P8983499560415415652

/-! ## A391436.P13786848317801801621

`A007814(A000265(n+1)*A391426(n+2))`
-/

namespace A391436.P13786848317801801621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000265 (n + 1) * A391426 (n + 2)).toNat

end

end A391436.P13786848317801801621

/-! ## A391436.P2705487041397652633

`A007814(A016945(n)*A391426(n+2))`
-/

namespace A391436.P2705487041397652633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A016945 n * A391426 (n + 2)).toNat

end

end A391436.P2705487041397652633

/-! ## A391436.P4314422511948817391

`A007814(lcm(A016945(n), A391426(n+2)))`
-/

namespace A391436.P4314422511948817391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lcm (A016945 n) (A391426 (n + 2)))

end

end A391436.P4314422511948817391

/-! ## A391436.P10952879597094058866

`A007814(A000959(n+1)*A391426(n+2))`
-/

namespace A391436.P10952879597094058866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000959 (n + 1) * A391426 (n + 2)).toNat

end

end A391436.P10952879597094058866

/-! ## A391436.P14373528396692875458

`A128346(A001055(2*n+1))%A391426(n+2)`
-/

namespace A391436.P14373528396692875458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128346 (A001055 (2 * n + 1)).toNat) (A391426 (n + 2))

end

end A391436.P14373528396692875458

/-! ## A391436.P8307676075827073592

`A338010(2*(n+2))%A391426(n+2)`
-/

namespace A391436.P8307676075827073592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338010 (2 * (n + 2))) (A391426 (n + 2))

end

end A391436.P8307676075827073592

/-! ## A391436.P16328564155969861331

`A391426(n+2)+A008683(A306931(n+1))`
-/

namespace A391436.P16328564155969861331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391426 (n + 2) + A008683 (A306931 (n + 1)).toNat

end

end A391436.P16328564155969861331

/-! ## A391436.P7639154697817962626

`A001359(A225485(2*n+5))%A391426(n+2)`
-/

namespace A391436.P7639154697817962626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (A225485 (2 * n + 5)).toNat) (A391426 (n + 2))

end

end A391436.P7639154697817962626

/-! ## A391436.P16208278489576293877

`A391426(n+2)-A005171(A120073(n+2))`
-/

namespace A391436.P16208278489576293877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391426 (n + 2) - A005171 (A120073 (n + 2)).toNat

end

end A391436.P16208278489576293877

/-! ## A391436.P8803930361527719318

`A000040(A138988(2*n+3))%A391426(n+2)`
-/

namespace A391436.P8803930361527719318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A138988 (2 * n + 3)).toNat) (A391426 (n + 2))

end

end A391436.P8803930361527719318

/-! ## A391436.P2243678117028113361

`A000040(A025586(2*n+1))%A391426(n+2)`
-/

namespace A391436.P2243678117028113361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A025586 (2 * n + 1)).toNat) (A391426 (n + 2))

end

end A391436.P2243678117028113361

/-! ## A391436.P15410848843604769172

`A391426(n+2)-A353519(A075585(n+1))`
-/

namespace A391436.P15410848843604769172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391426 (n + 2) - A353519 (A075585 (n + 1)).toNat

end

end A391436.P15410848843604769172

/-!
# A391437: 2-rank of the class group of the real quadratic field Q(sqrt(k)), k squarefree > 1.

The programs for A391437, there is no canonical definition to state claims against.
-/

/-! ## A391437.P13465938459691645025

`log2(A391435(2+n))`
-/

namespace A391437.P13465938459691645025
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A391435 (2 + n) : ℝ)

end

end A391437.P13465938459691645025

/-! ## A391437.P14581595321243072771

`val(A391435(n+2), 2)`
-/

namespace A391437.P14581595321243072771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A391435 (n + 2)).toNat 2

end

end A391437.P14581595321243072771

/-! ## A391437.P12272724102714465506

`A051903(A391435(n+2))`
-/

namespace A391437.P12272724102714465506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A391435 (n + 2)).toNat

end

end A391437.P12272724102714465506

/-! ## A391437.P10463808564067462985

`A119513(A391435(n+2)+1)`
-/

namespace A391437.P10463808564067462985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119513 (A391435 (n + 2) + 1).toNat

end

end A391437.P10463808564067462985

/-! ## A391437.P17037498804010811215

`A334204(A391435(n+2)+1)`
-/

namespace A391437.P17037498804010811215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334204 (A391435 (n + 2) + 1).toNat

end

end A391437.P17037498804010811215

/-! ## A391437.P12542633055159719392

`A000120(A391435(n+2)-1)`
-/

namespace A391437.P12542633055159719392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A391435 (n + 2) - 1).toNat

end

end A391437.P12542633055159719392

/-! ## A391437.P457356722836891279

`A372442(6*A391435(n+2)/2)`
-/

namespace A391437.P457356722836891279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372442 (SequenceMachineLib.roundAway ((6 * A391435 (n + 2) : ℚ) / 2)).toNat

end

end A391437.P457356722836891279

/-! ## A391437.P13559679334226164638

`A001222(A391435(n+2))%A060747(n)`
-/

namespace A391437.P13559679334226164638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A391435 (n + 2)).toNat) (A060747 n)

end

end A391437.P13559679334226164638

/-! ## A391437.P4680077666980739276

`A077268(A391435(n+2))%A248345(n)`
-/

namespace A391437.P4680077666980739276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077268 (A391435 (n + 2)).toNat) (A248345 n)

end

end A391437.P4680077666980739276

/-! ## A391437.P9193844447936480260

`A001222(A391435(n+2)%A078649(n+1))`
-/

namespace A391437.P9193844447936480260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A391435 (n + 2)) (A078649 (n + 1))).toNat

end

end A391437.P9193844447936480260

/-! ## A391437.P2197850623205299964

`A360678(A391435(n+2)²)`
-/

namespace A391437.P2197850623205299964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360678 (A391435 (n + 2) ^ 2).toNat

end

end A391437.P2197850623205299964

/-! ## A391437.P8709950203111026407

`A001222(A391435(n+2))^A351314(n+1)`
-/

namespace A391437.P8709950203111026407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A391435 (n + 2)).toNat : ℚ) ^ (A351314 (n + 1) : ℤ)

end

end A391437.P8709950203111026407

/-! ## A391437.P1174458224317370358

`A001222(A391435(n+2))^A144436(n+1)`
-/

namespace A391437.P1174458224317370358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A391435 (n + 2)).toNat : ℚ) ^ (A144436 (n + 1) : ℤ)

end

end A391437.P1174458224317370358

/-!
# A391438: Number of elements that square to the identity in the class group of the order of real quadratic fields with discriminant A079896(n).

The programs for A391438, there is no canonical definition to state claims against.
-/

/-! ## A391438.P81869837583297233

`2^A391439(1+n)`
-/

namespace A391438.P81869837583297233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A391439 (1 + n) : ℤ)

end

end A391438.P81869837583297233

/-! ## A391438.P2620732042980581389

`A006533((A391439(n+1)+1)/gcd(n+1, n))`
-/

namespace A391438.P2620732042980581389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006533 (SequenceMachineLib.roundAway ((A391439 (n + 1) + 1 : ℚ) / (Nat.gcd (n + 1) n : ℚ))).toNat

end

end A391438.P2620732042980581389

/-! ## A391438.P2160805395527662334

`A001227(C(A006530(3*n+4), A391439(n+1)))`
-/

namespace A391438.P2160805395527662334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Nat.choose (A006530 (3 * n + 4)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P2160805395527662334

/-! ## A391438.P15044272301050238772

`A169695(A022330(n)*A391439(n+1))`
-/

namespace A391438.P15044272301050238772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A022330 n * A391439 (n + 1)).toNat

end

end A391438.P15044272301050238772

/-! ## A391438.P13713124929644256163

`A000005(C(A000040(n+1), A391439(n+1)))`
-/

namespace A391438.P13713124929644256163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A000040 (n + 1)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P13713124929644256163

/-! ## A391438.P6680435457845581021

`A001227(C(A000040(n+1), A391439(n+1)))`
-/

namespace A391438.P6680435457845581021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Nat.choose (A000040 (n + 1)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P6680435457845581021

/-! ## A391438.P15659075507605051615

`A000005(C(A001359(n+1), A391439(n+1)))`
-/

namespace A391438.P15659075507605051615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A001359 (n + 1)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P15659075507605051615

/-! ## A391438.P2541310856327691527

`A000002(C(A013948(n+1), A391439(n+1)))`
-/

namespace A391438.P2541310856327691527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Nat.choose (A013948 (n + 1)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P2541310856327691527

/-! ## A391438.P3515711517218772636

`A057567(C(A000040(n+1), A391439(n+1)))`
-/

namespace A391438.P3515711517218772636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (Nat.choose (A000040 (n + 1)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P3515711517218772636

/-! ## A391438.P4921949092076628241

`A057567(C(A002144(n+1), A391439(n+1)))`
-/

namespace A391438.P4921949092076628241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (Nat.choose (A002144 (n + 1)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P4921949092076628241

/-! ## A391438.P4881453078526699267

`A016008(C(A103667(n+1), A391439(n+1)))`
-/

namespace A391438.P4881453078526699267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016008 (Nat.choose (A103667 (n + 1)).toNat (A391439 (n + 1)).toNat)

end

end A391438.P4881453078526699267

/-! ## A391438.P1304648446242635880

`A391439(n+1)+A006519(A046117(2*n+3))`
-/

namespace A391438.P1304648446242635880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A006519 (A046117 (2 * n + 3)).toNat

end

end A391438.P1304648446242635880

/-! ## A391438.P17649728848273017701

`gcd(A391439(n+1)+1, A223297(n+1))`
-/

namespace A391438.P17649728848273017701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A391439 (n + 1) + 1) (A223297 (n + 1))

end

end A391438.P17649728848273017701

/-! ## A391438.P3192829902874487003

`A391439(n+1)+A374466(A119504(n+1))`
-/

namespace A391438.P3192829902874487003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A374466 (A119504 (n + 1)).toNat

end

end A391438.P3192829902874487003

/-! ## A391438.P13426476764798767802

`A391439(n+1)+A324883(A324850(n+3))`
-/

namespace A391438.P13426476764798767802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A324883 (A324850 (n + 3)).toNat

end

end A391438.P13426476764798767802

/-! ## A391438.P110305563733446493

`A391439(n+1)+A007318(A337273(n+1))`
-/

namespace A391438.P110305563733446493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A007318 (A337273 (n + 1)).toNat

end

end A391438.P110305563733446493

/-! ## A391438.P12025273127073691969

`A391439(n+1)+A047040(A000217(n))`
-/

namespace A391438.P12025273127073691969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A047040 (A000217 n).toNat

end

end A391438.P12025273127073691969

/-! ## A391438.P7360064513270867448

`A391439(n+1)+A087436(A119488(3*(n+1)))`
-/

namespace A391438.P7360064513270867448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A087436 (A119488 (3 * (n + 1))).toNat

end

end A391438.P7360064513270867448

/-! ## A391438.P14976412859092869176

`A391439(n+1)+A010051(A385676(3*n+4))`
-/

namespace A391438.P14976412859092869176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A010051 (A385676 (3 * n + 4)).toNat

end

end A391438.P14976412859092869176

/-! ## A391438.P2398494816083304028

`A391439(n+1)+A281118(A077171(n))`
-/

namespace A391438.P2398494816083304028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391439 (n + 1) + A281118 (A077171 n).toNat

end

end A391438.P2398494816083304028

/-!
# A391439: 2-rank of the class group of the order of real quadratic fields with discriminant A079896(n).

The programs for A391439, there is no canonical definition to state claims against.
-/

/-! ## A391439.P17340272317387673811

`log2(A391438(1+n))`
-/

namespace A391439.P17340272317387673811
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A391438 (1 + n) : ℝ)

end

end A391439.P17340272317387673811

/-! ## A391439.P16881939952280936322

`val(A391438(n+1), 2)`
-/

namespace A391439.P16881939952280936322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A391438 (n + 1)).toNat 2

end

end A391439.P16881939952280936322

/-! ## A391439.P7898107147349712304

`A001222(gcd(A118416(n+1), A391438(n+1)))`
-/

namespace A391439.P7898107147349712304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A118416 (n + 1)) (A391438 (n + 1)))

end

end A391439.P7898107147349712304

/-! ## A391439.P16159257488971243175

`A000120(A391438(n+1)-A181157(2*n+1))`
-/

namespace A391439.P16159257488971243175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A391438 (n + 1) - A181157 (2 * n + 1)).toNat

end

end A391439.P16159257488971243175

/-! ## A391439.P14745319448057452041

`A334108(A007821(n+1)*A391438(n+1))`
-/

namespace A391439.P14745319448057452041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334108 (A007821 (n + 1) * A391438 (n + 1)).toNat

end

end A391439.P14745319448057452041

/-! ## A391439.P7094282007131114510

`A007814(A005408(n)*A391438(n+1))`
-/

namespace A391439.P7094282007131114510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005408 n * A391438 (n + 1)).toNat

end

end A391439.P7094282007131114510

/-! ## A391439.P7879929104466769430

`A334108(A002145(n+1)*A391438(n+1))`
-/

namespace A391439.P7879929104466769430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334108 (A002145 (n + 1) * A391438 (n + 1)).toNat

end

end A391439.P7879929104466769430

/-! ## A391439.P18292786932524017354

`A007814(or(A177917(n+1), A391438(n+1)))`
-/

namespace A391439.P18292786932524017354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (A177917 (n + 1)) (A391438 (n + 1))).toNat

end

end A391439.P18292786932524017354

/-! ## A391439.P10202760454421680494

`A391438(n+1)-A071178(A038908(3*n+1))`
-/

namespace A391439.P10202760454421680494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A071178 (A038908 (3 * n + 1)).toNat

end

end A391439.P10202760454421680494

/-! ## A391439.P13403987283820406379

`A391438(n+1)-A295931(A061238(n+1))`
-/

namespace A391439.P13403987283820406379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A295931 (A061238 (n + 1)).toNat

end

end A391439.P13403987283820406379

/-! ## A391439.P8798217221984040917

`A391438(n+1)-A335511(A006512(n+1))`
-/

namespace A391439.P8798217221984040917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A335511 (A006512 (n + 1)).toNat

end

end A391439.P8798217221984040917

/-! ## A391439.P3876346374250047165

`A391438(n+1)+A099837(A002476(3*n+2))`
-/

namespace A391439.P3876346374250047165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) + A099837 (A002476 (3 * n + 2)).toNat

end

end A391439.P3876346374250047165

/-! ## A391439.P10943566960518889041

`A391438(n+1)-A324828(A045341(3*(n+1)))`
-/

namespace A391439.P10943566960518889041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A324828 (A045341 (3 * (n + 1))).toNat

end

end A391439.P10943566960518889041

/-! ## A391439.P8641601452369854305

`A391438(n+1)-A010051(A019546(n+1))`
-/

namespace A391439.P8641601452369854305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A010051 (A019546 (n + 1)).toNat

end

end A391439.P8641601452369854305

/-! ## A391439.P13059424649361665922

`A120730(A391418(n+1))^A378197(n)`
-/

namespace A391439.P13059424649361665922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120730 (A391418 (n + 1)).toNat : ℚ) ^ (A378197 n : ℤ)

end

end A391439.P13059424649361665922

/-! ## A391439.P5649719853324811167

`A095987(n)%A391418(n+1)`
-/

namespace A391439.P5649719853324811167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095987 n) (A391418 (n + 1))

end

end A391439.P5649719853324811167

/-! ## A391439.P8660676339443674761

`A391438(n+1)-A325568(A057326(n+1))`
-/

namespace A391439.P8660676339443674761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A325568 (A057326 (n + 1)).toNat

end

end A391439.P8660676339443674761

/-! ## A391439.P5433708340156803397

`A391438(n+1)+A008683(A237739(2*n+3))`
-/

namespace A391439.P5433708340156803397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) + A008683 (A237739 (2 * n + 3)).toNat

end

end A391439.P5433708340156803397

/-! ## A391439.P6008281818819686630

`A000005(A000290(2*(n+1)))%A391438(n+1)`
-/

namespace A391439.P6008281818819686630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A000290 (2 * (n + 1))).toNat) (A391438 (n + 1))

end

end A391439.P6008281818819686630

/-! ## A391439.P12852499023002631852

`A391438(n+1)-A104714(A235266(2*(n+2)))`
-/

namespace A391439.P12852499023002631852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391438 (n + 1) - A104714 (A235266 (2 * (n + 2))).toNat

end

end A391439.P12852499023002631852

/-!
# A391440: Number of genera in the order of real quadratic fields with discriminant A079896(n).

The programs for A391440, there is no canonical definition to state claims against.
-/

/-! ## A391440.P4702936976966914832

`2^A391441(1+n)`
-/

namespace A391440.P4702936976966914832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A391441 (1 + n) : ℤ)

end

end A391440.P4702936976966914832

/-! ## A391440.P11225982356445054217

`A000079(A037227(2*n+3)*A391441(n+1))`
-/

namespace A391440.P11225982356445054217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A037227 (2 * n + 3) * A391441 (n + 1)).toNat

end

end A391440.P11225982356445054217

/-! ## A391440.P2478189590484702420

`A011782(A391441(n+1)+A327832(2*n+5))`
-/

namespace A391440.P2478189590484702420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A391441 (n + 1) + A327832 (2 * n + 5)).toNat

end

end A391440.P2478189590484702420

/-! ## A391440.P1842820833677441346

`A014137(A391441(n+1)+A322015(n²))`
-/

namespace A391440.P1842820833677441346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (A391441 (n + 1) + A322015 (n ^ 2)).toNat

end

end A391440.P1842820833677441346

/-! ## A391440.P470366628663953153

`floor((2+A391441(n+1)-A008683(A243097(n+1)))²/4)`
-/

namespace A391440.P470366628663953153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 + (A391441 (n + 1) - A008683 (A243097 (n + 1)).toNat)) ^ 2 : ℚ) / 4⌋

end

end A391440.P470366628663953153

/-! ## A391440.P8494334871213971486

`gcd(A087048(1+n), A328596(n+1))`
-/

namespace A391440.P8494334871213971486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087048 (1 + n)) (A328596 (n + 1))

end

end A391440.P8494334871213971486

/-!
# A391441: 2-rank of the form class group of the order of real quadratic fields with discriminant A079896(n).

The programs for A391441, there is no canonical definition to state claims against.
-/

/-! ## A391441.P16370437652056145863

`log2(A391440(1+n))`
-/

namespace A391441.P16370437652056145863
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A391440 (1 + n) : ℝ)

end

end A391441.P16370437652056145863

/-! ## A391441.P12597076261149486801

`A000523(A391440(n+1))`
-/

namespace A391441.P12597076261149486801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A391440 (n + 1)).toNat

end

end A391441.P12597076261149486801

/-! ## A391441.P10152192944547998578

`A083345(A391440(1+n)²)`
-/

namespace A391441.P10152192944547998578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A391440 (1 + n) ^ 2).toNat

end

end A391441.P10152192944547998578

/-! ## A391441.P14396181650179885083

`A000120(A391440(1+n)-1)`
-/

namespace A391441.P14396181650179885083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A391440 (1 + n) - 1).toNat

end

end A391441.P14396181650179885083

/-! ## A391441.P14847582026221118597

`A002487(A391440(n+1)-1)`
-/

namespace A391441.P14847582026221118597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A391440 (n + 1) - 1).toNat

end

end A391441.P14847582026221118597

/-! ## A391441.P1739515806389662228

`A124770(A391440(n+1)-1)`
-/

namespace A391441.P1739515806389662228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (A391440 (n + 1) - 1).toNat

end

end A391441.P1739515806389662228

/-! ## A391441.P8488963585194877215

`A159918(A391440(n+1)-1)`
-/

namespace A391441.P8488963585194877215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A391440 (n + 1) - 1).toNat

end

end A391441.P8488963585194877215

/-! ## A391441.P15336315503972036407

`A002487(C(A391440(n+1), 2))`
-/

namespace A391441.P15336315503972036407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.choose (A391440 (n + 1)).toNat 2)

end

end A391441.P15336315503972036407

/-! ## A391441.P1880086935017033381

`A001222(gcd(A000793(2*(n+1)), A391440(n+1)))`
-/

namespace A391441.P1880086935017033381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000793 (2 * (n + 1))) (A391440 (n + 1)))

end

end A391441.P1880086935017033381

/-! ## A391441.P7688916907616601259

`A001222(gcd(A000079(n), A391440(n+1)))`
-/

namespace A391441.P7688916907616601259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000079 n) (A391440 (n + 1)))

end

end A391441.P7688916907616601259

/-!
# A391446: Numbers k such that gcd(A381466(k-1),k) > 1.

The programs for A391446, there is no canonical definition to state claims against.
-/

/-! ## A391446.P14519677777625450785

`∑[A394761(n)+1]`
-/

namespace A391446.P14519677777625450785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394761 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391446.P14519677777625450785

/-! ## A391446.P17030846553103113906

`lt[A381466(n), n]`
-/

namespace A391446.P17030846553103113906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381466 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A391446.P17030846553103113906

/-! ## A391446.P7214879984907397058

`lt[1, A392200(n+1)]+1`
-/

namespace A391446.P7214879984907397058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392200 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391446.P7214879984907397058

/-! ## A391446.P18428258808717499465

`∑[A120992(Δ[A002525(n)])+1]`
-/

namespace A391446.P18428258808717499465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002525 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391446.P18428258808717499465

/-! ## A391446.P17165011194645760128

`∑[4-val(2+A184346(A184351(n+1)), 2)]`
-/

namespace A391446.P17165011194645760128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (SequenceMachineLib.valuation (2 + A184346 (A184351 (n + 1)).toNat).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391446.P17165011194645760128

/-!
# A391449: a(n) = A252489(n) - A059957(n).

The programs for A391449, the canonical program `A391449.P16072565990490432701` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391449 has offset 1).

The definition of A391449 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252489, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391449.P16072565990490432701

`A252489(n+1)-A059957(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A391449

/-- `A252489(n+1)-A059957(n+1)` -/
def P16072565990490432701.Spec : Prop :=
  ∀ n, P16072565990490432701.a n = A391449 (n + 1)

theorem P16072565990490432701.correct : P16072565990490432701.Spec := by
  intro n
  simp only [A391449, Nat.add_sub_cancel]

end A391449

/-! ## A391449.P16854294880572913448

`A000720(A074399(n+1))-A059957(n+1)`
-/

namespace A391449.P16854294880572913448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A074399 (n + 1)).toNat - A059957 (n + 1)

end

end A391449.P16854294880572913448

namespace A391449

/-- `A000720(A074399(n+1))-A059957(n+1)` -/
def P16854294880572913448.Spec : Prop :=
  ∀ n, P16854294880572913448.a n = A391449 (n + 1)

end A391449

/-! ## A391449.P15231543647648471685

`A252489(n+1)-(A001221(n+1)+A001221(n+2))`
-/

namespace A391449.P15231543647648471685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (n + 1) - (A001221 (n + 1) + A001221 (n + 2))

end

end A391449.P15231543647648471685

namespace A391449

/-- `A252489(n+1)-(A001221(n+1)+A001221(n+2))` -/
def P15231543647648471685.Spec : Prop :=
  ∀ n, P15231543647648471685.a n = A391449 (n + 1)

end A391449

/-! ## A391449.P17393183554806984407

`A056239(A074399(n+1)%(n+4))-∑{p}[(n+1)*(n+2), ceil(1/#)]`
-/

namespace A391449.P17393183554806984407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A074399 (n + 1)) (n + 4 : ℤ)).toNat - ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉

end

end A391449.P17393183554806984407

namespace A391449

/-- `A056239(A074399(n+1)%(n+4))-∑{p}[(n+1)*(n+2), ceil(1/#)]` -/
def P17393183554806984407.Spec : Prop :=
  ∀ n, P17393183554806984407.a n = A391449 (n + 1)

end A391449

/-! ## A391449.P7363507399854896260

`A252489(n+1)-A001221(A002378(n+1))`
-/

namespace A391449.P7363507399854896260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (n + 1) - A001221 (A002378 (n + 1)).toNat

end

end A391449.P7363507399854896260

namespace A391449

/-- `A252489(n+1)-A001221(A002378(n+1))` -/
def P7363507399854896260.Spec : Prop :=
  ∀ n, P7363507399854896260.a n = A391449 (n + 1)

end A391449

/-! ## A391449.P2605888135603386284

`A117371(∑[2*(1+n)])`
-/

namespace A391449.P2605888135603386284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117371 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391449.P2605888135603386284

namespace A391449

/-- `A117371(∑[2*(1+n)])` -/
def P2605888135603386284.Spec : Prop :=
  ∀ n, P2605888135603386284.a n = A391449 (n + 1)

end A391449

/-! ## A391449.P3445091222536285108

`A079067(A064989(n+1)*A064989(n+2))`
-/

namespace A391449.P3445091222536285108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A064989 (n + 1) * A064989 (n + 2)).toNat

end

end A391449.P3445091222536285108

namespace A391449

/-- `A079067(A064989(n+1)*A064989(n+2))` -/
def P3445091222536285108.Spec : Prop :=
  ∀ n, P3445091222536285108.a n = A391449 (n + 1)

end A391449

/-! ## A391449.P14256292423075663933

`A079067(∑[2*(n+1)])`
-/

namespace A391449.P14256292423075663933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391449.P14256292423075663933

namespace A391449

/-- `A079067(∑[2*(n+1)])` -/
def P14256292423075663933.Spec : Prop :=
  ∀ n, P14256292423075663933.a n = A391449 (n + 1)

end A391449

/-! ## A391449.P10711044581838236054

`A257541(A007947(n+1)*A007947(n+2))`
-/

namespace A391449.P10711044581838236054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (A007947 (n + 1) * A007947 (n + 2)).toNat

end

end A391449.P10711044581838236054

namespace A391449

/-- `A257541(A007947(n+1)*A007947(n+2))` -/
def P10711044581838236054.Spec : Prop :=
  ∀ n, P10711044581838236054.a n = A391449 (n + 1)

end A391449

/-! ## A391449.P8901935312185756396

`and(A057428(n), A079067(A046092(n+1)))`
-/

namespace A391449.P8901935312185756396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A079067 (A046092 (n + 1)).toNat)

end

end A391449.P8901935312185756396

namespace A391449

/-- `and(A057428(n), A079067(A046092(n+1)))` -/
def P8901935312185756396.Spec : Prop :=
  ∀ n, P8901935312185756396.a n = A391449 (n + 1)

end A391449

/-!
# A391450: Number of binary strings of length n where the number of runs equals the number of 1s.

The programs for A391450, there is no canonical definition to state claims against.
-/

/-! ## A391450.P3826775248905818602

`A345908(n)+A159909(A213044(n))`
-/

namespace A391450.P3826775248905818602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345908 n + A159909 (A213044 n).toNat

end

end A391450.P3826775248905818602

/-! ## A391450.P16972034012009998140

`A389790(A305335(n+2))+A070824(A391260(n+1))`
-/

namespace A391450.P16972034012009998140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389790 (A305335 (n + 2)).toNat + A070824 (A391260 (n + 1)).toNat

end

end A391450.P16972034012009998140

/-!
# A391452: a(n) is the number of 5 element sets of distinct integer-sided trapezoids whose base angles are 60 degrees that fill an equilateral triangular grid of side n units without partitioning a triangle into 3 element sets of trapezoids.

The programs for A391452, there is no canonical definition to state claims against.
-/

/-! ## A391452.P1633326691206129448

`A113221(C(n, 5))`
-/

namespace A391452.P1633326691206129448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (Nat.choose n 5)

end

end A391452.P1633326691206129448

/-! ## A391452.P9503743289248774785

`A113221(A000389(n))`
-/

namespace A391452.P9503743289248774785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A000389 n).toNat

end

end A391452.P9503743289248774785

/-! ## A391452.P8330462238205234836

`A113221(A290993(n))`
-/

namespace A391452.P8330462238205234836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A290993 n).toNat

end

end A391452.P8330462238205234836

/-! ## A391452.P12526413809548361110

`A113221(A100356(n+1))`
-/

namespace A391452.P12526413809548361110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A100356 (n + 1)).toNat

end

end A391452.P12526413809548361110

/-! ## A391452.P9258490010174318967

`A108376(A151762(n+1))`
-/

namespace A391452.P9258490010174318967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108376 (A151762 (n + 1)).toNat

end

end A391452.P9258490010174318967

/-!
# A391453: a(n) is the number of 5 element sets of distinct integer-sided trapezoids whose base angles are 60 degrees that fill an equilateral triangular grid of side n units, where one trapezoid has a larger base of n units.

The programs for A391453, the canonical program `A391453.P10895712906929925412` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391453 has offset 1).

The definition of A391453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391453.P7016609827734093063

`A389392(n)+a(n-1)` with `a(0)=0`
-/

namespace A391453.P7016609827734093063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A389392 n + a (n - 1)

end

end A391453.P7016609827734093063

namespace A391453

/-- `A389392(n)+a(n-1)` -/
def P7016609827734093063.Spec : Prop :=
  ∀ n, P7016609827734093063.a n = A391453 (n + 1)

end A391453

/-! ## A391453.P10807036096229542187

`∑[A389392(A028310(n))]`
-/

namespace A391453.P10807036096229542187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389392 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391453.P10807036096229542187

namespace A391453

/-- `∑[A389392(A028310(n))]` -/
def P10807036096229542187.Spec : Prop :=
  ∀ n, P10807036096229542187.a n = A391453 (n + 1)

end A391453

/-! ## A391453.P4420621373962912200

`∑[A389392(A233583(n+1))]`
-/

namespace A391453.P4420621373962912200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389392 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391453.P4420621373962912200

namespace A391453

/-- `∑[A389392(A233583(n+1))]` -/
def P4420621373962912200.Spec : Prop :=
  ∀ n, P4420621373962912200.a n = A391453 (n + 1)

end A391453

/-! ## A391453.P10895712906929925412

`∑[A389392(n+1)]-A389392(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391453

/-- `∑[A389392(n+1)]-A389392(n+1)` -/
def P10895712906929925412.Spec : Prop :=
  ∀ n, P10895712906929925412.a n = A391453 (n + 1)

theorem P10895712906929925412.correct : P10895712906929925412.Spec := by
  intro n
  simp only [A391453, Nat.add_sub_cancel]

end A391453

/-! ## A391453.P16539679429385587008

`∑{e}[(n+1)!, C(n-1, 4*#)]`
-/

namespace A391453.P16539679429385587008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose ((n : ℤ) - 1).toNat (4 * Nat.factorization (f1 n) p)

end

end A391453.P16539679429385587008

namespace A391453

/-- `∑{e}[(n+1)!, C(n-1, 4*#)]` -/
def P16539679429385587008.Spec : Prop :=
  ∀ n, (P16539679429385587008.a n : ℤ) = A391453 (n + 1)

end A391453

/-!
# A391454: Expansion of g^2/(1 + x^3*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391454, there is no canonical definition to state claims against.
-/

/-! ## A391454.P2124499942482338370

`A002293(n+3)-A389372(n+3)`
-/

namespace A391454.P2124499942482338370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (n + 3) - A389372 (n + 3)

end

end A391454.P2124499942482338370

/-! ## A391454.P15962375388344813342

`A069271(n)-A063993(A386452(n))`
-/

namespace A391454.P15962375388344813342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069271 n - A063993 (A386452 n).toNat

end

end A391454.P15962375388344813342

/-!
# A391455: Expansion of g^2/(1 + x^2*g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391455, there is no canonical definition to state claims against.
-/

/-! ## A391455.P14333356594577736399

`∑[A391079(n)-A008615(A391274(n))]`
-/

namespace A391455.P14333356594577736399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391079 n - A008615 (A391274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391455.P14333356594577736399

/-!
# A391456: Expansion of g^2/(1 + x^3*g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391456, there is no canonical definition to state claims against.
-/

/-! ## A391456.P10864439395500104006

`A106608(A189801(n))+A055244(n)`
-/

namespace A391456.P10864439395500104006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A189801 n).toNat + A055244 n

end

end A391456.P10864439395500104006

/-!
# A391457: Expansion of g^2/(1 + x^2*g^3), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391457, there is no canonical definition to state claims against.
-/

/-! ## A391457.P5183602175456830430

`A004526(A366090(n)+A344489(n))`
-/

namespace A391457.P5183602175456830430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A366090 n + A344489 n).toNat

end

end A391457.P5183602175456830430

/-!
# A391458: Expansion of g^2/(1 + x^3*g^3), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391458, there is no canonical definition to state claims against.
-/

/-! ## A391458.P3885081346048529835

`A349095(A150829(n))`
-/

namespace A391458.P3885081346048529835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349095 (A150829 n).toNat

end

end A391458.P3885081346048529835

/-!
# A391459: Expansion of g/(2 - g^2), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391459, the canonical program `A391459.P12819383372019779551` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391459 has offset 0).

The definition of A391459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391459.P12819383372019779551

`A399989(1+n)+A399989(n)-A000108(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A391459

/-- `A399989(1+n)+A399989(n)-A000108(n)` -/
def P12819383372019779551.Spec : Prop :=
  ∀ n, P12819383372019779551.a n = A391459 n

theorem P12819383372019779551.correct : P12819383372019779551.Spec := by
  intro n
  simp only [A391459]

end A391459

/-! ## A391459.P7396331098770110315

`A391513(n+1)-(A289684(n)+A115141(n+1))`
-/

namespace A391459.P7396331098770110315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391513 (n + 1) - (A289684 n + A115141 (n + 1))

end

end A391459.P7396331098770110315

namespace A391459

/-- `A391513(n+1)-(A289684(n)+A115141(n+1))` -/
def P7396331098770110315.Spec : Prop :=
  ∀ n, P7396331098770110315.a n = A391459 n

end A391459

/-! ## A391459.P6049525037868524077

`Δ[A289684(n)-∑[A391513(n)]]`
-/

namespace A391459.P6049525037868524077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391513 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289684 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391459.P6049525037868524077

namespace A391459

/-- `Δ[A289684(n)-∑[A391513(n)]]` -/
def P6049525037868524077.Spec : Prop :=
  ∀ n, P6049525037868524077.a n = A391459 n

end A391459

/-! ## A391459.P14916470033405128867

`Δ[A289684(n)]-A391513(n+1)`
-/

namespace A391459.P14916470033405128867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A391513 (n + 1)

end

end A391459.P14916470033405128867

namespace A391459

/-- `Δ[A289684(n)]-A391513(n+1)` -/
def P14916470033405128867.Spec : Prop :=
  ∀ n, P14916470033405128867.a n = A391459 n

end A391459

/-! ## A391459.P8384827995827126980

`A289684(n+1)-A391516(n+1)`
-/

namespace A391459.P8384827995827126980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289684 (n + 1) - A391516 (n + 1)

end

end A391459.P8384827995827126980

namespace A391459

/-- `A289684(n+1)-A391516(n+1)` -/
def P8384827995827126980.Spec : Prop :=
  ∀ n, P8384827995827126980.a n = A391459 n

end A391459

/-! ## A391459.P3442804931945477394

`A289684(n+1)-(A391513(n+1)+A289684(n))`
-/

namespace A391459.P3442804931945477394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289684 (n + 1) - (A391513 (n + 1) + A289684 n)

end

end A391459.P3442804931945477394

namespace A391459

/-- `A289684(n+1)-(A391513(n+1)+A289684(n))` -/
def P3442804931945477394.Spec : Prop :=
  ∀ n, P3442804931945477394.a n = A391459 n

end A391459

/-!
# A391460: Expansion of g/(2 - g^2)^2, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391460, there is no canonical definition to state claims against.
-/

/-! ## A391460.P10432174024564677646

`A084500(A164301(n))-n`
-/

namespace A391460.P10432174024564677646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084500 (A164301 n).toNat - (n : ℤ)

end

end A391460.P10432174024564677646

/-!
# A391461: Expansion of 1/(2 - g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391461, there is no canonical definition to state claims against.
-/

/-! ## A391461.P17793166298559810564

`2*A390424(n)-A391494(n)`
-/

namespace A391461.P17793166298559810564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A390424 n - A391494 n

end

end A391461.P17793166298559810564

/-! ## A391461.P8597761801010142471

`2*A390424(n)-∑{#}[n, A391462(#)*A391462(n-#)]`
-/

namespace A391461.P8597761801010142471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A390424 n - ∑ k ∈ Finset.range (f1 n + 1), A391462 k * A391462 (n - k)

end

end A391461.P8597761801010142471

/-!
# A391462: Expansion of g/(2 - g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391462, there is no canonical definition to state claims against.
-/

/-! ## A391462.P6353862336308130096

`A391517(n+1)-A391514(n+1)`
-/

namespace A391462.P6353862336308130096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391517 (n + 1) - A391514 (n + 1)

end

end A391462.P6353862336308130096

/-! ## A391462.P212954455166604927

`A056847(A186997(n+1)+1)`
-/

namespace A391462.P212954455166604927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A186997 (n + 1) + 1).toNat

end

end A391462.P212954455166604927

/-!
# A391463: Expansion of g/(2 - g^2)^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391463, there is no canonical definition to state claims against.
-/

/-! ## A391463.P1452100130258026418

`A311801(A001631(3*n+1))+n²`
-/

namespace A391463.P1452100130258026418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 (A001631 (3 * n + 1)).toNat + (n ^ 2 : ℤ)

end

end A391463.P1452100130258026418

/-!
# A391464: Expansion of 1/(2 - g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391464, there is no canonical definition to state claims against.
-/

/-! ## A391464.P4913798767553904386

`A065033(Δ[A199877(n)])`
-/

namespace A391464.P4913798767553904386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A391464.P4913798767553904386

/-!
# A391465: Expansion of g/(2 - g^2), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391465, there is no canonical definition to state claims against.
-/

/-! ## A391465.P18143381225650697938

`A156253(or(1, A106258(n)))`
-/

namespace A391465.P18143381225650697938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (Int.lor 1 (A106258 n)).toNat

end

end A391465.P18143381225650697938

/-!
# A391466: Expansion of g/(2 - g^2)^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391466, there is no canonical definition to state claims against.
-/

/-! ## A391466.P6652592739141849046

`A389361(n)-A384317(A000108(n))`
-/

namespace A391466.P6652592739141849046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389361 n - A384317 (A000108 n).toNat

end

end A391466.P6652592739141849046

/-!
# A391467: Triangle read by rows: T(n,0) = T(n,n) = 0 and T(n,k) = T(n, k-1) + T(n-1, k-1) + T(n-2, k-1) + k for 0 < k < n.

The programs for A391467, there is no canonical definition to state claims against.
-/

/-! ## A391467.P12671785789665724475

`A390369(n)+T(n-1,k-1)` with `a(0)=0`
-/

namespace A391467.P12671785789665724475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A390369 n + SequenceMachineLib.triUpLeft a n

end

end A391467.P12671785789665724475

/-! ## A391467.P15056001483338161153

`A291812(A327722(n+1))`
-/

namespace A391467.P15056001483338161153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A327722 (n + 1)).toNat

end

end A391467.P15056001483338161153

/-! ## A391467.P15146710864247356628

`A276328(A271141(n+1))`
-/

namespace A391467.P15146710864247356628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276328 (A271141 (n + 1)).toNat

end

end A391467.P15146710864247356628

/-! ## A391467.P13041550750714645471

`floor(A196186(A247306(n+1))/2)`
-/

namespace A391467.P13041550750714645471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196186 (A247306 (n + 1)).toNat : ℚ) / 2⌋

end

end A391467.P13041550750714645471

/-! ## A391467.P11026773394740491034

`A121462(n+1)%A065372(A238997(n+1))`
-/

namespace A391467.P11026773394740491034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121462 (n + 1)) (A065372 (A238997 (n + 1)).toNat)

end

end A391467.P11026773394740491034

/-!
# A391468: Number of words of length 3n formed with 3 types of letter where the number of each type == 0 (mod 3).

The programs for A391468, there is no canonical definition to state claims against.
-/

/-! ## A391468.P544749174299433782

`2*A378109(3*n)-1`
-/

namespace A391468.P544749174299433782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378109 (3 * n) - 1

end

end A391468.P544749174299433782

/-! ## A391468.P6849808264698705049

`A073947(A008486(n))`
-/

namespace A391468.P6849808264698705049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (A008486 n).toNat

end

end A391468.P6849808264698705049

/-! ## A391468.P5168004415997541588

`A073947(A028310(3*n))`
-/

namespace A391468.P5168004415997541588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (A028310 (3 * n)).toNat

end

end A391468.P5168004415997541588

/-! ## A391468.P16052790354967297786

`A073947(n+A004277(n))`
-/

namespace A391468.P16052790354967297786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 ((n : ℤ) + A004277 n).toNat

end

end A391468.P16052790354967297786

/-! ## A391468.P6860869273179872596

`A073947(A004273(n)+n+1)`
-/

namespace A391468.P6860869273179872596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (A004273 n + (n + 1 : ℤ)).toNat

end

end A391468.P6860869273179872596

/-! ## A391468.P6277928160938474477

`A073947(lt[sqrt(24)*n+1, A301682(n)])`
-/

namespace A391468.P6277928160938474477
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (24 : ℝ) * (n : ℝ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A391468.P6277928160938474477

/-! ## A391468.P12070106218972291899

`A073947(lt[0, 36*a(n-3)]+1)` with `a(0)=2, a(1)=0, a(2)=1, a(3)=-1`
-/

namespace A391468.P12070106218972291899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1, -1] fun n f2 =>
  36 * f2 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A391468.P12070106218972291899

/-!
# A391469: Number of words of length 3*n that can be formed with a three-letter alphabet when the number of letters of each type is == 1 (mod 3).

The programs for A391469, there is no canonical definition to state claims against.
-/

/-! ## A391469.P6460924811236885682

`A073949(1+comp[2*(n+1)]+n)`
-/

namespace A391469.P6460924811236885682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073949 (1 + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n))

end

end A391469.P6460924811236885682

/-! ## A391469.P5570944028076383600

`record[A073949(n+1)-A073864(n+1)]`
-/

namespace A391469.P5570944028076383600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073949 (n + 1) - A073864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391469.P5570944028076383600

/-!
# A391470: Number of words of length 3*n that can be formed with a three-letter alphabet when the number of letters of each type is == 2 (mod 3).

The programs for A391470, there is no canonical definition to state claims against.
-/

/-! ## A391470.P15612837695496334410

`A073948(comp[2*(n+1)]+n+1)`
-/

namespace A391470.P15612837695496334410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073948 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A391470.P15612837695496334410

/-!
# A391471: Integers k such that floor((11/10)*k + 1/2) is a digit permutation of k.

The programs for A391471, there is no canonical definition to state claims against.
-/

/-! ## A391471.P8074159964418480935

`A285761(A046478(n+1)-1)`
-/

namespace A391471.P8074159964418480935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285761 (A046478 (n + 1) - 1).toNat

end

end A391471.P8074159964418480935

/-!
# A391474: Numbers k for which the symmetric representation of sigma, SRS(k), has at least 3 parts and all positive differences between two parts are at most 10, or all parts have the same size.

The programs for A391474, there is no canonical definition to state claims against.
-/

/-! ## A391474.P11518746272267290051

`∩[A367141(n+1), A391475(n+1)]`
-/

namespace A391474.P11518746272267290051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391474.P11518746272267290051

/-! ## A391474.P2881652922958722059

`∩[A391475(n+1), A395162(n+1)]`
-/

namespace A391474.P2881652922958722059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391474.P2881652922958722059

/-!
# A391476: For n >= 1, a(n) is the sum of the number of divisors A000005(r) for all distinct, nonzero numbers r formed by permuting subsets of the digits of n.

The programs for A391476, there is no canonical definition to state claims against.
-/

/-! ## A391476.P9281364765157944461

`xor(∏{e}[n+1, #+1], A260124(A184983(n)))`
-/

namespace A391476.P9281364765157944461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A260124 (A184983 n).toNat)

end

end A391476.P9281364765157944461

/-! ## A391476.P7560125538837404436

`A353838(A184983(n)+∑{d}[n+1, gcd(n, #)])`
-/

namespace A391476.P7560125538837404436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353838 (A184983 n + ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)).toNat

end

end A391476.P7560125538837404436

/-! ## A391476.P12967969345051699629

`A198318(A001592(n))+A000005(n+1)`
-/

namespace A391476.P12967969345051699629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (A001592 n).toNat + A000005 (n + 1)

end

end A391476.P12967969345051699629

/-! ## A391476.P5141234147312707689

`A127300(A184983(n))+A000005(n+1)`
-/

namespace A391476.P5141234147312707689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127300 (A184983 n).toNat + A000005 (n + 1)

end

end A391476.P5141234147312707689

/-! ## A391476.P4966474562767406941

`A353838(A184983(n)+A000005(n+1))`
-/

namespace A391476.P4966474562767406941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353838 (A184983 n + A000005 (n + 1)).toNat

end

end A391476.P4966474562767406941

/-!
# A391477: a(n) is the least prime that starts a sequence of consecutive primes whose sum is n^5, or -1 if there is no such prime.

The programs for A391477, there is no canonical definition to state claims against.
-/

/-! ## A391477.P5941833281405722667

`A135347(A273945(n+1)-A002262(n))`
-/

namespace A391477.P5941833281405722667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135347 (A273945 (n + 1) - A002262 n).toNat

end

end A391477.P5941833281405722667

/-!
# A391480: Triangle read by rows: T(n,k) is the number of labeled magmas with n elements and k idempotents.

The programs for A391480, the canonical program `A391480.P17490655852187314359` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391480 has offset 0).

The definition of A391480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391480.P17490655852187314359

`C(row(n), col(n))*row(n)^(row(n)*(row(n)-1))*(row(n)-1)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391480

/-- `C(row(n), col(n))*row(n)^(row(n)*(row(n)-1))*(row(n)-1)^(row(n)-col(n))` -/
def P17490655852187314359.Spec : Prop :=
  ∀ n, P17490655852187314359.a n = (A391480 n : ℚ)

end A391480

/-!
# A391481: Number of labeled magmas with n elements and no idempotents.

The programs for A391481, the canonical program `A391481.P4159822313512081732` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391481 has offset 0).

The definition of A391481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391481.P4159822313512081732

`n^(n*(n-1))*(n-1)^n`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391481

/-- `n^(n*(n-1))*(n-1)^n` -/
def P4159822313512081732.Spec : Prop :=
  ∀ n, P4159822313512081732.a n = (A391481 n : ℚ)

end A391481

/-! ## A391481.P4529013038212651726

`A391480(∑[n])`
-/

namespace A391481.P4529013038212651726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391480 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391481.P4529013038212651726

namespace A391481

/-- `A391480(∑[n])` -/
def P4529013038212651726.Spec : Prop :=
  ∀ n, P4529013038212651726.a n = A391481 n

end A391481

/-!
# A391482: Triangle read by rows: T(n,k) is the number of labeled commutative magmas with n elements and k idempotents.

The programs for A391482, the canonical program `A391482.P9893536577812814314` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391482 has offset 0).

The definition of A391482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391482.P9893536577812814314

`C(row(n), col(n))*row(n)^(row(n)*(row(n)-1)/2)*(row(n)-1)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391482

/-- `C(row(n), col(n))*row(n)^(row(n)*(row(n)-1)/2)*(row(n)-1)^(row(n)-col(n))` -/
def P9893536577812814314.Spec : Prop :=
  ∀ n, P9893536577812814314.a n = (A391482 n : ℝ)

end A391482

/-! ## A391482.P4721119429871577336

`A376947(n)^A257994(A062992(n))`
-/

namespace A391482.P4721119429871577336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376947 n : ℚ) ^ (A257994 (A062992 n).toNat : ℤ)

end

end A391482.P4721119429871577336

namespace A391482

/-- `A376947(n)^A257994(A062992(n))` -/
def P4721119429871577336.Spec : Prop :=
  ∀ n, P4721119429871577336.a n = (A391482 n : ℚ)

end A391482

/-! ## A391482.P3137494436545035485

`A102916(A102320(n))-A286998(n+1)`
-/

namespace A391482.P3137494436545035485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102916 (A102320 n).toNat - A286998 (n + 1)

end

end A391482.P3137494436545035485

namespace A391482

/-- `A102916(A102320(n))-A286998(n+1)` -/
def P3137494436545035485.Spec : Prop :=
  ∀ n, P3137494436545035485.a n = A391482 n

end A391482

/-!
# A391483: Number of labeled commutative magmas with n elements and no idempotents.

The programs for A391483, the canonical program `A391483.P769298527151140074` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391483 has offset 0).

The definition of A391483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391483.P769298527151140074

`n^(n*(n-1)/2)*(n-1)^n`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391483

/-- `n^(n*(n-1)/2)*(n-1)^n` -/
def P769298527151140074.Spec : Prop :=
  ∀ n, P769298527151140074.a n = (A391483 n : ℝ)

end A391483

/-! ## A391483.P17669481732050419203

`A391482(∑[n])`
-/

namespace A391483.P17669481732050419203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391482 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391483.P17669481732050419203

namespace A391483

/-- `A391482(∑[n])` -/
def P17669481732050419203.Spec : Prop :=
  ∀ n, P17669481732050419203.a n = A391483 n

end A391483

/-! ## A391483.P5001340805571278412

`and(-1, A391482(A000217(n)))`
-/

namespace A391483.P5001340805571278412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A391482 (A000217 n).toNat)

end

end A391483.P5001340805571278412

namespace A391483

/-- `and(-1, A391482(A000217(n)))` -/
def P5001340805571278412.Spec : Prop :=
  ∀ n, P5001340805571278412.a n = A391483 n

end A391483

/-! ## A391483.P4039137260941728969

`A391482(A000217(n))/A271952(n)`
-/

namespace A391483.P4039137260941728969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391482 (A000217 n).toNat : ℚ) / (A271952 n : ℚ)

end

end A391483.P4039137260941728969

namespace A391483

/-- `A391482(A000217(n))/A271952(n)` -/
def P4039137260941728969.Spec : Prop :=
  ∀ n, P4039137260941728969.a n = (A391483 n : ℚ)

end A391483

/-! ## A391483.P4039288482668534790

`A391482(A000217(n))+A010892(3*n+2)`
-/

namespace A391483.P4039288482668534790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391482 (A000217 n).toNat + A010892 (3 * n + 2)

end

end A391483.P4039288482668534790

namespace A391483

/-- `A391482(A000217(n))+A010892(3*n+2)` -/
def P4039288482668534790.Spec : Prop :=
  ∀ n, P4039288482668534790.a n = A391483 n

end A391483

/-!
# A391484: Array read by antidiagonals: T(n,k) is the number of nonequivalent series-parallel networks with longest path of at most n edges and largest cut set of at most k edges.

The programs for A391484, there is no canonical definition to state claims against.
-/

/-! ## A391484.P6473797472447531633

`A307707(A201729(n+1))`
-/

namespace A391484.P6473797472447531633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A201729 (n + 1)).toNat

end

end A391484.P6473797472447531633

/-!
# A391485: Array read by antidiagonals: T(n,k) is the number of nonequivalent essentially parallel series-parallel networks with longest path of at most n edges and largest cut set of at most k edges.

The programs for A391485, there is no canonical definition to state claims against.
-/

/-! ## A391485.P11697202621751426231

`A319755(A026780(n))+A089840(n)`
-/

namespace A391485.P11697202621751426231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319755 (A026780 n).toNat + A089840 n

end

end A391485.P11697202621751426231

/-! ## A391485.P10621587448279910998

`A249832(A100131(n)-n)+A104002(n+2)`
-/

namespace A391485.P10621587448279910998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A100131 n - (n : ℤ)).toNat + A104002 (n + 2)

end

end A391485.P10621587448279910998

/-! ## A391485.P6513069277893334451

`A249832(∑[A293004(n)/2]+1)+A104002(n+2)`
-/

namespace A391485.P6513069277893334451
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293004 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat + A104002 (n + 2)

end

end A391485.P6513069277893334451

/-!
# A391486: Number of nonequivalent essentially series series-parallel networks with longest path at most n edges and largest cut set of at most 2 edges.

The programs for A391486, there is no canonical definition to state claims against.
-/

/-! ## A391486.P7004470725957727875

`A037294(n+1)-A000217(n+1)`
-/

namespace A391486.P7004470725957727875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037294 (n + 1) - A000217 (n + 1)

end

end A391486.P7004470725957727875

/-! ## A391486.P13717606936534338837

`∑[∑[∑[A191659(n)]]+1]`
-/

namespace A391486.P13717606936534338837
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391486.P13717606936534338837

/-! ## A391486.P7434590908359008360

`∑[∑[A000219(1+n)]-n]`
-/

namespace A391486.P7434590908359008360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391486.P7434590908359008360

/-! ## A391486.P14252596623658718190

`A037294(1+n)-∑[n+1]`
-/

namespace A391486.P14252596623658718190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037294 (1 + n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A391486.P14252596623658718190

/-! ## A391486.P7799822854624004560

`∑[A091360(n+1)-(n+1)]`
-/

namespace A391486.P7799822854624004560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391486.P7799822854624004560

/-! ## A391486.P3210004879185711341

`A001478(1+∑[n]+n)+A360489(n+2)-1`
-/

namespace A391486.P3210004879185711341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (1 + ∑ j ∈ Finset.range (n + 1), f1 j + n) + (A360489 (n + 2) - 1)

end

end A391486.P3210004879185711341

/-!
# A391487: Number of nonequivalent essentially parallel series-parallel networks with longest path of at most n edges and largest cut set of at most n edges.

The programs for A391487, there is no canonical definition to state claims against.
-/

/-! ## A391487.P8160723470730625141

`(A007803(n+1)+1)/2`
-/

namespace A391487.P8160723470730625141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007803 (n + 1) + 1 : ℚ) / 2

end

end A391487.P8160723470730625141

/-! ## A391487.P14255870092227869171

`ceil(A007803(n+1)/2)`
-/

namespace A391487.P14255870092227869171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007803 (n + 1) : ℚ) / 2⌉

end

end A391487.P14255870092227869171

/-! ## A391487.P1876079021340889884

`A391485((n+1)²+n²)`
-/

namespace A391487.P1876079021340889884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391485 ((n + 1) ^ 2 + n ^ 2)

end

end A391487.P1876079021340889884

/-! ## A391487.P15232790842329894588

`round(A391484((n+1)²+n²)/2)`
-/

namespace A391487.P15232790842329894588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A391484 ((n + 1) ^ 2 + n ^ 2) : ℚ) / 2)

end

end A391487.P15232790842329894588

/-!
# A391490: Denominator of k + a/k where n = k^2 + 2a + 1 and -k <= a <= k.

The programs for A391490, there is no canonical definition to state claims against.
-/

/-! ## A391490.P193713556601475584

`A277227(A117384(2+n))`
-/

namespace A391490.P193713556601475584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A117384 (2 + n)).toNat

end

end A391490.P193713556601475584

/-! ## A391490.P4089066201146234254

`A006843(lt[A178853(3*n+5), A119678(n+1)])`
-/

namespace A391490.P4089066201146234254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178853 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A391490.P4089066201146234254

/-! ## A391490.P9458190448093853224

`A381622(A235114(n))`
-/

namespace A391490.P9458190448093853224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381622 (A235114 n).toNat

end

end A391490.P9458190448093853224

/-! ## A391490.P8680140091092117516

`A381622(A235116(n))`
-/

namespace A391490.P8680140091092117516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381622 (A235116 n).toNat

end

end A391490.P8680140091092117516

/-! ## A391490.P10268851782960618412

`A006843(n+2)%A377283(3*n+5)`
-/

namespace A391490.P10268851782960618412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006843 (n + 2)) (A377283 (3 * n + 5))

end

end A391490.P10268851782960618412

/-!
# A391491: Powerful numbers that are both divisible by only one prime cube and have more than 1 distinct prime factor.

The programs for A391491, there is no canonical definition to state claims against.
-/

/-! ## A391491.P8324918709702083065

`∪[A391923(n+1), A392069(n+1)]`
-/

namespace A391491.P8324918709702083065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P8324918709702083065

/-! ## A391491.P14561369087901102136

`∩[A377847(n+1), A389558(n+1)]`
-/

namespace A391491.P14561369087901102136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P14561369087901102136

/-! ## A391491.P18279224916887145650

`∩[A359280(n+1), A377847(n+1)]`
-/

namespace A391491.P18279224916887145650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P18279224916887145650

/-! ## A391491.P17824979151186901828

`∩[A372404(n+1), A377847(n+1)]`
-/

namespace A391491.P17824979151186901828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P17824979151186901828

/-! ## A391491.P4551535031851814910

`∩[A359280(n+1), A377846(n+1)]`
-/

namespace A391491.P4551535031851814910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P4551535031851814910

/-! ## A391491.P12359478096499441878

`∩[A372404(n+1), A377846(n+1)]`
-/

namespace A391491.P12359478096499441878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P12359478096499441878

/-! ## A391491.P9826936845446418139

`∩[A377846(n+1), A389558(n+1)]`
-/

namespace A391491.P9826936845446418139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P9826936845446418139

/-! ## A391491.P9010473538585533785

`∩[A377847(n+1), A387256(n+1)]`
-/

namespace A391491.P9010473538585533785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P9010473538585533785

/-! ## A391491.P11819167594047134724

`∩[A325240(n+1), A377847(n+1)]`
-/

namespace A391491.P11819167594047134724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P11819167594047134724

/-! ## A391491.P10087218238291182146

`∩[A286708(n+1), A377847(n+1)]`
-/

namespace A391491.P10087218238291182146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P10087218238291182146

/-! ## A391491.P18040365274510664069

`∩[A377846(n+1), A389752(n+1)]`
-/

namespace A391491.P18040365274510664069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P18040365274510664069

/-! ## A391491.P12209334104968902366

`∩[A377847(n+1), A389752(n+1)]`
-/

namespace A391491.P12209334104968902366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P12209334104968902366

/-! ## A391491.P12269723722398535590

`∩[A377846(n+1), A389528(n+1)]`
-/

namespace A391491.P12269723722398535590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P12269723722398535590

/-! ## A391491.P13741200319082695390

`∩[A377847(n+1), A389528(n+1)]`
-/

namespace A391491.P13741200319082695390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P13741200319082695390

/-! ## A391491.P8974038020602917473

`∩[A370266(n+1), A377847(n+1)]`
-/

namespace A391491.P8974038020602917473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P8974038020602917473

/-! ## A391491.P2464939990199772404

`∩[A036785(n+1), A377847(n+1)]`
-/

namespace A391491.P2464939990199772404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P2464939990199772404

/-! ## A391491.P12347044137528424676

`∩[A361098(n+1), A377847(n+1)]`
-/

namespace A391491.P12347044137528424676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P12347044137528424676

/-! ## A391491.P17990585549635653786

`∩[A377847(n+1), A398375(n+1)]`
-/

namespace A391491.P17990585549635653786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391491.P17990585549635653786

/-! ## A391491.P3905846864833930211

`filter[A377847(n+1), A355447(#)]`
-/

namespace A391491.P3905846864833930211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A391491.P3905846864833930211

/-! ## A391491.P9816557747757497159

`filter[A377847(n+1), A379958(#)]`
-/

namespace A391491.P9816557747757497159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A391491.P9816557747757497159

/-!
# A391492: Expansion of 1/(2 - g^2)^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391492, there is no canonical definition to state claims against.
-/

/-! ## A391492.P11762636174937497778

`(A391495(n)+A391464(n))/2`
-/

namespace A391492.P11762636174937497778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391495 n + A391464 n : ℚ) / 2

end

end A391492.P11762636174937497778

/-!
# A391493: Expansion of (g/(2 - g^2))^2, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391493, the canonical program `A391493.P9944037114687150373` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391493 has offset 0).

The definition of A391493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391493.P16901369341634137796

`2*A390423(n)-A289684(n)`
-/

namespace A391493.P16901369341634137796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A390423 n - A289684 n

end

end A391493.P16901369341634137796

namespace A391493

/-- `2*A390423(n)-A289684(n)` -/
def P16901369341634137796.Spec : Prop :=
  ∀ n, P16901369341634137796.a n = A391493 n

end A391493

/-! ## A391493.P9944037114687150373

`∑{#}[n, A391459(#)*A391459(n-#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A391493

/-- `∑{#}[n, A391459(#)*A391459(n-#)]` -/
def P9944037114687150373.Spec : Prop :=
  ∀ n, P9944037114687150373.a n = A391493 n

theorem P9944037114687150373.correct : P9944037114687150373.Spec := by
  intro n
  simp only [A391493]

end A391493

/-! ## A391493.P11681138854775776821

`2*∑{#}[n, A289684(#)*A289684(n-#)]-A289684(n)`
-/

namespace A391493.P11681138854775776821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ k ∈ Finset.range (f1 n + 1), A289684 k * A289684 (n - k)) - A289684 n

end

end A391493.P11681138854775776821

namespace A391493

/-- `2*∑{#}[n, A289684(#)*A289684(n-#)]-A289684(n)` -/
def P11681138854775776821.Spec : Prop :=
  ∀ n, P11681138854775776821.a n = A391493 n

end A391493

/-! ## A391493.P13242446308158712425

`(A390423(n)+A390423(n)-A289684(n))/A054840(n+1)%2`
-/

namespace A391493.P13242446308158712425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390423 n + (A390423 n - A289684 n) : ℚ) / (Int.tmod (A054840 (n + 1)) 2 : ℚ)

end

end A391493.P13242446308158712425

namespace A391493

/-- `(A390423(n)+A390423(n)-A289684(n))/A054840(n+1)%2` -/
def P13242446308158712425.Spec : Prop :=
  ∀ n, P13242446308158712425.a n = (A391493 n : ℚ)

end A391493

/-! ## A391493.P18104555050938108428

`(A390423(n)+A390423(n)-A289684(n))%A390423(n+2)`
-/

namespace A391493.P18104555050938108428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390423 n + (A390423 n - A289684 n)) (A390423 (n + 2))

end

end A391493.P18104555050938108428

namespace A391493

/-- `(A390423(n)+A390423(n)-A289684(n))%A390423(n+2)` -/
def P18104555050938108428.Spec : Prop :=
  ∀ n, P18104555050938108428.a n = A391493 n

end A391493

/-! ## A391493.P11036247019254574021

`(A390423(n)+A390423(n)-A289684(n))%(A391494(n)+1)`
-/

namespace A391493.P11036247019254574021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390423 n + (A390423 n - A289684 n)) (A391494 n + 1)

end

end A391493.P11036247019254574021

namespace A391493

/-- `(A390423(n)+A390423(n)-A289684(n))%(A391494(n)+1)` -/
def P11036247019254574021.Spec : Prop :=
  ∀ n, P11036247019254574021.a n = A391493 n

end A391493

/-!
# A391494: Expansion of (g/(2 - g^2))^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391494, there is no canonical definition to state claims against.
-/

/-! ## A391494.P2105163908582772461

`2*A390424(n)-A391461(n)`
-/

namespace A391494.P2105163908582772461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A390424 n - A391461 n

end

end A391494.P2105163908582772461

/-! ## A391494.P16543791308720096075

`∑{#}[n, A391462(#)*A391462(n-#)]`
-/

namespace A391494.P16543791308720096075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A391462 k * A391462 (n - k)

end

end A391494.P16543791308720096075

/-! ## A391494.P4360277952648503209

`2*∑{#}[n, A391461(#)*A391461(n-#)]-A391461(n)`
-/

namespace A391494.P4360277952648503209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ k ∈ Finset.range (f1 n + 1), A391461 k * A391461 (n - k)) - A391461 n

end

end A391494.P4360277952648503209

/-!
# A391495: Expansion of (g/(2 - g^2))^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391495, there is no canonical definition to state claims against.
-/

/-! ## A391495.P12554354714133953692

`2*A391492(n)-A391464(n)`
-/

namespace A391495.P12554354714133953692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A391492 n - A391464 n

end

end A391495.P12554354714133953692

/-!
# A391496: a(n) is the smallest k which has exactly 2*n divisors d such that tau(k) = tau(k/d + d).

The programs for A391496, there is no canonical definition to state claims against.
-/

/-! ## A391496.P13845311889557685421

`A280849(A006012(n)/A105224(3*n+4))`
-/

namespace A391496.P13845311889557685421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280849 (SequenceMachineLib.roundAway ((A006012 n : ℚ) / (A105224 (3 * n + 4) : ℚ))).toNat

end

end A391496.P13845311889557685421

/-!
# A391497: Biquadratefree numbers that are neither cubefree nor cubefull.

The programs for A391497, the canonical program `A391497.P15735606706962389679` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391497 has offset 1).

The definition of A391497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391497.P15735606706962389679

`∩[A362148(n+1), A375072(n+1)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A391497

/-- `∩[A362148(n+1), A375072(n+1)]` -/
def P15735606706962389679.Spec : Prop :=
  ∀ n, (P15735606706962389679.a n : ℤ) = A391497 (n + 1)

theorem P15735606706962389679.correct : P15735606706962389679.Spec := by
  intro n
  simp only [A391497, Nat.add_sub_cancel]

end A391497

/-! ## A391497.P7622732316058537282

`∩[A074451(n+1), A375072(n+1)]`
-/

namespace A391497.P7622732316058537282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P7622732316058537282

namespace A391497

/-- `∩[A074451(n+1), A375072(n+1)]` -/
def P7622732316058537282.Spec : Prop :=
  ∀ n, (P7622732316058537282.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P10891925137693507745

`∩[A074451(n+1), A382967(n+1)]`
-/

namespace A391497.P10891925137693507745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P10891925137693507745

namespace A391497

/-- `∩[A074451(n+1), A382967(n+1)]` -/
def P10891925137693507745.Spec : Prop :=
  ∀ n, (P10891925137693507745.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P7417205521395765481

`∩[A362148(n+1), A382967(n+1)]`
-/

namespace A391497.P7417205521395765481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P7417205521395765481

namespace A391497

/-- `∩[A362148(n+1), A382967(n+1)]` -/
def P7417205521395765481.Spec : Prop :=
  ∀ n, (P7417205521395765481.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P2815714381960131746

`∩[A303946(n+1), A375072(n+1)]`
-/

namespace A391497.P2815714381960131746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P2815714381960131746

namespace A391497

/-- `∩[A303946(n+1), A375072(n+1)]` -/
def P2815714381960131746.Spec : Prop :=
  ∀ n, (P2815714381960131746.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P15809250589180345945

`∩[A059404(n+1), A375072(n+1)]`
-/

namespace A391497.P15809250589180345945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P15809250589180345945

namespace A391497

/-- `∩[A059404(n+1), A375072(n+1)]` -/
def P15809250589180345945.Spec : Prop :=
  ∀ n, (P15809250589180345945.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P10437851818591608587

`∩[A106543(n+1), A375072(n+1)]`
-/

namespace A391497.P10437851818591608587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P10437851818591608587

namespace A391497

/-- `∩[A106543(n+1), A375072(n+1)]` -/
def P10437851818591608587.Spec : Prop :=
  ∀ n, (P10437851818591608587.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P11842495996226070609

`∩[A046100(n+1), A074451(n+1)]`
-/

namespace A391497.P11842495996226070609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P11842495996226070609

namespace A391497

/-- `∩[A046100(n+1), A074451(n+1)]` -/
def P11842495996226070609.Spec : Prop :=
  ∀ n, (P11842495996226070609.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P15047420562284959090

`∩[A046100(n+1), A362148(n+1)]`
-/

namespace A391497.P15047420562284959090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P15047420562284959090

namespace A391497

/-- `∩[A046100(n+1), A362148(n+1)]` -/
def P15047420562284959090.Spec : Prop :=
  ∀ n, (P15047420562284959090.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P18372765458578475145

`∩[A046100(n+1), A391415(n+1)]`
-/

namespace A391497.P18372765458578475145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P18372765458578475145

namespace A391497

/-- `∩[A046100(n+1), A391415(n+1)]` -/
def P18372765458578475145.Spec : Prop :=
  ∀ n, (P18372765458578475145.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P12171829879145617365

`∩[A007916(n+1), A375072(n+1)]`
-/

namespace A391497.P12171829879145617365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P12171829879145617365

namespace A391497

/-- `∩[A007916(n+1), A375072(n+1)]` -/
def P12171829879145617365.Spec : Prop :=
  ∀ n, (P12171829879145617365.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P4459213607747222774

`∩[A175082(n+1), A375072(n+1)]`
-/

namespace A391497.P4459213607747222774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P4459213607747222774

namespace A391497

/-- `∩[A175082(n+1), A375072(n+1)]` -/
def P4459213607747222774.Spec : Prop :=
  ∀ n, (P4459213607747222774.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P5236942167569492370

`∩[A094784(n+1), A375072(n+1)]`
-/

namespace A391497.P5236942167569492370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P5236942167569492370

namespace A391497

/-- `∩[A094784(n+1), A375072(n+1)]` -/
def P5236942167569492370.Spec : Prop :=
  ∀ n, (P5236942167569492370.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P6241867223832665162

`∩[A259444(n+1), A375072(n+1)]`
-/

namespace A391497.P6241867223832665162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P6241867223832665162

namespace A391497

/-- `∩[A259444(n+1), A375072(n+1)]` -/
def P6241867223832665162.Spec : Prop :=
  ∀ n, (P6241867223832665162.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P4570172568550508433

`∩[A362147(n+1), A375072(n+1)]`
-/

namespace A391497.P4570172568550508433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P4570172568550508433

namespace A391497

/-- `∩[A362147(n+1), A375072(n+1)]` -/
def P4570172568550508433.Spec : Prop :=
  ∀ n, (P4570172568550508433.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P15949029248096914956

`∩[A375072(n+1), A378287(n+1)]`
-/

namespace A391497.P15949029248096914956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P15949029248096914956

namespace A391497

/-- `∩[A375072(n+1), A378287(n+1)]` -/
def P15949029248096914956.Spec : Prop :=
  ∀ n, (P15949029248096914956.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P5833826025777294028

`∩[A007412(n+1), A375072(n+1)]`
-/

namespace A391497.P5833826025777294028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P5833826025777294028

namespace A391497

/-- `∩[A007412(n+1), A375072(n+1)]` -/
def P5833826025777294028.Spec : Prop :=
  ∀ n, (P5833826025777294028.a n : ℤ) = A391497 (n + 1)

end A391497

/-! ## A391497.P11286761705701501415

`filter[A074451(n+1), A307430(#)]`
-/

namespace A391497.P11286761705701501415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A391497.P11286761705701501415

namespace A391497

/-- `filter[A074451(n+1), A307430(#)]` -/
def P11286761705701501415.Spec : Prop :=
  ∀ n, P11286761705701501415.a n = A391497 (n + 1)

end A391497

/-! ## A391497.P9044722139204071003

`filter[A375072(n+1), A132350(#)]`
-/

namespace A391497.P9044722139204071003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A391497.P9044722139204071003

namespace A391497

/-- `filter[A375072(n+1), A132350(#)]` -/
def P9044722139204071003.Spec : Prop :=
  ∀ n, P9044722139204071003.a n = A391497 (n + 1)

end A391497

/-! ## A391497.P17677498340804283592

`filter[A362148(n+1), A307430(#)]`
-/

namespace A391497.P17677498340804283592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A391497.P17677498340804283592

namespace A391497

/-- `filter[A362148(n+1), A307430(#)]` -/
def P17677498340804283592.Spec : Prop :=
  ∀ n, P17677498340804283592.a n = A391497 (n + 1)

end A391497

