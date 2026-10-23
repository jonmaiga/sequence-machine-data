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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A232200: Number of (n+1)X(4+1) 0..2 arrays with every element both >= and <= some horizontal, vertical or antidiagonal neighbor.

The programs for A232200, there is no canonical definition to state claims against.
-/

/-! ## A232200.P4221001759324511963

`A232204(A167614(n+2)+1)`
-/

namespace A232200.P4221001759324511963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 (A167614 (n + 2) + 1).toNat

end

end A232200.P4221001759324511963

/-! ## A232200.P16498468970307169457

`A232204(Δ[A023545(n+1)-n²])`
-/

namespace A232200.P16498468970307169457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 (f1 (n + 1) - f1 n).toNat

end

end A232200.P16498468970307169457

/-!
# A232201: Number of (n+1)X(5+1) 0..2 arrays with every element both >= and <= some horizontal, vertical or antidiagonal neighbor.

The programs for A232201, there is no canonical definition to state claims against.
-/

/-! ## A232201.P16420975879012713302

`A232204(A374005(n+1))`
-/

namespace A232201.P16420975879012713302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 (A374005 (n + 1)).toNat

end

end A232201.P16420975879012713302

/-! ## A232201.P7505477649034878575

`A232204(Δ[A023545(n+1)])`
-/

namespace A232201.P7505477649034878575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 (f1 (n + 1) - f1 n).toNat

end

end A232201.P7505477649034878575

/-!
# A232202: 

The programs for A232202, there is no canonical definition to state claims against.
-/

/-! ## A232202.P5434691783457554804

`A232204(A056115(n)+21)`
-/

namespace A232202.P5434691783457554804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 (A056115 n + 21).toNat

end

end A232202.P5434691783457554804

/-!
# A232203: 

The programs for A232203, there is no canonical definition to state claims against.
-/

/-! ## A232203.P11120067783243558968

`A232204(eq[8, A131818(n+1)])`
-/

namespace A232203.P11120067783243558968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232203.P11120067783243558968

/-!
# A232205: a(0)=1; thereafter a(n) = n*a(n-1) if n is even, otherwise a(n) = 2*n*a(n-1).

The programs for A232205, the canonical program `A232205.P17611092582010561577` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232205 has offset 0).

The definition of A232205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232205.P17611092582010561577

`n!*2^floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A232205

/-- `n!*2^floor((n+1)/2)` -/
def P17611092582010561577.Spec : Prop :=
  ∀ n, P17611092582010561577.a n = (A232205 n : ℚ)

end A232205

/-! ## A232205.P6822798469512521415

`∏[floor(acot(n))+lcm(2, n)]`
-/

namespace A232205.P6822798469512521415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232205.P6822798469512521415

namespace A232205

/-- `∏[floor(acot(n))+lcm(2, n)]` -/
def P6822798469512521415.Spec : Prop :=
  ∀ n, P6822798469512521415.a n = A232205 n

end A232205

/-! ## A232205.P4613912299404732013

`2^ceil(n/2)*n!`
-/

namespace A232205.P4613912299404732013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) * (Nat.factorial n : ℚ)

end

end A232205.P4613912299404732013

namespace A232205

/-- `2^ceil(n/2)*n!` -/
def P4613912299404732013.Spec : Prop :=
  ∀ n, P4613912299404732013.a n = (A232205 n : ℚ)

end A232205

/-! ## A232205.P4773454501707611797

`2*a(n-1)*gcd(n, ∑[n])` with `a(0)=1`
-/

namespace A232205.P4773454501707611797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232205.P4773454501707611797

namespace A232205

/-- `2*a(n-1)*gcd(n, ∑[n])` -/
def P4773454501707611797.Spec : Prop :=
  ∀ n, (P4773454501707611797.a n : ℤ) = A232205 n

end A232205

/-! ## A232205.P8174887677586100193

`2*(n²-n)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A232205.P8174887677586100193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (((n ^ 2 : ℤ) - (n : ℤ)) * a (n - 2))

end

end A232205.P8174887677586100193

namespace A232205

/-- `2*(n²-n)*a(n-2)` -/
def P8174887677586100193.Spec : Prop :=
  ∀ n, P8174887677586100193.a n = A232205 n

end A232205

/-! ## A232205.P7333299133894622159

`n*(n%2+1)*a(n-1)` with `a(0)=1`
-/

namespace A232205.P7333299133894622159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (n % 2 + 1) * a (n - 1)

end

end A232205.P7333299133894622159

namespace A232205

/-- `n*(n%2+1)*a(n-1)` -/
def P7333299133894622159.Spec : Prop :=
  ∀ n, (P7333299133894622159.a n : ℤ) = A232205 n

end A232205

/-! ## A232205.P10736873718605579054

`n*gcd(2, n+1)*a(n-1)` with `a(0)=1`
-/

namespace A232205.P10736873718605579054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * Nat.gcd 2 (n + 1) * a (n - 1)

end

end A232205.P10736873718605579054

namespace A232205

/-- `n*gcd(2, n+1)*a(n-1)` -/
def P10736873718605579054.Spec : Prop :=
  ∀ n, (P10736873718605579054.a n : ℤ) = A232205 n

end A232205

/-! ## A232205.P17965377256282631551

`2*(n-1)*n*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A232205.P17965377256282631551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (((n : ℤ) - 1) * ((n : ℤ) * a (n - 2)))

end

end A232205.P17965377256282631551

namespace A232205

/-- `2*(n-1)*n*a(n-2)` -/
def P17965377256282631551.Spec : Prop :=
  ∀ n, P17965377256282631551.a n = A232205 n

end A232205

/-! ## A232205.P9626485865136188569

`a(n-1)*A109043(n)` with `a(0)=1`
-/

namespace A232205.P9626485865136188569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A109043 n

end

end A232205.P9626485865136188569

namespace A232205

/-- `a(n-1)*A109043(n)` -/
def P9626485865136188569.Spec : Prop :=
  ∀ n, P9626485865136188569.a n = A232205 n

end A232205

/-! ## A232205.P8562771882909051485

`a(n-1)*A204904(n)` with `a(0)=1`
-/

namespace A232205.P8562771882909051485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A204904 n

end

end A232205.P8562771882909051485

namespace A232205

/-- `a(n-1)*A204904(n)` -/
def P8562771882909051485.Spec : Prop :=
  ∀ n, P8562771882909051485.a n = A232205 n

end A232205

/-!
# A232206: Triangle read by rows: T(n,k) is the number of non-equivalent regular polygons with n+1 edges, one of which is rooted, which are dissected by non-intersecting diagonals into k regions, such that two such polygons are identified up to reflection along the rooted edge and twisting along the diagonals that does not affect the root edge (for 1 <= k <= n-1 and n >= 2).

The programs for A232206, there is no canonical definition to state claims against.
-/

/-! ## A232206.P7594344147690445310

`A295380(∑[char[∑[n]]]²-n)`
-/

namespace A232206.P7594344147690445310
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295380 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A232206.P7594344147690445310

/-! ## A232206.P8089373946985159272

`or(char[1], A295380(A038722(n+1)))`
-/

namespace A232206.P8089373946985159272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A295380 (A038722 (n + 1)).toNat)

end

end A232206.P8089373946985159272

/-! ## A232206.P8955943400990174479

`A295380(A038722(abs(1-n)+2))^(1-C(2, n))`
-/

namespace A232206.P8955943400990174479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295380 (A038722 (|1 - (n : ℤ)| + 2).toNat).toNat : ℚ) ^ (1 - (Nat.choose 2 n : ℤ) : ℤ)

end

end A232206.P8955943400990174479

/-! ## A232206.P12858613605170800938

`A295380(A038722(n+1))%A017234(n)`
-/

namespace A232206.P12858613605170800938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295380 (A038722 (n + 1)).toNat) (A017234 n)

end

end A232206.P12858613605170800938

/-! ## A232206.P17167272965460049843

`char[A034175(n)]*A295380(A038722(n+1))`
-/

namespace A232206.P17167272965460049843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034175 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295380 (A038722 (n + 1)).toNat

end

end A232206.P17167272965460049843

/-! ## A232206.P11547861633752629684

`A295380(A038722(n+1))+A059841(2*n+1)`
-/

namespace A232206.P11547861633752629684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295380 (A038722 (n + 1)).toNat + A059841 (2 * n + 1)

end

end A232206.P11547861633752629684

/-! ## A232206.P6849700025816067879

`A295380(A038722(n+1))+A000007(3*n+1)`
-/

namespace A232206.P6849700025816067879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295380 (A038722 (n + 1)).toNat + A000007 (3 * n + 1)

end

end A232206.P6849700025816067879

/-! ## A232206.P12275731470287747254

`A295380(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A232206.P12275731470287747254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295380 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A232206.P12275731470287747254

/-! ## A232206.P10066674132142039487

`A295380(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A232206.P10066674132142039487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295380 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A232206.P10066674132142039487

/-! ## A232206.P15869091803759930827

`A295380(A038722(n+1))/A008683(n+1)²!`
-/

namespace A232206.P15869091803759930827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295380 (A038722 (n + 1)).toNat : ℚ) / (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℚ)

end

end A232206.P15869091803759930827

/-!
# A232207: Arises from color-symmetrized counting of tensor invariants.

The programs for A232207, there is no canonical definition to state claims against.
-/

/-! ## A232207.P12549068048802906306

`A239838(n+1)/A000142(n+1)`
-/

namespace A232207.P12549068048802906306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239838 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A232207.P12549068048802906306

/-!
# A232208: Arises from color-symmetrized counting of tensor invariants.

The programs for A232208, there is no canonical definition to state claims against.
-/

/-! ## A232208.P2444776061880621514

`round(A005312(n+2)/π)`
-/

namespace A232208.P2444776061880621514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005312 (n + 2) : ℝ) / Real.pi)

end

end A232208.P2444776061880621514

/-! ## A232208.P11826833361390152720

`A318832((p?[round(8*n/7)]-n)^n)`
-/

namespace A232208.P11826833361390152720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318832 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)) ^ n).toNat

end

end A232208.P11826833361390152720

/-!
# A232209: Height of algebraic number 1 + sqrt(2) + ... + sqrt(n).

The programs for A232209, there is no canonical definition to state claims against.
-/

/-! ## A232209.P15313286573296978877

`A006093(n+1)*A319721(A006882(n))`
-/

namespace A232209.P15313286573296978877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A319721 (A006882 n).toNat

end

end A232209.P15313286573296978877

/-!
# A232210: Let b_k=3...3 consist of k>=1 3's. Then a(n) is the smallest k such that the concatenation prime(n)b_k is prime, or a(n)=0 if there is no such prime.

The programs for A232210, there is no canonical definition to state claims against.
-/

/-! ## A232210.P13189139081588992664

`A372262(Δ[A007504(n)])%A025506(n)`
-/

namespace A232210.P13189139081588992664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372262 (f1 (n + 1) - f1 n).toNat) (A025506 n)

end

end A232210.P13189139081588992664

/-! ## A232210.P14907632871571957022

`A372262(A000040(n+1))%A025506(n)`
-/

namespace A232210.P14907632871571957022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372262 (A000040 (n + 1)).toNat) (A025506 n)

end

end A232210.P14907632871571957022

/-! ## A232210.P7743066070595645996

`A372262(sqrt(A001248(n+1)))%A025506(n)`
-/

namespace A232210.P7743066070595645996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372262 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat) (A025506 n)

end

end A232210.P7743066070595645996

/-! ## A232210.P3709123243871677391

`A372262(A006093(n+1)+1)%A025506(n)`
-/

namespace A232210.P3709123243871677391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372262 (A006093 (n + 1) + 1).toNat) (A025506 n)

end

end A232210.P3709123243871677391

/-! ## A232210.P10095776075313823859

`A372262(A008864(n+1)-1)%A025506(n)`
-/

namespace A232210.P10095776075313823859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372262 (A008864 (n + 1) - 1).toNat) (A025506 n)

end

end A232210.P10095776075313823859

/-! ## A232210.P4897257955895692837

`A372262(A040976(n+1)+2)%A025506(n)`
-/

namespace A232210.P4897257955895692837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372262 (A040976 (n + 1) + 2).toNat) (A025506 n)

end

end A232210.P4897257955895692837

/-! ## A232210.P5435110882590426974

`A372262(∑{d}[n+1, A007444(#)])%A025506(n)`
-/

namespace A232210.P5435110882590426974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372262 (∑ d ∈ Nat.divisors (f1 n), A007444 d).toNat) (A025506 n)

end

end A232210.P5435110882590426974

/-!
# A232211: Arises from color-symmetrized counting of tensor invariants.

The programs for A232211, there is no canonical definition to state claims against.
-/

/-! ## A232211.P18281568753933244663

`A109785(n*A081039(n))`
-/

namespace A232211.P18281568753933244663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109785 ((n : ℤ) * A081039 n).toNat

end

end A232211.P18281568753933244663

/-!
# A232212: Arises from color-symmetrized counting of tensor invariants.

The programs for A232212, there is no canonical definition to state claims against.
-/

/-! ## A232212.P11325880259782290584

`A232219(n+1)%720`
-/

namespace A232212.P11325880259782290584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232219 (n + 1)) 720

end

end A232212.P11325880259782290584

/-! ## A232212.P11933328179872040187

`A232219(A007094(n+1))`
-/

namespace A232212.P11933328179872040187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232219 (A007094 (n + 1)).toNat

end

end A232212.P11933328179872040187

/-! ## A232212.P12880868767440146146

`xor(A222489(n+1), A325159(n))`
-/

namespace A232212.P12880868767440146146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A222489 (n + 1)) (A325159 n)

end

end A232212.P12880868767440146146

/-!
# A232213: Arises from color-symmetrized counting of tensor invariants.

The programs for A232213, there is no canonical definition to state claims against.
-/

/-! ## A232213.P13200026517793225873

`A099352(A106182(n²))`
-/

namespace A232213.P13200026517793225873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099352 (A106182 (n ^ 2)).toNat

end

end A232213.P13200026517793225873

/-!
# A232215: Number of n X n matrices (up to permutation of their rows and columns) with nonnegative integer entries with all row and column sums equal to 3.

The programs for A232215, there is no canonical definition to state claims against.
-/

/-! ## A232215.P18157576748949462043

`A328159(n)+a(n-1)` with `a(0)=1`
-/

namespace A232215.P18157576748949462043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328159 n + a (n - 1)

end

end A232215.P18157576748949462043

/-! ## A232215.P16376700532937356585

`∑[A328159(abs(1-n)+1)]`
-/

namespace A232215.P16376700532937356585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328159 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232215.P16376700532937356585

/-! ## A232215.P13541529219328029462

`∑[A328159(A028310(n))]+1`
-/

namespace A232215.P13541529219328029462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328159 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A232215.P13541529219328029462

/-! ## A232215.P1197061167513917640

`∑[A328159(A000007(n)+n)]+1`
-/

namespace A232215.P1197061167513917640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328159 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A232215.P1197061167513917640

/-! ## A232215.P1694270137972914605

`2-(A000045((-1)^(2*n))-∑[A328159(A028310(n))])`
-/

namespace A232215.P1694270137972914605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328159 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000045 ((-1) ^ (2 * n)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232215.P1694270137972914605

/-!
# A232216: Number of non-isomorphic n X n nonnegative integer matrices with all row and column sums equal to 4 up to permutations of rows and columns.

The programs for A232216, there is no canonical definition to state claims against.
-/

/-! ## A232216.P14397005265665248128

`A333733(A052905(n+2))`
-/

namespace A232216.P14397005265665248128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (A052905 (n + 2)).toNat

end

end A232216.P14397005265665248128

/-! ## A232216.P3640735364345621400

`A333733(A056115(n)+10)`
-/

namespace A232216.P3640735364345621400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (A056115 n + 10).toNat

end

end A232216.P3640735364345621400

/-! ## A232216.P16908488913338826707

`A333733(eq[3, A212551(n)])`
-/

namespace A232216.P16908488913338826707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232216.P16908488913338826707

/-! ## A232216.P3526020505443202989

`A333733(A000217(n+4)+n)`
-/

namespace A232216.P3526020505443202989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A232216.P3526020505443202989

/-! ## A232216.P4291291250109498483

`A333733(eq[3, A332954(n)])`
-/

namespace A232216.P4291291250109498483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232216.P4291291250109498483

/-!
# A232217: Arises from color-symmetrized counting of tensor invariants.

The programs for A232217, there is no canonical definition to state claims against.
-/

/-! ## A232217.P15901888149631288266

`A220658((C(comp[∑[n]]-n, 2)+1+n)*n!)`
-/

namespace A232217.P15901888149631288266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 + n) * Nat.factorial n)

end

end A232217.P15901888149631288266

/-! ## A232217.P8417732548788046405

`A059261(A346737(∑[n]))`
-/

namespace A232217.P8417732548788046405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A346737 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232217.P8417732548788046405

/-!
# A232218: Arises from color-symmetrized counting of tensor invariants.

The programs for A232218, there is no canonical definition to state claims against.
-/

/-! ## A232218.P7298401285973644510

`A255440(n+1)/(n+1)!`
-/

namespace A232218.P7298401285973644510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255440 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A232218.P7298401285973644510

/-! ## A232218.P12079874247757647385

`A255440(n+1)/A000142(n+1)`
-/

namespace A232218.P12079874247757647385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255440 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A232218.P12079874247757647385

/-! ## A232218.P2656819042395489605

`A137952(n)+A001222(A261398(n+1))`
-/

namespace A232218.P2656819042395489605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137952 n + A001222 (A261398 (n + 1)).toNat

end

end A232218.P2656819042395489605

/-!
# A232220: Arises from color-symmetrized counting of tensor invariants.

The programs for A232220, there is no canonical definition to state claims against.
-/

/-! ## A232220.P508322830767003705

`A057567(10^n)-A035935(n)`
-/

namespace A232220.P508322830767003705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (10 ^ n) - A035935 n

end

end A232220.P508322830767003705

/-!
# A232221: a(n) = Sum_{i=1..n} (A077068(i) - A077065(i)).

The programs for A232221, the canonical program `A232221.P6150882525445185730` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232221 has offset 1).

The definition of A232221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232221.P13727047001208698185

`∑[A232342(n+1)]`
-/

namespace A232221.P13727047001208698185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232221.P13727047001208698185

namespace A232221

/-- `∑[A232342(n+1)]` -/
def P13727047001208698185.Spec : Prop :=
  ∀ n, P13727047001208698185.a n = A232221 (n + 1)

end A232221

/-! ## A232221.P18062656040051129288

`4*A233973(n+1)`
-/

namespace A232221.P18062656040051129288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A233973 (n + 1)

end

end A232221.P18062656040051129288

namespace A232221

/-- `4*A233973(n+1)` -/
def P18062656040051129288.Spec : Prop :=
  ∀ n, P18062656040051129288.a n = A232221 (n + 1)

end A232221

/-! ## A232221.P6150882525445185730

`∑[A077068(n+1)-A077065(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A232221

/-- `∑[A077068(n+1)-A077065(n+1)]` -/
def P6150882525445185730.Spec : Prop :=
  ∀ n, P6150882525445185730.a n = A232221 (n + 1)

theorem P6150882525445185730.correct : P6150882525445185730.Spec := by
  intro n
  simp only [A232221, Nat.add_sub_cancel]

end A232221

/-! ## A232221.P1534721015741979558

`∑[A005383(n+1)+1-A077065(n+1)]`
-/

namespace A232221.P1534721015741979558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1) + (1 - A077065 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232221.P1534721015741979558

namespace A232221

/-- `∑[A005383(n+1)+1-A077065(n+1)]` -/
def P1534721015741979558.Spec : Prop :=
  ∀ n, P1534721015741979558.a n = A232221 (n + 1)

end A232221

/-! ## A232221.P14230706830105852408

`∑[A077068(n+1)+1-A005385(n+1)]`
-/

namespace A232221.P14230706830105852408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) + (1 - A005385 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232221.P14230706830105852408

namespace A232221

/-- `∑[A077068(n+1)+1-A005385(n+1)]` -/
def P14230706830105852408.Spec : Prop :=
  ∀ n, P14230706830105852408.a n = A232221 (n + 1)

end A232221

/-! ## A232221.P17503849570871382029

`∑[A005383(n+1)+2-A005385(n+1)]`
-/

namespace A232221.P17503849570871382029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1) + (2 - A005385 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232221.P17503849570871382029

namespace A232221

/-- `∑[A005383(n+1)+2-A005385(n+1)]` -/
def P17503849570871382029.Spec : Prop :=
  ∀ n, P17503849570871382029.a n = A232221 (n + 1)

end A232221

/-! ## A232221.P14264034450762641925

`∑[2*(A005382(n+1)-A005384(n+1))]`
-/

namespace A232221.P14264034450762641925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005382 (n + 1) - A005384 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232221.P14264034450762641925

namespace A232221

/-- `∑[2*(A005382(n+1)-A005384(n+1))]` -/
def P14264034450762641925.Spec : Prop :=
  ∀ n, P14264034450762641925.a n = A232221 (n + 1)

end A232221

/-! ## A232221.P13464287797693713174

`A008586(A233973(n+1))`
-/

namespace A232221.P13464287797693713174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A233973 (n + 1)).toNat

end

end A232221.P13464287797693713174

namespace A232221

/-- `A008586(A233973(n+1))` -/
def P13464287797693713174.Spec : Prop :=
  ∀ n, P13464287797693713174.a n = A232221 (n + 1)

end A232221

/-!
# A232222: Number of connected matchings with n crossings, in a disk.

The programs for A232222, there is no canonical definition to state claims against.
-/

/-! ## A232222.P16669517753406938482

`A002265(A173216(n+1)+A002315(n))`
-/

namespace A232222.P16669517753406938482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A173216 (n + 1) + A002315 n).toNat

end

end A232222.P16669517753406938482

/-! ## A232222.P327710006534264080

`xor(A003242(3*n), A284265(A003242(3*n)))`
-/

namespace A232222.P327710006534264080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003242 (3 * n)) (A284265 (A003242 (3 * n)).toNat)

end

end A232222.P327710006534264080

/-!
# A232224: Number of ways of arranging n chords on a circle (handshakes between 2n people across a table) with exactly 3 simple intersections.

The programs for A232224, there is no canonical definition to state claims against.
-/

/-! ## A232224.P4278526640643317560

`A067310(∑[n+4]+2)`
-/

namespace A232224.P4278526640643317560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067310 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232224.P4278526640643317560

/-! ## A232224.P17527609199641052465

`A336330(32*a(n-2))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=20`
-/

namespace A232224.P17527609199641052465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 20] fun n a =>
  A336330 (32 * a (n - 2)).toNat

end

end A232224.P17527609199641052465

/-!
# A232226: a(n) = number of crossing connected diagrams in a disk having n crossings.

The programs for A232226, there is no canonical definition to state claims against.
-/

/-! ## A232226.P8157749239000077617

`A344591(A174701(n+1)*A357014(n+1))`
-/

namespace A232226.P8157749239000077617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344591 (A174701 (n + 1) * A357014 (n + 1)).toNat

end

end A232226.P8157749239000077617

/-!
# A232228: a(1)=1; thereafter a(n) = 2^(number of bits in binary expansion of a(n-1)) + 1 + a(n-1).

The programs for A232228, there is no canonical definition to state claims against.
-/

/-! ## A232228.P6620197151043804619

`∑[record[A052552(A085515(n+1))]]`
-/

namespace A232228.P6620197151043804619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (A085515 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232228.P6620197151043804619

/-! ## A232228.P10838886679785674834

`A004755(a(n-1))+1` with `a(0)=1`
-/

namespace A232228.P10838886679785674834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004755 (a (n - 1)).toNat + 1

end

end A232228.P10838886679785674834

/-! ## A232228.P3623057114685967077

`∑[record[A240535(A173671(n+1))]]`
-/

namespace A232228.P3623057114685967077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240535 (A173671 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232228.P3623057114685967077

/-! ## A232228.P10902842863415878737

`A206332(a(n-1))+2` with `a(0)=1`
-/

namespace A232228.P10902842863415878737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A206332 (a (n - 1)).toNat + 2

end

end A232228.P10902842863415878737

/-!
# A232229: a(1)=9; thereafter a(n) = 8*10^(n-1) + 8 + a(n-1).

The programs for A232229, the canonical program `A232229.P7994150055548036040` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232229 has offset 1).

The definition of A232229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*10^n+8+a(n-1)` (program `A232229.P7994150055548036040`, by `A232229.P7994150055548036040.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232229.P7994150055548036040

`8*10^n+8+a(n-1)` with `a(0)=9`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A232229

/-- `8*10^n+8+a(n-1)` -/
def P7994150055548036040.Spec : Prop :=
  ∀ n, (P7994150055548036040.a n : ℤ) = A232229 (n + 1)

theorem P7994150055548036040.correct : P7994150055548036040.Spec := by
  intro n
  simp only [A232229, Nat.add_sub_cancel]

end A232229

/-! ## A232229.P3648776615777080497

`(8*10^(n+1)-71)/9+8*(n+1)`
-/

namespace A232229.P3648776615777080497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 10 ^ (n + 1) : ℤ) - 71 : ℚ) / 9 + (8 * (n + 1) : ℚ)

end

end A232229.P3648776615777080497

namespace A232229

/-- `(8*10^(n+1)-71)/9+8*(n+1)` -/
def P3648776615777080497.Spec : Prop :=
  ∀ n, P3648776615777080497.a n = (A232229 (n + 1) : ℚ)

theorem P3648776615777080497.correct : P3648776615777080497.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A232229, Nat.add_sub_cancel, A232229.P3648776615777080497.a, A232229.P7994150055548036040.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A232229, Nat.add_sub_cancel, A232229.P3648776615777080497.a, A232229.P7994150055548036040.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A232229

/-! ## A232229.P6047725131713265457

`xor(1, 8*(∑[10^n]+n))`
-/

namespace A232229.P6047725131713265457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A232229.P6047725131713265457

namespace A232229

/-- `xor(1, 8*(∑[10^n]+n))` -/
def P6047725131713265457.Spec : Prop :=
  ∀ n, (P6047725131713265457.a n : ℤ) = A232229 (n + 1)

end A232229

/-! ## A232229.P17439870772624512

`or(1, ∑[8*A000533(n)])`
-/

namespace A232229.P17439870772624512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232229.P17439870772624512

namespace A232229

/-- `or(1, ∑[8*A000533(n)])` -/
def P17439870772624512.Spec : Prop :=
  ∀ n, P17439870772624512.a n = A232229 (n + 1)

end A232229

/-! ## A232229.P134572658680434034

`or(1, 8*(A290420(2*n)+n))`
-/

namespace A232229.P134572658680434034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (8 * (A290420 (2 * n) + (n : ℤ)))

end

end A232229.P134572658680434034

namespace A232229

/-- `or(1, 8*(A290420(2*n)+n))` -/
def P134572658680434034.Spec : Prop :=
  ∀ n, P134572658680434034.a n = A232229 (n + 1)

end A232229

/-! ## A232229.P1444097481243673447

`∑[A000533(n)*A329513(n+4)]`
-/

namespace A232229.P1444097481243673447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 n * A329513 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232229.P1444097481243673447

namespace A232229

/-- `∑[A000533(n)*A329513(n+4)]` -/
def P1444097481243673447.Spec : Prop :=
  ∀ n, P1444097481243673447.a n = A232229 (n + 1)

end A232229

/-!
# A232230: Expansion of (1 - 2*x + x^2 + x^3 + x^5) / ((1 - x)*(1 - 2*x - x^3)).

The programs for A232230, the canonical program `A232230.P13566847922325455818` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232230 has offset 0).

The definition of A232230 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2+x^3+x^5)/(1-3x+2x^2-x^3+x^4))` (program `A232230.P13566847922325455818`, by `A232230.P13566847922325455818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232230.P13566847922325455818

`ogf((1-2x+x^2+x^3+x^5)/(1-3x+2x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A232230

/-- `ogf((1-2x+x^2+x^3+x^5)/(1-3x+2x^2-x^3+x^4))` -/
def P13566847922325455818.Spec : Prop :=
  ∀ n, P13566847922325455818.a n = A232230 n

theorem P13566847922325455818.correct : P13566847922325455818.Spec := by
  intro n
  simp only [A232230]

end A232230

/-! ## A232230.P4441999404836948449

`2*a(n-1)+a(n-3)+2` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=14`
-/

namespace A232230.P4441999404836948449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 6, 14] fun n a =>
  2 * a (n - 1) + a (n - 3) + 2

end

end A232230.P4441999404836948449

namespace A232230

/-- `2*a(n-1)+a(n-3)+2` -/
def P4441999404836948449.Spec : Prop :=
  ∀ n, (P4441999404836948449.a n : ℤ) = A232230 n

end A232230

/-! ## A232230.P2801676179131396039

`A193641(A028310(n))-A157928(n)`
-/

namespace A232230.P2801676179131396039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (A028310 n).toNat - A157928 n

end

end A232230.P2801676179131396039

namespace A232230

/-- `A193641(A028310(n))-A157928(n)` -/
def P2801676179131396039.Spec : Prop :=
  ∀ n, P2801676179131396039.a n = A232230 n

end A232230

/-! ## A232230.P2306717208628137340

`A193641(A028310(n))-char[A175498(n+2)]`
-/

namespace A232230.P2306717208628137340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175498 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (A028310 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A232230.P2306717208628137340

namespace A232230

/-- `A193641(A028310(n))-char[A175498(n+2)]` -/
def P2306717208628137340.Spec : Prop :=
  ∀ n, P2306717208628137340.a n = A232230 n

end A232230

/-! ## A232230.P2078833527183197970

`A193641(A028310(n))-A001222(A136548(n+1))`
-/

namespace A232230.P2078833527183197970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (A028310 n).toNat - A001222 (A136548 (n + 1)).toNat

end

end A232230.P2078833527183197970

namespace A232230

/-- `A193641(A028310(n))-A001222(A136548(n+1))` -/
def P2078833527183197970.Spec : Prop :=
  ∀ n, P2078833527183197970.a n = A232230 n

end A232230

/-! ## A232230.P12371451336840310143

`A193641(A028310(n))-A057427(n-A057427(n))`
-/

namespace A232230.P12371451336840310143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (A028310 n).toNat - A057427 ((n : ℤ) - A057427 n).toNat

end

end A232230.P12371451336840310143

namespace A232230

/-- `A193641(A028310(n))-A057427(n-A057427(n))` -/
def P12371451336840310143.Spec : Prop :=
  ∀ n, P12371451336840310143.a n = A232230 n

end A232230

/-! ## A232230.P7292458529775927326

`A193641(A028310(n))-A158547(n)%A028310(n)`
-/

namespace A232230.P7292458529775927326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (A028310 n).toNat - Int.tmod (A158547 n) (A028310 n)

end

end A232230.P7292458529775927326

namespace A232230

/-- `A193641(A028310(n))-A158547(n)%A028310(n)` -/
def P7292458529775927326.Spec : Prop :=
  ∀ n, P7292458529775927326.a n = A232230 n

end A232230

/-! ## A232230.P18111421118879017412

`A193641(A028310(n))-A000124(n)%A004525(2*n+1)`
-/

namespace A232230.P18111421118879017412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (A028310 n).toNat - Int.tmod (A000124 n) (A004525 (2 * n + 1))

end

end A232230.P18111421118879017412

namespace A232230

/-- `A193641(A028310(n))-A000124(n)%A004525(2*n+1)` -/
def P18111421118879017412.Spec : Prop :=
  ∀ n, P18111421118879017412.a n = A232230 n

end A232230

/-!
# A232231: G.f.: (1-3*x+2*x^2+2*x^4+4*x^5)/((1-x)*(1-3*x-4*x^3)).

The programs for A232231, the canonical program `A232231.P10788250113272548020` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232231 has offset 0).

The definition of A232231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232231.P10788250113272548020

`3*a(n-1)+4*a(n-3)+6` with `a(0)=1, a(1)=1, a(2)=3, a(3)=13, a(4)=45`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A232231

/-- `3*a(n-1)+4*a(n-3)+6` -/
def P10788250113272548020.Spec : Prop :=
  ∀ n, (P10788250113272548020.a n : ℤ) = A232231 n

theorem P10788250113272548020.correct : P10788250113272548020.Spec := by
  intro n
  simp only [A232231]

end A232231

/-! ## A232231.P15126097980395959889

`A080605(A073985(n+1)+1)`
-/

namespace A232231.P15126097980395959889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080605 (A073985 (n + 1) + 1).toNat

end

end A232231.P15126097980395959889

namespace A232231

/-- `A080605(A073985(n+1)+1)` -/
def P15126097980395959889.Spec : Prop :=
  ∀ n, P15126097980395959889.a n = A232231 n

end A232231

/-! ## A232231.P16197872501318234686

`A233583(A071721(n))-A000085(n)`
-/

namespace A232231.P16197872501318234686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A071721 n).toNat - A000085 n

end

end A232231.P16197872501318234686

namespace A232231

/-- `A233583(A071721(n))-A000085(n)` -/
def P16197872501318234686.Spec : Prop :=
  ∀ n, P16197872501318234686.a n = A232231 n

end A232231

/-!
# A232232: Regular rainbow order of complete graph K_n.

The programs for A232232, there is no canonical definition to state claims against.
-/

/-! ## A232232.P54053859012947457

`A103505(n)+A062157(A190173(n+1))`
-/

namespace A232232.P54053859012947457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 n + A062157 (A190173 (n + 1)).toNat

end

end A232232.P54053859012947457

/-! ## A232232.P6820378101360161305

`and(A232233(n+1), A232233(A008816(n)))`
-/

namespace A232232.P6820378101360161305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A232233 (n + 1)) (A232233 (A008816 n).toNat)

end

end A232232.P6820378101360161305

/-! ## A232232.P7832534910491795311

`or(A004135(n+1), A007862(A274585(n)))`
-/

namespace A232232.P7832534910491795311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004135 (n + 1)) (A007862 (A274585 n).toNat)

end

end A232232.P7832534910491795311

/-! ## A232232.P11091229503214927499

`and(A232233(A051004(n+1)), A232233(n+1))`
-/

namespace A232232.P11091229503214927499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A232233 (A051004 (n + 1)).toNat) (A232233 (n + 1))

end

end A232232.P11091229503214927499

/-! ## A232232.P13536078444787374662

`A231566(A232233(n+1))`
-/

namespace A232232.P13536078444787374662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231566 (A232233 (n + 1)).toNat

end

end A232232.P13536078444787374662

/-!
# A232233: Regular rainbow up-order of complete graph K_n.

The programs for A232233, there is no canonical definition to state claims against.
-/

/-! ## A232233.P2234019710087959771

`or(A081805(n+1), A232232(A085908(n+1)))`
-/

namespace A232233.P2234019710087959771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081805 (n + 1)) (A232232 (A085908 (n + 1)).toNat)

end

end A232233.P2234019710087959771

/-! ## A232233.P8219253985409526684

`4*A218470(n)+A103505(n)+A062157(A190173(n+1))`
-/

namespace A232233.P8219253985409526684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A218470 n + (A103505 n + A062157 (A190173 (n + 1)).toNat)

end

end A232233.P8219253985409526684

/-!
# A232234: Additive bases: a(n) is the least integer such that there is an n-element set of nonnegative integers, the sums of pairs of which are distinct and at most a(n).

The programs for A232234, there is no canonical definition to state claims against.
-/

/-! ## A232234.P8238306671401611024

`2*A106683(∑[n+1])`
-/

namespace A232234.P8238306671401611024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232234.P8238306671401611024

/-! ## A232234.P3855282493192755673

`2*(A227590(n+1)-1)`
-/

namespace A232234.P3855282493192755673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A227590 (n + 1) - 1)

end

end A232234.P3855282493192755673

/-! ## A232234.P16304761695666903320

`A005843(A106683(∑[n+1]))`
-/

namespace A232234.P16304761695666903320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A106683 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232234.P16304761695666903320

/-! ## A232234.P3476684855673559155

`A004273(A227590(n+1))-1`
-/

namespace A232234.P3476684855673559155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A227590 (n + 1)).toNat - 1

end

end A232234.P3476684855673559155

/-! ## A232234.P6491154259334510995

`A005843(A227590(n+1)-1)`
-/

namespace A232234.P6491154259334510995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A227590 (n + 1) - 1).toNat

end

end A232234.P6491154259334510995

/-!
# A232235: Primes that can be written in binary representation as concatenation of two primes: p and p-2. That is, primes representable as p * 2^L + p-2, where p and p-2 are primes, and L is the length of binary representation of p-2: L = A070939(p-2).

The programs for A232235, there is no canonical definition to state claims against.
-/

/-! ## A232235.P17239713744392011549

`A232237(n+1)*2^A070939(A232237(n+1)-2)+A232237(n+1)-2`
-/

namespace A232235.P17239713744392011549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232237 (n + 1) : ℚ) * (2 : ℚ) ^ (A070939 (A232237 (n + 1) - 2).toNat : ℤ) + (A232237 (n + 1) : ℚ) - 2

end

end A232235.P17239713744392011549

/-!
# A232236: Primes that can be written in binary representation as concatenation of two primes: p and p+2. That is, primes representable as p * 2^L + p+2, where p and p+2 are primes, and L is the length of binary representation of p+2: L = A070939(p+2).

The programs for A232236, there is no canonical definition to state claims against.
-/

/-! ## A232236.P5256695339502777912

`A232238(n+1)*2^A070939(A232238(n+1)+2)+A232238(n+1)+2`
-/

namespace A232236.P5256695339502777912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232238 (n + 1) : ℚ) * (2 : ℚ) ^ (A070939 (A232238 (n + 1) + 2).toNat : ℤ) + (A232238 (n + 1) : ℚ) + 2

end

end A232236.P5256695339502777912

/-!
# A232237: Primes p such that p-2 and q are primes, where q is concatenation of binary representations of p and p-2: q = p * 2^L + p-2, where L is the length of binary representation of p-2: L=A070939(p-2).

The programs for A232237, there is no canonical definition to state claims against.
-/

/-! ## A232237.P17141030593294268368

`A006512(A094960(2*n+1)-A051351(n))`
-/

namespace A232237.P17141030593294268368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A094960 (2 * n + 1) - A051351 n).toNat

end

end A232237.P17141030593294268368

/-!
# A232238: Primes p such that p+2 and q are primes, where q is concatenation of binary representations of p and p+2: q = p * 2^L + p+2, where L is the length of binary representation of p+2: L=A070939(p+2).

The programs for A232238, there is no canonical definition to state claims against.
-/

/-! ## A232238.P8301641799079305138

`A319908(∑[A049614(n)])`
-/

namespace A232238.P8301641799079305138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319908 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232238.P8301641799079305138

/-! ## A232238.P5189735166503699066

`A319908(record[A193495(n)])`
-/

namespace A232238.P5189735166503699066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A232238.P5189735166503699066

/-!
# A232242: A walk based on the digits of E = exp(1) (A001113).

The programs for A232242, there is no canonical definition to state claims against.
-/

/-! ## A232242.P3274769039063423668

`∑[A008836(A050142(n))]+1`
-/

namespace A232242.P3274769039063423668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A050142 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A232242.P3274769039063423668

/-! ## A232242.P11006449172759283319

`A287655(val(A287706(n+2), 2))`
-/

namespace A232242.P11006449172759283319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287655 (SequenceMachineLib.valuation (A287706 (n + 2)).toNat 2)

end

end A232242.P11006449172759283319

/-! ## A232242.P9803788323288224928

`A287655(n+2)%A177695(n)`
-/

namespace A232242.P9803788323288224928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287655 (n + 2)) (A177695 n)

end

end A232242.P9803788323288224928

/-! ## A232242.P13989459447756124192

`A287655(n+2)+A000007(A276026(n+1))`
-/

namespace A232242.P13989459447756124192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287655 (n + 2) + A000007 (A276026 (n + 1)).toNat

end

end A232242.P13989459447756124192

/-! ## A232242.P13338851546547559495

`∑{e}[A000230(A093659(n)), A287655(n+1+#)]`
-/

namespace A232242.P13338851546547559495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A093659 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A287655 (n + 1 + Nat.factorization (f1 n).natAbs p)

end

end A232242.P13338851546547559495

/-!
# A232243: a(n) = wt(n^2) - wt(n), where wt(n) = A000120(n) is the binary weight function.

The programs for A232243, the canonical program `A232243.P16373768799838248871` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232243 has offset 0).

The definition of A232243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232243.P16373768799838248871

`A159918(n)-A000120(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A232243

/-- `A159918(n)-A000120(n)` -/
def P16373768799838248871.Spec : Prop :=
  ∀ n, P16373768799838248871.a n = A232243 n

theorem P16373768799838248871.correct : P16373768799838248871.Spec := by
  intro n
  simp only [A232243]

end A232243

/-! ## A232243.P3020728860405712299

`A159918(n)-log2(A001316(n))`
-/

namespace A232243.P3020728860405712299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A159918 n : ℝ) - Real.logb 2 (A001316 n : ℝ)

end

end A232243.P3020728860405712299

namespace A232243

/-- `A159918(n)-log2(A001316(n))` -/
def P3020728860405712299.Spec : Prop :=
  ∀ n, P3020728860405712299.a n = (A232243 n : ℝ)

end A232243

/-! ## A232243.P4094327018721702556

`A232245(n)-log2(A102376(n))`
-/

namespace A232243.P4094327018721702556
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232245 n : ℝ) - Real.logb 2 (A102376 n : ℝ)

end

end A232243.P4094327018721702556

namespace A232243

/-- `A232245(n)-log2(A102376(n))` -/
def P4094327018721702556.Spec : Prop :=
  ∀ n, P4094327018721702556.a n = (A232243 n : ℝ)

end A232243

/-! ## A232243.P11912064677833430664

`A159918(n)-∑[A088705(n)]`
-/

namespace A232243.P11912064677833430664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232243.P11912064677833430664

namespace A232243

/-- `A159918(n)-∑[A088705(n)]` -/
def P11912064677833430664.Spec : Prop :=
  ∀ n, P11912064677833430664.a n = A232243 n

end A232243

/-! ## A232243.P5353052965028564080

`A232245(n)-2*A000120(n)`
-/

namespace A232243.P5353052965028564080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232245 n - 2 * A000120 n

end

end A232243.P5353052965028564080

namespace A232243

/-- `A232245(n)-2*A000120(n)` -/
def P5353052965028564080.Spec : Prop :=
  ∀ n, P5353052965028564080.a n = A232243 n

end A232243

/-! ## A232243.P14340339337102072496

`2*A159918(n)-A232245(n)`
-/

namespace A232243.P14340339337102072496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159918 n - A232245 n

end

end A232243.P14340339337102072496

namespace A232243

/-- `2*A159918(n)-A232245(n)` -/
def P14340339337102072496.Spec : Prop :=
  ∀ n, P14340339337102072496.a n = A232243 n

end A232243

/-! ## A232243.P16801424408293592227

`A011371(n)+A159918(n)-n`
-/

namespace A232243.P16801424408293592227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (A159918 n - (n : ℤ))

end

end A232243.P16801424408293592227

namespace A232243

/-- `A011371(n)+A159918(n)-n` -/
def P16801424408293592227.Spec : Prop :=
  ∀ n, P16801424408293592227.a n = A232243 n

end A232243

/-! ## A232243.P3519846383548809036

`A232245(n)-log2(A001316(n)²)`
-/

namespace A232243.P3519846383548809036
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232245 n : ℝ) - Real.logb 2 (A001316 n ^ 2 : ℝ)

end

end A232243.P3519846383548809036

namespace A232243

/-- `A232245(n)-log2(A001316(n)²)` -/
def P3519846383548809036.Spec : Prop :=
  ∀ n, P3519846383548809036.a n = (A232243 n : ℝ)

end A232243

/-! ## A232243.P17553751856377911820

`A159918(n)-A001222(A071044(n))`
-/

namespace A232243.P17553751856377911820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n - A001222 (A071044 n).toNat

end

end A232243.P17553751856377911820

namespace A232243

/-- `A159918(n)-A001222(A071044(n))` -/
def P17553751856377911820.Spec : Prop :=
  ∀ n, P17553751856377911820.a n = A232243 n

end A232243

/-! ## A232243.P3117390092361727405

`A159918(n)-A159918(A038573(n))`
-/

namespace A232243.P3117390092361727405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n - A159918 (A038573 n).toNat

end

end A232243.P3117390092361727405

namespace A232243

/-- `A159918(n)-A159918(A038573(n))` -/
def P3117390092361727405.Spec : Prop :=
  ∀ n, P3117390092361727405.a n = A232243 n

end A232243

/-! ## A232243.P1038742697877077811

`A159918(n)-A001222(A268444(n))`
-/

namespace A232243.P1038742697877077811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n - A001222 (A268444 n).toNat

end

end A232243.P1038742697877077811

namespace A232243

/-- `A159918(n)-A001222(A268444(n))` -/
def P1038742697877077811.Spec : Prop :=
  ∀ n, P1038742697877077811.a n = A232243 n

end A232243

/-! ## A232243.P3973830446582512246

`A159918(n)-A159918(A073138(n))`
-/

namespace A232243.P3973830446582512246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n - A159918 (A073138 n).toNat

end

end A232243.P3973830446582512246

namespace A232243

/-- `A159918(n)-A159918(A073138(n))` -/
def P3973830446582512246.Spec : Prop :=
  ∀ n, P3973830446582512246.a n = A232243 n

end A232243

/-! ## A232243.P7728889870210202431

`A159918(n)-A001222(A278222(n))`
-/

namespace A232243.P7728889870210202431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n - A001222 (A278222 n).toNat

end

end A232243.P7728889870210202431

namespace A232243

/-- `A159918(n)-A001222(A278222(n))` -/
def P7728889870210202431.Spec : Prop :=
  ∀ n, P7728889870210202431.a n = A232243 n

end A232243

/-! ## A232243.P14034879391947139277

`A159918(n)-A001222(A286588(n))`
-/

namespace A232243.P14034879391947139277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n - A001222 (A286588 n).toNat

end

end A232243.P14034879391947139277

namespace A232243

/-- `A159918(n)-A001222(A286588(n))` -/
def P14034879391947139277.Spec : Prop :=
  ∀ n, P14034879391947139277.a n = A232243 n

end A232243

/-! ## A232243.P1633308702785079621

`log2(A060632(n²)/A060632(n))`
-/

namespace A232243.P1633308702785079621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A060632 (n ^ 2) : ℚ) / (A060632 n : ℚ) : ℝ)

end

end A232243.P1633308702785079621

namespace A232243

/-- `log2(A060632(n²)/A060632(n))` -/
def P1633308702785079621.Spec : Prop :=
  ∀ n, P1633308702785079621.a n = (A232243 n : ℝ)

end A232243

/-! ## A232243.P7212417825542538783

`log2(A001316(n²)/A001316(n))`
-/

namespace A232243.P7212417825542538783
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A001316 (n ^ 2) : ℚ) / (A001316 n : ℚ) : ℝ)

end

end A232243.P7212417825542538783

namespace A232243

/-- `log2(A001316(n²)/A001316(n))` -/
def P7212417825542538783.Spec : Prop :=
  ∀ n, P7212417825542538783.a n = (A232243 n : ℝ)

end A232243

/-! ## A232243.P12030189818291433563

`A000120(A004652(n))-A000120(n)`
-/

namespace A232243.P12030189818291433563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004652 n).toNat - A000120 n

end

end A232243.P12030189818291433563

namespace A232243

/-- `A000120(A004652(n))-A000120(n)` -/
def P12030189818291433563.Spec : Prop :=
  ∀ n, P12030189818291433563.a n = A232243 n

end A232243

/-! ## A232243.P12602615405713420739

`A000120(A000982(n))-A000120(n)`
-/

namespace A232243.P12602615405713420739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000982 n).toNat - A000120 n

end

end A232243.P12602615405713420739

namespace A232243

/-- `A000120(A000982(n))-A000120(n)` -/
def P12602615405713420739.Spec : Prop :=
  ∀ n, P12602615405713420739.a n = A232243 n

end A232243

/-! ## A232243.P4685286331111357499

`A159918(n)-A001222(A019565(n))`
-/

namespace A232243.P4685286331111357499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n - A001222 (A019565 n).toNat

end

end A232243.P4685286331111357499

namespace A232243

/-- `A159918(n)-A001222(A019565(n))` -/
def P4685286331111357499.Spec : Prop :=
  ∀ n, P4685286331111357499.a n = A232243 n

end A232243

/-! ## A232243.P4616147615931986155

`A000120(n²)-A000120(n)`
-/

namespace A232243.P4616147615931986155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n ^ 2) - A000120 n

end

end A232243.P4616147615931986155

namespace A232243

/-- `A000120(n²)-A000120(n)` -/
def P4616147615931986155.Spec : Prop :=
  ∀ n, P4616147615931986155.a n = A232243 n

end A232243

/-!
# A232245: Sum of the number of ones in binary representation of n and n^2.

The programs for A232245, the canonical program `A232245.P5094151863049896055` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232245 has offset 0).

The definition of A232245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232245.P5094151863049896055

`A159918(n)+A000120(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A232245

/-- `A159918(n)+A000120(n)` -/
def P5094151863049896055.Spec : Prop :=
  ∀ n, P5094151863049896055.a n = A232245 n

theorem P5094151863049896055.correct : P5094151863049896055.Spec := by
  intro n
  simp only [A232245]

end A232245

/-! ## A232245.P1562521062307498405

`A159918(n)+log2(A001316(n))`
-/

namespace A232245.P1562521062307498405
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A159918 n : ℝ) + Real.logb 2 (A001316 n : ℝ)

end

end A232245.P1562521062307498405

namespace A232245

/-- `A159918(n)+log2(A001316(n))` -/
def P1562521062307498405.Spec : Prop :=
  ∀ n, P1562521062307498405.a n = (A232245 n : ℝ)

end A232245

/-! ## A232245.P18002009473483806677

`A159918(n)+∑[A088705(n)]`
-/

namespace A232245.P18002009473483806677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232245.P18002009473483806677

namespace A232245

/-- `A159918(n)+∑[A088705(n)]` -/
def P18002009473483806677.Spec : Prop :=
  ∀ n, P18002009473483806677.a n = A232245 n

end A232245

/-! ## A232245.P10782054109204402179

`A232243(n)+2*A000120(n)`
-/

namespace A232245.P10782054109204402179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n + 2 * A000120 n

end

end A232245.P10782054109204402179

namespace A232245

/-- `A232243(n)+2*A000120(n)` -/
def P10782054109204402179.Spec : Prop :=
  ∀ n, P10782054109204402179.a n = A232245 n

end A232245

/-! ## A232245.P4109713717046078386

`2*A159918(n)-A232243(n)`
-/

namespace A232245.P4109713717046078386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159918 n - A232243 n

end

end A232245.P4109713717046078386

namespace A232245

/-- `2*A159918(n)-A232243(n)` -/
def P4109713717046078386.Spec : Prop :=
  ∀ n, P4109713717046078386.a n = A232245 n

end A232245

/-! ## A232245.P1305838153294568060

`A159918(n)+n-A011371(n)`
-/

namespace A232245.P1305838153294568060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n + ((n : ℤ) - A011371 n)

end

end A232245.P1305838153294568060

namespace A232245

/-- `A159918(n)+n-A011371(n)` -/
def P1305838153294568060.Spec : Prop :=
  ∀ n, P1305838153294568060.a n = A232245 n

end A232245

/-! ## A232245.P2999065600703878126

`A159918(n)+A001222(A071044(n))`
-/

namespace A232245.P2999065600703878126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n + A001222 (A071044 n).toNat

end

end A232245.P2999065600703878126

namespace A232245

/-- `A159918(n)+A001222(A071044(n))` -/
def P2999065600703878126.Spec : Prop :=
  ∀ n, P2999065600703878126.a n = A232245 n

end A232245

/-! ## A232245.P11212088269669709266

`A159918(A038573(n))+A159918(n)`
-/

namespace A232245.P11212088269669709266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A038573 n).toNat + A159918 n

end

end A232245.P11212088269669709266

namespace A232245

/-- `A159918(A038573(n))+A159918(n)` -/
def P11212088269669709266.Spec : Prop :=
  ∀ n, P11212088269669709266.a n = A232245 n

end A232245

/-! ## A232245.P4391179668145075832

`A159918(n)+A001222(A268444(n))`
-/

namespace A232245.P4391179668145075832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n + A001222 (A268444 n).toNat

end

end A232245.P4391179668145075832

namespace A232245

/-- `A159918(n)+A001222(A268444(n))` -/
def P4391179668145075832.Spec : Prop :=
  ∀ n, P4391179668145075832.a n = A232245 n

end A232245

/-! ## A232245.P9621474070298597165

`A159918(A073138(n))+A159918(n)`
-/

namespace A232245.P9621474070298597165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A073138 n).toNat + A159918 n

end

end A232245.P9621474070298597165

namespace A232245

/-- `A159918(A073138(n))+A159918(n)` -/
def P9621474070298597165.Spec : Prop :=
  ∀ n, P9621474070298597165.a n = A232245 n

end A232245

/-! ## A232245.P10455896329768352303

`A159918(n)+A001222(A278222(n))`
-/

namespace A232245.P10455896329768352303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n + A001222 (A278222 n).toNat

end

end A232245.P10455896329768352303

namespace A232245

/-- `A159918(n)+A001222(A278222(n))` -/
def P10455896329768352303.Spec : Prop :=
  ∀ n, P10455896329768352303.a n = A232245 n

end A232245

/-! ## A232245.P9062827547954693954

`A159918(n)+A001222(A286588(n))`
-/

namespace A232245.P9062827547954693954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n + A001222 (A286588 n).toNat

end

end A232245.P9062827547954693954

namespace A232245

/-- `A159918(n)+A001222(A286588(n))` -/
def P9062827547954693954.Spec : Prop :=
  ∀ n, P9062827547954693954.a n = A232245 n

end A232245

/-! ## A232245.P11399669757943919590

`log2(A001316(n²)*A001316(n))`
-/

namespace A232245.P11399669757943919590
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (n ^ 2) * A001316 n : ℝ)

end

end A232245.P11399669757943919590

namespace A232245

/-- `log2(A001316(n²)*A001316(n))` -/
def P11399669757943919590.Spec : Prop :=
  ∀ n, P11399669757943919590.a n = (A232245 n : ℝ)

end A232245

/-! ## A232245.P13431118052498531951

`A001222(A001316(n²)*A001316(n))`
-/

namespace A232245.P13431118052498531951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (n ^ 2) * A001316 n).toNat

end

end A232245.P13431118052498531951

namespace A232245

/-- `A001222(A001316(n²)*A001316(n))` -/
def P13431118052498531951.Spec : Prop :=
  ∀ n, P13431118052498531951.a n = A232245 n

end A232245

/-! ## A232245.P2616992618047969071

`A000120(ceil(n²/2))+A000120(n)`
-/

namespace A232245.P2616992618047969071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌈(n ^ 2 : ℚ) / 2⌉.toNat + A000120 n

end

end A232245.P2616992618047969071

namespace A232245

/-- `A000120(ceil(n²/2))+A000120(n)` -/
def P2616992618047969071.Spec : Prop :=
  ∀ n, P2616992618047969071.a n = A232245 n

end A232245

/-! ## A232245.P13839545942421656368

`A001222(A268444(n²)*A268444(n))`
-/

namespace A232245.P13839545942421656368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268444 (n ^ 2) * A268444 n).toNat

end

end A232245.P13839545942421656368

namespace A232245

/-- `A001222(A268444(n²)*A268444(n))` -/
def P13839545942421656368.Spec : Prop :=
  ∀ n, P13839545942421656368.a n = A232245 n

end A232245

/-! ## A232245.P6446906425907319322

`∑{e}[A048883(n)², A232243(n)+#]`
-/

namespace A232245.P6446906425907319322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A232243 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A232245.P6446906425907319322

namespace A232245

/-- `∑{e}[A048883(n)², A232243(n)+#]` -/
def P6446906425907319322.Spec : Prop :=
  ∀ n, P6446906425907319322.a n = A232245 n

end A232245

/-! ## A232245.P8828536744634826747

`A159918(n)+A001222(A019565(n))`
-/

namespace A232245.P8828536744634826747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n + A001222 (A019565 n).toNat

end

end A232245.P8828536744634826747

namespace A232245

/-- `A159918(n)+A001222(A019565(n))` -/
def P8828536744634826747.Spec : Prop :=
  ∀ n, P8828536744634826747.a n = A232245 n

end A232245

/-! ## A232245.P6961198324653369495

`A000523(A001316(n²)*A001316(n))`
-/

namespace A232245.P6961198324653369495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A001316 (n ^ 2) * A001316 n).toNat

end

end A232245.P6961198324653369495

namespace A232245

/-- `A000523(A001316(n²)*A001316(n))` -/
def P6961198324653369495.Spec : Prop :=
  ∀ n, P6961198324653369495.a n = A232245 n

end A232245

/-! ## A232245.P4105889295165485600

`A007814(A001316(n²)*A001316(n))`
-/

namespace A232245.P4105889295165485600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A001316 (n ^ 2) * A001316 n).toNat

end

end A232245.P4105889295165485600

namespace A232245

/-- `A007814(A001316(n²)*A001316(n))` -/
def P4105889295165485600.Spec : Prop :=
  ∀ n, P4105889295165485600.a n = A232245 n

end A232245

/-!
# A232246: Central terms of triangle A110440.

The programs for A232246, there is no canonical definition to state claims against.
-/

/-! ## A232246.P9646627236654064080

`A110440(∑[4*n])`
-/

namespace A232246.P9646627236654064080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110440 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232246.P9646627236654064080

/-! ## A232246.P7701261016913729594

`record[A003982(n)*A110440(n)]`
-/

namespace A232246.P7701261016913729594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A110440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232246.P7701261016913729594

/-! ## A232246.P5822945213076518748

`record[gcd(A110440(n), A114327(n))]`
-/

namespace A232246.P5822945213076518748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110440 n) (A114327 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232246.P5822945213076518748

/-! ## A232246.P13534887790628264862

`or(A000007(n), A110440(A046092(n)))`
-/

namespace A232246.P13534887790628264862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A110440 (A046092 n).toNat)

end

end A232246.P13534887790628264862

/-! ## A232246.P7274266764875319742

`lcm(A049077(n+1), A110440(A046092(n)))`
-/

namespace A232246.P7274266764875319742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049077 (n + 1)) (A110440 (A046092 n).toNat)

end

end A232246.P7274266764875319742

/-!
# A232248: Denominators of the expected length of a random cycle in a random permutation.

The programs for A232248, there is no canonical definition to state claims against.
-/

/-! ## A232248.P1409353512859424782

`A002397(n)/gcd(A002397(n), A002398(n))`
-/

namespace A232248.P1409353512859424782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002397 n : ℚ) / (Int.gcd (A002397 n) (A002398 n) : ℚ)

end

end A232248.P1409353512859424782

/-! ## A232248.P13563933905078255826

`A091137(n)/gcd(A091137(n), A141047(n))`
-/

namespace A232248.P13563933905078255826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 n : ℚ) / (Int.gcd (A091137 n) (A141047 n) : ℚ)

end

end A232248.P13563933905078255826

/-! ## A232248.P3896640735897414459

`gcd(A002209(n+2)², A232853(∑[n]))`
-/

namespace A232248.P3896640735897414459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002209 (n + 2) ^ 2) (A232853 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A232248.P3896640735897414459

/-!
# A232249: Number of (n+1) X (n+1) 0..2 arrays with every element both >= and <= some horizontal or antidiagonal neighbor.

The programs for A232249, there is no canonical definition to state claims against.
-/

/-! ## A232249.P5736196173130063735

`A232257((n+1)²+n²)`
-/

namespace A232249.P5736196173130063735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 ((n + 1) ^ 2 + n ^ 2)

end

end A232249.P5736196173130063735

/-!
# A232250: Number of (n+1) X (1+1) 0..2 arrays with every element both >= and <= some horizontal or antidiagonal neighbor.

The programs for A232250, the canonical program `A232250.P16106323294185640610` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232250 has offset 1).

The definition of A232250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232250.P16106323294185640610

`4*a(n-1)+2*a(n-2)-a(n-4)` with `a(0)=9, a(1)=37, a(2)=163, a(3)=723`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A232250

/-- `4*a(n-1)+2*a(n-2)-a(n-4)` -/
def P16106323294185640610.Spec : Prop :=
  ∀ n, P16106323294185640610.a n = A232250 (n + 1)

theorem P16106323294185640610.correct : P16106323294185640610.Spec := by
  intro n
  simp only [A232250, Nat.add_sub_cancel]

end A232250

/-! ## A232250.P7243441940076935512

`A217450(2*n+3)`
-/

namespace A232250.P7243441940076935512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217450 (2 * n + 3)

end

end A232250.P7243441940076935512

namespace A232250

/-- `A217450(2*n+3)` -/
def P7243441940076935512.Spec : Prop :=
  ∀ n, P7243441940076935512.a n = A232250 (n + 1)

end A232250

/-! ## A232250.P8150438151369565873

`or(1, A217450(Δ[(n+1)²]))`
-/

namespace A232250.P8150438151369565873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217450 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A232250.P8150438151369565873

namespace A232250

/-- `or(1, A217450(Δ[(n+1)²]))` -/
def P8150438151369565873.Spec : Prop :=
  ∀ n, P8150438151369565873.a n = A232250 (n + 1)

end A232250

/-! ## A232250.P14397842308865329762

`A217450(Δ[(n+1)²])+C(A000038(n), 3)`
-/

namespace A232250.P14397842308865329762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217450 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (Nat.choose (A000038 n).toNat 3 : ℤ)

end

end A232250.P14397842308865329762

namespace A232250

/-- `A217450(Δ[(n+1)²])+C(A000038(n), 3)` -/
def P14397842308865329762.Spec : Prop :=
  ∀ n, P14397842308865329762.a n = A232250 (n + 1)

end A232250

/-! ## A232250.P2037896492077870058

`record[A217450(A099375(n+1))]`
-/

namespace A232250.P2037896492077870058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217450 (A099375 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232250.P2037896492077870058

namespace A232250

/-- `record[A217450(A099375(n+1))]` -/
def P2037896492077870058.Spec : Prop :=
  ∀ n, P2037896492077870058.a n = A232250 (n + 1)

end A232250

/-! ## A232250.P13741467469944354841

`A217450(Δ[(n+1)²])/A007318(∑[n])`
-/

namespace A232250.P13741467469944354841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217450 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A232250.P13741467469944354841

namespace A232250

/-- `A217450(Δ[(n+1)²])/A007318(∑[n])` -/
def P13741467469944354841.Spec : Prop :=
  ∀ n, P13741467469944354841.a n = (A232250 (n + 1) : ℚ)

end A232250

/-! ## A232250.P15820492470044864730

`record[A217450(A056753(n+1))]`
-/

namespace A232250.P15820492470044864730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217450 (A056753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232250.P15820492470044864730

namespace A232250

/-- `record[A217450(A056753(n+1))]` -/
def P15820492470044864730.Spec : Prop :=
  ∀ n, P15820492470044864730.a n = A232250 (n + 1)

end A232250

/-! ## A232250.P10026116954446688137

`sqrt(A207854(2*(n+1)))`
-/

namespace A232250.P10026116954446688137
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207854 (2 * (n + 1)) : ℝ)

end

end A232250.P10026116954446688137

namespace A232250

/-- `sqrt(A207854(2*(n+1)))` -/
def P10026116954446688137.Spec : Prop :=
  ∀ n, P10026116954446688137.a n = (A232250 (n + 1) : ℝ)

end A232250

/-!
# A232251: Number of (n+1) X (2+1) 0..2 arrays with every element both >= and <= some horizontal or antidiagonal neighbor.

The programs for A232251, there is no canonical definition to state claims against.
-/

/-! ## A232251.P1518781380447895919

`A232257(∑[n+2])`
-/

namespace A232251.P1518781380447895919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232251.P1518781380447895919

/-! ## A232251.P2554023683659193227

`record[A232257(abs(A201163(n)))]`
-/

namespace A232251.P2554023683659193227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232251.P2554023683659193227

/-! ## A232251.P14056309250716280480

`or(1, A232257(A000096(n+1)))`
-/

namespace A232251.P14056309250716280480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232257 (A000096 (n + 1)).toNat)

end

end A232251.P14056309250716280480

/-! ## A232251.P13178007678555254412

`record[A232257(A000096(A137734(n)))]`
-/

namespace A232251.P13178007678555254412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A000096 (A137734 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232251.P13178007678555254412

/-! ## A232251.P7987868928486903149

`record[A232257(A000096(A320012(n+1)))]`
-/

namespace A232251.P7987868928486903149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A000096 (A320012 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232251.P7987868928486903149

/-!
# A232252: Number of (n+1)X(3+1) 0..2 arrays with every element both >= and <= some horizontal or antidiagonal neighbor.

The programs for A232252, there is no canonical definition to state claims against.
-/

/-! ## A232252.P12371418500601765326

`A232257(∑[n+3]+1)`
-/

namespace A232252.P12371418500601765326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232252.P12371418500601765326

/-!
# A232253: Number of (n+1)X(4+1) 0..2 arrays with every element both >= and <= some horizontal or antidiagonal neighbor.

The programs for A232253, there is no canonical definition to state claims against.
-/

/-! ## A232253.P13769071500218564531

`A232257(∑[n+4]+3)`
-/

namespace A232253.P13769071500218564531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A232253.P13769071500218564531

/-! ## A232253.P17727157758070448465

`or(1, A232257(A141214(n+1)))`
-/

namespace A232253.P17727157758070448465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232257 (A141214 (n + 1)).toNat)

end

end A232253.P17727157758070448465

/-! ## A232253.P10036486673392005121

`or(1, A232257(A056000(n)+7))`
-/

namespace A232253.P10036486673392005121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232257 (A056000 n + 7).toNat)

end

end A232253.P10036486673392005121

/-! ## A232253.P3956729144594683222

`A232257(A056000(n)+7)%A232262(n+1)`
-/

namespace A232253.P3956729144594683222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232257 (A056000 n + 7).toNat) (A232262 (n + 1))

end

end A232253.P3956729144594683222

/-! ## A232253.P8275176879820821716

`A033630(2*n+1)*A232257(A141214(n+1))`
-/

namespace A232253.P8275176879820821716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (2 * n + 1) * A232257 (A141214 (n + 1)).toNat

end

end A232253.P8275176879820821716

/-!
# A232254: Number of (n+1)X(5+1) 0..2 arrays with every element both >= and <= some horizontal or antidiagonal neighbor.

The programs for A232254, there is no canonical definition to state claims against.
-/

/-! ## A232254.P2257561151434309345

`A232257(eq[4, A193592(n)])`
-/

namespace A232254.P2257561151434309345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232254.P2257561151434309345

/-! ## A232254.P1333729145856839119

`A232257(Δ[A023545(n+1)])`
-/

namespace A232254.P1333729145856839119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (f1 (n + 1) - f1 n).toNat

end

end A232254.P1333729145856839119

/-! ## A232254.P13618944469488833739

`A232257(A038722(∑[n+4]+10)-1)`
-/

namespace A232254.P13618944469488833739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A038722 (∑ j ∈ Finset.range (n + 1), f1 j + 10) - 1).toNat

end

end A232254.P13618944469488833739

/-!
# A232255: Number of (n+1)X(6+1) 0..2 arrays with every element both >= and <= some horizontal or antidiagonal neighbor.

The programs for A232255, there is no canonical definition to state claims against.
-/

/-! ## A232255.P14932048920583068865

`A232257(A052905(n+3))`
-/

namespace A232255.P14932048920583068865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A052905 (n + 3)).toNat

end

end A232255.P14932048920583068865

/-! ## A232255.P5738785226763710493

`A232257(eq[5, A193592(n)])`
-/

namespace A232255.P5738785226763710493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232255.P5738785226763710493

/-! ## A232255.P14010045562823722852

`A232257(eq[8, A185782(n+1)])`
-/

namespace A232255.P14010045562823722852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232255.P14010045562823722852

/-! ## A232255.P9663427509872932219

`A232257(A000124(n+5)+n)`
-/

namespace A232255.P9663427509872932219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A000124 (n + 5) + (n : ℤ)).toNat

end

end A232255.P9663427509872932219

/-! ## A232255.P31109214377089417

`A232257(Δ[Δ[A006504(n+1)]])`
-/

namespace A232255.P31109214377089417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (f1 (n + 1) - f1 n).toNat

end

end A232255.P31109214377089417

/-!
# A232256: 

The programs for A232256, there is no canonical definition to state claims against.
-/

/-! ## A232256.P2404802592889746686

`A232257(eq[6, A193592(n)])`
-/

namespace A232256.P2404802592889746686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232256.P2404802592889746686

/-!
# A232258: Number of (1+1)X(n+1) 0..2 arrays with every element both >= and <= some horizontal or antidiagonal neighbor.

The programs for A232258, there is no canonical definition to state claims against.
-/

/-! ## A232258.P12299279145634916780

`A232257(∑[n]+1)`
-/

namespace A232258.P12299279145634916780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232258.P12299279145634916780

/-! ## A232258.P5825697054857066564

`record[A232257(record[A286236(n+1)])]`
-/

namespace A232258.P5825697054857066564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286236 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232258.P5825697054857066564

/-! ## A232258.P14148013784398992233

`record[A010054(n)*A232257(n+1)]`
-/

namespace A232258.P14148013784398992233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232258.P14148013784398992233

/-! ## A232258.P13717727802944543509

`record[root(A232257(n+1), A001498(n))]`
-/

namespace A232258.P13717727802944543509
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232257 (n + 1) : ℝ) ^ (1 / (A001498 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232258.P13717727802944543509

/-! ## A232258.P5963401072484401469

`record[root(A232257(n+1), A007318(n))]`
-/

namespace A232258.P5963401072484401469
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232257 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232258.P5963401072484401469

/-!
# A232259: Number of (2+1) X (n+1) 0..2 arrays with every element both >= and <= some horizontal or antidiagonal neighbor.

The programs for A232259, there is no canonical definition to state claims against.
-/

/-! ## A232259.P3368927777307822783

`A232257(∑[n+1]+2)`
-/

namespace A232259.P3368927777307822783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232259.P3368927777307822783

/-! ## A232259.P4297214510144386025

`record[A010054(n)*A232257(n+2)]`
-/

namespace A232259.P4297214510144386025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232257 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232259.P4297214510144386025

/-! ## A232259.P7137593177085647905

`record[gcd(A166278(n), A232257(n+2))]`
-/

namespace A232259.P7137593177085647905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166278 n) (A232257 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232259.P7137593177085647905

/-! ## A232259.P10143541694246747191

`record[A232257(n+3)/A027478(n+1)]`
-/

namespace A232259.P10143541694246747191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232257 (n + 3) : ℚ) / (A027478 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232259.P10143541694246747191

/-! ## A232259.P6718820871217611698

`record[root(A232257(n+3), A356045(n+2))]`
-/

namespace A232259.P6718820871217611698
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232257 (n + 3) : ℝ) ^ (1 / (A356045 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232259.P6718820871217611698

/-!
# A232260: Number of (3+1)X(n+1) 0..2 arrays with every element both >= and <= some horizontal or antidiagonal neighbor.

The programs for A232260, there is no canonical definition to state claims against.
-/

/-! ## A232260.P443825712508289441

`A232257(∑[n+2]+4)`
-/

namespace A232260.P443825712508289441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232260.P443825712508289441

/-! ## A232260.P8335593815770650537

`or(1, A232257(A167614(n+1)))`
-/

namespace A232260.P8335593815770650537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232257 (A167614 (n + 1)).toNat)

end

end A232260.P8335593815770650537

/-! ## A232260.P7686118963178122231

`A232257(A167614(n+1))+A025469(n)`
-/

namespace A232260.P7686118963178122231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A167614 (n + 1)).toNat + A025469 n

end

end A232260.P7686118963178122231

/-! ## A232260.P5397769568728189300

`A232257(A167614(n+1))+A185284(n)`
-/

namespace A232260.P5397769568728189300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A167614 (n + 1)).toNat + A185284 n

end

end A232260.P5397769568728189300

/-! ## A232260.P195185990116729984

`A016240(n)*A232257(A167614(n+1))`
-/

namespace A232260.P195185990116729984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016240 n * A232257 (A167614 (n + 1)).toNat

end

end A232260.P195185990116729984

/-!
# A232261: Number of (4+1)X(n+1) 0..2 arrays with every element both >= and <= some horizontal or antidiagonal neighbor.

The programs for A232261, there is no canonical definition to state claims against.
-/

/-! ## A232261.P14828080843749551948

`A232257(A145018(n+4))`
-/

namespace A232261.P14828080843749551948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A145018 (n + 4)).toNat

end

end A232261.P14828080843749551948

/-! ## A232261.P17553215214688502147

`A232257(A141214(n)+7)`
-/

namespace A232261.P17553215214688502147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A141214 n + 7).toNat

end

end A232261.P17553215214688502147

/-! ## A232261.P10187133335601726164

`A232257(A052905(n)+9)`
-/

namespace A232261.P10187133335601726164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A052905 n + 9).toNat

end

end A232261.P10187133335601726164

/-! ## A232261.P9461890340591232946

`A232257(A055999(n)+10)`
-/

namespace A232261.P9461890340591232946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A055999 n + 10).toNat

end

end A232261.P9461890340591232946

/-! ## A232261.P9093615774108370822

`A232257(A167614(n+2)+1)`
-/

namespace A232261.P9093615774108370822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A167614 (n + 2) + 1).toNat

end

end A232261.P9093615774108370822

/-!
# A232262: Number of (5+1)X(n+1) 0..2 arrays with every element both >= and <= some horizontal or antidiagonal neighbor.

The programs for A232262, there is no canonical definition to state claims against.
-/

/-! ## A232262.P17590597735709791385

`A232257(A000124(n+5)-(n+1))`
-/

namespace A232262.P17590597735709791385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A232262.P17590597735709791385

/-! ## A232262.P14154793104157293773

`A232257(A167499(A141213(n)))`
-/

namespace A232262.P14154793104157293773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A167499 (A141213 n).toNat).toNat

end

end A232262.P14154793104157293773

/-! ## A232262.P95320945278107911

`A232257(A008619(Δ[A026046(n+6)]))`
-/

namespace A232262.P95320945278107911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A232262.P95320945278107911

/-!
# A232263: Number of (6+1)X(n+1) 0..2 arrays with every element both >= and <= some horizontal or antidiagonal neighbor.

The programs for A232263, there is no canonical definition to state claims against.
-/

/-! ## A232263.P3992366537249585278

`A232257(A166136(n+4))`
-/

namespace A232263.P3992366537249585278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A166136 (n + 4)).toNat

end

end A232263.P3992366537249585278

/-! ## A232263.P10844223877460853068

`A232257(A000124(n+5)+5)`
-/

namespace A232263.P10844223877460853068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (A000124 (n + 5) + 5).toNat

end

end A232263.P10844223877460853068

/-! ## A232263.P2366009159265887169

`A232257(Δ[A023545(n+1)]+10)`
-/

namespace A232263.P2366009159265887169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (f1 (n + 1) - f1 n + 10).toNat

end

end A232263.P2366009159265887169

/-!
# A232264: 

The programs for A232264, there is no canonical definition to state claims against.
-/

/-! ## A232264.P17115324227430015431

`A232257(eq[8, A131818(n+1)])`
-/

namespace A232264.P17115324227430015431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232264.P17115324227430015431

/-!
# A232265: a(n) = 10*binomial(9*n + 10, n)/(9*n + 10).

The programs for A232265, the canonical program `A232265.P13228310085095729745` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232265 has offset 0).

The definition of A232265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232265.P13228310085095729745

`10*C(9*n+10, n)/(9*n+10)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A232265

/-- `10*C(9*n+10, n)/(9*n+10)` -/
def P13228310085095729745.Spec : Prop :=
  ∀ n, P13228310085095729745.a n = (A232265 n : ℚ)

end A232265

/-!
# A232266: Triangle where T(n,k) = number of compositions of n^2 - k^2 into sums of squares for k=0..n, n>=0, as read by rows.

The programs for A232266, there is no canonical definition to state claims against.
-/

/-! ## A232266.P7597879134371252282

`A006456(A335821(n))`
-/

namespace A232266.P7597879134371252282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (A335821 n).toNat

end

end A232266.P7597879134371252282

/-! ## A232266.P1707098017727229683

`A006456(A091435(n)+A004247(n))`
-/

namespace A232266.P1707098017727229683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (A091435 n + A004247 n).toNat

end

end A232266.P1707098017727229683

/-! ## A232266.P7705523702082891951

`A006456(A025581(n)*A051162(n))`
-/

namespace A232266.P7705523702082891951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (A025581 n * A051162 n).toNat

end

end A232266.P7705523702082891951

/-! ## A232266.P3736280009730027087

`A006456(A025581(n)*A134478(n))`
-/

namespace A232266.P3736280009730027087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (A025581 n * A134478 n).toNat

end

end A232266.P3736280009730027087

/-! ## A232266.P3783867258026040044

`A006456(A025660(n+1)*A051162(n))`
-/

namespace A232266.P3783867258026040044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (A025660 (n + 1) * A051162 n).toNat

end

end A232266.P3783867258026040044

/-! ## A232266.P9831501548819510244

`A006456(A025660(n+1)*A134478(n))`
-/

namespace A232266.P9831501548819510244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (A025660 (n + 1) * A134478 n).toNat

end

end A232266.P9831501548819510244

/-! ## A232266.P16595981897824300455

`A006456(∑[3-A035214(n)]-A133819(n+1))`
-/

namespace A232266.P16595981897824300455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (∑ j ∈ Finset.range (n + 1), f1 j - A133819 (n + 1)).toNat

end

end A232266.P16595981897824300455

/-!
# A232267: Least k>=0 such that n^3 + k^2 is a square.

The programs for A232267, there is no canonical definition to state claims against.
-/

/-! ## A232267.P4185673957954566669

`sqrt(A213983(n)²-n^3)`
-/

namespace A232267.P4185673957954566669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A213983 n ^ 2 - (n ^ 3 : ℤ) : ℝ)

end

end A232267.P4185673957954566669

/-! ## A232267.P9971905859518017937

`A000196(A213983(n)²-n^3)`
-/

namespace A232267.P9971905859518017937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A213983 n ^ 2 - (n ^ 3 : ℤ)).toNat

end

end A232267.P9971905859518017937

/-! ## A232267.P17759176025805282135

`A034515(n+1)+A000196(A213983(n)²-A000578(n))`
-/

namespace A232267.P17759176025805282135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034515 (n + 1) + A000196 (A213983 n ^ 2 - A000578 n).toNat

end

end A232267.P17759176025805282135

/-!
# A232268: Numbers n such that reversal (n^3) plus 1 is prime.

The programs for A232268, there is no canonical definition to state claims against.
-/

/-! ## A232268.P5229013815074283225

`eq[2, A000005(A319603(n)-A000578(n)+1)]`
-/

namespace A232268.P5229013815074283225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A319603 n - A000578 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232268.P5229013815074283225

/-! ## A232268.P4348226619920693205

`∑[A104325(∏{p}[n+1, #]!)]`
-/

namespace A232268.P4348226619920693205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104325 (Nat.factorial (∏ p ∈ Nat.primeFactors (f2 n), p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232268.P4348226619920693205

/-! ## A232268.P11045998607307221186

`∑[A104325(A007947(n+1)!)]`
-/

namespace A232268.P11045998607307221186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104325 (Nat.factorial (A007947 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232268.P11045998607307221186

/-! ## A232268.P10776884470268343584

`∑[A104325(A015052(n+1)!)]`
-/

namespace A232268.P10776884470268343584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104325 (Nat.factorial (A015052 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232268.P10776884470268343584

/-! ## A232268.P6095656190650578597

`eq[4, 2*A000005(A004086(n^3)+1)]`
-/

namespace A232268.P6095656190650578597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A004086 (n ^ 3) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232268.P6095656190650578597

/-!
# A232274: Integer areas A of the integer-sided triangles such that the length of the inradius and the circumradius are both a perfect square.

The programs for A232274, there is no canonical definition to state claims against.
-/

/-! ## A232274.P1670084787385207610

`A230479(A344033(n+1))`
-/

namespace A232274.P1670084787385207610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230479 (A344033 (n + 1)).toNat

end

end A232274.P1670084787385207610

/-!
# A232275: T(n,k)=Number of nXk 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, vertically, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232275, there is no canonical definition to state claims against.
-/

/-! ## A232275.P6154631652579025006

`lcm(A000005(A256204(n)), A059474(n))`
-/

namespace A232275.P6154631652579025006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A256204 n).toNat) (A059474 n)

end

end A232275.P6154631652579025006

/-! ## A232275.P8632767610909871493

`A239614(A125730(n))*A241078(n+1)`
-/

namespace A232275.P8632767610909871493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239614 (A125730 n).toNat * A241078 (n + 1)

end

end A232275.P8632767610909871493

/-! ## A232275.P17969077844795377571

`lcm(A155863(n), A339490(A032555(n+1)))`
-/

namespace A232275.P17969077844795377571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155863 n) (A339490 (A032555 (n + 1)).toNat)

end

end A232275.P17969077844795377571

/-! ## A232275.P13596550867079294971

`A066086(A137058(n+1)+A137047(n+1))`
-/

namespace A232275.P13596550867079294971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066086 (A137058 (n + 1) + A137047 (n + 1)).toNat

end

end A232275.P13596550867079294971

/-!
# A232276: Number of nX3 0..2 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A232276, there is no canonical definition to state claims against.
-/

/-! ## A232276.P2384115026558039201

`A232281(∑[n+3]+1)`
-/

namespace A232276.P2384115026558039201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232276.P2384115026558039201

/-!
# A232277: Number of nX4 0..2 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A232277, there is no canonical definition to state claims against.
-/

/-! ## A232277.P10867461106051491154

`A232281(A141214(n+1))`
-/

namespace A232277.P10867461106051491154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A141214 (n + 1)).toNat

end

end A232277.P10867461106051491154

/-! ## A232277.P9723486555279201516

`A232281(A027379(n+2))`
-/

namespace A232277.P9723486555279201516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A027379 (n + 2)).toNat

end

end A232277.P9723486555279201516

/-! ## A232277.P4957508064067784069

`A232281(A155212(n)+5)`
-/

namespace A232277.P4957508064067784069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A155212 n + 5).toNat

end

end A232277.P4957508064067784069

/-! ## A232277.P16390474476268675317

`A232281(A056000(n)+7)`
-/

namespace A232277.P16390474476268675317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A056000 n + 7).toNat

end

end A232277.P16390474476268675317

/-! ## A232277.P17513426440651239045

`A232281(A052905(n+1)+2)`
-/

namespace A232277.P17513426440651239045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A052905 (n + 1) + 2).toNat

end

end A232277.P17513426440651239045

/-!
# A232278: Number of nX5 0..2 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A232278, there is no canonical definition to state claims against.
-/

/-! ## A232278.P5802754757305040958

`A232281(eq[4, A193592(n)])`
-/

namespace A232278.P5802754757305040958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232278.P5802754757305040958

/-! ## A232278.P10191983354050312112

`A232281(Δ[A023545(n+1)])`
-/

namespace A232278.P10191983354050312112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (f1 (n + 1) - f1 n).toNat

end

end A232278.P10191983354050312112

/-! ## A232278.P7468999028156633176

`A232281(eq[3, A144018(n+1)])`
-/

namespace A232278.P7468999028156633176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232278.P7468999028156633176

/-! ## A232278.P5365745086038567493

`A232281(eq[5, A194921(n+1)])`
-/

namespace A232278.P5365745086038567493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232278.P5365745086038567493

/-! ## A232278.P16704812850749287210

`A232281(eq[6, A185782(n+1)])`
-/

namespace A232278.P16704812850749287210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232278.P16704812850749287210

/-!
# A232279: Number of nX6 0..2 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A232279, there is no canonical definition to state claims against.
-/

/-! ## A232279.P5444973153181392802

`A232281(A052905(n+3))`
-/

namespace A232279.P5444973153181392802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A052905 (n + 3)).toNat

end

end A232279.P5444973153181392802

/-! ## A232279.P10086087980563768479

`A232281(eq[3, A219347(n)])`
-/

namespace A232279.P10086087980563768479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232279.P10086087980563768479

/-! ## A232279.P11393948749341634137

`A232281(eq[5, A193592(n)])`
-/

namespace A232279.P11393948749341634137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232279.P11393948749341634137

/-! ## A232279.P15303875090843472831

`A232281(eq[8, A258709(n)])`
-/

namespace A232279.P15303875090843472831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232279.P15303875090843472831

/-! ## A232279.P7190000834134057822

`A232281(A056000(n+2)+5)`
-/

namespace A232279.P7190000834134057822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A056000 (n + 2) + 5).toNat

end

end A232279.P7190000834134057822

/-!
# A232280: Number of nX7 0..2 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A232280, there is no canonical definition to state claims against.
-/

/-! ## A232280.P17808391985602979624

`A232281(eq[6, A193592(n)])`
-/

namespace A232280.P17808391985602979624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232280.P17808391985602979624

/-! ## A232280.P2085424719485343659

`A232281(eq[2, A219347(n)-2])`
-/

namespace A232280.P2085424719485343659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232280.P2085424719485343659

/-! ## A232280.P10663649610725253686

`A232281(eq[10, A185782(n+1)])`
-/

namespace A232280.P10663649610725253686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232280.P10663649610725253686

/-!
# A232282: Number of 2 X n 0..2 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A232282, there is no canonical definition to state claims against.
-/

/-! ## A232282.P10173274473964492570

`A232281(∑[n+1]+2)`
-/

namespace A232282.P10173274473964492570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232282.P10173274473964492570

/-! ## A232282.P2229391632378945507

`record[A107865(n)*A232281(n+3)]`
-/

namespace A232282.P2229391632378945507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107865 n * A232281 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232282.P2229391632378945507

/-! ## A232282.P9176947498769556029

`record[A232281(n+3)/A232295(n+1)]`
-/

namespace A232282.P9176947498769556029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232281 (n + 3) : ℚ) / (A232295 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232282.P9176947498769556029

/-! ## A232282.P6388202793804801768

`record[gcd(A185664(n), A232281(n+3))]`
-/

namespace A232282.P6388202793804801768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185664 n) (A232281 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232282.P6388202793804801768

/-! ## A232282.P6467143717883491876

`record[A232281(n+3)/A232266(n)]`
-/

namespace A232282.P6467143717883491876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232281 (n + 3) : ℚ) / (A232266 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232282.P6467143717883491876

/-!
# A232283: Number of 3Xn 0..2 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A232283, there is no canonical definition to state claims against.
-/

/-! ## A232283.P3357169336379715054

`A232281(∑[n+2]+4)`
-/

namespace A232283.P3357169336379715054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232283.P3357169336379715054

/-! ## A232283.P14698694171894901941

`A232281(A167614(n+1))+A185036(n)`
-/

namespace A232283.P14698694171894901941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A167614 (n + 1)).toNat + A185036 n

end

end A232283.P14698694171894901941

/-! ## A232283.P11481693764444943526

`A232281(A167614(n+1))+A185246(n)`
-/

namespace A232283.P11481693764444943526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A167614 (n + 1)).toNat + A185246 n

end

end A232283.P11481693764444943526

/-! ## A232283.P6867167182134548118

`A232281(A167614(n+1))+A185284(n)`
-/

namespace A232283.P6867167182134548118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A167614 (n + 1)).toNat + A185284 n

end

end A232283.P6867167182134548118

/-! ## A232283.P12242672540457195402

`A014808(n)*A232281(A167614(n+1))`
-/

namespace A232283.P12242672540457195402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014808 n * A232281 (A167614 (n + 1)).toNat

end

end A232283.P12242672540457195402

/-!
# A232284: Number of 4Xn 0..2 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A232284, there is no canonical definition to state claims against.
-/

/-! ## A232284.P4173779892021094679

`A232281(A141214(n)+7)`
-/

namespace A232284.P4173779892021094679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A141214 n + 7).toNat

end

end A232284.P4173779892021094679

/-! ## A232284.P1038003434211242476

`A232281(A052905(n)+9)`
-/

namespace A232284.P1038003434211242476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A052905 n + 9).toNat

end

end A232284.P1038003434211242476

/-! ## A232284.P9485042527044282397

`A232281(A055999(n)+10)`
-/

namespace A232284.P9485042527044282397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A055999 n + 10).toNat

end

end A232284.P9485042527044282397

/-! ## A232284.P601390855851286567

`A232281(A167614(n+2)+1)`
-/

namespace A232284.P601390855851286567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A167614 (n + 2) + 1).toNat

end

end A232284.P601390855851286567

/-! ## A232284.P14713391768286373067

`A232281(eq[5, A131818(n+1)])`
-/

namespace A232284.P14713391768286373067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232284.P14713391768286373067

/-!
# A232285: Number of 5Xn 0..2 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A232285, there is no canonical definition to state claims against.
-/

/-! ## A232285.P16223173652611307192

`A232281(A155212(n)+13)`
-/

namespace A232285.P16223173652611307192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A155212 n + 13).toNat

end

end A232285.P16223173652611307192

/-! ## A232285.P2720652631442193867

`A232281(A056000(n)+15)`
-/

namespace A232285.P2720652631442193867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A056000 n + 15).toNat

end

end A232285.P2720652631442193867

/-! ## A232285.P8902265388003229755

`A232281(A167614(n+3)+2)`
-/

namespace A232285.P8902265388003229755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A167614 (n + 3) + 2).toNat

end

end A232285.P8902265388003229755

/-! ## A232285.P3189459113326890946

`A232281(A000217(n+4)+5)`
-/

namespace A232285.P3189459113326890946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A000217 (n + 4) + 5).toNat

end

end A232285.P3189459113326890946

/-! ## A232285.P10523937329022247916

`A232281(A027379(n+2)+8)`
-/

namespace A232285.P10523937329022247916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A027379 (n + 2) + 8).toNat

end

end A232285.P10523937329022247916

/-!
# A232286: Number of 6Xn 0..2 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A232286, there is no canonical definition to state claims against.
-/

/-! ## A232286.P13100118200202100668

`A232281(A056115(n)+21)`
-/

namespace A232286.P13100118200202100668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A056115 n + 21).toNat

end

end A232286.P13100118200202100668

/-! ## A232286.P2592723983568816468

`A232281(A167499(n+4)+1)`
-/

namespace A232286.P2592723983568816468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A167499 (n + 4) + 1).toNat

end

end A232286.P2592723983568816468

/-! ## A232286.P8562812122989244005

`A232281(A141214(n+2)+9)`
-/

namespace A232286.P8562812122989244005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (A141214 (n + 2) + 9).toNat

end

end A232286.P8562812122989244005

/-! ## A232286.P8200311433971881671

`A232281(eq[7, A131818(n+1)])`
-/

namespace A232286.P8200311433971881671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232286.P8200311433971881671

/-! ## A232286.P334841894284154281

`A232281(eq[4, A193592(n)]+10)`
-/

namespace A232286.P334841894284154281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A232286.P334841894284154281

/-!
# A232287: Number of 7Xn 0..2 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A232287, there is no canonical definition to state claims against.
-/

/-! ## A232287.P2578731327065221251

`A232281(eq[8, A131818(n+1)])`
-/

namespace A232287.P2578731327065221251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232287.P2578731327065221251

/-!
# A232288: Number of n X n 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally.

The programs for A232288, there is no canonical definition to state claims against.
-/

/-! ## A232288.P5073277122227783235

`A232295((n+1)²+n²)`
-/

namespace A232288.P5073277122227783235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 ((n + 1) ^ 2 + n ^ 2)

end

end A232288.P5073277122227783235

/-!
# A232289: Number of nX2 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally.

The programs for A232289, the canonical program `A232289.P9934238567195665011` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232289 has offset 1).

The definition of A232289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232289.P7698453306075164042

`ogf((3+3x+x^2)/(1-4x-4x^2-x^3))`
-/

namespace A232289.P7698453306075164042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 1] [1, -4, -4, -1] n

end

end A232289.P7698453306075164042

namespace A232289

/-- `ogf((3+3x+x^2)/(1-4x-4x^2-x^3))` -/
def P7698453306075164042.Spec : Prop :=
  ∀ n, P7698453306075164042.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P9934238567195665011

`4*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=3, a(1)=15, a(2)=73`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A232289

/-- `4*a(n-1)+4*a(n-2)+a(n-3)` -/
def P9934238567195665011.Spec : Prop :=
  ∀ n, (P9934238567195665011.a n : ℤ) = A232289 (n + 1)

theorem P9934238567195665011.correct : P9934238567195665011.Spec := by
  intro n
  simp only [A232289, Nat.add_sub_cancel]

end A232289

/-! ## A232289.P5658823709616705154

`A193641(2*(n+1))`
-/

namespace A232289.P5658823709616705154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (2 * (n + 1))

end

end A232289.P5658823709616705154

namespace A232289

/-- `A193641(2*(n+1))` -/
def P5658823709616705154.Spec : Prop :=
  ∀ n, P5658823709616705154.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P7571115478499437626

`A232230(2*(n+1))+1`
-/

namespace A232289.P7571115478499437626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232230 (2 * (n + 1)) + 1

end

end A232289.P7571115478499437626

namespace A232289

/-- `A232230(2*(n+1))+1` -/
def P7571115478499437626.Spec : Prop :=
  ∀ n, P7571115478499437626.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P16175045276837707901

`2*A077852(2*n)+1`
-/

namespace A232289.P16175045276837707901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077852 (2 * n) + 1

end

end A232289.P16175045276837707901

namespace A232289

/-- `2*A077852(2*n)+1` -/
def P16175045276837707901.Spec : Prop :=
  ∀ n, P16175045276837707901.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P444694643909587058

`A232059(2*(n+1))/2`
-/

namespace A232289.P444694643909587058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232059 (2 * (n + 1)) : ℚ) / 2

end

end A232289.P444694643909587058

namespace A232289

/-- `A232059(2*(n+1))/2` -/
def P444694643909587058.Spec : Prop :=
  ∀ n, P444694643909587058.a n = (A232289 (n + 1) : ℚ)

end A232289

/-! ## A232289.P18049178329243345503

`A052980(2*(n+1))+A008998(2*n)`
-/

namespace A232289.P18049178329243345503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (2 * (n + 1)) + A008998 (2 * n)

end

end A232289.P18049178329243345503

namespace A232289

/-- `A052980(2*(n+1))+A008998(2*n)` -/
def P18049178329243345503.Spec : Prop :=
  ∀ n, P18049178329243345503.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P6533189384439562930

`A078061(2*n)+A008998(2*n+1)`
-/

namespace A232289.P6533189384439562930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078061 (2 * n) + A008998 (2 * n + 1)

end

end A232289.P6533189384439562930

namespace A232289

/-- `A078061(2*n)+A008998(2*n+1)` -/
def P6533189384439562930.Spec : Prop :=
  ∀ n, P6533189384439562930.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P6394038308459028424

`A110513(2*(n+1))+A008998(2*n)`
-/

namespace A232289.P6394038308459028424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110513 (2 * (n + 1)) + A008998 (2 * n)

end

end A232289.P6394038308459028424

namespace A232289

/-- `A110513(2*(n+1))+A008998(2*n)` -/
def P6394038308459028424.Spec : Prop :=
  ∀ n, P6394038308459028424.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P6809728546882015811

`A190512(2*n+1)+A008998(2*n)`
-/

namespace A232289.P6809728546882015811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (2 * n + 1) + A008998 (2 * n)

end

end A232289.P6809728546882015811

namespace A232289

/-- `A190512(2*n+1)+A008998(2*n)` -/
def P6809728546882015811.Spec : Prop :=
  ∀ n, P6809728546882015811.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P6013253452361020957

`A020708(2*n)-A052980(2*n+1)`
-/

namespace A232289.P6013253452361020957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 (2 * n) - A052980 (2 * n + 1)

end

end A232289.P6013253452361020957

namespace A232289

/-- `A020708(2*n)-A052980(2*n+1)` -/
def P6013253452361020957.Spec : Prop :=
  ∀ n, P6013253452361020957.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P11401244963237304640

`A335274(2*(n+1))-A052980(2*n)`
-/

namespace A232289.P11401244963237304640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (2 * (n + 1)) - A052980 (2 * n)

end

end A232289.P11401244963237304640

namespace A232289

/-- `A335274(2*(n+1))-A052980(2*n)` -/
def P11401244963237304640.Spec : Prop :=
  ∀ n, P11401244963237304640.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P16638543774937172484

`∑[A052910(2*n+1)+A052910(2*n)]`
-/

namespace A232289.P16638543774937172484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052910 (2 * n + 1) + A052910 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232289.P16638543774937172484

namespace A232289

/-- `∑[A052910(2*n+1)+A052910(2*n)]` -/
def P16638543774937172484.Spec : Prop :=
  ∀ n, P16638543774937172484.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P11709315802649757002

`A214260(2*n+1)+A008998(2*n+1)`
-/

namespace A232289.P11709315802649757002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214260 (2 * n + 1) + A008998 (2 * n + 1)

end

end A232289.P11709315802649757002

namespace A232289

/-- `A214260(2*n+1)+A008998(2*n+1)` -/
def P11709315802649757002.Spec : Prop :=
  ∀ n, P11709315802649757002.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P2440205274545081147

`A285184(2*n)+2*A052980(2*n+1)`
-/

namespace A232289.P2440205274545081147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 (2 * n) + 2 * A052980 (2 * n + 1)

end

end A232289.P2440205274545081147

namespace A232289

/-- `A285184(2*n)+2*A052980(2*n+1)` -/
def P2440205274545081147.Spec : Prop :=
  ∀ n, P2440205274545081147.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P10458504308708889660

`A214260(2*n+3)-A335242(2*n+3)`
-/

namespace A232289.P10458504308708889660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214260 (2 * n + 3) - A335242 (2 * n + 3)

end

end A232289.P10458504308708889660

namespace A232289

/-- `A214260(2*n+3)-A335242(2*n+3)` -/
def P10458504308708889660.Spec : Prop :=
  ∀ n, P10458504308708889660.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P10461635038368169988

`A319701(2*(n+1))+A100691(2*n)-n`
-/

namespace A232289.P10461635038368169988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (2 * (n + 1)) + (A100691 (2 * n) - (n : ℤ))

end

end A232289.P10461635038368169988

namespace A232289

/-- `A319701(2*(n+1))+A100691(2*n)-n` -/
def P10461635038368169988.Spec : Prop :=
  ∀ n, P10461635038368169988.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P15785590044886491907

`A008998(2*n)+A020708(2*n)-A008998(2*n+1)`
-/

namespace A232289.P15785590044886491907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (2 * n) + (A020708 (2 * n) - A008998 (2 * n + 1))

end

end A232289.P15785590044886491907

namespace A232289

/-- `A008998(2*n)+A020708(2*n)-A008998(2*n+1)` -/
def P15785590044886491907.Spec : Prop :=
  ∀ n, P15785590044886491907.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P6215774455193500047

`A052980(2*n+1)+A335274(2*n+1)+A052980(2*n)`
-/

namespace A232289.P6215774455193500047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (2 * n + 1) + (A335274 (2 * n + 1) + A052980 (2 * n))

end

end A232289.P6215774455193500047

namespace A232289

/-- `A052980(2*n+1)+A335274(2*n+1)+A052980(2*n)` -/
def P6215774455193500047.Spec : Prop :=
  ∀ n, P6215774455193500047.a n = A232289 (n + 1)

end A232289

/-! ## A232289.P7975170688171416713

`A019489(2*n+1)-(A052980(2*n+1)+A019489(2*n))`
-/

namespace A232289.P7975170688171416713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019489 (2 * n + 1) - (A052980 (2 * n + 1) + A019489 (2 * n))

end

end A232289.P7975170688171416713

namespace A232289

/-- `A019489(2*n+1)-(A052980(2*n+1)+A019489(2*n))` -/
def P7975170688171416713.Spec : Prop :=
  ∀ n, P7975170688171416713.a n = A232289 (n + 1)

end A232289

/-!
# A232290: Number of n X 3 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally.

The programs for A232290, there is no canonical definition to state claims against.
-/

/-! ## A232290.P9545839266775921273

`A232295(∑[n+3]+1)`
-/

namespace A232290.P9545839266775921273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232290.P9545839266775921273

/-!
# A232291: Number of nX4 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally.

The programs for A232291, there is no canonical definition to state claims against.
-/

/-! ## A232291.P480727900527913448

`A232295(A141214(n+1))`
-/

namespace A232291.P480727900527913448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A141214 (n + 1)).toNat

end

end A232291.P480727900527913448

/-! ## A232291.P17282531848233997247

`A232295(A055998(n+2))`
-/

namespace A232291.P17282531848233997247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A055998 (n + 2)).toNat

end

end A232291.P17282531848233997247

/-! ## A232291.P9219744811488674063

`A232295(A155212(n)+5)`
-/

namespace A232291.P9219744811488674063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A155212 n + 5).toNat

end

end A232291.P9219744811488674063

/-! ## A232291.P1713253411720005278

`A232295(A056000(n)+7)`
-/

namespace A232291.P1713253411720005278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A056000 n + 7).toNat

end

end A232291.P1713253411720005278

/-! ## A232291.P6319091938255251998

`A232295(eq[4, A140997(n)])`
-/

namespace A232291.P6319091938255251998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232291.P6319091938255251998

/-!
# A232292: Number of nX5 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally.

The programs for A232292, there is no canonical definition to state claims against.
-/

/-! ## A232292.P266612440834887591

`A232295(∑[n+5]+6)`
-/

namespace A232292.P266612440834887591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A232292.P266612440834887591

/-! ## A232292.P16019335378038196050

`or(1, A232295(A046691(n+3)))`
-/

namespace A232292.P16019335378038196050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232295 (A046691 (n + 3)).toNat)

end

end A232292.P16019335378038196050

/-! ## A232292.P13354061446378311449

`A232295(A046691(n+3))+A185264(n)`
-/

namespace A232292.P13354061446378311449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A046691 (n + 3)).toNat + A185264 n

end

end A232292.P13354061446378311449

/-! ## A232292.P1778325280163498639

`A014963(A008458(n))*A232295(A046691(n+3))`
-/

namespace A232292.P1778325280163498639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A232295 (A046691 (n + 3)).toNat

end

end A232292.P1778325280163498639

/-!
# A232293: Number of nX6 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally.

The programs for A232293, there is no canonical definition to state claims against.
-/

/-! ## A232293.P3280205439530367664

`A232295(Δ[Δ[A006504(n+1)]])`
-/

namespace A232293.P3280205439530367664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (f1 (n + 1) - f1 n).toNat

end

end A232293.P3280205439530367664

/-! ## A232293.P11961698413578342817

`A232295(Δ[A155212(n)+A023545(n+1)])`
-/

namespace A232293.P11961698413578342817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n + A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (f1 (n + 1) - f1 n).toNat

end

end A232293.P11961698413578342817

/-!
# A232294: Number of nX7 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally.

The programs for A232294, there is no canonical definition to state claims against.
-/

/-! ## A232294.P11852834178104906487

`A232295(eq[10, A185782(n+1)])`
-/

namespace A232294.P11852834178104906487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232294.P11852834178104906487

/-!
# A232296: Number of 2Xn 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally.

The programs for A232296, there is no canonical definition to state claims against.
-/

/-! ## A232296.P17739346047761550924

`A232295(∑[n+1]+2)`
-/

namespace A232296.P17739346047761550924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232296.P17739346047761550924

/-! ## A232296.P17093374139379641353

`record[gcd(A097854(n), A232295(n+1))]`
-/

namespace A232296.P17093374139379641353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097854 n) (A232295 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232296.P17093374139379641353

/-! ## A232296.P4104847860153841806

`record[gcd(A232295(n+2), A293808(n))]`
-/

namespace A232296.P4104847860153841806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A232295 (n + 2)) (A293808 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232296.P4104847860153841806

/-! ## A232296.P6716197401969097574

`A204131(2*(n+2))*A232295(A133263(n+1))`
-/

namespace A232296.P6716197401969097574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204131 (2 * (n + 2)) * A232295 (A133263 (n + 1)).toNat

end

end A232296.P6716197401969097574

/-!
# A232297: Number of 3Xn 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally.

The programs for A232297, there is no canonical definition to state claims against.
-/

/-! ## A232297.P8662956896266428945

`A232295(∑[n+2]+4)`
-/

namespace A232297.P8662956896266428945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232297.P8662956896266428945

/-! ## A232297.P12733887925854614885

`or(1, A232295(A167614(n+1)))`
-/

namespace A232297.P12733887925854614885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232295 (A167614 (n + 1)).toNat)

end

end A232297.P12733887925854614885

/-! ## A232297.P11142771887542888967

`A232295(A167614(n+1))+A011743(n)`
-/

namespace A232297.P11142771887542888967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A167614 (n + 1)).toNat + A011743 n

end

end A232297.P11142771887542888967

/-! ## A232297.P18137961466421965085

`A232295(A167614(n+1))+A055967(n)`
-/

namespace A232297.P18137961466421965085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A167614 (n + 1)).toNat + A055967 n

end

end A232297.P18137961466421965085

/-! ## A232297.P2984257621239583856

`A232295(A167614(n+1))+A185237(n)`
-/

namespace A232297.P2984257621239583856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A167614 (n + 1)).toNat + A185237 n

end

end A232297.P2984257621239583856

/-!
# A232298: Number of 4Xn 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally.

The programs for A232298, there is no canonical definition to state claims against.
-/

/-! ## A232298.P7875212293725782091

`A232295(A141214(n)+7)`
-/

namespace A232298.P7875212293725782091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A141214 n + 7).toNat

end

end A232298.P7875212293725782091

/-! ## A232298.P10126239687418504212

`A232295(A052905(n)+9)`
-/

namespace A232298.P10126239687418504212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A052905 n + 9).toNat

end

end A232298.P10126239687418504212

/-! ## A232298.P6777263875056431375

`A232295(A055999(n)+10)`
-/

namespace A232298.P6777263875056431375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A055999 n + 10).toNat

end

end A232298.P6777263875056431375

/-! ## A232298.P6302747443171612354

`A232295(A167614(n+2)+1)`
-/

namespace A232298.P6302747443171612354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A167614 (n + 2) + 1).toNat

end

end A232298.P6302747443171612354

/-! ## A232298.P1519095324859566616

`A232295(eq[5, A131818(n+1)])`
-/

namespace A232298.P1519095324859566616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232298.P1519095324859566616

/-!
# A232299: Number of 5Xn 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally.

The programs for A232299, there is no canonical definition to state claims against.
-/

/-! ## A232299.P10702183751363204795

`A232295(A155212(n)+13)`
-/

namespace A232299.P10702183751363204795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A155212 n + 13).toNat

end

end A232299.P10702183751363204795

/-! ## A232299.P10166607692586225071

`A232295(A056000(n)+15)`
-/

namespace A232299.P10166607692586225071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A056000 n + 15).toNat

end

end A232299.P10166607692586225071

/-! ## A232299.P10703648072413968815

`A232295(eq[6, A131818(n+1)])`
-/

namespace A232299.P10703648072413968815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232299.P10703648072413968815

/-! ## A232299.P9955157311453204096

`A232295(eq[6, A135223(n+1)])`
-/

namespace A232299.P9955157311453204096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232299.P9955157311453204096

/-! ## A232299.P13975689663501858706

`A232295(A046691(n+3)-(n-4))`
-/

namespace A232299.P13975689663501858706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (A046691 (n + 3) - ((n : ℤ) - 4)).toNat

end

end A232299.P13975689663501858706

