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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
# A393601: Expansion of (1/x) * Series_Reversion( x / ((1+x)^3 * (1+x^2)^3) ).

The programs for A393601, the canonical program `A393601.P15025958368521840646` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393601 has offset 0).

The definition of A393601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393601.P15025958368521840646

`1/(n+1)*∑{#}[floor(n/2), C(3*n+3, #)*C(3*n+3, n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393601

/-- `1/(n+1)*∑{#}[floor(n/2), C(3*n+3, #)*C(3*n+3, n-2*#)]` -/
def P15025958368521840646.Spec : Prop :=
  ∀ n, P15025958368521840646.a n = (A393601 n : ℚ)

end A393601

/-!
# A393602: a(n) is the first positive number that is the sum of a prime and the reverse of a prime in exactly n ways.

The programs for A393602, there is no canonical definition to state claims against.
-/

/-! ## A393602.P17271394118482778134

`fo[A391563(n+1)]+1`
-/

namespace A393602.P17271394118482778134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391563 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A393602.P17271394118482778134

/-!
# A393606: Rectangular array read by descending antidiagonals: row n shows the indices m such that prime(m) (mod n) = n-1.

The programs for A393606, there is no canonical definition to state claims against.
-/

/-! ## A393606.P11355218236719791764

`A000720(A393607(1+n))`
-/

namespace A393606.P11355218236719791764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A393607 (1 + n)).toNat

end

end A393606.P11355218236719791764

/-! ## A393606.P1638497673856029760

`A061395(A393607(n+1))`
-/

namespace A393606.P1638497673856029760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A393607 (n + 1)).toNat

end

end A393606.P1638497673856029760

/-! ## A393606.P16152338888473262517

`A056239(A393607(n+1))`
-/

namespace A393606.P16152338888473262517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A393607 (n + 1)).toNat

end

end A393606.P16152338888473262517

/-! ## A393606.P10041001315335567899

`A219109(A393607(n+1)+1)`
-/

namespace A393606.P10041001315335567899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219109 (A393607 (n + 1) + 1).toNat

end

end A393606.P10041001315335567899

/-! ## A393606.P15911730619637165092

`A049084(A393607(2*n+1-n))`
-/

namespace A393606.P15911730619637165092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A393607 (2 * n + 1 - n)).toNat

end

end A393606.P15911730619637165092

/-! ## A393606.P15828357090957246925

`A003963(2*A393607(n+1))`
-/

namespace A393606.P15828357090957246925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A393607 (n + 1)).toNat

end

end A393606.P15828357090957246925

/-!
# A393607: Rectangular array R read by descending antidiagonals: row n shows primes p such that (p mod n) = n-1.

The programs for A393607, there is no canonical definition to state claims against.
-/

/-! ## A393607.P1491606248504343971

`A000040(A393606(1+n))`
-/

namespace A393607.P1491606248504343971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A393606 (1 + n)).toNat

end

end A393607.P1491606248504343971

/-!
# A393608: Rectangular array R read by descending antidiagonals: R(n,k) = prime(k) mod n, for n>=2.

The programs for A393608, the canonical program `A393608.P11638185413194131276` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393608 has offset 2).

The definition of A393608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393608.P11638185413194131276

`A104887(n+1)%(col(n)+2)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A393608

/-- `A104887(n+1)%(col(n)+2)` -/
def P11638185413194131276.Spec : Prop :=
  ∀ n, P11638185413194131276.a n = A393608 (n + 2)

theorem P11638185413194131276.correct : P11638185413194131276.Spec := by
  intro n
  simp only [A393608, Nat.add_sub_cancel]

end A393608

/-! ## A393608.P2038429408255302704

`A000040(A130303(n+1))%(col(n)+2)`
-/

namespace A393608.P2038429408255302704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A130303 (n + 1)).toNat) (SequenceMachineLib.triCol n + 2 : ℤ)

end

end A393608.P2038429408255302704

namespace A393608

/-- `A000040(A130303(n+1))%(col(n)+2)` -/
def P2038429408255302704.Spec : Prop :=
  ∀ n, P2038429408255302704.a n = A393608 (n + 2)

end A393608

/-! ## A393608.P3518153380713601749

`A104887(1+n)%A161535(n+1)`
-/

namespace A393608.P3518153380713601749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104887 (1 + n)) (A161535 (n + 1))

end

end A393608.P3518153380713601749

namespace A393608

/-- `A104887(1+n)%A161535(n+1)` -/
def P3518153380713601749.Spec : Prop :=
  ∀ n, P3518153380713601749.a n = A393608 (n + 2)

end A393608

/-!
# A393609: Square array A read by descending antidiagonals: A(n,k) = prime(A035513(n, k)).

The programs for A393609, the canonical program `A393609.P11922313531072709366` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393609 has offset 1).

The definition of A393609 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035513, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A393609.P11922313531072709366

`A000040(A035513(n+1))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A393609

/-- `A000040(A035513(n+1))` -/
def P11922313531072709366.Spec : Prop :=
  ∀ n, P11922313531072709366.a n = A393609 (n + 1)

theorem P11922313531072709366.correct : P11922313531072709366.Spec := by
  intro n
  simp only [A393609, Nat.add_sub_cancel]

end A393609

/-! ## A393609.P18059175573292879578

`A000040(A035513(C(col(n)+1+row(n)-col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393609.P18059175573292879578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A035513 (Nat.choose ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A393609.P18059175573292879578

namespace A393609

/-- `A000040(A035513(C(col(n)+1+row(n)-col(n)+1-1, 2)+col(n)+1))` -/
def P18059175573292879578.Spec : Prop :=
  ∀ n, P18059175573292879578.a n = A393609 (n + 1)

end A393609

/-! ## A393609.P10808471288893922481

`A000040(A035513(C(row(n)-col(n)+1+col(n)+1-1, 2)+col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393609.P10808471288893922481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A035513 (Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + (SequenceMachineLib.triCol n + 1 : ℤ) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A393609.P10808471288893922481

namespace A393609

/-- `A000040(A035513(C(row(n)-col(n)+1+col(n)+1-1, 2)+col(n)+1))` -/
def P10808471288893922481.Spec : Prop :=
  ∀ n, P10808471288893922481.a n = A393609 (n + 1)

end A393609

/-! ## A393609.P15006598279985652806

`A008578(1+A035513(n+1))`
-/

namespace A393609.P15006598279985652806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + A035513 (n + 1)).toNat

end

end A393609.P15006598279985652806

namespace A393609

/-- `A008578(1+A035513(n+1))` -/
def P15006598279985652806.Spec : Prop :=
  ∀ n, P15006598279985652806.a n = A393609 (n + 1)

end A393609

/-! ## A393609.P13389839710857913606

`A182986(A035513(n+1)+1)`
-/

namespace A393609.P13389839710857913606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A035513 (n + 1) + 1).toNat

end

end A393609.P13389839710857913606

namespace A393609

/-- `A182986(A035513(n+1)+1)` -/
def P13389839710857913606.Spec : Prop :=
  ∀ n, P13389839710857913606.a n = A393609 (n + 1)

end A393609

/-! ## A393609.P7065867148147270037

`A158611(A035513(n+1)+2)`
-/

namespace A393609.P7065867148147270037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A035513 (n + 1) + 2).toNat

end

end A393609.P7065867148147270037

namespace A393609

/-- `A158611(A035513(n+1)+2)` -/
def P7065867148147270037.Spec : Prop :=
  ∀ n, P7065867148147270037.a n = A393609 (n + 1)

end A393609

/-! ## A393609.P1491785406779487981

`A134824(2*(n+2))+A008864(A035513(n+1))`
-/

namespace A393609.P1491785406779487981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (2 * (n + 2)) + A008864 (A035513 (n + 1)).toNat

end

end A393609.P1491785406779487981

namespace A393609

/-- `A134824(2*(n+2))+A008864(A035513(n+1))` -/
def P1491785406779487981.Spec : Prop :=
  ∀ n, P1491785406779487981.a n = A393609 (n + 1)

end A393609

/-! ## A393609.P14210141710472898530

`A006093(A035513(n+1))+A001511(2*n+3)`
-/

namespace A393609.P14210141710472898530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A035513 (n + 1)).toNat + A001511 (2 * n + 3)

end

end A393609.P14210141710472898530

namespace A393609

/-- `A006093(A035513(n+1))+A001511(2*n+3)` -/
def P14210141710472898530.Spec : Prop :=
  ∀ n, P14210141710472898530.a n = A393609 (n + 1)

end A393609

/-! ## A393609.P8243597275328675286

`A000040(A287870(n+1)+A287869(n+1))`
-/

namespace A393609.P8243597275328675286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A287870 (n + 1) + A287869 (n + 1)).toNat

end

end A393609.P8243597275328675286

namespace A393609

/-- `A000040(A287870(n+1)+A287869(n+1))` -/
def P8243597275328675286.Spec : Prop :=
  ∀ n, P8243597275328675286.a n = A393609 (n + 1)

end A393609

/-!
# A393611: a(n) = least positive integer k such that A002476(n) + 3^k + 1 is prime, or -1 if no such prime exists.

The programs for A393611, there is no canonical definition to state claims against.
-/

/-! ## A393611.P7999841072751617889

`A087372(A177965(n+2))`
-/

namespace A393611.P7999841072751617889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087372 (A177965 (n + 2)).toNat

end

end A393611.P7999841072751617889

/-! ## A393611.P8063682624989427965

`A318749(A250217(n+1)%A005117(2*n+5))`
-/

namespace A393611.P8063682624989427965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318749 (Int.tmod (A250217 (n + 1)) (A005117 (2 * n + 5))).toNat

end

end A393611.P8063682624989427965

/-! ## A393611.P1104839044448974320

`gcd(A007862(A022302(n)), A279563(n))`
-/

namespace A393611.P1104839044448974320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007862 (A022302 n).toNat) (A279563 n)

end

end A393611.P1104839044448974320

/-! ## A393611.P16600018752985122509

`A384877(A016789(3*n+1)%A054353(3*n+2))`
-/

namespace A393611.P16600018752985122509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384877 (Int.tmod (A016789 (3 * n + 1)) (A054353 (3 * n + 2))).toNat

end

end A393611.P16600018752985122509

/-! ## A393611.P10204112074081617891

`A228287(A314704(n+1))`
-/

namespace A393611.P10204112074081617891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228287 (A314704 (n + 1)).toNat

end

end A393611.P10204112074081617891

/-!
# A393614: Numbers of the form a*b*c*r/60 where (a,b,c) is a primitive Pythagorean triple with inradius r.

The programs for A393614, there is no canonical definition to state claims against.
-/

/-! ## A393614.P9359502321090353425

`A393526(n+1)/60`
-/

namespace A393614.P9359502321090353425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393526 (n + 1) : ℚ) / 60

end

end A393614.P9359502321090353425

/-! ## A393614.P10715943476748797252

`record[A393526(A324347(n))/60]`
-/

namespace A393614.P10715943476748797252
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393526 (A324347 n).toNat : ℚ) / 60

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393614.P10715943476748797252

/-! ## A393614.P15715800330135414020

`record[A393526(A154958(n))/60]`
-/

namespace A393614.P15715800330135414020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393526 (A154958 n).toNat : ℚ) / 60

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393614.P15715800330135414020

/-! ## A393614.P468673739864251093

`record[A393526(A328388(n))/60]`
-/

namespace A393614.P468673739864251093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393526 (A328388 n).toNat : ℚ) / 60

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393614.P468673739864251093

/-!
# A393616: Positive integers expressible as a difference of two nonzero rational fourth powers.

The programs for A393616, there is no canonical definition to state claims against.
-/

/-! ## A393616.P15157730691641580062

`filter[A393617(1+n), A049240(#)]`
-/

namespace A393616.P15157730691641580062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A393616.P15157730691641580062

/-! ## A393616.P1179174047154612783

`filter[A393617(1+n), A267594(#)]`
-/

namespace A393616.P1179174047154612783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A393616.P1179174047154612783

/-! ## A393616.P4956298736446756415

`filter[A393617(1+n), A267612(#)]`
-/

namespace A393616.P4956298736446756415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267612 (f1 j).toNat = 1) n)

end

end A393616.P4956298736446756415

/-! ## A393616.P7002155029403954440

`filter[A393617(n+1), A267635(#)]`
-/

namespace A393616.P7002155029403954440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A393616.P7002155029403954440

/-! ## A393616.P17561563772863462333

`∩[A000037(n+1), A393617(n+1)]`
-/

namespace A393616.P17561563772863462333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393616.P17561563772863462333

/-! ## A393616.P232199511915629354

`∩[A003273(n+1), A393617(n+1)]`
-/

namespace A393616.P232199511915629354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393616.P232199511915629354

/-! ## A393616.P7447549626012339125

`∩[A028983(n+1), A393617(n+1)]`
-/

namespace A393616.P7447549626012339125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393616.P7447549626012339125

/-! ## A393616.P2121439091042947015

`∩[A092206(n+1), A393617(n+1)]`
-/

namespace A393616.P2121439091042947015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393616.P2121439091042947015

/-! ## A393616.P125594023613023593

`∩[A094784(n+1), A393617(n+1)]`
-/

namespace A393616.P125594023613023593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393616.P125594023613023593

/-!
# A393618: O.g.f. A(x) satisfies: [x^n] exp( n*(n-1)*x ) / A(x)^(n-1) = 0 for n > 0.

The programs for A393618, there is no canonical definition to state claims against.
-/

/-! ## A393618.P2520473974243996363

`A342202(A041823(n))`
-/

namespace A393618.P2520473974243996363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342202 (A041823 n).toNat

end

end A393618.P2520473974243996363

/-! ## A393618.P17119253672399481248

`A065033(A362643(n)-n)`
-/

namespace A393618.P17119253672399481248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A362643 n - (n : ℤ)).toNat

end

end A393618.P17119253672399481248

/-!
# A393619: O.g.f. A(x) satisfies: [x^n] exp( n*(n-1)*x*A(x) ) / A(x)^(n-1) = 0 for n > 0.

The programs for A393619, there is no canonical definition to state claims against.
-/

/-! ## A393619.P2310508313856901799

`A296233(A338193(n))`
-/

namespace A393619.P2310508313856901799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296233 (A338193 n).toNat

end

end A393619.P2310508313856901799

/-! ## A393619.P5128599928557277646

`A329296(A147343(3*(n+1)))+A000275(n)`
-/

namespace A393619.P5128599928557277646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329296 (A147343 (3 * (n + 1))).toNat + A000275 n

end

end A393619.P5128599928557277646

/-!
# A393620: Rectangular table, read by ascending antidiagonals, in which the n-th row o.g.f. R(n,x) satisfies: [x^m] exp( m*(m+1) * x*R(n,x)^n ) / R(n,x)^(m+1) = 0 for m >= 1, n >= 0.

The programs for A393620, there is no canonical definition to state claims against.
-/

/-! ## A393620.P14950768720357573873

`A349552(A387597(n))`
-/

namespace A393620.P14950768720357573873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349552 (A387597 n).toNat

end

end A393620.P14950768720357573873

/-! ## A393620.P10061054217226242444

`A250000(A128325(n))+A128325(n)`
-/

namespace A393620.P10061054217226242444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250000 (A128325 n).toNat + A128325 n

end

end A393620.P10061054217226242444

/-! ## A393620.P7711102051696069508

`A343347(A079901(n)^A190483(3*n+1))`
-/

namespace A393620.P7711102051696069508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343347 (SequenceMachineLib.roundAway ((A079901 n : ℚ) ^ (A190483 (3 * n + 1) : ℤ))).toNat

end

end A393620.P7711102051696069508

/-!
# A393621: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * x*A(x) ) / A(x)^(n+1) = 0 for n > 0.

The programs for A393621, there is no canonical definition to state claims against.
-/

/-! ## A393621.P15412095008536942197

`A393620(∑[2+n]-1)`
-/

namespace A393621.P15412095008536942197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A393621.P15412095008536942197

/-! ## A393621.P15605893854119724796

`A393620(∑[n+1]+n)+A003982(A007304(n+1))`
-/

namespace A393621.P15605893854119724796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A003982 (A007304 (n + 1)).toNat

end

end A393621.P15605893854119724796

/-! ## A393621.P4956295216463048031

`round(sqrt(A393620(∑[n+1]+n)²+1))`
-/

namespace A393621.P4956295216463048031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A393620 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2 + 1 : ℝ))

end

end A393621.P4956295216463048031

/-!
# A393622: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * x*A(x)^2 ) / A(x)^(n+1) = 0 for n > 0.

The programs for A393622, there is no canonical definition to state claims against.
-/

/-! ## A393622.P11109725357077108345

`A393620(∑[n+3])`
-/

namespace A393622.P11109725357077108345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393622.P11109725357077108345

/-!
# A393623: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * x*A(x)^3 ) / A(x)^(n+1) = 0 for n > 0.

The programs for A393623, there is no canonical definition to state claims against.
-/

/-! ## A393623.P622784479677352390

`A393620(A046691(n+2))`
-/

namespace A393623.P622784479677352390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A046691 (n + 2)).toNat

end

end A393623.P622784479677352390

/-! ## A393623.P11779973399001397596

`A393620(A155212(n)+4)`
-/

namespace A393623.P11779973399001397596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A155212 n + 4).toNat

end

end A393623.P11779973399001397596

/-! ## A393623.P8232557630582154927

`A393620(A055999(n+1)+2)`
-/

namespace A393623.P8232557630582154927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A055999 (n + 1) + 2).toNat

end

end A393623.P8232557630582154927

/-! ## A393623.P1824238015532091874

`A393620(A000217(n+3)+n)`
-/

namespace A393623.P1824238015532091874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A393623.P1824238015532091874

/-!
# A393624: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * x*A(x)^4 ) / A(x)^(n+1) = 0 for n > 0.

The programs for A393624, there is no canonical definition to state claims against.
-/

/-! ## A393624.P7693857261490506492

`A393620(A052905(2+n))`
-/

namespace A393624.P7693857261490506492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A052905 (2 + n)).toNat

end

end A393624.P7693857261490506492

/-! ## A393624.P11683898307118249475

`A393620(A046691(n+3)-1)`
-/

namespace A393624.P11683898307118249475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A046691 (n + 3) - 1).toNat

end

end A393624.P11683898307118249475

/-! ## A393624.P10904649356058717556

`A393620(A000217(n+4)+n)`
-/

namespace A393624.P10904649356058717556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A393624.P10904649356058717556

/-! ## A393624.P1970649773235610204

`A393620(Δ[A023545(n+1)]-1)`
-/

namespace A393624.P1970649773235610204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (f1 (n + 1) - f1 n - 1).toNat

end

end A393624.P1970649773235610204

/-!
# A393625: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * x*A(x)^5 ) / A(x)^(n+1) = 0 for n > 0.

The programs for A393625, there is no canonical definition to state claims against.
-/

/-! ## A393625.P18031739558730836326

`A393620(A055999(n+3))`
-/

namespace A393625.P18031739558730836326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A055999 (n + 3)).toNat

end

end A393625.P18031739558730836326

/-! ## A393625.P17815815501859903100

`A393620(A046691(n+4)-2)`
-/

namespace A393625.P17815815501859903100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A046691 (n + 4) - 2).toNat

end

end A393625.P17815815501859903100

/-!
# A393626: Main diagonal of rectangular table A393620.

The programs for A393626, there is no canonical definition to state claims against.
-/

/-! ## A393626.P12792913993554721371

`A393620(C(n+n+1, 2)+n)`
-/

namespace A393626.P12792913993554721371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (Nat.choose (n + n + 1) 2 + n)

end

end A393626.P12792913993554721371

/-! ## A393626.P7977379110061492041

`A393620(∑[4*n])`
-/

namespace A393626.P7977379110061492041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393626.P7977379110061492041

/-!
# A393627: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * x*A(x)^6 ) / A(x)^(n+1) = 0 for n > 0.

The programs for A393627, there is no canonical definition to state claims against.
-/

/-! ## A393627.P13373798913226205757

`A393620(eq[7, A195663(n)])`
-/

namespace A393627.P13373798913226205757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A393627.P13373798913226205757

/-! ## A393627.P13264255835037451939

`A393620(A055999(n+4)-1)`
-/

namespace A393627.P13264255835037451939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A055999 (n + 4) - 1).toNat

end

end A393627.P13264255835037451939

/-! ## A393627.P5167127493690609302

`A393620(A016921(n+3)+A000124(n+1))`
-/

namespace A393627.P5167127493690609302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A016921 (n + 3) + A000124 (n + 1)).toNat

end

end A393627.P5167127493690609302

/-!
# A393628: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * x*A(x)^7 ) / A(x)^(n+1) = 0 for n > 0.

The programs for A393628, there is no canonical definition to state claims against.
-/

/-! ## A393628.P5384659348656128042

`A393620(A155212(n+4))`
-/

namespace A393628.P5384659348656128042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A155212 (n + 4)).toNat

end

end A393628.P5384659348656128042

/-!
# A393629: G.f. satisfies A(x) = x + x*d/dx ( x*d/dx A(x)^2/2 ).

The programs for A393629, there is no canonical definition to state claims against.
-/

/-! ## A393629.P4609353433945304316

`(n+1)*A323694(n)`
-/

namespace A393629.P4609353433945304316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A323694 n

end

end A393629.P4609353433945304316

/-! ## A393629.P16607049780602493825

`A216733(n+1)/(n+1)`
-/

namespace A393629.P16607049780602493825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216733 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A393629.P16607049780602493825

/-!
# A393631: Triangle read by rows giving successive states of the Code 10 1-D cellular automaton when started from a single ON cell.

The programs for A393631, there is no canonical definition to state claims against.
-/

/-! ## A393631.P4027245763222328106

`A359828(A271839(n+3)+A251746(n))`
-/

namespace A393631.P4027245763222328106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359828 (A271839 (n + 3) + A251746 n).toNat

end

end A393631.P4027245763222328106

/-! ## A393631.P13016117047856700891

`A000161(lcm(A327634(3*n+5), A358133(n+3)))`
-/

namespace A393631.P13016117047856700891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (Int.lcm (A327634 (3 * n + 5)) (A358133 (n + 3)))

end

end A393631.P13016117047856700891

/-! ## A393631.P14934313351059739264

`A341754(A001221(n+1)*A006209(n+1))`
-/

namespace A393631.P14934313351059739264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341754 (A001221 (n + 1) * A006209 (n + 1)).toNat

end

end A393631.P14934313351059739264

/-! ## A393631.P8924704084046145999

`A029691(A157910(n+1))`
-/

namespace A393631.P8924704084046145999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029691 (A157910 (n + 1)).toNat

end

end A393631.P8924704084046145999

/-! ## A393631.P8871852749601233299

`(ceil(A002808(A278657(2*(n+2)))/2)+1)%2`
-/

namespace A393631.P8871852749601233299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(A002808 (A278657 (2 * (n + 2))).toNat : ℚ) / 2⌉ + 1) 2

end

end A393631.P8871852749601233299

/-!
# A393636: Decimal expansion of 2*cos(Pi/8)/(1+cos(Pi/8)).

The programs for A393636, there is no canonical definition to state claims against.
-/

/-! ## A393636.P7101694376782129710

`9-A393638(n)`
-/

namespace A393636.P7101694376782129710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A393638 n

end

end A393636.P7101694376782129710

/-!
# A393638: Decimal expansion of 2/(1+cos(Pi/8))-1.

The programs for A393638, there is no canonical definition to state claims against.
-/

/-! ## A393638.P9078219565830254542

`9-A393636(n)`
-/

namespace A393638.P9078219565830254542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A393636 n

end

end A393638.P9078219565830254542

/-!
# A393641: Primes p that are the greatest prime factor of 2^k + 1 for some k.

The programs for A393641, there is no canonical definition to state claims against.
-/

/-! ## A393641.P9786962531363662457

`A002587(A396044(n+1))`
-/

namespace A393641.P9786962531363662457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (A396044 (n + 1)).toNat

end

end A393641.P9786962531363662457

/-! ## A393641.P17343212704887898312

`comp[comp[A002587(n)]-1]+1`
-/

namespace A393641.P17343212704887898312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A393641.P17343212704887898312

/-! ## A393641.P9925638832560484721

`lt[A360109(n), char[A002587(n)]]`
-/

namespace A393641.P9925638832560484721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360109 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A393641.P9925638832560484721

/-! ## A393641.P16122980590919076041

`eq[A235943(n), A341932(n)]`
-/

namespace A393641.P16122980590919076041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235943 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393641.P16122980590919076041

/-! ## A393641.P9290523825442218671

`A019565(record[2^A006694(n)])`
-/

namespace A393641.P9290523825442218671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006694 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A393641.P9290523825442218671

/-!
# A393642: First differences of fifth powers of triangular numbers.

The programs for A393642, the canonical program `A393642.P5833135613385001955` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393642 has offset 0).

The definition of A393642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393642.P5833135613385001955

`(5*n^9+10*n^7+n^5)/16`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393642

/-- `(5*n^9+10*n^7+n^5)/16` -/
def P5833135613385001955.Spec : Prop :=
  ∀ n, P5833135613385001955.a n = (A393642 n : ℚ)

end A393642

/-! ## A393642.P4112295005522346804

`Δ[C(n, 2)^5]`
-/

namespace A393642.P4112295005522346804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A393642.P4112295005522346804

namespace A393642

/-- `Δ[C(n, 2)^5]` -/
def P4112295005522346804.Spec : Prop :=
  ∀ n, P4112295005522346804.a n = A393642 n

end A393642

/-! ## A393642.P3690035602048842512

`Δ[A161680(n)^5]`
-/

namespace A393642.P3690035602048842512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393642.P3690035602048842512

namespace A393642

/-- `Δ[A161680(n)^5]` -/
def P3690035602048842512.Spec : Prop :=
  ∀ n, P3690035602048842512.a n = A393642 n

end A393642

/-! ## A393642.P10364541205267872005

`Δ[(A000124(n)-(n+1))^5]`
-/

namespace A393642.P10364541205267872005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000124 n - (n + 1 : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393642.P10364541205267872005

namespace A393642

/-- `Δ[(A000124(n)-(n+1))^5]` -/
def P10364541205267872005.Spec : Prop :=
  ∀ n, P10364541205267872005.a n = A393642 n

end A393642

/-! ## A393642.P1603592257672864310

`Δ[A000584(∑[n]-n)]`
-/

namespace A393642.P1603592257672864310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393642.P1603592257672864310

namespace A393642

/-- `Δ[A000584(∑[n]-n)]` -/
def P1603592257672864310.Spec : Prop :=
  ∀ n, P1603592257672864310.a n = A393642 n

end A393642

/-!
# A393643: Primes of the form x^^y + w^^z, where x, y, w, z >= 2 and ^^ denotes tetration.

The programs for A393643, there is no canonical definition to state claims against.
-/

/-! ## A393643.P8700707248668260813

`p?[A399068(n+1)]`
-/

namespace A393643.P8700707248668260813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A393643.P8700707248668260813

/-!
# A393655: Total number of descents over all paths from a fixed vertex on level 2*(n+1) to level 1 in the 3-Bratteli diagram, a(n) = 3^(n-3)*(16*n-13), n>=3.

The programs for A393655, the canonical program `A393655.P8117864334474351213` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393655 has offset 3).

The definition of A393655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(16*(n+3)-13)` (program `A393655.P8117864334474351213`, by `A393655.P8117864334474351213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393655.P12778956217976503331

`ogf((35-57x)/(1-6x+9x^2))`
-/

namespace A393655.P12778956217976503331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [35, -57] [1, -6, 9] n

end

end A393655.P12778956217976503331

namespace A393655

/-- `ogf((35-57x)/(1-6x+9x^2))` -/
def P12778956217976503331.Spec : Prop :=
  ∀ n, P12778956217976503331.a n = A393655 (n + 3)

end A393655

/-! ## A393655.P8117864334474351213

`3^n*(16*(n+3)-13)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393655

/-- `3^n*(16*(n+3)-13)` -/
def P8117864334474351213.Spec : Prop :=
  ∀ n, P8117864334474351213.a n = A393655 (n + 3)

theorem P8117864334474351213.correct : P8117864334474351213.Spec := by
  intro n
  simp only [A393655, Nat.add_sub_cancel]

end A393655

/-! ## A393655.P13127005554135425931

`A393662(n+3)+A008776(n)`
-/

namespace A393655.P13127005554135425931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393662 (n + 3) + A008776 n

end

end A393655.P13127005554135425931

namespace A393655

/-- `A393662(n+3)+A008776(n)` -/
def P13127005554135425931.Spec : Prop :=
  ∀ n, P13127005554135425931.a n = A393655 (n + 3)

theorem P13127005554135425931.correct : P13127005554135425931.Spec := by
  intro n
  simp only [A393655, Nat.add_sub_cancel, A393655.P13127005554135425931.a, A393655.P8117864334474351213.a, A008776, A008776.P11088121667404015999.a, A393662, A393662.P12609403442720714031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393655

/-! ## A393655.P16991804448155382578

`A393662(n+3)+Δ[A000244(n)]`
-/

namespace A393655.P16991804448155382578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393662 (n + 3) + (f1 (n + 1) - f1 n)

end

end A393655.P16991804448155382578

namespace A393655

/-- `A393662(n+3)+Δ[A000244(n)]` -/
def P16991804448155382578.Spec : Prop :=
  ∀ n, P16991804448155382578.a n = A393655 (n + 3)

theorem P16991804448155382578.correct : P16991804448155382578.Spec := by
  intro n
  simp only [A393655, Nat.add_sub_cancel, A393655.P16991804448155382578.f1, A393655.P16991804448155382578.a, A393655.P8117864334474351213.a, A000244, A000244.P17162167222172810417.a, A393662, A393662.P12609403442720714031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393655

/-! ## A393655.P5798724790461943200

`A393661(n+3)+Δ[A008776(n)]`
-/

namespace A393655.P5798724790461943200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393661 (n + 3) + (f1 (n + 1) - f1 n)

end

end A393655.P5798724790461943200

namespace A393655

/-- `A393661(n+3)+Δ[A008776(n)]` -/
def P5798724790461943200.Spec : Prop :=
  ∀ n, P5798724790461943200.a n = A393655 (n + 3)

theorem P5798724790461943200.correct : P5798724790461943200.Spec := by
  intro n
  simp only [A393655, Nat.add_sub_cancel, A393655.P5798724790461943200.f1, A393655.P5798724790461943200.a, A393655.P8117864334474351213.a, A008776, A008776.P11088121667404015999.a, A393661, A393661.P18445463208938884355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393655

/-! ## A393655.P8946769561123855601

`Δ[A008776(n)]+A113071(n+2)-A000244(n+2)`
-/

namespace A393655.P8946769561123855601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A113071 (n + 2) - A000244 (n + 2))

end

end A393655.P8946769561123855601

namespace A393655

/-- `Δ[A008776(n)]+A113071(n+2)-A000244(n+2)` -/
def P8946769561123855601.Spec : Prop :=
  ∀ n, P8946769561123855601.a n = A393655 (n + 3)

end A393655

/-! ## A393655.P1287295664349239929

`A393662(n+3)+A393662(n+3)-A393661(n+3)`
-/

namespace A393655.P1287295664349239929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393662 (n + 3) + (A393662 (n + 3) - A393661 (n + 3))

end

end A393655.P1287295664349239929

namespace A393655

/-- `A393662(n+3)+A393662(n+3)-A393661(n+3)` -/
def P1287295664349239929.Spec : Prop :=
  ∀ n, P1287295664349239929.a n = A393655 (n + 3)

theorem P1287295664349239929.correct : P1287295664349239929.Spec := by
  intro n
  simp only [A393655, Nat.add_sub_cancel, A393655.P1287295664349239929.a, A393655.P8117864334474351213.a, A393661, A393661.P18445463208938884355.a, A393662, A393662.P12609403442720714031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393655

/-!
# A393656: Expansion of (1/x) * Series_Reversion( x * ( Sum_{k=0..3} (-x)^k )^2 ).

The programs for A393656, the canonical program `A393656.P8895218338482953258` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393656 has offset 0).

The definition of A393656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393656.P8895218338482953258

`1/(n+1)*∑{#}[floor(n/4), C(2*n+#+1, #)*C(2*n+2, n-4*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393656

/-- `1/(n+1)*∑{#}[floor(n/4), C(2*n+#+1, #)*C(2*n+2, n-4*#)]` -/
def P8895218338482953258.Spec : Prop :=
  ∀ n, P8895218338482953258.a n = (A393656 n : ℚ)

end A393656

/-! ## A393656.P11747083071286888385

`A052534(n)+∑[A059995(A151124(n))]`
-/

namespace A393656.P11747083071286888385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A151124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393656.P11747083071286888385

namespace A393656

/-- `A052534(n)+∑[A059995(A151124(n))]` -/
def P11747083071286888385.Spec : Prop :=
  ∀ n, P11747083071286888385.a n = A393656 n

end A393656

/-!
# A393657: Expansion of (1/x) * Series_Reversion( x * ( Sum_{k=0..3} (-x)^k )^3 ).

The programs for A393657, the canonical program `A393657.P17394137928593861308` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393657 has offset 0).

The definition of A393657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393657.P17394137928593861308

`1/(n+1)*∑{#}[floor(n/4), C(3*n+#+2, #)*C(3*n+3, n-4*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393657

/-- `1/(n+1)*∑{#}[floor(n/4), C(3*n+#+2, #)*C(3*n+3, n-4*#)]` -/
def P17394137928593861308.Spec : Prop :=
  ∀ n, P17394137928593861308.a n = (A393657 n : ℚ)

end A393657

/-!
# A393658: Expansion of (1/x) * Series_Reversion( x * ( Sum_{k=0..5} (-x)^k ) ).

The programs for A393658, the canonical program `A393658.P10375454949551094657` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393658 has offset 0).

The definition of A393658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393658.P10375454949551094657

`1/(n+1)*∑{#}[floor(n/6), C(n+#, #)*C(n+1, n-6*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393658

/-- `1/(n+1)*∑{#}[floor(n/6), C(n+#, #)*C(n+1, n-6*#)]` -/
def P10375454949551094657.Spec : Prop :=
  ∀ n, P10375454949551094657.a n = (A393658 n : ℚ)

end A393658

/-!
# A393659: Expansion of (1/x) * Series_Reversion( x * ( Sum_{k=0..5} (-x)^k )^2 ).

The programs for A393659, the canonical program `A393659.P2258393149270232790` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393659 has offset 0).

The definition of A393659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393659.P2258393149270232790

`1/(n+1)*∑{#}[floor(n/6), C(2*n+#+1, #)*C(2*n+2, n-6*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393659

/-- `1/(n+1)*∑{#}[floor(n/6), C(2*n+#+1, #)*C(2*n+2, n-6*#)]` -/
def P2258393149270232790.Spec : Prop :=
  ∀ n, P2258393149270232790.a n = (A393659 n : ℚ)

end A393659

/-! ## A393659.P13427351375148701809

`or(A000108(n+1), A389424(A118968(2*(n+2))))`
-/

namespace A393659.P13427351375148701809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000108 (n + 1)) (A389424 (A118968 (2 * (n + 2))).toNat)

end

end A393659.P13427351375148701809

namespace A393659

/-- `or(A000108(n+1), A389424(A118968(2*(n+2))))` -/
def P13427351375148701809.Spec : Prop :=
  ∀ n, P13427351375148701809.a n = A393659 n

end A393659

/-! ## A393659.P7019224481953080925

`A072620(A125501(n))`
-/

namespace A393659.P7019224481953080925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072620 (A125501 n).toNat

end

end A393659.P7019224481953080925

namespace A393659

/-- `A072620(A125501(n))` -/
def P7019224481953080925.Spec : Prop :=
  ∀ n, P7019224481953080925.a n = A393659 n

end A393659

/-!
# A393660: Expansion of (1/x) * Series_Reversion( x * ( Sum_{k=0..5} (-x)^k )^3 ).

The programs for A393660, the canonical program `A393660.P5547733186230278812` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393660 has offset 0).

The definition of A393660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393660.P5547733186230278812

`1/(n+1)*∑{#}[floor(n/6), C(3*n+#+2, #)*C(3*n+3, n-6*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393660

/-- `1/(n+1)*∑{#}[floor(n/6), C(3*n+#+2, #)*C(3*n+3, n-6*#)]` -/
def P5547733186230278812.Spec : Prop :=
  ∀ n, P5547733186230278812.a n = (A393660 n : ℚ)

end A393660

/-! ## A393660.P9051628583256724747

`A342845(A165896(n))+A001764(n+1)`
-/

namespace A393660.P9051628583256724747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 (A165896 n).toNat + A001764 (n + 1)

end

end A393660.P9051628583256724747

namespace A393660

/-- `A342845(A165896(n))+A001764(n+1)` -/
def P9051628583256724747.Spec : Prop :=
  ∀ n, P9051628583256724747.a n = A393660 n

end A393660

/-! ## A393660.P1277481592847386920

`A172444(A372174(n))+A001764(n+1)`
-/

namespace A393660.P1277481592847386920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172444 (A372174 n).toNat + A001764 (n + 1)

end

end A393660.P1277481592847386920

namespace A393660

/-- `A172444(A372174(n))+A001764(n+1)` -/
def P1277481592847386920.Spec : Prop :=
  ∀ n, P1277481592847386920.a n = A393660 n

end A393660

/-!
# A393661: A sequence appearing in the 3-Bratteli diagram, a(n)=3^(n-3)*(16*n-17), n>=3.

The programs for A393661, the canonical program `A393661.P18445463208938884355` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393661 has offset 3).

The definition of A393661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393661.P18198548889611853106

`ogf((31-45x)/(1-6x+9x^2))`
-/

namespace A393661.P18198548889611853106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [31, -45] [1, -6, 9] n

end

end A393661.P18198548889611853106

namespace A393661

/-- `ogf((31-45x)/(1-6x+9x^2))` -/
def P18198548889611853106.Spec : Prop :=
  ∀ n, P18198548889611853106.a n = A393661 (n + 3)

end A393661

/-! ## A393661.P18445463208938884355

`3^n*(16*(n+3)-17)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393661

/-- `3^n*(16*(n+3)-17)` -/
def P18445463208938884355.Spec : Prop :=
  ∀ n, P18445463208938884355.a n = A393661 (n + 3)

theorem P18445463208938884355.correct : P18445463208938884355.Spec := by
  intro n
  simp only [A393661, Nat.add_sub_cancel]

end A393661

/-! ## A393661.P11443650574921910585

`A393662(n+3)-A008776(n)`
-/

namespace A393661.P11443650574921910585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393662 (n + 3) - A008776 n

end

end A393661.P11443650574921910585

namespace A393661

/-- `A393662(n+3)-A008776(n)` -/
def P11443650574921910585.Spec : Prop :=
  ∀ n, P11443650574921910585.a n = A393661 (n + 3)

theorem P11443650574921910585.correct : P11443650574921910585.Spec := by
  intro n
  simp only [A393661, Nat.add_sub_cancel, A393661.P11443650574921910585.a, A393661.P18445463208938884355.a, A008776, A008776.P11088121667404015999.a, A393662, A393662.P12609403442720714031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393661

/-! ## A393661.P900779895693563734

`A393662(n+3)-Δ[A000244(n)]`
-/

namespace A393661.P900779895693563734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393662 (n + 3) - (f1 (n + 1) - f1 n)

end

end A393661.P900779895693563734

namespace A393661

/-- `A393662(n+3)-Δ[A000244(n)]` -/
def P900779895693563734.Spec : Prop :=
  ∀ n, P900779895693563734.a n = A393661 (n + 3)

theorem P900779895693563734.correct : P900779895693563734.Spec := by
  intro n
  simp only [A393661, Nat.add_sub_cancel, A393661.P900779895693563734.f1, A393661.P900779895693563734.a, A393661.P18445463208938884355.a, A000244, A000244.P17162167222172810417.a, A393662, A393662.P12609403442720714031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393661

/-! ## A393661.P642787656261681875

`A393655(n+3)-Δ[A008776(n)]`
-/

namespace A393661.P642787656261681875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393655 (n + 3) - (f1 (n + 1) - f1 n)

end

end A393661.P642787656261681875

namespace A393661

/-- `A393655(n+3)-Δ[A008776(n)]` -/
def P642787656261681875.Spec : Prop :=
  ∀ n, P642787656261681875.a n = A393661 (n + 3)

theorem P642787656261681875.correct : P642787656261681875.Spec := by
  intro n
  simp only [A393661, Nat.add_sub_cancel, A393661.P642787656261681875.f1, A393661.P642787656261681875.a, A393661.P18445463208938884355.a, A008776, A008776.P11088121667404015999.a, A393655, A393655.P8117864334474351213.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393661

/-! ## A393661.P13446363771370789380

`A113071(n+2)-A000244(n+2)`
-/

namespace A393661.P13446363771370789380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113071 (n + 2) - A000244 (n + 2)

end

end A393661.P13446363771370789380

namespace A393661

/-- `A113071(n+2)-A000244(n+2)` -/
def P13446363771370789380.Spec : Prop :=
  ∀ n, P13446363771370789380.a n = A393661 (n + 3)

end A393661

/-! ## A393661.P7954309138384180723

`or(A000244(n)*A125169(n+1), and(1, n))`
-/

namespace A393661.P7954309138384180723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 n * A125169 (n + 1)) (Nat.land 1 n : ℤ)

end

end A393661.P7954309138384180723

namespace A393661

/-- `or(A000244(n)*A125169(n+1), and(1, n))` -/
def P7954309138384180723.Spec : Prop :=
  ∀ n, P7954309138384180723.a n = A393661 (n + 3)

end A393661

/-! ## A393661.P14337946783475359604

`A393662(n+3)+A393662(n+3)-A393655(n+3)`
-/

namespace A393661.P14337946783475359604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393662 (n + 3) + (A393662 (n + 3) - A393655 (n + 3))

end

end A393661.P14337946783475359604

namespace A393661

/-- `A393662(n+3)+A393662(n+3)-A393655(n+3)` -/
def P14337946783475359604.Spec : Prop :=
  ∀ n, P14337946783475359604.a n = A393661 (n + 3)

theorem P14337946783475359604.correct : P14337946783475359604.Spec := by
  intro n
  simp only [A393661, Nat.add_sub_cancel, A393661.P14337946783475359604.a, A393661.P18445463208938884355.a, A393655, A393655.P8117864334474351213.a, A393662, A393662.P12609403442720714031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393661

/-!
# A393662: A sequence arising from the 3-Bratteli diagram, a(n) = 3^(n - 3)*(16*n - 15), n>=3.

The programs for A393662, the canonical program `A393662.P12609403442720714031` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393662 has offset 3).

The definition of A393662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(16*(n+3)-15)` (program `A393662.P12609403442720714031`, by `A393662.P12609403442720714031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393662.P6542922139232362059

`ogf((33-51x)/(1-6x+9x^2))`
-/

namespace A393662.P6542922139232362059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [33, -51] [1, -6, 9] n

end

end A393662.P6542922139232362059

namespace A393662

/-- `ogf((33-51x)/(1-6x+9x^2))` -/
def P6542922139232362059.Spec : Prop :=
  ∀ n, P6542922139232362059.a n = A393662 (n + 3)

end A393662

/-! ## A393662.P12609403442720714031

`3^n*(16*(n+3)-15)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393662

/-- `3^n*(16*(n+3)-15)` -/
def P12609403442720714031.Spec : Prop :=
  ∀ n, P12609403442720714031.a n = A393662 (n + 3)

theorem P12609403442720714031.correct : P12609403442720714031.Spec := by
  intro n
  simp only [A393662, Nat.add_sub_cancel]

end A393662

/-! ## A393662.P4938737772868681880

`A393661(3+n)+A008776(n)`
-/

namespace A393662.P4938737772868681880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393661 (3 + n) + A008776 n

end

end A393662.P4938737772868681880

namespace A393662

/-- `A393661(3+n)+A008776(n)` -/
def P4938737772868681880.Spec : Prop :=
  ∀ n, P4938737772868681880.a n = A393662 (n + 3)

end A393662

/-! ## A393662.P10977120787357902297

`A393655(n+3)-A008776(n)`
-/

namespace A393662.P10977120787357902297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393655 (n + 3) - A008776 n

end

end A393662.P10977120787357902297

namespace A393662

/-- `A393655(n+3)-A008776(n)` -/
def P10977120787357902297.Spec : Prop :=
  ∀ n, P10977120787357902297.a n = A393662 (n + 3)

theorem P10977120787357902297.correct : P10977120787357902297.Spec := by
  intro n
  simp only [A393662, Nat.add_sub_cancel, A393662.P10977120787357902297.a, A393662.P12609403442720714031.a, A008776, A008776.P11088121667404015999.a, A393655, A393655.P8117864334474351213.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393662

/-! ## A393662.P8675820702478462717

`A393661(n+3)+Δ[A000244(n)]`
-/

namespace A393662.P8675820702478462717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393661 (n + 3) + (f1 (n + 1) - f1 n)

end

end A393662.P8675820702478462717

namespace A393662

/-- `A393661(n+3)+Δ[A000244(n)]` -/
def P8675820702478462717.Spec : Prop :=
  ∀ n, P8675820702478462717.a n = A393662 (n + 3)

theorem P8675820702478462717.correct : P8675820702478462717.Spec := by
  intro n
  simp only [A393662, Nat.add_sub_cancel, A393662.P8675820702478462717.f1, A393662.P8675820702478462717.a, A393662.P12609403442720714031.a, A000244, A000244.P17162167222172810417.a, A393661, A393661.P18445463208938884355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393662

/-! ## A393662.P12440828574351666607

`A393655(n+3)-A225367(2*(n+1))`
-/

namespace A393662.P12440828574351666607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393655 (n + 3) - A225367 (2 * (n + 1))

end

end A393662.P12440828574351666607

namespace A393662

/-- `A393655(n+3)-A225367(2*(n+1))` -/
def P12440828574351666607.Spec : Prop :=
  ∀ n, P12440828574351666607.a n = A393662 (n + 3)

end A393662

/-!
# A393663: A sequence constructed by greedily sampling the discrete probability distribution p(k) = zeta(k+1)-1 to minimize ratio discrepancy.

The programs for A393663, there is no canonical definition to state claims against.
-/

/-! ## A393663.P17358004708538671629

`A038548(gcd(A121029(3*n+1), A213249(n+2)))`
-/

namespace A393663.P17358004708538671629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (Int.gcd (A121029 (3 * n + 1)) (A213249 (n + 2)))

end

end A393663.P17358004708538671629

/-! ## A393663.P11047332843479206339

`A373819(A312458(n))`
-/

namespace A393663.P11047332843479206339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373819 (A312458 n).toNat

end

end A393663.P11047332843479206339

/-! ## A393663.P6731104112149591368

`353%(A333381(A051424(n))+1)`
-/

namespace A393663.P6731104112149591368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 353 (A333381 (A051424 n).toNat + 1)

end

end A393663.P6731104112149591368

/-! ## A393663.P16560253553443018847

`A341970(gcd(A006516(n), A006784(n+1)))`
-/

namespace A393663.P16560253553443018847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341970 (Int.gcd (A006516 n) (A006784 (n + 1)))

end

end A393663.P16560253553443018847

/-! ## A393663.P12167792780211474907

`gcd(A000290(A188920(n)), A103684(n+4))`
-/

namespace A393663.P12167792780211474907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 (A188920 n).toNat) (A103684 (n + 4))

end

end A393663.P12167792780211474907

/-!
# A393665: Number of order-convex subsets of the square grid poset [n]^2 with componentwise partial order.

The programs for A393665, there is no canonical definition to state claims against.
-/

/-! ## A393665.P15734920940063618082

`A367109(∑[n+1])`
-/

namespace A393665.P15734920940063618082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367109 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393665.P15734920940063618082

/-! ## A393665.P15447503130415733189

`record[A103452(n)*A367109(n+1)]`
-/

namespace A393665.P15447503130415733189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A367109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393665.P15447503130415733189

/-! ## A393665.P4926545562223910395

`abs(1-A367109(A000217(n+1)))+1`
-/

namespace A393665.P4926545562223910395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A367109 (A000217 (n + 1)).toNat| + 1

end

end A393665.P4926545562223910395

/-! ## A393665.P9040727166549353170

`record[A367109(A093055(n+1))]`
-/

namespace A393665.P9040727166549353170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367109 (A093055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393665.P9040727166549353170

/-!
# A393670: Irregular triangular array T, read by rows: when the partitions of n are arranged in reverse lexicographic order, T(n,k) is the position of the k-th partition in which adjacent parts differ by at least 2.

The programs for A393670, there is no canonical definition to state claims against.
-/

/-! ## A393670.P18018559444205208467

`A001402(A237260(n+1)%A324840(n+1))`
-/

namespace A393670.P18018559444205208467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (Int.tmod (A237260 (n + 1)) (A324840 (n + 1))).toNat

end

end A393670.P18018559444205208467

/-! ## A393670.P15563996623042520291

`A113452(A400111(2*(n+1)))+A028422(A178197(n))`
-/

namespace A393670.P15563996623042520291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113452 (A400111 (2 * (n + 1))).toNat + A028422 (A178197 n).toNat

end

end A393670.P15563996623042520291

/-! ## A393670.P5052542733145709181

`A033638(A122197(A199474(A033638(n))))`
-/

namespace A393670.P5052542733145709181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A122197 (A199474 (A033638 n).toNat).toNat).toNat

end

end A393670.P5052542733145709181

/-! ## A393670.P54684960396985784

`A007895(A256553(floor(2*n²/(1+n)))!)`
-/

namespace A393670.P54684960396985784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Nat.factorial (A256553 ⌊(2 * n ^ 2 : ℚ) / (1 + n : ℚ)⌋.toNat).toNat)

end

end A393670.P54684960396985784

/-! ## A393670.P1728765364268127700

`A000374(A400190(n)²²*C(n+1, 2)+1)`
-/

namespace A393670.P1728765364268127700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 ((A400190 n ^ 2) ^ 2 * (Nat.choose (n + 1) 2 : ℤ) + 1).toNat

end

end A393670.P1728765364268127700

/-!
# A393671: a(n) = number of partitions of n into distinct prime parts, no two of which are adjacent primes.

The programs for A393671, there is no canonical definition to state claims against.
-/

/-! ## A393671.P12628038428459918529

`A380560(n+1)%A082844(A209403(n+1))`
-/

namespace A393671.P12628038428459918529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380560 (n + 1)) (A082844 (A209403 (n + 1)).toNat)

end

end A393671.P12628038428459918529

/-! ## A393671.P9277200593992094959

`and(A103095(A124234(n)), A380560(n+1))`
-/

namespace A393671.P9277200593992094959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103095 (A124234 n).toNat) (A380560 (n + 1))

end

end A393671.P9277200593992094959

/-! ## A393671.P16460247689582501373

`A128174(A292352(3*n+5))+A025431(n)`
-/

namespace A393671.P16460247689582501373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A292352 (3 * n + 5)).toNat + A025431 n

end

end A393671.P16460247689582501373

/-! ## A393671.P3671262175587665778

`A111397(A371300(n+1))`
-/

namespace A393671.P3671262175587665778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111397 (A371300 (n + 1)).toNat

end

end A393671.P3671262175587665778

/-! ## A393671.P15999645358936121181

`A262045(A055795(n+1)+A026373(n+2))`
-/

namespace A393671.P15999645358936121181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262045 (A055795 (n + 1) + A026373 (n + 2)).toNat

end

end A393671.P15999645358936121181

/-!
# A393672: a(n) = number of partitions of n into distinct odd parts, no two of which differ by 2.

The programs for A393672, there is no canonical definition to state claims against.
-/

/-! ## A393672.P7662726304424873780

`A037819(A367637(2*(n+2))*3+1)`
-/

namespace A393672.P7662726304424873780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (A367637 (2 * (n + 2)) * 3 + 1).toNat

end

end A393672.P7662726304424873780

/-! ## A393672.P13955704212588570957

`A001221(A264520(n+1)+A006723(n))`
-/

namespace A393672.P13955704212588570957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A264520 (n + 1) + A006723 n).toNat

end

end A393672.P13955704212588570957

/-! ## A393672.P6981427990707474288

`A280152(lt[A001414(n+1), A090034(n)])`
-/

namespace A393672.P6981427990707474288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393672.P6981427990707474288

/-! ## A393672.P4166376287911973162

`A056978(A230708(n+2))`
-/

namespace A393672.P4166376287911973162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A230708 (n + 2)).toNat

end

end A393672.P4166376287911973162

/-! ## A393672.P11973759607363032873

`A000700(A279021(2*n+5)%(n+1))`
-/

namespace A393672.P11973759607363032873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.tmod (A279021 (2 * n + 5)) (n + 1 : ℤ)).toNat

end

end A393672.P11973759607363032873

/-!
# A393673: a(n) = number of partitions of n into distinct parts that are triangular numbers, no two of which are consecutive triangular numbers.

The programs for A393673, there is no canonical definition to state claims against.
-/

/-! ## A393673.P3901464747345846587

`A319954(A364790(2*n+1))%2+T(n-1,k)` with `a(0)=1`
-/

namespace A393673.P3901464747345846587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A319954 (A364790 (2 * n + 1)).toNat) 2 + SequenceMachineLib.triUp a n

end

end A393673.P3901464747345846587

/-! ## A393673.P16138273020837344740

`A078588(A215891(n+2))`
-/

namespace A393673.P16138273020837344740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A215891 (n + 2)).toNat

end

end A393673.P16138273020837344740

/-! ## A393673.P14468457156339034155

`A091949(A230428(n+2))`
-/

namespace A393673.P14468457156339034155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091949 (A230428 (n + 2)).toNat

end

end A393673.P14468457156339034155

/-! ## A393673.P2025733624705964195

`A010060(A002377(n+1)*A132610(n))`
-/

namespace A393673.P2025733624705964195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A002377 (n + 1) * A132610 n).toNat

end

end A393673.P2025733624705964195

/-! ## A393673.P15544052130073695180

`A010060(A079431(n+1)*A126796(n))`
-/

namespace A393673.P15544052130073695180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A079431 (n + 1) * A126796 n).toNat

end

end A393673.P15544052130073695180

/-!
# A393674: a(n) = number of partitions of n into distinct nonprime parts, no two of which are consecutive in A018252.

The programs for A393674, there is no canonical definition to state claims against.
-/

/-! ## A393674.P1457795928643748717

`A000120(A154363(n+1)-A038127(n))`
-/

namespace A393674.P1457795928643748717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A154363 (n + 1) - A038127 n).toNat

end

end A393674.P1457795928643748717

/-!
# A393675: a(n) = number of partitions of n into distinct composite parts, no two of which are consecutive in A002808.

The programs for A393675, there is no canonical definition to state claims against.
-/

/-! ## A393675.P17612310117546910624

`A204389(n)-A122841(A375282(n))`
-/

namespace A393675.P17612310117546910624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 n - A122841 (A375282 n).toNat

end

end A393675.P17612310117546910624

/-! ## A393675.P8884125204173048390

`A047999(A113360(n))*A053280(n)`
-/

namespace A393675.P8884125204173048390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A113360 n).toNat * A053280 n

end

end A393675.P8884125204173048390

/-! ## A393675.P2905252205138761680

`A354579(A160051(n)*A182270(n))`
-/

namespace A393675.P2905252205138761680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A160051 n * A182270 n).toNat

end

end A393675.P2905252205138761680

/-! ## A393675.P2383810403618959557

`A328483(A182270(n)^A130245(n))`
-/

namespace A393675.P2383810403618959557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328483 (SequenceMachineLib.roundAway ((A182270 n : ℚ) ^ (A130245 n : ℤ))).toNat

end

end A393675.P2383810403618959557

/-! ## A393675.P8396679617317964072

`A124766(A001651(n+1)*A023895(n))`
-/

namespace A393675.P8396679617317964072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A001651 (n + 1) * A023895 n).toNat

end

end A393675.P8396679617317964072

/-!
# A393676: a(n) = number of partitions of n into distinct parts such that if x and y are parts and x < y then y - x != 2.

The programs for A393676, there is no canonical definition to state claims against.
-/

/-! ## A393676.P12836039061088096314

`A176816(A035965(n+1))`
-/

namespace A393676.P12836039061088096314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176816 (A035965 (n + 1)).toNat

end

end A393676.P12836039061088096314

/-!
# A393677: Upper (1,1/2) midsequence of (n^2) and ((n+1)^2); see Comments.

The programs for A393677, the canonical program `A393677.P2815755897781841043` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393677 has offset 0).

The definition of A393677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393677.P18322356895524839244

`ogf((1+x+3x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A393677.P18322356895524839244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 1] [1, -2, 0, 2, -1] n

end

end A393677.P18322356895524839244

namespace A393677

/-- `ogf((1+x+3x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P18322356895524839244.Spec : Prop :=
  ∀ n, P18322356895524839244.a n = A393677 n

end A393677

/-! ## A393677.P2815755897781841043

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=17`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393677

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2815755897781841043.Spec : Prop :=
  ∀ n, P2815755897781841043.a n = A393677 n

theorem P2815755897781841043.correct : P2815755897781841043.Spec := by
  intro n
  simp only [A393677]

end A393677

/-! ## A393677.P8429281777123449647

`∑[or(1, n)]+n²`
-/

namespace A393677.P8429281777123449647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A393677.P8429281777123449647

namespace A393677

/-- `∑[or(1, n)]+n²` -/
def P8429281777123449647.Spec : Prop :=
  ∀ n, (P8429281777123449647.a n : ℤ) = A393677 n

end A393677

/-! ## A393677.P9726577418312890805

`1+∑[and(3*n, -2)]`
-/

namespace A393677.P9726577418312890805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393677.P9726577418312890805

namespace A393677

/-- `1+∑[and(3*n, -2)]` -/
def P9726577418312890805.Spec : Prop :=
  ∀ n, P9726577418312890805.a n = A393677 n

end A393677

/-! ## A393677.P17113977785892390482

`ceil((1+3*n)²/6)`
-/

namespace A393677.P17113977785892390482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 + 3 * n) ^ 2 : ℚ) / 6⌉

end

end A393677.P17113977785892390482

namespace A393677

/-- `ceil((1+3*n)²/6)` -/
def P17113977785892390482.Spec : Prop :=
  ∀ n, P17113977785892390482.a n = A393677 n

end A393677

/-! ## A393677.P12513215379268119285

`∑[record[lcm(12, n)/12+1]]`
-/

namespace A393677.P12513215379268119285
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 12 n : ℚ) / 12 + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393677.P12513215379268119285

namespace A393677

/-- `∑[record[lcm(12, n)/12+1]]` -/
def P12513215379268119285.Spec : Prop :=
  ∀ n, P12513215379268119285.a n = (A393677 n : ℚ)

end A393677

/-! ## A393677.P3509176878106870658

`∑[6+a(n-2)]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A393677.P3509176878106870658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  6 + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393677.P3509176878106870658

namespace A393677

/-- `∑[6+a(n-2)]` -/
def P3509176878106870658.Spec : Prop :=
  ∀ n, (P3509176878106870658.a n : ℤ) = A393677 n

end A393677

/-! ## A393677.P4662440862202309724

`∑[3*n-n%2]+1`
-/

namespace A393677.P4662440862202309724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A393677.P4662440862202309724

namespace A393677

/-- `∑[3*n-n%2]+1` -/
def P4662440862202309724.Spec : Prop :=
  ∀ n, P4662440862202309724.a n = A393677 n

end A393677

/-! ## A393677.P7627527083782017572

`∑[∑[6-a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A393677.P7627527083782017572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393677.P7627527083782017572

namespace A393677

/-- `∑[∑[6-a(n-1)]]` -/
def P7627527083782017572.Spec : Prop :=
  ∀ n, P7627527083782017572.a n = A393677 n

end A393677

/-! ## A393677.P7413421384781684956

`floor(∑[n+1]+C(2*n, 2)/2)`
-/

namespace A393677.P7413421384781684956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.choose (2 * n) 2 : ℚ) / 2⌋

end

end A393677.P7413421384781684956

namespace A393677

/-- `floor(∑[n+1]+C(2*n, 2)/2)` -/
def P7413421384781684956.Spec : Prop :=
  ∀ n, P7413421384781684956.a n = A393677 n

end A393677

/-! ## A393677.P1070493959215409548

`a(n-2)+2*(3*n-2)` with `a(0)=1, a(1)=3`
-/

namespace A393677.P1070493959215409548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 2 * ((3 * n : ℤ) - 2)

end

end A393677.P1070493959215409548

namespace A393677

/-- `a(n-2)+2*(3*n-2)` -/
def P1070493959215409548.Spec : Prop :=
  ∀ n, P1070493959215409548.a n = A393677 n

end A393677

/-! ## A393677.P4238209251654766919

`floor((a(n-1)-(n+1))/3)+(n+1)²` with `a(0)=1`
-/

namespace A393677.P4238209251654766919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) - (n + 1 : ℤ) : ℚ) / 3⌋ + ((n + 1) ^ 2 : ℤ)

end

end A393677.P4238209251654766919

namespace A393677

/-- `floor((a(n-1)-(n+1))/3)+(n+1)²` -/
def P4238209251654766919.Spec : Prop :=
  ∀ n, P4238209251654766919.a n = A393677 n

end A393677

/-! ## A393677.P17930993903872795174

`A212959(n)-n`
-/

namespace A393677.P17930993903872795174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n - (n : ℤ)

end

end A393677.P17930993903872795174

namespace A393677

/-- `A212959(n)-n` -/
def P17930993903872795174.Spec : Prop :=
  ∀ n, P17930993903872795174.a n = A393677 n

end A393677

/-! ## A393677.P3391185126251458617

`A317186(n)+∑[n]`
-/

namespace A393677.P3391185126251458617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A393677.P3391185126251458617

namespace A393677

/-- `A317186(n)+∑[n]` -/
def P3391185126251458617.Spec : Prop :=
  ∀ n, P3391185126251458617.a n = A393677 n

end A393677

/-! ## A393677.P6857354205508541317

`2*A006578(n)+1`
-/

namespace A393677.P6857354205508541317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006578 n + 1

end

end A393677.P6857354205508541317

namespace A393677

/-- `2*A006578(n)+1` -/
def P6857354205508541317.Spec : Prop :=
  ∀ n, P6857354205508541317.a n = A393677 n

end A393677

/-! ## A393677.P2798755376127979033

`or(1, A227017(n+1))`
-/

namespace A393677.P2798755376127979033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A227017 (n + 1))

end

end A393677.P2798755376127979033

namespace A393677

/-- `or(1, A227017(n+1))` -/
def P2798755376127979033.Spec : Prop :=
  ∀ n, P2798755376127979033.a n = A393677 n

end A393677

/-! ## A393677.P2216219228180608481

`A032528(n)+n+1`
-/

namespace A393677.P2216219228180608481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n + (n + 1 : ℤ)

end

end A393677.P2216219228180608481

namespace A393677

/-- `A032528(n)+n+1` -/
def P2216219228180608481.Spec : Prop :=
  ∀ n, P2216219228180608481.a n = A393677 n

end A393677

/-! ## A393677.P17583336919140179080

`∑[A109613(n)]+n²`
-/

namespace A393677.P17583336919140179080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A393677.P17583336919140179080

namespace A393677

/-- `∑[A109613(n)]+n²` -/
def P17583336919140179080.Spec : Prop :=
  ∀ n, P17583336919140179080.a n = A393677 n

end A393677

/-! ## A393677.P13029079181994048208

`Δ[A131941(n)]+n²`
-/

namespace A393677.P13029079181994048208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n ^ 2 : ℤ)

end

end A393677.P13029079181994048208

namespace A393677

/-- `Δ[A131941(n)]+n²` -/
def P13029079181994048208.Spec : Prop :=
  ∀ n, P13029079181994048208.a n = A393677 n

end A393677

/-! ## A393677.P11185792676905756830

`∑[A047238(n+1)]+1`
-/

namespace A393677.P11185792676905756830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A393677.P11185792676905756830

namespace A393677

/-- `∑[A047238(n+1)]+1` -/
def P11185792676905756830.Spec : Prop :=
  ∀ n, P11185792676905756830.a n = A393677 n

end A393677

/-!
# A393678: Lower (1/2,1/3) midsequence of (n^2) and ((n+1)^2); see Comments.

The programs for A393678, the canonical program `A393678.P16894942421807432163` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393678 has offset 0).

The definition of A393678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393678.P4637156144828934336

`ogf((x+4x^2+3x^3+2x^4)/(1-x-x^2+x^4+x^5-x^6))`
-/

namespace A393678.P4637156144828934336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 3, 2] [1, -1, -1, 0, 1, 1, -1] n

end

end A393678.P4637156144828934336

namespace A393678

/-- `ogf((x+4x^2+3x^3+2x^4)/(1-x-x^2+x^4+x^5-x^6))` -/
def P4637156144828934336.Spec : Prop :=
  ∀ n, P4637156144828934336.a n = A393678 n

end A393678

/-! ## A393678.P17141528855947947291

`floor(5*n²/6+2*n/3+1/3)`
-/

namespace A393678.P17141528855947947291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * n ^ 2 : ℚ) / 6 + (2 * n : ℚ) / 3 + (1 : ℚ) / 3⌋

end

end A393678.P17141528855947947291

namespace A393678

/-- `floor(5*n²/6+2*n/3+1/3)` -/
def P17141528855947947291.Spec : Prop :=
  ∀ n, P17141528855947947291.a n = A393678 n

end A393678

/-! ## A393678.P16894942421807432163

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=9, a(4)=16, a(5)=24`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393678

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P16894942421807432163.Spec : Prop :=
  ∀ n, P16894942421807432163.a n = A393678 n

theorem P16894942421807432163.correct : P16894942421807432163.Spec := by
  intro n
  simp only [A393678]

end A393678

/-! ## A393678.P12211176657798686074

`round(xor(1, n*(5*n+4))/6)`
-/

namespace A393678.P12211176657798686074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n * (5 * n + 4)) : ℚ) / 6)

end

end A393678.P12211176657798686074

namespace A393678

/-- `round(xor(1, n*(5*n+4))/6)` -/
def P12211176657798686074.Spec : Prop :=
  ∀ n, P12211176657798686074.a n = A393678 n

end A393678

/-! ## A393678.P5344012404569094564

`∑[ceil((2*n-3)/3)+or(1, n)]`
-/

namespace A393678.P5344012404569094564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℤ) - 3 : ℚ) / 3⌉ + (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393678.P5344012404569094564

namespace A393678

/-- `∑[ceil((2*n-3)/3)+or(1, n)]` -/
def P5344012404569094564.Spec : Prop :=
  ∀ n, P5344012404569094564.a n = A393678 n

end A393678

/-! ## A393678.P7228736503562111154

`∑[2*n-floor(n/3)-n%2]`
-/

namespace A393678.P7228736503562111154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊(n : ℚ) / 3⌋ - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393678.P7228736503562111154

namespace A393678

/-- `∑[2*n-floor(n/3)-n%2]` -/
def P7228736503562111154.Spec : Prop :=
  ∀ n, P7228736503562111154.a n = A393678 n

end A393678

/-! ## A393678.P2289924107194786110

`A374702(n+1)+∑[n]`
-/

namespace A393678.P2289924107194786110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374702 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A393678.P2289924107194786110

namespace A393678

/-- `A374702(n+1)+∑[n]` -/
def P2289924107194786110.Spec : Prop :=
  ∀ n, P2289924107194786110.a n = A393678 n

end A393678

/-! ## A393678.P16449943901809710036

`A398854(n)-a(n-1)` with `a(0)=0`
-/

namespace A393678.P16449943901809710036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A398854 n - a (n - 1)

end

end A393678.P16449943901809710036

namespace A393678

/-- `A398854(n)-a(n-1)` -/
def P16449943901809710036.Spec : Prop :=
  ∀ n, P16449943901809710036.a n = A393678 n

end A393678

/-! ## A393678.P7892061541311513550

`∑[A042948(n)-floor(n/3)]`
-/

namespace A393678.P7892061541311513550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n - ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393678.P7892061541311513550

namespace A393678

/-- `∑[A042948(n)-floor(n/3)]` -/
def P7892061541311513550.Spec : Prop :=
  ∀ n, P7892061541311513550.a n = A393678 n

end A393678

/-! ## A393678.P5253335741907148522

`A397988(n)+A001840(n)`
-/

namespace A393678.P5253335741907148522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397988 n + A001840 n

end

end A393678.P5253335741907148522

namespace A393678

/-- `A397988(n)+A001840(n)` -/
def P5253335741907148522.Spec : Prop :=
  ∀ n, P5253335741907148522.a n = A393678 n

end A393678

/-! ## A393678.P17144661131583718297

`A397972(n)+A008615(n)`
-/

namespace A393678.P17144661131583718297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 n + A008615 n

end

end A393678.P17144661131583718297

namespace A393678

/-- `A397972(n)+A008615(n)` -/
def P17144661131583718297.Spec : Prop :=
  ∀ n, P17144661131583718297.a n = A393678 n

end A393678

/-! ## A393678.P4444745503465324116

`A398204(n)+A090168(n)`
-/

namespace A393678.P4444745503465324116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398204 n + A090168 n

end

end A393678.P4444745503465324116

namespace A393678

/-- `A398204(n)+A090168(n)` -/
def P4444745503465324116.Spec : Prop :=
  ∀ n, P4444745503465324116.a n = A393678 n

end A393678

/-! ## A393678.P2234333928075315635

`A035608(n)-A130518(n)`
-/

namespace A393678.P2234333928075315635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n - A130518 n

end

end A393678.P2234333928075315635

namespace A393678

/-- `A035608(n)-A130518(n)` -/
def P2234333928075315635.Spec : Prop :=
  ∀ n, P2234333928075315635.a n = A393678 n

end A393678

/-! ## A393678.P16441119972087097009

`A213041(n)-A008747(n)`
-/

namespace A393678.P16441119972087097009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213041 n - A008747 n

end

end A393678.P16441119972087097009

namespace A393678

/-- `A213041(n)-A008747(n)` -/
def P16441119972087097009.Spec : Prop :=
  ∀ n, P16441119972087097009.a n = A393678 n

end A393678

/-! ## A393678.P3593513366408703913

`A397980(n)-A374702(n)`
-/

namespace A393678.P3593513366408703913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397980 n - A374702 n

end

end A393678.P3593513366408703913

namespace A393678

/-- `A397980(n)-A374702(n)` -/
def P3593513366408703913.Spec : Prop :=
  ∀ n, P3593513366408703913.a n = A393678 n

end A393678

/-! ## A393678.P4412447674310673878

`A069905(n+1)+A006578(n)`
-/

namespace A393678.P4412447674310673878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) + A006578 n

end

end A393678.P4412447674310673878

namespace A393678

/-- `A069905(n+1)+A006578(n)` -/
def P4412447674310673878.Spec : Prop :=
  ∀ n, P4412447674310673878.a n = A393678 n

end A393678

/-! ## A393678.P15468533108893534712

`A274830(n+1)-A114209(n+1)`
-/

namespace A393678.P15468533108893534712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 1) - A114209 (n + 1)

end

end A393678.P15468533108893534712

namespace A393678

/-- `A274830(n+1)-A114209(n+1)` -/
def P15468533108893534712.Spec : Prop :=
  ∀ n, P15468533108893534712.a n = A393678 n

end A393678

/-! ## A393678.P23697783696781319

`A331943(n+1)-A069813(n+3)`
-/

namespace A393678.P23697783696781319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331943 (n + 1) - A069813 (n + 3)

end

end A393678.P23697783696781319

namespace A393678

/-- `A331943(n+1)-A069813(n+3)` -/
def P23697783696781319.Spec : Prop :=
  ∀ n, P23697783696781319.a n = A393678 n

end A393678

/-! ## A393678.P3630803767412091560

`(n+1)²-∑[A267806(n+1)]`
-/

namespace A393678.P3630803767412091560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393678.P3630803767412091560

namespace A393678

/-- `(n+1)²-∑[A267806(n+1)]` -/
def P3630803767412091560.Spec : Prop :=
  ∀ n, P3630803767412091560.a n = A393678 n

end A393678

/-! ## A393678.P4398287361421121110

`A007590(n)+A000212(n+1)`
-/

namespace A393678.P4398287361421121110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + A000212 (n + 1)

end

end A393678.P4398287361421121110

namespace A393678

/-- `A007590(n)+A000212(n+1)` -/
def P4398287361421121110.Spec : Prop :=
  ∀ n, P4398287361421121110.a n = A393678 n

end A393678

/-!
# A393679: Upper (1/2,1/3) midsequence of (n^2) and ((n+1)^2); see Comments.

The programs for A393679, the canonical program `A393679.P2971570159515742930` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393679 has offset 0).

The definition of A393679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393679.P1203073091394962636

`ceil(5*n²/6+2*n/3+1/3)`
-/

namespace A393679.P1203073091394962636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 * n ^ 2 : ℚ) / 6 + (2 * n : ℚ) / 3 + (1 : ℚ) / 3⌉

end

end A393679.P1203073091394962636

namespace A393679

/-- `ceil(5*n²/6+2*n/3+1/3)` -/
def P1203073091394962636.Spec : Prop :=
  ∀ n, P1203073091394962636.a n = A393679 n

end A393679

/-! ## A393679.P11829953493994950066

`ogf((1+2x^2+2x^3+2x^4+x^5+x^6+x^7)/(1-2x+x^2-x^6+2x^7-x^8))`
-/

namespace A393679.P11829953493994950066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 2, 2, 1, 1, 1] [1, -2, 1, 0, 0, 0, -1, 2, -1] n

end

end A393679.P11829953493994950066

namespace A393679

/-- `ogf((1+2x^2+2x^3+2x^4+x^5+x^6+x^7)/(1-2x+x^2-x^6+2x^7-x^8))` -/
def P11829953493994950066.Spec : Prop :=
  ∀ n, P11829953493994950066.a n = A393679 n

end A393679

/-! ## A393679.P2971570159515742930

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10, a(4)=17, a(5)=25, a(6)=35, a(7)=46`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393679

/-- `2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` -/
def P2971570159515742930.Spec : Prop :=
  ∀ n, P2971570159515742930.a n = A393679 n

theorem P2971570159515742930.correct : P2971570159515742930.Spec := by
  intro n
  simp only [A393679]

end A393679

/-! ## A393679.P3239866013458622668

`∑[ceil(abs(n%2+1-5*n)/3)]`
-/

namespace A393679.P3239866013458622668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|((n % 2 + 1 : ℕ) : ℤ) - (5 * n : ℤ)| : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393679.P3239866013458622668

namespace A393679

/-- `∑[ceil(abs(n%2+1-5*n)/3)]` -/
def P3239866013458622668.Spec : Prop :=
  ∀ n, P3239866013458622668.a n = A393679 n

end A393679

/-! ## A393679.P3997737072862151964

`floor(∑[∑[a(n-1)+5]]/(n+1))` with `a(0)=1, a(1)=3`
-/

namespace A393679.P3997737072862151964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A393679.P3997737072862151964

namespace A393679

/-- `floor(∑[∑[a(n-1)+5]]/(n+1))` -/
def P3997737072862151964.Spec : Prop :=
  ∀ n, P3997737072862151964.a n = A393679 n

end A393679

/-! ## A393679.P11175303144694342700

`A078617(n+1)+C(n, 2)`
-/

namespace A393679.P11175303144694342700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078617 (n + 1) + (Nat.choose n 2 : ℤ)

end

end A393679.P11175303144694342700

namespace A393679

/-- `A078617(n+1)+C(n, 2)` -/
def P11175303144694342700.Spec : Prop :=
  ∀ n, P11175303144694342700.a n = A393679 n

end A393679

/-! ## A393679.P424773219158658263

`A171662(n)+A000124(n)`
-/

namespace A393679.P424773219158658263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171662 n + A000124 n

end

end A393679.P424773219158658263

namespace A393679

/-- `A171662(n)+A000124(n)` -/
def P424773219158658263.Spec : Prop :=
  ∀ n, P424773219158658263.a n = A393679 n

end A393679

/-! ## A393679.P11721432131486060257

`A161680(n)+A078617(n+1)`
-/

namespace A393679.P11721432131486060257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A078617 (n + 1)

end

end A393679.P11721432131486060257

namespace A393679

/-- `A161680(n)+A078617(n+1)` -/
def P11721432131486060257.Spec : Prop :=
  ∀ n, P11721432131486060257.a n = A393679 n

end A393679

/-! ## A393679.P2855468561897743617

`A393678(n)+A393683(n)-A393682(n)`
-/

namespace A393679.P2855468561897743617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393678 n + (A393683 n - A393682 n)

end

end A393679.P2855468561897743617

namespace A393679

/-- `A393678(n)+A393683(n)-A393682(n)` -/
def P2855468561897743617.Spec : Prop :=
  ∀ n, P2855468561897743617.a n = A393679 n

end A393679

/-!
# A393680: Lower (1/2,1/3) midsequence of (n^2) and ((n+2)^2); see Comments.

The programs for A393680, the canonical program `A393680.P17823751236329769493` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393680 has offset 0).

The definition of A393680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393680.P5695875918328089193

`ogf((1+2x+3x^2+2x^3+2x^4)/(1-x-x^2+x^4+x^5-x^6))`
-/

namespace A393680.P5695875918328089193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 2, 2] [1, -1, -1, 0, 1, 1, -1] n

end

end A393680.P5695875918328089193

namespace A393680

/-- `ogf((1+2x+3x^2+2x^3+2x^4)/(1-x-x^2+x^4+x^5-x^6))` -/
def P5695875918328089193.Spec : Prop :=
  ∀ n, P5695875918328089193.a n = A393680 n

end A393680

/-! ## A393680.P11630127899982007240

`floor(5*n²/6+4*n/3+4/3)`
-/

namespace A393680.P11630127899982007240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * n ^ 2 : ℚ) / 6 + (4 * n : ℚ) / 3 + (4 : ℚ) / 3⌋

end

end A393680.P11630127899982007240

namespace A393680

/-- `floor(5*n²/6+4*n/3+4/3)` -/
def P11630127899982007240.Spec : Prop :=
  ∀ n, P11630127899982007240.a n = A393680 n

end A393680

/-! ## A393680.P17823751236329769493

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=12, a(4)=20, a(5)=28`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393680

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P17823751236329769493.Spec : Prop :=
  ∀ n, P17823751236329769493.a n = A393680 n

theorem P17823751236329769493.correct : P17823751236329769493.Spec := by
  intro n
  simp only [A393680]

end A393680

/-! ## A393680.P3339735197635549928

`∑[ceil((2*n-1)/3)+or(1, n)]`
-/

namespace A393680.P3339735197635549928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℤ) - 1 : ℚ) / 3⌉ + (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393680.P3339735197635549928

namespace A393680

/-- `∑[ceil((2*n-1)/3)+or(1, n)]` -/
def P3339735197635549928.Spec : Prop :=
  ∀ n, P3339735197635549928.a n = A393680 n

end A393680

/-! ## A393680.P11949709755106505836

`(n+1)²-floor(C(n+3, 3)/(n+2))`
-/

namespace A393680.P11949709755106505836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ⌊(Nat.choose (n + 3) 3 : ℚ) / (n + 2 : ℚ)⌋

end

end A393680.P11949709755106505836

namespace A393680

/-- `(n+1)²-floor(C(n+3, 3)/(n+2))` -/
def P11949709755106505836.Spec : Prop :=
  ∀ n, P11949709755106505836.a n = A393680 n

end A393680

/-! ## A393680.P12824712947000027684

`∑[A008576(n)]-ceil(n²/2)`
-/

namespace A393680.P12824712947000027684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌈(n ^ 2 : ℚ) / 2⌉

end

end A393680.P12824712947000027684

namespace A393680

/-- `∑[A008576(n)]-ceil(n²/2)` -/
def P12824712947000027684.Spec : Prop :=
  ∀ n, P12824712947000027684.a n = A393680 n

end A393680

/-! ## A393680.P10047596384546827513

`A320259(n)+A008747(n)`
-/

namespace A393680.P10047596384546827513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320259 n + A008747 n

end

end A393680.P10047596384546827513

namespace A393680

/-- `A320259(n)+A008747(n)` -/
def P10047596384546827513.Spec : Prop :=
  ∀ n, P10047596384546827513.a n = A393680 n

end A393680

/-! ## A393680.P15876072707138364570

`A008577(n)-A000982(n)`
-/

namespace A393680.P15876072707138364570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008577 n - A000982 n

end

end A393680.P15876072707138364570

namespace A393680

/-- `A008577(n)-A000982(n)` -/
def P15876072707138364570.Spec : Prop :=
  ∀ n, P15876072707138364570.a n = A393680 n

end A393680

/-! ## A393680.P10244422370350321059

`A398205(n)+A001651(n+1)`
-/

namespace A393680.P10244422370350321059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398205 n + A001651 (n + 1)

end

end A393680.P10244422370350321059

namespace A393680

/-- `A398205(n)+A001651(n+1)` -/
def P10244422370350321059.Spec : Prop :=
  ∀ n, P10244422370350321059.a n = A393680 n

end A393680

/-! ## A393680.P15750571718691859301

`A397973(n)+A063208(n+1)`
-/

namespace A393680.P15750571718691859301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397973 n + A063208 (n + 1)

end

end A393680.P15750571718691859301

namespace A393680

/-- `A397973(n)+A063208(n+1)` -/
def P15750571718691859301.Spec : Prop :=
  ∀ n, P15750571718691859301.a n = A393680 n

end A393680

/-! ## A393680.P5253074087251959375

`A137928(n+1)-A156040(n)`
-/

namespace A393680.P5253074087251959375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137928 (n + 1) - A156040 n

end

end A393680.P5253074087251959375

namespace A393680

/-- `A137928(n+1)-A156040(n)` -/
def P5253074087251959375.Spec : Prop :=
  ∀ n, P5253074087251959375.a n = A393680 n

end A393680

/-! ## A393680.P12584939369521931744

`round(A295905(n+2)/6)`
-/

namespace A393680.P12584939369521931744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A295905 (n + 2) : ℚ) / 6)

end

end A393680.P12584939369521931744

namespace A393680

/-- `round(A295905(n+2)/6)` -/
def P12584939369521931744.Spec : Prop :=
  ∀ n, P12584939369521931744.a n = A393680 n

end A393680

/-! ## A393680.P606538596442844995

`(n+1)²-∑[A051274(n+1)]`
-/

namespace A393680.P606538596442844995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393680.P606538596442844995

namespace A393680

/-- `(n+1)²-∑[A051274(n+1)]` -/
def P606538596442844995.Spec : Prop :=
  ∀ n, P606538596442844995.a n = A393680 n

end A393680

/-! ## A393680.P1219630572036589923

`A253186(n+2)+A006578(n)`
-/

namespace A393680.P1219630572036589923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253186 (n + 2) + A006578 n

end

end A393680.P1219630572036589923

namespace A393680

/-- `A253186(n+2)+A006578(n)` -/
def P1219630572036589923.Spec : Prop :=
  ∀ n, P1219630572036589923.a n = A393680 n

end A393680

/-! ## A393680.P5940868546248936406

`A001840(n+1)+A007590(n)+A001840(n)`
-/

namespace A393680.P5940868546248936406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1) + (A007590 n + A001840 n)

end

end A393680.P5940868546248936406

namespace A393680

/-- `A001840(n+1)+A007590(n)+A001840(n)` -/
def P5940868546248936406.Spec : Prop :=
  ∀ n, P5940868546248936406.a n = A393680 n

end A393680

/-! ## A393680.P3937556298818690372

`A156040(n+1)+A337483(n+1)+A007590(n)`
-/

namespace A393680.P3937556298818690372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 (n + 1) + (A337483 (n + 1) + A007590 n)

end

end A393680.P3937556298818690372

namespace A393680

/-- `A156040(n+1)+A337483(n+1)+A007590(n)` -/
def P3937556298818690372.Spec : Prop :=
  ∀ n, P3937556298818690372.a n = A393680 n

end A393680

/-! ## A393680.P14755503528905694482

`(n+1)²-A337483(n+2)`
-/

namespace A393680.P14755503528905694482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A337483 (n + 2)

end

end A393680.P14755503528905694482

namespace A393680

/-- `(n+1)²-A337483(n+2)` -/
def P14755503528905694482.Spec : Prop :=
  ∀ n, P14755503528905694482.a n = A393680 n

end A393680

/-! ## A393680.P16224671544493605850

`A007590(n)+A000212(n+2)`
-/

namespace A393680.P16224671544493605850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + A000212 (n + 2)

end

end A393680.P16224671544493605850

namespace A393680

/-- `A007590(n)+A000212(n+2)` -/
def P16224671544493605850.Spec : Prop :=
  ∀ n, P16224671544493605850.a n = A393680 n

end A393680

/-! ## A393680.P2941281002688609920

`A242771(n+1)+A242771(n+3)`
-/

namespace A393680.P2941281002688609920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242771 (n + 1) + A242771 (n + 3)

end

end A393680.P2941281002688609920

namespace A393680

/-- `A242771(n+1)+A242771(n+3)` -/
def P2941281002688609920.Spec : Prop :=
  ∀ n, P2941281002688609920.a n = A393680 n

end A393680

/-! ## A393680.P12025088997936381744

`A007590(n)+A001399(2*n+1)`
-/

namespace A393680.P12025088997936381744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + A001399 (2 * n + 1)

end

end A393680.P12025088997936381744

namespace A393680

/-- `A007590(n)+A001399(2*n+1)` -/
def P12025088997936381744.Spec : Prop :=
  ∀ n, P12025088997936381744.a n = A393680 n

end A393680

/-!
# A393681: Upper (1/2,1/3) midsequence of (n^2) and ((n+2)^2); see Comments.

The programs for A393681, the canonical program `A393681.P11785180152151804745` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393681 has offset 0).

The definition of A393681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393681.P11785180152151804745

`ogf((2+2x^2+x^3+2x^4+2x^5+x^7)/(1-2x+x^2-x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393681

/-- `ogf((2+2x^2+x^3+2x^4+2x^5+x^7)/(1-2x+x^2-x^6+2x^7-x^8))` -/
def P11785180152151804745.Spec : Prop :=
  ∀ n, P11785180152151804745.a n = A393681 n

theorem P11785180152151804745.correct : P11785180152151804745.Spec := by
  intro n
  simp only [A393681]

end A393681

/-! ## A393681.P10776645596327343478

`abs(round(∑[(9+10*n)/6])-n)`
-/

namespace A393681.P10776645596327343478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 + 10 * n : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)|

end

end A393681.P10776645596327343478

namespace A393681

/-- `abs(round(∑[(9+10*n)/6])-n)` -/
def P10776645596327343478.Spec : Prop :=
  ∀ n, P10776645596327343478.a n = A393681 n

end A393681

/-! ## A393681.P853027273769762396

`∑[A004523(A245231(2*n+3))]-n`
-/

namespace A393681.P853027273769762396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A245231 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A393681.P853027273769762396

namespace A393681

/-- `∑[A004523(A245231(2*n+3))]-n` -/
def P853027273769762396.Spec : Prop :=
  ∀ n, P853027273769762396.a n = A393681 n

end A393681

/-! ## A393681.P630926922080447364

`floor((floor((A048058(3*n+2)+A048058(n))/2)-1)/6)`
-/

namespace A393681.P630926922080447364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A048058 (3 * n + 2) + A048058 n : ℚ) / 2⌋ - 1 : ℚ) / 6⌋

end

end A393681.P630926922080447364

namespace A393681

/-- `floor((floor((A048058(3*n+2)+A048058(n))/2)-1)/6)` -/
def P630926922080447364.Spec : Prop :=
  ∀ n, P630926922080447364.a n = A393681 n

end A393681

/-! ## A393681.P14910860250069771188

`∑[A002264(A260181(2*(n+1)))]+1`
-/

namespace A393681.P14910860250069771188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A260181 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A393681.P14910860250069771188

namespace A393681

/-- `∑[A002264(A260181(2*(n+1)))]+1` -/
def P14910860250069771188.Spec : Prop :=
  ∀ n, P14910860250069771188.a n = A393681 n

end A393681

/-! ## A393681.P3999171009951641197

`floor((3+∑[A297464(n)])/2)`
-/

namespace A393681.P3999171009951641197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A393681.P3999171009951641197

namespace A393681

/-- `floor((3+∑[A297464(n)])/2)` -/
def P3999171009951641197.Spec : Prop :=
  ∀ n, P3999171009951641197.a n = A393681 n

end A393681

/-! ## A393681.P5931760050165648078

`floor(∑[A163676(1-n+A000124(n))/6])`
-/

namespace A393681.P5931760050165648078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163676 (1 - (n : ℤ) + A000124 n).toNat : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A393681.P5931760050165648078

namespace A393681

/-- `floor(∑[A163676(1-n+A000124(n))/6])` -/
def P5931760050165648078.Spec : Prop :=
  ∀ n, P5931760050165648078.a n = A393681 n

end A393681

/-! ## A393681.P4181426191228514449

`floor((4+A298786(∑[n])+n)/2)`
-/

namespace A393681.P4181426191228514449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 + (A298786 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)) : ℚ) / 2⌋

end

end A393681.P4181426191228514449

namespace A393681

/-- `floor((4+A298786(∑[n])+n)/2)` -/
def P4181426191228514449.Spec : Prop :=
  ∀ n, P4181426191228514449.a n = A393681 n

end A393681

/-! ## A393681.P17890516380615041349

`A008615(A047838(n+5))+A006578(n)`
-/

namespace A393681.P17890516380615041349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A047838 (n + 5)).toNat + A006578 n

end

end A393681.P17890516380615041349

namespace A393681

/-- `A008615(A047838(n+5))+A006578(n)` -/
def P17890516380615041349.Spec : Prop :=
  ∀ n, P17890516380615041349.a n = A393681 n

end A393681

/-! ## A393681.P9411708272570586390

`A110654(A001840(2*n+1))+A000124(n)`
-/

namespace A393681.P9411708272570586390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001840 (2 * n + 1)).toNat + A000124 n

end

end A393681.P9411708272570586390

namespace A393681

/-- `A110654(A001840(2*n+1))+A000124(n)` -/
def P9411708272570586390.Spec : Prop :=
  ∀ n, P9411708272570586390.a n = A393681 n

end A393681

/-!
# A393682: Lower (1/3,1/6) midsequence of (n^2) and ((n+2)^2); see Comments.

The programs for A393682, the canonical program `A393682.P13212100984617720194` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393682 has offset 0).

The definition of A393682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393682.P4350023920053169584

`floor(n²/2+2*n/3+2/3)`
-/

namespace A393682.P4350023920053169584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2 + (2 * n : ℚ) / 3 + (2 : ℚ) / 3⌋

end

end A393682.P4350023920053169584

namespace A393682

/-- `floor(n²/2+2*n/3+2/3)` -/
def P4350023920053169584.Spec : Prop :=
  ∀ n, P4350023920053169584.a n = A393682 n

end A393682

/-! ## A393682.P13212100984617720194

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7, a(4)=11, a(5)=16, a(6)=22, a(7)=29`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393682

/-- `2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` -/
def P13212100984617720194.Spec : Prop :=
  ∀ n, P13212100984617720194.a n = A393682 n

theorem P13212100984617720194.correct : P13212100984617720194.Spec := by
  intro n
  simp only [A393682]

end A393682

/-! ## A393682.P7415492894815624267

`∑[or(n, C(n, 2)%3)]`
-/

namespace A393682.P7415492894815624267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Nat.choose n 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393682.P7415492894815624267

namespace A393682

/-- `∑[or(n, C(n, 2)%3)]` -/
def P7415492894815624267.Spec : Prop :=
  ∀ n, (P7415492894815624267.a n : ℤ) = A393682 n

end A393682

/-! ## A393682.P12308885574710270247

`∑[or(Δ[floor(n/3)], n)]`
-/

namespace A393682.P12308885574710270247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f2 (n + 1) - f2 n) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393682.P12308885574710270247

namespace A393682

/-- `∑[or(Δ[floor(n/3)], n)]` -/
def P12308885574710270247.Spec : Prop :=
  ∀ n, P12308885574710270247.a n = A393682 n

end A393682

/-! ## A393682.P7299070230414646871

`∑[xor(Δ[round(n/6)], n)]`
-/

namespace A393682.P7299070230414646871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f2 (n + 1) - f2 n) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393682.P7299070230414646871

namespace A393682

/-- `∑[xor(Δ[round(n/6)], n)]` -/
def P7299070230414646871.Spec : Prop :=
  ∀ n, P7299070230414646871.a n = A393682 n

end A393682

/-! ## A393682.P6979659033571836260

`∑[char[a(n-1)+6]+n]` with `a(0)=2`
-/

namespace A393682.P6979659033571836260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 6

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393682.P6979659033571836260

namespace A393682

/-- `∑[char[a(n-1)+6]+n]` -/
def P6979659033571836260.Spec : Prop :=
  ∀ n, (P6979659033571836260.a n : ℤ) = A393682 n

end A393682

/-! ## A393682.P4634072603599950895

`floor((∑[(n%3)!]+n²)/2)`
-/

namespace A393682.P4634072603599950895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 : ℕ) : ℚ) / 2⌋

end

end A393682.P4634072603599950895

namespace A393682

/-- `floor((∑[(n%3)!]+n²)/2)` -/
def P4634072603599950895.Spec : Prop :=
  ∀ n, P4634072603599950895.a n = A393682 n

end A393682

/-! ## A393682.P16491065048514180573

`round(sqrt(A176060(n)))`
-/

namespace A393682.P16491065048514180573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A176060 n : ℝ))

end

end A393682.P16491065048514180573

namespace A393682

/-- `round(sqrt(A176060(n)))` -/
def P16491065048514180573.Spec : Prop :=
  ∀ n, P16491065048514180573.a n = A393682 n

end A393682

/-! ## A393682.P3212961550625102299

`ceil(A262523(n)/2)`
-/

namespace A393682.P3212961550625102299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A262523 n : ℚ) / 2⌉

end

end A393682.P3212961550625102299

namespace A393682

/-- `ceil(A262523(n)/2)` -/
def P3212961550625102299.Spec : Prop :=
  ∀ n, P3212961550625102299.a n = A393682 n

end A393682

/-! ## A393682.P17922183973332093958

`∑[A079979(n+4)+n]`
-/

namespace A393682.P17922183973332093958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (n + 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393682.P17922183973332093958

namespace A393682

/-- `∑[A079979(n+4)+n]` -/
def P17922183973332093958.Spec : Prop :=
  ∀ n, P17922183973332093958.a n = A393682 n

end A393682

/-! ## A393682.P6779781261707417420

`A161680(n)+A047310(n+1)`
-/

namespace A393682.P6779781261707417420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A047310 (n + 1)

end

end A393682.P6779781261707417420

namespace A393682

/-- `A161680(n)+A047310(n+1)` -/
def P6779781261707417420.Spec : Prop :=
  ∀ n, P6779781261707417420.a n = A393682 n

end A393682

/-! ## A393682.P3914493697745263342

`A024385(n+1)-A000096(n)`
-/

namespace A393682.P3914493697745263342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024385 (n + 1) - A000096 n

end

end A393682.P3914493697745263342

namespace A393682

/-- `A024385(n+1)-A000096(n)` -/
def P3914493697745263342.Spec : Prop :=
  ∀ n, P3914493697745263342.a n = A393682 n

end A393682

/-! ## A393682.P12580510049783722630

`A024201(n+1)-A004396(n)`
-/

namespace A393682.P12580510049783722630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024201 (n + 1) - A004396 n

end

end A393682.P12580510049783722630

namespace A393682

/-- `A024201(n+1)-A004396(n)` -/
def P12580510049783722630.Spec : Prop :=
  ∀ n, P12580510049783722630.a n = A393682 n

end A393682

/-! ## A393682.P16367345418707607437

`A183575(n+1)-A047450(n+1)`
-/

namespace A393682.P16367345418707607437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183575 (n + 1) - A047450 (n + 1)

end

end A393682.P16367345418707607437

namespace A393682

/-- `A183575(n+1)-A047450(n+1)` -/
def P16367345418707607437.Spec : Prop :=
  ∀ n, P16367345418707607437.a n = A393682 n

end A393682

/-! ## A393682.P219540520096366981

`A047838(n+2)-A047519(n+1)`
-/

namespace A393682.P219540520096366981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (n + 2) - A047519 (n + 1)

end

end A393682.P219540520096366981

namespace A393682

/-- `A047838(n+2)-A047519(n+1)` -/
def P219540520096366981.Spec : Prop :=
  ∀ n, P219540520096366981.a n = A393682 n

end A393682

/-! ## A393682.P10125693889122048255

`A393683(n+1)-(n+2)`
-/

namespace A393682.P10125693889122048255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393683 (n + 1) - (n + 2 : ℤ)

end

end A393682.P10125693889122048255

namespace A393682

/-- `A393683(n+1)-(n+2)` -/
def P10125693889122048255.Spec : Prop :=
  ∀ n, P10125693889122048255.a n = A393682 n

end A393682

/-! ## A393682.P17454810510316114956

`A000212(n+1)+A000212(n)-A056827(n)`
-/

namespace A393682.P17454810510316114956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 1) + A000212 n - A056827 n

end

end A393682.P17454810510316114956

namespace A393682

/-- `A000212(n+1)+A000212(n)-A056827(n)` -/
def P17454810510316114956.Spec : Prop :=
  ∀ n, P17454810510316114956.a n = A393682 n

end A393682

/-! ## A393682.P9170872456701531261

`A056829(n+1)+A056829(n)+A056827(n+1)`
-/

namespace A393682.P9170872456701531261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (n + 1) + A056829 n + A056827 (n + 1)

end

end A393682.P9170872456701531261

namespace A393682

/-- `A056829(n+1)+A056829(n)+A056827(n+1)` -/
def P9170872456701531261.Spec : Prop :=
  ∀ n, P9170872456701531261.a n = A393682 n

end A393682

/-! ## A393682.P841151339158532728

`A056827(2*n+1)-A056827(n)`
-/

namespace A393682.P841151339158532728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 (2 * n + 1) - A056827 n

end

end A393682.P841151339158532728

namespace A393682

/-- `A056827(2*n+1)-A056827(n)` -/
def P841151339158532728.Spec : Prop :=
  ∀ n, P841151339158532728.a n = A393682 n

end A393682

/-! ## A393682.P12962539084957313170

`fp[sqrt(2*n+1)-2/3]`
-/

namespace A393682.P12962539084957313170
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * n + 1 : ℝ) - ((2 : ℚ) / 3 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A393682.P12962539084957313170

namespace A393682

/-- `fp[sqrt(2*n+1)-2/3]` -/
def P12962539084957313170.Spec : Prop :=
  ∀ n, (P12962539084957313170.a n : ℤ) = A393682 n

end A393682

/-!
# A393683: Upper (1/3,1/6) midsequence of (n^2) and ((n+2)^2); see Comments.

The programs for A393683, the canonical program `A393683.P8133223760399323745` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393683 has offset 0).

The definition of A393683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393683.P8133223760399323745

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=12, a(5)=17, a(6)=23, a(7)=30`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393683

/-- `2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` -/
def P8133223760399323745.Spec : Prop :=
  ∀ n, P8133223760399323745.a n = A393683 n

theorem P8133223760399323745.correct : P8133223760399323745.Spec := by
  intro n
  simp only [A393683]

end A393683

/-! ## A393683.P10598811527191222155

`floor((n+3)/6)+∑[n]+1`
-/

namespace A393683.P10598811527191222155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / 6⌋ + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A393683.P10598811527191222155

namespace A393683

/-- `floor((n+3)/6)+∑[n]+1` -/
def P10598811527191222155.Spec : Prop :=
  ∀ n, P10598811527191222155.a n = A393683 n

end A393683

/-! ## A393683.P7030411255797341244

`∑[1-char[(n%3)!*(n+1)]+n]`
-/

namespace A393683.P7030411255797341244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3) * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393683.P7030411255797341244

namespace A393683

/-- `∑[1-char[(n%3)!*(n+1)]+n]` -/
def P7030411255797341244.Spec : Prop :=
  ∀ n, P7030411255797341244.a n = A393683 n

end A393683

/-! ## A393683.P9229331102976112931

`∑[n+A008000(n)%2]`
-/

namespace A393683.P9229331102976112931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + Int.tmod (A008000 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393683.P9229331102976112931

namespace A393683

/-- `∑[n+A008000(n)%2]` -/
def P9229331102976112931.Spec : Prop :=
  ∀ n, P9229331102976112931.a n = A393683 n

end A393683

/-! ## A393683.P7491400916354433488

`∑[n+A265036(n)%2]`
-/

namespace A393683.P7491400916354433488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + Int.tmod (A265036 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393683.P7491400916354433488

namespace A393683

/-- `∑[n+A265036(n)%2]` -/
def P7491400916354433488.Spec : Prop :=
  ∀ n, P7491400916354433488.a n = A393683 n

end A393683

/-! ## A393683.P12445720301583254582

`∑[C(A373952(n), n)+n]`
-/

namespace A393683.P12445720301583254582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373952 n).toNat n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393683.P12445720301583254582

namespace A393683

/-- `∑[C(A373952(n), n)+n]` -/
def P12445720301583254582.Spec : Prop :=
  ∀ n, (P12445720301583254582.a n : ℤ) = A393683 n

end A393683

/-! ## A393683.P5589159745858449596

`∑[(A038620(n)-n)%2+n]`
-/

namespace A393683.P5589159745858449596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038620 n - (n : ℤ)) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393683.P5589159745858449596

namespace A393683

/-- `∑[(A038620(n)-n)%2+n]` -/
def P5589159745858449596.Spec : Prop :=
  ∀ n, P5589159745858449596.a n = A393683 n

end A393683

/-! ## A393683.P12100451557894977131

`ceil((∑[A047236(n+1)]+1)/2)`
-/

namespace A393683.P12100451557894977131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2⌉

end

end A393683.P12100451557894977131

namespace A393683

/-- `ceil((∑[A047236(n+1)]+1)/2)` -/
def P12100451557894977131.Spec : Prop :=
  ∀ n, P12100451557894977131.a n = A393683 n

end A393683

/-! ## A393683.P15536614153016081390

`∑[char[A181983(3*n)]+n]`
-/

namespace A393683.P15536614153016081390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (3 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393683.P15536614153016081390

namespace A393683

/-- `∑[char[A181983(3*n)]+n]` -/
def P15536614153016081390.Spec : Prop :=
  ∀ n, (P15536614153016081390.a n : ℤ) = A393683 n

end A393683

/-! ## A393683.P15115587322698635321

`∑[A068962(A065033(3*n)+n)]`
-/

namespace A393683.P15115587322698635321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A065033 (3 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393683.P15115587322698635321

namespace A393683

/-- `∑[A068962(A065033(3*n)+n)]` -/
def P15115587322698635321.Spec : Prop :=
  ∀ n, P15115587322698635321.a n = A393683 n

end A393683

/-! ## A393683.P7830853839404051895

`∑[n+1-char[A384042(n+1)]]`
-/

namespace A393683.P7830853839404051895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384042 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393683.P7830853839404051895

namespace A393683

/-- `∑[n+1-char[A384042(n+1)]]` -/
def P7830853839404051895.Spec : Prop :=
  ∀ n, P7830853839404051895.a n = A393683 n

end A393683

/-! ## A393683.P10635003616920379119

`A004523(A267529(n+1))`
-/

namespace A393683.P10635003616920379119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A267529 (n + 1)).toNat

end

end A393683.P10635003616920379119

namespace A393683

/-- `A004523(A267529(n+1))` -/
def P10635003616920379119.Spec : Prop :=
  ∀ n, P10635003616920379119.a n = A393683 n

end A393683

/-! ## A393683.P5215474693492008421

`A008619(A042968(n+1)+n²)`
-/

namespace A393683.P5215474693492008421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A042968 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A393683.P5215474693492008421

namespace A393683

/-- `A008619(A042968(n+1)+n²)` -/
def P5215474693492008421.Spec : Prop :=
  ∀ n, P5215474693492008421.a n = A393683 n

end A393683

/-! ## A393683.P15925972249398445016

`A123108(n+3+A011862(3*n+1))`
-/

namespace A393683.P15925972249398445016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 ((n + 3 : ℤ) + A011862 (3 * n + 1)).toNat

end

end A393683.P15925972249398445016

namespace A393683

/-- `A123108(n+3+A011862(3*n+1))` -/
def P15925972249398445016.Spec : Prop :=
  ∀ n, P15925972249398445016.a n = A393683 n

end A393683

/-!
# A393685: Records in A393684.

The programs for A393685, there is no canonical definition to state claims against.
-/

/-! ## A393685.P5566947244915847523

`record[A393684(n+1)]`
-/

namespace A393685.P5566947244915847523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393685.P5566947244915847523

/-! ## A393685.P10028664366786521331

`A393684(∑[3^n])`
-/

namespace A393685.P10028664366786521331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393684 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393685.P10028664366786521331

/-! ## A393685.P17746088036571978156

`∏{digits}[A382465(n+1), A393684(A003462(#))]`
-/

namespace A393685.P17746088036571978156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A393684 (A003462 x).toNat).prod

end

end A393685.P17746088036571978156

/-! ## A393685.P12758764256545865905

`A393684(A003462(n+1))%A139670(n+6)`
-/

namespace A393685.P12758764256545865905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393684 (A003462 (n + 1)).toNat) (A139670 (n + 6))

end

end A393685.P12758764256545865905

/-!
# A393689: Array read by antidiagonals: A(n, k) is the minimum number of whole unit squares under the polygonal path (i, h_k(v_i)), associated to a k-dimensional balanced ballot path, n >= 1, k >= 2.

The programs for A393689, there is no canonical definition to state claims against.
-/

/-! ## A393689.P5041044380236567414

`2*A059975(A079474(n+1))`
-/

namespace A393689.P5041044380236567414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059975 (A079474 (n + 1)).toNat

end

end A393689.P5041044380236567414

/-! ## A393689.P4700915626158479255

`A390990(A329049(n))`
-/

namespace A393689.P4700915626158479255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390990 (A329049 n).toNat

end

end A393689.P4700915626158479255

/-! ## A393689.P18169781876553096260

`A272269(A193648(n+1))`
-/

namespace A393689.P18169781876553096260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272269 (A193648 (n + 1)).toNat

end

end A393689.P18169781876553096260

/-! ## A393689.P5830403656812729712

`A193648(n+1)-A026492(A062092(n))`
-/

namespace A393689.P5830403656812729712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (n + 1) - A026492 (A062092 n).toNat

end

end A393689.P5830403656812729712

/-! ## A393689.P104505702717195292

`A193648(n+1)-A026492(A083595(n))`
-/

namespace A393689.P104505702717195292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (n + 1) - A026492 (A083595 n).toNat

end

end A393689.P104505702717195292

/-!
# A393692: Number of plane partitions of n with 4 parts.

The programs for A393692, there is no canonical definition to state claims against.
-/

/-! ## A393692.P16527315628687463941

`A091298(A055999(n)+10)`
-/

namespace A393692.P16527315628687463941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091298 (A055999 n + 10).toNat

end

end A393692.P16527315628687463941

/-! ## A393692.P801228118407183184

`A091298(A167499(2+n)-1)`
-/

namespace A393692.P801228118407183184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091298 (A167499 (2 + n) - 1).toNat

end

end A393692.P801228118407183184

/-! ## A393692.P13122556824005716121

`A091298(A133263(3+n)+2)`
-/

namespace A393692.P13122556824005716121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091298 (A133263 (3 + n) + 2).toNat

end

end A393692.P13122556824005716121

/-! ## A393692.P5152097019877297511

`A091298(A000124(n+3)+3)`
-/

namespace A393692.P5152097019877297511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091298 (A000124 (n + 3) + 3).toNat

end

end A393692.P5152097019877297511

/-! ## A393692.P6770457156997034124

`A091298(A167487(n+2)-3)`
-/

namespace A393692.P6770457156997034124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091298 (A167487 (n + 2) - 3).toNat

end

end A393692.P6770457156997034124

/-!
# A393695: Number of decimal places which are known after using n terms of A241773 and treating them as the coefficients of a continued fraction.

The programs for A393695, there is no canonical definition to state claims against.
-/

/-! ## A393695.P3432735448759374879

`A000005(A000079(n))-A137735(n+3)`
-/

namespace A393695.P3432735448759374879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 n).toNat - A137735 (n + 3)

end

end A393695.P3432735448759374879

/-!
# A393697: a(n) is the number of unit squares in the square lattice, divided by 4, that have 1 vertex strictly inside and 3 vertices strictly outside the circle x^2 + y^2 = n.

The programs for A393697, the canonical program `A393697.P7831953345102612304` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393697 has offset 0).

The definition of A393697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393697.P7831953345102612304

`A393562(n)-A172471(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A393697

/-- `A393562(n)-A172471(n)` -/
def P7831953345102612304.Spec : Prop :=
  ∀ n, P7831953345102612304.a n = A393697 n

theorem P7831953345102612304.correct : P7831953345102612304.Spec := by
  intro n
  simp only [A393697]

end A393697

/-! ## A393697.P16653421371001440444

`A393562(n)%A172471(A028310(n))`
-/

namespace A393697.P16653421371001440444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393562 n) (A172471 (A028310 n).toNat)

end

end A393697.P16653421371001440444

namespace A393697

/-- `A393562(n)%A172471(A028310(n))` -/
def P16653421371001440444.Spec : Prop :=
  ∀ n, P16653421371001440444.a n = A393697 n

end A393697

/-!
# A393698: a(n) is the position of the first occurrence of n in A393697.

The programs for A393698, there is no canonical definition to state claims against.
-/

/-! ## A393698.P3738621847719724082

`fo[A393697(n)]`
-/

namespace A393698.P3738621847719724082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A393698.P3738621847719724082

/-! ## A393698.P2172743619154949950

`A059100(A000534(n+1))%A194131(A000534(2*n+3))`
-/

namespace A393698.P2172743619154949950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059100 (A000534 (n + 1)).toNat) (A194131 (A000534 (2 * n + 3)).toNat)

end

end A393698.P2172743619154949950

/-!
# A393699: a(n) is the position of the first occurrence of 2*n+1 in A393562.

The programs for A393699, there is no canonical definition to state claims against.
-/

/-! ## A393699.P1634845703196271098

`or(n², A067694(A195820(2*(n+1))))`
-/

namespace A393699.P1634845703196271098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) (A067694 (A195820 (2 * (n + 1))).toNat)

end

end A393699.P1634845703196271098

/-! ## A393699.P2773341765242889893

`A358371(A358380(2*n+1))+n²`
-/

namespace A393699.P2773341765242889893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (A358380 (2 * n + 1)).toNat + (n ^ 2 : ℤ)

end

end A393699.P2773341765242889893

/-! ## A393699.P13191031286658606339

`A399211(A108263(3*n+2))+A010000(n)`
-/

namespace A393699.P13191031286658606339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399211 (A108263 (3 * n + 2)).toNat + A010000 n

end

end A393699.P13191031286658606339

/-! ## A393699.P17756172896638750150

`or(A010000(n), A010054(A292876(3*n+5)))`
-/

namespace A393699.P17756172896638750150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010000 n) (A010054 (A292876 (3 * n + 5)).toNat)

end

end A393699.P17756172896638750150

/-! ## A393699.P14733251014407022438

`or(n², A175066(A156833(3*n+1)))`
-/

namespace A393699.P14733251014407022438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) (A175066 (A156833 (3 * n + 1)).toNat)

end

end A393699.P14733251014407022438

