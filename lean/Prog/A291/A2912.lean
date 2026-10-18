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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A291200: Expansion of 1 - x*(1+x)/(1 + x^2*(1-x^2)/(1 - x^3*(1+x^3)/(1 + x^4*(1-x^4)/(1 - x^5*(1+x^5)/(1 - ...))))), a continued fraction.

The programs for A291200, there is no canonical definition to state claims against.
-/

/-! ## A291200.P4940098270726378986

`(-1)^n*A291193(n)`
-/

namespace A291200.P4940098270726378986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A291193 n

end

end A291200.P4940098270726378986

/-! ## A291200.P16645201664810755333

`A291193(n)/A033999(n)`
-/

namespace A291200.P16645201664810755333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291193 n : ℚ) / (A033999 n : ℚ)

end

end A291200.P16645201664810755333

/-! ## A291200.P10561285072100724765

`A291193(n)/A087960(n²)`
-/

namespace A291200.P10561285072100724765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291193 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A291200.P10561285072100724765

/-! ## A291200.P12571298113087073639

`A291193(n)/∑[A280560(n)]`
-/

namespace A291200.P12571298113087073639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291193 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A291200.P12571298113087073639

/-! ## A291200.P5329898861979857120

`A291193(n)/A009001(2*n)`
-/

namespace A291200.P5329898861979857120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291193 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A291200.P5329898861979857120

/-!
# A291203: Number F(n,h,t) of forests of t labeled rooted trees with n vertices such that h is the maximum of 0 and the tree heights; triangle of triangles F(n,h,t), n>=0, h=0..n, t=0..n-h, read by layers, then by rows.

The programs for A291203, there is no canonical definition to state claims against.
-/

/-! ## A291203.P14579698701354803007

`A227839(A244245(n)+1)`
-/

namespace A291203.P14579698701354803007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227839 (A244245 (n + 54) + 1).toNat

end

end A291203.P14579698701354803007

/-! ## A291203.P7322916826653836229

`A095684(A325098(n))*A291204(n)`
-/

namespace A291203.P7322916826653836229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095684 (A325098 n).toNat * A291204 n

end

end A291203.P7322916826653836229

/-! ## A291203.P1029213099844052953

`A240606(A205255(n+1)+A019565(n))`
-/

namespace A291203.P1029213099844052953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240606 (A205255 (n + 1) + A019565 n).toNat

end

end A291203.P1029213099844052953

/-! ## A291203.P3074696739476992921

`A001222(A043389(n+1)^A291204(n))`
-/

namespace A291203.P3074696739476992921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A043389 (n + 1) : ℚ) ^ (A291204 n : ℤ))).toNat

end

end A291203.P3074696739476992921

/-! ## A291203.P14545013795746862599

`A001222(A209721(n+1)^A291204(n))`
-/

namespace A291203.P14545013795746862599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A209721 (n + 1) : ℚ) ^ (A291204 n : ℤ))).toNat

end

end A291203.P14545013795746862599

/-!
# A291204: Number F(n,h,t) of forests of t labeled rooted trees with n vertices such that the root of each subtree contains the subtree's minimal label and h is the maximum of 0 and the tree heights; triangle of triangles F(n,h,t), n>=0, h=0..n, t=0..n-h, read by layers, then by rows.

The programs for A291204, there is no canonical definition to state claims against.
-/

/-! ## A291204.P11753927817291516486

`A327804(A032450(n+1)*A291203(n))`
-/

namespace A291204.P11753927817291516486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327804 (A032450 (n + 1) * A291203 n).toNat

end

end A291204.P11753927817291516486

/-! ## A291204.P2660834565771488485

`A074206(A291336(n)*A347192(n+1))`
-/

namespace A291204.P2660834565771488485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A291336 n * A347192 (n + 1)).toNat

end

end A291204.P2660834565771488485

/-! ## A291204.P15862674401806902157

`A260728(A000203(3*n+5)^A291336(n))`
-/

namespace A291204.P15862674401806902157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 (SequenceMachineLib.roundAway ((A000203 (3 * n + 5) : ℚ) ^ (A291336 n : ℤ))).toNat

end

end A291204.P15862674401806902157

/-! ## A291204.P12932891052220301742

`A057944(and(A291203(n), A350752(n)))`
-/

namespace A291204.P12932891052220301742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (Int.land (A291203 n) (A350752 n)).toNat

end

end A291204.P12932891052220301742

/-! ## A291204.P9626379683435268001

`A079673(A147494(n+1))*A291336(n)`
-/

namespace A291204.P9626379683435268001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079673 (A147494 (n + 1)).toNat * A291336 n

end

end A291204.P9626379683435268001

/-!
# A291205: Numbers n such that psi(n) = phi(m) has no solution for any m (psi(n) = A001615(n) and phi(m) = A000010(m)).

The programs for A291205, there is no canonical definition to state claims against.
-/

/-! ## A291205.P10862061754714743104

`eq[0, A014197(A033196(n+1)/(n+1)²)]+1`
-/

namespace A291205.P10862061754714743104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (SequenceMachineLib.roundAway ((A033196 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291205.P10862061754714743104

/-! ## A291205.P10391347407868902259

`eq[0, A014197(2*A291784(n+1)-A000010(n+1))]+1`
-/

namespace A291205.P10391347407868902259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (2 * A291784 (n + 1) - A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291205.P10391347407868902259

/-!
# A291206: Semi-octavan primes: primes of the form x^4 + y^8.

The programs for A291206, there is no canonical definition to state claims against.
-/

/-! ## A291206.P9626169186377274927

`∩[A002645(n+1), A346809(n+1)]`
-/

namespace A291206.P9626169186377274927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291206.P9626169186377274927

/-! ## A291206.P17981977449031977852

`∩[A003336(n+1), A346809(n+1)]`
-/

namespace A291206.P17981977449031977852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291206.P17981977449031977852

/-! ## A291206.P155903863551501370

`∩[A004831(n+1), A346809(n+1)]`
-/

namespace A291206.P155903863551501370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291206.P155903863551501370

/-! ## A291206.P4072503842743473139

`filter[A346809(n+1), A216284(#)]`
-/

namespace A291206.P4072503842743473139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216284 (f1 j).toNat = 1) n)

end

end A291206.P4072503842743473139

/-!
# A291207: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of continued fraction 1/(1 + x/(1 - 2^k*x/(1 + 3^k*x/(1 - 4^k*x/(1 + 5^k*x/(1 - ...)))))).

The programs for A291207, there is no canonical definition to state claims against.
-/

/-! ## A291207.P16096175673727936511

`A292068(C(n, A124010(n+1)))`
-/

namespace A291207.P16096175673727936511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292068 (Nat.choose n (A124010 (n + 1)).toNat)

end

end A291207.P16096175673727936511

/-! ## A291207.P1645099603809678552

`A292068(C(n, A350071(n+1)))`
-/

namespace A291207.P1645099603809678552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292068 (Nat.choose n (A350071 (n + 1)).toNat)

end

end A291207.P1645099603809678552

/-! ## A291207.P4323988738973847208

`A306629(n)^abs(A306629(3*n))`
-/

namespace A291207.P4323988738973847208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306629 n : ℚ) ^ (|A306629 (3 * n)| : ℤ)

end

end A291207.P4323988738973847208

/-! ## A291207.P989160258645767417

`A284993(n)^A285012(n+4)!`
-/

namespace A291207.P989160258645767417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 n ^ Nat.factorial (A285012 (n + 4)).toNat

end

end A291207.P989160258645767417

/-! ## A291207.P2713279529305759442

`A292068(C(n, A071625(3*n+1)))`
-/

namespace A291207.P2713279529305759442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292068 (Nat.choose n (A071625 (3 * n + 1)).toNat)

end

end A291207.P2713279529305759442

/-!
# A291208: Number of noncube divisors of n.

The programs for A291208, the canonical program `A291208.P1497823083848093531` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291208 has offset 1).

The definition of A291208 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A061704, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291208.P1497823083848093531

`A000005(n+1)-A061704(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A291208

/-- `A000005(n+1)-A061704(n+1)` -/
def P1497823083848093531.Spec : Prop :=
  ∀ n, P1497823083848093531.a n = A291208 (n + 1)

theorem P1497823083848093531.correct : P1497823083848093531.Spec := by
  intro n
  simp only [A291208, Nat.add_sub_cancel]

end A291208

/-! ## A291208.P1363074043538779686

`∏{e}[n+1, #+1]-∏{e}[n+1, ceil((#+1)/3)]`
-/

namespace A291208.P1363074043538779686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ∏ p ∈ Nat.primeFactors (f2 n), ⌈(Nat.factorization (f2 n) p + 1 : ℚ) / 3⌉

end

end A291208.P1363074043538779686

namespace A291208

/-- `∏{e}[n+1, #+1]-∏{e}[n+1, ceil((#+1)/3)]` -/
def P1363074043538779686.Spec : Prop :=
  ∀ n, P1363074043538779686.a n = A291208 (n + 1)

end A291208

/-! ## A291208.P14697159311735344776

`A000005(n+1)-Δ[A013937(n)]`
-/

namespace A291208.P14697159311735344776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (f1 (n + 1) - f1 n)

end

end A291208.P14697159311735344776

namespace A291208

/-- `A000005(n+1)-Δ[A013937(n)]` -/
def P14697159311735344776.Spec : Prop :=
  ∀ n, P14697159311735344776.a n = A291208 (n + 1)

end A291208

/-! ## A291208.P11354483385816663348

`Δ[A006218(n)]-A061704(n+1)`
-/

namespace A291208.P11354483385816663348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A061704 (n + 1)

end

end A291208.P11354483385816663348

namespace A291208

/-- `Δ[A006218(n)]-A061704(n+1)` -/
def P11354483385816663348.Spec : Prop :=
  ∀ n, P11354483385816663348.a n = A291208 (n + 1)

end A291208

/-! ## A291208.P7846300698242035506

`A000005(n+1)-∏{e}[n+1, A008620(#)]`
-/

namespace A291208.P7846300698242035506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A008620 (Nat.factorization (f1 n) p)

end

end A291208.P7846300698242035506

namespace A291208

/-- `A000005(n+1)-∏{e}[n+1, A008620(#)]` -/
def P7846300698242035506.Spec : Prop :=
  ∀ n, P7846300698242035506.a n = A291208 (n + 1)

end A291208

/-! ## A291208.P3983280894035674059

`A038040(n+1)/(n+1)-A061704(n+1)`
-/

namespace A291208.P3983280894035674059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A061704 (n + 1) : ℚ)

end

end A291208.P3983280894035674059

namespace A291208

/-- `A038040(n+1)/(n+1)-A061704(n+1)` -/
def P3983280894035674059.Spec : Prop :=
  ∀ n, P3983280894035674059.a n = (A291208 (n + 1) : ℚ)

end A291208

/-! ## A291208.P6538759188654593878

`A000005(n+1)-A000005(A053150(n+1))`
-/

namespace A291208.P6538759188654593878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (A053150 (n + 1)).toNat

end

end A291208.P6538759188654593878

namespace A291208

/-- `A000005(n+1)-A000005(A053150(n+1))` -/
def P6538759188654593878.Spec : Prop :=
  ∀ n, P6538759188654593878.a n = A291208 (n + 1)

end A291208

/-! ## A291208.P5217599787989985421

`A000005(n+1)-A365488(A008834(n+1))`
-/

namespace A291208.P5217599787989985421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A365488 (A008834 (n + 1)).toNat

end

end A291208.P5217599787989985421

namespace A291208

/-- `A000005(n+1)-A365488(A008834(n+1))` -/
def P5217599787989985421.Spec : Prop :=
  ∀ n, P5217599787989985421.a n = A291208 (n + 1)

end A291208

/-! ## A291208.P15165510024429720500

`A000005(n+1)-A365488(A062378(n+1))`
-/

namespace A291208.P15165510024429720500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A365488 (A062378 (n + 1)).toNat

end

end A291208.P15165510024429720500

namespace A291208

/-- `A000005(n+1)-A365488(A062378(n+1))` -/
def P15165510024429720500.Spec : Prop :=
  ∀ n, P15165510024429720500.a n = A291208 (n + 1)

end A291208

/-! ## A291208.P12164308448391258092

`A000005(n+1)+A013937(n)-A013937(n+1)`
-/

namespace A291208.P12164308448391258092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A013937 n - A013937 (n + 1))

end

end A291208.P12164308448391258092

namespace A291208

/-- `A000005(n+1)+A013937(n)-A013937(n+1)` -/
def P12164308448391258092.Spec : Prop :=
  ∀ n, P12164308448391258092.a n = A291208 (n + 1)

end A291208

/-! ## A291208.P1913189686451777798

`A006218(n+1)-(A061704(n+1)+A006218(n))`
-/

namespace A291208.P1913189686451777798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - (A061704 (n + 1) + A006218 n)

end

end A291208.P1913189686451777798

namespace A291208

/-- `A006218(n+1)-(A061704(n+1)+A006218(n))` -/
def P1913189686451777798.Spec : Prop :=
  ∀ n, P1913189686451777798.a n = A291208 (n + 1)

end A291208

/-! ## A291208.P12097175354715941890

`A046951(n+1)+A056595(n+1)-A061704(n+1)`
-/

namespace A291208.P12097175354715941890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + (A056595 (n + 1) - A061704 (n + 1))

end

end A291208.P12097175354715941890

namespace A291208

/-- `A046951(n+1)+A056595(n+1)-A061704(n+1)` -/
def P12097175354715941890.Spec : Prop :=
  ∀ n, P12097175354715941890.a n = A291208 (n + 1)

end A291208

/-! ## A291208.P3674351343986125643

`A048785(n+1)-(A294072(n+1)+A061704(n+1))`
-/

namespace A291208.P3674351343986125643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) - (A294072 (n + 1) + A061704 (n + 1))

end

end A291208.P3674351343986125643

namespace A291208

/-- `A048785(n+1)-(A294072(n+1)+A061704(n+1))` -/
def P3674351343986125643.Spec : Prop :=
  ∀ n, P3674351343986125643.a n = A291208 (n + 1)

end A291208

/-! ## A291208.P9841572421967847967

`∑{d}[n+1, A057427(#)]-A061704(n+1)`
-/

namespace A291208.P9841572421967847967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A061704 (n + 1)

end

end A291208.P9841572421967847967

namespace A291208

/-- `∑{d}[n+1, A057427(#)]-A061704(n+1)` -/
def P9841572421967847967.Spec : Prop :=
  ∀ n, P9841572421967847967.a n = A291208 (n + 1)

end A291208

/-! ## A291208.P3558981393086356012

`A046951((n+1)²)-A061704(n+1)`
-/

namespace A291208.P3558981393086356012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((n + 1) ^ 2) - A061704 (n + 1)

end

end A291208.P3558981393086356012

namespace A291208

/-- `A046951((n+1)²)-A061704(n+1)` -/
def P3558981393086356012.Spec : Prop :=
  ∀ n, P3558981393086356012.a n = A291208 (n + 1)

end A291208

/-! ## A291208.P6494496638895269987

`∑{d}[n+1, A267683(A267682(#))]-A061704(n+1)`
-/

namespace A291208.P6494496638895269987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267683 (A267682 d).toNat - A061704 (n + 1)

end

end A291208.P6494496638895269987

namespace A291208

/-- `∑{d}[n+1, A267683(A267682(#))]-A061704(n+1)` -/
def P6494496638895269987.Spec : Prop :=
  ∀ n, P6494496638895269987.a n = A291208 (n + 1)

end A291208

/-!
# A291210: Numbers k such that round(k*k^(1/k)) - round((k-1)*(k-1)^(1/(k-1))) > 1.

The programs for A291210, there is no canonical definition to state claims against.
-/

/-! ## A291210.P10178718055949438828

`Δ[A003142(n)-char[5]]`
-/

namespace A291210.P10178718055949438828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003142 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291210.P10178718055949438828

/-! ## A291210.P5739055060340427067

`Δ[A264909(n)+A003142(n)]`
-/

namespace A291210.P5739055060340427067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 n + A003142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291210.P5739055060340427067

/-!
# A291211: Numbers k>1 such that k*k^(1/k) is closer to an integer than for any smaller number.

The programs for A291211, there is no canonical definition to state claims against.
-/

/-! ## A291211.P2689161797491479765

`round(A291212(n+1)-log(A291212(n+1)))`
-/

namespace A291211.P2689161797491479765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A291212 (n + 1) : ℝ) - Real.log (A291212 (n + 1) : ℝ))

end

end A291211.P2689161797491479765

/-! ## A291211.P10329663113291693303

`A095394(A291212(n+1))`
-/

namespace A291211.P10329663113291693303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095394 (A291212 (n + 1)).toNat

end

end A291211.P10329663113291693303

/-!
# A291212: Numbers that can be approximated in increasing quality by k*k^(1/k).

The programs for A291212, there is no canonical definition to state claims against.
-/

/-! ## A291212.P15426875748218249858

`ceil(A291211(n+1)+log(A291211(n+1)))`
-/

namespace A291212.P15426875748218249858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A291211 (n + 1) : ℝ) + Real.log (A291211 (n + 1) : ℝ)⌉

end

end A291212.P15426875748218249858

/-! ## A291212.P12165541836047510943

`A212450(A291211(n+1))`
-/

namespace A291212.P12165541836047510943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212450 (A291211 (n + 1)).toNat

end

end A291212.P12165541836047510943

/-!
# A291214: Column 2 of triangle A290580.

The programs for A291214, there is no canonical definition to state claims against.
-/

/-! ## A291214.P12485871280625261459

`A290580(A001221(n+1)*A175526(3*n+4))`
-/

namespace A291214.P12485871280625261459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290580 (A001221 (n + 1) * A175526 (3 * n + 4)).toNat

end

end A291214.P12485871280625261459

/-!
# A291217: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S^3.

The programs for A291217, the canonical program `A291217.P13446228285650434809` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291217 has offset 0).

The definition of A291217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291217.P13446228285650434809

`3*a(n-2)+a(n-3)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=3, a(5)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291217

/-- `3*a(n-2)+a(n-3)-3*a(n-4)+a(n-6)` -/
def P13446228285650434809.Spec : Prop :=
  ∀ n, P13446228285650434809.a n = A291217 n

theorem P13446228285650434809.correct : P13446228285650434809.Spec := by
  intro n
  simp only [A291217]

end A291217

/-!
# A291218: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S^5.

The programs for A291218, there is no canonical definition to state claims against.
-/

/-! ## A291218.P16842519387453570306

`C(A373953(A006918(n)), 4)`
-/

namespace A291218.P16842519387453570306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373953 (A006918 n).toNat).toNat 4

end

end A291218.P16842519387453570306

/-! ## A291218.P10776602484245719040

`C(A357622(A029746(n)), 4)`
-/

namespace A291218.P10776602484245719040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A357622 (A029746 n).toNat).toNat 4

end

end A291218.P10776602484245719040

/-! ## A291218.P13462655996103429184

`C(A001222(A014946(n+1)), 4)`
-/

namespace A291218.P13462655996103429184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A014946 (n + 1)).toNat).toNat 4

end

end A291218.P13462655996103429184

/-! ## A291218.P5178079015411389803

`C(A344618(A131117(n+1)), 4)`
-/

namespace A291218.P5178079015411389803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344618 (A131117 (n + 1)).toNat).toNat 4

end

end A291218.P5178079015411389803

/-! ## A291218.P12292649311149732016

`A290867(n+1)^A008441(A009006(n))`
-/

namespace A291218.P12292649311149732016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290867 (n + 1) : ℚ) ^ (A008441 (A009006 n).toNat : ℤ)

end

end A291218.P12292649311149732016

/-!
# A291219: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - S^3.

The programs for A291219, there is no canonical definition to state claims against.
-/

/-! ## A291219.P11286338131323535314

`A257639(A163774(n))`
-/

namespace A291219.P11286338131323535314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A163774 n).toNat

end

end A291219.P11286338131323535314

/-! ## A291219.P1268634993593682762

`A000267(A124312(2*(n+1)))`
-/

namespace A291219.P1268634993593682762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A124312 (2 * (n + 1))).toNat

end

end A291219.P1268634993593682762

/-! ## A291219.P16245816158736062112

`A000267(A216318(n)-n%2)`
-/

namespace A291219.P16245816158736062112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A216318 n - ((n % 2 : ℕ) : ℤ)).toNat

end

end A291219.P16245816158736062112

/-! ## A291219.P10513427054326386426

`A000267(A216318(n)-A000035(n))`
-/

namespace A291219.P10513427054326386426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A216318 n - A000035 n).toNat

end

end A291219.P10513427054326386426

/-! ## A291219.P4546396843220127536

`A193832(A000108(n)*A370808(n))`
-/

namespace A291219.P4546396843220127536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A000108 n * A370808 n).toNat

end

end A291219.P4546396843220127536

/-!
# A291220: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - S^4.

The programs for A291220, there is no canonical definition to state claims against.
-/

/-! ## A291220.P16100670746837641806

`A257639(A149106(n+1))`
-/

namespace A291220.P16100670746837641806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A149106 (n + 1)).toNat

end

end A291220.P16100670746837641806

/-! ## A291220.P15435854001754020968

`A003056((n+1)*A112520(n))`
-/

namespace A291220.P15435854001754020968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n + 1 : ℤ) * A112520 n).toNat

end

end A291220.P15435854001754020968

/-! ## A291220.P314404852743782962

`A374743(n)-A179392(A374764(n))`
-/

namespace A291220.P314404852743782962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374743 n - A179392 (A374764 n).toNat

end

end A291220.P314404852743782962

/-!
# A291222: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S^2 - S^3.

The programs for A291222, the canonical program `A291222.P11689937323694049453` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291222 has offset 0).

The definition of A291222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291222.P11689937323694049453

`4*a(n-2)+a(n-3)-4*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=5, a(5)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291222

/-- `4*a(n-2)+a(n-3)-4*a(n-4)+a(n-6)` -/
def P11689937323694049453.Spec : Prop :=
  ∀ n, P11689937323694049453.a n = A291222 n

theorem P11689937323694049453.correct : P11689937323694049453.Spec := by
  intro n
  simp only [A291222]

end A291222

/-! ## A291222.P8694892024096163433

`A351290(A126796(n)+A062112(n))`
-/

namespace A291222.P8694892024096163433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (A126796 n + A062112 n).toNat

end

end A291222.P8694892024096163433

namespace A291222

/-- `A351290(A126796(n)+A062112(n))` -/
def P8694892024096163433.Spec : Prop :=
  ∀ n, P8694892024096163433.a n = A291222 n

end A291222

/-! ## A291222.P13687829201923797293

`A117333(A001405(n))-A084938(n)`
-/

namespace A291222.P13687829201923797293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117333 (A001405 n).toNat - A084938 n

end

end A291222.P13687829201923797293

namespace A291222

/-- `A117333(A001405(n))-A084938(n)` -/
def P13687829201923797293.Spec : Prop :=
  ∀ n, P13687829201923797293.a n = A291222 n

end A291222

/-! ## A291222.P5193311579838704161

`A001045(n)-A249857(A000213(n))`
-/

namespace A291222.P5193311579838704161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n - A249857 (A000213 n).toNat

end

end A291222.P5193311579838704161

namespace A291222

/-- `A001045(n)-A249857(A000213(n))` -/
def P5193311579838704161.Spec : Prop :=
  ∀ n, P5193311579838704161.a n = A291222 n

end A291222

/-!
# A291224: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - S)^4.

The programs for A291224, there is no canonical definition to state claims against.
-/

/-! ## A291224.P14676653717504489469

`A226143(A266944(n+1))`
-/

namespace A291224.P14676653717504489469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A266944 (n + 1)).toNat

end

end A291224.P14676653717504489469

/-! ## A291224.P2444997482035748961

`A100196(A215108(2*(n+1)+1))`
-/

namespace A291224.P2444997482035748961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A215108 (2 * (n + 1) + 1)).toNat

end

end A291224.P2444997482035748961

/-!
# A291225: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - S)^5.

The programs for A291225, there is no canonical definition to state claims against.
-/

/-! ## A291225.P8570507442549170800

`∑[A091529(A018921(n))]`
-/

namespace A291225.P8570507442549170800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091529 (A018921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291225.P8570507442549170800

/-!
# A291226: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - S)^6.

The programs for A291226, there is no canonical definition to state claims against.
-/

/-! ## A291226.P4567868439488880405

`A188920(2*(n+2))-A227061(A000142(n))`
-/

namespace A291226.P4567868439488880405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188920 (2 * (n + 2)) - A227061 (A000142 n).toNat

end

end A291226.P4567868439488880405

/-!
# A291227: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - 2*S^2.

The programs for A291227, the canonical program `A291227.P11407074202955815623` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291227 has offset 0).

The definition of A291227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291227.P11407074202955815623

`a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=17`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291227

/-- `a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` -/
def P11407074202955815623.Spec : Prop :=
  ∀ n, P11407074202955815623.a n = A291227 n

theorem P11407074202955815623.correct : P11407074202955815623.Spec := by
  intro n
  simp only [A291227]

end A291227

/-! ## A291227.P7780346575332800911

`A112577(n)+abs(A077985(n))`
-/

namespace A291227.P7780346575332800911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112577 n + |A077985 n|

end

end A291227.P7780346575332800911

namespace A291227

/-- `A112577(n)+abs(A077985(n))` -/
def P7780346575332800911.Spec : Prop :=
  ∀ n, P7780346575332800911.a n = A291227 n

end A291227

/-! ## A291227.P12850686861369587506

`A112577(n)+∑[A001333(n)]`
-/

namespace A291227.P12850686861369587506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112577 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291227.P12850686861369587506

namespace A291227

/-- `A112577(n)+∑[A001333(n)]` -/
def P12850686861369587506.Spec : Prop :=
  ∀ n, P12850686861369587506.a n = A291227 n

end A291227

/-! ## A291227.P5577945758638631309

`A112577(n)+A000129(n+1)`
-/

namespace A291227.P5577945758638631309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112577 n + A000129 (n + 1)

end

end A291227.P5577945758638631309

namespace A291227

/-- `A112577(n)+A000129(n+1)` -/
def P5577945758638631309.Spec : Prop :=
  ∀ n, P5577945758638631309.a n = A291227 n

end A291227

/-! ## A291227.P11519761167567848593

`A112577(n)+Δ[A024537(n)]`
-/

namespace A291227.P11519761167567848593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112577 n + (f1 (n + 1) - f1 n)

end

end A291227.P11519761167567848593

namespace A291227

/-- `A112577(n)+Δ[A024537(n)]` -/
def P11519761167567848593.Spec : Prop :=
  ∀ n, P11519761167567848593.a n = A291227 n

end A291227

/-! ## A291227.P12479289496991936446

`2*A291239(n)-A291229(n)`
-/

namespace A291227.P12479289496991936446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291239 n - A291229 n

end

end A291227.P12479289496991936446

namespace A291227

/-- `2*A291239(n)-A291229(n)` -/
def P12479289496991936446.Spec : Prop :=
  ∀ n, P12479289496991936446.a n = A291227 n

end A291227

/-!
# A291228: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - 2 S - 2 S^2.

The programs for A291228, the canonical program `A291228.P9253891996790418353` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291228 has offset 0).

The definition of A291228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291228.P9253891996790418353

`2*a(n-1)+4*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=6, a(2)=18, a(3)=56`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291228

/-- `2*a(n-1)+4*a(n-2)-2*a(n-3)-a(n-4)` -/
def P9253891996790418353.Spec : Prop :=
  ∀ n, P9253891996790418353.a n = A291228 n

theorem P9253891996790418353.correct : P9253891996790418353.Spec := by
  intro n
  simp only [A291228]

end A291228

/-! ## A291228.P401882335476927906

`2*A291257(n)`
-/

namespace A291228.P401882335476927906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291257 n

end

end A291228.P401882335476927906

namespace A291228

/-- `2*A291257(n)` -/
def P401882335476927906.Spec : Prop :=
  ∀ n, P401882335476927906.a n = A291228 n

end A291228

/-! ## A291228.P4994645748827523076

`A291257(n)+A291257(n%A022383(n))`
-/

namespace A291228.P4994645748827523076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291257 n + A291257 (Int.tmod (n : ℤ) (A022383 n)).toNat

end

end A291228.P4994645748827523076

namespace A291228

/-- `A291257(n)+A291257(n%A022383(n))` -/
def P4994645748827523076.Spec : Prop :=
  ∀ n, P4994645748827523076.a n = A291228 n

end A291228

/-! ## A291228.P10400334404979061905

`A291257(n)+gcd(A000038(n), A291257(n))`
-/

namespace A291228.P10400334404979061905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291257 n + (Int.gcd (A000038 n) (A291257 n) : ℤ)

end

end A291228.P10400334404979061905

namespace A291228

/-- `A291257(n)+gcd(A000038(n), A291257(n))` -/
def P10400334404979061905.Spec : Prop :=
  ∀ n, P10400334404979061905.a n = A291228 n

end A291228

/-! ## A291228.P6395334528032110239

`A291257(n)+A291257(n)%A291257(n+1)`
-/

namespace A291228.P6395334528032110239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291257 n + Int.tmod (A291257 n) (A291257 (n + 1))

end

end A291228.P6395334528032110239

namespace A291228

/-- `A291257(n)+A291257(n)%A291257(n+1)` -/
def P6395334528032110239.Spec : Prop :=
  ∀ n, P6395334528032110239.a n = A291228 n

end A291228

/-!
# A291229: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - S)(1 - 2 S).

The programs for A291229, the canonical program `A291229.P9126633261047573384` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291229 has offset 0).

The definition of A291229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291229.P9126633261047573384

`A106515(n+1)+A001333(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291229

/-- `A106515(n+1)+A001333(n)` -/
def P9126633261047573384.Spec : Prop :=
  ∀ n, P9126633261047573384.a n = A291229 n

theorem P9126633261047573384.correct : P9126633261047573384.Spec := by
  intro n
  simp only [A291229]

end A291229

/-! ## A291229.P12627240806518596222

`A371596(n+1)-A212804(n+2)`
-/

namespace A291229.P12627240806518596222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371596 (n + 1) - A212804 (n + 2)

end

end A291229.P12627240806518596222

namespace A291229

/-- `A371596(n+1)-A212804(n+2)` -/
def P12627240806518596222.Spec : Prop :=
  ∀ n, P12627240806518596222.a n = A291229 n

end A291229

/-! ## A291229.P13054962374469216660

`2*A052542(n+1)-A000045(n+1)`
-/

namespace A291229.P13054962374469216660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052542 (n + 1) - A000045 (n + 1)

end

end A291229.P13054962374469216660

namespace A291229

/-- `2*A052542(n+1)-A000045(n+1)` -/
def P13054962374469216660.Spec : Prop :=
  ∀ n, P13054962374469216660.a n = A291229 n

end A291229

/-! ## A291229.P12995887903000215652

`2*A163271(n+2)-A000045(n+1)`
-/

namespace A291229.P12995887903000215652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163271 (n + 2) - A000045 (n + 1)

end

end A291229.P12995887903000215652

namespace A291229

/-- `2*A163271(n+2)-A000045(n+1)` -/
def P12995887903000215652.Spec : Prop :=
  ∀ n, P12995887903000215652.a n = A291229 n

end A291229

/-! ## A291229.P18282091438340508841

`A114647(n)+A114689(n)-A000045(n+1)`
-/

namespace A291229.P18282091438340508841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114647 n + (A114689 n - A000045 (n + 1))

end

end A291229.P18282091438340508841

namespace A291229

/-- `A114647(n)+A114689(n)-A000045(n+1)` -/
def P18282091438340508841.Spec : Prop :=
  ∀ n, P18282091438340508841.a n = A291229 n

end A291229

/-! ## A291229.P2545886075682263919

`A002203(n+1)+A002203(n)-A000045(n+1)`
-/

namespace A291229.P2545886075682263919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) + (A002203 n - A000045 (n + 1))

end

end A291229.P2545886075682263919

namespace A291229

/-- `A002203(n+1)+A002203(n)-A000045(n+1)` -/
def P2545886075682263919.Spec : Prop :=
  ∀ n, P2545886075682263919.a n = A291229 n

end A291229

/-! ## A291229.P3598282153221041432

`A048654(n+1)-(A000129(n)+A000045(n+1))`
-/

namespace A291229.P3598282153221041432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (n + 1) - (A000129 n + A000045 (n + 1))

end

end A291229.P3598282153221041432

namespace A291229

/-- `A048654(n+1)-(A000129(n)+A000045(n+1))` -/
def P3598282153221041432.Spec : Prop :=
  ∀ n, P3598282153221041432.a n = A291229 n

end A291229

/-! ## A291229.P15389775197148547282

`A078057(n+1)+A001333(n)-A000045(n+1)`
-/

namespace A291229.P15389775197148547282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 1) + (A001333 n - A000045 (n + 1))

end

end A291229.P15389775197148547282

namespace A291229

/-- `A078057(n+1)+A001333(n)-A000045(n+1)` -/
def P15389775197148547282.Spec : Prop :=
  ∀ n, P15389775197148547282.a n = A291229 n

end A291229

/-! ## A291229.P15860565826820921020

`A051927(n+1)+A051927(n)-A000045(n+1)`
-/

namespace A291229.P15860565826820921020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051927 (n + 1) + (A051927 n - A000045 (n + 1))

end

end A291229.P15860565826820921020

namespace A291229

/-- `A051927(n+1)+A051927(n)-A000045(n+1)` -/
def P15860565826820921020.Spec : Prop :=
  ∀ n, P15860565826820921020.a n = A291229 n

end A291229

/-! ## A291229.P864944948687141212

`A000129(n+1)+A106515(n+1)-A000129(n)`
-/

namespace A291229.P864944948687141212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A106515 (n + 1) - A000129 n)

end

end A291229.P864944948687141212

namespace A291229

/-- `A000129(n+1)+A106515(n+1)-A000129(n)` -/
def P864944948687141212.Spec : Prop :=
  ∀ n, P864944948687141212.a n = A291229 n

end A291229

/-! ## A291229.P7192858556443798510

`A221174(n+1)+A078343(n)-A000045(n+1)`
-/

namespace A291229.P7192858556443798510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 (n + 1) + (A078343 n - A000045 (n + 1))

end

end A291229.P7192858556443798510

namespace A291229

/-- `A221174(n+1)+A078343(n)-A000045(n+1)` -/
def P7192858556443798510.Spec : Prop :=
  ∀ n, P7192858556443798510.a n = A291229 n

end A291229

/-! ## A291229.P5189204479635824551

`A182143(n+1)+A182143(n)-A000045(n+1)`
-/

namespace A291229.P5189204479635824551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 (n + 1) + (A182143 n - A000045 (n + 1))

end

end A291229.P5189204479635824551

namespace A291229

/-- `A182143(n+1)+A182143(n)-A000045(n+1)` -/
def P5189204479635824551.Spec : Prop :=
  ∀ n, P5189204479635824551.a n = A291229 n

end A291229

/-! ## A291229.P13057699946950909990

`A048655(n+1)-(A001333(n+1)+A000045(n+1))`
-/

namespace A291229.P13057699946950909990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 (n + 1) - (A001333 (n + 1) + A000045 (n + 1))

end

end A291229.P13057699946950909990

namespace A291229

/-- `A048655(n+1)-(A001333(n+1)+A000045(n+1))` -/
def P13057699946950909990.Spec : Prop :=
  ∀ n, P13057699946950909990.a n = A291229 n

end A291229

/-! ## A291229.P16722530214643591751

`A052542(n+1)+A052542(n+1)-A324969(n+2)`
-/

namespace A291229.P16722530214643591751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) + (A052542 (n + 1) - A324969 (n + 2))

end

end A291229.P16722530214643591751

namespace A291229

/-- `A052542(n+1)+A052542(n+1)-A324969(n+2)` -/
def P16722530214643591751.Spec : Prop :=
  ∀ n, P16722530214643591751.a n = A291229 n

end A291229

/-!
# A291230: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - S)(1 - 2 S)(1 - 3 S).

The programs for A291230, there is no canonical definition to state claims against.
-/

/-! ## A291230.P8544572664602512035

`A002264(A000244(n)*A278448(n+4))`
-/

namespace A291230.P8544572664602512035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000244 n * A278448 (n + 4)).toNat

end

end A291230.P8544572664602512035

/-!
# A291232: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - 3 S)^2.

The programs for A291232, the canonical program `A291232.P2170564962072490019` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291232 has offset 0).

The definition of A291232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291232.P2170564962072490019

`6*a(n-1)-7*a(n-2)-6*a(n-3)-a(n-4)` with `a(0)=6, a(1)=27, a(2)=114, a(3)=459`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291232

/-- `6*a(n-1)-7*a(n-2)-6*a(n-3)-a(n-4)` -/
def P2170564962072490019.Spec : Prop :=
  ∀ n, P2170564962072490019.a n = A291232 n

theorem P2170564962072490019.correct : P2170564962072490019.Spec := by
  intro n
  simp only [A291232]

end A291232

/-! ## A291232.P3506692002459731575

`3*A291265(n)`
-/

namespace A291232.P3506692002459731575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A291265 n

end

end A291232.P3506692002459731575

namespace A291232

/-- `3*A291265(n)` -/
def P3506692002459731575.Spec : Prop :=
  ∀ n, P3506692002459731575.a n = A291232 n

end A291232

/-! ## A291232.P2676727190473120890

`A008486(A291265(n))`
-/

namespace A291232.P2676727190473120890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A291265 n).toNat

end

end A291232.P2676727190473120890

namespace A291232

/-- `A008486(A291265(n))` -/
def P2676727190473120890.Spec : Prop :=
  ∀ n, P2676727190473120890.a n = A291232 n

end A291232

/-!
# A291233: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - S^2 - S^3.

The programs for A291233, there is no canonical definition to state claims against.
-/

/-! ## A291233.P7156974457141857952

`A226143(A151072(n))`
-/

namespace A291233.P7156974457141857952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A151072 n).toNat

end

end A291233.P7156974457141857952

/-! ## A291233.P3515555372621613754

`∑[A138373(A098615(n))]`
-/

namespace A291233.P3515555372621613754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138373 (A098615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291233.P3515555372621613754

/-! ## A291233.P5309576573824689451

`∑[A306202(A006951(n))]`
-/

namespace A291233.P5309576573824689451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (A006951 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291233.P5309576573824689451

/-!
# A291234: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - S^2 - S^3 - S^4.

The programs for A291234, there is no canonical definition to state claims against.
-/

/-! ## A291234.P7605091185955923190

`∑[A003008(n+2)-A332828(n)]`
-/

namespace A291234.P7605091185955923190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003008 (n + 2) - A332828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291234.P7605091185955923190

/-! ## A291234.P10009854100327628892

`ceil(sqrt(A182646(3*n+1)/A151514(n+2)))`
-/

namespace A291234.P10009854100327628892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A182646 (3 * n + 1) : ℚ) / (A151514 (n + 2) : ℚ) : ℝ)⌉

end

end A291234.P10009854100327628892

/-! ## A291234.P931448899879355761

`A345914(A011782(n))+A000081(n+2)`
-/

namespace A291234.P931448899879355761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345914 (A011782 n).toNat + A000081 (n + 2)

end

end A291234.P931448899879355761

/-!
# A291235: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - S^2 - S^3 - S^4 - S^5.

The programs for A291235, there is no canonical definition to state claims against.
-/

/-! ## A291235.P3352543802075637481

`A029901(a(n-1)-1)` with `a(0)=1`
-/

namespace A291235.P3352543802075637481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029901 (a (n - 1) - 1).toNat

end

end A291235.P3352543802075637481

/-! ## A291235.P2504946549043292095

`A272570(A081908(n))`
-/

namespace A291235.P2504946549043292095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272570 (A081908 n).toNat

end

end A291235.P2504946549043292095

/-! ## A291235.P226577865726711465

`A026819(A149974(n+1))`
-/

namespace A291235.P226577865726711465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A149974 (n + 1)).toNat

end

end A291235.P226577865726711465

/-!
# A291236: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - S)(1 - 3 S).

The programs for A291236, the canonical program `A291236.P7670742485781459514` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291236 has offset 0).

The definition of A291236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291236.P7670742485781459514

`4*a(n-1)-a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=13, a(2)=44, a(3)=147`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291236

/-- `4*a(n-1)-a(n-2)-4*a(n-3)-a(n-4)` -/
def P7670742485781459514.Spec : Prop :=
  ∀ n, P7670742485781459514.a n = A291236 n

theorem P7670742485781459514.correct : P7670742485781459514.Spec := by
  intro n
  simp only [A291236]

end A291236

/-!
# A291238: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - S)^2 (1 - 2 S).

The programs for A291238, there is no canonical definition to state claims against.
-/

/-! ## A291238.P9251619783941808036

`A183774(n+1)-A003059(A002110(n))`
-/

namespace A291238.P9251619783941808036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183774 (n + 1) - A003059 (A002110 n).toNat

end

end A291238.P9251619783941808036

/-!
# A291239: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - S^2) (1 - 2 S).

The programs for A291239, the canonical program `A291239.P18430798082310055152` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291239 has offset 0).

The definition of A291239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291239.P18430798082310055152

`(A291229(n)+A291227(n))/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A291239

/-- `(A291229(n)+A291227(n))/2` -/
def P18430798082310055152.Spec : Prop :=
  ∀ n, P18430798082310055152.a n = (A291239 n : ℚ)

end A291239

/-! ## A291239.P12290792022980638092

`A291227(n)+A014682(A291229(n)-A291227(n))`
-/

namespace A291239.P12290792022980638092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291227 n + A014682 (A291229 n - A291227 n).toNat

end

end A291239.P12290792022980638092

namespace A291239

/-- `A291227(n)+A014682(A291229(n)-A291227(n))` -/
def P12290792022980638092.Spec : Prop :=
  ∀ n, P12290792022980638092.a n = A291239 n

end A291239

/-! ## A291239.P1092838815257251189

`A291227(n)+A273943(A291229(n)-A291227(n))`
-/

namespace A291239.P1092838815257251189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291227 n + A273943 (A291229 n - A291227 n).toNat

end

end A291239.P1092838815257251189

namespace A291239

/-- `A291227(n)+A273943(A291229(n)-A291227(n))` -/
def P1092838815257251189.Spec : Prop :=
  ∀ n, P1092838815257251189.a n = A291239 n

end A291239

/-! ## A291239.P2923967342951113616

`A014682(A291229(n)+A291227(n))`
-/

namespace A291239.P2923967342951113616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A291229 n + A291227 n).toNat

end

end A291239.P2923967342951113616

namespace A291239

/-- `A014682(A291229(n)+A291227(n))` -/
def P2923967342951113616.Spec : Prop :=
  ∀ n, P2923967342951113616.a n = A291239 n

end A291239

/-! ## A291239.P9648717863127093102

`A273943(A291229(n)+A291227(n))`
-/

namespace A291239.P9648717863127093102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A291229 n + A291227 n).toNat

end

end A291239.P9648717863127093102

namespace A291239

/-- `A273943(A291229(n)+A291227(n))` -/
def P9648717863127093102.Spec : Prop :=
  ∀ n, P9648717863127093102.a n = A291239 n

end A291239

/-!
# A291241: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - S^2 + S^3.

The programs for A291241, the canonical program `A291241.P11292606566486155068` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291241 has offset 0).

The definition of A291241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291241.P11292606566486155068

`∪[A038731(n), A290917(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291241

/-- `∪[A038731(n), A290917(n)]` -/
def P11292606566486155068.Spec : Prop :=
  ∀ n, (P11292606566486155068.a n : ℤ) = A291241 n

theorem P11292606566486155068.correct : P11292606566486155068.Spec := by
  intro n
  simp only [A291241]

end A291241

/-! ## A291241.P13924739969532412043

`A129720(n)+A000045(n+1)`
-/

namespace A291241.P13924739969532412043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129720 n + A000045 (n + 1)

end

end A291241.P13924739969532412043

namespace A291241

/-- `A129720(n)+A000045(n+1)` -/
def P13924739969532412043.Spec : Prop :=
  ∀ n, P13924739969532412043.a n = A291241 n

end A291241

/-! ## A291241.P2835555269042399115

`∪[A134512(2*n), A290917(n)]`
-/

namespace A291241.P2835555269042399115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290917 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291241.P2835555269042399115

namespace A291241

/-- `∪[A134512(2*n), A290917(n)]` -/
def P2835555269042399115.Spec : Prop :=
  ∀ n, (P2835555269042399115.a n : ℤ) = A291241 n

end A291241

/-! ## A291241.P1490064077216544767

`∪[A287349(n)-a(n-1), A290917(n)]` with `a(0)=1`
-/

namespace A291241.P1490064077216544767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A287349 n - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290917 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291241.P1490064077216544767

namespace A291241

/-- `∪[A287349(n)-a(n-1), A290917(n)]` -/
def P1490064077216544767.Spec : Prop :=
  ∀ n, (P1490064077216544767.a n : ℤ) = A291241 n

end A291241

/-! ## A291241.P10255097033606001877

`∪[A238846(n)-A001906(n), A290917(n)]`
-/

namespace A291241.P10255097033606001877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238846 n - A001906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290917 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291241.P10255097033606001877

namespace A291241

/-- `∪[A238846(n)-A001906(n), A290917(n)]` -/
def P10255097033606001877.Spec : Prop :=
  ∀ n, (P10255097033606001877.a n : ℤ) = A291241 n

end A291241

/-!
# A291242: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - 2 S - S^2 + S^3.

The programs for A291242, there is no canonical definition to state claims against.
-/

/-! ## A291242.P5317218209430545280

`A256663(A221946(n)+1)`
-/

namespace A291242.P5317218209430545280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256663 (A221946 n + 1).toNat

end

end A291242.P5317218209430545280

/-! ## A291242.P3232354661203668877

`A233583(2*A018145(2*n))`
-/

namespace A291242.P3232354661203668877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (2 * A018145 (2 * n)).toNat

end

end A291242.P3232354661203668877

/-! ## A291242.P9000114410281077186

`A025169(n)-A191927(A164153(n))`
-/

namespace A291242.P9000114410281077186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025169 n - A191927 (A164153 n).toNat

end

end A291242.P9000114410281077186

/-!
# A291243: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - 3 S + S^2.

The programs for A291243, the canonical program `A291243.P15245548336244137780` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291243 has offset 0).

The definition of A291243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291243.P15245548336244137780

`3*a(n-1)+a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=3, a(1)=8, a(2)=24, a(3)=71`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291243

/-- `3*a(n-1)+a(n-2)-3*a(n-3)-a(n-4)` -/
def P15245548336244137780.Spec : Prop :=
  ∀ n, P15245548336244137780.a n = A291243 n

theorem P15245548336244137780.correct : P15245548336244137780.Spec := by
  intro n
  simp only [A291243]

end A291243

/-! ## A291243.P16413596051808455188

`A270863(n+1)+A279277(n+1)+A270863(n+1)`
-/

namespace A291243.P16413596051808455188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270863 (n + 1) + (A279277 (n + 1) + A270863 (n + 1))

end

end A291243.P16413596051808455188

namespace A291243

/-- `A270863(n+1)+A279277(n+1)+A270863(n+1)` -/
def P16413596051808455188.Spec : Prop :=
  ∀ n, P16413596051808455188.a n = A291243 n

end A291243

/-! ## A291243.P7660270614087002816

`A004937(a(n-1))+a(n-2)` with `a(0)=3, a(1)=8`
-/

namespace A291243.P7660270614087002816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  A004937 (a (n - 1)).toNat + a (n - 2)

end

end A291243.P7660270614087002816

namespace A291243

/-- `A004937(a(n-1))+a(n-2)` -/
def P7660270614087002816.Spec : Prop :=
  ∀ n, P7660270614087002816.a n = A291243 n

end A291243

/-! ## A291243.P3758053788306525621

`A004957(a(n-1))+a(n-2)` with `a(0)=3, a(1)=8`
-/

namespace A291243.P3758053788306525621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  A004957 (a (n - 1)).toNat + a (n - 2)

end

end A291243.P3758053788306525621

namespace A291243

/-- `A004957(a(n-1))+a(n-2)` -/
def P3758053788306525621.Spec : Prop :=
  ∀ n, P3758053788306525621.a n = A291243 n

end A291243

/-!
# A291244: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - 4 S + S^2.

The programs for A291244, the canonical program `A291244.P9982151296682417642` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291244 has offset 0).

The definition of A291244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291244.P9982151296682417642

`4*a(n-1)+a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=15, a(2)=60, a(3)=239`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291244

/-- `4*a(n-1)+a(n-2)-4*a(n-3)-a(n-4)` -/
def P9982151296682417642.Spec : Prop :=
  ∀ n, P9982151296682417642.a n = A291244 n

theorem P9982151296682417642.correct : P9982151296682417642.Spec := by
  intro n
  simp only [A291244]

end A291244

/-! ## A291244.P14246041230680762883

`A206450(n+1)-A002265(A000302(n))`
-/

namespace A291244.P14246041230680762883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206450 (n + 1) - A002265 (A000302 n).toNat

end

end A291244.P14246041230680762883

namespace A291244

/-- `A206450(n+1)-A002265(A000302(n))` -/
def P14246041230680762883.Spec : Prop :=
  ∀ n, P14246041230680762883.a n = A291244 n

end A291244

/-!
# A291245: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - 5 S + S^2.

The programs for A291245, the canonical program `A291245.P17130420313311949379` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291245 has offset 0).

The definition of A291245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291245.P17130420313311949379

`5*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)` with `a(0)=5, a(1)=24, a(2)=120, a(3)=599`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291245

/-- `5*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)` -/
def P17130420313311949379.Spec : Prop :=
  ∀ n, P17130420313311949379.a n = A291245 n

theorem P17130420313311949379.correct : P17130420313311949379.Spec := by
  intro n
  simp only [A291245]

end A291245

/-!
# A291247: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - S^2 - S^3 + S^4.

The programs for A291247, there is no canonical definition to state claims against.
-/

/-! ## A291247.P9382853607623001405

`A100196(A166012(n)*A291728(n))`
-/

namespace A291247.P9382853607623001405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A166012 n * A291728 n).toNat

end

end A291247.P9382853607623001405

/-! ## A291247.P15429934345246188786

`A108549(A103924(n))`
-/

namespace A291247.P15429934345246188786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108549 (A103924 n).toNat

end

end A291247.P15429934345246188786

/-! ## A291247.P4001997735760925039

`A300154(A150802(n))`
-/

namespace A291247.P4001997735760925039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300154 (A150802 n).toNat

end

end A291247.P4001997735760925039

/-!
# A291248: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - S^2 - S^3 - S^4 + S^5.

The programs for A291248, there is no canonical definition to state claims against.
-/

/-! ## A291248.P18097805438645289569

`A067086(A148824(n+1))`
-/

namespace A291248.P18097805438645289569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A148824 (n + 1)).toNat

end

end A291248.P18097805438645289569

/-! ## A291248.P9327081279222631734

`A096029(A389439(n+1))`
-/

namespace A291248.P9327081279222631734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096029 (A389439 (n + 1)).toNat

end

end A291248.P9327081279222631734

/-! ## A291248.P11552639160227288542

`A385652(A150314(n+1))`
-/

namespace A291248.P11552639160227288542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385652 (A150314 (n + 1)).toNat

end

end A291248.P11552639160227288542

/-!
# A291249: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - S^2 - S^3 + S^4 + S^5.

The programs for A291249, there is no canonical definition to state claims against.
-/

/-! ## A291249.P13891004153755456462

`∑[A091326(n+2)-A066724(n+1)]`
-/

namespace A291249.P13891004153755456462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091326 (n + 2) - A066724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291249.P13891004153755456462

/-! ## A291249.P13029884738192736141

`A322850(A020695(n))+A129988(n)`
-/

namespace A291249.P13029884738192736141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322850 (A020695 n).toNat + A129988 n

end

end A291249.P13029884738192736141

/-! ## A291249.P304027588184075583

`A115217(n)-A179510(A000219(n))`
-/

namespace A291249.P304027588184075583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115217 n - A179510 (A000219 n).toNat

end

end A291249.P304027588184075583

/-! ## A291249.P1756393273442155717

`xor(A018004(n), A037832(A272687(n)))`
-/

namespace A291249.P1756393273442155717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018004 n) (A037832 (A272687 n).toNat)

end

end A291249.P1756393273442155717

/-!
# A291250: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - 2 S^2 + 2 S^3.

The programs for A291250, the canonical program `A291250.P4356664726592613925` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291250 has offset 0).

The definition of A291250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291250.P4356664726592613925

`2*A048788(n+1)-∑[A212804(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291250

/-- `2*A048788(n+1)-∑[A212804(n)]` -/
def P4356664726592613925.Spec : Prop :=
  ∀ n, P4356664726592613925.a n = A291250 n

theorem P4356664726592613925.correct : P4356664726592613925.Spec := by
  intro n
  simp only [A291250]

end A291250

/-! ## A291250.P15758976826697671765

`2*A048788(n+1)-A000045(n+1)`
-/

namespace A291250.P15758976826697671765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048788 (n + 1) - A000045 (n + 1)

end

end A291250.P15758976826697671765

namespace A291250

/-- `2*A048788(n+1)-A000045(n+1)` -/
def P15758976826697671765.Spec : Prop :=
  ∀ n, P15758976826697671765.a n = A291250 n

end A291250

/-! ## A291250.P1698592482999697716

`2*A048788(n+1)-A037027(∑[n])`
-/

namespace A291250.P1698592482999697716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048788 (n + 1) - A037027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291250.P1698592482999697716

namespace A291250

/-- `2*A048788(n+1)-A037027(∑[n])` -/
def P1698592482999697716.Spec : Prop :=
  ∀ n, P1698592482999697716.a n = A291250 n

end A291250

/-! ## A291250.P16650671642519441218

`2*A048788(n+1)-A067330(A000217(n))`
-/

namespace A291250.P16650671642519441218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048788 (n + 1) - A067330 (A000217 n).toNat

end

end A291250.P16650671642519441218

namespace A291250

/-- `2*A048788(n+1)-A067330(A000217(n))` -/
def P16650671642519441218.Spec : Prop :=
  ∀ n, P16650671642519441218.a n = A291250 n

end A291250

/-! ## A291250.P15771623678726011218

`2*A048788(n+1)-A067418(A000096(n))`
-/

namespace A291250.P15771623678726011218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048788 (n + 1) - A067418 (A000096 n).toNat

end

end A291250.P15771623678726011218

namespace A291250

/-- `2*A048788(n+1)-A067418(A000096(n))` -/
def P15771623678726011218.Spec : Prop :=
  ∀ n, P15771623678726011218.a n = A291250 n

end A291250

/-!
# A291251: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - 3 S + 2 S^3.

The programs for A291251, the canonical program `A291251.P7781223799102278389` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291251 has offset 0).

The definition of A291251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291251.P7781223799102278389

`6*a(n-2)-2*a(n-3)-6*a(n-4)+a(n-6)` with `a(0)=0, a(1)=3, a(2)=-2, a(3)=15, a(4)=-18, a(5)=76`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291251

/-- `6*a(n-2)-2*a(n-3)-6*a(n-4)+a(n-6)` -/
def P7781223799102278389.Spec : Prop :=
  ∀ n, P7781223799102278389.a n = A291251 n

theorem P7781223799102278389.correct : P7781223799102278389.Spec := by
  intro n
  simp only [A291251]

end A291251

/-!
# A291253: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - S - S^2)^2.

The programs for A291253, there is no canonical definition to state claims against.
-/

/-! ## A291253.P12615509424877814794

`A038357(n+3)+Δ[A097550(n)]`
-/

namespace A291253.P12615509424877814794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038357 (n + 3) + (f1 (n + 1) - f1 n)

end

end A291253.P12615509424877814794

/-!
# A291254: p-INVERT of (0,1,0,1,0,1, ...), where p(S) = (1 - 2 S - S^2)^2.

The programs for A291254, there is no canonical definition to state claims against.
-/

/-! ## A291254.P5547829489578815474

`A360925(A083323(n+1))`
-/

namespace A291254.P5547829489578815474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360925 (A083323 (n + 1)).toNat

end

end A291254.P5547829489578815474

/-!
# A291255: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - S - 2 S^2)^2.

The programs for A291255, there is no canonical definition to state claims against.
-/

/-! ## A291255.P7446327448968252815

`∑[A327473(A097164(n))]`
-/

namespace A291255.P7446327448968252815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (A097164 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291255.P7446327448968252815

/-!
# A291257: a(n) = (1/2)*A291228(n).

The programs for A291257, the canonical program `A291257.P3470753531209845235` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291257 has offset 0).

The definition of A291257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291257.P3470753531209845235

`2*a(n-1)+4*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=28`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291257

/-- `2*a(n-1)+4*a(n-2)-2*a(n-3)-a(n-4)` -/
def P3470753531209845235.Spec : Prop :=
  ∀ n, P3470753531209845235.a n = A291257 n

theorem P3470753531209845235.correct : P3470753531209845235.Spec := by
  intro n
  simp only [A291257]

end A291257

/-! ## A291257.P4269681480684774991

`1/2*A291228(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291257.P4269681480684774991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A291228 n : ℚ)

end

end A291257.P4269681480684774991

namespace A291257

/-- `1/2*A291228(n)` -/
def P4269681480684774991.Spec : Prop :=
  ∀ n, P4269681480684774991.a n = (A291257 n : ℚ)

end A291257

/-! ## A291257.P7104351013314639945

`A291228(n)/2`
-/

namespace A291257.P7104351013314639945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291228 n : ℚ) / 2

end

end A291257.P7104351013314639945

namespace A291257

/-- `A291228(n)/2` -/
def P7104351013314639945.Spec : Prop :=
  ∀ n, P7104351013314639945.a n = (A291257 n : ℚ)

end A291257

/-! ## A291257.P6866406695284317082

`record[ratio[A291228(A142150(n))]]`
-/

namespace A291257.P6866406695284317082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291228 (A142150 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291257.P6866406695284317082

namespace A291257

/-- `record[ratio[A291228(A142150(n))]]` -/
def P6866406695284317082.Spec : Prop :=
  ∀ n, P6866406695284317082.a n = (A291257 n : ℚ)

end A291257

/-! ## A291257.P16579497324804037141

`record[ratio[A291228(A175676(n+1))]]`
-/

namespace A291257.P16579497324804037141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291228 (A175676 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291257.P16579497324804037141

namespace A291257

/-- `record[ratio[A291228(A175676(n+1))]]` -/
def P16579497324804037141.Spec : Prop :=
  ∀ n, P16579497324804037141.a n = (A291257 n : ℚ)

end A291257

/-!
# A291258: a(n) is the smallest number k such that sigma(k) - phi(k) = n*k, or 0 if no such k exists.

The programs for A291258, there is no canonical definition to state claims against.
-/

/-! ## A291258.P1809983105276924628

`A055681(floor(∑[2^n/3])+1)`
-/

namespace A291258.P1809983105276924628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055681 (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1).toNat

end

end A291258.P1809983105276924628

/-!
# A291259: Minimum number of points of the square lattice falling strictly inside a circle of radius n.

The programs for A291259, there is no canonical definition to state claims against.
-/

/-! ## A291259.P17205289608405126941

`A051132(n)-A275855(A338614(n))`
-/

namespace A291259.P17205289608405126941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 n - A275855 (A338614 n).toNat

end

end A291259.P17205289608405126941

/-! ## A291259.P12811657963488819768

`A053456(2*n)-A275855(A338614(n))`
-/

namespace A291259.P12811657963488819768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (2 * n) - A275855 (A338614 n).toNat

end

end A291259.P12811657963488819768

/-! ## A291259.P4500816016682221313

`A051132(n)-A011731(A008304(2*n+5))`
-/

namespace A291259.P4500816016682221313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 n - A011731 (A008304 (2 * n + 5)).toNat

end

end A291259.P4500816016682221313

/-! ## A291259.P5413240611803397236

`A000328(n)-A004018(n²)-A275855(A338614(n))`
-/

namespace A291259.P5413240611803397236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n - A004018 (n ^ 2) - A275855 (A338614 n).toNat

end

end A291259.P5413240611803397236

/-! ## A291259.P5064274071065112896

`A000328(n+1)-A047077(n)-A275855(A338614(n))`
-/

namespace A291259.P5064274071065112896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 (n + 1) - A047077 n - A275855 (A338614 n).toNat

end

end A291259.P5064274071065112896

/-!
# A291260: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of continued fraction 1/(1 - 2^k*x/(1 - 4^k*x/(1 - 6^k*x/(1 - 8^k*x/(1 - 10^k*x/(1 - ...)))))).

The programs for A291260, there is no canonical definition to state claims against.
-/

/-! ## A291260.P9377035484956934438

`A117401(n)*A290569(n)`
-/

namespace A291260.P9377035484956934438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n * A290569 n

end

end A291260.P9377035484956934438

/-! ## A291260.P14740462541496545380

`sqrt(A118185(n))*A290569(n)`
-/

namespace A291260.P14740462541496545380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118185 n : ℝ) * (A290569 n : ℝ)

end

end A291260.P14740462541496545380

/-! ## A291260.P12718675726329788449

`A000079(A004247(n))*A290569(n)`
-/

namespace A291260.P12718675726329788449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004247 n).toNat * A290569 n

end

end A291260.P12718675726329788449

/-! ## A291260.P11256634291194186301

`lcm(A117401(A028310(n)), A290569(n))`
-/

namespace A291260.P11256634291194186301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117401 (A028310 n).toNat) (A290569 n)

end

end A291260.P11256634291194186301

/-! ## A291260.P16493147693781522016

`lcm(A117401(n), A290569(A254667(n)))`
-/

namespace A291260.P16493147693781522016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117401 n) (A290569 (A254667 n).toNat)

end

end A291260.P16493147693781522016

/-!
# A291264: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - 2 S)^2.

The programs for A291264, the canonical program `A291264.P7916573706240737776` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291264 has offset 0).

The definition of A291264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291264.P7916573706240737776

`4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=12, a(2)=36, a(3)=104`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291264

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` -/
def P7916573706240737776.Spec : Prop :=
  ∀ n, P7916573706240737776.a n = A291264 n

theorem P7916573706240737776.correct : P7916573706240737776.Spec := by
  intro n
  simp only [A291264]

end A291264

/-! ## A291264.P4427654108981462491

`4*A054447(n)`
-/

namespace A291264.P4427654108981462491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A054447 n

end

end A291264.P4427654108981462491

namespace A291264

/-- `4*A054447(n)` -/
def P4427654108981462491.Spec : Prop :=
  ∀ n, P4427654108981462491.a n = A291264 n

end A291264

/-! ## A291264.P11443741479003280318

`Δ[A088210(n)]`
-/

namespace A291264.P11443741479003280318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291264.P11443741479003280318

namespace A291264

/-- `Δ[A088210(n)]` -/
def P11443741479003280318.Spec : Prop :=
  ∀ n, P11443741479003280318.a n = A291264 n

end A291264

/-! ## A291264.P1442414787617399176

`A268744(n+1)+A093967(n)`
-/

namespace A291264.P1442414787617399176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268744 (n + 1) + A093967 n

end

end A291264.P1442414787617399176

namespace A291264

/-- `A268744(n+1)+A093967(n)` -/
def P1442414787617399176.Spec : Prop :=
  ∀ n, P1442414787617399176.a n = A291264 n

end A291264

/-! ## A291264.P4439701947094500023

`A088210(n+1)-A088210(n)`
-/

namespace A291264.P4439701947094500023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088210 (n + 1) - A088210 n

end

end A291264.P4439701947094500023

namespace A291264

/-- `A088210(n+1)-A088210(n)` -/
def P4439701947094500023.Spec : Prop :=
  ∀ n, P4439701947094500023.a n = A291264 n

end A291264

/-! ## A291264.P10906004347114252747

`A119915(n+2)-A119915(n)`
-/

namespace A291264.P10906004347114252747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (n + 2) - A119915 n

end

end A291264.P10906004347114252747

namespace A291264

/-- `A119915(n+2)-A119915(n)` -/
def P10906004347114252747.Spec : Prop :=
  ∀ n, P10906004347114252747.a n = A291264 n

end A291264

/-! ## A291264.P16999760844824985755

`(A292400(n)-A000129(n))*2`
-/

namespace A291264.P16999760844824985755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A292400 n - A000129 n) * 2

end

end A291264.P16999760844824985755

namespace A291264

/-- `(A292400(n)-A000129(n))*2` -/
def P16999760844824985755.Spec : Prop :=
  ∀ n, P16999760844824985755.a n = A291264 n

end A291264

/-! ## A291264.P7295131077422912407

`4*(A026937(n)-A006645(n))`
-/

namespace A291264.P7295131077422912407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A026937 n - A006645 n)

end

end A291264.P7295131077422912407

namespace A291264

/-- `4*(A026937(n)-A006645(n))` -/
def P7295131077422912407.Spec : Prop :=
  ∀ n, P7295131077422912407.a n = A291264 n

end A291264

/-! ## A291264.P8878297081683889045

`Δ[A093967(n+1)+A000129(n)]`
-/

namespace A291264.P8878297081683889045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093967 (n + 1) + A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291264.P8878297081683889045

namespace A291264

/-- `Δ[A093967(n+1)+A000129(n)]` -/
def P8878297081683889045.Spec : Prop :=
  ∀ n, P8878297081683889045.a n = A291264 n

end A291264

/-! ## A291264.P11856154944150015981

`A331321(n+1)+A119915(n+1)`
-/

namespace A291264.P11856154944150015981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331321 (n + 1) + A119915 (n + 1)

end

end A291264.P11856154944150015981

namespace A291264

/-- `A331321(n+1)+A119915(n+1)` -/
def P11856154944150015981.Spec : Prop :=
  ∀ n, P11856154944150015981.a n = A291264 n

end A291264

/-! ## A291264.P2882772683260928996

`4*(Δ[A006645(n+1)]-A006645(n))`
-/

namespace A291264.P2882772683260928996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n - A006645 n)

end

end A291264.P2882772683260928996

namespace A291264

/-- `4*(Δ[A006645(n+1)]-A006645(n))` -/
def P2882772683260928996.Spec : Prop :=
  ∀ n, P2882772683260928996.a n = A291264 n

end A291264

/-! ## A291264.P650200789377293968

`2*(A119915(n+1)+A000129(n+1))`
-/

namespace A291264.P650200789377293968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A119915 (n + 1) + A000129 (n + 1))

end

end A291264.P650200789377293968

namespace A291264

/-- `2*(A119915(n+1)+A000129(n+1))` -/
def P650200789377293968.Spec : Prop :=
  ∀ n, P650200789377293968.a n = A291264 n

end A291264

/-! ## A291264.P17057275200396792566

`A052542(n+1)+2*A119915(n+1)`
-/

namespace A291264.P17057275200396792566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) + 2 * A119915 (n + 1)

end

end A291264.P17057275200396792566

namespace A291264

/-- `A052542(n+1)+2*A119915(n+1)` -/
def P17057275200396792566.Spec : Prop :=
  ∀ n, P17057275200396792566.a n = A291264 n

end A291264

/-! ## A291264.P17894108975545804518

`2*A331321(n+1)-A052542(n+1)`
-/

namespace A291264.P17894108975545804518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331321 (n + 1) - A052542 (n + 1)

end

end A291264.P17894108975545804518

namespace A291264

/-- `2*A331321(n+1)-A052542(n+1)` -/
def P17894108975545804518.Spec : Prop :=
  ∀ n, P17894108975545804518.a n = A291264 n

end A291264

/-! ## A291264.P2042781653724849532

`2*(A331321(n+1)-A215928(n+1))`
-/

namespace A291264.P2042781653724849532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A331321 (n + 1) - A215928 (n + 1))

end

end A291264.P2042781653724849532

namespace A291264

/-- `2*(A331321(n+1)-A215928(n+1))` -/
def P2042781653724849532.Spec : Prop :=
  ∀ n, P2042781653724849532.a n = A291264 n

end A291264

/-! ## A291264.P367869769066299842

`A048654(n+1)+n*A001333(n+1)`
-/

namespace A291264.P367869769066299842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (n + 1) + (n : ℤ) * A001333 (n + 1)

end

end A291264.P367869769066299842

namespace A291264

/-- `A048654(n+1)+n*A001333(n+1)` -/
def P367869769066299842.Spec : Prop :=
  ∀ n, P367869769066299842.a n = A291264 n

end A291264

/-! ## A291264.P14448723489126423991

`Δ[A000129(n)+(n+1)*A000129(n+1)]`
-/

namespace A291264.P14448723489126423991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (n + 1 : ℤ) * A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291264.P14448723489126423991

namespace A291264

/-- `Δ[A000129(n)+(n+1)*A000129(n+1)]` -/
def P14448723489126423991.Spec : Prop :=
  ∀ n, P14448723489126423991.a n = A291264 n

end A291264

/-! ## A291264.P5654728014530809461

`A052542(n+1)+A261056(n)-A006645(n)`
-/

namespace A291264.P5654728014530809461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) + (A261056 n - A006645 n)

end

end A291264.P5654728014530809461

namespace A291264

/-- `A052542(n+1)+A261056(n)-A006645(n)` -/
def P5654728014530809461.Spec : Prop :=
  ∀ n, P5654728014530809461.a n = A291264 n

end A291264

/-! ## A291264.P7734298152268266025

`4*A054448(∑[n])`
-/

namespace A291264.P7734298152268266025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A054448 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291264.P7734298152268266025

namespace A291264

/-- `4*A054448(∑[n])` -/
def P7734298152268266025.Spec : Prop :=
  ∀ n, P7734298152268266025.a n = A291264 n

end A291264

/-!
# A291265: a(n) = (1/3)*A291232(n).

The programs for A291265, the canonical program `A291265.P16591048023817614787` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291265 has offset 0).

The definition of A291265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291265.P16591048023817614787

`6*a(n-1)-7*a(n-2)-6*a(n-3)-a(n-4)` with `a(0)=2, a(1)=9, a(2)=38, a(3)=153`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291265

/-- `6*a(n-1)-7*a(n-2)-6*a(n-3)-a(n-4)` -/
def P16591048023817614787.Spec : Prop :=
  ∀ n, P16591048023817614787.a n = A291265 n

theorem P16591048023817614787.correct : P16591048023817614787.Spec := by
  intro n
  simp only [A291265]

end A291265

/-! ## A291265.P5958732068204085574

`1/3*A291232(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291265.P5958732068204085574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A291232 n : ℚ)

end

end A291265.P5958732068204085574

namespace A291265

/-- `1/3*A291232(n)` -/
def P5958732068204085574.Spec : Prop :=
  ∀ n, P5958732068204085574.a n = (A291265 n : ℚ)

end A291265

/-! ## A291265.P10752684063416458652

`A291232(n)/3`
-/

namespace A291265.P10752684063416458652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291232 n : ℚ) / 3

end

end A291265.P10752684063416458652

namespace A291265

/-- `A291232(n)/3` -/
def P10752684063416458652.Spec : Prop :=
  ∀ n, P10752684063416458652.a n = (A291265 n : ℚ)

end A291265

/-!
# A291266: Numbers that contain at least 3 identical digits.

The programs for A291266, there is no canonical definition to state claims against.
-/

/-! ## A291266.P10230798709882098697

`lt[21, A332550(n)]`
-/

namespace A291266.P10230798709882098697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A291266.P10230798709882098697

/-! ## A291266.P14535901848815965782

`lt[2, A054055(A139337(n))]`
-/

namespace A291266.P14535901848815965782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A291266.P14535901848815965782

/-! ## A291266.P8686781434979370100

`eq[A000034(A170898(n)), A100910(n)]`
-/

namespace A291266.P8686781434979370100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A170898 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291266.P8686781434979370100

/-! ## A291266.P2212049569353580541

`A062279(A033284(n+1))`
-/

namespace A291266.P2212049569353580541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 (A033284 (n + 1)).toNat

end

end A291266.P2212049569353580541

/-! ## A291266.P5828247756545993372

`A033284(A062399(n+1))`
-/

namespace A291266.P5828247756545993372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033284 (A062399 (n + 1)).toNat

end

end A291266.P5828247756545993372

/-!
# A291267: The arithmetic function v_2(n,3).

The programs for A291267, there is no canonical definition to state claims against.
-/

/-! ## A291267.P17569723453061539631

`A291270(2*(n+2))/2`
-/

namespace A291267.P17569723453061539631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291270 (2 * (n + 2)) : ℚ) / 2

end

end A291267.P17569723453061539631

/-! ## A291267.P2844300835210398177

`A004525(A291270(2*(n+2)))`
-/

namespace A291267.P2844300835210398177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A291270 (2 * (n + 2))).toNat

end

end A291267.P2844300835210398177

/-! ## A291267.P2544846228334143095

`A004526(A291270(n+4+n))`
-/

namespace A291267.P2544846228334143095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A291270 (n + 4 + n)).toNat

end

end A291267.P2544846228334143095

/-! ## A291267.P17191358611840596071

`A028242(A291270(2*(n+2))+1)`
-/

namespace A291267.P17191358611840596071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A291270 (2 * (n + 2)) + 1).toNat

end

end A291267.P17191358611840596071

/-! ## A291267.P7041933527281712683

`A001281(A291270(Δ[A028387(n)]))`
-/

namespace A291267.P7041933527281712683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A291270 (f1 (n + 1) - f1 n).toNat).toNat

end

end A291267.P7041933527281712683

/-! ## A291267.P16167065173185743202

`A001281(A291270(2*(n+1))+Δ[A291270(2*(n+1))])`
-/

namespace A291267.P16167065173185743202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291270 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A291270 (2 * (n + 1)) + (f1 (n + 1) - f1 n)).toNat

end

end A291267.P16167065173185743202

/-!
# A291268: The arithmetic function v_3(n,2).

The programs for A291268, the canonical program `A291268.P11967341731746537357` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291268 has offset 2).

The definition of A291268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291268.P11967341731746537357

`(n+2+gcd(n+2, 6)-2*gcd(n+2, 3))/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291268

/-- `(n+2+gcd(n+2, 6)-2*gcd(n+2, 3))/2` -/
def P11967341731746537357.Spec : Prop :=
  ∀ n, P11967341731746537357.a n = (A291268 (n + 2) : ℚ)

end A291268

/-! ## A291268.P18358886337120764549

`∑[log2(gcd(2, n))]-char[6*n+1]`
-/

namespace A291268.P18358886337120764549
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)

end

end A291268.P18358886337120764549

namespace A291268

/-- `∑[log2(gcd(2, n))]-char[6*n+1]` -/
def P18358886337120764549.Spec : Prop :=
  ∀ n, P18358886337120764549.a n = (A291268 (n + 2) : ℝ)

end A291268

/-! ## A291268.P11146170495861123961

`∑[char[2*n]]-char[6*n+1]`
-/

namespace A291268.P11146170495861123961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A291268.P11146170495861123961

namespace A291268

/-- `∑[char[2*n]]-char[6*n+1]` -/
def P11146170495861123961.Spec : Prop :=
  ∀ n, P11146170495861123961.a n = A291268 (n + 2)

end A291268

/-! ## A291268.P16945990573202164131

`floor(∑[2-a(n-3)]/2)` with `a(0)=2, a(1)=-1, a(2)=3`
-/

namespace A291268.P16945990573202164131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 3] fun n f1 =>
  2 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A291268.P16945990573202164131

namespace A291268

/-- `floor(∑[2-a(n-3)]/2)` -/
def P16945990573202164131.Spec : Prop :=
  ∀ n, P16945990573202164131.a n = A291268 (n + 2)

end A291268

/-! ## A291268.P7540510631918116519

`(n+2-n%2*gcd(3, 1-n))/2`
-/

namespace A291268.P7540510631918116519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - ((n % 2 * Int.gcd 3 (1 - (n : ℤ)) : ℕ) : ℤ) : ℚ) / 2

end

end A291268.P7540510631918116519

namespace A291268

/-- `(n+2-n%2*gcd(3, 1-n))/2` -/
def P7540510631918116519.Spec : Prop :=
  ∀ n, P7540510631918116519.a n = (A291268 (n + 2) : ℚ)

end A291268

/-! ## A291268.P2855169652494804918

`gcd(or(1, n)²-1, ∑[n+1])%(n+2)`
-/

namespace A291268.P2855169652494804918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((Nat.lor 1 n ^ 2 : ℤ) - 1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) % (n + 2)

end

end A291268.P2855169652494804918

namespace A291268

/-- `gcd(or(1, n)²-1, ∑[n+1])%(n+2)` -/
def P2855169652494804918.Spec : Prop :=
  ∀ n, (P2855169652494804918.a n : ℤ) = A291268 (n + 2)

end A291268

/-! ## A291268.P13005400948072787341

`A106251(A120325(n)+n)`
-/

namespace A291268.P13005400948072787341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106251 (A120325 n + (n : ℤ)).toNat

end

end A291268.P13005400948072787341

namespace A291268

/-- `A106251(A120325(n)+n)` -/
def P13005400948072787341.Spec : Prop :=
  ∀ n, P13005400948072787341.a n = A291268 (n + 2)

end A291268

/-! ## A291268.P9054489465994030529

`A105637(A049347(A105637(n))+n)`
-/

namespace A291268.P9054489465994030529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105637 (A049347 (A105637 n).toNat + (n : ℤ)).toNat

end

end A291268.P9054489465994030529

namespace A291268

/-- `A105637(A049347(A105637(n))+n)` -/
def P9054489465994030529.Spec : Prop :=
  ∀ n, P9054489465994030529.a n = A291268 (n + 2)

end A291268

/-! ## A291268.P18086669322302069713

`∑[∑[A131556(n+1)]/A131556(n+1)]`
-/

namespace A291268.P18086669322302069713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131556 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A131556 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291268.P18086669322302069713

namespace A291268

/-- `∑[∑[A131556(n+1)]/A131556(n+1)]` -/
def P18086669322302069713.Spec : Prop :=
  ∀ n, P18086669322302069713.a n = (A291268 (n + 2) : ℚ)

end A291268

/-! ## A291268.P18393049354121368393

`A300068(xor(1, n+2))`
-/

namespace A291268.P18393049354121368393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (Nat.xor 1 (n + 2))

end

end A291268.P18393049354121368393

namespace A291268

/-- `A300068(xor(1, n+2))` -/
def P18393049354121368393.Spec : Prop :=
  ∀ n, P18393049354121368393.a n = A291268 (n + 2)

end A291268

/-! ## A291268.P376832179561951860

`A300068(A065190(n+2))`
-/

namespace A291268.P376832179561951860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (A065190 (n + 2)).toNat

end

end A291268.P376832179561951860

namespace A291268

/-- `A300068(A065190(n+2))` -/
def P376832179561951860.Spec : Prop :=
  ∀ n, P376832179561951860.a n = A291268 (n + 2)

end A291268

/-! ## A291268.P1864664630258474337

`A008611(A106251(A106251(2*n))+n)`
-/

namespace A291268.P1864664630258474337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A106251 (A106251 (2 * n)).toNat + (n : ℤ)).toNat

end

end A291268.P1864664630258474337

namespace A291268

/-- `A008611(A106251(A106251(2*n))+n)` -/
def P1864664630258474337.Spec : Prop :=
  ∀ n, P1864664630258474337.a n = A291268 (n + 2)

end A291268

/-! ## A291268.P12074126899568461434

`A106251(A106251(A106249(2*n)+n))`
-/

namespace A291268.P12074126899568461434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106251 (A106251 (A106249 (2 * n) + (n : ℤ)).toNat).toNat

end

end A291268.P12074126899568461434

namespace A291268

/-- `A106251(A106251(A106249(2*n)+n))` -/
def P12074126899568461434.Spec : Prop :=
  ∀ n, P12074126899568461434.a n = A291268 (n + 2)

end A291268

/-! ## A291268.P4446866851135504519

`A106251(A285869(A106251(2*n)+n+1))`
-/

namespace A291268.P4446866851135504519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106251 (A285869 (A106251 (2 * n) + (n + 1 : ℤ)).toNat).toNat

end

end A291268.P4446866851135504519

namespace A291268

/-- `A106251(A285869(A106251(2*n)+n+1))` -/
def P4446866851135504519.Spec : Prop :=
  ∀ n, P4446866851135504519.a n = A291268 (n + 2)

end A291268

/-! ## A291268.P4791023233515971007

`A106251(A053438(n+1)-A106251(2*n+1))`
-/

namespace A291268.P4791023233515971007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106251 (A053438 (n + 1) - A106251 (2 * n + 1)).toNat

end

end A291268.P4791023233515971007

namespace A291268

/-- `A106251(A053438(n+1)-A106251(2*n+1))` -/
def P4791023233515971007.Spec : Prop :=
  ∀ n, P4791023233515971007.a n = A291268 (n + 2)

end A291268

/-! ## A291268.P8555905536788257012

`A106251(A106251(2*n)-A110514(2*n+1))`
-/

namespace A291268.P8555905536788257012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106251 (A106251 (2 * n) - A110514 (2 * n + 1)).toNat

end

end A291268.P8555905536788257012

namespace A291268

/-- `A106251(A106251(2*n)-A110514(2*n+1))` -/
def P8555905536788257012.Spec : Prop :=
  ∀ n, P8555905536788257012.a n = A291268 (n + 2)

end A291268

/-! ## A291268.P6382714256167663815

`A106251(A106251(2*n)+A110514(2*n+1)²)`
-/

namespace A291268.P6382714256167663815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106251 (A106251 (2 * n) + A110514 (2 * n + 1) ^ 2).toNat

end

end A291268.P6382714256167663815

namespace A291268

/-- `A106251(A106251(2*n)+A110514(2*n+1)²)` -/
def P6382714256167663815.Spec : Prop :=
  ∀ n, P6382714256167663815.a n = A291268 (n + 2)

end A291268

/-!
# A291269: Numbers that contain exactly 2 pairs of identical digits.

The programs for A291269, there is no canonical definition to state claims against.
-/

/-! ## A291269.P10645444181113035590

`eq[4, A270594(A139337(n))]`
-/

namespace A291269.P10645444181113035590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270594 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291269.P10645444181113035590

/-! ## A291269.P546911970980200138

`eq[A107846(n), A137564(A139337(n))]`
-/

namespace A291269.P546911970980200138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291269.P546911970980200138

/-! ## A291269.P14834890909691731741

`eq[A001316(A332550(n)), A107846(n)]`
-/

namespace A291269.P14834890909691731741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A332550 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291269.P14834890909691731741

/-!
# A291270: The arithmetic function v_4(n,3).

The programs for A291270, there is no canonical definition to state claims against.
-/

/-! ## A291270.P12378069838910473195

`and(-A040001(n), A291267(n+2))`
-/

namespace A291270.P12378069838910473195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A040001 n) (A291267 (n + 2))

end

end A291270.P12378069838910473195

/-! ## A291270.P6827411035053832425

`and(-A134451(n), A291267(n+2))`
-/

namespace A291270.P6827411035053832425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A134451 n) (A291267 (n + 2))

end

end A291270.P6827411035053832425

/-! ## A291270.P18441973286619310254

`and(A000035(n)-2, A291267(n+2))`
-/

namespace A291270.P18441973286619310254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000035 n - 2) (A291267 (n + 2))

end

end A291270.P18441973286619310254

/-! ## A291270.P11323468387050211970

`and(A066880(n+1), A291267(n+2))`
-/

namespace A291270.P11323468387050211970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066880 (n + 1)) (A291267 (n + 2))

end

end A291270.P11323468387050211970

/-! ## A291270.P791258558020203824

`and(A075427(n+1), A291267(n+2))`
-/

namespace A291270.P791258558020203824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075427 (n + 1)) (A291267 (n + 2))

end

end A291270.P791258558020203824

/-! ## A291270.P7942403588884274780

`and(A140253(n), A291267(n+2))`
-/

namespace A291270.P7942403588884274780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140253 n) (A291267 (n + 2))

end

end A291270.P7942403588884274780

/-! ## A291270.P8309532318629907114

`and(A281500(n), A291267(n+2))`
-/

namespace A291270.P8309532318629907114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281500 n) (A291267 (n + 2))

end

end A291270.P8309532318629907114

/-! ## A291270.P15412010207435612520

`and(A291267(n+2), A322417(n))`
-/

namespace A291270.P15412010207435612520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A291267 (n + 2)) (A322417 n)

end

end A291270.P15412010207435612520

/-!
# A291271: The arithmetic function v_4(n,2).

The programs for A291271, the canonical program `A291271.P2466136297381718599` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291271 has offset 2).

The definition of A291271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291271.P10665666638454494108

`(n+2-gcd(n+2, 4))/2`
-/

namespace A291271.P10665666638454494108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - (Nat.gcd (n + 2) 4 : ℤ) : ℚ) / 2

end

end A291271.P10665666638454494108

namespace A291271

/-- `(n+2-gcd(n+2, 4))/2` -/
def P10665666638454494108.Spec : Prop :=
  ∀ n, P10665666638454494108.a n = (A291271 (n + 2) : ℚ)

end A291271

/-! ## A291271.P2466136297381718599

`A291330(n+2)/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291271

/-- `A291330(n+2)/2` -/
def P2466136297381718599.Spec : Prop :=
  ∀ n, P2466136297381718599.a n = (A291271 (n + 2) : ℚ)

end A291271

/-! ## A291271.P6286353662277177800

`and(-gcd(2, n), ceil(n/2))`
-/

namespace A291271.P6286353662277177800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(Nat.gcd 2 n : ℤ)) ⌈(n : ℚ) / 2⌉

end

end A291271.P6286353662277177800

namespace A291271

/-- `and(-gcd(2, n), ceil(n/2))` -/
def P6286353662277177800.Spec : Prop :=
  ∀ n, P6286353662277177800.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P7688032025482633600

`and(or(n, -2), round(n/2))`
-/

namespace A291271.P7688032025482633600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lor (n : ℤ) (-2)) (SequenceMachineLib.roundAway ((n : ℚ) / 2))

end

end A291271.P7688032025482633600

namespace A291271

/-- `and(or(n, -2), round(n/2))` -/
def P7688032025482633600.Spec : Prop :=
  ∀ n, P7688032025482633600.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P2732648401326234822

`a(n-4)+2` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A291271.P2732648401326234822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 2] fun n a =>
  a (n - 4) + 2

end

end A291271.P2732648401326234822

namespace A291271

/-- `a(n-4)+2` -/
def P2732648401326234822.Spec : Prop :=
  ∀ n, (P2732648401326234822.a n : ℤ) = A291271 (n + 2)

end A291271

/-! ## A291271.P2966537064291693563

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A291271.P2966537064291693563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291271.P2966537064291693563

namespace A291271

/-- `∑[floor(a(n-4))]` -/
def P2966537064291693563.Spec : Prop :=
  ∀ n, P2966537064291693563.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P12289901903917204121

`n%2+n-∑[∑[n]%2]`
-/

namespace A291271.P12289901903917204121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + n : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A291271.P12289901903917204121

namespace A291271

/-- `n%2+n-∑[∑[n]%2]` -/
def P12289901903917204121.Spec : Prop :=
  ∀ n, P12289901903917204121.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P6741782466919133454

`xor(1, n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A291271.P6741782466919133454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor 1 ((n : ℤ) - 1) - a (n - 2)

end

end A291271.P6741782466919133454

namespace A291271

/-- `xor(1, n-1)-a(n-2)` -/
def P6741782466919133454.Spec : Prop :=
  ∀ n, P6741782466919133454.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P10391276554979743981

`and(n+1, or(n+2, -4))/2`
-/

namespace A291271.P10391276554979743981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 1 : ℤ) (Int.lor (n + 2 : ℤ) (-4)) : ℚ) / 2

end

end A291271.P10391276554979743981

namespace A291271

/-- `and(n+1, or(n+2, -4))/2` -/
def P10391276554979743981.Spec : Prop :=
  ∀ n, P10391276554979743981.a n = (A291271 (n + 2) : ℚ)

end A291271

/-! ## A291271.P4214685958975116015

`∑[a(a(n-2)²)-(-1)^n]` with `a(0)=0, a(1)=1`
-/

namespace A291271.P4214685958975116015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (f1 (n - 2) ^ 2).toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291271.P4214685958975116015

namespace A291271

/-- `∑[a(a(n-2)²)-(-1)^n]` -/
def P4214685958975116015.Spec : Prop :=
  ∀ n, P4214685958975116015.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P14602742439988297635

`∑[∑[(-1)^∑[n]-a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A291271.P14602742439988297635
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f3 j) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291271.P14602742439988297635

namespace A291271

/-- `∑[∑[(-1)^∑[n]-a(n-1)]]` -/
def P14602742439988297635.Spec : Prop :=
  ∀ n, P14602742439988297635.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P5671711636230426040

`ceil((2*n-gcd(n-2, 2*n))/4)`
-/

namespace A291271.P5671711636230426040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℤ) - (Int.gcd ((n : ℤ) - 2) (2 * n : ℤ) : ℤ) : ℚ) / 4⌉

end

end A291271.P5671711636230426040

namespace A291271

/-- `ceil((2*n-gcd(n-2, 2*n))/4)` -/
def P5671711636230426040.Spec : Prop :=
  ∀ n, P5671711636230426040.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P10693741001580242595

`n-a(n-1)%2-floor(n/2)` with `a(0)=0`
-/

namespace A291271.P10693741001580242595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.tmod (a (n - 1)) 2 - ⌊(n : ℚ) / 2⌋

end

end A291271.P10693741001580242595

namespace A291271

/-- `n-a(n-1)%2-floor(n/2)` -/
def P10693741001580242595.Spec : Prop :=
  ∀ n, P10693741001580242595.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P13703771985609194178

`∑[2-a(n-2)]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A291271.P13703771985609194178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A291271.P13703771985609194178

namespace A291271

/-- `∑[2-a(n-2)]-a(n-1)` -/
def P13703771985609194178.Spec : Prop :=
  ∀ n, P13703771985609194178.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P15385871422657423149

`n-1-a(n-2)-(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A291271.P15385871422657423149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - 1 - a (n - 2) - (-1) ^ n

end

end A291271.P15385871422657423149

namespace A291271

/-- `n-1-a(n-2)-(-1)^n` -/
def P15385871422657423149.Spec : Prop :=
  ∀ n, P15385871422657423149.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P11100189414987245911

`2*and(1, n)-(a(n-2)-(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A291271.P11100189414987245911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * Nat.land 1 n : ℤ) - (a (n - 2) - ((n : ℤ) - 2))

end

end A291271.P11100189414987245911

namespace A291271

/-- `2*and(1, n)-(a(n-2)-(n-2))` -/
def P11100189414987245911.Spec : Prop :=
  ∀ n, P11100189414987245911.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P7570470969749068324

`∑[char[2*n+1]]-char[2*(2*n+1)]`
-/

namespace A291271.P7570470969749068324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A291271.P7570470969749068324

namespace A291271

/-- `∑[char[2*n+1]]-char[2*(2*n+1)]` -/
def P7570470969749068324.Spec : Prop :=
  ∀ n, P7570470969749068324.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P17245686369574478045

`and(n+1, 2*n-and(n+2, n-1))/2`
-/

namespace A291271.P17245686369574478045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 1 : ℤ) ((2 * n : ℤ) - Int.land (n + 2 : ℤ) ((n : ℤ) - 1)) : ℚ) / 2

end

end A291271.P17245686369574478045

namespace A291271

/-- `and(n+1, 2*n-and(n+2, n-1))/2` -/
def P17245686369574478045.Spec : Prop :=
  ∀ n, P17245686369574478045.a n = (A291271 (n + 2) : ℚ)

end A291271

/-! ## A291271.P1510723304572835939

`∑[A000032(2-a(n-1))-2]` with `a(0)=0`
-/

namespace A291271.P1510723304572835939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000032 (2 - f1 (n - 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291271.P1510723304572835939

namespace A291271

/-- `∑[A000032(2-a(n-1))-2]` -/
def P1510723304572835939.Spec : Prop :=
  ∀ n, P1510723304572835939.a n = A291271 (n + 2)

end A291271

/-! ## A291271.P3847546486392509825

`A029578(A186421(n+1))`
-/

namespace A291271.P3847546486392509825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A186421 (n + 1)).toNat

end

end A291271.P3847546486392509825

namespace A291271

/-- `A029578(A186421(n+1))` -/
def P3847546486392509825.Spec : Prop :=
  ∀ n, P3847546486392509825.a n = A291271 (n + 2)

end A291271

/-!
# A291272: The arithmetic function v_5(n,4).

The programs for A291272, there is no canonical definition to state claims against.
-/

/-! ## A291272.P14561002568347224892

`A289436(n+2)+A121373(A144391(n+1))`
-/

namespace A291272.P14561002568347224892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (n + 2) + A121373 (A144391 (n + 1)).toNat

end

end A291272.P14561002568347224892

/-! ## A291272.P16182483952914545069

`A289436(n+2)-A010054(A345923(n+1))`
-/

namespace A291272.P16182483952914545069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (n + 2) - A010054 (A345923 (n + 1)).toNat

end

end A291272.P16182483952914545069

/-! ## A291272.P3474327009234234336

`A289436(n+2)-A010054(A028781(n+1)²)`
-/

namespace A291272.P3474327009234234336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (n + 2) - A010054 (A028781 (n + 1) ^ 2).toNat

end

end A291272.P3474327009234234336

/-! ## A291272.P7749946762509566832

`A289438(A027656(n)+2+n)-A010054(A028781(n+1)²)`
-/

namespace A291272.P7749946762509566832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (A027656 n + 2 + (n : ℤ)).toNat - A010054 (A028781 (n + 1) ^ 2).toNat

end

end A291272.P7749946762509566832

/-! ## A291272.P17015508011748391227

`A289436(n+2)-A080116(A331162(2*(n+2)))`
-/

namespace A291272.P17015508011748391227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (n + 2) - A080116 (A331162 (2 * (n + 2))).toNat

end

end A291272.P17015508011748391227

/-!
# A291273: The arithmetic function v_5(n,3).

The programs for A291273, there is no canonical definition to state claims against.
-/

/-! ## A291273.P1575419666758987657

`(floor(n/(n%2+2))+1)%A274076(A000203(n+1))`
-/

namespace A291273.P1575419666758987657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1) (A274076 (A000203 (n + 1)).toNat)

end

end A291273.P1575419666758987657

/-! ## A291273.P3426215860157199897

`A242112(n)*A263243(A006128(n))`
-/

namespace A291273.P3426215860157199897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n * A263243 (A006128 n).toNat

end

end A291273.P3426215860157199897

/-! ## A291273.P9835718851230180048

`A242112(n)*A263243(A207641(n))`
-/

namespace A291273.P9835718851230180048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n * A263243 (A207641 n).toNat

end

end A291273.P9835718851230180048

/-! ## A291273.P9945648628925964468

`(floor(n/(n%2+2))+1)%A002378(A185315(n))`
-/

namespace A291273.P9945648628925964468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1) (A002378 (A185315 n).toNat)

end

end A291273.P9945648628925964468

/-! ## A291273.P13123082890847388376

`floor(2*(n+3)/(5-(-1)^n))*A189022(A255869(2*n))`
-/

namespace A291273.P13123082890847388376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (n + 3) : ℚ) / (5 - (-1) ^ n : ℚ)⌋ * A189022 (A255869 (2 * n)).toNat

end

end A291273.P13123082890847388376

/-!
# A291274: a(n) = [x^n] 1/(1 - n*x/(1 - n*x^2/(1 - n*x^3/(1 - n*x^4/(1 - n*x^5/(1 - ...)))))), a continued fraction.

The programs for A291274, there is no canonical definition to state claims against.
-/

/-! ## A291274.P17050677899308764415

`A286933(∑[4*n])`
-/

namespace A291274.P17050677899308764415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286933 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291274.P17050677899308764415

/-! ## A291274.P3679117532414066598

`or(floor(n/5), A286933(A046092(n)))`
-/

namespace A291274.P3679117532414066598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 5⌋ (A286933 (A046092 n).toNat)

end

end A291274.P3679117532414066598

/-!
# A291275: Primes p such that p does not divide any term of the Apéry-like sequence A005258.

The programs for A291275, there is no canonical definition to state claims against.
-/

/-! ## A291275.P16310086562502959189

`A233346(∑[A232463(n+1)!!])`
-/

namespace A291275.P16310086562502959189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (A232463 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233346 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291275.P16310086562502959189

/-! ## A291275.P11560484311346809094

`A002313(lt[A292287(n), A097756(n+1)])`
-/

namespace A291275.P11560484311346809094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292287 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291275.P11560484311346809094

/-! ## A291275.P10946283027876285428

`p?[A004773(n)*A250662(n)]`
-/

namespace A291275.P10946283027876285428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n * A250662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291275.P10946283027876285428

/-! ## A291275.P18360818359355550190

`p?[record[A164306(A001359(n+1))]]`
-/

namespace A291275.P18360818359355550190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A001359 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291275.P18360818359355550190

/-! ## A291275.P5014996638382307332

`∩[A233346(n+1), A371123(n+1)]`
-/

namespace A291275.P5014996638382307332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291275.P5014996638382307332

/-!
# A291276: Primes p such that p does not divide any term of the Apery-like sequence A002893.

The programs for A291276, there is no canonical definition to state claims against.
-/

/-! ## A291276.P12219490718989293155

`p?[A205018(A100449(n)²)]`
-/

namespace A291276.P12219490718989293155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205018 (A100449 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291276.P12219490718989293155

/-! ## A291276.P10675795039136699234

`p?[eq[4, A000005(A116553(n))]]`
-/

namespace A291276.P10675795039136699234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A116553 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A291276.P10675795039136699234

/-! ## A291276.P10820381041373972316

`record[A223175(A103853(3*(n+1)))]`
-/

namespace A291276.P10820381041373972316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223175 (A103853 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291276.P10820381041373972316

/-!
# A291277: Primes p such that p does not divide any term of the Apery-like sequence A081085.

The programs for A291277, there is no canonical definition to state claims against.
-/

/-! ## A291277.P10499345910410446195

`∩[A000040(n+1), A309581(A018609(n+1))]`
-/

namespace A291277.P10499345910410446195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309581 (A018609 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291277.P10499345910410446195

/-! ## A291277.P10499798081489580283

`∩[A309581(A051037(n+1)), A301899(n+1)]`
-/

namespace A291277.P10499798081489580283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309581 (A051037 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291277.P10499798081489580283

/-! ## A291277.P12281351405396803544

`p?[A223731(n+1)*A291709(n)]`
-/

namespace A291277.P12281351405396803544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1) * A291709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291277.P12281351405396803544

/-! ## A291277.P11747195433122561794

`p?[A223731(n+1)*A326323(n)]`
-/

namespace A291277.P11747195433122561794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1) * A326323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291277.P11747195433122561794

/-!
# A291278: Primes p such that p does not divide any term of the Apery-like sequence A006077.

The programs for A291278, there is no canonical definition to state claims against.
-/

/-! ## A291278.P5616661946148537852

`record[A014963(A000404(A116513(n+1)))]`
-/

namespace A291278.P5616661946148537852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000404 (A116513 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291278.P5616661946148537852

/-! ## A291278.P14301413186539857698

`record[A002313(n+1)%A337023(A145341(n+1))]`
-/

namespace A291278.P14301413186539857698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002313 (n + 1)) (A337023 (A145341 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291278.P14301413186539857698

/-! ## A291278.P1943282010143479811

`record[p?[A103822(A003627(n+1))]]`
-/

namespace A291278.P1943282010143479811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103822 (A003627 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291278.P1943282010143479811

/-! ## A291278.P8823105895318080836

`p?[A008784(n+1)*A137795(n+1)]`
-/

namespace A291278.P8823105895318080836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1) * A137795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291278.P8823105895318080836

/-! ## A291278.P17027142342947093086

`A002313(lt[A351592(n+1), A363455(n+1)])`
-/

namespace A291278.P17027142342947093086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291278.P17027142342947093086

/-!
# A291280: Primes p such that p does not divide any term of the Apery-like sequence A125143.

The programs for A291280, there is no canonical definition to state claims against.
-/

/-! ## A291280.P8941811920115651065

`record[A008683(A094437(n))*A200997(n+1)]`
-/

namespace A291280.P8941811920115651065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A094437 n).toNat * A200997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291280.P8941811920115651065

/-! ## A291280.P16873986360749536045

`p?[∑[A211999(A212038(n+4))]]`
-/

namespace A291280.P16873986360749536045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211999 (A212038 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291280.P16873986360749536045

/-! ## A291280.P1823280875431074755

`p?[∑[A010882(A133961(n+1))]]`
-/

namespace A291280.P1823280875431074755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A133961 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291280.P1823280875431074755

/-! ## A291280.P9732237935142550740

`p?[lt[A279779(n), A279727(n+1)]]`
-/

namespace A291280.P9732237935142550740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279779 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279727 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A291280.P9732237935142550740

/-! ## A291280.P7675917422740718300

`∩[A050103(n+1), A178762(n+1)]`
-/

namespace A291280.P7675917422740718300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291280.P7675917422740718300

/-!
# A291281: Primes p such that p does not divide any term of the Apery-like sequence A229111.

The programs for A291281, there is no canonical definition to state claims against.
-/

/-! ## A291281.P2612787707303174934

`A341786(lt[A319423(n+2), A075652(3*n+2)])`
-/

namespace A291281.P2612787707303174934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319423 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075652 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291281.P2612787707303174934

/-! ## A291281.P11316331763124371451

`p?[∑[A086765(A008279(n))]]`
-/

namespace A291281.P11316331763124371451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086765 (A008279 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291281.P11316331763124371451

/-! ## A291281.P3855472887638487525

`p?[eq[0, A000035(A210239(n))]]`
-/

namespace A291281.P3855472887638487525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A210239 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A291281.P3855472887638487525

/-! ## A291281.P8262243546322618063

`p?[∑[A000120(A050572(n+1))]]`
-/

namespace A291281.P8262243546322618063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A050572 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291281.P8262243546322618063

/-! ## A291281.P4429425073969400034

`p?[A347831(record[A330105(n+1)])]`
-/

namespace A291281.P4429425073969400034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330105 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291281.P4429425073969400034

/-!
# A291282: Primes p such that p does not divide any term of the Apery-like sequence A002895.

The programs for A291282, there is no canonical definition to state claims against.
-/

/-! ## A291282.P9785903695150801850

`p?[∑[A003016(A207717(n+1))]]`
-/

namespace A291282.P9785903695150801850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (A207717 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291282.P9785903695150801850

/-! ## A291282.P751218219122161231

`A000040(lt[1-and(2, n), A213000(n)])`
-/

namespace A291282.P751218219122161231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291282.P751218219122161231

/-! ## A291282.P15574206943508087999

`A000040(lt[A128499(n), A225738(n)])`
-/

namespace A291282.P15574206943508087999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128499 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225738 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291282.P15574206943508087999

/-! ## A291282.P14380797254160241651

`A000040(lt[A009001(n), A216633(n+1)])`
-/

namespace A291282.P14380797254160241651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291282.P14380797254160241651

/-! ## A291282.P9061923572492528027

`A000040(lt[A009001(n), A352663(n+1)])`
-/

namespace A291282.P9061923572492528027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291282.P9061923572492528027

/-!
# A291283: Primes p such that p does not divide any term of the Apery-like sequence A290575.

The programs for A291283, there is no canonical definition to state claims against.
-/

/-! ## A291283.P6407868915255654504

`A060308(∑[∑{e}[A076133(2*(n+2)), #]+1])`
-/

namespace A291283.P6407868915255654504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076133 (2 * (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291283.P6407868915255654504

/-! ## A291283.P16886527378729520894

`p?[n*A215977(A059853(n+2))]`
-/

namespace A291283.P16886527378729520894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A215977 (A059853 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291283.P16886527378729520894

/-! ## A291283.P18272728611243495689

`p?[lt[6, A146970(n+2)]]`
-/

namespace A291283.P18272728611243495689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146970 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A291283.P18272728611243495689

/-! ## A291283.P7996291301316678863

`p?[A350313(A347872(n+1))]`
-/

namespace A291283.P7996291301316678863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350313 (A347872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291283.P7996291301316678863

/-! ## A291283.P3256583666707413336

`p?[lt[3, A349083(A227611(n+4))]]`
-/

namespace A291283.P3256583666707413336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349083 (A227611 (n + 4)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A291283.P3256583666707413336

/-!
# A291284: Primes p such that p does not divide any term of the Apery-like sequence A290576.

The programs for A291284, there is no canonical definition to state claims against.
-/

/-! ## A291284.P13390306168623426996

`p?[A085736(∑[A088529(n+2)])]`
-/

namespace A291284.P13390306168623426996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291284.P13390306168623426996

/-! ## A291284.P3495566412022261804

`p?[∑[A067029(A005710(n))]]`
-/

namespace A291284.P3495566412022261804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A005710 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291284.P3495566412022261804

/-! ## A291284.P14729371392591312011

`A000040(lt[A341351(n+5), A339005(3*n+2)])`
-/

namespace A291284.P14729371392591312011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341351 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339005 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291284.P14729371392591312011

/-! ## A291284.P3607062595599658050

`A383680(n+1)-A010054(A004061(n+1))`
-/

namespace A291284.P3607062595599658050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383680 (n + 1) - A010054 (A004061 (n + 1)).toNat

end

end A291284.P3607062595599658050

/-! ## A291284.P3153171923761170829

`A383680(n+1)-A000007(A297972(n+1))`
-/

namespace A291284.P3153171923761170829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383680 (n + 1) - A000007 (A297972 (n + 1)).toNat

end

end A291284.P3153171923761170829

/-!
# A291285: Expansion of G(x)^4 where G(x) = g.f. for A291096.

The programs for A291285, there is no canonical definition to state claims against.
-/

/-! ## A291285.P5317065917643993695

`A291096(n+1)/3`
-/

namespace A291285.P5317065917643993695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291096 (n + 1) : ℚ) / 3

end

end A291285.P5317065917643993695

/-! ## A291285.P7040635974775443140

`Δ[∑[A291096(n)]/3]`
-/

namespace A291285.P7040635974775443140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291096 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291285.P7040635974775443140

/-! ## A291285.P8427413228506293713

`A000244(n)*A002293(n+1)`
-/

namespace A291285.P8427413228506293713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A002293 (n + 1)

end

end A291285.P8427413228506293713

/-! ## A291285.P18267971743379294181

`A002293(n+1)*A140429(n+1)`
-/

namespace A291285.P18267971743379294181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (n + 1) * A140429 (n + 1)

end

end A291285.P18267971743379294181

/-! ## A291285.P9280459822041300081

`A002293(n+1)*A056449(2*n)`
-/

namespace A291285.P9280459822041300081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (n + 1) * A056449 (2 * n)

end

end A291285.P9280459822041300081

/-! ## A291285.P15218262482989353864

`(2*A003462(n)+1)*A002293(n+1)`
-/

namespace A291285.P15218262482989353864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A003462 n + 1) * A002293 (n + 1)

end

end A291285.P15218262482989353864

/-! ## A291285.P5010740839426566127

`A002293(n+1)*A182522(2*n+1)`
-/

namespace A291285.P5010740839426566127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (n + 1) * A182522 (2 * n + 1)

end

end A291285.P5010740839426566127

/-! ## A291285.P39886442672789772

`A000244(n)*A243663(A000124(n))`
-/

namespace A291285.P39886442672789772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A243663 (A000124 n).toNat

end

end A291285.P39886442672789772

/-! ## A291285.P18016190753397512658

`A002293(n+1)*A036561(A000096(n))`
-/

namespace A291285.P18016190753397512658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (n + 1) * A036561 (A000096 n).toNat

end

end A291285.P18016190753397512658

/-! ## A291285.P10129508034297952833

`A002293(n+1)*A038221(A000217(n))`
-/

namespace A291285.P10129508034297952833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (n + 1) * A038221 (A000217 n).toNat

end

end A291285.P10129508034297952833

/-!
# A291286: a(0)=1, a(1)=2, thereafter a(n) = n*a(n-1)+(n-1)*(n-2)*a(n-2).

The programs for A291286, the canonical program `A291286.P4047501953060391508` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291286 has offset 0).

The definition of A291286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+(n-1)*(n-2)*a(n-2)` (program `A291286.P4047501953060391508`, by `A291286.P4047501953060391508.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291286.P4047501953060391508

`n*a(n-1)+(n-1)*(n-2)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291286

/-- `n*a(n-1)+(n-1)*(n-2)*a(n-2)` -/
def P4047501953060391508.Spec : Prop :=
  ∀ n, P4047501953060391508.a n = A291286 n

theorem P4047501953060391508.correct : P4047501953060391508.Spec := by
  intro n
  simp only [A291286]

end A291286

/-! ## A291286.P8840543497276309643

`A020639(A298033(n))*A244430(n)`
-/

namespace A291286.P8840543497276309643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A298033 n).toNat * A244430 n

end

end A291286.P8840543497276309643

namespace A291286

/-- `A020639(A298033(n))*A244430(n)` -/
def P8840543497276309643.Spec : Prop :=
  ∀ n, P8840543497276309643.a n = A291286 n

end A291286

/-! ## A291286.P2042798196182756421

`A001221(A075813(n+1))*A244430(n)`
-/

namespace A291286.P2042798196182756421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A075813 (n + 1)).toNat * A244430 n

end

end A291286.P2042798196182756421

namespace A291286

/-- `A001221(A075813(n+1))*A244430(n)` -/
def P2042798196182756421.Spec : Prop :=
  ∀ n, P2042798196182756421.a n = A291286 n

end A291286

/-! ## A291286.P3961542121654218269

`A014963(A244421(n))*A244430(n)`
-/

namespace A291286.P3961542121654218269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A244421 n).toNat * A244430 n

end

end A291286.P3961542121654218269

namespace A291286

/-- `A014963(A244421(n))*A244430(n)` -/
def P3961542121654218269.Spec : Prop :=
  ∀ n, P3961542121654218269.a n = A291286 n

end A291286

/-!
# A291287: a(0)=a(1)=1, a(2)=3, thereafter a(n) = n*a(n-1)+(n-1)*(n-2)*a(n-2).

The programs for A291287, the canonical program `A291287.P4175792646995803755` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291287 has offset 0).

The definition of A291287 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+(n-1)*(n-2)*a(n-2)` (program `A291287.P4175792646995803755`, by `A291287.P4175792646995803755.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291287.P4175792646995803755

`n*a(n-1)+(n-1)*(n-2)*a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291287

/-- `n*a(n-1)+(n-1)*(n-2)*a(n-2)` -/
def P4175792646995803755.Spec : Prop :=
  ∀ n, P4175792646995803755.a n = A291287 n

theorem P4175792646995803755.correct : P4175792646995803755.Spec := by
  intro n
  simp only [A291287]

end A291287

/-! ## A291287.P4365429453511947293

`A109497(Δ[∏[a(n-1)+2]])` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A291287.P4365429453511947293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A291287.P4365429453511947293

namespace A291287

/-- `A109497(Δ[∏[a(n-1)+2]])` -/
def P4365429453511947293.Spec : Prop :=
  ∀ n, P4365429453511947293.a n = A291287 n

end A291287

/-!
# A291288: a(n) = binomial(n+3, 3)*(1 + binomial(n+2, 3)/4).

The programs for A291288, the canonical program `A291288.P5222474129047079250` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291288 has offset 0).

The definition of A291288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291288.P5222474129047079250

`∑[∑[∑[∑[∑[a(n-1)+5]]]]]` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291288

/-- `∑[∑[∑[∑[∑[a(n-1)+5]]]]]` -/
def P5222474129047079250.Spec : Prop :=
  ∀ n, (P5222474129047079250.a n : ℤ) = A291288 n

theorem P5222474129047079250.correct : P5222474129047079250.Spec := by
  intro n
  simp only [A291288]

end A291288

/-! ## A291288.P13662170182037891790

`(∑[∑[n/4]]+1)*∑[∑[n+1]]`
-/

namespace A291288.P13662170182037891790
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

end

end A291288.P13662170182037891790

namespace A291288

/-- `(∑[∑[n/4]]+1)*∑[∑[n+1]]` -/
def P13662170182037891790.Spec : Prop :=
  ∀ n, P13662170182037891790.a n = (A291288 n : ℚ)

end A291288

/-! ## A291288.P2915348512601602477

`∑[∑[∑[A004068(n)+1]]]`
-/

namespace A291288.P2915348512601602477
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291288.P2915348512601602477

namespace A291288

/-- `∑[∑[∑[A004068(n)+1]]]` -/
def P2915348512601602477.Spec : Prop :=
  ∀ n, P2915348512601602477.a n = A291288 n

end A291288

/-! ## A291288.P752703436913149304

`∑[∑[∑[n/12*A005901(n)+1]]]`
-/

namespace A291288.P752703436913149304
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 12 * (A005901 n : ℚ) + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291288.P752703436913149304

namespace A291288

/-- `∑[∑[∑[n/12*A005901(n)+1]]]` -/
def P752703436913149304.Spec : Prop :=
  ∀ n, P752703436913149304.a n = (A291288 n : ℚ)

end A291288

/-! ## A291288.P2091061624400354762

`A006542(n+4)-A174002(n)`
-/

namespace A291288.P2091061624400354762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 4) - A174002 n

end

end A291288.P2091061624400354762

namespace A291288

/-- `A006542(n+4)-A174002(n)` -/
def P2091061624400354762.Spec : Prop :=
  ∀ n, P2091061624400354762.a n = A291288 n

end A291288

/-! ## A291288.P16570684188389517341

`∑[A244882(n)-n*A000292(n+1)]`
-/

namespace A291288.P16570684188389517341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244882 n - (n : ℤ) * A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291288.P16570684188389517341

namespace A291288

/-- `∑[A244882(n)-n*A000292(n+1)]` -/
def P16570684188389517341.Spec : Prop :=
  ∀ n, P16570684188389517341.a n = A291288 n

end A291288

/-! ## A291288.P8938356162700654406

`A006542(n+4)-∑[∑[5*A000292(n)]]`
-/

namespace A291288.P8938356162700654406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 4) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291288.P8938356162700654406

namespace A291288

/-- `A006542(n+4)-∑[∑[5*A000292(n)]]` -/
def P8938356162700654406.Spec : Prop :=
  ∀ n, P8938356162700654406.a n = A291288 n

end A291288

/-! ## A291288.P15259289305834296047

`∑[A006414(n)+∑[n+1]]-A006414(n)`
-/

namespace A291288.P15259289305834296047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006414 n

end

end A291288.P15259289305834296047

namespace A291288

/-- `∑[A006414(n)+∑[n+1]]-A006414(n)` -/
def P15259289305834296047.Spec : Prop :=
  ∀ n, P15259289305834296047.a n = A291288 n

end A291288

/-! ## A291288.P16244225113962050512

`∑[A301973(n+1)]`
-/

namespace A291288.P16244225113962050512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291288.P16244225113962050512

namespace A291288

/-- `∑[A301973(n+1)]` -/
def P16244225113962050512.Spec : Prop :=
  ∀ n, P16244225113962050512.a n = A291288 n

end A291288

/-! ## A291288.P3372182540529584238

`A000332(n+4)+5*A000579(n+4)`
-/

namespace A291288.P3372182540529584238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) + 5 * A000579 (n + 4)

end

end A291288.P3372182540529584238

namespace A291288

/-- `A000332(n+4)+5*A000579(n+4)` -/
def P3372182540529584238.Spec : Prop :=
  ∀ n, P3372182540529584238.a n = A291288 n

end A291288

/-!
# A291289: The Padovan sequence A000931 doubled.

The programs for A291289, the canonical program `A291289.P3595557876990996214` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291289 has offset 0).

The definition of A291289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 823 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291289.P3595557876990996214

`a(n-2)+a(n-3)` with `a(0)=2, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291289

/-- `a(n-2)+a(n-3)` -/
def P3595557876990996214.Spec : Prop :=
  ∀ n, (P3595557876990996214.a n : ℤ) = A291289 n

theorem P3595557876990996214.correct : P3595557876990996214.Spec := by
  intro n
  simp only [A291289]

end A291289

/-! ## A291289.P14849038000918809055

`a(n-2)-floor(-a(n-3))` with `a(0)=2, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A291289.P14849038000918809055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A291289.P14849038000918809055

namespace A291289

/-- `a(n-2)-floor(-a(n-3))` -/
def P14849038000918809055.Spec : Prop :=
  ∀ n, P14849038000918809055.a n = A291289 n

end A291289

/-! ## A291289.P17772970109149541197

`a(n-2)-ceil(-a(n-3))` with `a(0)=2, a(1)=0, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A291289.P17772970109149541197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A291289.P17772970109149541197

namespace A291289

/-- `a(n-2)-ceil(-a(n-3))` -/
def P17772970109149541197.Spec : Prop :=
  ∀ n, P17772970109149541197.a n = A291289 n

end A291289

/-! ## A291289.P15475771921426991067

`a(n-2)-round(-a(n-3))` with `a(0)=2, a(1)=0, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A291289.P15475771921426991067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A291289.P15475771921426991067

namespace A291289

/-- `a(n-2)-round(-a(n-3))` -/
def P15475771921426991067.Spec : Prop :=
  ∀ n, P15475771921426991067.a n = A291289 n

end A291289

/-! ## A291289.P4965583268688169127

`abs(Δ[a(n-2)-a(n-3)])` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A291289.P4965583268688169127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A291289.P4965583268688169127

namespace A291289

/-- `abs(Δ[a(n-2)-a(n-3)])` -/
def P4965583268688169127.Spec : Prop :=
  ∀ n, P4965583268688169127.a n = A291289 n

end A291289

/-! ## A291289.P2362290712521061024

`or(1, a(n-2))-(1-a(n-3))` with `a(0)=2, a(1)=0, a(2)=0`
-/

namespace A291289.P2362290712521061024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0] fun n a =>
  Int.lor 1 (a (n - 2)) - (1 - a (n - 3))

end

end A291289.P2362290712521061024

namespace A291289

/-- `or(1, a(n-2))-(1-a(n-3))` -/
def P2362290712521061024.Spec : Prop :=
  ∀ n, P2362290712521061024.a n = A291289 n

end A291289

/-! ## A291289.P10763836703744575611

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=2, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A291289.P10763836703744575611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0, 2] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A291289.P10763836703744575611

namespace A291289

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P10763836703744575611.Spec : Prop :=
  ∀ n, P10763836703744575611.a n = A291289 n

end A291289

/-! ## A291289.P14993985655084341839

`2*A000931(n)`
-/

namespace A291289.P14993985655084341839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000931 n

end

end A291289.P14993985655084341839

namespace A291289

/-- `2*A000931(n)` -/
def P14993985655084341839.Spec : Prop :=
  ∀ n, P14993985655084341839.a n = A291289 n

end A291289

/-! ## A291289.P8642730045670765940

`2*A078027(n+2)`
-/

namespace A291289.P8642730045670765940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078027 (n + 2)

end

end A291289.P8642730045670765940

namespace A291289

/-- `2*A078027(n+2)` -/
def P8642730045670765940.Spec : Prop :=
  ∀ n, P8642730045670765940.a n = A291289 n

end A291289

/-! ## A291289.P14675397512808064515

`2*A133034(n+4)`
-/

namespace A291289.P14675397512808064515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133034 (n + 4)

end

end A291289.P14675397512808064515

namespace A291289

/-- `2*A133034(n+4)` -/
def P14675397512808064515.Spec : Prop :=
  ∀ n, P14675397512808064515.a n = A291289 n

end A291289

/-! ## A291289.P6235225288186629182

`A182097(n)-A133034(n)`
-/

namespace A291289.P6235225288186629182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n - A133034 n

end

end A291289.P6235225288186629182

namespace A291289

/-- `A182097(n)-A133034(n)` -/
def P6235225288186629182.Spec : Prop :=
  ∀ n, P6235225288186629182.a n = A291289 n

end A291289

/-! ## A291289.P5413089609153235645

`A182097(n)-Δ[A000931(n)]`
-/

namespace A291289.P5413089609153235645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n - (f1 (n + 1) - f1 n)

end

end A291289.P5413089609153235645

namespace A291289

/-- `A182097(n)-Δ[A000931(n)]` -/
def P5413089609153235645.Spec : Prop :=
  ∀ n, P5413089609153235645.a n = A291289 n

end A291289

/-! ## A291289.P8195381653572154438

`A078027(n+2)+A000931(n)`
-/

namespace A291289.P8195381653572154438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 2) + A000931 n

end

end A291289.P8195381653572154438

namespace A291289

/-- `A078027(n+2)+A000931(n)` -/
def P8195381653572154438.Spec : Prop :=
  ∀ n, P8195381653572154438.a n = A291289 n

end A291289

/-! ## A291289.P610705602858150685

`A052954(n)-(A133034(n)+1)`
-/

namespace A291289.P610705602858150685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 n - (A133034 n + 1)

end

end A291289.P610705602858150685

namespace A291289

/-- `A052954(n)-(A133034(n)+1)` -/
def P610705602858150685.Spec : Prop :=
  ∀ n, P610705602858150685.a n = A291289 n

end A291289

/-! ## A291289.P16431471957280441397

`A133034(n+4)+A000931(n)`
-/

namespace A291289.P16431471957280441397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 4) + A000931 n

end

end A291289.P16431471957280441397

namespace A291289

/-- `A133034(n+4)+A000931(n)` -/
def P16431471957280441397.Spec : Prop :=
  ∀ n, P16431471957280441397.a n = A291289 n

end A291289

/-! ## A291289.P14763423263435674075

`2*(A017899(n)+Δ[A017899(n+1)])`
-/

namespace A291289.P14763423263435674075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A017899 n + (f1 (n + 1) - f1 n))

end

end A291289.P14763423263435674075

namespace A291289

/-- `2*(A017899(n)+Δ[A017899(n+1)])` -/
def P14763423263435674075.Spec : Prop :=
  ∀ n, P14763423263435674075.a n = A291289 n

end A291289

/-! ## A291289.P18390851651462158720

`A000931(n)+A182097(n)-A000931(n+1)`
-/

namespace A291289.P18390851651462158720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n + (A182097 n - A000931 (n + 1))

end

end A291289.P18390851651462158720

namespace A291289

/-- `A000931(n)+A182097(n)-A000931(n+1)` -/
def P18390851651462158720.Spec : Prop :=
  ∀ n, P18390851651462158720.a n = A291289 n

end A291289

/-! ## A291289.P4406255556311552179

`A017899(n)+A174469(n+2)+A017899(n)`
-/

namespace A291289.P4406255556311552179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n + (A174469 (n + 2) + A017899 n)

end

end A291289.P4406255556311552179

namespace A291289

/-- `A017899(n)+A174469(n+2)+A017899(n)` -/
def P4406255556311552179.Spec : Prop :=
  ∀ n, P4406255556311552179.a n = A291289 n

end A291289

/-! ## A291289.P1894183473343889950

`2*Δ[A052954(n+1)]`
-/

namespace A291289.P1894183473343889950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A291289.P1894183473343889950

namespace A291289

/-- `2*Δ[A052954(n+1)]` -/
def P1894183473343889950.Spec : Prop :=
  ∀ n, P1894183473343889950.a n = A291289 n

end A291289

/-!
# A291290: a(n) = n/3 if n == 0 mod 3, floor((n+1)/2) if n == 1 mod 3, otherwise n-2.

The programs for A291290, the canonical program `A291290.P6277926482894182569` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291290 has offset 0).

The definition of A291290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291290.P6277926482894182569

`a(n-3)+a(n-6)-a(n-9)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=2, a(5)=3, a(6)=2, a(7)=4, a(8)=6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291290

/-- `a(n-3)+a(n-6)-a(n-9)` -/
def P6277926482894182569.Spec : Prop :=
  ∀ n, P6277926482894182569.a n = A291290 n

theorem P6277926482894182569.correct : P6277926482894182569.Spec := by
  intro n
  simp only [A291290]

end A291290

/-! ## A291290.P8158155970416258378

`floor(A004482(n)/A130784(n+1))`
-/

namespace A291290.P8158155970416258378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004482 n : ℚ) / (A130784 (n + 1) : ℚ)⌋

end

end A291290.P8158155970416258378

namespace A291290

/-- `floor(A004482(n)/A130784(n+1))` -/
def P8158155970416258378.Spec : Prop :=
  ∀ n, P8158155970416258378.a n = A291290 n

end A291290

/-! ## A291290.P4753064103763491552

`floor(A004482(n)/A010882(A330396(n)))`
-/

namespace A291290.P4753064103763491552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004482 n : ℚ) / (A010882 (A330396 n).toNat : ℚ)⌋

end

end A291290.P4753064103763491552

namespace A291290

/-- `floor(A004482(n)/A010882(A330396(n)))` -/
def P4753064103763491552.Spec : Prop :=
  ∀ n, P4753064103763491552.a n = A291290 n

end A291290

/-! ## A291290.P6719435283316322229

`A047229(A133310(n))/Δ[A047271(n+1)]`
-/

namespace A291290.P6719435283316322229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047271 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047229 (A133310 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A291290.P6719435283316322229

namespace A291290

/-- `A047229(A133310(n))/Δ[A047271(n+1)]` -/
def P6719435283316322229.Spec : Prop :=
  ∀ n, P6719435283316322229.a n = (A291290 n : ℚ)

end A291290

/-! ## A291290.P7975352104168558843

`A004526(A131380(n)+A010872(n)²*A002264(n))`
-/

namespace A291290.P7975352104168558843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A131380 n + A010872 n ^ 2 * A002264 n).toNat

end

end A291290.P7975352104168558843

namespace A291290

/-- `A004526(A131380(n)+A010872(n)²*A002264(n))` -/
def P7975352104168558843.Spec : Prop :=
  ∀ n, P7975352104168558843.a n = A291290 n

end A291290

/-!
# A291291: Binary sequence defined by Baldini-Eschgfäller coupled dynamical system (f,lambda,alpha) with f = A291290, lambda(y) = 1-y for y in Y = {0,1}, and alpha(k) = k mod 2 for k in Omega = {0,1,2,3}.

The programs for A291291, there is no canonical definition to state claims against.
-/

/-! ## A291291.P9835596715771838224

`A352569(A070934(n)+A002061(n))`
-/

namespace A291291.P9835596715771838224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352569 (A070934 n + A002061 n).toNat

end

end A291291.P9835596715771838224

/-! ## A291291.P6837882524261181238

`A334941(A359074(n+1)+A057556(n+1))`
-/

namespace A291291.P6837882524261181238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334941 (A359074 (n + 1) + A057556 (n + 1)).toNat

end

end A291291.P6837882524261181238

/-! ## A291291.P4403839040882112513

`A319710(A320176(n+1)+A045572(n+1))`
-/

namespace A291291.P4403839040882112513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A320176 (n + 1) + A045572 (n + 1)).toNat

end

end A291291.P4403839040882112513

/-! ## A291291.P2706559280387505383

`A079978(Δ[A051715(n)]²)`
-/

namespace A291291.P2706559280387505383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A291291.P2706559280387505383

/-! ## A291291.P5244408704314461021

`A030308(A351017(n)-A194436(n+1))`
-/

namespace A291291.P5244408704314461021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A351017 n - A194436 (n + 1)).toNat

end

end A291291.P5244408704314461021

/-!
# A291292: Necklace Catalan numbers.

The programs for A291292, the canonical program `A291292.P8579242565345000571` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291292 has offset 0).

The definition of A291292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291292.P8579242565345000571

`3*a(n-1)-A115143(n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A291292

/-- `3*a(n-1)-A115143(n)` -/
def P8579242565345000571.Spec : Prop :=
  ∀ n, P8579242565345000571.a n = A291292 n

theorem P8579242565345000571.correct : P8579242565345000571.Spec := by
  intro n
  simp only [A291292]

end A291292

/-! ## A291292.P5656571799506661542

`A320902(∑[n]+n)`
-/

namespace A291292.P5656571799506661542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320902 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A291292.P5656571799506661542

namespace A291292

/-- `A320902(∑[n]+n)` -/
def P5656571799506661542.Spec : Prop :=
  ∀ n, P5656571799506661542.a n = A291292 n

end A291292

/-! ## A291292.P8492210213755640364

`A320902(A000096(n))+A000007(n+1)`
-/

namespace A291292.P8492210213755640364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320902 (A000096 n).toNat + A000007 (n + 1)

end

end A291292.P8492210213755640364

namespace A291292

/-- `A320902(A000096(n))+A000007(n+1)` -/
def P8492210213755640364.Spec : Prop :=
  ∀ n, P8492210213755640364.a n = A291292 n

end A291292

/-! ## A291292.P12286161185222139566

`A320902(A000096(n))+A000038(n+2)`
-/

namespace A291292.P12286161185222139566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320902 (A000096 n).toNat + A000038 (n + 2)

end

end A291292.P12286161185222139566

namespace A291292

/-- `A320902(A000096(n))+A000038(n+2)` -/
def P12286161185222139566.Spec : Prop :=
  ∀ n, P12286161185222139566.a n = A291292 n

end A291292

/-! ## A291292.P3350516586378505465

`A320902(A000096(n))%A000108(n+4)`
-/

namespace A291292.P3350516586378505465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320902 (A000096 n).toNat) (A000108 (n + 4))

end

end A291292.P3350516586378505465

namespace A291292

/-- `A320902(A000096(n))%A000108(n+4)` -/
def P3350516586378505465.Spec : Prop :=
  ∀ n, P3350516586378505465.a n = A291292 n

end A291292

/-! ## A291292.P4357490329855336838

`A320902(A000096(n))+char[A158861((n+1)!+1)]`
-/

namespace A291292.P4357490329855336838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158861 (Nat.factorial (n + 1) + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320902 (A000096 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A291292.P4357490329855336838

namespace A291292

/-- `A320902(A000096(n))+char[A158861((n+1)!+1)]` -/
def P4357490329855336838.Spec : Prop :=
  ∀ n, P4357490329855336838.a n = A291292 n

end A291292

/-! ## A291292.P2079607934665596171

`A320902(A000096(n))+A011558((n+1)*5*n)`
-/

namespace A291292.P2079607934665596171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320902 (A000096 n).toNat + A011558 ((n + 1) * (5 * n))

end

end A291292.P2079607934665596171

namespace A291292

/-- `A320902(A000096(n))+A011558((n+1)*5*n)` -/
def P2079607934665596171.Spec : Prop :=
  ∀ n, P2079607934665596171.a n = A291292 n

end A291292

/-!
# A291293: Sequence mod 5 defined by Baldini-Eschgfäller coupled dynamical system (f,lambda,alpha) with f(k) = A000203(k)-1, lambda(y) = 3y+2 mod 5 for y in Y = {0,1,2,3,4}, and alpha(k) = k mod 5 for k in Omega = {primes}.

The programs for A291293, there is no canonical definition to state claims against.
-/

/-! ## A291293.P5386787541993676173

`(A075974(n)%A194426(2*n+3))%4`
-/

namespace A291293.P5386787541993676173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A075974 n) (A194426 (2 * n + 3))) 4

end

end A291293.P5386787541993676173

/-! ## A291293.P17510953927641493222

`A010873(A251550(n+1)+A055819(n))`
-/

namespace A291293.P17510953927641493222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A251550 (n + 1) + A055819 n).toNat

end

end A291293.P17510953927641493222

/-!
# A291294: Total domination number of Fibonacci cube Gamma_n.

The programs for A291294, there is no canonical definition to state claims against.
-/

/-! ## A291294.P9023572295386312353

`A028785(A278706(n))`
-/

namespace A291294.P9023572295386312353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028785 (A278706 n).toNat

end

end A291294.P9023572295386312353

/-! ## A291294.P17491726810077668027

`A028788(A078620(n+2))`
-/

namespace A291294.P17491726810077668027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028788 (A078620 (n + 2)).toNat

end

end A291294.P17491726810077668027

/-! ## A291294.P8402802701756619240

`A332829(n)+A015754(n)`
-/

namespace A291294.P8402802701756619240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332829 n + A015754 n

end

end A291294.P8402802701756619240

/-! ## A291294.P6708230522360596516

`A332829(n)+A097793(n)`
-/

namespace A291294.P6708230522360596516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332829 n + A097793 n

end

end A291294.P6708230522360596516

/-! ## A291294.P3258069040173657829

`A188192(n+1)+A136423(n+1)`
-/

namespace A291294.P3258069040173657829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (n + 1) + A136423 (n + 1)

end

end A291294.P3258069040173657829

/-!
# A291295: Domination number of n-Fibonacci cube graph.

The programs for A291295, there is no canonical definition to state claims against.
-/

/-! ## A291295.P7777926744602361210

`ceil(A281578(n+4)/7)`
-/

namespace A291295.P7777926744602361210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A281578 (n + 4) : ℚ) / 7⌉

end

end A291295.P7777926744602361210

/-! ## A291295.P7257587614987311557

`floor(root(A147893(n+3), 5))`
-/

namespace A291295.P7257587614987311557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147893 (n + 3) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A291295.P7257587614987311557

/-! ## A291295.P9538996219114434277

`round(∏[atan(A105658(2*(n+2)))])`
-/

namespace A291295.P9538996219114434277
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A105658 (2 * (n + 2)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A291295.P9538996219114434277

/-! ## A291295.P11978369203154557930

`floor(sqrt(A130199(a(n-1)+1)))` with `a(0)=1, a(1)=1`
-/

namespace A291295.P11978369203154557930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.sqrt (A130199 (a (n - 1) + 1).toNat)

end

end A291295.P11978369203154557930

/-! ## A291295.P17970640413448582214

`floor((A244986(n+1)+n)/4)+1`
-/

namespace A291295.P17970640413448582214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A244986 (n + 1) + (n : ℤ) : ℚ) / 4⌋ + 1

end

end A291295.P17970640413448582214

/-!
# A291296: 2-packing number of Fibonacci cube Gamma_n.

The programs for A291296, there is no canonical definition to state claims against.
-/

/-! ## A291296.P8481317837487619849

`round(sqrt(2^n))-floor(n/3)`
-/

namespace A291296.P8481317837487619849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 ^ n : ℝ)) - ⌊(n : ℚ) / 3⌋

end

end A291296.P8481317837487619849

/-! ## A291296.P17308676337686693866

`round(root(A150485(n), 4))`
-/

namespace A291296.P17308676337686693866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A150485 n : ℝ) ^ (1 / (4 : ℝ)))

end

end A291296.P17308676337686693866

/-! ## A291296.P9184805151566916166

`round(root(A150486(n), 4))`
-/

namespace A291296.P9184805151566916166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A150486 n : ℝ) ^ (1 / (4 : ℝ)))

end

end A291296.P9184805151566916166

/-! ## A291296.P4992198857937874942

`round(root(A150498(n), 4))`
-/

namespace A291296.P4992198857937874942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A150498 n : ℝ) ^ (1 / (4 : ℝ)))

end

end A291296.P4992198857937874942

/-! ## A291296.P2991445971366730334

`round(sqrt(∑[A345192(n)+1]))`
-/

namespace A291296.P2991445971366730334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345192 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A291296.P2991445971366730334

/-!
# A291297: Independent domination number of Fibonacci cube Gamma_n.

The programs for A291297, there is no canonical definition to state claims against.
-/

/-! ## A291297.P5336194669360623388

`floor(root(Δ[A077555(n)], 9))`
-/

namespace A291297.P5336194669360623388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℝ) ^ (1 / (9 : ℝ))⌋

end

end A291297.P5336194669360623388

/-! ## A291297.P7516927010722209366

`floor(root(A077555(n+1), 9))`
-/

namespace A291297.P7516927010722209366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077555 (n + 1) : ℝ) ^ (1 / (9 : ℝ))⌋

end

end A291297.P7516927010722209366

/-! ## A291297.P14898075274783117203

`floor(∏[atan(A201456(n+1))])`
-/

namespace A291297.P14898075274783117203
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A201456 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A291297.P14898075274783117203

/-! ## A291297.P3452916420103367340

`round(∏[atan(A112858(n+2))])`
-/

namespace A291297.P3452916420103367340
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A112858 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A291297.P3452916420103367340

/-! ## A291297.P5838545987967577651

`A357189(2*n)+round(sqrt(n))`
-/

namespace A291297.P5838545987967577651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357189 (2 * n) + SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

end

end A291297.P5838545987967577651

