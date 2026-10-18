import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A393102: Numbers k whose smallest prime factor index is equal to the number of distinct prime factors of k and whose largest prime factor index is equal to the number of prime factors of k counted with multiplicity.

The programs for A393102, there is no canonical definition to state claims against.
-/

/-! ## A393102.P17258089028326476543

`∩[A106529(n+1), A324515(n+1)]`
-/

namespace A393102.P17258089028326476543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393102.P17258089028326476543

/-! ## A393102.P13990722970083995459

`∩[A324515(n+1), A340609(n+1)]`
-/

namespace A393102.P13990722970083995459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393102.P13990722970083995459

/-!
# A393103: Halting time for Wolfram's 2-state 2-symbol Turing machine 1285 when started with n on the tape.

The programs for A393103, there is no canonical definition to state claims against.
-/

/-! ## A393103.P16510213449381345075

`A393146(n+1)+A393146(n+1)-A393106(n+1)`
-/

namespace A393103.P16510213449381345075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393146 (n + 1) + (A393146 (n + 1) - A393106 (n + 1))

end

end A393103.P16510213449381345075

/-!
# A393106: Halting time for Wolfram's 2-state 2-symbol Turing machine 261 when started with n on the tape.

The programs for A393106, there is no canonical definition to state claims against.
-/

/-! ## A393106.P17311060310510180600

`A393146(n+1)+A393146(n+1)-A393103(n+1)`
-/

namespace A393106.P17311060310510180600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393146 (n + 1) + (A393146 (n + 1) - A393103 (n + 1))

end

end A393106.P17311060310510180600

/-!
# A393107: Primes in A000960.

The programs for A393107, there is no canonical definition to state claims against.
-/

/-! ## A393107.P3149921010835430877

`p?[Δ[A099074(n)]]`
-/

namespace A393107.P3149921010835430877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099074 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A393107.P3149921010835430877

/-! ## A393107.P12432370800449258969

`p?[A000960(n+1)]`
-/

namespace A393107.P12432370800449258969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A393107.P12432370800449258969

/-! ## A393107.P2887418554824709143

`∩[A000960(n+1), A007645(n+1)]`
-/

namespace A393107.P2887418554824709143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393107.P2887418554824709143

/-! ## A393107.P1094334616214740861

`∩[A000960(n+1), A045331(n+1)]`
-/

namespace A393107.P1094334616214740861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393107.P1094334616214740861

/-! ## A393107.P2748594798162635988

`∩[A000960(n+1), A279815(n+1)]`
-/

namespace A393107.P2748594798162635988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393107.P2748594798162635988

/-! ## A393107.P5580259220738608639

`∩[A000960(n+1), A040116(n+1)]`
-/

namespace A393107.P5580259220738608639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393107.P5580259220738608639

/-! ## A393107.P9823949909787162778

`∩[A000960(n+1), A325143(n+1)]`
-/

namespace A393107.P9823949909787162778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393107.P9823949909787162778

/-! ## A393107.P11389228337189488476

`filter[A000960(n+1), A010051(#)]`
-/

namespace A393107.P11389228337189488476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A393107.P11389228337189488476

/-! ## A393107.P5769475317192798010

`filter[A000960(n+1), A379969(#)]`
-/

namespace A393107.P5769475317192798010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A393107.P5769475317192798010

/-! ## A393107.P13311083406221289283

`filter[A000960(n+2), A365716(#)]`
-/

namespace A393107.P13311083406221289283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A393107.P13311083406221289283

/-!
# A393110: a(n) = G(pi(10^n)) where pi is A000720 and G(n) is the "depth" of n in the sense of the Gilbreath-Proth conjecture.

The programs for A393110, there is no canonical definition to state claims against.
-/

/-! ## A393110.P13012871390976666717

`A120235(2*A000960(n+1))`
-/

namespace A393110.P13012871390976666717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120235 (2 * A000960 (n + 1)).toNat

end

end A393110.P13012871390976666717

/-! ## A393110.P16585100501969553704

`∩[A353280(n+1), A099627(n)]`
-/

namespace A393110.P16585100501969553704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393110.P16585100501969553704

/-!
# A393122: Number of singular meanders with n intersections.

The programs for A393122, there is no canonical definition to state claims against.
-/

/-! ## A393122.P11964956527448410461

`A062401(A188168(n)+A074377(n))`
-/

namespace A393122.P11964956527448410461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (A188168 n + A074377 n).toNat

end

end A393122.P11964956527448410461

/-! ## A393122.P14310283122980260389

`A376585(n)+A376556(A376563(n))`
-/

namespace A393122.P14310283122980260389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376585 n + A376556 (A376563 n).toNat

end

end A393122.P14310283122980260389

/-!
# A393128: Positive integers not of the form floor(k + log(k) + log(Pi)).

The programs for A393128, there is no canonical definition to state claims against.
-/

/-! ## A393128.P13341975108497695655

`A173021(A291244(n))`
-/

namespace A393128.P13341975108497695655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173021 (A291244 n).toNat

end

end A393128.P13341975108497695655

/-! ## A393128.P5186554855906614249

`filter[A289666(n), A257800(#)]`
-/

namespace A393128.P5186554855906614249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257800 (f1 j).toNat = 1) n)

end

end A393128.P5186554855906614249

/-!
# A393129: Numbers k such that there is a reversible prime of the form 10^k - 2*10^m - 1.

The programs for A393129, there is no canonical definition to state claims against.
-/

/-! ## A393129.P3994072893913498664

`A320339(A123761(n))`
-/

namespace A393129.P3994072893913498664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320339 (A123761 n).toNat

end

end A393129.P3994072893913498664

/-!
# A393134: Iteration numbers k for which MD5^k(128 bits 1) yields record lows.

The programs for A393134, there is no canonical definition to state claims against.
-/

/-! ## A393134.P9549260362313900947

`eq[A010881(n), A249070(n)]`
-/

namespace A393134.P9549260362313900947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249070 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393134.P9549260362313900947

/-!
# A393136: G.f. A(x) satisfies A(x) = 1 - E(log(1 - x*(1 + E(A(x))))), where E is the Euler operator x*d/dx.

The programs for A393136, there is no canonical definition to state claims against.
-/

/-! ## A393136.P6778443799080089074

`A000027(A393959(n))/A000700(3*n+3)`
-/

namespace A393136.P6778443799080089074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A393959 n).toNat : ℚ) / (A000700 (3 * n + 3) : ℚ)

end

end A393136.P6778443799080089074

/-!
# A393137: a(n) is the number of nontrivial divisors {d | n, 1 < d < n} that are sum-irreducible, for n >= 1; by convention a(0) = 0.

The programs for A393137, there is no canonical definition to state claims against.
-/

/-! ## A393137.P7190354294261740150

`A325135(6^A032741(n))`
-/

namespace A393137.P7190354294261740150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A032741 n : ℤ))).toNat

end

end A393137.P7190354294261740150

/-! ## A393137.P11047913210661151307

`A001222(A128044(∏{e}[n, #+1]))`
-/

namespace A393137.P11047913210661151307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A128044 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A393137.P11047913210661151307

/-! ## A393137.P8437329599121346534

`A321857(A001349(∏{e}[n, #+1]))`
-/

namespace A393137.P8437329599121346534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321857 (A001349 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A393137.P8437329599121346534

/-! ## A393137.P17830856428832762038

`A051265(A001710(∏{e}[n, #+1])+1)`
-/

namespace A393137.P17830856428832762038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A001710 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + 1).toNat

end

end A393137.P17830856428832762038

/-! ## A393137.P6620384857376699439

`A002265(∏{e}[n, 3*#]%A276625(3*n+1))`
-/

namespace A393137.P6620384857376699439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), 3 * Nat.factorization (f1 n) p : ℕ) : ℤ) (A276625 (3 * n + 1))).toNat

end

end A393137.P6620384857376699439

/-!
# A393139: Row sums of A393138.

The programs for A393139, the canonical program `A393139.P6748471815250712617` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393139 has offset 0).

The definition of A393139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393139.P6748471815250712617

`A005773(n+2)-A001405(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A393139

/-- `A005773(n+2)-A001405(n+1)` -/
def P6748471815250712617.Spec : Prop :=
  ∀ n, P6748471815250712617.a n = A393139 n

theorem P6748471815250712617.correct : P6748471815250712617.Spec := by
  intro n
  simp only [A393139]

end A393139

/-! ## A393139.P11408290858776784537

`A151312(n+1)/A001405(n+1)-A001405(n+1)`
-/

namespace A393139.P11408290858776784537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151312 (n + 1) : ℚ) / (A001405 (n + 1) : ℚ) - (A001405 (n + 1) : ℚ)

end

end A393139.P11408290858776784537

namespace A393139

/-- `A151312(n+1)/A001405(n+1)-A001405(n+1)` -/
def P11408290858776784537.Spec : Prop :=
  ∀ n, P11408290858776784537.a n = (A393139 n : ℚ)

end A393139

/-! ## A393139.P1814990554821178086

`A292648(A026165(n))`
-/

namespace A393139.P1814990554821178086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292648 (A026165 n).toNat

end

end A393139.P1814990554821178086

namespace A393139

/-- `A292648(A026165(n))` -/
def P1814990554821178086.Spec : Prop :=
  ∀ n, P1814990554821178086.a n = A393139 n

end A393139

/-!
# A393141: a(n) = numerator(hypergeom([1, -n], [], -1/(n + 1))).

The programs for A393141, there is no canonical definition to state claims against.
-/

/-! ## A393141.P17841517746057349100

`A090878(n+1)-A036505(n)`
-/

namespace A393141.P17841517746057349100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090878 (n + 1) - A036505 n

end

end A393141.P17841517746057349100

/-!
# A393142: Triangle read by rows. T(n, k) = k^(n-1)*hypergeom([1, 1 - k], [], 1/k) for k > 0; T(n, 0) = 0^n.

The programs for A393142, there is no canonical definition to state claims against.
-/

/-! ## A393142.P7041081262573806408

`A097865(A215080(n))`
-/

namespace A393142.P7041081262573806408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097865 (A215080 n).toNat

end

end A393142.P7041081262573806408

/-! ## A393142.P16744785172846844190

`A072137(A303535(n))`
-/

namespace A393142.P16744785172846844190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 (A303535 n).toNat

end

end A393142.P16744785172846844190

/-! ## A393142.P10099442400220314086

`A255270(A256069(n))`
-/

namespace A393142.P10099442400220314086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A256069 n).toNat

end

end A393142.P10099442400220314086

/-! ## A393142.P16412035411953166999

`A382760(A287315(n))`
-/

namespace A393142.P16412035411953166999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382760 (A287315 n).toNat

end

end A393142.P16412035411953166999

/-! ## A393142.P5442860201942719676

`A343638(A195739(n+1))`
-/

namespace A393142.P5442860201942719676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343638 (A195739 (n + 1)).toNat

end

end A393142.P5442860201942719676

/-!
# A393145: Minimal voucher cost for n distinct positive integer vouchers v_1, v_2, ..., v_n, where the cost is defined as v_1 + v_1*v_2 + v_2*v_3 + ... + v_(n-1)*v_n.

The programs for A393145, the canonical program `A393145.P2861122081500613122` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393145 has offset 1).

The definition of A393145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393145.P2861122081500613122

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15, a(4)=26, a(5)=43`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A393145

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P2861122081500613122.Spec : Prop :=
  ∀ n, P2861122081500613122.a n = A393145 (n + 1)

theorem P2861122081500613122.correct : P2861122081500613122.Spec := by
  intro n
  simp only [A393145, Nat.add_sub_cancel]

end A393145

/-! ## A393145.P17786475018833020971

`floor(∑[∑[(1/3)^n+n]])`
-/

namespace A393145.P17786475018833020971
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 3) ^ n + (n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A393145.P17786475018833020971

namespace A393145

/-- `floor(∑[∑[(1/3)^n+n]])` -/
def P17786475018833020971.Spec : Prop :=
  ∀ n, P17786475018833020971.a n = A393145 (n + 1)

end A393145

/-! ## A393145.P15268789565760443329

`a(n-2)+n²+3` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A393145.P15268789565760443329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 2) + (n ^ 2 + 3)

end

end A393145.P15268789565760443329

namespace A393145

/-- `a(n-2)+n²+3` -/
def P15268789565760443329.Spec : Prop :=
  ∀ n, (P15268789565760443329.a n : ℤ) = A393145 (n + 1)

end A393145

/-! ## A393145.P1287153602771044091

`∑[∑[a(n-2)+2]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=3`
-/

namespace A393145.P1287153602771044091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4, 3] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393145.P1287153602771044091

namespace A393145

/-- `∑[∑[a(n-2)+2]]` -/
def P1287153602771044091.Spec : Prop :=
  ∀ n, (P1287153602771044091.a n : ℤ) = A393145 (n + 1)

end A393145

/-! ## A393145.P3159390278233259173

`∑[3-(a(n-1)-n²)]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A393145.P3159390278233259173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  3 - (f1 (n - 1) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393145.P3159390278233259173

namespace A393145

/-- `∑[3-(a(n-1)-n²)]` -/
def P3159390278233259173.Spec : Prop :=
  ∀ n, P3159390278233259173.a n = A393145 (n + 1)

end A393145

/-! ## A393145.P15252027991779495444

`A236453(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A393145.P15252027991779495444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A236453 n + a (n - 1)

end

end A393145.P15252027991779495444

namespace A393145

/-- `A236453(n)+a(n-1)` -/
def P15252027991779495444.Spec : Prop :=
  ∀ n, P15252027991779495444.a n = A393145 (n + 1)

end A393145

/-! ## A393145.P17729012996240045792

`A110654(n)+A003600(n)`
-/

namespace A393145.P17729012996240045792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A003600 n

end

end A393145.P17729012996240045792

namespace A393145

/-- `A110654(n)+A003600(n)` -/
def P17729012996240045792.Spec : Prop :=
  ∀ n, P17729012996240045792.a n = A393145 (n + 1)

end A393145

/-! ## A393145.P17145915157468808847

`A064843(n+1)+A004277(n)`
-/

namespace A393145.P17145915157468808847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064843 (n + 1) + A004277 n

end

end A393145.P17145915157468808847

namespace A393145

/-- `A064843(n+1)+A004277(n)` -/
def P17145915157468808847.Spec : Prop :=
  ∀ n, P17145915157468808847.a n = A393145 (n + 1)

end A393145

/-! ## A393145.P16746905640347946897

`A080476(n+1)+A004006(n)`
-/

namespace A393145.P16746905640347946897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (n + 1) + A004006 n

end

end A393145.P16746905640347946897

namespace A393145

/-- `A080476(n+1)+A004006(n)` -/
def P16746905640347946897.Spec : Prop :=
  ∀ n, P16746905640347946897.a n = A393145 (n + 1)

end A393145

/-! ## A393145.P11497620212625266694

`A184674(n+1)+A131941(n)`
-/

namespace A393145.P11497620212625266694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184674 (n + 1) + A131941 n

end

end A393145.P11497620212625266694

namespace A393145

/-- `A184674(n+1)+A131941(n)` -/
def P11497620212625266694.Spec : Prop :=
  ∀ n, P11497620212625266694.a n = A393145 (n + 1)

end A393145

/-! ## A393145.P50203847306020798

`A306262(n)+A131098(n+1)`
-/

namespace A393145.P50203847306020798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306262 n + A131098 (n + 1)

end

end A393145.P50203847306020798

namespace A393145

/-- `A306262(n)+A131098(n+1)` -/
def P50203847306020798.Spec : Prop :=
  ∀ n, P50203847306020798.a n = A393145 (n + 1)

end A393145

/-! ## A393145.P14272156058398450983

`A184632(n+1)-A084990(n)`
-/

namespace A393145.P14272156058398450983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184632 (n + 1) - A084990 n

end

end A393145.P14272156058398450983

namespace A393145

/-- `A184632(n+1)-A084990(n)` -/
def P14272156058398450983.Spec : Prop :=
  ∀ n, P14272156058398450983.a n = A393145 (n + 1)

end A393145

/-! ## A393145.P8852542620296915805

`A294732(n+2)+A000292(n)`
-/

namespace A393145.P8852542620296915805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294732 (n + 2) + A000292 n

end

end A393145.P8852542620296915805

namespace A393145

/-- `A294732(n+2)+A000292(n)` -/
def P8852542620296915805.Spec : Prop :=
  ∀ n, P8852542620296915805.a n = A393145 (n + 1)

end A393145

/-! ## A393145.P3850310924541753359

`A177787(n+1)-A266977(n)`
-/

namespace A393145.P3850310924541753359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177787 (n + 1) - A266977 n

end

end A393145.P3850310924541753359

namespace A393145

/-- `A177787(n+1)-A266977(n)` -/
def P3850310924541753359.Spec : Prop :=
  ∀ n, P3850310924541753359.a n = A393145 (n + 1)

end A393145

/-! ## A393145.P18179100509540392192

`A110610(n+1)-A393532(n+1)`
-/

namespace A393145.P18179100509540392192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110610 (n + 1) - A393532 (n + 1)

end

end A393145.P18179100509540392192

namespace A393145

/-- `A110610(n+1)-A393532(n+1)` -/
def P18179100509540392192.Spec : Prop :=
  ∀ n, P18179100509540392192.a n = A393145 (n + 1)

end A393145

/-! ## A393145.P3921206683250308000

`A110611(n+1)+A306262(n)-A393532(n+1)`
-/

namespace A393145.P3921206683250308000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110611 (n + 1) + (A306262 n - A393532 (n + 1))

end

end A393145.P3921206683250308000

namespace A393145

/-- `A110611(n+1)+A306262(n)-A393532(n+1)` -/
def P3921206683250308000.Spec : Prop :=
  ∀ n, P3921206683250308000.a n = A393145 (n + 1)

end A393145

/-!
# A393146: Halting time for Wolfram's 2-state 2-symbol Turing machine 3333 when started with n on the tape.

The programs for A393146, there is no canonical definition to state claims against.
-/

/-! ## A393146.P12591943386207606726

`A393103(A163808(n+1))`
-/

namespace A393146.P12591943386207606726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393103 (A163808 (n + 1)).toNat

end

end A393146.P12591943386207606726

/-!
# A393148: Partial sums of truncated triangular pyramid numbers.

The programs for A393148, the canonical program `A393148.P11486900165006145874` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393148 has offset 4).

The definition of A393148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393148.P11486900165006145874

`1/24*(n+1)*(n+2)*((n+4)²+11*(n+4)-48)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A393148

/-- `1/24*(n+1)*(n+2)*((n+4)²+11*(n+4)-48)` -/
def P11486900165006145874.Spec : Prop :=
  ∀ n, P11486900165006145874.a n = (A393148 (n + 4) : ℚ)

end A393148

/-! ## A393148.P10530773582102380893

`∑[C(n, 3)]+(n+1)^3`
-/

namespace A393148.P10530773582102380893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 3

end

end A393148.P10530773582102380893

namespace A393148

/-- `∑[C(n, 3)]+(n+1)^3` -/
def P10530773582102380893.Spec : Prop :=
  ∀ n, (P10530773582102380893.a n : ℤ) = A393148 (n + 4)

end A393148

/-! ## A393148.P6535674802842168313

`C(n+1, 4)+(n+1)^3`
-/

namespace A393148.P6535674802842168313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 4 + (n + 1) ^ 3

end

end A393148.P6535674802842168313

namespace A393148

/-- `C(n+1, 4)+(n+1)^3` -/
def P6535674802842168313.Spec : Prop :=
  ∀ n, (P6535674802842168313.a n : ℤ) = A393148 (n + 4)

end A393148

/-! ## A393148.P7469587806160022394

`A008779(n)+∑[n]`
-/

namespace A393148.P7469587806160022394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008779 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A393148.P7469587806160022394

namespace A393148

/-- `A008779(n)+∑[n]` -/
def P7469587806160022394.Spec : Prop :=
  ∀ n, P7469587806160022394.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P10918783818953326490

`A119327(n+1)+n^3`
-/

namespace A393148.P10918783818953326490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119327 (n + 1) + (n ^ 3 : ℤ)

end

end A393148.P10918783818953326490

namespace A393148

/-- `A119327(n+1)+n^3` -/
def P10918783818953326490.Spec : Prop :=
  ∀ n, P10918783818953326490.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P10102879899545090608

`A387204(n)+A000125(n)`
-/

namespace A393148.P10102879899545090608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387204 n + A000125 n

end

end A393148.P10102879899545090608

namespace A393148

/-- `A387204(n)+A000125(n)` -/
def P10102879899545090608.Spec : Prop :=
  ∀ n, P10102879899545090608.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P1289788800024400672

`A022815(n+1)+A000292(n)`
-/

namespace A393148.P1289788800024400672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1) + A000292 n

end

end A393148.P1289788800024400672

namespace A393148

/-- `A022815(n+1)+A000292(n)` -/
def P1289788800024400672.Spec : Prop :=
  ∀ n, P1289788800024400672.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P7852053566852627709

`A081436(n)+A055795(n+1)`
-/

namespace A393148.P7852053566852627709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n + A055795 (n + 1)

end

end A393148.P7852053566852627709

namespace A393148

/-- `A081436(n)+A055795(n+1)` -/
def P7852053566852627709.Spec : Prop :=
  ∀ n, P7852053566852627709.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P4256730795360462004

`A185787(n+1)+A014626(n)`
-/

namespace A393148.P4256730795360462004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185787 (n + 1) + A014626 n

end

end A393148.P4256730795360462004

namespace A393148

/-- `A185787(n+1)+A014626(n)` -/
def P4256730795360462004.Spec : Prop :=
  ∀ n, P4256730795360462004.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P2246298122722506413

`A092185(n)+A027927(n+2)`
-/

namespace A393148.P2246298122722506413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092185 n + A027927 (n + 2)

end

end A393148.P2246298122722506413

namespace A393148

/-- `A092185(n)+A027927(n+2)` -/
def P2246298122722506413.Spec : Prop :=
  ∀ n, P2246298122722506413.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P14176791349424313598

`A101854(n+1)-A096941(n)`
-/

namespace A393148.P14176791349424313598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1) - A096941 n

end

end A393148.P14176791349424313598

namespace A393148

/-- `A101854(n+1)-A096941(n)` -/
def P14176791349424313598.Spec : Prop :=
  ∀ n, P14176791349424313598.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P3984505709282651660

`A096942(n)-A060488(n+3)`
-/

namespace A393148.P3984505709282651660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n - A060488 (n + 3)

end

end A393148.P3984505709282651660

namespace A393148

/-- `A096942(n)-A060488(n+3)` -/
def P3984505709282651660.Spec : Prop :=
  ∀ n, P3984505709282651660.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P10360410574257194576

`A095661(n)-A167541(n+6)`
-/

namespace A393148.P10360410574257194576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 n - A167541 (n + 6)

end

end A393148.P10360410574257194576

namespace A393148

/-- `A095661(n)-A167541(n+6)` -/
def P10360410574257194576.Spec : Prop :=
  ∀ n, P10360410574257194576.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P5911560899357896213

`A086274(n+1)+A077414(n+1)`
-/

namespace A393148.P5911560899357896213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086274 (n + 1) + A077414 (n + 1)

end

end A393148.P5911560899357896213

namespace A393148

/-- `A086274(n+1)+A077414(n+1)` -/
def P5911560899357896213.Spec : Prop :=
  ∀ n, P5911560899357896213.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P643461392701058525

`A006323(n+1)-A153978(n+1)`
-/

namespace A393148.P643461392701058525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006323 (n + 1) - A153978 (n + 1)

end

end A393148.P643461392701058525

namespace A393148

/-- `A006323(n+1)-A153978(n+1)` -/
def P643461392701058525.Spec : Prop :=
  ∀ n, P643461392701058525.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P11474569676586246982

`A051740(n)-A000217(n+1)*A000217(n)`
-/

namespace A393148.P11474569676586246982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n - A000217 (n + 1) * A000217 n

end

end A393148.P11474569676586246982

namespace A393148

/-- `A051740(n)-A000217(n+1)*A000217(n)` -/
def P11474569676586246982.Spec : Prop :=
  ∀ n, P11474569676586246982.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P15807554902110867131

`A005712(n+2)+A008778(n)-A081498(n+1)`
-/

namespace A393148.P15807554902110867131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) + (A008778 n - A081498 (n + 1))

end

end A393148.P15807554902110867131

namespace A393148

/-- `A005712(n+2)+A008778(n)-A081498(n+1)` -/
def P15807554902110867131.Spec : Prop :=
  ∀ n, P15807554902110867131.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P8605164121120669505

`A000217(n+1)*A000217(n+1)-A002418(n)`
-/

namespace A393148.P8605164121120669505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A000217 (n + 1) - A002418 n

end

end A393148.P8605164121120669505

namespace A393148

/-- `A000217(n+1)*A000217(n+1)-A002418(n)` -/
def P8605164121120669505.Spec : Prop :=
  ∀ n, P8605164121120669505.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P16781205733635960681

`A000332(n+1)+(n+1)^3`
-/

namespace A393148.P16781205733635960681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + ((n + 1) ^ 3 : ℤ)

end

end A393148.P16781205733635960681

namespace A393148

/-- `A000332(n+1)+(n+1)^3` -/
def P16781205733635960681.Spec : Prop :=
  ∀ n, P16781205733635960681.a n = A393148 (n + 4)

end A393148

/-! ## A393148.P7543101229963927325

`A000578(n+1)+A000332(n+1)`
-/

namespace A393148.P7543101229963927325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + A000332 (n + 1)

end

end A393148.P7543101229963927325

namespace A393148

/-- `A000578(n+1)+A000332(n+1)` -/
def P7543101229963927325.Spec : Prop :=
  ∀ n, P7543101229963927325.a n = A393148 (n + 4)

end A393148

/-!
# A393149: Numbers that cannot be represented as a sum or difference of two palindromes.

The programs for A393149, there is no canonical definition to state claims against.
-/

/-! ## A393149.P16872177789164603425

`∩[A035137(n+1), A104444(n+1)]`
-/

namespace A393149.P16872177789164603425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393149.P16872177789164603425

/-! ## A393149.P9282595533663203858

`∩[A104444(n+1), A261910(n+1)]`
-/

namespace A393149.P9282595533663203858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393149.P9282595533663203858

/-! ## A393149.P11741257317681463702

`∩[A104444(n+1), A319477(n+1)]`
-/

namespace A393149.P11741257317681463702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393149.P11741257317681463702

/-! ## A393149.P127186169847512114

`∩[A084843(n+1), A261910(n+1)]`
-/

namespace A393149.P127186169847512114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393149.P127186169847512114

/-! ## A393149.P3365997099664795021

`∩[A035137(n+1), A084843(n+1)]`
-/

namespace A393149.P3365997099664795021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393149.P3365997099664795021

/-! ## A393149.P2359221223186945953

`∩[A084843(n+1), A319477(n+1)]`
-/

namespace A393149.P2359221223186945953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393149.P2359221223186945953

/-!
# A393150: a(n) is chosen such that the root mean square of all terms so far is closest to n by absolute difference.

The programs for A393150, there is no canonical definition to state claims against.
-/

/-! ## A393150.P2469213300238392483

`A083026(n+1)+A080764(A131577(n))`
-/

namespace A393150.P2469213300238392483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (n + 1) + A080764 (A131577 n).toNat

end

end A393150.P2469213300238392483

/-! ## A393150.P9994750358266768977

`A285524(A301714(n+1))`
-/

namespace A393150.P9994750358266768977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285524 (A301714 (n + 1)).toNat

end

end A393150.P9994750358266768977

/-! ## A393150.P1404537023650969512

`A285524(A301722(n+1))`
-/

namespace A393150.P1404537023650969512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285524 (A301722 (n + 1)).toNat

end

end A393150.P1404537023650969512

/-!
# A393152: Irregular triangle read by rows: row n lists the distinct prime factors of the generalized Fermat number F_n(8) = 8^(2^n) + 1.

The programs for A393152, there is no canonical definition to state claims against.
-/

/-! ## A393152.P18051442018824764014

`A002716(n*A080304(n+1))`
-/

namespace A393152.P18051442018824764014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002716 ((n : ℤ) * A080304 (n + 1)).toNat

end

end A393152.P18051442018824764014

/-!
# A393153: Number of social networks of n persons in which the statement "All of my friends have more friends than I have" is true for a majority of the persons.

The programs for A393153, there is no canonical definition to state claims against.
-/

/-! ## A393153.P3348987189994572155

`A328480((n+2)^(n+1))`
-/

namespace A393153.P3348987189994572155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328480 ((n + 2) ^ (n + 1))

end

end A393153.P3348987189994572155

/-!
# A393154: Number of involution pairs of graceful Prüfer codes on n vertices with one code in the first half and the other in the second half of the lexicographic order.

The programs for A393154, there is no canonical definition to state claims against.
-/

/-! ## A393154.P1591432351732988122

`A337274(n+3)-A393155(n+3)-A393156(n+3)`
-/

namespace A393154.P1591432351732988122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337274 (n + 3) - A393155 (n + 3) - A393156 (n + 3)

end

end A393154.P1591432351732988122

/-! ## A393154.P2014055185054713858

`A114147(A073063(n))`
-/

namespace A393154.P2014055185054713858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114147 (A073063 n).toNat

end

end A393154.P2014055185054713858

/-!
# A393155: Number of involution pairs of graceful Prüfer codes on n vertices with both codes in the first half of the lexicographic order.

The programs for A393155, there is no canonical definition to state claims against.
-/

/-! ## A393155.P17493797780492711118

`A337274(n+3)-A393154(n+3)-A393156(n+3)`
-/

namespace A393155.P17493797780492711118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337274 (n + 3) - A393154 (n + 3) - A393156 (n + 3)

end

end A393155.P17493797780492711118

/-!
# A393156: Number of involution pairs of graceful Prüfer codes on n vertices with both codes in the second half of the lexicographic order.

The programs for A393156, there is no canonical definition to state claims against.
-/

/-! ## A393156.P736185430343980749

`A337274(n+3)-A393155(n+3)-A393154(n+3)`
-/

namespace A393156.P736185430343980749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337274 (n + 3) - A393155 (n + 3) - A393154 (n + 3)

end

end A393156.P736185430343980749

/-! ## A393156.P9298112129503751666

`A176975(A288317(n))`
-/

namespace A393156.P9298112129503751666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176975 (A288317 n).toNat

end

end A393156.P9298112129503751666

/-!
# A393160: a(n) is the largest possible integer Euclidean distance between two lattice points with coordinates in the interval 0..n.

The programs for A393160, there is no canonical definition to state claims against.
-/

/-! ## A393160.P3075759291640197665

`A393159(2*n²)`
-/

namespace A393160.P3075759291640197665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393159 (2 * n ^ 2)

end

end A393160.P3075759291640197665

/-!
# A393161: A sequence constructed by greedily sampling the Hermite distribution, with both parameters as 1, to minimize ratio discrepancy. The distribution indexing is adjusted to be strictly decreasing and support all positive integers.

The programs for A393161, there is no canonical definition to state claims against.
-/

/-! ## A393161.P4226167594455473633

`A324379(n+1)+A245562(A055690(n+1))`
-/

namespace A393161.P4226167594455473633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324379 (n + 1) + A245562 (A055690 (n + 1)).toNat

end

end A393161.P4226167594455473633

/-!
# A393164: Greatest common divisors of consecutive terms of numbers of the form 2^i*5^j.

The programs for A393164, there is no canonical definition to state claims against.
-/

/-! ## A393164.P11761717942053084800

`gcd(A003592(n+1), A164768(n+1))`
-/

namespace A393164.P11761717942053084800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003592 (n + 1)) (A164768 (n + 1))

end

end A393164.P11761717942053084800

/-! ## A393164.P18225158986056825783

`gcd(Δ[A003592(n+1)], A003592(n+2))`
-/

namespace A393164.P18225158986056825783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A003592 (n + 2))

end

end A393164.P18225158986056825783

/-! ## A393164.P12995452912197029753

`gcd(A004647(n), A164768(n+1))`
-/

namespace A393164.P12995452912197029753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004647 n) (A164768 (n + 1))

end

end A393164.P12995452912197029753

/-! ## A393164.P17762158621827237322

`A132741(A164768(n+1))`
-/

namespace A393164.P17762158621827237322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (A164768 (n + 1)).toNat

end

end A393164.P17762158621827237322

/-! ## A393164.P16542776025926644428

`A132741(Δ[record[A132741(n+1)]])`
-/

namespace A393164.P16542776025926644428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (f1 (n + 1) - f1 n).toNat

end

end A393164.P16542776025926644428

/-!
# A393167: Number of m <= s(n) with the same squarefree kernel as s(n), where s = A025487.

The programs for A393167, there is no canonical definition to state claims against.
-/

/-! ## A393167.P9347428097854747204

`A008479(A025487(n+1))`
-/

namespace A393167.P9347428097854747204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A025487 (n + 1)).toNat

end

end A393167.P9347428097854747204

/-! ## A393167.P12905544660359428561

`A344096(A331119(n+1))`
-/

namespace A393167.P12905544660359428561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344096 (A331119 (n + 1)).toNat

end

end A393167.P12905544660359428561

/-!
# A393168: Integers k which can be written in the form x^2 + y^2 - z^2, where x, y, z are integers and x^2, y^2, z^2 <= k.

The programs for A393168, there is no canonical definition to state claims against.
-/

/-! ## A393168.P1733489830454156300

`comp[A390380(n+1)]`
-/

namespace A393168.P1733489830454156300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A393168.P1733489830454156300

/-! ## A393168.P1496609662251745205

`comp[A143824(A304686(3*n+2)²)]`
-/

namespace A393168.P1496609662251745205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A304686 (3 * n + 2) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A393168.P1496609662251745205

/-! ## A393168.P3361824814140898039

`comp[∑[A124767(A257956(n+3)+1)]]`
-/

namespace A393168.P3361824814140898039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A257956 (n + 3) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A393168.P3361824814140898039

/-! ## A393168.P18399535084993397501

`comp[∑[A376109(A000225(2*n+3))]]`
-/

namespace A393168.P18399535084993397501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A000225 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A393168.P18399535084993397501

/-! ## A393168.P16176767123481289591

`lt[A071928(3*n+2), A098350(A293724(n))]`
-/

namespace A393168.P16176767123481289591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071928 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098350 (A293724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393168.P16176767123481289591

/-!
# A393170: G.f. A(x) satisfies [x^n] 1/(A(x) - n*x) = 0 for n >= 1.

The programs for A393170, there is no canonical definition to state claims against.
-/

/-! ## A393170.P6982789380590200473

`A291149(A038439(n))`
-/

namespace A393170.P6982789380590200473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 (A038439 n).toNat

end

end A393170.P6982789380590200473

/-! ## A393170.P2138217884855492962

`A014132(A264173(a(n-1))+1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A393170.P2138217884855492962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A014132 (A264173 (a (n - 1)).toNat + 1).toNat

end

end A393170.P2138217884855492962

/-!
# A393171: G.f. satisfies A(x) = x + A(C(x))^2, where C(x) = x + C(x)^2 is a g.f. of the Catalan numbers (A000108).

The programs for A393171, there is no canonical definition to state claims against.
-/

/-! ## A393171.P11769522353852700831

`A026741(ceil(2^(n-1))*A230957(n))`
-/

namespace A393171.P11769522353852700831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A230957 n).toNat

end

end A393171.P11769522353852700831

/-! ## A393171.P17690653464409152037

`A008611(A324752(n)+A000172(n))`
-/

namespace A393171.P17690653464409152037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A324752 n + A000172 n).toNat

end

end A393171.P17690653464409152037

/-!
# A393172: G.f. A(x) satisfies A(x-x^2) = x + A(x)^2.

The programs for A393172, there is no canonical definition to state claims against.
-/

/-! ## A393172.P8232870861189122227

`A066087(A054993(n))+A054993(n)`
-/

namespace A393172.P8232870861189122227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (A054993 n).toNat + A054993 n

end

end A393172.P8232870861189122227

/-! ## A393172.P16633671031976381881

`A309399(A006768(n+1))+A054993(n)`
-/

namespace A393172.P16633671031976381881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309399 (A006768 (n + 1)).toNat + A054993 n

end

end A393172.P16633671031976381881

/-!
# A393175: Sum of the heights of symmetric peaks over all compositions of the integer n.

The programs for A393175, there is no canonical definition to state claims against.
-/

/-! ## A393175.P13737753596821561604

`A136013(A155803(n))`
-/

namespace A393175.P13737753596821561604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 (A155803 n).toNat

end

end A393175.P13737753596821561604

/-! ## A393175.P14353334446742600521

`∑[∑[A135661(A124504(n))]]`
-/

namespace A393175.P14353334446742600521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A124504 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393175.P14353334446742600521

/-! ## A393175.P12102723620535780616

`A123578(A056329(n+1))`
-/

namespace A393175.P12102723620535780616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A056329 (n + 1)).toNat

end

end A393175.P12102723620535780616

/-! ## A393175.P8604536213040910114

`A123578(A056339(n+1))`
-/

namespace A393175.P8604536213040910114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A056339 (n + 1)).toNat

end

end A393175.P8604536213040910114

/-! ## A393175.P16157448788862233864

`A135034(A056281(n+1))`
-/

namespace A393175.P16157448788862233864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A056281 (n + 1)).toNat

end

end A393175.P16157448788862233864

/-!
# A393177: Sum of the depths of symmetric valleys over all compositions of the integer n.

The programs for A393177, there is no canonical definition to state claims against.
-/

/-! ## A393177.P12334127479735994810

`A179510(A035082(n))`
-/

namespace A393177.P12334127479735994810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179510 (A035082 n).toNat

end

end A393177.P12334127479735994810

/-! ## A393177.P4676991643755761784

`A140203(A238827(n+2))`
-/

namespace A393177.P4676991643755761784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140203 (A238827 (n + 2)).toNat

end

end A393177.P4676991643755761784

/-! ## A393177.P11048867814725250035

`A121261(A284995(n+2))`
-/

namespace A393177.P11048867814725250035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121261 (A284995 (n + 2)).toNat

end

end A393177.P11048867814725250035

/-! ## A393177.P10016515717334523503

`A135661(xor(A000296(n), A035515(n)))`
-/

namespace A393177.P10016515717334523503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (Int.xor (A000296 n) (A035515 n)).toNat

end

end A393177.P10016515717334523503

/-!
# A393178: Main diagonal of A171698.

The programs for A393178, there is no canonical definition to state claims against.
-/

/-! ## A393178.P10392738308451558919

`A274292(2*n²)`
-/

namespace A393178.P10392738308451558919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 (2 * n ^ 2)

end

end A393178.P10392738308451558919

/-! ## A393178.P13742230340460947646

`A375659(A117625(n))`
-/

namespace A393178.P13742230340460947646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375659 (A117625 n).toNat

end

end A393178.P13742230340460947646

/-!
# A393179: Number of k <= 2^(n-1) such that tau(k) = n where tau = A000005.

The programs for A393179, there is no canonical definition to state claims against.
-/

/-! ## A393179.P7762010880899030332

`A067004(2^n)`
-/

namespace A393179.P7762010880899030332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (2 ^ n)

end

end A393179.P7762010880899030332

/-! ## A393179.P3387367509119732091

`A047983(2^n)+1`
-/

namespace A393179.P3387367509119732091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047983 (2 ^ n) + 1

end

end A393179.P3387367509119732091

/-! ## A393179.P17312363199725377100

`or(floor(1/(n+1)), A067004(A000079(n)))`
-/

namespace A393179.P17312363199725377100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (n + 1 : ℚ)⌋ (A067004 (A000079 n).toNat)

end

end A393179.P17312363199725377100

/-! ## A393179.P9679356267873628889

`A067004(A000079(n))%A038507(n)`
-/

namespace A393179.P9679356267873628889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067004 (A000079 n).toNat) (A038507 n)

end

end A393179.P9679356267873628889

/-! ## A393179.P13035073588422339987

`A067004(A000079(n))+A000007(n+1)`
-/

namespace A393179.P13035073588422339987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A000079 n).toNat + A000007 (n + 1)

end

end A393179.P13035073588422339987

/-!
# A393181: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 * A(x)^2 / (1 - x).

The programs for A393181, there is no canonical definition to state claims against.
-/

/-! ## A393181.P18176372645678289323

`A105224(A247103(n))`
-/

namespace A393181.P18176372645678289323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A247103 n).toNat

end

end A393181.P18176372645678289323

/-! ## A393181.P1418992031644509491

`A099258(A360811(n))`
-/

namespace A393181.P1418992031644509491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099258 (A360811 n).toNat

end

end A393181.P1418992031644509491

/-! ## A393181.P12888350916772838390

`A110029(A360889(n))`
-/

namespace A393181.P12888350916772838390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110029 (A360889 n).toNat

end

end A393181.P12888350916772838390

/-! ## A393181.P13026506107116495267

`A167025(A325473(n))`
-/

namespace A393181.P13026506107116495267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167025 (A325473 n).toNat

end

end A393181.P13026506107116495267

/-! ## A393181.P14954685423360509057

`A299703(A346733(n))`
-/

namespace A393181.P14954685423360509057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299703 (A346733 n).toNat

end

end A393181.P14954685423360509057

/-!
# A393184: Numbers that are the larger of two distinct positive integers with opposite abundances, where this pair of abundances occurs for the first time; sorted by the larger term.

The programs for A393184, there is no canonical definition to state claims against.
-/

/-! ## A393184.P14865796922930580384

`∩[A024352(n+1), A352030(n+1)]`
-/

namespace A393184.P14865796922930580384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393184.P14865796922930580384

/-! ## A393184.P8257552050249436308

`∩[A324652(n+1), A377286(n+1)]`
-/

namespace A393184.P8257552050249436308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393184.P8257552050249436308

/-!
# A393186: a(n) is the abundance of A393184(n) or, equivalently, the deficiency of A393185(n).

The programs for A393186, there is no canonical definition to state claims against.
-/

/-! ## A393186.P14135952218684352362

`A393185(n+1)-A393184(n+1)+(A000203(A393184(n+1))-A000203(A393185(n+1)))/2`
-/

namespace A393186.P14135952218684352362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393185 (n + 1) - A393184 (n + 1) : ℚ) + (A000203 (A393184 (n + 1)).toNat - A000203 (A393185 (n + 1)).toNat : ℚ) / 2

end

end A393186.P14135952218684352362

/-! ## A393186.P6106034986609492782

`A033879(A393185(n+1))`
-/

namespace A393186.P6106034986609492782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A393185 (n + 1)).toNat

end

end A393186.P6106034986609492782

/-! ## A393186.P8783675974056045949

`A033880(A393184(n+1))`
-/

namespace A393186.P8783675974056045949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A393184 (n + 1)).toNat

end

end A393186.P8783675974056045949

/-!
# A393187: a(n) = n XOR (2 * (n AND -n)) assuming a two's complement representation of negative values.

The programs for A393187, the canonical program `A393187.P813506043606163247` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393187 has offset 1).

The definition of A393187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393187.P813506043606163247

`xor(n+1, xor(n, n+1)+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A393187

/-- `xor(n+1, xor(n, n+1)+1)` -/
def P813506043606163247.Spec : Prop :=
  ∀ n, (P813506043606163247.a n : ℤ) = A393187 (n + 1)

theorem P813506043606163247.correct : P813506043606163247.Spec := by
  intro n
  simp only [A393187, Nat.add_sub_cancel]

end A393187

/-! ## A393187.P18265367522986044661

`xor(n, A088837(n+1))`
-/

namespace A393187.P18265367522986044661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A088837 (n + 1))

end

end A393187.P18265367522986044661

namespace A393187

/-- `xor(n, A088837(n+1))` -/
def P18265367522986044661.Spec : Prop :=
  ∀ n, P18265367522986044661.a n = A393187 (n + 1)

end A393187

/-! ## A393187.P17858974633614614799

`xor(n+1, A171977(n+1))`
-/

namespace A393187.P17858974633614614799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A171977 (n + 1))

end

end A393187.P17858974633614614799

namespace A393187

/-- `xor(n+1, A171977(n+1))` -/
def P17858974633614614799.Spec : Prop :=
  ∀ n, P17858974633614614799.a n = A393187 (n + 1)

end A393187

/-! ## A393187.P5417821954376254494

`xor(A004442(n), A100892(n+1))`
-/

namespace A393187.P5417821954376254494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 n) (A100892 (n + 1))

end

end A393187.P5417821954376254494

namespace A393187

/-- `xor(A004442(n), A100892(n+1))` -/
def P5417821954376254494.Spec : Prop :=
  ∀ n, P5417821954376254494.a n = A393187 (n + 1)

end A393187

/-! ## A393187.P18116751443346327084

`xor(A048724(n), A144396(n+1))`
-/

namespace A393187.P18116751443346327084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048724 n) (A144396 (n + 1))

end

end A393187.P18116751443346327084

namespace A393187

/-- `xor(A048724(n), A144396(n+1))` -/
def P18116751443346327084.Spec : Prop :=
  ∀ n, P18116751443346327084.a n = A393187 (n + 1)

end A393187

/-! ## A393187.P7122769465088562023

`xor(A004443(n), A393210(n+1))`
-/

namespace A393187.P7122769465088562023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004443 n) (A393210 (n + 1))

end

end A393187.P7122769465088562023

namespace A393187

/-- `xor(A004443(n), A393210(n+1))` -/
def P7122769465088562023.Spec : Prop :=
  ∀ n, P7122769465088562023.a n = A393187 (n + 1)

end A393187

/-! ## A393187.P13183477360166791209

`A055975(2*(n+1))+n+1`
-/

namespace A393187.P13183477360166791209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A393187.P13183477360166791209

namespace A393187

/-- `A055975(2*(n+1))+n+1` -/
def P13183477360166791209.Spec : Prop :=
  ∀ n, P13183477360166791209.a n = A393187 (n + 1)

end A393187

/-!
# A393188: a(n) = u(n) OR (u(n) - 1) where u(n) = n + (n AND -n) assuming a two's complement representation for negative values.

The programs for A393188, the canonical program `A393188.P11239075537385551219` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393188 has offset 1).

The definition of A393188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393188.P11239075537385551219

`or(n+2, xor(n, n+1)+n)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A393188

/-- `or(n+2, xor(n, n+1)+n)` -/
def P11239075537385551219.Spec : Prop :=
  ∀ n, (P11239075537385551219.a n : ℤ) = A393188 (n + 1)

theorem P11239075537385551219.correct : P11239075537385551219.Spec := by
  intro n
  simp only [A393188, Nat.add_sub_cancel]

end A393188

/-! ## A393188.P12136682036163087865

`or(n, A349102(n+1))`
-/

namespace A393188.P12136682036163087865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A349102 (n + 1))

end

end A393188.P12136682036163087865

namespace A393188

/-- `or(n, A349102(n+1))` -/
def P12136682036163087865.Spec : Prop :=
  ∀ n, P12136682036163087865.a n = A393188 (n + 1)

end A393188

/-! ## A393188.P1321131829958395782

`or(n+1, A100710(n+1))`
-/

namespace A393188.P1321131829958395782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A100710 (n + 1))

end

end A393188.P1321131829958395782

namespace A393188

/-- `or(n+1, A100710(n+1))` -/
def P1321131829958395782.Spec : Prop :=
  ∀ n, P1321131829958395782.a n = A393188 (n + 1)

end A393188

/-! ## A393188.P14954198842085618563

`A086799(A285326(n+1))`
-/

namespace A393188.P14954198842085618563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A285326 (n + 1)).toNat

end

end A393188.P14954198842085618563

namespace A393188

/-- `A086799(A285326(n+1))` -/
def P14954198842085618563.Spec : Prop :=
  ∀ n, P14954198842085618563.a n = A393188 (n + 1)

end A393188

/-! ## A393188.P8300814717685484958

`A086799(A341522(n)-n)`
-/

namespace A393188.P8300814717685484958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A341522 n - (n : ℤ)).toNat

end

end A393188.P8300814717685484958

namespace A393188

/-- `A086799(A341522(n)-n)` -/
def P8300814717685484958.Spec : Prop :=
  ∀ n, P8300814717685484958.a n = A393188 (n + 1)

end A393188

/-! ## A393188.P13557770259265707503

`A086799(A086799(n+1)+1)`
-/

namespace A393188.P13557770259265707503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A086799 (n + 1) + 1).toNat

end

end A393188.P13557770259265707503

namespace A393188

/-- `A086799(A086799(n+1)+1)` -/
def P13557770259265707503.Spec : Prop :=
  ∀ n, P13557770259265707503.a n = A393188 (n + 1)

end A393188

/-! ## A393188.P8677231112092071109

`A322018(A006519(n+1)+n+1)`
-/

namespace A393188.P8677231112092071109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322018 (A006519 (n + 1) + (n + 1 : ℤ)).toNat

end

end A393188.P8677231112092071109

namespace A393188

/-- `A322018(A006519(n+1)+n+1)` -/
def P8677231112092071109.Spec : Prop :=
  ∀ n, P8677231112092071109.a n = A393188 (n + 1)

end A393188

/-! ## A393188.P5277823607213343962

`A004273(A285326(A140472(n+1)))`
-/

namespace A393188.P5277823607213343962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285326 (A140472 (n + 1)).toNat).toNat

end

end A393188.P5277823607213343962

namespace A393188

/-- `A004273(A285326(A140472(n+1)))` -/
def P5277823607213343962.Spec : Prop :=
  ∀ n, P5277823607213343962.a n = A393188 (n + 1)

end A393188

/-! ## A393188.P7978663042425134757

`A004273(A140472(A140472(A005843(n+1))))`
-/

namespace A393188.P7978663042425134757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A140472 (A140472 (A005843 (n + 1)).toNat).toNat).toNat

end

end A393188.P7978663042425134757

namespace A393188

/-- `A004273(A140472(A140472(A005843(n+1))))` -/
def P7978663042425134757.Spec : Prop :=
  ∀ n, P7978663042425134757.a n = A393188 (n + 1)

end A393188

/-! ## A393188.P2709860333850214455

`A004273(A140472(A140472(A140472(A016825(n)))))`
-/

namespace A393188.P2709860333850214455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A140472 (A140472 (A140472 (A016825 n).toNat).toNat).toNat).toNat

end

end A393188.P2709860333850214455

namespace A393188

/-- `A004273(A140472(A140472(A140472(A016825(n)))))` -/
def P2709860333850214455.Spec : Prop :=
  ∀ n, P2709860333850214455.a n = A393188 (n + 1)

end A393188

/-!
# A393191: Number of purely (not vacuously) transitive relations on an n-set.

The programs for A393191, there is no canonical definition to state claims against.
-/

/-! ## A393191.P1608999290423056381

`A006905(n)-A391878(n)`
-/

namespace A393191.P1608999290423056381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - A391878 n

end

end A393191.P1608999290423056381

/-!
# A393192: a(n) = 32*n^3 - 72*n^2 + 60*n - 19.

The programs for A393192, the canonical program `A393192.P1074485609385906581` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393192 has offset 1).

The definition of A393192 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*(n+1)^3-72*(n+1)²+60*(n+1)-19` (program `A393192.P1074485609385906581`, by `A393192.P1074485609385906581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393192.P16893962091952350693

`(4*(n+1)-3)^3-8*(4*(n+1)-1)*n²`
-/

namespace A393192.P16893962091952350693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) : ℤ) - 3) ^ 3 - 8 * (((4 * (n + 1) : ℤ) - 1) * (n ^ 2 : ℤ))

end

end A393192.P16893962091952350693

namespace A393192

/-- `(4*(n+1)-3)^3-8*(4*(n+1)-1)*n²` -/
def P16893962091952350693.Spec : Prop :=
  ∀ n, P16893962091952350693.a n = A393192 (n + 1)

theorem P16893962091952350693.correct : P16893962091952350693.Spec := by
  intro n
  simp only [A393192, Nat.add_sub_cancel, A393192.P16893962091952350693.a, A393192.P1074485609385906581.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A393192

/-! ## A393192.P1074485609385906581

`32*(n+1)^3-72*(n+1)²+60*(n+1)-19`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A393192

/-- `32*(n+1)^3-72*(n+1)²+60*(n+1)-19` -/
def P1074485609385906581.Spec : Prop :=
  ∀ n, P1074485609385906581.a n = A393192 (n + 1)

theorem P1074485609385906581.correct : P1074485609385906581.Spec := by
  intro n
  simp only [A393192, Nat.add_sub_cancel]

end A393192

/-! ## A393192.P17462306135293199501

`A382973(Δ[n²])`
-/

namespace A393192.P17462306135293199501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382973 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A393192.P17462306135293199501

namespace A393192

/-- `A382973(Δ[n²])` -/
def P17462306135293199501.Spec : Prop :=
  ∀ n, P17462306135293199501.a n = A393192 (n + 1)

end A393192

/-! ## A393192.P2634777994853749164

`A132127(3*n+n+1)`
-/

namespace A393192.P2634777994853749164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132127 (3 * n + (n + 1))

end

end A393192.P2634777994853749164

namespace A393192

/-- `A132127(3*n+n+1)` -/
def P2634777994853749164.Spec : Prop :=
  ∀ n, P2634777994853749164.a n = A393192 (n + 1)

end A393192

/-! ## A393192.P2573034584782551098

`∩[A132127(n+1), A382973(n+1)]`
-/

namespace A393192.P2573034584782551098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393192.P2573034584782551098

namespace A393192

/-- `∩[A132127(n+1), A382973(n+1)]` -/
def P2573034584782551098.Spec : Prop :=
  ∀ n, (P2573034584782551098.a n : ℤ) = A393192 (n + 1)

end A393192

