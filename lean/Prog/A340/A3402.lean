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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B009.C000
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

/-!
# A340202: Primes followed by the difference from the next prime calculated by adding the digits of the lexicographically earliest distinct term.

The programs for A340202, there is no canonical definition to state claims against.
-/

/-! ## A340202.P7197752714530928909

`A002326(C(A159787(n), n))`
-/

namespace A340202.P7197752714530928909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (Nat.choose (A159787 n).toNat n)

end

end A340202.P7197752714530928909

/-! ## A340202.P3602251805778855971

`A331847(A192362(n))+A194702(n+1)`
-/

namespace A340202.P3602251805778855971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331847 (A192362 n).toNat + A194702 (n + 1)

end

end A340202.P3602251805778855971

/-!
# A340203: Number of primes in A339399 among the values of A339399(k) for k = 1..n.

The programs for A340203, there is no canonical definition to state claims against.
-/

/-! ## A340203.P15223376891182170536

`∑[A350866(n+1)]`
-/

namespace A340203.P15223376891182170536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340203.P15223376891182170536

/-! ## A340203.P13110291675111053187

`∑[val(∏{e}[A339399(n+1), #+1]+1, 3)]`
-/

namespace A340203.P13110291675111053187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340203.P13110291675111053187

/-! ## A340203.P12654379450647814907

`∑[A010051(A339399(n+1))]`
-/

namespace A340203.P12654379450647814907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A339399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340203.P12654379450647814907

/-! ## A340203.P13752560134055211121

`∑[A064911(A339399(n+1)²)]`
-/

namespace A340203.P13752560134055211121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A339399 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340203.P13752560134055211121

/-! ## A340203.P12200053322139773324

`∑[A101040(A339399(n+1)²)]`
-/

namespace A340203.P12200053322139773324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (A339399 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340203.P12200053322139773324

/-! ## A340203.P7729660638920725339

`∑[A111900(A339399(n+1)²)]`
-/

namespace A340203.P7729660638920725339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 (A339399 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340203.P7729660638920725339

/-! ## A340203.P16781414818056369998

`∑[A302048(A339399(n+1)²)]`
-/

namespace A340203.P16781414818056369998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A339399 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340203.P16781414818056369998

/-! ## A340203.P7930344160508740567

`∑[A064911(2*A339399(n+1))]`
-/

namespace A340203.P7930344160508740567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * A339399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340203.P7930344160508740567

/-! ## A340203.P7387559352372882933

`∑[abs(A143519(A339399(n+1)²))]`
-/

namespace A340203.P7387559352372882933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143519 (A339399 (n + 1) ^ 2).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340203.P7387559352372882933

/-! ## A340203.P7134636712514097668

`∑[A010051(A097283(n+1)-A000035(n))]`
-/

namespace A340203.P7134636712514097668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A097283 (n + 1) - A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340203.P7134636712514097668

/-!
# A340205: Number of primes in A339443 among the values of A339443(k) for k = 1..n.

The programs for A340205, there is no canonical definition to state claims against.
-/

/-! ## A340205.P6570315489379113225

`∑[A350866(xor(1, n)+1)]`
-/

namespace A340205.P6570315489379113225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350866 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340205.P6570315489379113225

/-! ## A340205.P13654153175102939531

`∑[A350866(n-Δ[or(1, -n)])]`
-/

namespace A340205.P13654153175102939531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350866 ((n : ℤ) - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340205.P13654153175102939531

/-! ## A340205.P17086980025723962195

`∑[A350866(round(xor(3, 2*n)/2))]`
-/

namespace A340205.P17086980025723962195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350866 (SequenceMachineLib.roundAway ((Nat.xor 3 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340205.P17086980025723962195

/-! ## A340205.P5684438006655230064

`∑[A350866((-1)^n+n+1)]`
-/

namespace A340205.P5684438006655230064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350866 ((-1) ^ n + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340205.P5684438006655230064

/-! ## A340205.P11798964562538758495

`∑[A010051(A339443(n+1))]`
-/

namespace A340205.P11798964562538758495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A339443 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340205.P11798964562538758495

/-!
# A340206: Constant whose decimal expansion is the concatenation of the smallest n-digit square A061432(n), for n = 1, 2, 3, ...

The programs for A340206, there is no canonical definition to state claims against.
-/

/-! ## A340206.P13406850791847149411

`A028609(A180813(n+1)*A217009(n+1))`
-/

namespace A340206.P13406850791847149411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 (A180813 (n + 1) * A217009 (n + 1)).toNat

end

end A340206.P13406850791847149411

/-! ## A340206.P13412964551793454940

`A127093(A256011(n+1)^A072233(n))`
-/

namespace A340206.P13412964551793454940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (SequenceMachineLib.roundAway ((A256011 (n + 1) : ℚ) ^ (A072233 n : ℤ))).toNat

end

end A340206.P13412964551793454940

/-! ## A340206.P9278131626905660155

`and(A163842(n), A323166(A267604(n)))`
-/

namespace A340206.P9278131626905660155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163842 n) (A323166 (A267604 n).toNat)

end

end A340206.P9278131626905660155

/-! ## A340206.P8758246724257533251

`A122865(A083856(n)*A252433(2*(n+1)))`
-/

namespace A340206.P8758246724257533251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (A083856 n * A252433 (2 * (n + 1))).toNat

end

end A340206.P8758246724257533251

/-! ## A340206.P13086598484508736213

`and(A080927(A263744(n+1)), A104611(n+1))`
-/

namespace A340206.P13086598484508736213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080927 (A263744 (n + 1)).toNat) (A104611 (n + 1))

end

end A340206.P13086598484508736213

/-!
# A340208: Constant whose decimal expansion is the concatenation of the smallest n-digit cube A061434(n), for n = 1, 2, 3, ...

The programs for A340208, there is no canonical definition to state claims against.
-/

/-! ## A340208.P3867809254111847913

`A166311(n+1)%A060804(A059242(n+1))`
-/

namespace A340208.P3867809254111847913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166311 (n + 1)) (A060804 (A059242 (n + 1)).toNat)

end

end A340208.P3867809254111847913

/-!
# A340215: Consider constructing binary words that begin with 0 such that the subword 00, whenever it appears, is followed by 111. Then a(n) counts such words at length n (including those where the string 111 is yet being completed - see Example).

The programs for A340215, the canonical program `A340215.P8583781060442723777` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340215 has offset 1).

The definition of A340215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340215.P8583781060442723777

`a(n-1)+a(n-2)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=8`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A340215

/-- `a(n-1)+a(n-2)+a(n-5)` -/
def P8583781060442723777.Spec : Prop :=
  ∀ n, (P8583781060442723777.a n : ℤ) = A340215 (n + 1)

theorem P8583781060442723777.correct : P8583781060442723777.Spec := by
  intro n
  simp only [A340215, Nat.add_sub_cancel]

end A340215

/-! ## A340215.P2625126190289009665

`Δ[A340217(n+1)]`
-/

namespace A340215.P2625126190289009665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340215.P2625126190289009665

namespace A340215

/-- `Δ[A340217(n+1)]` -/
def P2625126190289009665.Spec : Prop :=
  ∀ n, P2625126190289009665.a n = A340215 (n + 1)

end A340215

/-! ## A340215.P9144753545847337385

`A340217(n+2)-A340217(n+1)`
-/

namespace A340215.P9144753545847337385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340217 (n + 2) - A340217 (n + 1)

end

end A340215.P9144753545847337385

namespace A340215

/-- `A340217(n+2)-A340217(n+1)` -/
def P9144753545847337385.Spec : Prop :=
  ∀ n, P9144753545847337385.a n = A340215 (n + 1)

end A340215

/-! ## A340215.P3742706888516484948

`Δ[A164421(n+4)-A164477(n+4)]`
-/

namespace A340215.P3742706888516484948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164421 (n + 4) - A164477 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340215.P3742706888516484948

namespace A340215

/-- `Δ[A164421(n+4)-A164477(n+4)]` -/
def P3742706888516484948.Spec : Prop :=
  ∀ n, P3742706888516484948.a n = A340215 (n + 1)

end A340215

/-! ## A340215.P3724234537806288911

`Δ[Δ[A164477(n+4)-A020718(n+1)]]`
-/

namespace A340215.P3724234537806288911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164477 (n + 4) - A020718 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340215.P3724234537806288911

namespace A340215

/-- `Δ[Δ[A164477(n+4)-A020718(n+1)]]` -/
def P3724234537806288911.Spec : Prop :=
  ∀ n, P3724234537806288911.a n = A340215 (n + 1)

end A340215

/-! ## A340215.P8085152399290352961

`Δ[A164477(n+7)%A020718(n+3)]`
-/

namespace A340215.P8085152399290352961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164477 (n + 7)) (A020718 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340215.P8085152399290352961

namespace A340215

/-- `Δ[A164477(n+7)%A020718(n+3)]` -/
def P8085152399290352961.Spec : Prop :=
  ∀ n, P8085152399290352961.a n = A340215 (n + 1)

end A340215

/-! ## A340215.P17162090014159146058

`Δ[Δ[A020718(n+5)]%A020718(n+3)]`
-/

namespace A340215.P17162090014159146058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A020718 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340215.P17162090014159146058

namespace A340215

/-- `Δ[Δ[A020718(n+5)]%A020718(n+3)]` -/
def P17162090014159146058.Spec : Prop :=
  ∀ n, P17162090014159146058.a n = A340215 (n + 1)

end A340215

/-!
# A340217: Consider binary words that begin with 1 such that the subword 00, whenever it appears, is followed by 111. Then a(n) counts such words at length n (including those where the string 111 is yet being completed - see Example).

The programs for A340217, the canonical program `A340217.P2153981731815315490` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340217 has offset 1).

The definition of A340217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340217.P2153981731815315490

`a(n-1)+a(n-2)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=12`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A340217

/-- `a(n-1)+a(n-2)+a(n-5)` -/
def P2153981731815315490.Spec : Prop :=
  ∀ n, (P2153981731815315490.a n : ℤ) = A340217 (n + 1)

theorem P2153981731815315490.correct : P2153981731815315490.Spec := by
  intro n
  simp only [A340217, Nat.add_sub_cancel]

end A340217

/-! ## A340217.P15578294604711073147

`A340215(n)+a(n-1)` with `a(0)=1`
-/

namespace A340217.P15578294604711073147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A340215 n + a (n - 1)

end

end A340217.P15578294604711073147

namespace A340217

/-- `A340215(n)+a(n-1)` -/
def P15578294604711073147.Spec : Prop :=
  ∀ n, P15578294604711073147.a n = A340217 (n + 1)

end A340217

/-! ## A340217.P1261325883526269208

`∑[A340215(round(sqrt(n²+1)))]`
-/

namespace A340217.P1261325883526269208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340217.P1261325883526269208

namespace A340217

/-- `∑[A340215(round(sqrt(n²+1)))]` -/
def P1261325883526269208.Spec : Prop :=
  ∀ n, P1261325883526269208.a n = A340217 (n + 1)

end A340217

/-! ## A340217.P2687445189009570478

`abs(1-∑[A340215(abs(1-n)+1)])`
-/

namespace A340217.P2687445189009570478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A340217.P2687445189009570478

namespace A340217

/-- `abs(1-∑[A340215(abs(1-n)+1)])` -/
def P2687445189009570478.Spec : Prop :=
  ∀ n, P2687445189009570478.a n = A340217 (n + 1)

end A340217

/-! ## A340217.P10402419038834977996

`∑[A340215(n+1)]+1-A340215(n+1)`
-/

namespace A340217.P10402419038834977996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A340215 (n + 1))

end

end A340217.P10402419038834977996

namespace A340217

/-- `∑[A340215(n+1)]+1-A340215(n+1)` -/
def P10402419038834977996.Spec : Prop :=
  ∀ n, P10402419038834977996.a n = A340217 (n + 1)

end A340217

/-! ## A340217.P7562498085091399814

`A164421(n+4)+1-A164477(n+4)`
-/

namespace A340217.P7562498085091399814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164421 (n + 4) + (1 - A164477 (n + 4))

end

end A340217.P7562498085091399814

namespace A340217

/-- `A164421(n+4)+1-A164477(n+4)` -/
def P7562498085091399814.Spec : Prop :=
  ∀ n, P7562498085091399814.a n = A340217 (n + 1)

end A340217

/-!
# A340219: Constant whose decimal expansion is the concatenation of the smallest n-digit prime A003617(n), for n = 1, 2, 3, ...

The programs for A340219, there is no canonical definition to state claims against.
-/

/-! ## A340219.P17334615429192141015

`C(A144806(n), A035933(A084938(n)))`
-/

namespace A340219.P17334615429192141015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144806 (n + 1)).toNat (A035933 (A084938 n).toNat).toNat

end

end A340219.P17334615429192141015

/-! ## A340219.P11522956634884792642

`C(A364492(2*(n+1)), A007623(A370432(n)))`
-/

namespace A340219.P11522956634884792642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A364492 (2 * (n + 1))).toNat (A007623 (A370432 n).toNat).toNat

end

end A340219.P11522956634884792642

/-!
# A340221: Constant whose decimal expansion is the concatenation of the smallest n-digit semiprime A098449(n), for n = 1, 2, 3, ...

The programs for A340221, there is no canonical definition to state claims against.
-/

/-! ## A340221.P14691947539117902770

`A278511(A325535(3*n+4))%A040891(n)`
-/

namespace A340221.P14691947539117902770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278511 (A325535 (3 * n + 4)).toNat) (A040891 n)

end

end A340221.P14691947539117902770

/-!
# A340224: a(n+1) = a(n-a(n)*(a(n)-1)/2) + 1, starting with a(1) = 0.

The programs for A340224, the canonical program `A340224.P13960037969082595013` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340224 has offset 1).

The definition of A340224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340224.P13960037969082595013

`a(n-(C(a(n-1), 2)+1))+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A340224

/-- `a(n-(C(a(n-1), 2)+1))+1` -/
def P13960037969082595013.Spec : Prop :=
  ∀ n, (P13960037969082595013.a n : ℤ) = A340224 (n + 1)

theorem P13960037969082595013.correct : P13960037969082595013.Spec := by
  intro n
  simp only [A340224, Nat.add_sub_cancel]

end A340224

/-! ## A340224.P3798759817739739002

`a(n-A152947(a(n-1)+1))+1` with `a(0)=0`
-/

namespace A340224.P3798759817739739002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A152947 (a (n - 1) + 1)).toNat + 1

end

end A340224.P3798759817739739002

namespace A340224

/-- `a(n-A152947(a(n-1)+1))+1` -/
def P3798759817739739002.Spec : Prop :=
  ∀ n, (P3798759817739739002.a n : ℤ) = A340224 (n + 1)

end A340224

/-! ## A340224.P3819769158184632557

`a(n-1-C(a(A023443(n)), 2))+1` with `a(0)=0`
-/

namespace A340224.P3819769158184632557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - 1 - (Nat.choose (a (A023443 n).toNat) 2 : ℤ)).toNat + 1

end

end A340224.P3819769158184632557

namespace A340224

/-- `a(n-1-C(a(A023443(n)), 2))+1` -/
def P3819769158184632557.Spec : Prop :=
  ∀ n, (P3819769158184632557.a n : ℤ) = A340224 (n + 1)

end A340224

/-! ## A340224.P14555417932669991602

`A086288(4^A053828(n))`
-/

namespace A340224.P14555417932669991602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086288 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A053828 n : ℤ))).toNat

end

end A340224.P14555417932669991602

namespace A340224

/-- `A086288(4^A053828(n))` -/
def P14555417932669991602.Spec : Prop :=
  ∀ n, P14555417932669991602.a n = A340224 (n + 1)

end A340224

/-! ## A340224.P16691396625663241223

`A001222(A306612(n+1)-A064298(n+5))`
-/

namespace A340224.P16691396625663241223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A306612 (n + 1) - A064298 (n + 5)).toNat

end

end A340224.P16691396625663241223

namespace A340224

/-- `A001222(A306612(n+1)-A064298(n+5))` -/
def P16691396625663241223.Spec : Prop :=
  ∀ n, P16691396625663241223.a n = A340224 (n + 1)

end A340224

/-!
# A340225: Primes p such that 2*p+q and 2*p+r are prime, where q and r are the next two primes after p.

The programs for A340225, there is no canonical definition to state claims against.
-/

/-! ## A340225.P8925709392865980553

`A065091(eq[2, A340210(n+1)])`
-/

namespace A340225.P8925709392865980553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340225.P8925709392865980553

/-!
# A340227: Number of pairs of divisors of n, (d1,d2), such that d1 < d2 and d1*d2 is squarefree.

The programs for A340227, the canonical program `A340227.P47039189013440188` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340227 has offset 1).

The definition of A340227 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074816, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340227.P47039189013440188

`(A074816(n+1)-1)/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A340227

/-- `(A074816(n+1)-1)/2` -/
def P47039189013440188.Spec : Prop :=
  ∀ n, P47039189013440188.a n = (A340227 (n + 1) : ℚ)

end A340227

/-! ## A340227.P6468378316221682341

`floor(3^∑{p}[n+1, gcd(n, #)]/2)`
-/

namespace A340227.P6468378316221682341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) : ℚ) / 2⌋

end

end A340227.P6468378316221682341

namespace A340227

/-- `floor(3^∑{p}[n+1, gcd(n, #)]/2)` -/
def P6468378316221682341.Spec : Prop :=
  ∀ n, P6468378316221682341.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P18164934129193998467

`floor(3^∑{p}[n+1, ceil(1/#)]/2)`
-/

namespace A340227.P18164934129193998467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ : ℤ) / 2⌋

end

end A340227.P18164934129193998467

namespace A340227

/-- `floor(3^∑{p}[n+1, ceil(1/#)]/2)` -/
def P18164934129193998467.Spec : Prop :=
  ∀ n, P18164934129193998467.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P6136513747170759191

`floor(3^round(∑{e}[n+1, #+n]/(n+1))/2)`
-/

namespace A340227.P6136513747170759191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + n) : ℕ) : ℚ) / (n + 1 : ℚ)) : ℤ) / 2⌋

end

end A340227.P6136513747170759191

namespace A340227

/-- `floor(3^round(∑{e}[n+1, #+n]/(n+1))/2)` -/
def P6136513747170759191.Spec : Prop :=
  ∀ n, P6136513747170759191.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P3284728968895687272

`A063647(∏{p}[n+1, #])`
-/

namespace A340227.P3284728968895687272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A340227.P3284728968895687272

namespace A340227

/-- `A063647(∏{p}[n+1, #])` -/
def P3284728968895687272.Spec : Prop :=
  ∀ n, P3284728968895687272.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P10806548276030088928

`A063647(A007947(n+1))`
-/

namespace A340227.P10806548276030088928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A007947 (n + 1)).toNat

end

end A340227.P10806548276030088928

namespace A340227

/-- `A063647(A007947(n+1))` -/
def P10806548276030088928.Spec : Prop :=
  ∀ n, P10806548276030088928.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P10727886070605555978

`A001065(A074816(n+1))`
-/

namespace A340227.P10727886070605555978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A074816 (n + 1)).toNat

end

end A340227.P10727886070605555978

namespace A340227

/-- `A001065(A074816(n+1))` -/
def P10727886070605555978.Spec : Prop :=
  ∀ n, P10727886070605555978.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P12477738986285207123

`A063647(A292586(n+1))`
-/

namespace A340227.P12477738986285207123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A292586 (n + 1)).toNat

end

end A340227.P12477738986285207123

namespace A340227

/-- `A063647(A292586(n+1))` -/
def P12477738986285207123.Spec : Prop :=
  ∀ n, P12477738986285207123.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P16913766903772875234

`A046079(A328915(n+1))`
-/

namespace A340227.P16913766903772875234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A328915 (n + 1)).toNat

end

end A340227.P16913766903772875234

namespace A340227

/-- `A046079(A328915(n+1))` -/
def P16913766903772875234.Spec : Prop :=
  ∀ n, P16913766903772875234.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P10063050244816814614

`A063647(A329607(n+1))`
-/

namespace A340227.P10063050244816814614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A329607 (n + 1)).toNat

end

end A340227.P10063050244816814614

namespace A340227

/-- `A063647(A329607(n+1))` -/
def P10063050244816814614.Spec : Prop :=
  ∀ n, P10063050244816814614.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P11971228690675077987

`A179526(n)%A074816(n+1)`
-/

namespace A340227.P11971228690675077987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179526 n) (A074816 (n + 1))

end

end A340227.P11971228690675077987

namespace A340227

/-- `A179526(n)%A074816(n+1)` -/
def P11971228690675077987.Spec : Prop :=
  ∀ n, P11971228690675077987.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P13916328978990827353

`A046079(A328878(n+1))`
-/

namespace A340227.P13916328978990827353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A328878 (n + 1)).toNat

end

end A340227.P13916328978990827353

namespace A340227

/-- `A046079(A328878(n+1))` -/
def P13916328978990827353.Spec : Prop :=
  ∀ n, P13916328978990827353.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P18068997038936181435

`floor(∏{e}[∏{p}[n+1, #²], #+1]/2)`
-/

namespace A340227.P18068997038936181435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋

end

end A340227.P18068997038936181435

namespace A340227

/-- `floor(∏{e}[∏{p}[n+1, #²], #+1]/2)` -/
def P18068997038936181435.Spec : Prop :=
  ∀ n, P18068997038936181435.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P15193636816501395924

`floor(∏{e}[(n+1)², xor(2, (-1)^#)]/2)`
-/

namespace A340227.P15193636816501395924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), Int.xor 2 ((-1) ^ Nat.factorization (f1 n) p) : ℤ) : ℚ) / 2⌋

end

end A340227.P15193636816501395924

namespace A340227

/-- `floor(∏{e}[(n+1)², xor(2, (-1)^#)]/2)` -/
def P15193636816501395924.Spec : Prop :=
  ∀ n, P15193636816501395924.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P4318006136258629546

`A063647(A273258(n+1))`
-/

namespace A340227.P4318006136258629546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A273258 (n + 1)).toNat

end

end A340227.P4318006136258629546

namespace A340227

/-- `A063647(A273258(n+1))` -/
def P4318006136258629546.Spec : Prop :=
  ∀ n, P4318006136258629546.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P7513076513506306724

`A052993(n)%A074816(n+1)`
-/

namespace A340227.P7513076513506306724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052993 n) (A074816 (n + 1))

end

end A340227.P7513076513506306724

namespace A340227

/-- `A052993(n)%A074816(n+1)` -/
def P7513076513506306724.Spec : Prop :=
  ∀ n, P7513076513506306724.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P14352200493554529548

`A004526(A000005(A007947(n+1)²))`
-/

namespace A340227.P14352200493554529548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (A007947 (n + 1) ^ 2).toNat).toNat

end

end A340227.P14352200493554529548

namespace A340227

/-- `A004526(A000005(A007947(n+1)²))` -/
def P14352200493554529548.Spec : Prop :=
  ∀ n, P14352200493554529548.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P8086813304014400469

`A003462(n)%A074816(n+1)`
-/

namespace A340227.P8086813304014400469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003462 n) (A074816 (n + 1))

end

end A340227.P8086813304014400469

namespace A340227

/-- `A003462(n)%A074816(n+1)` -/
def P8086813304014400469.Spec : Prop :=
  ∀ n, P8086813304014400469.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P9388629559942344626

`A097187(n)%A074816(n+1)`
-/

namespace A340227.P9388629559942344626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097187 n) (A074816 (n + 1))

end

end A340227.P9388629559942344626

namespace A340227

/-- `A097187(n)%A074816(n+1)` -/
def P9388629559942344626.Spec : Prop :=
  ∀ n, P9388629559942344626.a n = A340227 (n + 1)

end A340227

/-! ## A340227.P3501675684650907153

`A261547(n)%A074816(n+1)`
-/

namespace A340227.P3501675684650907153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261547 n) (A074816 (n + 1))

end

end A340227.P3501675684650907153

namespace A340227

/-- `A261547(n)%A074816(n+1)` -/
def P3501675684650907153.Spec : Prop :=
  ∀ n, P3501675684650907153.a n = A340227 (n + 1)

end A340227

/-!
# A340228: a(n) is the sum of the lengths of all the segments used to draw a rectangle of height 2^(n-1) and width n divided into 2^(n-1) rectangles of unit height, in turn, divided into rectangles of unit height and lengths corresponding to the parts of the compositions of n.

The programs for A340228, the canonical program `A340228.P8786269033953431086` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340228 has offset 1).

The definition of A340228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340228.P8786269033953431086

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=4, a(1)=11, a(2)=27, a(3)=64`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A340228

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P8786269033953431086.Spec : Prop :=
  ∀ n, P8786269033953431086.a n = A340228 (n + 1)

theorem P8786269033953431086.correct : P8786269033953431086.Spec := by
  intro n
  simp only [A340228, Nat.add_sub_cancel]

end A340228

/-! ## A340228.P4701876992334573548

`(n+2)*3*2^(n-1)+n+1`
-/

namespace A340228.P4701876992334573548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + (n + 1 : ℚ)

end

end A340228.P4701876992334573548

namespace A340228

/-- `(n+2)*3*2^(n-1)+n+1` -/
def P4701876992334573548.Spec : Prop :=
  ∀ n, P4701876992334573548.a n = (A340228 (n + 1) : ℚ)

end A340228

/-! ## A340228.P8711317721329615828

`Δ[A048474(n)+∑[n]]`
-/

namespace A340228.P8711317721329615828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048474 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340228.P8711317721329615828

namespace A340228

/-- `Δ[A048474(n)+∑[n]]` -/
def P8711317721329615828.Spec : Prop :=
  ∀ n, P8711317721329615828.a n = A340228 (n + 1)

end A340228

/-! ## A340228.P17195984944230502872

`Δ[A036542(n)+∑[n+1]]`
-/

namespace A340228.P17195984944230502872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036542 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340228.P17195984944230502872

namespace A340228

/-- `Δ[A036542(n)+∑[n+1]]` -/
def P17195984944230502872.Spec : Prop :=
  ∀ n, P17195984944230502872.a n = A340228 (n + 1)

end A340228

/-! ## A340228.P1195443080047746185

`Δ[∑[n]+n*A042950(n)]`
-/

namespace A340228.P1195443080047746185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (n : ℤ) * A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340228.P1195443080047746185

namespace A340228

/-- `Δ[∑[n]+n*A042950(n)]` -/
def P1195443080047746185.Spec : Prop :=
  ∀ n, P1195443080047746185.a n = A340228 (n + 1)

end A340228

/-! ## A340228.P8866078355733516214

`(A128543(n+2)+2*(n+1))/2`
-/

namespace A340228.P8866078355733516214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128543 (n + 2) + (2 * (n + 1) : ℤ) : ℚ) / 2

end

end A340228.P8866078355733516214

namespace A340228

/-- `(A128543(n+2)+2*(n+1))/2` -/
def P8866078355733516214.Spec : Prop :=
  ∀ n, P8866078355733516214.a n = (A340228 (n + 1) : ℚ)

end A340228

/-! ## A340228.P4585588446485612277

`Δ[A000124(n)+3*A005183(n)]`
-/

namespace A340228.P4585588446485612277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + 3 * A005183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340228.P4585588446485612277

namespace A340228

/-- `Δ[A000124(n)+3*A005183(n)]` -/
def P4585588446485612277.Spec : Prop :=
  ∀ n, P4585588446485612277.a n = A340228 (n + 1)

end A340228

/-! ## A340228.P11017908686927494072

`Δ[A000217(n)+3*A005183(n)]`
-/

namespace A340228.P11017908686927494072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 3 * A005183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340228.P11017908686927494072

namespace A340228

/-- `Δ[A000217(n)+3*A005183(n)]` -/
def P11017908686927494072.Spec : Prop :=
  ∀ n, P11017908686927494072.a n = A340228 (n + 1)

end A340228

/-!
# A340230: a(n) is the smallest number m such that numbers m, m + 1, m + 2, ..., m + n - 1 have k, 2*k, 4*k, 8*k, ..., (2^(n-1))*k divisors respectively.

The programs for A340230, there is no canonical definition to state claims against.
-/

/-! ## A340230.P9679622240805375522

`A100366(n+1)^floor(atan(n))`
-/

namespace A340230.P9679622240805375522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100366 (n + 1) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A340230.P9679622240805375522

/-! ## A340230.P14837162287340519215

`A100366(n+1)^A102669(n)`
-/

namespace A340230.P14837162287340519215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100366 (n + 1) : ℚ) ^ (A102669 n : ℤ)

end

end A340230.P14837162287340519215

/-! ## A340230.P1033075430678300344

`gcd(A060396(n), A100366(n+1))`
-/

namespace A340230.P1033075430678300344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060396 n) (A100366 (n + 1))

end

end A340230.P1033075430678300344

/-!
# A340231: Numbers of the form m^2-4 and also equal to some k concatenated with k+1.

The programs for A340231, there is no canonical definition to state claims against.
-/

/-! ## A340231.P16536717902522794665

`A115439(n+1)²-4`
-/

namespace A340231.P16536717902522794665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115439 (n + 1) ^ 2 - 4

end

end A340231.P16536717902522794665

/-! ## A340231.P18103818720532991420

`(A116315(n+1)+1)²-4`
-/

namespace A340231.P18103818720532991420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116315 (n + 1) + 1) ^ 2 - 4

end

end A340231.P18103818720532991420

/-! ## A340231.P1318132410428510392

`(A116297(n+1)+2)²-4`
-/

namespace A340231.P1318132410428510392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116297 (n + 1) + 2) ^ 2 - 4

end

end A340231.P1318132410428510392

/-! ## A340231.P4082764050494265389

`(A115439(n+1)+2)*A116297(n+1)`
-/

namespace A340231.P4082764050494265389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115439 (n + 1) + 2) * A116297 (n + 1)

end

end A340231.P4082764050494265389

/-! ## A340231.P9068120122988100961

`(A116315(n+1)+3)*A116297(n+1)`
-/

namespace A340231.P9068120122988100961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116315 (n + 1) + 3) * A116297 (n + 1)

end

end A340231.P9068120122988100961

/-!
# A340232: a(n) is the least number with exactly 2*n bi-unitary divisors.

The programs for A340232, there is no canonical definition to state claims against.
-/

/-! ## A340232.P14568904521052493622

`A286580(A083420(n)-n*gcd(2, n))`
-/

namespace A340232.P14568904521052493622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286580 (A083420 n - (n * Nat.gcd 2 n : ℤ)).toNat

end

end A340232.P14568904521052493622

/-! ## A340232.P6104565281094250844

`A005843(A084221(n*A265745(n)))`
-/

namespace A340232.P6104565281094250844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A084221 ((n : ℤ) * A265745 n).toNat).toNat

end

end A340232.P6104565281094250844

/-! ## A340232.P7408753398134280237

`A005843(A084221(n)^A265745(n))`
-/

namespace A340232.P7408753398134280237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A084221 n : ℚ) ^ (A265745 n : ℤ))).toNat

end

end A340232.P7408753398134280237

/-!
# A340233: a(n) is the least number with exactly n exponential divisors.

The programs for A340233, there is no canonical definition to state claims against.
-/

/-! ## A340233.P11977555304758987213

`A193551(A005179(n+1))²`
-/

namespace A340233.P11977555304758987213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193551 (A005179 (n + 1)).toNat ^ 2

end

end A340233.P11977555304758987213

/-! ## A340233.P8897117804000650976

`A361418(A005179(n+1)-1)`
-/

namespace A340233.P8897117804000650976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361418 (A005179 (n + 1) - 1).toNat

end

end A340233.P8897117804000650976

/-!
# A340234: Number of harmonious graphs with n edges and at most n vertices, allowing self-loops.

The programs for A340234, there is no canonical definition to state claims against.
-/

/-! ## A340234.P8310949625843552570

`sqrt(∑[∑[char[2*n]]]^(n+1))`
-/

namespace A340234.P8310949625843552570
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1) : ℕ) : ℝ)

end

end A340234.P8310949625843552570

/-! ## A340234.P1383440154846957877

`sqrt(∑[∑[(n+1)%2]])^(n+1)`
-/

namespace A340234.P1383440154846957877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (n + 1)

end

end A340234.P1383440154846957877

/-! ## A340234.P14577985356642803906

`∑[∑[log2(gcd(2, n))]]^((n-1)/2+1)`
-/

namespace A340234.P14577985356642803906
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (((n : ℤ) - 1 : ℚ) / 2 + 1 : ℝ)

end

end A340234.P14577985356642803906

/-! ## A340234.P1508257802278259647

`∑[a(n-2)+1]^((n+1)/2)` with `a(0)=1, a(1)=1`
-/

namespace A340234.P1508257802278259647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ)

end

end A340234.P1508257802278259647

/-! ## A340234.P9142652266775953987

`∑[and(n, -2)/2+1]^((n+1)/2)`
-/

namespace A340234.P9142652266775953987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-2) : ℚ) / 2 + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ)

end

end A340234.P9142652266775953987

/-!
# A340237: Odd composite integers m such that A052918(3*m-J(m,29)) == 5 (mod m), where J(m,29) is the Jacobi symbol.

The programs for A340237, there is no canonical definition to state claims against.
-/

/-! ## A340237.P9729685936827719925

`∩[A039008(n+1), A339726(n+1)]`
-/

namespace A340237.P9729685936827719925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340237.P9729685936827719925

/-! ## A340237.P14721192598372638295

`A339726(lt[A339735(n+4), A339709(n)])`
-/

namespace A340237.P14721192598372638295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339735 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339726 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340237.P14721192598372638295

/-! ## A340237.P8559188525888144684

`A339726(eq[A271766(n+6), A324832(3*n+2)])`
-/

namespace A340237.P8559188525888144684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271766 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324832 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339726 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340237.P8559188525888144684

/-!
# A340241: Odd composite integers m such that A004187(3*m-J(m,45)) == 7*J(m,45) (mod m) and gcd(m,45)=1, where J(m,45) is the Jacobi symbol.

The programs for A340241, there is no canonical definition to state claims against.
-/

/-! ## A340241.P16103884533824601151

`A339730(eq[A005136(n), A029205(n)])`
-/

namespace A340241.P16103884533824601151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339730 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340241.P16103884533824601151

/-!
# A340242: Square array read by upward antidiagonals: T(n,k) is the number of n-ary strings of length k containing 000.

The programs for A340242, there is no canonical definition to state claims against.
-/

/-! ## A340242.P17325108368009127114

`A340156(n+2)+A010894(A098473(n))`
-/

namespace A340242.P17325108368009127114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340156 (n + 2) + A010894 ((A098473 n).toNat + 21)

end

end A340242.P17325108368009127114

/-! ## A340242.P2142591281814945778

`A340156(n+2)+A186741(A005703(n))`
-/

namespace A340242.P2142591281814945778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340156 (n + 2) + A186741 (A005703 n).toNat

end

end A340242.P2142591281814945778

/-! ## A340242.P16679040577384521538

`A340156(n+2)+A010054(A262267(n+1))`
-/

namespace A340242.P16679040577384521538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340156 (n + 2) + A010054 (A262267 (n + 1)).toNat

end

end A340242.P16679040577384521538

/-! ## A340242.P3633480755423821589

`A340156(n+2)+A305821(A061978(n+1))`
-/

namespace A340242.P3633480755423821589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340156 (n + 2) + A305821 (A061978 (n + 1)).toNat

end

end A340242.P3633480755423821589

/-! ## A340242.P645183678164414825

`A340156(n+2)+A162641(A209684(n+1))`
-/

namespace A340242.P645183678164414825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340156 (n + 2) + A162641 (A209684 (n + 1)).toNat

end

end A340242.P645183678164414825

/-!
# A340243: a(n) = denominator((2*n-1)*zeta(2*n)/Pi^(2*n)).

The programs for A340243, there is no canonical definition to state claims against.
-/

/-! ## A340243.P7799994846351730421

`A002432(n)/or(1, A004275(n))`
-/

namespace A340243.P7799994846351730421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002432 n : ℚ) / (Int.lor 1 (A004275 n) : ℚ)

end

end A340243.P7799994846351730421

/-! ## A340243.P12028577932379493623

`A002432(n)/A026780(A000124(n))`
-/

namespace A340243.P12028577932379493623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002432 n : ℚ) / (A026780 (A000124 n).toNat : ℚ)

end

end A340243.P12028577932379493623

/-! ## A340243.P13950002481569733532

`A002432(n)/A028310(A004273(n))`
-/

namespace A340243.P13950002481569733532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002432 n : ℚ) / (A028310 (A004273 n).toNat : ℚ)

end

end A340243.P13950002481569733532

/-! ## A340243.P15982459603449578080

`A002432(n)/A065033(A111284(n+1))`
-/

namespace A340243.P15982459603449578080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002432 n : ℚ) / (A065033 (A111284 (n + 1)).toNat : ℚ)

end

end A340243.P15982459603449578080

/-!
# A340244: Wythoff-B array read by antidiagonals.

The programs for A340244, there is no canonical definition to state claims against.
-/

/-! ## A340244.P6914388891956879525

`A341260(n+1)+A035513(∑[A035214(n)])`
-/

namespace A340244.P6914388891956879525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341260 (n + 1) + A035513 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A340244.P6914388891956879525

/-! ## A340244.P5336212179250867683

`A341260(n+1)+A035513(A014132(n+1))`
-/

namespace A340244.P5336212179250867683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341260 (n + 1) + A035513 (A014132 (n + 1)).toNat

end

end A340244.P5336212179250867683

/-! ## A340244.P3388074749428359205

`A341260(n+1)+A035513(eq[1, A035214(n)])`
-/

namespace A340244.P3388074749428359205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341260 (n + 1) + A035513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340244.P3388074749428359205

/-! ## A340244.P13970055368380546026

`A035513(n+1)+A341260(n+1)+A287869(n+1)`
-/

namespace A340244.P13970055368380546026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1) + (A341260 (n + 1) + A287869 (n + 1))

end

end A340244.P13970055368380546026

/-!
# A340246: Sum of the smallest parts q of the partitions of n into 4 parts q,r,s,t such that 1 <= q <= r <= s <= t and q + r + s > t.

The programs for A340246, there is no canonical definition to state claims against.
-/

/-! ## A340246.P12960388213875248574

`A024693(A011782(n)-A244048(n+1))`
-/

namespace A340246.P12960388213875248574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024693 (A011782 n - A244048 (n + 1)).toNat

end

end A340246.P12960388213875248574

/-!
# A340247: Sum of the third largest parts r of the partitions of n into 4 parts q,r,s,t such that 1 <= q <= r <= s <= t and q + r + s > t.

The programs for A340247, there is no canonical definition to state claims against.
-/

/-! ## A340247.P12620862634506640784

`A241735(n)-A288377(A032065(n+1))`
-/

namespace A340247.P12620862634506640784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241735 n - A288377 (A032065 (n + 1)).toNat

end

end A340247.P12620862634506640784

/-! ## A340247.P16064958938448692870

`A000041(n)-(A288377(A032065(n+1))+A241736(n))`
-/

namespace A340247.P16064958938448692870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A288377 (A032065 (n + 1)).toNat + A241736 n)

end

end A340247.P16064958938448692870

/-! ## A340247.P4389033288173132510

`A213598(n)-(A288377(A032065(n+1))+A241736(n))`
-/

namespace A340247.P4389033288173132510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - (A288377 (A032065 (n + 1)).toNat + A241736 n)

end

end A340247.P4389033288173132510

/-!
# A340248: Sum of the second largest parts s of the partitions of n into 4 parts q,r,s,t such that 1 <= q <= r <= s <= t and q + r + s > t.

The programs for A340248, there is no canonical definition to state claims against.
-/

/-! ## A340248.P348796058909266389

`A295341(n)+A225099(A133732(n+1))`
-/

namespace A340248.P348796058909266389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A225099 (A133732 (n + 1)).toNat

end

end A340248.P348796058909266389

/-!
# A340250: Lexicographically earliest sequence of distinct nonnegative terms such that for any n >= 0, a(n+1) is obtained by inverting the leftmost binary digit (which is not a leading zero) in a(n) or if this is not possible by inverting the rightmost leading binary zero in a(n).

The programs for A340250, there is no canonical definition to state claims against.
-/

/-! ## A340250.P14073756070796568558

`A303773(comp[11-A329755(n)])`
-/

namespace A340250.P14073756070796568558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A329755 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303773 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A340250.P14073756070796568558

/-! ## A340250.P13113067599585795498

`A303773(comp[A000040(2*n+5)-A005786(n)])`
-/

namespace A340250.P13113067599585795498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 5) - A005786 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303773 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A340250.P13113067599585795498

/-! ## A340250.P12158300290110961132

`A341915(A234613(n)^A196879(n))`
-/

namespace A340250.P12158300290110961132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (SequenceMachineLib.roundAway ((A234613 n : ℚ) ^ (A196879 n : ℤ))).toNat

end

end A340250.P12158300290110961132

/-! ## A340250.P10698459651114214764

`A341915(A234613(n)^A146466(n+1))`
-/

namespace A340250.P10698459651114214764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (SequenceMachineLib.roundAway ((A234613 n : ℚ) ^ (A146466 (n + 1) : ℤ))).toNat

end

end A340250.P10698459651114214764

/-! ## A340250.P10730856530349257963

`A341915(A234613(n)^A340366(n+3))`
-/

namespace A340250.P10730856530349257963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (SequenceMachineLib.roundAway ((A234613 n : ℚ) ^ (A340366 (n + 3) : ℤ))).toNat

end

end A340250.P10730856530349257963

/-!
# A340251: a(n) is the index of the bit that was inverted in A340250(n) to get A340250(n+1).

The programs for A340251, the canonical program `A340251.P9337903050879607244` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340251 has offset 0).

The definition of A340251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340251.P9337903050879607244

`A153036(A142151(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A340251

/-- `A153036(A142151(n))` -/
def P9337903050879607244.Spec : Prop :=
  ∀ n, P9337903050879607244.a n = A340251 n

theorem P9337903050879607244.correct : P9337903050879607244.Spec := by
  intro n
  simp only [A340251]

end A340251

/-! ## A340251.P9516989266191952662

`A000120(A082908(n)-Δ[A006257(n)])`
-/

namespace A340251.P9516989266191952662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A082908 n - (f1 (n + 1) - f1 n)).toNat

end

end A340251.P9516989266191952662

namespace A340251

/-- `A000120(A082908(n)-Δ[A006257(n)])` -/
def P9516989266191952662.Spec : Prop :=
  ∀ n, P9516989266191952662.a n = A340251 n

end A340251

/-! ## A340251.P713195604034694448

`A000120(xor(A036987(n)+n, A054429(n+1)))`
-/

namespace A340251.P713195604034694448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A036987 n + (n : ℤ)) (A054429 (n + 1))).toNat

end

end A340251.P713195604034694448

namespace A340251

/-- `A000120(xor(A036987(n)+n, A054429(n+1)))` -/
def P713195604034694448.Spec : Prop :=
  ∀ n, P713195604034694448.a n = A340251 n

end A340251

/-! ## A340251.P10268456411392061988

`A001222(A145342(n+2)-A145342(and(n, n+1)+1))`
-/

namespace A340251.P10268456411392061988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A145342 (n + 2) - A145342 (Nat.land n (n + 1) + 1)).toNat

end

end A340251.P10268456411392061988

namespace A340251

/-- `A001222(A145342(n+2)-A145342(and(n, n+1)+1))` -/
def P10268456411392061988.Spec : Prop :=
  ∀ n, P10268456411392061988.a n = A340251 n

end A340251

/-! ## A340251.P11601977648210465143

`A000523(xor(A053644(n), A059893(n+1)))`
-/

namespace A340251.P11601977648210465143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.xor (A053644 n) (A059893 (n + 1))).toNat

end

end A340251.P11601977648210465143

namespace A340251

/-- `A000523(xor(A053644(n), A059893(n+1)))` -/
def P11601977648210465143.Spec : Prop :=
  ∀ n, P11601977648210465143.a n = A340251 n

end A340251

/-! ## A340251.P11905033420171840069

`A279209(xor(A340250(n+1), A340250(n)))`
-/

namespace A340251.P11905033420171840069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279209 (Int.xor (A340250 (n + 1)) (A340250 n)).toNat

end

end A340251.P11905033420171840069

namespace A340251

/-- `A279209(xor(A340250(n+1), A340250(n)))` -/
def P11905033420171840069.Spec : Prop :=
  ∀ n, P11905033420171840069.a n = A340251 n

end A340251

/-! ## A340251.P8980784015734295219

`A070939(n+1)-A070939(A080940(2*(n+1)))`
-/

namespace A340251.P8980784015734295219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A070939 (A080940 (2 * (n + 1))).toNat

end

end A340251.P8980784015734295219

namespace A340251

/-- `A070939(n+1)-A070939(A080940(2*(n+1)))` -/
def P8980784015734295219.Spec : Prop :=
  ∀ n, P8980784015734295219.a n = A340251 n

end A340251

/-! ## A340251.P8942564583074560961

`A000523(A059893(2*(n+1))-A053644(2*n+1))`
-/

namespace A340251.P8942564583074560961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A059893 (2 * (n + 1)) - A053644 (2 * n + 1)).toNat

end

end A340251.P8942564583074560961

namespace A340251

/-- `A000523(A059893(2*(n+1))-A053644(2*n+1))` -/
def P8942564583074560961.Spec : Prop :=
  ∀ n, P8942564583074560961.a n = A340251 n

end A340251

/-! ## A340251.P14252494281955615275

`A004257(xor(A129594(n+1), A129594(n))+1)-1`
-/

namespace A340251.P14252494281955615275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (Int.xor (A129594 (n + 1)) (A129594 n) + 1).toNat - 1

end

end A340251.P14252494281955615275

namespace A340251

/-- `A004257(xor(A129594(n+1), A129594(n))+1)-1` -/
def P14252494281955615275.Spec : Prop :=
  ∀ n, P14252494281955615275.a n = A340251 n

end A340251

/-!
# A340252: Numbers whose pairwise products of divisors are all palindromic.

The programs for A340252, there is no canonical definition to state claims against.
-/

/-! ## A340252.P11548701367735670479

`A265522(∑[A344492(n)])`
-/

namespace A340252.P11548701367735670479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A340252.P11548701367735670479

/-! ## A340252.P15283875754948387016

`record[A265522(∑[A265609(n)])]`
-/

namespace A340252.P15283875754948387016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340252.P15283875754948387016

/-! ## A340252.P16319791444302915031

`record[A265522(record[A180562(n)])]`
-/

namespace A340252.P16319791444302915031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340252.P16319791444302915031

/-! ## A340252.P16199528408367941227

`record[A265522(record[A292622(n)])]`
-/

namespace A340252.P16199528408367941227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340252.P16199528408367941227

/-! ## A340252.P14430610925799773634

`A265540(∑[A023422(n+1)])`
-/

namespace A340252.P14430610925799773634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265540 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A340252.P14430610925799773634

/-!
# A340254: Lexicographically earliest sequence of distinct nonnegative terms such that for any n >= 0, a(n+1) is obtained by altering the leftmost decimal digit (which is not a leading zero) in a(n) or if this is not possible by altering the rightmost leading zero in a(n).

The programs for A340254, there is no canonical definition to state claims against.
-/

/-! ## A340254.P9998516968724407632

`record[A106649(n)]%A360006(3*n+1)`
-/

namespace A340254.P9998516968724407632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A360006 (3 * n + 1))

end

end A340254.P9998516968724407632

/-! ## A340254.P11456780934957808338

`A051885(n)%A305429(A080535(n+2))`
-/

namespace A340254.P11456780934957808338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051885 n) (A305429 (A080535 (n + 2)).toNat)

end

end A340254.P11456780934957808338

/-! ## A340254.P4808965515437189959

`record[A106649(n)]%A088184(A193460(n+1))`
-/

namespace A340254.P4808965515437189959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A088184 (A193460 (n + 1)).toNat)

end

end A340254.P4808965515437189959

/-! ## A340254.P3746218517782979504

`(A037124(n+1)-1)%A088184(A193460(n+1))`
-/

namespace A340254.P3746218517782979504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037124 (n + 1) - 1) (A088184 (A193460 (n + 1)).toNat)

end

end A340254.P3746218517782979504

/-! ## A340254.P5133158730861861543

`A004086(A061219(n+1)-1)%A088184(A193460(n+1))`
-/

namespace A340254.P5133158730861861543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A061219 (n + 1) - 1).toNat) (A088184 (A193460 (n + 1)).toNat)

end

end A340254.P5133158730861861543

/-!
# A340257: a(n) = 2^n * (1+n*(n+1)/2).

The programs for A340257, the canonical program `A340257.P4923736256052234749` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340257 has offset 0).

The definition of A340257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340257.P6294790781057703200

`2^n*(1+n*(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340257.P6294790781057703200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (1 + (n : ℚ) * ((n + 1 : ℚ) / 2))

end

end A340257.P6294790781057703200

namespace A340257

/-- `2^n*(1+n*(n+1)/2)` -/
def P6294790781057703200.Spec : Prop :=
  ∀ n, P6294790781057703200.a n = (A340257 n : ℚ)

end A340257

/-! ## A340257.P4923736256052234749

`2*a(n-1)+n*2^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A340257

/-- `2*a(n-1)+n*2^n` -/
def P4923736256052234749.Spec : Prop :=
  ∀ n, (P4923736256052234749.a n : ℤ) = A340257 n

theorem P4923736256052234749.correct : P4923736256052234749.Spec := by
  intro n
  simp only [A340257]

end A340257

/-! ## A340257.P8987852173598124491

`A000079(n)+A001815(n+1)`
-/

namespace A340257.P8987852173598124491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A001815 (n + 1)

end

end A340257.P8987852173598124491

namespace A340257

/-- `A000079(n)+A001815(n+1)` -/
def P8987852173598124491.Spec : Prop :=
  ∀ n, P8987852173598124491.a n = A340257 n

end A340257

/-! ## A340257.P6334465829790302515

`A340298(2^n)`
-/

namespace A340257.P6334465829790302515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340298 (2 ^ n)

end

end A340257.P6334465829790302515

namespace A340257

/-- `A340298(2^n)` -/
def P6334465829790302515.Spec : Prop :=
  ∀ n, P6334465829790302515.a n = A340257 n

end A340257

/-! ## A340257.P13220453438334968272

`∑[(4/n+2)*a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A340257.P13220453438334968272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (4 / (n : ℚ) + 2) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340257.P13220453438334968272

namespace A340257

/-- `∑[(4/n+2)*a(n-1)]` -/
def P13220453438334968272.Spec : Prop :=
  ∀ n, P13220453438334968272.a n = (A340257 n : ℚ)

end A340257

/-! ## A340257.P5602474700314202734

`∑[∑[n+1]*Δ[2*a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A340257.P5602474700314202734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  2 * f3 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340257.P5602474700314202734

namespace A340257

/-- `∑[∑[n+1]*Δ[2*a(n-1)]]` -/
def P5602474700314202734.Spec : Prop :=
  ∀ n, P5602474700314202734.a n = A340257 n

end A340257

/-! ## A340257.P7591645568415961325

`∑[A080929(n)]`
-/

namespace A340257.P7591645568415961325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340257.P7591645568415961325

namespace A340257

/-- `∑[A080929(n)]` -/
def P7591645568415961325.Spec : Prop :=
  ∀ n, P7591645568415961325.a n = A340257 n

end A340257

/-! ## A340257.P10268360455776244101

`A053730(n+1)-2^n`
-/

namespace A340257.P10268360455776244101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053730 (n + 1) - (2 ^ n : ℤ)

end

end A340257.P10268360455776244101

namespace A340257

/-- `A053730(n+1)-2^n` -/
def P10268360455776244101.Spec : Prop :=
  ∀ n, P10268360455776244101.a n = A340257 n

end A340257

/-! ## A340257.P7234373939142708048

`∑[∑[n+1]*A011782(n)]`
-/

namespace A340257.P7234373939142708048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340257.P7234373939142708048

namespace A340257

/-- `∑[∑[n+1]*A011782(n)]` -/
def P7234373939142708048.Spec : Prop :=
  ∀ n, P7234373939142708048.a n = A340257 n

end A340257

/-! ## A340257.P12544544876452805418

`A052482(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A340257.P12544544876452805418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052482 (n + 1) + a (n - 1)

end

end A340257.P12544544876452805418

namespace A340257

/-- `A052482(n+1)+a(n-1)` -/
def P12544544876452805418.Spec : Prop :=
  ∀ n, P12544544876452805418.a n = A340257 n

end A340257

/-! ## A340257.P4192897816880496689

`A036289(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A340257.P4192897816880496689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036289 n + 2 * a (n - 1)

end

end A340257.P4192897816880496689

namespace A340257

/-- `A036289(n)+2*a(n-1)` -/
def P4192897816880496689.Spec : Prop :=
  ∀ n, P4192897816880496689.a n = A340257 n

end A340257

/-! ## A340257.P4313773736539831817

`A134401(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A340257.P4313773736539831817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134401 n + 2 * a (n - 1)

end

end A340257.P4313773736539831817

namespace A340257

/-- `A134401(n)+2*a(n-1)` -/
def P4313773736539831817.Spec : Prop :=
  ∀ n, P4313773736539831817.a n = A340257 n

end A340257

/-! ## A340257.P15787429144170422351

`abs((∑[n]+1)*Δ[A000225(n)]-1)+1`
-/

namespace A340257.P15787429144170422351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * (f2 (n + 1) - f2 n) - 1| + 1

end

end A340257.P15787429144170422351

namespace A340257

/-- `abs((∑[n]+1)*Δ[A000225(n)]-1)+1` -/
def P15787429144170422351.Spec : Prop :=
  ∀ n, P15787429144170422351.a n = A340257 n

end A340257

/-! ## A340257.P15517445903537913956

`A048482(n)+A000225(n)`
-/

namespace A340257.P15517445903537913956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048482 n + A000225 n

end

end A340257.P15517445903537913956

namespace A340257

/-- `A048482(n)+A000225(n)` -/
def P15517445903537913956.Spec : Prop :=
  ∀ n, P15517445903537913956.a n = A340257 n

end A340257

/-! ## A340257.P5015510230818457024

`A052481(n)+A036289(n)`
-/

namespace A340257.P5015510230818457024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052481 n + A036289 n

end

end A340257.P5015510230818457024

namespace A340257

/-- `A052481(n)+A036289(n)` -/
def P5015510230818457024.Spec : Prop :=
  ∀ n, P5015510230818457024.a n = A340257 n

end A340257

/-! ## A340257.P14020211748131893913

`A089658(n)+A081908(n)`
-/

namespace A340257.P14020211748131893913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089658 n + A081908 n

end

end A340257.P14020211748131893913

namespace A340257

/-- `A089658(n)+A081908(n)` -/
def P14020211748131893913.Spec : Prop :=
  ∀ n, P14020211748131893913.a n = A340257 n

end A340257

/-! ## A340257.P9998761723369690797

`A276289(n)+A072863(n)`
-/

namespace A340257.P9998761723369690797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276289 n + A072863 n

end

end A340257.P9998761723369690797

namespace A340257

/-- `A276289(n)+A072863(n)` -/
def P9998761723369690797.Spec : Prop :=
  ∀ n, P9998761723369690797.a n = A340257 n

end A340257

/-! ## A340257.P1982377783459912235

`A084850(n)-A001787(n)`
-/

namespace A340257.P1982377783459912235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084850 n - A001787 n

end

end A340257.P1982377783459912235

namespace A340257

/-- `A084850(n)-A001787(n)` -/
def P1982377783459912235.Spec : Prop :=
  ∀ n, P1982377783459912235.a n = A340257 n

end A340257

/-! ## A340257.P3633376023246295268

`A007466(n+1)+A001815(n)`
-/

namespace A340257.P3633376023246295268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007466 (n + 1) + A001815 n

end

end A340257.P3633376023246295268

namespace A340257

/-- `A007466(n+1)+A001815(n)` -/
def P3633376023246295268.Spec : Prop :=
  ∀ n, P3633376023246295268.a n = A340257 n

end A340257

/-! ## A340257.P14434587852484444121

`A104270(n+1)+A001788(n)`
-/

namespace A340257.P14434587852484444121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (n + 1) + A001788 n

end

end A340257.P14434587852484444121

namespace A340257

/-- `A104270(n+1)+A001788(n)` -/
def P14434587852484444121.Spec : Prop :=
  ∀ n, P14434587852484444121.a n = A340257 n

end A340257

/-!
# A340259: a(n) = A340312(n, 2^(n-1)). a(n) is the central term of row n of A340312.

The programs for A340259, there is no canonical definition to state claims against.
-/

/-! ## A340259.P7176336451751233608

`A340312(A275970(n)+1)`
-/

namespace A340259.P7176336451751233608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340312 (A275970 n + 1).toNat

end

end A340259.P7176336451751233608

/-!
# A340260: T(n, k) = Sum_{j=1..k} [n mod j <> 1], where [] is the Iverson bracket. Table read by rows.

The programs for A340260, there is no canonical definition to state claims against.
-/

/-! ## A340260.P2276229462677004755

`A003056(A083106(n+1)%A265486(n+1))`
-/

namespace A340260.P2276229462677004755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A083106 (n + 1)) (A265486 (n + 1))).toNat

end

end A340260.P2276229462677004755

/-! ## A340260.P13256162651185968123

`A117707(A077581(n+1)%A265486(n+1))`
-/

namespace A340260.P13256162651185968123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (Int.tmod (A077581 (n + 1)) (A265486 (n + 1))).toNat

end

end A340260.P13256162651185968123

/-! ## A340260.P14188407988121034154

`A117707(A077581(n+1))%A288150(n+1)`
-/

namespace A340260.P14188407988121034154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117707 (A077581 (n + 1)).toNat) (A288150 (n + 1))

end

end A340260.P14188407988121034154

/-! ## A340260.P7835283354756947038

`A003056(A077581(n+1))^A217156(n+1)!`
-/

namespace A340260.P7835283354756947038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A077581 (n + 1)).toNat ^ Nat.factorial (A217156 (n + 1)).toNat

end

end A340260.P7835283354756947038

/-! ## A340260.P6986636386703682264

`A003056(A077581(n+1)-A038189(A347974(n)))`
-/

namespace A340260.P6986636386703682264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A077581 (n + 1) - A038189 (A347974 n).toNat).toNat

end

end A340260.P6986636386703682264

/-!
# A340261: T(n, k) is the number of integers that are less than or equal to k that do not divide n. Triangle read by rows, for 0 <= k <= n.

The programs for A340261, there is no canonical definition to state claims against.
-/

/-! ## A340261.P12236756988983708123

`1-C(∑[char[∑[n]]], 2)+n-A243987(n+1)`
-/

namespace A340261.P12236756988983708123
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) - A243987 (n + 1)

end

end A340261.P12236756988983708123

/-! ## A340261.P17817953977641484170

`A002262(1-A243987(n+1)+n)`
-/

namespace A340261.P17817953977641484170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (1 - A243987 (n + 1) + (n : ℤ)).toNat

end

end A340261.P17817953977641484170

/-! ## A340261.P2283503143073276852

`A002260(n+1)-A243987(n+1)`
-/

namespace A340261.P2283503143073276852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A243987 (n + 1)

end

end A340261.P2283503143073276852

/-! ## A340261.P18207318540564683469

`abs(A140756(n+1))-A243987(n+1)`
-/

namespace A340261.P18207318540564683469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)| - A243987 (n + 1)

end

end A340261.P18207318540564683469

/-! ## A340261.P15456132765853645899

`sqrt(A133819(n+1))-A243987(n+1)`
-/

namespace A340261.P15456132765853645899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) - (A243987 (n + 1) : ℝ)

end

end A340261.P15456132765853645899

/-! ## A340261.P8148330982792826587

`∑[2-A130296(n+1)]-A243987(n+1)`
-/

namespace A340261.P8148330982792826587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A243987 (n + 1)

end

end A340261.P8148330982792826587

/-! ## A340261.P713252568366916755

`A002262(n)-A000401(A243987(n+1))`
-/

namespace A340261.P713252568366916755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - A000401 (A243987 (n + 1)).toNat

end

end A340261.P713252568366916755

/-! ## A340261.P5113291755171769846

`A000005(A059268(n))-A243987(n+1)`
-/

namespace A340261.P5113291755171769846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat - A243987 (n + 1)

end

end A340261.P5113291755171769846

/-! ## A340261.P10935295109201655560

`A000120(A099627(n))-A243987(n+1)`
-/

namespace A340261.P10935295109201655560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A099627 n).toNat - A243987 (n + 1)

end

end A340261.P10935295109201655560

/-! ## A340261.P9076870941603244367

`A103406(n)/A007318(n)-A243987(n+1)`
-/

namespace A340261.P9076870941603244367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103406 n : ℚ) / (A007318 n : ℚ) - (A243987 (n + 1) : ℚ)

end

end A340261.P9076870941603244367

/-!
# A340262: T(n, k) = multinomial(n + k/2; n, k/2) if k is even else 0. Triangle read by rows, for 0 <= k <= n.

The programs for A340262, there is no canonical definition to state claims against.
-/

/-! ## A340262.P6095763944846824830

`abs(A053119(A245300(n)))`
-/

namespace A340262.P6095763944846824830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053119 (A245300 n).toNat|

end

end A340262.P6095763944846824830

/-! ## A340262.P12245209880728967332

`A162515(A245300(n)+1)`
-/

namespace A340262.P12245209880728967332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162515 (A245300 n + 1).toNat

end

end A340262.P12245209880728967332

/-! ## A340262.P7726068849921135756

`A168561(A245300(n)+A025581(n))`
-/

namespace A340262.P7726068849921135756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 (A245300 n + A025581 n).toNat

end

end A340262.P7726068849921135756

/-! ## A340262.P4692341147176671910

`gcd(A000038(n), A053119(A245300(n)))`
-/

namespace A340262.P4692341147176671910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A053119 (A245300 n).toNat)

end

end A340262.P4692341147176671910

/-! ## A340262.P4350799560340772930

`lcm(A020985(n), A053119(A245300(n)))`
-/

namespace A340262.P4350799560340772930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A053119 (A245300 n).toNat)

end

end A340262.P4350799560340772930

/-! ## A340262.P15590145244413538260

`∑{d}[A053119(A245300(n)), A000010(#)]`
-/

namespace A340262.P15590145244413538260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A245300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A340262.P15590145244413538260

/-!
# A340264: T(n, k) = Sum_{j=0..k} binomial(n, k - j)*Stirling2(n - k + j, j). Triangle read by rows, 0 <= k <= n.

The programs for A340264, there is no canonical definition to state claims against.
-/

/-! ## A340264.P12880866550827906084

`A013613(n)/A013620(n)*A344855(n)`
-/

namespace A340264.P12880866550827906084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A013620 n : ℚ) * (A344855 n : ℚ)

end

end A340264.P12880866550827906084

/-! ## A340264.P2139664698769403343

`A258850(n)+A122202(A094665(n))`
-/

namespace A340264.P2139664698769403343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258850 n + A122202 (A094665 n).toNat

end

end A340264.P2139664698769403343

/-! ## A340264.P3994539866036139442

`A126295(A270882(n))*A166124(n)`
-/

namespace A340264.P3994539866036139442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126295 (A270882 n).toNat * A166124 n

end

end A340264.P3994539866036139442

/-! ## A340264.P6931646707168379436

`A341101(n*A030128(A308292(n)))`
-/

namespace A340264.P6931646707168379436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341101 ((n : ℤ) * A030128 (A308292 n).toNat).toNat

end

end A340264.P6931646707168379436

/-! ## A340264.P8973456577793740316

`A341101(n)^A030128(A308292(n))`
-/

namespace A340264.P8973456577793740316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341101 n : ℚ) ^ (A030128 (A308292 n).toNat : ℤ)

end

end A340264.P8973456577793740316

/-!
# A340265: a(n) = n + 1 - a(phi(n)).

The programs for A340265, the canonical program `A340265.P8092916214538881554` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340265 has offset 1).

The definition of A340265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340265.P17591765680905606058

`2-a(A109606(n+1))+n` with `a(0)=1`
-/

namespace A340265.P17591765680905606058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - a (A109606 (n + 1)).toNat + (n : ℤ)

end

end A340265.P17591765680905606058

namespace A340265

/-- `2-a(A109606(n+1))+n` -/
def P17591765680905606058.Spec : Prop :=
  ∀ n, P17591765680905606058.a n = A340265 (n + 1)

end A340265

/-! ## A340265.P8092916214538881554

`n+2-a(Δ[A002088(n)]-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A340265

/-- `n+2-a(Δ[A002088(n)]-1)` -/
def P8092916214538881554.Spec : Prop :=
  ∀ n, P8092916214538881554.a n = A340265 (n + 1)

theorem P8092916214538881554.correct : P8092916214538881554.Spec := by
  intro n
  simp only [A340265, Nat.add_sub_cancel]

end A340265

/-! ## A340265.P4942175745323772055

`2-a(A000010(n+1)-1)+n` with `a(0)=1`
-/

namespace A340265.P4942175745323772055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - a (A000010 (n + 1) - 1).toNat + (n : ℤ)

end

end A340265.P4942175745323772055

namespace A340265

/-- `2-a(A000010(n+1)-1)+n` -/
def P4942175745323772055.Spec : Prop :=
  ∀ n, P4942175745323772055.a n = A340265 (n + 1)

end A340265

/-! ## A340265.P13470195165092171907

`n+2-a(n-A051953(n+1))` with `a(0)=1`
-/

namespace A340265.P13470195165092171907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) - a ((n : ℤ) - A051953 (n + 1)).toNat

end

end A340265.P13470195165092171907

namespace A340265

/-- `n+2-a(n-A051953(n+1))` -/
def P13470195165092171907.Spec : Prop :=
  ∀ n, P13470195165092171907.a n = A340265 (n + 1)

end A340265

/-! ## A340265.P12385242879914566992

`A001489(a(A109606(n+1)))+n+2` with `a(0)=1`
-/

namespace A340265.P12385242879914566992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001489 (a (A109606 (n + 1)).toNat).toNat + (n + 2 : ℤ)

end

end A340265.P12385242879914566992

namespace A340265

/-- `A001489(a(A109606(n+1)))+n+2` -/
def P12385242879914566992.Spec : Prop :=
  ∀ n, P12385242879914566992.a n = A340265 (n + 1)

end A340265

/-! ## A340265.P15206764804402171912

`A242112(2*(n+2))-(a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1)` with `a(0)=1`
-/

namespace A340265.P15206764804402171912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A242112 (2 * (n + 2)) - (a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1)).toNat + 1)

end

end A340265.P15206764804402171912

namespace A340265

/-- `A242112(2*(n+2))-(a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1)` -/
def P15206764804402171912.Spec : Prop :=
  ∀ n, P15206764804402171912.a n = A340265 (n + 1)

end A340265

/-! ## A340265.P16222665912962645037

`A242112(2*(n+2))-(a(A039649(n+1)-2)+1)` with `a(0)=1`
-/

namespace A340265.P16222665912962645037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A242112 (2 * (n + 2)) - (a (A039649 (n + 1) - 2).toNat + 1)

end

end A340265.P16222665912962645037

namespace A340265

/-- `A242112(2*(n+2))-(a(A039649(n+1)-2)+1)` -/
def P16222665912962645037.Spec : Prop :=
  ∀ n, P16222665912962645037.a n = A340265 (n + 1)

end A340265

/-! ## A340265.P638259879571748340

`A242112(2*(n+2))-(a(A282634(∑[n]+1)-1)+1)` with `a(0)=1`
-/

namespace A340265.P638259879571748340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A242112 (2 * (n + 2)) - (a (A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1).toNat + 1)

end

end A340265.P638259879571748340

namespace A340265

/-- `A242112(2*(n+2))-(a(A282634(∑[n]+1)-1)+1)` -/
def P638259879571748340.Spec : Prop :=
  ∀ n, P638259879571748340.a n = A340265 (n + 1)

end A340265

/-!
# A340266: The number of degrees of freedom in a quadrilateral cell for a serendipity finite element space of order n.

The programs for A340266, the canonical program `A340266.P12078626713817964159` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340266 has offset 1).

The definition of A340266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340266.P12078626713817964159

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=8, a(2)=12, a(3)=17`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A340266

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P12078626713817964159.Spec : Prop :=
  ∀ n, P12078626713817964159.a n = A340266 (n + 1)

theorem P12078626713817964159.correct : P12078626713817964159.Spec := by
  intro n
  simp only [A340266, Nat.add_sub_cancel]

end A340266

/-! ## A340266.P18217944391751722503

`(A111802(n+3)+1)/2+2`
-/

namespace A340266.P18217944391751722503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111802 (n + 3) + 1 : ℚ) / 2 + 2

end

end A340266.P18217944391751722503

namespace A340266

/-- `(A111802(n+3)+1)/2+2` -/
def P18217944391751722503.Spec : Prop :=
  ∀ n, P18217944391751722503.a n = (A340266 (n + 1) : ℚ)

end A340266

/-! ## A340266.P11024608490316790361

`∑[round(acot(n)+2+n)]`
-/

namespace A340266.P11024608490316790361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + 2 + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P11024608490316790361

namespace A340266

/-- `∑[round(acot(n)+2+n)]` -/
def P11024608490316790361.Spec : Prop :=
  ∀ n, P11024608490316790361.a n = A340266 (n + 1)

end A340266

/-! ## A340266.P17293124309448611705

`∑[char[1]+2+n]+2`
-/

namespace A340266.P17293124309448611705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A340266.P17293124309448611705

namespace A340266

/-- `∑[char[1]+2+n]+2` -/
def P17293124309448611705.Spec : Prop :=
  ∀ n, (P17293124309448611705.a n : ℤ) = A340266 (n + 1)

end A340266

/-! ## A340266.P1740577730506779969

`∑[a(n-1)+1]` with `a(0)=4, a(1)=4, a(2)=4`
-/

namespace A340266.P1740577730506779969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P1740577730506779969

namespace A340266

/-- `∑[a(n-1)+1]` -/
def P1740577730506779969.Spec : Prop :=
  ∀ n, (P1740577730506779969.a n : ℤ) = A340266 (n + 1)

end A340266

/-! ## A340266.P5430390019758379348

`∑[C(2, n+1)+2+n]`
-/

namespace A340266.P5430390019758379348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 1) + 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P5430390019758379348

namespace A340266

/-- `∑[C(2, n+1)+2+n]` -/
def P5430390019758379348.Spec : Prop :=
  ∀ n, (P5430390019758379348.a n : ℤ) = A340266 (n + 1)

end A340266

/-! ## A340266.P8969221810588094522

`∑[ceil(3/tanh(3/(n+1)))]`
-/

namespace A340266.P8969221810588094522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / Real.tanh (3 / (n + 1 : ℚ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P8969221810588094522

namespace A340266

/-- `∑[ceil(3/tanh(3/(n+1)))]` -/
def P8969221810588094522.Spec : Prop :=
  ∀ n, P8969221810588094522.a n = A340266 (n + 1)

end A340266

/-! ## A340266.P8287618673016976733

`∑[floor(n+1-atan(n))+3]`
-/

namespace A340266.P8287618673016976733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) - Real.arctan (n : ℝ)⌋ + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P8287618673016976733

namespace A340266

/-- `∑[floor(n+1-atan(n))+3]` -/
def P8287618673016976733.Spec : Prop :=
  ∀ n, P8287618673016976733.a n = A340266 (n + 1)

end A340266

/-! ## A340266.P16533504932657894034

`∑[3-ceil(atan(n)-(n+1))]`
-/

namespace A340266.P16533504932657894034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌈Real.arctan (n : ℝ) - (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P16533504932657894034

namespace A340266

/-- `∑[3-ceil(atan(n)-(n+1))]` -/
def P16533504932657894034.Spec : Prop :=
  ∀ n, P16533504932657894034.a n = A340266 (n + 1)

end A340266

/-! ## A340266.P11036956918218426556

`∑[2*a(n-1)-n]` with `a(0)=4, a(1)=4, a(2)=4`
-/

namespace A340266.P11036956918218426556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 4] fun n f1 =>
  2 * f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P11036956918218426556

namespace A340266

/-- `∑[2*a(n-1)-n]` -/
def P11036956918218426556.Spec : Prop :=
  ∀ n, P11036956918218426556.a n = A340266 (n + 1)

end A340266

/-! ## A340266.P9908744868456665464

`∑[dr(ceil(3/(n+1)))+n+1]`
-/

namespace A340266.P9908744868456665464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌈3 / (n + 1 : ℚ)⌉ + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P9908744868456665464

namespace A340266

/-- `∑[dr(ceil(3/(n+1)))+n+1]` -/
def P9908744868456665464.Spec : Prop :=
  ∀ n, (P9908744868456665464.a n : ℤ) = A340266 (n + 1)

end A340266

/-! ## A340266.P1554557923967751092

`∑[n+1-floor(tan(2)/(n+1))]`
-/

namespace A340266.P1554557923967751092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊Real.tan (2 : ℝ) / (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P1554557923967751092

namespace A340266

/-- `∑[n+1-floor(tan(2)/(n+1))]` -/
def P1554557923967751092.Spec : Prop :=
  ∀ n, P1554557923967751092.a n = A340266 (n + 1)

end A340266

/-! ## A340266.P220642451615420770

`∑[ceil((n+1)*cosh(2/(n+1)))]`
-/

namespace A340266.P220642451615420770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.cosh (2 / (n + 1 : ℚ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P220642451615420770

namespace A340266

/-- `∑[ceil((n+1)*cosh(2/(n+1)))]` -/
def P220642451615420770.Spec : Prop :=
  ∀ n, P220642451615420770.a n = A340266 (n + 1)

end A340266

/-! ## A340266.P2879561831092129042

`∑[ceil(3*acot(n+1)+n+1)]`
-/

namespace A340266.P2879561831092129042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * SequenceMachineLib.acot (n + 1 : ℝ) + (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P2879561831092129042

namespace A340266

/-- `∑[ceil(3*acot(n+1)+n+1)]` -/
def P2879561831092129042.Spec : Prop :=
  ∀ n, P2879561831092129042.a n = A340266 (n + 1)

end A340266

/-! ## A340266.P7919221687405435940

`∑[∏{d}[n-1, #-(n-1)]+n+2]`
-/

namespace A340266.P7919221687405435940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, ((d : ℤ) - ((n : ℤ) - 1)) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P7919221687405435940

namespace A340266

/-- `∑[∏{d}[n-1, #-(n-1)]+n+2]` -/
def P7919221687405435940.Spec : Prop :=
  ∀ n, P7919221687405435940.a n = A340266 (n + 1)

end A340266

/-! ## A340266.P13645639008185384155

`∑[floor((lcm(n+1, n+2)+2)/(n+1))]`
-/

namespace A340266.P13645639008185384155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 1) (n + 2) + 2 : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P13645639008185384155

namespace A340266

/-- `∑[floor((lcm(n+1, n+2)+2)/(n+1))]` -/
def P13645639008185384155.Spec : Prop :=
  ∀ n, P13645639008185384155.a n = A340266 (n + 1)

end A340266

/-! ## A340266.P10029399076236090019

`∑[floor(gcd(2, 2*n)/(n+1)+n+2)]`
-/

namespace A340266.P10029399076236090019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 (2 * n) : ℚ) / (n + 1 : ℚ) + (n + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P10029399076236090019

namespace A340266

/-- `∑[floor(gcd(2, 2*n)/(n+1)+n+2)]` -/
def P10029399076236090019.Spec : Prop :=
  ∀ n, P10029399076236090019.a n = A340266 (n + 1)

end A340266

/-! ## A340266.P17734158614405190955

`∑[floor(and(2, n+2)/(n+1)+n+2)]`
-/

namespace A340266.P17734158614405190955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 2 (n + 2) : ℚ) / (n + 1 : ℚ) + (n + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340266.P17734158614405190955

namespace A340266

/-- `∑[floor(and(2, n+2)/(n+1)+n+2)]` -/
def P17734158614405190955.Spec : Prop :=
  ∀ n, P17734158614405190955.a n = A340266 (n + 1)

end A340266

/-! ## A340266.P9674200204000221630

`round(C(n+3, 2)+(2*n+1)/(n+1))`
-/

namespace A340266.P9674200204000221630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 2 : ℚ) + (2 * n + 1 : ℚ) / (n + 1 : ℚ))

end

end A340266.P9674200204000221630

namespace A340266

/-- `round(C(n+3, 2)+(2*n+1)/(n+1))` -/
def P9674200204000221630.Spec : Prop :=
  ∀ n, P9674200204000221630.a n = A340266 (n + 1)

end A340266

/-!
# A340268: Composite numbers k>1 such that (s-1) | (d-1) for each d | k, where s = lpf(k) = A020639(k).

The programs for A340268, there is no canonical definition to state claims against.
-/

/-! ## A340268.P11803855891309672489

`A340058(n+1)%97`
-/

namespace A340268.P11803855891309672489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340058 (n + 1)) 97

end

end A340268.P11803855891309672489

/-! ## A340268.P12785903578716598954

`A340058(A130696(n+2))`
-/

namespace A340268.P12785903578716598954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340058 (A130696 (n + 2)).toNat

end

end A340268.P12785903578716598954

/-! ## A340268.P16808595867422236987

`A340058(n+2-A304042(n))`
-/

namespace A340268.P16808595867422236987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340058 ((n + 2 : ℤ) - A304042 n).toNat

end

end A340268.P16808595867422236987

/-! ## A340268.P3536355197524265733

`A304042(n)*A340058(n+1)`
-/

namespace A340268.P3536355197524265733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n * A340058 (n + 1)

end

end A340268.P3536355197524265733

/-! ## A340268.P9118741705322732695

`or(char[A198275(n)], A340058(n+1))`
-/

namespace A340268.P9118741705322732695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198275 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A340058 (n + 1))

end

end A340268.P9118741705322732695

/-! ## A340268.P15730965099313057292

`or(char[A090798(n+1)], A340058(n+1))`
-/

namespace A340268.P15730965099313057292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A340058 (n + 1))

end

end A340268.P15730965099313057292

/-! ## A340268.P3319392987012157900

`or(char[A212723(n+1)], A340058(n+1))`
-/

namespace A340268.P3319392987012157900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212723 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A340058 (n + 1))

end

end A340268.P3319392987012157900

/-! ## A340268.P12609928442213728218

`or(char[A261184(n+1)], A340058(n+1))`
-/

namespace A340268.P12609928442213728218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261184 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A340058 (n + 1))

end

end A340268.P12609928442213728218

/-!
# A340269: Numbers k > 1 such that lpf(k)-1 does not divide d-1 for at least one divisor d of k, where lpf(k) is the least prime factor of k (A020639).

The programs for A340269, there is no canonical definition to state claims against.
-/

/-! ## A340269.P3217523054109596807

`lt[A340273(abs(1-n)+1), A032741(n)]`
-/

namespace A340269.P3217523054109596807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340269.P3217523054109596807

/-!
# A340273: a(n) is the number of divisors d of n such that phi(n)/phi(lpf(n)) mod phi(n)/phi(d) = 0, where phi is Euler's totient function (A000010), and lpf(n) is the least prime factor of n (A020639).

The programs for A340273, there is no canonical definition to state claims against.
-/

/-! ## A340273.P14465983249967636500

`A000005(A181672(Δ[n²]))-char[2*(n+1)]`
-/

namespace A340273.P14465983249967636500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181672 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A340273.P14465983249967636500

/-! ## A340273.P3438474371855745679

`∏{e}[n+1, #+1]-A147645(A029744(n+1))`
-/

namespace A340273.P3438474371855745679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A147645 (A029744 (n + 1)).toNat

end

end A340273.P3438474371855745679

/-! ## A340273.P130194257020594202

`∏{e}[n+1, #+1]-A132860(n+1)%A051700(3*(n+1))`
-/

namespace A340273.P130194257020594202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - Int.tmod (A132860 (n + 1)) (A051700 (3 * (n + 1)))

end

end A340273.P130194257020594202

/-! ## A340273.P11323400699360386589

`∏{e}[n+1, #+1]-A133490(n+1)%A051700(3*(n+1))`
-/

namespace A340273.P11323400699360386589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - Int.tmod (A133490 (n + 1)) (A051700 (3 * (n + 1)))

end

end A340273.P11323400699360386589

/-! ## A340273.P2588524383531698933

`A091090(A016766(n))+A070824(n+1)`
-/

namespace A340273.P2588524383531698933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A016766 n).toNat + A070824 (n + 1)

end

end A340273.P2588524383531698933

/-!
# A340275: Number of partitions of n into 3 parts whose smallest two parts are relatively prime.

The programs for A340275, there is no canonical definition to state claims against.
-/

/-! ## A340275.P5180506539497511929

`A340276(n+2)-char[1]`
-/

namespace A340275.P5180506539497511929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340276 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A340275.P5180506539497511929

/-! ## A340275.P9489466497406048408

`A340276(A326178(n+1))`
-/

namespace A340275.P9489466497406048408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340276 (A326178 (n + 1)).toNat

end

end A340275.P9489466497406048408

/-! ## A340275.P16472726725860475827

`A340276(A171526(n+2))`
-/

namespace A340275.P16472726725860475827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340276 (A171526 (n + 2)).toNat

end

end A340275.P16472726725860475827

/-! ## A340275.P5605114857238053890

`A049806(n+1)%A049807(n+1)`
-/

namespace A340275.P5605114857238053890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049806 (n + 1)) (A049807 (n + 1))

end

end A340275.P5605114857238053890

/-! ## A340275.P16279794383597485783

`∑[ceil(A000010(n+1)/2)]%A049807(n+1)`
-/

namespace A340275.P16279794383597485783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A049807 (n + 1))

end

end A340275.P16279794383597485783

/-! ## A340275.P12189490407167203909

`((∑[A000010(char[1]+1+n)]+1)/2)%A049807(n+1)`
-/

namespace A340275.P12189490407167203909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2)) (A049807 (n + 1))

end

end A340275.P12189490407167203909

/-! ## A340275.P18161938325059699388

`∑[A128115(n+1)]-char[1]`
-/

namespace A340275.P18161938325059699388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A340275.P18161938325059699388

/-! ## A340275.P10632347617632734605

`∑[A128115(C(C(2, n)+n, n)+n)]`
-/

namespace A340275.P10632347617632734605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (Nat.choose (Nat.choose 2 n + n) n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340275.P10632347617632734605

/-! ## A340275.P6113359308613293393

`A159075(n)+∑[A128115(n+1)]`
-/

namespace A340275.P6113359308613293393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340275.P6113359308613293393

/-! ## A340275.P724151055365782588

`∑[A128115(n+1)]*A060576(n)`
-/

namespace A340275.P724151055365782588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A060576 n

end

end A340275.P724151055365782588

/-!
# A340276: Number of partitions of n into 3 parts whose largest two parts are relatively prime.

The programs for A340276, there is no canonical definition to state claims against.
-/

/-! ## A340276.P1194293905407401126

`A340275(C(2, n)%2+n)`
-/

namespace A340276.P1194293905407401126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (Nat.choose 2 n % 2 + n)

end

end A340276.P1194293905407401126

/-! ## A340276.P16993632726501298174

`A340275(round(sqrt(C(2, n)))+n)`
-/

namespace A340276.P16993632726501298174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (SequenceMachineLib.roundAway (Real.sqrt (Nat.choose 2 n : ℝ)) + (n : ℤ)).toNat

end

end A340276.P16993632726501298174

/-! ## A340276.P9429835217974322291

`A340275(round(2/(n+1))+n)`
-/

namespace A340276.P9429835217974322291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (SequenceMachineLib.roundAway (2 / (n + 1 : ℚ)) + (n : ℤ)).toNat

end

end A340276.P9429835217974322291

/-! ## A340276.P14926458528719395376

`∑[A128115(C(3, n)+n)]`
-/

namespace A340276.P14926458528719395376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (Nat.choose 3 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340276.P14926458528719395376

/-! ## A340276.P15895070451305227427

`∑[A128115(floor(acot(n)+n))]`
-/

namespace A340276.P15895070451305227427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340276.P15895070451305227427

/-! ## A340276.P2476882481050544093

`A128115(n)+a(n-1)` with `a(0)=0`
-/

namespace A340276.P2476882481050544093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A128115 n + a (n - 1)

end

end A340276.P2476882481050544093

/-! ## A340276.P8772810335512575874

`∑[A128115(round(sqrt(n²+1)))]`
-/

namespace A340276.P8772810335512575874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340276.P8772810335512575874

/-! ## A340276.P3515184875539561452

`∑[A128115(abs(1-n)+1)]-1`
-/

namespace A340276.P3515184875539561452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A340276.P3515184875539561452

/-!
# A340278: Number of partitions of n into 3 parts whose smallest and largest parts are relatively prime.

The programs for A340278, there is no canonical definition to state claims against.
-/

/-! ## A340278.P15535101259916663202

`A340282(n+1)+A340285(n+1)-A340276(n+1)`
-/

namespace A340278.P15535101259916663202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340282 (n + 1) + (A340285 (n + 1) - A340276 (n + 1))

end

end A340278.P15535101259916663202

/-! ## A340278.P13500650447776958280

`A340279(n+1)+A340283(n+1)-A340275(n+1)`
-/

namespace A340278.P13500650447776958280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340279 (n + 1) + (A340283 (n + 1) - A340275 (n + 1))

end

end A340278.P13500650447776958280

/-! ## A340278.P15944116300717265557

`A264749(A024816(n+1))%A111441(n+1)`
-/

namespace A340278.P15944116300717265557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264749 (A024816 (n + 1)).toNat) (A111441 (n + 1))

end

end A340278.P15944116300717265557

/-! ## A340278.P3471111340825615220

`A264749(A024816(n+1)%A264726(n+1))`
-/

namespace A340278.P3471111340825615220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (Int.tmod (A024816 (n + 1)) (A264726 (n + 1))).toNat

end

end A340278.P3471111340825615220

/-! ## A340278.P5260817511480036210

`A049807(n+1)-A196238(A317081(n))`
-/

namespace A340278.P5260817511480036210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049807 (n + 1) - A196238 (A317081 n).toNat

end

end A340278.P5260817511480036210

/-!
# A340279: Number of partitions of n into 3 parts such that the smallest part is relatively prime to at least one other part.

The programs for A340279, there is no canonical definition to state claims against.
-/

/-! ## A340279.P7815180688605791821

`A340275(n+1)+A340278(n+1)-A340283(n+1)`
-/

namespace A340279.P7815180688605791821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (n + 1) + (A340278 (n + 1) - A340283 (n + 1))

end

end A340279.P7815180688605791821

/-! ## A340279.P9279160247090106444

`A343100(n+1)-A185284(A340278(n+1))`
-/

namespace A340279.P9279160247090106444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343100 (n + 1) - A185284 (A340278 (n + 1)).toNat

end

end A340279.P9279160247090106444

/-! ## A340279.P1101800561675009297

`A343100(n+1)+A015989(A157211(n))`
-/

namespace A340279.P1101800561675009297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343100 (n + 1) + A015989 (A157211 n).toNat

end

end A340279.P1101800561675009297

/-! ## A340279.P8728082555963281428

`A343100(n+1)-A025469(A157278(n))`
-/

namespace A340279.P8728082555963281428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343100 (n + 1) - A025469 (A157278 n).toNat

end

end A340279.P8728082555963281428

/-! ## A340279.P3591348649568772898

`A343100(n+1)-A102683(A189111(n+1))`
-/

namespace A340279.P3591348649568772898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343100 (n + 1) - A102683 (A189111 (n + 1)).toNat

end

end A340279.P3591348649568772898

/-!
# A340280: Number of partitions of n into 3 parts such that the 'middle' part is relatively prime to at least one other part.

The programs for A340280, there is no canonical definition to state claims against.
-/

/-! ## A340280.P15443311522828815190

`A340275(n+1)+A340276(n+1)-A340284(n+1)`
-/

namespace A340280.P15443311522828815190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (n + 1) + (A340276 (n + 1) - A340284 (n + 1))

end

end A340280.P15443311522828815190

/-! ## A340280.P4778133297081901419

`A340279(n+1)-A253315(A015070(n))`
-/

namespace A340280.P4778133297081901419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340279 (n + 1) - A253315 (A015070 n).toNat

end

end A340280.P4778133297081901419

/-! ## A340280.P11460050326320233924

`A343100(n+1)-A253315(A015070(n))`
-/

namespace A340280.P11460050326320233924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343100 (n + 1) - A253315 (A015070 n).toNat

end

end A340280.P11460050326320233924

/-! ## A340280.P13204819561547243259

`A343100(n+1)-A343102(A343095(n)²)`
-/

namespace A340280.P13204819561547243259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343100 (n + 1) - A343102 (A343095 n ^ 2).toNat

end

end A340280.P13204819561547243259

/-! ## A340280.P12595662948087899858

`A343100(n+1)-A343102(A343097(n)²)`
-/

namespace A340280.P12595662948087899858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343100 (n + 1) - A343102 (A343097 n ^ 2).toNat

end

end A340280.P12595662948087899858

/-!
# A340281: a(n) is the smallest prime p such that the number of distinct values of the ratio (number of nonnegative m < p such that m^k == m (mod p))/(number of nonnegative m < p such that -m^k == m (mod p)) is equal to n for some nonnegative k.

The programs for A340281, there is no canonical definition to state claims against.
-/

/-! ## A340281.P4132714040876711193

`p?[A295655(n+1)*A319723(n)]`
-/

namespace A340281.P4132714040876711193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295655 (n + 1) * A319723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340281.P4132714040876711193

/-! ## A340281.P9406129807131830165

`p?[A135814(n)%A225386(n+1)]`
-/

namespace A340281.P9406129807131830165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135814 n) (A225386 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340281.P9406129807131830165

/-! ## A340281.P15526017163164281097

`A079346(A304660(n+1)%A024782(3*n+4))`
-/

namespace A340281.P15526017163164281097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (Int.tmod (A304660 (n + 1)) (A024782 (3 * n + 4))).toNat

end

end A340281.P15526017163164281097

/-!
# A340282: Number of partitions of n into 3 parts such that the largest part is relatively prime to at least one other part.

The programs for A340282, there is no canonical definition to state claims against.
-/

/-! ## A340282.P13428492107449918984

`A340276(n+1)+A340278(n+1)-A340285(n+1)`
-/

namespace A340282.P13428492107449918984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340276 (n + 1) + (A340278 (n + 1) - A340285 (n + 1))

end

end A340282.P13428492107449918984

/-! ## A340282.P2919583515562052089

`A340280(n+1)-A133168(n+1)%A063065(n+1)`
-/

namespace A340282.P2919583515562052089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340280 (n + 1) - Int.tmod (A133168 (n + 1)) (A063065 (n + 1))

end

end A340282.P2919583515562052089

/-! ## A340282.P6820115452979591095

`A340279(n+1)-A055641(A325703(n+1))`
-/

namespace A340282.P6820115452979591095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340279 (n + 1) - A055641 (A325703 (n + 1)).toNat

end

end A340282.P6820115452979591095

/-! ## A340282.P15601993371682423973

`A343100(n+1)-A055641(A325703(n+1))`
-/

namespace A340282.P15601993371682423973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343100 (n + 1) - A055641 (A325703 (n + 1)).toNat

end

end A340282.P15601993371682423973

/-! ## A340282.P8417394284346985295

`A340280(n+1)-A335448(3*n+5)%A063065(n+1)`
-/

namespace A340282.P8417394284346985295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340280 (n + 1) - Int.tmod (A335448 (3 * n + 5)) (A063065 (n + 1))

end

end A340282.P8417394284346985295

/-!
# A340283: Number of partitions of n into 3 parts such that the smallest part is relatively prime to each of the other two parts.

The programs for A340283, there is no canonical definition to state claims against.
-/

/-! ## A340283.P4059098933839386507

`A340275(n+1)+A340278(n+1)-A340279(n+1)`
-/

namespace A340283.P4059098933839386507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (n + 1) + (A340278 (n + 1) - A340279 (n + 1))

end

end A340283.P4059098933839386507

/-! ## A340283.P13482329108328921329

`floor(A175018(record[A132169(n)])/2)`
-/

namespace A340283.P13482329108328921329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175018 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2⌋

end

end A340283.P13482329108328921329

/-! ## A340283.P18069329388627220911

`A004526(A175018(record[A132169(n)]))`
-/

namespace A340283.P18069329388627220911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A175018 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A340283.P18069329388627220911

/-! ## A340283.P7942851159806050209

`A211265(n+1)-A211270(A026395(n))`
-/

namespace A340283.P7942851159806050209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211265 (n + 1) - A211270 (A026395 n).toNat

end

end A340283.P7942851159806050209

/-! ## A340283.P8145397278710612299

`A007360(n+1)-A300826(A324844(n+1))`
-/

namespace A340283.P8145397278710612299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007360 (n + 1) - A300826 (A324844 (n + 1)).toNat

end

end A340283.P8145397278710612299

/-!
# A340284: Number of partitions of n into 3 parts such that the 'middle' part is relatively prime to each of the other two parts.

The programs for A340284, there is no canonical definition to state claims against.
-/

/-! ## A340284.P7323685080506531493

`A340275(n+1)+A340276(n+1)-A340280(n+1)`
-/

namespace A340284.P7323685080506531493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (n + 1) + (A340276 (n + 1) - A340280 (n + 1))

end

end A340284.P7323685080506531493

/-! ## A340284.P12336893773120148746

`A187449(A242324(n+2)-A234577(n))`
-/

namespace A340284.P12336893773120148746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187449 (A242324 (n + 2) - A234577 n).toNat

end

end A340284.P12336893773120148746

/-! ## A340284.P391061757522419868

`A340276(n+1)+A337601(A077168(n))-A340278(n+1)`
-/

namespace A340284.P391061757522419868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340276 (n + 1) + (A337601 (A077168 n).toNat - A340278 (n + 1))

end

end A340284.P391061757522419868

/-!
# A340285: Number of partitions of n into 3 parts such that the largest part is relatively prime to each of the other two parts.

The programs for A340285, there is no canonical definition to state claims against.
-/

/-! ## A340285.P7377181046525678000

`A340276(n+1)+A340278(n+1)-A340282(n+1)`
-/

namespace A340285.P7377181046525678000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340276 (n + 1) + (A340278 (n + 1) - A340282 (n + 1))

end

end A340285.P7377181046525678000

/-!
# A340286: Number of partitions of n into 3 parts such that at least two parts share a common factor > 1.

The programs for A340286, there is no canonical definition to state claims against.
-/

/-! ## A340286.P1008786744973395094

`∑[round(xor(1, n)/6)]-A307719(n+1)`
-/

namespace A340286.P1008786744973395094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307719 (n + 1)

end

end A340286.P1008786744973395094

/-! ## A340286.P716525044433856429

`∑[A008615(n)-Δ[A307719(n)]]`
-/

namespace A340286.P716525044433856429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307719 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340286.P716525044433856429

/-! ## A340286.P1037638240789056285

`∑[A008615(n)]-A307719(n+1)`
-/

namespace A340286.P1037638240789056285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307719 (n + 1)

end

end A340286.P1037638240789056285

/-! ## A340286.P14632335717737245154

`A069905(n+1)-A307719(n+1)`
-/

namespace A340286.P14632335717737245154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) - A307719 (n + 1)

end

end A340286.P14632335717737245154

/-! ## A340286.P10787282325359557696

`A211540(n+3)-A307719(n+1)`
-/

namespace A340286.P10787282325359557696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (n + 3) - A307719 (n + 1)

end

end A340286.P10787282325359557696

/-!
# A340287: Numbers k for which there are A000005(k+1)-1 bases b such that k in base b contains digit b-1.

The programs for A340287, there is no canonical definition to state claims against.
-/

/-! ## A340287.P16640475984380323152

`eq[A325765(n), A337496(n)]`
-/

namespace A340287.P16640475984380323152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340287.P16640475984380323152

/-! ## A340287.P7010494401305768023

`record[(n+1)*(A000005(n+2)-A337496(n+1))]`
-/

namespace A340287.P7010494401305768023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000005 (n + 2) - A337496 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340287.P7010494401305768023

/-! ## A340287.P2354433725707032116

`eq[A000005(n+1), A031285(A337496(n))]`
-/

namespace A340287.P2354433725707032116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A337496 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340287.P2354433725707032116

/-! ## A340287.P8989757754189503154

`eq[1, floor(A096737(n+1)/(A337496(n)+1))]`
-/

namespace A340287.P8989757754189503154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096737 (n + 1) : ℚ) / (A337496 n + 1 : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340287.P8989757754189503154

/-!
# A340288: a(n) = Sum_{k=1..n} floor(floor((n-k)^(1/k))/k).

The programs for A340288, there is no canonical definition to state claims against.
-/

/-! ## A340288.P3654023493808326237

`lt[A303998(n+1), A158787(n+3)]`
-/

namespace A340288.P3654023493808326237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158787 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340288.P3654023493808326237

/-! ## A340288.P7535289381525274968

`∑[A010051((n+1)*A030430(n+1)+1)]+n`
-/

namespace A340288.P7535289381525274968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((n + 1 : ℤ) * A030430 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A340288.P7535289381525274968

/-! ## A340288.P14903498100097807278

`lt[n, A223702(A303431(n+1))]`
-/

namespace A340288.P14903498100097807278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223702 (A303431 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340288.P14903498100097807278

/-! ## A340288.P2816878884814582271

`lt[n, A050985(A136360(n+1))]`
-/

namespace A340288.P2816878884814582271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A136360 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340288.P2816878884814582271

/-! ## A340288.P18220617975740531426

`lt[A113832(A089959(n+3)), A072124(2*(n+2))]`
-/

namespace A340288.P18220617975740531426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113832 (A089959 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072124 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340288.P18220617975740531426

/-!
# A340289: a(n) = Sum_{k=1..floor(n/2)} floor(k^(1/(n-k))*(n-k)^(1/k)).

The programs for A340289, there is no canonical definition to state claims against.
-/

/-! ## A340289.P13436011925162832280

`A195125(n)-A061395(A018328(n+1))`
-/

namespace A340289.P13436011925162832280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195125 n - A061395 (A018328 (n + 1)).toNat

end

end A340289.P13436011925162832280

/-! ## A340289.P10036906357324936512

`A130245(A081204(n)-1)`
-/

namespace A340289.P10036906357324936512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A081204 n - 1).toNat

end

end A340289.P10036906357324936512

/-! ## A340289.P15303745427429021817

`A130245(n*A027416(n+2))`
-/

namespace A340289.P15303745427429021817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 ((n : ℤ) * A027416 (n + 2)).toNat

end

end A340289.P15303745427429021817

/-! ## A340289.P705344778482419005

`∑[3%(A014036(A000292(3*n+1))+2^∑{e}[n+1, #])]`
-/

namespace A340289.P705344778482419005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A014036 (A000292 (3 * n + 1)).toNat + (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340289.P705344778482419005

/-! ## A340289.P18426479173710320579

`A130245(A120925(n))-A040001(n)`
-/

namespace A340289.P18426479173710320579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A120925 n).toNat - A040001 n

end

end A340289.P18426479173710320579

/-!
# A340290: Numbers k that are the representation of primes in base 3 and in base 4.

The programs for A340290, the canonical program `A340290.P217938669888073175` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340290 has offset 1).

The definition of A340290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340290.P217938669888073175

`∩[A001363(n+1), A004678(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A340290

/-- `∩[A001363(n+1), A004678(n+1)]` -/
def P217938669888073175.Spec : Prop :=
  ∀ n, (P217938669888073175.a n : ℤ) = A340290 (n + 1)

theorem P217938669888073175.correct : P217938669888073175.Spec := by
  intro n
  simp only [A340290, Nat.add_sub_cancel]

end A340290

/-! ## A340290.P2420893795524022113

`A007089(A235473(n+1))`
-/

namespace A340290.P2420893795524022113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A235473 (n + 1)).toNat

end

end A340290.P2420893795524022113

namespace A340290

/-- `A007089(A235473(n+1))` -/
def P2420893795524022113.Spec : Prop :=
  ∀ n, P2420893795524022113.a n = A340290 (n + 1)

end A340290

/-! ## A340290.P14294580622932381962

`A007090(A235467(n+1))`
-/

namespace A340290.P14294580622932381962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A235467 (n + 1)).toNat

end

end A340290.P14294580622932381962

namespace A340290

/-- `A007090(A235467(n+1))` -/
def P14294580622932381962.Spec : Prop :=
  ∀ n, P14294580622932381962.a n = A340290 (n + 1)

end A340290

/-! ## A340290.P17777414471780238995

`A007090(p?[A023717(A000040(n+1))])`
-/

namespace A340290.P17777414471780238995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340290.P17777414471780238995

namespace A340290

/-- `A007090(p?[A023717(A000040(n+1))])` -/
def P17777414471780238995.Spec : Prop :=
  ∀ n, P17777414471780238995.a n = A340290 (n + 1)

end A340290

/-! ## A340290.P17118754324053907088

`A007090(p?[A023717(A008578(n+1))])`
-/

namespace A340290.P17118754324053907088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340290.P17118754324053907088

namespace A340290

/-- `A007090(p?[A023717(A008578(n+1))])` -/
def P17118754324053907088.Spec : Prop :=
  ∀ n, P17118754324053907088.a n = A340290 (n + 1)

end A340290

/-! ## A340290.P11343978181361027329

`A007090(p?[A023717(n)*A032741(n)])`
-/

namespace A340290.P11343978181361027329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n * A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340290.P11343978181361027329

namespace A340290

/-- `A007090(p?[A023717(n)*A032741(n)])` -/
def P11343978181361027329.Spec : Prop :=
  ∀ n, P11343978181361027329.a n = A340290 (n + 1)

end A340290

/-!
# A340292: a(n) = 4^(2*n^2) * Product_{1<=j,k<=n} (1 - sin(j*Pi/(2*n+1))^2 * sin(k*Pi/(2*n+1))^2).

The programs for A340292, there is no canonical definition to state claims against.
-/

/-! ## A340292.P15345549658682658493

`A340293(n)²*A002315(n)`
-/

namespace A340292.P15345549658682658493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340293 n ^ 2 * A002315 n

end

end A340292.P15345549658682658493

/-!
# A340293: a(n) = 4^((n-1)*n) * Product_{1<=j

The programs for A340293, there is no canonical definition to state claims against.
-/

/-! ## A340293.P9559117667870999514

`A127606(n)/A000302(n)`
-/

namespace A340293.P9559117667870999514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127606 n : ℚ) / (A000302 n : ℚ)

end

end A340293.P9559117667870999514

/-! ## A340293.P13311582598608973140

`A127606(n)/A000079(n)²`
-/

namespace A340293.P13311582598608973140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127606 n : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A340293.P13311582598608973140

/-! ## A340293.P1751972843673958053

`ceil(A127606(n)/A155543(n))`
-/

namespace A340293.P1751972843673958053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127606 n : ℚ) / (A155543 n : ℚ)⌉

end

end A340293.P1751972843673958053

/-! ## A340293.P17655325632728837383

`A127606(n)/gcd(A007341(n+1), A127606(n))`
-/

namespace A340293.P17655325632728837383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127606 n : ℚ) / (Int.gcd (A007341 (n + 1)) (A127606 n) : ℚ)

end

end A340293.P17655325632728837383

/-! ## A340293.P4953944772594823976

`gcd(A127606(n), A340292(n))`
-/

namespace A340293.P4953944772594823976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127606 n) (A340292 n)

end

end A340293.P4953944772594823976

/-!
# A340295: 

The programs for A340295, there is no canonical definition to state claims against.
-/

/-! ## A340295.P13544311465374616110

`A334089(Δ[n²])`
-/

namespace A340295.P13544311465374616110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334089 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A340295.P13544311465374616110

/-!
# A340297: a(n) = (Sum of totatives of n) mod (Sum of primes dividing n with multiplicity).

The programs for A340297, there is no canonical definition to state claims against.
-/

/-! ## A340297.P4902455884857057128

`A026741(A002618(n+2))%A001414(n+2)`
-/

namespace A340297.P4902455884857057128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A002618 (n + 2)).toNat) (A001414 (n + 2))

end

end A340297.P4902455884857057128

/-! ## A340297.P15678748836022300376

`xor(A001221(A077446(n+1)), A140129(3*(n+1)))`
-/

namespace A340297.P15678748836022300376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A077446 (n + 1)).toNat) (A140129 (3 * (n + 1)))

end

end A340297.P15678748836022300376

/-! ## A340297.P11020905458372701315

`A064874(lcm(4, A244508(n+4)))`
-/

namespace A340297.P11020905458372701315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 (Int.lcm 4 (A244508 (n + 4)))

end

end A340297.P11020905458372701315

/-! ## A340297.P11486173955714076394

`A303766(2*n+1)%A005811(A057568(3*n+4))`
-/

namespace A340297.P11486173955714076394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303766 (2 * n + 1)) (A005811 (A057568 (3 * n + 4)).toNat)

end

end A340297.P11486173955714076394

/-!
# A340298: a(n) = a(floor(n/2)) + a(ceiling(n/2)) + n*floor(log_2(n)) for n >= 2, a(n) = n for n <= 1.

The programs for A340298, the canonical program `A340298.P16754240333244176776` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340298 has offset 0).

The definition of A340298 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(n/2))+a(ceil(n/2))+n*floor(log2(n))` (program `A340298.P16754240333244176776`, by `A340298.P16754240333244176776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A340298.P16754240333244176776

`a(floor(n/2))+a(ceil(n/2))+n*floor(log2(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A340298

/-- `a(floor(n/2))+a(ceil(n/2))+n*floor(log2(n))` -/
def P16754240333244176776.Spec : Prop :=
  ∀ n, (P16754240333244176776.a n : ℤ) = A340298 n

theorem P16754240333244176776.correct : P16754240333244176776.Spec := by
  intro n
  simp only [A340298]

end A340298

